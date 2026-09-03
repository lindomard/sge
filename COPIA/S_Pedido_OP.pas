unit S_Pedido_OP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ComCtrls, DB, DBTables, StdCtrls, DBCtrls;

type
  TFrm_Pedido_OP = class(TForm)
    PageControl1: TPageControl;
    TsModelo01: TTabSheet;
    rlPedido_OPMod01: TRLReport;
    rlmod01_cab_Matricial: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLGroup_gruposProd: TRLGroup;
    rlcabgru: TRLBand;
    Qr_Ped02_MP: TQuery;
    Src_Ped02_MP: TDataSource;
    RLDBText2: TRLDBText;
    Qr_Ped02_MPP2MP_CODEMP: TFloatField;
    Qr_Ped02_MPP2MP_LOTSEQ: TFloatField;
    Qr_Ped02_MPP2MP_CHAVE: TFloatField;
    Qr_Ped02_MPP2MP_ITEM: TFloatField;
    Qr_Ped02_MPP2MP_CODPRO: TFloatField;
    Qr_Ped02_MPP2MP_QTDSOL: TFloatField;
    Qr_Ped02_MPP2MP_QTD_DEVOL: TFloatField;
    Qr_Ped02_MPP2MP_QTD_SOBRA: TFloatField;
    Qr_Ped02_MPP2MP_QTD_QUEBRA: TFloatField;
    Qr_Ped02_MPP2MP_QTD_OUTRET: TFloatField;
    Qr_Ped02_MPP2MP_PRECO: TFloatField;
    Qr_Ped02_MPP2MP_DATAHORA_SOL: TDateTimeField;
    Qr_Ped02_MPP2MP_LOTE: TStringField;
    Qr_Ped02_MPP2MP_DTVCTO: TDateTimeField;
    Qr_Ped02_MPP2MP_PCOCUS: TFloatField;
    Qr_Ped02_MPP2MP_PCOCOMPRA: TFloatField;
    Qr_Ped02_MPP2MP_CODPRO_ORI: TFloatField;
    Qr_Ped02_MPP2MP_LOTE_ORI: TStringField;
    Qr_Ped02_MPP2MP_PRECO_ORI: TFloatField;
    Qr_Ped02_MPP2MP_QTD_ORI: TFloatField;
    Qr_Ped02_MPP2MP_DTVCTO_ORI: TDateTimeField;
    Qr_Ped02_MPP2MP_NOME2: TStringField;
    Qr_Ped02_MPP2MP_OUTINF: TStringField;
    Qr_Ped02_MPPDNOME_PA: TStringField;
    Qr_Ped02_MPPDMARCA_PA: TStringField;
    Qr_Ped02_MPPDUND_PA: TStringField;
    Qr_Ped02_MPPDNOME_MP: TStringField;
    Qr_Ped02_MPPDMARCA_MP: TStringField;
    Qr_Ped02_MPPDUND_MP: TStringField;
    rlDetalhe: TRLBand;
    txt_nomemp: TRLDBText;
    RLBand_cabgru: TRLBand;
    lbl_codmp: TRLLabel;
    lbl_nomemp: TRLLabel;
    lbl_quant: TRLLabel;
    lbl_perdas: TRLLabel;
    lbl_sobra: TRLLabel;
    Qr_Ped02_MPnomemp_completa: TStringField;
    txt_quant: TRLDBText;
    Qr_Ped02_MPretorno_calc: TStringField;
    Qr_Ped02_MPquebra_calc: TStringField;
    txt_sobra: TRLDBText;
    txt_perdas: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    txt_codmp: TRLDBText;
    tsModelo02: TTabSheet;
    rlPedido_OPMod02: TRLReport;
    rlmod02_cab_Matricial: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLDBText5: TRLDBText;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    Ts_Mod03ProdeValores: TTabSheet;
    RLMod02ProdeValores: TRLReport;
    RLBand1_Matricial: TRLBand;
    RLSystemInfo9: TRLSystemInfo;
    RLDBText9: TRLDBText;
    RLSystemInfo10: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    RLGMod02_gruposProd: TRLGroup;
    RLBandMod02_cabgru: TRLBand;
    lblCabM02_Nompro: TRLDBText;
    lblCab_Codpro: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand3: TRLBand;
    txtM02_Nompro: TRLDBText;
    txtM02_Quant: TRLDBText;
    txtM02_PcoUnit: TRLDBText;
    txtM02_VT: TRLDBText;
    txtM02_Codpro: TRLDBText;
    RLBand4: TRLBand;
    lblM02_Codpro: TRLLabel;
    lblM02_Nompro: TRLLabel;
    lblM02_Quant: TRLLabel;
    lblM02_VT: TRLLabel;
    lblM02_PcoUnit: TRLLabel;
    RLDBText18: TRLDBText;
    Qr_Ped02_MPtotal_pa_total: TFloatField;
    Qr_Ped02_MPtotal_mp: TFloatField;
    RLBand_TotGru: TRLBand;
    rodM02_Codpro: TRLLabel;
    rodM02_Nompro: TRLLabel;
    rodM02_Quant: TRLLabel;
    rodM02_PcoUnit: TRLLabel;
    rodm02_totmp: TRLLabel;
    Qr_Ped02_MPTOTDES_PA: TFloatField;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    txt_totluc: TRLLabel;
    txt_obsrod: TRLLabel;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    txt_totlucGer: TRLLabel;
    txt_obsrodGer: TRLLabel;
    lbl_lote: TRLLabel;
    txt_lote: TRLDBText;
    RLDBText10: TRLDBText;
    lbl_m02_lote: TRLLabel;
    txt_m02_lote: TRLDBText;
    txttot_m02_lote: TRLLabel;
    txttt_m02_lote: TRLLabel;
    txttg_m02_lote: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    lbl_produz: TRLLabel;
    txt_produz: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLSubDet_mp: TRLSubDetail;
    RLBand6: TRLBand;
    txtlm_mp_codpro: TRLDBText;
    txtlm_mp_outinf: TRLDBText;
    RLSubDet_prod: TRLSubDetail;
    rlMod02cabgru: TRLBand;
    txtlm_prod_nome: TRLDBText;
    txtlm_prod_codpro: TRLDBText;
    txtlm_prod_qtd: TRLDBText;
    rllm_prod_tit__: TRLBand;
    txtlm_mp_nome: TRLDBText;
    txtlm_mp_qtdsol: TRLDBText;
    txtlm_mp_sobra: TRLDBText;
    txtlm_mp_quebra: TRLDBText;
    txtlm_mp_outros: TRLDBText;
    txtlm_mp_devol: TRLDBText;
    rllm_prod_cab: TRLBand;
    lbllm_prod_codpro: TRLLabel;
    lbllm_prod_nome: TRLLabel;
    lbllm_prod_qtd: TRLLabel;
    lbllm_prod_marca: TRLLabel;
    txtlm_prod_marca: TRLDBText;
    rllm_prod_tit: TRLBand;
    rllm_mp_tit: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel10: TRLLabel;
    rlmod01_cab_logo: TRLBand;
    logotipo_relmod01: TRLImage;
    rldb_razao: TRLDBText;
    rlobs: TRLMemo;
    lbl_cnpj_ie: TRLMemo;
    rldb_ender: TRLDBMemo;
    rlmod01_cab_CabCli: TRLBand;
    lbl_cabcli: TRLLabel;
    RLDBText6: TRLDBText;
    db_codcli: TRLDBText;
    lbl_cadcnpj: TRLLabel;
    db_cnpj: TRLDBText;
    lbl_fantasia: TRLLabel;
    db_fantasia: TRLDBText;
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
    lbl_chaveped: TRLLabel;
    db_chaveped: TRLDBText;
    lbl_datped: TRLLabel;
    db_datped: TRLDBText;
    lbl_pag: TRLLabel;
    db_barpag: TRLLabel;
    db_pag: TRLSystemInfo;
    db_qtdpag: TRLSystemInfo;
    db_fone: TRLLabel;
    rlmod01_cab_titulo: TRLBand;
    RLLabel12: TRLLabel;
    Qr_Ped02_MPtotal_qtd_entregue: TFloatField;
    lbllm_mp_codpro: TRLLabel;
    lbllm_mp_nome: TRLLabel;
    lbllm_mp_outinf: TRLLabel;
    lbllm_mp_qtdsol: TRLLabel;
    lbllm_mp_sobra: TRLLabel;
    lbllm_mp_quebra: TRLLabel;
    lbllm_mp_outros: TRLLabel;
    lbllm_mp_devol: TRLLabel;
    TsModelo03: TTabSheet;
    rlPedido_OPMod03: TRLReport;
    RLGroup1: TRLGroup;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    rl_cabecalho: TRLBand;
    RLBand11: TRLBand;
    RLLabel24: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLSystemInfo18: TRLSystemInfo;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLSystemInfo14: TRLSystemInfo;
    RLSystemInfo13: TRLSystemInfo;
    rl_base_prod: TRLLabel;
    rl_quant_prod: TRLLabel;
    rl_retorno_prod: TRLLabel;
    rl_desc_prod: TRLLabel;
    rl_quebra_prod: TRLLabel;
    RLSystemInfo17: TRLSystemInfo;
    TsModelo03_Finan: TTabSheet;
    lbl_prod_acabado: TRLLabel;
    TsModelo04: TTabSheet;
    rlPedido_OPMod04: TRLReport;
    RLBand15: TRLBand;
    rl_imgmod04: TRLImage;
    RLDBText45: TRLDBText;
    robs_mod04: TRLMemo;
    RLMemo6: TRLMemo;
    RLDBMemo3: TRLDBMemo;
    RLBand16: TRLBand;
    RLLabel73: TRLLabel;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText48: TRLDBText;
    RLLabel75: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel76: TRLLabel;
    RLDBText50: TRLDBText;
    RLLabel77: TRLLabel;
    RLDBText51: TRLDBText;
    RLLabel78: TRLLabel;
    RLDBText52: TRLDBText;
    RLLabel79: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel80: TRLLabel;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLLabel81: TRLLabel;
    RLDBText56: TRLDBText;
    RLLabel82: TRLLabel;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLLabel83: TRLLabel;
    RLDBText59: TRLDBText;
    RLLabel84: TRLLabel;
    RLDBText60: TRLDBText;
    RLLabel85: TRLLabel;
    RLDBText61: TRLDBText;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLSystemInfo21: TRLSystemInfo;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLSystemInfo22: TRLSystemInfo;
    RLSystemInfo23: TRLSystemInfo;
    RLSystemInfo24: TRLSystemInfo;
    Qr_Ped_02: TQuery;
    Qr_Ped_02PDCODPRO: TFloatField;
    Qr_Ped_02PDNOME: TStringField;
    Qr_Ped_02P2QTD: TFloatField;
    Qr_Ped_02P1ORC_PRAZOENT: TStringField;
    RLLabel19: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel13: TRLLabel;
    Qr_Ped02_MPCODIGO_PRODUTO: TFloatField;
    Qr_Ped02_MPCODIGO_AGRUPAMENTO: TFloatField;
    Qr_Ped02_MPNOME_PRODUTO: TStringField;
    Qr_Ped02_MPPDCODGRU: TFloatField;
    Qr_Ped02_MPPDNOMGRU: TStringField;
    Qr_Ped_02PDUND: TStringField;
    rl_empr: TRLLabel;
    rl_ender: TRLLabel;
    rl_fone: TRLLabel;
    rlPedido_OPMod03_Finan: TRLReport;
    RLGroup2: TRLGroup;
    RLBand1: TRLBand;
    lbl_prod_acabado2: TRLLabel;
    RLBand9: TRLBand;
    rl_base_prod2: TRLLabel;
    rl_quant_prod2: TRLLabel;
    rl_retorno_prod2: TRLLabel;
    rl_desc_prod2: TRLLabel;
    rl_quebra_prod2: TRLLabel;
    RLBand10: TRLBand;
    rl_empr2: TRLLabel;
    rl_ender2: TRLLabel;
    rl_fone2: TRLLabel;
    RLBand12: TRLBand;
    RLLabel44: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel48: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel49: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel50: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel53: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel54: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel55: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel56: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLSystemInfo15: TRLSystemInfo;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLSystemInfo16: TRLSystemInfo;
    RLSystemInfo19: TRLSystemInfo;
    RLSystemInfo20: TRLSystemInfo;
    RLLabel61: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLBand17: TRLBand;
    RLLabel15: TRLLabel;
    rl_total_grupo: TRLLabel;
    RLBand18: TRLBand;
    RLLabel16: TRLLabel;
    rl_total_ped: TRLLabel;
    RLBand19: TRLBand;
    RLLabel20: TRLLabel;
    rl_totped: TRLLabel;
    RLGroup4: TRLGroup;
    RLBand13: TRLBand;
    RLLabel62: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    rbl_prod_ac: TRLLabel;
    rbl_qtd: TRLLabel;
    rl_infcomp: TRLLabel;
    rbl_prz: TRLLabel;
    rl_versao: TRLLabel;
    rl_unidade: TRLMemo;
    rl_lote: TRLLabel;
    rl_qtdsol: TRLMemo;
    rl_qtdpro: TRLMemo;
    RLBand14: TRLBand;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    RLLabel95: TRLLabel;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel114: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel118: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel120: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel131: TRLLabel;
    RLLabel132: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel134: TRLLabel;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLLabel137: TRLLabel;
    RLLabel138: TRLLabel;
    RLLabel139: TRLLabel;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLLabel144: TRLLabel;
    rl_qtdenv: TRLMemo;
    RLLabel145: TRLLabel;
    RLLabel146: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLLabel149: TRLLabel;
    RLLabel150: TRLLabel;
    RLLabel151: TRLLabel;
    RLLabel152: TRLLabel;
    RLLabel153: TRLLabel;
    RLLabel154: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLLabel163: TRLLabel;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    RLLabel166: TRLLabel;
    RLLabel167: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel169: TRLLabel;
    RLLabel170: TRLLabel;
    RLLabel171: TRLLabel;
    RLLabel172: TRLLabel;
    RLLabel173: TRLLabel;
    RLLabel174: TRLLabel;
    RLLabel175: TRLLabel;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLLabel178: TRLLabel;
    RLLabel179: TRLLabel;
    RLLabel180: TRLLabel;
    RLLabel181: TRLLabel;
    RLLabel182: TRLLabel;
    RLLabel183: TRLLabel;
    RLLabel184: TRLLabel;
    RLLabel185: TRLLabel;
    RLLabel186: TRLLabel;
    RLLabel187: TRLLabel;
    RLLabel188: TRLLabel;
    Qr_Ped_02PDMARCA: TStringField;
    Modelo05: TTabSheet;
    rlPedido_OPMod05: TRLReport;
    RLBand20: TRLBand;
    rl_imgmod05: TRLImage;
    RLDBText43: TRLDBText;
    RLMemo2: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    RLBand21: TRLBand;
    RLLabel189: TRLLabel;
    RLDBText44: TRLDBText;
    RLDBText62: TRLDBText;
    RLLabel190: TRLLabel;
    RLDBText63: TRLDBText;
    RLLabel191: TRLLabel;
    RLDBText64: TRLDBText;
    RLLabel192: TRLLabel;
    RLDBText65: TRLDBText;
    RLLabel193: TRLLabel;
    RLDBText66: TRLDBText;
    RLLabel194: TRLLabel;
    RLDBText67: TRLDBText;
    RLLabel195: TRLLabel;
    RLDBText68: TRLDBText;
    RLLabel196: TRLLabel;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLLabel197: TRLLabel;
    RLDBText71: TRLDBText;
    RLLabel198: TRLLabel;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLLabel199: TRLLabel;
    RLDBText74: TRLDBText;
    RLLabel200: TRLLabel;
    RLDBText75: TRLDBText;
    RLLabel201: TRLLabel;
    RLDBText76: TRLDBText;
    RLLabel202: TRLLabel;
    RLLabel203: TRLLabel;
    RLSystemInfo25: TRLSystemInfo;
    RLLabel204: TRLLabel;
    RLLabel205: TRLLabel;
    RLSystemInfo26: TRLSystemInfo;
    RLSystemInfo27: TRLSystemInfo;
    RLSystemInfo28: TRLSystemInfo;
    RLBand24: TRLBand;
    r4_pdcodpro: TRLLabel;
    r4_codigo: TRLLabel;
    r4_produto: TRLLabel;
    r4_qtd: TRLLabel;
    r4_un: TRLLabel;
    r4_obs: TRLLabel;
    r4_pdnome: TRLLabel;
    r4_pdund: TRLLabel;
    r4_pdqtd: TRLLabel;
    rl4_obs: TRLLabel;
    robs_mod05: TRLMemo;
    Ds_Ped_02: TDataSource;
    RLBand22: TRLBand;
    RLLabel206: TRLLabel;
    RLLabel207: TRLLabel;
    RLLabel208: TRLLabel;
    RLLabel209: TRLLabel;
    RLLabel210: TRLLabel;
    RLLabel211: TRLLabel;
    RLDBText77: TRLDBText;
    Qr_Ped_02P2COMPLEMENTO: TMemoField;
    RLBand23: TRLBand;
    RLLabel212: TRLLabel;
    RLLabel213: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    procedure Qr_Ped02_MPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RLGMod02_gruposProdBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBandMod02_cabgruAfterPrint(Sender: TObject);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand_TotGruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLMod02ProdeValoresBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlmod01_cab_logoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_cabecalhoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand18BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17AfterPrint(Sender: TObject);
    procedure RLBand18AfterPrint(Sender: TObject);
    procedure RLBand19BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLGroup4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand24BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand20BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fBordasOpMod01(mBordas: Boolean): Boolean;
function fBordasOpMod02(mBordas: Boolean): Boolean;
function fBordasOpMod03(mBordas: Boolean): Boolean;

var
  Frm_Pedido_OP: TFrm_Pedido_OP;
  mTotal_Pa: Real=0;
  mTotQtd_MP: Real=0;
  mTotVal_MP: Real=0;
  mTotal_Pa_Ger: Real=0;
  mTotVal_MP_Ger: Real=0;
  m_total_grupo:  Real=0;
  m_total_pedido: Real=0;

implementation

uses S_DM1, S_DM2, Func, lerarq, S_DM4;

{$R *.dfm}

procedure TFrm_Pedido_OP.Qr_Ped02_MPCalcFields(DataSet: TDataSet);
begin
mcinst:=Qr_Ped02_MPPDNOME_MP.AsString;
if trim(Qr_Ped02_MPP2MP_NOME2.AsString)<>'' then
   mcinst:=mcinst+' '+Qr_Ped02_MPP2MP_NOME2.AsString;
if trim(Qr_Ped02_MPP2MP_OUTINF.AsString)<>'' then
   mcinst:=mcinst+' '+Qr_Ped02_MPP2MP_OUTINF.AsString;
if length(mcinst)>80 then
   Qr_Ped02_MPnomemp_completa.AsString:=copy(mcinst,1,80)
else
   Qr_Ped02_MPnomemp_completa.AsString:=mcinst;

if Qr_Ped02_MPP2MP_QTD_QUEBRA.AsFloat=0 then
   Qr_Ped02_MPquebra_calc.AsString:=''
else
   Qr_Ped02_MPquebra_calc.AsString:=FormatFloat(mcasqtd, Qr_Ped02_MPP2MP_QTD_QUEBRA.AsFloat);
Qr_Ped02_MPtotal_pa_total.AsFloat:=(Qr_Ped02_MPP2MP_PRECO_ORI.AsFloat*
                                   Qr_Ped02_MPP2MP_QTD_ORI.AsFloat)
                                   -Qr_Ped02_MPTOTDES_PA.AsFloat;
Qr_Ped02_MPtotal_mp.AsFloat:=(Qr_Ped02_MPP2MP_PRECO.AsFloat*
                              Qr_Ped02_MPP2MP_QTDSOL.AsFloat);

Qr_Ped02_MPtotal_qtd_entregue.AsFloat:=Qr_Ped02_MPP2MP_QTDSOL.AsFloat+Qr_Ped02_MPP2MP_QTD_SOBRA.AsFloat;
Qr_Ped02_MPretorno_calc.AsString:=FloatToStr(Qr_Ped02_MPP2MP_QTD_DEVOL.AsFloat+Qr_Ped02_MPP2MP_QTD_OUTRET.AsFloat);

end;

function fBordasOpMod01(mBordas: Boolean): Boolean;
begin
Frm_Pedido_OP.rlPedido_OPMod01.Borders.DrawLeft    :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod01.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod01.Borders.DrawTop     :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod01.Borders.DrawBottom  :=mBordas;
Frm_Pedido_OP.RLGroup_gruposProd.Borders.DrawTop   :=mBordas;
Frm_Pedido_OP.RLGroup_gruposProd.Borders.DrawBottom:=mBordas;
Frm_Pedido_OP.RLBand_cabgru.Borders.DrawTop        :=mBordas;
Frm_Pedido_OP.RLBand_cabgru.Borders.DrawBottom     :=mBordas;

Frm_Pedido_OP.lbl_codmp.Borders.DrawRight        :=mBordas;
Frm_Pedido_OP.lbl_nomemp.Borders.DrawRight       :=mBordas;
Frm_Pedido_OP.lbl_quant.Borders.DrawRight        :=mBordas;
Frm_Pedido_OP.lbl_sobra.Borders.DrawRight        :=mBordas;

Frm_Pedido_OP.lbl_perdas.Borders.DrawRight       :=mBordas;
Frm_Pedido_OP.txt_perdas.Borders.DrawRight       :=mBordas;
Frm_Pedido_OP.txt_codmp.Borders.DrawRight        :=mBordas;
Frm_Pedido_OP.txt_nomemp.Borders.DrawRight       :=mBordas;
Frm_Pedido_OP.txt_quant.Borders.DrawRight        :=mBordas;
Frm_Pedido_OP.txt_sobra.Borders.DrawRight        :=mBordas;

Frm_Pedido_OP.rlmod01_cab_CabCli.Borders.DrawTop :=mBordas;

Frm_Pedido_OP.logotipo_relmod01.Borders.DrawRight:=mBordas;
//Frm_Pedido_OP.rlmod01_cab_titulo.Borders.DrawTop :=mBordas;
result:=true;

end;


function fBordasOpMod02(mBordas: Boolean): Boolean;
begin
Frm_Pedido_OP.rlPedido_OPMod02.Borders.DrawLeft    :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod02.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod02.Borders.DrawTop     :=mBordas;
Frm_Pedido_OP.rlPedido_OPMod02.Borders.DrawBottom  :=mBordas;

Frm_Pedido_OP.lbllm_mp_nome.Borders.DrawLeft       :=mBordas;
Frm_Pedido_OP.lbllm_mp_outinf.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.lbllm_mp_qtdsol.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.lbllm_mp_sobra.Borders.DrawLeft      :=mBordas;
Frm_Pedido_OP.lbllm_mp_quebra.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.lbllm_mp_outros.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.lbllm_mp_devol.Borders.DrawLeft      :=mBordas;


Frm_Pedido_OP.txtlm_mp_nome.Borders.DrawLeft       :=mBordas;
Frm_Pedido_OP.txtlm_mp_outinf.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.txtlm_mp_qtdsol.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.txtlm_mp_sobra.Borders.DrawLeft      :=mBordas;
Frm_Pedido_OP.txtlm_mp_quebra.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.txtlm_mp_outros.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.txtlm_mp_devol.Borders.DrawLeft      :=mBordas;


Frm_Pedido_OP.lbllm_prod_nome.Borders.DrawLeft      :=mBordas;
Frm_Pedido_OP.lbllm_prod_marca.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.lbllm_prod_qtd.Borders.DrawLeft       :=mBordas;

Frm_Pedido_OP.txtlm_prod_nome.Borders.DrawLeft      :=mBordas;
Frm_Pedido_OP.txtlm_prod_marca.Borders.DrawLeft     :=mBordas;
Frm_Pedido_OP.txtlm_prod_qtd.Borders.DrawLeft       :=mBordas;

Frm_Pedido_OP.rllm_prod_cab.Borders.DrawBottom      :=mBordas;
//Frm_Pedido_OP.rllm_mp_cab.Borders.DrawBottom        :=mBordas;

Frm_Pedido_OP.rllm_prod_tit.Borders.DrawBottom      :=mBordas;
Frm_Pedido_OP.rllm_mp_tit.Borders.DrawBottom        :=mBordas;


//Frm_Pedido_OP.RLGMod02_gruposProd.Borders.DrawTop   :=mBordas;
//Frm_Pedido_OP.RLGMod02_gruposProd.Borders.DrawBottom:=mBordas;
//Frm_Pedido_OP.RLBandMod02_cabgru.Borders.DrawTop        :=mBordas;
//Frm_Pedido_OP.RLBandMod02_cabgru.Borders.DrawBottom     :=mBordas;

//Frm_Pedido_OP.lblMod02_codmp.Borders.DrawRight    :=mBordas;
//Frm_Pedido_OP.lblMod02_nomemp.Borders.DrawRight   :=mBordas;
//Frm_Pedido_OP.lblMod02_quant.Borders.DrawRight    :=mBordas;
//Frm_Pedido_OP.lblMod02_sobra.Borders.DrawRight    :=mBordas;

//Frm_Pedido_OP.txtMod02_codmp.Borders.DrawRight    :=mBordas;
//Frm_Pedido_OP.txtMod02_nomemp.Borders.DrawRight   :=mBordas;
//Frm_Pedido_OP.txtMod02_quant.Borders.DrawRight    :=mBordas;
//Frm_Pedido_OP.txtMod02_sobra.Borders.DrawRight    :=mBordas;
Frm_Pedido_OP.rodM02_Nompro.Borders.DrawRight     :=mBordas;
Frm_Pedido_OP.rodM02_Quant.Borders.DrawRight      :=mBordas;
Frm_Pedido_OP.rodM02_PcoUnit.Borders.DrawRight    :=mBordas;
Frm_Pedido_OP.RLLabel4.Borders.DrawRight          :=mBordas;
Frm_Pedido_OP.RLLabel5.Borders.DrawRight          :=mBordas;
Frm_Pedido_OP.txt_obsrodGer.Borders.DrawRight     :=mBordas;
Frm_Pedido_OP.txt_obsrodGer.Borders.DrawRight     :=mBordas;
result:=true;

end;


function fBordasOpMod03(mBordas: Boolean): Boolean;
begin
Frm_Pedido_OP.RLMod02ProdeValores.Borders.DrawLeft    :=mBordas;
Frm_Pedido_OP.RLMod02ProdeValores.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.RLMod02ProdeValores.Borders.DrawTop     :=mBordas;
Frm_Pedido_OP.RLMod02ProdeValores.Borders.DrawBottom  :=mBordas;
Frm_Pedido_OP.RLGMod02_gruposProd.Borders.DrawTop     :=mBordas;
Frm_Pedido_OP.RLGMod02_gruposProd.Borders.DrawBottom  :=mBordas;
Frm_Pedido_OP.RLBandMod02_cabgru.Borders.DrawBottom   :=mBordas;
Frm_Pedido_OP.lblM02_Codpro.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.lblM02_Nompro.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.lblM02_Quant.Borders.DrawRight    :=mBordas;
Frm_Pedido_OP.lblM02_PcoUnit.Borders.DrawRight  :=mBordas;
Frm_Pedido_OP.RLSubDet_mp.Borders.DrawTop       :=mBordas;
Frm_Pedido_OP.RLSubDet_mp.Borders.DrawBottom    :=mBordas;
Frm_Pedido_OP.RLSubDet_prod.Borders.DrawTop     :=mBordas;
Frm_Pedido_OP.RLSubDet_prod.Borders.DrawBottom  :=mBordas;
Frm_Pedido_OP.txtM02_Codpro.Borders.DrawRight    :=mBordas;
Frm_Pedido_OP.txtM02_Nompro.Borders.DrawRight    :=mBordas;
Frm_Pedido_OP.txtM02_Quant.Borders.DrawRight     :=mBordas;
Frm_Pedido_OP.txtM02_PcoUnit.Borders.DrawRight   :=mBordas;
Frm_Pedido_OP.RLBand_TotGru.Borders.DrawTop      :=mBordas;
Frm_Pedido_OP.RLBand_TotGru.Borders.DrawBottom   :=mBordas;
Frm_Pedido_OP.txt_obsrod.Borders.DrawRight       :=mBordas;
result:=true;
end;

procedure TFrm_Pedido_OP.FormCreate(Sender: TObject);
begin
fBordasOpMod01(true);
fBordasOpMod02(true);
fBordasOpMod03(true);
Qr_Ped02_MPP2MP_QTD_DEVOL.DisplayFormat :=mcasqtd;
Qr_Ped02_MPP2MP_QTD_SOBRA.DisplayFormat :=mcasqtd;
Qr_Ped02_MPP2MP_QTD_QUEBRA.DisplayFormat:=mcasqtd;
Qr_Ped02_MPP2MP_QTD_OUTRET.DisplayFormat:=mcasqtd;
Qr_Ped02_MPP2MP_PRECO.DisplayFormat     :=mcasaspu;
Qr_Ped02_MPP2MP_DTVCTO.DisplayFormat    :=fdt2;
Qr_Ped02_MPP2MP_PCOCUS.DisplayFormat    :=mcasaspu;
Qr_Ped02_MPP2MP_PCOCOMPRA.DisplayFormat :=mcasaspu;
Qr_Ped02_MPP2MP_PRECO_ORI.DisplayFormat :=mcasaspu;
Qr_Ped02_MPP2MP_QTD_ORI.DisplayFormat   :=mcasqtd;
Qr_Ped02_MPP2MP_DTVCTO_ORI.DisplayFormat:=fdt2;
Qr_Ped02_MPtotal_mp.DisplayFormat       :=mcasaspu;
Qr_Ped02_MPtotal_pa_total.DisplayFormat :=mcasaspu;
end;

procedure TFrm_Pedido_OP.RLGMod02_gruposProdBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotal_Pa :=0;
mTotQtd_MP:=0;
mTotVal_MP:=0;
end;

procedure TFrm_Pedido_OP.RLBandMod02_cabgruAfterPrint(Sender: TObject);
begin
mTotal_Pa     :=Qr_Ped02_MPtotal_pa_total.asfloat;
mTotal_Pa_ger :=mTotal_Pa_ger+Qr_Ped02_MPtotal_pa_total.asfloat;
end;

procedure TFrm_Pedido_OP.RLBand3AfterPrint(Sender: TObject);
begin
mTotQtd_MP:=mTotQtd_MP+Qr_Ped02_MPP2MP_QTDSOL.AsFloat;
mTotVal_MP:=mTotVal_MP+Qr_Ped02_MPtotal_mp.AsFloat;
mTotVal_MP_Ger:=mTotVal_MP_Ger+Qr_Ped02_MPtotal_mp.AsFloat;
end;

procedure TFrm_Pedido_OP.RLBand_TotGruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rodM02_Quant.Caption:=Formatfloat(mcasqtd, mTotQtd_MP);
rodm02_totmp.Caption:=FormatFloat(mcasas, mTotVal_MP);
txt_totluc.Caption  :=Formatfloat(mcasas, mTotal_Pa- mTotVal_MP);
end;

procedure TFrm_Pedido_OP.RLMod02ProdeValoresBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotal_Pa_Ger :=0;
mTotVal_MP_Ger:=0;
end;

procedure TFrm_Pedido_OP.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

txt_totlucGer.Caption  :=Formatfloat(mcasas, mTotal_Pa_Ger- mTotVal_MP_Ger);

mTotal_Pa_Ger :=0;
mTotVal_MP_ger:=0;


end;

procedure TFrm_Pedido_OP.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotQtd_MP:=0;
mTotVal_MP:=0;
end;

procedure TFrm_Pedido_OP.rlmod01_cab_logoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

rlobs.Caption:='';
rlobs.Lines.Clear;

if (length(DM1.Tb_EmpFONE.Value) > 1) then
   begin
   if Length(DM1.Tb_EmpFax.Value) > 1 then
      begin
      if (trim(rlobs.Caption) <> '')  then
         rlobs.Caption:=rlobs.Caption+' ';
      rlobs.Caption:=rlobs.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value;
      end
   else
      begin
      if (trim(rlobs.Caption) <> '')  then
         rlobs.Caption:=rlobs.Caption+' ';
      rlobs.Caption:=rlobs.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value;
      end;
   end;
if length(DM1.Tb_EmpE_MAIL.Value) > 1 then
   begin
   if (trim(rlobs.Caption) <> '')  then
       rlobs.Caption:=rlobs.Caption+' ';
   rlobs.Caption:=rlobs.Caption+'e-mail: '+DM1.Tb_EmpE_MAIL.Value;

   end;

if length(DM1.Tb_EmpHOMEPAGE.Value) > 1 then
   begin
   if (trim(rlobs.Caption) <> '')  then
      rlobs.Caption:=rlobs.Caption+' ';
   rlobs.Caption:=rlobs.Caption+'Home Page: '+DM1.Tb_EmpHOMEPAGE.Value;

   end;

rlobs.Lines.Add(rlobs.Caption);


DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

DM4.Tb_LogoSis.Open;
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   DeleteFile('C:\SGE\LOGO_ORCAM.jpg');


if not DM4.Tb_LogoSis.Eof then
   begin
   if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
      DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');
   end;
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   begin
   logotipo_relmod01.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
   logotipo_relmod01.Visible:=true;
   end
else
   logotipo_relmod01.Visible:=false;


end;

procedure TFrm_Pedido_OP.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (Qr_Ped02_MPPDNOMGRU.AsString='VIDROS') or (Qr_Ped02_MPPDNOMGRU.AsString='VIDRO') then
  begin
  rl_base_prod.Visible:=True;
  end
else
  begin
  rl_base_prod.Visible:=False;
  end;
if Qr_Ped02_MPP2MP_CHAVE.IsNull then
  begin
  rl_desc_prod.Caption     :=Qr_Ped02_MPPDNOME_PA.AsString;
  rl_base_prod.Caption     :=Qr_Ped02_MPP2MP_NOME2.AsString;
  rl_quant_prod.Caption    :=Qr_Ped02_MPP2MP_QTD_ORI.AsString;
  end
else
  begin
  rl_desc_prod.Caption     :=Qr_Ped02_MPPDNOME_MP.AsString;
  rl_base_prod.Caption     :=Qr_Ped02_MPP2MP_OUTINF.AsString;
  rl_quant_prod.Caption    :=Qr_Ped02_MPtotal_qtd_entregue.AsString;
  end;
rl_retorno_prod.Caption:='';
rl_quebra_prod.Caption:='';
end;

procedure TFrm_Pedido_OP.rl_cabecalhoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_empr.Caption:='Empresa...: '+dm1.Tb_EmpRAZAO.AsString;
rl_ender.Caption:='Endereço...: '+DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpBAIRRO.AsString+' '+DM1.Tb_EmpCIDADE.AsString+'-'+DM1.Tb_EmpUF.AsString;
rl_fone.Caption:='Telefone..: '+DM1.Tb_Emptelefone.AsString+' Fax..: '+DM1.Tb_EmpFAX.AsString;
end;

procedure TFrm_Pedido_OP.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if not Qr_Ped02_MPP2MP_CHAVE.IsNull then
  begin
  lbl_prod_acabado.Caption:='Produto Acabado ...: '+Qr_Ped02_MPPDNOME_PA.AsString;
  RLGroup1.DataFields:='PDNOME_PA'
  end
else
  begin
  lbl_prod_acabado.Caption:='Grupo do Produto...: '+Qr_Ped02_MPPDNOMGRU.AsString;
  RLGroup1.DataFields:='PDCODGRU'
  end;
end;

procedure TFrm_Pedido_OP.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
robs_mod04.Caption:='';
robs_mod04.Lines.Clear;

if (length(DM1.Tb_EmpFONE.Value) > 1) then
   begin
   if Length(DM1.Tb_EmpFax.Value) > 1 then
      begin
      if (trim(rlobs.Caption) <> '')  then
         robs_mod04.Caption:=rlobs.Caption+' ';
      robs_mod04.Caption:=robs_mod04.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value;
      end
   else
      begin
      if (trim(robs_mod04.Caption) <> '')  then
         robs_mod04.Caption:=rlobs.Caption+' ';
      robs_mod04.Caption:=rlobs.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value;
      end;
   end;
if length(DM1.Tb_EmpE_MAIL.Value) > 1 then
   begin
   if (trim(rlobs.Caption) <> '')  then
       robs_mod04.Caption:=rlobs.Caption+' ';
   robs_mod04.Caption:=rlobs.Caption+'e-mail: '+DM1.Tb_EmpE_MAIL.Value;
   end;

if length(DM1.Tb_EmpHOMEPAGE.Value) > 1 then
   begin
   if (trim(rlobs.Caption) <> '')  then
      rlobs.Caption:=rlobs.Caption+' ';
   rlobs.Caption:=rlobs.Caption+'Home Page: '+DM1.Tb_EmpHOMEPAGE.Value;
   end;
rlobs.Lines.Add(rlobs.Caption);

if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   DeleteFile('C:\SGE\LOGO_ORCAM.jpg');

fSalvarImagem('LOGO_ORCAM','C:\SGE\LOGO_ORCAM.jpg');
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   begin
   rl_imgmod04.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
   rl_imgmod04.Visible:=true;
   end
else
   rl_imgmod04.Visible:=false;

end;

procedure TFrm_Pedido_OP.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (Qr_Ped02_MPPDNOMGRU.AsString='VIDROS') or (Qr_Ped02_MPPDNOMGRU.AsString='VIDRO') then
  begin
  rl_base_prod2.Visible:=True;
  end
else
  begin
  rl_base_prod2.Visible:=False;
  end;
rl_retorno_prod2.Caption:='0,00';
rl_quebra_prod2.Caption:='0,00';
if Qr_Ped02_MPP2MP_CHAVE.IsNull then
  begin
  rl_desc_prod2.Caption     :=Qr_Ped02_MPPDNOME_PA.AsString;
  rl_base_prod2.Caption     :=Qr_Ped02_MPP2MP_NOME2.AsString;
  rl_quant_prod2.Caption    :=Qr_Ped02_MPP2MP_QTD_ORI.AsString;
  rl_retorno_prod2.Caption  :=FormatFloat('###,##0.00',Qr_Ped02_MPP2MP_PRECO_ORI.AsFloat);
  rl_quebra_prod2.Caption   :=FormatFloat('###,##0.00',Qr_Ped02_MPP2MP_QTD_ORI.AsFloat*Qr_Ped02_MPP2MP_PRECO_ORI.AsFloat);
  m_total_grupo:=m_total_grupo+ValFloat(rl_quebra_prod2.Caption);
  m_total_pedido:=m_total_pedido+m_total_grupo;
  end
else
  begin
  rl_desc_prod2.Caption     :=Qr_Ped02_MPPDNOME_MP.AsString;
  rl_base_prod2.Caption     :=Qr_Ped02_MPP2MP_OUTINF.AsString;
  rl_quant_prod2.Caption    :=Qr_Ped02_MPtotal_qtd_entregue.AsString;
  rl_retorno_prod2.Caption  :=FormatFloat('###,##0.00',Qr_Ped02_MPP2MP_PRECO.AsFloat);
  rl_quebra_prod2.Caption   :=FormatFloat('###,##0.00',Qr_Ped02_MPtotal_qtd_entregue.AsFloat*Qr_Ped02_MPP2MP_PRECO.AsFloat);
  m_total_grupo:=m_total_grupo+ValFloat(rl_quebra_prod2.Caption);
  m_total_pedido:=m_total_pedido+ValFloat(rl_quebra_prod2.Caption);
  end;
end;


procedure TFrm_Pedido_OP.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_empr2.Caption:='Empresa...: '+dm1.Tb_EmpRAZAO.AsString;
rl_ender2.Caption:='Endereço...: '+DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpBAIRRO.AsString+' '+DM1.Tb_EmpCIDADE.AsString+'-'+DM1.Tb_EmpUF.AsString;
rl_fone2.Caption:='Telefone..: '+DM1.Tb_Emptelefone.AsString+' Fax..: '+DM1.Tb_EmpFAX.AsString;

end;

procedure TFrm_Pedido_OP.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if not Qr_Ped02_MPP2MP_CHAVE.IsNull then
  begin
  lbl_prod_acabado2.Caption:='Produto Acabado ...: '+Qr_Ped02_MPPDNOME_PA.AsString;
  RLGroup2.DataFields:='PDNOME_PA';
  end
else
  begin
  lbl_prod_acabado2.Caption:='Grupo do Produto...: '+Qr_Ped02_MPPDNOMGRU.AsString;
  RLGroup2.DataFields:='PDCODGRU';
  end;
end;

procedure TFrm_Pedido_OP.RLBand17BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_total_grupo.Caption:=FormatFloat('###,##0.00',m_total_grupo);
end;

procedure TFrm_Pedido_OP.RLBand18BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_total_ped.Caption:=FormatFloat('###,##0.00',m_total_pedido);
end;

procedure TFrm_Pedido_OP.RLBand17AfterPrint(Sender: TObject);
begin
m_total_grupo:=0;
end;

procedure TFrm_Pedido_OP.RLBand18AfterPrint(Sender: TObject);
begin
m_total_pedido:=0;
end;

procedure TFrm_Pedido_OP.RLBand19BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_totped.Caption:=FormatFloat('###,##0.00',StrToFloat(BUSCA_VALOR2('CADP01','P1CHAVE',DM2.Qr_CabP1CHAVE.AsString,'P1TOTALL',DM1.Query1)));
end;

procedure TFrm_Pedido_OP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pedido_OP.RLGroup4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rbl_prod_ac.Caption:='Produto Final........: '+Qr_Ped_02PDCODPRO.AsString+' - '+Qr_Ped_02PDNOME.AsString+'   Marca: '+Qr_Ped_02PDMARCA.AsString;
rl_infcomp.Caption :='Inf. Complementares..: PC-'+Qr_Ped_02P2COMPLEMENTO.AsString;
rbl_prz.Caption:='Prazo p/ Ent..: '+Qr_Ped_02P1ORC_PRAZOENT.AsString;
rbl_qtd.Caption:='Quantidade Prevista..: '+Qr_Ped_02P2QTD.AsString+'  Unidade Medida..: '+Qr_Ped_02PDUND.AsString;
end;

procedure TFrm_Pedido_OP.RLBand24BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
r4_pdcodpro.Caption:=Qr_Ped_02PDCODPRO.AsString;
r4_pdnome.Caption  :=Qr_Ped_02PDNOME.AsString;
r4_pdund.Caption   :=Qr_Ped_02PDUND.AsString;
r4_pdqtd.Caption   :=Qr_Ped_02P2QTD.AsString;
end;

procedure TFrm_Pedido_OP.RLBand20BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
robs_mod05.Caption:='';
robs_mod05.Lines.Clear;

if Length(DM1.Tb_EmpFONE.Value) > 1 then
   begin
   if Length(DM1.Tb_EmpFAX.Value) > 1 then
      begin
      if (Trim(robs_mod05.Caption) <> '')  then
         robs_mod05.Caption:=robs_mod05.Caption+' ';
      robs_mod05.Caption:=robs_mod05.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value;
      end
   else
      begin
      if (trim(robs_mod05.Caption) <> '')  then
         robs_mod05.Caption:=robs_mod05.Caption+' ';
      robs_mod05.Caption:=robs_mod05.Caption+'Fone/Fax: '+DM1.Tb_EmpFONE.Value;
      end;
   end;
if length(DM1.Tb_EmpE_MAIL.Value) > 1 then
   begin
   if (trim(robs_mod05.Caption) <> '')  then
       robs_mod05.Caption:=robs_mod05.Caption+' ';
   robs_mod05.Caption:=robs_mod05.Caption+'e-mail: '+DM1.Tb_EmpE_MAIL.Value;
   end;

if length(DM1.Tb_EmpHOMEPAGE.Value) > 1 then
   begin
   if (trim(robs_mod05.Caption) <> '')  then
      robs_mod05.Caption:=robs_mod05.Caption+' ';
   robs_mod05.Caption:=robs_mod05.Caption+'Home Page: '+DM1.Tb_EmpHOMEPAGE.Value;
   end;
robs_mod05.Lines.Add(robs_mod05.Caption);
DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

DM4.Tb_LogoSis.Open;
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   DeleteFile('C:\SGE\LOGO_ORCAM.jpg');

if not DM4.Tb_LogoSis.Eof then
   begin
   if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
      DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');
   end;
if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
   begin
   rl_imgmod05.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
   rl_imgmod05.Visible:=true;
   end
else
   rl_imgmod05.Visible:=false;
end;

end.
