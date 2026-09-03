unit S_Pedido_Fortes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RLReport, RLRichText,DB,DBTABLES,Richedit, StdCtrls,
  Buttons, RLRichFilter, RLPDFFilter, RLFilters, RLHTMLFilter,
  RLDraftFilter, RxMemDS, DBClient;

type
  TFrm_Pedido_Fortes = class(TForm)
    I: TPageControl;
    Ts_Configuracao: TTabSheet;
    Ts_Relatorio: TTabSheet;
    rlPedido: TRLReport;
    rl_cablogo: TRLBand;
    RLImage_cab: TRLImage;
    rldb_razao: TRLDBText;
    lbl_cnpj_ie: TRLMemo;
    rldb_ender: TRLDBMemo;
    rlcab_fonefax: TRLMemo;
    rlcab_email: TRLMemo;
    rl_cabhome: TRLMemo;
    rl_cabtit: TRLBand;
    lblObs: TRLLabel;
    lbl_cabchave: TRLLabel;
    RLcabcli: TRLBand;
    lbl_cabcli: TRLLabel;
    RLDBText4: TRLDBText;
    lbl_cadcnpj: TRLLabel;
    db_cnpj: TRLDBText;
    lbl_cadend: TRLLabel;
    db_ender: TRLDBText;
    lbl_bairro: TRLLabel;
    db_bairro: TRLDBText;
    lbl_cadloc: TRLLabel;
    db_cidade: TRLDBText;
    lbl_uf: TRLLabel;
    db_uf: TRLDBText;
    lbl_cep: TRLLabel;
    db_cep: TRLDBText;
    db_ie: TRLDBText;
    lbl_ie: TRLLabel;
    db_nomcon: TRLDBText;
    lbl_cabcont: TRLLabel;
    db_fonecon: TRLDBText;
    db_fone01: TRLDBText;
    lbl_cadvend: TRLLabel;
    db_nomven: TRLDBText;
    lbl_datped: TRLLabel;
    db_datped: TRLDBText;
    lbl_pag: TRLLabel;
    db_barpag: TRLLabel;
    db_pag: TRLSystemInfo;
    db_qtdpag: TRLSystemInfo;
    db_fone: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    Label1: TLabel;
    CB_TEXTO: TComboBox;
    bbConfigurar: TBitBtn;
    Label2: TLabel;
    CB_RELATORIO: TComboBox;
    RichEdit1: TRichEdit;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    rl_rodOrcCiente: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    rl_RodOrcObs: TRLBand;
    dbprazos: TRLDBText;
    db_formapag: TRLDBText;
    lblFormaPgto: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLBand2: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    banner: TRLLabel;
    CB_DESCOM: TCheckBox;
    RLSubDetail3_Servicos: TRLSubDetail;
    matricial: TRLDraftFilter;
    lbl_assessor: TRLLabel;
    txt_assessor: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    CB_CABCLI: TCheckBox;
    CB_CABSER: TCheckBox;
    RLDBText9: TRLDBText;
    RLLabel14: TRLLabel;
    CB_CABDESC: TCheckBox;
    RLGroup2: TRLGroup;
    RLBand3: TRLBand;
    lbl_codser: TRLLabel;
    lbl_qtdser: TRLLabel;
    lbl_nomser: TRLLabel;
    lbl_pcouniser: TRLLabel;
    lbl_vtserv: TRLLabel;
    RLBand_detser: TRLBand;
    edt_codser: TRLDBText;
    edt_qtdser: TRLDBText;
    RLDBText12: TRLDBText;
    edt_pcouniser: TRLDBText;
    edt_vtserv: TRLDBText;
    edt_nomser: TRLMemo;
    RLBand_serrod: TRLBand;
    txt_totserbru: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand6_desconto: TRLBand;
    RLLabel19: TRLLabel;
    txt_totserdesc: TRLLabel;
    RLBand4_totliq: TRLBand;
    RLLabel15: TRLLabel;
    txt_totserliq: TRLLabel;
    Src_Ped02_CMet: TDataSource;
    Qr_Ped02_CMet: TQuery;
    Qr_Ped02_CMetP2CM_CODEMP: TFloatField;
    Qr_Ped02_CMetP2CM_ITEM: TFloatField;
    Qr_Ped02_CMetP2CM_CODPRO: TFloatField;
    Qr_Ped02_CMetP2CM_LOTSEQ: TFloatField;
    Qr_Ped02_CMetP2CM_CHAVE: TFloatField;
    Qr_Ped02_CMetP2CM_CODIGO: TFloatField;
    Qr_Ped02_CMetP2CM_LARGURA: TFloatField;
    Qr_Ped02_CMetP2CM_ESPESSURA: TFloatField;
    Qr_Ped02_CMetP2CM_CONSTANTE: TFloatField;
    Qr_Ped02_CMetP2CM_COMPRIMENTO: TFloatField;
    Qr_Ped02_CMetP2CM_QTD_KG: TFloatField;
    Qr_Ped02_CMetP2CM_SEQ: TFloatField;
    Qr_Ped02_CMetCMET_NOME: TStringField;
    Qr_Ped02_CMetLARG: TStringField;
    cb_impCMet: TCheckBox;
    Qr_Ped02_CMetP2CM_QTD_KG_UNIT: TFloatField;
    Qr_Ped02_CMetP2CM_QTD_PECAS: TFloatField;
    Qr_Ped02_CMetP2CM_PITEM_PRECO: TFloatField;
    Qr_Ped02_CMetVALOR_TOTAL: TFloatField;
    Qr_Ped02_CMetLARG_COMP: TStringField;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    cb_impkitlsep: TCheckBox;
    cb_secao_lsep: TCheckBox;
    CB_REFNOM: TCheckBox;
    RLBand10: TRLBand;
    rl_obs01: TRLBand;
    txt_obs01: TRLRichText;
    obs_extra: TRLMemo;
    rlObs_pedido: TRLMemo;
    Ts_Relatorio2: TTabSheet;
    rlPedido2: TRLReport;
    rl_cablogo2: TRLBand;
    RLImage_cab2: TRLImage;
    RLDBText18: TRLDBText;
    RLMemo1: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    rl_cabtit2: TRLBand;
    lblObs2: TRLLabel;
    lbl_cabchave2: TRLLabel;
    RLBand31: TRLBand;
    RLLabel97: TRLLabel;
    RLDBText61: TRLDBText;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLBand33: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel106: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel107: TRLLabel;
    RLBand32: TRLBand;
    RL_EMP: TRLLabel;
    RLLabel231: TRLLabel;
    RLLabel240: TRLLabel;
    RLLabel241: TRLLabel;
    RLLabel232: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel169: TRLLabel;
    RLLabel238: TRLLabel;
    RLLabel244: TRLLabel;
    RLLabel236: TRLLabel;
    RLLabel234: TRLLabel;
    RLLabel131: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel237: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLBand41: TRLBand;
    RLLabel120: TRLLabel;
    RLDBText74: TRLDBText;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    Qr_Pro_Kit: TQuery;
    Qr_Pro_KitPDNOME: TStringField;
    Qr_Pro_KitPDUND: TStringField;
    Qr_Pro_KitKIT_CODEMP: TFloatField;
    Qr_Pro_KitKIT_CODPRO: TFloatField;
    Qr_Pro_KitKIT_CODPRO_KIT: TFloatField;
    Qr_Pro_KitKIT_ORDEM: TFloatField;
    Qr_Pro_KitKIT_QTD: TFloatField;
    Qr_Pro_KitKIT_PRECO: TFloatField;
    Qr_Pro_KitQTDTOT: TFloatField;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel114: TRLLabel;
    RLBand13: TRLBand;
    RLLabel24: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel43: TRLLabel;
    lbl_prazoentrega: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel47: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel23: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid3: TRLDetailGrid;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLBand12: TRLBand;
    RLLabel49: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLBand11: TRLBand;
    RLcabCodpro2: TRLLabel;
    lbl_secao2: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    rlcab_pdnome: TRLLabel;
    rcab_marca: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLBand14: TRLBand;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLBand16: TRLBand;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    rldet_pdnome: TRLMemo;
    rldetped_marca: TRLDBMemo;
    RLDBText44: TRLDBText;
    edt_secao2: TRLDBText;
    rlSubPen2: TRLSubDetail;
    RLBand15: TRLBand;
    RLLabel53: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    rlcabpen_pdnome: TRLLabel;
    rlcabpen_marca: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLBand18: TRLBand;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    rldetpen_marca: TRLDBMemo;
    RLDBText55: TRLDBText;
    rldetpen_pdnome: TRLDBText;
    RLBand17: TRLBand;
    RLLabel68: TRLLabel;
    rlBruPen: TRLLabel;
    RLBand19: TRLBand;
    RLLabel48: TRLLabel;
    RLDBMemo4: TRLDBMemo;
    RLLabel54: TRLLabel;
    src_Pro_Kit: TDataSource;
    rl_totliq_ped2: TRLBand;
    lbl_totqtd_ped2: TRLLabel;
    RLSubDet_pedencias: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    Tb_Pend: TQuery;
    src_pend: TDataSource;
    Tb_PendPDNOME: TStringField;
    Tb_PendPDUND: TStringField;
    Tb_PendPECODEMP: TFloatField;
    Tb_PendPELOTSEQ: TFloatField;
    Tb_PendPECHAVE: TFloatField;
    Tb_PendPECODCLI: TFloatField;
    Tb_PendPECODVEN: TFloatField;
    Tb_PendPEDATA: TDateTimeField;
    Tb_PendPEITEM: TFloatField;
    Tb_PendPECODPRO: TFloatField;
    Tb_PendPEQTDPED: TFloatField;
    Tb_PendPEQTDENV: TFloatField;
    Tb_PendPEQTDPEN: TFloatField;
    Tb_PendPEDESC01: TFloatField;
    Tb_PendPEDESC02: TFloatField;
    Tb_PendPEDESC03: TFloatField;
    Tb_PendPEVALDES: TFloatField;
    Tb_PendPEPRECO: TFloatField;
    Tb_PendPEGRADE: TStringField;
    Tb_PendPE_CHAVE_NIVEL: TFloatField;
    RLBand_pend_cabger: TRLBand;
    RLLabel69: TRLLabel;
    RLBand_pend_cabdet: TRLBand;
    RLBand_pend_det: TRLBand;
    RLDB_PECODPRO: TRLDBText;
    RLDB_PEQTDPED: TRLDBText;
    RLDB_PEQTDENV: TRLDBText;
    RLDB_PEQTDPEN: TRLDBText;
    RLDB_PDUND: TRLDBText;
    RLDB_PDNOME: TRLDBText;
    lbl_PECODPRO: TRLLabel;
    lbl_PEQTDPED: TRLLabel;
    lbl_PEQTDENV: TRLLabel;
    lbl_PEQTDPEN: TRLLabel;
    lbl_PDUND: TRLLabel;
    lbl_PDNOME: TRLLabel;
    CB_PEND_LISTASEP: TCheckBox;
    rlObs_pedido2: TRLMemo;
    RLDBM_ecf_razao: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLLabel70: TRLLabel;
    RLDBText5: TRLDBText;
    tsImpressaopequena: TTabSheet;
    RLReport_pedido_pequeno: TRLReport;
    mem_cabecalho: TRxMemoryData;
    mem_itens: TRxMemoryData;
    src_cabecalho: TDataSource;
    src_itens: TDataSource;
    RLGroup3: TRLGroup;
    mem_cabecalhoempresa: TStringField;
    mem_cabecalhotelefone: TStringField;
    mem_cabecalhodata_pedido: TStringField;
    mem_cabecalhotipo_pedido: TStringField;
    mem_cabecalhochave: TIntegerField;
    mem_cabecalhocliente_razsoc: TStringField;
    mem_cabecalhocliente_endereco: TStringField;
    mem_cabecalhocliente_telefone: TStringField;
    mem_cabecalhocliente_cidade: TStringField;
    mem_cabecalhocliente_uf: TStringField;
    mem_cabecalhocliente_bairro: TStringField;
    mem_cabecalhocliente_cnpj_cpf: TStringField;
    mem_cabecalhocliente_ie_rg: TStringField;
    mem_cabecalhocliente_cep: TStringField;
    mem_cabecalhovendedor_codigo: TStringField;
    mem_cabecalhovendedor_nome: TStringField;
    mem_cabecalhoqtditens: TIntegerField;
    mem_cabecalhototund: TFloatField;
    mem_cabecalhoobservacao_pedido: TMemoField;
    mem_cabecalhototal_bruto: TFloatField;
    mem_cabecalhodescontos: TFloatField;
    mem_cabecalhototal_liquido: TFloatField;
    mem_cabecalhocliente_codigo: TFloatField;
    mem_itenscodigo: TStringField;
    mem_itensqtd: TStringField;
    mem_itensund: TStringField;
    mem_itensdescricao: TStringField;
    mem_itensmarca: TStringField;
    mem_itenspreco_unit: TStringField;
    mem_itenstotal: TStringField;
    RLBand22: TRLBand;
    RLDBText49: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText50: TRLDBText;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLDBText57: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLLabel73: TRLLabel;
    RLDBText58: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText59: TRLDBText;
    RLLabel75: TRLLabel;
    RLDBText60: TRLDBText;
    RLLabel76: TRLLabel;
    RLDBText62: TRLDBText;
    RLLabel78: TRLLabel;
    RLDBText64: TRLDBText;
    RLLabel79: TRLLabel;
    RLDBText65: TRLDBText;
    RLLabel77: TRLLabel;
    RLDBText63: TRLDBText;
    RLLabel80: TRLLabel;
    RLDBText66: TRLDBText;
    RLLabel82: TRLLabel;
    RLDBText68: TRLDBText;
    RLLabel83: TRLLabel;
    RLDBText69: TRLDBText;
    RLLabel81: TRLLabel;
    RLDBText67: TRLDBText;
    rlcab_codigo: TRLLabel;
    rlcab_qtd: TRLLabel;
    rlcab_und: TRLLabel;
    rlcab_descricao: TRLLabel;
    rlcab_marca: TRLLabel;
    rlcab_preco_unit: TRLLabel;
    rlcab_total: TRLLabel;
    RLBand23: TRLBand;
    RLLabel84: TRLLabel;
    RLDBText70: TRLDBText;
    RLLabel85: TRLLabel;
    RLDBText71: TRLDBText;
    RLLabel86: TRLLabel;
    RLDBMemo6: TRLDBMemo;
    RLLabel87: TRLLabel;
    mem_cabecalhocodemp: TIntegerField;
    mem_itenschave: TIntegerField;
    mem_cabecalhogrupo: TStringField;
    mem_cabecalhovia: TIntegerField;
    mem_cabecalhocodigo: TStringField;
    mem_cabecalhoqtd: TStringField;
    mem_cabecalhound: TStringField;
    mem_cabecalhodescricao: TStringField;
    mem_cabecalhomarca: TStringField;
    mem_cabecalhopreco_unit: TStringField;
    mem_cabecalhototal: TStringField;
    RLBand21: TRLBand;
    rldet_codigo: TRLDBText;
    rldet_qtd: TRLDBText;
    rldet_und: TRLDBText;
    rldet_descricao: TRLDBText;
    rldet_marca: TRLDBText;
    rldet_preco_unit: TRLDBText;
    rldet_total: TRLDBText;
    mem_itensgrupo: TStringField;
    RLDraw3: TRLDraw;
    RLLabel88: TRLLabel;
    RLDBText72: TRLDBText;
    lblcab_totdes: TRLLabel;
    lbldet_totdes: TRLDBText;
    lblcab_totliq: TRLLabel;
    lbldet_totliq: TRLDBText;
    RLDraw4: TRLDraw;
    tsOrcamentoServicos: TTabSheet;
    rlOrcamentoServico: TRLReport;
    rlos_cab01: TRLBand;
    RLLabel89: TRLLabel;
    RLBand24: TRLBand;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLDBText73: TRLDBText;
    cds_nfse_cab: TClientDataSet;
    cds_nfse_cabnumnfse: TIntegerField;
    cds_nfse_cabdatemis: TDateTimeField;
    cds_nfse_cabtomador_razao: TStringField;
    cds_nfse_cabtomador_cnpj: TStringField;
    cds_nfse_cabtomador_im: TStringField;
    cds_nfse_cabtomador_ender: TStringField;
    cds_nfse_cabtomador_bairro: TStringField;
    cds_nfse_cabtomador_municipio: TStringField;
    cds_nfse_cabtomador_uf: TStringField;
    cds_nfse_cabtomador_cep: TStringField;
    cds_nfse_cabtotal_servicos: TFloatField;
    cds_nfse_cabtotal_desc_incondicionado: TFloatField;
    cds_nfse_cabtotal_retencoes_federais: TFloatField;
    cds_nfse_cabtotal_liquido: TFloatField;
    cds_nfse_cabtotal_deducoes: TFloatField;
    cds_nfse_cabserv_prestado_codigo_municipio: TStringField;
    cds_nfse_cabtomador_num_uf_cep_fone: TStringField;
    src_nfse_cab: TDataSource;
    RLLabel92: TRLLabel;
    RLDBText75: TRLDBText;
    RLLabel93: TRLLabel;
    RLDBText76: TRLDBText;
    RLLabel94: TRLLabel;
    RLDBText77: TRLDBText;
    RLLabel95: TRLLabel;
    RLDBText78: TRLDBText;
    RLLabel96: TRLLabel;
    RLDBText79: TRLDBText;
    src_nfse_det: TDataSource;
    cds_nfse_det: TClientDataSet;
    cds_nfse_detitem: TStringField;
    cds_nfse_detdescricao: TMemoField;
    RLNFSE_DEET01: TRLBand;
    RLLabel115: TRLLabel;
    RLDBMemo7: TRLDBMemo;
    RLNFSE_ROD06: TRLBand;
    RLPanel11: TRLPanel;
    RLLabel116: TRLLabel;
    RLDBText80: TRLDBText;
    RLPanel12: TRLPanel;
    RLLabel117: TRLLabel;
    RLDBText81: TRLDBText;
    RLPanel13: TRLPanel;
    RLLabel118: TRLLabel;
    RLDBText82: TRLDBText;
    RLBand25: TRLBand;
    rlcab_observacao: TRLLabel;
    RLDBText83: TRLDBText;
    cb_marcanao: TCheckBox;
    CB_PEDPEQ_DESCCOMP_MARCA: TCheckBox;
    mem_itensdesc_complementar: TStringField;
    rldet_numdoc: TRLDBText;
    RLDBText48: TRLDBText;
    rlcabpend_marca: TRLLabel;
    rlcabpend_pu: TRLLabel;
    rlcabped_vt: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLDBText84: TRLDBText;
    RLDBText85: TRLDBText;
    tsModelo03: TTabSheet;
    rlPedidoModelo03: TRLReport;
    RLBand4: TRLBand;
    RLImage_mod03: TRLImage;
    RLDBText86: TRLDBText;
    RLMemo5: TRLMemo;
    RLDBMemo3: TRLDBMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    rl_cabtit_mod03: TRLBand;
    lblObs_mod03: TRLLabel;
    lbl_cabchave_mod03: TRLLabel;
    RLcabcli_mod03: TRLBand;
    RLLabel60: TRLLabel;
    RLDBText87: TRLDBText;
    RLLabel63: TRLLabel;
    RLDBText88: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText89: TRLDBText;
    RLLabel119: TRLLabel;
    RLDBText90: TRLDBText;
    RLLabel121: TRLLabel;
    RLDBText91: TRLDBText;
    RLLabel128: TRLLabel;
    RLDBText92: TRLDBText;
    RLLabel129: TRLLabel;
    RLDBText93: TRLDBText;
    RLDBText94: TRLDBText;
    RLLabel130: TRLLabel;
    RLDBText95: TRLDBText;
    RLLabel132: TRLLabel;
    RLDBText96: TRLDBText;
    RLDBText97: TRLDBText;
    RLLabel133: TRLLabel;
    RLDBText98: TRLDBText;
    RLLabel134: TRLLabel;
    RLDBText99: TRLDBText;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLLabel137: TRLLabel;
    RLLabel138: TRLLabel;
    RLDBText100: TRLDBText;
    RLLabel139: TRLLabel;
    RLDBText101: TRLDBText;
    RLDBText102: TRLDBText;
    RLLabel140: TRLLabel;
    RLDBText103: TRLDBText;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLDBText104: TRLDBText;
    RLDBText105: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand_cmet_det_mod03fff: TRLGroup;
    rl_cabitens_mod03: TRLBand;
    RLcabCodpro_mod03: TRLLabel;
    RLCabQtd_mod03: TRLLabel;
    RLCabUnd_mod03: TRLLabel;
    rlcab_nome_mod03: TRLLabel;
    RLCabMarca_mod03: TRLLabel;
    RLCabPU_mod03: TRLLabel;
    rlvl_total_mod03: TRLLabel;
    lbl_secao_mod03: TRLLabel;
    rl_cabamb_mod03: TRLBand;
    RLDBText106: TRLDBText;
    rl_detitens_mod03: TRLBand;
    RLQtd_mod03: TRLDBText;
    RLUnd_mod03: TRLDBText;
    RLPU_mod03: TRLDBText;
    RLDBText110: TRLDBText;
    rlnome2: TRLMemo;
    RLMarca_mod03: TRLDBMemo;
    RLCodpro_mod03: TRLDBText;
    edt_secao_mod03: TRLDBText;
    rl_totbrugru_mod03: TRLBand;
    lbl_totbrugru_mod03: TRLLabel;
    RLLabel152: TRLLabel;
    rl_totliqgru_mod03: TRLBand;
    lbl_totliqgru_mod03: TRLLabel;
    RLLabel154: TRLLabel;
    rl_totdesgru_mod03: TRLBand;
    lbl_totdesgru_mod03: TRLLabel;
    RLLabel156: TRLLabel;
    RLBand36: TRLBand;
    RLRichText1: TRLRichText;
    RLBand_cmet_det_mod03: TRLSubDetail;
    RLBand37: TRLBand;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLLabel163: TRLLabel;
    RLLabel164: TRLLabel;
    RLBand_cmet_det_mod03d: TRLBand;
    RLDBText113: TRLDBText;
    RLDBText114: TRLDBText;
    RLDBText115: TRLDBText;
    RLDBText116: TRLDBText;
    RLDBText117: TRLDBText;
    RLDBText118: TRLDBText;
    RLDBText119: TRLDBText;
    RLDBText120: TRLDBText;
    RLDBText121: TRLDBText;
    RLBand39: TRLBand;
    RLLabel165: TRLLabel;
    RLLabel166: TRLLabel;
    RLLabel167: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel170: TRLLabel;
    RLLabel171: TRLLabel;
    RLLabel172: TRLLabel;
    RLLabel173: TRLLabel;
    RLLabel174: TRLLabel;
    RLSubDetail_kit_mod03: TRLSubDetail;
    RLBand40: TRLBand;
    RLLabel175: TRLLabel;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLLabel178: TRLLabel;
    RLLabel179: TRLLabel;
    RLBand_detser_mod03: TRLBand;
    edt_codser_mod032: TRLDBText;
    RLDBText123: TRLDBText;
    RLDBText124: TRLDBText;
    RLDBText125: TRLDBText;
    RLDBText126: TRLDBText;
    RLBand43: TRLBand;
    RLLabel180: TRLLabel;
    RLLabel181: TRLLabel;
    RLLabel182: TRLLabel;
    RLLabel183: TRLLabel;
    RLLabel184: TRLLabel;
    RLBand44: TRLBand;
    RLLabel185: TRLLabel;
    rl_totbruger_mod03: TRLBand;
    lbl_totbruger_mod03: TRLLabel;
    txt_totbruger_mod03: TRLLabel;
    rl_totdesger_mod03: TRLBand;
    lbl_totdesger_mod03: TRLLabel;
    txt_totdesger_mod03: TRLLabel;
    rl_totliqger_mod03: TRLBand;
    lbl_totliqger_mod03: TRLLabel;
    txt_totliqger_mod03: TRLLabel;
    rl_rodOrcCiente_mod03: TRLBand;
    RLLabel192: TRLLabel;
    RLDBText127: TRLDBText;
    RLLabel193: TRLLabel;
    RLLabel194: TRLLabel;
    RLLabel195: TRLLabel;
    RLLabel196: TRLLabel;
    RLLabel197: TRLLabel;
    RLDBMemo9: TRLDBMemo;
    RLBand49: TRLBand;
    RLDBText128: TRLDBText;
    RLDBText129: TRLDBText;
    RLLabel198: TRLLabel;
    RLLabel199: TRLLabel;
    RLDBText130: TRLDBText;
    RLLabel200: TRLLabel;
    RLDBText131: TRLDBText;
    RLBand50: TRLBand;
    RLSystemInfo9: TRLSystemInfo;
    RLLabel201: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLLabel202: TRLLabel;
    RLSubDetail8: TRLSubDetail;
    RLGroup5: TRLGroup;
    RLBand51: TRLBand;
    RLLabel203: TRLLabel;
    RLLabel204: TRLLabel;
    RLLabel205: TRLLabel;
    RLLabel206: TRLLabel;
    RLLabel207: TRLLabel;
    RLBand52: TRLBand;
    edt_codser_mod03: TRLDBText;
    edt_qtdser_mod03: TRLDBText;
    RLDBText134: TRLDBText;
    edt_pcouniser_mod03: TRLDBText;
    RLDBText136: TRLDBText;
    edt_nomser_mod03: TRLMemo;
    RLBand_serrod_mod03: TRLBand;
    txt_totserbru_m3: TRLLabel;
    RLLabel209: TRLLabel;
    RLBand6_desconto_mod03: TRLBand;
    RLLabel210: TRLLabel;
    txt_totserdesc_m3: TRLLabel;
    RLBand55: TRLBand;
    RLLabel212: TRLLabel;
    txt_totserliq_M3: TRLLabel;
    RLBand56: TRLBand;
    rlObs_pedido_mod03: TRLMemo;
    rl_obs01_mod03: TRLBand;
    RLRichText2: TRLRichText;
    RLMemo12: TRLMemo;
    RLSubDetail9: TRLSubDetail;
    RLBand58: TRLBand;
    RLLabel214: TRLLabel;
    RLBand59: TRLBand;
    RLLabel215: TRLLabel;
    RLLabel216: TRLLabel;
    RLLabel217: TRLLabel;
    RLLabel218: TRLLabel;
    RLLabel219: TRLLabel;
    RLLabel220: TRLLabel;
    RLLabel221: TRLLabel;
    RLLabel222: TRLLabel;
    RLLabel223: TRLLabel;
    RLBand60: TRLBand;
    RLDBText137: TRLDBText;
    RLDBText138: TRLDBText;
    RLDBText139: TRLDBText;
    RLDBText140: TRLDBText;
    RLDBText141: TRLDBText;
    RLDBText142: TRLDBText;
    RLDBMemo10: TRLDBMemo;
    RLDBText143: TRLDBText;
    RLDBText144: TRLDBText;
    RLSubDetail10: TRLSubDetail;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText145: TRLDBText;
    RLDBText146: TRLDBText;
    RLDBText147: TRLDBText;
    RLBand61: TRLBand;
    RLLabel224: TRLLabel;
    RLCabPU_mod03_caixa: TRLLabel;
    RLPU_mod03_caixa: TRLDBText;
    Tb_PendPDMARCA: TStringField;
    Tb_Pendtotal: TFloatField;
    CB_JUROS_MULTAS_LSEP_MOD_PEQ: TCheckBox;
    rlRodJurosMulta: TRLLabel;
    RLDBText107: TRLDBText;
    RLLabel59: TRLLabel;
    mem_cabecalhodata_documento: TStringField;
    cb_totaldescVlrTotLiq: TCheckBox;
    cb_traco_horizontal: TCheckBox;
    cb_traco_vertical: TCheckBox;
    rlcab03_P2VALIPI: TRLLabel;
    rldb03_P2VALIPI: TRLDBText;
    cb_totalItemComIpi: TCheckBox;
    RLDBText108: TRLDBText;
    RLDBMemo8: TRLDBMemo;
    tsModelo04: TTabSheet;
    rlPedidoModelo04: TRLReport;
    RLBand6: TRLBand;
    RLImage_mod04: TRLImage;
    RLDBText109: TRLDBText;
    RLMemo9: TRLMemo;
    RLDBMemo11: TRLDBMemo;
    RLMemo10: TRLMemo;
    RLMemo11: TRLMemo;
    RLMemo13: TRLMemo;
    RLBand26: TRLBand;
    lblObs_mod04: TRLLabel;
    lbl_cabchave_mod04: TRLLabel;
    rl_cabtit_mod04: TRLBand;
    RLLabel145: TRLLabel;
    RLDBText111: TRLDBText;
    RLLabel146: TRLLabel;
    RLDBText112: TRLDBText;
    RLLabel147: TRLLabel;
    RLDBText122: TRLDBText;
    RLLabel148: TRLLabel;
    RLDBText132: TRLDBText;
    RLLabel149: TRLLabel;
    RLDBText133: TRLDBText;
    RLLabel150: TRLLabel;
    RLDBText135: TRLDBText;
    RLLabel151: TRLLabel;
    RLDBText148: TRLDBText;
    RLDBText149: TRLDBText;
    RLLabel153: TRLLabel;
    RLDBText150: TRLDBText;
    RLLabel155: TRLLabel;
    RLDBText151: TRLDBText;
    RLDBText152: TRLDBText;
    RLLabel186: TRLLabel;
    RLDBText153: TRLDBText;
    RLLabel187: TRLLabel;
    RLDBText154: TRLDBText;
    RLLabel188: TRLLabel;
    RLLabel189: TRLLabel;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    RLLabel190: TRLLabel;
    RLLabel191: TRLLabel;
    RLDBText155: TRLDBText;
    RLLabel225: TRLLabel;
    RLDBText156: TRLDBText;
    RLDBText157: TRLDBText;
    RLLabel226: TRLLabel;
    RLDBText158: TRLDBText;
    RLLabel227: TRLLabel;
    RLLabel228: TRLLabel;
    RLDBText159: TRLDBText;
    RLDBText160: TRLDBText;
    RLDBText161: TRLDBText;
    RLDBMemo12: TRLDBMemo;
    RLSubDetail6: TRLSubDetail;
    RLGroup_mod04: TRLGroup;
    RLBand28: TRLBand;
    RLcabCodpro_mod04: TRLLabel;
    RLCabQtd_mod04: TRLLabel;
    RLCabUnd_mod04: TRLLabel;
    RLCabNome_mod04: TRLLabel;
    RLCabMarca_mod04: TRLLabel;
    lbl_secao_mod04: TRLLabel;
    rl_cabamb_mod04: TRLBand;
    RLDBText162: TRLDBText;
    RLBand30: TRLBand;
    RLQtd_mod04: TRLDBText;
    RLUnd_mod04: TRLDBText;
    rlnome_mod04: TRLMemo;
    RLCodpro_mod04: TRLDBText;
    edt_secao_mod04: TRLDBText;
    RLMarca_mod04: TRLDBMemo;
    RLBand42: TRLBand;
    RLRichText3: TRLRichText;
    RLSubDetail_CMET_mod04: TRLSubDetail;
    RLBand45: TRLBand;
    RLLabel254: TRLLabel;
    RLLabel255: TRLLabel;
    RLLabel256: TRLLabel;
    RLLabel257: TRLLabel;
    RLLabel258: TRLLabel;
    RLLabel259: TRLLabel;
    RLBand_cmet_det_mod04: TRLBand;
    RLDBText171: TRLDBText;
    RLDBText172: TRLDBText;
    RLDBText173: TRLDBText;
    RLDBText174: TRLDBText;
    RLDBText175: TRLDBText;
    RLBand47: TRLBand;
    RLLabel262: TRLLabel;
    RLLabel263: TRLLabel;
    RLLabel264: TRLLabel;
    RLLabel265: TRLLabel;
    RLLabel266: TRLLabel;
    RLLabel267: TRLLabel;
    RLLabel268: TRLLabel;
    RLLabel269: TRLLabel;
    RLLabel270: TRLLabel;
    RLSubDetail_kit_mod04: TRLSubDetail;
    RLBand48: TRLBand;
    RLLabel271: TRLLabel;
    RLLabel272: TRLLabel;
    RLLabel273: TRLLabel;
    RLLabel274: TRLLabel;
    RLLabel275: TRLLabel;
    RLBand53: TRLBand;
    RLDBText180: TRLDBText;
    RLDBText181: TRLDBText;
    RLDBText182: TRLDBText;
    RLDBText183: TRLDBText;
    RLDBText184: TRLDBText;
    RLBand54: TRLBand;
    RLLabel276: TRLLabel;
    RLLabel277: TRLLabel;
    RLLabel278: TRLLabel;
    RLLabel279: TRLLabel;
    RLLabel280: TRLLabel;
    RLBand66: TRLBand;
    RLLabel290: TRLLabel;
    RLDBText185: TRLDBText;
    RLLabel291: TRLLabel;
    RLLabel292: TRLLabel;
    RLLabel293: TRLLabel;
    RLLabel294: TRLLabel;
    RLLabel295: TRLLabel;
    RLDBMemo14: TRLDBMemo;
    RLBand67: TRLBand;
    RLDBText186: TRLDBText;
    RLDBText187: TRLDBText;
    RLLabel296: TRLLabel;
    RLLabel297: TRLLabel;
    RLDBText188: TRLDBText;
    RLLabel298: TRLLabel;
    RLDBText189: TRLDBText;
    RLBand68: TRLBand;
    RLSystemInfo13: TRLSystemInfo;
    RLLabel299: TRLLabel;
    RLSystemInfo14: TRLSystemInfo;
    RLLabel300: TRLLabel;
    RLSubDetail12: TRLSubDetail;
    RLGroup6: TRLGroup;
    RLBand69: TRLBand;
    RLLabel301: TRLLabel;
    RLLabel302: TRLLabel;
    RLCabNomes_mod04: TRLLabel;
    RLBand70: TRLBand;
    RLDBText190: TRLDBText;
    RLDBText191: TRLDBText;
    RLDBText192: TRLDBText;
    RLMemo15: TRLMemo;
    RLBand74: TRLBand;
    RLMemo16: TRLMemo;
    RLBand75: TRLBand;
    RLRichText4: TRLRichText;
    RLMemo17: TRLMemo;
    RLSubDet_pedencias_mod04: TRLSubDetail;
    RLBand76: TRLBand;
    RLLabel312: TRLLabel;
    RLBand77: TRLBand;
    RLLabel313: TRLLabel;
    RLLabel314: TRLLabel;
    RLLabel315: TRLLabel;
    RLLabel316: TRLLabel;
    RLLabel317: TRLLabel;
    RLLabel318: TRLLabel;
    RLCabMarcas_mod04: TRLLabel;
    RLBand78: TRLBand;
    RLDBText195: TRLDBText;
    RLDBText196: TRLDBText;
    RLDBText197: TRLDBText;
    RLDBText198: TRLDBText;
    RLDBText199: TRLDBText;
    RLDBText200: TRLDBText;
    RLMarca_pend: TRLDBMemo;
    RLSubDetail_via_corte: TRLSubDetail;
    RLBand_tit_via_de_corte: TRLBand;
    RLLabel322: TRLLabel;
    RLDBText176: TRLDBText;
    RLSubDetail7: TRLSubDetail;
    RLDetailGrid5: TRLDetailGrid;
    RLDBText163: TRLDBText;
    RLDBText164: TRLDBText;
    RLDBText165: TRLDBText;
    RLBand27: TRLBand;
    RLLabel242: TRLLabel;
    RLBand29: TRLBand;
    rllbl_mod04_PTC_SEQ: TRLLabel;
    lbl_mod04_PTC_TIPO_DO_CORTE: TRLLabel;
    Qr_Ped01_tipos_corte: TQuery;
    src_Ped01_tipos_corte: TDataSource;
    Qr_Ped01_tipos_cortePTC_ID: TFloatField;
    Qr_Ped01_tipos_cortePTC_CODEMP: TFloatField;
    Qr_Ped01_tipos_cortePTC_CHAVE: TFloatField;
    Qr_Ped01_tipos_cortePTC_CHAVE_ANO: TFloatField;
    Qr_Ped01_tipos_cortePTC_SEQ: TFloatField;
    Qr_Ped01_tipos_cortePTC_TIPO_DO_CORTE: TStringField;
    rl_detitens_mod04: TRLBand;
    edt_mod04_PTC_SEQ: TRLDBText;
    rldbtext_mod04_PTC_TIPO_DO_CORTE: TRLDBText;
    cb_descricao_fornecedor: TCheckBox;
    sbn_padrao: TSpeedButton;
    RLDBText166: TRLDBText;
    RLLabel143: TRLLabel;
    mem_cabecalhocliente_fantasia: TStringField;
    RLLabel144: TRLLabel;
    RLDBText167: TRLDBText;
    mem_cabecalhocliente_cnomcon: TStringField;
    lbl_cab_valfre: TRLLabel;
    dbtext_cab_valfre: TRLDBText;
    mem_cabecalhovalfre: TFloatField;
    RLSubDet_gru_mod01: TRLSubDetail;
    cds_sub_det_grupo: TClientDataSet;
    src_sub_det_grupo: TDataSource;
    cds_sub_det_grupodescricao: TStringField;
    cds_sub_det_grupovalor: TFloatField;
    RLdet_sub_gru_mod01: TRLBand;
    rldbtext_descricao_gru_mod01: TRLDBText;
    RLDBText169: TRLDBText;
    cds_sub_det_grupocodigo: TIntegerField;
    cds_sub_det_ger: TClientDataSet;
    src_sub_det_ger: TDataSource;
    cds_sub_det_gercodigo: TIntegerField;
    cds_sub_det_gerdescricao: TStringField;
    cds_sub_det_gervalor: TFloatField;
    RLGroup1: TRLGroup;
    rl_cabitens: TRLBand;
    RLcabCodpro: TRLLabel;
    RLCabQtd: TRLLabel;
    RLCabUnd: TRLLabel;
    RLCabNome: TRLLabel;
    RLCabMarca: TRLLabel;
    RLCabPU: TRLLabel;
    RLCabTotal: TRLLabel;
    lbl_secao: TRLLabel;
    rlcab_totdesc: TRLLabel;
    lbl_P2VALIPI: TRLLabel;
    rl_cabamb: TRLBand;
    db_cabamb: TRLDBText;
    rl_detitens: TRLBand;
    RLQtd: TRLDBText;
    RLUnd: TRLDBText;
    rldet_totdesc: TRLDBText;
    RLTotal: TRLDBText;
    rlnome: TRLMemo;
    RLCodPro: TRLDBText;
    edt_secao: TRLDBText;
    RLPU: TRLDBText;
    RLMarca: TRLDBMemo;
    rldb_P2VALIPI: TRLDBText;
    rl_desc: TRLBand;
    TRL_desc: TRLRichText;
    RLSubDetail_CMET: TRLSubDetail;
    RLBand_cmet_cab: TRLBand;
    lbl_cmet_subprod: TRLLabel;
    lbl_cmet_descricao: TRLLabel;
    lbl_cmet_larg: TRLLabel;
    lbl_cmet_peso_unit: TRLLabel;
    lbl_cmet_qtd: TRLLabel;
    lbl_cmet_peso: TRLLabel;
    lbl_cmet_pcouni: TRLLabel;
    lbl_cmet_valor_total: TRLLabel;
    RLBand_cmet_det: TRLBand;
    edt_cmet_subprod: TRLDBText;
    edt_cmet_descricao: TRLDBText;
    edt_cmet_larg: TRLDBText;
    edt_cmet_peso_unit: TRLDBText;
    edt_cmet_qtd: TRLDBText;
    edt_cmet_peso: TRLDBText;
    edt_cmet_pcouni: TRLDBText;
    RLDBText11: TRLDBText;
    edt_cmet_valor_total: TRLDBText;
    RLBand5: TRLBand;
    rod_cmet_peso_unit: TRLLabel;
    rod_cmet_descricao: TRLLabel;
    rod_cmet_subprod: TRLLabel;
    rod_cmet_larg: TRLLabel;
    rod_cmet_qtd: TRLLabel;
    rod_cmet_peso: TRLLabel;
    tot_cmet_pcouni: TRLLabel;
    RLLabel18: TRLLabel;
    tot_cmet_valor_total: TRLLabel;
    RLSubDetail_kit: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel26: TRLLabel;
    RLBand8: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText21: TRLDBText;
    RLBand9: TRLBand;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel27: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure rlPedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_totbrugruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totdesgruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totliqgruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totbrugerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totdesgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totliqgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_detitensAfterPrint(Sender: TObject);
    procedure bbConfigurarClick(Sender: TObject);
    procedure rl_detitensBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_RodOrcObsBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_detserBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_serrodBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_descBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4_totliqBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6_descontoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_cmet_detBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail_kitBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand32BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlPedido2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand16BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand16AfterPrint(Sender: TObject);
    procedure RLBand18BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlSubPen2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totliq_ped2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand20BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure rl_totbruger_mod03BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totdesger_mod03BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totliqger_mod03BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure Tb_PendCalcFields(DataSet: TDataSet);
    procedure RLReport_pedido_pequenoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlband_tot_ipiBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLGroup_mod04BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure CB_RELATORIOClick(Sender: TObject);

    procedure AcionarClick;
    procedure sbn_padraoClick(Sender: TObject);
    procedure CB_DESCOMClick(Sender: TObject);
    procedure RLGroup1AfterPrint(Sender: TObject);

  private
    { Private declarations }
    mCMet_TotPeso: Real;
    mCMet_Totreais: Real;
    mCMet_TotPecas: Real;
    mQtdItens_Kit: Real;
    mQtdPadrao: Boolean;




    procedure fAdicionarValoresNoCds;

    procedure fAjustarColunaTotalDescVlrTotLiq;

    procedure fAtualizarTracoVertical(pTraco: boolean);

    procedure fAtualizarTracoHorizontal(pTraco: boolean);


    procedure fAjustarColunaRlPedido;


    procedure fAjustarColunaRlPedido03;


    procedure fLerCadp01TiposCorte;


    procedure fLerDadosPadros;


    procedure fGravarPadrao;


  public
     mCabRodGrupo: Boolean;

     procedure fCarregarMemory_pedido(pqtdvias: Integer);



     function fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;


    { Public declarations }
  end;

function fAbrirTexto_Fortes(pCodEmp: Real; pCampo_Chave,pcampo: String): String;

procedure JustifyRichEdit(RichEdit :TRichEdit; AllText :Boolean);

var
  Frm_Pedido_Fortes: TFrm_Pedido_Fortes;
  mtotbrugru: Real;
  mtotdesgru: Real;
  mtotliqgru: Real;
  mtotqtdgru: Real=0;
  mtotQtdPadrao: Integer;
  mtotitensgru: Real=0;


  mtotbruger: Real;
  mtotdesger: Real;
  mtotipi: Real;
  mtotliqger: Real;

  mpedido_fortes_origem: String;
  mpedido_fortes_origem_cfg: String;
  mPedido_Fortes_Descricao: Integer=0; // 0-Normal 1-Alternada Digitada 2-Produto Similar 9-Alternada

  mtotserliq, mtotserbru, mtotserdesc: Real;

//  mVctos: String;
implementation

uses S_DM2, S_DM1, Func, S_Editor_Richedit, lerarq, S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_Pedido_Fortes.FormCreate(Sender: TObject);
begin


cds_sub_det_grupo.CreateDataSet;
cds_sub_det_ger.CreateDataSet;


cds_sub_det_grupo.open;
cds_sub_det_ger.open;
cds_sub_det_grupo.IndexFieldNames := 'codigo';
cds_sub_det_ger.IndexFieldNames := 'codigo';


cds_sub_det_grupovalor.DisplayFormat := mcasas;
cds_sub_det_gervalor.DisplayFormat        := mcasas;



DM2.Qr_CorP2VALIPI.DisplayFormat      :=mcasas;

Tb_PendPEPRECO.DisplayFormat      :='#,##0.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
Tb_Pendtotal.DisplayFormat        :=mcasas;

if DM1.Tb_EmpCGC.AsFloat = 12448851000180 then
   lbl_assessor.Caption := 'Prazo de Fabricacao:'
else
   lbl_assessor.Caption := 'Prazo de Entrega:';

lbl_prazoentrega.Caption := lbl_assessor.Caption;

tsModelo03.tabvisible:=false;
tsModelo04.tabvisible:=false;

ts_relatorio2.tabvisible:=false;
if flfilpad(-1,'_VENDA_PRE','CB_QTDCX_PADRAO_LSEP') then
  mqtdpadrao:=DM4.Tb_FilPad2FPVALOR.AsString='true'
else
  mqtdpadrao:=false;



//rl_cablogo
DM1.Tb_Ped01VP1VDATAV.DisplayFormat:=fdt2;
DM1.Tb_Ped01VP1VVALOR.DisplayFormat:=mcasas;

RLSubDetail_CMET_mod04.Borders.DrawTop     :=true;
RLSubDetail_CMET_mod04.Borders.DrawBottom  :=true;
RLBand_cmet_det_mod04.Borders.DrawTop     :=true;

RLSubDetail_CMET.Borders.DrawTop     :=true;
RLSubDetail_CMET.Borders.DrawBottom  :=true;
RLBand_cmet_det.Borders.DrawTop     :=true;
RLBand_cmet_det_mod03.Borders.DrawTop     :=true;


RLSubDet_pedencias.Borders.DrawTop     :=true;
RLSubDet_pedencias.Borders.DrawBottom  :=true;

RLSubDet_pedencias_mod04.Borders.DrawTop     :=true;
RLSubDet_pedencias_mod04.Borders.DrawBottom  :=true;

RLBand_pend_cabger.Borders.DrawBottom  :=true;
RLBand_pend_cabdet.Borders.DrawBottom  :=true;

lbl_PEQTDPED.Borders.DrawLeft          :=true;
lbl_PEQTDENV.Borders.DrawLeft          :=true;
lbl_PEQTDPEN.Borders.DrawLeft          :=true;
lbl_PDUND.Borders.DrawLeft             :=true;
lbl_PDNOME.Borders.DrawLeft            :=true;

RLDB_PEQTDPED.Borders.DrawLeft          :=true;
RLDB_PEQTDENV.Borders.DrawLeft          :=true;
RLDB_PEQTDPEN.Borders.DrawLeft          :=true;
RLDB_PDUND.Borders.DrawLeft             :=true;
RLDB_PDNOME.Borders.DrawLeft            :=true;



//RLBand_cmet_cab.Borders.DrawBottom   :=true;
Qr_Ped02_CMetP2CM_QTD_KG.DisplayFormat:='#,##0.000';
Qr_Ped02_CMetP2CM_QTD_KG_UNIT.DisplayFormat:='#,##0.000';
Qr_Ped02_CMetP2CM_PITEM_PRECO.DisplayFormat:=mcasaspu;
Qr_Ped02_CMetvalor_total.DisplayFormat:=mcasas;

RLBand5.Borders.DrawTop              :=true;
lbl_cmet_descricao.Borders.DrawLeft  :=true;
lbl_cmet_larg.Borders.DrawLeft       :=true;
lbl_cmet_peso.Borders.DrawLeft       :=true;

lbl_cmet_peso.Borders.DrawLeft       :=true;

lbl_cmet_valor_total.Borders.DrawLeft       :=true;
edt_cmet_valor_total.Borders.DrawLeft       :=true;
tot_cmet_valor_total.Borders.DrawLeft       :=true;


lbl_cmet_pcouni.Borders.DrawLeft       :=true;
edt_cmet_pcouni.Borders.DrawLeft       :=true;
tot_cmet_pcouni.Borders.DrawLeft       :=true;



lbl_cmet_qtd.Borders.DrawLeft       :=true;

edt_cmet_descricao.Borders.DrawLeft  :=true;
edt_cmet_larg.Borders.DrawLeft       :=true;
edt_cmet_peso.Borders.DrawLeft       :=true;
lbl_cmet_peso_unit.Borders.DrawLeft       :=true;
edt_cmet_peso_unit.Borders.DrawLeft       :=true;
edt_cmet_qtd.Borders.DrawLeft       :=true;

rod_cmet_descricao.Borders.DrawLeft  :=true;
rod_cmet_larg.Borders.DrawLeft       :=true;
rod_cmet_peso.Borders.DrawLeft       :=true;
rod_cmet_peso_unit.Borders.DrawLeft       :=true;
rod_cmet_qtd.Borders.DrawLeft       :=true;


rlPedido.Borders.DrawLeft    :=true;
rlPedido.Borders.DrawRight   :=true;
rlPedido.Borders.DrawTop     :=true;
rlPedido.Borders.DrawBottom  :=true;

rlPedidoModelo04.Borders.DrawLeft    :=true;
rlPedidoModelo04.Borders.DrawRight   :=true;
rlPedidoModelo04.Borders.DrawTop     :=true;
rlPedidoModelo04.Borders.DrawBottom  :=true;


RLImage_mod04.Borders.DrawRight:=true;
rl_cabtit_mod04.Borders.DrawTop     :=true;
rl_cabtit_mod04.Borders.DrawBottom  :=true;


RLImage_cab.Borders.DrawRight:=true;
rl_cabtit.Borders.DrawTop     :=true;
rl_cabtit.Borders.DrawBottom  :=true;
RLcabcli.Borders.DrawBottom  :=true;
rl_cabamb.Borders.DrawBottom  :=true;
rl_cabamb_mod04.Borders.DrawBottom  :=true;
rl_cabitens.Borders.DrawBottom  :=true;
{
rl_totbrugru.Borders.DrawBottom  :=true;
rl_totdesgru.Borders.DrawBottom  :=true;
rl_totliqgru.Borders.DrawBottom  :=true;
rl_totbruger.Borders.DrawBottom  :=true;
rl_totdesger.Borders.DrawBottom  :=true;
rl_totliqger.Borders.DrawBottom  :=true;
}
//rl_RodOrcObs.Borders.DrawBottom :=true;
rlObs_pedido.Borders.DrawBottom :=true;
rl_obs01.Borders.DrawBottom :=true;
rl_rodOrcCiente.Borders.DrawBottom :=true;






//RLCabNome.Borders.DrawRight:=true;









//RLNome.Borders.DrawRight:=true;

edt_codser.Borders.DrawRight:=true;
edt_qtdser.Borders.DrawRight:=true;
edt_pcouniser.Borders.DrawRight:=true;
edt_nomser.Borders.DrawRight:=true;



rldbtext_descricao_gru_mod01.Borders.DrawRight:=true;
RLSubDet_gru_mod01.Borders.Drawtop:=true;
RLSubDet_gru_mod01.Borders.Drawbottom:=true;


RLBand_detser.Borders.DrawBottom:=true;
RLBand_serrod.Borders.DrawBottom:=true;
{
lbl_totbrugru.Borders.DrawRight:=true;
lbl_totdesgru.Borders.DrawRight:=true;
lbl_totliqgru.Borders.DrawRight:=true;

lbl_totbruger.Borders.DrawRight:=true;
lbl_totdesger.Borders.DrawRight:=true;
lbl_totdesger.Borders.DrawRight:=true;

lbl_totipi.Borders.DrawRight:=true;

rlband_tot_ipi.Borders.DrawRight:=true;
rlband_tot_ipi.Borders.DrawRight:=true;
rlband_tot_ipi.Borders.DrawRight:=true;
 }


// modelo 03 inicio

rlPedidoModelo03.Borders.DrawLeft    :=true;
rlPedidoModelo03.Borders.DrawRight   :=true;
rlPedidoModelo03.Borders.DrawTop     :=true;
rlPedidoModelo03.Borders.DrawBottom  :=true;
RLImage_mod03.Borders.DrawRight:=true;
rl_cabtit_mod03.Borders.DrawTop     :=true;
rl_cabtit_mod03.Borders.DrawBottom  :=true;
RLcabcli_mod03.Borders.DrawBottom  :=true;
rl_cabamb_mod03.Borders.DrawBottom  :=true;
rl_cabamb_mod04.Borders.DrawBottom  :=true;
rl_cabitens_mod03.Borders.DrawBottom  :=true;
rl_totbrugru_mod03.Borders.DrawBottom  :=true;
rl_totdesgru_mod03.Borders.DrawBottom  :=true;
rl_totliqgru_mod03.Borders.DrawBottom  :=true;
rl_totbruger_mod03.Borders.DrawBottom  :=true;
rl_totdesger_mod03.Borders.DrawBottom  :=true;
rl_totliqger_mod03.Borders.DrawBottom  :=true;
//rl_RodOrcObs.Borders.DrawBottom :=true;
rlObs_pedido_mod03.Borders.DrawBottom :=true;
rl_obs01_mod03.Borders.DrawBottom :=true;
rl_rodOrcCiente_mod03.Borders.DrawBottom :=true;










//RLNome.Borders.DrawRight:=true;



edt_codser_mod03.Borders.DrawRight:=true;
edt_qtdser_mod03.Borders.DrawRight:=true;
edt_pcouniser_mod03.Borders.DrawRight:=true;
edt_nomser_mod03.Borders.DrawRight:=true;

RLBand_detser_mod03.Borders.DrawBottom:=true;
RLBand_serrod_mod03.Borders.DrawBottom:=true;
lbl_totbrugru_mod03.Borders.DrawRight:=true;
lbl_totdesgru_mod03.Borders.DrawRight:=true;
lbl_totliqgru_mod03.Borders.DrawRight:=true;

lbl_totbruger_mod03.Borders.DrawRight:=true;
lbl_totdesger_mod03.Borders.DrawRight:=true;
lbl_totliqger_mod03.Borders.DrawRight:=true;


// modelo 03 fim


fSalvarImagem('CABREL','C:\SGE\CABREL.JPG');
if FileExists('C:\SGE\CABREL.JPG')then
   begin
   RLImage_cab.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
   RLImage_cab2.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
   RLImage_mod03.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
   RLImage_mod04.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
   deletefile('C:\SGE\CABREL.JPG');
   end;

lbl_cnpj_ie.Lines.Add('CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value);
rlcab_fonefax.Lines.clear;
mcinst4:='';
if LENGTH(DM1.Tb_EmpFONE.AsString)>2 then
   mcinst4:='Fone: '+DM1.Tb_EmpFONE.AsString
else
if LENGTH(DM1.Tb_EmpFAX.AsString)>2 then
   mcinst4:=mcinst4+' '+rlcab_fonefax.Caption+' WhatsApp: '+DM1.Tb_EmpFAX.AsString;
rlcab_fonefax.Lines.Add(mcinst4);
rlcab_email.Lines.Clear;
if LENGTH(DM1.Tb_EmpE_MAIL.AsString)>2 then
   rlcab_email.Lines.Add('E-Mail: '+DM1.Tb_EmpE_MAIL.AsString);
rl_cabhome.Lines.Clear;

if LENGTH(DM1.Tb_EmpHOMEPAGE.AsString)>2 then
   rl_cabhome.Lines.Add('Site: '+DM1.Tb_EmpHOMEPAGE.AsString);

{
if fileexists(mcinst4) then
   begin
   RichEdit1.Width:=txt_desctecnica.Width;
   RichEdit1.Lines.Clear;
   RichEdit1.Lines.LoadFromFile(mcinst4);
   JustifyRichEdit(RichEdit1,true);
   RichEdit1.Lines.SaveToFile('c:\lobo.rtf');
   txt_desctecnica.Lines.LoadFromFile('c:\lobo.rtf');

//   txt_desctecnica. :=RichEdit1;

   end;

}


{

if CB_PEDPEQ_DESCCOMP_MARCA.Checked=true then
   begin
   rcab_marca.Caption:='Desc.Compl';
   RLCabMarca.Caption:='Desc.Compl';
   rlcab_marca.Caption:='Desc.Compl';
   rldet_marca.DataField:='P2COMPLEMENTO';
   rldetped_marca.DataField:='P2COMPLEMENTO';
   RLMarca.DataField:='P2COMPLEMENTO';
   end
else
   begin
   rcab_marca.Caption:='Marca';
   RLCabMarca.Caption:='Marca';
   rlcab_marca.Caption:='Marca';
   rldet_marca.DataField:='PDMARCA';
   rldetped_marca.DataField:='PDMARCA';
   RLMarca.DataField:='PDMARCA';
   end;
}
if CB_CABCLI.Checked=false then
   RLcabcli.Degrade.Direction:=ddNone;

if CB_CABSER.Checked=false then
   RLSubDetail3_Servicos.Degrade.Direction:=ddNone;


if cb_descom.Checked then
  begin
  fGerarEvento('991 DESCRICAO COMPLEMENTAR AO INVES DE MARCA');
  RLCabMarca.Caption:='Complementar';
  RLMarca.DataField :='P2COMPLEMENTO';
   rcab_marca.Caption:='Desc.Compl';
   RLCabMarca.Caption:='Desc.Compl';
   rlcab_marca.Caption:='Desc.Compl';
   rldet_marca.DataField:='desc_complementar';
   rldetped_marca.DataField:='P2COMPLEMENTO';
   RLMarca.DataField:='P2COMPLEMENTO';

  end
else
  begin
  fGerarEvento('1004 ATIVADO MARCA ');
  RLCabMarca.Caption:='Marca';
  RLMarca.DataField :='PDMARCA';
   rcab_marca.Caption:='Marca';
   RLCabMarca.Caption:='Marca';
   rlcab_marca.Caption:='Marca';
   rldet_marca.DataField:='marca';
   rldetped_marca.DataField:='PDMARCA';
   RLMarca.DataField:='PDMARCA';

  end;

if flfilpad(0,'_principal','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MARCA_LSEP',[]) then
    begin
    if DM4.Tb_FilPad2FPVALOR.AsString='true' then
      begin
      RLCabMarca.Visible:=True;
      RLMarca.Visible:=True;
//      RLCabNome.Width:=280;
      end
    else
      begin
      RLCabMarca.Visible:=False;
      RLMarca.Visible:=False;
  //    RLCabNome.Width:=392;
      end;
    end
  else
    begin
    RLCabMarca.Visible:=False;
    RLMarca.Visible:=False;
    end;
  end;

//iif(Qr_RelTCIMPPD.IsNull,0,Qr_RelTCIMPPD.AsInteger);
if (dm1.Tb_TDVCATCIMPPD.IsNull) or (dm1.Tb_TDVCATCIMPPD.AsInteger=0) then
  begin
  RLLabel16.Visible:=False;
  RLDBText10.Visible:=False;
  rl_RodOrcObs.Height:=67;

  RLLabel200.Visible:=False;
  RLDBText131.Visible:=False;
  RLBand49.Height:=67;

  end
else
  begin
  RLLabel16.Visible:=True;
  RLDBText10.Visible:=True;
  rl_RodOrcObs.Height:=78;

  RLLabel200.Visible:=true;
  RLDBText131.Visible:=true;
  RLBand49.Height:=78;

  end;
fLerCadp01TiposCorte;
end;

// AllText : True=todo o texto; False=parágrafo atual
procedure JustifyRichEdit(RichEdit :TRichEdit; AllText :Boolean);
const
  TO_ADVANCEDTYPOGRAPHY   = $1;
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
var
  ParaFormat :TParaFormat;
  SelStart,
  SelLength :Integer;
begin
  ParaFormat.cbSize := SizeOf(ParaFormat);
  if SendMessage(RichEdit.handle,
              EM_SETTYPOGRAPHYOPTIONS,
              TO_ADVANCEDTYPOGRAPHY,
              TO_ADVANCEDTYPOGRAPHY) = 1 then
  begin
    SelStart := RichEdit.SelStart;
    SelLength := RichEdit.SelLength;
    if AllText then
      RichEdit.SelectAll;
    ParaFormat.dwMask := PFM_ALIGNMENT;
    ParaFormat.wAlignment := PFA_JUSTIFY;
    SendMessage(RichEdit.handle, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
// Restaura seleção caso tenhamos mudado para All
    RichEdit.SelStart := SelStart;
    RichEdit.SelLength := SelLength;
  end;



end;

procedure TFrm_Pedido_Fortes.rlPedidoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Gru, Ram : Integer;
begin
IF cb_marcanao.Checked=true then
   begin
//   RLCabNome.Width:=279+112;
//   rlcab_pdnome.Width:=276+112;
   RLCabMarca_mod04.visible:=false;
   RLMarca_pend.visible:=false;
   end;


  lblObs.Caption:=mpedido_fortes_origem;

if mpedido_fortes_origem='ORCAMENTO_NORMAL' then
  lblObs.Caption:='Orçamento'
else if mpedido_fortes_origem='ORCAMENTO_AMBIENTE' then
  lblObs.Caption:='Orçamento Ambiente'
else if mpedido_fortes_origem='LISTA_SEPARACAO' then
  lblObs.Caption:='Lista de Separação';

lblObs_mod03.Caption:=lblObs.Caption;


lbl_secao.Visible:=false;
edt_secao.Visible:=false;
RLcabCodpro.Width:=94;
if (mpedido_fortes_origem='LISTA_SEPARACAO')  or (mpedido_fortes_origem='Venda Normal')then
   begin
   if cb_secao_lsep.Checked then
      begin
//      RLcabCodpro.Width:=46;
      lbl_secao.Visible:=true;
      edt_secao.Visible:=true;
      end;
   end;


if (mpedido_fortes_origem='LISTA_SEPARACAO')  or (mpedido_fortes_origem='Venda Normal')then
   begin
   Tb_Pend.close;
   Tb_Pend.sql.clear;
   Tb_Pend.sql.Add('select PDNOME,PDUND,PDMARCA,cadpen.* from cadpen,CADPRO '
                  +' where pdcodpro=pecodpro '
                  +' and PECHAVE=:CHAVE '
                  +' and PELOTSEQ=:LOTSEQ '
                  +' order by PDNOME ');
   Tb_Pend.ParamByName('CHAVE').AsFloat:=DM2.Qr_CabP1CHAVE.AsFloat;
   Tb_Pend.ParamByName('LOTSEQ').AsFloat:=DM2.Qr_CabP1LOTSEQ.AsFloat;
   Tb_Pend.Open;
   RLSubDet_pedencias.Visible:=true;
   end
else
   RLSubDet_pedencias.Visible:=false;

RLSubDet_pedencias_mod04.Visible:=RLSubDet_pedencias.Visible;

lbl_P2VALIPI.Visible  := (DM2.Qr_CabP1IPIPOS.AsFloat+DM2.Qr_CabP1IPINEG.AsFloat+DM2.Qr_CabP1IPIINA.AsFloat)>0;
rldb_P2VALIPI.Visible := lbl_P2VALIPI.Visible;

rlcab03_P2VALIPI.Visible  := lbl_P2VALIPI.Visible;
rldb03_P2VALIPI.Visible := lbl_P2VALIPI.Visible;

if CB_CABDESC.Checked then
   begin
   rlcab_totdesc.Visible:=true;
   end
else
   begin
   RLCabNome.Width:=RLCabNome.Width+rlcab_totdesc.Width;
   rlcab_totdesc.Visible:=false;
   end;
rldet_totdesc.Visible := rlcab_totdesc.Visible;

mtotserliq:=0;
mtotserbru:=0;
mtotserdesc:=0;
mCMet_TotPeso:=0;

mCMet_Totreais:=0;
mCMet_TotPecas:=0;

{
mVctos:='';
if DM2.Qr_Cabp1vlr01.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd01.AsString+'-'+DM2.Qr_Cabdtvcto01.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr01.AsFloat),' ',10)+' ';

if DM2.Qr_Cabp1vlr02.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd02.AsString+'-'+DM2.Qr_Cabdtvcto02.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr02.AsFloat),' ',10)+' ';

if DM2.Qr_Cabp1vlr03.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd03.AsString+'-'+DM2.Qr_Cabdtvcto03.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr03.AsFloat),' ',10)+' ';

if DM2.Qr_Cabp1vlr04.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd04.AsString+'-'+DM2.Qr_Cabdtvcto04.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr04.AsFloat),' ',10)+' ';
if DM2.Qr_Cabp1vlr05.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd05.AsString+'-'+DM2.Qr_Cabdtvcto05.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr05.AsFloat),' ',10)+' ';

if DM2.Qr_Cabp1vlr06.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd06.AsString+'-'+DM2.Qr_Cabdtvcto06.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr06.AsFloat),' ',10)+' ';
if DM2.Qr_Cabp1vlr07.AsFloat<>0 then
   mVctos:=mVctos+DM2.Qr_Cabdesd07.AsString+'-'+FormatDateTime(fdt2, DM2.Qr_Cabp1dtv07.AsDateTime)+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr07.AsFloat),' ',10)+' ';
tl_det.Lines.Clear;
tl_det.Lines.Add(mVctos);
}
mtotbrugru:=0;
mtotdesgru:=0;
mtotliqgru:=0;
mtotqtdgru:=0;
mTotQtdPadrao:=0;
mtotitensgru:=0;


mtotbruger:=0;
mtotdesger:=0;
mtotipi   :=0;

mtotliqger:=0;
mcinst4:= fAbrirTexto_Fortes(codemp,mpedido_fortes_origem,'OBS01');

rlObs_pedido.Lines.Text:='Obs.: '+DM2.Qr_CabP1OBS2.AsString;
//                        +DM2.Qr_CabP1OBS3.AsString;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' SELECT PDCODGRU , PDCODRAM, GRTEXTO, RTEXTO ');
DM1.Query1.SQL.Add(' FROM CADP02, CADPRO, CADGRU, CADRAM ');
DM1.Query1.SQL.Add(' WHERE P2CHAVE='+DM2.Qr_CabP1CHAVE.AsString);
DM1.Query1.SQL.Add('   AND P2CODEMP='+DM2.Qr_CabP1CODEMP.AsString);
DM1.Query1.SQL.Add('   AND PDCODPRO=P2CODPRO AND ');
DM1.Query1.SQL.Add('       RCODRAM=PDCODRAM AND PDCODGRU=GRCODGRU ');
DM1.Query1.SQL.Add(' GROUP BY P2CHAVE,PDCODGRU, PDCODRAM, GRTEXTO, RTEXTO ');
DM1.Query1.SQL.Add(' ORDER BY PDCODGRU, PDCODRAM');
try
  DM1.Query1.Open;
except
  DM1.Query1.sql.savetofile(mpastatemp +'sql.txt');
  end;
Gru:=0;
Ram:=0;
mcinst2:='';
mcinst3:='';
Frm_Pedido_Fortes.obs_extra.Lines.Clear;
while not DM1.Query1.Eof do
  begin
  if Gru<>DM1.Query1.FieldByName('PDCODGRU').AsInteger then
    Frm_Pedido_Fortes.obs_extra.Lines.Add(DM1.Query1.FieldByName('GRTEXTO').AsString);
  if (Ram<>DM1.Query1.FieldByName('PDCODRAM').AsInteger) or (Gru<>DM1.Query1.FieldByName('PDCODGRU').AsInteger) then
    Frm_Pedido_Fortes.obs_extra.Lines.Add(DM1.Query1.FieldByName('RTEXTO').AsString);
   Gru:=DM1.Query1.FieldByName('PDCODGRU').AsInteger;
   Ram:=DM1.Query1.FieldByName('PDCODRAM').AsInteger;
   DM1.Query1.Next;
   end;
mcinst2:=Frm_Pedido_Fortes.obs_extra.Lines.Text;
if (trim(mcinst4)='') and (trim(mcinst2)='') then
   rl_obs01.Visible:=false
else if trim(mcinst4)<>'' then
   begin
   Frm_Pedido_Fortes.txt_obs01.Lines.Clear;
   Frm_Pedido_Fortes.txt_obs01.Lines.LoadFromFile(mcinst4);
   DeleteFile(mcinst4);
   end;
mcinst2:='';

lbl_cabchave.Caption:='CHAVE: '+FormatFloat('000000', DM2.Qr_CabP1CHAVE.AsFloat);
lbl_cabchave_mod03.Caption:=lbl_cabchave.Caption;
lbl_cabchave_mod04.Caption:=lbl_cabchave.Caption;

  lblObs.Caption:=mpedido_fortes_origem;

if mpedido_fortes_origem='ORCAMENTO_NORMAL' then
  lblObs.Caption:='Orçamento'
else if mpedido_fortes_origem='ORCAMENTO_AMBIENTE' then
  lblObs.Caption:='Orçamento Ambiente'
else if mpedido_fortes_origem='LISTA_SEPARACAO' then
  lblObs.Caption:='Lista de Separação';

lblObs_mod04.Caption:=lblObs.Caption;



IF (mpedido_fortes_origem='ORCAMENTO_NORMAL') or (mpedido_fortes_origem='LISTA_SEPARACAO')
   or (uppercase(mpedido_fortes_origem)='VENDA NORMAL') then
   begin
   if (not mCabRodGrupo) OR (DM2.Qr_CabP1TOTALB.AsFloat=DM2.Qr_CabP1TOTALL.AsFloat)  then

      begin


      rl_cabamb_mod03.Visible   :=false;
      rl_cabamb_mod04.Visible   :=false;
      rl_totbrugru_mod03.Visible:=false;
      rl_totdesgru_mod03.Visible:=false;
      rl_totliqgru_mod03.Visible:=false;

      rl_cabamb.Visible   :=false;
//      rl_totbrugru.Visible:=false;
//      rl_totdesgru.Visible:=false;
//      rl_totliqgru.Visible:=false;


      if(DM2.Qr_CabP1TOTALB.AsFloat=DM2.Qr_CabP1TOTALL.AsFloat) then
         begin
//         rl_totliqger.Borders.DrawTop:=true;
//         rl_totbruger.Visible:=false;
//         rl_totdesger.Visible:=false;

//         rlband_tot_ipi.Visible:=false;
         RLBand6_desconto.Visible:=false;


         RLBand_serrod.Visible:=false;


         rl_totliqger_mod03.Borders.DrawTop:=true;
         rl_totbruger_mod03.Visible:=false;
         rl_totdesger_mod03.Visible:=false;
         RLBand_serrod_mod03.Visible:=false;
         RLBand6_desconto_mod03.Visible:=false;


         end
      else
         begin
//         rlband_tot_ipi.Visible  :=(DM2.Qr_CabP1IPIPOS.AsFloat+DM2.Qr_CabP1IPINEG.AsFloat+DM2.Qr_CabP1IPIINA.AsFloat)>0;
//         rl_totdesger.Visible:=DM2.Qr_CabP1TOTDES.AsFloat>0;

         end;


      end;
   end
else if DM2.Qr_CabP1TOTALB.AsFloat=DM2.Qr_CabP1TOTALL.AsFloat then
   begin
//   rl_totbrugru.Visible:=false;
//   rl_totdesgru.Visible:=false;
//   rl_totbruger.Visible:=false;
//   rl_totdesger.Visible:=false;
   RLBand_serrod.Visible:=false;
   RLBand6_desconto.Visible:=false;


   rl_totbrugru_mod03.Visible:=false;
   rl_totdesgru_mod03.Visible:=false;
   rl_totbruger_mod03.Visible:=false;
   rl_totdesger_mod03.Visible:=false;
   RLBand_serrod_mod03.Visible:=false;
   RLBand6_desconto_mod03.Visible:=false;

   end

else
   begin
//   rlband_tot_ipi.Visible  :=(DM2.Qr_CabP1IPIPOS.AsFloat+DM2.Qr_CabP1IPINEG.AsFloat+DM2.Qr_CabP1IPIINA.AsFloat)>0;
//   rl_totdesger.Visible:=(DM2.Qr_CabP1TOTDES.AsFloat>0);

   end;


if (DM2.Qr_CabP1TOTALL.AsFloat=DM2.Qr_CabP1TOTSERLIQ.AsFloat) or ( DM2.Qr_Cor.IsEmpty) then
   begin
//   rl_totbruger.Visible:=false;
//   rl_totdesger.Visible:=false;
//   rl_totliqger.Visible:=false;
   rl_totbruger_mod03.Visible:=false;
   rl_totdesger_mod03.Visible:=false;
   rl_totliqger_mod03.Visible:=false;

   if (DM2.Qr_CabP1TOTALL.AsFloat=DM2.Qr_CabP1TOTSERLIQ.AsFloat)  then
      begin
      RLBand_serrod.Visible:=false;
      RLBand6_desconto.Visible:=false;
      RLBand_serrod_mod03.Visible:=false;
      RLBand6_desconto_mod03.Visible:=false;

      end;


   end
else
   begin
//   rlband_tot_ipi.Visible  :=(DM2.Qr_CabP1IPIPOS.AsFloat+DM2.Qr_CabP1IPINEG.AsFloat+DM2.Qr_CabP1IPIINA.AsFloat)>0;
//   rl_totdesger.Visible:=(DM2.Qr_CabP1TOTDES.AsFloat>0);

   end;

{
if rl_totbrugru.Visible then
   mCabRodGrupo:=true
else
   mCabRodGrupo:=false;
}
fAjustarColunaTotalDescVlrTotLiq;

fAjustarColunaRlPedido;
fAjustarColunaRlPedido03;

mtotipi := DM2.Qr_CabP1IPIPOS.AsFloat + DM2.Qr_CabP1IPINEG.AsFloat +DM2.Qr_CabP1IPIINA.AsFloat;

end;

procedure TFrm_Pedido_Fortes.rl_totbrugruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totbrugru.Caption:=FormatFloat(mcasas, mtotbrugru);
//mtotbrugru:=0;

end;

procedure TFrm_Pedido_Fortes.rl_totdesgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totdesgru.Caption:=FormatFloat(mcasas, mtotdesgru);
//mtotdesgru:=0;

end;

procedure TFrm_Pedido_Fortes.rl_totliqgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
// txt_totliqgru.Caption:=FormatFloat(mcasas, mtotliqgru);
// mtotliqgru:=0;

end;

procedure TFrm_Pedido_Fortes.rl_totbrugerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totbruger.Caption:=FormatFloat(mcasas, mtotbruger);
mtotbruger:=0;


end;

procedure TFrm_Pedido_Fortes.rl_totdesgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totdesger.Caption:=FormatFloat(mcasas,mtotdesger);

end;

procedure TFrm_Pedido_Fortes.rl_totliqgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totliqger.Caption:=FormatFloat(mcasas, mtotliqger);
mtotliqger:=0;
end;
procedure tFrm_pedido_fortes.fAdicionarValoresNoCds;
   procedure fAdicionarValor(pcodigo: Integer; pDescricao: String;  pValor: real);
   begin
   if (pValor<>0) then
      begin
      if not cds_sub_det_grupo.Locate('codigo',pcodigo,[]) then
         begin
         cds_sub_det_grupo.Append;
         cds_sub_det_grupocodigo.value   :=pCodigo;
         cds_sub_det_grupodescricao.value:=pDescricao;
         cds_sub_det_grupovalor.value    :=0;

         end
      else
         cds_sub_det_grupo.Edit;
      cds_sub_det_grupovalor.value    := cds_sub_det_grupovalor.value + pValor;
      cds_sub_det_grupo.Post;
      cds_sub_det_grupo.First;
      end;
   end;

begin

if DM2.Qr_CabP1TOTALB.AsFloat=DM2.Qr_CabP1TOTALL.AsFloat then
   fAdicionarValor(1,'Total Liquido:',DM2.Qr_Cortotal.AsFloat)
else
   begin
   fAdicionarValor(1,'Total Bruto:',DM2.Qr_Cortotal.AsFloat);
   fAdicionarValor(8,'Total Liquido:',DM2.Qr_CabP1TOTALL.AsFloat);
   end;

fAdicionarValor(2,'Total Desconto:',DM2.Qr_CorP2TOTDES.AsFloat);
fAdicionarValor(3,'Outras Seguro:',DM2.Qr_CorP2VSEGRAT.AsFloat);
fAdicionarValor(4,'Outras Despesas:',DM2.Qr_CorP2VDESPACESRAT.AsFloat);
fAdicionarValor(5,'IPI:',DM2.Qr_CorP2VALIPI.AsFloat);
fAdicionarValor(6,'Valor do Frete:',DM2.Qr_CorP2VFRERAT.AsFloat);
fAdicionarValor(7,'Icms Retido:',DM2.Qr_CorP2ICMSR.AsFloat);






end;


procedure TFrm_Pedido_Fortes.rl_detitensAfterPrint(Sender: TObject);
var
mValorGenerico01: string;
mQtdPad: integer;
begin
fAdicionarValoresNoCds();


mtotbrugru:=mtotbrugru+DM2.Qr_Cortotal.AsFloat;

mtotdesgru:=mtotdesgru+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqgru:=mtotliqgru+DM2.Qr_Cortotal_liquido.AsFloat;
mtotqtdgru:=mtotqtdgru+DM2.Qr_CorP2QTD.AsFloat;
mtotitensgru:=mtotitensgru+1;
mQtdPad:=0;

if fLerGenerico01_campos('CADPRO','PDEMBPAD',' PDCODPRO='+DM2.Qr_CorP2CODPRO.asstring,mvalorgenerico01) then
   begin
   if valint(mValorGenerico01)>0 then
      begin
      try
         mQtdPad:=trunc( DM2.Qr_CorP2QTD.asfloat / (valint(mValorGenerico01)));
      except
         mQtdPad:=0;
         end;
      if DM2.Qr_CorP2QTD.AsFloat>(mQtdPad*valint(mvalorgenerico01)) then
         mQtdPad:=mQtdPad+1;
      end;
   end;
mtotQtdPadrao:=mtotQtdPadrao+mQtdPad;
{
mtotdesger:=mtotdesger+DM2.Qr_CorP2TOTDES.AsFloat total.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqger:=mtotliqger+DM2.Qr_Cortotal_liquido.AsFloat+DM2.Qr_CorP2VALIPI.AsFloat;
}
mtotdesger:=mtotdesger+DM2.Qr_CorP2TOTDES.AsFloat;
mtotliqger:=mtotliqger+DM2.Qr_Cortotal_liquido.AsFloat;

if mCabRodGrupo=true then
   begin
   if mtotdesgru=0 then
      begin
//       rl_totbrugru.Visible:=false;
//       rl_totdesgru.Visible:=false;
      end
   else
      begin
//       rl_totbrugru.Visible:=true;
//       rl_totdesgru.Visible:=true;
      end
   end;

end;

procedure TFrm_Pedido_Fortes.bbConfigurarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Editor_Richedit,Frm_Editor_Richedit);
if CB_RELATORIO.ItemIndex=1 then
   begin
   mRel_Chave :='ORCAMENTO_NORMAL';
   if CB_TEXTO.ItemIndex=0 then
      mRel_Campo :='OBS01';
   end
else if CB_RELATORIO.ItemIndex=0 then
   begin
   mRel_Chave :='ORCAMENTO_AMBIENTE';
   if CB_TEXTO.ItemIndex=0 then
      mRel_Campo :='OBS01';
   end
else if CB_RELATORIO.ItemIndex=2 then
   begin
   mRel_Chave :='LISTA_SEPARACAO';
   if CB_TEXTO.ItemIndex=0 then
      mRel_Campo :='OBS01';
   end;
mRel_Codemp:=codemp;
fAbrirTexto_Rich(MREL_Codemp,mrel_chave,mrel_campo);
Frm_Editor_Richedit.ShowModal;

Frm_Editor_Richedit.Free;
Frm_Editor_Richedit:=nil;

end;
function fAbrirTexto_Fortes(pCodEmp: Real; pCampo_Chave,pcampo: String): String;
var
mTabTemp: String;
begin
mTabTemp:='';
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TD_CODEMP,TD_CHAVE_REL,TD_PAG,TD_TEXTO from CADTEXTO_DIV '
                  +' where TD_CODEMP=:TD_CODEMP '
                  +' and TD_CHAVE_REL=:TD_CHAVE_REL '
                  +' and TD_CAMPO    =:CAMPO');
DM1.Query3.ParamByName('TD_CODEMP').AsFloat    :=pCodEmp;
DM1.Query3.ParamByName('TD_CHAVE_REL').AsString:=pCampo_Chave;
DM1.Query3.ParamByName('CAMPO').AsString       :=pCampo;
DM1.Query3.Open;
if not DM1.Query3.Eof then
   begin
   mTabTemp:=fproctemp(41)+'.rtf';
   While not DM1.Query3.Eof do
      begin
      assignfile(f,MtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('TD_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   end;
result:=mTabTemp;

end;


procedure TFrm_Pedido_Fortes.rl_detitensBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  mNomeTemp: String;
  x: Integer;
begin
RLNome.Lines.Clear;
RLNome2.Lines.Clear;

if (mPedido_Fortes_Descricao=0) or (mPedido_Fortes_Descricao=3) then
   begin
//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
    if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
      begin
      RLNome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
      RLNome2.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
      end
   else
      begin
      RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString);
      RLNome2.Lines.Add(DM2.Qr_CorPDNOME.AsString);
      end;

   end
else if mPedido_Fortes_Descricao=9 then
   begin
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO2 AS PDS_TEXTO FROM CADPRO_SOBRE where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+DM2.Qr_CorP2CODEMP.AsString+' and ')
                        +' PDS_CODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' ORDER BY PDS_PAG ');
   DM1.Query3.Open;
   if DM1.Query3.Eof then
      begin

//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
        if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then

            begin
            RLNome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
            RLNome2.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
            end
         else
            begin
            RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString);
            RLNome2.Lines.Add(DM2.Qr_CorPDNOME.AsString);
            end;

      end
   else
      begin
      mNomeTemp:=fproctemp(41)+'.rtf';
      While not DM1.Query3.Eof do
         begin
         assignfile(f,mNomeTemp);
         rewrite(f);
         While not DM1.Query3.Eof do
            begin
            writeln(f,DM1.Query3.fieldbyName('PDS_TEXTO').AsString);
            DM1.Query3.Next;
            end;
         closefile(f);
         end;
      RichEdit1.Width:=rlnome.Width;
      RichEdit1.Lines.Clear;
      RichEdit1.lines.LoadFromFile(mNomeTemp);
      RLNome.Lines.Clear;
      RLNome2.Lines.Clear;
      mcinst4:='';
      for x:=0 to RichEdit1.Lines.Count-1 do
         begin
         mcinst4:=mcinst4+RichEdit1.Lines[x];
         end;
      RLNome.Lines.Add(mcinst4);
      RLNome2.Lines.Add(mcinst4);

      DeleteFile(mNomeTemp);
      end;
   end
else if mPedido_Fortes_Descricao=1 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if DM1.Tb_Ped02D.IsEmpty then
      begin
//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
      if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
         begin
         RLNome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
         RLNome2.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
         end
      else
         begin
         RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString);
         RLNome2.Lines.Add(DM2.Qr_CorPDNOME.AsString);
         end;

      end
   else
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         RLNome2.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end;
   end
else if mPedido_Fortes_Descricao=2 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if not DM1.Tb_Ped02D.IsEmpty then
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         RLNome2.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end
   else
      begin
//inicio

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('SELECT * FROM '
                        +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                        +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO','',DM2.Qr_CorP2CODEMP.AsInteger
                        ,'PDSIM_CODEMP',' and '));
      DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
      DM1.Query2.SQL.Add(' AND PDSIM_CODIGO>='+mudavp(floattostr(DM2.Qr_Cabsubmod.AsFloat))
                        +' ORDER BY PDSIM_CODIGO ');
      DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
      DM1.Query2.Open;
      if DM1.Query2.IsEmpty then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('SELECT * FROM '
                           +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                           +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO',' ', DM2.Qr_CorP2CODEMP.AsInteger,
                           'PDSIM_CODEMP',' and '));
         DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
         DM1.Query2.SQL.Add(' AND PDSIM_CODIGO<='+mudavp(DM2.Qr_Cabsubmod.AsString)
                           +' ORDER BY PDSIM_CODIGO DESC ');
         DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
         DM1.Query2.Open;
         end;
      if DM1.Query2.IsEmpty then
         begin
//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
         if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
            begin
            RLNome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
            RLNome2.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString);
            end
         else

            begin
            RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString);
            RLNome2.Lines.Add(DM2.Qr_CorPDNOME.AsString);
            end;
         end
      else
         begin
         RLNome.Lines.Add(DM1.Query2.fieldbyName('PDSIM_DESCRICAO').AsString);
         RLNome2.Lines.Add(DM1.Query2.fieldbyName('PDSIM_DESCRICAO').AsString);
         end
      end;
   end;
if (trim(dm2.Qr_CorP2COMPLEMENTO.AsString)<>'') then
   begin
   rlnome.Lines[rlnome.Lines.Count-1]:=rlnome.Lines[rlnome.Lines.Count-1]+' - '+dm2.Qr_CorP2COMPLEMENTO.AsString;
   rlnome2.Lines[rlnome.Lines.Count-1]:=rlnome.Lines[rlnome.Lines.Count-1]+' - '+dm2.Qr_CorP2COMPLEMENTO.AsString;
   end;
if (CB_REFNOM.Checked) and (trim(dm2.Qr_CorPDREFER.AsString)<>'') then
   begin
   rlnome.Lines[rlnome.Lines.Count-1]:=rlnome.Lines[rlnome.Lines.Count-1]+' - '+dm2.Qr_CorPDREFER.AsString;
   rlnome2.Lines[rlnome.Lines.Count-1]:=rlnome.Lines[rlnome.Lines.Count-1]+' - '+dm2.Qr_CorPDREFER.AsString;
   end;


rlnome_mod04.Lines := rlnome.Lines ;
{if Log_TipoLote = 1 then
  rlnome.Lines[rlnome.Lines.Count-1]:=rlnome.Lines[rlnome.Lines.Count-1]+' - '+dm2.Qr_Corlote2.AsString;}

if cb_impcmet.Checked=true then
   begin
   if DM2.Qr_CorP2CONTESP.AsInteger=1 then
      begin
      Qr_Ped02_CMet.Close;
      Qr_Ped02_CMet.SQL.clear;
      Qr_Ped02_CMet.SQL.Add('Select P2CM_CODEMP, '
                      +'  P2CM_ITEM, '
                      +' P2CM_CODPRO,'
                      +' P2CM_LOTSEQ,  '
                      +' P2CM_CHAVE, '
                      +' P2CM_CODIGO, '
                      +' P2CM_LARGURA, '
                      +' P2CM_ESPESSURA, '
                      +'  P2CM_CONSTANTE, '
                      +' P2CM_COMPRIMENTO, '
                      +' P2CM_QTD_KG, '
                      +' P2CM_QTD_KG_UNIT, '
                      +' P2CM_QTD_PECAS, '
                     +'  P2CM_SEQ,CMET_NOME '
                     +'  ,P2CM_PITEM_PRECO '
                     +'  ,P2CM_PITEM_PRECO*P2CM_QTD_KG AS VALOR_TOTAL '
                    +',trim(to_char(P2CM_LARGURA)) '
                    +' || '+QuotedStr('  x  ')+' || trim(to_char(P2CM_COMPRIMENTO)) '
//                    +' || '+QuotedStr('  x  ')+' || trim(to_char(P2CM_COMPRIMENTO,'+QuotedStr('9,990.000')+')) '
                    +'   AS LARG '
                    +',trim(to_char(P2CM_LARGURA)) '
                    +' || '+QuotedStr(' x ')+' || trim(to_char(P2CM_COMPRIMENTO)) '
                    +' || '+QuotedStr(' x ')+' || trim(to_char(P2CM_ESPESSURA)) '
//                    +' || '+QuotedStr(' x ')+' || trim(to_char(P2CM_COMPRIMENTO,'+QuotedStr('9,990.000')+')) '
///                    +' || '+QuotedStr(' x ')+' || trim(to_char(P2CM_ESPESSURA,'+QuotedStr('9,990.00')+')) '

                   +' || '+QuotedStr(' x ')+' || to_char(P2CM_CONSTANTE) AS LARG_COMP '

                   +'  from CADP02_CMET,CADPRO_CMET '
                   +'    where CMET_CODPRO=P2CM_CODPRO '
//                   +'    and   CMET_CODEMP=P2CM_CODEMP '
                   +'    and CMET_CODIGO=P2CM_CODIGO '
                   +'    and P2CM_LOTSEQ=:LOTSEQ '
                   +'    and P2CM_CHAVE=:CHAVE '
                   +'    and P2CM_CODPRO=:CODPRO '
                   +'    and P2CM_ITEM=:ITEM '
                   +'    and (P2CM_CODEMP=:CODEMP or P2CM_CODEMP=:CODEMP_FILIAL) ');
      Qr_Ped02_CMet.ParamByName('LOTSEQ').AsInteger:=DM2.Qr_CorP2LOTSEQ.AsInteger;
      Qr_Ped02_CMet.ParamByName('CHAVE').AsInteger:=DM2.Qr_CorP2CHAVE.AsInteger;
      Qr_Ped02_CMet.ParamByName('CODEMP').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger;

      if DM2.Qr_CorP2CODEMP.AsInteger>100 then
         Qr_Ped02_CMet.ParamByName('CODEMP_FILIAL').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger-100
      else
         Qr_Ped02_CMet.ParamByName('CODEMP_FILIAL').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger+100;

      Qr_Ped02_CMet.ParamByName('CODPRO').AsFloat     :=DM2.Qr_CorP2CODPRO.AsFloat;
      Qr_Ped02_CMet.ParamByName('ITEM').AsFloat     :=DM2.Qr_CorP2ITEM.AsFloat;
      try
         Qr_Ped02_CMet.Open;
      except
         end;
      RLSubDetail_CMET.Visible:=true

      end
   else
      RLSubDetail_CMET.Visible:=false;
   end
else
   RLSubDetail_CMET.Visible:=false;

RLSubDetail_CMET_mod04.Visible:=RLSubDetail_CMET.Visible;

// inicio kit

if DM2.Qr_CorP2CONTESP.AsInteger=2 then
   begin
   if cb_impkitlsep.Checked=true then
      begin
      if DM2.Qr_CorP2CONTESP.AsInteger=2 then
         begin
         Qr_Pro_Kit.Close;
         Qr_Pro_Kit.SQL.clear;
         Qr_Pro_Kit.SQL.Add('Select  KIT_CODPRO_KIT || '+QuotedStr('-')+'|| PDNOME as PDNOME,PDUND, '+mudaVP(DM2.Qr_CorP2QTD.AsString)+' AS qtdtot,CADPRO_KIT.* from CADPRO_KIT,CADPRO '
                      +'    where PDCODPRO=KIT_CODPRO_KIT '
                      +'    and (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL ) '
                      +'    and   (KIT_CODEMP=:CODEMP OR KIT_CODEMP=:CODEMP_FILIAL) '
                      +'    and KIT_CODPRO=:CODPRO '
                      +' order by KIT_ORDEM ');
         Qr_Pro_Kit.ParamByName('CODEMP').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger;
         if DM2.Qr_CorP2CODEMP.AsInteger>100 then
            Qr_Pro_Kit.ParamByName('CODEMP').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger-100
         else
            Qr_Pro_Kit.ParamByName('CODEMP_FILIAL').AsInteger:=DM2.Qr_CorP2CODEMP.AsInteger+100;
         Qr_Pro_Kit.ParamByName('CODPRO').AsFloat     :=DM2.Qr_CorP2CODPRO.AsFloat;
         try
            Qr_Pro_Kit.Open;
         except
            end;
         Qr_Pro_KitKIT_QTD.DisplayFormat:=mcasqtd;
         RLSubDetail_kit.Visible:=true;
         RLSubDetail_kit_mod03.Visible:=true
         end
      else
         begin
         RLSubDetail_kit_mod03.Visible:=false;
         RLSubDetail_kit.Visible:=false;
         end;
      end
   else
      begin
      RLSubDetail_kit.Visible:=false;
      RLSubDetail_kit_mod03.Visible:=false;

      end;

   end
else
   begin
   RLSubDetail_kit.Visible:=false;
   RLSubDetail_kit_mod03.Visible:=false;

   end;

RLSubDetail_kit_mod04.Visible:=RLSubDetail_kit.Visible;


 mtotbruger:=mtotbruger+DM2.Qr_Cortotal.AsFloat;




end;

procedure TFrm_Pedido_Fortes.rl_RodOrcObsBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
DM2.Qr_Cab.Prior;       
end;

procedure TFrm_Pedido_Fortes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pedido_Fortes.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
banner.Caption:=pBanner_Intersys;
end;

procedure TFrm_Pedido_Fortes.RLBand_detserBeforePrint(Sender: TObject;
  var PrintIt: Boolean);

var
  mLinhas : TStringList;
  x_lin: integer;

begin
edt_nomser.Lines.Clear;

if (mPedido_Fortes_Descricao=0) or (mPedido_Fortes_Descricao=3) then
   edt_nomser.Lines.Add(DM2.Qr_SerPDNOME.AsString)
else if mPedido_Fortes_Descricao=1 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_SerP2SCODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_SerP2SCODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_SerP2SITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if DM1.Tb_Ped02D.IsEmpty then
      edt_nomser.Lines.Add(DM2.Qr_SerPDNOME.AsString)
   else
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         edt_nomser.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end;
   end
else if mPedido_Fortes_Descricao=2 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_SerP2SCODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_SerP2SCODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_SerP2SITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if not DM1.Tb_Ped02D.IsEmpty then
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         edt_nomser.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end
   else
      begin
      edt_nomser.Lines.Add(DM2.Qr_SerPDNOME.AsString)
      end;
   end;
mtotserbru := mtotserbru  + DM2.Qr_SerP2SQTD.AsFloat*DM2.Qr_SerP2SPRECO.AsFloat;
mtotserdesc:= mtotserdesc + DM2.Qr_SerP2STOTDES.AsFloat;
mtotserliq := mtotserliq  + (DM2.Qr_SerP2SQTD.AsFloat*DM2.Qr_SerP2SPRECO.AsFloat-DM2.Qr_SerP2STOTDES.AsFloat);
if trim(DM2.Qr_SerP2SDESC_COMP.AsString)<>'' then
   begin
   mLinhas := TStringList.Create;
   mLinhas := fQuebraStringTStringList(60,DM2.Qr_SerP2SDESC_COMP.AsString);
   for x_lin:=0 to mLinhas.Count-1 do
      begin
      edt_nomser.Lines.add(mLinhas[x_lin]);
      end;
   freeandnil(mLinhas);   
   end;

edt_nomser_mod03.Lines.Text := edt_nomser.Lines.Text;
end;

procedure TFrm_Pedido_Fortes.RLBand_serrodBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totserbru.Caption:=Formatfloat(mcasas, mtotserbru);
txt_totserbru_m3.Caption:=Formatfloat(mcasas, mtotserbru);

end;

procedure TFrm_Pedido_Fortes.rl_descBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
query_sobre: TQuery;
begin
query_sobre:=TQuery.Create(nil);
query_sobre.DatabaseName:='SG_ASSOC';
query_sobre.Close;
query_sobre.SQL.Add('SELECT PDS_TEXTO2 AS PDS_TEXTO FROM CADPRO_SOBRE WHERE PDS_CODPRO='+ DM2.Qr_CorP2CODPRO.AsString);
TRY
   query_sobre.Open;
Except

   END;
if query_sobre.IsEmpty then
   TRL_DESC.Lines.clear
else
   begin
   (query_sobre.FieldByName('PDS_TEXTO') as TMemoField).SaveToFile('C:\SGE\TEMP.RTF');
    TRL_DESC.Lines.LoadFromFile('C:\SGE\TEMP.RTF');
   end;

end;

procedure TFrm_Pedido_Fortes.RLBand4_totliqBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totserliq.Caption:=Formatfloat(mcasas, mtotserliq);
txt_totserliq_m3.Caption:=Formatfloat(mcasas, mtotserliq);


end;

procedure TFrm_Pedido_Fortes.RLBand6_descontoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totserdesc.Caption := FormatFloat(mcasas,mtotserdesc);
txt_totserdesc_m3.Caption := FormatFloat(mcasas,mtotserdesc);
end;

procedure TFrm_Pedido_Fortes.RLBand_cmet_detBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mCMet_TotPeso:=mCMet_TotPeso+Qr_Ped02_CMetP2CM_QTD_KG.asfloat;

mCMet_Totreais:=mCMet_Totreais+Qr_Ped02_CMetvalor_total.asfloat;
mCMet_TotPecas:=mCMet_TotPecas+Qr_Ped02_CMetP2CM_QTD_PECAS.asfloat;


end;

procedure TFrm_Pedido_Fortes.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rod_cmet_peso.Caption:=FormatFloat('###,##0.000',mCMet_TotPeso);

mCMet_TotPeso:=mCMet_TotPeso+Qr_Ped02_CMetP2CM_QTD_KG.asfloat;

mCMet_Totreais:=mCMet_Totreais+Qr_Ped02_CMetvalor_total.asfloat;
mCMet_TotPecas:=mCMet_TotPecas+Qr_Ped02_CMetP2CM_QTD_PECAS.asfloat;

mCMet_TotPeso:=0;

end;

procedure TFrm_Pedido_Fortes.RLSubDetail_kitBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mQtdItens_Kit:=0;

end;

procedure TFrm_Pedido_Fortes.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   mQtdItens_Kit:=mQtdItens_Kit+Qr_Pro_KitQTDTOT.Asfloat;

end;

procedure TFrm_Pedido_Fortes.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel35.Caption:=FormatFloat(mcasqtd,mQtdItens_Kit);
mQtdItens_Kit:=0;

end;

procedure TFrm_Pedido_Fortes.RLBand32BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RL_EMP.Caption:='EXCLUSIVO DA EMPRESA: '+DM1.Tb_EmpRAZAO.AsString;
end;

procedure TFrm_Pedido_Fortes.rlPedido2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Gru, Ram : Integer;
begin
IF cb_marcanao.Checked=true then
   begin
   rlcabpen_pdnome.Width:=279+112;
   rlcab_pdnome.Width:=276+112;
   rcab_marca.visible:=false;
   rldetped_marca.visible:=false;
   rldetpen_marca.Visible:=false;
   rlcabpen_marca.Visible:=false;
   end;
lbl_secao2.Visible:=false;
edt_secao2.Visible:=false;
RLcabCodpro2.Width:=94;
if (mpedido_fortes_origem='LISTA_SEPARACAO')  or (mpedido_fortes_origem='Venda Normal')then
   begin
   if cb_secao_lsep.Checked then
      begin
      RLcabCodpro2.Width:=46;
      lbl_secao2.Visible:=true;
      edt_secao2.Visible:=true;
      end;
   end;
mtotserliq:=0;
mtotserbru:=0;
mtotserdesc:=0;
mCMet_TotPeso:=0;

mCMet_Totreais:=0;
mCMet_TotPecas:=0;
mtotbrugru:=0;
mtotdesgru:=0;
mtotliqgru:=0;
mtotqtdgru:=0;
mtotitensgru:=0;

mtotliqgru:=0;
mtotitensgru:=0;
mTotQtdPadrao:=0;
mtotqtdgru:=0;
mtotitensgru:=0;


mtotbruger:=0;
mtotdesger:=0;
mtotliqger:=0;

rlObs_pedido2.Lines.Text:='Obs.: '+DM2.Qr_CabP1OBS2.AsString;
//                        +DM2.Qr_CabP1OBS3.AsString;


rlSubPen2.Visible := not DM1.Tb_Pen.IsEmpty;

lbl_cabchave2.Caption:='CHAVE: '+FormatFloat('000000', DM2.Qr_CabP1CHAVE.AsFloat);
  lblObs2.Caption:=mpedido_fortes_origem;
if mpedido_fortes_origem='ORCAMENTO_NORMAL' then
  lblObs2.Caption:='Orçamento'
else if mpedido_fortes_origem='ORCAMENTO_AMBIENTE' then
  lblObs2.Caption:='Orçamento Ambiente'
else if mpedido_fortes_origem='LISTA_SEPARACAO' then
  lblObs2.Caption:='Lista de Separação';

{IF (mpedido_fortes_origem='ORCAMENTO_NORMAL') or (mpedido_fortes_origem='LISTA_SEPARACAO') or (uppercase(mpedido_fortes_origem)='VENDA NORMAL') then
   begin
   if not mCabRodGrupo then
      begin
      rl_cabamb.Visible   :=false;
      rl_totbrugru.Visible:=false;
      rl_totdesgru.Visible:=false;
      rl_totliqgru.Visible:=false;
      end;
   end
else if DM2.Qr_CabP1TOTALB.AsFloat=DM2.Qr_CabP1TOTALL.AsFloat then
   begin
   rl_totbrugru.Visible:=false;
   rl_totdesgru.Visible:=false;
   end;
if DM2.Qr_CabP1TOTALL.AsFloat=DM2.Qr_CabP1TOTSERLIQ.AsFloat then
   begin
   rl_totbruger.Visible:=false;
   rl_totdesger.Visible:=false;
   rl_totliqger.Visible:=false;
   end;

if rl_totbrugru.Visible then
   mCabRodGrupo:=true
else
   mCabRodGrupo:=false;
 }

end;

procedure TFrm_Pedido_Fortes.RLBand16BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  mNomeTemp: String;
  x: Integer;
begin
rldet_pdnome.Lines.Clear;

if (mPedido_Fortes_Descricao=0) or (mPedido_Fortes_Descricao=3) then
   begin
//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
   if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
      rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString)
   else
      rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME.AsString);

   end
else if mPedido_Fortes_Descricao=9 then
   begin
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO2 AS PDS_TEXTO FROM CADPRO_SOBRE where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+DM2.Qr_CorP2CODEMP.AsString+' and ')
                        +' PDS_CODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' ORDER BY PDS_PAG ');
   DM1.Query3.Open;
   if DM1.Query3.Eof then
      rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
   else
      begin
      mNomeTemp:=fproctemp(41)+'.rtf';
      While not DM1.Query3.Eof do
         begin
         assignfile(f,mNomeTemp);
         rewrite(f);
         While not DM1.Query3.Eof do
            begin
            writeln(f,DM1.Query3.fieldbyName('PDS_TEXTO').AsString);
            DM1.Query3.Next;
            end;
         closefile(f);
         end;
      RichEdit1.Width:=rlnome.Width;
      RichEdit1.Lines.Clear;
      RichEdit1.lines.LoadFromFile(mNomeTemp);
      RLNome_mod04.Lines.Clear;
      RLNome.Lines.Clear;
      RLNome2.Lines.Clear;
      mcinst4:='';
      for x:=0 to RichEdit1.Lines.Count-1 do
         begin
         mcinst4:=mcinst4+RichEdit1.Lines[x];
         end;
      rldet_pdnome.Lines.Add(mcinst4);
      DeleteFile(mNomeTemp);
      end;
   end
else if mPedido_Fortes_Descricao=1 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if DM1.Tb_Ped02D.IsEmpty then
      rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
   else
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         rldet_pdnome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end;
   end
else if mPedido_Fortes_Descricao=2 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if not DM1.Tb_Ped02D.IsEmpty then
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         rldet_pdnome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end
   else
      begin
//inicio

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('SELECT * FROM '
                        +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                        +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO','',DM2.Qr_CorP2CODEMP.AsInteger
                        ,'PDSIM_CODEMP',' and '));
      DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
      DM1.Query2.SQL.Add(' AND PDSIM_CODIGO>='+mudavp(floattostr(DM2.Qr_Cabsubmod.AsFloat))
                        +' ORDER BY PDSIM_CODIGO ');
      DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
      DM1.Query2.Open;
      if DM1.Query2.IsEmpty then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('SELECT * FROM '
                           +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                           +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO',' ', DM2.Qr_CorP2CODEMP.AsInteger,
                           'PDSIM_CODEMP',' and '));
         DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
         DM1.Query2.SQL.Add(' AND PDSIM_CODIGO<='+mudavp(DM2.Qr_Cabsubmod.AsString)
                           +' ORDER BY PDSIM_CODIGO DESC ');
         DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
         DM1.Query2.Open;
         end;
      if DM1.Query2.IsEmpty then
         begin
//         if (cb_descricao_fornecedor.Checked) OR (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
         if (dm1.Tb_TDVCATCIMPDA.AsInteger=3) then
            rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME_COMPRA.AsString)
         else
            rldet_pdnome.Lines.Add(DM2.Qr_CorPDNOME.AsString);

         end
      else
         rldet_pdnome.Lines.Add(DM1.Query2.fieldbyName('PDSIM_DESCRICAO').AsString);
      end;
   end;
if (trim(dm2.Qr_CorP2COMPLEMENTO.AsString)<>'') then
  rldet_pdnome.Lines[rldet_pdnome.Lines.Count-1]:=rldet_pdnome.Lines[rldet_pdnome.Lines.Count-1]+' - '+dm2.Qr_CorP2COMPLEMENTO.AsString;
if CB_REFNOM.Checked then
  rldet_pdnome.Lines[rldet_pdnome.Lines.Count-1]:=rldet_pdnome.Lines[rldet_pdnome.Lines.Count-1]+' - '+dm2.Qr_CorPDREFER.AsString;
end;

procedure TFrm_Pedido_Fortes.RLBand16AfterPrint(Sender: TObject);
begin
mtotbrugru:=mtotbrugru+DM2.Qr_Cortotal.AsFloat;

mtotdesgru:=mtotdesgru+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqgru:=mtotliqgru+DM2.Qr_Cortotal_liquido.AsFloat;
mtotqtdgru:=mtotqtdgru+DM2.Qr_CorP2QTD.AsFloat;
mtotitensgru:=mtotitensgru+1;

mtotbruger:=mtotbruger+DM2.Qr_Cortotal.AsFloat;

mtotdesger:=mtotdesger+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqger:=mtotliqger+DM2.Qr_Cortotal_liquido.AsFloat+DM2.Qr_CorP2VALIPI.AsFloat;

end;

procedure TFrm_Pedido_Fortes.RLBand18BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mtotbrugru:=mtotbrugru+DM2.Qr_Cortotal.AsFloat;

mtotdesgru:=mtotdesgru+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqgru:=mtotliqgru+DM2.Qr_Cortotal_liquido.AsFloat;
mtotqtdgru:=mtotqtdgru+DM2.Qr_CorP2QTD.AsFloat;
mtotitensgru:=mtotitensgru+1;


mtotbruger := mtotbruger + DM1.Tb_Pentotal.AsFloat;
end;

procedure TFrm_Pedido_Fortes.RLBand17BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlBruPen.Caption := FormatFloat(mcasas, mtotbruger);
mtotbruger:=0;

end;

procedure TFrm_Pedido_Fortes.rlSubPen2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotbruger :=0 ;
end;

procedure TFrm_Pedido_Fortes.rl_totliq_ped2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotliqgru:=0;
lbl_totqtd_ped2.Caption:='Itens: '+FloatTosTr(mtotitensgru)+' Unidades: '+FloatTosTr(mtotqtdgru);
{
if mTotQtdPadrao>0 then
   lbl_totqtd_ped2.caption:=lbl_totqtd.caption+' Quantidade de caixas ' + intTostr(mTotQtdPadrao);
   }
mTotQtdPadrao:=0;
mtotqtdgru:=0;
mtotitensgru:=0;

end;

procedure TFrm_Pedido_Fortes.RLBand20BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{
lbl_totqtd.Caption:='Itens: '+FloatTosTr(mtotitensgru)+' Unidades: '+FloatTosTr(mtotqtdgru);
if mTotQtdPadrao>0 then
   lbl_totqtd.caption:=lbl_totqtd.caption+' Quantidade de caixas ' + intTostr(mTotQtdPadrao);
mTotQtdPadrao:=0;
mtotqtdgru:=0;
mtotitensgru:=0;
 }
end;

procedure TFrm_Pedido_Fortes.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{
if mtotliqgru=DM2.Qr_CabP1TOTALL.AsFloat then
   begin
   rl_cabamb.Visible   :=false;
   rl_totbrugru.Visible:=false;
   rl_totdesgru.Visible:=false;
   rl_totliqgru.Visible:=false;

   rl_cabamb_mod03.Visible   :=false;
   rl_totbrugru_mod03.Visible:=false;
   rl_totdesgru_mod03.Visible:=false;
   rl_totliqgru_mod03.Visible:=false;

   end
}
end;

procedure TFrm_Pedido_Fortes.fCarregarMemory_pedido(pqtdvias: Integer);
var
query_ped02: tquery;
mqtdlid: integer;
mqtdbloco_pagpeq: integer;
mqtdbloco_paggrade: integer;
mqtdfalta: integer;
x_falta: integer;
x_via: Integer;
mqtdund: real;
mqtdlin_rodape: integer;

begin
mqtdbloco_paggrade:=55;
mqtdlin_rodape:=12;

mqtdbloco_pagpeq:=14;

mem_cabecalho.Tag:=1;
if mem_cabecalho.active=false then
   begin
   mem_cabecalho.open;
   mem_itens.open;
   end;
query_ped02:=tquery.create(nil);
query_ped02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

DM2.Qr_Cab.First;

While not DM2.Qr_Cab.Eof do
   begin
   query_ped02.sql.clear;
   query_ped02.sql.Add('Select PDNOME,PDUND,PDMARCA,P2CODPRO,P2PRECO,P2QTD,P2ITEM,P2COMPLEMENTO '
                      +' FROM CADP02,CADPRO WHERE P2CODEMP='+DM2.Qr_CabP1CODEMP.AsString+' and P2CODPRO=PDCODPRO '
                      +' AND P2CHAVE='+DM2.Qr_CabP1CHAVE.AsString
                      +' order by P2ITEM ');
   try
      query_ped02.Open;
   except on e : exception do
      ex_erroSql_Novo(query_ped02,2087,'func Erro:'+e.Message ,'CADP02');
      end;

   for x_via:=1 to pqtdvias do
      begin
      mqtdund:=0;
      mqtdlid:=0;

// inicio


      mem_cabecalho.Append;
      mem_cabecalhoempresa.Value    :=DM1.Tb_EmpFANTASIA.AsString;
      mem_cabecalhotelefone.Value   :=DM1.Tb_EmpFONE.AsString;
      mem_cabecalhodata_pedido.Value:=formatdatetime(fdt2, DM2.Qr_CabP1DATAP.AsDateTime);
      mem_cabecalhodata_documento.Value:=formatdatetime(fdt2, DM2.Qr_Cabcalc_P1DATDOC.AsDateTime);
      mem_cabecalhotipo_pedido.Value:=DM1.Tb_EmpRAZAO.AsString;


      mem_cabecalhotipo_pedido.Value:=mpedido_fortes_origem;
      if mpedido_fortes_origem='ORCAMENTO_NORMAL' then
         mem_cabecalhotipo_pedido.Value:='Orçamento'
      else if mpedido_fortes_origem='ORCAMENTO_AMBIENTE' then
         mem_cabecalhotipo_pedido.Value:='Orçamento Ambiente'
      else if mpedido_fortes_origem='LISTA_SEPARACAO' then
         mem_cabecalhotipo_pedido.Value:='Lista de Separação';
      mem_cabecalhochave.Value:=DM2.Qr_CabP1CHAVE.AsInteger;
      mem_cabecalhocliente_razsoc.Value  :=DM2.Qr_Cabecf_razao.AsString;
      mem_cabecalhocliente_fantasia.Value  :=DM2.Qr_Cabecf_fantasia.AsString;
      mem_cabecalhocliente_cnomcon.Value  :=DM2.Qr_CabCNOMCON.AsString;
      mem_cabecalhocliente_endereco.Value:=DM2.Qr_Cabecf_ender.AsString;
      mem_cabecalhocliente_telefone.Value:=DM2.Qr_Cabecf_fone.AsString;
      mem_cabecalhocliente_cidade.Value  :=DM2.Qr_Cabecf_cidade.AsString;
      mem_cabecalhocliente_uf.Value      :=DM2.Qr_Cabecf_uf.AsString;
      mem_cabecalhocliente_bairro.Value  :=DM2.Qr_Cabecf_bairro.AsString;
      mem_cabecalhocliente_cnpj_cpf.Value:=DM2.Qr_Cabecf_cgc.AsString;
      mem_cabecalhocliente_ie_rg.Value   :=DM2.Qr_Cabecf_ie.AsString;
      mem_cabecalhocliente_cep.Value     :=DM2.Qr_Cabecf_cep.AsString;
      mem_cabecalhocliente_codigo.Value  :=DM2.Qr_CabP1CODCLI.AsFloat;
      mem_cabecalhocodemp.Value          :=DM2.Qr_CabP1CODEMP.AsInteger;
      mem_cabecalhovia.Value             :=x_via;
      mem_cabecalhogrupo.Value           :=mem_cabecalhochave.AsString+Inttostr(x_via);
      mem_cabecalhototal_bruto.Value     :=DM2.Qr_CabP1TOTALB.AsFloat;
      mem_cabecalhovalfre.Value          := DM2.Qr_CabP1VALFRE.AsFloat;

      mem_cabecalhototal_liquido.Value   :=DM2.Qr_CabP1TOTALL.AsFloat;
      mem_cabecalhodescontos.Value       :=DM2.Qr_CabP1TOTDES.AsFloat;
      mem_cabecalhovendedor_nome.Value   :=DM2.Qr_CabP1CODVEN.AsString+' - '+DM2.Qr_Cabnomven.AsString;
      mem_cabecalhoobservacao_pedido.Value   :=DM2.Qr_CabP1OBS2.AsString;


      query_ped02.First;
      while not query_ped02.Eof do
         begin
         mqtdlid:=mqtdlid+1;
         mqtdund:=mqtdund+query_ped02.fieldbyname('P2QTD').AsFloat;
         query_ped02.Next;
         end;
      mem_cabecalhoqtditens.Value   := mqtdlid;
      mem_cabecalhototund.Value     := mqtdund;


// final


      query_ped02.First;
      while not query_ped02.Eof do
         begin
         mem_itens.Append;
         mem_itenscodigo.Value:=query_ped02.fieldbyname('P2CODPRO').AsString;
         mem_itenschave.Value :=mem_itenschave.AsInteger;
         mem_itensqtd.Value   :=query_ped02.fieldbyname('P2QTD').AsString;
         mem_itensund.Value         :=query_ped02.fieldbyname('PDUND').AsString;
         mem_itensdescricao.Value   :=query_ped02.fieldbyname('PDNOME').AsString;
         mem_itensmarca.Value       :=query_ped02.fieldbyname('PDMARCA').AsString;
         mem_itensdesc_complementar.Value       :=COPY(query_ped02.fieldbyname('P2COMPLEMENTO').AsString,1,254);


         mem_itenspreco_unit.Value  :=Formatfloat(mcasaspu, query_ped02.fieldbyname('P2PRECO').AsFloat);
         mem_itenstotal.Value       :=Formatfloat(mcasas, query_ped02.fieldbyname('P2PRECO').AsFloat*query_ped02.fieldbyname('P2QTD').AsFloat);
         mem_itensgrupo.Value       :=mem_cabecalhochave.AsString+Inttostr(x_via);

         query_ped02.next;
         mem_itens.Post;
         end;

      if mqtdlid>mqtdbloco_pagpeq then
         begin
         mqtdfalta :=TRUNC (truncar( (mqtdlid / mqtdbloco_paggrade) ,0))+1;
         mqtdfalta:=(mqtdbloco_paggrade*mqtdfalta)-mqtdlid;
         if mqtdfalta>=mqtdlin_rodape then
            mqtdfalta:=mqtdfalta-mqtdlin_rodape;
         if mqtdfalta=mqtdbloco_paggrade then
           mqtdfalta:=0;
         end
      else
         begin
         mqtdfalta :=TRUNC (truncar( (mqtdlid / mqtdbloco_pagpeq) ,0))+1;
         mqtdfalta:=(mqtdbloco_pagpeq*mqtdfalta)-mqtdlid;
         if mqtdfalta=mqtdbloco_pagpeq then
            mqtdfalta:=0;
         end;


      for x_falta:=1 to mqtdfalta do
         begin
         mem_itens.Append;
         mem_itenscodigo.Value:=' ';
         mem_itensgrupo.Value       :=mem_cabecalhochave.AsString+Inttostr(x_via);
         mem_itens.Post;
         end;
      mem_cabecalho.Post;
      end;

   DM2.Qr_Cab.Next;
   end;
DM2.Qr_Cab.First;

mem_cabecalhototal_bruto.DisplayFormat  :=mcasas;
mem_cabecalhovalfre.DisplayFormat       :=mcasas;
mem_cabecalhototal_liquido.DisplayFormat:=mcasas;
mem_cabecalhodescontos.DisplayFormat    :=mcasas;


mem_cabecalho.Tag:=0;
mem_cabecalho.first;
end;

procedure TFrm_Pedido_Fortes.RLGroup3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if arredonda(mem_cabecalhototal_bruto.AsFloat,2)=arredonda(mem_cabecalhototal_liquido.asfloat,2) then
   begin
   lblcab_totliq.Visible:=false;
   lblDET_totliq.Visible:=false;

   lblcab_totdes.Visible:=false;
   lbldet_totdes.Visible:=false;
   end
else
   begin
   lblcab_totliq.Visible:=true;
   lblDET_totliq.Visible:=true;


   lblcab_totdes.Visible:=true;
   lbldet_totdes.Visible:=true;
   end;

end;



function TFrm_Pedido_Fortes.fLerdadosNFSE(pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String;pChave,pChave_ano,pCodEmp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;
var
query_nfse: TQuery;
mTotServico_totbru: Real;
mTotServico_Desc: Real;

begin

rlOrcamentoServico.Borders.DrawLeft:=true;
rlOrcamentoServico.Borders.DrawTop:=true;
rlOrcamentoServico.Borders.DrawBottom:=true;
rlOrcamentoServico.Borders.DrawRight:=true;
rlos_cab01.Borders.DrawBottom:=true;
RLLabel115.Borders.DrawBottom:=true;
RLPanel11.Borders.DrawRight:=true;
RLPanel12.Borders.DrawRight:=true;



RLBand24.Borders.DrawBottom:=true;
RLNFSE_ROD06.Borders.DrawBottom:=true;
RLNFSE_ROD06.Borders.DrawTop:=true;
RLBand25.Borders.DrawBottom:=true;


cds_nfse_cabtotal_servicos.DisplayFormat:=mcasas;
cds_nfse_cabtotal_desc_incondicionado.DisplayFormat:=mcasas;
cds_nfse_cabtotal_liquido.DisplayFormat:=mcasas;
cds_nfse_cabtotal_deducoes.DisplayFormat:=mcasas;

pMensagem:='';
query_nfse:=TQuery.create(nil);
query_nfse.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

query_nfse.close;
query_nfse.SQL.Clear;
query_nfse.SQL.Add('Select P1CODEMP,P1DATAP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,P1NFE_ENVXML,P1DATDOC,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV, P1PVACTD,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF,P1SERIE'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS,P1NUMNF_SERV,P1DATANF_SERV,P1MODELO_SERV,P1SERIE_SERV'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATACF,P1ORDEM,CIM '
                 +' , CLOG '
                 +' ,CNUM '
                 +' ,CCOMPL '
                 +' ,CBAIRRO '
                 +',CCIDADE '
                 +',CUF '
                 +',CCEP '

                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  P1CODEMP=:CODEMP '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
query_nfse.ParamByName('CODEMP').AsInteger:=pCodemp;
query_nfse.ParamByName('CHAVE').AsInteger:=pChave;
query_nfse.ParamByName('LOTSEQ').AsInteger:=pChave_ano;
query_nfse.ParamByName('ORDEM').AsInteger:=1;
query_nfse.Open;

if query_nfse.IsEmpty then
   begin
   pMensagem:=pMensagem+'Chave não encontrada!'+#13;
   result:=false;
   end;

if query_nfse.FieldbyName('P1TIPO').Value=9 then
   begin
   pMensagem:=pMensagem+'Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!'+#13;
   result:=false;
   end;

if query_nfse.FieldbyName('P1TIPO').Value=0 then
   begin
   pMensagem:=pMensagem+'Este Pedido é Apenas um Orçamento, Favor Fatura-lo Primeiro!'+#13;
   result:=false;
   end;
if query_nfse.FieldByName('P1TOTALL').isnull then
   begin
   pMensagem:=pMensagem+'Recalcule este pedido Primeiro!'+#13;
   end;

if cds_nfse_cab.active=false then
   begin
   cds_nfse_cab.createdataset;
   cds_nfse_cab.open;
   end;
cds_nfse_cab.EmptyDataSet;


if cds_nfse_det.active=false then
   begin
   cds_nfse_det.createdataset;
   cds_nfse_det.open;
   end;
cds_nfse_det.EmptyDataSet;

mTotServico_totbru :=0;
mTotServico_Desc   :=0;

cds_nfse_cab.Append;



cds_nfse_cabnumnfse.Value:=query_nfse.fieldbyname('P1NUMNF_SERV').AsInteger;
cds_nfse_cabdatemis.Value:=query_nfse.fieldbyname('P1DATANF_SERV').AsDateTime;
cds_nfse_cabtomador_razao.Value:=query_nfse.fieldbyname('CRAZAO').AsString;
if query_nfse.fieldbyname('CCNPJ').AsFloat>0 then
   cds_nfse_cabtomador_cnpj.Value :=MaskCPFCNPJ(query_nfse.fieldbyname('CCNPJ').AsString)
else
   cds_nfse_cabtomador_cnpj.Value :=MaskCPFCNPJ(query_nfse.fieldbyname('CCPF').AsString);
cds_nfse_cabtomador_im.Value:=query_nfse.fieldbyname('CIM').AsString;
cds_nfse_cabtomador_ender.Value:=query_nfse.fieldbyname('CLOG').AsString;
if trim(query_nfse.fieldbyname('CNUM').AsString)<>'' then
   cds_nfse_cabtomador_ender.Value:=cds_nfse_cabtomador_ender.Value+' No '+query_nfse.fieldbyname('CNUM').AsString;
if trim(query_nfse.fieldbyname('CCOMPL').AsString)<>'' then
   cds_nfse_cabtomador_ender.Value:=cds_nfse_cabtomador_ender.Value+' '+query_nfse.fieldbyname('CCOMPL').AsString;

cds_nfse_cabtomador_bairro.Value   :=query_nfse.fieldbyname('CBAIRRO').AsString;
cds_nfse_cabtomador_municipio.Value:=query_nfse.fieldbyname('CCIDADE').AsString;
cds_nfse_cabtomador_uf.Value       :=query_nfse.fieldbyname('CUF').AsString;
cds_nfse_cabtomador_cep.Value      :=query_nfse.fieldbyname('CCEP').AsString;
mTotServico_totbru :=0;
mTotServico_Desc   :=0;

if fLerGenerico_query('CADP02S,CADPRO','PDNOME,PDUND,P2SCODPRO,P2SQTD,P2SITEM,P2SPRECO,P2STOTDES,P2STOTLIQ',' PDCODPRO=P2SCODPRO and P2SCODEMP=0'+query_nfse.fieldbyname('P1CODEMP').AsString
   +' AND P2SCHAVE=0'+query_nfse.fieldbyname('P1CHAVE').AsString
   +' AND P2SLOTSEQ=0'+query_nfse.fieldbyname('P1LOTSEQ').AsString
   ,query_consulta) then
   begin
   while not query_consulta.Eof do
      begin
      cds_nfse_det.Append;
      cds_nfse_detitem.AsInteger    :=query_consulta.fieldbyname('P2SITEM').AsInteger;
      cds_nfse_detdescricao.AsString:=query_consulta.fieldbyname('PDNOME').AsString;
      mTotServico_totbru := mTotServico_totbru+query_consulta.fieldbyname('P2STOTLIQ').ASfloat+query_consulta.fieldbyname('P2STOTDES').ASfloat ;
      mTotServico_Desc   := mTotServico_Desc+query_consulta.fieldbyname('P2STOTDES').ASfloat ;
      cds_nfse_det.Post;
      query_consulta.Next;
      end;

   end;



cds_nfse_cabtotal_servicos.AsFloat:=mTotServico_totbru;
cds_nfse_cabtotal_deducoes.AsFloat:=mTotServico_Desc;
cds_nfse_cabtotal_desc_incondicionado.AsFloat:=mTotServico_Desc;
cds_nfse_cabtotal_liquido.AsFloat:=mTotServico_totbru-mTotServico_Desc;

cds_nfse_cab.post;

query_nfse.close;
freeandnil(query_nfse);
rlcab_observacao.Caption:='Chave: '+Inttostr(pChave)+' Data: '+Formatdatetime(fdt2, cds_nfse_cabdatemis.asdatetime)+' Sequencia: '+cds_nfse_cabnumnfse.AsString;


if trim(pSalvarPDFPara)<>'' then
   begin
   if FileExists(pSalvarPDFPara) then
      begin
      if not DeleteFile(pSalvarPDFPara) then
         pMensagem:=pMensagem+'Não foi possivel salvar a nota '+pSalvarPDFPara+#13
      else
         rlOrcamentoServico.SaveToFile(pSalvarPDFPara);
      end
   else
      rlOrcamentoServico.SaveToFile(pSalvarPDFPara);
   end
else
   rlOrcamentoServico.PreviewModal;

end;
procedure TFrm_Pedido_Fortes.FormShow(Sender: TObject);
begin
Ts_Relatorio.TabVisible:=false;
Ts_Relatorio2.TabVisible:=false;
tsImpressaopequena.TabVisible:=false;
tsOrcamentoServicos.TabVisible:=false;
CB_RELATORIOClick(self);

end;

procedure TFrm_Pedido_Fortes.rl_totbruger_mod03BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totbruger_mod03.Caption:=FormatFloat(mcasas, mtotbruger);
mtotbruger:=0;

end;

procedure TFrm_Pedido_Fortes.rl_totdesger_mod03BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totdesger_mod03.Caption:=FormatFloat(mcasas,mtotdesger);

end;

procedure TFrm_Pedido_Fortes.rl_totliqger_mod03BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totliqger_mod03.Caption:=FormatFloat(mcasas, mtotliqger);
mtotliqger:=0;

end;

procedure TFrm_Pedido_Fortes.Tb_PendCalcFields(DataSet: TDataSet);
begin
Tb_Pendtotal.Value:=Arredonda( (Tb_PendPEPRECO.asfloat*Tb_PendPEQTDPEN.AsFloat) ,2);
end;

procedure TFrm_Pedido_Fortes.RLReport_pedido_pequenoBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
var
mValorTemp: Real;
begin

lbl_cab_valfre.Visible    := mem_cabecalhovalfre.AsFloat>0;
dbtext_cab_valfre.Visible := lbl_cab_valfre.Visible;


rlRodJurosMulta.Visible := CB_JUROS_MULTAS_LSEP_MOD_PEQ.Checked;
if CB_JUROS_MULTAS_LSEP_MOD_PEQ.Checked=true then
   begin
   rlRodJurosMulta.Caption:='';
   if mem_cabecalhototal_liquido.AsFloat>0 then
      begin
      if DM4.Tb_Par01PMULTA.asfloat>0 then
         begin
         mValorTemp := (mem_cabecalhototal_liquido.AsFloat * DM4.Tb_Par01PMULTA.asfloat) / 100;
         rlRodJurosMulta.Caption:='Cobrar Multa de r$ '+formatfloat(mcasas, mValorTemp)+'. ';
         end;
      if DM4.Tb_Par01PJURM.AsFloat>0 then
         begin
         mValorTemp := ( (mem_cabecalhototal_liquido.AsFloat * DM4.Tb_Par01PJURM.asfloat) / 100) / 30;
         rlRodJurosMulta.Caption:=rlRodJurosMulta.Caption +
         'Cobrar Juros de r$ '+formatfloat(mcasas, mValorTemp)+' por dia de atraso. ';
         end;
      end;
   end;
end;

procedure TFrm_Pedido_Fortes.fAjustarColunaTotalDescVlrTotLiq;
var
mleftini: integer;
const
   mdiferleft = 1;
begin
mleftini:=1;

{

RLcabCodpro -  46
lbl_secao   -  46
RLCabQtd    -  50
RLCabUnd    -  26
RLCabNome   - 278
RLCabMarca  - 112
RLCabPU     -  74
RLCabTotal  -  78


}
if cb_totaldescVlrTotLiq.Checked=true then
   begin
   RLTotal.DataField:='total_liquido';
//   rlcab_totdesc.Visible:=CB_CABDESC.Visible;
//   rldet_totdesc.Visible:=rlcab_totdesc.Visible;
//   RLCabNome.Width :=  235;
//   RLCabMarca.Width :=  84;
//   RLCabPU.Width :=  74;
//   RLCabTotal.Width := 78;
   end
else if cb_totalItemComIpi.Checked then
   begin
   RLTotal.DataField:='totalitemcomipi';
//   rlcab_totdesc.Visible:=false;
//   rldet_totdesc.Visible:=false;
   end
else if cb_totalItemComIpi.Checked then
   begin
   RLTotal.DataField:='total';
//   rlcab_totdesc.Visible:=false;
//   rldet_totdesc.Visible:=false;
   end;

{
if RLCabMarca.Visible=false then
   begin
   RLCabNome.Width :=  RLCabNome.Width + RLCabMarca.Width;
   end;
}
{
if RLCodPro.Visible=true then
   begin
   RLCodPro.Left := mleftini;
   mleftini := mleftini + RLCodPro.Left + mdiferleft;
   end;

if RLcabCodpro.Visible=true then
   begin
   RLcabCodpro.Left := mleftini;
   mleftini := mleftini + RLcabCodpro.Width + mdiferleft;
   end;
if lbl_secao.Visible=true then
   begin
   lbl_secao.Left := mleftini;
   mleftini := mleftini + lbl_secao.Width + mdiferleft;
   end;

if RLCabQtd.Visible=true then
   begin
   RLCabQtd.Left := mleftini;
   mleftini := mleftini + RLCabQtd.Width + mdiferleft;
   end;

if RLCabUnd.Visible=true then
   begin
   RLCabUnd.Left := mleftini;
   mleftini := mleftini + RLCabUnd.Width + mdiferleft;
   end;



if RLCabNome.Visible=true then
   begin
   RLCabNome.Left := mleftini;
   mleftini := mleftini + RLCabNome.Width + mdiferleft;
   end;


if RLCabMarca.Visible=true then
   begin
   RLCabMarca.Left := mleftini;
   mleftini := mleftini + RLCabMarca.Width + mdiferleft;
   end;

if RLCabPU.Visible=true then
   begin
   RLCabPU.Left := mleftini;
   mleftini := mleftini + RLCabPU.Width + mdiferleft;
   end;

if rlcab_totdesc.Visible=true then
   begin
   rlcab_totdesc.Left := mleftini;
   mleftini := mleftini + rlcab_totdesc.Width + mdiferleft;
   end;

if RLCabTotal.Visible=true then
   begin
   RLCabTotal.Left := mleftini;
   mleftini := mleftini + RLCabTotal.Width + mdiferleft;
   end;
}
{
if RLCabMarca.Visible=false then
   begin
   RLCabNome.Width :=  RLCabNome.Width + RLCabMarca.Width;
   end;
Showmessage('rlcabnome '+inttostr(RLCabNome.Width)+' rl preco unit '+inttostr(rlcabpu.Width)+' total gher '+IntToStr(RLCabTotal.Width));
 }
end;

procedure TFrm_Pedido_Fortes.fAtualizarTracoVertical(pTraco: boolean);
const
   pcab:boolean = true;
begin
if pcab then
   begin
   RLcabCodpro.Borders.DrawRight        :=ptraco;
   lbl_secao.Borders.DrawRight          :=ptraco;
   RLCabQtd.Borders.DrawRight           :=ptraco;
   RLCabUnd.Borders.DrawRight           :=ptraco;
   RLCabNome.Borders.DrawRight          :=ptraco;
   RLCabMarca.Borders.DrawRight          :=ptraco;
   RLCabPU.Borders.DrawRight            :=ptraco;
   lbl_P2VALIPI.Borders.DrawRight        :=ptraco;
   rlcab_totdesc.Borders.DrawRight      :=ptraco;
// mod04
   RLcabCodpro_mod04.Borders.DrawRight        :=ptraco;
   lbl_secao_mod04.Borders.DrawRight        :=ptraco;
   RLCabQtd_mod04.Borders.DrawRight        :=ptraco;
   RLCabUnd_mod04.Borders.DrawRight        :=ptraco;
   RLCabNome_mod04.Borders.DrawRight        :=ptraco;

// mod03

   RLcabCodpro_mod03.Borders.DrawRight  :=ptraco;
   lbl_secao_mod03.Borders.DrawRight    :=ptraco;
   RLCabQtd_mod03.Borders.DrawRight     :=ptraco;
   RLCabUnd_mod03.Borders.DrawRight     :=ptraco;
   RLCabMarca_mod03.Borders.DrawRight   :=ptraco;
   rlcab03_P2VALIPI.Borders.DrawRight   :=ptraco;
   RLCabPU_mod03_caixa.Borders.DrawRight:=ptraco;
   RLCabPU_mod03.Borders.DrawRight      :=ptraco;
   end;

RLCodpro.Borders.DrawRight           :=ptraco;
edt_secao.Borders.DrawRight          :=ptraco;
RLQtd.Borders.DrawRight              :=ptraco;
RLUnd.Borders.DrawRight              :=ptraco;
rlnome.Borders.DrawRight             :=ptraco;
RLMarca.Borders.DrawRight            :=ptraco;
rldb_P2VALIPI.Borders.DrawRight        :=ptraco;
RLPU.Borders.DrawRight               :=ptraco;
rldet_totdesc.Borders.DrawRight      :=ptraco;


// mod04
RLCodpro_mod04.Borders.DrawRight     :=ptraco;
edt_secao_mod04.Borders.DrawRight    :=ptraco;
RLQtd_mod04.Borders.DrawRight        :=ptraco;
RLUnd_mod04.Borders.DrawRight        :=ptraco;
RLMarca_mod04.Borders.DrawRight      :=ptraco;
//  lindomar

// mod03
RLCodpro_mod03.Borders.DrawRight     :=ptraco;
edt_secao_mod03.Borders.DrawRight    :=ptraco;
RLQtd_mod03.Borders.DrawRight        :=ptraco;
RLUnd_mod03.Borders.DrawRight        :=ptraco;
RLMarca_mod03.Borders.DrawRight      :=ptraco;
rldb03_P2VALIPI.Borders.DrawRight            :=ptraco;
RLPU_mod03_caixa.Borders.DrawRight   :=ptraco;
RLPU_mod03.Borders.DrawRight         :=ptraco;

end;


procedure TFrm_Pedido_Fortes.fAtualizarTracoHorizontal(pTraco: boolean);
begin

rl_detitens.Borders.DrawBottom        :=ptraco;
rl_detitens.Borders.DrawTop           :=ptraco;
// mod03
rl_detitens_mod03.Borders.DrawBottom  :=ptraco;
rl_detitens_mod03.Borders.Drawtop     :=ptraco;

rl_detitens_mod04.Borders.DrawBottom  :=ptraco;
rl_detitens_mod04.Borders.Drawtop     :=ptraco;

end;




procedure TFrm_Pedido_Fortes.fAjustarColunaRlPedido;

const

mRLcabCodpro      = 49;
mlbl_secao        = 49;
mRLCabQtd         = 41;
mRLCabUnd         = 25;
mRLCabNome        = 212;
mRLCabMarca       = 63;
mRLCabPU          = 70;
mlbl_P2VALIPI     = 59;
mrlcab_totdesc    = 69;
mRLCabTotal       = 76;
mTamTotal = 705;
mdiferleft = 1;

var
mLeft: integer;
mQtdFalta: integer;
mQtdAtivo: integer;
mTamUsado: integer;
mQtdAju: integer;
mDifAju: integer;


   procedure fContar(pLabel: TRLLabel);
   begin
   if pLabel.Visible=true then
      begin
      mQtdAtivo:=mQtdAtivo+1;
      mTamUsado:=mTamUsado + pLabel.Width;
      end;
   end;

   procedure fIncrementar(out pLabel: TRLLabel; pValor: integer);
   begin
   if pLabel.Visible=true then
      begin
      pLabel.Width := pLabel.Width + pValor;
      mDifAju      :=0;
      end;
   end;


   procedure fLeft(out pLabel: TRLLabel);
   begin
   if pLabel.Visible=true then
      begin
      pLabel.Left :=  mLeft;
      mLeft       := mLeft + pLabel.Width + mdiferleft ;
      end;
   end;

begin
mLeft:=1;





RLcabCodpro.Width    :=mRLcabCodpro;
lbl_secao.Width      :=mlbl_secao;
RLCabQtd.Width       :=mRLCabQtd;
RLCabUnd.Width       :=mRLCabUnd;

RLCabNome.Width      :=mRLCabNome;
RLCabMarca.Width     :=mRLCabMarca;
RLCabPU.Width        :=mRLCabPU;
lbl_P2VALIPI.Width   :=mlbl_P2VALIPI;
rlcab_totdesc.Width  :=mrlcab_totdesc;
RLCabTotal.Width     :=mRLCabTotal;
mQtdAtivo:=0;
mTamUsado:=0;

fContar(RLcabCodpro);
fContar(lbl_secao);
fContar(RLCabQtd);
fContar(RLCabUnd);
fContar(RLCabNome);
fContar(RLCabMarca);
fContar(RLCabPU);
fContar(lbl_P2VALIPI);
fContar(rlcab_totdesc);
fContar(RLCabTotal);

if mTamUsado<>mTamTotal then
   begin
   mQtdFalta:=mTamTotal-mTamUsado;
   mQtdAju := trunc(mQtdFalta / mQtdAtivo);
   mDifAju := mQtdFalta - (mQtdAju * mQtdAtivo);

   fincrementar(RLcabCodpro,mQtdAju+mDifAju );
   fincrementar(lbl_secao,mQtdAju+mDifAju );
   fincrementar(RLCabQtd,mQtdAju+mDifAju );
   fincrementar(RLCabUnd,mQtdAju+mDifAju );
   fincrementar(RLCabNome,mQtdAju+mDifAju );
   fincrementar(RLCabMarca,mQtdAju+mDifAju );
   fincrementar(RLCabPU,mQtdAju+mDifAju );
   fincrementar(lbl_P2VALIPI,mQtdAju+mDifAju );
   fincrementar(rlcab_totdesc,mQtdAju+mDifAju );
   fincrementar(RLCabTotal,mQtdAju+mDifAju );

   fLeft(RLcabCodpro);
   fLeft(lbl_secao);
   fLeft(RLCabQtd);
   fLeft(RLCabUnd);
   fLeft(RLCabNome);
   fLeft(RLCabMarca);
   fLeft(RLCabPU);
   fLeft(lbl_P2VALIPI);
   fLeft(rlcab_totdesc);
   fLeft(RLCabTotal);

   end;




end;



procedure TFrm_Pedido_Fortes.fAjustarColunaRlPedido03;

const


mRLcabCodpro_mod03   = 35;
mlbl_secao_mod03     = 35;
mRLCabQtd_mod03      = 38;
mRLCabUnd_mod03      = 21;

mrlcab_nome_mod03    = 241;
mRLCabMarca_mod03    = 66;
mRLCabPU_mod03_caixa = 70;
mRLCabPU_mod03       = 65;

mrlcab03_P2VALIPI    = 66;
mrlvl_total_mod03    = 78;



mTamTotal = 705;
mdiferleft = 1;

var
mLeft: integer;
mQtdFalta: integer;
mQtdAtivo: integer;
mTamUsado: integer;
mQtdAju: integer;
mDifAju: integer;


   procedure fContar(pLabel: TRLLabel);
   begin
   if pLabel.Visible=true then
      begin
      mQtdAtivo:=mQtdAtivo+1;
      mTamUsado:=mTamUsado + pLabel.Width;
      end;
   end;

   procedure fIncrementar(out pLabel: TRLLabel; pValor: integer);
   begin
   if pLabel.Visible=true then
      begin
      pLabel.Width := pLabel.Width + pValor;
      mDifAju      :=0;
      end;
   end;


   procedure fLeft(out pLabel: TRLLabel);
   begin
   if pLabel.Visible=true then
      begin
      pLabel.Left :=  mLeft;
      mLeft       := mLeft + pLabel.Width + mdiferleft ;
      end;
   end;

begin
mLeft:=1;





RLcabCodpro_mod03.Width    :=mRLcabCodpro_mod03;
lbl_secao_mod03.Width      :=mlbl_secao_mod03;
RLCabQtd_mod03.Width       :=mRLCabQtd_mod03;
RLCabUnd_mod03.Width       :=mRLCabUnd_mod03;

rlcab_nome_mod03.Width      :=mrlcab_nome_mod03;
RLCabMarca_mod03.Width     :=mRLCabMarca_mod03;
RLCabPU_mod03_caixa.Width        :=mRLCabPU_mod03_caixa;
RLCabPU_mod03.Width  :=mRLCabPU_mod03;

rlcab03_P2VALIPI.Width   :=mrlcab03_P2VALIPI;
rlvl_total_mod03.Width     :=mrlvl_total_mod03;

mQtdAtivo:=0;
mTamUsado:=0;

fContar(RLcabCodpro_mod03);
fContar(lbl_secao_mod03);
fContar(RLCabQtd_mod03);
fContar(RLCabUnd_mod03);
fContar(rlcab_nome_mod03);
fContar(RLCabMarca_mod03);
fContar(RLCabPU_mod03_caixa);
fContar(RLCabPU_mod03);
fContar(rlcab03_P2VALIPI);
fContar(rlvl_total_mod03);

if mTamUsado<>mTamTotal then
   begin
   mQtdFalta:=mTamTotal-mTamUsado;
   mQtdAju := trunc(mQtdFalta / mQtdAtivo);
   mDifAju := mQtdFalta - (mQtdAju * mQtdAtivo);



   fincrementar(RLcabCodpro_mod03,mQtdAju+mDifAju);
   fincrementar(lbl_secao_mod03,mQtdAju+mDifAju);
   fincrementar(RLCabQtd_mod03,mQtdAju+mDifAju);
   fincrementar(RLCabUnd_mod03,mQtdAju+mDifAju);
   fincrementar(rlcab_nome_mod03,mQtdAju+mDifAju);
   fincrementar(RLCabMarca_mod03,mQtdAju+mDifAju);
   fincrementar(RLCabPU_mod03_caixa,mQtdAju+mDifAju);
   fincrementar(RLCabPU_mod03,mQtdAju+mDifAju);
   fincrementar(rlcab03_P2VALIPI,mQtdAju+mDifAju);
   fincrementar(rlvl_total_mod03,mQtdAju+mDifAju);


   fLeft(RLcabCodpro_mod03);
   fLeft(lbl_secao_mod03);
   fLeft(RLCabQtd_mod03);
   fLeft(RLCabUnd_mod03);
   fLeft(rlcab_nome_mod03);
   fLeft(RLCabMarca_mod03);
   fLeft(RLCabPU_mod03_caixa);
   fLeft(RLCabPU_mod03);
   fLeft(rlcab03_P2VALIPI);
   fLeft(rlvl_total_mod03);

   end;




end;



procedure TFrm_Pedido_Fortes.rlband_tot_ipiBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//txt_totipi.Caption:=FormatFloat(mcasas,mtotipi);

end;

procedure TFrm_Pedido_Fortes.RLGroup_mod04BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if mtotliqgru=DM2.Qr_CabP1TOTALL.AsFloat then
   begin
   rl_cabamb_mod04.Visible   :=false;
   end

end;


procedure TFrm_Pedido_Fortes.fLerCadp01TiposCorte;
begin
Qr_Ped01_tipos_corte.close;
Qr_Ped01_tipos_corte.SQL.clear;
Qr_Ped01_tipos_corte.SQL.add('select * from CADP01_TIPOS_CORTE '
                            +' where PTC_CODEMP=:CODEMP '
                            +' and PTC_CHAVE=:CHAVE '
                            +' and PTC_CHAVE_ANO=:CHAVE_ANO '
                            +' order by PTC_SEQ ');
Qr_Ped01_tipos_corte.ParamByName('CODEMP').AsInteger := DM2.Qr_CabP1CODEMP.AsInteger;
Qr_Ped01_tipos_corte.ParamByName('CHAVE').AsInteger := DM2.Qr_CabP1CHAVE.AsInteger;
Qr_Ped01_tipos_corte.ParamByName('CHAVE_ANO').AsInteger := DM2.Qr_CabP1LOTSEQ.AsInteger;

try
   Qr_Ped01_tipos_corte.Open;
except on e : exception do
   ex_erroSql_Novo(Qr_Ped01_tipos_corte,2087,'func Erro:'+e.Message ,'CADP01_TIPO_CORTE');
   end;




end;

procedure TFrm_Pedido_Fortes.fLerDadosPadros;
begin


if flfilpad(0,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,'') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP', 'CB_DESCOM',[]) then
    CB_DESCOM.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    CB_DESCOM.Checked := false;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CABCLI',[]) then
     CB_CABCLI.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_CABCLI.Checked:= false;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CABSER',[]) then
     CB_CABSER.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CABSER.Checked:= false;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CABDESC',[]) then
     CB_CABDESC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_CABDESC.Checked:= false;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPCMET',[]) then
     CB_IMPCMET.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_IMPCMET.Checked:=false;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPKITLSEP',[]) then
     cb_impkitlsep.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_impkitlsep.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SECAO_LSEP',[]) then
     cb_secao_lsep.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_secao_lsep.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_REFNOM',[]) then
     CB_REFNOM.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
     CB_REFNOM.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PEND_LISTASEP',[]) then
     CB_PEND_LISTASEP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_PEND_LISTASEP.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MARCANAO',[]) then
     cb_marcanao.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_marcanao.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PEDPEQ_DESCCOMP_MARCA',[]) then
     CB_PEDPEQ_DESCCOMP_MARCA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_PEDPEQ_DESCCOMP_MARCA.Checked:=false;


  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SECAOLSEP',[]) then
     cb_secao_lsep.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_secao_lsep.Checked:=true;



  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_JUROS_MULTAS_LSEP_MOD_PEQ',[]) then
     CB_JUROS_MULTAS_LSEP_MOD_PEQ.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_JUROS_MULTAS_LSEP_MOD_PEQ.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TOTALDESCVLRTOTLIQ',[]) then
     cb_totaldescVlrTotLiq.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_totaldescVlrTotLiq.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TOTALITEMCOMIPI',[]) then
     cb_totalItemComIpi.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_totalItemComIpi.Checked:=false;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCRICAO_FORNECEDOR',[]) then
     CB_DESCRICAO_FORNECEDOR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     CB_DESCRICAO_FORNECEDOR.Checked:=false;


  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TRACO_VERTICAL',[]) then
     cb_traco_vertical.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_traco_vertical.Checked:=true;

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TRACO_HORIZONTAL',[]) then
     cb_traco_horizontal.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
     cb_traco_horizontal.Checked:=true;

   fAtualizarTracoVertical(cb_traco_vertical.Checked);

   fAtualizarTracoHorizontal(cb_traco_horizontal.Checked);

   fAjustarColunaTotalDescVlrTotLiq;
   end
else
   fGravarPadrao;


end;

procedure TFrm_Pedido_Fortes.CB_RELATORIOClick(Sender: TObject);
begin

if CB_RELATORIO.ItemIndex<>2 then
   mpedido_fortes_origem_cfg  := inttostr(CB_RELATORIO.ItemIndex)+'-'
else
   mpedido_fortes_origem_cfg := '';



fLerDadosPadros;
end;

procedure TFrm_Pedido_Fortes.AcionarClick;
begin


if mpedido_fortes_origem='ORCAMENTO_AMBIENTE' then
  CB_RELATORIO.ItemIndex:=0
else if mpedido_fortes_origem='ORCAMENTO_NORMAL' then
  CB_RELATORIO.ItemIndex:=0
else
  CB_RELATORIO.ItemIndex:=2;
CB_RELATORIOClick(self);
end;



procedure tFrm_Pedido_Fortes.fGravarPadrao;
begin

sbn_padrao.Enabled := false;
fDeletaPadroes(0,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,'');


fGravaPadroes(0,'CB_REFNOM'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_REFNOM.Checked,'true','false'));
fGravaPadroes(0,'CB_DESCOM'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_DESCOM.Checked,'true','false'));
fGravaPadroes(0,'CB_CABCLI'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_CABCLI.Checked,'true','false'));
fGravaPadroes(0,'CB_CABSER'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_CABSER.Checked,'true','false'));
fGravaPadroes(0,'CB_CABDESC'  ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_CABDESC.Checked,'true','false'));
fGravaPadroes(0,'CB_IMPCMET'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_IMPCMET.Checked,'true','false'));
fGravaPadroes(0,'CB_IMPKITLSEP'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(cb_impkitlsep.Checked,'true','false'));
fGravaPadroes(0,'CB_SECAOLSEP'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(cb_secao_lsep.Checked,'true','false'));
fGravaPadroes(0,'CB_REFNOM'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_REFNOM.Checked,'true','false'));
fGravaPadroes(0,'CB_PEND_LISTASEP'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_PEND_LISTASEP.Checked,'true','false'));
fGravaPadroes(0,'CB_MARCANAO'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(cb_marcanao.Checked,'true','false'));
fGravaPadroes(0,'CB_PEDPEQ_DESCCOMP_MARCA'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_PEDPEQ_DESCCOMP_MARCA.Checked,'true','false'));
fGravaPadroes(0,'CB_JUROS_MULTAS_LSEP_MOD_PEQ'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_JUROS_MULTAS_LSEP_MOD_PEQ.Checked,'true','false'));
fGravaPadroes(0,'CB_TOTALDESCVLRTOTLIQ'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_TOTALDESCVLRTOTLIQ.Checked,'true','false'));
fGravaPadroes(0,'CB_TOTALITEMCOMIPI'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_TOTALITEMCOMIPI.Checked,'true','false'));
fGravaPadroes(0,'CB_TRACO_VERTICAL'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(CB_TRACO_VERTICAL.Checked,'true','false'));
fGravaPadroes(0,'CB_TRACO_HORIZONTAL'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(cb_traco_horizontal.Checked,'true','false'));
fGravaPadroes(0,'CB_DESCRICAO_FORNECEDOR'   ,'checked'   ,'_Pedido_Fortes'+mpedido_fortes_origem_cfg,iif(cb_descricao_fornecedor.Checked,'true','false'));


fAtualizarTracoHorizontal(cb_traco_horizontal.Checked);
fAtualizarTracoVertical(CB_TRACO_VERTICAL.Checked);
fAjustarColunaTotalDescVlrTotLiq;


end;
procedure TFrm_Pedido_Fortes.sbn_padraoClick(Sender: TObject);
begin
fGravarPadrao;
end;

procedure TFrm_Pedido_Fortes.CB_DESCOMClick(Sender: TObject);
begin
sbn_padrao.Enabled:=true;

end;

procedure TFrm_Pedido_Fortes.RLGroup1AfterPrint(Sender: TObject);
begin
PAREI
end;

end.
