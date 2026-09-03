unit S_SPED_EFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, ComCtrls, CurrEdit, Grids,
  DBGrids, DB, RxMemDS, Buttons, DBTables, CheckLst;

type
  TFrm_SPED_EFD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    Label20: TLabel;
    CODFIN: TComboBox;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    tsE111: TTabSheet;
    tsGuiaST: TTabSheet;
    CB_NOMAJUSTFISCAL: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    EDT_compaju: TEdit;
    Label6: TLabel;
    edt_VALAJUST: TCurrencyEdit;
    Label5: TLabel;
    cb_e111_CredDeb: TComboBox;
    Label7: TLabel;
    VERS: TEdit;
    Tb_AjusE111: TRxMemoryData;
    Tb_AjusE111TABELA: TStringField;
    Tb_AjusE111DESCRICAO: TStringField;
    Tb_AjusE111VALORAJUST: TFloatField;
    Tb_AjusE111TIPO: TStringField;
    Tb_AjusE111CODIGOAJUST: TStringField;
    src_ajusE113: TDataSource;
    DBGrid1: TDBGrid;
    bbe111Gravar: TBitBtn;
    bbE111Excluir: TBitBtn;
    tsDadosEmp: TTabSheet;
    Label17: TLabel;
    edt_suframa: TEdit;
    Label16: TLabel;
    edt_pisPasep: TEdit;
    Label15: TLabel;
    edt_codloc: TEdit;
    Panel2: TPanel;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    Label8: TLabel;
    edt_nomarq: TEdit;
    sbnsalvar: TSpeedButton;
    SaveDialog1: TSaveDialog;
    Label9: TLabel;
    edt_InscMun: TEdit;
    Label10: TLabel;
    edt_razsoc: TEdit;
    Label11: TLabel;
    edt_cnpj: TEdit;
    Label12: TLabel;
    Edt_InscEst: TEdit;
    Label13: TLabel;
    edt_endereco: TEdit;
    Label14: TLabel;
    edt_Numero: TEdit;
    Label18: TLabel;
    edt_compl_ender: TEdit;
    Label19: TLabel;
    edt_bairro: TEdit;
    Label21: TLabel;
    edt_Fantasia: TEdit;
    Label22: TLabel;
    edt_cep: TEdit;
    Label23: TLabel;
    edt_fone: TEdit;
    Label24: TLabel;
    edt_fax: TEdit;
    TabSheet1: TTabSheet;
    Label25: TLabel;
    edt_Contador_Nome: TEdit;
    Label26: TLabel;
    edt_Contador_cpf: TEdit;
    Label27: TLabel;
    edt_Contador_CRC: TEdit;
    Label28: TLabel;
    edt_Contador_CNPJ: TEdit;
    Label29: TLabel;
    edt_Contador_CEP: TEdit;
    Label30: TLabel;
    edt_Contador_Ender: TEdit;
    Label31: TLabel;
    edt_Contador_Numero: TEdit;
    Label32: TLabel;
    edt_Contador_Bairro: TEdit;
    edt_Contador_Codloc: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    edt_Contador_Fone: TEdit;
    Label35: TLabel;
    edt_Contador_Fax: TEdit;
    Label36: TLabel;
    edt_Contador_Email: TEdit;
    Label37: TLabel;
    CB_ATIVIDADE: TComboBox;
    Label38: TLabel;
    CB_PERFIL: TComboBox;
    Label39: TLabel;
    edt_email: TEdit;
    Label40: TLabel;
    Edt_CPF: TEdit;
    edt_uf: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    edt_Contador_CompEnd: TEdit;
    Qr_150A_CliFor: TQuery;
    Qr_150A_CliForTIPO: TStringField;
    Qr_150A_CliForRAZSOC: TStringField;
    Qr_150A_CliForCIDADE: TStringField;
    Qr_150A_CliForUF: TStringField;
    Qr_150A_CliForINSCEST: TStringField;
    Qr_150A_CliForCPF: TFloatField;
    Qr_150A_CliForCODMUN_IBGE: TFloatField;
    Qr_150A_CliForENDERECO: TStringField;
    Qr_150A_CliForBAIRRO: TStringField;
    Qr_150A_CliForSUFRAMA: TStringField;
    Qr_0190_Unid: TQuery;
    Qr_0190_UnidCODUNID: TStringField;
    Qr_0190_UnidDESCUNID: TStringField;
    Qr_0200_Item: TQuery;
    Qr_0200_ItemNOMPRO: TStringField;
    Qr_0200_ItemCODBAR: TFloatField;
    Qr_0200_ItemUNID: TStringField;
    Qr_0200_ItemNIVEL: TFloatField;
    Qr_0200_ItemCOD_NCM: TStringField;
    Qr_0200_ItemPDTABICM: TStringField;
    Qr_0200_ItemALIQ_ICM: TFloatField;
    Qr_0400_CFOP: TQuery;
    Qr_C100_Notas: TQuery;
    Qr_C100_NotasIND_OPER: TFloatField;
    Qr_C100_NotasIND_EMIT: TFloatField;
    Qr_C100_NotasCOD_MOD: TStringField;
    Qr_C100_NotasCOD_SIT: TStringField;
    Qr_C100_NotasSER: TStringField;
    Qr_C100_NotasNUM_DOC: TFloatField;
    Qr_C100_NotasCHV_NFE: TStringField;
    Qr_C100_NotasDT_DOC: TDateTimeField;
    Qr_C100_NotasDT_E_S: TDateTimeField;
    Qr_C100_NotasVL_DOC: TFloatField;
    Qr_C100_NotasIND_PGTO: TFloatField;
    Qr_C100_NotasIND_FRT: TFloatField;
    Qr_C100_NotasVL_FRT: TFloatField;
    Qr_C100_NotasVL_SEG: TFloatField;
    Qr_C100_NotasVL_OUT_DA: TFloatField;
    Qr_C100_NotasVL_BC_ICMS: TFloatField;
    Qr_C100_NotasVL_ICMS: TFloatField;
    Qr_C100_NotasVL_BC_ICMS_ST: TFloatField;
    Qr_C100_NotasVL_ICMS_ST: TFloatField;
    Qr_C100_NotasVL_IPI: TFloatField;
    Qr_C100_NotasVL_PIS: TFloatField;
    Qr_C100_NotasVL_COFINS: TFloatField;
    Qr_C100_NotasVL_COFINS_ST: TFloatField;
    Qr_C100_NotasCOD_PART: TStringField;
    Qr_C100_NotasVL_DESC: TFloatField;
    Qr_C100_NotasVL_ABAT_NT: TFloatField;
    Qr_C100_NotasVL_MERC: TFloatField;
    Qr_C100_NotasVL_PIS_ST: TFloatField;
    Qr_C170_ItensPed: TQuery;
    Qr_C100_NotasCODEMP: TFloatField;
    Qr_C100_NotasLOTSEQ: TFloatField;
    Qr_C100_NotasCHAVE: TFloatField;
    Qr_C100_NotasORDEM: TFloatField;
    Qr_C170_ItensPedNUM_ITEM: TFloatField;
    Qr_C170_ItensPedDESCR_COMPL: TStringField;
    Qr_C170_ItensPedQTD: TFloatField;
    Qr_C170_ItensPedUNID: TStringField;
    Qr_C170_ItensPedVL_ITEM: TFloatField;
    Qr_C170_ItensPedVL_DESC: TFloatField;
    Qr_C170_ItensPedIND_MOV: TFloatField;
    Qr_C170_ItensPedCST_ICMS: TStringField;
    Qr_C170_ItensPedCOD_NAT: TFloatField;
    Qr_C170_ItensPedVL_BC_ICMS: TFloatField;
    Qr_C170_ItensPedVL_ICMS: TFloatField;
    Qr_C170_ItensPedVL_BC_ICMS_ST: TFloatField;
    Qr_C170_ItensPedVL_ICMS_ST: TFloatField;
    Qr_C170_ItensPedALIQ_ICMS: TFloatField;
    Qr_C170_ItensPedALIQ_ST: TFloatField;
    Qr_C170_ItensPedIND_APUR: TFloatField;
    Qr_C170_ItensPedCST_IPI: TStringField;
    Qr_C170_ItensPedCOD_ENQ: TStringField;
    Qr_C170_ItensPedBL_BC_IPI: TFloatField;
    Qr_C170_ItensPedALIQ_IPI: TFloatField;
    Qr_C170_ItensPedCST_PIS: TStringField;
    Qr_C170_ItensPedVL_BC_PIS: TFloatField;
    Qr_C170_ItensPedALIQ_PIS: TFloatField;
    Qr_C170_ItensPedQUANT_BC_PIS: TFloatField;
    Qr_C170_ItensPedALIQ_PIS_REAIS: TFloatField;
    Qr_C170_ItensPedVL_PIS: TFloatField;
    Qr_C170_ItensPedCST_COFINS: TStringField;
    Qr_C170_ItensPedVL_BC_COFINS: TFloatField;
    Qr_C170_ItensPedALIQ_COFINS: TFloatField;
    Qr_C170_ItensPedQUANT_BC_COFINS: TFloatField;
    Qr_C170_ItensPedVL_COFINS: TFloatField;
    Qr_C170_ItensPedCOD_CTA: TStringField;
    Qr_C170_ItensPedVL_IPI: TFloatField;
    Qr_C170_ItensPedALIQ_COFINS_REAIS: TFloatField;
    Qr_C170_ItensPedPDPRZVAL_DIAS: TFloatField;
    Qr_C170_ItensPedPDPRZVAL: TFloatField;
    Qr_C170_ItensPedPDPRZVAL_ANOS: TFloatField;
    Qr_C170_ItensPedC173_LOTE_MED: TStringField;
    Qr_C170_ItensPedC173_QTD_ITEM: TFloatField;
    Qr_C170_ItensPedC173_DT_VAL: TDateTimeField;
    Qr_C170_ItensPedIND_MED: TFloatField;
    Qr_C170_ItensPedVL_TAB_MAX: TFloatField;
    Qr_C170_ItensPedTP_PROD: TFloatField;
    Qr_C190_RegAnal: TQuery;
    Qr_C190_RegAnalCST_ICMS: TStringField;
    Qr_C190_RegAnalALIQ_ICMS: TFloatField;
    Qr_C190_RegAnalVL_OPR: TFloatField;
    Qr_C190_RegAnalVL_BC_ICMS: TFloatField;
    Qr_C190_RegAnalVL_ICMS: TFloatField;
    Qr_C190_RegAnalVL_BC_ICMS_ST: TFloatField;
    Qr_C190_RegAnalVL_ICMS_ST: TFloatField;
    Qr_C190_RegAnalVL_RED_BC: TFloatField;
    Qr_C190_RegAnalVL_IPI: TFloatField;
    Qr_C190_RegAnalCOD_OBS: TStringField;
    Qr_C400_ECF: TQuery;
    Qr_C400_ECFCOD_MOD: TStringField;
    Qr_C400_ECFECF_MOD: TStringField;
    Qr_C400_ECFECF_FAB: TStringField;
    Qr_C400_ECFCOD_CX: TFloatField;
    Qr_C405_ReducaoZ: TQuery;
    Qr_C405_ReducaoZCFSERIE: TStringField;
    Qr_C405_ReducaoZCFMODDOC: TStringField;
    Qr_C405_ReducaoZDT_DOC: TDateTimeField;
    Qr_C405_ReducaoZCRO: TFloatField;
    Qr_C405_ReducaoZNUM_COO_FIN: TFloatField;
    Qr_C405_ReducaoZGT_FIN: TFloatField;
    Qr_C405_ReducaoZVL_BRT: TFloatField;
    Qr_C405_ReducaoZCMCODIMP: TFloatField;
    Qr_C405_ReducaoZCMCOO: TFloatField;
    Qr_C405_ReducaoZCMVDALIQ: TFloatField;
    Qr_C405_ReducaoZCMCUPCAN: TFloatField;
    Qr_C405_ReducaoZCMACRECUP: TFloatField;
    Qr_C405_ReducaoZCMDESCUP: TFloatField;
    Qr_C405_ReducaoZCMISENTAS: TFloatField;
    Qr_C405_ReducaoZCMNAOINC: TFloatField;
    Qr_C405_ReducaoZCMSUBTRI: TFloatField;
    Qr_C405_ReducaoZCMISSCUP: TFloatField;
    Qr_C405_ReducaoZCRZ: TFloatField;
    Qr_C420_TotParcRedZ: TQuery;
    Qr_C420_TotParcRedZCOD_TOT_PAR: TFloatField;
    Qr_C420_TotParcRedZVLR_ACUM_TOT: TFloatField;
    Qr_C425_ResItensDiario: TQuery;
    Qr_C425_ResItensDiarioCOD_ITEM: TFloatField;
    Qr_C425_ResItensDiarioQTD: TFloatField;
    Qr_C425_ResItensDiarioUNID: TStringField;
    Qr_C425_ResItensDiarioVL_ITEM: TFloatField;
    Qr_C425_ResItensDiarioVL_PIS: TFloatField;
    Qr_C425_ResItensDiarioVL_COFINS: TFloatField;
    Qr_C460_Cupom: TQuery;
    Qr_C460_CupomCOD_MOD: TStringField;
    Qr_C460_CupomCOD_SIT: TStringField;
    Qr_C460_CupomNUM_DOC: TFloatField;
    Qr_C460_CupomDT_DOC: TDateTimeField;
    Qr_C460_CupomVL_DOC: TFloatField;
    Qr_C460_CupomVL_PIS: TFloatField;
    Qr_C460_CupomVL_COFINS: TFloatField;
    Qr_C460_CupomCPF_CNPJ: TFloatField;
    Qr_C460_CupomNOM_ADQ: TStringField;
    Qr_C470_Itens: TQuery;
    Qr_C470_ItensCOD_ITEM: TFloatField;
    Qr_C470_ItensQTD: TFloatField;
    Qr_C470_ItensQTD_CANC: TFloatField;
    Qr_C470_ItensUNID: TStringField;
    Qr_C470_ItensVL_ITEM: TFloatField;
    Qr_C470_ItensCST_ICMS: TStringField;
    Qr_C470_ItensCFOP: TFloatField;
    Qr_C470_ItensALIQ_ICMS: TFloatField;
    Qr_C470_ItensVL_PIS: TFloatField;
    Qr_C470_ItensVL_COFINS: TFloatField;
    Qr_C460_CupomNSLOTSEQ_CP: TFloatField;
    Qr_C460_CupomNSCHAVEP: TFloatField;
    Qr_C460_CupomNSORDEMP: TFloatField;
    Qr_C460_CupomNSCODEMP: TFloatField;
    Qr_C490_CstCfopAliq: TQuery;
    Qr_C490_CstCfopAliqCFOP: TFloatField;
    Qr_C490_CstCfopAliqALIQ_ICMS: TFloatField;
    Qr_C490_CstCfopAliqVL_OPR: TFloatField;
    Qr_C490_CstCfopAliqVL_BC_ICMS: TFloatField;
    Qr_C490_CstCfopAliqVL_ICMS: TFloatField;
    Qr_C490_CstCfopAliqCOD_OBS: TStringField;
    Qr_C490_CstCfopAliqCST_ICMS: TStringField;
    Qr_C495_ResMesItemBA: TQuery;
    Qr_C495_ResMesItemBAALIQ_ICMS: TFloatField;
    Qr_C495_ResMesItemBACOD_ITEM: TFloatField;
    Qr_C495_ResMesItemBAQTD: TFloatField;
    Qr_C495_ResMesItemBAQTD_CANC: TFloatField;
    Qr_C495_ResMesItemBAUNID: TStringField;
    Qr_C495_ResMesItemBAVL_ITEM: TFloatField;
    Qr_C495_ResMesItemBAVL_DESC: TFloatField;
    Qr_C495_ResMesItemBAVL_CANC: TFloatField;
    Qr_C495_ResMesItemBAVL_ACMO: TFloatField;
    Qr_C495_ResMesItemBAVL_ICMS: TFloatField;
    Qr_C495_ResMesItemBAVL_ISEN: TFloatField;
    Qr_C495_ResMesItemBAVL_NT: TFloatField;
    Qr_C495_ResMesItemBAVL_ICMS_ST: TFloatField;
    Qr_C495_ResMesItemBAVL_BC_ICMS: TFloatField;
    Qr_D100_ConhFrete: TQuery;
    Qr_D100_ConhFreteIND_OPER: TFloatField;
    Qr_D100_ConhFreteIND_EMIT: TFloatField;
    Qr_D100_ConhFreteCOD_PART: TStringField;
    Qr_D100_ConhFreteCOD_MOD: TStringField;
    Qr_D100_ConhFreteCOD_SIT: TStringField;
    Qr_D100_ConhFreteSER: TStringField;
    Qr_D100_ConhFreteNUM_DOC: TFloatField;
    Qr_D100_ConhFreteCHV_NFE: TStringField;
    Qr_D100_ConhFreteDT_DOC: TDateTimeField;
    Qr_D100_ConhFreteDT_A_P: TDateTimeField;
    Qr_D100_ConhFreteTP_CT_E: TFloatField;
    Qr_D100_ConhFreteCHV_CTE_RED: TStringField;
    Qr_D100_ConhFreteVL_DOC: TFloatField;
    Qr_D100_ConhFreteVL_DESC: TFloatField;
    Qr_D100_ConhFreteIND_FRT: TFloatField;
    Qr_D100_ConhFreteVL_SERV: TFloatField;
    Qr_D100_ConhFreteVL_BC_ICMS: TFloatField;
    Qr_D100_ConhFreteVL_ICMS: TFloatField;
    Qr_D100_ConhFreteVL_NT: TFloatField;
    Qr_D100_ConhFreteCOD_INF: TStringField;
    Qr_D100_ConhFreteCOD_CTA: TStringField;
    Qr_D100_ConhFreteCODEMP: TFloatField;
    Qr_D100_ConhFreteLOTSEQ: TFloatField;
    Qr_D100_ConhFreteCHAVE: TFloatField;
    Qr_D100_ConhFreteORDEM: TFloatField;
    Qr_D100_ConhFreteSUB: TStringField;
    Qr_D500_NF_Comun: TQuery;
    Qr_D500_NF_ComunIND_OPER: TFloatField;
    Qr_D500_NF_ComunIND_EMIT: TFloatField;
    Qr_D500_NF_ComunCOD_PART: TStringField;
    Qr_D500_NF_ComunCOD_MOD: TStringField;
    Qr_D500_NF_ComunCOD_SIT: TStringField;
    Qr_D500_NF_ComunSER: TStringField;
    Qr_D500_NF_ComunSUB: TStringField;
    Qr_D500_NF_ComunNUM_DOC: TFloatField;
    Qr_D500_NF_ComunDT_DOC: TDateTimeField;
    Qr_D500_NF_ComunDT_A_P: TDateTimeField;
    Qr_D500_NF_ComunVL_DOC: TFloatField;
    Qr_D500_NF_ComunVL_DESC: TFloatField;
    Qr_D500_NF_ComunVL_SERV: TFloatField;
    Qr_D500_NF_ComunVL_SERV_NT: TFloatField;
    Qr_D500_NF_ComunVL_TERC: TFloatField;
    Qr_D500_NF_ComunVL_DA: TFloatField;
    Qr_D500_NF_ComunVL_BC_ICMS: TFloatField;
    Qr_D500_NF_ComunVL_ICMS: TFloatField;
    Qr_D500_NF_ComunCOD_INF: TStringField;
    Qr_D500_NF_ComunVL_PIS: TFloatField;
    Qr_D500_NF_ComunVL_COFINS: TFloatField;
    Qr_D500_NF_ComunCOD_CTA: TStringField;
    Qr_D500_NF_ComunTP_ASSINANTE: TFloatField;
    Qr_D500_NF_ComunCODEMP: TFloatField;
    Qr_D500_NF_ComunLOTSEQ: TFloatField;
    Qr_D500_NF_ComunCHAVE: TFloatField;
    Qr_D500_NF_ComunORDEM: TFloatField;
    Qr_D100_ConhFreteD190_CST_ICMS: TStringField;
    Qr_D100_ConhFreteD190_CFOP: TFloatField;
    Qr_D100_ConhFreteD190_ALIQ_ICMS: TFloatField;
    Qr_D100_ConhFreteD190_VL_OPR: TFloatField;
    Qr_D100_ConhFreteD190_VL_BC_ICMS: TFloatField;
    Qr_D100_ConhFreteD190_VL_ICMS: TFloatField;
    Qr_D100_ConhFreteD190_VL_RED_BC: TFloatField;
    Qr_D100_ConhFreteD190_COD_OBS: TStringField;
    Qr_D500_NF_ComunD590_CST_ICMS: TStringField;
    Qr_D500_NF_ComunD590_CFOP: TFloatField;
    Qr_D500_NF_ComunD590_ALIQ_ICMS: TFloatField;
    Qr_D500_NF_ComunD590_VL_OPR: TFloatField;
    Qr_D500_NF_ComunD590_VL_BC_ICMS: TFloatField;
    Qr_D500_NF_ComunD590_VL_ICMS: TFloatField;
    Qr_D500_NF_ComunD590_VL_BC_ICMS_ST: TFloatField;
    Qr_D500_NF_ComunD590_VL_ICMS_ST: TFloatField;
    Qr_D500_NF_ComunD590_VL_RED_BC: TFloatField;
    Qr_D500_NF_ComunD590_COD_OBS: TStringField;
    Qr_C500_Energia: TQuery;
    Qr_C500_EnergiaIND_OPER: TFloatField;
    Qr_C500_EnergiaIND_EMIT: TFloatField;
    Qr_C500_EnergiaCOD_PART: TStringField;
    Qr_C500_EnergiaCOD_MOD: TStringField;
    Qr_C500_EnergiaCOD_SIT: TStringField;
    Qr_C500_EnergiaSER: TStringField;
    Qr_C500_EnergiaSUB: TStringField;
    Qr_C500_EnergiaCOD_CONS: TFloatField;
    Qr_C500_EnergiaNUM_DOC: TFloatField;
    Qr_C500_EnergiaDT_DOC: TDateTimeField;
    Qr_C500_EnergiaDT_E_S: TDateTimeField;
    Qr_C500_EnergiaVL_DOC: TFloatField;
    Qr_C500_EnergiaVL_DESC: TFloatField;
    Qr_C500_EnergiaVL_FORN: TFloatField;
    Qr_C500_EnergiaVL_SERV_NT: TFloatField;
    Qr_C500_EnergiaVL_TERC: TFloatField;
    Qr_C500_EnergiaVL_DA: TFloatField;
    Qr_C500_EnergiaVL_BC_ICMS: TFloatField;
    Qr_C500_EnergiaVL_ICMS: TFloatField;
    Qr_C500_EnergiaVL_BC_ICMS_ST: TFloatField;
    Qr_C500_EnergiaVL_ICMS_ST: TFloatField;
    Qr_C500_EnergiaCOD_INF: TStringField;
    Qr_C500_EnergiaVL_PIS: TFloatField;
    Qr_C500_EnergiaVL_COFINS: TFloatField;
    Qr_C500_EnergiaCOD_CTA: TStringField;
    Qr_C500_EnergiaTP_LIGACAO: TFloatField;
    Qr_C500_EnergiaCOD_GRUPO_TENSAO: TFloatField;
    Qr_C500_EnergiaC590_CST_ICMS: TStringField;
    Qr_C500_EnergiaC590_CFOP: TFloatField;
    Qr_C500_EnergiaC590_ALIQ_ICMS: TFloatField;
    Qr_C500_EnergiaC590_VL_OPR: TFloatField;
    Qr_C500_EnergiaC590_VL_BC_ICMS: TFloatField;
    Qr_C500_EnergiaC590_VL_ICMS: TFloatField;
    Qr_C500_EnergiaC590_VL_BC_ICMS_ST: TFloatField;
    Qr_C500_EnergiaC590_VL_ICMS_ST: TFloatField;
    Qr_C500_EnergiaC590_VL_RED_BC: TFloatField;
    Qr_C500_EnergiaC590_COD_OBS: TStringField;
    Qr_C500_EnergiaCODEMP: TFloatField;
    Qr_C500_EnergiaLOTSEQ: TFloatField;
    Qr_C500_EnergiaCHAVE: TFloatField;
    Qr_C500_EnergiaORDEM: TFloatField;
    Qr_E200_Subst_Trib_retirado: TQuery;
    Qr_E210_ApuracaoST_retirado: TQuery;
    Qr_E210_ApuracaoST_retiradoBASER: TFloatField;
    Qr_E210_ApuracaoST_retiradoIND_MOV_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_SLD_CRED_ANT_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_DEVOL_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_RESSARC_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_OUT_CRED_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_AJ_CREDITOS_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_RETENCAO_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_OUT_DEB_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_AJ_DEBITOS_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_SLD_DEV_ANT_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_DEDUCOES_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_ICMS_RECOL_ST: TFloatField;
    Qr_E210_ApuracaoST_retiradoVL_SLD_CRED_ST_TRANSPORTAR: TFloatField;
    Qr_E210_ApuracaoST_retiradoDEB_ESP_ST: TFloatField;
    gb_informacoes: TGroupBox;
    Label43: TLabel;
    edt_cidade: TEdit;
    edt_Contador_Cidade: TEdit;
    Qr_150A_CliForCODIGO: TStringField;
    Qr_E510_ApuracaoIPI: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField4: TFloatField;
    Qr_E500_ApuracaoIPI: TQuery;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField5: TStringField;
    tsErrosEFD: TTabSheet;
    memo_erros: TRichEdit;
    Qr_C460_CupomTIPODOC: TFloatField;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    edt_numnf_ent: TEdit;
    edt_numnf_sai: TEdit;
    edt_num_ecf: TEdit;
    Qr_0400_CFOPnomcfop: TStringField;
    Qr_C420_TotParcRedZnr_tot: TStringField;
    Qr_C420_TotParcRedZdescr_nr_tot: TStringField;
    Qr_C420_Desconto: TQuery;
    Qr_C420_DescontoCOD_TOT_PAR: TFloatField;
    Qr_C420_DescontoVLR_ACUM_TOT: TFloatField;
    Qr_C420_Descontodescr_nr_tot: TStringField;
    Qr_C420_Descontonr_tot: TFloatField;
    mem_totc420xc490: TRxMemoryData;
    mem_totc420xc490C420_VLR_ACUM_TOT: TFloatField;
    mem_totc420xc490C490_VLR_OPER: TFloatField;
    mem_totc420xc490C490_BC_ICMS: TFloatField;
    mem_totc420xc490C490_ICMS: TFloatField;
    mem_totc420xc490DT_DOC: TDateTimeField;
    mem_totc420xc490SITALIQ: TStringField;
    tsTotais: TTabSheet;
    Src_totc420xc490: TDataSource;
    DBGrid2: TDBGrid;
    Qr_C100_NotasNUM_CUP: TFloatField;
    bbUpdate: TBitBtn;
    Label47: TLabel;
    CB_INVENTARIO: TComboBox;
    Qr_H010_Inventario: TQuery;
    Qr_H010_InventarioCOD_ITEM: TFloatField;
    Qr_H010_InventarioUNID: TStringField;
    Qr_H010_InventarioQTD: TFloatField;
    Qr_H010_InventarioVL_UNIT: TFloatField;
    Qr_H010_InventarioVL_ITEM: TFloatField;
    Qr_H010_InventarioIND_PROP: TFloatField;
    Qr_H010_InventarioCOD_PART: TStringField;
    Qr_H010_InventarioTXT_COMPL: TStringField;
    Qr_H010_InventarioCOD_CTA: TStringField;
    Qr_0200_ItemCODPRO: TStringField;
    Qr_C190_RegAnalOUTRAS_SICMS: TFloatField;
    Qr_C190_RegAnalOUTRAS_CICMS: TFloatField;
    Qr_C190_RegAnalOUTRAS_VL_ICMS: TFloatField;
    Qr_C190_RegAnalOUTRAS_ALIQ: TFloatField;
    Qr_C190_RegAnalICMS_FRETE: TFloatField;
    Qr_C190_RegAnalICMS_ALIQ_FRETE: TFloatField;
    Qr_C190_RegAnalVALOR_FRETE: TFloatField;
    Qr_C170_ItensPedOUTRAS_SICMS: TFloatField;
    Qr_C170_ItensPedOUTRAS_CICMS: TFloatField;
    Qr_C170_ItensPedOUTRAS_VL_ICMS: TFloatField;
    Qr_C170_ItensPedOUTRAS_ALIQ: TFloatField;
    Qr_C170_ItensPedICMS_FRETE: TFloatField;
    Qr_C170_ItensPedICMS_ALIQ_FRETE: TFloatField;
    Qr_C170_ItensPedVALOR_FRETE: TFloatField;
    Qr_0400_CFOPCFCODCFO: TStringField;
    Qr_C190_RegAnalCFOP: TStringField;
    bbNossoPrograma: TBitBtn;
    OpenDialog1: TOpenDialog;
    tsErros_Exp: TTabSheet;
    memo_erros_nossoProg: TRichEdit;
    tsItens: TTabSheet;
    Memo_Itens: TMemo;
    TabSheet3: TTabSheet;
    Memo_ICMSST_Saidas: TMemo;
    TabSheet4: TTabSheet;
    Memo_EntAliq: TMemo;
    tsReg6_Dupl_NumCF: TTabSheet;
    Memo_Reg6_1: TMemo;
    Qr_ExpNP_DUP: TQuery;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField6: TStringField;
    FloatField9: TFloatField;
    TabSheet5: TTabSheet;
    Memo_Reg6_2: TMemo;
    tsReg_7_PgtoTrib: TTabSheet;
    memo_Reg7: TMemo;
    tsFolha: TTabSheet;
    Memo_Folha: TMemo;
    tsLayout_NP: TTabSheet;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Memo_nome: TMemo;
    Tb_AjusE111INDICE: TIntegerField;
    Tb_AjusE111COMPL_DESCR: TStringField;
    tsAjusteE115: TTabSheet;
    Label48: TLabel;
    CB_E115_NOMEAJUSTE: TComboBox;
    Label49: TLabel;
    edt_e115_compl_desc: TEdit;
    Label50: TLabel;
    edt_e115_valor: TCurrencyEdit;
    cb_e115_nat: TComboBox;
    Label51: TLabel;
    bbE115Adicionar: TBitBtn;
    bbE115Excluir: TBitBtn;
    GroupBox4: TGroupBox;
    Memo_E115_DescAju: TMemo;
    DBGrid_E115: TDBGrid;
    Tb_AjusE115: TRxMemoryData;
    src_ajusE115: TDataSource;
    Tb_AjusE115TABELA: TStringField;
    Tb_AjusE115DESCRICAO: TStringField;
    Tb_AjusE115VALORAJUST: TFloatField;
    Tb_AjusE115TIPO: TStringField;
    Tb_AjusE115CODIGOAJUST: TStringField;
    Tb_AjusE115INDICE: TIntegerField;
    Tb_AjusE115COMPL_DESCR: TStringField;
    Tb_GuiaST: TRxMemoryData;
    Src_GuiaST: TDataSource;
    Tb_GuiaSTCOD_OR: TStringField;
    Tb_GuiaSTVL_OR: TFloatField;
    Tb_GuiaSTDT_VCTO: TDateTimeField;
    Tb_GuiaSTCOD_REC: TStringField;
    Tb_GuiaSTIND_PROC: TIntegerField;
    Tb_GuiaSTPROC: TStringField;
    Tb_GuiaSTTXT_COMP: TStringField;
    Tb_GuiaSTMES_REF: TStringField;
    Label52: TLabel;
    CB_GUIAST_COD_OR: TComboBox;
    Label53: TLabel;
    edtguiast_vl_or: TCurrencyEdit;
    edtguiast_dt_vcto: TDateEdit;
    Label54: TLabel;
    Label55: TLabel;
    edtguiast_cod_rec: TEdit;
    cbguiast_ind_proc: TComboBox;
    Label56: TLabel;
    Label57: TLabel;
    edtguiast_num_proc: TEdit;
    Label58: TLabel;
    edtguiast_proc: TEdit;
    Label59: TLabel;
    edtguiast_mes: TEdit;
    Label60: TLabel;
    edtguiast_ano: TEdit;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    bbGuiaST_Incluir: TBitBtn;
    bbGuiaST_Excluir: TBitBtn;
    Tb_GuiaSTNUM_PROC: TStringField;
    Label61: TLabel;
    edtguiast_txt_compl: TEdit;
    Label62: TLabel;
    edtguiast_valordig: TCurrencyEdit;
    Label63: TLabel;
    edtguiast_valoresp: TCurrencyEdit;
    Label64: TLabel;
    edtguiast_valorResto: TCurrencyEdit;
    sbnNotas: TSpeedButton;
    Label65: TLabel;
    cbguiast_uf: TComboBox;
    Tb_GuiaSTUF: TStringField;
    Qr_150A_CliForCNPJ: TStringField;
    Qr_C100_NotasICMS_BCFRE: TFloatField;
    Qr_C100_NotasICMS_ALFRE: TFloatField;
    Qr_C100_NotasICMS_VLFRE: TFloatField;
    Qr_C300_Notas: TQuery;
    Qr_C300_NotasCOD_MOD: TStringField;
    Qr_C300_NotasSER: TStringField;
    Qr_C300_NotasSUBSER: TStringField;
    Qr_C300_NotasNUM_DOC_INI: TFloatField;
    Qr_C300_NotasNUM_DOC_FIN: TFloatField;
    Qr_C300_NotasVL_DOC: TFloatField;
    Qr_C300_NotasVL_PIS: TFloatField;
    Qr_C300_NotasVL_COFINS: TFloatField;
    Qr_C300_NotasCODCTA: TStringField;
    Qr_C320_Notas: TQuery;
    Qr_C320_NotasCST_ICMS: TStringField;
    Qr_C320_NotasCFOP: TFloatField;
    Qr_C320_NotasALIQ_ICMS: TFloatField;
    Qr_C320_NotasVL_OPER: TFloatField;
    Qr_C320_NotasVL_BC_ICMS: TFloatField;
    Qr_C320_NotasVL_ICMS: TFloatField;
    Qr_C320_NotasVL_RED_BC: TFloatField;
    Qr_C320_NotasCOD_OBS: TStringField;
    Qr_C321_Notas: TQuery;
    Qr_C350_Notas: TQuery;
    Qr_C370_Notas: TQuery;
    Qr_C370_NotasNUM_ITEM: TFloatField;
    Qr_C370_NotasCOD_ITEM: TFloatField;
    Qr_C370_NotasQTD: TFloatField;
    Qr_C370_NotasUNID: TStringField;
    Qr_C390_Notas: TQuery;
    Qr_C390_NotasCST_ICMS: TStringField;
    Qr_C390_NotasCFOP: TFloatField;
    Qr_C390_NotasALIQ_ICMS: TFloatField;
    Qr_C390_NotasVL_OPER: TFloatField;
    Qr_C390_NotasVL_BC_ICMS: TFloatField;
    Qr_C390_NotasVL_ICMS: TFloatField;
    Qr_C390_NotasVL_RED_BC: TFloatField;
    Qr_C390_NotasCOD_OBS: TStringField;
    Qr_C300_NotasDT_DOC: TDateTimeField;
    Qr_C310_Notas: TQuery;
    Qr_C310_NotasNUM_DOC_CANC: TFloatField;
    Qr_C321_NotasCOD_ITEM: TFloatField;
    Qr_C321_NotasQTD: TFloatField;
    Qr_C321_NotasUNID: TStringField;
    Qr_C321_NotasVL_ITEM: TFloatField;
    Qr_C321_NotasVL_DESC: TFloatField;
    Qr_C321_NotasVL_BC_ICMS: TFloatField;
    Qr_C321_NotasVL_ICMS: TFloatField;
    Qr_C321_NotasVL_PIS: TFloatField;
    Qr_C321_NotasVL_COFINS: TFloatField;
    Qr_C350_NotasSER: TStringField;
    Qr_C350_NotasSUB_SER: TStringField;
    Qr_C350_NotasNUM_DOC: TFloatField;
    Qr_C350_NotasDT_DOC: TDateTimeField;
    Qr_C350_NotasVL_DOC: TFloatField;
    Qr_C350_NotasCPF_CNPJ: TFloatField;
    Qr_C350_NotasVL_MERC: TFloatField;
    Qr_C350_NotasVL_DESC: TFloatField;
    Qr_C350_NotasVL_PIS: TFloatField;
    Qr_C350_NotasVL_COFINS: TFloatField;
    Qr_C350_NotasCOD_CTA: TStringField;
    Qr_C370_NotasVL_ITEM: TFloatField;
    Qr_C370_NotasVL_DESC: TFloatField;
    Qr_C350_NotasCODEMP: TFloatField;
    Qr_C350_NotasCHAVE: TFloatField;
    Qr_C350_NotasORDEM: TFloatField;
    Qr_C350_NotasLOTSEQ: TFloatField;
    cb_familia300: TCheckBox;
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
    Label66: TLabel;
    CB_MOTINV: TComboBox;
    Qr_C100_NotasCFOP: TStringField;
    Qr_C170_ItensPedCOD_ITEM: TStringField;
    Label67: TLabel;
    CB_CODREC_OBRIGATORIO: TComboBox;
    Qr_E200_Subst_Trib_retiradoBASER_SAIDA: TFloatField;
    Qr_E200_Subst_Trib_retiradoICMSR_SAIDA: TFloatField;
    Qr_E200_Subst_Trib_retiradoBASER_ENTRADA: TFloatField;
    Qr_E200_Subst_Trib_retiradoICMSR_ENTRADA: TFloatField;
    Qr_E200_Subst_Trib_retiradoUF: TStringField;
    mem_e200: TRxMemoryData;
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
    mem_e200E200_UF: TStringField;
    mem_e200E200_DT_INI: TDateField;
    mem_e200E200_DT_FIN: TDateField;
    Qr_C100_NotasUF: TStringField;
    mem_e210E210_UF: TStringField;
    lbx_numnf_ent: TListBox;
    lbx_numnf_sai: TListBox;
    lbx_numcf: TListBox;
    OMITIR_VEN: TCheckBox;
    procedure bbe111GravarClick(Sender: TObject);
    procedure bbE111ExcluirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure sbnsalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_0400_CFOPCalcFields(DataSet: TDataSet);
    procedure Qr_C420_TotParcRedZCalcFields(DataSet: TDataSet);
    procedure Qr_C420_DescontoCalcFields(DataSet: TDataSet);
    procedure bbUpdateClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbNossoProgramaClick(Sender: TObject);
    procedure CB_NOMAJUSTFISCALChange(Sender: TObject);
    procedure tsE111Exit(Sender: TObject);
    procedure MDT1Enter(Sender: TObject);
    procedure bbE115AdicionarClick(Sender: TObject);
    procedure CB_E115_NOMEAJUSTEChange(Sender: TObject);
    procedure bbE115ExcluirClick(Sender: TObject);
    procedure tsAjusteE115Exit(Sender: TObject);
    procedure edtguiast_mesExit(Sender: TObject);
    procedure edtguiast_anoExit(Sender: TObject);
    procedure bbGuiaST_IncluirClick(Sender: TObject);
    procedure bbGuiaST_ExcluirClick(Sender: TObject);
    procedure sbnNotasClick(Sender: TObject);
    procedure tsGuiaSTExit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbx_numnf_entKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_numnf_saiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_numcfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_numnf_entExit(Sender: TObject);
    procedure edt_numnf_saiExit(Sender: TObject);
    procedure edt_num_ecfExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    F: TextFile;
    mContLin: Integer;
   mRestoCFOP: Integer;
   mCodCFOP: String;
   mTotC190E210: Real;
   mvalicmsent: Real;
   E111_icms: Real;
   qC190: Integer;
   qC170: Integer;
   mFinalCFOP_Frete: String;

    function fNotasdeServico(ptipo: Integer): Boolean;

  public
    { Public declarations }
    mQtdRegC: Integer;
    function fExportarBlocoD(ptipo: Integer): Boolean;
    function fExportarBlocoC(ptipo: Integer): Boolean;
    function fTotalizarST(pTipo: Integer): Boolean;

    function fLerDadosblocoC300(pTipo: Integer): Boolean;

  end;



var
  Frm_SPED_EFD: TFrm_SPED_EFD;

  F_Ler,F_Grava: TextFile;
  mLInha_ler,mLinha_Grava: String;
  mLInha: String;
  mAnoMes_ini: String;

implementation

uses Func, Math, S_DM1, lerarq, DateUtils, S_SPED_EFD_NotasST,
  func_excecoes;

{$R *.dfm}

procedure TFrm_SPED_EFD.bbe111GravarClick(Sender: TObject);
begin
if edt_VALAJUST.Value=0 then
   begin
   MessageDlg('Favor Digitar um Valor Válido!',mtWarning,[mbOk],0);
   edt_VALAJUST.SetFocus;
   exit;
   end;
if not Tb_AjusE111.Active then
   Tb_AjusE111.Open;
Tb_AjusE111.Append;
Tb_AjusE111TABELA.Value    :='E111';
Tb_AjusE111DESCRICAO.Value :=Trim(CB_NOMAJUSTFISCAL.Text);
Tb_AjusE111VALORAJUST.Value:=edt_VALAJUST.Value;
if cb_e111_CredDeb.ItemIndex=0 then
   Tb_AjusE111TIPO.Value      :='C'
else    Tb_AjusE111TIPO.Value      :='D';
Tb_AjusE111INDICE.Value:=CB_NOMAJUSTFISCAL.ItemIndex;
Tb_AjusE111CODIGOAJUST.Value :=Copy(CB_NOMAJUSTFISCAL.Text,1,8);
Tb_AjusE111COMPL_DESCR.Value :=EDT_compaju.Text;
Tb_AjusE111.Post;

edt_VALAJUST.Text:='';
CB_NOMAJUSTFISCAL.SetFocus;

end;

procedure TFrm_SPED_EFD.bbE111ExcluirClick(Sender: TObject);
begin
if Tb_AjusE111.IsEmpty then
   exit;
if Tb_AjusE111TABELA.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir o item: '+Tb_AjusE111CODIGOAJUST.AsString+' Valor: '+FormatFloat(mcasas, Tb_AjusE115VALORAJUST.value )),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE111.Delete;
end;

procedure TFrm_SPED_EFD.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SPED_EFD.bbGerarClick(Sender: TObject);
VAR
   mIE: String;
   q1001,q1990, qC140, qC141, qC173, qC400, qC405,qC420,qC425,qC460,qC470,qC490,qC495,qC500, qE100,QE200,QE210,QE250,QE500,QE510,QE520,QE530,qE990,q0125,qh990,qH001,qH005,qH010,qG001,qG990,qE110,qE111,qE115,qE116,qD190,qD990, qE001,qD001,qD100,qD500,qC590,qD590,qC990,qC100,qC001,q0990,q0400,q0200,q0190,q0000, q0001, q0005, q0100, q0150,mqtdparc: integer;
   q1010,q9900,q9990: Integer;
   qC300,qC310,qC320,qC321,qC350,qC370,qC390: Integer;


   mQtdRegD,mQtdRegE: integer;
   mbasenor,mbaseret,micmsret,valorbase,micmsnor,mvalajuste,MVALIPI: Real;
   mDataFab: TdateTime;
   mdedu,msddev,msaldoprox,mVl_Tot_AJ_Creditos,mVl_Tot_AJ_DEBITOS: Real;
   ModDoc: String;
   mTotDesc_Trib: Real;


   mtotc470_vl_item: Real;
   mtotc470_vl_pis: Real;
   mtotc470_vl_cofins: Real;

   mtotc420: Real;


   msitAliq: String;

   mTemOutCIcms:Boolean;
   mTemOutSIcms:Boolean;
   mTemFreteCIcms:Boolean;
   mTemFreteSIcms:Boolean;
   mTemServicos: Boolean;
   mNumItem: Integer;
   mTotE210,mtotGNRE: Real;

//   mTotCupCan,mTotCupDes,mTotCupAcre,mTotCupSubTrib: Real;
Query_temp: TQuery;

begin

bbGerar.Enabled:=false;

Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.SQL.Add('update CADNS set NSCFO1 '
                  +' = (select min(P2CFO) from CADP02 where P2CHAVE=NSCHAVEP AND P2ORDEM=NSORDEMP AND P2CODEMP=NSCODEMP AND P2LOTSEQ=NSLOTSEQ_CP) '
                  +' where NSCFO1 is null '
                  +' AND nschavep>0 '
                  +' AND NSDTEMIS>'+QuotedStr('01/05/2012'));
try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
FreeAndNil(Query_temp);


mem_totc420xc490.Close;
mem_totc420xc490.Open;
mFinalCFOP_Frete:='102';
if length(edt_Contador_Nome.Text)<2 then
   begin
   MessageDlg('Falta o Nome do Contador, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;
if (fsonumero(edt_Contador_CPF.Text)=0) and (fSonumero(edt_Contador_CNPJ.Text)=0) then
   begin
   MessageDlg('Falta o CPF eCNPJ do Contador, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;
if length(fdeixanum(edt_Contador_CEP.Text))<>8 then
   begin
   MessageDlg('CEP do contador é invalido, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;
if length(edt_Contador_Ender.Text)<2 then
   begin
   MessageDlg('Falta o Endereco do Contador, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;

if length(edt_Contador_Bairro.Text)<2 then
   begin
   MessageDlg('Falta o Bairro do Endereco do Contador, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;
if fSonumero(edt_Contador_Codloc.Text)=0 then
   begin
   MessageDlg('Falta o Código da Cidade do Contador, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;

if not flcadloc(1,0,edt_Contador_Codloc.Text) then
   begin
   MessageDlg('Código da Cidade do Contador inválido, Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;

if DM1.Tb_LocLCODMUN_IBGE.AsFloat=0 then
   begin
   MessageDlg('Código da do IBGE da Cidade do Contador inválido. Cidade: '+DM1.Tb_LocLNOME.AsString+'-'+DM1.Tb_LocLUF.AsString
             +', Favor Corrigir!',mtWarning,[mbOk],0);
   exit;
   end;

{if trim(CB_INVENTARIO.Text)=''  then
   begin
   MessageDlg('Nome do Inventario campo obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from INVGRA where IGCODEMP=0'+InttoStr(codemp)
                  +' and IGNOMEINV=:NOMEINV');
DM1.Query1.ParamByName('NOMEINV').AsString:=CB_INVENTARIO.Text;
DM1.Query1.Open;
if DM1.Query1.fields[0].AsInteger=0 then
   begin
   MessageDlg('Inventario: '+CB_INVENTARIO.text+' não encontrado!',mtWarning,[mbOk],0);
   exit;
   end;}


try
  AssignFile(f,edt_nomarq.Text);
  ReWrite(f);
except
  MessageDlg('O Nome Arquivo: '+edt_nomarq.Text+' esta sendo usado no momento tente outro nome!',mtError,[mbOK],0);
  exit;
  end;
if trim(UpperCase(DM1.Tb_EmpINSCRICAO.AsString))='ISENTO' then
   mIE:='ISENTO'
else
   mIE:=fDeixanum(DM1.Tb_EmpINSCRICAO.AsString);

// INICIO




la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','NECODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADLOC','LCODEMP','FCODEMP','LCODLOC','FCODLOC');

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADNE SET NEICMS_FRETE=0,NEALIQ_FRETE=0 WHERE NEFRETE=0 '
                  +' and (NEICMS_FRETE<>0 OR NEALIQ_FRETE<>0) ');
try
   DM1.Query1.execsql;
   fdm1StartCommit;
except
   end;



memo_erros.Lines.Clear;

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select NENUMERO,NETOTNOT,NEDTEMIS,FRAZAO,FCIDADE,FUF,FCIDADE,FUF '
                      +' FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                      +' NESTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));


DM1.Query1.SQL.Add(' and NECHAVEP=0'
                  +' and SUBSTR(TO_CHAR(NECFO),2,3)<>'+QuotedStr('949'));


DM1.Query1.SQL.Add('and NOT NECFO in (1252,2252,1353,2353,1303,2303,1253,2253,2352,1352)');
//DM1.Query1.SQL.Add('and NOT NEMODELO in ('+QuotedStr('56')+')');



mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and NENUMERO '+mcinst2);



DM1.Query1.Open;
if not DM1.Query1.IsEmpty then
   begin
   While not DM1.Query1.Eof do
      begin
      memo_erros.Lines.Add('NOTA DE ENTRADA: '+FormatFloat('0000000', DM1.Query1.fieldbyName('NENUMERO').AsFloat )
                          +' Data: '+FormatDateTime(fdt2, DM1.Query1.fieldbyName('NEDTEMIS').AsDateTime)
                          +' Valor: '+FormatFloat(mcasas, DM1.Query1.FieldbyName('NETOTNOT').asfloat)
                          +' Fornecedor: '+DM1.Query1.fieldbyname('FRAZAO').asString
                          +' Não Possui Mercadorias Verifique!');

      DM1.Query1.Next;
      end;
   end;
// verificacao de frete e outros



DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(OUTRAS_SICMS) as  OUTRAS_SICMS '
                  +'      ,sum(OUTRAS_CICMS) as OUTRAS_CICMS '
                  +'      ,sum(FRETE_CICMS) as FRETE_CICMS '
                  +'      ,sum(FRETE_SICMS) as FRETE_SICMS '
                  +'      ,sum(ICMS_FRETE) as ICMS_FRETE '
                  +'       ,0 AS TOTSER '

                  +' from '
                  +' ( ');

DM1.Query1.SQL.Add(' Select sum(NEOUTDESP) as  OUTRAS_SICMS '
                  +',sum(NEOUTRAS) as OUTRAS_CICMS '
                  +',sum(DECODE(NEICMS_FRETE,0,0,NEFRETE)) as FRETE_CICMS '
                  +',sum(DECODE(NEICMS_FRETE,0,NEFRETE,0)) as FRETE_SICMS '
                  +',sum(NEICMS_FRETE) as ICMS_FRETE '
                  +',sum( CASE WHEN  SUBSTR(TO_CHAR(NECFO),2,3)='+QuotedStr('949')
                  +' AND NECHAVEP=0 THEN NETOTNOT ELSE 0 END) TOTSER '
                  +'  FROM CADNE '
                  +'   where NECODEMP='+IntToStr(codemp)
                  +' and NESTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.Add(' and NOT NECFO in (1252,2252,1353,2353,1303,2303,1253,2253,2352,1352)');
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query1.sql.Add(' and NENUMERO '+mcinst2);

{
DM1.Query1.SQL.Add('Select sum(DECODE(NSICMS_VLOUTD,0,NSTARBAN,0)) as  OUTRAS_SICMS '
                  +'       ,sum(DECODE(NSICMS_VLOUTD,0,0,NSTARBAN)) as  OUTRAS_CICMS '
                  +'       ,sum(DECODE(NSICMS_VLFRE,0,0,NSFRETE)) as FRETE_CICMS '
                  +'       ,sum(DECODE(NSICMS_VLFRE,0,NSFRETE,0)) as FRETE_SICMS '
}




DM1.Query1.SQL.Add(' ) ');

// DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');

try
   DM1.Query1.open;
except
   DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');
   MessageDlg('Erro ao Selecionar dados!',mtWarning,[mbOk],0);
   end;
//DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');

mTemOutCIcms  :=DM1.Query1.FieldByName('OUTRAS_CICMS').AsFloat>0;
mTemOutSIcms  :=DM1.Query1.FieldByName('OUTRAS_SICMS').AsFloat>0;
mTemFreteCIcms:=DM1.Query1.FieldByName('FRETE_CICMS').AsFloat>0;
mTemServicos  :=DM1.Query1.FieldByName('TOTSER').AsFloat>0;
//mTemOutSIcms  :=false;
//mTemFreteCIcms:=false;

mTemFreteSIcms:=DM1.Query1.FieldByName('FRETE_SICMS').AsFloat>0;



// verificacao de frete e outros
// TERMINO


mem_e200.Close;
mem_e210.Close;

mem_e200.EmptyTable;
mem_e210.EmptyTable;

mem_e200.Open;
mem_e210.Open;

mContLin:=0;
mQtdRegC:=0;
mQtdRegD:=0;
mQtdRegE:=0;


flcadloc(1,0,edt_codloc.Text);
mContlin:=mContlin+1;
Writeln(f,'|'+'0000'+'|' // 1
       +VERS.Text+'|'       //2

           +Copy(CODFIN.Text,1,1)+'|'  //3
           +FormatDateTime('ddmmyyyy',StrtoDate(MDT1.Text))+'|'//4
           +FormatDateTime('ddmmyyyy',StrtoDate(MDT2.Text))+'|'//5
           +trim(DM1.Tb_EmpRAZAO.Value)+'|'//6
           +FormatFloat('00000000000000',fsonumero(edt_cnpj.Text))+'|'//7
           +fdeixanum2(edt_CPF.text)+'|'//cpf 8
           +trim(edt_uf.text) +'|'//9
           +mie+'|'//10
           +DM1.Tb_Loclcodmun_ibge.AsString+'|'//11
           +edt_InscMun.Text+'|'//12
           +edt_SUFRAMA.Text+'|'//13
           +CB_PERFIL.Text+'|'
           +IntTostr(CB_ATIVIDADE.ItemIndex)+'|');//18;
q0000:=1;
//
mContlin:=mContlin+1;
WriteLn(f,'|'+'0001'+'|'+'0'+'|');
q0001:=1;
// REGISTRO 005: Dados Complementares da Entidade
mContlin:=mContlin+1;
WriteLn(f,'|'+'0005'+'|'+copy(edt_fantasia.text,1,60)+'|'+fdeixanum2(edt_cep.text)+'|'+trim(copy(edt_endereco.text,1,60))+'|'+edt_numero.text+'|'+'|'+trim(edt_bairro.text)+'|'+copy(fdeixanum(edt_fone.text),1,10)+'|'+copy(fdeixanum(edt_fax.text),1,10)+'|'+'|');
q0005:=1;


// REGISTRO 0100: DADOS DO CONTABILISTA
flcadloc(1,0,edt_Contador_Codloc.Text);
mContlin:=mContlin+1;
writeln(f,'|'+'0100'+'|'
           +trim(edt_Contador_Nome.Text)+'|'
           +IIF(fSonumero(edt_Contador_CPF.Text)>0,FormatFloat('00000000000',fSonumero(edt_Contador_CPF.Text)),'')+'|'
           +trim(edt_Contador_CRC.Text)+'|'
           +IIF(fSonumero(edt_Contador_CNPJ.Text)>0,FormatFloat('00000000000000',fSonumero(edt_Contador_CNPJ.Text)),'')+'|'
           +fdeixanum2(edt_Contador_CEP.Text)+'|'
           +trim(Edt_Contador_ENDER.text)+'|'
           +trim(Edt_Contador_NUMero.text)+'|'
           +trim(Edt_Contador_CompEnd.text)+'|'
           +trim(Edt_Contador_Bairro.Text)+'|'
           +
           fdeixanum2(Edt_Contador_FONE.Text)+'|'
           +fdeixanum2(Edt_Contador_FAX.Text)+'|'
           +trim(Edt_Contador_EMail.Text)+'|'
           +DM1.Tb_Loclcodmun_ibge.AsString+'|');

// REGISTRO 0150: Tabela de Cadastro de Participante
q0100:=1;
q0150:=0;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','NECODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADLOC','LCODEMP','FCODEMP','LCODLOC','FCODLOC');

Qr_150A_CliFor.Close;
Qr_150A_CliFor.SQL.Clear;
Qr_150A_CliFor.SQL.Add('SELECT '+chr(39)+'F'+chr(39)+' TIPO, '+chr(39)+'F'+chr(39)+' || FCODFOR AS CODIGO, '
                      +' max(FRAZAO) AS RAZSOC, '
                      +' max(FCIDADE) AS CIDADE, '
                      +' max(FUF) AS UF, '
                      +' max(FIE) AS INSCEST, '
                      +' max(FCGC) AS CNPJ, '
                      +' 0    AS CPF, '
                      +' max(LCODMUN_IBGE) AS CODMUN_IBGE, '
                      +' max(FNLOG) AS ENDERECO, '
                      +' max(FBAIRRO) AS BAIRRO '
                      +','+chr(39)+' '+chr(39)+' SUFRAMA '
                      +' FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                      +' NESTATUS<9 ');//AND NEMODELO NOT IN ('+QuotedStr('07')+') ');
if trim(MDT1.Text)<>'/  /' then
   Qr_150A_CliFor.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_150A_CliFor.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));

mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_150A_CliFor.SQL.Add(' and NENUMERO '+mcinst2);

Qr_150A_CliFor.SQL.Add(' group by FCODFOR ');
Qr_150A_CliFor.SQL.add(' union ');
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');


Qr_150A_CliFor.SQL.add(' SELECT '+chr(39)+'C'+chr(39)+' TIPO, '+chr(39)+'C'+chr(39)+' || max(CCODCLI) AS CODIGO, '
                      +' max(CRAZAO) AS RAZSOC, '
                      +' max(CCIDADE) AS CIDADE, '
                      +' max(CUF) AS UF, '
                      +' max(CIE) AS INSCEST, '
                      +' max(TO_CHAR(CCNPJ)) AS CNPJ, '
                      +' max(CCPF) AS CPF, '
                      +' max(LCODMUN_IBGE) AS CODMUN_IBGE, '
                      +' max(CLOG) AS ENDERECO, '
                      +' max(CBAIRRO) AS BAIRRO '
                      +','+chr(39)+' '+chr(39)+' SUFRAMA '

                      +' FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                      +' NSSTATUS<8 and NSSTATUS<>2 and NSTIPO<2 and (NSNUMERO>0)');
if trim(MDT1.Text)<>'/  /' then
   Qr_150A_CliFor.SQL.Add('and (NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)+' )');
if trim(MDT2.Text)<>'/  /' then
   Qr_150A_CliFor.SQL.Add('and (NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)+')');

mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_150A_CliFor.SQL.Add(' and NSNUMERO '+mcinst2);

   {
if cb_familia300.Checked then
   Qr_150A_CliFor.SQL.Add(' and NSMODELO='+chr(39)+'55'+chr(39));
    }

Qr_150A_CliFor.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_150A_CliFor.SQL.Add(' and NSNUMERO '+mcinst2);


Qr_150A_CliFor.SQL.Add(' Group by CCODCLI ');
try
   Qr_150A_CliFor.Open;
except
   Qr_150A_CliFor.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;

if cb_familia300.Checked then
   fLerDadosblocoC300(0);  // ler itens do registro c300

//Qr_150A_CliFor.SQL.SaveToFile('c:\sql0150.txt');


Qr_150A_CliFor.First;
while not Qr_150A_CliFor.Eof do
   begin
   if Qr_150A_CliForCPF.AsFloat=11111111111 then
      begin
      Qr_150A_CliFor.Next;
      Continue;
      end;

   if (Qr_150A_CliForCNPJ.AsFloat=0) and (Qr_150A_CliForCPF.AsFloat=0) then
      memo_erros.Lines.Add('O Fornecedor/Cliente: '+Qr_150A_CliForCODIGO.AsString+' - '+Qr_150A_CliForRAZSOC.AsString+' Não Possui CNPJ nem CPF!');
   if Qr_150A_CliForCODMUN_IBGE.AsFloat=0 then
      memo_erros.Lines.Add('O Fornecedor/Cliente: '+Qr_150A_CliForCODIGO.AsString+' - '+Qr_150A_CliForRAZSOC.AsString+' Não Possui Código do Municipio Junto ao IBGE!');
   if length(trim(Qr_150A_CliForENDERECO.AsString))<2  then
      memo_erros.Lines.Add('O Fornecedor/Cliente: '+Qr_150A_CliForCODIGO.AsString+' - '+Qr_150A_CliForRAZSOC.AsString+' Não Possui Endereço!');
   if length(trim(Qr_150A_CliForCIDADE.AsString))<2  then
      memo_erros.Lines.Add('O Fornecedor/Cliente: '+Qr_150A_CliForCODIGO.AsString+' - '+Qr_150A_CliForRAZSOC.AsString+' Não Possui Nome da Cidade!');
   if length(trim(Qr_150A_CliForBAIRRO.AsString))<2  then
      memo_erros.Lines.Add('O Fornecedor/Cliente: '+Qr_150A_CliForCODIGO.AsString+' - '+Qr_150A_CliForRAZSOC.AsString+' Não Possui Nome do Bairro!');

   q0150:=q0150+1;
   mLinha:='|'+'0150'; //1
   mLinha:=mLinha+'|'+ Qr_150A_CliForCODIGO.AsString;//2
   if Qr_150A_CliForCPF.AsFloat=11111111111 then
      begin

      mLinha:=mLinha+'|'+Trim(DM1.Tb_EmpRAZAO.Value) //3
             +'|'+'01058'+'|';
      mlinha:=mLInha+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+'|';//5
      mLinha:=mLInha+'|'; // CPF 06
      mIE:='';
      mLinha:=mLinha+mIE//7
            +'|'+FormatFloat('0000000',DM1.Tb_Empcodloc_ibge.Value) //8
            +'|'+DM1.Tb_EmpEMP_SUFRAMA.AsString // 9 SUFRAMA
            +'|'+Trim(DM1.Tb_EmpENDERECO.AsString)// Endereço  //10
            +'|' +DM1.Tb_EmpNUMERO.AsString // N. do Imovel   //11
            +'|'+Trim(DM1.Tb_EmpCIDADE.AsString)+'/'+Trim(DM1.Tb_EmpUF.AsString)// Complemento    //12
            +'|'+Trim(DM1.Tb_EmpBAIRRO.AsString)// Bairro    ,    //13
            +'|';
      end
   else
      begin
      mLinha:=mLinha+'|'+Trim(Qr_150A_CliForRAZSOC.Value) //3
             +'|'+'01058'+'|';
      if Qr_150A_CliForCNPJ.AsFloat>0 then
         mlinha:=mLInha+FormatFloat('00000000000000',Qr_150A_CliForCNPJ.AsFloat);//5
      mLinha:=mLInha+'|';
      if Qr_150A_CliForCPF.AsFloat>0 then
         mlinha:=mLInha+FormatFloat('00000000000',Qr_150A_CliForCPF.Value); // 9 cpf
      mLinha:=mLInha+'|';
      if UpperCase(trim(Qr_150A_CliForINSCEST.AsString))='ISENTO' then
         mIE:=''
      else if fSonumero(Qr_150A_CliForINSCEST.AsString)=0 then
         mIE:=''
      else
         mIE:=fDeixanum(Qr_150A_CliForINSCEST.AsString);

      mLinha:=mLinha+mIE//7
            +'|'+iif(Qr_150A_CliForCODMUN_IBGE.AsFloat>0,FormatFloat('0000000',Qr_150A_CliForCODMUN_IBGE.Value),'') //8
            +'|'+Trim(Qr_150A_CliForSUFRAMA.AsString) // 9 SUFRAMA
            +'|'+Trim(Qr_150A_CliForENDERECO.Value)// Endereço  //10
            +'|' // N. do Imovel   //11
            +'|'+Trim(Qr_150A_CliForCIDADE.Value)+'/'+Trim(Qr_150A_CliForUF.Value)// Complemento    //12
            +'|'+Trim(Qr_150A_CliForBAIRRO.Value)// Bairro    ,    //13
            +'|';
      end;



   mContlin:=mContlin+1;
   writeln(f,mLinha);
   Qr_150A_CliFor.Next;
   end;
q0190:=0;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

Qr_0190_Unid.Close;
Qr_0190_Unid.SQL.Clear;
Qr_0190_Unid.SQL.Add('Select UPPER(TRIM(CODUNID)) AS CODUNID,max(DESCUNID) as DESCUNID FROM (');

Qr_0190_Unid.SQL.Add(' SELECT UPPER(PDUND) AS CODUNID, '
                      +' UPPER(PDUND) AS DESCUNID '
                      +' FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                      +' NESTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   Qr_0190_Unid.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0190_Unid.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_0190_Unid.SQL.Add(' and NENUMERO '+mcinst2);

Qr_0190_Unid.SQL.Add(' group by UPPER(PDUND) ');

if (mTemOutCIcms) or (mTemOutSIcms) or (mTemFreteCIcms) or (mTemFreteSIcms) or (mTemServicos) then
   begin
   Qr_0190_Unid.SQL.Add(' union ');
   Qr_0190_Unid.SQL.Add(' SELECT '+chr(39)+'UND'+chr(39)+' AS CODUNID, '
                      +' '+chr(39)+'UND'+chr(39)+' AS DESCUNID '
                      +' from DUAL ');
   end;

Qr_0190_Unid.SQL.Add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

Qr_0190_Unid.SQL.Add('SELECT UPPER(PDUND) AS CODUNID, '
                      +' UPPER(PDUND) AS DESCUNID '
                      +' FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                      +' (NSSTATUS<10 or (NSNUMCUP>0 and NSSITCUP<9)) ');
if trim(MDT1.Text)<>'/  /' then
   Qr_0190_Unid.SQL.Add('and (NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)
                       +' or NSDATCUP>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)+')');

if trim(MDT2.Text)<>'/  /' then
   Qr_0190_Unid.SQL.Add('and (NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)
                       +' or NSDATCUP<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)+')');
mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_0190_Unid.SQL.Add(' and (NSNUMERO '+mcinst2+' or NSNUMCUP>0) ');
Qr_0190_Unid.SQL.Add(' and (NSMODELO<>'+chr(39)+'55'+chr(39)+' OR NSNUMCUP>0)');
Qr_0190_UNID.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');

{
if cb_familia300.Checked then
   Qr_0190_Unid.SQL.Add(' and NSMODELO='+chr(39)+'55'+chr(39));
 }
Qr_0190_Unid.SQL.Add(' Group by UPPER(PDUND) ');
// INVENTARIO
if trim(CB_INVENTARIO.Text)<>'' then
   begin
   Qr_0190_Unid.SQL.Add(' union ');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO','PDCODEMP','IGCODEMP','PDCODPRO','IGCODPRO');

   Qr_0190_Unid.SQL.Add('SELECT UPPER(PDUND) AS CODUNID, '
                         +' UPPER(PDUND) AS DESCUNID '
                         +' FROM INVGRA'+iif(la_tabelas='','',',')+la_tabelas
                         +'       '+la_Join
                         +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                         +' IGNOMEINV='+chr(39)+CB_INVENTARIO.Text+chr(39));
   Qr_0190_Unid.SQL.Add(' Group by UPPER(PDUND) ');
   end;

// TERMINO INVENTARIO

Qr_0190_Unid.SQL.Add(') GROUP BY UPPER(TRIM(CODUNID)) ');

//Qr_0190_Unid.sql.SaveToFile('c:\sql.txt');

try
   Qr_0190_Unid.Open;
except
   Qr_0190_Unid.sql.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0190',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;
{
Qr_0190_Unid.Close;
Qr_0190_Unid.SQL.Clear;
Qr_0190_Unid.SQL.Add(' SELECT max(trim(codunid)) as codunid,max(trim(descunid)) as descunid '
                    +' FROM TEMPORUNID '
                    +' GROUP BY trim(CODUNID) ');
//Qr_0190_Unid.Sql.SaveToFile('c:\sql.txt');
Qr_0190_Unid.Open;
}
Qr_0190_Unid.First;
while not Qr_0190_Unid.Eof do
   begin
   if length(Qr_0190_UnidCODUNID.AsString)<2 then
      begin
      Qr_0190_Unid.Next;
      Continue;
      end
   else
      mlinha:='|'+'0190'+'|'+Trim(Qr_0190_UnidCODUNID.Value)+'|'+'Descricao: '+Trim(Qr_0190_UnidDESCUNID.Value)+'|';
   q0190:=q0190+1;
   mContlin:=mContlin+1;
   Writeln(f,mlinha);
   Qr_0190_Unid.Next;
   end;



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
Qr_0200_Item.Close;
Qr_0200_Item.SQL.Clear;



Qr_0200_Item.SQL.Add('Select max(CODPRO) AS CODPRO,max(NOMPRO) AS NOMPRO,max(CODBAR) AS CODBAR,'
                    +'max(UNID) AS UNID,'
                    +'max(NIVEL) AS NIVEL,'
                    +' max(COD_NCM) AS COD_NCM,'
                    +' max(PDTABICM) as PDTABICM, '
                    +' max(ALIQ_ICM) as ALIQ_ICM '
                    +' from (');


Qr_0200_Item.SQL.Add('SELECT TO_CHAR(PDCODPRO) AS CODPRO,max(PDNOME) AS NOMPRO,max(PDCODBAR) AS CODBAR,'
                    +'max(PDUND) AS UNID,max(PDNIVEL) AS NIVEL,max(PDCLAS) AS COD_NCM,max(PDTABICM) AS PDTABICM '
                    +',CASE '
                    +'WHEN max(PDTABICM)='+chr(39)+'A'+chr(39)+' THEN max(PICMSA) '
                    +'when max(PDTABICM)='+chr(39)+'B'+chr(39)+' THEN max(PICMSB) '
                    +'when max(PDTABICM)='+chr(39)+'C'+chr(39)+' THEN max(PICMSC) '
                    +'when max(PDTABICM)='+chr(39)+'D'+chr(39)+' THEN max(PICMSD) '
                    +'when max(PDTABICM)='+chr(39)+'E'+chr(39)+' THEN max(PICMSNE) '
                    +'when max(PDTABICM)='+chr(39)+'F'+chr(39)+' THEN max(PICMSNF) '
                    +'when max(PDTABICM)='+chr(39)+'G'+chr(39)+' THEN max(PICMSNG) '
                    +'when max(PDTABICM)='+chr(39)+'H'+chr(39)+' THEN max(PICMSNH) '
                    +'when max(PDTABICM)='+chr(39)+'I'+chr(39)+' THEN max(PICMSNI) '
                    +'else 0 '
                    +'END ALIQ_ICM '
                    +'FROM CADNE,CADUF '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                    +' NESTATUS<9 '
                    +' and PUF='+chr(39)+DM1.Tb_EmpUF.AsString+chr(39));

if trim(MDT1.Text)<>'/  /' then
   Qr_0200_Item.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0200_Item.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_0200_Item.SQL.Add(' and NENUMERO '+mcinst2);

Qr_0200_Item.SQL.Add(' group by PDCODPRO ');

if (mTemOutCIcms) then
   begin
   Qr_0200_Item.SQL.add(' union ');
   Qr_0200_Item.SQL.add(' SELECT '+chr(39)+'OUTRASCICMS'+chr(39)+' as CODPRO, '
                       +chr(39)+'OUTRAS COM ICMS'+chr(39)+' as NOMPRO '
                       +', 0 AS CODBAR, '
                       +chr(39)+'UND'+chr(39)
                       +',0 AS NIVEL, '
                       +chr(39)+'12345678'+chr(39)+' as COD_NCM, '
                       +chr(39)+'A'+chr(39)+' as PDTABICM, '
                       +'PICMSA AS ALIQ_ICM '
                       +' from CADUF where '
                       +iif(DM1.Qr_tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                       +' PUF=:UF');
   Qr_0200_item.parambyName('UF').AsString:=DM1.Tb_EmpUF.AsString;
   end;

if (mTemOutSIcms) then
   begin
   Qr_0200_Item.SQL.add(' union ');
   Qr_0200_Item.SQL.add(' SELECT '+chr(39)+'OUTRASSICMS'+chr(39)+' as CODPRO, '
                       +chr(39)+'OUTRAS SEM ICMS'+chr(39)+' as NOMPRO '
                       +', 0 AS CODBAR, '
                       +chr(39)+'UND'+chr(39)
                       +',0 AS NIVEL, '
                       +chr(39)+'12345678'+chr(39)+' as COD_NCM, '
                       +chr(39)+'A'+chr(39)+' as PDTABICM, '
                       +'PICMSA AS ALIQ_ICM '
                       +' from CADUF where '
                       +iif(DM1.Qr_tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                       +' PUF=:UF');
   Qr_0200_item.parambyName('UF').AsString:=DM1.Tb_EmpUF.AsString;
   end;


if (mTemFreteCIcms) then
   begin
   Qr_0200_Item.SQL.add(' union ');
   Qr_0200_Item.SQL.add(' SELECT '+chr(39)+'FRETECICMS'+chr(39)+' as CODPRO, '
                       +chr(39)+'OUTRAS COM ICMS'+chr(39)+' as NOMPRO '
                       +', 0 AS CODBAR, '
                       +chr(39)+'UND'+chr(39)
                       +',0 AS NIVEL, '
                       +chr(39)+'12345678'+chr(39)+' as COD_NCM, '
                       +chr(39)+'A'+chr(39)+' as PDTABICM, '
                       +'PICMSA AS ALIQ_ICM '
                       +' from CADUF where '
                       +iif(DM1.Qr_tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                       +' PUF=:UF');
   Qr_0200_item.parambyName('UF').AsString:=DM1.Tb_EmpUF.AsString;
   end;

if (mTemFreteSIcms) then
   begin
   Qr_0200_Item.SQL.add(' union ');
   Qr_0200_Item.SQL.add(' SELECT '+chr(39)+'FRETESICMS'+chr(39)+' as CODPRO, '
                       +chr(39)+'FRETE SEM ICMS'+chr(39)+' as NOMPRO '
                       +', 0 AS CODBAR, '
                       +chr(39)+'UND'+chr(39)
                       +',0 AS NIVEL, '
                       +chr(39)+'12345678'+chr(39)+' as COD_NCM, '
                       +chr(39)+'A'+chr(39)+' as PDTABICM, '
                       +'PICMSA AS ALIQ_ICM '
                       +' from CADUF where '
                       +iif(DM1.Qr_tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                       +' PUF=:UF');
   Qr_0200_item.parambyName('UF').AsString:=DM1.Tb_EmpUF.AsString;
   end;


if (mTemServicos) then
   begin
   Qr_0200_Item.SQL.add(' union ');
   Qr_0200_Item.SQL.add(' SELECT '+chr(39)+'SERVICO'+chr(39)+' as CODPRO, '
                       +chr(39)+'SERVICOS DIVERSOS'+chr(39)+' as NOMPRO '
                       +', 0 AS CODBAR, '
                       +chr(39)+'UND'+chr(39)
                       +',09 AS NIVEL, '
                       +chr(39)+'12345678'+chr(39)+' as COD_NCM, '
                       +chr(39)+'A'+chr(39)+' as PDTABICM, '
                       +'0 AS ALIQ_ICM '
                       +' from CADUF where '
                       +iif(DM1.Qr_tid.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                       +' PUF=:UF');
   Qr_0200_item.parambyName('UF').AsString:=DM1.Tb_EmpUF.AsString;
   end;



Qr_0200_Item.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

Qr_0200_Item.SQL.Add('SELECT TO_CHAR(PDCODPRO) AS CODPRO,max(PDNOME) AS NOMPRO,max(PDCODBAR) AS CODBAR,'
                    +'max(PDUND) AS UNID,max(PDNIVEL) AS NIVEL,max(PDCLAS) AS COD_NCM,max(PDTABICM) as PDTABICM '
                    +',CASE '
                    +'WHEN max(PDTABICM)='+chr(39)+'A'+chr(39)+' THEN max(PICMSA) '
                    +'when max(PDTABICM)='+chr(39)+'B'+chr(39)+' THEN max(PICMSB) '
                    +'when max(PDTABICM)='+chr(39)+'C'+chr(39)+' THEN max(PICMSC) '
                    +'when max(PDTABICM)='+chr(39)+'D'+chr(39)+' THEN max(PICMSD) '
                    +'when max(PDTABICM)='+chr(39)+'E'+chr(39)+' THEN max(PICMSNE) '
                    +'when max(PDTABICM)='+chr(39)+'F'+chr(39)+' THEN max(PICMSNF) '
                    +'when max(PDTABICM)='+chr(39)+'G'+chr(39)+' THEN max(PICMSNG) '
                    +'when max(PDTABICM)='+chr(39)+'H'+chr(39)+' THEN max(PICMSNH) '
                    +'when max(PDTABICM)='+chr(39)+'I'+chr(39)+' THEN max(PICMSNI) '
                    +'else 0 '
                    +'END ALIQ_ICM '
                    +'FROM CADNS,CADUF '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' (NSSTATUS<10 or (NSNUMCUP>0 and NSSITCUP<9)) '
                    +' and PUF='+chr(39)+DM1.Tb_EmpUF.AsString+chr(39));
if trim(MDT1.Text)<>'/  /' then
   Qr_0200_Item.SQL.Add(' and (NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)
                       +' or NSDATCUP>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)+')');

if trim(MDT2.Text)<>'/  /' then
   Qr_0200_Item.SQL.Add(' and (NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)
                       +' or NSDATCUP<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)+')');
mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_0200_Item.SQL.Add(' and (NSNUMERO '+mcinst2+' or NSNUMCUP>0) ');
Qr_0200_Item.SQL.Add(' and (NSMODELO<>'+chr(39)+'55'+chr(39)+' OR NSNUMCUP>0)');

Qr_0200_Item.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');

{if cb_familia300.Checked then
   Qr_0200_item.SQL.Add(' and NSMODELO='+chr(39)+'55'+chr(39));
 }
Qr_0200_Item.SQL.Add(' Group by PDCODPRO');

//INVENTARIO




Qr_0200_Item.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','IGCODEMP','PDCODPRO','IGCODPRO');

Qr_0200_Item.SQL.Add('SELECT TO_CHAR(PDCODPRO) AS CODPRO,max(PDNOME) AS NOMPRO,max(PDCODBAR) AS CODBAR,'
                    +'max(PDUND) AS UNID,max(PDNIVEL) AS NIVEL,max(PDCLAS) AS COD_NCM,max(PDTABICM) as PDTABICM '
                    +',CASE '
                    +'WHEN max(PDTABICM)='+chr(39)+'A'+chr(39)+' THEN max(PICMSA) '
                    +'when max(PDTABICM)='+chr(39)+'B'+chr(39)+' THEN max(PICMSB) '
                    +'when max(PDTABICM)='+chr(39)+'C'+chr(39)+' THEN max(PICMSC) '
                    +'when max(PDTABICM)='+chr(39)+'D'+chr(39)+' THEN max(PICMSD) '
                    +'when max(PDTABICM)='+chr(39)+'E'+chr(39)+' THEN max(PICMSNE) '
                    +'when max(PDTABICM)='+chr(39)+'F'+chr(39)+' THEN max(PICMSNF) '
                    +'when max(PDTABICM)='+chr(39)+'G'+chr(39)+' THEN max(PICMSNG) '
                    +'when max(PDTABICM)='+chr(39)+'H'+chr(39)+' THEN max(PICMSNH) '
                    +'when max(PDTABICM)='+chr(39)+'I'+chr(39)+' THEN max(PICMSNI) '
                    +'else 0 '
                    +'END ALIQ_ICM '
                    +'FROM INVGRA,CADUF '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' PUF='+chr(39)+DM1.Tb_EmpUF.AsString+chr(39)
                    +' and IGNOMEINV='+chr(39)+CB_INVENTARIO.Text+chr(39));
Qr_0200_Item.SQL.Add(' Group by PDCODPRO');


// TERMINO INVENTARIO

Qr_0200_Item.SQL.Add(')  Group by CODPRO');



//   Qr_0200_item.SQL.SaveToFile('c:\sql.txt');

try
   Qr_0200_Item.Open;
except
   Qr_0200_item.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;

Qr_0200_Item.First;
while not Qr_0200_Item.Eof do
   begin
   q0200:=q0200+1;

   mLInha:='|0200'; //01
   mLInha:=mLinha+'|'+Qr_0200_ItemCODPRO.AsString; // 02
   mLInha:=mLInha+'|'+trim(Qr_0200_ItemNOMPRO.AsString);// 03
   mLInha:=mLInha+'|'+trim(Qr_0200_ItemCODBAR.AsString);// 04
   mLinha:=mLinha+'|'; //5
   if length(trim(Qr_0200_ItemUNID.AsString))<2 then
      mlinha:=mlinha+'|UND' //6
   else
      mlinha:=mlinha+'|'+Trim(Qr_0200_ItemUNID.Asstring); //6
   if Qr_0200_ItemNIVEL.AsInteger=7 then
      mLInha:=mLInha+'|99'  // 05
   else if Qr_0200_ItemNIVEL.AsInteger=6 then
      mLInha:=mLInha+'|07'  // 05 material de uso e consumo
   else if Qr_0200_ItemNIVEL.AsInteger=5 then
      mLInha:=mLInha+'|10'  // 05 outros insumos
   else if Qr_0200_ItemNIVEL.AsInteger=4 then // materia prima
      mLInha:=mLInha+'|01'  // 05
   else if Qr_0200_ItemNIVEL.AsInteger=3 then // produto em producao
      mLInha:=mLInha+'|03'  // 05
   else if Qr_0200_ItemNIVEL.AsInteger=2 then // materia prima
      mLInha:=mLInha+'|01'  // 05
   else if Qr_0200_ItemNIVEL.AsInteger=1 then  // servico
      mLInha:=mLInha+'|09'  // 05
   else
      mLInha:=mlinha+'|00'; // 05 produto para revenda
   mlinha:=mlinha+'|'+insere(fdeixanum(Qr_0200_ItemCOD_NCM.asstring),'0',8);
   mlinha:=mlinha+'|' //9 EX_IPI
               +'|'+'30'   // 10 COD_GEN
               +'|0000' // 11 COD_LST
               +'|'+Qr_0200_ItemALIQ_ICM.AsString +'|'; // 12 aliq_ICMS;
   mContlin:=mContlin+1;
   Writeln(f,mlinha);
   Qr_0200_Item.Next;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
//la_instrucao:=la_instrucao+' and ';
//fInnerJoin(1,'CADCFO','CFCODEMP','PF2CODEMP','CFCODCFO','PF2CFO');

Qr_0400_CFOP.Close;
Qr_0400_CFOP.SQL.Clear;


Qr_0400_CFOP.SQL.Add('Select TO_CHAR(CFCODCFO) AS CFCODCFO from (');





Qr_0400_CFOP.SQL.Add('SELECT  TO_CHAR(PF2CFO) AS  CFCODCFO FROM CADNE '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                    +' NESTATUS<9 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_0400_CFOP.SQL.Add(' and NENUMERO '+mcinst2);

Qr_0400_CFOP.SQL.Add(' and NECHAVEP<>0');

Qr_0400_CFOP.SQL.Add(' group by PF2CFO ');
Qr_0400_CFOP.SQL.add(' union ');
// notas fiscais
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
//la_instrucao:=la_instrucao+' and ';
//fInnerJoin(1,'CADCFO','CFCODEMP','P2CODEMP','CFCODCFO','P2CFO');
Qr_0400_CFOP.SQL.Add('SELECT CASE WHEN NSNUMCUP>0 THEN TO_CHAR(P2CFOSUBECF) '
                   +'  ELSE TO_CHAR(P2CFO) END AS  CFCODCFO FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' NSSTATUS<10 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add(' and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add(' and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
Qr_0400_cfop.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');

Qr_0400_CFOP.SQL.Add(' and NSNUMERO>0');
mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then
  Qr_0400_CFOP.SQL.Add(' and NSNUMERO '+mcinst2);
Qr_0400_CFOP.SQL.Add(' and (NSMODELO<>'+chr(39)+'55'+chr(39)+' OR NSNUMCUP>0)');
{
if cb_familia300.Checked then
   Qr_0400_CFOP.SQL.Add('and NSMODELO='+chr(39)+'55'+chr(39));
}
Qr_0400_CFOP.SQL.Add(' Group by  CASE WHEN NSNUMCUP>0 THEN TO_CHAR(P2CFOSUBECF) '
                   +'  ELSE TO_CHAR(P2CFO) END');
// CUPOM FISCAL

{
Qr_0400_CFOP.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
Qr_0400_CFOP.SQL.Add('SELECT CASE WHEN P2CFO>5999 AND P2CFO<7000 AND NSNUMCUP>0 THEN '
                    +' (DECODE(P2CFO,6404,5403,P2CFO-1000)) '
                   +'  ELSE P2CFO END AS  CFCODCFO FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' NSSTATUS<8 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));

Qr_0400_CFOP.SQL.Add('and NSNUMERO>0');
if fsonumero(edt_numnf_sai.Text)<>0 then
   Qr_0400_CFOP.SQL.Add('and NSNUMERO=0'+edt_numnf_sai.Text);

Qr_0400_CFOP.SQL.Add(' Group by  CASE WHEN P2CFO>5999 AND P2CFO<7000 AND NSNUMCUP>0 '
                    +' THEN  (DECODE(P2CFO,6404,5403,P2CFO-1000))   ELSE P2CFO END');
 }
//Qr_0400_CFOP.SQL.SaveToFile('c:\sql0400.txt');

Qr_0400_CFOP.SQL.Add(' union ');
Qr_0400_CFOP.SQL.Add('SELECT  DECODE(NECFO,0,1,SUBSTR(NECFO,1,1)) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' AS  CFCODCFO FROM CADNE '
                    +' WHERE (NEFRETE>0 OR NEOUTRAS>0 '
                    +' OR NEOUTDESP>0) '
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' and NECODEMP=0'+IntToStr(codemp))
                    +' and NESTATUS<9 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_0400_CFOP.SQL.Add(' and NENUMERO '+mcinst2);

Qr_0400_CFOP.SQL.Add(' and NECHAVEP<>0');

Qr_0400_CFOP.SQL.Add(' GROUP BY DECODE(NECFO,0,1,SUBSTR(NECFO,1,1)) || '+chr(39)+mFinalCFOP_Frete+chr(39));




Qr_0400_CFOP.SQL.Add(' union ');
Qr_0400_CFOP.SQL.Add('SELECT  SUBSTR(NSCFO1,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' AS  CFCODCFO FROM CADNS '
                    +' WHERE (NSFRETE>0 OR NSTARBAN>0) '
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' and NSCODEMP=0'+IntToStr(codemp))
                    +'  and NSSTATUS<10 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add(' and (NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)
                       +' or NSDATCUP>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39)+')');

if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add(' and (NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)
                       +' or NSDATCUP<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39)+')');
{
if cb_familia300.Checked then
   Qr_0400_CFOP.SQL.Add(' and NSMODELO='+chr(39)+'55'+chr(39));
}
mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_0400_CFOP.SQL.Add(' and NSNUMERO '+mcinst2);
Qr_0400_CFOP.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');

Qr_0400_CFOP.SQL.Add(' and (NSMODELO<>'+chr(39)+'55'+chr(39)+' OR NSNUMCUP>0)');

Qr_0400_CFOP.SQL.Add(' GROUP BY SUBSTR(NSCFO1,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39));

Qr_0400_CFOP.SQL.Add(') group by CFCODCFO ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';


Qr_0400_CFOP.SQL.Add(' union ');
Qr_0400_CFOP.SQL.Add('SELECT  TO_CHAR(NECFO) AS  CFCODCFO '
                      +' FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                      +' NESTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_0400_CFOP.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));


Qr_0400_CFOP.SQL.Add(' and NECHAVEP=0');
Qr_0400_CFOP.SQL.Add(' and SUBSTR(TO_CHAR(NECFO),2,3)='+QuotedStr('949'));

try
   Qr_0400_CFOP.Open;
except
   Qr_0400_CFOP.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;
//Qr_0400_CFOP.SQL.SaveToFile('c:\sql_TTT.txt');

while not Qr_0400_CFOP.Eof DO
   begin


   if (Qr_0400_CFOPCFCODCFO.AsFloat=5929) then
      begin
      Qr_0400_CFOP.Next;
      continue;
      end;


{
   if (Qr_0400_CFOPCFCODCFO.AsFloat=5405) or
      (Qr_0400_CFOPCFCODCFO.AsFloat=5403) or
      (Qr_0400_CFOPCFCODCFO.AsFloat=5102) then
      begin
      Qr_0400_CFOP.Next;
      continue;
      end;
}
   q0400:=q0400+1;
   mLinha:='|'+'0400'+'|'
          +Qr_0400_CFOPCFCODCFO.AsString+'|'
         +Trim(Qr_0400_CFOPnomcfop.Value)+'|';
   mContlin:=mContlin+1;
   writeln(f,mLinha);
   Qr_0400_CFOp.next;
   end;


q0990:=1;
mContlin:=mContlin+1;
writeln(f,'|'+'0990'+'|'+Floattostr(mContlin)+'|');

qC100:=0;
qC170:=0;
qC173:=0;
qC190:=0;
qC400:=0;
qC405:=0;
qC420:=0;
qC425:=0;
qC460:=0;
qC470:=0;
qC490:=0;
qC495:=0;

qC300:=0;
qC310:=0;
qC320:=0;
qC321:=0;
qC350:=0;
qC370:=0;
qC390:=0;

mTotC190E210:=0;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
la_instrucao:=la_instrucao+' and ';

fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');


E111_icms:=0;
mvalicmsent:=0;
Qr_C100_Notas.Close;
Qr_C100_Notas.SQL.Clear;
Qr_C100_Notas.SQL.add('Select CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END AS IND_OPER '
                     +'      ,0 AS IND_EMIT '
                     +','+chr(39)+'C'+chr(39)+'|| NSCODCLI AS COD_PART '
                     +'      ,NSMODELO AS COD_MOD '
                     +'      ,CASE WHEN NSSTATUS>7 THEN '+chr(39)+'02'+chr(39)+' ELSE '+chr(39)+'00'+chr(39)+' END AS COD_SIT '
                     +'      ,NSSERIE AS SER '
                     +'      ,NSNUMERO AS NUM_DOC '
                     +'      ,NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS CHV_NFE '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,NSDTEMIS AS DT_E_S '
//                     +'      ,sum(P2TOTLIQ) as VL_DOC '
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
                     +'      ,sum(P2VALPIS) AS VL_PIS '
                     +'      ,sum(P2COFINS) AS VL_COFINS '
                     +'      ,0 AS VL_PIS_ST '
                     +'      ,0 AS VL_COFINS_ST '
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



if trim(MDT1.Text)<>'/  /' then
   Qr_C100_Notas.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_C100_Notas.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_C100_Notas.SQL.Add(' and NSNUMERO '+mcinst2);
{if cb_familia300.Checked then
   Qr_C100_Notas.SQL.Add(' and NSMODELO='+chr(39)+'55'+chr(39));
 }
Qr_C100_Notas.SQL.Add(' AND NOT (NSSTATUS>7 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');

Qr_C100_Notas.SQL.add('Group by  CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END '
                     +'      ,NSCODCLI'
                     +'      ,NSMODELO  '
                     +'      ,CASE WHEN NSSTATUS>7 THEN '+chr(39)+'02'+chr(39)+' ELSE '+chr(39)+'00'+chr(39)+' END  '
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

Qr_C100_Notas.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');


Qr_C100_Notas.SQL.add(' Select 0 IND_OPER '
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
                     +'      ,0 AS VL_PIS '
                     +'      ,0 AS VL_COFINS '
                     +'      ,0 AS VL_PIS_ST '
                     +'      ,0 AS VL_COFINS_ST '
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
                    +' NESTATUS<>-9 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_C100_Notas.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_C100_Notas.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then  Qr_C100_Notas.SQL.Add(' and NENUMERO '+mcinst2);
//Qr_C100_Notas.SQL.Add('and NECHAVEP>0'+edt_numnf_ent.Text);
Qr_C100_Notas.SQL.Add('and NOT NECFO in (1353,2353,1303,2303)');

Qr_C100_Notas.SQL.Add(' group by NECODEMP '
                     +'      ,NELOTSEQ_CP '
                     +'      ,NECHAVEP ');
mTemServicos:=true;

if mTemServicos then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');

   Qr_C100_Notas.SQL.add(' union  ');
   Qr_C100_Notas.SQL.add(' Select 0 IND_OPER '
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
                        +'      ,0 AS VL_PIS '
                        +'      ,0 AS VL_COFINS '
                        +'      ,0 AS VL_PIS_ST '
                        +'      ,0 AS VL_COFINS_ST '
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
                       +' NESTATUS<>-9 ');

   if trim(MDT1.Text)<>'/  /' then
      Qr_C100_Notas.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Qr_C100_Notas.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
   if trim(mcinst2)<>'' then Qr_C100_Notas.SQL.Add(' and NENUMERO '+mcinst2);
//   Qr_C100_Notas.SQL.Add('and NECHAVEP=0'+edt_numnf_ent.Text);

      Qr_C100_Notas.SQL.Add('and NECHAVEP=0');
   Qr_C100_Notas.SQL.Add('and NETIPO=56');

    Qr_C100_Notas.SQL.Add('and NOT NECFO in (1252,1253,2252,2253)');

   Qr_C100_Notas.SQL.Add(' group by NECODEMP '
                        +'      ,NELOTSEQ_CP '
                        +'      ,NECHAVEP '
                        +'      ,NENUMERO,NEDTEMIS ' );


   end;
//  Qr_C100_Notas.SQL.SaveToFile('c:\sqlc100.txt');

try
   Qr_C100_Notas.Open;
except
   Qr_C100_Notas.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;

//   Qr_C100_Notas.SQL.SaveToFile('c:\sqlc100.txt');


mContlin:=mContlin+1;

if Qr_C100_Notas.IsEmpty then
  writeln(f,'|'+'C001'+'|'+'1'+'|')
else
  writeln(f,'|'+'C001'+'|'+'0'+'|');
qC001:=1;
mQtdRegC:=1;


Qr_C100_Notas.First;
while not Qr_C100_Notas.Eof do
   begin
   mQtdRegC:=mQtdRegC+1;
   qC100:=qC100+1;
   if trim(Qr_C100_NotasCOD_MOD.AsString)='' then
      ModDoc:='01'
   else if valint(Qr_C100_NotasCOD_MOD.AsString)=1 then
      ModDoc:=FormatFloat('00', valint(Qr_C100_NotasCOD_MOD.AsString))
   else
      ModDoc:=Qr_C100_NotasCOD_MOD.AsString;
//      ModDoc:=insere(Qr_C100_NotasCOD_MOD.AsString,'0',2);
//   ModDoc:='01';
   mcinst4:='';
   if (ValInt(ModDoc)<>1) and
      (Trim(ModDoc)<>'1B') and
      (ValInt(ModDoc)<>2) and
      (Trim(ModDoc)<>'2D') and
      (ValInt(ModDoc)<>4) and
      (ValInt(ModDoc)<>6) and
      (ValInt(ModDoc)<>7) and
      (ValInt(ModDoc)<>8) and
      (Trim(ModDoc)<>'8B') and
      (ValInt(ModDoc)<>9) and
      (ValInt(ModDoc)<>10) and
      (ValInt(ModDoc)<>11) and
      (ValInt(ModDoc)<>13) and
      (ValInt(ModDoc)<>14) and
      (ValInt(ModDoc)<>15) and
      (ValInt(ModDoc)<>17) and
      (ValInt(ModDoc)<>18) and
      (ValInt(ModDoc)<>20) and
      (ValInt(ModDoc)<>21) and
      (ValInt(ModDoc)<>22) and
      (ValInt(ModDoc)<>23) and
      (ValInt(ModDoc)<>24) and
      (ValInt(ModDoc)<>25) and
      (ValInt(ModDoc)<>26) and
      (ValInt(ModDoc)<>27) and
      (ValInt(ModDoc)<>28) and
      (ValInt(ModDoc)<>29) and
      (ValInt(ModDoc)<>55) and
      (ValInt(ModDoc)<>57) then
      memo_erros.Lines.Add('REGISTRO C100 Modelo Documento: '+ModDoc
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);
   if Qr_C100_NotasVL_BC_ICMS_ST.AsFloat<0 then
      begin
      memo_erros.Lines.Add('REGISTRO C100 Base Calc. ST: '+FormatFloat(mcasas, Qr_C100_NotasVL_BC_ICMS_ST.AsFloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);
      end
   else if Qr_C100_NotasVL_BC_ICMS.AsFloat<0 then
      begin
      memo_erros.Lines.Add('REGISTRO C100 Base Calc. ICMS: '+FormatFloat(mcasas, Qr_C100_NotasVL_BC_ICMS.AsFloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);
      end;




   mLInha:='|C100|' //1
           +Qr_C100_NotasIND_OPER.AsString+'|' //2
           +Qr_C100_NotasIND_EMIT.AsString+'|' //3
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',Qr_C100_NotasCOD_PART.AsString)+'|' //4
           +ModDoc+'|' //5
           +Qr_C100_NotasCOD_SIT.AsString+'|' {6}//se tiver cancelado a nota n. e igual a =02 JOSIEL
           +trim(Qr_C100_NotasSER.AsString)+'|' //7
           +Qr_C100_NotasNUM_DOC.AsString+'|' //8
           +trim(Qr_C100_NotasCHV_NFE.Value)+'|' //9
//           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',trim(Qr_C100_NotasCHV_NFE.Value))+'|' //9
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatDateTime('ddmmyyyy',Qr_C100_NotasDT_DOC.AsDateTime))+'|'; //10
           if Qr_C100_NotasCOD_SIT.AsFloat=2 then
              mLInha:=mLInha+'|'
           else if Qr_C100_NotasDT_E_S.AsDateTime<Qr_C100_NotasDT_DOC.AsDateTime then
              mLInha:=mLInha+FormatDateTime('ddmmyyyy',Qr_C100_NotasDT_DOC.AsDateTime)+'|'
           else
              mLInha:=mLInha+FormatDateTime('ddmmyyyy',Qr_C100_NotasDT_E_S.AsDateTime)+'|'; //11


           mLInha:=mLInha+iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_DOC.AsFloat
                                                                              +Qr_C100_NotasICMS_BCFRE.AsFloat))+'|' //12

           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('0',Qr_C100_NotasIND_PGTO.AsInteger))+'|' //13
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_DESC.Value))+'|' //14
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_ABAT_NT.Value))+'|' //15
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_MERC.Value+Qr_C100_NotasVL_ICMS_ST.AsFloat+Qr_C100_NotasVL_IPI.AsFloat
                                                                      +Qr_C100_NotasVL_FRT.AsFloat+Qr_C100_NotasVL_OUT_DA.AsFloat
                                                                     ))+'|' //16

           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('0',Qr_C100_NotasIND_FRT.AsInteger))+'|' //17 // SEGURO
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_FRT.AsFloat))+'|' //18
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_SEG.Value))+'|' //19 // SEGURO
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_OUT_DA.Value))+'|' //20 // OUTRAS DESP.
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_BC_ICMS.Value+Qr_C100_NotasICMS_BCFRE.AsFloat ))+'|' //21
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_ICMS.Value+Qr_C100_NotasICMS_VLFRE.AsFloat))+'|' //22
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_BC_ICMS_ST.Value))+'|' //23
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_ICMS_ST.Value))+'|' //24
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_IPI.AsFloat))+'|' //25 // valor do IPI
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_PIS.AsFloat))+'|' //26 // valor do PIS
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_COFINS.AsFloat))+'|' // 27 // valor do COFINS
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_PIS_ST.AsFloat))+'|' //28 // valor do PIS RET POR SUBST. TRIB.
           +iif(Qr_C100_NotasCOD_SIT.AsFloat=2,'',FormatFloat('##0.00',Qr_C100_NotasVL_COFINS_ST.AsFloat))+'|' //28 // valor do PIS RET POR SUBST. TRIB.
           //29
           ;
   mContlin:=mContlin+1;
   Writeln(f,mLInha);
   if (Qr_C100_NotasCHAVE.AsFloat=0) and (Qr_C100_NotasIND_EMIT.AsInteger=1) then
       begin
       fNotasdeServico(0);
       Qr_C100_notas.Next;
       Continue;
       end;

   if (Qr_C100_NotasCHAVE.AsFloat>0) and (Qr_C100_NotasCOD_SIT.AsFloat<>2) then
//   if (Qr_C100_NotasCHAVE.AsFloat>0) and (Qr_C100_NotasCOD_SIT.AsFloat<>2)  then
      begin
      if (Qr_C100_NotasIND_EMIT.AsInteger<>0) then
         begin
         Qr_C170_ItensPed.Close;
         Qr_C170_ItensPed.SQL.Clear;
         if Qr_C100_NotasIND_EMIT.AsInteger=1 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
            Qr_C170_ItensPed.SQL.Add('SELECT PF2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, PF2QTDP AS QTD '
                                    +',PDUND AS UNID, (PF2PU*PF2QTDP) AS VL_ITEM '
                                    +' ,PF2TOTDES AS VL_DESC '
                                    +',0 AS IND_MOV '
                                    +',PF2SIT AS CST_ICMS '
                                    +',PF2CFO AS COD_NAT '
                                    +',PF2BASEN AS VL_BC_ICMS '
                                    +',PF2ICMSN AS VL_ICMS '
                                    +',PF2BASER AS VL_BC_ICMS_ST '
                                    +',PF2ICMSR AS VL_ICMS_ST '
                                    +' ,PF2ALIQ AS ALIQ_ICMS '
                                    +' ,PF2ALIQ AS ALIQ_ST '
                                    +' , 0 AS IND_APUR '
                                    +' ,'+CHR(39)+'49'+CHR(39)+' AS CST_IPI '
                                    +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                                    +' ,DECODE(PF2IPI,0,0,PF2IPI) AS BL_BC_IPI '
                                    +' ,PF2ALIPI AS ALIQ_IPI '
                                    +' ,PF2IPI as VL_IPI '
                                    +' , '+CHR(39)+'99'+CHR(39)+'AS CST_PIS '
                                    +' ,0 AS VL_BC_PIS '
                                    +' ,0 AS ALIQ_PIS '
                                    +'  ,0 AS QUANT_BC_PIS '
                                    +'  ,0 ALIQ_PIS_REAIS '
                                    +',0 AS VL_PIS '
                                    +',PF2SIT AS CST_COFINS '
                                    +' ,0 AS VL_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS '
                                    +' ,0 AS QUANT_BC_COFINS '
                                     +',0 AS VL_COFINS '
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
                                    +' FROM CADNE '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' PF2CODEMP=0'+Qr_C100_NotasCODEMP.AsString);
            Qr_C170_ItensPed.SQL.Add(' and PF2LOTSEQ=0'+Qr_C100_NotasLOTSEQ.AsString);
            Qr_C170_ItensPed.SQL.Add(' and PF2CHAVE=0'+Qr_C100_NotasCHAVE.AsString);

            try
               Qr_C170_ItensPed.Open;
            except
               Qr_C170_ItensPed.SQL.savetofile('c:\sql.txt');
               messagedlg('erro ao abrir qrc170',mterror,[mbOk],0);
               closefile(f);

               exit;
               end;
            end
         else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
            Qr_C170_ItensPed.SQL.Add('SELECT P2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, P2QTD AS QTD '
                                    +',PDUND AS UNID, (P2PRECO*P2QTD) AS VL_ITEM '
                                    +' ,P2TOTDES AS VL_DESC '
                                    +',0 AS IND_MOV '
                                    +',P2SIT AS CST_ICMS '
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
                                    +' ,DECODE(P2VALIPI,0,0,P2VALIPI) AS BL_BC_IPI '
                                    +' ,P2ALIPI AS ALIQ_IPI '
                                     +',P2VALIPI as VL_IPI '
                                    +' , '+CHR(39)+'99'+CHR(39)+' AS CST_PIS '
                                    +' ,0 AS VL_BC_PIS '
                                    +' ,0 AS ALIQ_PIS '
                                    +' ,0 AS QUANT_BC_PIS '
                                    +' ,0 ALIQ_PIS_REAIS '
                                    +' ,0 AS VL_PIS '
                                    +' ,P2SIT AS CST_COFINS '
                                    +' ,0 AS VL_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS '
                                    +' ,0 AS QUANT_BC_COFINS '
                                    +' ,0 AS VL_COFINS '
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
//                                    +',DECODE(NSICMS_VLOUTD,0,NSTARBAN,0) as  OUTRAS_SICMS '
//                                    +',DECODE(NSICMS_VLOUTD,0,0,NSTARBAN) as OUTRAS_CICMS '
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
                             +' P2CODEMP=0'+Qr_C100_NotasCODEMP.AsString
                             +' and NSSTATUS=0'
                             +' and NSNUMERO<>0');


            Qr_C170_ItensPed.SQL.Add(' and P2LOTSEQ=0'+Qr_C100_NotasLOTSEQ.AsString);
            Qr_C170_ItensPed.SQL.Add(' and P2CHAVE=0'+Qr_C100_NotasCHAVE.AsString);
            Qr_C170_ItensPed.SQL.Add(' and P2ORDEM=0'+Qr_C100_NotasORDEM.AsString);
            try
               Qr_C170_ItensPed.Open;
             except
               Qr_C170_ItensPed.SQL.savetofile('c:\sql.txt');
               MessageDlg('Erro ao Abrit Qr0170',mtError,[mbOk],0);
               closefile(f);

               exit;
               end;

            end;
          mNumItem:=0;
          while not Qr_C170_ItensPed.eof do
             begin
             mQtdRegC:=mQtdRegC+1;
//             mNumItem:=Qr_C170_ItensPedNUM_ITEM.AsInteger;
             mNumItem:=mNumItem+1;


             if Qr_C170_ItensPedVL_BC_ICMS_ST.AsFloat<0 then
                begin
                memo_erros.Lines.Add('REGISTRO C100 Base Calc. ST: '+FormatFloat(mcasas, Qr_C170_ItensPedVL_BC_ICMS_ST.AsFloat)
                                           +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                           +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);
                end
             else if Qr_C170_ItensPedVL_BC_ICMS.AsFloat<0 then
                begin
                memo_erros.Lines.Add('REGISTRO C100 Base Calc. ICMS: '+FormatFloat(mcasas, Qr_C170_ItensPedVL_BC_ICMS.AsFloat)
                                           +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                           +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);
                end;

             if length(Qr_C170_ItensPedCST_ICMS.AsString)<>3 then
                memo_erros.Lines.Add('REGISTRO C100 CST '+ Qr_C170_ItensPedCST_ICMS.AsString
                                           +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                           +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CST invalido!');

             qC170:=qC170+1;
             mLInha:='|'+'C170'  //1
//                    +'|'+FormatFloat('000',Qr_C170_ItensPedNUM_ITEM.AsInteger)//2
                    +'|'+FormatFloat('000',mNumItem)//2
                        +'|'+Qr_C170_ItensPedCOD_ITEM.AsString //3
                        +'|'+Trim(Qr_C170_ItensPedDESCR_COMPL.AsString)//4
                        +'|'+FormatFloat('##0.000',Qr_C170_ItensPedQTD.asfloat);//5
             if length(trim(Qr_C170_ItensPedUNID.AsString))<2 then
                mLInha:=mLinha+'|UND'//6
             else
                mLInha:=mLinha+'|'+Trim(Qr_C170_ItensPedUNID.AsString);//6
             mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ITEM.AsFloat
                                               +Qr_C170_ItensPedVL_IPI.AsFloat
                                               +Qr_C170_ItensPedVL_ICMS_ST.AsFloat
                                               )//07
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_DESC.AsFloat) // 08
                        +'|'+Qr_C170_ItensPedIND_MOV.AsString; // Mov. Fisica 0 - SIM 1 - NAO //09
             if (Qr_C170_ItensPedALIQ_ICMS.AsFloat=0) and
                ( (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='10') or
                  (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='00') or
                  (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='20') or
                  (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='70') ) then
                mLInha:=mLInha+'|'+copy(Qr_C170_ItensPedCST_ICMS.AsString,1,1)+'40'   //10
             else
                mLInha:=mLInha+'|'+Qr_C170_ItensPedCST_ICMS.AsString;             //10
             mLInha:=mLInha+'|'+FormatFloat('0000',Qr_C170_ItensPedCOD_NAT.AsInteger)                //11
                        +'|'+FormatFloat('0000',Qr_C170_ItensPedCOD_NAT.AsInteger);        //12
             if (Qr_C170_ItensPedALIQ_ICMS.AsFloat=0) then
                begin
                mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//13 VL_BC_ICMS
                mLinha:=mLinha+'|'+FormatFloat('0',0);//14  ALIQ_ICMS
                mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//15 VL_ICMS
                end
             else
                begin
                mLinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_ICMS.asfloat)//13
                        +'|'+FormatFloat('00.00',Qr_C170_ItensPedALIQ_ICMS.AsFloat)      //14
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ICMS.AsFloat)//15
                end;
             mLinha:=mLinha
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_ICMS_ST.AsFloat)//16
                        +'|'+FormatFloat('00',Qr_C170_ItensPedALIQ_ST.AsFloat)   //17
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ICMS_ST.AsFloat)//18
                        +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19
                        +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                        +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                        +'|'+FormatFloat('##0.00', Qr_C170_ItensPedBL_BC_IPI.AsFloat) //22
                        +'|'+FormatFloat('000000',Qr_C170_ItensPedALIQ_IPI.AsFloat) //23 ALIQ IPI
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_IPI.AsFloat) //24 VLR IPI
                        +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_PIS.AsFloat)   //26 Valor da base de cálculo do PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedALIQ_PIS.AsFloat)   //27 Aliquota PIS
                        +'|'+FormatFloat('000',Qr_C170_ItensPedQUANT_BC_PIS.AsFloat)   //28 Quantidade BC PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedQUANT_BC_PIS.AsFloat)   //29 Alíquota do PIS (em rea
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_PIS.AsFloat)   //30 Valor do PIS
                        +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_COFINS.AsFloat)   //32 Valor da base de cálculo da COFIN
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedALIQ_COFINS.AsFloat)   //33 Alíquota do COFINS (em percentua
                        +'|'+FormatFloat('000',Qr_C170_ItensPedQUANT_BC_COFINS.AsFloat)      //34 Quantidade – Base de cálculo COFINS
                        +'|'+FormatFloat('##0.0000',Qr_C170_ItensPedALIQ_COFINS_REAIS.AsFloat) //35 líquota da COFINS (em reais
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_COFINS.AsFloat)   //36 Valor da base de cálculo da COFIN
                        +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
             mContlin:=mContlin+1;
             Writeln(f,mLInha);
             if (trim(Qr_C170_ItensPedC173_LOTE_MED.AsString)<>'') and (Qr_C170_ItensPedC173_DT_VAL.AsDateTime>pdatanula) then
                begin
                qC173:=qC173+1;
                mQtdRegC:=mQtdRegC+1;
                mDataFab:=Qr_C170_ItensPedC173_DT_VAL.AsDateTime;
                if Qr_C170_ItensPedPDPRZVAL_DIAS.AsInteger>0 then
                   mDataFab:=IncDay(mDataFab,Qr_C170_ItensPedPDPRZVAL_DIAS.AsInteger*-1);

                if Qr_C170_ItensPedPDPRZVAL.AsInteger>0 then
                   mDataFab:=IncMonth(mDataFab,Qr_C170_ItensPedPDPRZVAL.AsInteger*-1);
                if Qr_C170_ItensPedPDPRZVAL_ANOS.AsInteger>0 then
                   mDataFab:=IncMonth(mDataFab,Qr_C170_ItensPedPDPRZVAL_ANOS.AsInteger*-1);

                mLInha:='|'+'C173'  //1
                       +'|'+trim(Qr_C170_ItensPedC173_LOTE_MED.AsString)  //2
                       +'|'+FormatFloat('##0.000',Qr_C170_ItensPedC173_QTD_ITEM.AsFloat)   //3 Quantidade
                       +'|'+FormatDateTime('ddmmyyyy',mDataFab) //4 data de Fabricacao
                       +'|'+FormatDateTime('ddmmyyyy',Qr_C170_ItensPedC173_DT_VAL.AsDateTime) //5 data de Fabricacao
                       +'|'+FormatFloat('0', Qr_C170_ItensPedIND_MED.AsInteger) // 6
                       +'|'+FormatFloat('0', Qr_C170_ItensPedTP_PROD.AsInteger) // 7
                       +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_TAB_MAX.AsFloat) // 8
                       +'|';
                mContlin:=mContlin+1;
                Writeln(f,mLInha);
                end;
             Qr_C170_ItensPed.Next;
             end;
         Qr_C170_ItensPed.Prior;
         if Qr_C170_ItensPedVALOR_FRETE.AsFloat>0 then
            begin
            mNumItem:=mNumItem+1;
    // incio
            mQtdRegC:=mQtdRegC+1;
            qC170:=qC170+1;
            mLInha:='|'+'C170'  //1
                   +'|'+FormatFloat('000',mNumItem);//2
            if Qr_C170_ItensPedICMS_FRETE.AsFloat>0 then
               mLInha:=mLInha+'|'+'FRETECICMS|FRETE COM ICMS'
            else
               mLInha:=mLInha+'|'+'FRETESICMS|FRETE SEM ICMS';
            mLInha:=mLInha+'|'+FormatFloat('##0.000',1);//5
            mLInha:=mLinha+'|UND';//6
            mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVALOR_FRETE.AsFloat)//07
                       +'|'+FormatFloat('##0.00',0) // 08
                       +'|1'; // Mov. Fisica 0 - SIM 1 - NAO //09
            if Qr_C170_ItensPedICMS_FRETE.AsFloat>0 then
               mLInha:=mLInha+'|000'  //10
            else
               mLInha:=mLInha+'|040';  //10

            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 11 cfop
            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 12 codnatop
            if (Qr_C170_ItensPedICMS_FRETE.AsFloat=0) then
               begin
               mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//13 VL_BC_ICMS
               mLinha:=mLinha+'|'+FormatFloat('0',0);//14  ALIQ_ICMS
               mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//15 VL_ICMS
               end
            else
               begin
               mLinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVALOR_FRETE.asfloat)//13
                       +'|'+FormatFloat('00',Qr_C170_ItensPedICMS_ALIQ_FRETE.AsFloat)      //14
                       +'|'+FormatFloat('##0.00',Qr_C170_ItensPedICMS_FRETE.AsFloat)//15
               end;
            mLinha:=mLinha
                       +'|'+FormatFloat('##0.00',0)//16
                       +'|'+FormatFloat('00',0)   //17
                       +'|'+FormatFloat('##0.00',0)//18
                       +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19

                       +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                       +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                       +'|'+FormatFloat('##0.00', 0) //22
                       +'|'+FormatFloat('000000',0) //23 ALIQ IPI
                       +'|'+FormatFloat('##0.00',0) //24 VLR IPI
                       +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                       +'|'+FormatFloat('##0.00',0)   //26 Valor da base de cálculo do PIS
                       +'|'+FormatFloat('##0.00',0)   //27 Aliquota PIS
                       +'|'+FormatFloat('000',0)   //28 Quantidade BC PIS
                       +'|'+FormatFloat('##0.00',0)   //29 Alíquota do PIS (em rea
                       +'|'+FormatFloat('##0.00',0)   //30 Valor do PIS
                       +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                       +'|'+FormatFloat('##0.00',0)   //32 Valor da base de cálculo da COFIN
                       +'|'+FormatFloat('##0.00',0)   //33 Alíquota do COFINS (em percentua
                       +'|'+FormatFloat('000',0)      //34 Quantidade – Base de cálculo COFINS
                       +'|'+FormatFloat('##0.0000',0) //35 líquota da COFINS (em reais
                       +'|'+FormatFloat('##0.00',0)   //36 Valor da base de cálculo da COFIN
                       +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
            mContlin:=mContlin+1;
            Writeln(f,mLInha);
            end;
    // ouras

         if Qr_C170_ItensPedOUTRAS_CICMS.AsFloat>0 then
            begin
            mNumItem:=mNumItem+1;
            mQtdRegC:=mQtdRegC+1;
            qC170:=qC170+1;
            mLInha:='|'+'C170'  //1
                   +'|'+FormatFloat('000',mNumItem);//2
            if Qr_C170_ItensPedOUTRAS_CICMS.AsFloat>0 then
               mLInha:=mLInha+'|'+'OUTRASCICMS|OUTRAS COM ICMS'
            else
               mLInha:=mLInha+'|'+'OUTRASSICMS|OUTRAS SEM ICMS';
            mLInha:=mLInha+'|'+FormatFloat('##0.000',1);//5
            mLInha:=mLinha+'|UND';//6
            mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedOUTRAS_CICMS.AsFloat)//07
                       +'|'+FormatFloat('##0.00',0) // 08
                       +'|1'; // Mov. Fisica 0 - SIM 1 - NAO //09
            if Qr_C170_ItensPedOUTRAS_CICMS.AsFloat>0 then
               mLInha:=mLInha+'|000'  //10
            else
               mLInha:=mLInha+'|040';  //10

            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 11 cfop
            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 12 codnatop

            mLinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedOUTRAS_CICMS.asfloat)//13
                       +'|'+FormatFloat('00',Qr_C170_ItensPedOUTRAS_ALIQ.AsFloat)      //14
                       +'|'+FormatFloat('##0.00',Qr_C170_ItensPedOUTRAS_VL_ICMS.AsFloat);//15
            mLinha:=mLinha
                       +'|'+FormatFloat('##0.00',0)//16
                       +'|'+FormatFloat('00',0)   //17
                       +'|'+FormatFloat('##0.00',0)//18
                       +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19

                       +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                       +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                       +'|'+FormatFloat('##0.00', 0) //22
                       +'|'+FormatFloat('000000',0) //23 ALIQ IPI
                       +'|'+FormatFloat('##0.00',0) //24 VLR IPI
                       +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                       +'|'+FormatFloat('##0.00',0)   //26 Valor da base de cálculo do PIS
                       +'|'+FormatFloat('##0.00',0)   //27 Aliquota PIS
                       +'|'+FormatFloat('000',0)   //28 Quantidade BC PIS
                       +'|'+FormatFloat('##0.00',0)   //29 Alíquota do PIS (em rea
                       +'|'+FormatFloat('##0.00',0)   //30 Valor do PIS
                       +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                       +'|'+FormatFloat('##0.00',0)   //32 Valor da base de cálculo da COFIN
                       +'|'+FormatFloat('##0.00',0)   //33 Alíquota do COFINS (em percentua
                       +'|'+FormatFloat('000',0)      //34 Quantidade – Base de cálculo COFINS
                       +'|'+FormatFloat('##0.0000',0) //35 líquota da COFINS (em reais
                       +'|'+FormatFloat('##0.00',0)   //36 Valor da base de cálculo da COFIN
                       +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
            mContlin:=mContlin+1;
            Writeln(f,mLInha);
            end;

    // temino outras
    // ouras sem icms

         if Qr_C170_ItensPedOUTRAS_SICMS.AsFloat>0 then
            begin
            mNumItem:=mNumItem+1;
    // incio
            mQtdRegC:=mQtdRegC+1;
            qC170:=qC170+1;
            mLInha:='|'+'C170'  //1
                   +'|'+FormatFloat('000',mNumItem);//2
            mLInha:=mLInha+'|'+'OUTRASSICMS|OUTRAS SEM ICMS';
            mLInha:=mLInha+'|'+FormatFloat('##0.000',1);//5
            mLInha:=mLinha+'|UND';//6
            mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedOUTRAS_SICMS.AsFloat)//07
                       +'|'+FormatFloat('##0.00',0) // 08
                       +'|1'; // Mov. Fisica 0 - SIM 1 - NAO //09
            if Qr_C170_ItensPedOUTRAS_CICMS.AsFloat>0 then
               mLInha:=mLInha+'|000'  //10
            else
               mLInha:=mLInha+'|040';  //10
            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 11 cfop
            mLInha:=mlinha+'|'+copy(formatfloat('0000',Qr_C170_ItensPedCOD_NAT.AsFloat),1,1)+mFinalCFOP_Frete; // 12 codnatop

            mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//13 VL_BC_ICMS
            mLinha:=mLinha+'|'+FormatFloat('0',0);//14  ALIQ_ICMS
            mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//15 VL_ICMS
            mLinha:=mLinha
                       +'|'+FormatFloat('##0.00',0)//16
                       +'|'+FormatFloat('00',0)   //17
                       +'|'+FormatFloat('##0.00',0)//18
                       +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19

                       +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                       +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                       +'|'+FormatFloat('##0.00', 0) //22
                       +'|'+FormatFloat('000000',0) //23 ALIQ IPI
                       +'|'+FormatFloat('##0.00',0) //24 VLR IPI
                       +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                       +'|'+FormatFloat('##0.00',0)   //26 Valor da base de cálculo do PIS
                       +'|'+FormatFloat('##0.00',0)   //27 Aliquota PIS
                       +'|'+FormatFloat('000',0)   //28 Quantidade BC PIS
                       +'|'+FormatFloat('##0.00',0)   //29 Alíquota do PIS (em rea
                       +'|'+FormatFloat('##0.00',0)   //30 Valor do PIS
                       +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                       +'|'+FormatFloat('##0.00',0)   //32 Valor da base de cálculo da COFIN
                       +'|'+FormatFloat('##0.00',0)   //33 Alíquota do COFINS (em percentua
                       +'|'+FormatFloat('000',0)      //34 Quantidade – Base de cálculo COFINS
                       +'|'+FormatFloat('##0.0000',0) //35 líquota da COFINS (em reais
                       +'|'+FormatFloat('##0.00',0)   //36 Valor da base de cálculo da COFIN
                       +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
            mContlin:=mContlin+1;
            Writeln(f,mLInha);
            end;
         end;


      Qr_C190_RegAnal.Close;
      Qr_C190_RegAnal.SQL.Clear;
      if Qr_C100_NotasIND_EMIT.AsInteger=1 then
         begin
         Qr_C190_RegAnal.SQL.Add('select  CASE WHEN CST_ICMS='+chr(39)+'000'+chr(39)
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
         Qr_C190_RegAnal.SQL.Add('select PF2SIT  AS CST_ICMS,DECODE(PF2CFO,0,'+chr(39)+'1102'+chr(39)+',TO_CHAR(PF2CFO)) AS CFOP,PF2ALIQ AS ALIQ_ICMS '
                                +'      ,sum((PF2QTDP*PF2PU)-PF2TOTDES) AS VL_OPR,sum(PF2BASEN) AS VL_BC_ICMS '
                                +'      ,sum(PF2ICMSN) AS VL_ICMS,sum(PF2BASER) AS VL_BC_ICMS_ST '
                                +'     ,sum(PF2ICMSR) AS VL_ICMS_ST,sum(PF2OUTRAS) AS VL_RED_BC,sum(PF2IPI) AS VL_IPI '
                                +'     ,'+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,max(NEOUTDESP) as  OUTRAS_SICMS '
                                +' ,max(NEOUTRAS) as OUTRAS_CICMS'
                                +' ,max(NEOUTRAS_IMP) as OUTRAS_VL_ICMS'
                                +' ,max(NEOUTRAS_ALIQ) as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
//                                +' ,max(NEICMS_FRETE) as ICMS_FRETE'
//                                +' ,max(NEALIQ_FRETE) as ICMS_ALIQ_FRETE'
                                +' ,max(NEFRETE) as  VALOR_FRETE'


                                +' from CADNE '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' PF2CODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and PF2LOTSEQ=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and PF2CHAVE=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.add(' GROUP BY PF2SIT,PF2CFO,PF2ALIQ ' );
// inicio icms com frete

         Qr_C190_RegAnal.SQL.Add(' union ');

         Qr_C190_RegAnal.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
                                +'SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' as CFOP '
                                +', NEALIQ_FRETE AS ALIQ_ICMS '
                                +', sum(NEFRETE) AS VL_OPR '
//                                +', 0 AS VL_BC_ICMS '
//                                +', 0 AS VL_ICMS '
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
                                +' from CADNE where NECODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NELOTSEQ_CP=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NECHAVEP=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NEFRETE>0 AND NEICMS_FRETE>0');

         Qr_C190_RegAnal.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+',NEALIQ_FRETE');


// termino



// inicio icms sem frete

         Qr_C190_RegAnal.SQL.Add(' union ');

         Qr_C190_RegAnal.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
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
                                +' from CADNE where NECODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NELOTSEQ_CP=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NECHAVEP=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NEFRETE>0 AND NEICMS_FRETE=0');

         Qr_C190_RegAnal.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39) );


// termino



// outras sem icms

         Qr_C190_RegAnal.SQL.Add(' union ');

         Qr_C190_RegAnal.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
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
                                +' from CADNE where NECODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NELOTSEQ_CP=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NECHAVEP=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NEOUTDESP>0');

         Qr_C190_RegAnal.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39) );




// termino



// outras com icms

         Qr_C190_RegAnal.SQL.Add(' union ');

         Qr_C190_RegAnal.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
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
                                +' from CADNE where NECODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NELOTSEQ_CP=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NECHAVEP=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.Add(' and NEOUTRAS>0');

         Qr_C190_RegAnal.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+',NEOUTRAS_ALIQ' );



         Qr_C190_RegAnal.SQL.Add(') Group by '
                                +' CASE WHEN CST_ICMS='+chr(39)+'000'+chr(39)
                                +' AND VL_BC_ICMS=0 THEN '
                                +chr(39)+'040'+chr(39)
                                +' ELSE CST_ICMS END  '
                                +' ,CFOP '
                                +', ALIQ_ICMS ');

         Qr_C190_RegAnal.SQL.savetofile('c:\sql_C190.txt');
         try
            Qr_C190_RegAnal.Open;
         except
            Qr_C190_RegAnal.SQL.savetofile('c:\sql.txt');
            MessageDlg('Erro ao Abrit Qr0190',mtError,[mbOk],0);
            closefile(f);

            exit;
            end;




         end
      else
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         if Qr_C100_NotasNUM_CUP.AsFloat>0 then
            mcinst4:='TO_CHAR(P2CFOSUBECF)'
         else
            mcinst4:='TO_CHAR(P2CFO)';



         fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
//         Qr_C190_RegAnal.SQL.Add('select P2SIT  AS CST_ICMS,'+mcinst4+' AS CFOP,P2ALIQ AS ALIQ_ICMS '
         Qr_C190_RegAnal.SQL.Add('select DECODE(p2ALIQ,0,'+chr(39)+'040'+chr(39)+',P2SIT)  AS CST_ICMS,'+mcinst4+' AS CFOP,P2ALIQ AS ALIQ_ICMS '

                                +' ,sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_OPR,sum(P2BASEN+DECODE(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                                +',sum(P2ICMSN+DECODE(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS,sum(P2BASER) AS VL_BC_ICMS_ST '
                                +' ,sum(P2ICMSR) AS VL_ICMS_ST,sum(P2REDUTICM) AS VL_RED_BC,sum(P2VALIPI) AS VL_IPI '
                                +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +',max(DECODE(NSICMS_VLOUTD,0,0,0)) as  OUTRAS_SICMS '
                                +' ,max(DECODE(NSICMS_VLOUTD,0,0,0)) as OUTRAS_CICMS '
//                                +',max(DECODE(NSICMS_VLOUTD,0,NSTARBAN,0)) as  OUTRAS_SICMS '
//                                +' ,max(DECODE(NSICMS_VLOUTD,0,0,NSTARBAN)) as OUTRAS_CICMS '

                                +' ,max(NSICMS_VLOUTD) as OUTRAS_VL_ICMS '
                                +' ,max(NSICMS_ALOUTD) as OUTRAS_ALIQ '
                                +' ,max(DECODE(p2ALIQ,0,0,NSICMS_VLFRE)) as ICMS_FRETE '
                                +' ,max(DECODE(p2ALIQ,0,0,NSICMS_ALFRE)) as ICMS_ALIQ_FRETE '
                                +' ,max(NSFRETE) as  VALOR_FRETE '
                                +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' P2CODEMP=0'+Qr_C100_NotasCODEMP.AsString);
         Qr_C190_RegAnal.SQL.Add(' and P2LOTSEQ=0'+Qr_C100_NotasLOTSEQ.AsString);
         Qr_C190_RegAnal.SQL.Add(' and P2CHAVE=0'+Qr_C100_NotasCHAVE.AsString);
         Qr_C190_RegAnal.SQL.Add(' and P2ORDEM=0'+Qr_C100_NotasORDEM.AsString);
//         Qr_C190_RegAnal.SQL.add(' GROUP BY P2SIT,p2ALIQ,'+mcinst4);
         Qr_C190_RegAnal.SQL.add(' GROUP BY DECODE(p2ALIQ,0,'+chr(39)+'040'+chr(39)+',P2SIT),p2ALIQ,'+mcinst4);
         Qr_C190_RegAnal.SQL.savetofile('c:\sql_c190ns.txt');
         try
            Qr_C190_RegAnal.Open;
         except
            Qr_C190_RegAnal.SQL.savetofile('c:\sql.txt');
            MessageDlg('Erro ao Abrit Qr0190',mtError,[mbOk],0);
            closefile(f);
            exit;
            end;
         end;

       While not Qr_C190_RegAnal.Eof do
          begin
          mQtdRegC:=mQtdRegC+1;
          mLInha:='|C190'; //1



          if (Qr_C190_RegAnalALIQ_ICMS.AsFloat=0) and
             ( (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='10') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='00') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') ) then
             mLInha:=mLInha+'|'+copy(Qr_C190_RegAnalCST_ICMS.AsString,1,1)+'40'   //10
          else
             mLInha:=mLInha+'|'+Qr_C190_RegAnalCST_ICMS.AsString;             //10

          mLInha:=mLInha+'|'+Qr_C190_RegAnalCFOP.AsString //3
                        +'|'+FormatFloat('##0.00',Qr_C190_RegAnalALIQ_ICMS.AsFloat) //4
//                        +'|'+FormatFloat('##0.00',(Qr_C190_RegAnalVL_OPR.AsFloat)
                        +'|'+FormatFloat('##0.00',(Qr_C190_RegAnalVL_OPR.AsFloat+Qr_C190_RegAnalVL_IPI.AsFloat
                                                   +Qr_C190_RegAnalVL_ICMS_ST.AsFloat)

                        +IIF(Qr_C190_RegAnalICMS_FRETE.Asfloat>0,Qr_C190_RegAnalVALOR_FRETE.AsFloat,0) ); //5
//          if Qr_C100_NotasCHAVE.AsFloat=3635 then
//             showMessage('parou');


          if Qr_C190_RegAnalVL_ICMS_ST.AsFloat>0 then
             begin

             if not mem_e200.Locate('E200_UF',Qr_C100_NotasUF.AsString,[]) then
                begin
                mem_e200.Append;
                mem_e200E200_UF.Value    :=Qr_C100_NotasUF.AsString;
                mem_e200E200_DT_INI.Value:=MDT1.Date;
                mem_e200E200_DT_FIN.Value:=MDT2.Date;
                mem_e200.Post;
                end;
             if not mem_e210.Locate('E210_UF',Qr_C100_NotasUF.AsString,[]) then
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
                mem_e210E210_VL_ICMS_RECOL_ST.Value   :=0;
                mem_e210E210_VL_SLD_CRED_ST_TRAN.Value:=0;
                mem_e210E210_DEB_ESP_ST.Value         :=0;
                mem_e210E210_UF.Value                 :=Qr_C100_NotasUF.AsString;
                mem_e210.post;
                end;
             if Qr_C100_NotasIND_EMIT.AsInteger=1 then //  terceiros
                begin
                mem_e210.edit;
                mem_e210E210_IND_MOV_ST.Value         :='0';
                mem_e210E210_VL_OUT_CRED_ST.Value     :=0;
    //            mem_e210E210_VL_OUT_CRED_ST.Value     :=mem_e210E210_VL_OUT_CRED_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //            mem_e210E210_VL_RETENAO_ST.Value      :=mem_e210E210_VL_RETENAO_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //            mem_e210E210_VL_RETENAO_ST.Value      :=0;
    //            mem_e210E210_VL_OUT_CRED_ST.Value     :=mem_e210E210_VL_OUT_CRED_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //            mem_e210E210_VL_SLD_DEV_ANT_ST.Value    :=mem_e210E210_VL_SLD_DEV_ANT_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                if Qr_C100_NotasIND_OPER.AsInteger=0 then
                   begin
                   if (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='202') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='203') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='204') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='201') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='211') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='553') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='410') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='411') or
                      (copy(formatFloat('0000', Qr_C100_NotasCFOP.AsFloat),2,3)='553') then
                      mem_e210E210_VL_DEVOL_ST.Value          :=mem_e210E210_VL_DEVOL_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                      end;
//                mem_e210E210_VL_SLD_CRED_ST_TRAN.Value  :=mem_e210E210_VL_SLD_CRED_ST_TRAN.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //            mem_e210E210_VL_ICMS_RECOL_ST.Value     :=mem_e210E210_VL_ICMS_RECOL_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;


                //             mem_e210E210_VL_ICMS_RECOL_ST.Value   :=mem_e210E210_VL_ICMS_RECOL_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210.Post;
                end
             else if Qr_C100_NotasIND_OPER.AsInteger=0 then // 0 entradas
                begin
    {
                mem_e210.edit;
                mem_e210E210_IND_MOV_ST.Value         :='0';
                mem_e210E210_VL_OUT_CRED_ST.Value     :=mem_e210E210_VL_OUT_CRED_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210E210_VL_RETENAO_ST.Value      :=mem_e210E210_VL_RETENAO_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210E210_VL_OUT_CRED_ST.Value     :=mem_e210E210_VL_OUT_CRED_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210E210_VL_SLD_DEV_ANT_ST.Value  :=mem_e210E210_VL_SLD_DEV_ANT_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210E210_VL_ICMS_RECOL_ST.Value   :=mem_e210E210_VL_ICMS_RECOL_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210.Post;
    }
                end
             else
                begin
                mem_e210.edit;
                if Qr_C190_RegAnalVL_ICMS_ST.AsFloat>0 then
                   mem_e210E210_IND_MOV_ST.Value         :='1'
                else
                   mem_e210E210_IND_MOV_ST.Value         :='0';
//                mem_e210E210_VL_SLD_CRED_ANT_ST.Value    :=mem_e210E210_VL_SLD_CRED_ANT_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //            mem_e210E210_VL_OUT_CRED_ST.Value     :=mem_e210E210_VL_OUT_CRED_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                mem_e210E210_VL_RETENAO_ST.Value      :=mem_e210E210_VL_RETENAO_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
                IF Qr_C100_NotasIND_OPER.AsInteger=0 then // entrada
                    begin
//                    mem_e210E210_VL_SLD_CRED_ST_TRAN.Value  :=mem_e210E210_VL_SLD_CRED_ST_TRAN.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat
                    end
                else
                   begin
    //               mem_e210E210_VL_ICMS_RECOL_ST.Value     :=mem_e210E210_VL_ICMS_RECOL_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
    //               mem_e210E210_VL_SLD_DEV_ANT_ST.Value  :=mem_e210E210_VL_SLD_DEV_ANT_ST.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;
//                   mem_e210E210_VL_SLD_CRED_ST_TRAN.Value  :=mem_e210E210_VL_SLD_CRED_ST_TRAN.Value+Qr_C190_RegAnalVL_ICMS_ST.AsFloat;

                   end;
                mem_e210.Post;
                end;
             end;
          if (Qr_C190_RegAnalALIQ_ICMS.AsFloat=0) and
             ( (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='10') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='00') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') ) then
             mLInha:=mLInha+'|'+FormatFloat('##0.00',0)+'|'+FormatFloat('##0.00',0) // 7
          else
             mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_BC_ICMS.AsFloat
             +IIF(Qr_C190_RegAnalICMS_FRETE.Asfloat>0,Qr_C190_RegAnalVALOR_FRETE.AsFloat,0)) // 6
                     +'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_ICMS.AsFloat+Qr_C190_RegAnalICMS_FRETE.Asfloat); // 7


          mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_BC_ICMS_ST.asfloat) // 8
                +'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_ICMS_ST.asfloat); // 9             ]

{                                +' ,max(NSICMS_VLFRE) as ICMS_FRETE '
                                +' ,max(NSICMS_ALFRE) as ICMS_ALIQ_FRETE '
                                +' ,max(NSFRETE) as  VALOR_FRETE '
}

          if Qr_C190_RegAnalVL_BC_ICMS.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_BC_ICMS.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);

          if Qr_C190_RegAnalVL_ICMS.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do Icms Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_ICMS.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);

          if Qr_C190_RegAnalVL_BC_ICMS_ST.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms ST Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_BC_ICMS_ST.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);


          if Qr_C190_RegAnalVL_ICMS_ST.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do ICMS ST Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_ICMS_ST.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);


          if Qr_C190_RegAnalVL_RED_BC.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor da Redução BC Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_RED_BC.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);



//          if (Copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or (Copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') then
//            begin
            if ((copy(Qr_C190_RegAnalCST_ICMS.Value,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.Value,2,2)='70')) and
               (Qr_C190_RegAnalVL_RED_BC.AsFloat=0) then
               begin
               if fSonumero(Qr_C190_RegAnalCFOP.AsString)<5000 then
                  mcinst:=' de Entrada'
               else
                  mcinst:=' de Saida';

               if fSonumero(Qr_C190_RegAnalCFOP.AsString)<5000 then
                  begin
                  memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '
                            +FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                            +' possui item com CST: '+Qr_C190_RegAnalCST_ICMS.Value
                            +' e Redução de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+Qr_C100_NotasCHAVE.AsString);
                  if Qr_C190_RegAnalALIQ_ICMS.AsFloat=0 then
                     begin
                     memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '
                            +FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                            +' possui item com CST: '+Qr_C190_RegAnalCST_ICMS.Value
                            +' e Redução Aliquota de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+Qr_C100_NotasCHAVE.AsString);
                     end;
                  end;
               end;


            mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_RED_BC.AsFloat); // 10

            if (copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),1,1)='1') or
               (copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),1,1)='2') then
               mRestoCFOP:=valint(copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),2,3));
               if (mRestoCFOP<>410) and
                  (mRestoCFOP<>411) and
                  (mRestoCFOP<>414) and
                  (mRestoCFOP<>415) and
                  (mRestoCFOP<>660) and
                  (mRestoCFOP<>661) and
                  (mRestoCFOP<>662) then

                  mTotC190E210:=mTotC190E210+Qr_C190_RegAnalVL_ICMS_ST.asfloat;
//            end
//          else
//            begin
//            mLInha:=mLInha+'|'; // 10
//            end;
        mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_IPI.AsFloat) // 11
              +'|'+Qr_C190_RegAnalCOD_OBS.AsString
              +'|'; // 12

        if ((Qr_C190_RegAnalCFOP.AsString='5605')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='1')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='2')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='3'))
            and (Qr_C190_RegAnalCFOP.AsString<>'1605') then
          begin
          mvalicmsent:=mvalicmsent+Qr_C190_RegAnalVL_ICMS.AsFloat+Qr_C190_RegAnalICMS_FRETE.Asfloat; //
          end
        else
          begin
          E111_icms:=E111_icms+Qr_C190_RegAnalVL_ICMS.AsFloat
                      +Qr_C190_RegAnalICMS_FRETE.Asfloat; //
          end;

       qC190:=qC190+1;
       mContlin:=mContlin+1;

       WriteLN(F,mLInha);
       Qr_C190_RegAnal.Next;
       end;

      end;
   Qr_C100_Notas.Next;
   end;

// qc 300 inicial
qC300:=0;
qC310:=0;
qC320:=0;
qC321:=0;
qC350:=0;
qC370:=0;
qC390:=0;


if not Qr_C300_Notas.IsEmpty then
   begin
   Qr_C300_Notas.First;
   While not Qr_C300_Notas.Eof do
      begin
      if trim(Qr_C300_NotasCOD_MOD.AsString)='' then
         ModDoc:='01'
      else if valint(Qr_C300_NotasCOD_MOD.AsString)=1 then
         ModDoc:=FormatFloat('00', valint(Qr_C300_NotasCOD_MOD.AsString))
      else
         ModDoc:=Qr_C300_NotasCOD_MOD.AsString;
      mcinst4:='';
      if (ModDoc<>'01') and
         (ModDoc<>'1B') and
         (ModDoc<>'02') and
         (ModDoc<>'2D') and
         (ModDoc<>'24') and
         (ModDoc<>'04') and
         (ModDoc<>'06') and
         (ModDoc<>'07') and
         (ModDoc<>'08') and
         (ModDoc<>'8B') and
         (ModDoc<>'09') and
         (ModDoc<>'10') and
         (ModDoc<>'11') and
         (ModDoc<>'13') and
         (ModDoc<>'14') and
         (ModDoc<>'15') and
         (ModDoc<>'17') and
         (ModDoc<>'18') and
         (ModDoc<>'20') and
         (ModDoc<>'21') and
         (ModDoc<>'22') and
         (ModDoc<>'23') and
         (ModDoc<>'24') and
         (ModDoc<>'25') and
         (ModDoc<>'26') and
         (ModDoc<>'27') and
         (ModDoc<>'28') and
         (ModDoc<>'29') and
         (ModDoc<>'55') then
         memo_erros.Lines.Add('REGISTRO C300 Modelo Documento: '+ModDoc
                                    +' NF Inicial: '+Qr_C300_NotasNUM_DOC_INI.AsString
                                    +' NF final: '+Qr_C300_NotasNUM_DOC_FIN.AsString
                                    +' Valor: '+FormatFloat(mcasas,  Qr_C300_NotasVL_DOC.AsFloat));

      ModDoc:='02';
//      ModDoc:='01';
      mLInha:='|C300|' //1
              +ModDoc+'|' //2
              +'U'+'|' //3
              +'1'+'|' //3
//              +Qr_C300_NotasSUBSER.AsString+'|' //4
//              +Qr_C300_NotasSUBSER.AsString+'|' //4
              +Qr_C300_NotasNUM_DOC_INI.AsString+'|' //5
              +Qr_C300_NotasNUM_DOC_FIN.AsString+'|'; //6
      mLInha:=mLInha+FormatDateTime('ddmmyyyy',Qr_C300_NotasDT_DOC.AsDateTime)+'|' // 7
                     + FormatFloat('##0.00',Qr_C300_NotasVL_DOC.AsFloat)+'|' // 8
                     + FormatFloat('##0.00',Qr_C300_NotasVL_PIS.AsFloat)+'|' // 9
                     + FormatFloat('##0.00',Qr_C300_NotasVL_COFINS.AsFloat)+'|' // 10
                     + '  '+'|'; //11 // codigo da conta



      mQtdRegC:=mQtdRegC+1;
      qC300:=qC300+1;
      mContlin:=mContlin+1;

      WriteLN(F,mLInha);
// itens cancelado


      Qr_C310_Notas.Close;
      Qr_C310_Notas.SQL.Clear;
      Qr_C310_Notas.SQL.Add('Select NSNUMERO AS NUM_DOC_CANC '
                           +'      FROM CADNS where NSCODEMP='+IntTostr(codemp)
                          +' and  NSSTATUS>7 ');
      Qr_C310_Notas.SQL.Add('and NSDTEMIS=:DAT_DOC');
      Qr_C310_Notas.parambyName('DAT_DOC').asdatetime:=Qr_C300_NotasDT_DOC.asdatetime;
      Qr_C310_Notas.SQL.Add(' and NSMODELO<>'+chr(39)+'55'+chr(39));
      try
         Qr_C310_Notas.Open;
      except
          on E : Exception do
            begin
            ex_erroSql_Novo(Qr_C310_Notas,7526,'_sped_efd '+E.Message,'CADNS');
            end;
         end;



      While not Qr_C310_Notas.Eof do
         begin
         mLInha:='|C310|' //1
              +Qr_C310_NotasNUM_DOC_CANC.AsString+'|'; //2
         mQtdRegC:=mQtdRegC+1;
         qC310:=qC310+1;
         mContlin:=mContlin+1;
         WriteLN(F,mLInha);
         Qr_C100_Notas.Next;
         end;


// termino cancelado

// REGISTRO C320 resumo diario das notas

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      la_instrucao:=la_instrucao+' and ';

      fInnerJoin3(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP');


      Qr_C320_Notas.Close;
      Qr_C320_Notas.SQL.Clear;
      Qr_C320_Notas.SQL.Add('SELECT  P2SIT AS CST_ICMS,P2CFO AS CFOP '
                         +'       ,P2ALIQ AS ALIQ_ICMS '
                         +'       ,P2TOTLIQ AS VL_OPER '
                         +'       ,P2BASEN+P2BCINR AS VL_BC_ICMS '
                         +'       ,P2ICMSN+P2ICMSNR AS VL_ICMS '
                         +'  ,CASE WHEN P2BASEN+NVL(P2BCINR,0) >0 THEN '
                         +'  P2TOTLIQ-P2BASEN+NVL(P2BCINR,0) '
                         +' ELSE 0 END AS VL_RED_BC '
                         +' ,'+QuotedStr(' ')+' AS COD_OBS '
                         +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                         +'       '+la_Join
                         +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                         +' NSCODEMP=0'+IntToStr(codemp)+' and NSSTATUS<>9  and NSSTATUS<>8');
      Qr_C320_Notas.SQL.Add('and NSDTEMIS=:DAT_DOC');
      Qr_C320_Notas.parambyName('DAT_DOC').asdatetime:=Qr_C300_NotasDT_DOC.asdatetime;

      Qr_C320_Notas.Open;


      While not Qr_C320_Notas.Eof do
         begin
         mLInha:='|C320|' //1
               +Qr_C320_NotasCST_ICMS.AsString+'|' //2
              +Qr_C320_NotasCFOP.AsString+'|' //3
              +FormatFloat('00.00',Qr_C320_NotasALIQ_ICMS.AsFloat)+'|'      //04
              +FormatFloat('##0.00',Qr_C320_NotasVL_OPER.AsFloat)+'|' // 05
              +FormatFloat('##0.00',Qr_C320_NotasVL_BC_ICMS.AsFloat)+'|' // 06
              +FormatFloat('##0.00',Qr_C320_NotasVL_ICMS.AsFloat)+'|' // 07
              +FormatFloat('##0.00',Qr_C320_NotasVL_RED_BC.AsFloat)+'|' // 08
              +Qr_C320_NotasCOD_OBS.AsString+'|'; //9
         mQtdRegC:=mQtdRegC+1;
         qC320:=qC320+1;
         mContlin:=mContlin+1;
         WriteLN(F,mLInha);
         Qr_C320_Notas.Next;
         end;

// TERMINO REGISTRO C320 resumo diario das notas


// REGISTRO C321 resumo diario das notas

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      la_instrucao:=la_instrucao+' and ';

      fInnerJoin3(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP');

      Qr_C321_Notas.Close;
      Qr_C321_Notas.SQL.Clear;
      Qr_C321_Notas.SQL.Add('Select P2CODPRO as COD_ITEM '
                        +',sum(P2QTD) as QTD '
                        +',max(PDUND) AS UNID '
                        +',sum(P2TOTLIQ) as VL_ITEM '
                        +',sum(P2TOTDES) as VL_DESC '
                        +',sum(P2BASEN+NVL(P2BCINR,0)) as VL_BC_ICMS '
                        +',sum(P2ICMSN+NVL(P2ICMSNR,0)) AS VL_ICMS '
                        +',sum(P2VALPIS) AS VL_PIS '
                        +',sum(P2COFINS) AS VL_COFINS '
                        +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' NSCODEMP=0'+IntToStr(codemp)
                        +' and NSSTATUS<>9  and NSSTATUS<>8');
      Qr_C321_Notas.SQL.Add('and NSDTEMIS=:DAT_DOC');
      Qr_C321_Notas.parambyName('DAT_DOC').asdatetime:=Qr_C300_NotasDT_DOC.asdatetime;
      Qr_C321_Notas.SQL.Add(' Group by P2CODPRO ');
      try
         Qr_C321_Notas.Open;
      except
         on E : Exception do
            begin
            ex_erroSql_Novo(Qr_C321_Notas,3163,'_sped_efd '+E.Message,'CADNS');
            end;
         end;
      While not Qr_C321_Notas.Eof do
         begin
         mLInha:='|C321|' //1
            +Qr_C321_NotasCOD_ITEM.AsString+'|' //2
            +FormatFloat('##0.000',Qr_C321_NotasQTD.asfloat)+'|' //3
            +Qr_C321_NotasUNID.AsString+'|' //4
            +FormatFloat('00.00',Qr_C321_NotasVL_ITEM.AsFloat)+'|'      //05
            +FormatFloat('##0.00',Qr_C321_NotasVL_DESC.AsFloat)+'|' // 06
            +FormatFloat('##0.00',Qr_C321_NotasVL_BC_ICMS.AsFloat)+'|' // 07
            +FormatFloat('##0.00',Qr_C321_NotasVL_ICMS.AsFloat)+'|' // 08
            +FormatFloat('##0.00',Qr_C321_NotasVL_PIS.AsFloat)+'|' // 09
            +FormatFloat('##0.00',Qr_C321_NotasVL_COFINS.AsFloat)+'|'; // 10
         mQtdRegC:=mQtdRegC+1;
         qC321:=qC321+1;
         mContlin:=mContlin+1;
         WriteLN(F,mLInha);
         Qr_C321_Notas.Next;
         end;
      Qr_C300_Notas.Next;
      end;
   end;

// inicio 350


if not Qr_C350_Notas.IsEmpty then
   begin
   Qr_C350_Notas.First;
   While not Qr_C350_Notas.Eof do
      begin
      mLInha:='|C350|' //1
              +Qr_C350_NotasSER.AsString+'|' //2
              +Qr_C350_NotasSUB_SER.AsString+'|' //3
              +Qr_C350_NotasNUM_DOC.AsString+'|'; //4
      mLInha:=mLInha+FormatDateTime('ddmmyyyy',Qr_C350_NotasDT_DOC.AsDateTime)+'|'; // 5
      if length(Qr_C350_NotasCPF_CNPJ.AsString)<12 then
         mLinha:=mLinha+insere(Qr_C350_NotasCPF_CNPJ.asstring,'0',11)+'|' // 6
      else
         mLinha:=mLinha+insere(Qr_C350_NotasCPF_CNPJ.asstring,'0',14)+'|'; // 6
      mLinha:=mLinha+FormatFloat('##0.00',Qr_C350_NotasVL_MERC.AsFloat)+'|' // 7
                     + FormatFloat('##0.00',Qr_C350_NotasVL_DOC.AsFloat)+'|' // 08
                     + FormatFloat('##0.00',Qr_C350_NotasVL_DESC.AsFloat)+'|' // 09
                     + FormatFloat('##0.00',Qr_C350_NotasVL_PIS.AsFloat)+'|' // 10
                     + FormatFloat('##0.00',Qr_C350_NotasVL_COFINS.AsFloat)+'|' // 11
                     + Qr_C350_NotasCOD_CTA.AsString+'|'; //13

      mQtdRegC:=mQtdRegC+1;
      qC350:=qC350+1;
      mContlin:=mContlin+1;
      WriteLN(F,mLInha);
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
      la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


      Qr_C370_Notas.Close;
      Qr_C370_Notas.SQL.Clear;
      Qr_C370_Notas.SQL.Add('Select P2ITEM AS NUM_ITEM '
                           +'      ,P2CODPRO AS COD_ITEM '
                           +'      ,P2QTD AS QTD '
                           +'      ,PDUND AS UNID '
                           +'      ,P2TOTLIQ AS VL_ITEM '
                           +'      ,P2TOTDES AS VL_DESC '
                           +' FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' NSCODEMP=0'+IntToStr(codemp)+' and '
                           +' NSCHAVEP=:CHAVE '
                           +' and NSORDEMP=:ORDEM '
                           +' and NSLOTSEQ_CP=:LOTSEQ '
                           +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );
      Qr_C370_Notas.ParambyName('CHAVE').Asfloat:=Qr_C350_NotasCHAVE.asfloat;
      Qr_C370_Notas.ParambyName('ORDEM').Asfloat:=Qr_C350_NotasORDEM.asfloat;
      Qr_C370_Notas.ParambyName('LOTSEQ').Asfloat:=Qr_C350_NotasLOTSEQ.asfloat;
      Qr_C370_Notas.ParambyName('CODEMP').Asfloat:=Qr_C350_NotasCODEMP.asfloat;
      try
         Qr_C370_Notas.Open;
      except
          on E : Exception do
            begin
            ex_erroSql_Novo(Qr_C370_Notas,3252,'_sped_efd '+E.Message,'CADNS');
            end;
         end;

      mNumItem:=0;
      While not Qr_C370_Notas.Eof do
         begin
         mNumItem:=mNumItem+1;
         mLInha:='|C370|' //1
              +IntTostr(mNumItem)+'|' //2
//              +Qr_C370_NotasNUM_ITEM.AsString+'|' //2
              +Qr_C370_NotasCOD_ITEM.AsString+'|' //3
              +FormatFloat('##0.000',Qr_C370_NotasQTD.asfloat)+'|' //4
              +Qr_C370_NotasUNID.AsString+'|' //5
              +FormatFloat('00.00',Qr_C370_NotasVL_ITEM.AsFloat)+'|'      //06
              +FormatFloat('##0.00',Qr_C370_NotasVL_DESC.AsFloat)+'|'; // 07
         mQtdRegC:=mQtdRegC+1;
         qC370:=qC370+1;
         mContlin:=mContlin+1;
         WriteLN(F,mLInha);
         Qr_C370_Notas.Next;
         end;

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');


      Qr_C390_Notas.Close;
      Qr_C390_Notas.SQL.Clear;
      Qr_C390_Notas.SQL.Add('Select  P2SIT AS CST_ICMS '
                           +'       ,P2CFO AS CFOP '
                           +'       ,P2ALIQ AS ALIQ_ICMS '
                           +'       ,sum((P2QTD*P2PRECO)-P2TOTDES) as VL_OPER '
                           +'       ,sum(P2BASEN+NVL(P2BCINR,0)) AS VL_BC_ICMS '
                           +'       ,sum(P2ICMSN+NVL(P2ICMSNR,0)) AS VL_ICMS '
                           +'       ,sum( CASE WHEN P2BASEN+NVL(P2BCINR,0) >0 THEN P2TOTLIQ-P2BASEN+NVL(P2BCINR,0) '
                           +'       ELSE 0 END) AS VL_RED_BC '
                           +'       ,'+QuotedStr(' ')+' AS COD_OBS '
                           +' FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' NSCODEMP=0'+IntToStr(codemp)+' and '
                           +' NSCHAVEP=:CHAVE '
                           +' and NSORDEMP=:ORDEM '
                           +' and NSLOTSEQ_CP=:LOTSEQ '
                           +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );

      Qr_C390_Notas.SQL.Add(' Group by P2SIT,P2CFO,P2ALIQ');

      Qr_C390_Notas.ParambyName('CHAVE').Asfloat:=Qr_C350_NotasCHAVE.asfloat;
      Qr_C390_Notas.ParambyName('ORDEM').Asfloat:=Qr_C350_NotasORDEM.asfloat;
      Qr_C390_Notas.ParambyName('LOTSEQ').Asfloat:=Qr_C350_NotasLOTSEQ.asfloat;
      Qr_C390_Notas.ParambyName('CODEMP').Asfloat:=Qr_C350_NotasCODEMP.asfloat;
      try
         Qr_C390_Notas.Open;
      except
          on E : Exception do
            begin
            ex_erroSql_Novo(Qr_C390_Notas,3252,'_sped_efd '+E.Message,'CADNS');
            end;
         end;



      While not Qr_C390_Notas.Eof do
         begin
         mLInha:='|C390|' //1
              +Qr_C390_NotasCST_ICMS.AsString+'|' //2
              +Qr_C390_NotasCFOP.AsString+'|' //3
              +FormatFloat('00.00',Qr_C390_NotasALIQ_ICMS.AsFloat)+'|'  // 04
              +FormatFloat('##0.00',Qr_C390_NotasVL_OPER.asfloat)+'|' //5
              +FormatFloat('##0.00',Qr_C390_NotasVL_BC_ICMS.asfloat)+'|' //6
              +FormatFloat('##0.00',Qr_C390_NotasVL_ICMS.asfloat)+'|' //7
              +FormatFloat('##0.00',Qr_C390_NotasVL_RED_BC.asfloat)+'|' //8
              +Qr_C390_NotasCOD_OBS.AsString+'|'; //9
         mQtdRegC:=mQtdRegC+1;
         qC390:=qC390+1;
         mContlin:=mContlin+1;
         WriteLN(F,mLInha);
         Qr_C390_Notas.Next;
         end;
      Qr_C350_Notas.Next;
      end;
   end;

// qc 300 final


// ecf
// testa se existe ECF
Qr_C400_ECF.Close;
Qr_C400_ECF.SQL.Clear;
Qr_C400_ECF.SQL.Add('select CFCAIXA AS COD_CX,CFSERIE AS ECF_FAB,CFMODDOC AS COD_MOD,'
                   +' DECODE(CFMODELO,0,'+chr(39)+'BEMATECH'+chr(39)+','
                    +chr(39)+'DARUMA'+chr(39)+') AS ECF_MOD from CADMI01,CADECF '
                    +' where CFCAIXA=CMCODIMP '
                    +' and CMCODEMP=0'+IntToStr(codemp));

if trim(MDT1.Text)<>'/  /' then
   Qr_C400_ECF.SQL.Add(' and CMDATA>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_C400_ECF.SQL.Add(' and CMDATA<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));

Qr_C400_ECF.SQL.Add(' GROUP BY CFCAIXA,CFSERIE,CFMODDOC,DECODE(CFMODELO,0,'+chr(39)+'BEMATECH'+chr(39)+','+chr(39)+'DARUMA'+chr(39)+')');
try
   Qr_C400_ECF.Open;
except
   Qr_C400_ECF.SQL.savetofile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrc400',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;
if not Qr_C400_ECF.IsEmpty then
   begin
   // nivel hierárquico 2
   While not Qr_C400_ECF.Eof do
      begin
      qC400:=qC400+1;

      mQtdRegC:=mQtdRegC+1;
      mlinha:='|'+'C400'; //01
      mlinha:=mlinha+'|'+Qr_C400_ECFCOD_MOD.AsString; //02
      mlinha:=mlinha+'|'+Qr_C400_ECFECF_MOD.AsString; //03
      mlinha:=mlinha+'|'+Qr_C400_ECFECF_FAB.AsString; //04
      mlinha:=mlinha+'|'+Qr_C400_ECFCOD_CX.AsString;  //05
      mlinha:=mlinha+'|';
      mContlin:=mContlin+1;
      WriteLn(f,mLinha);
      Qr_C405_ReducaoZ.Close;
      Qr_C405_ReducaoZ.SQL.Clear;
      Qr_C405_ReducaoZ.SQL.Add('Select CFSERIE,CFMODDOC,CMDATA as DT_DOC, DECODE(CMCRO,0,ROWNUM,CMCRO) AS CRO '
                              +', CMCOO_FINAL as NUM_COO_FIN, '
                              +'DECODE(CMVDABACUM,NULL,CMVDABRUT,0,CMVDABRUT,CMVDABACUM) as GT_FIN'
                              +'      ,CMVDABRUT as VL_BRT, '
                              +'      CMCODIMP, '
                              +'      CMCOO, '
                              +'      CMCONRED,'
                              +'      CMVDALIQ,CMCUPCAN, '
                              +'      CMACRECUP,CMDESCUP, '
                              +'      CMISENTAS,CMNAOINC, '
                              +'          CMSUBTRI,CMISSCUP '
                              +'      ,CMCONRED as CRZ '
                              +'      from CADECF,CADMI01 '
                              +'                       where  CMCODEMP='+IntToStr(codemp)
                              +' and CFCODEMP=CMCODEMP and CFCAIXA=CMCODIMP '
                              +' and CMCODIMP=:CODIMP ');
      Qr_C405_ReducaoZ.ParamByName('CODIMP').Value :=Qr_C400_ECFCOD_CX.AsInteger;
      if trim(mdt1.Text)<>'/  /' then
         Qr_C405_ReducaoZ.SQL.add(' and CMDATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
      if trim(mdt2.Text)<>'/  /' then
         Qr_C405_ReducaoZ.SQL.add(' and CMDATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
      try
         Qr_C405_ReducaoZ.Open;
      except
         Qr_C405_ReducaoZ.sql.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Abrit Qrc400',mtError,[mbOk],0);
         closefile(f);
         exit;
         end;


      // nivel hierárquico 3

      While not Qr_C405_ReducaoZ.Eof do
         begin
          mtotc420:=0;

         qC405:=qC405+1;
         mQtdRegC:=mQtdRegC+1;
         mlinha:='|'+'C405'; //01
         mlinha:=mlinha+'|'+FormatDateTime('ddmmyyyy',Qr_C405_ReducaoZDT_DOC.AsDateTime); //02
         mlinha:=mlinha+'|'+FormatFloat('000', Qr_C405_ReducaoZCRO.AsInteger); //03
         mlinha:=mlinha+'|'+FormatFloat('000000', Qr_C405_ReducaoZCRZ.AsInteger); //04
         mlinha:=mlinha+'|'+FormatFloat('000000', Qr_C405_ReducaoZNUM_COO_FIN.AsInteger); //05
         mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZGT_FIN.AsFloat); // 06
         mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZVL_BRT.AsFloat) // 07
         +'|';
         mContlin:=mContlin+1;

         WriteLn(f,mLinha);
         if Qr_C405_ReducaoZCMCUPCAN.AsFloat>0 then
            begin
            mSitAliq:='Canc-T';
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMCUPCAN.AsFloat;
            mem_totc420xc490.Post;


            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'Can-T'; //02
//            mlinha:=mlinha+'|'+'CANC'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMCUPCAN.AsFloat); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
//            mTotCupCan:=Qr_C405_ReducaoZCMCUPCAN.AsFloat;
            mtotc420:=mtotc420+Qr_C405_ReducaoZCMCUPCAN.AsFloat;

            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;

            WriteLn(f,mLinha);
            end;

         if Qr_C405_ReducaoZCMACRECUP.AsFloat>0 then
            begin
            mSitAliq:='AT';
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitaliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;

            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMACRECUP.AsFloat;
            mem_totc420xc490.Post;

            mtotc420:=mtotc420-Qr_C405_ReducaoZCMACRECUP.AsFloat;

            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'AT'; //02
//            mlinha:=mlinha+'|'+'ACRES'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMACRECUP.AsFloat); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
//            mTotCupAcre:=Qr_C405_ReducaoZCMACRECUP.AsFloat;
            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;
            WriteLn(f,mLinha);
            end;


{
// desconto cupom por totalizador


            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

            Qr_C420_Desconto.Close;
            Qr_C420_Desconto.SQL.Clear;
            Qr_C420_Desconto.SQL.Add('Select DECODE(P2ALIQ,0,P2ALIQNR,P2ALIQ) AS COD_TOT_PAR '
                                 +'      ,sum(P2TOTDES) AS VLR_ACUM_TOT '
                                 +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' NSCODEMP=0'+IntToStr(codemp)
                                +' and NSNUMCUP>0'
                                +' and NSDATCUP>=:DATAINI and NSDATCUP<=:DATAFIN '
                                +' and NSCODECF=:CODECF ');

            Qr_C420_Desconto.ParamByName('CODECF').Value:=Qr_C405_ReducaoZCMCODIMP.AsInteger;
            Qr_C420_Desconto.ParamByName('DATAINI').Value  :=Qr_C405_ReducaoZDT_DOC.AsDateTime;
            Qr_C420_Desconto.ParamByName('DATAFIN').Value  :=Qr_C405_ReducaoZDT_DOC.AsDateTime;
            Qr_C420_Desconto.SQL.Add(' Group by DECODE(P2ALIQ,0,P2ALIQNR,P2ALIQ)');
            try
               Qr_C420_Desconto.Open;
            except
               Qr_C420_Desconto.SQL.Add('c:\sql.txt');
               MessageDlg('Erro ao Abrit Qr0470',mtError,[mbOk],0);
               exit;
               end;
// terminou


         mTotDesc_Trib:=0;
         While not Qr_C420_Desconto.Eof do
            begin
            If Qr_C420_DescontoCOD_TOT_PAR.AsFloat=0 then
               begin
               Qr_C420_Desconto.Next;
               Continue;
               end;

            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'DT'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C420_DescontoVLR_ACUM_TOT.AsFloat); // 03
//            mlinha:=mlinha+'|T'+Formatfloat('0000', Qr_C420_DescontoCOD_TOT_PAR.AsFloat*100); //04
//            mlinha:=mlinha+'|'; //04

//            mlinha:=mlinha+'|'+FormatFloat('00', Qr_C420_Descontonr_tot.Value)+'T'+Formatfloat('0000', Qr_C420_DescontoCOD_TOT_PAR.AsFloat*100) ; // 04  NR_TOT
//            mlinha:=mlinha+'|'+FormatFloat('00', Qr_C420_Descontonr_tot.Value); // 04  NR_TOT


            mlinha:=mlinha+'|'+Formatfloat('00', Qr_C420_Descontonr_tot.AsFloat)
                          +'T'+Formatfloat('0000', Qr_C420_DescontoCOD_TOT_PAR.AsFloat*100); // 02  COD_TOTPARC

            mlinha:=mlinha+'|'+Qr_C420_Descontodescr_nr_tot.AsString  // 05  DESCR_NR_TOT
            +'|';
//            mTotCupDes:=Qr_C405_ReducaoZCMDESCUP.AsFloat;
            qC420:=qC420+1;
            mTotDesc_Trib:=mTotDesc_Trib+Qr_C420_DescontoVLR_ACUM_TOT.AsFloat;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;

            WriteLn(f,mLinha);
            Qr_C420_Desconto.Next;
            end;
}

         if (Qr_C405_ReducaoZCMDESCUP.AsFloat-mTotDesc_Trib)>0 then
            begin
            mSitAliq:='DT';

            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMDESCUP.AsFloat-mTotDesc_Trib;
            mem_totc420xc490.Post;

            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'DT'; //02
//            mlinha:=mlinha+'|'+'DESC'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMDESCUP.AsFloat-mTotDesc_Trib); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
            mtotc420:=mtotc420+Qr_C405_ReducaoZCMDESCUP.AsFloat-mTotDesc_Trib;

//            mTotCupDes:=Qr_C405_ReducaoZCMDESCUP.AsFloat;
            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;

            WriteLn(f,mLinha);
            end;


         if Qr_C405_ReducaoZCMSUBTRI.AsFloat>0 then
            begin
            msitAliq:='F1';
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMSUBTRI.AsFloat;
            mem_totc420xc490.Post;

            mtotc420:=mtotc420+Qr_C405_ReducaoZCMSUBTRI.AsFloat;

            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'F1'; //02
//            mlinha:=mlinha+'|'+'DESC'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMSUBTRI.AsFloat); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
//            mTotCupSubTrib:=Qr_C405_ReducaoZCMSUBTRI.AsFloat;
            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;

            WriteLn(f,mLinha);
            end;

         if Qr_C405_ReducaoZCMISENTAS.AsFloat>0 then
            begin
            msitAliq:='I1';
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMISENTAS.AsFloat;
            mem_totc420xc490.Post;

            mtotc420:=mtotc420+Qr_C405_ReducaoZCMISENTAS.AsFloat;
            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'I1'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMISENTAS.AsFloat); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;
            WriteLn(f,mLinha);
            end;


         if Qr_C405_ReducaoZCMNAOINC.AsFloat>0 then
            begin
            msitAliq:='I1';
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C405_ReducaoZCMNAOINC.AsFloat;
            mem_totc420xc490.Post;

            mtotc420:=mtotc420+Qr_C405_ReducaoZCMNAOINC.AsFloat;
            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+'I1'; //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C405_ReducaoZCMNAOINC.AsFloat); // 03
            mlinha:=mlinha+'|'; // 04  NR_TOT
            mlinha:=mlinha+'|' // 05  DESCR_NR_TOT
            +'|';
            qC420:=qC420+1;
            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;
            WriteLn(f,mLinha);
            end;



         Qr_C420_TotParcRedZ.Close;
         Qr_C420_TotParcRedZ.SQL.Clear;
         Qr_C420_TotParcRedZ.SQL.add('Select CM2ALIQ AS COD_TOT_PAR '
                                    +'      ,sum(CM2VALOR) AS VLR_ACUM_TOT '
                                    +'      from CADMI02 where CM2CODIMP=:CODIMP'
                                    +' and CM2DATA>=:DATAINI AND CM2DATA<=:DATAFIN and CM2CODEMP=:CODEMP '
                                    +'      GROUP BY CM2ALIQ');
         Qr_C420_TotParcRedZ.ParamByName('CODIMP').Value:=Qr_C405_ReducaoZCMCODIMP.AsInteger;
         Qr_C420_TotParcRedZ.ParamByName('DATAINI').Value  :=Qr_C405_ReducaoZDT_DOC.AsDateTime;
         Qr_C420_TotParcRedZ.ParamByName('DATAFIN').Value  :=Qr_C405_ReducaoZDT_DOC.AsDateTime;
         Qr_C420_TotParcRedZ.ParamByName('CODEMP').Value:=codemp;
         try
            Qr_C420_TotParcRedZ.Open;
         except
            Qr_C420_TotParcRedZ.SQL.savetofile('c:\sql.txt');
            MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
            closefile(f);
            exit;
            end;
        // nivel hierárquico 4
         While not Qr_C420_TotParcRedZ.Eof do
            begin
            if Qr_C420_TotParcRedZVLR_ACUM_TOT.AsFloat=0 then
               begin
               Qr_C420_TotParcRedZ.Next;
               Continue;
               end;

            msitAliq:='T'+Formatfloat('0000', Qr_C420_TotParcRedZCOD_TOT_PAR.AsFloat*100);
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C420_VLR_ACUM_TOT.Value:=mem_totc420xc490C420_VLR_ACUM_TOT.Value+Qr_C420_TotParcRedZVLR_ACUM_TOT.AsFloat;
            mem_totc420xc490.Post;


            mlinha:='|'+'C420'; //01
            mlinha:=mlinha+'|'+Formatfloat('00', Qr_C420_TotParcRedZnr_tot.AsFloat)
                          +'T'+Formatfloat('0000', Qr_C420_TotParcRedZCOD_TOT_PAR.AsFloat*100); // 02  COD_TOTPARC
//            '|T'+Formatfloat('0000', Qr_C420_TotParcRedZCOD_TOT_PAR.AsFloat*100); //02
            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C420_TotParcRedZVLR_ACUM_TOT.AsFloat); // 03
//            mlinha:=mlinha+'|'+FormatFloat('##0.00',Qr_C420_TotParcRedZVLR_ACUM_TOT.AsFloat+mTotCupCan+mTotCupDes+mTotCupAcre+mTotCupSubTrib); // 03
            mlinha:=mlinha+'|'+Formatfloat('00', Qr_C420_TotParcRedZnr_tot.AsFloat); // 04  NR_TOT
            mlinha:=mlinha+'|'+Qr_C420_TotParcRedZdescr_nr_tot.AsString // 05  DESCR_NR_TOT
            +'|';
            mtotc420:=mtotc420+Qr_C420_TotParcRedZVLR_ACUM_TOT.AsFloat;
            mContlin:=mContlin+1;
            WriteLn(f,mLinha);
            mQtdRegC:=mQtdRegC+1;
            qC420:=qC420+1;
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','P2CODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


            Qr_C425_ResItensDiario.Close;
            Qr_C425_ResItensDiario.SQL.Clear;
            Qr_C425_ResItensDiario.SQL.Add('Select P2CODPRO AS COD_ITEM,sum(P2QTD) AS QTD, '
                                          +'       max(PDUND) AS UNID, '
                                          +'       sum((P2PRECO*P2QTD)-P2TOTDES) AS VL_ITEM '
                                          +'       ,0 AS VL_PIS, 0 AS VL_COFINS '
                                          +'      from CADNS'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' NSCODEMP=0'+IntToStr(codemp)
                                +' and NSNUMCUP>0'
                                +' and NSDATCUP=:DTEMIS and NSCODECF=:CODECF '
                                +' GROUP BY P2CODPRO ');
            Qr_C425_ResItensDiario.ParamByName('DTEMIS').Value  :=Qr_C405_ReducaoZDT_DOC.AsDateTime;
            Qr_C425_ResItensDiario.ParamByName('CODECF').Value:=Qr_C405_ReducaoZCMCODIMP.AsInteger;

            try
               Qr_C425_ResItensDiario.Open;
            except
               Qr_C425_ResItensDiario.SQL.savetofile('c:\sql.txt');
               MessageDlg('Erro ao Abrit Qr425',mtError,[mbOk],0);
               closefile(f);
               exit;
               end;
           Qr_C425_ResItensDiario.SQL.savetofile('c:\sql.txt'); // tambem esta lendo

            // nivel hierárquico 5
{
            mtotc425:=0;

            While not Qr_C425_ResItensDiario.Eof do
               begin
               mlinha:='|'+'C425'; //01
               mLInha:=mlinha+'|'+FormatFloat('000000',Qr_C425_ResItensDiarioCOD_ITEM.Value);
               mLInha:=mlinha+'|'+FormatFloat('##0.000', Qr_C425_ResItensDiarioQTD.AsFloat);
               mLInha:=mlinha+'|'+Qr_C425_ResItensDiarioUNID.AsString;
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C425_ResItensDiarioVL_ITEM.AsFloat);
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C425_ResItensDiarioVL_PIS.AsFloat);
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C425_ResItensDiarioVL_COFINS.AsFloat);
               mLInha:=mlinha+'|';
               mQtdRegC:=mQtdRegC+1;
               qC425:=qC425+1;
               mContlin:=mContlin+1;

               Writeln(f,mlinha);
               Qr_C425_ResItensDiario.Next;
               end;
}
            Qr_C420_TotParcRedZ.Next;
            end;

         // nivel hierárquico 4

         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

         la_instrucao:=la_instrucao+' and ';
         fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');

         Qr_C460_Cupom.Close;
         Qr_C460_Cupom.SQL.Clear;
         Qr_C460_Cupom.SQL.Add('Select NSMODECF AS COD_MOD, '
                              +' CASE WHEN '
                              +' NSSITCUP=9 THEN '+chr(39)+'02'+chr(39)
                              +' ELSE '+chr(39)+'00'+chr(39)
                              +' END AS COD_SIT '
                              +' ,NSNUMCUP AS NUM_DOC '
                              +' ,NSDATCUP AS DT_DOC '
                              +' ,sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_DOC '
                              +' ,0 AS VL_PIS '
                              +' ,0 AS VL_COFINS '
                              +' ,DECODE(MAX(CCNPJ),0,MAX(CCPF),MAX(CCNPJ)) AS CPF_CNPJ  '
                              +' ,DECODE(MAX(CCNPJ),0,1,0) AS TIPODOC '
                              +' ,'+chr(39)+' '+chr(39)+' AS NOM_ADQ '
                              +' ,max(NSLOTSEQ_CP) AS  NSLOTSEQ_CP '
                              +' ,max(NSCHAVEP) as NSCHAVEP '
                              +' ,max(NSORDEMP) as NSORDEMP '
                              +' ,max(NSCODEMP) as  NSCODEMP '
                              +' from CADNS'+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                              +' NSCODEMP=0'+IntToStr(codemp));
         Qr_C460_Cupom.SQL.Add(' and NSCODECF=0'+Qr_C400_ECFCOD_CX.AsString);
         Qr_C460_Cupom.SQL.Add(' and NSNUMCUP>0');
         Qr_C460_Cupom.SQL.add(' and NSDATCUP='+chr(39)+FormatDateTime(fdt, Qr_C405_ReducaoZDT_DOC.AsDateTime)+chr(39));

         Qr_C460_Cupom.SQL.add(' GROUP BY NSMODECF, '
                              +' CASE WHEN '
                              +' NSSITCUP=9 THEN '+chr(39)+'02'+chr(39)
                              +' ELSE '+chr(39)+'00'+chr(39)
                              +' END  '
                              +' ,NSNUMCUP '
                              +' ,NSDATCUP ');

         try
            Qr_C460_Cupom.Open;
         except
            Qr_C460_Cupom.SQL.savetofile('c:\sql.txt');
            MessageDlg('Erro ao Abrit Qr0460',mtError,[mbOk],0);
            closefile(f);
            exit;
            end;

         While not Qr_C460_Cupom.Eof do
            begin

            mlinha:='|'+'C460'; //01
            if trim(Qr_C460_CupomCOD_MOD.AsString)='' then
               mLInha:=mlinha+'|2D'
            else
               mLInha:=mlinha+'|'+Qr_C460_CupomCOD_MOD.AsString;
            mLInha:=mlinha+'|'+Qr_C460_CupomCOD_SIT.AsString;
            mLInha:=mlinha+'|'+FormatFloat('000000', Qr_C460_CupomNUM_DOC.AsFloat);
            if Qr_C460_CupomCOD_SIT.AsInteger=2 then
               begin
               mLInha:=mlinha+'|'; //+FormatDatetime('ddmmyyyy',Qr_C460_CupomDT_DOC.AsDateTime); //02
               mLInha:=mlinha+'|'; //+FormatFloat('##0.00', Qr_C460_CupomVL_DOC.AsFloat);
               mLInha:=mlinha+'|'; //+FormatFloat('##0.00', Qr_C460_CupomVL_PIS.AsFloat);
               mLInha:=mlinha+'|'; //+FormatFloat('##0.00', Qr_C460_CupomVL_COFINS.AsFloat);
               mLInha:=mlinha+'|'; //+FormatFloat('00000000000000',Qr_C460_CupomCPF_CNPJ.AsFloat);
               mLInha:=mlinha+'|'; //+Qr_C460_CupomNOM_ADQ.AsString;
               mLInha:=mlinha+'|';
               end
            else
               begin
               mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_C460_CupomDT_DOC.AsDateTime); //02
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C460_CupomVL_DOC.AsFloat);
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C460_CupomVL_PIS.AsFloat);
               mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C460_CupomVL_COFINS.AsFloat);

               if Qr_C460_CupomCPF_CNPJ.AsFloat=11111111111 then
                  mLInha:=mlinha+'|'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.AsFloat)
               else if Qr_C460_CupomCPF_CNPJ.AsFloat=0 then
                  mLInha:=mlinha+'|'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.AsFloat)
               else
                  begin
                  if Qr_C460_CupomTIPODOC.AsInteger=1 THEN
                     mLInha:=mlinha+'|'+FormatFloat('00000000000',Qr_C460_CupomCPF_CNPJ.AsFloat)
                  else
                     mLInha:=mlinha+'|'+FormatFloat('00000000000000',Qr_C460_CupomCPF_CNPJ.AsFloat);
                  end;

               mLInha:=mlinha+'|'+Qr_C460_CupomNOM_ADQ.AsString;
               mLInha:=mlinha+'|';
               end;
            qC460:=qC460+1;

            mQtdRegC:=mQtdRegC+1;
            mContlin:=mContlin+1;

            Writeln(f,mlinha);
            // nivel hierárquico 5

            if Qr_C460_CupomCOD_SIT.AsInteger=2 then
               begin
               Qr_C460_Cupom.Next;
               Continue;
               end;


            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


            Qr_C470_Itens.Close;
            Qr_C470_Itens.SQL.Clear;
            Qr_C470_Itens.SQL.Add('Select P2CODPRO AS COD_ITEM '
                                 +'      ,P2QTD AS QTD '
                                 +'      ,0 AS QTD_CANC '
                                 +'      ,PDUND AS UNID '
                                 +'      ,((P2PRECO*P2QTD)-P2TOTDES) AS VL_ITEM '
                                 +'      ,P2SIT AS CST_ICMS '
                                 +', CASE WHEN P2CFO>5999 AND P2CFO<7000  THEN '
                                 +' (DECODE(P2CFO,6404,5403,P2CFO-1000)) '
                                 +'  ELSE P2CFO END AS  CFOP '
                                 +'      ,P2ALIQ AS ALIQ_ICMS '
                                 +'      ,P2VALPIS as VL_PIS '
                                 +'      ,P2COFINS as VL_COFINS '
                                 +'      ,P2ITEM '
                                 +' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                 +' P2CODEMP=0'+Qr_C460_CupomNSORDEMP.AsString
                                 +' and P2CHAVE=0'+Qr_C460_CupomNSCHAVEP.AsString
                                 +' and P2ORDEM=0'+Qr_C460_CupomNSORDEMP.AsString
                                 +' and P2LOTSEQ=0'+Qr_C460_CupomNSLOTSEQ_CP.AsString
                                 +' order by P2ITEM ');
            try
               Qr_C470_Itens.Open;
            except
               Qr_C470_Itens.SQL.Add('c:\sql.txt');
               MessageDlg('Erro ao Abrit Qr0470',mtError,[mbOk],0);
               closefile(f);
               exit;
               end;

            mtotc470_vl_item:=0;
            mtotc470_vl_pis:=0;
            mtotc470_vl_cofins:=0;

            While not Qr_C470_Itens.Eof do
               begin
               qC470:=qC470+1;
               mQtdRegC:=mQtdRegC+1;
               mlinha:='|'+'C470'; //01
               mLInha:=mlinha+'|'+Qr_C470_ItensCOD_ITEM.AsString;
               mLInha:=mlinha+'|'+Formatfloat('#00.000', Qr_C470_ItensQTD.AsFloat);
               mLInha:=mlinha+'|'+Formatfloat('#00.000', Qr_C470_ItensQTD_CANC.AsFloat);


               if length(trim(Qr_C470_ItensUNID.AsString))<2 then
                  mLInha:=mlinha+'|UND'
               else
                  mLInha:=mlinha+'|'+Qr_C470_ItensUNID.AsString;
               mLInha:=mlinha+'|'+Formatfloat('#00.00', Qr_C470_ItensVL_ITEM.AsFloat);
               mLInha:=mlinha+'|'+Qr_C470_ItensCST_ICMS.AsString;
               if (Qr_C470_ItensCFOP.Asfloat>5999) then
                  begin
                  mLinha:=mLinha+'|5'+ copy(FormatFloat('0000', Qr_C470_ItensCFOP.AsFloat),2,3);
                  mCodCFOP:='5'+ copy(FormatFloat('0000', Qr_C470_ItensCFOP.AsFloat),2,3);
                  end
               else if (Qr_C470_ItensCFOP.AsFloat=0)  then
                  begin
                  mLInha:=mlinha+'|5102';
                  mCodCFOP:='5102';
                  end
               else
                  begin
                  mLInha:=mlinha+'|'+FormatFloat('0000', Qr_C470_ItensCFOP.AsFloat);
                  mcodCFOP:=FormatFloat('0000', Qr_C470_ItensCFOP.AsFloat);
                  end;
{
              if valint(mcodcfop)=5610 then
                 ShowMessage('Achou: '+Qr_C460_CupomNSORDEMP.AsString
                                     +'/'+Qr_C460_CupomNSCHAVEP.AsString
                                     +'/'+Qr_C460_CupomNSORDEMP.AsString
                                     +'/'+Qr_C460_CupomNSLOTSEQ_CP.AsString);
}
               mLInha:=mlinha+'|'+Formatfloat('00.00', Qr_C470_ItensALIQ_ICMS.AsFloat);
               mLInha:=mlinha+'|'+Formatfloat('00.00', Qr_C470_ItensVL_PIS.AsFloat);
               mLInha:=mlinha+'|'+Formatfloat('00.00', Qr_C470_ItensVL_COFINS.AsFloat);
               mLInha:=mlinha+'|';
               mContlin:=mContlin+1;
               Writeln(f,mLinha);

               mtotc470_vl_item:=mtotc470_vl_item+Qr_C470_ItensVL_ITEM.AsFloat;
               mtotc470_vl_pis:=mtotc470_vl_pis+Qr_C470_ItensVL_PIS.AsFloat;
               mtotc470_vl_cofins:=mtotc470_vl_cofins+Qr_C470_ItensVL_COFINS.AsFloat;

               Qr_C470_Itens.Next;
               end;
            if Arredonda(Qr_C460_CupomVL_DOC.AsFloat,2)<>Arredonda(mtotc470_vl_item,2) then
               begin
               memo_erros.Lines.Add('REGISTRO C470 Soma Valor Itens: '+FormatFloat(mcasas, mtotc470_vl_item)+' Valor no Documento C460: '
               +FormatFloat(mcasas, Qr_C460_CupomVL_DOC.AsFloat));
               end;

            if Arredonda(Qr_C460_CupomVL_PIS.AsFloat,2)<>Arredonda(mtotc470_vl_pis,2) then
               begin
               memo_erros.Lines.Add('REGISTRO C470 Soma Valor Pis : '+FormatFloat(mcasas, mtotc470_vl_pis)+' Valor no Documento C460: '
               +FormatFloat(mcasas, Qr_C460_CupomVL_PIS.AsFloat));
               end;
            if Arredonda(Qr_C460_CupomVL_COFINS.AsFloat,2)<>Arredonda(mtotc470_vl_cofins,2) then
               begin
               memo_erros.Lines.Add('REGISTRO C470 Soma Valor Cofins : '+FormatFloat(mcasas, mtotc470_vl_cofins)+' Valor no Documento C460: '
               +FormatFloat(mcasas, Qr_C460_CupomVL_COFINS.AsFloat));
               end;

            mtotc470_vl_item:=0;
            mtotc470_vl_pis:=0;
            mtotc470_vl_cofins:=0;
            Qr_C460_Cupom.Next;
            end;
        la_tabelas  :='';
        la_Join     :='';
        la_instrucao:='';
        fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

        Qr_C490_CstCfopAliq.Close;
        Qr_C490_CstCfopAliq.SQL.Clear;
        Qr_C490_CstCfopAliq.SQL.Add('Select P2SIT AS CST_ICMS '
                                   +', CASE WHEN P2CFO>5999 AND P2CFO<7000 AND NSNUMCUP>0 THEN '
                                   +' (DECODE(P2CFO,6404,5403,P2CFO-1000)) '
                                   +'  ELSE P2CFO END AS CFOP '
                                   +' ,DECODE(P2ALIQ,0,P2ALIQNR,P2ALIQ) AS ALIQ_ICMS '
                                   +' ,sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_OPR '
//                                   +' ,sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_BC_ICMS '
                                   +' ,SUM(P2BASEN+DECODE(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                                   +' ,SUM(P2ICMSN+DECODE(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                                   +' ,'+chr(39)+' '+chr(39)+' AS COD_OBS '
                                   +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                   +'       '+la_Join
                                   +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                   +' NSCODEMP=0'+Qr_C460_CupomNSCODEMP.AsString
                                   +' and NSNUMCUP>0'
                                   +' AND NSDATCUP=:DTEMIS '
                                   +' and NSSITCUP<>9 '
                                   +' GROUP BY P2SIT '
                                   +', CASE WHEN P2CFO>5999 AND P2CFO<7000 AND NSNUMCUP>0 THEN '
                                   +' (DECODE(P2CFO,6404,5403,P2CFO-1000)) '
                                   +'  ELSE P2CFO END '
                                   +' ,DECODE(P2ALIQ,0,P2ALIQNR,P2ALIQ) ');
         Qr_C490_CstCfopAliq.ParamByName('DTEMIS').Value:=Qr_C460_CupomDT_DOC.AsDateTime;
         try
            Qr_C490_CstCfopAliq.Open;
         except
           Qr_c490_Cstcfopaliq.SQL.SaveToFile('c:\sql.txt');
           MessageDlg('Erro ao Abrit Qrc490',mtError,[mbOk],0);
           closefile(f);
           exit;
           end;

           Qr_c490_Cstcfopaliq.SQL.SaveToFile('c:\sql.txt');

// nivel hierarquico 4


         While not Qr_C490_CstCfopAliq.Eof do
            begin
            qC490:=qC490+1;
            if Qr_C490_CstCfopAliqALIQ_ICMS.AsFloat=0 then
               begin
               if Qr_C490_CstCfopAliqCST_ICMS.Value[2]='4' then
                  msitAliq:='I1'
               else
                  msitAliq:='F1';
               end
            else
               msitAliq:='T'+Formatfloat('0000', Qr_C490_CstCfopAliqALIQ_ICMS.AsFloat*100);
            if mem_totc420xc490.Locate('DT_DOC;SITALIQ',VarArrayOf([Qr_C405_ReducaoZDT_DOC.AsDateTime,msitAliq]),[]) then
               mem_totc420xc490.Edit
            else
               begin
               mem_totc420xc490.Append;
               mem_totc420xc490DT_DOC.Value:=Qr_C405_ReducaoZDT_DOC.AsDateTime;
               mem_totc420xc490SITALIQ.Value:=msitAliq;
               mem_totc420xc490C420_VLR_ACUM_TOT.Value:=0;
               mem_totc420xc490C490_VLR_OPER.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_BC_ICMS.Value:=0;
               mem_totc420xc490C490_ICMS.Value:=0;
               end;
            mem_totc420xc490C490_VLR_OPER.Value:=mem_totc420xc490C490_VLR_OPER.Value+Qr_C490_CstCfopAliqVL_OPR.AsFloat;
            mem_totc420xc490C490_BC_ICMS.Value :=mem_totc420xc490C490_BC_ICMS.Value+Qr_C490_CstCfopAliqVL_BC_ICMS.AsFloat;
            mem_totc420xc490C490_ICMS.Value    :=mem_totc420xc490C490_ICMS.Value+Qr_C490_CstCfopAliqVL_ICMS.AsFloat;
            mem_totc420xc490.Post;


            mQtdRegC:=mQtdRegC+1;
            mlinha:='|'+'C490'; //01
            mLInha:=mlinha+'|'+Qr_C490_CstCfopAliqCST_ICMS.AsString;


            if (Qr_C490_CstCfopAliqCFOP.Asfloat>5999) then
                  mLinha:=mLinha+'|5'+ copy(FormatFloat('0000', Qr_C490_CstCfopAliqCFOP.AsFloat),2,3)
               else if Qr_C490_CstCfopAliqCFOP.AsFloat=0 then
               mLInha:=mlinha+'|5102'
            else
               mLInha:=mlinha+'|'+FormatFloat('0000', Qr_C490_CstCfopAliqCFOP.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C490_CstCfopAliqALIQ_ICMS.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C490_CstCfopAliqVL_OPR.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C490_CstCfopAliqVL_BC_ICMS.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C490_CstCfopAliqVL_ICMS.AsFloat);
            mLInha:=mlinha+'|'+Qr_C490_CstCfopAliqCOD_OBS.AsString;
            mLinha:=Mlinha+'|';
            mContlin:=mContlin+1;
            Writeln(f,mlinha);


        if ((Qr_C490_CstCfopAliqCFOP.AsString='5605')
            or (Copy(Qr_C490_CstCfopAliqCFOP.AsString,1,1)='1')
            or (Copy(Qr_C490_CstCfopAliqCFOP.AsString,1,1)='2')
            or (Copy(Qr_C490_CstCfopAliqCFOP.AsString,1,1)='3'))
            and (Qr_C490_CstCfopAliqCFOP.AsString<>'1605') then
          begin
//          mvalicmsent:=mvalicmsent+Qr_C190_RegAnalVL_ICMS.AsFloat;
          end
        else
          begin
          E111_icms:=E111_icms+Qr_C490_CstCfopAliqVL_ICMS.AsFloat;
          end;




            Qr_C490_CstCfopAliq.Next;
            end;

         if Arredonda(mtotc420,2)<>Arredonda(Qr_C405_ReducaoZVL_BRT.AsFloat,2) then
            begin
            memo_erros.Lines.Add('REGISTRO C420 Total Venda Bruta: '+FormatFloat(mcasas, mtotc420)+' Valor no Registros: C405: '
            +FormatFloat(mcasas, Qr_C405_ReducaoZVL_BRT.AsFloat)+' Data: '+FormatDatetime(fdt2, Qr_C405_ReducaoZDT_DOC.AsDateTime));
            end;
          mtotc420:=0;


         Qr_C405_ReducaoZ.Next;
         end;
// nivel hierarquico 2
      if DM1.Tb_EmpUF.AsString='BA' then // registro valido apenas para o estado da bahia
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
         la_instrucao:=la_instrucao+' and ';

         fInnerJoin(1,'CADPRO','P2CODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

         Qr_C495_ResMesItemBA.Close;
         Qr_C495_ResMesItemBA.SQL.Clear;
         Qr_C495_ResMesItemBA.SQL.Add('Select P2ALIQ AS ALIQ_ICMS '
                                    +',P2CODPRO AS COD_ITEM '
                                    +',sum(P2QTD) as QTD '
                                    +',0 as QTD_CANC '
                                    +',PDUND AS UNID '
                                    +',sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_ITEM '
                                    +',0 AS VL_DESC '
                                    +',0 AS VL_CANC '
                                    +',0 AS VL_ACMO '
                                    +',SUM(P2BASEN+DECODE(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                                    +',SUM(P2ICMSN+DECODE(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                                    +',sum(DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'4'+chr(39)+',((P2QTD*P2PRECO)-P2TOTDES),0)) as VL_ISEN '
                                    +',sum( DECODE((P2ICMSN+P2ICMSNR),0,((P2QTD*P2PRECO)-P2TOTDES))) AS VL_NT '
                                    +',sum(P2ICMSR) as VL_ICMS_ST '
                                    +'from CADNS'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                    +' NSCODECF=:CODECF ');
         Qr_C495_ResMesItemBA.SQL.Add(' and NSNUMCUP>0');

         if trim(mdt1.Text)<>'/  /' then
            Qr_C495_ResMesItemBA.SQL.add(' and NSDATCUP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
         if trim(mdt2.Text)<>'/  /' then
            Qr_C495_ResMesItemBA.SQL.add(' and NSDATCUP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
         Qr_C495_ResMesItemBA.ParamByName('CODECF').Value:=Qr_C400_ECFCOD_CX.AsInteger;
         Qr_C495_ResMesItemBA.SQL.Add(' GROUP BY P2ALIQ,P2CODPRO,PDUND ');
         try
            Qr_C495_ResMesItemBA.Open;
         except
            Qr_C495_ResMesItemBA.SQL.SaveToFile('c:\sql.txt');
            MessageDlg('Erro ao Abrit Qr0495',mtError,[mbOk],0);
            closefile(f);
            exit;

            end;
         While not Qr_C495_ResMesItemBA.Eof do
            begin
            qC495:=qC495+1;

            mQtdRegC:=mQtdRegC+1;
            mlinha:='|'+'C495'; //01
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAALIQ_ICMS.AsFloat);
            mLInha:=mlinha+'|'+Qr_C495_ResMesItemBACOD_ITEM.AsString;
            mLInha:=mlinha+'|'+FormatFloat('##0.000', Qr_C495_ResMesItemBAQTD.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.000', Qr_C495_ResMesItemBAQTD_CANC.AsFloat);
            if length(trim(Qr_C495_ResMesItemBAUNID.AsString))<2 then
               mLInha:=mlinha+'|UND'
            else
               mLInha:=mlinha+'|'+Qr_C495_ResMesItemBAUNID.AsString;
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_ITEM.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_DESC.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_CANC.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_ACMO.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_BC_ICMS.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_ICMS.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_ISEN.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_NT.AsFloat);
            mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C495_ResMesItemBAVL_ICMS_ST.AsFloat);
            mContlin:=mContlin+1;
            WriteLn(f,mlinha);
            Qr_C495_ResMesItemBA.Next;
            end;
         end;
      Qr_C400_ECF.Next;
      end;

   end;

Qr_C500_Energia.Close;
Qr_C500_Energia.SQL.clear;
Qr_C500_Energia.SQL.add(' Select 0 IND_OPER ,1 AS IND_EMIT,'+QuotedStr('F')+'||NECODFOR AS COD_PART '
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
                         +'  and NECODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_C500_Energia.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_C500_Energia.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
Qr_C500_Energia.SQL.Add(' and (NECFO=1252 OR NECFO=1253 or NECFO=2252 OR NECFO=2253  ) ');
//Qr_D100_ConhFrete.SQL.Add(' and (NECFO=1353 OR NECFO=2353 OR NECFO=1253 OR NECFO=1252 OR NECFO=2253 OR NECFO=2252 ) ');
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_C500_Energia.SQL.Add(' and NENUMERO '+mcinst2);

try
   Qr_C500_Energia.Open;
except
   Qr_C500_Energia.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrc500',mtError,[mbOk],0);
   closefile(f);

   exit;
   end;





qC500:=0;

While not Qr_C500_Energia.Eof do
   begin
   qC500:=qC500+1;

   mQtdRegC:=mQtdRegC+1;
   mlinha:='|'+'C500'; //01
   mlinha:=mlinha+'|'+Qr_C500_EnergiaIND_OPER.AsString;
   mlinha:=mlinha+'|'+Qr_C500_EnergiaIND_EMIT.AsString;
   mlinha:=mlinha+'|'+Qr_C500_EnergiaCOD_PART.AsString;
   mlinha:=mlinha+'|'+insere(Qr_C500_EnergiaCOD_MOD.AsString,'0',2);
   mlinha:=mlinha+'|'+Qr_C500_EnergiaCOD_SIT.AsString;
   mlinha:=mlinha+'|'+Qr_C500_EnergiaSER.AsString;
   mlinha:=mlinha+'|'+Qr_C500_EnergiaSUB.AsString;
   if (valint( Qr_C500_EnergiaCOD_CONS.asstring)<1) or (valint( Qr_C500_EnergiaCOD_CONS.asstring)>8) then
      mlinha:=mlinha+'|'+FormatFloat('00', 1)
   else
      mlinha:=mlinha+'|'+FormatFloat('00', Qr_C500_EnergiaCOD_CONS.AsInteger);
   mlinha:=mlinha+'|'+FormatFloat('000000', Qr_C500_EnergiaNUM_DOC.AsInteger);
   mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_C500_EnergiaDT_DOC.AsDateTime);
   if Qr_C500_EnergiaDT_E_S.AsDateTime<Qr_C500_EnergiaDT_DOC.AsDateTime then
      mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_C500_EnergiaDT_DOC.AsDateTime)
   else
      mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_C500_EnergiaDT_E_S.AsDateTime);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_DOC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_DESC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_FORN.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_SERV_NT.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_TERC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_DA.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_BC_ICMS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_ICMS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_BC_ICMS_ST.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_ICMS_ST.AsFloat);
   mLInha:=mlinha+'|'+Qr_C500_EnergiaCOD_INF.AsString;
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_PIS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaVL_COFINS.AsFloat);
   mLInha:=mlinha+'|';
//   mLInha:=mlinha+'|'+Qr_C500_EnergiaTP_LIGACAO.AsString;
   mLInha:=mlinha+'|';
//   mLInha:=mlinha+'|'+FormatFloat('00', Qr_C500_EnergiaCOD_GRUPO_TENSAO.AsInteger);
   mLInha:=mlinha+'|';
   mContlin:=mContlin+1;
   WriteLn(f,mLInha);
   // nivel hierarquico 2
      qC590:=qC590+1;
      mQtdRegC:=mQtdRegC+1;
      mlinha:='|'+'C590'; //01
      mlinha:=mlinha+'|'+Qr_C500_EnergiaC590_CST_ICMS.asString;
      mLInha:=mlinha+'|'+FormatFloat('0000', Qr_C500_EnergiaC590_CFOP.AsInteger);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_ALIQ_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_OPR.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_BC_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_BC_ICMS_ST.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_ICMS_ST.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_C500_EnergiaC590_VL_RED_BC.AsFloat);
      mLInha:=mlinha+'|'+Qr_C500_EnergiaC590_COD_OBS.AsString;
      mLinha:=mLinha+'|';
      mContlin:=mContlin+1;
      Writeln(f,mlinha);

        if ((Qr_C500_EnergiaC590_CFOP.AsString='5605')
            or (Copy(Qr_C500_EnergiaC590_CFOP.AsString,1,1)='1')
            or (Copy(Qr_C500_EnergiaC590_CFOP.AsString,1,1)='2')
            or (Copy(Qr_C500_EnergiaC590_CFOP.AsString,1,1)='3'))
            and (Qr_C500_EnergiaC590_CFOP.AsString<>'1605') then
          begin
          mvalicmsent:=mvalicmsent+Qr_C500_EnergiaC590_VL_ICMS.AsFloat;
          end;


   Qr_C500_Energia.Next;
   end;



mQtdRegC:=mQtdRegC+1;
mContlin:=mContlin+1;

writeln(f,'|'+'C990'+'|'+inttostr(mQtdRegC)+'|');

qC990:=1;
Qr_D100_ConhFrete.Close;
Qr_D100_ConhFrete.SQL.Clear;
Qr_D100_ConhFrete.SQL.Add(' Select 0 IND_OPER '
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
                         +'  FROM CADNE where NECODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_D100_ConhFrete.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_D100_ConhFrete.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
Qr_D100_ConhFrete.SQL.add(' and NEMODELO IN ('+QuotedStr('07')+') ');
//Qr_D100_ConhFrete.SQL.Add(' and (NECFO=1353 OR NECFO=2353  ) ');
//Qr_D100_ConhFrete.SQL.Add(' and (NECFO=1353 OR NECFO=2353 OR NECFO=1253 OR NECFO=1252 OR NECFO=2253 OR NECFO=2252 ) ');
mcinst2:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_D100_ConhFrete.SQL.Add(' and NENUMERO '+mcinst2);

try
   Qr_D100_ConhFrete.Open;
except
   Qr_D100_ConhFrete.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrd400',mtError,[mbOk],0);
   closefile(f);

   exit;
   end;


Qr_D500_NF_Comun.Close;
Qr_D500_NF_Comun.SQL.Clear;
Qr_D500_NF_Comun.SQL.Add(' Select 0 IND_OPER  '
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
                         +'  FROM CADNE where NECODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_D500_NF_Comun.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_D500_NF_Comun.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
Qr_D500_NF_Comun.SQL.Add(' and (NECFO=1303 OR NECFO=2303) ');
try
   Qr_D500_NF_Comun.Open;
except
   Qr_D500_NF_Comun.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrd500',mtError,[mbOk],0);
   closefile(f);
   exit;
   end;

mContlin:=mContlin+1;

if (Qr_D100_ConhFrete.IsEmpty) and (Qr_D500_NF_Comun.IsEmpty)  then
   writeln(f,'|'+'D001'+'|'+'1'+'|')
else
   writeln(f,'|'+'D001'+'|'+'0'+'|');

// nivel hierarquico 2
mQtdRegD:=mQtdRegD+1;
While not Qr_D100_ConhFrete.Eof do
   begin
   qD100:=qD100+1;
   mQtdRegD:=mQtdRegD+1;
   mlinha:='|'+'D100'; //01
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteIND_OPER.AsString;
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteIND_EMIT.AsString;
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteCOD_PART.AsString;
   mlinha:=mlinha+'|'+'08';
//   mlinha:=mlinha+'|'+insere(Qr_D100_ConhFreteCOD_MOD.AsString,'0',2);
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteCOD_SIT.AsString;
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteSER.AsString;
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteSUB.AsString;
   mlinha:=mlinha+'|'+FormatFloat('000000', Qr_D100_ConhFreteNUM_DOC.AsFloat);
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteCHV_NFE.AsString;
   mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_D100_ConhFreteDT_DOC.AsDateTime);
   mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_D100_ConhFreteDT_A_P.AsDateTime);
   mlinha:=mlinha+'|'; // TP_CT-e
   mlinha:=mlinha+'|'+Qr_D100_ConhFreteCHV_CTE_RED.AsString;
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_DOC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_DESC.AsFloat);
   mLInha:=mlinha+'|'+Qr_D100_ConhFreteIND_FRT.AsString;
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_SERV.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_BC_ICMS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_ICMS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteVL_NT.AsFloat);
   mLInha:=mlinha+'|'+Qr_D100_ConhFreteCOD_INF.AsString;
   mLInha:=mlinha+'|'+Qr_D100_ConhFreteCOD_CTA.AsString;
   mLInha:=mlinha+'|';
   mContlin:=mContlin+1;
   WriteLn(f,mLInha);
// nivel hierarquico 3
      qD190:=qD190+1;
      mQtdRegD:=mQtdRegD+1;
      mlinha:='|'+'D190'; //01
      mLInha:=mlinha+'|'+Qr_D100_ConhFreteD190_CST_ICMS.AsString;
      mLInha:=mlinha+'|'+FormatFloat('0000', Qr_D100_ConhFreteD190_CFOP.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteD190_ALIQ_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteD190_VL_OPR.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteD190_VL_BC_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteD190_VL_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D100_ConhFreteD190_VL_RED_BC.AsFloat);
      mLInha:=mlinha+'|'+Qr_D100_ConhFreteD190_COD_OBS.AsString;
      mLInha:=mlinha+'|';
      mContlin:=mContlin+1;
      WriteLn(f,mLInha);

        if ((Qr_D100_ConhFreteD190_CFOP.AsString='5605')
            or (Copy(Qr_D100_ConhFreteD190_CFOP.AsString,1,1)='1')
            or (Copy(Qr_D100_ConhFreteD190_CFOP.AsString,1,1)='2')
            or (Copy(Qr_D100_ConhFreteD190_CFOP.AsString,1,1)='3'))
            and (Qr_D100_ConhFreteD190_CFOP.AsString<>'1605') then
          begin
          mvalicmsent:=mvalicmsent+Qr_D100_ConhFreteD190_VL_ICMS.AsFloat;
          end
       else
          begin
          E111_icms:=E111_icms+Qr_D100_ConhFreteD190_VL_ICMS.AsFloat;
          end;


   Qr_D100_ConhFrete.Next;
   end;

// nivel hierarquico 2



While not Qr_D500_NF_Comun.Eof do
   begin
   qD500:=qD500+1;
   mQtdRegD:=mQtdRegD+1;
   mlinha:='|'+'D500'; //01
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunIND_OPER.AsString;
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunIND_EMIT.AsString;
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunCOD_PART.AsString;
   mlinha:=mlinha+'|'+'22';
//   mlinha:=mlinha+'|'+Qr_D500_NF_ComunCOD_MOD.AsString;
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunCOD_SIT.AsString;
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunSER.AsString;
   mlinha:=mlinha+'|'+Qr_D500_NF_ComunSUB.AsString;
   mlinha:=mlinha+'|'+FormatFloat('000000', Qr_D500_NF_ComunNUM_DOC.AsFloat);
   mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_D500_NF_ComunDT_DOC.AsDateTime);
   mLInha:=mlinha+'|'+FormatDatetime('ddmmyyyy',Qr_D500_NF_ComunDT_A_P.AsDateTime);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_DOC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_DESC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_SERV.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_SERV_NT.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_TERC.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_DA.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_BC_ICMS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_ICMS.AsFloat);
   mLInha:=mlinha+'|'+Qr_D500_NF_ComunCOD_INF.AsString;
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_PIS.AsFloat);
   mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunVL_COFINS.AsFloat);
   mLInha:=mlinha+'|'+Qr_D500_NF_ComunCOD_CTA.AsString;
   mLInha:=mlinha+'|'+Qr_D500_NF_ComunTP_ASSINANTE.AsString;
   mLInha:=mlinha+'|';
   mContlin:=mContlin+1;
   WriteLn(f,mLInha);
   // nivel hierarquico 3
      qD590:=qD590+1;
      mQtdRegD:=mQtdRegD+1;
      mlinha:='|'+'D590'; //01
      mlinha:=mlinha+'|'+Qr_D500_NF_ComunD590_CST_ICMS.AsString;
      mLInha:=mlinha+'|'+FormatFloat('0000', Qr_D500_NF_ComunD590_CFOP.AsInteger);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_ALIQ_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_OPR.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_BC_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_ICMS.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_BC_ICMS_ST.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_ICMS_ST.AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Qr_D500_NF_ComunD590_VL_RED_BC.AsFloat);
      mLInha:=mlinha+'|'+Qr_D500_NF_ComunD590_COD_OBS.AsString;
      mLinha:=mLinha+'|';
      mContlin:=mContlin+1;
      Writeln(f,mlinha);

        if ((Qr_D500_NF_ComunD590_CFOP.AsString='5605')
            or (Copy(Qr_D500_NF_ComunD590_CFOP.AsString,1,1)='1')
            or (Copy(Qr_D500_NF_ComunD590_CFOP.AsString,1,1)='2')
            or (Copy(Qr_D500_NF_ComunD590_CFOP.AsString,1,1)='3'))
            and (Qr_D500_NF_ComunD590_CFOP.AsString<>'1605') then
          begin
          mvalicmsent:=mvalicmsent+Qr_D500_NF_ComunD590_VL_ICMS.AsFloat;
          end
       else
          begin
          E111_icms:=E111_icms+Qr_D500_NF_ComunVL_ICMS.AsFloat;
          end;


   Qr_D500_NF_Comun.Next;
   end;

qD001:=1;
mQtdRegD:=mQtdRegD+1;
qD990:=1;
mContlin:=mContlin+1;

Writeln(f,'|'+'D990'+'|'+IntToStr(mQtdRegD)+'|');

qD990:=1;
mQtdRegE:=1;
qE001:=1;
mContLin:=mContLin+1;
Writeln(f,'|'+'E001'+'|'+'0'+'|');


mQtdRegE:=mQtdRegE+1;

qE100:=1;
mContLin:=mContLin+1;
writeln(f,'|E100'+'|'+FormatDatetime('ddmmyyyy',StrToDate(MDT1.Text))+'|'+FormatDatetime('ddmmyyyy',StrToDate(MDT2.Text))+'|');





mVl_Tot_AJ_Creditos:=0;
mVl_Tot_AJ_DEBITOS :=0;

if not Tb_AjusE111.Active  then Tb_AjusE111.Open;
Tb_AjusE111.First;
while not Tb_AjusE111.eof do
   begin
   if Tb_AjusE111TIPO.Value = 'C' then
      mVl_Tot_AJ_Creditos:=mVl_Tot_AJ_Creditos + Tb_AjusE111VALORAJUST.Value
   else
      mVl_Tot_AJ_DEBITOS := mVl_Tot_AJ_DEBITOS + Tb_AjusE111VALORAJUST.Value;
   Tb_AjusE111.Next;
   end;



msaldoprox:=0;
if E111_icms-mvalicmsent<0 then
   msaldoprox:=mvalicmsent-E111_icms;
if E111_icms-mvalicmsent<0 then
   msddev:=0
else
   msddev:=E111_icms-mvalicmsent;
msddev:=(msddev+mVl_Tot_AJ_DEBITOS)-mVl_Tot_AJ_Creditos;
if msddev<0 then
   msddev:=0;
mvalajuste:=0;
mdedu:=0;
mQtdRegE:=mQtdRegE+1;
mContLin:=mContLin+1;
writeln(f,'|'
        +'E110' //1
        +'|'+FormatFloat('##0.00',E111_icms) //2
        +'|0,00'                          //3
        +'|'+FormatFloat('##0.00',mVl_Tot_AJ_DEBITOS) //4
        +'|'+FormatFloat('##0.00',0)                          //5
        +'|'+FormatFloat('##0.00',mvalicmsent)//6 //Imposto ENTRADAS
        +'|0,00'                          //7
        +'|'+FormatFloat('##0.00',mVl_Tot_AJ_Creditos)                          //8
        +'|'+FormatFloat('##0.00',0)//9
        +'|'+FormatFloat('##0.00',0)       //10
        +'|'+FormatFloat('##0.00',msddev)//11  02+03+04+05-06-07-08-09-10)
        +'|'+FormatFloat('##0.00',mdedu)//12
        +'|'+FormatFloat('##0.00',msddev-mdedu)//13   Valor total de "ICMS a recolher (11-12)
        +'|'+FormatFloat('##0.00',msaldoprox)                    //14
//        +'|'+FormatFloat('##0.00',msaldoprox+mVl_Tot_AJ_Creditos)                    //14
//        +'|'+FormatFloat('##0.00',msaldoprox+mVl_Tot_AJ_Creditos)                    //14
        +'|'+FormatFloat('##0.00',0)//15//Total
        +'|');
qE110:=1;
qE111:=0;

Tb_AjusE111.First;
while not Tb_AjusE111.eof do
   begin
   qE111:=qE111+1;
   mQtdRegE:=mQtdRegE+1;
   mContLin:=mContLin+1;
   writeln(f,'|'
      +'E111'
      +'|'+Tb_AjusE111CODIGOAJUST.Value
      +'|'+Trim(Tb_AjusE111COMPL_DESCR.Value)
      +'|'+FormatFloat('##0.00',Tb_AjusE111VALORAJUST.Value)
      +'|');
   Tb_AjusE111.Next;
   end;

Tb_AjusE115.First;
while not Tb_AjusE115.eof do
   begin
   qE115:=qE115+1;
   mQtdRegE:=mQtdRegE+1;
   mContLin:=mContLin+1;
   writeln(f,'|'
      +'E115' // 01
      +'|'+Tb_AjusE115CODIGOAJUST.Value //02
      +'|'+FormatFloat('##0.00',Tb_AjusE115VALORAJUST.Value) // 03
      +'|'+Trim(Tb_AjusE115COMPL_DESCR.Value) //04
      +'|');
   Tb_AjusE115.Next;
   end;
qE116:=0;
if (msddev-mdedu-mvalajuste)<>0 then
   begin
   qE116:=qE116+1;
   mQtdRegE:=mQtdRegE+1;
   mContLin:=mContLin+1;
   writeln(f,'|E116'
         +'|'+'000'
         +'|'+FormatFloat('##0.00',msddev-mdedu-mvalajuste)
         +'|'+FormatDateTime('ddmmyyyy',date)
//         +'|'+'0'
         +'|'+Trim(fdeixanum(Copy(CB_CODREC_OBRIGATORIO.Text,1,4)))
         +'|'+''
         +'|'+''
         +'|'+''
         +'|'
         +'|'+FormatDateTime('mmyyyy',MDT1.Date)
         +'|');

   end;

         //1
{
Qr_E200_Subst_Trib.Close;
Qr_E200_Subst_Trib.SQL.Clear;
Qr_E200_Subst_Trib.SQL.Add('Select sum(BASER_ENTRADA) AS BASER_ENTRADA, '
                          +' sum(ICMSR_ENTRADA) AS ICMSR_ENTRADA, '
                          +' SUM(BASER_SAIDA) AS BASER_SAIDA, '
                          +' sum(ICMSR_SAIDA) AS ICMSR_SAIDA, '
                          +' UF '
                          +' from (');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODCLI','CCODCLI','NSCODCLI');
Qr_E200_Subst_Trib.SQL.add('select '
                          +' sum( CASE WHEN SUBSTR(NSCFO1,1,1)<5 THEN (NSBASERI+NSBASERN+NSBASERP) '
                          +' else 0 END ) AS BASER_ENTRADA, '
                          +' sum( CASE WHEN SUBSTR(NSCFO1,1,1)<5 THEN (NSICMSRI+NSICMSRN+NSICMSRP) '
                          +' else 0 END ) AS ICMSR_ENTRADA, '

                          +'sum( CASE WHEN SUBSTR(NSCFO1,1,1)<5 THEN 0 '
                          +' else (NSBASERI+NSBASERN+NSBASERP) END) AS BASER_SAIDA, '

                          +'sum( CASE WHEN SUBSTR(NSCFO1,1,1)<5 THEN 0 '
                          +' else (NSICMSRI+NSICMSRN+NSICMSRP) END) AS ICMSR_SAIDA, '
                          +' CUF AS UF '
                          +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NSCODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NSDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NSDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));

if fsonumero(edt_numnf_sai.Text)<>0 then
   Qr_E200_Subst_Trib.SQL.Add(' and NSNUMERO=0'+edt_numnf_sai.Text);

 Qr_E200_Subst_Trib.SQL.Add(' and NSSTATUS=0');


Qr_E200_Subst_Trib.SQL.Add(' and (NSICMSRI+NSICMSRN+NSICMSRP)>0 ');
{Qr_E200_Subst_Trib.SQL.Add(' AND (SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+')');
Qr_E200_Subst_Trib.SQL.Add(' or  SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+') )');
}
//Qr_E200_Subst_Trib.SQL.Add(' Group by CUF ');
//{RETIRADO06062013
{
Qr_E200_Subst_Trib.SQL.Add(' union ');
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');

Qr_E200_Subst_Trib.SQL.add('select '
                          +' sum(NEBASER) AS BASER_ENTRADA, '
                          +' sum(NEICMSR) AS ICMSR_ENTRADA, '
                          +'0 AS BASER_SAIDA, '
                          +'0 AS ICMSR_SAIDA, '
                          +' FUF AS UF '
                          +' from CADNE '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NECODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NEDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NEDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));

Qr_E200_Subst_Trib.SQL.Add(' and (NEICMSR)>0 ');


if fsonumero(edt_numnf_ent.Text)<>0 then
   Qr_E200_Subst_Trib.SQL.Add(' and NENUMERO=0'+edt_numnf_ent.Text);

{
Qr_E200_Subst_Trib.SQL.Add(' AND (SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+')');
Qr_E200_Subst_Trib.SQL.Add(' or  SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+') )');
}
//Qr_E200_Subst_Trib.SQL.Add(' Group by FUF ');
//RETIRADO06062013}
 {

Qr_E200_Subst_Trib.SQL.Add(') group by UF');


   Qr_E200_Subst_Trib.SQL.SaveToFile('c:\sql_E200.txt');
try
   Qr_E200_Subst_Trib.Open;
except
   Qr_E200_Subst_Trib.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qre200',mtError,[mbOk],0);
   closefile(f);
   exit;

   end;
}
{
QE200:=1;
mContLin:=mContLin+1;

writeln(f,'|E200'+'|'+'GO|'+FormatDatetime('ddmmyyyy',StrToDate(MDT1.Text))+'|'
         +FormatDatetime('ddmmyyyy',StrToDate(MDT2.Text))+'|');

QE200:=1;
mContLin:=mContLin+1;
writeln(f,'|E200'+'|'+'SP|'+FormatDatetime('ddmmyyyy',StrToDate(MDT1.Text))+'|'
         +FormatDatetime('ddmmyyyy',StrToDate(MDT2.Text))+'|');
}



mTotE210:=0;
mtotGNRE:=0;
mem_e200.First;
While not mem_e200.Eof do
   begin
   QE200:=QE200+1;
   mQtdRegE:=mQtdRegE+1;
   mLInha:='|'+'E200'+'|'+mem_e200E200_UF.AsString+'|'+FormatDatetime('ddmmyyyy',StrToDate(MDT1.Text))+'|'
                             +FormatDatetime('ddmmyyyy',StrToDate(MDT2.Text))+'|';

   mContLin:=mContLin+1;
   writeln(f,mlinha);
{
    Qr_E210_ApuracaoST.Close;
   Qr_E210_ApuracaoST.SQL.Clear;
   Qr_E210_ApuracaoST.SQL.Add('select sum(BASER) AS BASER ,'
                             +' max(IND_MOV_ST) AS  IND_MOV_ST ' // 02
                             +',sum(VL_SLD_CRED_ANT_ST) AS VL_SLD_CRED_ANT_ST ' // 03
                             +',sum(VL_DEVOL_ST) AS VL_DEVOL_ST '  //04
                             +',sum(VL_RESSARC_ST) AS VL_RESSARC_ST '  //05
                             +',sum(VL_OUT_CRED_ST) AS VL_OUT_CRED_ST ' // 06
                             +',sum(VL_AJ_CREDITOS_ST) AS VL_AJ_CREDITOS_ST ' //07
                             +',sum(VL_RETENCAO_ST) AS VL_RETENCAO_ST '  // 08
                             +' ,sum(VL_OUT_DEB_ST) AS VL_OUT_DEB_ST '  //09
                             +' ,sum(VL_AJ_DEBITOS_ST) AS VL_AJ_DEBITOS_ST ' // 10
                             +' ,sum(VL_SLD_DEV_ANT_ST) AS VL_SLD_DEV_ANT_ST '     //11
                             +' ,sum(VL_DEDUCOES_ST) AS VL_DEDUCOES_ST '               //12
                             +' ,sum(VL_ICMS_RECOL_ST) AS VL_ICMS_RECOL_ST '               //13
                             +' ,sum(VL_SLD_CRED_ST_TRANSPORTAR) AS VL_SLD_CRED_ST_TRANSPORTAR '  //14
                             +' ,sum(DEB_ESP_ST) AS DEB_ESP_ST ' //15
                             +' from '
                             +'( ');


   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','NSCODCLI','CCODCLI','NSCODCLI');


   Qr_E210_ApuracaoST.SQL.Add('select sum(NSBASERN+NSBASERI+NSBASERP) AS BASER '
                             +',DECODE( sum((NSICMSRI+NSICMSRN+NSICMSRP)),0,0,1) AS IND_MOV_ST '
                             +', sum(NSICMSRI+NSICMSRN+NSICMSRP) AS VL_SLD_CRED_ANT_ST '
//                             +',sum(DECODE(CUF,'+QuotedStr(DM1.Tb_EmpUF.AsString)+',NSICMSRI+NSICMSRP+NSICMSRN,0)) AS VL_SLD_CRED_ANT_ST '
                             +',0 AS VL_DEVOL_ST '
                             +',0 AS VL_RESSARC_ST '
                             +', sum( CASE WHEN SUBSTR(NSCFO1,1,1) <5 THEN  NSICMSRI+NSICMSRP+NSICMSRN ELSE 0 END) AS VL_OUT_CRED_ST '                // 06
                             +',0 AS VL_AJ_CREDITOS_ST '   //07
//                             +',sum(DECODE(CUF,'+QuotedStr(DM1.Tb_EmpUF.AsString)+',NSICMSRI+NSICMSRP+NSICMSRN,0)) AS VL_RETENCAO_ST '

                             +',sum(  CASE WHEN SUBSTR(NSCFO1,1,1) <5 THEN  0 ELSE NSICMSRI+NSICMSRP+NSICMSRN END) AS  VL_RETENCAO_ST '  // 08
                             +',0 AS VL_OUT_DEB_ST '
                             +',0 AS VL_AJ_DEBITOS_ST '
                             +',sum(  CASE WHEN SUBSTR(NSCFO1,1,1) <5 THEN  0 ELSE NSICMSRI+NSICMSRP+NSICMSRN END) AS VL_SLD_DEV_ANT_ST '
//                             +',sum(DECODE(CUF,'+QuotedStr(DM1.Tb_EmpUF.AsString)+',NSICMSRI+NSICMSRP+NSICMSRN,0)) AS VL_SLD_DEV_ANT_ST '

//                             +',0 AS VL_SLD_DEV_ANT_ST '
                             +',0 AS VL_DEDUCOES_ST '
//                             +',sum(DECODE(CUF,'+QuotedStr(DM1.Tb_EmpUF.AsString)+',NSICMSRI+NSICMSRP+NSICMSRN,0)) AS VL_ICMS_RECOL_ST '
                             +',sum(  CASE WHEN SUBSTR(NSCFO1,1,1) <-5 THEN  0 ELSE NSICMSRI+NSICMSRP+NSICMSRN END) AS VL_ICMS_RECOL_ST '
//                             +',sum(  CASE WHEN SUBSTR(NSCFO1,1,1) <5 THEN  0 ELSE NSICMSRI+NSICMSRP+NSICMSRN END) AS VL_ICMS_RECOL_ST '
                             +', sum( CASE WHEN SUBSTR(NSCFO1,1,1) <5 THEN  NSICMSRI+NSICMSRP+NSICMSRN ELSE 0 END) AS VL_SLD_CRED_ST_TRANSPORTAR '
//                             +', sum(NSICMSRI+NSICMSRN+NSICMSRP) AS VL_SLD_CRED_ST_TRANSPORTAR '
                             +',0 AS DEB_ESP_ST '
                             +'from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NSCODEMP=0'+IntToStr(codemp)
                          +' and NSNUMERO<>0 and NSSTATUS=0 '
                          +' and CUF=:UF ');

   if trim(mdt1.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NSDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
   if trim(mdt2.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NSDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
   Qr_E210_ApuracaoST.ParamByName('UF').AsString:=mem_e200UF.AsString;
 // {RETIRADO06062013

   Qr_E210_ApuracaoST.SQL.Add(' union ');



   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin(1,'CADFOR','FCODEMP','NECODEMP','FCODFOR','NECODFOR');




   Qr_E210_ApuracaoST.SQL.Add('select 0 AS BASER '
                             +',0 IND_MOV_ST '
                             +',0 AS VL_SLD_CRED_ANT_ST '
                             +',0 AS VL_DEVOL_ST '
                             +',0 AS VL_RESSARC_ST '
                             +',sum(PF2ICMSR) AS VL_OUT_CRED_ST '
                             +',0 AS VL_AJ_CREDITOS_ST '
//                             +',0 AS VL_RETENCAO_ST '
                             +',sum(PF2ICMSR) AS VL_RETENCAO_ST '
                             +',0 AS VL_OUT_DEB_ST '
                             +',0 AS VL_AJ_DEBITOS_ST '
                             +',sum(PF2ICMSR) AS VL_SLD_DEV_ANT_ST '
//                             +',0 AS VL_SLD_DEV_ANT_ST '
                             +',0 AS VL_DEDUCOES_ST '
                             +',sum(PF2ICMSR) AS VL_ICMS_RECOL_ST '
//                             +',0 AS VL_SLD_CRED_ST_TRANSPORTAR '
                             +',sum(PF2ICMSR) AS VL_SLD_CRED_ST_TRANSPORTAR '
                             +',0 AS DEB_ESP_ST '
                             +'from CADNe '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NeCODEMP=0'+IntToStr(codemp)
                          +' and NENUMERO<>0 and NESTATUS=0'
                          +' and FUF=:UF ');

   if trim(mdt1.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
   if trim(mdt2.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
   Qr_E210_ApuracaoST.ParamByName('UF').AsString:=mem_e200UF.AsString;
   Qr_E210_ApuracaoST.SQL.add(' and PF2ICMSR>0 ');

//   Qr_E210_ApuracaoST.SQL.add(') group by IND_MOV_ST ');

//   Qr_E210_ApuracaoST.SQL.SaveToFile('c:\sql.txt');
//   LUIZ
// RETIRADO06062013}
{   Qr_E210_ApuracaoST.SQL.add(') ');

   try
      Qr_E210_ApuracaoST.Open;
   except
      Qr_E210_ApuracaoST.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Abrit Qre210',mtError,[mbOk],0);
      closefile(f);
      exit;
      end;

}
   if  mem_e210.Locate('E210_UF',mem_e200E200_UF.AsString,[]) then
      begin

      While (not mem_e210.Eof) and (mem_e200E200_UF.AsString=mem_e210E210_UF.AsString) do
         begin
         mQtdRegE:=mQtdRegE+1;
         QE210:=QE210+1;



         mLInha:='|'+'E210'//1
              +'|'+FormatFloat('0', mem_e210E210_IND_MOV_ST.AsInteger) //2
              +'|'+FormatFloat('##0.00',0) //  vl_sld_cred_ant_st Qr_E200_ApuracaoSTVL_RETENCAO_ST 00_Subst_TribICMSR.AsFloat)//3
              +'|'+FormatFloat('##0.00', mem_e210E210_VL_DEVOL_ST.AsFloat) // SALDO CREDOR DO PERIODO ANTERIOR Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//4
              +'|'+FormatFloat('##0.00',0)//5
              +'|'+FormatFloat('##0.00',mem_e210E210_VL_OUT_CRED_ST.AsFloat)//6
              +'|'+FormatFloat('##0.00',0)//7
              +'|'+FormatFloat('##0.00', mem_e210E210_VL_RETENAO_ST.AsFloat)//8

    //          +'|'+FormatFloat('##0.00',0) // vl_retencao_ST mem_e200ICMSR.AsFloat) //-- Total do Icms Retido
              +'|'+FormatFloat('##0.00',0)//9
              +'|'+FormatFloat('##0.00',0);//10
          if (mem_e210E210_VL_DEVOL_ST.AsFloat>0) and (mem_e210E210_VL_RETENAO_ST.AsFloat>0) then
             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_RETENAO_ST.AsFloat-mem_e210E210_VL_DEVOL_ST.AsFloat )//11
          else
             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_RETENAO_ST.AsFloat );//11
//             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_SLD_DEV_ANT_ST.AsFloat );//11
          mlinha:=mlinha+'|'+FormatFloat('##0.00',0);//12

          if (mem_e210E210_VL_DEVOL_ST.AsFloat>0) and (mem_e210E210_VL_RETENAO_ST.AsFloat>0) then
             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_RETENAO_ST.AsFloat-mem_e210E210_VL_DEVOL_ST.AsFloat )//13
          else
             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_RETENAO_ST.AsFloat );//13
//             mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_SLD_DEV_ANT_ST.AsFloat );//13

//           mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_RETENAO_ST.AsFloat);    ;//13
              if mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat>0 then
                 mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat)//14
              else
                 mlinha:=mlinha+'|0';//14

              mlinha:=mlinha+'|'+FormatFloat('##0.00',0)//15
              +'|';




{ANTES06062013
         if mem_e200 O RIGEM.AsString='E' then
            begin
            mLInha:='|'+'E210'//1
                 +'|'+FormatFloat('0', Qr_E210_ApuracaoSTIND_MOV_ST.AsInteger) //2
                 +'|'+FormatFloat('##0.00',0) //  vl_sld_cred_ant_st Qr_E200_ApuracaoSTVL_RETENCAO_ST 00_Subst_TribICMSR.AsFloat)//3
                 +'|'+FormatFloat('##0.00',0) // SALDO CREDOR DO PERIODO ANTERIOR Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//4
                 +'|'+FormatFloat('##0.00',0)//5
                 +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_OUT_CRED_ST.AsFloat)//6
                 +'|'+FormatFloat('##0.00',0)//7
                 +'|'+FormatFloat('##0.00', 0)//8

    //             +'|'+FormatFloat('##0.00',0) // vl_retencao_ST mem_e200ICMSR.AsFloat) //-- Total do Icms Retido
                 +'|'+FormatFloat('##0.00',0)//9
                 +'|'+FormatFloat('##0.00',0)//10
                 +'|'+FormatFloat('##0.00',0)//11
                 +'|'+FormatFloat('##0.00',0)//12
                 +'|'+FormatFloat('##0.00',0)//13
                 +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_SLD_CRED_ST_TRANSPORTAR.AsFloat)//14
                 +'|'+FormatFloat('##0.00',0)//15
                 +'|';
           end
        else
           begin
           mLInha:='|'+'E210'//1
                 +'|'+FormatFloat('0', Qr_E210_ApuracaoSTIND_MOV_ST.AsInteger) //2
                 +'|'+FormatFloat('##0.00',0) //  vl_sld_cred_ant_st Qr_E200_ApuracaoSTVL_RETENCAO_ST 00_Subst_TribICMSR.AsFloat)//3
                 +'|'+FormatFloat('##0.00',0) // SALDO CREDOR DO PERIODO ANTERIOR Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//4
                 +'|'+FormatFloat('##0.00',0)//5
                 +'|'+FormatFloat('##0.00', Qr_E210_ApuracaoSTVL_OUT_CRED_ST.AsFloat)//6
                 +'|'+FormatFloat('##0.00',0)//7
                 +'|'+FormatFloat('##0.00', Qr_E210_ApuracaoSTVL_RETENCAO_ST.AsFloat)//8

//                 +'|'+FormatFloat('##0.00',0) // vl_retencao_ST mem_e200ICMSR.AsFloat) //-- Total do Icms Retido
                 +'|'+FormatFloat('##0.00',0)//9
                 +'|'+FormatFloat('##0.00',0)//10
                 +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_SLD_DEV_ANT_ST.AsFloat)//11
                 +'|'+FormatFloat('##0.00',0)//12
                 +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_ICMS_RECOL_ST.AsFloat)//13
                 +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_SLD_CRED_ST_TRANSPORTAR.AsFloat)//14
                 +'|'+FormatFloat('##0.00',0)//15
                 +'|';
           end;
ANTES06062013}

         mTotE210:=mTotE210+mem_e210E210_VL_RETENAO_ST.Value;
         mContLin:=mContLin+1;
         Writeln(f,mlinha);
         mem_e210.Next;
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
            mQtdRegE:=mQtdRegE+1;
            mtotGNRE:=mtotGNRE+Tb_GuiaSTVL_OR.Value;
            QE250:=QE250+1;
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
                    +'|'+Tb_GuiaSTMES_REF.AsString  // 010
                    +'|';
               end
           else
               begin
               mLinha:=mLinha+'|'+Tb_GuiaSTNUM_PROC.AsString  // 06
                    +'|'+Tb_GuiaSTIND_PROC.AsString  // 07
                    +'|'+Tb_GuiaSTPROC.AsString  // 08
                    +'|'+Tb_GuiaSTTXT_COMP.AsString  // 09
                    +'|'+Tb_GuiaSTMES_REF.AsString  // 010
                    +'|';
               end;

            mContLin:=mContLin+1;
            Writeln(f,mlinha);
            Tb_GuiaST.Next;
            end;
         end;


      end;
   mem_e200.Next;
   end;

IF (mTotE210-mtotGNRE)<>0 then
   memo_erros.Lines.Add('REGISTRO E250 Problemas Valor Esperado '+FormatFloat(mcasas, mTotE210)+' Valor Lançado: '+FormatFloat(mcasas, mtotGNRE)+' Favor corrigir em fiscais GNRE ');



// registro do tipo e500
QE500:=0;
{
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODCLI','CCODCLI','NSCODCLI');
Qr_E5200_Subst_Trib.Close;
Qr_E200_Subst_Trib.SQL.Clear;
Qr_E200_Subst_Trib.SQL.add('select sum(NSBASERI+NSBASERN+NSBASERP) AS BASER, sum(NSICMSRI+NSICMSRN+NSICMSRP) AS ICMSR,CUF AS UF '
                          +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NSCODEMP=0'+IntToStr(codemp));
if trim(mdt1.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NSDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
if trim(mdt2.Text)<>'/  /' then
   Qr_E200_Subst_Trib.SQL.add(' and NSDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
Qr_E200_Subst_Trib.SQL.Add(' and (NSICMSRI+NSICMSRN+NSICMSRP)>0 ');
Qr_E200_Subst_Trib.SQL.Add(' AND (SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+')');
Qr_E200_Subst_Trib.SQL.Add(' or  SUBSTR(TO_CHAR(NSCFO1),2,1) IN ('+chr(39)+'4'+chr(39)+','+chr(39)+'6'+chr(39)+') )');
Qr_E200_Subst_Trib.SQL.Add(' Group by CUF ');
try
   Qr_E200_Subst_Trib.Open;
except
   Qr_E200_Subst_Trib.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qre200',mtError,[mbOk],0);
   closefile(f);
   exit;

   end;
While not Qr_E200_Subst_Trib.Eof do
   begin
   QE200:=QE200+1;
   mQtdRegE:=mQtdRegE+1;
   mLInha:='|'+'E200'+'|'+Qr_E200_Subst_TribUF.AsString+'|'+FormatDatetime('ddmmyyyy',StrToDate(MDT1.Text))+'|'
                             +FormatDatetime('ddmmyyyy',StrToDate(MDT2.Text))+'|';

   mContLin:=mContLin+1;
   writeln(f,mlinha);
   Qr_E210_ApuracaoST.Close;
   Qr_E210_ApuracaoST.SQL.Clear;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','NSCODCLI','CCODCLI','NSCODCLI');

   Qr_E210_ApuracaoST.SQL.Add('select sum(NSBASER) AS BASER '
                             +',DECODE( sum((NSICMSRI+NSICMSRN+NSICMSRP)),0,0,1) AS IND_MOV_ST '
                             +', sum(NSICMSRI+NSICMSRN+NSICMSRP) AS VL_SLD_CRED_ANT_ST '
                             +',0 AS VL_DEVOL_ST '
                             +',0 AS VL_RESSARC_ST '
                             +',0 AS VL_OUT_CRED_ST '
                             +',0 AS VL_AJ_CREDITOS_ST '
                             +',0 AS VL_RETENCAO_ST '
                             +',0 AS VL_OUT_DEB_ST '
                             +',0 AS VL_AJ_DEBITOS_ST '
                             +',0 AS VL_SLD_DEV_ANT_ST '
                             +',0 AS VL_DEDUCOES_ST '
                             +',0 AS VL_ICMS_RECOL_ST '
                             +', sum(NSICMSRI+NSICMSRN+NSICMSRP) AS VL_SLD_CRED_ST_TRANSPORTAR '
                             +',0 AS DEB_ESP_ST '
                             +'from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' NSCODEMP=0'+IntToStr(codemp)
                          +' NSUF=:UF ');

   if trim(mdt1.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NSDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.text))+chr(39));
   if trim(mdt2.Text)<>'/  /' then
      Qr_E210_ApuracaoST.SQL.add(' and NSDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.text))+chr(39));
   Qr_E210_ApuracaoST.ParamByName('UF').AsString:=Qr_E200_Subst_TribUF.AsString;
   try
      Qr_E210_ApuracaoST.Open;
   except
      Qr_E210_ApuracaoST.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Abrit Qre210',mtError,[mbOk],0);
      closefile(f);
      exit;
      end;

   if not Qr_E210_ApuracaoST.IsEmpty then
      begin
      mLInha:='|'+'E210'//1
              +'|1'//2
              +'|'+FormatFloat('##0.00',Qr_E200_Subst_TribICMSR.AsFloat)//3
              +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//4
              +'|'+FormatFloat('##0.00',0)//5
              +'|'+FormatFloat('##0.00',0)//6
              +'|'+FormatFloat('##0.00',0)//7
              +'|'+FormatFloat('##0.00',Qr_E200_Subst_TribICMSR.AsFloat) //-- Total do Icms Retido
              +'|'+FormatFloat('##0.00',0)//9
              +'|'+FormatFloat('##0.00',0)//10
              +'|'+FormatFloat('##0.00',0)//11
              +'|'+FormatFloat('##0.00',0)//12
              +'|'+FormatFloat('##0.00',0)//13
              +'|'+FormatFloat('##0.00',Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//14
              +'|'+FormatFloat('##0.00',0)//15
              +'|';

      mContLin:=mContLin+1;
      Writeln(f,mlinha);
      end;
   Qr_E200_Subst_Trib.Next;
   end;
 }
//FIM E 500

mQtdRegE:=mQtdRegE+1;
mContLin:=mContLin+1;

writeln(f,'|'+'E990'+'|'+inttostr(mQtdRegE)+'|');

qG001:=1;
qG990:=1;

mContLin:=mContLin+1;
writeln(f,'|G001|1|');
mContLin:=mContLin+1;
Writeln(f,'|G990|2|');


qE990:=1;
qH005:=0;
qH010:=0;

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';


   fInnerJoin(1,'CADPRO','PDCODEMP','IGCODEMP','PDCODPRO','IGCODPRO');

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT'
                  +'        ,sum(IGQTD*IGPRECO) AS VALOR '
                  +'        ,max(IGVALOR_TRANSP) AS VALOR_TRANSP '
                  +'        ,max(IGDATAEMI) as IGDATAEMI '
                  +'        ,count(*) as ITEM '
                  +' from INVGRA'               +iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' IGCODEMP=0'+IntToStr(codemp)
                          +' and IGNOMEINV=:NOMEINV');
DM1.Query1.ParamByName('NOMEINV').AsString:=CB_INVENTARIO.Text;
DM1.Query1.SQL.Add(' group by IGNOMEINV ');
DM1.Query1.ParamByName('NOMEINV').AsString:=CB_INVENTARIO.Text;
DM1.Query1.Open;

if DM1.Query1.IsEmpty then
   begin
   qH001:=1;

   mContLin:=mContLin+1;
   writeln(f,'|H001'+'|0|');
   qH010:=0;
   qH005:=1;

   mContLin:=mContLin+1;
   writeln(f,'|H005|'+FormatDatetime('ddmmyyyy', MDT2.Date)
          +'|'+'0'+'|'
          +''+'01|');

   end
else
   begin
   qH001:=1;
   mContLin:=mContLin+1;
   writeln(f,'|H001'+'|0|');
   end;


if not DM1.Query1.IsEmpty then
   begin
   qH005:=1;
   qH010:=0;
   mContLin:=mContLin+1;
   writeln(f,'|H005|'+FormatDatetime('ddmmyyyy', DM1.query1.fieldbyName('IGDATAEMI').asdatetime)
          +'|'+FormatFloat('#0.00', DM1.Query1.fieldbyName('VALOR').AsFloat)+'|'
          +FormatFloat('00', CB_MOTINV.ItemIndex+1)+'|');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';


   fInnerJoin(1,'CADPRO','PDCODEMP','IGCODEMP','PDCODPRO','IGCODPRO');



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
      qH010:=qH010+1;
      mlinha:='|H010'
      +'|'+Qr_H010_InventarioCOD_ITEM.AsString;
      if length(trim(Qr_H010_InventarioUNID.AsString))<2 then
          mlinha:=mlinha+'|UND' //6
      else
          mlinha:=mlinha+'|'+trim(Qr_H010_InventarioUNID.AsString);
       mlinha:=mlinha+'|'+FormatFloat('#0.000', Qr_H010_InventarioQTD.AsFloat)
      +'|'+FormatFloat('#0.000', Qr_H010_InventarioVL_UNIT.AsFloat)
      +'|'+FormatFloat('#0.00', Qr_H010_InventarioVL_ITEM.AsFloat)
      +'|'+Qr_H010_InventarioIND_PROP.AsString
      +'|'+Trim(Qr_H010_InventarioCOD_PART.AsString)
      +'|'+Trim(Qr_H010_InventarioTXT_COMPL.AsString)
      +'|'+Trim(Qr_H010_InventarioCOD_CTA.AsString)
      +'|';
      mContLin:=mContLin+1;
      Writeln(f,mlinha);
      Qr_H010_Inventario.Next;
      end;
   end;

if (qH001+qH005+qH010)>0 then
   begin

   qh990:=1;
   mContLin:=mContLin+1;
   Writeln(f,'|H990|'+inttoStr(1+qH001+qH005+qH010)+'|');
   end;

q1001:=1;
q1010:=0;
mContLin:=mContLin+1;
Writeln(f,'|1001|0|');

q1010:=0;

Qr_1010.close;
Qr_1010.Open;
Qr_1010.First;

While not Qr_1010.eof do
   begin
   mLInha:='|'+Qr_1010REG.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_EXP.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_CCRF.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_COMB.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_USINA.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_VA.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_EE.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_CART.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_FORM.AsString+'|';
   mLInha:=mlinha+Qr_1010IND_AER.AsString+'|';
   mContLin:=mContLin+1;
   Writeln(f,mlinha);
   q1010:=q1010+1;
   Qr_1010.Next;
   end;

q1990:=1;
mContLin:=mContLin+1;
writeln(f,'|1990|'+IntToStr(q1990+q1001+q1010)+'|');
q9990:=0;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9001'+'|'+'0'+'|');
q9900:=0;
q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0000'+'|'+inttostr(q0000)+'|');
q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0001'+'|'+inttostr(q0001)+'|');
q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0005'+'|'+inttostr(q0005)+'|');
q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0100'+'|'+inttostr(q0100)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0150'+'|'+inttostr(q0150)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0190'+'|'+inttostr(q0190)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0200'+'|'+inttostr(q0200)+'|'); // aqui



q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0400'+'|'+inttostr(q0400)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'0990'+'|'+inttostr(q0990)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C001'+'|'+inttostr(qC001)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C100'+'|'+inttostr(qC100)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C140'+'|'+inttostr(qC140)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C141'+'|'+inttostr(qC141)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C170'+'|'+inttostr(qC170)+'|');    // aqui

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C173'+'|'+inttostr(qC173)+'|');    // aqui

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C190'+'|'+inttostr(qC190)+'|');

if qc300>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C300'+'|'+inttostr(qC300)+'|');
   end;

if qC310>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C310'+'|'+inttostr(qC310)+'|');
   end;

if qC320>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C320'+'|'+inttostr(qC320)+'|');
   end;

if qC321>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C321'+'|'+inttostr(qC321)+'|');
   end;

if qC350>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C350'+'|'+inttostr(qC350)+'|');
   end;

if qC370>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C370'+'|'+inttostr(qC370)+'|');
   end;

if qC390>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'C390'+'|'+inttostr(qC390)+'|');
   end;

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C405'+'|'+inttostr(qC405)+'|');





q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C400'+'|'+inttostr(qC400)+'|');


q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C420'+'|'+inttostr(qC420)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C460'+'|'+inttostr(qC460)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C470'+'|'+inttostr(qC470)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C490'+'|'+inttostr(qC490)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C500'+'|'+inttostr(qC500)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C590'+'|'+inttostr(qC590)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'C990'+'|'+inttostr(qC990)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D001'+'|'+inttostr(qD001)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D100'+'|'+inttostr(qD100)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D190'+'|'+inttostr(qD190)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D500'+'|'+inttostr(qD500)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D590'+'|'+inttostr(qD590)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'D990'+'|'+inttostr(qD990)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E001'+'|'+inttostr(qE001)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E100'+'|'+inttostr(qE100)+'|');



q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E110'+'|'+inttostr(qE110)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E111'+'|'+inttostr(qE111)+'|');


q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E115'+'|'+inttostr(qE115)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E116'+'|'+inttostr(qE116)+'|');

if qE200>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'E200'+'|'+inttostr(qE200)+'|');
   end;
if qE210>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'E210'+'|'+inttostr(qE210)+'|');
   end;

if qE250>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'E250'+'|'+inttostr(qE250)+'|');
   end;

if qE500>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'E500'+'|'+inttostr(qE500)+'|');
   end;
{q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E510'+'|'+inttostr(qE510)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E520'+'|'+inttostr(qE520)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E530'+'|'+inttostr(qE530)+'|');  }

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'E990'+'|'+inttostr(qE990)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'G001'+'|'+inttostr(qG001)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'G990'+'|'+inttostr(qG990)+'|');


if qh001>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'H001'+'|'+inttostr(qH001)+'|');
   end;

if qH005>0 then
   begin
   mContLin:=mContLin+1;

   writeln(f,'|'+'9900'+'|'+'H005'+'|'+inttostr(qH005)+'|');
   q9900:=q9900+1;
   q9990:=q9990+1;
   end;

if qh010>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'H010'+'|'+inttostr(qH010)+'|');
   end;
if qh990>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'H990'+'|'+inttostr(qh990)+'|');
   end;

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'1001'+'|'+inttostr(q1001)+'|');

if q1010>0 then
   begin
   q9900:=q9900+1;
   q9990:=q9990+1;
   mContLin:=mContLin+1;
   writeln(f,'|'+'9900'+'|'+'1010'+'|'+inttostr(q1010)+'|');
   end;

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'1990'+'|'+inttostr(q1990)+'|');

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'9001'+'|1|');


q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'9990'+'|1|');//aqui

q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'9999'+'|1|');//aqui


q9900:=q9900+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9900'+'|'+'9900'+'|'+InttoStr(q9900)+'|');//aqui


q9990:=q9990+1;
q9990:=q9990+1;
mContLin:=mContLin+1;
writeln(f,'|'+'9990'+'|'+IntToStr(q9990)+'|'); //aqui

mContLin:=mContLin+1;
writeln(f,'|'+'9999'+'|'+inttostr(mContLin)+'|');

CloseFile(f);

mem_totc420xc490.First;
While not mem_totc420xc490.Eof do
   begin
   if fsonumero(mem_totc420xc490SITALIQ.AsString)>10 then
      begin
      if Arredonda(mem_totc420xc490C420_VLR_ACUM_TOT.AsFloat,2)<>Arredonda(mem_totc420xc490C490_VLR_OPER.AsFloat,2) then
         begin
         memo_erros.Lines.Add('REGISTRO C420: '+FormatDateTime(fdt2, mem_totc420xc490DT_DOC.AsDateTime)+'/'+mem_totc420xc490SITALIQ.AsString
                          +' Total C420: '+Formatfloat(mcasas, mem_totc420xc490C420_VLR_ACUM_TOT.Value)
                          +' Total C490: '+Formatfloat(mcasas, mem_totc420xc490C490_VLR_OPER.Value)+'. Invalido!');
         end;
      end;
   mem_totc420xc490.Next;
   end;

verteclado(0);
if memo_erros.Lines.Count>0 then
   begin
   MessageDlg('Arquivo Gerado com Erros Ok Para Ver Erros!',mtError,[mbOk],0);
   PageControl1.ActivePage:=tsErrosEFD;
   memo_erros.SetFocus;
   end
else
   MessageDlg('Concluido!',mtInformation,[mbOk],0);
bbgerar.enabled:=true;



end;

procedure TFrm_SPED_EFD.sbnsalvarClick(Sender: TObject);
begin
if trim(edt_nomarq.Text)<>'' then
   SaveDialog1.FileName:=edt_nomarq.Text;
if SaveDialog1.Execute then
   edt_nomarq.Text:=SaveDialog1.FileName;
end;

procedure TFrm_SPED_EFD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FreeAndNil(Frm_SPED_EFD_NotasST);

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SPED_EFD.Qr_0400_CFOPCalcFields(DataSet: TDataSet);
begin
if flqr1('CFNOME','CF','CADCFO','N','CFCODCFO',Qr_0400_CFOPCFCODCFO.AsString) then
   Qr_0400_CFOPnomcfop.Value:=DM1.Query1.fieldbyName('CFNOME').AsString
else
   Qr_0400_CFOPnomcfop.Value:='NAO ENCONTRADO';


end;

procedure TFrm_SPED_EFD.Qr_C420_TotParcRedZCalcFields(DataSet: TDataSet);
begin
if Qr_C420_TotParcRedZCOD_TOT_PAR.AsFloat>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CACODALI from CADCAL where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CACODEMP=0'+IntTostr(codemp)+' and ')
                     +' CAALIQ=:ALIQ');
   DM1.Query1.ParamByName('ALIQ').AsFloat:=Qr_C420_TotParcRedZCOD_TOT_PAR.AsFloat;
   DM1.Query1.Open;
   Qr_C420_TotParcRedZnr_tot.Value:=FormatFloat('00', DM1.Query1.fieldbyName('CACODALI').AsFloat);
   Qr_C420_TotParcRedZdescr_nr_tot.Value:='Totalizador: '+FormatFloat('00', DM1.Query1.fieldbyName('CACODALI').AsFloat);
   end;
end;

procedure TFrm_SPED_EFD.Qr_C420_DescontoCalcFields(DataSet: TDataSet);
begin

if Qr_C420_DescontoCOD_TOT_PAR.AsFloat>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CACODALI from CADCAL where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CACODEMP=0'+IntTostr(codemp)+' and ')
                     +' CAALIQ=:ALIQ');
   DM1.Query1.ParamByName('ALIQ').AsFloat:=Qr_C420_DescontoCOD_TOT_PAR.AsFloat;
   DM1.Query1.Open;
   Qr_C420_Descontonr_tot.Value      :=DM1.Query1.fieldbyName('CACODALI').AsFloat;
   Qr_C420_Descontodescr_nr_tot.Value:='Totalizador: '+FormatFloat('00', DM1.Query1.fieldbyName('CACODALI').AsFloat);
   end;

end;

procedure TFrm_SPED_EFD.bbUpdateClick(Sender: TObject);
begin
{
UPDATE CADP02 SET P2ICMSN=0,P2ICMSNR=0
WHERE (P2ICMSN>0 OR P2ICMSNR>0)
AND (P2ALIQ=0) AND P2ALIQNR=0


UPDATE CADP02 SET P2CFO=5405
WHERE P2CFO=5102
AND P2SIT='060'
}
end;

procedure TFrm_SPED_EFD.MDT1Exit(Sender: TObject);
begin
edt_nomarq.text:='C:\SGE\EFD_'+FormatDatetime('mmyyyy', MDT1.Date)+'.TXT';
try
   mAnoMes_ini:=FormatDatetime('yyyymm', StrToDatetime(MDT1.Text));
except
   MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;

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
      Tb_GuiaSTMES_REF.Value      :=DM1.Query1.fieldbyName('GST_MES_REF').AsString;
      Tb_GuiaSTNUM_PROC.Value     :=DM1.Query1.fieldbyName('GST_NUM_REC').AsString;
      Tb_GuiaSTUF.Value           :=DM1.Query1.fieldbyName('GST_UF').AsString;
      edtguiast_valordig.Value:=edtguiast_valordig.Value+DM1.Query1.fieldbyName('GST_VL_OR').AsFloat;
      Tb_GuiaST.Post;
      DM1.Query1.Next;
      end;
   edtguiast_valorResto.Value:=edtguiast_valoresp.Value-edtguiast_valordig.Value;
   fTotalizarST(0);
   end;

end;

procedure TFrm_SPED_EFD.bbNossoProgramaClick(Sender: TObject);
var
mNomeArqSai: String;
x: Integer;
begin
if not FileExists(edt_nomarq.Text) then
   begin
   MessageDlg('Não Foi Encontrado o Arquivos: '+edt_nomarq.Text,mtWarning,[mbOk],0);
   exit;
   end;
memo_erros_nossoProg.Lines.Clear;
AssignFile(f_Ler,edt_nomarq.Text);
Reset(f_Ler);
SaveDialog1.FileName:='C:\SGE\'+DM1.Tb_EmpRAZAO.AsString+'_'+FormatDatetime('mmyyyy', MDT1.Date)+'.TXT';
if SaveDialog1.Execute then mNomeArqSai:=SaveDialog1.FileName;
AssignFile(F_Grava,mNomeArqSai);
Rewrite(F_Grava);
mLinha_Grava:=insere2('EMPRESA',' ',10);
mLinha_Grava:=mLinha_Grava+insere( FormatFloat('00000000000000',fsonumero(edt_cnpj.Text)),'0',14);
mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_EmpRAZAO.AsString,' ',40);
mLinha_Grava:=mLinha_Grava+FormatDateTime('yymmdd',StrtoDate(MDT1.Text));
mLinha_Grava:=mLinha_Grava+FormatDateTime('yymmdd',StrtoDate(MDT2.Text));
mLinha_Grava:=mLinha_Grava+'03';
Writeln(f_Grava,mLinha_grava);

// inicio dos campos memos

Memo_Itens.Lines.Clear;
Memo_ICMSST_Saidas.Lines.Clear;
Memo_EntAliq.Lines.Clear;
Memo_Reg6_1.Lines.Clear;
Memo_Reg6_2.Lines.Clear;
Memo_Folha.Lines.Clear;


fExportarBlocoD(0);
fExportarBlocoC(0);


// inicio dos campos memos

for x:=0 to Memo_Itens.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_itens.Lines[x]);
   end;

for x:=0 to Memo_ICMSST_Saidas.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_ICMSST_Saidas.Lines[x]);
   end;

for x:=0 to Memo_EntAliq.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_EntAliq.Lines[x]);
   end;


for x:=0 to Memo_Reg6_1.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_Reg6_1.Lines[x]);
   end;

for x:=0 to Memo_Reg6_2.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_Reg6_2.Lines[x]);
   end;

for x:=0 to Memo_Folha.Lines.Count-1 do
   begin
   Writeln(f_Grava,Memo_Folha.Lines[x]);
   end;


// termino dos campso memos

CloseFile(F_Grava);
CloseFile(F_Ler);
ShowMessage('Concluido com Exito!!!');


end;



function tFrm_SPED_EFD.fExportarBlocoD(ptipo: Integer): Boolean;
var
mCodigo: String;
mtipo: String;
mStringData: String;
mDataCalc: TDateTime;
begin
reset(f_ler);
mLinha_Grava:='';
While not  eof(f_ler) do
   begin
   readln(f_ler,mlinha_ler);
   if copy(mlinha_ler,2,4)='D100' then
      begin
      if trim(mLinha_Grava)<>'' then
         begin
         if length(mLinha_Grava)<>448 then
            begin
            memo_erros_nossoProg.Lines.Add('Registro CF: Tamanho Esperado: 448 Tamanho Escrito: '+IntToStr(length(mlinha_grava)));
            memo_erros_nossoProg.Lines.Add(mLinha_Grava);
            end;
         Writeln(f_Grava,mLinha_Grava);
         mLinha_Grava:='';
         end;
      mLinha_Grava:=mLinha_Grava+insere2('CF',' ',10); // identificacao
      mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(07,mLinha_ler),' ',03); // serie
      mLinha_Grava:=mLinha_Grava+insere('000','0',03); // cst
      mLinha_Grava:=mLinha_Grava+insere(' ',' ',07);    // espaco reservado
      mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(09,mLinha_ler),'0',09);
      mtipo:=fBuscarValor(04,mLinha_ler);
      mcodigo:=copy(mtipo,2,length(mtipo)-1);
      mtipo:=copy(mtipo,1,1);
      if mtipo='F' then
         begin
         flqr1('FRAZAO AS RAZSOC,FIE AS IE, FCGC AS CNPJ, FCIDADE AS CIDADE, FUF AS UF,0 AS CPF, '+chr(39)+' '+chr(39)+' as RG ','F','CADFOR','N','FCODCLI',mCodigo);
         end
      else
         begin
         flqr1('CRAZAO AS RAZSOC,CIE AS IE, CCNPJ AS CNPJ, CCIDADE AS CIDADE, CUF AS UF,CCPF AS CPF, CRG as RG','C','CADCLI','N','CCODCLI',mCodigo);
         end;

      if DM1.Query1.fieldbyName('FCGC').AsFloat=0 then
         begin
         mLinha_Grava:=mLinha_Grava+'F';
         mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('CPF').asString,'0',14);
         mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('RAZSOC').asString,' ',40);
         if fsonumero(DM1.Query1.fieldbyName('RG').asString)=0 then
            mLinha_Grava:=mLinha_Grava+insere2(' ',' ',20)
         else
            mLinha_Grava:=mLinha_Grava+insere(fdeixanum(DM1.Query1.fieldbyName('RG').asString),' ',20);
         end
      else
         begin
         mLinha_Grava:=mLinha_Grava+'J';
         mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('CGC').asString,'0',14);
         mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('RAZSOC').asString,' ',40);
         if fsonumero(DM1.Query1.fieldbyName('IE').asString)=0 then
            mLinha_Grava:=mLinha_Grava+insere2(' ',' ',20)
         else
            mLinha_Grava:=mLinha_Grava+insere(fdeixanum(DM1.Query1.fieldbyName('IE').asString),' ',20);

         end;

      mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('CIDADE').asString,' ',25);
      mLinha_Grava:=mLinha_Grava+insere(DM1.Query1.fieldbyName('UF').asString,' ',02);
      mLinha_Grava:=mLinha_Grava+insere('BRASIL',' ',20);
      mStringData:=fBuscarValor(11,mLinha_ler);
      if fsonumero(mStringData)=0 then
         mDataCalc:=pDatanula
      else
         begin
         try
            mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
         except
            mDataCalc:=pdatanula;
            end;
         end;

      if not flcadne(6
         ,mCodigo // CODIGO
         ,fBuscarValor(09,mLinha_ler) // numero
         ,trim(fBuscarValor(07,mLinha_ler)) // serie do documento
         ,trim(fBuscarValor(08,mLinha_ler)) // sub serie do documento
         ,'' // modelo do documento
         ,FormatDateTime(fdt,mDataCalc)
         ,'') then

         begin
         memo_erros_nossoProg.Lines.Add('Erro ao Localizar Conhecimento de Frete Numero '+fBuscarValor(09,mLInha_ler)
         +' Data: '+FormatDateTime(fdt2, mDataCalc)
         +' Valor: '+FormatFloat(mcasas, ValFloat(fBuscarValor(15,mLInha_ler)))   );
         Continue;
         end;
      mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_NENECFO.AsString,'0',04);
      mLinha_Grava:=mLinha_Grava+insere(' ',' ',05); // tipo de pagamento
      mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_NENECFO.AsString,'0',04);
      mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NENEMODELO.AsString,' ',02);
      mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NENEFRETEPC.AsString,'0',01); // 16 modalidade do frete
      mLinha_Grava:=mLinha_Grava+insere2('0','0',14); // 17 CNPJ do Remetente
      mLinha_Grava:=mLinha_Grava+insere2(' ',' ',02); // 18 UF do Remetente
      mLinha_Grava:=mLinha_Grava+insere2('0','0',07); // 19 Codigo do Municipio da Carca

      mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_EmpCGC.AsString,'0',14); // 20 CNPJ do destinatario
      mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_EmpUF.AsString,'0',02); // 21 UF do destinatario
      mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_Empcodloc_ibge.AsString,'0',07); // 22 CNPJ do destinatario

      mLinha_Grava:=mLinha_Grava+insere2('0','0',14); // 23 CNPJ do Consignatario
      mLinha_Grava:=mLinha_Grava+insere2(' ',' ',02); // 24  UF do Consignatario

      mLinha_Grava:=mLinha_Grava+insere2(FormatDateTime('yymmdd', DM1.Tb_NENEDTEMIS.AsDateTime),'0',08); // 25 Data de Emissao
      mLinha_Grava:=mLinha_Grava+insere2(FormatDateTime('yymmdd', DM1.Tb_NENEDTENT.AsDateTime),'0',08); // 26 Data de Entrada

      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENETOTNOT.AsFloat*100),'0',14); // 27 valor total

      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEBASEN.AsFloat*100),'0',14); // 28 Base icms   1
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 29 Base icms 2
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 30 Base icms 3
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 31 Base icms 4
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 32 Base icms 5

      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEALIQ_FRETE.AsFloat*100),'0',05); // 33 Aliquota Frete 1
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 34 Aliquota Frete 2
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 35 Aliquota Frete 3
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 36 Aliquota Frete 4
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 37 Aliquota Frete 5
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 38 Espaço Reservado


      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEISENTAS.AsFloat*100),'0',14); // 39 isentas
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTDESP.AsFloat*100),'0',14); // 40 outras
      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 41 parcela reduzida

      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTNINC.AsFloat*100),'0',14); // 42  NAO TRIBUTADAS

      mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEICMSR.AsFloat*100),'0',14); // 43  Substiruicao tributaria

      mLinha_Grava:=mLinha_Grava+insere2(' ',' ',20); // 44 observacoes
      mLinha_Grava:=mLinha_Grava+'N'; // 45 CTRC A VISTA
      end;
   end;

if trim(mLinha_Grava)<>'' then
   begin
   if length(mLinha_Grava)<>448 then
      begin
      memo_erros_nossoProg.Lines.Add('Registro CF: Tamanho Esperado: 448 Tamanho Escrito: '+IntToStr(length(mlinha_grava)));
      memo_erros_nossoProg.Lines.Add(mLinha_Grava);
      end;
   Writeln(f_Grava,mLinha_Grava);
   mLinha_Grava:='';
   end;

end;




function tFrm_SPED_EFD.fExportarBlocoC(ptipo: Integer): Boolean;
var
mCodigo: String;
mtipo: String;
mStringData: String;
mDataCalc: TDateTime;
x,mQtdIPI,mQtdBase: Integer;
mValorCalc: Real;
mLinha_Item: String;
mCnpj_Doc,mIE_Dod: String;
begin
reset(f_ler);
mLinha_Grava:='';

While not  eof(f_ler) do
   begin
   readln(f_ler,mlinha_ler);
   if copy(mlinha_ler,2,4)='C100' then
      begin
      if trim(mLinha_Grava)<>'' then
         begin
         if length(mLinha_Grava)<>624 then
            begin
            memo_erros_nossoProg.Lines.Add('Registro NFE: Tamanho Esperado: 624 Tamanho Escrito: '+IntToStr(length(mlinha_grava)));
            memo_erros_nossoProg.Lines.Add(mLinha_Grava);
            end;
         Writeln(f_Grava,mLinha_Grava);
         mLinha_Grava:='';
         end;
      mLinha_Grava:=mLinha_Grava+insere2('NF',' ',10);  // 01 dentificacao
      mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(07,mLinha_ler),' ',03); // 02 serie
      mLinha_Grava:=mLinha_Grava+insere2(' ',' ',04); // 03 espaco Reservado
      mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(08,mLinha_ler),'0',09);  // 04 numero da nf
      mtipo:=fBuscarValor(04,mLinha_ler);
      mcodigo:=copy(mtipo,2,length(mtipo)-1);
      mtipo:=copy(mtipo,1,1);
      if mtipo='F' then
         begin
         flqr1('FRAZAO AS RAZSOC,FIE AS IE, FCGC AS CNPJ, FCIDADE AS CIDADE, FUF AS UF,0 AS CPF, '+chr(39)+' '+chr(39)+' as RG ','F','CADFOR','N','FCODFOR',mCodigo);
         end
      else
         begin
         flqr1('CRAZAO AS RAZSOC,CIE AS IE, CCNPJ AS CNPJ, CCIDADE AS CIDADE, CUF AS UF,CCPF AS CPF, CRG as RG','C','CADCLI','N','CCODCLI',mCodigo);
         end;

      if DM1.Query1.fieldbyName('CNPJ').AsFloat=0 then
         begin
         mCnpj_Doc:=insere(DM1.Query1.fieldbyName('CPF').asString,'0',14);   // 06 cpf do sacado
         mLinha_Grava:=mLinha_Grava+'F'; // 05 tipo de pessoa
         mLinha_Grava:=mLinha_Grava+mCnpj_Doc;   // 06 cpf do sacado
         mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('RAZSOC').asString,' ',40); // 07 razao social
         if fsonumero(DM1.Query1.fieldbyName('RG').asString)=0 then
            mLinha_Grava:=mLinha_Grava+insere2(' ',' ',20)         //  08 ie
         else
            mLinha_Grava:=mLinha_Grava+insere(fdeixanum(DM1.Query1.fieldbyName('RG').asString),' ',20); //  08 ie
         end
      else
         begin
         mCnpj_Doc:=insere(DM1.Query1.fieldbyName('CNPJ').asString,'0',14);
         mLinha_Grava:=mLinha_Grava+'J'; // 05 tipo de pessoa
         mLinha_Grava:=mLinha_Grava+mCnpj_Doc; // 06 cpf do sacado
         mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('RAZSOC').asString,' ',40);  // 07 razao social
         if fsonumero(DM1.Query1.fieldbyName('IE').asString)=0 then
            mLinha_Grava:=mLinha_Grava+insere2(' ',' ',20) //  08 ie
         else
            mLinha_Grava:=mLinha_Grava+insere2(fdeixanum(DM1.Query1.fieldbyName('IE').asString),' ',20); //  08 ie

         end;

      mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('CIDADE').asString,' ',25); // 09 cidade
      mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('UF').asString,' ',02); // 10 uf

      if valint(fBuscarValor(03,mLinha_ler))=1 then
         begin
         mStringData:=fBuscarValor(10,mLinha_ler);
         if fsonumero(mStringData)=0 then
            mDataCalc:=pDatanula
         else
            begin
           try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;

         if not flcadne(6
            ,mCodigo // CODIGO
            ,fBuscarValor(08,mLinha_ler) // numero
            ,trim(fBuscarValor(07,mLinha_ler)) // serie do documento
            ,'' // sub serie do documento
            ,'' // modelo do documento
            ,FormatDateTime(fdt,mDataCalc)
            ,'') then
            begin
            memo_erros_nossoProg.Lines.Add('Erro ao Localizar Nota de Entrada Numero '+fBuscarValor(08,mLInha_ler)
            +' Data: '+FormatDateTime(fdt2, mDataCalc)
            +' Valor: '+FormatFloat(mcasas, ValFloat(fBuscarValor(15,mLInha_ler)))   );
            Continue;
            end;
         mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_NENECFO.AsString,'0',04);  // 11 cfop
         mLinha_Grava:=mLinha_Grava+insere('0','0',05); // 12 tipo de pagamento
         mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NENENFE_CHAVE.AsString,' ',44); // 13 chve nfe
         mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NENEMODELO.AsString,' ',02); // 14 modelo
         mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(03 ,mLinha_ler),' ',01); // 15 indicador de emitente
         mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(06 ,mLinha_ler),'0',02); // 16 codigo da Situacao

         mStringData:=fBuscarValor(10,mLinha_ler);
         if fsonumero(mStringData)=0 then
            mDataCalc:=pDatanula
         else
            begin
            try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;
         mLinha_Grava:=mLinha_Grava+FormatDatetime('yymmdd', mdataCalc); // 17 Data de Emissão


         mStringData:=fBuscarValor(11,mLinha_ler);
         if fsonumero(mStringData)=0 then
            mDataCalc:=pDatanula
         else
            begin
            try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;
         mLinha_Grava:=mLinha_Grava+FormatDatetime('yymmdd', mdataCalc); // 18 Data de Entrada/Saida
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENETOTNOT.AsFloat*100),'0',14); // 19 valor documento
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENETOTDES.AsFloat*100),'0',14); // 20 valor do desconto
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTRAS.AsFloat*100),'0',14); // 21 valor do abatimento
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENETOTMER.AsFloat*100),'0',14); // 22 valor das mercadorias
         if DM1.Tb_NENEFRETE.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere2('9','0',01) // 23 indicador do tipo de frete
         else
            mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NENEFRETEPC.AsString,'0',01); // 23 indicador do tipo de frete
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEFRETE.AsFloat*100),'0',14); // 24 valor do frete
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENESEG.AsFloat*100),'0',14); // 25 valor do seguro
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTNINC.AsFloat*100),'0',14); // 26 valor de outras despesas
{         if Application.MessageBox(pchar('Valor Esperado 297: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
            begin
            result:=false;
            exit;
            end;
}
         mQtdBase:=0;
         if DM1.Tb_NENECHAVEP.AsFloat=0 then
            begin
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEBASEN.AsFloat*100),'0',14); // 27 base de icms 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 28 Base icms 2
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 29 Base icms 3
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 30 Base icms 4
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 31 Base icms 5
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 32 Base icms 6

            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEALIQ.AsFloat*100),'0',05); // 32 base de icms 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 33 aliquota 2
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 34 aliquota 3
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 35 aliquota 4
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 36 aliquota 5
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 37 aliquota 6
            mQtdBase:=6;
            end
         else
            begin
            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('SELECT sum(PF2BASEN) AS BCICMS,'
                              +' sum(PF2ICMSN) AS VLICMS,PF2ALIQ AS ALIQICMS FROM CADPF2 '
                               +' where PF2CHAVE=:CHAVE '
                               +' and PF2CODEMP=:CODEMP '
                               +' Group by PF2ALIQ ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NENECHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NENECODEMP.AsFloat;
            try
               DM1.Query2.Open;
            except
               end;

            mQtdBase:=0;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('BCICMS').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdBase<6 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('BCICMS').AsFloat*100),'0',14); // 27 base de icms
               mQtdBase:=mQtdBase+1;
               DM1.Query2.Next;
               end;

            mQtdBase:=0;
            DM1.Query2.First;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('BCICMS').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdBase<6 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQICMS').AsFloat*100),'0',05); // icms
               mQtdBase:=mQtdBase+1;
               DM1.Query2.Next;
               end;
            mQtdBase:=mqtdbase+1;
            for x:=mQtdBase to 6 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 27 base de icms
               end;

            for x:=mQtdBase to 6 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQICMS').AsFloat*100),'0',05); // icms
               end;
{
            if Application.MessageBox(pchar('Valor Esperado 411: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
               begin
               result:=false;
               exit;
               end;
 }

            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(0,'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO' ,'PF2CODPRO');

            DM1.Query4.close;
            DM1.Query4.SQL.Clear;
            DM1.Query4.SQL.Add('SELECT pf2aliq AS ALIQICMS,PF2ICMSN AS ICMSN '
                              +' ,PF2ICMSR AS ICMSST '
                              +' ,PF2BASER AS BCICMSST ,DECODE(PF2ICMSR,0,0,(PF2ICMSR*100)/PF2BASER) AS ALIQICMSST '
                              +',DECODE(PF2IPI,0,0, (PF2QTDP*PF2PU)) AS BASEIPI '
                              +',pf2ALIPI as ALIPI,pF2ipi as valipi '
                              +',0 AS CSTPIS '
                              +',0 AS BASEPIS_QTD '
                              +' ,0 as BASEPIS_REAIS '
                              +',0 AS ALIQPIS_REAIS '
                              +',0 AS VALORPIS_REAIS '
                              +',0 AS ALIQPIS_QTD '
                              +',0 AS VALORPIS_QTD '
                              +',0 as CSTCOFINS'
                              +',0 as  BASECOFINS_QTD '
                              +' ,0 as BASECOFINS_REAIS '
                              +',0 AS ALIQCOFINS_REAIS '
                              +',0 AS VALORCOFINS_REAIS '
                              +',0 AS ALIQCOFINS_QTD '
                              +',0 AS VALORCOFINS_QTD '
                              +', PF2ITEM AS ITEM,PF2CODPRO AS CODPRO, PF2QTDP AS QTD, '
                              +'(PF2QTDP*PF2PU) AS VLRTOT   '
                              +',PF2TOTDES AS VLRDESC,PF2SIT AS CST,PF2CFO AS CFOP '
                              +', '+chr(39)+' '+chr(39)+' as DESC_COMP '
                              +',PDUND AS UNDVDA '
                              +',PF2BASEN AS BASEN '
                              +' FROM CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                              +' PF2CHAVE=:CHAVE '
                              +' and PF2CODEMP=:CODEMP ');
//                              +' Group by PF2ALIQ ');
            DM1.Query4.ParamByName('CHAVE').AsFloat:=DM1.Tb_NENECHAVEP.AsFloat;
            DM1.Query4.ParamByName('CODEMP').AsFloat:=DM1.Tb_NENECODEMP.AsFloat;
            try
               DM1.Query4.Open;
            except
               end;
            While not DM1.Query4.Eof do
               begin
               mLinha_Item:=insere2('ITEM_DOC',' ',10);
               mLinha_Item:=mLinha_Item+insere(fBuscarValor(07,mLinha_ler),' ',03); // 02 serie
               mLinha_Item:=mLinha_Item+insere(' ',' ',04); // 03 espaco Reservado
               mLinha_Item:=mLinha_Item+insere(fBuscarValor(08,mLinha_ler),'0',09);  // 04 numero da nf
               mLinha_Item:=mLinha_Item+mCnpj_Doc;  // 05 numero do cnpj
               mLinha_Item:=mLinha_Item+Insere(DM1.Query4.FieldbyName('ITEM').AsString,'0',03);  // 06 numero do cnpj
               mLinha_Item:=mLinha_Item+Insere2(DM1.Query4.FieldbyName('CODPRO').AsString,' ',10);  // 07 Código do Produto
               mLinha_Item:=mLinha_Item+Insere2(DM1.Query4.FieldbyName('DESC_COMP').AsString,' ',150);  // 08 Descricao complementar
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.fieldbyName('QTD').AsFloat*10000),'0',15); // 09 quantidade do item
               mLinha_Item:=mLinha_Item+Insere2(DM1.Query4.FieldbyName('UNDVDA').AsString,' ',03);  // 10 UNIDADE DE VENDA
               mLinha_Item:=mLinha_Item+insere(' ',' ',03); // 11 espaco Reservado
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('VLRTOT').AsFloat*100),'0',14); // 12 VALOR TOTAL DO ITEM
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('VLRDESC').AsFloat*100),'0',14); // 13 valor do desconto
               mLinha_Item:=mLinha_Item+insere('0','0',1); // 14 Movimentação Fisica 0-Sim 1-Nao
               mLinha_Item:=mLinha_Item+insere(DM1.Query4.FieldByName('CST').AsString,'0',03); // 15 codigo CST
               mLinha_Item:=mLinha_Item+insere(DM1.Query4.FieldByName('CFOP').AsString,'0',04); // 16 CFOP - Codigo Fiscal
               mLinha_Item:=mLinha_Item+insere('0','0',05); // 17 Codigo do Pgto indicado pelo contador
               mLinha_Item:=mLinha_Item+insere(' ',' ',10); // 18 Codigo da Natureza da Operacao
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASEN').AsFloat*100),'0',14); // 19 base de calculo

               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQICMS').AsFloat*100),'0',06); // 20 aliquota de icms
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ICMSN').AsFloat*100),'0',14); // 21 valor do icms
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BCICMSST').AsFloat*100),'0',14); // 22 base de calculo
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQICMSST').AsFloat*100),'0',05); // 23 aliquota de ICMS ST

               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ICMSST').AsFloat*100),'0',14); // 24 valor do icms st

               mLinha_Item:=mLinha_Item+insere('0','0',01); // 25 Valor da apuração do icms
               mLinha_Item:=mLinha_Item+insere('99','0',02); // 26 Codigo ST IPI tabela 4.3.2

               mLinha_Item:=mLinha_Item+insere('999','0',03); // 27 Codigo ST IPI tabela 4.5.3
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASEIPI').AsFloat*100),'0',14); // 28 valor do icms st
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIPI').AsFloat*100),'0',05); // 29 Aliquota do IPI
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('VALIPI').AsFloat*100),'0',14); // 30 Valor do IPI


               mLinha_Item:=mLinha_Item+insere(FormatFloat('00', DM1.Query4.Fieldbyname('CSTPIS').AsFloat*100),'0',02); // 31 Codigo ST PIS tabela 4.3.2
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASEPIS_QTD').AsFloat*100),'0',14); // 32 BASE DO PIS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQPIS_QTD').AsFloat*100),'0',05); // 33 ALIQUOTA PIS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASEPIS_REAIS').AsFloat*100),'0',14); // 34 BASE PIS QUANTIDADE
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQPIS_REAIS').AsFloat*100),'0',14); // 35 ALIQUOTA PIS EM REAIS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('VALORPIS_REAIS').AsFloat*100),'0',14); // 36 VALOR PIS REAIS

               mLinha_Item:=mLinha_Item+insere(FormatFloat('00', DM1.Query4.Fieldbyname('CSTCOFINS').AsFloat*100),'0',02); // 37 Codigo ST COFINS tabela 4.3.2
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASECOFINS_QTD').AsFloat*100),'0',14); // 38 BASE DO COFINS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQCOFINS_QTD').AsFloat*100),'0',05); // 39 ALIQUOTA COFINS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('BASECOFINS_REAIS').AsFloat*100),'0',14); // 40 BASE COFINS QUANTIDADE
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('ALIQCOFINS_REAIS').AsFloat*100),'0',14); // 41 ALIQUOTA COFINS EM REAIS
               mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query4.Fieldbyname('VALORCOFINS_REAIS').AsFloat*100),'0',14); // 42 VALOR COFINS REAIS
               Memo_Itens.Lines.Add(mlinha_item);

               mLinha_Item:='';
               DM1.Query4.Next;
               end;
// inicio fatura


            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(0,'CADCCU','CCCODEMP','CACODEMP','CCCODCCU','CACODCC');

            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('Select '+chr(39)+'P'+chr(39)+' AS TIPODUP, '
                              +' CADTEMIS AS DTEMIS, '
                              +' CADTVCTO AS DTVCTO, '
                              +' CADTPAG AS DTPAG, '
                              +' CAVALOR AS VALDUP, '
                              +' CANUMERO AS NUMDUP, '
                              +' CADESD AS DESD, '
                              +' CAQTDPARC AS QTDPARC, '
                              +' CANUMPARC AS NUMPARC, '
                              +' CAVALPAG AS VALPAG, '
                              +' CAJUROS AS JUROS, '
                              +' CADESC AS DESCONTO '
                              +' ,CCEXP_CODCTA_DEB AS CODCTA_DEB '
                              +' ,CCEXP_CODHIST_DEB AS CODHIST_DEB '
                              +' ,CCEXP_CODCCU_DEB AS CODCCU_DEB '
                              +' ,CCEXP_CODCTA_CRED AS CODCTA_CRED '
                              +' ,CCEXP_CODHIST_CRED AS CODHIST_CRED '
                              +' ,CCEXP_CODCCU_CRED AS CODCCU_CRED '
                              +' FROM CADDAP '+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                              +' CACHAVEP=:CHAVE '
                              +' and CACODEMP=:CODEMP '
                              +' order by QTDPARC ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NENECHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NENECODEMP.AsFloat;

            try
               DM1.Query2.Open;
            except
               end;
            if DM1.Query2.IsEmpty then
               begin
               While not DM1.Query2.Eof do
                  begin
                  mLinha_Item:=insere('DUPL_PARC',' ',10); // 01 IDENTIFICACAO
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('TIPODUP').AsString,' ',1); // 02 TIPO DOC
                  mLinha_Item:=mLinha_Item+mCnpj_Doc; // 03 CNPJ
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('NUMPARC').AsString,'0',06); // 04 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('NUMDOC').AsString+'-'+DM1.Query2.fieldbyName('DESD').AsString,' ',09); // 05 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Tb_NENEDTEMIS.Value); // 06 Data de Emissao
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTVCTO').AsDateTime); // 07 Data de Vencimento
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Tb_NENETOTNOT.AsFloat*100),'0',14); // 08 Valor Total
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 09 VALOR DA DUPLICATA
                  Memo_Reg6_1.Lines.Add(mLinha_Item);
                  mLinha_Item:='';
                  DM1.Query2.Next;
                  end;
               DM1.Query2.First;
               While not DM1.Query2.Eof do
                  begin
                  if DM1.Query2.FieldByName('VALPAG').AsFloat>=DM1.Query2.FieldByName('VALDUP').AsFloat then
                     begin
                     DM1.Query2.Next;
                     Continue;
                     end;

                  mLinha_Item:=insere('DUPL_BAIXA',' ',10); // 01 IDENTIFICACAO
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('TIPODUP').AsString,' ',1); // 02 TIPO DOC
                  mLinha_Item:=mLinha_Item+mCnpj_Doc; // 03 CNPJ
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('NUMPARC').AsString,'0',06); // 04 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('NUMDOC').AsString+'-'+DM1.Query2.fieldbyName('DESD').AsString,' ',09); // 05 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere('0','0',06); // 06 NUMERO DA baixa
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTPAG').Value); // 07 Data de Pagamento
                  mLinha_Item:=mLinha_Item+insere('01','0',02); // 08 Tipo da Baixa
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 09 VALOR baixado a ser debitado
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCTA_DEB').AsString,'0',30); // 10 conta contabil DEBITO
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODHIST_DEB').AsString,'0',05); // 11 CODIGO DO HISTORICO PADRAO PARA DEBITO
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 12 VALOR baixado a ser creditado
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCTA_CRED').AsString,' ',30); // 13 conta contabil CREDITO
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODHIST_CRED').AsString,'0',05); // 14 CODIGO DO HISTORICO PADRAO PARA CREDITO
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCCU_DEB').AsString,'0',05); // 15 Centro de custo a ser debitado
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCCU_CRED').AsString,'0',05); // 16 Centro de custo a ser credito
                  Memo_Reg6_2.Lines.Add(mLinha_Item);
                  mLinha_Item:='';
                  DM1.Query2.Next;
                  end;


               end;

// termino fatura

            if (DM1.Tb_NENEICMSN.AsFloat>0) then
               begin
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select sum(PF2BASEN) as BCICMS, '
                                 +' sum(PF2ICMSN) as ICMSN,PF2ALIQ AS ALIQ,PF2CFO AS CFOP '
                                 +' FROM CADPF2 where '
                                 +' PF2CHAVE=:CHAVE '
                                 +' and PF2CODEMP=:CODEMP '
                                 +' Group by PF2CFO,PF2ALIQ ');
               DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NENECHAVEP.AsFloat;
               DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NENECODEMP.AsFloat;
               try
                  DM1.query2.Open;
               except
                  end;
               While not DM1.query2.Eof do
                  begin
                  mLinha_Item:=insere('DIF_ALIQ',' ',10); // 01
                  mLinha_Item:=mLinha_Item+insere(fBuscarValor(07,mLinha_ler),' ',03); // 02 serie
                  mLinha_Item:=mLinha_Item+insere(' ',' ',04); // 03 espaco Reservado
                  mLinha_Item:=mLinha_Item+insere(fBuscarValor(08,mLinha_ler),'0',09);  // 04 numero da nf
                  mLinha_Item:=mLinha_Item+mCnpj_Doc;  // 05 numero do cnpj
                  mLinha_Item:=mLinha_Item+Insere(DM1.Query2.FieldbyName('CFOP').AsString,'0',04);  // 06 CFOP
                  mLinha_Item:=mLinha_Item+Insere('0','0',05);  // 07 indicador de tipo de pagamento
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('BCICMS').AsFloat*100),'0',14); // 8 Base de calculo do ICMS
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('ALIQ').AsFloat*100),'0',14); // 9 Aliquota icms
                  Memo_EntAliq.Lines.Add(mLinha_Item);
                  mLinha_Item:='';
                  DM1.Query2.Next;
                  end;
               end;
// termino
            end;


         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEBASER.AsFloat*100),'0',14); // 39 Base ICMS ST
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEICMSR.AsFloat*100),'0',14); // 40 Base ICMS ST

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',09); // 41 Numero NF Devolução

         mLinha_Grava:=mLinha_Grava+insere(' ',' ',05); // 42 Espaço Reservado

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEISENTAS.AsFloat*100),'0',14); // 43 Isentas
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTNINC.AsFloat*100),'0',14); // 44 outras nao incidente (reducao de icms)

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NENEOUTRAS.AsFloat*100),'0',14); // 45 Outras com incidencia

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 46 Outras


{
         if Application.MessageBox(pchar('Valor Esperado 509: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
            begin
            result:=false;
            exit;
            end;

  }
         mQtdIPI:=0;
         if DM1.Tb_NENECHAVEP.AsFloat=0 then
            begin
            mValorCalc:=Arredonda( ( (DM1.Tb_NENEIPI.AsFloat*100) / (DM1.Tb_NENETOTNOT.AsFloat-
                                                        (DM1.Tb_NENEIPI.AsFloat+DM1.Tb_NENEFRETE.AsFloat+DM1.Tb_NENEICMSR.AsFloat)
                                                        )),0);
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',
                (DM1.Tb_NENETOTNOT.AsFloat-
                (DM1.Tb_NENEIPI.AsFloat+DM1.Tb_NENEFRETE.AsFloat+DM1.Tb_NENEICMSR.AsFloat) )*100),'0',14); // 47 base de ipi 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 48 base do ipi 2

            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', mValorCalc),'0',05); // 49 aliquota 1 de ipi

            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 50 aliquota 2 de ipi
            mQtdIPI:=2;
            end
         else
            begin
            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('SELECT sum(DECODE(PF2IPI,0,0,(PF2QTDP*PF2PU))) AS BCIPI,sum(PF2IPI)  AS VLIPI,PF2ALIPI AS ALIQIPI '
                              +' FROM CADPF2 '
                               +' where PF2CHAVE=:CHAVE '
                               +' and PF2CODEMP=:CODEMP '
                               +' GROUP BY PF2ALIPI ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NENECHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NENECODEMP.AsFloat;
            try
               DM1.Query2.Open;
            except
               end;
            mQtdIPI:=0;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('VLIPI').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdIPI<2 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('BCIPI').AsFloat*100),'0',14); // 47 base de IPI
               mQtdIPI:=mQtdIPI+1;
               DM1.Query2.Next;
               end;

            mQtdIPI:=0;
            DM1.Query2.First;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('VLIPI').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdIPI<2 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQIPI').AsFloat*100),'0',05); // ALIQUOTA DE IPI
               mQtdIPI:=mQtdIPI+1;
               DM1.Query2.Next;
               end;
             mQtdIPI:=mQtdIPI+1;

            for x:=mQtdIPI to 2 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 47 base de IPI
               end;
            for x:=mQtdIPI to 2 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQIPI').AsFloat*100),'0',05); // 49 icms
               end;
            end;
{
         if Application.MessageBox(pchar('Valor Esperado 547: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
            begin
            result:=false;
            exit;
            end;

}
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',DM1.Tb_NENEVL_PIS.AsFloat),'0',14); // 51 valor do PIS
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',DM1.Tb_NENEVL_COFINS.AsFloat),'0',14); // 52 valor do cOFINS

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',14); // 53 valor do PIS retido ST
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',14); // 54 valor do cOFINS Retido ST

         mLinha_Grava:=mLinha_Grava+insere(' ',' ',20); // 55 Observações
         if DM1.Tb_NENECHAVEP.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere('N',' ',01) // 56 NF a vista
         else
            mLinha_Grava:=mLinha_Grava+insere('S',' ',01); // 56 NF com duplicata ja emitida
         end
      else // se nota de saida
         begin
         mStringData:=fBuscarValor(10,mLinha_ler);


         if fsonumero(mStringData)=0 then
            begin
            mLinha_Grava:='';
            Continue;
            mDataCalc:=pDatanula
            end
         else
            begin
            try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;


         DM1.Tb_NS.Close;
         DM1.Tb_NS.SQL.Clear;
         DM1.Tb_NS.SQL.add('Select * from CADNS where NSCODEMP=0'+IntToStr(codemp)
                       +' and NSNUMERO=0'+trim(fBuscarValor(08,mLinha_ler))
                       +' and NSSERIE='+trim(fBuscarValor(07,mLinha_ler))
                       +' and NSDTEMIS='+chr(39)+FormatDateTime(fdt, mDataCalc)+chr(39));
         DM1.Tb_Ns.sql.savetofile('c:\sql.txt');
         DM1.Tb_Ns.Open;
         if DM1.Tb_Ns.IsEmpty then
            begin
            if Application.MessageBox(pchar('REGISTRO NAO ENCONTRADO'),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
               begin
               result:=false;
               exit;
               end;


            memo_erros_nossoProg.Lines.Add('Erro ao Localizar Nota de Saida Numero '+fBuscarValor(08,mLInha_ler)
            +' Data: '+FormatDateTime(fdt2, mDataCalc)
            +' Valor: '+FormatFloat(mcasas, ValFloat(fBuscarValor(15,mLInha_ler)))   );
            Continue;
            end;
         if DM1.Tb_NsNSCHAVEP.AsFloat>0 then
            begin
            flcadp01(0,DM1.Tb_NsNSCODEMP.AsInteger,DM1.Tb_NsNSLOTSEQ_CP.AsInteger,
                     DM1.Tb_NsNSCHAVEP.AsString,'');
            end;

         mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_NsNSCFO1.AsString,'0',04);  // 11 cfop
         mLinha_Grava:=mLinha_Grava+insere('0','0',05); // 12 tipo de pagamento
         mLinha_Grava:=mLinha_Grava+insere(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString+DM1.Tb_NsNSNFE_DCHAVEACESSO.AsString,' ',44); // 13 chve nfe
         mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NsNSMODELO.AsString,' ',02); // 14 modelo
         mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(03 ,mLinha_ler),' ',01); // 15 indicador de emitente
         mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(06 ,mLinha_ler),'0',02); // 16 codigo da Situacao

         mStringData:=fBuscarValor(10,mLinha_ler);
         if fsonumero(mStringData)=0 then
            mDataCalc:=pDatanula
         else
            begin
            try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;
         mLinha_Grava:=mLinha_Grava+FormatDatetime('yymmdd', mdataCalc); // 17 Data de Emissão


         mStringData:=fBuscarValor(11,mLinha_ler);
         if fsonumero(mStringData)=0 then
            mDataCalc:=pDatanula
         else
            begin
            try
               mDataCalc:=StrtoDateTime(copy(mStringData,1,2)+'/'+copy(mStringData,3,2)+'/'+copy(mStringData,05,04));
            except
               mDataCalc:=pdatanula;
               end;
            end;
         mLinha_Grava:=mLinha_Grava+FormatDatetime('yymmdd', mdataCalc); // 18 Data de Entrada/Saida
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTOTNOTA.AsFloat*100),'0',14); // 19 valor documento
         if DM1.Tb_NsNSCHAVEP.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14) // 20 valor do desconto
         else
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1TOTDES.AsFloat*100),'0',14); // 20 valor do desconto
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTOTOUT.AsFloat*100),'0',14); // 21 valor do abatimento
         if DM1.Tb_NsNSCHAVEP.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1TOTALB.AsFloat*100),'0',14) // 22 valor das mercadorias
         else
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTOTNOTA.AsFloat*100),'0',14); // 22 valor das mercadorias
         if DM1.Tb_NsNSFRETEPC.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere2('9','0',01) // 23 indicador do tipo de frete
         else
            mLinha_Grava:=mLinha_Grava+insere2(DM1.Tb_NsNSFRETEPC.AsString,'0',01); // 23 indicador do tipo de frete
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSFRETE.AsFloat*100),'0',14); // 24 valor do frete
         if DM1.Tb_NsNSFRETEPC.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14) // 25 valor do seguro
         else
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1VALSEG.AsFloat*100),'0',14); // 25 valor do seguro
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1TOTOUT.AsFloat*100),'0',14); // 26 valor de outras despesas
         mQtdBase:=0;
         if DM1.Tb_NsNSCHAVEP.AsFloat=0 then
            begin
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1BASEN.AsFloat*100),'0',14); // 27 base de icms 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 28 Base icms 2
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 29 Base icms 3
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 30 Base icms 4
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 31 Base icms 5
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 32 Base icms 6
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSALIQ.AsFloat*100),'0',05); // 32 base de icms 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 33 aliquota 2
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 34 aliquota 3
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 35 aliquota 4
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 36 aliquota 5
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 37 aliquota 6
            mQtdBase:=6;
            end
         else
            begin
            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('SELECT sum(P2BASEN) AS BCICMS, '
                              +' sum(P2ICMSN) AS VLICMS,P2ALIQ AS ALIQICMS FROM CADP02 '
                              +' where  P2CHAVE=:CHAVE '
                               +' and P2CODEMP=:CODEMP '
                               +' and P2BASEN>0 '
                               +' Group by P2ALIQ ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NsNSCHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NsNSCODEMP.AsFloat;
            try
               DM1.Query2.Open;
            except
               end;
            mQtdBase:=0;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('BCICMS').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdBase<6 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('BCICMS').AsFloat*100),'0',14); // 27 base de icms
               mQtdBase:=mQtdBase+1;
               DM1.Query2.Next;
               end;

            mQtdBase:=0;
            DM1.Query2.First;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('BCICMS').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdBase<6 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQICMS').AsFloat*100),'0',05); // icms
               mQtdBase:=mQtdBase+1;
               DM1.Query2.Next;
               end;
            mQtdBase:=mqtdbase+1;
            for x:=mQtdBase to 6 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 27 base de icms
               end;

            for x:=mQtdBase to 6 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQICMS').AsFloat*100),'0',05); // icms
               end;
            end;
{
         if Application.MessageBox(pchar('Valor Esperado 411: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
            begin
            result:=false;
            exit;
            end;
 }
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1BASER.AsFloat*100),'0',14); // 39 Base ICMS ST
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_Ped01P1ICMSR.AsFloat*100),'0',14); // 40 icms st

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',09); // 41 Numero NF Devolução

         mLinha_Grava:=mLinha_Grava+insere(' ',' ',05); // 42 Espaço Reservado

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTOTISEN.AsFloat*100),'0',14); // 43 Isentas
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTARBAN.AsFloat*100),'0',14); // 44 outras nao incidente (reducao de icms)

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Tb_NsNSTOTOUT.AsFloat*100),'0',14); // 45 Outras com incidencia

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 46 Outras


         mQtdIPI:=0;
         if DM1.Tb_NENECHAVEP.AsFloat=0 then
            begin
            mValorCalc:=Arredonda( ( ((DM1.Tb_NsNSIPII.AsFloat+DM1.Tb_NsNSIPIP.AsFloat+DM1.Tb_NsNSIPIN.AsFloat)*100) / (DM1.Tb_NsNSTOTNOTA.AsFloat-
                                                        (DM1.Tb_NsNSIPII.AsFloat+DM1.Tb_NsNSIPIP.AsFloat+DM1.Tb_NsNSIPIN.AsFloat
                                                         +DM1.Tb_NsNSFRETE.AsFloat+DM1.Tb_NsNSICMSRI.AsFloat+DM1.Tb_NsNSICMSRP.AsFloat+DM1.Tb_NsNSICMSRN.AsFloat)
                                                        )),0);
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',
                (DM1.Tb_NsNSTOTNOTA.AsFloat-
                (DM1.Tb_NsNSIPII.AsFloat+DM1.Tb_NsNSIPIP.AsFloat+DM1.Tb_NsNSIPIN.AsFloat+DM1.Tb_NsNSFRETE.AsFloat
                +DM1.Tb_NsNSICMSRI.AsFloat+DM1.Tb_NsNSICMSRP.AsFloat+DM1.Tb_NsNSICMSRN.AsFloat ) )*100),'0',14); // 47 base de ipi 1
            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 48 base do ipi 2

            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', mValorCalc),'0',05); // 49 base de icms 1

            mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',05); // 50 aliquota 2 de ipi
            mQtdIPI:=2;
            end
         else
            begin

// inicio fatura

            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(0,'CADCCU','CCCODEMP','CRCODEMP','CCCODCCU','CRCODCC');

            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('Select '+chr(39)+'R'+chr(39)+' AS TIPODUP, '
                              +' CRDTEMIS AS DTEMIS, '
                              +' CRDTVCTO AS DTVCTO, '
                              +' CRDTPAG AS DTPAG, '
                              +' CRVALOR AS VALDUP, '
                              +' CRNUMERO AS NUMDUP, '
                              +' CRDESD AS DESD, '
                              +' CRQTDPARC AS QTDPARC, '
                              +' CRNUMPARC AS NUMPARC, '
                              +' CRVALPAG AS VALPAG, '
                              +' CRJUROS AS JUROS, '
                              +' CRDESC AS DESCONTO '
                              +' ,CCEXP_CODCTA_DEB AS CODCTA_DEB '
                              +' ,CCEXP_CODHIST_DEB AS CODHIST_DEB '
                              +' ,CCEXP_CODCCU_DEB AS CODCCU_DEB '
                              +' ,CCEXP_CODCTA_CRED AS CODCTA_CRED '
                              +' ,CCEXP_CODHIST_CRED AS CODHIST_CRED '
                              +' ,CCEXP_CODCCU_CRED AS CODCCU_CRED '
                              +' FROM CADDAR  '+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')

                              +' CRNPED=:CHAVE '
                              +' and CRCODEMP=:CODEMP '
                              +' order by QTDPARC ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NsNSCHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NsNSCODEMP.AsFloat;

            try
               DM1.Query2.Open;
            except
               DM1.Query2.sql.savetofile('c:\sql.txt');
               end;
            if DM1.Query2.IsEmpty then
               begin
               While not DM1.Query2.Eof do
                  begin
                  mLinha_Item:=insere('DUPL_PARC',' ',10); // 01 IDENTIFICACAO
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('TIPODUP').AsString,' ',1); // 02 TIPO DOC
                  mLinha_Item:=mLinha_Item+mCnpj_Doc; // 03 CNPJ
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('NUMPARC').AsString,'0',06); // 04 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('NUMDOC').AsString+'-'+DM1.Query2.fieldbyName('DESD').AsString,' ',09); // 05 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Tb_NENEDTEMIS.Value); // 06 Data de Emissao
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTVCTO').AsDateTime); // 07 Data de Vencimento
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Tb_NENETOTNOT.AsFloat*100),'0',14); // 08 Valor Total
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 09 VALOR DA DUPLICATA
                  Memo_Reg6_1.Lines.Add(mLinha_Item);
                  mLinha_Item:='';
                  DM1.Query2.Next;
                  end;
               DM1.Query2.First;
               While not DM1.Query2.Eof do
                  begin
                  if DM1.Query2.FieldByName('VALPAG').AsFloat>=DM1.Query2.FieldByName('VALDUP').AsFloat then
                     begin
                     DM1.Query2.Next;
                     Continue;
                     end;

                  mLinha_Item:=insere('DUPL_BAIXA',' ',10); // 01 IDENTIFICACAO
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('TIPODUP').AsString,' ',1); // 02 TIPO DOC
                  mLinha_Item:=mLinha_Item+mCnpj_Doc; // 03 CNPJ
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('NUMPARC').AsString,'0',06); // 04 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere2(DM1.Query2.fieldbyName('NUMDOC').AsString+'-'+DM1.Query2.fieldbyName('DESD').AsString,' ',09); // 05 NUMERO DA PARCELA
                  mLinha_Item:=mLinha_Item+insere('0','0',06); // 06 NUMERO DA baixa
                  mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTPAG').Value); // 07 Data de Pagamento
                  mLinha_Item:=mLinha_Item+insere('01','0',02); // 08 Tipo da Baixa
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 09 VALOR baixado a ser debitado

                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCTA_DEB').AsString,'0',30); // 10 conta contabil DEBITO
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODHIST_DEB').AsString,'0',05); // 11 CODIGO DO HISTORICO PADRAO PARA DEBITO
                  mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 12 VALOR baixado a ser creditado

                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCTA_CRED').AsString,' ',30); // 13 conta contabil CREDITO
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODHIST_CRED').AsString,'0',05); // 14 CODIGO DO HISTORICO PADRAO PARA CREDITO

                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCCU_DEB').AsString,'0',05); // 15 Centro de custo a ser debitado
                  mLinha_Item:=mLinha_Item+insere(DM1.Query2.fieldbyName('CODCCU_CRED').AsString,'0',05); // 16 Centro de custo a ser credito

                  Memo_Reg6_2.Lines.Add(mLinha_Item);
                  mLinha_Item:='';
                  DM1.Query2.Next;
                  end;


               end;

// termino fatura


            DM1.Query2.close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('SELECT sum(P2QTD*P2PRECO) AS BCIPI, '
                              +'       sum(P2VALIPI) AS VLIPI,P2ALIPI AS ALIQIPI FROM CADP02 '
                               +' where P2CHAVE=:CHAVE '
                               +' and P2CODEMP=:CODEMP '
                               +' GROUP BY P2ALIPI ');
            DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NsNSCHAVEP.AsFloat;
            DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NsNSCODEMP.AsFloat;
            try
               DM1.Query2.Open;
            except
               end;
            mQtdIPI:=0;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('VLIPI').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdIPI<2 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('BCIPI').AsFloat*100),'0',14); // 47 base de IPI
               mQtdIPI:=mQtdIPI+1;
               DM1.Query2.Next;
               end;

            mQtdIPI:=0;
            DM1.Query2.First;
            While not DM1.Query2.Eof do
               begin
               if DM1.Query2.FieldByName('VLIPI').AsFloat<=0 then
                  begin
                  DM1.Query2.Next;
                  Continue;
                  end;
               if mQtdIPI<2 then
                  mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQIPI').AsFloat*100),'0',05); // ALIQUOTA DE IPI
               mQtdIPI:=mQtdIPI+1;
               DM1.Query2.Next;
               end;
            if (DM1.Tb_NsNSICMSRI.AsFloat+DM1.Tb_NsNSICMSRP.AsFloat+DM1.Tb_NsNSICMSRN.AsFloat)>0 then
                begin
                DM1.Query2.Close;
                DM1.Query2.SQL.Clear;
                DM1.Query2.SQL.Add('Select sum(P2ICMSR) as ICMSST, '
                                  +'  sum(P2BASER) as BCISMST '
                                  +',P2ST_ICMDEB AS ALIQDEB '
                                  +',P2ST_IVA AS IVA '
                                  +',P2CFO AS CFOP '
                                  +' FROM CADP02 '
                                  +' where P2CHAVE=:CHAVE '
                                  +' and P2CODEMP=:CODEMP '
                                  +' and P2ICMSR>0 '
                                  +' GROUP BY P2ST_ICMDEB,P2ST_IVA,P2CFO ');

                DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Tb_NsNSCHAVEP.AsFloat;
                DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_NsNSCODEMP.AsFloat;
                DM1.query2.Open;
                While not DM1.query2.Eof do
                   begin
                   mLinha_Item:=insere('S_ICMS_RET',' ',10);
                   mLinha_Item:=mLinha_Item+insere(fBuscarValor(07,mLinha_ler),' ',03); // 02 serie
                   mLinha_Item:=mLinha_Item+insere(' ',' ',04); // 03 espaco Reservado
                   mLinha_Item:=mLinha_Item+insere(fBuscarValor(08,mLinha_ler),'0',09);  // 04 numero da nf
                   mLinha_Item:=mLinha_Item+mCnpj_Doc;  // 05 numero do cnpj
                   mLinha_Item:=mLinha_Item+Insere(DM1.Query1.FieldbyName('CFOP').AsString,'0',04);  // 06 CFOP
                   mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('BCICMSST').AsFloat*100),'0',14); // 7 Base de calculo do ST
                   mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('ALIQDEB').AsFloat*100),'0',05); // 8 Aliquota icms debito
                   mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('IVA').AsFloat*100),'0',05); // 9 iva
                   mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.FieldbyName('ICMSST').AsFloat*100),'0',14); // 8 Valor do Icms st
                   Memo_Itens.Lines.Add(mLinha_Item);
                   mLinha_Item:='';
                   DM1.Query2.Next;
                   end;



                end;
            mQtdIPI:=mQtdIPI+1;
            for x:=mQtdIPI to 2 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', 0),'0',14); // 47 base de IPI
               end;

            for x:=mQtdIPI to 2 do
               begin
               mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000', DM1.Query2.fieldbyName('ALIQIPI').AsFloat*100),'0',05); // 49 icms
               end;
            end;
{
         if Application.MessageBox(pchar('Valor Esperado 547: VALOR do Item: '+IntToStr(Length(mLinha_Grava))),'',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
            begin
            result:=false;
            exit;
            end;

}

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',DM1.Tb_Ped01P1TOTPIS.AsFloat),'0',14); // 51 valor do PIS
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',DM1.Tb_Ped01P1TOTCOFINS.AsFloat),'0',14); // 52 valor do cOFINS

         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',14); // 53 valor do PIS retido ST
         mLinha_Grava:=mLinha_Grava+insere(FormatFloat('0000',0),'0',14); // 54 valor do cOFINS Retido ST

         mLinha_Grava:=mLinha_Grava+insere(' ',' ',20); // 55 Observações
         if DM1.Tb_NENECHAVEP.AsFloat=0 then
            mLinha_Grava:=mLinha_Grava+insere('N',' ',01) // 56 NF a vista
         else
            mLinha_Grava:=mLinha_Grava+insere('S',' ',01); // 56 NF com duplicata ja emitida
         end;
      end;
   end;



// inicio tributos

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCCU','CCCODEMP','CACODEMP','CCCODCCU','CACODCC');


DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select '+chr(39)+'P'+chr(39)+' AS TIPODUP, '
                  +' CADTEMIS AS DTEMIS, '
                  +' CADTVCTO AS DTVCTO, '
                  +' CADTPAG AS DTPAG, '
                  +' CAVALOR AS VALDUP, '
                  +' CANUMERO AS NUMDUP, '
                  +' CADESD AS DESD, '
                  +' CAQTDPARC AS QTDPARC, '
                  +' CANUMPARC AS NUMPARC, '
                  +' CAVALPAG AS VALPAG, '
                  +' CAJUROS AS JUROS, '
                  +' 0 AS MULTA, '
                  +' CADESC AS DESCONTO '
                  +' ,CCEXP_CODCTA_DEB AS CODCTA_DEB '
                  +' ,CCEXP_CODHIST_DEB AS CODHIST_DEB '
                  +' ,CCEXP_CODCCU_DEB AS CODCCU_DEB '
                  +' ,CCEXP_CODCTA_CRED AS CODCTA_CRED '
                  +' ,CCEXP_CODHIST_CRED AS CODHIST_CRED '
                  +' ,CCEXP_CODCCU_CRED AS CODCCU_CRED '
                  +' FROM CADDAP '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' CADTPAG>=:DTPAG_INI '
                  +' and CADTPAG<=:DTPAG_FIN '
                  +' and CCEXP_CATEG=2 '
                  +' order by CADTEMIS,CACODFOR,QTDPARC ');
DM1.Query2.ParamByName('DTPAG_INI').AsDateTime:=StrToDate(mdt1.Text);
DM1.Query2.ParamByName('DTPAG_FIN').AsDateTime:=StrToDate(mdt2.Text);

try
   DM1.Query2.Open;
except
   end;
if DM1.Query2.IsEmpty then
   begin
   While not DM1.Query2.Eof do
      begin
      mLinha_Item:=insere('PAGTO_TRIB',' ',10); // 01 IDENTIFICACAO
      mLinha_Item:=mLinha_Item+insere2('0001','0',1); // 02 TIPO DE PAGAMENTO
      mLinha_Item:=mLinha_Item+Formatdatetime('yymm', DM1.Query2.fieldbyname('DTEMIS').AsDateTime); // 03 MES DE REFERENCIA
      mLinha_Item:=mLinha_Item+insere2('0000','0',4); // 04 NUMNERO DA BAIXA
      mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTPAG').Value); // 05 Data de Pagamento
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 06 Centro de custo a ser debitado
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 07 Centro de custo a ser credito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 08 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 09 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 10 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 11 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 12 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 13 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('JUROS').AsFloat*100),'0',14); // 14 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 15 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 16 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('JUROS').AsFloat*100),'0',14); // 17 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 18 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 19 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('MULTA').AsFloat*100),'0',14); // 20 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 21 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 22 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('MULTA').AsFloat*100),'0',14); // 23 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 24 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 25 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDES').AsFloat*100),'0',14); // 20 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 21 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 22 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDES').AsFloat*100),'0',14); // 23 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 24 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 25 Codito do historico padrao do credito
      memo_Reg7.Lines.Add(mLinha_Item);
      mLinha_Item:='';
      DM1.Query2.Next;
      end;
   end;

// termino tributos




// inicio da folha



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCCU','CCCODEMP','CACODEMP','CCCODCCU','CACODCC');


DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select '+chr(39)+'P'+chr(39)+' AS TIPODUP, '
                  +' CADTEMIS AS DTEMIS, '
                  +' CADTVCTO AS DTVCTO, '
                  +' CADTPAG AS DTPAG, '
                  +' CAVALOR AS VALDUP, '
                  +' CANUMERO AS NUMDUP, '
                  +' CADESD AS DESD, '
                  +' CAQTDPARC AS QTDPARC, '
                  +' CANUMPARC AS NUMPARC, '
                  +' CAVALPAG AS VALPAG, '
                  +' CAJUROS AS JUROS, '
                  +' 0 AS MULTA, '
                  +' CADESC AS DESCONTO '
                  +' ,CCEXP_CODCTA_DEB AS CODCTA_DEB '
                  +' ,CCEXP_CODHIST_DEB AS CODHIST_DEB '
                  +' ,CCEXP_CODCCU_DEB AS CODCCU_DEB '
                  +' ,CCEXP_CODCTA_CRED AS CODCTA_CRED '
                  +' ,CCEXP_CODHIST_CRED AS CODHIST_CRED '
                  +' ,CCEXP_CODCCU_CRED AS CODCCU_CRED '
                  +' FROM CADDAP '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' CADTPAG>=:DTPAG_INI '
                  +' and CADTPAG<=:DTPAG_FIN '
                  +' and CCEXP_CATEG=1 '
                  +' order by CADTEMIS,CACODFOR,QTDPARC ');
DM1.Query2.ParamByName('DTPAG_INI').AsDateTime:=StrToDate(mdt1.Text);
DM1.Query2.ParamByName('DTPAG_FIN').AsDateTime:=StrToDate(mdt2.Text);

try
   DM1.Query2.Open;
except
   end;

if DM1.Query2.IsEmpty then
   begin
   While not DM1.Query2.Eof do
      begin
      mLinha_Item:=insere('PAGTOFOLHA',' ',10); // 01 IDENTIFICACAO
      mLinha_Item:=mLinha_Item+insere2('0001','0',1); // 02 TIPO DE PAGAMENTO
      mLinha_Item:=mLinha_Item+Formatdatetime('yymm', DM1.Query2.fieldbyname('DTEMIS').AsDateTime); // 03 MES DE REFERENCIA
      mLinha_Item:=mLinha_Item+insere2('0000','0',4); // 04 NUMNERO DA BAIXA
      mLinha_Item:=mLinha_Item+FormatDateTime('AAMMDD', DM1.Query2.fieldbyName('DTPAG').Value); // 05 Data de Pagamento
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 06 Centro de custo a ser debitado
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 07 Centro de custo a ser credito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 08 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 09 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 10 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDUP').AsFloat*100),'0',14); // 11 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 12 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 13 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('JUROS').AsFloat*100),'0',14); // 14 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 15 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 16 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('JUROS').AsFloat*100),'0',14); // 17 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 18 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 19 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('MULTA').AsFloat*100),'0',14); // 20 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 21 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 22 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('MULTA').AsFloat*100),'0',14); // 23 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 24 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 25 Codito do historico padrao do credito


      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDES').AsFloat*100),'0',14); // 20 VALOR PAGO A SER DEBITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 21 conta contabil debito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 22 Codito do historico padrao do debito

      mLinha_Item:=mLinha_Item+insere(FormatFloat('0000', DM1.Query2.Fieldbyname('VALDES').AsFloat*100),'0',14); // 23 VALOR PAGO A SER CREDITADO
      mLinha_Item:=mLinha_Item+insere('0.0.0.00.000','0',30); // 24 conta contabil credito
      mLinha_Item:=mLinha_Item+insere('00000','0',05); // 25 Codito do historico padrao do credito
      Memo_Folha.Lines.Add(mLinha_Item);
      mLinha_Item:='';
      DM1.Query2.Next;
      end;
   end;

// termino  da folha



reset(f_ler);
mLinha_Grava:='';

While not  eof(f_ler) do
   begin
   readln(f_ler,mlinha_ler);
   if copy(mlinha_ler,2,4)<>'0150' then
      Continue;

   mtipo:=fBuscarValor(02,mLinha_ler);
   mcodigo:=copy(mtipo,2,length(mtipo)-1);
   mtipo:=copy(mtipo,1,1);


   if mtipo='F' then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADLOC','LCODEMP','FCODEMP','LCODLOC','FCODLOC');
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select FRAZAO AS RAZSOC,'+chr(39)+'F'+chr(39)+' as TIPO, FIM as INSCMUN,'
                        +' FALIQ as ALIQICMS, '
                        +' FNLOG AS ENDER,FNUM AS NUMERO,FCOMPL AS COMPLEMENTO, FBAIRRO AS BAIRRO,'
                        +' FDENOM AS FANTASIA,FIE AS IE, FCGC AS CNPJ, FCIDADE AS CIDADE, FUF AS UF,0 AS CPF, '
                        +chr(39)+' '+chr(39)+' as RG '
                        +', LCODMUN_IBGE AS CODLOC_IBGE '
                        +', LNOME AS CIDADE '
                        +', LUF AS UF '
                        +', 1058 AS COD_PAIS '
                        +', '+chr(39)+'BRASIL'+chr(39)+' AS NOME_PAIS '
                        +', FFONE AS FONE01, FFONEC01 AS FONE02, FFAX AS FAX '
                        +', FEMAIL AS EMAIL '
                        +' from CADFOR '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' FCODFOR=:CODFOR ');
      DM1.Query1.ParamByName('CODFOR').AsString:=mCodigo;

      end
   else
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');


      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CRAZAO AS RAZSOC,'+chr(39)+'F'+chr(39)+' as TIPO,'
                        +chr(39)+' '+chr(39)+' as INSCMUN,'
                        +' CALIQA as ALIQICMS, '
                        +' CLOG AS ENDER, CNUM AS NUMERO,CCOMPL AS COMPLEMENTO,CBAIRRO AS BAIRRO,'
                        +' CDENOM AS FANTASIA,CIE AS IE, CCNPJ AS CNPJ, CCIDADE AS CIDADE, CUF AS UF,CCPF AS CPF, '
                        +' CRG as RG '
                        +', LCODMUN_IBGE AS CODLOC_IBGE '
                        +', LNOME AS CIDADE '
                        +', CUF AS UF '
                        +', 1058 AS COD_PAIS '
                        +', '+chr(39)+'BRASIL'+chr(39)+' AS NOME_PAIS '
                        +', CFONE01 AS FONE01, CFONE02 AS FONE02, CFAX AS FAX '
                        +', CEMAIL AS EMAIL '
                        +' from CADCLI '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' CCODCLI=:CODCLI ');
      DM1.Query1.ParamByName('CODCLI').AsString:=mCodigo;
      end;
   DM1.Query1.Open;


   if DM1.Query1.fieldbyName('CNPJ').AsFloat=0 then
      begin
      mCnpj_Doc:=insere(DM1.Query1.fieldbyName('CPF').asString,'0',14);   // 06 cpf do sacado
      if fsonumero(DM1.Query1.fieldbyName('RG').asString)=0 then
         mIE_Dod:=insere2(' ',' ',20)         //  08 ie
      else
         mIE_Dod:=insere(fdeixanum(DM1.Query1.fieldbyName('RG').asString),' ',20); //  08 ie
      end
   else
      begin
      mCnpj_Doc:=insere(DM1.Query1.fieldbyName('CNPJ').asString,'0',14);
      if fsonumero(DM1.Query1.fieldbyName('IE').asString)=0 then
         mIE_Dod:=insere2(' ',' ',20) //  08 ie
      else
         mIE_Dod:=insere(fdeixanum(DM1.Query1.fieldbyName('IE').asString),' ',20); //  08 ie
      end;
    mLinha_Grava:=insere2('CLI_FORN',' ',10); // 01 identificacao
    mLinha_Grava:=mLinha_Grava+mCnpj_Doc; // 02 cnpj
    mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('RAZSOC').asString,' ',50); //  03 Razao social
    mLinha_Grava:=mLinha_Grava+insere2(DM1.Query1.fieldbyName('FANTASIA').asString,' ',50); //  04 nome de fantasia
    mLinha_Grava:=mLinha_Grava+mtipo; //  05 tipo do cadastro C-cliente F-Fornecedor A-Ambas
    mLinha_Grava:=mLinha_Grava+mIE_Dod; //  06 inscricao/rg
    if fsonumero(DM1.Query1.fieldbyName('INSCMUN').asString)>0 then
       mLinha_Grava:=mLinha_Grava+insere('S',' ',01) //  07 inscricao municipal S N
    else
       mLinha_Grava:=mLinha_Grava+insere('N',' ',01); //  07 inscricao municipal S N
    mLinha_Grava:=mLinha_Grava+insere(fdeixanum(DM1.Query1.fieldbyName('INSCMUN').asString),' ',20); //  08 inscricao municipal
    if DM1.query1.FieldByName('ALIQICMS').AsFloat>0 then
       mLinha_Grava:=mLinha_Grava+insere('S',' ',01) //  09 é contribuinte
    else
       mLinha_Grava:=mLinha_Grava+insere('N',' ',01); //  09 é contribuinte
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('ENDER').AsString,' ',50);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('NUMERO').AsString,' ',07);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('COMPLEMENTO').AsString,' ',20);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('BAIRRO').AsString,' ',30);
    mLinha_Grava:=mLinha_Grava+insere(DM1.query1.FieldByName('CODLOC_IBGE').AsString,'0',10);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('CIDADE').AsString,' ',35);
    mLinha_Grava:=mLinha_Grava+insere(DM1.query1.FieldByName('COD_PAIS').AsString,'0',10);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('NOME_PAIS').AsString,' ',50);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('FONE01').AsString,' ',13);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('FONE02').AsString,' ',13);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('FAX').AsString,' ',13);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('EMAIL').AsString,' ',50);
    mLinha_Grava:=mLinha_Grava+insere2(DM1.query1.FieldByName('UF').AsString,' ',02);

    if length(mLinha_Grava)<>470 then
       begin
       memo_erros_nossoProg.Lines.Add('Registro Reg 9: Tamanho Esperado: 470 Tamanho Escrito: '+IntToStr(length(mlinha_grava)));
       memo_erros_nossoProg.Lines.Add(mLinha_Grava);
       end;
    Writeln(f_Grava,mLinha_Grava);
    mLinha_Grava:='';
    end;



reset(f_ler);
mLinha_Grava:='';

While not  eof(f_ler) do
   begin
   readln(f_ler,mlinha_ler);
   if copy(mlinha_ler,2,4)<>'0200' then
      Continue;
   mLinha_Grava:=insere2('CAD_ITEM',' ',10); // 01 identificador
   mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(02,mLinha_ler),'0',14); // 02 codIGO do produto
   mLinha_Grava:=mLinha_Grava+insere2(' ',' ',46); // 03 espacos
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(03,mLinha_ler),' ',150); // 04 descricao do item
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(04,mLinha_ler),' ',50); // 05 codigo de barras
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(06,mLinha_ler),' ',03); // 06 unidade
   mLinha_Grava:=mLinha_Grava+insere2(' ',' ',03); // 07 espacos reservados
   mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(07,mLinha_ler),'0',02); // 08 tipo do item
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(08,mLinha_ler),' ',08); // 09 CODIGO NCM
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(09,mLinha_ler),' ',03); // 10 CODIGO EX CONFORME IPI
   mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(10,mLinha_ler),'0',02); // 11 CODIGO DO GENERO
   mLinha_Grava:=mLinha_Grava+insere2(fBuscarValor(11,mLinha_ler),'0',04); // 12 CODIGO DO SERVICO
   mLinha_Grava:=mLinha_Grava+insere(fBuscarValor(12,mLinha_ler),'0',06); //  13 ALIQUOTA DE ICMS APLICAVEL INTERNA
   if length(mLinha_Grava)<>301 then
      begin
      memo_erros_nossoProg.Lines.Add('Registro Reg 10: Tamanho Esperado: 301 Tamanho Escrito: '+IntToStr(length(mlinha_grava)));
      memo_erros_nossoProg.Lines.Add(mLinha_Grava);
      end;
   Writeln(f_Grava,mLinha_Grava);
   mLinha_Grava:='';
   end;

result:=true;



end;

procedure TFrm_SPED_EFD.CB_NOMAJUSTFISCALChange(Sender: TObject);
begin
Memo_nome.Text:=CB_NOMAJUSTFISCAL.Text;
try
  if (CB_NOMAJUSTFISCAL.text[4]='0') or (CB_NOMAJUSTFISCAL.text[4]='1') // debitos
     or (CB_NOMAJUSTFISCAL.text[4]='5') then
     cb_e111_CredDeb.ItemIndex:=1
  else if (CB_NOMAJUSTFISCAL.text[4]='2')  // creditos
     or (CB_NOMAJUSTFISCAL.text[4]='3')
     or (CB_NOMAJUSTFISCAL.text[4]='4') then
     cb_e111_CredDeb.ItemIndex:=0;
except
   end
end;

procedure TFrm_SPED_EFD.tsE111Exit(Sender: TObject);
var
mAnoMes: String;
mSeq: Integer;
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   mSeq:=0;
   mAnoMes:=formatDatetime('yyyymm', StrtoDate(MDT1.Text));
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADEFD_AJU where AJCODEMP='+IntToStr(codemp)
                     +' and AJCODAJU=:CODAJU '
                     +' and AJANOMES=:ANOMES ');
   DM1.Query1.ParamByName('CODAJU').AsString :='E111';
   DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes;
   DM1.query1.ExecSQL;
   fdm1StartCommit;
   Tb_AjusE111.First;
   While not Tb_AjusE111.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into CADEFD_AJU ('
                        +' AJCODEMP '
                        +',AJCODAJU '
                        +',AJANOMES '
                        +',AJSEQ '
                        +',AJSEL_TEXTO '
                        +',AJSEL_INDEX '
                        +',AJCOMPLEMENTO '
                        +',AJVALOR_AJU '
                        +',AJNATDC '
                        +',AJINVENTARIO '
                        +') values ( '
                        +' :CODEMP '
                        +',:CODAJU '
                        +',:ANOMES '
                        +',:SEQ '
                        +',:SEL_TEXTO '
                        +',:SEL_INDEX '
                        +',:COMPLEMENTO '
                        +',:VALOR_AJU '
                        +',:NATDC '
                        +',:INVENTARIO '
                        +') ');
      mSeq:=mSeq+1;

      DM1.Query1.ParamByName('CODEMP').AsInteger    :=codemp;
      DM1.Query1.ParamByName('CODAJU').AsString     :='E111';
      DM1.Query1.ParamByName('ANOMES').AsString     :=mAnoMes;
      DM1.Query1.ParamByName('SEQ').AsInteger       :=mSeq;
      DM1.Query1.ParamByName('SEL_TEXTO').AsString  :=Tb_AjusE111DESCRICAO.AsString;
      DM1.Query1.ParamByName('SEL_INDEX').AsInteger :=Tb_AjusE111INDICE.AsInteger;
      DM1.Query1.ParamByName('COMPLEMENTO').AsString:=Tb_AjusE111COMPL_DESCR.AsString;
      DM1.Query1.ParamByName('VALOR_AJU').AsFloat   :=Tb_AjusE111VALORAJUST.AsFloat;
      DM1.Query1.ParamByName('NATDC').AsString      :=Tb_AjusE111TIPO.AsString;
      DM1.Query1.ParamByName('INVENTARIO').AsString :=CB_INVENTARIO.Text;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      Tb_AjusE111.Next;
      end;
   end;
end;

procedure TFrm_SPED_EFD.MDT1Enter(Sender: TObject);
begin
if trim(mdt1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   if trim(MDT1.Text)<>'/  /' then
      mAnoMes_ini:=FormatDatetime('yyyymm', StrToDatetime(MDT1.Text));  
   end;
end;

procedure TFrm_SPED_EFD.bbE115AdicionarClick(Sender: TObject);
begin
if edt_e115_valor.Value=0 then
   begin
   MessageDlg('Favor Digitar um Valor Válido!',mtWarning,[mbOk],0);
   edt_e115_valor.SetFocus;
   exit;
   end;
if not Tb_AjusE115.Active then
   Tb_AjusE115.Open;
Tb_AjusE115.Append;
Tb_AjusE115TABELA.Value    :='E115';
Tb_AjusE115DESCRICAO.Value :=Trim(CB_E115_NOMEAJUSTE.Text);
Tb_AjusE115VALORAJUST.Value:=edt_e115_valor.Value;
if cb_e115_nat.ItemIndex=0 then
   Tb_AjusE115TIPO.Value      :='C'
else    Tb_AjusE115TIPO.Value      :='D';
Tb_AjusE115INDICE.Value:=CB_E115_NOMEAJUSTE.ItemIndex;
Tb_AjusE115CODIGOAJUST.Value :=Copy(CB_E115_NOMEAJUSTE.Text,1,8);
Tb_AjusE115COMPL_DESCR.Value :=edt_e115_compl_desc.Text;
Tb_AjusE115.Post;

edt_e115_valor.Text:='';
CB_E115_NOMEAJUSTE.SetFocus;


end;

procedure TFrm_SPED_EFD.CB_E115_NOMEAJUSTEChange(Sender: TObject);
begin
Memo_E115_DescAju.Text:=CB_E115_NOMEAJUSTE.Text;
try
  if (CB_E115_NOMEAJUSTE.text[4]='0') or (CB_E115_NOMEAJUSTE.text[4]='1') // debitos
     or (CB_E115_NOMEAJUSTE.text[4]='5') then
     cb_e115_nat.ItemIndex:=1
  else if (CB_E115_NOMEAJUSTE.text[4]='2')  // creditos
     or (CB_E115_NOMEAJUSTE.text[4]='3')
     or (CB_E115_NOMEAJUSTE.text[4]='4') then
     cb_e115_nat.ItemIndex:=0;
except
   end

end;

procedure TFrm_SPED_EFD.bbE115ExcluirClick(Sender: TObject);
begin
if Tb_AjusE115.IsEmpty then
   exit;
if Tb_AjusE115TABELA.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir o item: '+Tb_AjusE115CODIGOAJUST.AsString+' Valor: '+FormatFloat(mcasas, Tb_AjusE115VALORAJUST.value )),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE115.Delete;

end;

procedure TFrm_SPED_EFD.tsAjusteE115Exit(Sender: TObject);
var
mAnoMes: String;
mSeq: Integer;
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   mSeq:=0;
   mAnoMes:=formatDatetime('yyyymm', StrtoDate(MDT1.Text));
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADEFD_AJU where AJCODEMP='+IntToStr(codemp)
                     +' and AJCODAJU=:CODAJU '
                     +' and AJANOMES=:ANOMES ');
   DM1.Query1.ParamByName('CODAJU').AsString :='E115';
   DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes;
   DM1.query1.ExecSQL;
   fdm1StartCommit;
   Tb_AjusE115.First;
   While not Tb_AjusE115.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into CADEFD_AJU ('
                        +' AJCODEMP '
                        +',AJCODAJU '
                        +',AJANOMES '
                        +',AJSEQ '
                        +',AJSEL_TEXTO '
                        +',AJSEL_INDEX '
                        +',AJCOMPLEMENTO '
                        +',AJVALOR_AJU '
                        +',AJNATDC '
                        +',AJINVENTARIO '
                        +') values ( '
                        +' :CODEMP '
                        +',:CODAJU '
                        +',:ANOMES '
                        +',:SEQ '
                        +',:SEL_TEXTO '
                        +',:SEL_INDEX '
                        +',:COMPLEMENTO '
                        +',:VALOR_AJU '
                        +',:NATDC '
                        +',:INVENTARIO '
                        +') ');
      mSeq:=mSeq+1;

      DM1.Query1.ParamByName('CODEMP').AsInteger    :=codemp;
      DM1.Query1.ParamByName('CODAJU').AsString     :='E115';
      DM1.Query1.ParamByName('ANOMES').AsString     :=mAnoMes;
      DM1.Query1.ParamByName('SEQ').AsInteger       :=mSeq;
      DM1.Query1.ParamByName('SEL_TEXTO').AsString  :=Tb_AjusE115DESCRICAO.AsString;
      DM1.Query1.ParamByName('SEL_INDEX').AsInteger :=Tb_AjusE115INDICE.AsInteger;
      DM1.Query1.ParamByName('COMPLEMENTO').AsString:=Tb_AjusE115COMPL_DESCR.AsString;
      DM1.Query1.ParamByName('VALOR_AJU').AsFloat   :=Tb_AjusE115VALORAJUST.AsFloat;
      DM1.Query1.ParamByName('NATDC').AsString      :=Tb_AjusE115TIPO.AsString;
      DM1.Query1.ParamByName('INVENTARIO').AsString :=CB_INVENTARIO.Text;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      Tb_AjusE115.Next;
      end;
   end;
end;

procedure TFrm_SPED_EFD.edtguiast_mesExit(Sender: TObject);
begin
if (ValInt(edtguiast_mes.Text)<1) or (ValInt(edtguiast_mes.Text)>12) then
   begin
   MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
   edtguiast_mes.SetFocus;
   exit;
   end;
end;

procedure TFrm_SPED_EFD.edtguiast_anoExit(Sender: TObject);
begin
if (ValInt(edtguiast_ano.Text)<1900) or (ValInt(edtguiast_ano.Text)>2100) then
   begin
   MessageDlg('Ano Invalido!',mtWarning,[mbOk],0);
   edtguiast_ano.SetFocus;
   exit;
   end;

end;

procedure TFrm_SPED_EFD.bbGuiaST_IncluirClick(Sender: TObject);
begin

if edtguiast_vl_or.Value=0 then
   begin
   MessageDlg('Favor Digitar um Valor Válido!',mtWarning,[mbOk],0);
   edtguiast_vl_or.SetFocus;
   exit;
   end;
if not Tb_GuiaST.Active then
   Tb_GuiaST.Open;
Tb_GuiaST.Append;
Tb_GuiaSTCOD_OR.Value      :=copy(CB_GUIAST_COD_OR.Text,1,3);
Tb_GuiaSTVL_OR.Value       :=edtguiast_vl_or.Value;
Tb_GuiaSTDT_VCTO.Value     :=edtguiast_dt_vcto.Date;
Tb_GuiaSTCOD_REC.Value     :=edtguiast_cod_rec.Text;
Tb_GuiaSTNUM_PROC.Value    :=edtguiast_num_proc.Text;
Tb_GuiaSTIND_PROC.Value    :=cbguiast_ind_proc.ItemIndex;
Tb_GuiaSTMES_REF.Value     :=FormatFloat('00', valint(edtguiast_mes.Text))+FormatFloat('0000', valint(edtguiast_ano.Text));
Tb_GuiaSTPROC.Value        :=edtguiast_proc.Text;
Tb_GuiaSTTXT_COMP.Value    :=edtguiast_txt_compl.Text;
Tb_GuiaSTUF.Value          :=cbguiast_uf.Text;
Tb_GuiaST.Post;

edtguiast_valordig.Value:=edtguiast_valordig.Value+Tb_GuiaSTVL_OR.AsFloat;
edtguiast_valorResto.Value:=edtguiast_valoresp.Value-edtguiast_valordig.Value;

edtguiast_vl_or.Text:='';
cbguiast_ind_proc.SetFocus;




end;

procedure TFrm_SPED_EFD.bbGuiaST_ExcluirClick(Sender: TObject);
begin
if Tb_GuiaST.IsEmpty then
   exit;
if Tb_GuiaSTVL_OR.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir o item: '+Tb_GuiaSTCOD_OR.AsString+' Valor: '+FormatFloat(mcasas, Tb_GuiaSTVL_OR.value )),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
edtguiast_valordig.Value:=edtguiast_valordig.Value-Tb_GuiaSTVL_OR.AsFloat;
edtguiast_valorResto.Value:=edtguiast_valoresp.Value-edtguiast_valordig.Value;
Tb_GuiaST.Delete;

end;

function tFrm_SPED_EFD.fTotalizarST(pTipo: Integer): Boolean;
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
if trim(MDT1.Text)<>'/  /' then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NSDTEMIS>=:NSDATAINI ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NSDATAINI').AsDateTime:=StrToDate(mdt1.Text);
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NSDTEMIS<=:NSDATAFIN ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NSDATAFIN').AsDateTime:=StrToDate(mdt2.Text);
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
                                     +'       and NECODEMP='+IntToStr(codemp));
if trim(MDT1.Text)<>'/  /' then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NEDTEMIS>=:NEDATAINI ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NEDATAINI').AsDateTime:=StrToDate(mdt1.Text);
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NEDTEMIS<=:NEDATAFIN ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NEDATAFIN').AsDateTime:=StrToDate(mdt2.Text);
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

procedure TFrm_SPED_EFD.sbnNotasClick(Sender: TObject);
begin
Frm_SPED_EFD_NotasST.Show;
end;

procedure TFrm_SPED_EFD.tsGuiaSTExit(Sender: TObject);
var
mAnoMes: String;
mSeq: Integer;
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   mSeq:=0;
   mAnoMes:=formatDatetime('yyyymm', StrtoDate(MDT1.Text));
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADEFD_GUIAST where GST_CODEMP='+IntToStr(codemp)
                     +'  and GST_ANOMES=:ANOMES ');
   DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes;
   DM1.query1.ExecSQL;
   fdm1StartCommit;
   Tb_GuiaST.First;
   While not Tb_GuiaST.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into CADEFD_GUIAST ('
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

      DM1.Query1.ParamByName('GST_CODEMP').AsInteger    :=codemp;
      DM1.Query1.ParamByName('GST_ANOMES').AsString     :=mAnoMes;
      DM1.Query1.ParamByName('GST_SEQ').AsInteger       :=mSeq;
      DM1.Query1.ParamByName('GST_COD_OR').AsString     :=Tb_GuiaSTCOD_OR.Value;
      DM1.Query1.ParamByName('GST_VL_OR').AsFloat       :=Tb_GuiaSTVL_OR.Value;
      DM1.Query1.ParamByName('GST_DT_VCTO').AsDateTime  :=Tb_GuiaSTDT_VCTO.AsDateTime;
      DM1.Query1.ParamByName('GST_COD_REC').AsString    :=Tb_GuiaSTCOD_REC.Value;
      DM1.Query1.ParamByName('GST_NUM_REC').AsString    :=Tb_GuiaSTNUM_PROC.Value;
      DM1.Query1.ParamByName('GST_IND_PROC').AsInteger  :=Tb_GuiaSTIND_PROC.AsInteger;
      DM1.Query1.ParamByName('GST_PROC').AsString       :=Tb_GuiaSTPROC.Value;
      DM1.Query1.ParamByName('GST_TXT_COMPL').AsString  :=Tb_GuiaSTTXT_COMP.Value;
      DM1.Query1.ParamByName('GST_MES_REF').AsString    :=Tb_GuiaSTMES_REF.Value;
      DM1.Query1.ParamByName('GST_UF').AsString         :=Tb_GuiaSTUF.Value;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile('c:\sql.txt');

         end;
      Tb_GuiaST.Next;
      end;
   end;

end;


function TFrm_SPED_EFD.fLerDadosblocoC300(pTipo: Integer): Boolean;
begin


Qr_C300_Notas.Close;
Qr_C300_Notas.SQL.Clear;
Qr_C300_Notas.SQL.Add('Select NSMODELO AS COD_MOD'
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
if trim(MDT1.Text)<>'/  /' then
   Qr_C300_Notas.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_C300_Notas.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
Qr_C300_Notas.SQL.Add(' and NSNUMERO>0');
//Qr_C300_Notas.SQL.Add(' and NSMODELO<>'+chr(39)+'55'+chr(39));

Qr_C300_Notas.SQL.Add(' Group by NSMODELO,NSSERIE,NSDTEMIS,NSSUBSER ');

try
   Qr_C300_Notas.Open;
except
    on E : Exception do
      begin
      ex_erroSql_Novo(Qr_C300_Notas,7526,'_sped_efd '+E.Message,'CADNS');
      end;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','NSCODCLI','CCODCLI');


Qr_C350_Notas.Close;
Qr_C350_Notas.SQL.Clear;
Qr_C350_Notas.SQL.Add('Select NSSERIE AS SER '
                     +'      ,NSSUBSER AS SUB_SER '
                     +'      ,NSNUMERO AS NUM_DOC '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,NSTOTNOTA AS VL_DOC '
                     +'      ,CASE WHEN CCNPJ=0 THEN CCPF ELSE CCNPJ END AS  CPF_CNPJ '
                     +'      ,sum(P2QTD*P2PRECO) AS VL_MERC '
                     +'      ,sum(P2TOTDES) AS VL_DESC '
                     +'      ,0 as VL_PIS '
                     +'      ,0 AS VL_COFINS '
                     +'      ,'+QuotedStr(' ')+' AS COD_CTA '
                     +'      ,NSCODEMP AS CODEMP '
                     +'      ,NSCHAVEP AS CHAVE '
                     +'      ,NSORDEMP AS ORDEM '
                     +'      ,NSLOTSEQ_CP AS LOTSEQ '
                     +'      from  CADNS'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                      +' NSCODEMP=0'+IntToStr(codemp)+' and '
                      +' NSSTATUS<8 ');

if trim(MDT1.Text)<>'/  /' then
   Qr_C350_Notas.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_C350_Notas.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
//Qr_C350_Notas.SQL.Add(' and NSMODELO<>'+chr(39)+'55'+chr(39));
Qr_C350_Notas.SQL.Add(' and NSNUMERO>0');
Qr_C350_Notas.SQL.Add(' GROUP BY NSSERIE '
                      +'      ,NSSUBSER      ,NSNUMERO '
                      +'      ,NSDTEMIS      ,NSTOTNOTA '
                      +'      ,CASE WHEN CCNPJ=0 THEN CCPF ELSE CCNPJ END '
                      +',NSCODEMP,NSCHAVEP,NSORDEMP,NSLOTSEQ_CP ');
//Qr_C350_Notas.SQL.SAVETOFILE('C:\SQL001.TXT');

try
   Qr_C350_Notas.Open;
except
    on E : Exception do
      begin
      ex_erroSql_Novo(Qr_C350_Notas,7526,'_sped_efd '+E.Message,'CADNS');
      end;
   end;

result:=true;
end;

procedure TFrm_SPED_EFD.MDT2Exit(Sender: TObject);
begin
if fsonumero(MDT2.Text)>0 then
try
   MDT2.Text:=FormatDatetime(fdt2, StrToDatetime(MDT2.Text));
except
   MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
   end;

end;


function TFrm_SPED_EFD.fNotasdeServico(ptipo: Integer): Boolean;
var
mNumItem: Integer;
begin
Qr_C170_ItensPed.Close;
Qr_C170_ItensPed.SQL.Clear;
if Qr_C100_NotasIND_EMIT.AsInteger=1 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   Qr_C170_ItensPed.SQL.Add('SELECT 01 AS NUM_ITEM,'+QuotedStr('SERVICO')+'  AS COD_ITEM, '
                           +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, 1 AS QTD '
                           +','+quotedstr('UND')+' AS UNID, ('+mudaVP(Qr_C100_NotasVL_DOC.AsString)+') AS VL_ITEM '
                           +' ,0 AS VL_DESC '
                           +',1 AS IND_MOV '
                           +','+QuotedStr('090')+' AS CST_ICMS '
                           +','+Qr_C100_NotasCFOP.AsString+' AS COD_NAT '
                           +',0 AS VL_BC_ICMS '
                           +',0 AS VL_ICMS '
                           +',0 AS VL_BC_ICMS_ST '
                           +',0 AS VL_ICMS_ST '
                           +' ,0 AS ALIQ_ICMS '
                           +' ,0 AS ALIQ_ST '
                           +' , 0 AS IND_APUR '
                           +' ,'+CHR(39)+'49'+CHR(39)+' AS CST_IPI '
                           +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                           +' ,0 AS BL_BC_IPI '
                           +' ,0 AS ALIQ_IPI '
                           +' ,0 as VL_IPI '
                           +' , '+CHR(39)+'99'+CHR(39)+'AS CST_PIS '
                           +' ,0 AS VL_BC_PIS '
                           +' ,0 AS ALIQ_PIS '
                           +'  ,0 AS QUANT_BC_PIS '
                           +'  ,0 ALIQ_PIS_REAIS '
                           +',0 AS VL_PIS '
                          +' , '+CHR(39)+' '+CHR(39)+'AS CST_COFINS '
                           +' ,0 AS VL_BC_COFINS '
                           +' ,0 AS ALIQ_COFINS '
                           +' ,0 AS QUANT_BC_COFINS '
                            +',0 AS VL_COFINS '
                           +' ,'+chr(39)+' '+chr(39)+' COD_CTA '
                           +' ,0 AS ALIQ_COFINS_REAIS '
                           +' ,0 AS PDPRZVAL_DIAS,0 AS PDPRZVAL,0 AS PDPRZVAL_ANOS '
                           +' ,'+QuotedStr(' ')+' AS C173_LOTE_MED '
                           +' ,1  AS C173_QTD_ITEM '
                           +' ,SYSDATE AS C173_DT_VAL '
                           +' ,0 AS IND_MED '
                           +', ('+mudaVP(Qr_C100_NotasVL_DOC.AsString)+') AS VL_TAB_MAX '
                           +' ,0 AS TP_PROD '
                           +', ('+mudaVP(Qr_C100_NotasVL_DOC.AsString)+') AS OUTRAS_SICMS '
                           +' ,0 as OUTRAS_CICMS'
                           +' ,0 as OUTRAS_VL_ICMS'
                           +' ,0 as OUTRAS_ALIQ'
                           +' ,0 as ICMS_FRETE'
                           +' ,0 as ICMS_ALIQ_FRETE'
                           +' ,0  VALOR_FRETE'
                           +' from DUAL ');

   try
      Qr_C170_ItensPed.Open;
   except
      Qr_C170_ItensPed.SQL.savetofile('c:\sql.txt');
      messagedlg('erro ao abrir qrc170',mterror,[mbOk],0);
      result:=false;
      exit;
      end;
   end;


// INICIO

mNumItem:=0;
while not Qr_C170_ItensPed.eof do
   begin
{
   mQtdRegC:=mQtdRegC+1;
   mNumItem:=mNumItem+1;
   qC170:=qC170+1;
   mLInha:='|'+'C170'  //1
          +'|'+FormatFloat('000',mNumItem)//2
              +'|'+Qr_C170_ItensPedCOD_ITEM.AsString //3
              +'|'+Trim(Qr_C170_ItensPedDESCR_COMPL.AsString)//4
              +'|'+FormatFloat('##0.000',Qr_C170_ItensPedQTD.asfloat);//5
   if length(trim(Qr_C170_ItensPedUNID.AsString))<2 then
      mLInha:=mLinha+'|UND'//6
   else
      mLInha:=mLinha+'|'+Trim(Qr_C170_ItensPedUNID.AsString);//6
   mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ITEM.AsFloat
                                     +Qr_C170_ItensPedVL_IPI.AsFloat
                                     +Qr_C170_ItensPedVL_ICMS_ST.AsFloat
                                     )//07
              +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_DESC.AsFloat) // 08
              +'|'+Qr_C170_ItensPedIND_MOV.AsString; // Mov. Fisica 0 - SIM 1 - NAO //09
   if (Qr_C170_ItensPedALIQ_ICMS.AsFloat=0) and
      ( (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='10') or
        (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='00') or
        (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='20') or
        (copy(Qr_C170_ItensPedCST_ICMS.AsString,2,2)='70') ) then
      mLInha:=mLInha+'|'+copy(Qr_C170_ItensPedCST_ICMS.AsString,1,1)+'40'   //10
   else
      mLInha:=mLInha+'|'+Qr_C170_ItensPedCST_ICMS.AsString;             //10
   mLInha:=mLInha+'|'+FormatFloat('0000',Qr_C170_ItensPedCOD_NAT.AsInteger)                //11
              +'|'+FormatFloat('0000',Qr_C170_ItensPedCOD_NAT.AsInteger);        //12
   if (Qr_C170_ItensPedALIQ_ICMS.AsFloat=0) then
      begin
      mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//13 VL_BC_ICMS
      mLinha:=mLinha+'|'+FormatFloat('0',0);//14  ALIQ_ICMS
      mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//15 VL_ICMS
      end
   else
      begin
      mLinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_ICMS.asfloat)//13
              +'|'+FormatFloat('00.00',Qr_C170_ItensPedALIQ_ICMS.AsFloat)      //14
              +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ICMS.AsFloat)//15
      end;


   mLinha:=mLinha
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_ICMS_ST.AsFloat)//16
                        +'|'+FormatFloat('00',Qr_C170_ItensPedALIQ_ST.AsFloat)   //17
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_ICMS_ST.AsFloat)//18
                        +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19
                        +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                        +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                        +'|'+FormatFloat('##0.00', Qr_C170_ItensPedBL_BC_IPI.AsFloat) //22
                        +'|'+FormatFloat('000000',Qr_C170_ItensPedALIQ_IPI.AsFloat) //23 ALIQ IPI
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_IPI.AsFloat) //24 VLR IPI
                        +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_PIS.AsFloat)   //26 Valor da base de cálculo do PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedALIQ_PIS.AsFloat)   //27 Aliquota PIS
                        +'|'+FormatFloat('000',Qr_C170_ItensPedQUANT_BC_PIS.AsFloat)   //28 Quantidade BC PIS
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedQUANT_BC_PIS.AsFloat)   //29 Alíquota do PIS (em rea
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_PIS.AsFloat)   //30 Valor do PIS
                        +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_BC_COFINS.AsFloat)   //32 Valor da base de cálculo da COFIN
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedALIQ_COFINS.AsFloat)   //33 Alíquota do COFINS (em percentua
                        +'|'+FormatFloat('000',Qr_C170_ItensPedQUANT_BC_COFINS.AsFloat)      //34 Quantidade – Base de cálculo COFINS
                        +'|'+FormatFloat('##0.0000',Qr_C170_ItensPedALIQ_COFINS_REAIS.AsFloat) //35 líquota da COFINS (em reais
                        +'|'+FormatFloat('##0.00',Qr_C170_ItensPedVL_COFINS.AsFloat)   //36 Valor da base de cálculo da COFIN
                        +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
   mContLin:=mContLin+1;

   Writeln(f,mLInha);
}
// outras


   if Qr_C170_ItensPedOUTRAS_SICMS.AsFloat>0 then
      begin
      mNumItem:=mNumItem+1;
      mQtdRegC:=mQtdRegC+1;
      qC170:=qC170+1;
      mLInha:='|'+'C170'  //1
             +'|'+FormatFloat('000',mNumItem);//2
      mLInha:=mLInha+'|'+'OUTRASSICMS|OUTRAS SEM ICMS';
      mLInha:=mLInha+'|'+FormatFloat('##0.000',1);//5
      mLInha:=mLinha+'|UND';//6
      mlinha:=mLinha+'|'+FormatFloat('##0.00',Qr_C170_ItensPedOUTRAS_SICMS.AsFloat)//07
                 +'|'+FormatFloat('##0.00',0) // 08
                 +'|1'; // Mov. Fisica 0 - SIM 1 - NAO //09
      if Qr_C170_ItensPedOUTRAS_CICMS.AsFloat>0 then
         mLInha:=mLInha+'|000'  //10
      else
         mLInha:=mLInha+'|040';  //10
      mLInha:=mlinha+'|'+formatfloat('0000',valint(Qr_C100_NotasCFOP.AsString)); // 11 cfop
      mLInha:=mlinha+'|'+formatfloat('0000',valint(Qr_C100_NotasCFOP.AsString)); //  12 codnatop

      mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//13 VL_BC_ICMS
      mLinha:=mLinha+'|'+FormatFloat('0',0);//14  ALIQ_ICMS
      mLinha:=mLinha+'|'+FormatFloat('##0.00',0);//15 VL_ICMS
      mLinha:=mLinha
                 +'|'+FormatFloat('##0.00',0)//16
                 +'|'+FormatFloat('00',0)   //17
                 +'|'+FormatFloat('##0.00',0)//18
                 +'|'+Qr_C170_ItensPedIND_APUR.AsString // 19

                 +'|'+Qr_C170_ItensPedCST_IPI.AsString //20
                 +'|'+Qr_C170_ItensPedCOD_ENQ.AsString //21
                 +'|'+FormatFloat('##0.00', 0) //22
                 +'|'+FormatFloat('000000',0) //23 ALIQ IPI
                 +'|'+FormatFloat('##0.00',0) //24 VLR IPI
                 +'|'+Qr_C170_ItensPedCST_PIS.AsString  // 25 Código da Situação Tributária referente ao PIS
                 +'|'+FormatFloat('##0.00',0)   //26 Valor da base de cálculo do PIS
                 +'|'+FormatFloat('##0.00',0)   //27 Aliquota PIS
                 +'|'+FormatFloat('000',0)   //28 Quantidade BC PIS
                 +'|'+FormatFloat('##0.00',0)   //29 Alíquota do PIS (em rea
                 +'|'+FormatFloat('##0.00',0)   //30 Valor do PIS
                 +'|'+FormatFloat('00',Qr_C170_ItensPedCST_PIS.AsFloat)      //31   Código  da  Situação  Tributária  referente  ao CO-FINS.
                 +'|'+FormatFloat('##0.00',0)   //32 Valor da base de cálculo da COFIN
                 +'|'+FormatFloat('##0.00',0)   //33 Alíquota do COFINS (em percentua
                 +'|'+FormatFloat('000',0)      //34 Quantidade – Base de cálculo COFINS
                 +'|'+FormatFloat('##0.0000',0) //35 líquota da COFINS (em reais
                 +'|'+FormatFloat('##0.00',0)   //36 Valor da base de cálculo da COFIN
                 +'|'+Qr_C170_ItensPedCOD_CTA.AsString+'|';   //37 Código  da  conta  analítica  contábil  debitada/creditada
      mContLin:=mContLin+1;
      Writeln(f,mLInha);
      end;


// termino outras


   Qr_C190_RegAnal.Close;
   Qr_C190_RegAnal.SQL.Clear;
   if Qr_C100_NotasIND_EMIT.AsInteger=1 then
      begin
      Qr_C190_RegAnal.SQL.Add('select '+chr(39)+'040'+chr(39)+' AS CST_ICMS '
                               +','+QuotedStr(Qr_C100_NotasCFOP.AsString)+' AS CFOP '
                                +', 0 AS ALIQ_ICMS '
                                +','+mudaVP(Qr_C100_NotasVL_DOC.AsString)+' AS VL_OPR '
                                +', 0 AS VL_BC_ICMS '
                                +', 0 AS VL_ICMS '
                                +', 0  AS VL_BC_ICMS_ST '
                                +', 0 as VL_ICMS_ST '
                                +', 0 AS VL_RED_BC '
                                +', 0 AS VL_IPI '
                                +', '+QuotedStr(' ')+' AS COD_OBS '
                                +','+mudaVP(Qr_C100_NotasVL_DOC.AsString)+' AS OUTRAS_SICMS '
                                +' ,0 as OUTRAS_CICMS'
                                +' ,0 as OUTRAS_VL_ICMS'
                                +' ,0 as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,0 as VALOR_FRETE'
                                +' from  dual ');
       try
          Qr_C190_RegAnal.open;
       except
          Qr_C190_RegAnal.SQL.savetofile('c:\sql001.txt');
          end;
       While not Qr_C190_RegAnal.Eof do
          begin
          mQtdRegC:=mQtdRegC+1;
          mLInha:='|C190'; //1
          if (Qr_C190_RegAnalALIQ_ICMS.AsFloat=0) and
             ( (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='10') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='00') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') ) then
             mLInha:=mLInha+'|'+copy(Qr_C190_RegAnalCST_ICMS.AsString,1,1)+'40'   //10
          else
             mLInha:=mLInha+'|'+Qr_C190_RegAnalCST_ICMS.AsString;             //10

          mLInha:=mLInha+'|'+Qr_C190_RegAnalCFOP.AsString //3
                        +'|'+FormatFloat('##0.00',Qr_C190_RegAnalALIQ_ICMS.AsFloat) //4
                        +'|'+FormatFloat('##0.00',(Qr_C190_RegAnalVL_OPR.AsFloat+Qr_C190_RegAnalVL_IPI.AsFloat
                                                   +Qr_C190_RegAnalVL_ICMS_ST.AsFloat)
                        +IIF(Qr_C190_RegAnalICMS_FRETE.Asfloat>0,Qr_C190_RegAnalVALOR_FRETE.AsFloat,0) ); //5

          if (Qr_C190_RegAnalALIQ_ICMS.AsFloat=0) and
             ( (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='10') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='00') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') ) then
             mLInha:=mLInha+'|'+FormatFloat('##0.00',0)+'|'+FormatFloat('##0.00',0) // 7
          else
             mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_BC_ICMS.AsFloat
             +IIF(Qr_C190_RegAnalICMS_FRETE.Asfloat>0,Qr_C190_RegAnalVALOR_FRETE.AsFloat,0)) // 6
                     +'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_ICMS.AsFloat+Qr_C190_RegAnalICMS_FRETE.Asfloat); // 7


          mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_BC_ICMS_ST.asfloat) // 8
                +'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_ICMS_ST.asfloat); // 9             ]

{                                +' ,max(NSICMS_VLFRE) as ICMS_FRETE '
                                +' ,max(NSICMS_ALFRE) as ICMS_ALIQ_FRETE '
                                +' ,max(NSFRETE) as  VALOR_FRETE '
}

          if Qr_C190_RegAnalVL_BC_ICMS.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_BC_ICMS.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);

          if Qr_C190_RegAnalVL_ICMS.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do Icms Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_ICMS.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);

          if Qr_C190_RegAnalVL_BC_ICMS_ST.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms ST Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_BC_ICMS_ST.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);


          if Qr_C190_RegAnalVL_ICMS_ST.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do ICMS ST Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_ICMS_ST.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);


          if Qr_C190_RegAnalVL_RED_BC.AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor da Redução BC Negativa: '+FormatFloat(mcasas, Qr_C190_RegAnalVL_RED_BC.asfloat)
                                 +' NF: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '+FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                                 +' Chave Pedido: '+Qr_C100_NotasCHAVE.AsString+' CFOP: '+Qr_C190_RegAnalCFOP.AsString);



//          if (Copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='20') or (Copy(Qr_C190_RegAnalCST_ICMS.AsString,2,2)='70') then
//            begin
            if ((copy(Qr_C190_RegAnalCST_ICMS.Value,2,2)='20') or
               (copy(Qr_C190_RegAnalCST_ICMS.Value,2,2)='70')) and
               (Qr_C190_RegAnalVL_RED_BC.AsFloat=0) then
               begin
               if fSonumero(Qr_C190_RegAnalCFOP.AsString)<5000 then
                  mcinst:=' de Entrada'
               else
                  mcinst:=' de Saida';

               if fSonumero(Qr_C190_RegAnalCFOP.AsString)<5000 then
                  begin
                  memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '
                            +FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                            +' possui item com CST: '+Qr_C190_RegAnalCST_ICMS.Value
                            +' e Redução de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+Qr_C100_NotasCHAVE.AsString);
                  if Qr_C190_RegAnalALIQ_ICMS.AsFloat=0 then
                     begin
                     memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+Qr_C100_NotasNUM_DOC.AsString+' Data: '
                            +FormatDateTime(fdt2, Qr_C100_NotasDT_DOC.AsDateTime)
                            +' possui item com CST: '+Qr_C190_RegAnalCST_ICMS.Value
                            +' e Redução Aliquota de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+Qr_C100_NotasCHAVE.AsString);
                     end;
                  end;
               end;


            mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_RED_BC.AsFloat); // 10

            if (copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),1,1)='1') or
               (copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),1,1)='2') then
               mRestoCFOP:=valint(copy(formatfloat('0000',Qr_C190_RegAnalCFOP.AsFloat),2,3));
               if (mRestoCFOP<>410) and
                  (mRestoCFOP<>411) and
                  (mRestoCFOP<>414) and
                  (mRestoCFOP<>415) and
                  (mRestoCFOP<>660) and
                  (mRestoCFOP<>661) and
                  (mRestoCFOP<>662) then

                  mTotC190E210:=mTotC190E210+Qr_C190_RegAnalVL_ICMS_ST.asfloat;
//            end
//          else
//            begin
//            mLInha:=mLInha+'|'; // 10
//            end;
        mLInha:=mLInha+'|'+FormatFloat('##0.00',Qr_C190_RegAnalVL_IPI.AsFloat) // 11
              +'|'+Qr_C190_RegAnalCOD_OBS.AsString
              +'|'; // 12

        if ((Qr_C190_RegAnalCFOP.AsString='5605')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='1')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='2')
            or (Copy(Qr_C190_RegAnalCFOP.AsString,1,1)='3'))
            and (Qr_C190_RegAnalCFOP.AsString<>'1605') then
          begin
          mvalicmsent:=mvalicmsent+Qr_C190_RegAnalVL_ICMS.AsFloat+Qr_C190_RegAnalICMS_FRETE.Asfloat; //

          end
        else
          begin
          E111_icms:=E111_icms+Qr_C190_RegAnalVL_ICMS.AsFloat
                      +Qr_C190_RegAnalICMS_FRETE.Asfloat; //
          end;

          qC190:=qC190+1;
          mContLin:=mContLin+1;

          WriteLN(F,mLInha);
          Qr_C190_RegAnal.Next;
          end;
      end;
   Qr_C170_ItensPed.Next;
   end;
result:=true;
end;
procedure TFrm_SPED_EFD.FormShow(Sender: TObject);
begin
Tb_AjusE115VALORAJUST.DisplayFormat:=mcasas;
Memo_nome.Text:=CB_NOMAJUSTFISCAL.Text;
Memo_E115_DescAju.Text:=CB_E115_NOMEAJUSTE.Text;

if ValInt(FormatDateTime('dd', pdatasis))>30 then
   MDT1.Text:=FormatDateTime(fdt2,pdatasis)
else
   MDT1.Text:=FormatDateTime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:='01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrtoDate(MDT1.Text)));

//MDT1.Text:='01/02/2011';
//MDT2.Text   :='28/02/2011';
MDT1Exit(Self);
edt_razsoc.Text    :=DM1.Tb_EmpRAZAO.AsString;
edt_Fantasia.Text  :=DM1.Tb_EmpFANTASIA.AsString;
edt_cnpj.Text      :=DM1.Tb_EmpCGC.AsString;
Edt_CPF.Text       :='';
Edt_InscEst.Text   :=DM1.Tb_EmpINSCRICAO.AsString;
edt_InscMun.Text   :=DM1.Tb_EmpINSCMUNIC.AsString;
edt_suframa.Text   :=DM1.Tb_EmpEMP_SUFRAMA.AsString;
edt_pisPasep.Text  :=DM1.Tb_EmpEMP_INSC_PISPASEP.AsString;
edt_endereco.Text  :=DM1.Tb_EmpENDERECO.AsString;
edt_Numero.Text    :=DM1.Tb_EmpNUMERO.AsString;
edt_compl_ender.Text:='';
edt_bairro.Text   :=DM1.Tb_EmpBAIRRO.AsString;
edt_cep.Text      :=DM1.Tb_EmpCEP.AsString;
edt_endereco.Text  :=DM1.Tb_EmpENDERECO.AsString;
edt_codloc.Text    :=DM1.Tb_EmpCODLOC.AsString;
edt_cidade.Text    :=DM1.Tb_EmpCIDADE.AsString;
edt_uf.Text        :=DM1.Tb_EmpUF.AsString;
edt_fone.Text      :=DM1.Tb_EmpFONE.AsString;
edt_fax.Text       :=DM1.Tb_EmpFAX.AsString;
edt_email.Text     :=DM1.Tb_EmpE_MAIL.AsString;
edt_fone.Text      :=DM1.Tb_EmpFONE.AsString;
//CB_ATIVIDADE.ItemIndex:=0;
CB_PERFIL.ItemIndex   :=0;
CB_CODREC_OBRIGATORIO.ItemIndex :=0;

edt_Contador_Nome.Text :=DM1.Tb_EmpCONTADOR.AsString;
edt_Contador_cpf.Text  :=DM1.Tb_EmpEMP_CONT_CPF.AsString;
edt_Contador_CNPJ.Text :=DM1.Tb_EmpEMP_CONT_CNPJ.AsString;
edt_Contador_CRC.Text  :=DM1.Tb_EmpCRC_CONTADOR.AsString;
edt_Contador_CEP.Text  :=DM1.Tb_EmpEMP_CONT_CEP.AsString;
edt_Contador_Ender.Text:=DM1.Tb_EmpEMP_CONT_ENDER.AsString;
edt_Contador_Numero.Text:=DM1.Tb_EmpEMP_CONT_NUM_END.AsString;
edt_Contador_CompEnd.Text:=DM1.Tb_EmpEMP_CONT_COMP_END.AsString;
edt_Contador_Bairro.Text:=DM1.Tb_EmpEMP_CONT_BAIRRO.AsString;

edt_Contador_Fone.Text  :=DM1.Tb_EmpEMP_CONT_FONE.AsString;
edt_Contador_Fax.Text   :=DM1.Tb_EmpEMP_CONT_FAX.AsString;
edt_Contador_Email.Text :=DM1.Tb_EmpEMP_CONT_EMAIL.AsString;

edt_Contador_Codloc.Text:=DM1.Tb_EmpEMP_CONT_CODLOC.AsString;
//edt_Contador_Cidade.Text:=DM1.Tb_EmpEMP_CONT_NOMLOC.AsString;
//edt_Contador_Cidade.Text:=DM1.Tb_EmpEMP_CONT_UF.AsString;


DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT'
                  +'        ,sum(IGQTD*IGPRECO) AS VALOR '
                  +'         ,max(IGVALOR_TRANSP) AS VALOR_TRANSP '
                  +'        ,max(IGDATAEMI) as IGDATAEMI '
                  +'        ,count(*) as ITEM '
                  +'         from INVGRA where IGCODEMP=0'+InttoStr(codemp)
                  +'group by IGNOMEINV ');
DM1.Query1.Open;
CB_INVENTARIO.Items.Clear;
CB_INVENTARIO.Items.Add('      ');

While not DM1.Query1.Eof do
   begin
   CB_INVENTARIO.Items.Add(DM1.Query1.fieldbyName('IGNOMEINV').asstring);
   DM1.Query1.Next;
   end;
CB_INVENTARIO.ItemIndex:=0;
IF Frm_SPED_EFD_NotasST = NIL THEN
  Application.CreateForm(TFrm_SPED_EFD_NotasST, Frm_SPED_EFD_NotasST);


end;

procedure TFrm_SPED_EFD.lbx_numnf_entKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_ent.ItemIndex>=0 then
      lbx_numnf_ent.Items.Delete(lbx_numnf_ent.ItemIndex);

end;

procedure TFrm_SPED_EFD.lbx_numnf_saiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_sai.ItemIndex>=0 then
      lbx_numnf_sai.Items.Delete(lbx_numnf_sai.ItemIndex);

end;

procedure TFrm_SPED_EFD.lbx_numcfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_numcf.ItemIndex>=0 then
      lbx_numcf.Items.Delete(lbx_numcf.ItemIndex);

end;

procedure TFrm_SPED_EFD.edt_numnf_entExit(Sender: TObject);
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

procedure TFrm_SPED_EFD.edt_numnf_saiExit(Sender: TObject);
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

procedure TFrm_SPED_EFD.edt_num_ecfExit(Sender: TObject);
begin
edt_num_ecf.Text:=fdeixanum2(edt_num_ecf.Text);
if Trim(edt_num_ecf.Text)<>'' then
   begin
   lbx_numCF.Items.Add(edt_num_ecf.Text+' - '+edt_num_ecf.Text);
   edt_num_ecf.Text := '';
    if edt_num_ecf.Enabled then
       edt_num_ecf.SetFocus;
   end;

end;

procedure TFrm_SPED_EFD.FormCreate(Sender: TObject);
begin
fRealcalcularPedfor;

end;

end.
