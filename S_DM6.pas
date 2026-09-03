unit S_DM6;

interface

uses
  SysUtils, Classes, DB, DBTables,dialogs,func,lerarq, RxMemDS;

type
  TDM6 = class(TDataModule)
    Tb_Con01: TQuery;
    Tb_Con01C01CODEMP: TFloatField;
    Tb_Con01C01CODCON: TFloatField;
    Tb_Con01C01DATCON: TDateTimeField;
    Tb_Con01C01DATFEC: TDateTimeField;
    Tb_Con01C01QTDITENS: TFloatField;
    Tb_Con01C01CODTRA: TFloatField;
    Tb_Con01C01PESOB: TFloatField;
    Tb_Con01C01QTDM3: TFloatField;
    Tb_Con01C01VLRTOT: TFloatField;
    Tb_Con01C01VALFRE: TFloatField;
    Tb_Con01C01VALFRE_DIG: TFloatField;
    Tb_Con01C01CODUSR_INC: TFloatField;
    Tb_Con01C01CODUSR_ALT: TFloatField;
    Tb_Con01C01DTHR_ALT: TDateTimeField;
    Tb_Con01C01ESTADO: TFloatField;
    Tb_Con01C01QTDPED: TFloatField;
    U_Con01: TUpdateSQL;
    Src_Con01: TDataSource;
    Tb_Con02: TQuery;
    U_Con02: TUpdateSQL;
    Src_Con02: TDataSource;
    Tb_Con02C02CODEMP: TFloatField;
    Tb_Con02C02CODCON: TFloatField;
    Tb_Con02C02CODEMP_PED: TFloatField;
    Tb_Con02C02LOTSEQ_PED: TFloatField;
    Tb_Con02C02CHAVE_PED: TFloatField;
    Tb_Con02C02PESOB: TFloatField;
    Tb_Con02C02QTDM3: TFloatField;
    Tb_Con02C02VLRTOT: TFloatField;
    Tb_Con02C02VALFRE: TFloatField;
    Tb_Con02C02VALFRE_DIG: TFloatField;
    Tb_Con02C02SITENT: TFloatField;
    Tb_Con02C02TIPO_ENTREGA: TFloatField;
    Tb_Con02C02OBSERVACAO: TStringField;
    Tb_Con02C02OBS_CONHEC: TStringField;
    Tb_Con02C02CODUSR_INC: TFloatField;
    Tb_Con02C02CODUSR_ALT: TFloatField;
    Tb_Con02C02DTHR_ALT: TDateTimeField;
    Tb_Con02C02ESTADO: TFloatField;
    Tb_Con03: TQuery;
    U_Con03: TUpdateSQL;
    Src_Con03: TDataSource;
    Tb_Con03C03CODEMP: TFloatField;
    Tb_Con03C03CODCON: TFloatField;
    Tb_Con03C03CODEMP_PED: TFloatField;
    Tb_Con03C03LOTSEQ_PED: TFloatField;
    Tb_Con03C03CHAVE_PED: TFloatField;
    Tb_Con03C03CODPRO: TFloatField;
    Tb_Con03C03QTDVEND: TFloatField;
    Tb_Con03C03QTDENT: TFloatField;
    Tb_Con03C03QTDPEND: TFloatField;
    Tb_Con03C03PESOB: TFloatField;
    Tb_Con03C03QTDM3: TFloatField;
    Tb_Con03C03VLRTOT: TFloatField;
    Tb_Con03C03VALFRE: TFloatField;
    Tb_Con03C03VALFRE_DIG: TFloatField;
    Tb_Con03C03SITENT: TFloatField;
    Tb_Con03C03CODUSR_INC: TFloatField;
    Tb_Con03C03CODUSR_ALT: TFloatField;
    Tb_Con03C03DTHR_ALT: TDateTimeField;
    Tb_Con03C03ESTADO: TFloatField;
    Tb_Con03C03ITEM: TFloatField;
    Tb_Con02C02DATCON: TDateTimeField;
    Tb_Con02CRAZAO: TStringField;
    Tb_Con02CLOG: TStringField;
    Tb_Con02CBAIRRO: TStringField;
    Tb_Con02CCIDADE: TStringField;
    Tb_Con02CUF: TStringField;
    Tb_Con03PDNOME: TStringField;
    Tb_Con03PDMARCA: TStringField;
    Tb_Con03PDUND: TStringField;
    Tb_Con03PDPESOB: TFloatField;
    Tb_Con03PDQTDM3: TFloatField;
    Tb_Con01C01QTDMAN: TFloatField;
    Tb_Con02C02QTDMAN: TFloatField;
    Tb_Con03C03QTDMAN: TFloatField;
    Tb_Con01TRRAZTRA: TStringField;
    Tb_Con03GRPERCFRE: TFloatField;
    Tb_Con02tipo_entrega: TStringField;
    Tb_Con02CCODCLI: TFloatField;
    Tb_Con02endereco: TStringField;
    Tb_Con02CCEP: TStringField;
    Tb_Con02CFONE01: TStringField;
    Tb_Con02nomtra: TStringField;
    Tb_Con02C02CODTRA: TFloatField;
    Tb_Con02C02CODVEN: TFloatField;
    Tb_Con02nomven: TStringField;
    Tb_Con03C03LOTE: TStringField;
    Tb_Con02C02CODCLI: TFloatField;
    U_PedBlq: TUpdateSQL;
    Tb_PedBlq: TQuery;
    Tb_PedBlqP1CODEMP: TFloatField;
    Tb_PedBlqP1CHAVE: TFloatField;
    Tb_PedBlqP1ORDEM: TFloatField;
    Tb_PedBlqP1DATAP: TDateTimeField;
    Tb_PedBlqP1TIPO: TFloatField;
    Tb_PedBlqP1DATDOC: TDateTimeField;
    Tb_PedBlqP1CODCLI: TFloatField;
    Tb_PedBlqP1CODVEN: TFloatField;
    Tb_PedBlqP1ORIGEM: TFloatField;
    Tb_PedBlqP1CODTRA: TFloatField;
    Tb_PedBlqP1DATANF: TDateTimeField;
    Tb_PedBlqP1NUMNF: TFloatField;
    Tb_PedBlqP1STATUS: TFloatField;
    Tb_PedBlqP1TOTALB: TFloatField;
    Tb_PedBlqP1TOTALL: TFloatField;
    Tb_PedBlqP1CODUSR: TFloatField;
    Tb_PedBlqP1HORADIG: TStringField;
    Tb_PedBlqP1DTMOD: TDateTimeField;
    Tb_PedBlqP1HRMOD: TStringField;
    Tb_PedBlqP1USRMOD: TFloatField;
    Tb_PedBlqP1CONF: TStringField;
    Tb_PedBlqP1CODCON: TFloatField;
    Tb_PedBlqP1DATCON: TDateTimeField;
    Tb_PedBlqP1HORCON: TStringField;
    Tb_PedBlqP1EMIDOC: TFloatField;
    Tb_PedBlqP1TIPENT: TFloatField;
    Tb_PedBlqP1PREVENT: TDateTimeField;
    Tb_PedBlqP1HPREVENT: TStringField;
    Tb_PedBlqP1CODENT: TFloatField;
    Tb_PedBlqP1DATENT: TDateTimeField;
    Tb_PedBlqP1HORENT: TStringField;
    Tb_PedBlqP1CUPOM: TFloatField;
    Tb_PedBlqP1TOTDES: TFloatField;
    Tb_PedBlqP1QTDVOL: TFloatField;
    Tb_PedBlqP1PESOL: TFloatField;
    Tb_PedBlqP1PESOB: TFloatField;
    Tb_PedBlqP1BANCO: TFloatField;
    Tb_PedBlqP1CODTLV: TFloatField;
    Tb_PedBlqP1ETIVOL: TFloatField;
    Tb_PedBlqP1NUMCF: TFloatField;
    Tb_PedBlqP1CODECF: TFloatField;
    Tb_PedBlqP1DATACF: TDateTimeField;
    Tb_PedBlqP1CODSEP: TFloatField;
    Tb_PedBlqP1DATASEP: TDateTimeField;
    Tb_PedBlqP1HORSEP: TStringField;
    Tb_PedBlqP1CODEMB: TFloatField;
    Tb_PedBlqP1DATAEMB: TDateTimeField;
    Tb_PedBlqP1HOREMB: TStringField;
    Tb_PedBlqP1ACRECONV: TFloatField;
    Tb_PedBlqP1ACREGER: TFloatField;
    Tb_PedBlqP1PACRECONV: TFloatField;
    Tb_PedBlqP1PACREGER: TFloatField;
    Tb_PedBlqCRAZAO: TStringField;
    Tb_PedBlqP1ESPECIE: TStringField;
    Tb_PedBlqP1MINUTA: TFloatField;
    Tb_PedBlqnomdig: TStringField;
    Tb_PedBlqnomalt: TStringField;
    Tb_PedBlqnomsep: TStringField;
    Tb_PedBlqnomcon: TStringField;
    Tb_PedBlqnomemb: TStringField;
    Tb_PedBlqdatalt: TStringField;
    Tb_PedBlqdatsep: TStringField;
    Tb_PedBlqdatcon: TStringField;
    Tb_PedBlqdatemb: TStringField;
    Tb_PedBlqnomtra: TStringField;
    Tb_PedBlqdatanf: TStringField;
    Tb_PedBlqdatacf: TStringField;
    Tb_PedBlqemitiuls: TIntegerField;
    Tb_PedBlqdatpent: TStringField;
    Tb_PedBlqdatent: TStringField;
    Tb_PedBlqtipo: TStringField;
    Tb_PedBlqdatdoc: TStringField;
    Tb_PedBlqnomven: TStringField;
    Tb_PedBlqP1FORMACE: TFloatField;
    Tb_PedBlqP1LOTSEQ: TFloatField;
    Tb_PedBlqvalpag: TFloatField;
    Tb_PedBlqdesc: TFloatField;
    Tb_PedBlqjuros: TFloatField;
    Tb_PedBlqapagar: TFloatField;
    Tb_PedBlqP1CODBLOQ_LIB: TStringField;
    Tb_PedBlqOK: TStringField;
    Tb_PedBlqrazsoc: TStringField;
    Tb_PedBlqP1BLOQPEND: TFloatField;
    Tb_PedBlqP1CODBLOQ: TStringField;
    Tb_PedBlqpendencias: TStringField;
    Src_PedBlq: TDataSource;
    Tb_PedBlqcidade: TStringField;
    Tb_PedBlquf: TStringField;
    Tb_CFTabIcm: TQuery;
    U_CFTabIcm: TUpdateSQL;
    Src_CFTabIcm: TDataSource;
    Tb_CFTabIcmCICODEMP: TFloatField;
    Tb_CFTabIcmCICLASSIF: TStringField;
    Tb_CFTabIcmCITABICMS: TStringField;
    Tb_OrPed: TQuery;
    U_ORPED: TUpdateSQL;
    Src_OrPed: TDataSource;
    Tb_OrPedCOCODIGO: TFloatField;
    Tb_OrPedCONOMORI: TStringField;
    Tb_OrPedCOVINCULO: TFloatField;
    Tb_PedBlqprazos: TStringField;
    Tb_Regiao: TQuery;
    U_Regiao: TUpdateSQL;
    Src_Regiao: TDataSource;
    Tb_RegiaoCR_CODEMP: TFloatField;
    Tb_RegiaoCR_CODREG: TFloatField;
    Tb_RegiaoCR_NOMREG: TStringField;
    Tb_RegiaoCR_ACREREG: TFloatField;
    Tb_RegiaoCR_DESREG: TFloatField;
    Tb_RegiaoCR_DATINC: TDateTimeField;
    Tb_RegiaoCR_USRINC: TFloatField;
    Tb_RegiaoCR_DATALT: TDateTimeField;
    Tb_RegiaoCR_USRALT: TFloatField;
    Tb_AJCOMIS: TQuery;
    Tb_AJCOMISAJC_CODEMP: TFloatField;
    Tb_AJCOMISAJC_FATOR_INI: TFloatField;
    Tb_AJCOMISAJC_FATOR_TER: TFloatField;
    Tb_AJCOMISAJC_COMIS: TFloatField;
    Tb_AJCOMISAJC_USRINC: TFloatField;
    Tb_AJCOMISAJC_USRALT: TFloatField;
    U_AJCOMIS: TUpdateSQL;
    Src_AJCOMIS: TDataSource;
    Tb_AJCOMISAJC_DATHOR_INC: TDateTimeField;
    Tb_AJCOMISAJC_DATHOR_ALT: TDateTimeField;
    Tb_CLFISCAL_UF: TQuery;
    Tb_CLFISCAL_UFCFCODEMP: TFloatField;
    Tb_CLFISCAL_UFCFUF: TStringField;
    Tb_CLFISCAL_UFCFCLAS_FISCAL: TStringField;
    Tb_CLFISCAL_UFCFCST_RV: TStringField;
    Tb_CLFISCAL_UFCFCST_CF: TStringField;
    U_CLFISCAL_UF: TUpdateSQL;
    Src_CLFISCAL_UF: TDataSource;
    Tb_CLFISCAL_UFCFCODUSR_INC: TFloatField;
    Tb_CLFISCAL_UFCFDATHOR_INC: TDateTimeField;
    Tb_CLFISCAL_UFCFCODUSR_ALT: TFloatField;
    Tb_CLFISCAL_UFCFDATHOR_ALT: TDateTimeField;
    Tb_ParLCD: TQuery;
    Tb_ParLCDLCD_DESCLOC: TStringField;
    Tb_ParLCDLCD_ENDLOC: TStringField;
    U_ParLCD: TUpdateSQL;
    Src_PARLCD: TDataSource;
    Tb_ParLCDLCD_ORDEM: TFloatField;
    Tb_ParLCDLCD_CODUSR_INC: TFloatField;
    Tb_ParLCDLCD_DATHOR_INC: TDateTimeField;
    Tb_ParLCDLCD_CODUSR_ALT: TFloatField;
    Tb_ParLCDLCD_DATHOR_ALT: TDateTimeField;
    Tb_ParLCDdescloc: TStringField;
    Tb_ParLCDendloc: TStringField;
    Tb_ChqCP: TQuery;
    Tb_ChqCPpro_ultdat: TDateField;
    Tb_ChqCPdtbx: TDateField;
    U_ChqCP: TUpdateSQL;
    Src_ChqCP: TDataSource;
    Tb_ChqCPnomfor: TStringField;
    Tb_ChqCPCHCODEMP: TFloatField;
    Tb_ChqCPCHSEQ: TFloatField;
    Tb_ChqCPCHNUMERO: TFloatField;
    Tb_ChqCPCHBANCO: TFloatField;
    Tb_ChqCPCHSERIE: TStringField;
    Tb_ChqCPCHCODFOR: TFloatField;
    Tb_ChqCPCHEMIT: TStringField;
    Tb_ChqCPCHCPF: TFloatField;
    Tb_ChqCPCHRG: TStringField;
    Tb_ChqCPCHCC: TStringField;
    Tb_ChqCPCHDTNAS: TDateTimeField;
    Tb_ChqCPCHVALOR: TFloatField;
    Tb_ChqCPCHDTEMIS: TDateTimeField;
    Tb_ChqCPCHDTDEP: TDateTimeField;
    Tb_ChqCPCHAGENCIA: TStringField;
    Tb_ChqCPCHLOTE: TFloatField;
    Tb_ChqCPCHTIPO: TFloatField;
    Tb_ChqCPCHDTBX: TDateTimeField;
    Tb_ChqCPCHUSRBX: TFloatField;
    Tb_ChqCPCHSTATUS: TFloatField;
    Tb_ChqCPCHCAIXA: TFloatField;
    Tb_ChqCPCHCOMP: TStringField;
    Tb_ChqCPCHLOTEBX: TFloatField;
    Tb_ChqCPCHLOTSEQ: TFloatField;
    Tb_ChqCPCHLEMAT: TFloatField;
    Tb_ChqCPCHOBSL01: TStringField;
    Tb_ChqCPCHOBSL02: TStringField;
    Tb_ChqCPCHPROR_QTDP: TFloatField;
    Tb_ChqCPCHPRO_ULTDAT: TDateTimeField;
    Tb_ChqCPCHDEPOSITO: TFloatField;
    Tb_NFE_Pais: TQuery;
    U_NFE_Pais: TUpdateSQL;
    Src_NFE_Pais: TDataSource;
    Tb_NFE_PaisCPCODPAIS: TFloatField;
    Tb_NFE_PaisCPNOMEPAIS: TStringField;
    Tb_NFE_Reg: TQuery;
    Src_NFE_Reg: TDataSource;
    U_NFE_Reg: TUpdateSQL;
    Tb_NFE_RegCRCODREG: TFloatField;
    Tb_NFE_RegCRCODPAIS: TFloatField;
    Tb_NFE_RegCRNOMREG: TStringField;
    Tb_ChqCPCHCODUSR: TFloatField;
    Tb_ChqCPCHDTALT: TDateTimeField;
    Tb_ChqCPCHHRALT: TStringField;
    Tb_ChqCPCHLOTSEQ_FC: TFloatField;
    Tb_ChqCPCHCODLDR: TFloatField;
    Tb_ChqCPCHCODCTA: TFloatField;
    Tb_ChqCPCHNOMCTA: TStringField;
    Tb_ChqCPCHCODCC: TStringField;
    Tb_ChqCPCHNOMCC: TStringField;
    Tb_ChqCPCHNATDC: TStringField;
    Tb_ChqCPCHCODDEP: TStringField;
    Tb_ChqCPCHNOMDEP: TStringField;
    Tb_ChqCPCHDESCMV: TStringField;
    Tb_ChqCPCHLOTSEQ_BT: TFloatField;
    Tb_ChqCPCHLOTE_BT: TFloatField;
    Tb_ChqCPCHLOTSEQ_FC_DEB: TFloatField;
    Tb_ChqCPCHCODLDR_DEB: TFloatField;
    Tb_Depen: TQuery;
    U_Depen: TUpdateSQL;
    Tb_DepenTDCODEMP: TFloatField;
    Tb_DepenTDCODDEP: TFloatField;
    Tb_DepenTPDNOME: TStringField;
    Tb_Sind: TQuery;
    U_Sind: TUpdateSQL;
    Tb_SindSDCODEMP: TFloatField;
    Tb_SindSDCODSIND: TFloatField;
    Tb_SindSDNOME: TStringField;
    Tb_SindSDCNPJ: TStringField;
    Tb_SindSDENDE: TStringField;
    Tb_SindSDBAIRRO: TFloatField;
    Tb_SindSDNOMEBAIRRO: TStringField;
    Tb_SindSDCODCIDA: TFloatField;
    Tb_SindSDNOMECIDA: TStringField;
    Tb_SindSDUFED: TStringField;
    Tb_SindSDCEP: TStringField;
    Tb_SindSDFONE: TStringField;
    Tb_SindSDPERSAL: TFloatField;
    Tb_SindSDVLRVALIME: TFloatField;
    Tb_SindSDVLRSEG: TFloatField;
    Tb_SindSDDT_CAD: TDateTimeField;
    Tb_SindSDDT_UALT: TDateTimeField;
    Tb_SindSDCODUSR: TFloatField;
    Ds_Depen: TDataSource;
    Ds_Sind: TDataSource;
    Tb_Turno: TQuery;
    U_Turno: TUpdateSQL;
    Ds_Turno: TDataSource;
    Tb_TurnoTR_CODEMP: TFloatField;
    Tb_TurnoTR_CODTURNO: TFloatField;
    Tb_TurnoTR_DESCRICAO: TStringField;
    Tb_TurnoTR_HRSE1: TDateTimeField;
    Tb_TurnoTR_HRSS1: TDateTimeField;
    Tb_TurnoTR_HRSE2: TDateTimeField;
    Tb_TurnoTR_HRSS2: TDateTimeField;
    Tb_Pro_InfNut: TQuery;
    Tb_Pro_InfNutPIN_CODEMP: TFloatField;
    Tb_Pro_InfNutPIN_CODPRO: TFloatField;
    Tb_Pro_InfNutPIN_MEDIDA: TStringField;
    Tb_Pro_InfNutPIN_PERCVD: TFloatField;
    Src_Pro_InfNut: TDataSource;
    Tb_Prod_Dep: TQuery;
    Src_Prod_Dep: TDataSource;
    U_Prod_Dep: TUpdateSQL;
    Tb_Prod_DepPRODEP_CODEMP: TFloatField;
    Tb_Prod_DepPRODEP_CODDEP: TFloatField;
    Tb_Prod_DepPRODEP_NOME: TStringField;
    Tb_Pro_CIN: TQuery;
    Src_Pro_CIN: TDataSource;
    Tb_Pro_CINCIN_CODEMP: TFloatField;
    Tb_Pro_CINCIN_CODPRO: TFloatField;
    Tb_Pro_CINCIN_INFNUT: TStringField;
    Tb_Pro_CINCIN_OBSNUTRIC: TMemoField;
    U_Pro_CIN: TUpdateSQL;
    Tb_Pro_CINCIN_CONDARMAZ: TMemoField;
    Tb_RCli: TQuery;
    Tb_RCliRCODEMP: TFloatField;
    Tb_RCliRCODRAM: TFloatField;
    Tb_RCliRNOME: TStringField;
    U_RCli: TUpdateSQL;
    Src_RCli: TDataSource;
    mem_parlcd: TRxMemoryData;
    mem_parlcddescloc: TStringField;
    mem_parlcdendloc: TStringField;
    mem_parlcdativo: TStringField;
    Tb_ParLCDLCD_TIPSERV: TFloatField;
    Tb_ChqCPCHDATHOR_INC: TDateTimeField;
    Tb_ChqCPCHCODUSR_INC: TFloatField;
    Tb_ChqCPCHDATHOR_ALT: TDateTimeField;
    Tb_ChqCPCHCODUSR_ALT: TFloatField;
    Query_NFECab: TQuery;
    Query_NFEDet: TQuery;
    Query_NFEDup: TQuery;
    Query_NFECampos: TQuery;
    Query_NFECamposTABLE_NAME: TStringField;
    Query_NFECamposCOLUMN_NAME: TStringField;
    Tb_Pro_Ext: TQuery;
    Src_Pro_Ext: TDataSource;
    Up_Pro_Ext: TUpdateSQL;
    Tb_Pro_ExtPROEXT_CODEMP: TFloatField;
    Tb_Pro_ExtPROEXT_CODEXT: TFloatField;
    Tb_Pro_ExtPROEXT_NOME: TStringField;
    Tb_Pro_ExtPROEXT_LINHA01: TStringField;
    Tb_Pro_ExtPROEXT_LINHA02: TStringField;
    Tb_Pro_ExtPROEXT_LINHA03: TStringField;
    Tb_Pro_ExtPROEXT_LINHA04: TStringField;
    Tb_Pro_ExtPROEXT_LINHA05: TStringField;
    src_pro_cmet: TDataSource;
    tb_cmet: TQuery;
    tb_cmetCMET_CODEMP: TFloatField;
    tb_cmetCMET_CODPRO: TFloatField;
    tb_cmetCMET_CODIGO: TFloatField;
    tb_cmetCMET_NOME: TStringField;
    tb_cmetCMET_PRECO: TFloatField;
    u_cmet: TUpdateSQL;
    Tb_CFTabIcmCIMONOFASICO: TStringField;
    Tb_CFTabIcmCICLASSIF_NOME: TMemoField;
    Tb_CFTabIcmCIDI: TStringField;
    Tb_CFTabIcmCIDIOBS: TMemoField;
    Tb_CFTabIcmCIVALAPROXNAC: TFloatField;
    Tb_CFTabIcmCIVALAPROXIMP: TFloatField;
    Tb_CFTabIcmCI_CEST: TStringField;
    tb_param: TRxMemoryData;
    tb_paramNOMCOMPRIMLIN: TStringField;
    tb_paramNOMCOMSEGLIN: TStringField;
    tb_paramCODPROMASK: TStringField;
    tb_paramCODPRO: TStringField;
    tb_paramAPRESENT: TStringField;
    tb_paramNUMOP: TStringField;
    tb_paramQTDPREV: TStringField;
    tb_paramMESANOEMI: TStringField;
    tb_paramMESANOREV: TStringField;
    tb_paramDATFAB: TStringField;
    tb_paramDATVAL: TStringField;
    tb_paramDATEMI: TStringField;
    tb_paramNUMLOT: TStringField;
    tb_paramRESPTEC: TStringField;
    tb_paramGERPROD: TStringField;
    tb_paramGERQUAL: TStringField;
    tb_paramDATREV: TStringField;
    tb_paramDATAFAB: TStringField;
    tb_paramHORMININIFRAC: TStringField;
    tb_paramHORMINTERFRAC: TStringField;
    tb_paramNOMFUNCFRAC: TStringField;
    tb_paramNOMFUNCCONFFRAC: TStringField;
    tb_paramHORMININIMAN: TStringField;
    tb_paramDATAINIMAN: TStringField;
    tb_paramHORMINTERMAN: TStringField;
    tb_paramNOMFUNCMAN: TStringField;
    tb_paramNOMFUNCONFMAN: TStringField;
    tb_paramNOMANALISTA: TStringField;
    tb_paramNOMSUPANALISTA: TStringField;
    tb_paramOBSANALISE: TStringField;
    tb_paramRESULTANALISE: TStringField;
    tb_paramSETOR: TStringField;
    tb_paramPESOMIN: TStringField;
    tb_paramPESOMEDIO: TStringField;
    tb_paramPESOMAXIMO: TStringField;
    tb_paramNOMPRO: TStringField;
    tb_paramDATAEMI: TStringField;
    tb_paramDESC_SOBRE: TMemoField;
    tb_paramObservacao_Prod: TMemoField;
    tb_paramQTDGRML: TFloatField;
    tb_paramQTDGRML_TOTAL: TFloatField;
    Tb_PedBlqP1OBS2: TMemoField;
    Tb_PedBlqP1OBS3: TMemoField;
    Tb_PedBlqP1OBS1: TMemoField;
    Tb_Con02P1OBS1: TMemoField;
    Tb_Con02P1OBS2: TMemoField;
    Tb_Con02P1OBS3: TMemoField;
    Tb_CFTabIcmCFUNIDADEEXP: TStringField;
    tb_paramMARCA: TStringField;
    Tb_CFTabIcmCIPERC_CSLL: TFloatField;
    Tb_CFTabIcmCIPERC_IRRF: TFloatField;
    Tb_CFTabIcmCIVALAPROXEST: TFloatField;
    Tb_CFTabIcmCIVALAPROXMUN: TFloatField;
    Tb_CFTabIcmCIEX: TStringField;
    Tb_CFTabIcmCITIPO: TStringField;
    Tb_CFTabIcmCICHAVE: TStringField;
    Tb_CFTabIcmCIVERSAO: TStringField;
    Tb_CFTabIcmCIDT_INI: TDateTimeField;
    Tb_CFTabIcmCIDT_FIN: TDateTimeField;
    procedure c(DataSet: TDataSet);
    procedure Tb_Con02CalcFields(DataSet: TDataSet);
    procedure Tb_PedBlqCalcFields(DataSet: TDataSet);
    procedure Tb_CFTabIcmAfterInsert(DataSet: TDataSet);
    procedure Tb_OrPedBeforeInsert(DataSet: TDataSet);
    procedure Tb_OrPedAfterInsert(DataSet: TDataSet);
    procedure Tb_RegiaoBeforeInsert(DataSet: TDataSet);
    procedure Tb_RegiaoAfterInsert(DataSet: TDataSet);
    procedure Tb_AJCOMISBeforeInsert(DataSet: TDataSet);
    procedure Tb_AJCOMISAfterInsert(DataSet: TDataSet);
    procedure Tb_Con01BeforePost(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFAfterCancel(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFAfterInsert(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFAfterEdit(DataSet: TDataSet);
    procedure Tb_ParLCDCalcFields(DataSet: TDataSet);
    procedure Tb_ChqCPAfterInsert(DataSet: TDataSet);
    procedure Tb_ChqCPBeforeInsert(DataSet: TDataSet);
    procedure Tb_ChqCPBeforePost(DataSet: TDataSet);
    procedure Tb_ChqCPCalcFields(DataSet: TDataSet);
    procedure Tb_NFE_RegBeforeInsert(DataSet: TDataSet);
    procedure Tb_NFE_PaisBeforeInsert(DataSet: TDataSet);
    procedure Tb_NFE_RegAfterInsert(DataSet: TDataSet);
    procedure Tb_NFE_PaisAfterInsert(DataSet: TDataSet);
    procedure Tb_NFE_RegCalcFields(DataSet: TDataSet);
    procedure Tb_DepenAfterInsert(DataSet: TDataSet);
    procedure Tb_SindAfterInsert(DataSet: TDataSet);
    procedure Tb_SindBeforeInsert(DataSet: TDataSet);
    procedure Tb_TurnoAfterInsert(DataSet: TDataSet);
    procedure Tb_TurnoBeforeInsert(DataSet: TDataSet);
    procedure Tb_Prod_DepBeforeInsert(DataSet: TDataSet);
    procedure Tb_Prod_DepAfterInsert(DataSet: TDataSet);
    procedure Tb_RCliAfterInsert(DataSet: TDataSet);
    procedure Tb_RCliBeforeInsert(DataSet: TDataSet);
    procedure Tb_Pro_ExtAfterInsert(DataSet: TDataSet);
    procedure Tb_Pro_ExtBeforeInsert(DataSet: TDataSet);
    procedure Tb_CFTabIcmBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM6: TDM6;
  mCodReal: Real;
implementation

uses S_DM1, Func2;

{$R *.dfm}

procedure TDM6.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TDM6.Tb_Con02CalcFields(DataSet: TDataSet);
begin
if Tb_Con02C02TIPO_ENTREGA.AsInteger>0 then
   Tb_Con02tipo_entrega.Value:='T'
else
   Tb_Con02tipo_entrega.Value:='P';
end;

procedure TDM6.Tb_PedBlqCalcFields(DataSet: TDataSet);
var
x, mposini,posfim: Integer;
begin
if DM6.Tb_PedBlqP1USRMOD.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_PedBlqP1USRMOD.AsString) then
      DM6.Tb_PedBlqnomalt.Value:=DM1.Query1.Fields[0].AsString;
   end;

if DM6.Tb_PedBlqP1CODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_PedBlqP1CODUSR.AsString) then
      DM6.Tb_PedBlqnomdig.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (DM6.Tb_PedBlqP1DTMOD.IsNull) or (DM6.Tb_PedBlqP1DTMOD.Value<=pdatanula) then
   DM6.Tb_PedBlqdatalt.Value:='Não Definido'
else
   DM6.Tb_PedBlqdatalt.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DTMOD.Value);

if DM6.Tb_PedBlqP1CODSEP.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_PedBlqP1CODSEP.AsString) then
      DM6.Tb_PedBlqnomsep.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (DM6.Tb_PedBlqP1DATASEP.IsNull) or (DM6.Tb_PedBlqP1DATASEP.Value<=pdatanula) then
   DM6.Tb_PedBlqdatsep.Value:='Não Definido'
else
   DM6.Tb_PedBlqdatsep.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATASEP.Value);


if DM6.Tb_PedBlqP1CODCON.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_PedBlqP1CODCON.AsString) then
      DM6.Tb_PedBlqnomcon.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (DM6.Tb_PedBlqP1DATCON.IsNull) or (DM6.Tb_PedBlqP1DATCON.Value<=pdatanula) then
   DM6.Tb_PedBlqdatcon.Value:='Não Definido'
else
   DM6.Tb_PedBlqdatcon.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATCON.Value);

if DM6.Tb_PedBlqP1CODEMB.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_PedBlqP1CODEMB.AsString) then
      DM6.Tb_PedBlqnomemb.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (DM6.Tb_PedBlqP1DATAEMB.IsNull) or (DM6.Tb_PedBlqP1DATAEMB.Value<=pdatanula) then
   DM6.Tb_PedBlqdatemb.Value:='Não Definido'
else
   DM6.Tb_PedBlqdatemb.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATAEMB.Value);

if DM6.Tb_PedBlqP1CODTRA.Value>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM6.Tb_PedBlqP1CODTRA.AsString) then
      DM6.Tb_PedBlqnomtra.Value:=DM1.Query1.Fields[0].AsString;
   end;
if DM6.Tb_PedBlqP1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM6.Tb_PedBlqP1CODVEN.AsString) then
      DM6.Tb_PedBlqnomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (DM6.Tb_PedBlqP1DATANF.IsNull) or (DM6.Tb_PedBlqP1DATANF.Value<=pdatanula) then
   DM6.Tb_PedBlqdatanf.Value:='Não Emitiu'
else
   DM6.Tb_PedBlqdatanf.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATANF.Value);

if (DM6.Tb_PedBlqP1DATDOC.IsNull) or (DM6.Tb_PedBlqP1DATDOC.Value<=pdatanula) then
   DM6.Tb_PedBlqdatdoc.Value:='Não Emitiu'
else
   DM6.Tb_PedBlqdatdoc.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATDOC.Value);

if (DM6.Tb_PedBlqP1DATACF.IsNull) or (DM6.Tb_PedBlqP1DATACF.Value<=pdatanula) then
   DM6.Tb_PedBlqdatacf.Value:='Não Emitiu'
else
   DM6.Tb_PedBlqdatacf.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATACF.Value);

if (DM6.Tb_PedBlqP1PREVENT.IsNull) or (DM6.Tb_PedBlqP1PREVENT.Value<=pdatanula) then
   DM6.Tb_PedBlqdatpent.Value:='Não Definida'
else
   DM6.Tb_PedBlqdatpent.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1PREVENT.Value);

if (DM6.Tb_PedBlqP1DATENT.IsNull) or (DM6.Tb_PedBlqP1DATENT.Value<=pdatanula) then
   DM6.Tb_PedBlqdatent.Value:='Não Definida'
else
   DM6.Tb_PedBlqdatent.Value:=FormatDateTime(fdt2, DM6.Tb_PedBlqP1DATENT.Value);

if DM6.Tb_PedBlqP1STATUS.Value>0 then
   DM6.Tb_PedBlqemitiuls.Value:=1
else
   DM6.Tb_PedBlqemitiuls.Value:=0;
DM6.Tb_PedBlqvalpag.Value:=0;
DM6.Tb_PedBlqdesc.Value  :=0;
DM6.Tb_PedBlqjuros.Value :=0;
DM6.Tb_PedBlqapagar.Value:=0;

DM6.Tb_PedBlqtipo.Value:=tab_tped[DM6.Tb_PedBlqP1TIPO.AsInteger];

DM6.Tb_PedBlqrazsoc.Value:=DM6.Tb_PedBlqCRAZAO.Value;
if DM6.Tb_PedBlqP1CODCLI.AsInteger<3 then
   begin
   if fLCadCSF2(0,DM6.Tb_PedBlqP1CODEMP.AsInteger,DM6.Tb_PedBlqP1LOTSEQ.AsFloat,
                 DM6.Tb_PedBlqP1CHAVE.AsFloat,0,0) then
      DM6.Tb_PedBlqrazsoc.Value:=DM1.Tb_CSFCFRAZAO.Value;
   end;
if DM6.Tb_PedBlqP1TIPO.Asinteger=0 then
   DM6.Tb_PedBlqpendencias.Value:='Faturar'
else if DM6.Tb_PedBlqP1STATUS.Value<1 then
   DM6.Tb_PedBlqpendencias.Value:='Lista Sep.'
else if (DM6.Tb_PedBlqP1STATUS.Value<2) then
   begin
   if DM6.Tb_PedBlqP1CONF.AsString='S' then
      DM6.Tb_PedBlqpendencias.Value:='Nota Fiscal'
   else
      DM6.Tb_PedBlqpendencias.Value:='Conf.Elet.';
   end;
if DM6.Tb_PedBlqP1BLOQPEND.AsInteger>1 then
   begin
   if Trim(DM6.Tb_PedBlqpendencias.AsString)='' then
      DM6.Tb_PedBlqpendencias.Value:='Bloqueado'
   else
      DM6.Tb_PedBlqpendencias.Value:=DM6.Tb_PedBlqpendencias.Value+'/Bloqueado';
   end;
if flqr1('CRAZAO,CCIDADE,CUF','C','CADCLI','N','CCODCLI',DM6.Tb_PedBlqP1CODCLI.AsString) then
   begin
   DM6.Tb_PedBlqcidade.Value:=DM1.Query1.Fields[1].AsString;
   DM6.Tb_PedBlquf.Value    :=DM1.Query1.Fields[2].AsString;
   end;

DM6.Tb_PedBlqprazos.Value:='';
if DM1.Tb_PargerPAGRUDUP.Value=1 then
   begin
   DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01V.SQL.Clear;
   DM1.Tb_Ped01V.SQL.Add('Select sum(P1VORDEM-P1VORDEM)+'+DM6.Tb_PedBlqP1CODEMP.AsString+' AS P1VORDEM,'
                     +'       sum(P1VSEQ)  AS P1VSEQ, '
                     +'       sum(P1VVALOR) AS P1VVALOR, '
                     +'       sum(P1VCOMISV) AS P1VCOMISV, '
                     +'       sum(P1VCOM02)  AS P1VCOM02, '
                     +'       sum(P1VCOM03)  AS P1VCOM03, '
                     +'       sum(P1VCOM04)  AS P1VCOM04, '
                     +'       sum(P1VCOMISS) AS P1VCOMISS, '
                     +'       sum(P1VCOMIST) AS P1VCOMIST, '
                     +'       sum(P1VFRETE)  AS P1VFRETE, '
                     +'       sum(P1VICMSR)  AS P1VICMSR, '
                     +'       sum(P1VDESCF)  AS P1VDESCF, '
                     +'       sum(P1VSEMCOM)  AS P1VSEMCOM, '
                     +'       sum(P1VCOMASSE) AS P1VCOMASSE, '
                     +'       sum(P1VTOTDI01) AS P1VTOTDI01, '
                     +'       sum(P1VTOTDI02) AS P1VTOTDI02, '
                     +'       sum(P1VTOTDI03) AS P1VTOTDI03, '
                     +'       sum(P1VTOTDIVL) AS P1VTOTDIVL, '
                     +'       sum(P1VVALDES01) AS P1VVALDES01, '
                     +'       sum(P1VVALDES02) AS P1VVALDES02, '
                     +'       sum(P1VVLRDES)   AS P1VVLRDES, '
                     +'       sum(P1VTARBAN)   AS P1VTARBAN, '
                     +'       sum(P1VSEG)      AS P1VSEG, '
                     +'       sum(P1VTOTIPI)    AS P1VTOTIPI, '
                     +'       sum(P1VTOTCGRU)   AS P1VTOTCGRU, '
                     +'       sum(P1VTOTSGRU)   AS P1VTOTSGRU, '
                     +'       sum(P1VVLRSERV)   AS P1VVLRSERV, '
                     +'       sum(P1VCOMISV_EXTRA)   AS P1VCOMISV_EXTRA, '
                     +'       max(P1VCHAVE_NIVEL) AS P1VCHAVE_NIVEL, '
                     +'       P1VCODEMP, '
                     +'       P1VLOTSEQ, '
                     +'       P1VCHAVE, '
                     +'       P1VTABPV, '
                     +'       P1VCODIGO, '
                     +'       P1VDATAV, '
                     +'       P1VDTDESCF, '
                     +'       P1VPFPGTO,'
                     +'       P1VVINC02,'
                     +'       P1VNOMFPGTO'
                     +'      ,P1VCODFP'
                     +'      ,P1VDEV_CODEMP'
                     +'      ,P1VDEV_CODECF'
                     +'      ,P1VDEV_NUMERO'
                     +'      ,P1VDEV_DESD'
                     +'      ,P1VDEV_DUP'
                     +'      ,P1VDEV_DTEMIS'
                     +' from CADP01V '
                     +' where P1VCODEMP=0'+DM6.Tb_PedBlqP1CODEMP.AsString
                     +' and   P1VLOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                     +' and   P1VCHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
                     +' group by '
                     +' P1VCODEMP, '
                     +' P1VLOTSEQ, '
                     +' P1VCHAVE, '
                     +' P1VTABPV, '
                     +' P1VCODIGO, '
                     +' P1VDATAV, '
                     +' P1VDTDESCF, '
                     +'       P1VPFPGTO,'
                     +'       P1VVINC02,'
                     +'       P1VNOMFPGTO'
                     +'      ,P1VCODFP'
                     +'      ,P1VDEV_CODEMP'
                     +'      ,P1VDEV_CODECF'
                     +'      ,P1VDEV_NUMERO'
                     +'      ,P1VDEV_DESD'
                     +'      ,P1VDEV_DUP'
                     +'      ,P1VDEV_DTEMIS'





                     );
   DM1.Tb_Ped01V.SQL.Add(' order by  P1VDATAV  ');
   DM1.Tb_Ped01V.Open;
   end
else
   begin
   DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01v.SQL.Clear;
   DM1.Tb_Ped01v.SQL.add('Select * from CADP01V where P1VCODEMP=0'+DM6.Tb_PedBlqP1CODEMP.AsString
                        +' and P1VLOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                        +' and P1VCHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
                        +' and P1VORDEM=0'+DM6.Tb_PedBlqP1ORDEM.AsString
                       +' order by P1VCODEMP,P1VCHAVE,P1VORDEM,P1VDATAV');
   DM1.Tb_Ped01V.Open;
   end;
mcinst:='';
While not DM1.Tb_Ped01v.Eof do
   begin
   if DM6.Tb_PedBlqP1DATANF.Value<=pdatanula then
      begin
      if DM6.Tb_PedBlqP1DATAP.Value=DM1.Tb_Ped01VP1VDATAV.Value then
         DM6.Tb_PedBlqprazos.value:=DM6.Tb_PedBlqprazos.value+mcinst+'AV'
      else
         DM6.Tb_PedBlqprazos.value:=DM6.Tb_PedBlqprazos.value+mcinst+FloatTostr(DM1.Tb_Ped01VP1VDATAV.Value-DM6.Tb_PedBlqP1DATAP.Value);
      end
   else
      begin
      if DM6.Tb_PedBlqP1DATANF.Value=DM1.Tb_Ped01VP1VDATAV.Value then
         DM6.Tb_PedBlqprazos.value:=DM6.Tb_PedBlqprazos.value+mcinst+'AV'
      else
         DM6.Tb_PedBlqprazos.value:=DM6.Tb_PedBlqprazos.value+mcinst+FloatTostr(DM1.Tb_Ped01VP1VDATAV.Value-DM6.Tb_PedBlqP1DATANF.Value);
      end;
   mcinst:='/';
   DM1.Tb_Ped01v.Next;
   end;




end;

procedure TDM6.Tb_CFTabIcmAfterInsert(DataSet: TDataSet);
begin
DM6.Tb_CFTabIcmCICODEMP.Value:=codemp;
end;

procedure TDM6.Tb_OrPedBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(COCODIGO) from CADORPED ');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsInteger+1;


end;

procedure TDM6.Tb_OrPedAfterInsert(DataSet: TDataSet);
begin
dm6.Tb_OrPedCOCODIGO.Value :=cod;
DM6.Tb_OrPedCOVINCULO.Value:=4;
DM6.Tb_OrPedCONOMORI.Value :='_';

end;

procedure TDM6.Tb_RegiaoBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select max(CR_CODREG) AS CODIGO from CADREGIAO '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADREGIAO',[]),'',' where CR_CODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;
end;

procedure TDM6.Tb_RegiaoAfterInsert(DataSet: TDataSet);
begin
  Tb_RegiaoCR_CODREG.Value      := Cod;
  Tb_RegiaoCR_CODEMP.Value      := codemp;

  FAtualizaBanco(0,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.AsString
  ,['CR_CODREG'],[FloatToStr(DM6.Tb_RegiaoCR_CODREG.AsFloat)]
  ,DM6.Tb_Regiao);
end;

procedure TDM6.Tb_AJCOMISBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(AJC_FATOR_TER) from CADAJCOMIS ');
if DM1.Qr_tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQL.Add(' where  AJC_CODEMP='+IntTostr(Codemp));
DM1.Query1.Open;
mCodReal:=DM1.Query1.Fields[0].AsFloat+0.01;


end;

procedure TDM6.Tb_AJCOMISAfterInsert(DataSet: TDataSet);
begin
DM6.Tb_AJCOMISAJC_CODEMP.Value:=codemp;
DM6.Tb_AJCOMISAJC_FATOR_INI.Value:=mCodReal;


end;

procedure TDM6.Tb_Con01BeforePost(DataSet: TDataSet);
var
i: Integer;
begin

{For i:=0 to DM6.Tb_AJCOMIS.FieldCount-1 do
   begin
   if not DM6.Tb_AJCOMIS.Fields[i].IsNull then
      Continue;
   if DM6.Tb_AJCOMIS.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM6.Tb_AJCOMIS.Fields[i].Value:=0
   end;}

end;

procedure TDM6.Tb_CLFISCAL_UFAfterCancel(DataSet: TDataSet);
begin

If Tb_CLFISCAL_UFCFCLAS_FISCAL.IsNull then
   begin
   Tb_CLFISCAL_UF.Delete;
   end;

end;

procedure TDM6.Tb_CLFISCAL_UFAfterInsert(DataSet: TDataSet);
begin
Tb_CLFISCAL_UFCFUF.Value     :=DM1.Tb_UFPUF.AsString;
Tb_CLFISCAL_UFCFCODEMP.Value :=codemp;
Tb_RegiaoCR_DATINC.AsDateTime:=Now;
Tb_RegiaoCR_USRINC.Value     :=codusr;


end;

procedure TDM6.Tb_CLFISCAL_UFAfterEdit(DataSet: TDataSet);
begin
Tb_CLFISCAL_UFCFDATHOR_ALT.AsDateTime:=Now;
Tb_CLFISCAL_UFCFCODUSR_ALT.Value     :=codusr;

end;

procedure TDM6.Tb_ParLCDCalcFields(DataSet: TDataSet);
begin
DM6.Tb_ParLCDdescloc.Value       :=EnDeCripta(DM6.Tb_ParLCDLCD_DESCLOC.Value,mNivel_Criptog);
DM6.Tb_ParLCDendloc.Value        :=EnDeCripta(DM6.Tb_ParLCDLCD_ENDLOC.Value,mNivel_Criptog);
end;

procedure TDM6.Tb_ChqCPAfterInsert(DataSet: TDataSet);
begin
DM6.Tb_ChqCPCHCODEMP.Value:=codemp;
DM6.Tb_ChqCPCHLOTSEQ.Value:=ls_codchqcli;
DM6.Tb_ChqCPCHSEQ.Value   :=cod;

end;

procedure TDM6.Tb_ChqCPBeforeInsert(DataSet: TDataSet);
begin
cod:=fbuscacodigoChq_pe(0);

end;

procedure TDM6.Tb_ChqCPBeforePost(DataSet: TDataSet);
var
i:Integer;
begin
if trim(DM6.Tb_ChqCPCHEMIT.Value)='' then
   DM6.Tb_ChqCPCHEMIT.Value:='_';
if DM6.Tb_ChqCPCHDTDEP.IsNull then
   DM6.Tb_ChqCPCHDTDEP.Value:=pdatanula;
if DM6.Tb_ChqCPCHDTEMIS.IsNull then
   DM6.Tb_ChqCPCHDTEMIS.AsString:=FormatDatetime(fdt2, pdatanula);

if DM6.Tb_ChqCPCHVALOR.IsNull then
   DM6.Tb_ChqCPCHVALOR.Value:=0;
if DM6.Tb_ChqCPCHNUMERO.IsNull then
   DM6.Tb_ChqCPCHNUMERO.Value:=0;
if DM6.Tb_ChqCPCHBANCO.IsNull then
   DM6.Tb_ChqCPCHBANCO.Value:=0;
if trim(DM6.Tb_ChqCPCHSERIE.Value)='' then
   DM6.Tb_ChqCPCHSERIE.Value:='_';
if trim(DM6.Tb_ChqCPCHAGENCIA.Value)='' then
   DM6.Tb_ChqCPCHAGENCIA.Value:='_';
if trim(DM6.Tb_ChqCPCHCC.Value)='' then
   DM6.Tb_ChqCPCHCC.Value:='_';

For i:=0 to DM6.Tb_ChqCP.FieldCount-1 do
   begin
   if not DM6.Tb_ChqCP.Fields[i].IsNull then
      Continue;
   if DM6.Tb_ChqCP.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      DM6.Tb_ChqCP.Fields[i].Value:=0
//   else if DM6.Tb_ChqCP.fields[i].DataType in [ftDate,ftDateTime] then
//      DM6.Tb_ChqCP.Fields[i].Value:=0
   else if DM6.Tb_ChqCP.Fields[i].DataType in [ftString,ftMemo] then
      DM6.Tb_ChqCP.Fields[i].Value:=' ';
   end;

end;

procedure TDM6.Tb_ChqCPCalcFields(DataSet: TDataSet);
begin
if DM6.Tb_ChqCPCHCODFOR.Value>0 then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM6.Tb_ChqCPCHCODFOR.AsString) then
      DM6.Tb_ChqCPnomfor.Value:=DM1.Query1.Fields[0].AsString;
   end;

if DM6.Tb_ChqCPCHDTBX.AsDateTime>pdatanula then
   DM6.Tb_ChqCPdtbx.Value:=DM6.Tb_ChqCPCHDTBX.Value;

if DM6.Tb_ChqCPCHPRO_ULTDAT.AsDateTime<=pdatanula then
   DM6.Tb_ChqCPpro_ultdat.Value:=DM6.Tb_ChqCPCHPRO_ULTDAT.Value;

end;

procedure TDM6.Tb_NFE_RegBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(CRCODREG) AS CODIGO FROM NFE_CADREG ');
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;
end;


procedure TDM6.Tb_NFE_PaisBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(CPCODPAIS) AS CODIGO FROM NFE_CADPAIS ');
DM1.Query1.Open;
cod      := DM1.Query1.FieldByName('CODIGO').ASFloat + 1;
end;

procedure TDM6.Tb_NFE_RegAfterInsert(DataSet: TDataSet);
begin
   DM6.Tb_NFE_RegCRCODREG.Value := cod;

   FAtualizaBanco(0,'NFE_CADREG','','',['CRCODREG'],[FloatToStr(DM6.Tb_NFE_REGCRCODREG.AsFloat)]
   ,DM6.Tb_NFE_REG);
end;

procedure TDM6.Tb_NFE_PaisAfterInsert(DataSet: TDataSet);
begin
DM6.Tb_NFE_PaisCPCODPAIS.Value:=cod;

FAtualizaBanco(0,'NFE_CADPAIS','','',['CPCODPAIS'],[FloatToStr(DM6.Tb_NFE_PaisCPCODPAIS.AsFloat)],DM6.Tb_NFE_Pais);
end;

procedure TDM6.Tb_NFE_RegCalcFields(DataSet: TDataSet);
begin
{if DM6.Tb_NFE_RegCRCODPAIS.AsFloat=0 then
   DM6.Tb_NFE_Regnomepais.Value:=''
else
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CPNOMEPAIS from NFE_CADPAIS where CPCODPAIS=0'+DM6.Tb_NFE_RegCRCODPAIS.AsString);
   DM1.query1.Open;
   if DM1.Query1.IsEmpty then
      DM6.Tb_NFE_Regnomepais.Value:=''
   else
      DM6.Tb_NFE_Regnomepais.Value:=DM1.Query1.Fields[0].AsString;
   end;}
end;

procedure TDM6.Tb_DepenAfterInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(TDCODDEP) AS CODIGO FROM CADTDEP '
                   +iif(not DM1.Qr_Tid.Locate('TINOME','CADTDEP',[]),'',' where TDCODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
Tb_DepenTDCODDEP.AsInteger := DM1.Query1.FieldByName('CODIGO').AsInteger + 1;
if codemp>100 then
  Tb_DepenTDCODEMP.Value:=codemp-100
else
  Tb_DepenTDCODEMP.Value:=codemp;

FAtualizaBanco(0,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODDEP.AsString
,['TDCODDEP'],[FloatToStr(DM6.Tb_DepenTDCODDEP.AsFloat)]
,DM6.Tb_Depen);

end;

procedure TDM6.Tb_SindAfterInsert(DataSet: TDataSet);
begin

  if codemp>100 then
    DM6.Tb_SindSDCODEMP.Value:=codemp-100
  else
    DM6.Tb_SindSDCODEMP.Value:=codemp;

  DM6.Tb_SindSDCODSIND.Value:=Cod;

  FAtualizaBanco(0,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODSIND.AsString
  ,['SDCODSIND'],[FloatToStr(DM6.Tb_SindSDCODSIND.AsFloat)]
  ,DM6.Tb_Sind);
end;

procedure TDM6.Tb_SindBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(SDCODSIND) AS CODIGO FROM CADSIND '
                     +iif(not DM1.Qr_Tid.Locate('TINOME','CADSIND',[]),'',' where SDCODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;
end;

procedure TDM6.Tb_TurnoAfterInsert(DataSet: TDataSet);
begin
  if codemp>100 then
    DM6.Tb_TurnoTR_CODEMP.Value:=codemp-100
  else
    DM6.Tb_TurnoTR_CODEMP.Value:=codemp;


  DM6.Tb_TurnoTR_CODTURNO.Value := Cod;

  FAtualizaBanco(0,'CADTURNO','TR_CODEMP',DM6.Tb_TurnoTR_CODTURNO.AsString
  ,['TR_CODTURNO'],[FloatToStr(DM6.Tb_TurnoTR_CODTURNO.AsFloat)]
  ,DM6.Tb_Turno);
end;

procedure TDM6.Tb_TurnoBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(TR_CODTURNO) AS CODIGO FROM CADTURNO '
                     +iif(not DM1.Qr_Tid.Locate('TINOME','CADTURNO',[]),'',' where TR_CODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;
end;

procedure TDM6.Tb_Prod_DepBeforeInsert(DataSet: TDataSet);
begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' SELECT MAX(PRODEP_CODDEP) AS CODIGO FROM CADPRO_DPTO '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO_DEPTO',[]),'',' where PRODEP_CODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;

end;

procedure TDM6.Tb_Prod_DepAfterInsert(DataSet: TDataSet);
begin

if codemp>100 then
   DM6.Tb_Prod_DepPRODEP_CODEMP.Value:=codemp-100
else
   DM6.Tb_Prod_DepPRODEP_CODEMP.Value:=codemp;

Tb_Prod_DepPRODEP_CODDEP.Value:=Cod;

FAtualizaBanco(0,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.AsString
   ,['PRODEP_CODDEP'],[FloatToStr(DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)]
    ,DM6.Tb_Prod_Dep);

end;

procedure TDM6.Tb_RCliAfterInsert(DataSet: TDataSet);
begin
if codemp>100 then
   DM6.Tb_RCliRCODEMP.Value:=codemp-100
else
   DM6.Tb_RCliRCODEMP.Value:=codemp;

DM6.Tb_RCliRCODRAM.Value:=Cod;

FAtualizaBanco(0,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.AsString
,['RCODRAM'],[FloatToStr(DM6.Tb_RCliRCODRAM.AsFloat)]
 ,DM6.Tb_RCli);

end;

procedure TDM6.Tb_RCliBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(RCODRAM) AS CODIGO FROM CADRCLI '
                  +iif(not DM1.Qr_Tid.Locate('TINOME','CADRCLI',[]),'',' where RCODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
cod      := DM1.Query1.FieldByName('CODIGO').ASFloat + 1;

end;

procedure TDM6.Tb_Pro_ExtAfterInsert(DataSet: TDataSet);
begin

if codemp>100 then
   DM6.Tb_Pro_ExtPROEXT_CODEMP.Value:=codemp-100
else
   DM6.Tb_Pro_ExtPROEXT_CODEMP.Value:=codemp;

Tb_Pro_ExtPROEXT_CODEXT.Value:=Cod;

FAtualizaBanco(0,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.AsString
   ,['PROEXT_CODEXT'],[FloatToStr(DM6.Tb_Pro_ExtPROEXT_CODEXT.AsFloat)]
    ,DM6.Tb_Pro_Ext);

end;

procedure TDM6.Tb_Pro_ExtBeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add(' SELECT MAX(PROEXT_CODEXT) AS CODIGO FROM CADPRO_EXT '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO_EXT',[]),'',' where PROEXT_CODEMP='+IntToStr(codemp)));
DM1.Query1.Open;
cod      := valfloat(DM1.Query1.FieldByName('CODIGO').AsString) + 1;


end;

procedure TDM6.Tb_CFTabIcmBeforePost(DataSet: TDataSet);
var
i: integer;
begin
For i:=0 to DM6.Tb_CFTabIcm.FieldCount-1 do
   begin
   if not DM6.Tb_CFTabIcm.Fields[i].IsNull then
      Continue;
   if DM6.Tb_CFTabIcm.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      DM6.Tb_CFTabIcm.Fields[i].Value:=0
   else if DM6.Tb_CFTabIcm.Fields[i].DataType in [ftString,ftMemo] then
      DM6.Tb_CFTabIcm.Fields[i].Value:=' ';
   end;

end;

end.
