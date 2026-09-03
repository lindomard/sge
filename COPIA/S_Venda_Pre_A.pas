unit S_Venda_Pre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, ImgList, ComCtrls, Mask,
  StdCtrls, DB, DBClient, Grids, DBGrids, FMTBcd, SqlExpr, Provider, S_Vendas_GravarPedido,
  DBCtrls, ToolEdit, DBXpress, DBTables,S_PedCli;

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
    DBGrid_fpgto: TDBGrid;
    Src_FP_pre: TDataSource;
    cb_tipoped: TComboBox;
    edt_nomcfops: TEdit;
    edt_pDesc01: TEdit;
    edt_vlrdes_ped1_perc: TEdit;
    Edit4: TEdit;
    edt_desc_valor: TEdit;
    Panel3: TPanel;
    bbExluir_FP: TBitBtn;
    lbl_restamFP: TLabel;
    Panel_rod_Itens: TPanel;
    Label1: TLabel;
    bbExcluir_item: TBitBtn;
    DBMemo1: TDBMemo;
    src_ped02s_pre: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    bbExclui_Servico: TBitBtn;
    StaticText2: TStaticText;
    DBMemo_servico: TDBMemo;
    DBGrid_servicos: TDBGrid;
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
    Tb_FP_pre: TQuery;
    Tb_FP_prePFPCODEMP: TFloatField;
    Tb_FP_prePFPCHAVE: TFloatField;
    Tb_FP_prePFPCHAVE_ANO: TFloatField;
    Tb_FP_prePFPPARCELA: TFloatField;
    Tb_FP_prePFPQTDPARC: TFloatField;
    Tb_FP_prePFPCODBCO_BOL: TFloatField;
    Tb_FP_prePFPCODFP: TFloatField;
    Tb_FP_prePFPBAIXA: TStringField;
    Tb_FP_prePFPVALOR: TFloatField;
    Tb_FP_prePFPNOMFP: TStringField;
    Tb_FP_prePFPDATA: TDateTimeField;
    Tb_FP_prePFPPRAZO: TFloatField;
    Tb_FP_prePFPNUMDOC: TStringField;
    Tb_FP_prePFPCODBCO_DOC: TFloatField;
    Tb_FP_prePFPSERIE_DOC: TStringField;
    Tb_FP_prePFPCC_DOC: TStringField;
    Tb_FP_prePFPCOMP_DOC: TStringField;
    Tb_FP_prePFPAGENCIA_DOC: TStringField;
    Tb_FP_prePFPEMITENTE_DOC: TStringField;
    Tb_FP_prePFPVINCULO_DOC: TFloatField;
    Tb_FP_prePFPCNPJ_CPF_DOC: TFloatField;
    Tb_FP_prePFPIE_RG: TStringField;
    U_FP_pre: TUpdateSQL;
    Tb_Ped02_pre: TQuery;
    U_Ped02_pre: TUpdateSQL;
    Tb_Ped02_preP2ITEM: TFloatField;
    Tb_Ped02_preP2QTD: TFloatField;
    Tb_Ped02_preP2DESC_PERC01: TFloatField;
    Tb_Ped02_preP2DESC_PERC02: TFloatField;
    Tb_Ped02_preP2CODPRO: TFloatField;
    Tb_Ped02_preP2DESC_PERC03: TFloatField;
    Tb_Ped02_preP2PRECO: TFloatField;
    Tb_Ped02_preP2CST: TStringField;
    Tb_Ped02_preP2CFOP_NF: TFloatField;
    Tb_Ped02_preP2CFOP_ECF: TFloatField;
    Tb_Ped02_preP2DESC_COMP: TMemoField;
    Tb_Ped02_preVALOR_TOTAL: TFloatField;
    Tb_Ped02_preP2CSOSN_ORI: TFloatField;
    Tb_Ped02_preP2ICMS_PPRED: TFloatField;
    Tb_Ped02_preP2MODBCST: TFloatField;
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
    Tb_Ped02_preP2PIS_PERC: TFloatField;
    Tb_Ped02_preP2ICMSSN_PERC: TFloatField;
    Tb_Ped02_preP2ALIPI: TFloatField;
    Tb_Ped02_preP2CST_PIS: TStringField;
    Tb_Ped02_preP2CST_COFINS: TStringField;
    Tb_Ped02_preP2CODVEN: TFloatField;
    Tb_Ped02_preP2AMBIENTE: TStringField;
    Tb_Ped02_preP2DESCFIN_PERC: TFloatField;
    Tb_Ped02_prePDNOME: TStringField;
    Tb_Ped02_prePDUND: TStringField;
    Tb_Ped02_preP2PROMOCAO: TStringField;
    Tb_ped02S_pre: TQuery;
    U_ped02S_pre: TUpdateSQL;
    src_aliquotas: TDataSource;
    cds_aliquotasal_credsn: TFloatField;
    tsOutrosDados: TTabSheet;
    cb_forma: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edt_submod: TEdit;
    Tb_Ped02_preP2CSOSN: TFloatField;
    Tb_ped02S_preP2SCODEMP: TFloatField;
    Tb_ped02S_preP2SCHAVE: TFloatField;
    Tb_ped02S_preP2SCHAVE_ANO: TFloatField;
    Tb_ped02S_preP2SITEM: TFloatField;
    Tb_ped02S_preP2SCODSER: TFloatField;
    Tb_ped02S_preP2SQTD: TFloatField;
    Tb_ped02S_preP2SPDESC01: TFloatField;
    Tb_ped02S_preP2SPDESC02: TFloatField;
    Tb_ped02S_preP2SPDESC03: TFloatField;
    Tb_ped02S_preP2SPRECO: TFloatField;
    Tb_ped02S_preP2SDESC_COMP: TMemoField;
    Tb_ped02S_preP2SCST: TStringField;
    Tb_ped02S_preP2SCSOSN: TFloatField;
    Tb_ped02S_preP2SBCISSQN: TFloatField;
    Tb_ped02S_preP2SVISSQN: TFloatField;
    Tb_ped02S_preP2SALIQISSQN: TFloatField;
    Tb_ped02S_preP2SSITUACAO: TFloatField;
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
    Tb_ped02S_preP2SVREDIRRF: TFloatField;
    Tb_ped02S_preP2SALIQIRRF: TFloatField;
    Tb_ped02S_preVALOR_TOTAL: TFloatField;
    Tb_ped02S_preP2SCFOP_NF: TFloatField;
    Tb_ped02S_preP2SCFOP_ECF: TFloatField;
    Tb_ped02S_preP2SCODVEN: TFloatField;
    Tb_ped02S_prePDNOME: TStringField;
    Tb_ped02S_prePDUND: TStringField;
    gb_vencimentos: TGroupBox;
    Tb_Ped02_Lotes: TQuery;
    U_Ped02_Lotes: TUpdateSQL;
    Src_Ped02_Lotes: TDataSource;
    Tb_Ped02_LotesP2LM_CODEMP: TFloatField;
    Tb_Ped02_LotesP2LM_LOTSEQ: TFloatField;
    Tb_Ped02_LotesP2LM_CHAVE: TFloatField;
    Tb_Ped02_LotesP2LM_ITEM: TFloatField;
    Tb_Ped02_LotesP2LM_LOTE: TStringField;
    Tb_Ped02_LotesP2LM_DTFAB: TDateTimeField;
    Tb_Ped02_LotesP2LM_DTVCTO: TDateTimeField;
    Tb_Ped02_LotesP2LM_QTD: TFloatField;
    DBGrid_lotes: TDBGrid;
    Tb_Ped02_LotesP2LM_CODPRO: TFloatField;
    Label5: TLabel;
    sbnNFE: TSpeedButton;
    sbnInutilizar: TSpeedButton;
    sbnlSep: TSpeedButton;
    tsTranportadora: TTabSheet;
    CB_MODORCAM: TCheckBox;
    Edit7: TEdit;
    edt_codtra: TEdit;
    edt_nomtra: TEdit;
    edt_ufpv_desc: TEdit;
    edt_placav: TEdit;
    cb_ufpv: TComboBox;
    Edit8: TEdit;
    CB_FRETEPC: TComboBox;
    Edit10: TEdit;
    edt_qtdvol: TEdit;
    Edit11: TEdit;
    edt_especie: TEdit;
    Edit13: TEdit;
    edt_pesob: TEdit;
    Edit14: TEdit;
    edt_pesol: TEdit;
    Edit23: TEdit;
    edt_datsai: TDateEdit;
    Edit25: TEdit;
    edt_horsai: TEdit;
    Edit29: TEdit;
    edt_minuta: TEdit;
    cb_etivol: TCheckBox;
    cb_canhoto: TCheckBox;
    tsProcessos: TTabSheet;
    Edit30: TEdit;
    edt_coddig: TEdit;
    edt_nomdig: TEdit;
    edt_datdig: TDateEdit;
    edt_hordig: TMaskEdit;
    Edit32: TEdit;
    edt_codsep: TEdit;
    edt_nomsep: TEdit;
    edt_datsep: TDateEdit;
    edt_horsep: TMaskEdit;
    Edit34: TEdit;
    edt_codemb: TEdit;
    edt_nomemb: TEdit;
    edt_datemb: TDateEdit;
    edt_horemb: TMaskEdit;
    Edit35: TEdit;
    edt_codconf: TEdit;
    edt_nomconf: TEdit;
    edt_datconf: TDateEdit;
    edt_horconf: TMaskEdit;
    Edit37: TEdit;
    edt_codent: TEdit;
    edt_noment: TEdit;
    edt_datent: TDateEdit;
    edt_horent: TMaskEdit;
    tsEmissoes: TTabSheet;
    Edit38: TEdit;
    Edit42: TEdit;
    edt_numcf: TEdit;
    Edit43: TEdit;
    edt_datacf: TDateEdit;
    Edit44: TEdit;
    edt_serieecf: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    edt_numnf: TEdit;
    Edit47: TEdit;
    edt_datanf: TDateEdit;
    Edit48: TEdit;
    edt_serienf: TEdit;
    Edit49: TEdit;
    edt_modelo: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    edt_numnfs: TEdit;
    Edit53: TEdit;
    edt_datanfs: TDateEdit;
    Edit54: TEdit;
    edt_serie_nfs: TEdit;
    Edit56: TEdit;
    edt_mod_nfs: TEdit;
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
    procedure DBGrid_itensExit(Sender: TObject);
    procedure DBGrid_itensMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo_ObsPedEnter(Sender: TObject);
    procedure Memo_ObsPedExit(Sender: TObject);
    procedure Memo_obsNFEnter(Sender: TObject);
    procedure DBGrid_itensColEnter(Sender: TObject);
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
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbnGravarClick(Sender: TObject);
    procedure bbExluir_FPClick(Sender: TObject);
    procedure DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_fpgtoColExit(Sender: TObject);
    procedure DBGrid_fpgtoExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbnAlterarClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure bbExcluir_itemClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBGrid_servicosColExit(Sender: TObject);
    procedure DBGrid_servicosExit(Sender: TObject);
    procedure DBGrid_servicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_servicosKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_servicoExit(Sender: TObject);
    procedure bbExclui_ServicoClick(Sender: TObject);
    procedure edt_codCondPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_FP_preAfterDelete(DataSet: TDataSet);
    procedure Tb_FP_preAfterEdit(DataSet: TDataSet);
    procedure Tb_FP_preAfterPost(DataSet: TDataSet);
    procedure Tb_FP_preBeforePost(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterCancel(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterEdit(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterInsert(DataSet: TDataSet);
    procedure Tb_Ped02_preAfterPost(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforePost(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforeDelete(DataSet: TDataSet);
    procedure edt_codcliEnter(Sender: TObject);
    procedure edt_codCondPagEnter(Sender: TObject);
    procedure edt_codvenEnter(Sender: TObject);
    procedure edt_codfpEnter(Sender: TObject);
    procedure Tb_FP_preAfterInsert(DataSet: TDataSet);
    procedure Tb_ped02S_preAfterCancel(DataSet: TDataSet);
    procedure Tb_ped02S_preAfterEdit(DataSet: TDataSet);
    procedure Tb_ped02S_preAfterInsert(DataSet: TDataSet);
    procedure Tb_ped02S_preAfterPost(DataSet: TDataSet);
    procedure Tb_ped02S_preBeforeDelete(DataSet: TDataSet);
    procedure Tb_ped02S_preBeforePost(DataSet: TDataSet);
    procedure edt_submodExit(Sender: TObject);
    procedure cb_formaExit(Sender: TObject);
    procedure edt_submodEnter(Sender: TObject);
    procedure cb_formaEnter(Sender: TObject);
    procedure cb_tipopedEnter(Sender: TObject);
    procedure Tb_Ped02_preBeforeEdit(DataSet: TDataSet);
    procedure Tb_ped02S_preBeforeEdit(DataSet: TDataSet);
    procedure Tb_FP_preBeforeEdit(DataSet: TDataSet);
    procedure Tb_FP_preBeforeInsert(DataSet: TDataSet);
    procedure Tb_ped02S_preBeforeInsert(DataSet: TDataSet);
    procedure Tb_Ped02_preBeforeInsert(DataSet: TDataSet);
    procedure Src_Ped02_preDataChange(Sender: TObject; Field: TField);
    procedure sbnLocalizarClick(Sender: TObject);
    procedure Tb_Ped02_LotesBeforeInsert(DataSet: TDataSet);
    procedure Tb_Ped02_LotesBeforeEdit(DataSet: TDataSet);
    procedure Tb_Ped02_LotesBeforeDelete(DataSet: TDataSet);
    procedure Tb_FP_preBeforeDelete(DataSet: TDataSet);
    procedure DBGrid_itensEnter(Sender: TObject);
    procedure DBGrid_lotesEnter(Sender: TObject);
    procedure DBGrid_fpgtoEnter(Sender: TObject);
    procedure sbnNFEClick(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
    procedure sbnInutilizarClick(Sender: TObject);
    procedure sbnlSepClick(Sender: TObject);
    procedure edt_coddigExit(Sender: TObject);
    procedure edt_coddigKeyPress(Sender: TObject; var Key: Char);
    procedure edt_coddigChange(Sender: TObject);
    procedure edt_codsepChange(Sender: TObject);
    procedure edt_codsepExit(Sender: TObject);
    procedure edt_codsepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codembKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codembExit(Sender: TObject);
    procedure edt_codembChange(Sender: TObject);
    procedure edt_codconfChange(Sender: TObject);
    procedure edt_codconfExit(Sender: TObject);
    procedure edt_codconfKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codentKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codentExit(Sender: TObject);
    procedure edt_codentChange(Sender: TObject);
    procedure edt_datdigChange(Sender: TObject);
    procedure edt_datsepChange(Sender: TObject);
    procedure edt_datembChange(Sender: TObject);
    procedure edt_datconfChange(Sender: TObject);
    procedure edt_datentChange(Sender: TObject);
    procedure edt_hordigChange(Sender: TObject);
    procedure edt_horsepChange(Sender: TObject);
    procedure edt_horembChange(Sender: TObject);
    procedure edt_horconfChange(Sender: TObject);
    procedure edt_horentChange(Sender: TObject);
    procedure edt_datdigExit(Sender: TObject);
  private
   { Private declarations }
    HintRect : TRect;


    mped1_tpPed :Integer;
    mped1_tpPed_VendaNormal :String;

    mPed1Serv_ISSQN_Aliq:Real;
    mPed1Serv_INSS_Red  :Real;
    mPed1Serv_INSS_Aliq :Real;
    mPed1Serv_IRRF_Red  :Real;
    mPed1Serv_IRRF_Aliq :Real;
    mPed_Cli_ConsFin     :Boolean;
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
    mCodpv_ant: String;
    mEventoPendente: String;
    form_PedCli_ped_02                   : TFrm_PedCli;

    mFormace_ant : Integer;
    mSubMOd_ant: Integer;


    mEstNor_ant       :String;
    mEstCons_ant      :String;
    mEstTerc_ant      :String;
    mEstVenda_ant     :String;



    mPed_Desc: Real;
//    mPed_MobBcST: Integer; // Modalidade 0-PMC 1-Negativa 2-Positiva 3-neutra 4-Iva 5 Pauta'
//    mPed_Cli_ICMSST: String; // icms st N-Nao S-Sim
//    mPed_Cli_Consfin: String; // icms st N-Nao S-Sim
//    mPed1_CalcIPI: Boolean;
//    mPed1_ICMSRLIQ: Integer;
    mCodpro_Ant: String;
    mItem_Ant: Integer;
    mQtd_Ant: Real;
    mCodCli_ant: Integer;
    mcodVen_ant: Integer;
    mPed_Item: Integer;
    mPed_Item_Servico: Integer;
    mCodSer_Ant: String;
    mItem_Servico_Ant: Integer;
    mQtd_Servico_Ant: Real;

    mPed1_CodFP_Ant: Integer;
    mCodFP_Ant: Integer;
    mPed_DescGer_Ant: Real;
    mPed_PDesc01_Ant: Real;
    cds_lotes: TClientDataSet;
    mGravando_Item:Boolean;

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

    function RecalcularSubMod(pSubMod_Ant,pSubMod_Atu,pFormace_Ant,pFormace_Atu: Integer;
                             pEstNor_Ant,pEstCons_Ant,pEstTer_Ant,pEstVenda_Ant,
                             pEstNor_Atu,pEstCons_Atu,pEstTer_Atu,pEstVenda_Atu: String): Boolean;
    function fBuscarLotes(pCodpro: String;pQtd: Real): boolean;
    function fAjustarLotes(pCodpro: String;pQtd_Antes,pQtd_Nova: Real): boolean;

    function fLerCadp02_Lotes(pItem: Integer;pCodPro: Real): Boolean;
    function FBaixarLotes(pItem: Integer): Boolean;

    function fIncluirCadp02_Lotes(pCodemp,pItem: Integer; pChave,pChave_ano,pCodPro,pQtd: Real; pLote: String; pDtFab,pDtVcto: TDateTime): Boolean;


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



//    mUF_AliqDebSt :Real; //  UF_ALIQ_INT
//    mUF_Red_IcmsSt:Real; //  UF_ICMS_PRED_INT
//    mUF_IcmsSTIVA:Real;  // UF_ICMSST_IVA_INT
//    mUF_IcmsSN: Real; // % icms de credito do simples nacional

//    mReg_AliqCredST:Real;  // UF_ALIQ_SUL
//    mReg_IcmsSTPRed:Real;   // UF_ICMS_PRED_SUL
//    mReg_IcmsSTIVA:Real;  // UF_ICMSST_IVA_SUL

    mped_Alterou_Cab: Boolean;




  end;
function fPosArray(pArrayOff: array of string; pTexto: String): Integer;

var
  Frm_Venda_Pre: TFrm_Venda_Pre;

implementation

uses S_DM1,  LerArq, func, func_excecoes, S_DM2, S_DM4, Func2,
  S_GerarDuplic, S_NFE_Inutilizar, S_Fatur_OrcGrupo;

{$R *.dfm}

procedure TFrm_Venda_Pre.FormActivate(Sender: TObject);
begin
pcCabecalho.ActivePage:=tsCabecalho;
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
      mVenda_GP.mped1_submod_grav:=0;
      if mVenda_GP.mped1_submod=100 then
         begin
         mVenda_GP.mped1_submod_grav:=100;
         if codemp>100 then
            mVenda_GP.fGravarPed01(1,-100)
         else
            mVenda_GP.fGravarPed01(1,100);
         end
      else
         begin
         if mVenda_GP.mped1_submod>0 then
            mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
         mVenda_GP.fGravarPed01(1,0);
         end;
      if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
         begin
         mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
         if codemp>100 then
            mVenda_GP.fGravarPed01(1,-100)
         else
            mVenda_GP.fGravarPed01(1,100);
         end;

      fRecalcularPedido(3);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from cadp02_pre_temp '
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
         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','cadp01_pre');
         end;
      end;
   fAtualizarBotoes(1);
   fBloquearLiberarCampos(false);
   end;
if cds_lotes<>nil then
   FreeAndNil(cds_lotes);

end;

procedure TFrm_Venda_Pre.FormCreate(Sender: TObject);
var
x: Integer;
begin

//HintWindow:=THintWindow.Create(tsCabecalho);
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
mGravando_Item:=false;

mped1_tpPed :=1;
mped1_tpPed_VendaNormal:=tab_tped_mov[1,00];
Tb_Ped02_LotesP2LM_QTD.DisplayFormat        :=mCasQtd;
tb_ped02_preP2QTD.DisplayFormat        :=mCasQtd;
tb_ped02_preP2DESC_PERC01.DisplayFormat:=mCasas;
tb_ped02_preP2PRECO.DisplayFormat      :=mCasasPU;
tb_ped02_preVALOR_TOTAL.DisplayFormat  :=mCasas;


tb_ped02s_preP2SQTD.DisplayFormat        :=mCasQtd;
tb_ped02s_preP2SPDESC01.DisplayFormat    :=mCasas;
tb_ped02s_preP2SPRECO.DisplayFormat      :=mCasasPU;
tb_ped02s_preVALOR_TOTAL.DisplayFormat   :=mCasas;

Application.CreateForm(TFrm_Vendas_GravarPedido, mVenda_GP);
cds_aliquotas.CreateDataSet;
fLimparCampos(0);
fBloquearLiberarCampos(false);

Tb_fp_prePFPVALOR.DisplayFormat:=mCasas;
Tb_fp_prePFPDATA.DisplayFormat:=fdt2;
Tb_fp_prePFPDATA.EditMask     := pEditMascData;

Tb_Ped02_LotesP2LM_QTD.DisplayFormat:=mcasqtd;
Tb_Ped02_LotesP2LM_DTVCTO.DisplayFormat:=fdt2;
Tb_Ped02_LotesP2LM_DTVCTO.EditMask     := pEditMascData;

if Log_TipoLote=1 then // usa lotes de mercadorias
   gb_vencimentos.Visible:=true
else
   gb_vencimentos.Visible:=false;


//mPed_MobBcST:=0;
//TabSheet2.TabVisible:=False;
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
mEventoPendente:='memo_obsnf';

GetWindowRect(Memo_obsNF.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);

end;

procedure TFrm_Venda_Pre.Memo_obsNFExit(Sender: TObject);
begin
mVenda_GP.mPed1_Obs_NF:=Memo_obsNF.Text;
mEventoPendente:='';


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
mEventoPendente:='memo_obsped';

end;
function tFrm_Venda_Pre.fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
var
sHint: String;
begin
{
sHint:=pMensagem;
HintRect := HintWindow.CalcHintRect(400,'*',nil);
HintRect.Top :=  pTop-20;
HintRect.Left := pLeft;
HintRect.Right := HintRect.Left + (Length(sHint)*6);
HintRect.Bottom := HintRect.Top + 15;
HintWindow.ActivateHint(HintRect,sHint);}

result:=true;
end;

procedure TFrm_Venda_Pre.Memo_ObsPedExit(Sender: TObject);
begin
mVenda_GP.mPed1_Obs_Ped:=Memo_ObsPed.Text;
mEventoPendente:='';

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
var
mTotFP: Real;

begin
if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if length(tb_ped02_preP2CODPRO.AsString)>0 then
      tb_ped02_pre.Post
   else
      tb_ped02_pre.Cancel;
   end;


Tb_FP_pre.First;
mTotFP:=0;
While not Tb_FP_pre.Eof do
   begin
   mTotFP:=mTotFP+Tb_FP_prePFPVALOR.AsFloat;
   Tb_FP_pre.Next;
   end;
if Arredonda(mTotFP,2)<>Arredonda(valfloat(edt_totliq.Text),2) then
   begin
   verteclado(0);
   MessageDlg('Total das Formas dos Pagamentos: '+FormatFloat(mcasas, mTotFP)
             +#13+' Valor do Pedido: '+edt_totliq.Text
             +#13+' Diferença: '+FormatFloat(mcasas, valfloat(edt_totliq.Text)-mTotFP)
             +#13+' favor corrigir as formas de pagamento',mtwarning,[mbOk],0);
   DBGrid_fpgto.SetFocus;
   abort;
   exit;
   end;




//Self.Perform(WM_NEXTDLGCTL,0,0);
Panel_butons.SetFocus;
if not Panel_butons.Focused then
   abort;
{if mEventoPendente:='edt_codcli';

DBGrid_fpgtoExit(self);
}
if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   fRecalcularPedido(3);
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADP02_PRE_TEMP '
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

mVenda_GP.mPed1_Codemp_ini:=codemp;
mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini;


cb_tipopedExit(self);
pcCabecalho.ActivePage:=tsCabecalho;
pcProdServ.ActivePage:=tsProdutos;
Tb_Ped02_Pre.Close;
Tb_Ped02_Pre.SQL.Clear;
Tb_Ped02_Pre.SQL.Add('select P2ITEM AS P2ITEM,P2QTD,P2DESC1 AS P2DESC_PERC01'
                    +'       ,P2DESC2 AS P2DESC_PERC02,P2CODPRO, '
                    +'       P2DESC3 AS P2DESC_PERC03,P2PRECO '
                    +'       ,P2SIT AS P2CST '
                    +'       ,P2CSOSN '
                    +'       ,P2CFO AS P2CFOP_NF '
                    +'       ,P2CFOSUBECF AS P2CFOP_ECF '
                    +'       ,P2COMPLEMENTO AS P2DESC_COMP '
                    +'       ,P2QTD*P2PRECO AS VALOR_TOTAL '
                    +'       ,P2CSOSN_ORI '
                    +'       ,P2PCRED_SN AS P2ICMS_PPRED, '
                    +'       P2MODBCST AS P2MODBCST '
                    +'       ,P2ST_IVA '
                    +'       ,P2ST_REDUT '
                    +'       ,P2ST_ICMCRED AS P2ST_ICMSCRED '
                    +'       ,P2ST_ICMDEB AS P2ST_ICMSDEB '
                    +'       ,P2PCOTAB AS P2PRECO_TAB, '
                    +'       P2UCPR AS  P2PRECO_UCPR '
                    +'       ,P2PCOCUS AS P2PRECO_CUS '
                    +'       ,P2PCOMAX AS P2PRECO_MAXCONS '
                    +'       ,P2ALIPI AS P2IPI_PERC '
                    +'       ,P2ALIQ AS P2ICMS_PERC, '
                    +'        P2ALCOFINS P2COFINS_PERC '
                    +'       ,P2ALPIS AS P2PIS_PERC '
                    +'       ,P2PCRED_SN P2ICMSSN_PERC '
                    +'       ,P2ALIPI '
                    +'       ,P2CST_PIS AS P2CST_PIS '
                    +'       ,P2CST_COFINS AS P2CST_COFINS '
                    +'                ,P2CODVEN AS P2CODVEN '
                    +'                ,P2AMBIENTE '
                    +'                ,P2PDESCF AS P2DESCFIN_PERC, '
                    +'                  PDNOME,PDUND,P2PROMOCAO FROM cadp02,cadpro '
                    +'                where  (PDCODPRO =P2CODPRO '
                    +'                      and PDCODEMP=P2CODEMP) '
                    +'                 and P2CODEMP=-9999 ');
try
   Tb_Ped02_Pre.Open;
except
   Tb_Ped02_Pre.sql.savetofile('c:\sql.txt');
   if fVerificaRedeAtiva(true) then
      MessageDlg('Erro 848 frm_venda_pre cadp02_pre',mterror,[mbOk],0)
   else
      fFecharTudo(0);
   end;
// servico



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');


Tb_Ped02S_pre.Close;
Tb_Ped02S_pre.SQL.Clear;
Tb_Ped02S_Pre.SQL.Add('Select P2SCODEMP,P2SCHAVE,P2SLOTSEQ AS P2SCHAVE_ANO,P2SITEM,P2SCODPRO AS P2SCODSER');
if mVenda_GP.mped1_formace=0 then
   begin
   Tb_Ped02S_Pre.SQL.Add('      ,sum(P2SQTD) as P2SQTD '
                     +'      ,max(P2SPRECO) as P2SPRECO '
                     +'      ,max(P2SPCOTAB) AS P2SPCOTAB '
                     +'      ,max(P2SPCOCUS) as P2SPCOCUS '
                     +'      ,sum(P2SQTD*P2SPRECO) AS VALOR_TOTAL ');
   end
else
   begin
   Tb_Ped02S_Pre.SQL.Add('      ,max(P2SQTD) as P2SQTD '
                     +'      ,sum(P2SPRECO) as P2SPRECO '
                     +'      ,sum(P2SPCOTAB) AS P2SPCOTAB '
                     +'      ,sum(P2SPCOCUS) as P2SPCOCUS '
                     +'      ,sum(P2SQTD*P2SPRECO) AS VALOR_TOTAL ');
   end;



Tb_Ped02S_Pre.SQL.Add('      ,sum(P2STOTDES) AS P2STOTDES '
                     +'      ,max(P2SDESC1) AS P2SPDESC01 '
                     +'      ,max(P2SDESC2) AS P2SPDESC02 '
                     +'      ,max(P2SDESC3) AS P2SPDESC03 '
                     +'      ,max(P2SDESC_COMP) as P2SDESC_COMP '
                     +'      ,max(P2SSIT) as P2SCST '
                     +'      ,max(P2SCSOSN) as P2SCSOSN '
                     +'      ,sum(P2SBCISSQN) as P2SBCISSQN '
                     +'      ,sum(P2SVISSQN) as P2SVISSQN '
                     +'      ,max(P2SALIQ) AS P2SALIQISSQN '
                     +'      ,max(P2SSTATUS) AS P2SSITUACAO '
                     +'      ,sum(P2SDESCRAT) as P2SDESCRAT '
                     +'      ,sum(P2SPDESCF) AS P2SDESCFIN_PERC '
                     +'      ,sum(P2SVDESCF) AS  P2SDESCFIN_VALOR '
                     +'      ,sum(P2SBCINSS) as P2SBCINSS '
                     +'      ,sum(P2SREDINSS) as P2SPREDINSS '
                     +'      ,sum( ROUND( ((P2SBCINSS*P2SREDINSS)/100),2)) P2SVREDINSS '
                     +'      ,max(P2SALIQINSS) as P2SALIQINSS '
                     +'      ,max(P2SREDIRRF) AS P2SPREDIRRF '
                     +'      ,sum(ROUND( ((P2SBCIRRF*P2SREDIRRF)/100),2)) as P2SVREDIRRF '
                     +'      ,max(P2SALIQIRRF) AS P2SALIQIRRF '
                     +'      ,max(P2SCFO) AS P2SCFOP_NF '
                     +'      ,max(P2SCFO) AS P2SCFOP_ECF '
                     +'      ,max(P2SCODFUN) AS P2SCODVEN '
                     +'      ,max(PDNOME) as PDNOME '
                     +'      ,max(PDUND) as PDUND '
                     +' from cadp02S'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                     +' (P2SCODEMP=:CODEMP_MENOR or P2SCODEMP=:CODEMP_MAIOR ) '
                     +' and   P2SCHAVE=:CHAVE'
                     +' and   P2SLOTSEQ=:CHAVE_ANO'
                     +' and   P2SORDEM=:ORDEM '
                     +' GROUP BY P2SCODEMP,P2SCHAVE,P2SLOTSEQ,P2SITEM,P2SCODPRO '
                     +'  order by P2SITEM ');
Tb_Ped02S_pre.ParamByName('CODEMP_MENOR').AsInteger   :=CodEmp;
if codemp>100 then
   Tb_Ped02S_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp-100
else
   Tb_Ped02S_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp+100;


Tb_Ped02S_pre.ParamByName('CHAVE').AsInteger    :=-999;
Tb_Ped02S_pre.ParamByName('CHAVE_ANO').AsInteger:=0;
Tb_Ped02S_pre.ParamByName('ORDEM').AsInteger    :=1;

try
   Tb_Ped02s_pre.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02s_Pre,['CADP02S','CADPRO']),0,['0'],0);

   if fVerificaRedeAtiva(true) then
      begin
//      ex_erroSql_Novo(Tb_Ped02s_pre,774,'frm_venda_pre','paf_cadp02s_pre')
      end
   else
      fFecharTudo(0);
   end;

// termino servico


edt_datap.Date:=Date;
mVenda_GP.mPed1_Datap:=edt_datap.Date;

fLerFormaPag(1);

fBloquearLiberarCampos(true);

mPed_Item:=1;
mPed_Item_Servico:=1;

fAtualizarBotoes(2);
edt_codcli.SetFocus;
end;
function TFrm_Venda_Pre.fLerFormaPag(pTipo: Integer): Boolean;
begin
lbl_restamFP.Caption:='';
Tb_FP_pre.Close;
Tb_FP_pre.SQL.Clear;
Tb_FP_pre.SQL.Add('SELECT min(PFPCODEMP) as PFPCODEMP,PFPCHAVE,PFPLOTSEQ AS PFPCHAVE_ANO,PFPSEQ AS PFPPARCELA '
                 +',PFPQTDPARC AS PFPQTDPARC,0 AS PFPCODBCO_BOL '
                 +',PFPFORMA AS PFPCODFP '
                 +',PFPNOMFOR AS PFPNOMFP'
                 +',PFPDATA '
                 +',PFPPRAZO,PFPNUMDOC,PFPBANCO AS PFPCODBCO_DOC '
                 +',PFPSERIE AS PFPSERIE_DOC,PFPCC AS PFPCC_DOC '
                 +',PFPCOMP AS PFPCOMP_DOC,PFPAGENCIA AS PFPAGENCIA_DOC '
                 +',PFPEMITENTE AS PFPEMITENTE_DOC '
                 +',PFPVINCULO AS PFPVINCULO_DOC '
                 +',PFPCNPF AS PFPCNPJ_CPF_DOC '
                 +',PFPRG AS PFPIE_RG '
                 +',sum(PFPVALOR) as PFPVALOR '
                 +',max(PFPBAIXA) AS PFPBAIXA '
                  +' from CADPFP ');

if ptipo=1 then
   Tb_FP_pre.SQL.Add(' where PFPCODEMP=-9999')
else
   begin
   Tb_FP_pre.SQL.Add(' where (PFPCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_ini)
                    +' or PFPCODEMP='+IntToStr(mVenda_GP.mPed1_Codemp_fin)+')');
   end;

Tb_FP_pre.SQL.Add(' and PFPCHAVE='+IntTosTr(mVenda_GP.mped1_Chave)
             +' and PFPLOTSEQ='+IntTosTr(mVenda_GP.mped1_Chave_ano));


Tb_FP_pre.SQL.Add('Group by PFPCHAVE,PFPLOTSEQ,PFPSEQ  '
                 +',PFPQTDPARC, '
                 +'PFPFORMA '
                 +',PFPNOMFOR'
                 +',PFPDATA '
                 +',PFPPRAZO,PFPNUMDOC,PFPBANCO '
                 +',PFPSERIE,PFPCC '
                 +',PFPCOMP,PFPAGENCIA '
                 +',PFPEMITENTE '
                 +',PFPVINCULO  '
                 +',PFPCNPF  '
                 +',PFPRG  '
                +' order by PFPDATA,PFPSEQ ');

//Tb_FP_pre.SQL.SaveToFile('c:\sqlfp.txt');

try
   Tb_FP_pre.Open;
   result:=true;
except
   Tb_FP_pre.SQL.SaveToFile('c:\sqlfp.txt');
   if fVerificaRedeAtiva(true) then
      begin
      MessageDlg('Erro 963 frm_venda_pre paf_cadpfp_pre',mterror,[mbOk],0);
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
if Tb_fp_pre.IsEmpty then
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
Tb_Ped02s_Pre.Close;

Tb_FP_pre.Close;
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
if not cds_aliquotas.Active then
   cds_aliquotas.Open;
cds_aliquotas.EmptyDataSet;
cb_forma.ItemIndex:=0;
edt_submod.Text   :='';

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
cb_forma.Enabled   :=pLibera;
edt_submod.Enabled :=pLibera;

edt_codtra.Enabled :=pLibera;
cb_ufpv.Enabled    :=pLibera;
CB_FRETEPC.Enabled :=pLibera;
edt_qtdvol.Enabled :=pLibera;
edt_especie.Enabled :=pLibera;
edt_codtra.Enabled :=pLibera;
edt_pesob.Enabled :=pLibera;
edt_pesol.Enabled :=pLibera;
edt_datsai.Enabled :=pLibera;
edt_horsai.Enabled :=pLibera;
edt_minuta.Enabled :=pLibera;
cb_etivol.Enabled :=pLibera;
cb_canhoto.Enabled :=pLibera;
CB_MODORCAM.Enabled:=pLibera;
edt_coddig.Enabled :=pLibera;
edt_datdig.Enabled :=pLibera;
edt_hordig.Enabled :=pLibera;
edt_codsep.Enabled :=pLibera;
edt_nomsep.Enabled :=pLibera;
edt_datsep.Enabled :=pLibera;
edt_datsep.Enabled :=pLibera;
edt_horsep.Enabled :=pLibera;

edt_codemb.Enabled :=pLibera;
edt_nomemb.Enabled :=pLibera;
edt_datemb.Enabled :=pLibera;
edt_horemb.Enabled :=pLibera;




edt_codconf.Enabled   :=pLibera;
edt_datconf.Enabled   :=pLibera;
edt_horconf.Enabled   :=pLibera;

edt_codent.Enabled    :=pLibera;
edt_datent.Enabled    :=pLibera;
edt_horent.Enabled    :=pLibera;
edt_numnfs.Enabled    :=pLibera;
edt_datanfs.Enabled   :=pLibera;
edt_serie_nfs.Enabled :=pLibera;
edt_mod_nfs.Enabled   :=pLibera;
























result:=true;



end;



procedure TFrm_Venda_Pre.bbExcluir_itemClick(Sender: TObject);
begin
if (not tb_ped02_pre.Active) or (tb_ped02_preP2QTD.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+tb_ped02_preP2CODPRO.AsString+'-'+tb_ped02_prePDNOME.AsString+' Quantidade: '+formatFloat(mCasQtd, tb_ped02_preP2QTD.AsFloat)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
tb_ped02_pre.Delete;
end;

procedure TFrm_Venda_Pre.bbExclui_ServicoClick(Sender: TObject);
begin
if (not Tb_ped02s_pre.Active) or (Tb_ped02s_preP2SQTD.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+Tb_ped02s_preP2SCODSER.AsString+'-'+Tb_ped02s_prePDNOME.AsString+' Quantidade: '+formatFloat(mCasQtd, tb_ped02s_preP2SQTD.AsFloat)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
tb_ped02s_pre.Delete;

end;

procedure TFrm_Venda_Pre.bbExluir_FPClick(Sender: TObject);
begin

if (not Tb_fp_pre.Active) or (Tb_fp_prePFPVALOR.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+Tb_fp_prePFPNOMFP.AsString+' Valor: '+formatFloat(mcasas, Tb_fp_prePFPVALOR.AsFloat)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_fp_pre.Delete;

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
   fpedtestacfop(0,mVenda_GP.mped1_formace);
   if ((mVenda_GP.mPd_EstNor<>mEstNor_ant) or
      (mVenda_GP.mPd_EstCons<>mEstCons_ant) or
      (mVenda_GP.mPd_EstTerc<>mEstTerc_ant) or
      (mVenda_GP.mPd_EstVenda<>mEstVenda_ant))   then
      begin
      mped_Alterou_Cab:=true;
      RecalcularSubMod(mSubMOd_ant,mVenda_GP.mped1_submod,mVenda_GP.mped1_formace,mVenda_GP.mped1_formace
                   ,mEstNor_ant
                   ,mEstCons_ant
                   ,mEstTerc_ant
                   ,mEstVenda_ant
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda
                   );
      end;

   end;

mEventoPendente:='';


end;

function TFrm_Venda_Pre.fSomarFPgto(pTipo:Integer): Real;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) from CADPFP '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');
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
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','cadp01_pre');
      end;
  end;

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoColExit(Sender: TObject);
begin

if tb_fp_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_fpgto.SelectedField=tb_fp_prePFPCODFP then
      begin
      if flcadfp(0,tb_fp_prePFPCODFP.Asinteger,'') then
         tb_fp_prePFPNOMFP.AsString:=DM1.Tb_FPFPDESC.asstring
      else
         begin
         MessageDlg('Forma de Pagamento '+tb_fp_prePFPCODFP.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_fpgto.SelectedField:=tb_fp_prePFPCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
      end;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoExit(Sender: TObject);
begin

if tb_fp_pre.State in [dsEdit,dsInsert] then
   begin
   if (tb_fp_prePFPVALOR.AsFloat>0) and (trim(tb_fp_prePFPNOMFP.AsString)<>'') then
      tb_fp_pre.Post
   else
      tb_fp_pre.Cancel;
   end;

fVerificarOrdemFPgto(0);
mEventoPendente:='';

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
begin
{
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
   }
end;

procedure TFrm_Venda_Pre.DBGrid_itensColEnter(Sender: TObject);
var
pRect:TRect;
begin
if sbnGravar.Enabled then
   begin
   GetWindowRect(DBGrid_itens.Handle,pRect);
   if DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO then
      fApresentaHint( 'Digite o Codigo do Produto ou Pressione F2-p/Consultar',pRect.Top,pRect.Left);
   end;
end;

procedure TFrm_Venda_Pre.DBGrid_itensColExit(Sender: TObject);
var
mTabIcm,mCst,mCsoSN: String;
mCsoSN_Ori: Integer;
begin
{if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_itens.SelectedField=tb_ped02_preP2QTD then
      begin
      if tb_ped02_preP2QTD.IsNull then
         begin
         DBGrid_itens.SelectedField:=tb_ped02_preP2QTD;
         DBGrid_itens.SetFocus;
         abort;
         end;
      if Log_TipoLote=1 then // usa lotes de mercadorias
         begin
         if Tb_Ped02_Lotes.IsEmpty then
            fBuscarLotes(Tb_Ped02_preP2CODPRO.AsString,Tb_Ped02_preP2QTD.AsFloat)
         else if (fsonumero(mCodpro_Ant)=Tb_Ped02_preP2CODPRO.AsFloat) then
            fAjustarLotes(Tb_Ped02_preP2CODPRO.AsString,mQtd_Ant,Tb_Ped02_preP2QTD.AsFloat)
         else
            begin
            Tb_Ped02_Lotes.Close;
            fBuscarLotes(Tb_Ped02_preP2CODPRO.AsString,Tb_Ped02_preP2QTD.AsFloat);
            end
         end;
      end
   else if DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO then
      begin
      if tb_ped02_preP2CODPRO.AsString='' then
         begin
         DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
         DBGrid_itens.SetFocus;
         abort;
         end
      else
         begin
         if flcadpro(1,1,codemp,tb_ped02_preP2CODPRO.AsString) then
            begin
            tb_ped02_preP2PRECO.AsFloat:=DM1.Tb_Propcoven.Value;
            tb_ped02_prePDNOME.Value :=DM1.Tb_ProPDNOME.Value;
            tb_ped02_prePDUND.Value  :=DM1.Tb_ProPDUND.Value;

            if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
               begin
               if mPed_Cli_ConsFin then
                  begin
                  mCst      :=DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString;
                  mCsoSN_Ori:=DM1.Tb_ProPDFIS_ORIGEM.AsInteger;
                  mCsoSN    :=DM1.Tb_ProPDFIS_CSOSN_EST_CF.Value;
                  end
               else
                  begin
                  mCst:=DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString;
                  mCsoSN_Ori:=DM1.Tb_ProPDFIS_ORIGEM.AsInteger;
                  mCsoSN    :=DM1.Tb_ProPDFIS_CSOSN_EST_REV.Value;
                  end;
               end
            else
               begin
               if mPed_Cli_ConsFin then
                  begin
                  mCst   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString;
                  mCsoSN_Ori:=DM1.Tb_ProPDFIS_ORIGEM.AsInteger;
                  mCsoSN    :=DM1.Tb_ProPDFIS_CSOSN_INT_CF.Value;
                  end
               else
                  begin
                  mCst   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString;
                  mCsoSN_Ori:=DM1.Tb_ProPDFIS_ORIGEM.AsInteger;
                  mCsoSN    :=DM1.Tb_ProPDFIS_CSOSN_INT_CF.Value;
                  end;
               end;
            Tb_Ped02_preP2CST.Value:=mCst;
            Tb_Ped02_preP2CSOSN_ORI.Value  :=mCsoSN_Ori;
            Tb_Ped02_preP2CSOSN.Value      :=valint(mCsoSN);
            Tb_Ped02_preP2CST_PIS.Value    :=DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.AsString;
            Tb_Ped02_preP2PIS_PERC.Value      :=DM1.Tb_ProPDFIS_PIS_ALIQ_SAIDA.AsFloat;
            Tb_Ped02_preP2CST_COFINS.Value :=DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.AsString;
            Tb_Ped02_preP2COFINS_PERC.Value   :=DM1.Tb_ProPDFIS_COFINS_ALIQ_SAIDA.AsFloat;

            mCst:=copy(FormatFloat('000', valint(DM1.TB_ProPDSIT.Value)),2,1);
            mTabIcm:=DM1.Tb_ProPDTABICM.AsString;
            if trim(mTabIcm)='' then
               mTabIcm:='A';
            if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
               mTabIcm:='A';
            if not cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([0,mTabIcm]),[]) then
               begin
               verteclado(0);
               MessageDlg('Não foi encontrado os Registros de tributações!',mtWarning,[mbOk],0);
               DBGrid_itens.SetFocus;
               abort;
               end;
            if Log_TipoLote=1 then
               begin
               if Tb_Ped02_preP2CODPRO.AsFloat>0 then
                  fLerCadp02_Lotes(Tb_Ped02_preP2Item.AsInteger,0);
               end;

            tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
            tb_ped02_preP2ICMS_PPRED.AsFloat :=0;
            tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;
            tb_ped02_preP2ST_IVA.AsFloat     :=0;
            tb_ped02_preP2ST_REDUT.AsFloat   :=0;
            tb_ped02_preP2ST_ICMSCRED.AsFloat:=0;
            tb_ped02_preP2ST_ICMSDEB.AsFloat :=0;
            tb_ped02_preP2MODBCST.AsInteger  :=0;

            tb_ped02_preP2ICMSSN_PERC.AsFloat:=0;
            if mCst='4' then
               begin
               tb_ped02_preP2ICMSSN_PERC.AsFloat:=cds_aliquotasal_credsn.AsFloat;
               tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Isento.AsInteger;
               Tb_Ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_rev_Isento.AsInteger;
               tb_ped02_preP2ICMS_PERC.AsFloat  :=0;
               end
            else if (mcst[1] in ['1','6','3','7']) then
               begin
               tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger;
               tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_rev_Ret.AsInteger;

               Tb_Ped02_preP2ST_ICMSCRED.AsFloat  :=cds_aliquotasal_stIcmsCred.AsFloat;
               Tb_Ped02_preP2ST_ICMSDEB.AsFloat   :=cds_aliquotasal_stIcmsDeb.AsFloat;
               if DM1.Tb_ProPDLISTA.AsInteger=2 then
                  tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Neg.AsFloat
               else if DM1.Tb_ProPDLISTA.AsInteger=1 then
                  tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Pos.AsFloat
               else if DM1.Tb_ProPDLISTA.AsInteger=0 then
                  tb_ped02_preP2ST_IVA.AsFloat    :=cds_aliquotasal_stIVA_Ina.AsFloat;
               tb_ped02_preP2MODBCST.AsInteger    :=cds_aliquotasmodBcST.AsInteger;
               end
            else
               begin
               tb_ped02_preP2CFOP_NF.Value:=cds_aliquotasCfo_rev_Trib.AsInteger;
               tb_ped02_preP2CFOP_ECF.Value:=cds_aliquotasCfo_rev_Trib.AsInteger;

               tb_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsInteger;

               if mPed_UF_Cli=DM1.Tb_EmpUF.AsString then
                  begin
                  if DM1.Tb_ProPDFIS_PRED_ICMS_EST.AsFloat>0 then
                     tb_ped02_preP2ICMS_PPRED.AsFloat :=DM1.Tb_ProPDFIS_PRED_ICMS_EST.AsFloat;
                  end
               else
                  begin
                  if DM1.Tb_ProPDFIS_PRED_ICMS_INT.AsFloat>0 then
                     tb_ped02_preP2ICMS_PPRED.AsFloat :=DM1.Tb_ProPDFIS_PRED_ICMS_INT.AsFloat;
                  end;
               if (Tb_Ped02_preP2ICMS_PPRED.AsFloat>0) and (not (mcst[1] in ['2','7'])) then
                  Tb_Ped02_preP2ICMS_PPRED.AsFloat:=0;

//                  ver reducao
               end;
            if (Tb_Ped02_preP2ST_ICMSDEB.AsFloat>0) and
              ( (tb_ped02_preP2MODBCST.AsInteger=0) or
                (tb_ped02_preP2MODBCST.AsInteger=5) )
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
                  tb_ped02_preP2PRECO_MAXCONS.AsFloat:=DM1.Tb_ProPDPMC.AsFloat;
               end;
            end
         else
            begin
            MessageDlg('Produto '+tb_ped02_preP2CODPRO.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
            tb_ped02_preP2CODPRO.AsString:='';
            DBGrid_itens.SetFocus;
            abort;
            end;
         end;
      end;
   if (tb_ped02_preP2QTD.AsFloat>0) and (tb_ped02_preP2PRECO.AsFloat>0) then
      tb_ped02_preVALOR_TOTAL.AsFloat:=tb_ped02_preP2QTD.AsFloat*tb_ped02_preP2PRECO.AsFloat
   else
      tb_ped02_preVALOR_TOTAL.AsFloat:=0;

   end;

end;

procedure TFrm_Venda_Pre.DBGrid_itensExit(Sender: TObject);
begin
{
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBMemo1.Focused then
      begin
      if length(tb_ped02_preP2CODPRO.AsString)>0 then
         tb_ped02_pre.Post
      else
         tb_ped02_pre.Cancel;
      end;
   end;
mEventoPendente:='';

end;

procedure TFrm_Venda_Pre.DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO) then
   begin
   if not (tb_ped02_pre.State in [dsEdit,dsInsert]) then
      begin
      if tb_ped02_preP2CODPRO.IsNull then
         tb_ped02_pre.Append
      else
         tb_ped02_pre.Edit;
      end;
   tb_ped02_preP2CODPRO.AsString:=fChamaPro(0,'_venda','');
   end;




end;

procedure TFrm_Venda_Pre.DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_itens.SelectedField=tb_ped02_preP2CODPRO) and
   (tb_ped02_pre.State in [dsBrowse]) then
   begin
   if tb_ped02_preP2CODPRO.IsNull then
      begin
      tb_ped02_pre.Append;
     end;
   end
else if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   if not (tb_ped02_pre.State in [dsEdit,dsInsert]) then
      begin
      if tb_ped02_preP2CODPRO.IsNull then
         tb_ped02_pre.Append
      else
         tb_ped02_pre.Edit;
      end;
   tb_ped02_preP2CODPRO.AsString:=fChamaPro(0,'_venda',key);
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

procedure TFrm_Venda_Pre.DBGrid_servicosColExit(Sender: TObject);
var
mCst: String;
begin

if tb_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_servicos.SelectedField=tb_ped02s_preP2SQTD then
      begin
      if tb_ped02s_preP2SQTD.IsNull then
         begin
         DBGrid_servicos.SelectedField:=tb_ped02s_preP2SQTD;
         DBGrid_servicos.SetFocus;
         abort;
         end
      end
   else if DBGrid_servicos.SelectedField=tb_ped02s_preP2SCODSER then
      begin
      if tb_ped02s_preP2SCODSER.AsString='' then
         begin
         DBGrid_servicos.SelectedField:=tb_ped02s_preP2SCODSER;
         DBGrid_servicos.SetFocus;
         abort;
         end
      else
         begin
         if flcadpro(1,1,codemp,tb_ped02s_preP2SCODSER.AsString) then
            begin
            tb_ped02s_preP2SPRECO.AsFloat:=DM1.Tb_Propcoven.Value;
            tb_ped02s_prePDNOME.Value :=DM1.Tb_ProPDNOME.Value;
            tb_ped02s_prePDUND.Value  :=DM1.Tb_ProPDUND.Value;
            tb_ped02s_preP2SCST.Value  :=DM1.Tb_ProPDSIT.Value;
            mCst:=copy(FormatFloat('000', valint(DM1.Tb_ProPDSIT.Value)),2,1);
            tb_ped02s_preP2SCFOP_ECF.Value:=cds_aliquotascfo_servico.AsInteger;
            tb_ped02s_preP2SCFOP_NF.Value:=cds_aliquotascfo_servico.AsInteger;
            Tb_ped02S_preP2SALIQISSQN.AsFloat   :=cds_aliquotasal_issqn.AsFloat;
            tb_ped02s_preP2SPREDINSS.AsFloat :=cds_aliquotasal_inss.AsFloat;
            tb_ped02s_preP2SALIQINSS.AsFloat :=cds_aliquotasal_inss_pred.AsFloat;
            tb_ped02s_preP2SPREDIRRF.AsFloat :=cds_aliquotasal_irrf.AsFloat;
            tb_ped02s_preP2SALIQIRRF.AsFloat :=cds_aliquotasal_irrf_pred.AsFloat;
            end
         else
            begin
            MessageDlg('Servico '+tb_ped02s_preP2SCODSER.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_servicos.SelectedField:=tb_ped02s_preP2SCODSER;
            tb_ped02s_preP2SCODSER.Value:=0;
            DBGrid_servicos.SetFocus;
            abort;
            end;
         end;
      end;
   if (tb_ped02s_preP2SQTD.AsFloat>0) and (tb_ped02s_preP2SPRECO.AsFloat>0) then
      tb_ped02s_preVALOR_TOTAL.AsFloat:=tb_ped02s_preP2SQTD.AsFloat*tb_ped02s_preP2SPRECO.AsFloat
   else
      tb_ped02s_preVALOR_TOTAL.AsFloat:=0;
   end;


end;

procedure TFrm_Venda_Pre.DBGrid_servicosExit(Sender: TObject);
begin
{
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
}
if tb_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBMemo_servico.Focused then
      begin
      if length(tb_ped02s_preP2SCODSER.AsString)>0 then
         tb_ped02s_pre.Post
      else
         tb_ped02s_pre.Cancel;
      end;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_servicosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_servicos.SelectedField=tb_ped02s_preP2SCODSER) then
   begin
   if not (tb_ped02s_pre.State in [dsEdit,dsInsert]) then
      begin
      if tb_ped02s_preP2SCODSER.IsNull then
         tb_ped02s_pre.Append
      else
         tb_ped02s_pre.Edit;
      end;
   tb_ped02s_preP2SCODSER.AsString:=fChamaPro(0,'_venda','');
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_servicosKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_servicos.SelectedField=tb_ped02s_preP2SCODSER) and
   (tb_ped02s_pre.State in [dsBrowse]) then
   begin
   if tb_ped02s_preP2SCODSER.IsNull then
      begin
      tb_ped02s_pre.Append;
     end;
   end;

end;

procedure TFrm_Venda_Pre.DBMemo1Exit(Sender: TObject);
begin

if tb_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBGrid_itens.Focused then
      begin
      if length(tb_ped02_preP2CODPRO.AsString)>0 then
         tb_ped02_pre.Post
      else
         tb_ped02_pre.Cancel;
      end;
   end;
end;

procedure TFrm_Venda_Pre.DBMemo_servicoExit(Sender: TObject);
begin

if tb_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBGrid_servicos.Focused then
      begin
      if length(tb_ped02s_preP2SCODSER.AsString)>0 then
         tb_ped02s_pre.Post
      else
         tb_ped02s_pre.Cancel;
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
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),0) then
//   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),valint(FormatDateTime('yyyy', date))) then
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
mVenda_GP.mPed1_CodCli:=DM1.Tb_CliCCODCLI.AsInteger;
mPed_UF_Cli             := DM1.Tb_CliCUF.AsString;

mPed_Cli_ConsFin:=DM1.Tb_CliCCONSF.AsInteger=1;

edt_nomcli.Text :=DM1.tb_cliCRAZAO.AsString;
if mCodCli_ant<>mVenda_GP.mPed1_CodCli then
   mped_Alterou_Cab:=true;
cb_tipopedExit(self);
mEventoPendente:='';

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
   edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.asString+DM1.Tb_PVPVCODPV.AsString;
   mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
   mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
   if mCodpv_ant<>mVenda_GP.mPed1_TabPV+IntTostr(mVenda_GP.mPed1_CodPV) then
      mped_Alterou_Cab:=true;

   edt_nomcond.Text:=DM1.Tb_PVPVNOME.AsString;
   if (not DM1.Tb_PV2.Active) or (DM1.Tb_PV2.IsEmpty) then
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
if (mped_Alterou_Cab) then
   begin
   if (not Tb_Ped02_pre.IsEmpty) or (not Tb_ped02S_pre.IsEmpty) then
      begin
      mVenda_GP.mPed1_QtdParc_ant:=-1;
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
                      ,0 //cds_ped02_preP2ST_ICMSCRED.AsFloat,
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
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,'','');
      fLerFormaPag(0);

      end;
   end;


mEventoPendente:='';

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
if mPed1_CodFP_Ant<>mVenda_GP.mPed1_CodFP then
   mped_Alterou_Cab:=true;
mEventoPendente:='';

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
if mcodven_ant<>mVenda_GP.mPed1_Codven then
   mped_Alterou_Cab:=true;
mEventoPendente:='';

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
   sbnNFE.Enabled      := False;
   sbnlSep.Enabled      := False;
   end
else if ptipo=2 then // inclusao ou alteracao
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := True;
   sbnExcluir.Enabled      := False;
   sbnNFE.Enabled          := False;
   sbnlSep.Enabled      := False;
   end
else if ptipo=0 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := False;
   sbnNFE.Enabled          := False;
   sbnlSep.Enabled      := False;

   end
else if ptipo=1 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := true;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := true;
   sbnNFE.Enabled          := true;
   sbnlSep.Enabled      := true;

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
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_Item, mAnt_QtdParc: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;

mAnt_CodPro: String;

begin

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;




for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban.Text);
      mOutDesp      :=valfloat(edt_outdesp.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;

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
                      ,0 //cds_ped02_preP2ST_ICMSCRED.AsFloat,
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
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,'','');
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;

      end;
   end;

fLerFormaPag(0);

fTotais(0);
mped_Alterou_Cab:=false;

end;


function TFrm_Venda_Pre.fVerificarOrdemFPgto(ptipo: Integer): Boolean;
var
mOrdemFP,mQtdParc: Integer;
Query2: TQuery;
Query1: TQuery;
begin
Query1:=TQuery.Create(nil);
Query1.DatabaseName:='SG_ASSOC';

Query2:=TQuery.Create(nil);
Query2.DatabaseName:='SG_ASSOC';
Query2.Close;
Query2.SQL.Clear;
Query2.SQL.Add('Select * from CADPFP  '
                          +' where PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp)
                          +' and   PFPCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                          +' and   PFPLOTSEQ='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                          +' order by PFPDATA,PFPSEQ ');
try
   Query2.Open;
except
   result:=false;
   exit;
   end;
mOrdemFP:=0;
mQtdParc:=Query2.RecordCount;
while not Query2.Eof do
   begin
   mOrdemFP:=mOrdemFP+1;
   if (Query2.FieldByName('PFPSEQ').AsInteger<>mOrdemFP) or
      (Query2.FieldByName('PFPQTDPARC').AsInteger<>mQtdParc) then
      begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Update CADPFP set PFPSEQ=:PARCELA '
                                +', PFPQTDPARC=:QTDPARC '
                                +' where PFPCODEMP=:CODEMP '
                                +' and   PFPCHAVE=:CHAVE '
                                +' and   PFPLOTSEQ=:CHAVE_ANO '
                                +' and   PFPSEQ=:PARCELA_ANT '
                                +' and   PFPQTDPARC=:QTDPARC_ANT ');
      Query1.ParamByName('PARCELA').AsInteger:=mOrdemFP;
      Query1.ParamByName('QTDPARC').AsInteger:=mQtdParc;
      Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
      Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      Query1.ParamByName('PARCELA_ANT').AsInteger:=Query2.FieldByName('PFPPARCELA').AsInteger;
      Query1.ParamByName('QTDPARC_ANT').AsInteger:=Query2.FieldByName('PFPQTDPARC').AsInteger;
      try
         Query1.ExecSQL;
         fDM1StartCommit;
      except
         result:=false;
         freeandnil(query1);
         freeandnil(query2);
         exit;
         end;
      end;
   Query2.Next;
   end;
freeandnil(query1);
freeandnil(query2);

result:=true;

end;


function TFrm_Venda_Pre.fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
var
Query1: TQuery;
begin
if mVenda_GP.mped1_Chave>0  then
   begin
   Query1:=TQuery.Create(nil);
   Query1.DatabaseName:='SG_ASSOC';
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Update CADP01 set P1SITPED=:SITUACAO '
                             +' where P1CODEMP=:CODEMP '
                             +' and   P1CHAVE=:CHAVE '
                             +' and   P1LOTSEQ=:CHAVE_ANO '
                             +' and   P1SITPED<>9 ' );
   Query1.ParamByName('SITUACAO').AsInteger:=ptipo;
   Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
   Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

   try
      Query1.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         FreeAndNil(query1);

         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','adp01_pre');
         end;
      end;
   FreeAndNil(query1);
   end;
result:=true;
end;

function TFrm_Venda_Pre.fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
begin

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('SELECT P1TIPO '
                  +',P1CHAVE '
                  +',P1LOTSEQ '
                  +',min(P1NUMCF) as P1NUMCF '
                  +',min(P1ECF_SERIE) as P1ECF_SERIE '
                  +',min(P1DATACF) as P1DATACF '

                  +',min(P1NUMNF) as P1NUMNF '
                  +',min(P1DATANF) as P1DATANF '
                  +',min(P1SERIE) as P1SERIE '
                  +',min(P1MODELO) as P1MODELO '

                  +',min(P1CODEMP) as P1CODEMP '
                  +',max(P1CODVEN) as P1CODVEN '
                  +',max(P1CODCLI) as P1CODCLI '
                  +',max(P1CODUSR) as P1CODUSR '
                  +',max(P1DATASEP) AS P1DATASEP '
                  +',max(P1CODPV) as P1CODPV '
                  +',max(P1TABPV) as P1TABPV '
                  +',max(P1CODTRA) as P1CODTRA '
                  +',max(P1FRETEPC) as P1FRETEPC '
                  +',max(P1QTDVOL) as P1QTDVOL '
                  +',max(P1SITPED) as P1SITPED '
                  +',max(P1CODUSR_ULTEVE) as P1CODUSR_ULTEVE '
                  +',max(P1QTDMAN) as P1QTDMAN '
                  +',max(P1BLOQPEND) as P1BLOQPEND '
                  +',max(P1QTDDECPU) as P1QTDDECPU '
                  +',max(P1TARBAN) as P1TARBAN '
                  +',max(P1TOTSERLIQ) as P1TOTSERLIQ '
                  +',max(P1VALSEG) as P1VALSEG '
                  +',max(P1VALFRE) as P1VALFRE '
                  +',max(P1DESC01) as P1DESC01 '
                  +',max(P1DESC02) as  P1DESC02 '
                  +',max(P1ETIVOL) as P1ETIVOL '

                  +',max(P1MINUTA) as  P1MINUTA '
                  +', 0 AS P1DESC03 '
                  +',max(P1VLRDES) as P1VLRDES '
                  +',max(P1VLRACRE) as P1VLRACRE '
                  +',max(P1PESOB) as P1PESOB '
                  +',max(P1PESOL) as P1PESOL '
                  +',max(P1DESCFIN) as P1DESCFIN '
                  +',max(P1OBS2) as P1OBS2 '
                  +',max(P1OBS1) as P1OBS1 '
                  +',max(P1OBS3) as P1OBS3 '
                  +',max(P1FORMACE) as P1FORMACE '
                  +',max(P1ESPECIE) as P1ESPECIE '
                  +',max(P1UFPV) as P1UFPV '
                  +',max(P1PLACAV) as P1PLACAV '
                  +',max(P1COMP_ULTEVE) as P1COMP_ULTEVE '
                  +',max(P1DATAP) as P1DATAP '
                  +',max(P1PREVENT) as P1PREVENT '
                  +',max(P1DTHRCHEG) as P1DTHRCHEG '
                  +',max(P1DATHOR_UEVE) as P1DATHOR_UEVE '
                  +',max(P1CODSEP) as P1CODSEP '
                  +',max(P1CODEMB) as P1CODEMB '
                  +',max(P1CODCON) as P1CODCON '
                  +',max(P1CODENT) as P1CODENT '
                  +',max(P1DATCON) as P1DATCON '
                  +',max(P1DATENT) as P1DATENT '

                  +',max(P1DATAEMB) as P1DATAEMB '
                  +',max(P1CANHOTO) as P1CANHOTO '
                  +',CASE WHEN max(P1CODEMP)<100 THEN max(P1SUBMOD) ELSE '+QuotedStr('SSS')+' END AS SUBMOD_MENOR '
                  +',CASE WHEN max(P1CODEMP)>100 THEN max(P1SUBMOD) ELSE '+QuotedStr('SSS')+' END AS SUBMOD_MAIOR '
                  +' FROM CADP01 where '
                          +'       (P1CODEMP=:CODEMP_MENOR or P1CODEMP=:CODEMP_MAIOR) '
                          +' and   P1CHAVE=:CHAVE '
                          +' and   P1LOTSEQ=:CHAVE_ANO '
                          +' and   P1ORDEM=:ORDEM ');
DM1.Query2.sql.Add(' group by P1TIPO,P1CHAVE,P1LOTSEQ ');
DM1.Query2.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
if pcodemp>100 then
   DM1.Query2.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp-100
else
   DM1.Query2.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp+100;

DM1.Query2.ParamByName('CHAVE').AsInteger    :=pChave;
DM1.Query2.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
DM1.Query2.ParamByName('ORDEM').AsInteger    :=01;

try
   DM1.Query2.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query2,20210,'_lerarq','paf_cadp01_pre');
      end;
   end;
if DM1.Query2.IsEmpty then
   begin
   MessageDlg('Pedido '+IntToStr(pChave)+'/'+IntToStr(pChave_ano)+' Empresa: '+IntToStr(pCodEmp)+' Não Encontrado!',mtWarning,[mbOk],0);
   Result:=false;
   exit;
   end;
mVenda_GP.mPed1_Codemp        :=DM1.Query2.FieldByName('P1CODEMP').AsInteger;
mVenda_GP.mPed1_Codemp_ini:=mVenda_GP.mPed1_Codemp;
if mVenda_GP.mPed1_Codemp_ini > 100 then
   mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini-100
else
   mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini+100;


mVenda_GP.mped1_Chave         :=DM1.Query2.FieldByName('P1CHAVE').AsInteger;
mVenda_GP.mPed1_Chave_ano     :=DM1.Query2.FieldByName('P1LOTSEQ').AsInteger;
mVenda_GP.mPed1_CodCli        :=DM1.Query2.FieldByName('P1CODCLI').AsInteger;
mVenda_GP.mPed1_Codven        :=DM1.Query2.FieldByName('P1CODVEN').AsInteger;
mVenda_GP.mPed1_CodPV         :=DM1.Query2.FieldByName('P1CODPV').AsInteger;
mVenda_GP.mPed1_TabPV         :=DM1.Query2.FieldByName('P1TABPV').AsString;
//mVenda_GP.mPed1_CodFP         :=DM1.Query2.FieldByName('P1CODFP').AsInteger;
mVenda_GP.mPed1_Situacao      :=DM1.Query2.FieldByName('P1SITPED').AsInteger;
mVenda_GP.mPed1_CodUsr_UEVE   :=DM1.Query2.FieldByName('P1CODUSR_ULTEVE').AsInteger;
mVenda_GP.mPed1_QtdMan        :=DM1.Query2.FieldByName('P1QTDMAN').AsInteger;
mVenda_GP.mPed1_Bloqueio      :=DM1.Query2.FieldByName('P1BLOQPEND').AsInteger;
mVenda_GP.mPed1_QtdDec        :=DM1.Query2.FieldByName('P1QTDDECPU').AsInteger;
mVenda_GP.mPed1_Tipo_Ped      :=DM1.Query2.FieldByName('P1TIPO').AsInteger;
mVenda_GP.mPed1_TarBan        :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
mVenda_GP.mPed1_TotSer        :=DM1.Query2.FieldByName('P1TOTSERLIQ').AsFloat;
mVenda_GP.mPed1_ValSeg        :=DM1.Query2.FieldByName('P1VALSEG').AsFloat;
mVenda_GP.mPed1_ValFre        :=DM1.Query2.FieldByName('P1VALFRE').AsFloat;
mVenda_GP.mPed1_pDesc01       :=DM1.Query2.FieldByName('P1DESC01').AsFloat;
mVenda_GP.mPed1_pDesc02       :=DM1.Query2.FieldByName('P1DESC02').AsFloat;
//mVenda_GP.mPed1_pDesc03       :=DM1.Query2.FieldByName('P1DESC03').AsFloat;
mVenda_GP.mPed1_TotPromo      :=0;
mVenda_GP.mPed1_pDesc01_Valor :=0;
mVenda_GP.mPed1_Desc_Rateado  :=DM1.Query2.FieldByName('P1VLRDES').AsFloat;
mVenda_GP.mPed1_Acres_VlrTot  :=DM1.Query2.FieldByName('P1VLRACRE').AsFloat;
mVenda_GP.mPed1_DescFin       :=DM1.Query2.FieldByName('P1DESCFIN').AsFloat;
mVenda_GP.mPed1_Desc_Cab      :=0;
mVenda_GP.mPed1_Obs_Ped       :=DM1.Query2.FieldByName('P1OBS2').AsString;
mVenda_GP.mPed1_Obs_NF        :=DM1.Query2.FieldByName('P1OBS1').AsString;
mVenda_GP.mPed1_Obs_NFS       :=DM1.Query2.FieldByName('P1OBS3').AsString;
mVenda_GP.mped1_formace       :=DM1.Query2.FieldByName('P1FORMACE').AsInteger;
if DM1.Query2.FieldByName('SUBMOD_MENOR').Value<>DM1.Query2.FieldByName('SUBMOD_MAIOR').Value then
   mVenda_GP.mped1_submod        :=StrToInt('0'+PalNum_Sis(DM1.Query2.FieldByName('SUBMOD_MAIOR').Value))
else
   mVenda_GP.mped1_submod        :=StrToInt('0'+PalNum_Sis(DM1.Query2.FieldByName('SUBMOD_MENOR').Value));



mVenda_GP.mPed1_Datap         :=DM1.Query2.FieldByName('P1DATAP').AsDateTime;

mVenda_GP.mPed1_DatHor_UEVE   :=DM1.Query2.FieldByName('P1DATHOR_UEVE').AsDateTime;
mVenda_GP.mPed1_TarBan        :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
mVenda_GP.mPed1_pDesc01_Ant   :=0;
mVenda_GP.mPed1_pDesc02_Ant   :=0;
mVenda_GP.mPed1_pDesc03_Ant   :=0;
mVenda_GP.mPed1_QtdItem       :=0;
mVenda_GP.mPed1_QtdUnd        :=0;

mVenda_GP.mPed1_CodTra        :=DM1.Query2.FieldByName('P1CODTRA').AsInteger;
edt_codtra.Text:=inttoStr(mVenda_GP.mPed1_CodTra);
mVenda_GP.mPed1_Tra_UFPV      :=DM1.Query2.FieldByName('P1UFPV').AsString;
cb_ufpv.Text                  :=mVenda_GP.mPed1_Tra_UFPV;
mVenda_GP.mPed1_Especie       :=DM1.Query2.FieldByName('P1ESPECIE').AsString;
edt_especie.Text              :=mVenda_GP.mPed1_Especie;
mVenda_GP.mPed1_Tra_PLACAv    :=DM1.Query2.FieldByName('P1PLACAV').AsString;
edt_placav.Text               :=mVenda_GP.mPed1_Tra_PLACAv;
mVenda_GP.mPed1_Comp_UEVE     :=DM1.Query2.FieldByName('P1COMP_ULTEVE').AsString;
mVenda_GP.mPed1_Frete_CIFFOB  :=DM1.Query2.FieldByName('P1FRETEPC').AsInteger;
CB_FRETEPC.ItemIndex          :=mVenda_GP.mPed1_Frete_CIFFOB;
mVenda_GP.mPed1_QtdVol        :=DM1.Query2.FieldByName('P1QTDVOL').AsInteger;
edt_qtdvol.Text               :=IntToStr(mVenda_GP.mPed1_QtdVol);
mVenda_GP.mPed1_PesoB         :=DM1.Query2.FieldByName('P1PESOB').AsFloat;
edt_pesob.Text                :=FormatFloat('#,##0.000', mVenda_GP.mPed1_PesoB);
mVenda_GP.mPed1_PesoL         :=DM1.Query2.FieldByName('P1PESOL').AsFloat;
edt_pesol.Text                :=FormatFloat('#,##0.000', mVenda_GP.mPed1_PesoL);
mVenda_GP.mped1_prevent       :=DM1.Query2.FieldByName('P1PREVENT').AsDateTime;
edt_datsai.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_prevent);
edt_horsai.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_prevent);
mVenda_GP.mPed1_minuta        :=DM1.Query2.FieldByName('P1MINUTA').AsInteger;
edt_minuta.Text               :=Inttostr(mVenda_GP.mPed1_Minuta);
mVenda_GP.mped1_etivol        :=DM1.Query2.FieldByName('P1ETIVOL').AsInteger;
cb_etivol.Checked             :=mVenda_GP.mped1_etivol=1;
mVenda_GP.mped1_canhoto       :=DM1.Query2.FieldByName('P1CANHOTO').AsInteger;
cb_canhoto.Checked            :=mVenda_GP.mped1_canhoto=1;
mVenda_GP.mPed1_CodUsr_Dig    :=DM1.Query2.FieldByName('P1CODUSR').AsInteger;
edt_coddig.Text               :=Inttostr(mVenda_GP.mPed1_CodUsr_Dig);
edt_coddigExit(Self);
mVenda_GP.mPed1_DatHor_Dig    :=DM1.Query2.FieldByName('P1DTHRCHEG').AsDateTime;
edt_datdig.Text               :=FormatDatetime(fdt2, mVenda_GP.mPed1_DatHor_Dig);
edt_hordig.Text               :=FormatDateTime('hh:nn', mVenda_GP.mPed1_DatHor_Dig);

mVenda_GP.mPed1_codsep        :=DM1.Query2.FieldByName('P1CODSEP').AsInteger;
edt_codsep.Text               :=inttostr(mVenda_GP.mped1_codsep);
edt_codsepExit(Self);

mVenda_GP.mPed1_DataSep       :=DM1.Query2.FieldByName('P1DATASEP').AsDateTime;
edt_datsep.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataSep);
edt_horsep.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_DataSep);


mVenda_GP.mPed1_codemb        :=DM1.Query2.FieldByName('P1CODEMB').AsInteger;
edt_codemb.Text               :=inttostr(mVenda_GP.mped1_codemb);
edt_codembExit(Self);

mVenda_GP.mPed1_Dataemb       :=DM1.Query2.FieldByName('P1DATAEMB').AsDateTime;
edt_datemb.Date               :=mVenda_GP.mped1_DataEmb;
edt_horemb.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_DataEmb);



mVenda_GP.mPed1_codcon        :=DM1.Query2.FieldByName('P1CODCON').AsInteger;
edt_codconf.Text              :=inttostr(mVenda_GP.mped1_codcon);
edt_codconfExit(Self);
mVenda_GP.mPed1_Datcon        :=DM1.Query2.FieldByName('P1DATCON').AsDateTime;
edt_datconf.Text              :=FormatDatetime(fdt2, mVenda_GP.mped1_DatCon);
edt_horconf.Text              :=FormatDatetime('hh:nn', mVenda_GP.mped1_DatCon);


mVenda_GP.mPed1_codent        :=DM1.Query2.FieldByName('P1CODENT').AsInteger;
edt_codent.Text               :=inttostr(mVenda_GP.mped1_codent);
edt_codentExit(Self);

mVenda_GP.mPed1_Datent       :=DM1.Query2.FieldByName('P1DATCON').AsDateTime;
edt_datent.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_Datent);
edt_horent.Text               :=FormatDatetime('hh:nn', mVenda_GP.mped1_Datent);


mVenda_GP.mped1_numcf       :=DM1.Query2.FieldByName('P1NUMCF').AsInteger;
edt_numcf.Text               :=IntToStr(mVenda_GP.mped1_numcf);

mVenda_GP.mped1_datacf       :=DM1.Query2.FieldByName('P1DATACF').AsDateTime;
edt_numcf.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataCF);

mVenda_GP.mped1_ECF_Serie     :=DM1.Query2.FieldByName('P1ECF_SERIE').Asstring;
edt_serienf.text                :=DM1.Query2.FieldByName('P1SERIE').Asstring;
edt_modelo.text               :=DM1.Query2.FieldByName('P1MODELO').Asstring;


mVenda_GP.mped1_numnf       :=DM1.Query2.FieldByName('P1NUMNF').AsInteger;
edt_numnf.Text               :=IntToStr(mVenda_GP.mped1_numnf);

mVenda_GP.mped1_datanf       :=DM1.Query2.FieldByName('P1DATANF').AsDateTime;
edt_datanf.Text               :=FormatDatetime(fdt2, mVenda_GP.mped1_DataNF);








edt_chave.Text     :=IntTostr(mVenda_GP.mped1_Chave);
edt_datap.Date     :=mVenda_GP.mPed1_Datap;
edt_codcli.Text    :=IntTostr(mVenda_GP.mPed1_CodCli);
edt_codCondPag.Text:=mVenda_GP.mPed1_TabPV+IntTostr(mVenda_GP.mPed1_CodPV);
cb_tipoped.ItemIndex:=mVenda_GP.mPed1_Tipo_Ped;
edt_codven.Text    :=IntTostr(mVenda_GP.mPed1_Codven);
edt_codfp.Text     :=IntTostr(mVenda_GP.mPed1_CodFP);
edt_codcli.Text    :=IntTostr(mVenda_GP.mPed1_CodCli);
Memo_ObsPed.Text   :=mVenda_GP.mPed1_Obs_Ped;
Memo_obsNF.Text    :=mVenda_GP.mPed1_Obs_NF;
cb_forma.ItemIndex :=mVenda_GP.mped1_formace;
edt_submod.text     :=FormatFloat('000', mVenda_GP.mped1_submod);


mVenda_GP.mPed1_Tipo_Ped      :=DM1.Query2.FieldByName('P1TIPO').AsInteger;
cb_tipoped.Text:=tab_tped[mVenda_GP.mPed1_Tipo_Ped];
with cb_tipoped do
   ItemIndex := Items.IndexOf(cb_tipoped.Text);

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



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


Tb_Ped02_pre.Close;
Tb_Ped02_pre.SQL.Clear;
Tb_Ped02_pre.SQL.Add('select P2ITEM,P2CODPRO ');
if mVenda_GP.mped1_formace=0 then
   begin
   Tb_Ped02_pre.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(P2QTD*P2PRECO) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   Tb_Ped02_pre.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(P2QTD*P2PRECO) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;

Tb_Ped02_pre.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '
                    +',max(P2MODBCST) as P2MODBCST '
                    +',max(P2ST_IVA ) as P2ST_IVA '
                    +',max(P2ST_REDUT) as P2ST_REDUT '
                    +',max(P2ST_ICMCRED) as P2ST_ICMSCRED '
                    +',max(P2ST_ICMDEB) AS P2ST_ICMSDEB '
                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2REDUTICM) AS P2ICMS_PPRED'
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDUND) as PDUND '
                    +',max(P2PROMOCAO) as P2PROMOCAO FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
Tb_Ped02_pre.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
if pcodemp>100 then
   Tb_Ped02_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp-100
else
   Tb_Ped02_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp+100;


Tb_Ped02_pre.ParamByName('CHAVE').AsInteger    :=pChave;
Tb_Ped02_pre.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
Tb_Ped02_pre.ParamByName('ORDEM').AsInteger    :=1;
try
   Tb_Ped02_pre.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02_Pre,['CADP02','CADPRO']),0,['0'],0);

   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Tb_Ped02_pre,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;

tb_ped02_pre.Last;
mPed_Item:=tb_ped02_preP2ITEM.AsInteger+1;
// servico

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');


Tb_Ped02S_pre.Close;
Tb_Ped02S_pre.SQL.Clear;
Tb_Ped02S_Pre.SQL.Add('Select P2SCODEMP,P2SCHAVE,P2SLOTSEQ AS P2SCHAVE_ANO,P2SITEM,P2SCODPRO AS P2SCODSER');
if mVenda_GP.mped1_formace=0 then
   begin
   Tb_Ped02S_Pre.SQL.Add('      ,sum(P2SQTD) as P2SQTD '
                     +'      ,max(P2SPRECO) as P2SPRECO '
                     +'      ,max(P2SPCOTAB) AS P2SPCOTAB '
                     +'      ,max(P2SPCOCUS) as P2SPCOCUS '
                     +'      ,sum(P2SQTD*P2SPRECO) AS VALOR_TOTAL ');
   end
else
   begin
   Tb_Ped02S_Pre.SQL.Add('      ,max(P2SQTD) as P2SQTD '
                     +'      ,sum(P2SPRECO) as P2SPRECO '
                     +'      ,sum(P2SPCOTAB) AS P2SPCOTAB '
                     +'      ,sum(P2SPCOCUS) as P2SPCOCUS '
                     +'      ,sum(P2SQTD*P2SPRECO) AS VALOR_TOTAL ');
   end;



Tb_Ped02S_Pre.SQL.Add('      ,sum(P2STOTDES) AS P2STOTDES '
                     +'      ,max(P2SDESC1) AS P2SPDESC01 '
                     +'      ,max(P2SDESC2) AS P2SPDESC02 '
                     +'      ,max(P2SDESC3) AS P2SPDESC03 '
                     +'      ,max(P2SDESC_COMP) as P2SDESC_COMP '
                     +'      ,max(P2SSIT) as P2SCST '
                     +'      ,max(P2SCSOSN) as P2SCSOSN '
                     +'      ,sum(P2SBCISSQN) as P2SBCISSQN '
                     +'      ,sum(P2SVISSQN) as P2SVISSQN '
                     +'      ,max(P2SALIQ) AS P2SALIQISSQN '
                     +'      ,max(P2SSTATUS) AS P2SSITUACAO '
                     +'      ,sum(P2SDESCRAT) as P2SDESCRAT '
                     +'      ,sum(P2SPDESCF) AS P2SDESCFIN_PERC '
                     +'      ,sum(P2SVDESCF) AS  P2SDESCFIN_VALOR '
                     +'      ,sum(P2SBCINSS) as P2SBCINSS '
                     +'      ,sum(P2SREDINSS) as P2SPREDINSS '
                     +'      ,sum( ROUND( ((P2SBCINSS*P2SREDINSS)/100),2)) P2SVREDINSS '
                     +'      ,max(P2SALIQINSS) as P2SALIQINSS '
                     +'      ,max(P2SREDIRRF) AS P2SPREDIRRF '
                     +'      ,sum(ROUND( ((P2SBCIRRF*P2SREDIRRF)/100),2)) as P2SVREDIRRF '
                     +'      ,max(P2SALIQIRRF) AS P2SALIQIRRF '
                     +'      ,max(P2SCFO) AS P2SCFOP_NF '
                     +'      ,max(P2SCFO) AS P2SCFOP_ECF '
                     +'      ,max(P2SCODFUN) AS P2SCODVEN '
                     +'      ,max(PDNOME) as PDNOME '
                     +'      ,max(PDUND) as PDUND '
                     +' from cadp02S'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                     +' (P2SCODEMP=:CODEMP_MENOR or P2SCODEMP=:CODEMP_MAIOR ) '
                     +' and   P2SCHAVE=:CHAVE'
                     +' and   P2SLOTSEQ=:CHAVE_ANO'
                     +' and   P2SORDEM=:ORDEM '
                     +' GROUP BY P2SCODEMP,P2SCHAVE,P2SLOTSEQ,P2SITEM,P2SCODPRO '
                     +'  order by P2SITEM ');
Tb_Ped02S_pre.ParamByName('CODEMP_MENOR').AsInteger   :=pCodEmp;
if pcodemp>100 then
   Tb_Ped02S_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp-100
else
   Tb_Ped02S_pre.ParamByName('CODEMP_MAIOR').AsInteger   :=pCodEmp+100;


Tb_Ped02S_pre.ParamByName('CHAVE').AsInteger    :=pChave;
Tb_Ped02S_pre.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
Tb_Ped02S_pre.ParamByName('ORDEM').AsInteger    :=1;

try
   Tb_Ped02s_pre.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02s_Pre,['CADP02S','CADPRO']),0,['0'],0);

   if fVerificaRedeAtiva(true) then
      begin
//      ex_erroSql_Novo(Tb_Ped02s_pre,774,'frm_venda_pre','paf_cadp02s_pre')
      end
   else
      fFecharTudo(0);
   end;
if not tb_ped02s_pre.Active then
   tb_ped02s_pre.Open;
tb_ped02s_pre.Last;
mPed_Item_Servico:=tb_ped02s_preP2SITEM.AsInteger+1;



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
   edt_codcondpag.Text:=fChamaPV(1,'Frm_Venda_Pre.','');
   edt_codCondPagExit(Self);
   end;


end;




function tFrm_Venda_Pre.fpedtestacfop(ptipo: Integer; PUnd: Real): Boolean;
var
mValorParam01,mValorParam02,mValorParam03: Real;
mqtdaliq,x,y:Integer;
begin
mQtdAliq:=09;
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

   for x:=1 to mQtdAliq do
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

      for x:=1 to mQtdAliq do
         begin
         fgravarAliquotas(y,char(64+x),-1, -1,// aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+x)+'_SN').AsFloat, // aliq redutor
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

      for x:=1 to mQtdAliq do
         begin
         fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+x)).AsFloat, // aliq redutor
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




   mVenda_GP.mPd_EstNor        := 'N';
   mVenda_GP.mPd_EstCons       := 'N';
   mVenda_GP.mPd_EstTerc       := 'N';
   mVenda_GP.mPd_EstVenda      := 'N';

   if y=0 then
      flcaduf_tpped(0,0,codemp,DM1.Tb_UFPUF.AsString,IntToStr(mVenda_GP.mPed1_Tipo_Ped))
   else
      flcaduf_tpped(0,0,codemp+100,DM1.Tb_UFPUF.AsString,IntToStr(mVenda_GP.mPed1_Tipo_Ped));

   if DM2.Tb_UF_TPPEDTPSAIDA_NORMAL.AsInteger=1 then
      mVenda_GP.mPd_EstNor        := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_CONSIGNADO.AsInteger=1 then
      mVenda_GP.mPd_EstCons       := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_EST_TERC.AsInteger=1 then
      mVenda_GP.mPd_EstTerc       := 'S';
   if DM2.Tb_UF_TPPEDTPSAIDA_REM_VENDA.AsInteger=1 then
      mVenda_GP.mPd_EstVenda      := 'S';

   if DM2.Tb_UF_TPPEDTPENTRADA_NORMAL.AsInteger=1 then
      mVenda_GP.mPd_EstNor        := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_CONSIGNADO.AsInteger=1 then
      mVenda_GP.mPd_EstCons       := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_EST_TERC.AsInteger=1 then
      mVenda_GP.mPd_EstTerc       := 'E';
   if DM2.Tb_UF_TPPEDTPENTRADA_REM_VENDA.AsInteger=1 then
      mVenda_GP.mPd_EstVenda      := 'E';


   if not DM2.Tb_UF_TPPED.IsEmpty then
      begin
      if DM1.Tb_PargerPINDUSTRIA.AsInteger>0 then
         begin
         for x:=1 to mQtdAliq do
            begin

            fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
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
               for x:=1 to mQtdAliq do
                  begin

                  fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
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
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
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
            end
         end
      else
         begin

         for x:=1 to mQtdAliq do
            begin
            fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
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
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),-1,-1, // aliquota de icms
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
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               for x:=1 to mQtdAliq do
                  begin
                  fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
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

         end;

      if  DM1.Tb_CliCICMSTP.AsInteger=0 then      // icms normal dos produtos retidos
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,0,// aliquota de icms
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
          end;

      if DM1.Tb_CliCICMSNOR.AsInteger=1 then    // icms normal dos produtos tributados
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),0,-1,// aliquota de icms
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

          end;
      if DM1.Tb_CliCREDICMSNOR.AsInteger=1 then  // redutor de icms aplicar 0-sim 1-nao
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
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

          end;

      if DM1.Tb_CliCICMSR.AsFloat<>1 then  // calcular icms retido calcula quando é 1
          begin
          for x:=1 to mQtdAliq do
             begin
             fgravarAliquotas(y,char(64+x),-1,-1,// aliquota de icms
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
          end;
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

if mVenda_GP.mPed1_Tipo_Ped=0 then
   begin
   mVenda_GP.mPd_EstNor        := 'N';
   mVenda_GP.mPd_EstCons       := 'N';
   mVenda_GP.mPd_EstTerc       := 'N';
   mVenda_GP.mPd_EstVenda      := 'N';
   end;


end;


function TFrm_Venda_Pre.fgravarAliquotas(pTipo_Reg: Integer;pTabIcm: String;
    pAliqTrib,pAliqRet,pAliqRed,pStIcmsCred,pStIcmsDeb,pStIVA_Ina,pStIVA_Pos,pStIVA_Neg,pISSQN
    ,pRepas,pAliqPis,pAliqCofins: Real;
    pCfo_Indus_Ret,pCfo_Indus_Trib,pCfo_Indus_Isento,pCfo_rev_Ret,pCfo_rev_Trib,pCfo_rev_Isento
    ,pCfo_SubEcf_Ret,pCfo_SubEcf_Trib,pCfo_SubEcf_Isento,pcfo_servico,pmodBcST: Integer;
    pal_stAliqRed,pal_inss,pal_inss_pred,pal_irrf,pal_irrf_pred: Real): Boolean;

begin
if not cds_aliquotas.Active then
   cds_aliquotas.Open;

if cds_aliquotas.Locate('tipo_reg;al_tabicm',vararrayof([pTipo_Reg,pTabIcm]),[]) then
   cds_aliquotas.edit
else
   cds_aliquotas.Append;
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


procedure TFrm_Venda_Pre.Tb_FP_preAfterDelete(DataSet: TDataSet);
begin
mVenda_GP.mPed1_QtdParc_ant:=-1;
fVerificarOrdemFPgto(0);
fSomarFPgto(0);

end;

procedure TFrm_Venda_Pre.Tb_FP_preAfterEdit(DataSet: TDataSet);
begin

mCodFP_Ant:=Tb_fp_prePFPCODFP.AsInteger;

end;

procedure TFrm_Venda_Pre.Tb_FP_preAfterPost(DataSet: TDataSet);
begin
mVenda_GP.mPed1_QtdParc_ant:=-1;
fSomarFPgto(0);

end;

procedure TFrm_Venda_Pre.Tb_FP_preBeforePost(DataSet: TDataSet);
begin

if tb_fp_prePFPVALOR.AsFloat=0 then
   begin
   tb_fp_pre.Cancel;
   Abort;
   end
else if tb_fp_pre.State in [dsEdit] then
   begin
   if mCodFP_Ant<>tb_fp_prePFPCODFP.AsInteger then
      begin
      if flcadfp(0,tb_fp_prePFPCODFP.Asinteger,'') then
         tb_fp_prePFPNOMFP.AsString:=DM1.Tb_FPFPDESC.AsString
      else
         begin
         MessageDlg('Forma de Pagamento '+tb_fp_prePFPCODFP.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_fpgto.SelectedField:=tb_fp_prePFPCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
      end;
   end;
if Tb_FP_prePFPDATA.AsDateTime<Date then
   begin
   MessageDlg('A Data da Forma do Pagamento não pode ser menor que a data atual!',mtWarning,[mbok],0);
   Abort;
   exit;
   end;



end;

procedure TFrm_Venda_Pre.Tb_Ped02_preAfterCancel(DataSet: TDataSet);
begin
    mPed_Item:=mPed_Item-1;
end;

procedure TFrm_Venda_Pre.Tb_Ped02_preAfterEdit(DataSet: TDataSet);
begin
    mCodpro_Ant:=tb_ped02_preP2CODPRO.AsString;
    mItem_Ant  :=tb_ped02_preP2ITEM.AsInteger;
    mQtd_Ant   :=tb_ped02_preP2QTD.AsFloat;

end;

procedure TFrm_Venda_Pre.Tb_Ped02_preAfterInsert(DataSet: TDataSet);
begin
    mCodpro_Ant:='';
    mItem_Ant  :=0;
    mQtd_Ant   :=0;
    tb_ped02_preP2ITEM.Value:=mPed_Item;
    mPed_Item:=mPed_Item+1;

end;

procedure TFrm_Venda_Pre.Tb_Ped02_preAfterPost(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;

mMovEst: Integer;
begin
mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;



if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(0,0);
      end;
   edt_chave.Text:=InttoStr(mVenda_GP.mped1_Chave);
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   end
else if mped_Alterou_Cab then
   begin

   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   mped_Alterou_Cab:=false;
   end;
if mVenda_GP.mped1_submod=100 then
   begin
   if codemp>100 then
      mVenda_GP.mPed1_Codemp:=codemp-100
   else
      mVenda_GP.mPed1_Codemp:=codemp+100
   end
else
   mVenda_GP.mPed1_Codemp:=codemp;
for x:=1 to 2 do
   begin
   mVenda_GP.mPed1_QtdParc_ant:=-1;

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban.Text);
      mOutDesp      :=valfloat(edt_outdesp.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;
   if (mVenda_GP.mped1_formace=1)and (x=2) then
      mMovEst:=2
   else
      mMovEst:=0;

   mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,mItem_Ant,tb_ped02_preP2CFOP_ECF.AsInteger,
                      tb_ped02_preP2CFOP_NF.AsInteger ,tb_ped02_preP2MODBCST.AsInteger,
                      0, // situacao
                      mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mVenda_GP.mPed1_CodFP,iif(mItem_ant=0,0,1),
                      tb_ped02_preP2CODPRO.AsString,
                      mCodpro_Ant, // codigo anterior
                      mQtd_cal,
                      mQtd_Ant_Cal,
                      tb_ped02_preP2DESC_PERC01.AsFloat,
                      tb_ped02_preP2DESC_PERC02.AsFloat,
                      tb_ped02_preP2DESC_PERC03.AsFloat,
                      0, // desconto em valor
                      mPrecoUnit_Cal,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      mPrecoTab_Cal,
                      mPrecoTab_Cal,
                      mPrecoUCPR_Cal,
                      mPrecoCus_Cal,
                      mPrecoMax_Cal,
                      tb_ped02_preP2IPI_PERC.AsFloat,
                      tb_ped02_preP2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_ped02_preP2PIS_PERC.AsFloat,
                      tb_ped02_preP2COFINS_PERC.AsFloat,
                      tb_ped02_preP2DESCFIN_PERC.AsFloat,
                      0, // percentual de acrescimos
                      tb_ped02_preP2CODVEN.AsFloat,
                      tb_ped02_preP2ICMS_PPRED.AsFloat,
                      tb_ped02_preP2ST_IVA.AsFloat,
                      tb_ped02_preP2ST_REDUT.AsFloat,
                      tb_ped02_preP2ST_REDUT.AsFloat,
                      tb_ped02_preP2ST_ICMSDEB.AsFloat,
                      Tb_Ped02_preP2ST_ICMSCRED.AsFloat,
                      tb_ped02_preP2ICMSSN_PERC.AsFloat,
                      mDescValor,
                      0, // ACRESCIMOS RATEADO
                      mValseg,
                      mValFre,
                      mTarBan,
                      mOutDesp,
                      tb_ped02_preP2CST.AsString,
                      tb_ped02_preP2AMBIENTE.AsString,
                      tb_ped02_preP2DESC_COMP.AsString,
                      tb_ped02_preP2CSOSN.AsString,
                      tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value);
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;

      end;
   end;
if Log_TipoLote=1 then
   begin
   fBaixarLotes(Tb_Ped02_preP2ITEM.AsInteger);
   end;
mGravando_Item:=false;

fLerFormaPag(0);

fTotais(0);

//edt_totliq.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_Totall);


//LINDOMAR

end;

procedure TFrm_Venda_Pre.Tb_Ped02_preBeforePost(DataSet: TDataSet);
var
Query_Cons: TQuery;
begin
if length(tb_ped02_preP2CODPRO.AsString)<1 then
   begin
   tb_ped02_pre.Cancel;
   Abort;
   end
else if length(tb_ped02_prePDNOME.AsString)<1 then
   begin
   MessageDlg('Código do Produto Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if tb_ped02_preP2QTD.AsFloat<=0 then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2QTD;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if tb_ped02_preP2PRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=tb_ped02_preP2PRECO;
   DBGrid_itens.SetFocus;
   Abort;
   end;
if (mVenda_GP.mped1_Chave<>0) and ((trim(mCodpro_Ant)='')) or (mCodpro_Ant<>Tb_Ped02_preP2CODPRO.AsString)  then
   begin
   Query_Cons:=TQuery.Create(nil);
   Query_Cons.DatabaseName:='SG_ASSOC';
   Query_Cons.close;
   Query_Cons.SQL.clear;
   Query_Cons.SQL.Add('Select count(*) from CADP02 where P2CHAVE=:CHAVE '
                  +' and (P2CODEMP=:CODEMP or P2CODEMP=:CODEMP_FILIAL) '
                  +' and P2ORDEM=:ORDEM '
                  +' and P2LOTSEQ=:LOTSEQ '
                  +' and P2CODPRO=:CODPRO ');
   Query_Cons.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   Query_Cons.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
   Query_Cons.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
   Query_Cons.ParamByName('ORDEM').AsInteger:=01;
   Query_Cons.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
   Query_Cons.ParamByName('CODPRO').AsFloat:=Tb_Ped02_preP2CODPRO.AsFloat;
   try
      Query_Cons.Open;
   except
      end;
   if Query_Cons.Fields[0].AsInteger>0 then
      begin
//      MessageDlg('Produto já digitado neste pedido!',mtWarning,[mbOk],0);
      fmensagem('Produto já digitado neste pedido!',0,['0'],0);
      freeandnil(Query_Cons);
      DBGrid_itens.SelectedField:=tb_ped02_preP2CODPRO;
      DBGrid_itens.SetFocus;
      Abort;
      end;
   end;
if (tb_ped02_preP2QTD.AsFloat>0) and (tb_ped02_preP2PRECO.AsFloat>0) then
   tb_ped02_preVALOR_TOTAL.AsFloat:=tb_ped02_preP2QTD.AsFloat*tb_ped02_preP2PRECO.AsFloat
else
   tb_ped02_preVALOR_TOTAL.AsFloat:=0;


freeandnil(Query_Cons);


mGravando_Item:=true;



end;

procedure TFrm_Venda_Pre.Tb_Ped02_preBeforeDelete(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_Item, mAnt_QtdParc: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;

mAnt_CodPro: String;


mMovEst:Integer;
Query_Ped02_Lotes: TQuery;
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;




for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
      mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
      mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
      mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
      mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban.Text);
      mOutDesp      :=valfloat(edt_outdesp.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;

         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUCPR_Cal:=mValorTemp
         else
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoMax_Cal:=mValorTemp
         else
            mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;

         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;

      if (mVenda_GP.mped1_formace=1)and (x=2) then
         mMovEst:=2
      else
         mMovEst:=0;


      mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,0,tb_ped02_preP2CFOP_ECF.AsInteger,
                      tb_ped02_preP2CFOP_NF.AsInteger
                      ,tb_ped02_preP2MODBCST.AsInteger,
                      0, // situacao
                      mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mVenda_GP.mPed1_CodFP,
                      2, // EXCLUSAO
                      tb_ped02_preP2CODPRO.AsString,
                      mCodpro_Ant, // codigo anterior
                      mQtd_Cal,
                      0, //mQtd_Ant,
                      tb_ped02_preP2DESC_PERC01.AsFloat,
                      tb_ped02_preP2DESC_PERC02.AsFloat,
                      tb_ped02_preP2DESC_PERC03.AsFloat,
                      0, // desconto em valor
                      mPrecoUnit_Cal,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      mPrecoTab_Cal,
                      mPrecoTab_Cal, // preco da forma de pagamento
                      mPrecoUCPR_Cal,
                      mPrecoCus_Cal,
                      mPrecoMax_Cal,
                      tb_ped02_preP2IPI_PERC.AsFloat,
                      tb_ped02_preP2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      tb_ped02_preP2PIS_PERC.AsFloat,
                      tb_ped02_preP2COFINS_PERC.AsFloat,
                      tb_ped02_preP2DESCFIN_PERC.AsFloat,
                      0, // percentual de acrescimos
                      tb_ped02_preP2CODVEN.AsFloat,
                      tb_ped02_preP2ICMS_PPRED.AsFloat,
                      tb_ped02_preP2ST_IVA.AsFloat,
                      tb_ped02_preP2ST_REDUT.AsFloat,
                      tb_ped02_preP2ST_REDUT.AsFloat,
                      tb_ped02_preP2ST_ICMSDEB.AsFloat,
                      Tb_Ped02_preP2ST_ICMSCRED.AsFloat,
                      tb_ped02_preP2ICMSSN_PERC.AsFloat,
                      valfloat(edt_desc_valor.Text),
                      0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text),
                      tb_ped02_preP2CST.AsString,
                      tb_ped02_preP2AMBIENTE.AsString,
                      tb_ped02_preP2DESC_COMP.AsString,
                      tb_ped02_preP2CSOSN.AsString,
                      tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value);
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;

      end;
   end;

if Log_TipoLote=1 then
   begin
   Query_Ped02_Lotes:=tQuery.Create(nil);
   Query_Ped02_Lotes.DatabaseName:='SG_ASSOC';
   Query_Ped02_Lotes.Close;
   Query_Ped02_Lotes.SQL.Clear;
   Query_Ped02_Lotes.SQL.Add('Select P2LM_CODEMP,P2LM_LOTE,'
                            +' CASE WHEN P2LM_DTVCTO<'+QuotedStr('01/01/1901')+' THEN NULL ELSE P2LM_DTVCTO END  AS  P2LM_DTVCTO '
                            +',P2LM_ITEM,sum(P2LM_QTD) as P2QTD from CADP02_LOTES '
                      +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                      +' and   P2LM_CHAVE=:CHAVE '
                      +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                      +' and P2LM_ITEM=:ITEM '
                      +' group by P2LM_CODEMP,P2LM_LOTE,P2LM_DTVCTO,P2LM_ITEM '
                      +' order by P2LM_CODEMP,P2LM_LOTE,P2LM_DTVCTO');
   query_Ped02_Lotes.parambyName('CODEMP').asinteger       :=mVenda_GP.mPed1_Codemp_ini;
   query_Ped02_Lotes.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
   query_Ped02_Lotes.ParamByName('ITEM').AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
   query_Ped02_Lotes.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
   query_Ped02_Lotes.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;

   try
      query_Ped02_Lotes.open;
   except
      end;
   While not Query_Ped02_Lotes.Eof do
      begin
      fGer_BaixarLotes(1
                   ,0
                   ,mVenda_GP.mPed1_codemp
                   ,iif(mVenda_GP.mPed1_CodEmp>100,mVenda_GP.mPed1_codEmp-100,mVenda_GP.mPed1_codEmp+100)
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstVenda
                   ,mVenda_GP.mPd_EstTerc
                   ,Tb_ped02_PreP2CODPRO.AsString
                   ,Query_Ped02_Lotes.FieldByName('P2LM_LOTE').AsString
                   ,Query_Ped02_Lotes.FieldByName('P2QTD').Asfloat
                   ,Query_Ped02_Lotes.FieldByName('P2LM_DTVCTO').AsDateTime);



      Query_Ped02_Lotes.Next;
      end;

   Query_Ped02_Lotes.Close;
   Query_Ped02_Lotes.SQL.Clear;
   Query_Ped02_Lotes.SQL.Add('Delete from CADP02_LOTES '
                      +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                      +' and   P2LM_CHAVE=:CHAVE '
                      +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                      +' and P2LM_ITEM=:ITEM ');
   query_Ped02_Lotes.parambyName('CODEMP').asinteger:=mVenda_GP.mPed1_Codemp_ini;
   query_Ped02_Lotes.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
   query_Ped02_Lotes.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
   query_Ped02_Lotes.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;
   query_Ped02_Lotes.ParamByName('ITEM').AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
   try
      query_Ped02_Lotes.execsql;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(Query_ped02_Lotes);
   end;


fLerFormaPag(0);

fTotais(0);

end;

procedure TFrm_Venda_Pre.edt_codcliEnter(Sender: TObject);
begin
mEventoPendente:='edt_codcli';

mCodcli_ant:=valint(edt_codcli.text);
end;

procedure TFrm_Venda_Pre.edt_codCondPagEnter(Sender: TObject);
begin
mcodPv_ant:=edt_codcondpag.text;
mEventoPendente:='edt_codcondpag';

end;

procedure TFrm_Venda_Pre.edt_codvenEnter(Sender: TObject);
begin
mcodven_ant:= valint(edt_codven.Text);
mEventoPendente:='edt_codven';

end;

procedure TFrm_Venda_Pre.edt_codfpEnter(Sender: TObject);
begin
mPed1_CodFP_Ant:=ValInt(edt_codfp.Text);
mEventoPendente:='edt_codfp';

end;

procedure TFrm_Venda_Pre.Tb_FP_preAfterInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) as TOT, max(PFPSEQ) AS PARCELA from cadpfp '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPLOTSEQ=:CHAVE_ANO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query1.Open;
   tb_fp_prePFPPARCELA.AsInteger:=DM1.Query1.FieldByName('PARCELA').AsInteger+1;
   tb_fp_prePFPVALOR.AsFloat    :=ValFloat(edt_totliq.Text)-DM1.Query1.FieldByName('TOT').AsFloat;
except
  end;
tb_fp_prePFPCODEMP.AsInteger   :=mVenda_GP.mPed1_Codemp;
tb_fp_prePFPCHAVE.AsInteger    :=mVenda_GP.mped1_Chave;
tb_fp_prePFPDATA.AsDateTime:=mVenda_GP.mPed1_Datap;
tb_fp_prePFPCHAVE_ANO.AsInteger:=mVenda_GP.mPed1_Chave_ano;
tb_fp_prePFPCODFP.AsInteger:=mvenda_gp.mPed1_CodFP;
tb_fp_prePFPNOMFP.AsString :=mvenda_gp.mPed1_NomFP;
if tb_fp_prePFPVALOR.AsFloat<0 then
   tb_fp_prePFPVALOR.AsFloat:=0;


end;

procedure TFrm_Venda_Pre.Tb_ped02S_preAfterCancel(DataSet: TDataSet);
begin
    mPed_Item_Servico:=mPed_Item_Servico-1;

end;

procedure TFrm_Venda_Pre.Tb_ped02S_preAfterEdit(DataSet: TDataSet);
begin

    mCodSer_Ant       :=tb_ped02S_preP2SCODSER.AsString;
    mItem_Servico_Ant :=tb_ped02S_preP2SITEM.AsInteger;
    mQtd_Servico_Ant  :=tb_ped02S_preP2SQTD.AsFloat;

end;

procedure TFrm_Venda_Pre.Tb_ped02S_preAfterInsert(DataSet: TDataSet);
begin
    mCodSer_Ant:='';
    mItem_Servico_Ant  :=0;
    mQtd_Servico_Ant   :=0;
    tb_ped02s_preP2SITEM.Value:=mPed_Item_Servico;
    mPed_Item_Servico:=mPed_Item_Servico+1;

end;

procedure TFrm_Venda_Pre.Tb_ped02S_preAfterPost(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoCus_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;

mMovEst: Integer;
begin
mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;


//parei aqui
if mVenda_GP.mped1_Chave=0 then
   begin

   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(0,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   edt_chave.Text:=Inttostr(mVenda_GP.mped1_Chave);
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   mped_Alterou_Cab:=false;
   end;


if mVenda_GP.mped1_submod=100 then
   begin
   if codemp>100 then
      mVenda_GP.mPed1_Codemp:=codemp-100
   else
      mVenda_GP.mPed1_Codemp:=codemp+100
   end
else
   mVenda_GP.mPed1_Codemp:=codemp;

for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02S_preP2sPRECO.AsFloat;
      mQtd_Cal:=tb_ped02S_preP2SQTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_ped02S_preP2SPCOTAB.AsFloat;
      mPrecoCus_Cal :=Tb_ped02S_preP2SPCOCUS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban.Text);
      mOutDesp      :=valfloat(edt_outdesp.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02S_preP2SPRECO.AsFloat;

         mPrecoTab_Cal :=Tb_ped02S_preP2SPCOTAB.AsFloat;
         mPrecoCus_Cal :=Tb_ped02S_preP2SPCOCUS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SQTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02S_preP2SQTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02S_preP2SQTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02S_preP2SQTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SPRECO.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02S_preP2SPRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_ped02S_preP2SPCOTAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=Tb_ped02S_preP2SPCOTAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SPCOTAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02S_preP2SPCOTAB.AsFloat-mValorTemp;


         mValorTemp:=Arredonda( (Tb_ped02S_preP2SPCOCUS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_ped02S_preP2SPCOCUS.AsFloat-mValorTemp;


         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;
   if (mVenda_GP.mped1_formace=1)and (x=2) then
      mMovEst:=2
   else
      mMovEst:=0;

   mVenda_GP.fGravarServicos(tb_ped02s_preP2SITEM.AsInteger,
                          mItem_Servico_Ant,
                          tb_ped02s_preP2SCFOP_ECF.AsInteger,
                          tb_ped02s_preP2SCFOP_NF.AsInteger,
                          0, // SITUACAO
                          mVenda_GP.mPed1_CodFP,iif(mItem_Servico_Ant=0,0,1),
                          tb_ped02s_preP2SCODSER.AsString,
                          mCodSer_Ant,
                          Tb_ped02S_preP2SALIQISSQN.AsFloat,
                          tb_ped02s_preP2SDESCFIN_PERC.AsFloat,
                          tb_ped02s_preP2SALIQINSS.AsFloat,
                          tb_ped02s_preP2SPREDINSS.AsFloat,
                          tb_ped02s_preP2SALIQIRRF.AsFloat,
                          tb_ped02s_preP2SPREDIRRF.AsFloat,
                          mQtd_Cal,
                          mQtd_Ant_Cal,
                          tb_ped02s_preP2SPDESC01.AsFloat,
                          tb_ped02s_preP2SPDESC02.AsFloat,
                          tb_ped02s_preP2SPDESC03.AsFloat,
                          0, // DESCONTO EM VALOR
                          mPrecoUnit_Cal,
                          mPrecoCus_Cal, // PCO UCPR
                          0, // ALIQ ICMS
                          0, // PERC COMIS
                          0, // DESCONTO FINANCEIRO
                          0, // PERC ACRES
                          tb_ped02s_preP2SCODVEN.AsFloat,
                          valfloat(edt_desc_valor.Text),
                          0, // ACRESCIMOS RATEADO
                          mValseg,
                          mValFre,
                          mTarBan,
                          mOutDesp,
                          tb_ped02s_preP2SCST.AsString,
                          tb_ped02s_preP2SDESC_COMP.AsString,
                          '', // promocao
                          mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;
      end;
   end;



fLerFormaPag(0);
fTotais(0);


end;

procedure TFrm_Venda_Pre.Tb_ped02S_preBeforeDelete(DataSet: TDataSet);
var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoCus_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;

mMovEst: Integer;
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
mAnt_Item   :=mItem_Ant;
mAnt_CodPro :=mCodpro_Ant;


//parei aqui
if mVenda_GP.mped1_Chave=0 then
   begin

   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(0,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   edt_chave.Text:=Inttostr(mVenda_GP.mped1_Chave);
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if mVenda_GP.mped1_submod=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end
   else
      begin
      if mVenda_GP.mped1_submod>0 then
         mVenda_GP.mped1_submod_grav:=100-mVenda_GP.mped1_submod;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (mVenda_GP.mped1_submod>0) and (mVenda_GP.mped1_submod<100) then
      begin
      mVenda_GP.mped1_submod_grav:=mVenda_GP.mped1_submod;
      if codemp>100 then
         mVenda_GP.fGravarPed01(1,-100)
      else
         mVenda_GP.fGravarPed01(1,100);
      end;
   mped_Alterou_Cab:=false;
   end;


if mVenda_GP.mped1_submod=100 then
   begin
   if codemp>100 then
      mVenda_GP.mPed1_Codemp:=codemp-100
   else
      mVenda_GP.mPed1_Codemp:=codemp+100
   end
else
   mVenda_GP.mPed1_Codemp:=codemp;

for x:=1 to 2 do
   begin

   if mVenda_GP.mped1_submod=100 then
      begin
      if codemp>100 then
         mVenda_GP.mPed1_Codemp:=codemp-100
      else
         mVenda_GP.mPed1_Codemp:=codemp+100
      end
   else
      begin
      if x=1 then
         mVenda_GP.mPed1_Codemp:=codemp
      else
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100;
         end;
      end;

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      begin
      mPrecoUnit_Cal:=tb_ped02S_preP2sPRECO.AsFloat;
      mQtd_Cal:=tb_ped02S_preP2SQTD.AsFloat;
      mQtd_Ant_Cal:=mQtd_Ant;
      mPrecoTab_Cal :=Tb_ped02S_preP2SPCOTAB.AsFloat;
      mPrecoCus_Cal :=Tb_ped02S_preP2SPCOCUS.AsFloat;

      mDescValor    :=valfloat(edt_desc_valor.Text);
      mValseg       :=valfloat(edt_valseg.Text);
      mValFre       :=ValFloat(edt_valfre.Text);
      mTarBan       :=ValFloat(edt_tarban.Text);
      mOutDesp      :=valfloat(edt_outdesp.Text);
      end
   else
      begin
      if mVenda_GP.mped1_formace=0 then
         begin
         mPrecoUnit_Cal:=tb_ped02S_preP2SPRECO.AsFloat;

         mPrecoTab_Cal :=Tb_ped02S_preP2SPCOTAB.AsFloat;
         mPrecoCus_Cal :=Tb_ped02S_preP2SPCOCUS.AsFloat;


         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SQTD.AsFloat*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Cal:=mValorTemp
         else
            mQtd_Cal:=Tb_Ped02S_preP2SQTD.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (mQtd_Ant*mVenda_GP.mped1_submod/100), 0);
         if x=2 then
            mQtd_Ant_Cal:=mValorTemp
         else
            mQtd_Ant_Cal:=Tb_Ped02S_preP2SQTD.AsFloat-mValorTemp;

         end
      else
         begin
         mQtd_Ant_Cal:=mQtd_Ant;
         mQtd_Cal:=Tb_Ped02S_preP2SQTD.AsFloat;
         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SPRECO.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoUnit_Cal:=mValorTemp
         else
            mPrecoUnit_Cal:=tb_ped02S_preP2SPRECO.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_ped02S_preP2SPCOTAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=Tb_ped02S_preP2SPCOTAB.AsFloat-mValorTemp;

         mValorTemp:=Arredonda( (Tb_Ped02S_preP2SPCOTAB.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoTab_Cal:=mValorTemp
         else
            mPrecoTab_Cal:=tb_ped02S_preP2SPCOTAB.AsFloat-mValorTemp;


         mValorTemp:=Arredonda( (Tb_ped02S_preP2SPCOCUS.AsFloat*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
         if x=2 then
            mPrecoCus_Cal:=mValorTemp
         else
            mPrecoCus_Cal:=Tb_ped02S_preP2SPCOCUS.AsFloat-mValorTemp;


         end;

      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;


      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*mVenda_GP.mped1_submod/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;

      if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
         break;
      end;
   if (mVenda_GP.mped1_formace=1)and (x=2) then
      mMovEst:=2
   else
      mMovEst:=0;





   mVenda_GP.fGravarServicos(tb_ped02s_preP2SITEM.AsInteger,
                          mItem_Servico_Ant,
                          tb_ped02s_preP2SCFOP_ECF.AsInteger,
                          tb_ped02s_preP2SCFOP_NF.AsInteger,

                          0, // SITUACAO
                          mVenda_GP.mPed1_CodFP,
                          2, // EXCLUSAO
                          tb_ped02s_preP2SCODSER.AsString,
                          mCodSer_Ant,
                          Tb_ped02S_preP2SALIQISSQN.AsFloat,
                          tb_ped02s_preP2SDESCFIN_PERC.AsFloat,
                          tb_ped02s_preP2SALIQINSS.AsFloat,
                          tb_ped02s_preP2SPREDINSS.AsFloat,
                          tb_ped02s_preP2SALIQIRRF.AsFloat,
                          tb_ped02s_preP2SPREDIRRF.AsFloat,
                          mQtd_Cal,
                          mQtd_Ant_Cal,
                          tb_ped02s_preP2SPDESC01.AsFloat,
                          tb_ped02s_preP2SPDESC02.AsFloat,
                          tb_ped02s_preP2SPDESC03.AsFloat,
                          0, // DESCONTO EM VALOR
                          mPrecoUnit_Cal,
                          mPrecoCus_Cal, // PCO UCPR
                          0, // ALIQ ICMS
                          0, // PERC COMIS
                          0, // DESCONTO FINANCEIRO
                          0, // PERC ACRES
                          tb_ped02s_preP2SCODVEN.AsFloat,
                          valfloat(edt_desc_valor.Text),
                          0, // ACRESCIMOS RATEADO
                          mValseg,
                          mValFre,
                          mTarBan,
                          mOutDesp,
                          tb_ped02s_preP2SCST.AsString,
                          tb_ped02s_preP2SDESC_COMP.AsString,
                          '', // promocao
                          mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);

   if (mVenda_GP.mped1_submod=100) or (mVenda_GP.mped1_submod=0) then
      break
   else
      begin
      if codemp>100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end;
      mVenda_GP.mPed1_QtdParc_ant:=mAnt_QtdParc;
      mVenda_GP.mPed1_pDesc01_Ant:=mAnt_pDesc01;
      mVenda_GP.mPed1_pDesc02_Ant:=mAnt_pDesc02;
      mVenda_GP.mPed1_pDesc03_Ant:=mAnt_pDesc03;
      mItem_Ant                  :=mAnt_Item;
      mCodpro_Ant                :=mAnt_CodPro;
      end;
   end;







if tb_ped02s_preP2SITEM.Value=mPed_Item_Servico-1 then
   mPed_Item_Servico:=mPed_Item_Servico-1;

fLerFormaPag(0);
fTotais(0);


end;

procedure TFrm_Venda_Pre.Tb_ped02S_preBeforePost(DataSet: TDataSet);
begin
if length(tb_ped02s_preP2SCODSER.AsString)<1 then
   begin
   tb_ped02s_pre.Cancel;
   Abort;
   end
else if length(tb_ped02s_prePDNOME.AsString)<1 then
   begin
   MessageDlg('Código do Serviço Invalido!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=tb_ped02s_preP2SCODSER;
   DBGrid_servicos.SetFocus;
   Abort;
   end
else if tb_ped02s_preP2SQTD.AsFloat<=0 then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=tb_ped02s_preP2SQTD;
   DBGrid_servicos.SetFocus;
   Abort;
   end
else if tb_ped02s_preP2SPRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=tb_ped02s_preP2SPRECO;
   DBGrid_servicos.SetFocus;
   Abort;
   end;
if (tb_ped02s_preP2SQTD.AsFloat>0) and (tb_ped02s_preP2SPRECO.AsFloat>0) then
   tb_ped02s_preVALOR_TOTAL.AsFloat:=tb_ped02s_preP2SQTD.AsFloat*tb_ped02s_preP2SPRECO.AsFloat
else
   tb_ped02s_preVALOR_TOTAL.AsFloat:=0;




end;

procedure TFrm_Venda_Pre.edt_submodExit(Sender: TObject);
begin
if ValInt(edt_submod.text)>100 then
   edt_submod.text:='100'
else if ValInt(edt_submod.text)<0 then
   edt_submod.text:='0';
edt_submod.Text:=fdeixanum(edt_subMod.text);
mVenda_GP.mped1_submod:=valint(edt_submod.Text);


if mVenda_GP.mped1_submod>0 then
   begin
   if mVenda_GP.mPed1_Codemp_ini > 100 then
      mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini-100
   else
      mVenda_GP.mPed1_Codemp_fin:=mVenda_GP.mPed1_Codemp_ini+100;
   end;



if mSubMOd_ant<>mVenda_GP.mped1_submod then
   begin
   mped_Alterou_Cab:=true;
   RecalcularSubMod(mSubMOd_ant,mVenda_GP.mped1_submod,mVenda_GP.mped1_formace,mVenda_GP.mped1_formace
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda

                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda
                   );

   end;
mSubMOd_ant:=valint(edt_submod.Text);

end;

procedure TFrm_Venda_Pre.cb_formaExit(Sender: TObject);
begin
mVenda_GP.mped1_formace:=cb_forma.ItemIndex;

if mFormace_ant<>mVenda_GP.mped1_formace then
   begin
   mped_Alterou_Cab:=true;
   RecalcularSubMod(mVenda_GP.mped1_submod,mVenda_GP.mped1_submod,mFormace_ant,mVenda_GP.mped1_formace
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda
                   ,mVenda_GP.mPd_EstNor
                   ,mVenda_GP.mPd_EstCons
                   ,mVenda_GP.mPd_EstTerc
                   ,mVenda_GP.mPd_EstVenda

                   );
   end;


end;


function TFrm_Venda_Pre.RecalcularSubMod(pSubMod_Ant,pSubMod_Atu,pFormace_Ant,pFormace_Atu: Integer;
                             pEstNor_Ant,pEstCons_Ant,pEstTer_Ant,pEstVenda_Ant,
                             pEstNor_Atu,pEstCons_Atu,pEstTer_Atu,pEstVenda_Atu: String): Boolean;


var
mPrecoUnit_Cal: Real;
mQtd_Cal: Real;
mQtd_Ant_Cal: Real;

mPrecoTab_Cal: Real;
mPrecoUCPR_Cal: Real;
mPrecoCus_Cal: Real;
mPrecoMax_Cal: Real;

mValseg: Real;
mValFre: Real;
mTarBan: Real;
mOutDesp: Real;
mDescValor: Real;
x: Integer;
mValorTemp: Real;
mAnt_QtdParc: Integer;
mAnt_Item: Integer;
mAnt_pDesc01,mAnt_pDesc02,mAnt_pDesc03: Real;
mAnt_CodPro: String;
mMovEst: Integer;
Query_Ped02_Lotes: TQuery;
Query_Del_Ped02_Lotes: TQuery;
Query_Del_Ped01: TQuery;

begin
if (Tb_Ped02_pre.IsEmpty and Tb_ped02S_pre.IsEmpty) or (not sbnGravar.Enabled) then
   begin
   result:=true;
   exit;
   end;

mAnt_QtdParc:=mVenda_GP.mPed1_QtdParc_ant;
mAnt_pDesc01:=mVenda_GP.mPed1_pDesc01_Ant;
mAnt_pDesc02:=mVenda_GP.mPed1_pDesc02_Ant;
mAnt_pDesc03:=mVenda_GP.mPed1_pDesc03_Ant;
Query_Del_Ped02_Lotes:=TQuery.Create(nil);
Query_Del_Ped02_Lotes.DatabaseName:='SG_ASSOC';

Query_Ped02_Lotes:=TQuery.Create(nil);
Query_Ped02_Lotes.DatabaseName:='SG_ASSOC';
Query_Ped02_Lotes.Close;
Query_Ped02_Lotes.SQL.Clear;
Query_Ped02_Lotes.SQL.Add('Select P2LM_CODPRO,P2LM_LOTE,'
                            +' CASE WHEN P2LM_DTVCTO<'+QuotedStr('01/01/1901')+' THEN NULL ELSE P2LM_DTVCTO END  AS  P2LM_DTVCTO '
                   +',P2LM_ITEM,sum(P2LM_QTD) as P2QTD from CADP02_LOTES '
                   +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                   +' and   P2LM_CHAVE=:CHAVE '
                   +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                   +' and P2LM_ITEM=:ITEM '
                   +' group by P2LM_CODPRO,P2LM_LOTE,P2LM_DTVCTO,P2LM_ITEM '
                   +' order by P2LM_CODPRO,P2LM_LOTE,P2LM_DTVCTO,P2LM_ITEM');
query_Ped02_Lotes.parambyName('CODEMP').asinteger:=mVenda_GP.mPed1_Codemp_ini;
query_Ped02_Lotes.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
query_Ped02_Lotes.ParamByName('ITEM').AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
query_Ped02_Lotes.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
query_Ped02_Lotes.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;

try
   query_Ped02_Lotes.open;
except
   end;
While not Query_Ped02_Lotes.Eof do
   begin
   fGer_BaixarLotes(1
                ,0
                ,mVenda_GP.mPed1_codemp
                ,iif(mVenda_GP.mPed1_CodEmp>100,mVenda_GP.mPed1_codEmp-100,mVenda_GP.mPed1_codEmp+100)
                ,mVenda_GP.mPd_EstNor
                ,mVenda_GP.mPd_EstCons
                ,mVenda_GP.mPd_EstVenda
                ,mVenda_GP.mPd_EstTerc
                ,Query_Ped02_Lotes.FieldByName('P2LM_CODPRO').AsString
                ,Query_Ped02_Lotes.FieldByName('P2LM_LOTE').AsString
                ,Query_Ped02_Lotes.FieldByName('P2QTD').Asfloat
                ,Query_Ped02_Lotes.FieldByName('P2LM_DTVCTO').AsDateTime);


   Query_Ped02_Lotes.Next;
   end;
// inicio dos novos lotes


Query_Del_Ped02_Lotes.Close;
Query_Del_Ped02_Lotes.SQL.Clear;
Query_Del_Ped02_Lotes.SQL.Add('Delete from CADP02_LOTES '
                   +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                   +' and   P2LM_CHAVE=:CHAVE '
                   +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                   +' and P2LM_ITEM=:ITEM ');
query_Del_Ped02_Lotes.parambyName('CODEMP').asinteger:=mVenda_GP.mPed1_Codemp_ini;
query_Del_Ped02_Lotes.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
query_Del_Ped02_Lotes.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
query_Del_Ped02_Lotes.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;
query_Del_Ped02_Lotes.ParamByName('ITEM').AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
try
   query_Del_Ped02_Lotes.execsql;
   fdm1StartCommit;
except
   end;


Query_Ped02_Lotes.First;
While not Query_Ped02_Lotes.Eof do
   begin
   mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat;
   fGer_BaixarLotes(0,0,mVenda_GP.mPed1_codemp
                    ,iif(mVenda_GP.mPed1_CodEmp>100,mVenda_GP.mPed1_codEmp-100,mVenda_GP.mPed1_codEmp+100)
                    ,mVenda_GP.mPd_EstNor
                    ,mVenda_GP.mPd_EstCons
                    ,mVenda_GP.mPd_EstVenda
                    ,mVenda_GP.mPd_EstTerc
                    ,Query_Ped02_Lotes.FieldByName('P2LM_CODPRO').AsString
                    ,Query_Ped02_Lotes.FieldByName('P2LM_LOTE').AsString
                    ,mQtd_Cal
                    ,Query_Ped02_Lotes.FieldByName('P2LM_DTVCTO').AsDateTime);
   mQtd_Cal:=0;
   if pSubMod_Atu=0 then
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat
   else if pSubMod_Atu=100 then
      mQtd_Cal:=0
   else if pFormace_Atu=1 then
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat
   else
      begin
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat;
      mQtd_Cal:=Arredonda( (mQtd_Cal*pSubMod_Atu/100), 0);
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat-mQtd_Cal;
      end;
   if mQtd_Cal>0 then
      fIncluirCadp02_Lotes(mVenda_GP.mPed1_Codemp_ini,Query_Ped02_Lotes.fieldbyName('P2LM_ITEM').AsInteger,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano
                           ,Query_Ped02_Lotes.fieldbyName('P2LM_CODPRO').AsFloat
                           ,mQtd_Cal
                           ,Query_Ped02_Lotes.FieldByName('P2LM_LOTE').AsString
                           ,pDataNula
                           ,Query_Ped02_Lotes.FieldByName('P2LM_DTVCTO').AsDateTime);
   mQtd_Cal:=0;

   if pSubMod_Atu=0 then
      mQtd_Cal:=0
   else if pSubMod_Atu=100 then
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat
   else if pFormace_Atu=1 then
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat
   else
      begin
      mQtd_Cal:=Query_Ped02_Lotes.fieldbyName('P2QTD').AsFloat;
      mQtd_Cal:=Arredonda( (mQtd_Cal*pSubMod_Atu/100), 0);
      end;
   if mQtd_Cal>0 then
      fIncluirCadp02_Lotes(mVenda_GP.mPed1_Codemp_fin,Query_Ped02_Lotes.fieldbyName('P2LM_ITEM').AsInteger,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano
                           ,Query_Ped02_Lotes.fieldbyName('P2LM_CODPRO').AsFloat
                           ,mQtd_Cal
                           ,Query_Ped02_Lotes.FieldByName('P2LM_LOTE').AsString
                           ,pDataNula
                           ,Query_Ped02_Lotes.FieldByName('P2LM_DTVCTO').AsDateTime);
   Query_Ped02_Lotes.Next;
   end;

// termino dos novos lotes

if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.mped1_submod_grav:=mSubMOd_ant;
   if pSubMod_Atu=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end
   else
      begin
      if pSubMod_Atu>0 then
         mVenda_GP.mped1_submod_grav:=100-pSubMod_Atu;
      mVenda_GP.fGravarPed01(0,0);
      end;
   edt_chave.Text:=InttoStr(mVenda_GP.mped1_Chave);
   if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
      begin
      mVenda_GP.mped1_submod_grav:=pSubMod_Atu;
      if codemp>100 then
         mVenda_GP.fGravarPed01(0,-100)
      else
         mVenda_GP.fGravarPed01(0,100);
      end;
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.mped1_submod_grav:=0;
   if pSubMod_Atu=100 then
      begin
      mVenda_GP.mped1_submod_grav:=100;
      if codemp>100 then
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),-100)
      else
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),100);
      end
   else
      begin
      if pSubMod_Atu>0 then
         mVenda_GP.mped1_submod_grav:=100-pSubMod_Atu;
      mVenda_GP.fGravarPed01(1,0);
      end;
   if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
      begin
      mVenda_GP.mped1_submod_grav:=pSubMod_Atu;
      if codemp>100 then
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),-100)
      else
         mVenda_GP.fGravarPed01(iif(pSubMod_Ant=0,0,1),100);
      end;
   if (pSubMod_Ant<>pSubMod_Atu) and  ((pSubMod_Atu=0) or (pSubMod_Atu=100))  then 
      begin
      Query_Del_Ped01:=TQuery.Create(nil);
      Query_Del_Ped01.DatabaseName:='SG_ASSOC';
      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADP01 where P1CHAVE=:CHAVE '
                             +' AND P1ORDEM=01 '
                             +' AND P1LOTSEQ=:CHAVE_ANO '
                             +' AND P1CODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;
// cadpfp

      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADPFP where PFPCHAVE=:CHAVE '
                             +' AND PFPLOTSEQ=:CHAVE_ANO '
                             +' AND PFPCODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;

// termina cadpfp
//CADP01V
      Query_Del_Ped01.Close;
      Query_Del_Ped01.SQL.Clear;
      Query_Del_Ped01.SQL.Add('Delete from CADP01V where P1VCHAVE=:CHAVE '
                             +' AND P1VLOTSEQ=:CHAVE_ANO '
                             +' AND P1VCODEMP=:CODEMP ');
      Query_Del_Ped01.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      Query_Del_Ped01.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      if pSubMod_Ant=0 then
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp-100
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp;
         end
      else
         begin
         if codemp>100 then
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp
         else
            Query_Del_Ped01.ParamByName('CODEMP').AsInteger:=codemp+100;
         end;
      try
         Query_del_Ped01.ExecSql;
         fdm1StartCommit;
      except
         end;
// TERMINO CADP01V
      end;



   mped_Alterou_Cab:=false;
   end;
mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS
Tb_Ped02_pre.First;
While not Tb_Ped02_pre.Eof do
   begin
// removendo o iterm

   mVenda_GP.mPd_EstNor:=pEstNor_Ant;
   mVenda_GP.mPd_EstCons:=pEstCons_Ant;
   mVenda_GP.mPd_EstTerc:=pEstTer_Ant;
   mVenda_GP.mPd_EstVenda:=pEstVenda_Ant;


   for x:=1 to 2 do
      begin
      if pSubMod_Ant=100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else if (pSubMod_Ant>0) and (pSubMod_Ant<100) then
         begin
         if x=1 then
            mVenda_GP.mPed1_Codemp:=codemp
         else if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else
         mVenda_GP.mPed1_Codemp:=codemp;

      if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
         mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;
         mDescValor    :=valfloat(edt_desc_valor.Text);
         mValseg       :=valfloat(edt_valseg.Text);
         mValFre       :=ValFloat(edt_valfre.Text);
         mTarBan       :=ValFloat(edt_tarban.Text);
         mOutDesp      :=valfloat(edt_outdesp.Text);
         end
      else
         begin
         if pFormace_Ant=0 then
            begin
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
            mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
            mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
            mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*pSubMod_Ant/100), 0);
            if x=2 then
               mQtd_Cal:=mValorTemp
            else
               mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;
            end
         else
            begin
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoUnit_Cal:=mValorTemp
            else
               mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoTab_Cal:=mValorTemp
            else
               mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoUCPR_Cal:=mValorTemp
            else
               mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoCus_Cal:=mValorTemp
            else
               mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*pSubMod_Ant), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoMax_Cal:=mValorTemp
            else
               mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;
            end;
         end;
      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*pSubMod_Ant/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;
      mItem_Ant:=0;
      mCodpro_Ant:='';


     if (pSubMod_Ant=1)and (x=2) then
        mMovEst:=2
     else
        mMovEst:=0;

      mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,mItem_Ant,tb_ped02_preP2CFOP_ECF.AsInteger,
                        tb_ped02_preP2CFOP_NF.AsInteger ,tb_ped02_preP2MODBCST.AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        2, // EXCLUSAO
                        tb_ped02_preP2CODPRO.AsString,
                        mCodpro_Ant, // codigo anterior
                        mQtd_cal,
                        mQtd_Ant_Cal,
                        tb_ped02_preP2DESC_PERC01.AsFloat,
                        tb_ped02_preP2DESC_PERC02.AsFloat,
                        tb_ped02_preP2DESC_PERC03.AsFloat,
                        0, // desconto em valor
                        mPrecoUnit_Cal,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        mPrecoTab_Cal,
                        mPrecoTab_Cal,
                        mPrecoUCPR_Cal,
                        mPrecoCus_Cal,
                        mPrecoMax_Cal,
                        tb_ped02_preP2IPI_PERC.AsFloat,
                        tb_ped02_preP2ICMS_PERC.AsFloat,
                        0, // percentual de comissao
                        tb_ped02_preP2PIS_PERC.AsFloat,
                        tb_ped02_preP2COFINS_PERC.AsFloat,
                        tb_ped02_preP2DESCFIN_PERC.AsFloat,
                        0, // percentual de acrescimos
                        tb_ped02_preP2CODVEN.AsFloat,
                        tb_ped02_preP2ICMS_PPRED.AsFloat,
                        tb_ped02_preP2ST_IVA.AsFloat,
                        tb_ped02_preP2ST_REDUT.AsFloat,
                        tb_ped02_preP2ST_REDUT.AsFloat,
                        tb_ped02_preP2ST_ICMSDEB.AsFloat,
                        Tb_Ped02_preP2ST_ICMSCRED.AsFloat,
                        tb_ped02_preP2ICMSSN_PERC.AsFloat,
                        mDescValor,
                        0, // ACRESCIMOS RATEADO
                        mValseg,
                        mValFre,
                        mTarBan,
                        mOutDesp,
                        tb_ped02_preP2CST.AsString,
                        tb_ped02_preP2AMBIENTE.AsString,
                        tb_ped02_preP2DESC_COMP.AsString,
                        tb_ped02_preP2CSOSN.AsString,
                        tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value);




      if (pSubMod_Ant=100) or (pSubMod_Ant=0) then
         break;
      end;
// termino da remocao
// inicio das novas inclusoes


   mVenda_GP.mPd_EstNor:=pEstNor_Atu;
   mVenda_GP.mPd_EstCons:=pEstCons_Atu;
   mVenda_GP.mPd_EstTerc:=pEstTer_Atu;
   mVenda_GP.mPd_EstVenda:=pEstVenda_Atu;
   mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS
   for x:=1 to 2 do
      begin
      mVenda_GP.mPed1_QtdParc_ant:=-1; // PARA GERAR NOVAS PARCELAS

      if pSubMod_Atu=100 then
         begin
         if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else if (pSubMod_Atu>0) and (pSubMod_Atu<100) then
         begin
         if x=1 then
            mVenda_GP.mPed1_Codemp:=codemp
         else if codemp>100 then
            mVenda_GP.mPed1_Codemp:=codemp-100
         else
            mVenda_GP.mPed1_Codemp:=codemp+100
         end
      else
         mVenda_GP.mPed1_Codemp:=codemp;

      if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
         begin
         mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
         mQtd_Cal:=tb_ped02_preP2QTD.AsFloat;
         mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
         mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
         mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
         mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;
         mDescValor    :=valfloat(edt_desc_valor.Text);
         mValseg       :=valfloat(edt_valseg.Text);
         mValFre       :=ValFloat(edt_valfre.Text);
         mTarBan       :=ValFloat(edt_tarban.Text);
         mOutDesp      :=valfloat(edt_outdesp.Text);
         end
      else
         begin
         if pFormace_Atu=0 then
            begin
            mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat;
            mPrecoTab_Cal :=Tb_Ped02_preP2PRECO_TAB.AsFloat;
            mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat;
            mPrecoCus_Cal :=Tb_Ped02_preP2PRECO_CUS.AsFloat;
            mPrecoMax_Cal :=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2QTD.AsFloat*pSubMod_Atu/100), 0);
            if x=2 then
               mQtd_Cal:=mValorTemp
            else
               mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat-mValorTemp;
            end
         else
            begin
            mQtd_Cal:=Tb_Ped02_preP2QTD.AsFloat;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO.AsFloat*pSubMod_atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoUnit_Cal:=mValorTemp
            else
               mPrecoUnit_Cal:=tb_ped02_preP2PRECO.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_TAB.AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoTab_Cal:=mValorTemp
            else
               mPrecoTab_Cal:=tb_ped02_preP2PRECO_TAB.AsFloat-mValorTemp;

            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_UCPR.AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoUCPR_Cal:=mValorTemp
            else
               mPrecoUCPR_Cal:=Tb_Ped02_preP2PRECO_UCPR.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_CUS.AsFloat*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoCus_Cal:=mValorTemp
            else
               mPrecoCus_Cal:=Tb_Ped02_preP2PRECO_CUS.AsFloat-mValorTemp;
            mValorTemp:=Arredonda( (Tb_Ped02_preP2PRECO_MAXCONS.AsFloat*pSubMod_Atu), DM1.Tb_PargerPCASASPU.AsInteger);
            if x=2 then
               mPrecoMax_Cal:=mValorTemp
            else
               mPrecoMax_Cal:=Tb_Ped02_preP2PRECO_MAXCONS.AsFloat-mValorTemp;
            end;
         end;
      mValorTemp:=Arredonda( (valfloat(edt_desc_valor.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mDescValor:=mValorTemp
      else
         mDescValor:=valfloat(edt_desc_valor.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valseg.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValseg:=mValorTemp
      else
         mValseg:=valfloat(edt_valseg.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_valfre.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mValFre:=mValorTemp
      else
         mValFre:=valfloat(edt_valfre.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_tarban.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mTarBan:=mValorTemp
      else
         mTarBan:=valfloat(edt_tarban.Text)-mValorTemp;

      mValorTemp:=Arredonda( (valfloat(edt_outdesp.Text)*pSubMod_Atu/100), DM1.Tb_PargerPCASASPU.AsInteger);
      if x=2 then
         mOutDesp:=mValorTemp
      else
         mOutDesp:=valfloat(edt_outdesp.Text)-mValorTemp;
      mItem_Ant:=0;
      mCodpro_Ant:='';

      if (pSubMod_Atu=1)and (x=2) then
         mMovEst:=2
      else
         mMovEst:=0;

      mVenda_GP.fGravarItem(tb_ped02_preP2ITEM.AsInteger,mItem_Ant,tb_ped02_preP2CFOP_ECF.AsInteger,
                        tb_ped02_preP2CFOP_NF.AsInteger ,tb_ped02_preP2MODBCST.AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        0, // inclusao
                        tb_ped02_preP2CODPRO.AsString,
                        mCodpro_Ant, // codigo anterior
                        mQtd_cal,
                        mQtd_Ant_Cal,
                        tb_ped02_preP2DESC_PERC01.AsFloat,
                        tb_ped02_preP2DESC_PERC02.AsFloat,
                        tb_ped02_preP2DESC_PERC03.AsFloat,
                        0, // desconto em valor
                        mPrecoUnit_Cal,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        mPrecoTab_Cal,
                        mPrecoTab_Cal,
                        mPrecoUCPR_Cal,
                        mPrecoCus_Cal,
                        mPrecoMax_Cal,
                        tb_ped02_preP2IPI_PERC.AsFloat,
                        tb_ped02_preP2ICMS_PERC.AsFloat,
                        0, // percentual de comissao
                        tb_ped02_preP2PIS_PERC.AsFloat,
                        tb_ped02_preP2COFINS_PERC.AsFloat,
                        tb_ped02_preP2DESCFIN_PERC.AsFloat,
                        0, // percentual de acrescimos
                        tb_ped02_preP2CODVEN.AsFloat,
                        tb_ped02_preP2ICMS_PPRED.AsFloat,
                        tb_ped02_preP2ST_IVA.AsFloat,
                        tb_ped02_preP2ST_REDUT.AsFloat,
                        tb_ped02_preP2ST_REDUT.AsFloat,
                        tb_ped02_preP2ST_ICMSDEB.AsFloat,
                        Tb_Ped02_preP2ST_ICMSCRED.AsFloat,
                        tb_ped02_preP2ICMSSN_PERC.AsFloat,
                        mDescValor,
                        0, // ACRESCIMOS RATEADO
                        mValseg,
                        mValFre,
                        mTarBan,
                        mOutDesp,
                        tb_ped02_preP2CST.AsString,
                        tb_ped02_preP2AMBIENTE.AsString,
                        tb_ped02_preP2DESC_COMP.AsString,
                        tb_ped02_preP2CSOSN.AsString,
                        tb_ped02_preP2csosn_ori.AsString,tb_ped02_preP2PROMOCAO.AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP,Tb_Ped02_preP2CST_PIS.Value,Tb_Ped02_preP2CST_COFINS.Value);

      if (pSubMod_Atu=100) or (pSubMod_Atu=0) then
         break;
      end;

   Tb_Ped02_pre.Next;
   end;
FreeAndNil(Query_Ped02_Lotes);
FreeAndNil(Query_Del_Ped02_Lotes);
fLerFormaPag(0);

fTotais(0);

//edt_totliq.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_Totall);


end;

procedure TFrm_Venda_Pre.edt_submodEnter(Sender: TObject);
begin
mSubMOd_ant:=valint(edt_submod.Text);
end;

procedure TFrm_Venda_Pre.cb_formaEnter(Sender: TObject);
begin
mFormace_ant:=mVenda_GP.mped1_formace;


end;

procedure TFrm_Venda_Pre.cb_tipopedEnter(Sender: TObject);
begin
    mEstNor_ant       :=mVenda_GP.mPd_EstNor;
    mEstCons_ant      :=mVenda_GP.mPd_EstCons;
    mEstTerc_ant      :=mVenda_GP.mPd_EstTerc;
    mEstVenda_ant     :=mVenda_GP.mPd_EstVenda;
mEventoPendente:='cb_tipoped';

end;

procedure TFrm_Venda_Pre.Tb_Ped02_preBeforeEdit(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;
if Log_TipoLote=1 then
   begin
   if Tb_Ped02_preP2CODPRO.AsFloat>0 then
      fLerCadp02_Lotes(Tb_Ped02_preP2ITEM.AsInteger,0);
   end;

end;

procedure TFrm_Venda_Pre.Tb_ped02S_preBeforeEdit(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_FP_preBeforeEdit(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_FP_preBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_ped02S_preBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_Ped02_preBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;


function TFrm_Venda_Pre.fBuscarLotes(pCodpro: String;pQtd: Real): boolean;
var
Query_lote: TQuery;
mQtdFalta: Real;
begin
if not Tb_Ped02_Lotes.Active then
   fLerCadp02_Lotes(Tb_Ped02_preP2ITEM.AsInteger,fSonumero(pcodpro));
Query_lote:=tQuery.Create(nil);
Query_lote.DatabaseName:='SG_ASSOC';
Query_lote.DatabaseName:='SG_ASSOC';
Query_lote.Close;
Query_lote.SQL.Clear;
Query_lote.SQL.Add('Select CLNUMERO,CLDTVCTO,CLQTD from CADLGC '
                   +' where (CLCODEMP=:CODEMP or CLCODEMP=:CODEMP_FILIAL) '
                   +' and CLCODPRO=:CODPRO '
                   +' order by CLDTVCTO,CLNUMERO');
query_lote.parambyName('CODEMP').asinteger:=codemp;
if codemp>100 then
   query_lote.parambyName('CODEMP_FILIAL').asinteger:=codemp-100
else
   query_lote.parambyName('CODEMP_FILIAL').asinteger:=codemp+100;
query_lote.parambyName('CODPRO').AsFloat:=fsonumero(pcodpro);
try
   query_lote.open;
except
   ex_erroSql_Novo(Query_lote,5835,'venda_pre','CADLGC');
   result:=false;
   exit;
   end;
mQtdFalta:=pQtd;
While (not Query_Lote.Eof) and (mQtdFalta>0) do
   begin
   if Query_lote.fieldbyName('CLQTD').AsFloat<=0 then
      begin
      Query_lote.Next;
      Continue;
      end;
   Tb_Ped02_Lotes.Append;
   Tb_Ped02_LotesP2LM_ITEM.AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
   Tb_Ped02_LotesP2LM_CODPRO.Value  :=Tb_Ped02_preP2CODPRO.AsFloat;
   Tb_Ped02_LotesP2LM_LOTE.AsString :=Query_lote.fieldbyName('CLNUMERO').AsString;
   Tb_Ped02_LotesP2LM_DTVCTO.AsDateTime :=Query_lote.fieldbyName('CLDTVCTO').AsDateTime;
   if mQtdFalta<=Query_lote.fieldbyName('CLQTD').AsFloat then
      begin
      Tb_Ped02_LotesP2LM_QTD.AsFloat   :=mQtdFalta;
      mQtdFalta:=0;
      end
   else
      begin
      Tb_Ped02_LotesP2LM_QTD.AsFloat   :=Arredonda( Query_lote.fieldbyName('CLQTD').AsFloat, DM1.Tb_PargerPCASQTD.AsInteger);
      mQtdFalta:=Arredonda( ( mQtdFalta-Query_lote.fieldbyName('CLQTD').AsFloat), DM1.Tb_PargerPCASQTD.AsInteger);
      end;
   Tb_Ped02_Lotes.Post;
   Query_lote.Next;
   end;
if mQtdFalta>0 then
   begin
   Tb_Ped02_Lotes.Append;
   Tb_Ped02_LotesP2LM_ITEM.AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
   Tb_Ped02_LotesP2LM_CODPRO.Value  :=Tb_Ped02_preP2CODPRO.AsFloat;
   Tb_Ped02_LotesP2LM_LOTE.AsString :='';
   Tb_Ped02_LotesP2LM_QTD.AsFloat   :=mQtdFalta;
   Tb_Ped02_Lotes.Post;
   end;
FreeAndNil(Query_lote);
result:=true;
end;

function TFrm_Venda_Pre.fAjustarLotes(pCodpro: String;pQtd_Antes,pQtd_Nova: Real): boolean;
var
Query_lote: TQuery;
mQtd_Falta: Real;
begin
if not Tb_Ped02_Lotes.Active then
   fLerCadp02_Lotes(Tb_Ped02_preP2ITEM.AsInteger,0);

Query_lote:=tQuery.Create(nil);
Query_lote.DatabaseName:='SG_ASSOC';
Query_lote.Close;
Query_lote.SQL.Clear;
Query_lote.SQL.Add('Select CLNUMERO,CLDTVCTO,CLQTD from CADLGC '
                   +' where (CLCODEMP=:CODEMP or CLCODEMP=:CODEMP_FILIAL) '
                   +' and CLCODPRO=:CODPRO '
                   +' order by CLDTVCTO DESC,CLNUMERO DESC');
query_lote.parambyName('CODEMP').asinteger:=codemp;
if codemp>100 then
   query_lote.parambyName('CODEMP_FILIAL').asinteger:=codemp-100
else
   query_lote.parambyName('CODEMP_FILIAL').asinteger:=codemp+100;
query_lote.ParamByName('CODPRO').AsFloat:=fSonumero(pCodpro);

query_lote.open;
mQtd_Falta:=pQtd_Nova;
Tb_Ped02_Lotes.First;
While (not Tb_Ped02_Lotes.Eof) do
   begin
   if Arredonda( Tb_Ped02_LotesP2LM_QTD.AsFloat , DM1.Tb_PargerPCASQTD.AsInteger)<=Arredonda(mQtd_Falta, DM1.Tb_PargerPCASQTD.AsInteger) then
      begin
      mQtd_Falta:=mQtd_Falta-Arredonda( Tb_Ped02_LotesP2LM_QTD.AsFloat , DM1.Tb_PargerPCASQTD.AsInteger);
      end
   else
      begin
      if mQtd_Falta<=0 then
         Tb_Ped02_Lotes.Delete
      else
         begin
         Tb_Ped02_Lotes.Edit;
         Tb_Ped02_LotesP2LM_QTD.AsFloat:=mQtd_Falta;
         Tb_Ped02_Lotes.Post;
         mQtd_Falta:=0;
         end;
      end;
   Tb_Ped02_Lotes.Next;
   end;
While (not Query_lote.Eof) and (mQtd_Falta>0) do
   begin
   if Query_lote.fieldbyName('CLQTD').AsFloat<=0 then
      begin
      Query_lote.Next;
      Continue;
      end;
   if Tb_Ped02_Lotes.Locate('P2LM_LOTE',Query_lote.fieldbyName('CLNUMERO').AsString,[]) then
      Tb_Ped02_Lotes.Edit
   else
      begin
      Tb_Ped02_Lotes.Append;
      Tb_Ped02_LotesP2LM_ITEM.AsInteger:=Tb_Ped02_preP2ITEM.AsInteger;
      Tb_Ped02_LotesP2LM_CODPRO.Value  :=Tb_Ped02_preP2CODPRO.AsFloat;
      Tb_Ped02_LotesP2LM_QTD.AsFloat:=0;
      Tb_Ped02_LotesP2LM_LOTE.AsString :=Query_lote.fieldbyName('CLNUMERO').AsString;
      Tb_Ped02_LotesP2LM_DTVCTO.AsDateTime :=Query_lote.fieldbyName('CLDTVCTO').AsDateTime;
      end;
   if mQtd_Falta<=Query_lote.fieldbyName('CLQTD').AsFloat then
      begin
      Tb_Ped02_LotesP2LM_QTD.AsFloat   :=Tb_Ped02_LotesP2LM_QTD.AsFloat+mQtd_Falta;
      mQtd_Falta:=0;
      end
   else
      begin
      Tb_Ped02_LotesP2LM_QTD.AsFloat   :=Tb_Ped02_LotesP2LM_QTD.AsFloat+Arredonda( Query_lote.fieldbyName('CLQTD').AsFloat, DM1.Tb_PargerPCASQTD.AsInteger);
      mQtd_Falta:=Arredonda( ( mQtd_Falta-Query_lote.fieldbyName('CLQTD').AsFloat), DM1.Tb_PargerPCASQTD.AsInteger);
      end;
   Tb_Ped02_Lotes.Post;
   Query_lote.Next;
   end;
FreeAndNil(Query_lote);
result:=true;


end;

function TFrm_Venda_Pre.fLerCadp02_Lotes(pItem: Integer;pCodPro: Real): Boolean;
begin
Tb_Ped02_Lotes.Close;
Tb_Ped02_Lotes.SQL.Clear;
Tb_Ped02_Lotes.SQL.add('Select min(P2LM_CODEMP) as P2LM_CODEMP '
                      +',P2LM_CODPRO '
                      +',P2LM_LOTSEQ '
                      +',P2LM_CHAVE '
                      +',P2LM_ITEM '
                      +',P2LM_LOTE '
                      +',P2LM_DTFAB '
                      +', CASE WHEN MAX(P2LM_DTVCTO)<'+QuotedStr('01/01/1901')+' THEN NULL ELSE MAX(P2LM_DTVCTO) END  AS  P2LM_DTVCTO '
                      +', sum(P2LM_QTD) as P2LM_QTD '
                   +' from CADP02_LOTES '
                   +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                   +' and P2LM_CHAVE=:CHAVE '
                   +' and P2LM_LOTSEQ=:CHAVE_ANO '
                   +' and P2LM_ITEM=:ITEM ');
if pCodpro<>0 then
   begin
   Tb_Ped02_Lotes.SQL.add(' and P2LM_CODPRO=:CODPRO ');
   Tb_ped02_Lotes.ParamByName('CODPRO').AsFloat:=pCodPro;
   end;

Tb_Ped02_Lotes.SQL.add(' group by P2LM_CODPRO '
                   +',P2LM_LOTSEQ '
                   +',P2LM_CHAVE '
                   +',P2LM_ITEM '
                   +',P2LM_LOTE '
                   +',P2LM_DTFAB ');

Tb_Ped02_Lotes.SQL.add(' order by P2LM_LOTE ');
Tb_ped02_Lotes.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Tb_ped02_Lotes.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Tb_ped02_Lotes.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Tb_ped02_Lotes.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Tb_ped02_Lotes.ParamByName('ITEM').AsInteger:=pItem;
Try
   Tb_Ped02_Lotes.Open;
   result:=true;
except
   ex_erroSql_Novo(Tb_Ped02_Lotes,5980,'venda_pre','CADP02_LOTES');
   result:=false;
   end;




end;
procedure TFrm_Venda_Pre.Src_Ped02_preDataChange(Sender: TObject;
  Field: TField);
begin
if not mGravando_Item then
   begin
//   if (not (Tb_Ped02_pre.State in [dsEdit,dsInsert])) and (Tb_Ped02_preP2CODPRO.AsFloat>0) then
   if (not (Tb_Ped02_pre.State in [dsEdit,dsInsert]))  then
      begin
      fLerCadp02_Lotes(Tb_Ped02_preP2Item.AsInteger,0)
      end;
   end;

end;


function tFrm_Venda_Pre.FBaixarLotes(pItem: Integer): Boolean;
var
mDifer: Real;
Query_Ped02: TQuery;
mQtdCal: Real;
begin



if cds_lotes=nil then
   begin
   cds_lotes:=TClientDataSet.Create(nil);
   cds_lotes.FieldDefs.Add('LOTE',ftString, 20, false);
   cds_lotes.FieldDefs.Add('CODPRO',ftFloat, 0, false);
   cds_lotes.FieldDefs.Add('DTVCTO',ftDateTime, 0, false);
   cds_lotes.FieldDefs.Add('QTD_NOV',ftFloat, 0, false);
   cds_lotes.FieldDefs.Add('QTD_ANT',ftFloat, 0, false);
   cds_lotes.CreateDataSet;
   cds_lotes.LogChanges := False;
   end;
cds_lotes.Open;
cds_lotes.EmptyDataSet;


Query_Ped02:=tQuery.Create(nil);
Query_Ped02.DatabaseName:='SG_ASSOC';
Query_Ped02.Close;
Query_Ped02.SQL.Clear;
Query_Ped02.SQL.Add('Select P2LM_CODPRO,P2LM_LOTE,'
                   +' CASE WHEN P2LM_DTVCTO<'+QuotedStr('01/01/1901')+' THEN NULL ELSE P2LM_DTVCTO END  AS  P2LM_DTVCTO '
                   +',P2LM_ITEM,sum(P2LM_QTD) as P2QTD from CADP02_LOTES '
                   +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                   +' and   P2LM_CHAVE=:CHAVE '
                   +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                   +' and P2LM_ITEM=:ITEM '
                   +' group by P2LM_CODPRO,P2LM_LOTE,P2LM_DTVCTO,P2LM_ITEM '
                   +' order by P2LM_CODPRO,P2LM_LOTE,P2LM_DTVCTO');
query_Ped02.parambyName('CODEMP').asinteger:=mVenda_GP.mPed1_Codemp_ini;
query_Ped02.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
query_Ped02.ParamByName('ITEM').AsInteger:=pItem;
query_Ped02.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
query_Ped02.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;

try
   query_Ped02.open;
   result:=true;
except
   result:=false;
   end;
Tb_Ped02_Lotes.First;



While not Query_Ped02.Eof do
   begin
   if cds_lotes.Locate('CODPRO;LOTE',VarArrayOf([Query_ped02.fieldbyName('P2LM_CODPRO').AsString,Query_ped02.fieldbyName('P2LM_LOTE').AsString]),[]) then
      cds_lotes.Edit
   else
      begin
      cds_lotes.Append;
      cds_lotes.FieldByName('CODPRO').AsFloat   :=Query_ped02.fieldbyName('P2LM_CODPRO').AsFloat;
      cds_lotes.FieldByName('LOTE').AsString    :=Query_ped02.fieldbyName('P2LM_LOTE').AsString;
      cds_lotes.FieldByName('DTVCTO').AsDateTime:=Query_ped02.fieldbyName('P2LM_DTVCTO').AsDateTime;
      cds_lotes.FieldByName('QTD_NOV').AsFloat  :=0;
      cds_lotes.FieldByName('QTD_ANT').AsFloat  :=0;
      end;
   cds_lotes.FieldByName('QTD_ANT').AsFloat  :=cds_lotes.FieldByName('QTD_ANT').AsFloat
                                              +Query_ped02.fieldbyName('P2QTD').AsFloat;
   cds_lotes.Post;
   Query_Ped02.Next;
   end;


Tb_Ped02_Lotes.First;
// testar possibilidades de ficar negativo
// se ficar procurar outro lote

While not Tb_Ped02_Lotes.Eof do
   begin
   if cds_lotes.Locate('CODPRO;LOTE',VarArrayOf([Tb_Ped02_Lotes.fieldbyName('P2LM_CODPRO').AsString,Tb_Ped02_Lotes.fieldbyName('P2LM_LOTE').AsString]),[]) then
      cds_lotes.Edit
   else
      begin
      cds_lotes.Append;
      cds_lotes.FieldByName('CODPRO').AsFloat   :=Tb_Ped02_LotesP2LM_CODPRO.AsFloat;
      cds_lotes.FieldByName('LOTE').AsString    :=Tb_Ped02_LotesP2LM_LOTE.AsString;
      cds_lotes.FieldByName('DTVCTO').AsDateTime:=Tb_Ped02_LotesP2LM_DTVCTO.AsDateTime;
      cds_lotes.FieldByName('QTD_NOV').AsFloat  :=0;
      cds_lotes.FieldByName('QTD_ANT').AsFloat  :=0;
      end;
   cds_lotes.FieldByName('QTD_NOV').AsFloat  :=cds_lotes.FieldByName('QTD_NOV').AsFloat
                                              +Tb_Ped02_LotesP2LM_QTD.AsFloat;
   cds_lotes.Post;
   Tb_Ped02_Lotes.Next;
   end;
// termnino dos testes das possibilidades de ficar negativo


Query_Ped02.Close;
Query_Ped02.SQL.Clear;
Query_Ped02.SQL.Add('Delete from CADP02_LOTES '
                   +' where (P2LM_CODEMP=:CODEMP or P2LM_CODEMP=:CODEMP_FILIAL) '
                   +' and   P2LM_CHAVE=:CHAVE '
                   +' and   P2LM_LOTSEQ=:CHAVE_ANO '
                   +' and P2LM_ITEM=:ITEM ');




query_Ped02.parambyName('CODEMP').asinteger:=mVenda_GP.mPed1_Codemp_ini;
query_Ped02.parambyName('CODEMP_FILIAL').asinteger:=mVenda_GP.mPed1_Codemp_fin;
query_Ped02.ParamByName('ITEM').AsInteger:=pItem;
query_Ped02.parambyName('CHAVE').asinteger:=mVenda_GP.mped1_Chave;
query_Ped02.parambyName('CHAVE_ANO').asinteger:=mVenda_GP.mPed1_Chave_ano;

try
   query_Ped02.execsql;
   fdm1StartCommit;
   result:=true;
except
   FreeAndNil(Query_ped02);
   result:=false;
   end;



cds_lotes.First;
While not cds_lotes.Eof do
   begin
   if cds_lotes.FieldByName('QTD_NOV').AsFloat<>cds_lotes.FieldByName('QTD_ANT').AsFloat then
      begin
      mDifer:=cds_lotes.FieldByName('QTD_NOV').AsFloat-cds_lotes.FieldByName('QTD_ANT').AsFloat;
      fGer_BaixarLotes(0,0,mVenda_GP.mPed1_codemp
                    ,iif(mVenda_GP.mPed1_CodEmp>100,mVenda_GP.mPed1_codEmp-100,mVenda_GP.mPed1_codEmp+100)
                    ,mVenda_GP.mPd_EstNor
                    ,mVenda_GP.mPd_EstCons
                    ,mVenda_GP.mPd_EstVenda
                    ,mVenda_GP.mPd_EstTerc
                    ,cds_lotes.FieldByName('CODPRO').AsString
                    ,cds_lotes.FieldByName('LOTE').AsString
                    ,mDifer
                    ,cds_lotes.FieldByName('DTVCTO').AsDateTime);
      end;
    mQtdCal:=0;
    if mVenda_GP.mped1_submod=0 then
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat
    else if mVenda_GP.mped1_submod=100 then
       mQtdCal:=0
    else if mVenda_GP.mped1_formace=1 then
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat
    else
       begin
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat;
       mQtdCal:=Arredonda( (mQtdCal*mVenda_GP.mped1_submod/100), 0);
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat-mQtdCal;
       end;
    if mQtdCal>0 then
       fIncluirCadp02_Lotes(mVenda_GP.mPed1_Codemp_ini,pItem,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano
                            ,Tb_Ped02_preP2CODPRO.AsFloat
                            ,mQtdCal,cds_lotes.FieldByName('LOTE').AsString
                            ,pDataNula
                            ,cds_lotes.FieldByName('DTVCTO').AsDateTime);
    mQtdCal:=0;

    if mVenda_GP.mped1_submod=0 then
       mQtdCal:=0
    else if mVenda_GP.mped1_submod=100 then
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat
    else if mVenda_GP.mped1_formace=1 then
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat
    else
       begin
       mQtdCal:=cds_lotes.FieldByName('QTD_NOV').AsFloat;
       mQtdCal:=Arredonda( (mQtdCal*mVenda_GP.mped1_submod/100), 0);
       end;
    if mQtdCal>0 then
       fIncluirCadp02_Lotes(mVenda_GP.mPed1_Codemp_fin,pItem,mVenda_GP.mped1_Chave,mVenda_GP.mPed1_Chave_ano
                            ,Tb_Ped02_preP2CODPRO.AsFloat
                            ,mQtdCal,cds_lotes.FieldByName('LOTE').AsString
                            ,pDataNula
                            ,cds_lotes.FieldByName('DTVCTO').AsDateTime);
   cds_lotes.Next;
   end;
FreeAndNil(Query_ped02);
result:=true;
end;
function tFrm_Venda_Pre.fIncluirCadp02_Lotes(pCodemp,pItem: Integer; pChave,pChave_ano,pCodPro,pQtd: Real; pLote: String; pDtFab,pDtVcto: TDateTime): Boolean;
var
Query_Ped02: TQuery;
begin
Query_Ped02:=tQuery.Create(nil);
Query_Ped02.DatabaseName:='SG_ASSOC';
Query_Ped02.Close;
Query_Ped02.SQL.Clear;


Query_Ped02.Close;
Query_Ped02.SQL.Clear;
Query_Ped02.SQL.Add('Insert into CADP02_LOTES ('
                   +' P2LM_CODEMP '
                   +',P2LM_CODPRO '
                   +',P2LM_LOTSEQ '
                   +',P2LM_CHAVE '
                   +',P2LM_ITEM '
                   +',P2LM_LOTE '
                   +',P2LM_DTFAB '
                   +',P2LM_DTVCTO '
                   +',P2LM_QTD '
                   +') values ('
                   +' :P2LM_CODEMP '
                   +',:P2LM_CODPRO '
                   +',:P2LM_LOTSEQ '
                   +',:P2LM_CHAVE '
                   +',:P2LM_ITEM '
                   +',:P2LM_LOTE '
                   +',:P2LM_DTFAB '
                   +',:P2LM_DTVCTO '
                   +',:P2LM_QTD '
                   +') ');

Query_Ped02.ParambyName('P2LM_CODEMP').AsInteger :=pCodemp;
Query_Ped02.ParambyName('P2LM_CODPRO').AsFloat   :=pCodPro;
Query_Ped02.ParambyName('P2LM_LOTSEQ').AsFloat   :=pChave_ano;
Query_Ped02.ParambyName('P2LM_CHAVE').AsFloat    :=pChave;
Query_Ped02.ParambyName('P2LM_ITEM').AsFloat     :=pItem;
Query_Ped02.ParambyName('P2LM_LOTE').AsString    :=pLote;
Query_Ped02.ParambyName('P2LM_DTFAB').AsDateTime :=pDtFab;
Query_Ped02.ParambyName('P2LM_DTVCTO').AsDateTime:=pDtVcto;
Query_Ped02.ParambyName('P2LM_QTD').AsFloat      :=pQtd;
try
   Query_Ped02.ExecSQL;
   fdm1StartCommit;
   result:=true;
except
   ex_erroSql_Novo(query_ped02,6237,'frm_venda_pre','CADP02_LOTES');
   result:=false;
   end;
end;

procedure TFrm_Venda_Pre.sbnLocalizarClick(Sender: TObject);
begin
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
form_PedCli_ped_02.ori_pedcli:='frm_venda_pre';
form_PedCli_ped_02.ShowModal;
edt_chave.Text:=form_PedCli_ped_02.chave.Text;
form_PedCli_ped_02.Free;
form_PedCli_ped_02:=nil;
FreeAndNil(form_pedcli_ped_02);
edt_chaveExit(self);

end;

procedure TFrm_Venda_Pre.Tb_Ped02_LotesBeforeInsert(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_Ped02_LotesBeforeEdit(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_Ped02_LotesBeforeDelete(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.Tb_FP_preBeforeDelete(DataSet: TDataSet);
begin
if not sbnGravar.Enabled then
   begin
   abort;
   exit;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_itensEnter(Sender: TObject);
begin
mEventoPendente:='dbgrid_itens';

end;

procedure TFrm_Venda_Pre.DBGrid_lotesEnter(Sender: TObject);
begin
mEventoPendente:='dbgrid_lotes';

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoEnter(Sender: TObject);
begin
mEventoPendente:='dbgrid_fpgto';

end;

procedure TFrm_Venda_Pre.sbnNFEClick(Sender: TObject);
var
query_nfe: TQuery;
pSerieNF: String;
pModNF  : String;
mNumnf: Integer;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
query_nfe.Open;
if query_nfe.IsEmpty then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=9 then
   begin
   Fmensagem('Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=0 then
   begin
   Fmensagem('Este Pedido é Apenas um Orçamento, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;


if (Query_nfe.FieldByName('P1SITPED').Value = 1) and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (trunc((now-Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;




Query_nfe.First;
While not Query_nfe.eof do
   begin
   if Query_nfe.FieldByName('P1CODEMP').AsInteger>99 then
      begin
      Query_nfe.Next;
      Continue;
      end;
   if not fTestarCNPJ_IE(0,Query_nfe.FieldByName('P1CODCLI').AsFloat) then
      exit;
   if Query_nfe.FieldByName('P1CODTRA').AsInteger>0 then
      begin
      if not fTestarCNPJ_IE(1,Query_nfe.FieldByName('P1CODTRA').AsFloat) then
         exit;
      end;
   Query_nfe.Next;
   end;

if Query_nfe.FieldByName('P1BLOQPEND').Value=2 then
   begin
   if Query_nfe.FieldByName('P1CODBLOQ').AsString<>Query_nfe.FieldByName('P1CODBLOQ_LIB').AsString then
      begin
      Fmensagem('Este Pedido Possui Restrições, verifique!',0,['0'],0);
      exit;
      end;
   end;

if (Query_nfe.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
   begin
   if (Query_nfe.FieldByName('P1PREVENT').AsDateTime<Query_nfe.FieldByName('P1DATANF').AsDateTime) or ((Query_nfe.FieldByName('P1PREVENT').AsDateTime<Date) and (Query_nfe.FieldByName('P1EMIDOC').AsInteger=0))  then
     begin
     if Application.MessageBox('Data da Transportadora Não Pode Ser Menor que a Data Atual!, Quer altera-la','',MB_YESNO+MB_DEFBUTTON2)=mrYes then
        begin
        sbnAlterarClick(self);
        end;
     exit;
     end;
   end;

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add(' SELECT * FROM CADDAR_CONF ');
DM1.Query6.SQL.Add(' WHERE CRCCHAVE='+Query_nfe.FieldByName('P1CHAVE').AsString);
DM1.Query6.SQL.Add('   and CRCCODEMP='+Query_nfe.FieldByName('P1CODEMP').AsString);
DM1.Query6.SQL.Add('   and CRCLOTSEQ='+Query_nfe.FieldByName('P1LOTSEQ').AsString);
DM1.Query6.SQL.Add('   and CRCORDEM='+Query_nfe.FieldByName('P1ORDEM').AsString);
DM1.Query6.Open;
if DM1.Query6.IsEmpty then
  begin
  Gerar_Caddar_Conf(Query_nfe.FieldByName('P1CODEMP').Value,
                    Query_nfe.FieldByName('P1LOTSEQ').Value,
                    Query_nfe.FieldByName('P1ORDEM').Value,
                    Query_nfe.FieldByName('P1TOTALL').Value,
                    Query_nfe.FieldByName('P1CHAVE').Value);
  end;

if Fmensagem('Emissão de Nota é isso mesmo que deseja?',0,['1','2'],2)<>mrYes then
   exit;


query_nfe.First;

//   if (DM1.Tb_PargerPPEDFPGTO.AsFloat=0) then begin
While not query_nfe.eof do
   begin
   if query_nfe.FieldByName('P1TIPO').Value=0 then
      begin
      query_nfe.Next;
      Continue;
      end;
   if (query_nfe.FieldByName('P1CODEMP').AsFloat<100) then
      begin
      if ((query_nfe.FieldByName('CCNPJ').AsFloat=0) and (query_nfe.FieldByName('CCPF').AsFloat=0))
         and (query_nfe.FieldByName('CUF').AsString<>'EX') then
         begin
         fmensagem('o Cliente: '+query_nfe.FieldByName('CRAZAO').AsString+' Esta com cadastro Incompleto '
                  +' falta o CNPJ/CPF UF:'+query_nfe.FieldByName('CUF').AsString,0,['0'],0);
         exit;
         end;
      end;
   if query_nfe.FieldByName('P1SITPED').Value=1 then
      begin
      query_nfe.Next;
      Continue;
      end;

   if query_nfe.FieldByName('P1STATUS').Value>1 then
      begin
      query_nfe.next;
      Continue;
      end;
   fCarregarPO99(query_nfe.FieldByName('P1TABPV').Value,query_nfe.FieldByName('P1CODEMP').Value,
              query_nfe.FieldByName('P1LOTSEQ').Value
              ,iif(query_nfe.FieldByName('P1TABPV').AsString='PO',query_nfe.FieldByName('P1CHAVE').Value,
              query_nfe.FieldByName('P1CODPV').Value));
   fgvencto(iif(query_nfe.FieldByName('P1TABPV').Value='PP',1,0),query_nfe.FieldByName('P1CODEMP').AsInteger
                    ,query_nfe.FieldByName('P1LOTSEQ').AsInteger,query_nfe.FieldByName('P1CHAVE').AsInteger,
                     query_nfe.FieldByName('P1ORDEM').AsInteger,query_nfe.FieldByName('P1PRAZO').AsInteger,query_nfe.FieldByName('P1CODPV').AsInteger,
                      query_nfe.FieldByName('P1PVDDESCF').AsInteger,query_nfe.FieldByName('P1PVDIASDESCF').AsInteger,
                      query_nfe.FieldByName('P1TOTALL').AsFloat,query_nfe.FieldByName('P1COMIS').AsFloat,query_nfe.FieldByName('P1COMV02').AsFloat,query_nfe.FieldByName('P1COMV03').AsFloat,
                      query_nfe.FieldByName('P1COMV04').AsFloat, // substituir por 4
                      query_nfe.FieldByName('P1COMISS').AsFloat,query_nfe.FieldByName('P1COMIST').AsFloat,query_nfe.FieldByName('P1SEMCOM').AsFloat,
                      query_nfe.FieldByName('P1COMASSE').AsFloat,
                      query_nfe.FieldByName('P1ICMSR').AsFloat,query_nfe.FieldByName('P1VALFRE').AsFloat+query_nfe.FieldByName('P1TOTEXTCOM').AsFloat,query_nfe.FieldByName('P1VALSEG').AsFloat,
                      query_nfe.FieldByName('P1DESCFIN').AsFloat,
                      query_nfe.FieldByName('P1TOTDI01').AsFloat,
                      query_nfe.FieldByName('P1TOTDI02').AsFloat,
                      query_nfe.FieldByName('P1TOTDI03').AsFloat,
                      query_nfe.FieldByName('P1TOTDIVL').AsFloat,
                      query_nfe.FieldByName('P1VALDES01').AsFloat,
                      query_nfe.FieldByName('P1VALDES02').AsFloat,
                      query_nfe.FieldByName('P1VLRDES').AsFloat,
                      query_nfe.FieldByName('P1TARBAN').AsFloat,
                      query_nfe.FieldByName('P1IPIINA').AsFloat+query_nfe.FieldByName('P1IPIPOS').AsFloat+query_nfe.FieldByName('P1IPINEG').AsFloat,
                      query_nfe.FieldByName('P1TOTCGRU').AsFloat,
                      query_nfe.FieldByName('P1TOTSGRU').AsFloat,
                      query_nfe.FieldByName('P1TOTSERLIQ').AsFloat,
                      query_nfe.FieldByName('P1VALENT').AsFloat,
                      query_nfe.FieldByName('P1PRAZO_ENT').AsFloat,
                      query_nfe.FieldByName('P1COMIS_EXTRA').AsFloat,
                      mVenda_GP.mped1_submod, //SUBMOD
                      date,
                      query_nfe.FieldByName('P1TABPV').AsString);
   query_nfe.Next;
   end;
   //end;

query_nfe.First;
// fim dos Testes de Vencimentos
While not query_nfe.eof do
   begin
   if query_nfe.FieldByName('P1TIPO').Value=0 then
      begin
      fMensagem('O Pedido: '+Formatfloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'+
                FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)
               +' é apenas orçamento para emitir'+#13
               +' tem que converter em pedido',0,['0'],0);
      query_nfe.Next;
      Continue;
      end;

   if (query_nfe.FieldByName('P1CODEMP').AsFloat<100) then
      begin
      if ((query_nfe.FieldByName('CCNPJ').AsFloat=0) and (query_nfe.FieldByName('CCPF').AsFloat=0))
         and (query_nfe.FieldByName('CUF').AsString<>'EX') then
         begin
         fmensagem('o Cliente: '+query_nfe.FieldByName('CRAZAO').AsString+' Esta com cadastro Imcompleto '
                  +' falta o CNPJ/CPF '+query_nfe.FieldByName('CUF').AsString,0,['0'],0);
         exit;
         end;
      end;

   if query_nfe.FieldByName('P1STATUS').Value>1 then
      begin
      if fmensagem('Este Pedido ja Foi Emitido Nota Fiscal. Quer Reemitir?',0,['1','2'],0)=mrYes then
         begin
//         criar reemissao
         end;
      end
   else if query_nfe.FieldByName('P1EMITENTE').AsString='T' then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('update CADP01 set '
                         +' P1DATDOC=P1DATANF'+','
                            +' P1STATUS=2,P1EMIDOC=1 '
                            +' where P1CODEMP=0'+query_nfe.FieldByName('P1CODEMP').AsString
                            +' and P1LOTSEQ=0'+query_nfe.FieldByName('P1LOTSEQ').AsString
                            +' and P1CHAVE=0'+query_nfe.FieldByName('P1CHAVE').AsString
                            +' and P1ORDEM=0'+query_nfe.FieldByName('P1ORDEM').AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8424,'Frm_Ped_02','CADP01');
         end;
      DM1.Query1.Close;

      end
   else
      begin
      pSerieNF:='';
      pModNF  :='';
      mnumnf:=fBuscarNUMNF(query_nfe.FieldByName('P1CODEMP').AsInteger,
            'SERIE'+IntToStr(query_nfe.FieldByName('P1CODSER').AsInteger+1),pSerieNF,pModNF,0);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('update CADP01 set '
                     +' P1NUMNF=0'+FloatToStr(mnumnf)+','
                     +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1DATDOC=:DATDOC,'
                     +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                     +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                     +' P1STATUS=2,P1EMIDOC=1 '
                     +' where P1CODEMP=0'+query_nfe.FieldByName('P1CODEMP').AsString
                     +' and P1LOTSEQ=0'+query_nfe.FieldByName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+query_nfe.FieldByName('P1CHAVE').AsString
                     +' and P1ORDEM=0'+query_nfe.FieldByName('P1ORDEM').AsString);
      DM1.Query1.ParambyName('DATDOC').AsDate  := NOW;
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8424,'Frm_Ped_02','CADP01');
         end;
      DM1.Query1.Close;
      query_nfe.Close;
      query_nfe.Open;
      end;

   if (query_nfe.FieldByName('P1NUMNF').Value=0) and (query_nfe.FieldByName('P1NUMCF').Value=0) then
      begin
      fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'
      +FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui numero de nota fiscal nem de cupom fiscal',0,['0'],0);
      query_nfe.Next;
      Continue;
      end;
   if query_nfe.FieldByName('P1NUMNF').Value>0 then
      begin
      if query_nfe.FieldByName('P1DATANF').IsNull then
         begin
         fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)
         +'/'+FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui a data da nota fiscal!',0,['0'],0);
         query_nfe.Next;
         Continue;
         end;
      end;
   if query_nfe.FieldByName('P1NUMCF').Value>0 then
      begin
      if query_nfe.FieldByName('P1DATACF').IsNull then
         begin
         fMensagem('O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)
         +'/'+FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui a data do cupom fiscal!',0,['0'],0);
         query_nfe.Next;
         Continue;
         end;
      end;

   flcadp01(0,query_nfe.FieldByName('P1CODEMP').AsInteger,query_nfe.FieldByName('P1LOTSEQ').AsInteger,
                   query_nfe.FieldByName('P1CHAVE').AsString,'');

   Fgravarnf(0);

   FPedEmiteNf(9,query_nfe.FieldByName('P1CODSER').AsInteger,0,query_nfe.FieldByName('P1LOTSEQ').AsInteger
   ,query_nfe.FieldByName('P1CHAVE').AsInteger,query_nfe.FieldByName('P1ORDEM').AsInteger
   ,query_nfe.FieldByName('P1CODEMP').AsInteger,0,query_nfe.FieldByName('P1FORMACE').AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal
   fTestarDup(query_nfe.FieldByName('P1LOTSEQ').AsFloat,query_nfe.FieldByName('P1CHAVE').AsFloat
             ,query_nfe.FieldByName('P1ORDEM').AsFloat,query_nfe.FieldByName('P1CODEMP').AsFloat);


   mnfe_veraplic      :='';
   mnfe_infprodid     :='';
   mnfe_certdig       :='';
   mnfe_chaveacesso   :='';

   mnfe_Status_SCan          :='';
   mnfe_Status_SCan_Descricao:='';
   mnfe_Status_UF            :='';
   mnfe_Status_UF_Descricao  :='';

   mnfe_dchaveacesso  :='';
   mnfe_nrecibo       :='';
   mnfe_dh_recibo     :='';
   mnfe_status        :='';
   mnfe_lotenv        :='';
   mnfe_nomarqlot     :='';
   mnfe_nomarqrec     :='';
   mnfe_contigencia   :='';
   mnfe_dh_contigencia:='';
   mnfe_stat_Prot     :='';
   mnfe_stat_Prot_Desc:='';
   mnfe_stat_Rec      :='';
   mnfe_stat_Rec_Desc :='';
   mnfe_DigVal        :='';
   mnfe_Num_Protolo   :='';
   mnfe_dh_valcertificado:=pdatanula;


   query_nfe.Next;
   end;


freeandnil(query_nfe);

end;

procedure TFrm_Venda_Pre.sbnExcluirClick(Sender: TObject);
var
query_nfe: TQuery;
query_dup: TQuery;
query_nfs: TQuery;
query_par_nfs: TQuery;
query_itens: TQuery;
query_serv: TQuery;

aceita:boolean;
mtitulosBaixados: Boolean;
mMotivo_Exclusao,mObs: String;
mResult:Integer;
mMovEst: Integer;
begin
aceita:=True;
mtitulosBaixados:=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATAP,P1NFE_ENVXML '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_nfe.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
query_nfe.Open;
if query_nfe.IsEmpty then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;

if Query_nfe.FieldbyName('P1STATUS').Value=9 then
   begin
   Fmensagem('Este Pedido foi excluido anteriormente!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;



if (Query_nfe.FieldByName('P1SITPED').Value = 1) and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (trunc((now-Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;


if (DM1.Tb_PargerPQTDDBLOQPED.AsFloat<>0) then
   begin
   if (query_nfe.fieldbyName('P1DATAP').Value+DM1.Tb_PargerPQTDDBLOQPED.AsFloat)>pdatasis then
      begin
      if (query_nfe.fieldbyName('P1NUMCF').Value>0) or (query_nfe.fieldbyName('P1NUMNF').Value>0) then
          begin
          fMensagem('Não Pode ser Excluido o Pedido! '+#13
                   +'Quantidade de dias máximo: '+DM1.Tb_PargerPQTDDBLOQPED.AsString
                    ,0,['0'],0);
          freeandnil(query_nfe);
          exit;
        end;
      end;
   end;
if (query_nfe.fieldbyName('P1NUMCF').Value>0)  then
   begin
   mObs:='Este Pedido Possui o Cupom de Numero: '+FormatFloat('000000',query_nfe.fieldbyName('P1NUMCF').Value);
   mObs:=mObs+#13+'Este cupom não sera cancelado utilizando esta opção';
   mObs:=mObs+#13+'Mesmo assim quer prosseguir?';

   if fmensagem(pchar(mObs),0,['1','2'],0)<>mrYes then
      begin
      freeandnil(query_nfe);
      exit;
      end;
   end;


aceita:=True;
mtitulosBaixados:=false;
query_dup := TQuery.Create(nil);
query_dup.DatabaseName:='SG_ASSOC';


query_nfe.First;

While not query_nfe.Eof do
   begin
   query_dup.Close;
   query_dup.SQL.Clear;
   query_dup.SQL.Add('Select CRSTATUS,CRLOTE,CRVALPAG from caddar where '
                   +' CRNPED=:CHAVE '
                   +' and CRLOTSEQ_CP=:CHAVE_ANO '
                   +' and CRCODEMP=:CODEMP and CRSTATUS<>9 and CRSTATUS>0 '
                   +' and (CRLOTE<>0 or CRVALPAG>0)');
   Query_dup.ParamByName('CHAVE').AsFloat:=Query_nfe.fieldbyName('P1CHAVE').AsFloat;
   Query_dup.ParamByName('CHAVE_ANO').AsFloat:=Query_nfe.fieldbyName('P1LOTSEQ').AsFloat;
   Query_dup.ParamByName('CODEMP').AsFloat:=Query_nfe.fieldbyName('P1CODEMP').AsFloat;
   Query_Dup.Open;
   if not Query_dup.IsEmpty then
      begin
      mtitulosBaixados:=true;
      aceita:=false;
      end;
   query_nfe.Next;
   end;

if DM1.Tb_PargerPEXCFP_EXCPED.Value<>1 then
   begin
   if not aceita then
      begin
      fMensagem('Ha títulos pagos deste pedido cancelar primeiro as baixas!',0,['0'],0);
      freeandnil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end;

if (query_nfe.FieldByName('P1SITPED').Value = 1) and ( (query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (trunc((now-query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=query_nfe.FieldByName('P1CODUSR').AsString+' - ';
   if query_nfe.FieldByName('P1CODUSR').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,query_nfe.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   freeandnil(query_dup);
   end;

if fmensagem('Quer realmente excluir este pedido?',0,['1','2'],0)<>mrYes then
   begin
   FreeAndNil(query_nfe);
   freeandnil(query_dup);
   exit;
   end;

While true do
   begin
   mMotivo_Exclusao:='';
   if not InputQuery('Motivo da Exclusao!','Digite o Motivo da Exclusao:',mMotivo_Exclusao) then
      break;
   mMotivo_Exclusao:=trim(mMotivo_Exclusao);
   if length(mMotivo_Exclusao)<15 then
      begin
      fmensagem('O Motivo Tem que ter pelo menos quinze letras!',0,['0'],0);
      continue;
      end;
   if trim(mMotivo_Exclusao)<>'' then
      break;
   end;

if trim(mMotivo_Exclusao)='' then
   begin
   FreeAndNil(query_nfe);
   freeandnil(query_dup);
   exit;
   end;
flcadpar01(0,query_nfe.fieldbyName('P1CODEMP').AsInteger,'1');

if query_nfe.fieldbyName('P1STATUS').Value=2 then
   begin
   if fValidaSenha(0,codusr,4,0,query_nfe.fieldbyName('P1CODCLI').Value,0,0,0,'Senha para Excluir o Pedido apos a emissão da nota fiscal','')<>0 then
      begin
      FreeAndNil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end
else
   begin
   if fValidaSenha(0,codusr,3,0,query_nfe.fieldbyName('P1CODCLI').Value ,0,0,0,'Senha para Excluir o Pedido','')<>0 then
      begin
      FreeAndNil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end;


if mtitulosBaixados then
   begin
   if not fPed01ExcluiPagamento(0,query_nfe) then
      begin
      verteclado(0);
      fMensagem('Não foi possível excluir a(s) forma(s) de Pagamento automaticamente,'+#13
                +'Favor exluir manualmente!',0,['0'],0);
      FreeAndNil(query_nfe);
      freeandnil(query_dup);
      exit;
      end;
   end;

query_nfs := TQuery.Create(nil);
query_nfs.DatabaseName:='SG_ASSOC';

query_par_nfs := TQuery.Create(nil);
query_par_nfs.DatabaseName:='SG_ASSOC';


query_nfe.First;
While not query_nfe.Eof do
   begin
   if (query_nfe.fieldbyName('P1CODEMP').AsFloat<100) and (query_nfe.FieldByName('P1status').AsFloat>1)
      and (query_nfe.fieldbyName('P1NUMNF').AsFloat>0)  then
      begin
      if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
         begin
         if query_nfe.fieldbyName('P1NFE_ENVXML').AsFloat=9 then
            begin
            if pdatasis<Date then
               pdatasis:=Date;
            if (pdatasis-query_nfe.fieldbyName('P1DATANF').AsDateTime)>1 then
                begin
                fmensagem('Esta nota Fiscal não Permitido o Cancelamento pelo SEFAZ'
                         +'Mais de 1 dias apos a emissão!',0,['0'],0);
                exit;
                end;

            mResult:=fCancelarNFE(query_nfe.fieldbyName('P1CODEMP').AsFloat,query_nfe.fieldbyName('P1LOTSEQ').AsFloat,
                   query_nfe.fieldbyName('P1CHAVE').AsFloat,query_nfe.fieldbyName('P1ORDEM').AsFloat,
                   query_nfe.fieldbyName('P1NUMNF').AsFloat,mMotivo_Exclusao,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao cancelar NFE!',0,['0'],0);
               exit;
               end;
            end
         else
            begin
            query_nfs.Close;
            query_nfs.SQL.Clear;
            query_nfs.SQL.Add('SELECT NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO'
                              +',NSNUMERO,NSTOTNOTA,NSNFE_NUMPROT,NSDTEMIS,NSSERIE FROM CADNS where '
                              +iif(DM1.Qr_TID.locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+query_nfe.fieldbyName('P1CODEMP').AsString+' and ')
                              +' NSLOTSEQ_CP=0'+query_nfe.fieldbyName('P1LOTSEQ').AsString
                              +' and NSCHAVEP=0'+query_nfe.fieldbyName('P1CHAVE').AsString
                              +' and NSORDEMP=0'+query_nfe.fieldbyName('P1ORDEM').AsString
                              +' and NSNUMERO=0'+query_nfe.fieldbyName('P1NUMNF').AsString);
            query_nfs.Open;
            if query_nfs.IsEmpty then
               begin
               fmensagem('Erro ao Procurar a Nota Fiscal: '+query_nfe.fieldbyName('P1NUMNF').AsString,0,['0'],0);
               exit;
               end;

            if valint(query_nfs.FieldByName('NSSERIE').AsString)=0  then  //  serie
               begin
               query_par_nfs.close;
               query_par_nfs.SQL.clear;
               query_par_nfs.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                                 +' and PNF_CHAVE=:CHAVE ');
               query_par_nfs.ParamByName('CODEMP').AsInteger:=query_nfe.fieldbyname('P1CODEMP').AsInteger;
               query_par_nfs.ParamByName('CHAVE').Value     :=query_nfs.fieldbyname('NSTIPDOC').AsString;
               query_par_nfs.Open;
               mcinst:=query_par_nfs.FieldbyName('PNF_SERIE').AsString;
               end
            else
               mcinst:=query_nfs.FieldByName('NSSERIE').AsString;
            mResult:=fInutilizarNFE(mMotivo_Exclusao,
            mcinst,valint(formatfloat('0000',query_nfs.FieldbyName('NSDTEMIS').AsDateTime)),
            query_nfs.fieldbyName('NSNUMERO').AsInteger,
            query_nfs.fieldbyName('NSNUMERO').AsInteger,true);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao validar o xml!',0,['0'],0);
               exit;
               end;



            if valint(query_nfs.FieldByName('NSSERIE').AsString)=0  then  //  serie
               begin
               query_par_nfs.close;
               query_par_nfs.SQL.clear;
               query_par_nfs.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                                 +' and PNF_CHAVE=:CHAVE ');
               query_par_nfs.ParamByName('CODEMP').AsInteger:=DM4.Qr_Ped01P1CODEMP.AsInteger;
               query_par_nfs.ParamByName('CHAVE').Value     :=DM1.Query2.fieldbyname('NSTIPDOC').AsString;
               query_par_nfs.Open;
               mcinst:=query_par_nfs.FieldbyName('PNF_SERIE').AsString;
               end
            else
               mcinst:=query_nfs.FieldByName('NSSERIE').AsString;
            mResult:=fInutilizarNFE(mMotivo_Exclusao,
            mcinst,valint(formatfloat('0000',query_nfs.FieldbyName('NSDTEMIS').AsDateTime)),
            query_nfs.fieldbyName('NSNUMERO').AsInteger,
            query_nfs.fieldbyName('NSNUMERO').AsInteger,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao Inutilizar NFE!',0,['0'],0);
               exit;
               end;
            end;
         end;
      end;
   fped01gant(9,query_nfe);
   query_nfe.Next;
   end;
fExcluirPedido(0,mMotivo_Exclusao,query_nfe);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


query_itens := TQuery.Create(nil);
query_itens.DatabaseName:='SG_ASSOC';

query_itens.SQL.Clear;
query_itens.SQL.Add('select P2ITEM,P2CODPRO ');
if mVenda_GP.mped1_formace=0 then
   begin
   query_itens.SQL.Add(',sum(P2QTD) as P2QTD '
                    +',sum(P2QTD*P2PRECO) AS VALOR_TOTAL '
                    +',max(P2PCOTAB) AS P2PRECO_TAB'
                    +',max(P2UCPR) AS  P2PRECO_UCPR '
                    +',max(P2PCOCUS) AS P2PRECO_CUS '
                    +',max(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',max(P2PRECO) as P2PRECO ');
   end
else
   begin
   query_itens.SQL.Add(',max(P2QTD) as P2QTD '
                    +',sum(P2QTD*P2PRECO) AS VALOR_TOTAL '
                    +',sum(P2PCOTAB) AS P2PRECO_TAB'
                    +',sum(P2UCPR) AS  P2PRECO_UCPR '
                    +',sum(P2PCOCUS) AS P2PRECO_CUS '
                    +',sum(P2PCOMAX) AS P2PRECO_MAXCONS '
                    +',sum(P2PRECO) as P2PRECO ');
   end;

query_itens.SQL.Add(',max(P2DESC1) AS P2DESC_PERC01 '
                    +',max(P2DESC2) AS P2DESC_PERC02 '
                    +',max(P2DESC3) AS P2DESC_PERC03 '
                    +',max(P2SIT) AS P2CST '
                    +',max(P2CSOSN) as P2CSOSN '
                    +',max(P2CFO) AS P2CFOP_NF '
                    +',max(P2CFOSUBECF) AS P2CFOP_ECF '
                    +',max(P2COMPLEMENTO) AS P2DESC_COMP '
                    +',max(P2CSOSN_ORI) as P2CSOSN_ORI '
                    +',max(P2PCRED_SN) as P2ICMSSN_PERC '
                    +',max(P2MODBCST) as P2MODBCST '
                    +',max(P2ST_IVA ) as P2ST_IVA '
                    +',max(P2ST_REDUT) as P2ST_REDUT '
                    +',max(P2ST_ICMCRED) as P2ST_ICMSCRED '
                    +',max(P2ST_ICMDEB) AS P2ST_ICMSDEB '
                    +',max(P2ALIPI) AS P2IPI_PERC '
                    +',max(P2ALIQ) AS P2ICMS_PERC '
                    +',max(P2REDUTICM) AS P2ICMS_PPRED'
                    +',max(P2ALCOFINS) as P2COFINS_PERC '
                    +',max(P2ALPIS) AS P2PIS_PERC '
                    +',max(P2ALIPI) as P2ALIPI '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2CODVEN) as P2CODVEN '
                    +',max(P2AMBIENTE ) as P2AMBIENTE'
                    +',max(P2PDESCF) AS P2DESCFIN_PERC '
                    +',max(PDNOME) as PDNOME '
                    +',max(PDUND) as PDUND '
                    +',max(P2CST_PIS) as P2CST_PIS '
                    +',max(P2CST_COFINS) as P2CST_COFINS '
                    +',max(P2PROMOCAO) as P2PROMOCAO FROM '
                    +' cadp02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' (P2CODEMP=:CODEMP_MENOR or P2CODEMP=:CODEMP_MAIOR ) '
                    +' and   P2CHAVE=:CHAVE'
                    +' and   P2LOTSEQ=:CHAVE_ANO'
                    +' and   P2ORDEM=:ORDEM '
                    +' group by P2ITEM,P2CODPRO '
                    +'  order by P2ITEM ');
query_itens.ParamByName('CODEMP_MENOR').AsInteger   :=CodEmp;
if codemp>100 then
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp-100
else
   query_itens.ParamByName('CODEMP_MAIOR').AsInteger   :=CodEmp+100;


query_itens.ParamByName('CHAVE').AsInteger    :=valint(edt_chave.Text);
query_itens.ParamByName('CHAVE_ANO').AsInteger:=0;
//query_itens.ParamByName('CHAVE_ANO').AsInteger:=valint(FormatDateTime('yyyy', date));
query_itens.ParamByName('ORDEM').AsInteger    :=1;


try
   query_itens.Open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Tb_Ped02_Pre,['CADP02','CADPRO']),0,['0'],0);
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      end;
   end;
query_itens.First;
mMovEst:=1;
While not Query_itens.eof do
   begin
   mVenda_GP.fGravarItem(query_itens.fieldbyName('P2ITEM').AsInteger,mItem_Ant,query_itens.fieldbyName('P2CFOP_ECF').AsInteger,
                        query_itens.fieldbyName('P2CFOP_NF').AsInteger ,query_itens.fieldbyName('P2MODBCST').AsInteger,
                        0, // situacao
                        mMovEst, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                        mVenda_GP.mPed1_CodFP,
                        3, // SOMENTE AJUSTA ESTOQUE
                        query_itens.fieldbyName('P2CODPRO').AsString,
                        '', // codigo anterior
                        query_itens.fieldbyName('P2QTD').AsFloat,
                        0,
                        query_itens.fieldbyName('P2DESC_PERC01').AsFloat,
                        query_itens.fieldbyName('P2DESC_PERC02').AsFloat,
                        query_itens.fieldbyName('P2DESC_PERC03').AsFloat,
                        0, // desconto em valor
                        query_itens.fieldbyName('P2PRECO').AsFloat,
                        0, //repasse de icms
                        0, // lista neutra positiva negativa
                        query_itens.fieldbyName('P2PRECO_TAB').AsFloat,
                        query_itens.fieldbyName('P2PRECO_TAB').AsFloat,
                        query_itens.fieldbyName('P2PRECO_UCPR').AsFloat,
                        query_itens.fieldbyName('P2PRECO_CUS').AsFloat,
                        query_itens.fieldbyName('P2PRECO_MAXCONS').AsFloat,

                        query_itens.fieldbyName('P2IPI_PERC').AsFloat,
                        query_itens.fieldbyName('P2ICMS_PERC').AsFloat,
                        0, // percentual de comissao
                        query_itens.fieldbyName('P2PIS_PERC').AsFloat,
                        query_itens.fieldbyName('P2COFINS_PERC').AsFloat,
                        query_itens.fieldbyName('P2DESCFIN_PERC').AsFloat,
                        0, // percentual de acrescimos
                        query_itens.fieldbyName('P2CODVEN').AsFloat,
                        query_itens.fieldbyName('P2ICMS_PPRED').AsFloat,
                        query_itens.fieldbyName('P2ST_IVA').AsFloat,
                        query_itens.fieldbyName('P2ST_REDUT').AsFloat,
                        query_itens.fieldbyName('P2ST_REDUT').AsFloat,
                        query_itens.fieldbyName('P2ST_ICMSDEB').AsFloat,
                        query_itens.fieldbyName('P2ST_ICMSCRED').AsFloat,
                        query_itens.fieldbyName('P2ICMSSN_PERC').AsFloat,
                        valfloat(edt_desc_valor.Text),
                        0, // ACRESCIMOS RATEADO
                        valfloat(edt_valseg.Text),
                        ValFloat(edt_valfre.Text),
                        ValFloat(edt_tarban.Text),
                        valfloat(edt_outdesp.Text),
                        query_itens.fieldbyName('P2CST').AsString,
                        query_itens.fieldbyName('P2AMBIENTE').AsString,
                        query_itens.fieldbyName('P2DESC_COMP').AsString,
                        query_itens.fieldbyName('P2CSOSN').AsString,
                        query_itens.fieldbyName('P2csosn_ori').AsString,query_itens.fieldbyName('P2PROMOCAO').AsString
                        ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP
                        ,query_itens.fieldbyName('P2CST_PIS').AsString,query_itens.fieldbyName('P2CST_COFINS').AsString
                        );

   query_itens.Next;
   end;
//TERMINO

FreeAndNil(query_nfe);
freeandnil(query_dup);
freeandnil(query_itens);

fmensagem('Pedido Excluido!',0,['0'],0);

end;

procedure TFrm_Venda_Pre.sbnInutilizarClick(Sender: TObject);
var
Query_Cons: TQuery;
begin
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.close;
Query_Cons.SQL.clear;
Query_Cons.SQL.Add('SELECT PNF_SERVIDOR01,PNF_SERVIDOR02,PNF_SERVIDOR03 '
                  +' FROM CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' AND PNF_CHAVE=:CHAVE ');
Query_Cons.ParamByName('CODEMP').Value:=codemp;
Query_Cons.ParamByName('CHAVE').Value :='SERIE1';
Query_Cons.Open;

if not fTestarServidor_NFE(Query_Cons.fieldbyName('PNF_SERVIDOR01').AsInteger,
                           Query_Cons.fieldbyName('PNF_SERVIDOR02').AsInteger,
                           Query_Cons.fieldbyName('PNF_SERVIDOR03').AsInteger) then
   begin
   MessageDlg('Servidor de Nota Fiscal Eletronica Não esta Ativa!',mtWarning,[mbOk],0);
   freeandnil(query_cons);
   exit;
   end;
freeandnil(query_cons);

if Frm_NFE_Inutilizar=nil then
  Application.CreateForm(TFrm_NFE_Inutilizar, Frm_NFE_Inutilizar);
Frm_NFE_Inutilizar.ShowModal;
Frm_NFE_Inutilizar.Free;
Frm_NFE_Inutilizar:=nil;

end;

procedure TFrm_Venda_Pre.sbnlSepClick(Sender: TObject);
var
Query_LSep: TQuery;
mNivel: Integer;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
Query_Lsep := TQuery.Create(nil);
Query_Lsep.DatabaseName:='SG_ASSOC';
Query_Lsep.SQL.Clear;
Query_Lsep.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,CCIDADE,P1SITPED,P1TABPV,P1CODPV,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1SEPAMB '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_Lsep.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp_ini;
Query_Lsep.ParamByName('CODEMP_FILIAL').AsInteger:=mVenda_GP.mPed1_Codemp_fin;
Query_Lsep.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Query_Lsep.ParamByName('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
Query_Lsep.ParamByName('ORDEM').AsInteger:=1;
Query_Lsep.Open;
if Query_Lsep.IsEmpty then
   begin
   Query_LSep.SQL.SaveToFile('C:\LSEP.TXT');
   fmensagem('Chave não encontrada!',0,['0'],0);
   exit;
   end;

if Query_Lsep.FieldbyName('P1TIPO').Value=9 then
   begin
   Fmensagem('Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!',0,['0'],0);
   exit;
   end;


if (Query_Lsep.FieldByName('P1SITPED').Value = 1) and ( (Query_Lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (trunc((now-Query_Lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=Query_Lsep.FieldByName('P1CODUSR').AsString+' - ';
   if Query_Lsep.FieldByName('P1CODUSR').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_Lsep.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+Query_Lsep.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_Lsep.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   exit;
   end;






Query_LSep.First;
if (log_codven<>0) and (Query_LSep.FieldbyName('P1STATUS').AsInteger=1)
   and (Query_LSep.FieldbyName('P1TIPO').AsInteger>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   fMensagem('Reimpressão não autorizada, Favor solicitar Gerência!',0,['0'],0);
   exit;
   end;

if (Query_LSep.FieldbyName('P1TIPO').asinteger=0) or (Query_LSep.FieldbyName('P1TIPO').AsInteger=10) then // orcamento
   begin
   if (pconsemp=false) then
      begin
      if Query_LSep.FieldbyName('P1SEPAMB').AsInteger=18 then
         begin
         if Frm_Fatur_OrcGrupo=nil then
            Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo)
         else
            begin
            Frm_Fatur_OrcGrupo.free;
            Frm_Fatur_OrcGrupo:=nil;
            Application.CreateForm(TFrm_Fatur_OrcGrupo, Frm_Fatur_OrcGrupo);
            end;
         Frm_Fatur_OrcGrupo.CHAVE.Text   :=IntToStr(mVenda_GP.mped1_Chave);
         Frm_Fatur_OrcGrupo.MDATAP.Text  :=formatDateTime(fdt2, Query_LSep.FieldbyName('P1DATAP').AsDateTime);
         Frm_Fatur_OrcGrupo.MCLIENTE.Text:=Query_LSep.FieldbyName('P1CODCLI').AsString+' '+Query_LSep.FieldbyName('CRAZAO').AsString;
         Frm_Fatur_OrcGrupo.MCIDADE.Text := Query_LSep.FieldbyName('CCIDADE').AsString+' - '+Query_LSep.FieldbyName('CUF').AsString;
         Frm_Fatur_OrcGrupo.Memo_obs.Lines.Clear;



         Frm_Fatur_OrcGrupo.FormStyle:=fsNormal;
         Frm_Fatur_OrcGrupo.Visible:=false;

         fAtualizaForm(0);
         Frm_Fatur_OrcGrupo.ShowModal;
         Frm_Fatur_OrcGrupo.Free;
         Frm_Fatur_OrcGrupo:=nil;
         end
      else
         begin
         FPedEmiteNf(0,2,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
                  ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,1
                  ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // orcamento
         if DM1.Tb_PargerPLORCMOD02.AsInteger=1 then
            FPedEmiteNf(0,6,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
            ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,1
            ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // orcamento
         end;
      end;
   end
else if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then  // emprestimo de mercadorias (vale)
   begin
   FPedEmiteNf(0,4,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
    ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0,
    Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista emprestimo de mercadorias (Vale)
   if DM1.Tb_PargerPLVALEMOD02.AsInteger=1 then
      FPedEmiteNf(0,8,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
      ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
      ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista emprestimo de mercadorias (Vale)
      end
else // lista de separacao
   begin
   if DM1.Tb_PargerPLSEPSEP_ORDEM.AsInteger=1 then
      begin
      FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
      ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
      ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
      if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
         FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
         ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
         ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
      end
   else
      begin
      if (pconsemp=false) then
         begin
{
         if not cb_ListaParc.Checked then
           begin
           FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
           ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
           Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
           end
         else
           begin
}
           while not Query_LSep.Eof do
             begin
             FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
             ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
             ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
             Query_LSep.Next;
             end;
//           end;
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,
            Query_LSep.FieldbyName('P1CHAVE').AsInteger,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
            Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,
            Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
         end
      else
         begin
         while not Query_LSep.Eof do
            begin
            FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
            ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
            ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
            Query_LSep.Next;
            end;
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,
            Query_LSep.FieldbyName('P1CHAVE').AsInteger,Query_LSep.FieldbyName('P1ORDEM').AsInteger,
            Query_LSep.FieldbyName('P1CODEMP').AsInteger,1,
            Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao
         end;
      end;
   mnivel:=1;
   end;
if mnivel=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.clear;
   DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=0,'0','1')
                     +iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=9,', P1EMIDOC=1, P1DATDOC=:DATDOC','')
                     +' where '
                     +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                     +' and P1LOTSEQ=0'+Query_LSep.FieldbyName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+Query_LSep.FieldbyName('P1CHAVE').AsString
                     +' and P1STATUS=0');
   if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then
      DM1.Query1.ParambyName('DATDOC').AsDate := NOW;

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,8291,'Frm_Ped_02','CADP01');
      end;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.clear;
   DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(Query_LSep.FieldbyName('P1TIPO').AsInteger=0,'0','1')
                     +iif(Query_LSep.FieldbyName('P1TIPO').asinteger=9,', P1EMIDOC=1, P1DATDOC=:DATDOC','')
                     +' where P1CODEMP=0'+Query_LSep.FieldbyName('P1CODEMP').AsString
                     +' and P1LOTSEQ=0'+Query_LSep.FieldbyName('P1LOTSEQ').AsString
                     +' and P1CHAVE=0'+Query_LSep.FieldbyName('P1CHAVE').AsString
                     +' and P1ORDEM=0'+Query_LSep.FieldbyName('P1ORDEM').AsString
                     +' and P1STATUS=0');
   if Query_LSep.FieldbyName('P1TIPO').AsInteger=9 then
      DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,8307,'Frm_Ped_02','CADP01');
      end;
   end;
Query_LSep.Close;
FreeandNil(Query_LSep);

end;

procedure TFrm_Venda_Pre.edt_coddigExit(Sender: TObject);
begin
if valint(edt_coddig.Text)=0 then
   edt_coddig.Text  := ''
else
   edt_coddig.Text  := fdeixanum2(edt_coddig.Text);
edt_nomdig.Text := '';
if trim(edt_coddig.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_coddig.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_coddig.SetFocus;
         end;
      end
   else
      begin
      edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre.edt_coddigKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_coddig.Text := fchamausr(0,'frm_venda_pre',key);
   edt_coddigExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Venda_Pre.edt_coddigChange(Sender: TObject);
begin

if (edt_coddig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codsepChange(Sender: TObject);
begin

if (edt_codsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codsepExit(Sender: TObject);
begin
if valint(edt_codsep.Text)=0 then
   edt_codsep.Text  := ''
else
   edt_codsep.Text  := fdeixanum2(edt_codsep.Text);
edt_nomsep.Text := '';
if trim(edt_codsep.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codsep.Text) then
      begin
      if edt_codsep.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codsep.SetFocus;
         end;
      end
   else
      begin
      edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre.edt_codsepKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codsep.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codsepExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codembKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codemb.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codembExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codembExit(Sender: TObject);
begin
if valint(edt_codemb.Text)=0 then
   edt_codemb.Text  := ''
else
   edt_codemb.Text  := fdeixanum2(edt_codemb.Text);
edt_nomemb.Text := '';
if trim(edt_codemb.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codemb.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codemb.SetFocus;
         end;
      end
   else
      begin
      edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre.edt_codembChange(Sender: TObject);
begin
if (edt_codemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codconfChange(Sender: TObject);
begin
if (edt_codconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codconfExit(Sender: TObject);
begin
if valint(edt_codconf.Text)=0 then
   edt_codconf.Text  := ''
else
   edt_codconf.Text  := fdeixanum2(edt_codconf.Text);
edt_nomconf.Text := '';
if trim(edt_codconf.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codconf.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codconf.SetFocus;
         end;
      end
   else
      begin
      edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;

end;

procedure TFrm_Venda_Pre.edt_codconfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codconf.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codconfExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codentKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codent.Text := fchamausr(0,'frm_venda_pre',key);
   edt_codentExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codentExit(Sender: TObject);
begin
if valint(edt_codent.Text)=0 then
   edt_codent.Text  := ''
else
   edt_codent.Text  := fdeixanum2(edt_codent.Text);
edt_noment.Text := '';
if trim(edt_codent.Text) <> '' then
   begin
   if not flcadusr(1,0,edt_codent.Text) then
      begin
      if edt_coddig.Enabled then
         begin
         verteclado(0);
         fMensagem('Usuário não Cadastrado!',0,['0'],0);
         edt_codent.SetFocus;
         end;
      end
   else
      begin
      edt_nomdig.Text := DM4.Tb_UsrNOMUSR.Value;
      mVenda_GP.mPed1_CodUsr_Dig:=DM4.Tb_UsrCODUSR.AsInteger;
      end;
   end;


end;

procedure TFrm_Venda_Pre.edt_codentChange(Sender: TObject);
begin
if (edt_codent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datdigChange(Sender: TObject);
begin
if (edt_datdig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datsepChange(Sender: TObject);
begin
if (edt_datsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datembChange(Sender: TObject);
begin
if (edt_datemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datconfChange(Sender: TObject);
begin
if (edt_datconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datentChange(Sender: TObject);
begin
if (edt_datent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_hordigChange(Sender: TObject);
begin
if (edt_hordig.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_horsepChange(Sender: TObject);
begin
if (edt_horsep.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_horembChange(Sender: TObject);
begin
if (edt_horemb.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_horconfChange(Sender: TObject);
begin
if (edt_horconf.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_horentChange(Sender: TObject);
begin
if (edt_horent.Modified)  and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datdigExit(Sender: TObject);
begin
if edt_datdig.Date>pdatanula then
   begin
   if edt_datdig.Date>Date then
      begin
      fmensagem('Data da digitação Não pode ser maior que '+FormatDatetime(fdt2, date),0,['0'],0);
      edt_datdig.SetFocus;
      end
   else if edt_datdig.Date>edt_datap.Date then
      begin
      fmensagem('Data da digitação Não pode ser menor que '+FormatDatetime(fdt2, edt_datap.date),0,['0'],0);
      edt_datdig.SetFocus;
      end
   else
      begin
      if fsonumero(edt_hordig.Text)=0 then
         edt_hordig.Text:=FormatDatetime('hh:nn', time);
      mVenda_GP.mPed1_DatHor_Dig:=StrtoDateTime(edt_datdig.text+' '+edt_hordig.Text+':00');
      end;

   end;
end;

end.

