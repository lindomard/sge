object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 302
  Top = 19
  Height = 701
  Width = 998
  object Tb_Emp: TQuery
    CachedUpdates = True
    BeforePost = Tb_EmpBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_EmpCalcFields
    DatabaseName = 'SG_ASSOC'
    Filter = 'STATUS <> 9'
    Filtered = True
    SQL.Strings = (
      'select * from CADEMP'
      'where CODEMP    is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Emp
    Left = 261
    Top = 94
    object Tb_EmpCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADEMP.CODEMP'
    end
    object Tb_EmpRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.CADEMP.RAZAO'
      Size = 40
    end
    object Tb_EmpFANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'FANTASIA'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA'
      Size = 40
    end
    object Tb_EmpENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'SG_ASSOC.CADEMP.ENDERECO'
      Size = 40
    end
    object Tb_EmpBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'SG_ASSOC.CADEMP.BAIRRO'
    end
    object Tb_EmpCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'SG_ASSOC.CADEMP.CIDADE'
      Size = 25
    end
    object Tb_EmpUF: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADEMP.UF'
      Size = 2
    end
    object Tb_EmpCGC: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CGC'
      Origin = 'SG_ASSOC.CADEMP.CGC'
    end
    object Tb_EmpINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o'
      FieldName = 'INSCRICAO'
      Origin = 'SG_ASSOC.CADEMP.INSCRICAO'
    end
    object Tb_EmpFONE: TStringField
      DisplayLabel = 'Telefone da Empresa'
      FieldName = 'FONE'
      Origin = 'SG_ASSOC.CADEMP.FONE'
      Size = 16
    end
    object Tb_EmpFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'SG_ASSOC.CADEMP.FAX'
      Size = 16
    end
    object Tb_EmpE_MAIL: TStringField
      DisplayLabel = 'Endere'#231'o Eletr'#244'nico E-MAIL'
      FieldName = 'E_MAIL'
      Origin = 'SG_ASSOC.CADEMP.E_MAIL'
      Size = 40
    end
    object Tb_EmpPRESID: TStringField
      DisplayLabel = 'Presidente'
      FieldName = 'PRESID'
      Origin = 'SG_ASSOC.CADEMP.PRESID'
      Size = 40
    end
    object Tb_EmpFONEP: TStringField
      DisplayLabel = 'Telefone Presidente'
      FieldName = 'FONEP'
      Origin = 'SG_ASSOC.CADEMP.FONEP'
      Size = 16
    end
    object Tb_EmpDIRETOR: TStringField
      DisplayLabel = 'Diretor'
      FieldName = 'DIRETOR'
      Origin = 'SG_ASSOC.CADEMP.DIRETOR'
      Size = 40
    end
    object Tb_EmpFONED: TStringField
      DisplayLabel = 'Telefone do Diretor'
      FieldName = 'FONED'
      Origin = 'SG_ASSOC.CADEMP.FONED'
      Size = 16
    end
    object Tb_EmpCEP: TStringField
      FieldName = 'CEP'
      Origin = 'SG_ASSOC.CADEMP.CEP'
      Size = 9
    end
    object Tb_EmpCAMINHO: TStringField
      DisplayLabel = 'Caminho'
      FieldName = 'CAMINHO'
      Origin = 'SG_ASSOC.CADEMP.CAMINHO'
      Size = 60
    end
    object Tb_EmpRESPONS: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'RESPONS'
      Origin = 'SG_ASSOC.CADEMP.RESPONS'
      Size = 40
    end
    object Tb_EmpTELEVENDAS: TStringField
      DisplayLabel = 'Televendas'
      FieldName = 'TELEVENDAS'
      Origin = 'SG_ASSOC.CADEMP.TELEVENDAS'
    end
    object Tb_EmpNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero do Pr'#233'dio'
      FieldName = 'NUMERO'
      Origin = 'SG_ASSOC.CADEMP.NUMERO'
    end
    object Tb_EmpDATACAD: TDateTimeField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'DATACAD'
      Origin = 'SG_ASSOC.CADEMP.DATACAD'
    end
    object Tb_EmpDATAALT: TDateTimeField
      DisplayLabel = '01-DATAALT'
      FieldName = 'DATAALT'
      Origin = 'SG_ASSOC.CADEMP.DATAALT'
    end
    object Tb_EmpPA001: TStringField
      DisplayLabel = '01-PA001'
      FieldName = 'PA001'
      Origin = 'SG_ASSOC.CADEMP.PA001'
      Size = 10
    end
    object Tb_EmpPA002: TStringField
      DisplayLabel = '01-PA002'
      FieldName = 'PA002'
      Origin = 'SG_ASSOC.CADEMP.PA002'
      Size = 10
    end
    object Tb_EmpPA003: TStringField
      DisplayLabel = '01-PA003'
      FieldName = 'PA003'
      Origin = 'SG_ASSOC.CADEMP.PA003'
      Size = 10
    end
    object Tb_Empcnpj_masc: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj_masc'
      Calculated = True
    end
    object Tb_Empender: TStringField
      FieldKind = fkCalculated
      FieldName = 'ender'
      Size = 110
      Calculated = True
    end
    object Tb_Emptelefone: TStringField
      DisplayLabel = 'Fone/Fax Com Observa'#231#245'es'
      FieldKind = fkCalculated
      FieldName = 'telefone'
      Size = 110
      Calculated = True
    end
    object Tb_Empcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Size = 120
      Calculated = True
    end
    object Tb_EmpFONERES: TStringField
      DisplayLabel = 'Telefone do Respons'#225'vel'
      FieldName = 'FONERES'
      Origin = 'SG_ASSOC.CADEMP.FONERES'
    end
    object Tb_EmpFUNCAORES: TStringField
      DisplayLabel = 'Fun'#231#227'o do Respons'#225'vel'
      FieldName = 'FUNCAORES'
      Origin = 'SG_ASSOC.CADEMP.FUNCAORES'
    end
    object Tb_EmpINSCMUNIC: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'INSCMUNIC'
      Origin = 'SG_ASSOC.CADEMP.INSCMUNIC'
    end
    object Tb_EmpCERTREG: TStringField
      DisplayLabel = 'Certificado de Regularidade'
      FieldName = 'CERTREG'
      Origin = 'SG_ASSOC.CADEMP.CERTREG'
    end
    object Tb_EmpAUTFUNC: TStringField
      DisplayLabel = 'Autoriza'#231#227'o de Funcionamento'
      FieldName = 'AUTFUNC'
      Origin = 'SG_ASSOC.CADEMP.AUTFUNC'
    end
    object Tb_EmpAUTESP: TStringField
      DisplayLabel = 'Autoriza'#231#227'o Especial'
      FieldName = 'AUTESP'
      Origin = 'SG_ASSOC.CADEMP.AUTESP'
    end
    object Tb_EmpALVFUNC: TStringField
      DisplayLabel = 'Alvara de Funcionamento'
      FieldName = 'ALVFUNC'
      Origin = 'SG_ASSOC.CADEMP.ALVFUNC'
    end
    object Tb_EmpJUCEG: TStringField
      DisplayLabel = 'Registro na JUCEG'
      FieldName = 'JUCEG'
      Origin = 'SG_ASSOC.CADEMP.JUCEG'
    end
    object Tb_EmpCONTADOR: TStringField
      DisplayLabel = 'Nome do Contador'
      FieldName = 'CONTADOR'
      Origin = 'SG_ASSOC.CADEMP.CONTADOR'
      Size = 40
    end
    object Tb_EmpCRC_CONTADOR: TStringField
      DisplayLabel = 'CRC do Contador'
      FieldName = 'CRC_CONTADOR'
      Origin = 'SG_ASSOC.CADEMP.CRC_CONTADOR'
    end
    object Tb_EmpRAZAO_CAB: TStringField
      DisplayLabel = 'Raz'#227'o Social do Cabe'#231'alho'
      FieldName = 'RAZAO_CAB'
      Origin = 'SG_ASSOC.CADEMP.RAZAO_CAB'
      Size = 40
    end
    object Tb_EmpFANTASIA_CAB: TStringField
      DisplayLabel = 'Fantasia do Cabe'#231'alho'
      FieldName = 'FANTASIA_CAB'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA_CAB'
      Size = 40
    end
    object Tb_EmpFECMEN: TFloatField
      FieldName = 'FECMEN'
      Origin = 'SG_ASSOC.CADEMP.FECMEN'
    end
    object Tb_EmpBLOQ: TFloatField
      FieldName = 'BLOQ'
      Origin = 'SG_ASSOC.CADEMP.BLOQ'
    end
    object Tb_EmpSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADEMP.STATUS'
    end
    object Tb_EmpCNPF: TFloatField
      FieldName = 'CNPF'
      Origin = 'SG_ASSOC.CADEMP.CNPF'
    end
    object Tb_EmpRG: TStringField
      FieldName = 'RG'
      Origin = 'SG_ASSOC.CADEMP.RG'
      Size = 40
    end
    object Tb_EmpHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'SG_ASSOC.CADEMP.HOMEPAGE'
      Size = 60
    end
    object Tb_EmpCODLOC: TFloatField
      FieldName = 'CODLOC'
      Origin = 'SG_ASSOC.CADEMP.CODLOC'
    end
    object Tb_Empcodloc_ibge: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codloc_ibge'
      Calculated = True
    end
    object Tb_Empcodreg_ibge: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codreg_ibge'
      Calculated = True
    end
    object Tb_Empcodpais_ibge: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codpais_ibge'
      Calculated = True
    end
    object Tb_Empcoduf_ibge: TFloatField
      FieldKind = fkCalculated
      FieldName = 'coduf_ibge'
      Calculated = True
    end
    object Tb_Empnomepais: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomepais'
      Size = 40
      Calculated = True
    end
    object Tb_Empcnae: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnae'
      Calculated = True
    end
    object Tb_EmpCODSERV_PREST: TStringField
      FieldName = 'CODSERV_PREST'
      Origin = 'SG_ASSOC.CADEMP.CODSERV_PREST'
      Size = 10
    end
    object Tb_EmpEMP_CNAE: TStringField
      FieldName = 'EMP_CNAE'
      Origin = 'SG_ASSOC.CADEMP.EMP_CNAE'
      Size = 15
    end
    object Tb_EmpEMP_OPTSIMPLES: TFloatField
      FieldName = 'EMP_OPTSIMPLES'
      Origin = 'SG_ASSOC.CADEMP.EMP_OPTSIMPLES'
    end
    object Tb_EmpEMP_INC_CULTURAL: TFloatField
      FieldName = 'EMP_INC_CULTURAL'
      Origin = 'SG_ASSOC.CADEMP.EMP_INC_CULTURAL'
    end
    object Tb_EmpEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      Origin = 'SG_ASSOC.CADEMP.EMP_SUFRAMA'
    end
    object Tb_EmpEMP_INSC_PISPASEP: TStringField
      FieldName = 'EMP_INSC_PISPASEP'
      Origin = 'SG_ASSOC.CADEMP.EMP_INSC_PISPASEP'
    end
    object Tb_EmpEMP_CONT_CPF: TFloatField
      FieldName = 'EMP_CONT_CPF'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CPF'
    end
    object Tb_EmpEMP_CONT_CNPJ: TFloatField
      FieldName = 'EMP_CONT_CNPJ'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CNPJ'
    end
    object Tb_EmpEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CEP'
      Size = 9
    end
    object Tb_EmpEMP_CONT_ENDER: TStringField
      FieldName = 'EMP_CONT_ENDER'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_ENDER'
      Size = 50
    end
    object Tb_EmpEMP_CONT_NUM_END: TStringField
      FieldName = 'EMP_CONT_NUM_END'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_NUM_END'
    end
    object Tb_EmpEMP_CONT_COMP_END: TStringField
      FieldName = 'EMP_CONT_COMP_END'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_COMP_END'
      Size = 40
    end
    object Tb_EmpEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_BAIRRO'
      Size = 40
    end
    object Tb_EmpEMP_CONT_CODLOC: TFloatField
      FieldName = 'EMP_CONT_CODLOC'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CODLOC'
    end
    object Tb_EmpEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_FONE'
    end
    object Tb_EmpEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_FAX'
    end
    object Tb_EmpEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_EMAIL'
      Size = 100
    end
    object Tb_EmpEMP_CONT_NOMLOC: TStringField
      FieldName = 'EMP_CONT_NOMLOC'
      Origin = 'SGE_67.CADEMP.EMP_CONT_NOMLOC'
      Size = 25
    end
    object Tb_EmpEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      Origin = 'SGE_67.CADEMP.EMP_LOGO'
      Size = 1
    end
    object Tb_EmpEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_UF'
      Size = 2
    end
    object Tb_EmpEMP_IND_NAT_PJ: TStringField
      FieldName = 'EMP_IND_NAT_PJ'
      Origin = 'SG_ASSOC.CADEMP.EMP_IND_NAT_PJ'
      Size = 2
    end
    object Tb_EmpEMP_IND_ATIV: TStringField
      FieldName = 'EMP_IND_ATIV'
      Origin = 'SG_ASSOC.CADEMP.EMP_IND_ATIV'
      Size = 1
    end
    object Tb_EmpEMP_CPF_RESPONS: TFloatField
      FieldName = 'EMP_CPF_RESPONS'
      Origin = 'SG_ASSOC.CADEMP.EMP_CPF_RESPONS'
    end
    object Tb_EmpEMP_AUTXML_CNPJCPF: TStringField
      FieldName = 'EMP_AUTXML_CNPJCPF'
      Size = 25
    end
    object Tb_EmpEMP_WHATSAPP_AUTO: TStringField
      FieldName = 'EMP_WHATSAPP_AUTO'
      Origin = 'SG_ASSOC.CADEMP.EMP_WHATSAPP_AUTO'
      Size = 16
    end
    object Tb_EmpEMP_WHATSAPP_ID: TStringField
      FieldName = 'EMP_WHATSAPP_ID'
      Origin = 'SG_ASSOC.CADEMP.EMP_WHATSAPP_ID'
      Size = 30
    end
  end
  object SG_ASSOC: TDatabase
    AliasName = 'ORACLE1'
    DatabaseName = 'SG_ASSOC'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=ORCLDEZG'
      'USER NAME=SGE_HIDROPECAS'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE=SERVER'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=DEZENOVE')
    SessionName = 'Default'
    Left = 16
    Top = 36
  end
  object Src_Emp: TDataSource
    DataSet = Tb_Emp
    Left = 318
    Top = 94
  end
  object Tb_Funcao: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_FuncaoBeforeInsert
    AfterInsert = Tb_FuncaoAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCAR where'
      'CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Funcao
    Left = 269
    Top = 272
    object Tb_FuncaoCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Assoc'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADCAR.CODEMP'
    end
    object Tb_FuncaoCODCAR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCAR'
      Origin = 'SG_ASSOC.CADCAR.CODCAR'
    end
    object Tb_FuncaoNOMCAR: TStringField
      DisplayLabel = 'Nome do Cargo'
      FieldName = 'NOMCAR'
      Origin = 'SG_ASSOC.CADCAR.NOMCAR'
      Size = 25
    end
    object Tb_FuncaoTIPACE: TFloatField
      DisplayLabel = 'Tipo de Acesso'
      FieldName = 'TIPACE'
      Origin = 'SG_ASSOC.CADCAR.TIPACE'
    end
    object Tb_FuncaoPREVTAB: TFloatField
      FieldName = 'PREVTAB'
      Origin = 'SG_ASSOC.CADCAR.PREVTAB'
    end
    object Tb_FuncaoNCBO: TStringField
      FieldName = 'NCBO'
      Size = 10
    end
    object Tb_FuncaoCG_DATHOR_INC: TDateTimeField
      FieldName = 'CG_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCAR.CG_DATHOR_INC'
    end
    object Tb_FuncaoCG_CODUSR_INC: TFloatField
      FieldName = 'CG_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCAR.CG_CODUSR_INC'
    end
    object Tb_FuncaoCG_DATHOR_ALT: TDateTimeField
      FieldName = 'CG_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADCAR.CG_DATHOR_ALT'
    end
    object Tb_FuncaoCG_CODUSR_ALT: TFloatField
      FieldName = 'CG_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCAR.CG_CODUSR_ALT'
    end
    object Tb_FuncaoCG_DATHOR_REP: TDateTimeField
      FieldName = 'CG_DATHOR_REP'
      Origin = 'SG_ASSOC.CADCAR.CG_DATHOR_REP'
    end
    object Tb_FuncaoCG_NIVEL_LIBERACAO: TFloatField
      FieldName = 'CG_NIVEL_LIBERACAO'
      Origin = 'SG_ASSOC.CADCAR.CG_NIVEL_LIBERACAO'
    end
  end
  object Src_Funcao: TDataSource
    DataSet = Tb_Funcao
    Left = 318
    Top = 272
  end
  object Tb_Pro: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ProBeforeInsert
    AfterInsert = Tb_ProAfterInsert
    BeforePost = Tb_ProBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Pro
    Left = 594
    Top = 232
    object Tb_ProPDCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Tb_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_ProPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_ProPDNOME2: TStringField
      DisplayLabel = 'Descri'#231#227'o 2'
      DisplayWidth = 240
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 240
    end
    object Tb_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_ProPDNIVEL: TFloatField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Tb_ProPDCODFOR: TFloatField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_ProPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 1'
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_ProPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 2'
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_ProPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 3'
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_ProPDPMC: TFloatField
      DisplayLabel = 'Pre'#231'o M'#225'ximo'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Tb_ProPDPRECOA1: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 1'
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Tb_ProPDPRECOA2: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 2'
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Tb_ProPDPRECOA3: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 3'
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Tb_ProPDDESC1: TFloatField
      DisplayLabel = 'Desconto 1'
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Tb_ProPDDESC1A: TFloatField
      DisplayLabel = 'Desconto 1 at'#233
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Tb_ProPDDESC2: TFloatField
      DisplayLabel = 'Desconto 2'
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Tb_ProPDDESC3: TFloatField
      DisplayLabel = 'Desconto 3'
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Tb_ProPDQTDP: TFloatField
      DisplayLabel = 'Quantidade P'
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Tb_ProPDPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Tb_ProPDDESFIN: TFloatField
      DisplayLabel = 'Desconto Financeiro'
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Tb_ProPDSIT: TStringField
      DisplayLabel = 'Sit.Tribut'
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Tb_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Tb_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Tb_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Tb_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Tb_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Tb_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Tb_ProPDUND: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Tb_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Tb_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Tb_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Tb_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Tb_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Tb_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Tb_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Tb_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Tb_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Tb_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Tb_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Tb_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_ProPDCLAS: TStringField
      DisplayLabel = 'Classificac'#227'o Fiscal'
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_ProPDSECAO: TStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_ProPDEMBPAD: TFloatField
      DisplayLabel = 'Embalagem Padr'#227'o'
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Tb_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Tb_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Tb_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Tb_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Tb_ProPDSALDO: TFloatField
      DisplayLabel = 'Estoque Geral'
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Tb_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Tb_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Tb_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 10
    end
    object Tb_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Tb_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Tb_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Tb_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Tb_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Tb_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Tb_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Tb_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Tb_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Tb_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Tb_Propco_custo: TStringField
      FieldKind = fkCalculated
      FieldName = 'pco_custo'
      Size = 15
      Calculated = True
    end
    object Tb_ProPDPESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
      DisplayFormat = '#,###0.0000'
    end
    object Tb_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
      DisplayFormat = '#,###0.0000'
    end
    object Tb_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Tb_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Tb_Prodiferenca: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      Calculated = True
    end
    object Tb_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Tb_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Tb_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Tb_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
    object Tb_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Tb_ProPDBAIXOR: TFloatField
      FieldName = 'PDBAIXOR'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOR'
    end
    object Tb_ProPDALTOR: TFloatField
      FieldName = 'PDALTOR'
      Origin = 'SG_ASSOC.CADPRO.PDALTOR'
    end
    object Tb_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Tb_ProPDBAIXOC: TFloatField
      FieldName = 'PDBAIXOC'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOC'
    end
    object Tb_ProPDALTOC: TFloatField
      FieldName = 'PDALTOC'
      Origin = 'SG_ASSOC.CADPRO.PDALTOC'
    end
    object Tb_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Tb_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Tb_ProPDCUSFAB: TFloatField
      FieldName = 'PDCUSFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFAB'
    end
    object Tb_ProPDCUSENV: TFloatField
      FieldName = 'PDCUSENV'
      Origin = 'SG_ASSOC.CADPRO.PDCUSENV'
    end
    object Tb_ProPDCUSFIN: TFloatField
      FieldName = 'PDCUSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFIN'
    end
    object Tb_ProPDUCODFOR: TFloatField
      FieldName = 'PDUCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUCODFOR'
    end
    object Tb_ProPDUNOMFOR: TStringField
      FieldName = 'PDUNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUNOMFOR'
      Size = 40
    end
    object Tb_ProPDCODFAB: TStringField
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Tb_ProPDALTOT: TFloatField
      FieldName = 'PDALTOT'
      Origin = 'SG_ASSOC.CADPRO.PDALTOT'
    end
    object Tb_ProPDBAIXOT: TFloatField
      FieldName = 'PDBAIXOT'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOT'
    end
    object Tb_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
    object Tb_Pron_nivel: TStringField
      FieldKind = fkCalculated
      FieldName = 'n_nivel'
      Size = 30
      Calculated = True
    end
    object Tb_Proestoquec: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquec'
      Calculated = True
    end
    object Tb_Prodtaltpco3: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtaltpco3'
      Size = 10
      Calculated = True
    end
    object Tb_Prodtaltpco2: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtaltpco2'
      Size = 10
      Calculated = True
    end
    object Tb_Prodtaltpco1: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtaltpco1'
      Size = 10
      Calculated = True
    end
    object Tb_Proestoque: TFloatField
      DisplayLabel = 'Estoque Geral'
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Tb_Proestoquer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquer'
      Calculated = True
    end
    object Tb_Prodtuent: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtuent'
      Calculated = True
    end
    object Tb_Prodtusai: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtusai'
      Calculated = True
    end
    object Tb_Proestoquet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquet'
      Calculated = True
    end
    object Tb_ProPDPMC02: TFloatField
      FieldName = 'PDPMC02'
      Origin = 'SG_ASSOC.CADPRO.PDPMC02'
    end
    object Tb_ProPDPMC03: TFloatField
      FieldName = 'PDPMC03'
      Origin = 'SG_ASSOC.CADPRO.PDPMC03'
    end
    object Tb_ProPDCX_PVDA: TFloatField
      FieldName = 'PDCX_PVDA'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PVDA'
    end
    object Tb_ProPDCX_PFAB: TFloatField
      FieldName = 'PDCX_PFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PFAB'
    end
    object Tb_ProPDCX_PMAX: TFloatField
      FieldName = 'PDCX_PMAX'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PMAX'
    end
    object Tb_ProPDICMSCRED: TFloatField
      FieldName = 'PDICMSCRED'
      Origin = 'SG_ASSOC.CADPRO.PDICMSCRED'
    end
    object Tb_ProPDICMSDEB: TFloatField
      FieldName = 'PDICMSDEB'
      Origin = 'SG_ASSOC.CADPRO.PDICMSDEB'
    end
    object Tb_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
    object Tb_ProPDPRAT: TStringField
      FieldName = 'PDPRAT'
      Origin = 'SG_ASSOC.CADPRO.PDPRAT'
      Size = 10
    end
    object Tb_ProPDLADO: TStringField
      FieldName = 'PDLADO'
      Origin = 'SG_ASSOC.CADPRO.PDLADO'
      Size = 10
    end
    object Tb_ProPDRUA: TStringField
      FieldName = 'PDRUA'
      Origin = 'SG_ASSOC.CADPRO.PDRUA'
      Size = 10
    end
    object Tb_ProPDAPLIC: TStringField
      FieldName = 'PDAPLIC'
      Origin = 'SG_ASSOC.CADPRO.PDAPLIC'
      Size = 100
    end
    object Tb_ProPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Tb_ProPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object Tb_ProPDCOMIS_EXTRA: TFloatField
      FieldName = 'PDCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS_EXTRA'
    end
    object Tb_ProPDQTDM3: TFloatField
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Tb_ProPDUNDVDA: TFloatField
      FieldName = 'PDUNDVDA'
      Origin = 'SG_ASSOC.CADPRO.PDUNDVDA'
    end
    object Tb_ProPDBLDESCAV: TFloatField
      FieldName = 'PDBLDESCAV'
      Origin = 'SG_ASSOC.CADPRO.PDBLDESCAV'
    end
    object Tb_ProPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
      Origin = 'SG_ASSOC.CADPRO.PDRESTFOR'
    end
    object Tb_ProPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
      Origin = 'SG_ASSOC.CADPRO.PDRESTCON'
    end
    object Tb_ProPDSITCF: TStringField
      FieldName = 'PDSITCF'
      Origin = 'SG_ASSOC.CADPRO.PDSITCF'
      Size = 3
    end
    object Tb_ProPDCODBAR_EMBPAD: TStringField
      FieldName = 'PDCODBAR_EMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_EMBPAD'
      Size = 50
    end
    object Tb_ProPDUSRALT: TFloatField
      FieldName = 'PDUSRALT'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT'
    end
    object Tb_ProPDUSRINC: TFloatField
      FieldName = 'PDUSRINC'
      Origin = 'SG_ASSOC.CADPRO.PDUSRINC'
    end
    object Tb_ProPDENTPEN: TFloatField
      FieldName = 'PDENTPEN'
      Origin = 'SG_ASSOC.CADPRO.PDENTPEN'
    end
    object Tb_Proentpen: TFloatField
      DisplayLabel = 'Entradas Pendentes'
      FieldKind = fkCalculated
      FieldName = 'entpen'
      Calculated = True
    end
    object Tb_ProPDSALDO_PRAT: TFloatField
      FieldName = 'PDSALDO_PRAT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_PRAT'
    end
    object Tb_ProPDSALDO_DEP: TFloatField
      FieldName = 'PDSALDO_DEP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_DEP'
    end
    object Tb_Proestoque_prat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_prat'
      Calculated = True
    end
    object Tb_Proestoque_dep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_dep'
      Calculated = True
    end
    object Tb_ProPDSALDO_REP: TFloatField
      FieldName = 'PDSALDO_REP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_REP'
    end
    object Tb_Proestoque_rep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_rep'
      Calculated = True
    end
    object Tb_ProPDTEMPOFAB: TFloatField
      FieldName = 'PDTEMPOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDTEMPOFAB'
    end
    object Tb_ProPDPRZVAL_ANOS: TFloatField
      FieldName = 'PDPRZVAL_ANOS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_ANOS'
    end
    object Tb_ProPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_DIAS'
    end
    object Tb_ProPDCODDEP: TFloatField
      FieldName = 'PDCODDEP'
      Origin = 'SG_ASSOC.CADPRO.PDCODDEP'
    end
    object Tb_ProPDNOMDEP: TStringField
      FieldName = 'PDNOMDEP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMDEP'
      Size = 40
    end
    object Tb_ProPDDATA_REPLICA: TDateTimeField
      FieldName = 'PDDATA_REPLICA'
      Origin = 'SG_ASSOC.CADPRO.PDDATA_REPLICA'
    end
    object Tb_ProPDDESCMAX: TFloatField
      FieldName = 'PDDESCMAX'
      Origin = 'SG_ASSOC.CADPRO.PDDESCMAX'
    end
    object Tb_ProPDTEMFORMULA: TFloatField
      FieldName = 'PDTEMFORMULA'
      Origin = 'SG_ASSOC.CADPRO.PDTEMFORMULA'
    end
    object Tb_ProPDBALANCA: TFloatField
      FieldName = 'PDBALANCA'
      Origin = 'SG_ASSOC.CADPRO.PDBALANCA'
    end
    object Tb_Prodtvenc: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtvenc'
      Calculated = True
    end
    object Tb_Propcoven: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pcoven'
      Calculated = True
    end
    object Tb_ProPDVALREGMS: TDateTimeField
      FieldName = 'PDVALREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDVALREGMS'
    end
    object Tb_ProPDKIT: TStringField
      FieldName = 'PDKIT'
      Origin = 'SG_ASSOC.CADPRO.PDKIT'
      Size = 1
    end
    object Tb_ProPDFIS_PRED_ICMS_EST: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_EST'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_EST'
    end
    object Tb_ProPDFIS_PRED_ICMS_INT: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_INT'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_INT'
    end
    object Tb_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_ENTRADA'
    end
    object Tb_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_ENTRADA'
    end
    object Tb_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_SAIDA'
    end
    object Tb_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_SAIDA'
    end
    object Tb_ProPDFIS_ORIGEM: TStringField
      FieldName = 'PDFIS_ORIGEM'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_ORIGEM'
      Size = 1
    end
    object Tb_ProPDFIS_CST_ICMS_EST_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_REV'
      Size = 2
    end
    object Tb_ProPDFIS_CST_ICMS_EST_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_CF'
      Size = 2
    end
    object Tb_ProPDFIS_CST_ICMS_INT_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_CF'
      Size = 2
    end
    object Tb_ProPDFIS_CST_ICMS_INT_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_REV'
      Size = 2
    end
    object Tb_ProPDFIS_CSOSN_EST_REV: TStringField
      FieldName = 'PDFIS_CSOSN_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_REV'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_EST_CF: TStringField
      FieldName = 'PDFIS_CSOSN_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_CF'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_INT_REV: TStringField
      FieldName = 'PDFIS_CSOSN_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_REV'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_INT_CF: TStringField
      FieldName = 'PDFIS_CSOSN_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_CF'
      Size = 3
    end
    object Tb_ProPDFIS_CST_PISCOF_ENTRADA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_ENTRADA'
      Size = 2
    end
    object Tb_ProPDFIS_CST_PISCOF_SAIDA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_SAIDA'
      Size = 2
    end
    object Tb_ProPDCODEXT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PDCODEXT'
      Calculated = True
    end
    object Tb_Propdnomext: TStringField
      FieldKind = fkCalculated
      FieldName = 'pdnomext'
      Size = 40
      Calculated = True
    end
    object Tb_ProPDCONTESP: TFloatField
      FieldName = 'PDCONTESP'
      Origin = 'SG_ASSOC.CADPRO.PDCONTESP'
    end
    object Tb_ProPDCMET_BITOLA: TFloatField
      FieldName = 'PDCMET_BITOLA'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_BITOLA'
    end
    object Tb_ProPDCMET_CONSTANTE: TFloatField
      FieldName = 'PDCMET_CONSTANTE'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_CONSTANTE'
    end
    object Tb_Prosaldo_filial: TFloatField
      DisplayLabel = 'Estoque Prateleira'
      FieldKind = fkCalculated
      FieldName = 'saldo_filial'
      Calculated = True
    end
    object Tb_Proqtd_analise: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtd_analise'
      Calculated = True
    end
    object Tb_Prosaldo_filial_disponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo_filial_disponivel'
      Calculated = True
    end
    object Tb_ProPDCODGEN: TStringField
      FieldName = 'PDCODGEN'
      Origin = 'SG_ASSOC.CADPRO.PDCODGEN'
      Size = 2
    end
    object Tb_ProDATULT_MOV: TDateField
      FieldKind = fkCalculated
      FieldName = 'DATULT_MOV'
      Calculated = True
    end
    object Tb_ProPDPERCIMPOSTOS: TFloatField
      FieldName = 'PDPERCIMPOSTOS'
      Origin = 'SG_ASSOC.CADPRO.PDPERCIMPOSTOS'
    end
    object Tb_ProPDTIPO_MED: TFloatField
      FieldName = 'PDTIPO_MED'
      Origin = 'SG_ASSOC.CADPRO.PDTIPO_MED'
    end
    object Tb_ProPDVENDA_PEND: TFloatField
      FieldName = 'PDVENDA_PEND'
      Origin = 'SG_ASSOC.CADPRO.PDVENDA_PEND'
    end
    object Tb_ProPDTIPOPROD: TFloatField
      FieldName = 'PDTIPOPROD'
      Origin = 'SG_ASSOC.CADPRO.PDTIPOPROD'
    end
    object Tb_ProPDPEDELE_DISP: TFloatField
      FieldName = 'PDPEDELE_DISP'
      Origin = 'SG_ASSOC.CADPRO.PDPEDELE_DISP'
    end
    object Tb_ProPDPRECO_INDEX: TFloatField
      FieldName = 'PDPRECO_INDEX'
    end
    object Tb_ProPDPRECO_CODINDEX: TFloatField
      FieldName = 'PDPRECO_CODINDEX'
    end
    object Tb_Promarkup: TStringField
      FieldKind = fkCalculated
      FieldName = 'markup'
      Size = 10
      Calculated = True
    end
    object Tb_ProPDCEST: TStringField
      FieldName = 'PDCEST'
      Size = 10
    end
    object Tb_ProPDCODIGO_CNAE: TStringField
      FieldName = 'PDCODIGO_CNAE'
      Size = 15
    end
    object Tb_ProPDREFER: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PDREFER'
      Origin = 'SG_ASSOC.CADPRO.PDREFER'
    end
    object Tb_Propreco_index_nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'preco_index_nome'
      Size = 50
      Calculated = True
    end
    object Tb_ProPDIPI_CST: TStringField
      FieldName = 'PDIPI_CST'
      Size = 2
    end
    object Tb_ProPDIPI_CENQ: TStringField
      FieldName = 'PDIPI_CENQ'
      Size = 3
    end
    object Tb_ProIDPRO: TStringField
      FieldName = 'IDPRO'
      Size = 100
    end
    object Tb_ProPDNOME_COMPRA: TStringField
      FieldName = 'PDNOME_COMPRA'
      Origin = 'SG_ASSOC.CADPRO.PDNOME_COMPRA'
      Size = 120
    end
    object Tb_ProPDCOMPRA_UND: TStringField
      FieldName = 'PDCOMPRA_UND'
      Origin = 'SG_ASSOC.CADPRO.PDCOMPRA_UND'
      Size = 30
    end
    object Tb_ProPDCBENEF_CST_FORAE_REV: TStringField
      FieldName = 'PDCBENEF_CST_FORAE_REV'
      Origin = 'SG_ASSOC.CADPRO.PDCBENEF_CST_FORAE_REV'
      Size = 10
    end
    object Tb_ProPDCBENEF_CST_FORAE_CONSFIN: TStringField
      FieldName = 'PDCBENEF_CST_FORAE_CONSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCBENEF_CST_FORAE_CONSFIN'
      Size = 10
    end
    object Tb_ProPDCBENEF_CST_DENTROE_REV: TStringField
      FieldName = 'PDCBENEF_CST_DENTROE_REV'
      Origin = 'SG_ASSOC.CADPRO.PDCBENEF_CST_DENTROE_REV'
      Size = 10
    end
    object Tb_ProPDCBENEF_CST_DENTROE_CONSFIN: TStringField
      FieldName = 'PDCBENEF_CST_DENTROE_CONSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCBENEF_CST_DENTROE_CONSFIN'
      Size = 10
    end
    object Tb_ProPDPRECO_RESIDUO: TFloatField
      FieldName = 'PDPRECO_RESIDUO'
    end
    object Tb_ProPDOBS_NEW: TMemoField
      FieldName = 'PDOBS_NEW'
      BlobType = ftMemo
    end
    object Tb_PromarkupP03: TStringField
      FieldKind = fkCalculated
      FieldName = 'markupP03'
      Size = 10
      Calculated = True
    end
    object Tb_PromarkupP02: TStringField
      FieldKind = fkCalculated
      FieldName = 'markupP02'
      Size = 10
      Calculated = True
    end
    object Tb_ProPDCODLC_116_03: TStringField
      FieldName = 'PDCODLC_116_03'
      Origin = 'SG_ASSOC.CADPRO.PDCODLC_116_03'
      Size = 6
    end
    object Tb_ProPDCODIGO_SERVICO: TStringField
      FieldName = 'PDCODIGO_SERVICO'
      Origin = 'SG_ASSOC.CADPRO.PDCODIGO_SERVICO'
      Size = 15
    end
    object Tb_ProPDALIQ_ISS: TFloatField
      FieldName = 'PDALIQ_ISS'
      Origin = 'SG_ASSOC.CADPRO.PDALIQ_ISS'
    end
    object Tb_ProPDCBS_CST: TStringField
      FieldName = 'PDCBS_CST'
      Origin = 'SG_ASSOC.CADPRO.PDCBS_CST'
      Size = 3
    end
    object Tb_ProPDCODCLASSTRIB: TStringField
      FieldName = 'PDCODCLASSTRIB'
      Origin = 'PDCODCLASSTRIB'
      Size = 6
    end
    object Tb_ProPDCODNBS: TStringField
      FieldName = 'PDCODNBS'
      Size = 15
    end
    object Tb_ProPDSERV_INSS_ALIQ: TFloatField
      FieldName = 'PDSERV_INSS_ALIQ'
    end
    object Tb_ProPDSERV_INSS_RED: TFloatField
      FieldName = 'PDSERV_INSS_RED'
    end
    object Tb_ProPDSERV_IRRF_ALIQ: TFloatField
      FieldName = 'PDSERV_IRRF_ALIQ'
    end
    object Tb_ProPDSERV_IRRF_RED: TFloatField
      FieldName = 'PDSERV_IRRF_RED'
    end
  end
  object Src_Pro: TDataSource
    DataSet = Tb_Pro
    Left = 653
    Top = 226
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    UpdateMode = upWhereKeyOnly
    Left = 9
    Top = 136
  end
  object Tb_For: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ForBeforeInsert
    AfterInsert = Tb_ForAfterInsert
    BeforePost = Tb_ForBeforePost
    AfterPost = c
    AfterCancel = Tb_ForAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADFOR.*, ROWID AS IDFOR from CADFOR where'
      'FRAZAO LIKE '#39'%'#39)
    UpdateObject = U_For
    Left = 261
    Top = 181
    object Tb_Fornomgfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomgfor'
      Size = 30
      Calculated = True
    end
    object Tb_ForFCODEMP: TFloatField
      FieldName = 'FCODEMP'
      Origin = 'SG_ASSOC.CADFOR.FCODEMP'
    end
    object Tb_ForFCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Tb_ForFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Tb_ForFCIDADE: TStringField
      FieldName = 'FCIDADE'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 30
    end
    object Tb_ForFDENOM: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FDENOM'
      Origin = 'SG_ASSOC.CADFOR.FDENOM'
      Size = 40
    end
    object Tb_ForFNLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'FNLOG'
      Origin = 'SG_ASSOC.CADFOR.FNLOG'
      Size = 40
    end
    object Tb_ForFNUM: TStringField
      FieldName = 'FNUM'
      Origin = 'SG_ASSOC.CADFOR.FNUM'
      Size = 8
    end
    object Tb_ForFCOMPL: TStringField
      FieldName = 'FCOMPL'
      Origin = 'SG_ASSOC.CADFOR.FCOMPL'
    end
    object Tb_ForFBAIRRO: TStringField
      FieldName = 'FBAIRRO'
      Origin = 'SG_ASSOC.CADFOR.FBAIRRO'
      Size = 30
    end
    object Tb_ForFUF: TStringField
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
    object Tb_ForFCODBAI: TFloatField
      FieldName = 'FCODBAI'
      Origin = 'SG_ASSOC.CADFOR.FCODBAI'
    end
    object Tb_ForFCODLOC: TFloatField
      FieldName = 'FCODLOC'
      Origin = 'SG_ASSOC.CADFOR.FCODLOC'
    end
    object Tb_ForFCEP: TStringField
      FieldName = 'FCEP'
      Origin = 'SG_ASSOC.CADFOR.FCEP'
      Size = 9
    end
    object Tb_ForFIE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'FIE'
      Origin = 'SG_ASSOC.CADFOR.FIE'
    end
    object Tb_ForFEMAIL: TStringField
      FieldName = 'FEMAIL'
      Origin = 'SG_ASSOC.CADFOR.FEMAIL'
      Size = 35
    end
    object Tb_ForFDTCAD: TDateTimeField
      FieldName = 'FDTCAD'
      Origin = 'SG_ASSOC.CADFOR.FDTCAD'
    end
    object Tb_ForFCONT01: TStringField
      FieldName = 'FCONT01'
      Origin = 'SG_ASSOC.CADFOR.FCONT01'
      Size = 40
    end
    object Tb_ForFFONEC01: TStringField
      FieldName = 'FFONEC01'
      Origin = 'SG_ASSOC.CADFOR.FFONEC01'
      Size = 18
    end
    object Tb_ForFCONT02: TStringField
      FieldName = 'FCONT02'
      Origin = 'SG_ASSOC.CADFOR.FCONT02'
      Size = 40
    end
    object Tb_ForFFONEC02: TStringField
      FieldName = 'FFONEC02'
      Origin = 'SG_ASSOC.CADFOR.FFONEC02'
      Size = 18
    end
    object Tb_ForFCONT03: TStringField
      FieldName = 'FCONT03'
      Origin = 'SG_ASSOC.CADFOR.FCONT03'
      Size = 40
    end
    object Tb_ForFFONEC03: TStringField
      FieldName = 'FFONEC03'
      Origin = 'SG_ASSOC.CADFOR.FFONEC03'
      Size = 18
    end
    object Tb_ForFFONE: TStringField
      FieldName = 'FFONE'
      Origin = 'SG_ASSOC.CADFOR.FFONE'
      Size = 18
    end
    object Tb_ForFFAX: TStringField
      FieldName = 'FFAX'
      Origin = 'SG_ASSOC.CADFOR.FFAX'
      Size = 18
    end
    object Tb_ForFOBS1: TStringField
      FieldName = 'FOBS1'
      Origin = 'SG_ASSOC.CADFOR.FOBS1'
      Size = 60
    end
    object Tb_ForFOBS2: TStringField
      FieldName = 'FOBS2'
      Origin = 'SG_ASSOC.CADFOR.FOBS2'
      Size = 60
    end
    object Tb_ForFSTATUS: TFloatField
      FieldName = 'FSTATUS'
      Origin = 'SG_ASSOC.CADFOR.FSTATUS'
    end
    object Tb_ForFCODEFO: TStringField
      FieldName = 'FCODEFO'
      Origin = 'SG_ASSOC.CADFOR.FCODEFO'
    end
    object Tb_ForFCICMSR: TFloatField
      FieldName = 'FCICMSR'
      Origin = 'SG_ASSOC.CADFOR.FCICMSR'
    end
    object Tb_ForFICMSN: TFloatField
      FieldName = 'FICMSN'
      Origin = 'SG_ASSOC.CADFOR.FICMSN'
    end
    object Tb_ForFALIQ: TFloatField
      FieldName = 'FALIQ'
      Origin = 'SG_ASSOC.CADFOR.FALIQ'
    end
    object Tb_ForFIVAPOS: TFloatField
      FieldName = 'FIVAPOS'
      Origin = 'SG_ASSOC.CADFOR.FIVAPOS'
    end
    object Tb_ForFIVANEG: TFloatField
      FieldName = 'FIVANEG'
      Origin = 'SG_ASSOC.CADFOR.FIVANEG'
    end
    object Tb_ForFIVAINA: TFloatField
      FieldName = 'FIVAINA'
      Origin = 'SG_ASSOC.CADFOR.FIVAINA'
    end
    object Tb_ForFRBCIR: TFloatField
      FieldName = 'FRBCIR'
      Origin = 'SG_ASSOC.CADFOR.FRBCIR'
    end
    object Tb_ForFRBICN: TFloatField
      FieldName = 'FRBICN'
      Origin = 'SG_ASSOC.CADFOR.FRBICN'
    end
    object Tb_ForFICMSC: TFloatField
      FieldName = 'FICMSC'
      Origin = 'SG_ASSOC.CADFOR.FICMSC'
    end
    object Tb_ForFICMSD: TFloatField
      FieldName = 'FICMSD'
      Origin = 'SG_ASSOC.CADFOR.FICMSD'
    end
    object Tb_ForFTIPOF: TFloatField
      FieldName = 'FTIPOF'
      Origin = 'SG_ASSOC.CADFOR.FTIPOF'
    end
    object Tb_ForFTDESP: TFloatField
      FieldName = 'FTDESP'
      Origin = 'SG_ASSOC.CADFOR.FTDESP'
    end
    object Tb_ForFDIAE: TFloatField
      FieldName = 'FDIAE'
      Origin = 'SG_ASSOC.CADFOR.FDIAE'
    end
    object Tb_ForFDIAV: TFloatField
      FieldName = 'FDIAV'
      Origin = 'SG_ASSOC.CADFOR.FDIAV'
    end
    object Tb_ForFFREQ: TFloatField
      FieldName = 'FFREQ'
      Origin = 'SG_ASSOC.CADFOR.FFREQ'
    end
    object Tb_ForFTIPOI: TFloatField
      FieldName = 'FTIPOI'
      Origin = 'SG_ASSOC.CADFOR.FTIPOI'
    end
    object Tb_ForFTCALC: TFloatField
      FieldName = 'FTCALC'
      Origin = 'SG_ASSOC.CADFOR.FTCALC'
    end
    object Tb_ForFCOMIS: TFloatField
      FieldName = 'FCOMIS'
      Origin = 'SG_ASSOC.CADFOR.FCOMIS'
    end
    object Tb_ForFPRAZO: TFloatField
      FieldName = 'FPRAZO'
      Origin = 'SG_ASSOC.CADFOR.FPRAZO'
    end
    object Tb_ForFPRAZOV: TFloatField
      FieldName = 'FPRAZOV'
      Origin = 'SG_ASSOC.CADFOR.FPRAZOV'
    end
    object Tb_ForFDESCMV: TFloatField
      FieldName = 'FDESCMV'
      Origin = 'SG_ASSOC.CADFOR.FDESCMV'
    end
    object Tb_ForFDESCFINV: TFloatField
      FieldName = 'FDESCFINV'
      Origin = 'SG_ASSOC.CADFOR.FDESCFINV'
    end
    object Tb_ForFCODCCD: TStringField
      FieldName = 'FCODCCD'
      Origin = 'SG_ASSOC.CADFOR.FCODCCD'
      Size = 16
    end
    object Tb_ForFCODCCC: TStringField
      FieldName = 'FCODCCC'
      Origin = 'SG_ASSOC.CADFOR.FCODCCC'
      Size = 16
    end
    object Tb_ForFCODDEPD: TStringField
      FieldName = 'FCODDEPD'
      Origin = 'SG_ASSOC.CADFOR.FCODDEPD'
      Size = 5
    end
    object Tb_ForFCODDEPC: TStringField
      FieldName = 'FCODDEPC'
      Origin = 'SG_ASSOC.CADFOR.FCODDEPC'
      Size = 5
    end
    object Tb_ForFDESCMVD: TStringField
      FieldName = 'FDESCMVD'
      Origin = 'SG_ASSOC.CADFOR.FDESCMVD'
      Size = 40
    end
    object Tb_ForFDESCMVC: TStringField
      FieldName = 'FDESCMVC'
      Origin = 'SG_ASSOC.CADFOR.FDESCMVC'
      Size = 40
    end
    object Tb_ForFNOMCCC: TStringField
      FieldName = 'FNOMCCC'
      Origin = 'SG_ASSOC.CADFOR.FNOMCCC'
      Size = 40
    end
    object Tb_ForFNOMCCD: TStringField
      FieldName = 'FNOMCCD'
      Origin = 'SG_ASSOC.CADFOR.FNOMCCD'
      Size = 40
    end
    object Tb_ForFNOMDEPC: TStringField
      FieldName = 'FNOMDEPC'
      Origin = 'SG_ASSOC.CADFOR.FNOMDEPC'
      Size = 40
    end
    object Tb_ForFNOMDEPD: TStringField
      FieldName = 'FNOMDEPD'
      Origin = 'SG_ASSOC.CADFOR.FNOMDEPD'
      Size = 40
    end
    object Tb_ForFRETLIQ: TFloatField
      FieldName = 'FRETLIQ'
      Origin = 'SG_ASSOC.CADFOR.FRETLIQ'
    end
    object Tb_ForFPADRAO: TFloatField
      FieldName = 'FPADRAO'
      Origin = 'SG_ASSOC.CADFOR.FPADRAO'
    end
    object Tb_ForFNATDCC: TStringField
      FieldName = 'FNATDCC'
      Origin = 'SG_ASSOC.CADFOR.FNATDCC'
      Size = 1
    end
    object Tb_ForFNATDCD: TStringField
      FieldName = 'FNATDCD'
      Origin = 'SG_ASSOC.CADFOR.FNATDCD'
      Size = 1
    end
    object Tb_ForFCFOTRI: TFloatField
      FieldName = 'FCFOTRI'
      Origin = 'SG_ASSOC.CADFOR.FCFOTRI'
    end
    object Tb_ForFCFOST: TFloatField
      FieldName = 'FCFOST'
      Origin = 'SG_ASSOC.CADFOR.FCFOST'
    end
    object Tb_ForFRESTFOR: TFloatField
      FieldName = 'FRESTFOR'
      Origin = 'SG_ASSOC.CADFOR.FRESTFOR'
    end
    object Tb_ForFCODGFOR: TFloatField
      FieldName = 'FCODGFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODGFOR'
    end
    object Tb_ForFDESC01V: TFloatField
      FieldName = 'FDESC01V'
      Origin = 'SG_ASSOC.CADFOR.FDESC01V'
    end
    object Tb_ForFCB_TAM: TFloatField
      FieldName = 'FCB_TAM'
      Origin = 'SG_ASSOC.CADFOR.FCB_TAM'
    end
    object Tb_ForFCB_POSCOD: TFloatField
      FieldName = 'FCB_POSCOD'
      Origin = 'SG_ASSOC.CADFOR.FCB_POSCOD'
    end
    object Tb_ForFCB_TAMCOD: TFloatField
      FieldName = 'FCB_TAMCOD'
      Origin = 'SG_ASSOC.CADFOR.FCB_TAMCOD'
    end
    object Tb_ForFCB_TAMVCT: TFloatField
      FieldName = 'FCB_TAMVCT'
      Origin = 'SG_ASSOC.CADFOR.FCB_TAMVCT'
    end
    object Tb_ForFCB_POSVCT: TFloatField
      FieldName = 'FCB_POSVCT'
      Origin = 'SG_ASSOC.CADFOR.FCB_POSVCT'
    end
    object Tb_ForFCB_TAMQTD: TFloatField
      FieldName = 'FCB_TAMQTD'
      Origin = 'SG_ASSOC.CADFOR.FCB_TAMQTD'
    end
    object Tb_ForFCB_POSQTD: TFloatField
      FieldName = 'FCB_POSQTD'
      Origin = 'SG_ASSOC.CADFOR.FCB_POSQTD'
    end
    object Tb_ForFCB_TAMLOT: TFloatField
      FieldName = 'FCB_TAMLOT'
      Origin = 'SG_ASSOC.CADFOR.FCB_TAMLOT'
    end
    object Tb_ForFCB_POSLOT: TFloatField
      FieldName = 'FCB_POSLOT'
      Origin = 'SG_ASSOC.CADFOR.FCB_POSLOT'
    end
    object Tb_ForFDATHOR_INC: TDateTimeField
      FieldName = 'FDATHOR_INC'
      Origin = 'SG_ASSOC.CADFOR.FDATHOR_INC'
    end
    object Tb_ForFCODUSR_ALT: TFloatField
      FieldName = 'FCODUSR_ALT'
      Origin = 'SG_ASSOC.CADFOR.FCODUSR_ALT'
    end
    object Tb_ForFDATHOR_ALT: TDateTimeField
      FieldName = 'FDATHOR_ALT'
      Origin = 'SG_ASSOC.CADFOR.FDATHOR_ALT'
    end
    object Tb_ForFCODUSR_INC: TFloatField
      FieldName = 'FCODUSR_INC'
      Origin = 'SG_ASSOC.CADFOR.FCODUSR_INC'
    end
    object Tb_ForFREPLICARCX: TFloatField
      FieldName = 'FREPLICARCX'
      Origin = 'SG_ASSOC.CADFOR.FREPLICARCX'
    end
    object Tb_ForFREP_CODBCO: TFloatField
      FieldName = 'FREP_CODBCO'
      Origin = 'SG_ASSOC.CADFOR.FREP_CODBCO'
    end
    object Tb_ForFREP_CODDEP: TStringField
      FieldName = 'FREP_CODDEP'
      Origin = 'SG_ASSOC.CADFOR.FREP_CODDEP'
      Size = 5
    end
    object Tb_ForFREP_NOMDEP: TStringField
      FieldName = 'FREP_NOMDEP'
      Origin = 'SG_ASSOC.CADFOR.FREP_NOMDEP'
      Size = 40
    end
    object Tb_ForFREP_CODCCU: TStringField
      FieldName = 'FREP_CODCCU'
      Origin = 'SG_ASSOC.CADFOR.FREP_CODCCU'
      Size = 5
    end
    object Tb_ForFREP_NOMCCU: TStringField
      FieldName = 'FREP_NOMCCU'
      Origin = 'SG_ASSOC.CADFOR.FREP_NOMCCU'
      Size = 40
    end
    object Tb_ForFREP_NATDC: TStringField
      FieldName = 'FREP_NATDC'
      Origin = 'SG_ASSOC.CADFOR.FREP_NATDC'
      Size = 1
    end
    object Tb_ForFREP_TIPO: TStringField
      FieldName = 'FREP_TIPO'
      Origin = 'SG_ASSOC.CADFOR.FREP_TIPO'
      Size = 2
    end
    object Tb_ForFREP_CODIGO: TFloatField
      FieldName = 'FREP_CODIGO'
      Origin = 'SG_ASSOC.CADFOR.FREP_CODIGO'
    end
    object Tb_ForFREP_NOMBCO: TStringField
      FieldName = 'FREP_NOMBCO'
      Origin = 'SG_ASSOC.CADFOR.FREP_NOMBCO'
      Size = 40
    end
    object Tb_ForFREP_DESCMV: TStringField
      FieldName = 'FREP_DESCMV'
      Origin = 'SG_ASSOC.CADFOR.FREP_DESCMV'
      Size = 60
    end
    object Tb_ForFREP_NOMESAC: TStringField
      FieldName = 'FREP_NOMESAC'
      Origin = 'SG_ASSOC.CADFOR.FREP_NOMESAC'
      Size = 60
    end
    object Tb_ForFCODBLOQ: TFloatField
      FieldName = 'FCODBLOQ'
      Origin = 'SG_ASSOC.CADFOR.FCODBLOQ'
    end
    object Tb_ForFIM: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'FIM'
      Origin = 'SG_ASSOC.CADFOR.FIM'
    end
    object Tb_ForFDATHOR_BLOQ: TDateTimeField
      FieldName = 'FDATHOR_BLOQ'
      Origin = 'SG_ASSOC.CADFOR.FDATHOR_BLOQ'
    end
    object Tb_ForFMOTBLOQ: TStringField
      FieldName = 'FMOTBLOQ'
      Origin = 'SG_ASSOC.CADFOR.FMOTBLOQ'
      Size = 50
    end
    object Tb_ForFTPPESSOA: TFloatField
      FieldName = 'FTPPESSOA'
      Origin = 'SG_ASSOC.CADFOR.FTPPESSOA'
    end
    object Tb_Forobs_cgc: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs_cgc'
      Size = 15
      Calculated = True
    end
    object Tb_Forobs_ie: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs_ie'
      Size = 15
      Calculated = True
    end
    object Tb_ForFCNPJ_CONSISTE: TStringField
      FieldName = 'FCNPJ_CONSISTE'
      Origin = 'SG_ASSOC.CADFOR.FCNPJ_CONSISTE'
      Size = 1
    end
    object Tb_ForFCGC: TStringField
      FieldName = 'FCGC'
      Origin = 'SG_ASSOC.CADFOR.FCGC'
      Size = 14
    end
    object Tb_Forcgc_mask: TStringField
      FieldKind = fkCalculated
      FieldName = 'cgc_mask'
      Calculated = True
    end
    object Tb_ForFVSANIT: TStringField
      FieldName = 'FVSANIT'
      Origin = 'SG_ASSOC.CADFOR.FVSANIT'
    end
    object Tb_ForFNUMAE: TStringField
      FieldName = 'FNUMAE'
      Origin = 'SG_ASSOC.CADFOR.FNUMAE'
    end
    object Tb_ForFDTVAE: TDateTimeField
      FieldName = 'FDTVAE'
      Origin = 'SG_ASSOC.CADFOR.FDTVAE'
    end
    object Tb_ForFNUMCRT: TStringField
      FieldName = 'FNUMCRT'
      Origin = 'SG_ASSOC.CADFOR.FNUMCRT'
    end
    object Tb_ForFDTVCRT: TDateTimeField
      FieldName = 'FDTVCRT'
      Origin = 'SG_ASSOC.CADFOR.FDTVCRT'
    end
    object Tb_ForFNUMCBPF: TStringField
      FieldName = 'FNUMCBPF'
      Origin = 'SG_ASSOC.CADFOR.FNUMCBPF'
    end
    object Tb_ForFDTVCBPF: TDateTimeField
      FieldName = 'FDTVCBPF'
      Origin = 'SG_ASSOC.CADFOR.FDTVCBPF'
    end
    object Tb_ForFNUMCC: TStringField
      FieldName = 'FNUMCC'
      Origin = 'SG_ASSOC.CADFOR.FNUMCC'
    end
    object Tb_ForFDTVCC: TDateTimeField
      FieldName = 'FDTVCC'
      Origin = 'SG_ASSOC.CADFOR.FDTVCC'
    end
    object Tb_ForFNUMAFE: TStringField
      FieldName = 'FNUMAFE'
      Origin = 'SG_ASSOC.CADFOR.FNUMAFE'
    end
    object Tb_ForFDTVAFE: TDateTimeField
      FieldName = 'FDTVAFE'
      Origin = 'SG_ASSOC.CADFOR.FDTVAFE'
    end
    object Tb_ForFCBPF_SOLIDO: TFloatField
      FieldName = 'FCBPF_SOLIDO'
      Origin = 'SG_ASSOC.CADFOR.FCBPF_SOLIDO'
    end
    object Tb_ForFCBPF_LIQUIDO: TFloatField
      FieldName = 'FCBPF_LIQUIDO'
      Origin = 'SG_ASSOC.CADFOR.FCBPF_LIQUIDO'
    end
    object Tb_ForFCBPF_INJETAVEL: TFloatField
      FieldName = 'FCBPF_INJETAVEL'
      Origin = 'SG_ASSOC.CADFOR.FCBPF_INJETAVEL'
    end
    object Tb_ForFCBPF_POMADA: TFloatField
      FieldName = 'FCBPF_POMADA'
      Origin = 'SG_ASSOC.CADFOR.FCBPF_POMADA'
    end
    object Tb_ForFDTVSANIT: TDateTimeField
      FieldName = 'FDTVSANIT'
      Origin = 'SG_ASSOC.CADFOR.FDTVSANIT'
    end
    object Tb_ForFSITFOR: TFloatField
      FieldName = 'FSITFOR'
      Origin = 'SG_ASSOC.CADFOR.FSITFOR'
    end
    object Tb_ForFCRT: TFloatField
      FieldName = 'FCRT'
      Origin = 'SG_ASSOC.CADFOR.FCRT'
    end
    object Tb_ForIDFOR: TStringField
      FieldName = 'IDFOR'
      Size = 18
    end
    object Tb_ForFANVISA_NUMERO: TStringField
      FieldName = 'FANVISA_NUMERO'
      Origin = 'SG_ASSOC.FANVISA_NUMERO'
    end
    object Tb_ForFANVISA_DTVCTO: TDateTimeField
      FieldName = 'FANVISA_DTVCTO'
      Origin = 'SG_ASSOC.FANVISA_DTVCTO'
    end
    object Tb_ForFCERTTECNICO_NUM: TStringField
      FieldName = 'FCERTTECNICO_NUM'
      Origin = 'SG_ASSOC.FCERTTECNICO_NUM'
    end
    object Tb_ForFCERTTECNICO_DTVCTO: TDateTimeField
      FieldName = 'FCERTTECNICO_DTVCTO'
      Origin = 'SG_ASSOC.FCERTTECNICO_DTVCTO'
    end
  end
  object Src_For: TDataSource
    DataSet = Tb_For
    Left = 318
    Top = 183
  end
  object Tb_Ped01: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped01BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Ped01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01 where'
      'P1CODEMP  is null'
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped01
    Left = 481
    Top = 181
    object Tb_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_Ped01P1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Tb_Ped01P1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Tb_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_Ped01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_Ped01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_Ped01P1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Tb_Ped01P1SUBSER: TStringField
      FieldName = 'P1SUBSER'
      Origin = 'SG_ASSOC.CADP01.P1SUBSER'
      Size = 3
    end
    object Tb_Ped01P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object Tb_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_Ped01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_Ped01P1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_Ped01P1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Tb_Ped01P1HORADIG: TStringField
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Tb_Ped01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Tb_Ped01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Tb_Ped01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Tb_Ped01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Tb_Ped01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Tb_Ped01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Tb_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Tb_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Tb_Ped01P1CUPOM: TFloatField
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Tb_Ped01P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Tb_Ped01P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Tb_Ped01P1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Tb_Ped01P1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Tb_Ped01P1BASENP: TFloatField
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Tb_Ped01P1BASENN: TFloatField
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Tb_Ped01P1BASENI: TFloatField
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Tb_Ped01P1ICMSNP: TFloatField
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Tb_Ped01P1ICMSNN: TFloatField
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Tb_Ped01P1ICMSNI: TFloatField
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Tb_Ped01P1BASERP: TFloatField
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Tb_Ped01P1BASERN: TFloatField
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Tb_Ped01P1BASERI: TFloatField
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Tb_Ped01P1ICMSRP: TFloatField
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Tb_Ped01P1ICMSRN: TFloatField
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Tb_Ped01P1ICMSRI: TFloatField
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Tb_Ped01P1BASENRI: TFloatField
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Tb_Ped01P1ICMSNRI: TFloatField
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Tb_Ped01P1BASENRP: TFloatField
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Tb_Ped01P1ICMSNRP: TFloatField
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Tb_Ped01P1BASENRN: TFloatField
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Tb_Ped01P1ICMSNRN: TFloatField
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Tb_Ped01P1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Tb_Ped01P1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Tb_Ped01P1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Tb_Ped01P1TOTTRI: TFloatField
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Tb_Ped01P1TOTRET: TFloatField
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Tb_Ped01P1TOTISE: TFloatField
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Tb_Ped01P1TOTPOS: TFloatField
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Tb_Ped01P1TOTNEG: TFloatField
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Tb_Ped01P1TOTINA: TFloatField
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Tb_Ped01P1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Tb_Ped01P1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Tb_Ped01P1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Tb_Ped01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Tb_Ped01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Tb_Ped01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Tb_Ped01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Tb_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Tb_Ped01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Tb_Ped01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Tb_Ped01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Tb_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Tb_Ped01P1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Tb_Ped01P1CODLDR: TFloatField
      FieldName = 'P1CODLDR'
      Origin = 'SG_ASSOC.CADP01.P1CODLDR'
    end
    object Tb_Ped01P1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Tb_Ped01P1ORIGEM: TFloatField
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Tb_Ped01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Tb_Ped01P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Tb_Ped01P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Tb_Ped01P1PCOMIS: TFloatField
      FieldName = 'P1PCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PCOMIS'
    end
    object Tb_Ped01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Tb_Ped01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Tb_Ped01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Tb_Ped01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Tb_Ped01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Tb_Ped01P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Tb_Ped01P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Tb_Ped01P1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Tb_Ped01P1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Tb_Ped01P1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Tb_Ped01P1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Tb_Ped01P1PAVDES: TFloatField
      FieldName = 'P1PAVDES'
      Origin = 'SG_ASSOC.CADP01.P1PAVDES'
    end
    object Tb_Ped01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Tb_Ped01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Tb_Ped01P1TIPENT: TFloatField
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Tb_Ped01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Tb_Ped01P1LOTCV: TFloatField
      FieldName = 'P1LOTCV'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV'
    end
    object Tb_Ped01P1LOTCS: TFloatField
      FieldName = 'P1LOTCS'
      Origin = 'SG_ASSOC.CADP01.P1LOTCS'
    end
    object Tb_Ped01P1LOTCT: TFloatField
      FieldName = 'P1LOTCT'
      Origin = 'SG_ASSOC.CADP01.P1LOTCT'
    end
    object Tb_Ped01nomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_Ped01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Tb_Ped01P1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Tb_Ped01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Tb_Ped01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Tb_Ped01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Tb_Ped01P1SITAC: TFloatField
      FieldName = 'P1SITAC'
      Origin = 'SG_ASSOC.CADP01.P1SITAC'
    end
    object Tb_Ped01P1REPAS: TFloatField
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Tb_Ped01P1TOTUCPR: TFloatField
      FieldName = 'P1TOTUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTUCPR'
    end
    object Tb_Ped01P1PVTC: TFloatField
      FieldName = 'P1PVTC'
      Origin = 'SG_ASSOC.CADP01.P1PVTC'
    end
    object Tb_Ped01P1PVCOM: TFloatField
      FieldName = 'P1PVCOM'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM'
    end
    object Tb_Ped01P1PVACTD: TFloatField
      FieldName = 'P1PVACTD'
      Origin = 'SG_ASSOC.CADP01.P1PVACTD'
    end
    object Tb_Ped01P1PVACT00: TFloatField
      FieldName = 'P1PVACT00'
      Origin = 'SG_ASSOC.CADP01.P1PVACT00'
    end
    object Tb_Ped01P1PVACT01: TFloatField
      FieldName = 'P1PVACT01'
      Origin = 'SG_ASSOC.CADP01.P1PVACT01'
    end
    object Tb_Ped01P1PVACT99: TFloatField
      FieldName = 'P1PVACT99'
      Origin = 'SG_ASSOC.CADP01.P1PVACT99'
    end
    object Tb_Ped01P1PVTDC: TFloatField
      FieldName = 'P1PVTDC'
      Origin = 'SG_ASSOC.CADP01.P1PVTDC'
    end
    object Tb_Ped01P1PVDES: TFloatField
      FieldName = 'P1PVDES'
      Origin = 'SG_ASSOC.CADP01.P1PVDES'
    end
    object Tb_Ped01P1PVTPD1: TFloatField
      FieldName = 'P1PVTPD1'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD1'
    end
    object Tb_Ped01P1PVDES1: TFloatField
      FieldName = 'P1PVDES1'
      Origin = 'SG_ASSOC.CADP01.P1PVDES1'
    end
    object Tb_Ped01P1PVTPD2: TFloatField
      FieldName = 'P1PVTPD2'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD2'
    end
    object Tb_Ped01P1PVDES2: TFloatField
      FieldName = 'P1PVDES2'
      Origin = 'SG_ASSOC.CADP01.P1PVDES2'
    end
    object Tb_Ped01P1PVTPDESF: TFloatField
      FieldName = 'P1PVTPDESF'
      Origin = 'SG_ASSOC.CADP01.P1PVTPDESF'
    end
    object Tb_Ped01P1PVDESCF: TFloatField
      FieldName = 'P1PVDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDESCF'
    end
    object Tb_Ped01P1PVDIASDESCF: TFloatField
      FieldName = 'P1PVDIASDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDIASDESCF'
    end
    object Tb_Ped01P1PVDDESCF: TFloatField
      FieldName = 'P1PVDDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDDESCF'
    end
    object Tb_Ped01P1TPP: TFloatField
      FieldName = 'P1TPP'
      Origin = 'SG_ASSOC.CADP01.P1TPP'
    end
    object Tb_Ped01P1PRAZO: TFloatField
      FieldName = 'P1PRAZO'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO'
    end
    object Tb_Ped01P1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Tb_Ped01P1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Tb_Ped01P1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Tb_Ped01P1PEDORI1: TStringField
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Tb_Ped01P1PEDORI2: TStringField
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Tb_Ped01P1MOTIVO: TStringField
      FieldName = 'P1MOTIVO'
      Origin = 'SG_ASSOC.CADP01.P1MOTIVO'
      Size = 60
    end
    object Tb_Ped01P1NUMVIS: TStringField
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Tb_Ped01P1DATVIS: TDateTimeField
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Tb_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Tb_Ped01P1TOTDI01: TFloatField
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Tb_Ped01P1TOTDI02: TFloatField
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Tb_Ped01P1TOTDIVL: TFloatField
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Tb_Ped01P1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Tb_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Tb_Ped01P1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Tb_Ped01P1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Tb_Ped01P1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Tb_Ped01P1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_Ped01P1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_Ped01P1CODDEP: TFloatField
      FieldName = 'P1CODDEP'
      Origin = 'SG_ASSOC.CADP01.P1CODDEP'
    end
    object Tb_Ped01P1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Tb_Ped01P1LOTEDM: TFloatField
      FieldName = 'P1LOTEDM'
      Origin = 'SG_ASSOC.CADP01.P1LOTEDM'
    end
    object Tb_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Tb_Ped01P1TOTOUT: TFloatField
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Tb_Ped01P1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Tb_Ped01P1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Tb_Ped01P1PVCOM02: TFloatField
      FieldName = 'P1PVCOM02'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM02'
    end
    object Tb_Ped01P1PVCOM03: TFloatField
      FieldName = 'P1PVCOM03'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM03'
    end
    object Tb_Ped01P1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Tb_Ped01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Tb_Ped01P1SITCPR: TFloatField
      DisplayLabel = 'Situa'#231#227'o do Pedido'
      FieldName = 'P1SITCPR'
      Origin = 'SG_ASSOC.CADP01.P1SITCPR'
    end
    object Tb_Ped01P1LOTCV02: TFloatField
      FieldName = 'P1LOTCV02'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV02'
    end
    object Tb_Ped01P1LOTCV03: TFloatField
      FieldName = 'P1LOTCV03'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV03'
    end
    object Tb_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_Ped01P1CFO1: TStringField
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Tb_Ped01P1CFO2: TStringField
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Tb_Ped01P1PEDORI: TFloatField
      FieldName = 'P1PEDORI'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI'
    end
    object Tb_Ped01P1BLQPRM: TFloatField
      FieldName = 'P1BLQPRM'
      Origin = 'SG_ASSOC.CADP01.P1BLQPRM'
    end
    object Tb_Ped01P1TOTDI03: TFloatField
      DisplayLabel = 'Total do Desconto 03 do '#237'tem'
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Tb_Ped01P1VALDES01: TFloatField
      DisplayLabel = 'Valor do Desconto 01'
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Tb_Ped01P1VALDES02: TFloatField
      DisplayLabel = 'Valor do Desconto 02'
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Tb_Ped01P1TARBAN: TFloatField
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Tb_Ped01P1PVTPD3: TFloatField
      FieldName = 'P1PVTPD3'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD3'
    end
    object Tb_Ped01P1PVDES3: TFloatField
      FieldName = 'P1PVDES3'
      Origin = 'SG_ASSOC.CADP01.P1PVDES3'
    end
    object Tb_Ped01P1CFOSER: TStringField
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Tb_Ped01P1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Tb_Ped01P1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Tb_Ped01P1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Tb_Ped01P1PROCESSO: TStringField
      FieldName = 'P1PROCESSO'
      Origin = 'SG_ASSOC.CADP01.P1PROCESSO'
      Size = 15
    end
    object Tb_Ped01P1CUPACRE: TFloatField
      FieldName = 'P1CUPACRE'
      Origin = 'SG_ASSOC.CADP01.P1CUPACRE'
    end
    object Tb_Ped01P1CUPDES: TFloatField
      FieldName = 'P1CUPDES'
      Origin = 'SG_ASSOC.CADP01.P1CUPDES'
    end
    object Tb_Ped01P1LEMAT: TFloatField
      FieldName = 'P1LEMAT'
      Origin = 'SG_ASSOC.CADP01.P1LEMAT'
    end
    object Tb_Ped01P1DTACERTO: TDateTimeField
      FieldName = 'P1DTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1DTACERTO'
    end
    object Tb_Ped01P1LTACERTO: TFloatField
      FieldName = 'P1LTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1LTACERTO'
    end
    object Tb_Ped01P1COMASSE: TFloatField
      FieldName = 'P1COMASSE'
      Origin = 'SG_ASSOC.CADP01.P1COMASSE'
    end
    object Tb_Ped01P1LOTCASSE: TFloatField
      FieldName = 'P1LOTCASSE'
      Origin = 'SG_ASSOC.CADP01.P1LOTCASSE'
    end
    object Tb_Ped01P1CODASSE: TFloatField
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Tb_Ped01P1QTDMAN: TFloatField
      FieldName = 'P1QTDMAN'
      Origin = 'SG_ASSOC.CADP01.P1QTDMAN'
    end
    object Tb_Ped01P1ESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie dos Volumes'
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Tb_Ped01P1CANHOTO: TFloatField
      FieldName = 'P1CANHOTO'
      Origin = 'SG_ASSOC.CADP01.P1CANHOTO'
    end
    object Tb_Ped01P1ICMS_BCFRE: TFloatField
      FieldName = 'P1ICMS_BCFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCFRE'
    end
    object Tb_Ped01P1ICMS_ALFRE: TFloatField
      FieldName = 'P1ICMS_ALFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALFRE'
    end
    object Tb_Ped01P1ICMS_VLFRE: TFloatField
      FieldName = 'P1ICMS_VLFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLFRE'
    end
    object Tb_Ped01P1ICMS_BCSEG: TFloatField
      FieldName = 'P1ICMS_BCSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCSEG'
    end
    object Tb_Ped01P1ICMS_ALSEG: TFloatField
      FieldName = 'P1ICMS_ALSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALSEG'
    end
    object Tb_Ped01P1ICMS_VLSEG: TFloatField
      FieldName = 'P1ICMS_VLSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLSEG'
    end
    object Tb_Ped01P1ICMS_BCOUTD: TFloatField
      FieldName = 'P1ICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCOUTD'
    end
    object Tb_Ped01P1ICMS_ALOUTD: TFloatField
      FieldName = 'P1ICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALOUTD'
    end
    object Tb_Ped01P1ICMS_VLOUTD: TFloatField
      FieldName = 'P1ICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLOUTD'
    end
    object Tb_Ped01P1ICMS_BCIPI: TFloatField
      FieldName = 'P1ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCIPI'
    end
    object Tb_Ped01P1ICMS_ALIPI: TFloatField
      FieldName = 'P1ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALIPI'
    end
    object Tb_Ped01P1ICMS_VLIPI: TFloatField
      FieldName = 'P1ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLIPI'
    end
    object Tb_Ped01P1ALIQDEB: TFloatField
      FieldName = 'P1ALIQDEB'
      Origin = 'SG_ASSOC.CADP01.P1ALIQDEB'
    end
    object Tb_Ped01P1TOTCGRU: TFloatField
      FieldName = 'P1TOTCGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTCGRU'
    end
    object Tb_Ped01P1TOTSGRU: TFloatField
      FieldName = 'P1TOTSGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTSGRU'
    end
    object Tb_Ped01P1CODV04: TFloatField
      FieldName = 'P1CODV04'
      Origin = 'SG_ASSOC.CADP01.P1CODV04'
    end
    object Tb_Ped01P1COMV04: TFloatField
      FieldName = 'P1COMV04'
      Origin = 'SG_ASSOC.CADP01.P1COMV04'
    end
    object Tb_Ped01P1LOTCV04: TFloatField
      FieldName = 'P1LOTCV04'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV04'
    end
    object Tb_Ped01P1PVCOM04: TFloatField
      FieldName = 'P1PVCOM04'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM04'
    end
    object Tb_Ped01P1PROMOCAO: TStringField
      FieldName = 'P1PROMOCAO'
      Origin = 'SG_ASSOC.CADP01.P1PROMOCAO'
      Size = 10
    end
    object Tb_Ped01P1CODPRIOR: TFloatField
      FieldName = 'P1CODPRIOR'
      Origin = 'SG_ASSOC.CADP01.P1CODPRIOR'
    end
    object Tb_Ped01P1DTHRCHEG: TDateTimeField
      FieldName = 'P1DTHRCHEG'
      Origin = 'SG_ASSOC.CADP01.P1DTHRCHEG'
    end
    object Tb_Ped01P1CODBLOQ: TStringField
      FieldName = 'P1CODBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ'
    end
    object Tb_Ped01P1CODUSR_LBLOQ: TFloatField
      FieldName = 'P1CODUSR_LBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_LBLOQ'
    end
    object Tb_Ped01P1TOTSERLIQ: TFloatField
      FieldName = 'P1TOTSERLIQ'
      Origin = 'SGE.CADP01.P1TOTSERLIQ'
    end
    object Tb_Ped01P1COMIS_EXTRA: TFloatField
      FieldName = 'P1COMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP01.P1COMIS_EXTRA'
    end
    object Tb_Ped01P1QTDM3: TFloatField
      FieldName = 'P1QTDM3'
      Origin = 'SG_ASSOC.CADP01.P1QTDM3'
    end
    object Tb_Ped01P1VFRE_CUSENT: TFloatField
      FieldName = 'P1VFRE_CUSENT'
      Origin = 'SG_ASSOC.CADP01.P1VFRE_CUSENT'
    end
    object Tb_Ped01P1VALENT: TFloatField
      FieldName = 'P1VALENT'
      Origin = 'SG_ASSOC.CADP01.P1VALENT'
    end
    object Tb_Ped01P1PRAZO_ENT: TFloatField
      FieldName = 'P1PRAZO_ENT'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO_ENT'
    end
    object Tb_Ped01P1SEPAMB: TFloatField
      FieldName = 'P1SEPAMB'
      Origin = 'SG_ASSOC.CADP01.P1SEPAMB'
    end
    object Tb_Ped01P1PZOLIB: TFloatField
      FieldName = 'P1PZOLIB'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB'
    end
    object Tb_Ped01P1PZOLIB_USR: TFloatField
      FieldName = 'P1PZOLIB_USR'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB_USR'
    end
    object Tb_Ped01P1BLOQPEND: TFloatField
      FieldName = 'P1BLOQPEND'
      Origin = 'SG_ASSOC.CADP01.P1BLOQPEND'
    end
    object Tb_Ped01P1CODBLOQ_LIB: TStringField
      FieldName = 'P1CODBLOQ_LIB'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ_LIB'
    end
    object Tb_Ped01P1ECF_SERIE: TStringField
      FieldName = 'P1ECF_SERIE'
      Origin = 'SG_ASSOC.CADP01.P1ECF_SERIE'
    end
    object Tb_Ped01P1CX_CODCAI: TFloatField
      FieldName = 'P1CX_CODCAI'
      Origin = 'SG_ASSOC.CADP01.P1CX_CODCAI'
    end
    object Tb_Ped01P1CX_LOTMOV: TFloatField
      FieldName = 'P1CX_LOTMOV'
      Origin = 'SG_ASSOC.CADP01.P1CX_LOTMOV'
    end
    object Tb_Ped01P1DUP_PROD: TFloatField
      FieldName = 'P1DUP_PROD'
      Origin = 'SG_ASSOC.CADP01.P1DUP_PROD'
    end
    object Tb_Ped01P1DUP_SERV: TFloatField
      FieldName = 'P1DUP_SERV'
      Origin = 'SG_ASSOC.CADP01.P1DUP_SERV'
    end
    object Tb_Ped01P1INCTB: TFloatField
      FieldName = 'P1INCTB'
      Origin = 'SG_ASSOC.CADP01.P1INCTB'
    end
    object Tb_Ped01P1EMITENTE: TStringField
      FieldName = 'P1EMITENTE'
      Origin = 'SG_ASSOC.CADP01.P1EMITENTE'
      Size = 1
    end
    object Tb_Ped01P1PVACREDESREG: TFloatField
      FieldName = 'P1PVACREDESREG'
      Origin = 'SG_ASSOC.CADP01.P1PVACREDESREG'
    end
    object Tb_Ped01P1PVAJCOMIS: TFloatField
      FieldName = 'P1PVAJCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PVAJCOMIS'
    end
    object Tb_Ped01P1LOCAL: TFloatField
      FieldName = 'P1LOCAL'
      Origin = 'SG_ASSOC.CADP01.P1LOCAL'
    end
    object Tb_Ped01P1TOTPROM: TFloatField
      FieldName = 'P1TOTPROM'
      Origin = 'SG_ASSOC.CADP01.P1TOTPROM'
    end
    object Tb_Ped01P1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Tb_Ped01P1TOTPIS: TFloatField
      FieldName = 'P1TOTPIS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPIS'
    end
    object Tb_Ped01P1TOTCOFINS: TFloatField
      FieldName = 'P1TOTCOFINS'
      Origin = 'SG_ASSOC.CADP01.P1TOTCOFINS'
    end
    object Tb_Ped01P1RED_BCISSQN: TFloatField
      FieldName = 'P1RED_BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCISSQN'
    end
    object Tb_Ped01P1BCINSS: TFloatField
      FieldName = 'P1BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1BCINSS'
    end
    object Tb_Ped01P1RED_BCINSS: TFloatField
      FieldName = 'P1RED_BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCINSS'
    end
    object Tb_Ped01P1VINSS: TFloatField
      FieldName = 'P1VINSS'
      Origin = 'SG_ASSOC.CADP01.P1VINSS'
    end
    object Tb_Ped01P1BCIRRF: TFloatField
      FieldName = 'P1BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1BCIRRF'
    end
    object Tb_Ped01P1RED_BCIRRF: TFloatField
      FieldName = 'P1RED_BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCIRRF'
    end
    object Tb_Ped01P1VIRRF: TFloatField
      FieldName = 'P1VIRRF'
      Origin = 'SG_ASSOC.CADP01.P1VIRRF'
    end
    object Tb_Ped01P1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Tb_Ped01submod: TFloatField
      FieldKind = fkCalculated
      FieldName = 'submod'
      Calculated = True
    end
    object Tb_Ped01P1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
      Origin = 'SG_ASSOC.CADP01.P1QTDDECPU'
    end
    object Tb_Ped01P1NOMEREC: TStringField
      FieldName = 'P1NOMEREC'
      Origin = 'SG_ASSOC.CADP01.P1NOMEREC'
      Size = 40
    end
    object Tb_Ped01P1DATHORREC: TDateTimeField
      FieldName = 'P1DATHORREC'
      Origin = 'SG_ASSOC.CADP01.P1DATHORREC'
    end
    object Tb_Ped01P1DATHOR_REP: TDateTimeField
      FieldName = 'P1DATHOR_REP'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_REP'
    end
    object Tb_Ped01P1CHAVE_NIVEL: TFloatField
      FieldName = 'P1CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE_NIVEL'
    end
    object Tb_Ped01P1TPEMIS: TFloatField
      FieldName = 'P1TPEMIS'
      Origin = 'SG_ASSOC.CADP01.P1TPEMIS'
    end
    object Tb_Ped01P1DATHOR_ULTEVE: TDateTimeField
      FieldName = 'P1DATHOR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_ULTEVE'
    end
    object Tb_Ped01P1CODUSR_ULTEVE: TFloatField
      FieldName = 'P1CODUSR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_ULTEVE'
    end
    object Tb_Ped01P1COMP_ULTEVE: TStringField
      FieldName = 'P1COMP_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1COMP_ULTEVE'
      Size = 30
    end
    object Tb_Ped01P1ANALISE: TFloatField
      FieldName = 'P1ANALISE'
      Origin = 'SG_ASSOC.CADP01.P1ANALISE'
    end
    object Tb_Ped01P1TOTEXTCOM: TFloatField
      FieldName = 'P1TOTEXTCOM'
      Origin = 'SG_ASSOC.CADP01.P1TOTEXTCOM'
    end
    object Tb_Ped01P1ACRESCIMO: TFloatField
      FieldName = 'P1ACRESCIMO'
      Origin = 'SG_ASSOC.CADP01.P1ACRESCIMO'
    end
    object Tb_Ped01P1DESPACES: TFloatField
      FieldName = 'P1DESPACES'
      Origin = 'SG_ASSOC.CADP01.P1DESPACES'
    end
    object Tb_Ped01P1MOTDES: TFloatField
      FieldName = 'P1MOTDES'
      Origin = 'SG_ASSOC.CADP01.P1MOTDES'
    end
    object Tb_Ped01P1TOTVICMSDES: TFloatField
      FieldName = 'P1TOTVICMSDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTVICMSDES'
    end
    object Tb_Ped01P1TOTDESCPR: TFloatField
      FieldName = 'P1TOTDESCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTDESCPR'
    end
    object Tb_Ped01P1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOMP'
    end
    object Tb_Ped01P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_Ped01P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_Ped01P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_Ped01P1TITSEP_PROD_SERV: TFloatField
      FieldName = 'P1TITSEP_PROD_SERV'
      Origin = 'SG_ASSOC.CADP01.P1TITSEP_PROD_SERV'
    end
    object Tb_Ped01P1NUMNF_SERV: TFloatField
      FieldName = 'P1NUMNF_SERV'
    end
    object Tb_Ped01P1PESO_LIDO_TOTAL: TFloatField
      FieldName = 'P1PESO_LIDO_TOTAL'
      Origin = 'SG_ASSOC.CADP01.P1PESO_LIDO_TOTAL'
    end
    object Tb_Ped01P1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
      Origin = 'SG_ASSOC.CADP01.P1ID_NEW'
    end
    object Tb_Ped01P1CSLL: TFloatField
      FieldName = 'P1CSLL'
    end
    object Tb_Ped01P1IRRF: TFloatField
      FieldName = 'P1IRRF'
    end
    object Tb_Ped01P1SERVICO_OBS_CORPO: TBlobField
      FieldName = 'P1SERVICO_OBS_CORPO'
      BlobType = ftMemo
    end
    object Tb_Ped01P1SERVICO_OBS_INF_ADIC: TBlobField
      FieldName = 'P1SERVICO_OBS_INF_ADIC'
      BlobType = ftMemo
    end
  end
  object Src_Ped01: TDataSource
    DataSet = Tb_Ped01
    Left = 537
    Top = 181
  end
  object Src_Ped02: TDataSource
    DataSet = Tb_Ped02
    Left = 546
    Top = 318
  end
  object Tb_Gru: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GruBeforeInsert
    AfterInsert = Tb_GruAfterInsert
    BeforePost = Tb_GruBeforePost
    AfterPost = c
    AfterCancel = Tb_GruAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGRU where'
      'GRCODEMP   like :EMPRESA  and'
      'GRCODGRU   like :CODGRU   and'
      'GRNOME        like :NOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Gru
    Left = 261
    Top = 406
    ParamData = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_GruGRCODEMP: TFloatField
      FieldName = 'GRCODEMP'
      Origin = 'SG_ASSOC.CADGRU.GRCODEMP'
    end
    object Tb_GruGRCODGRU: TFloatField
      FieldName = 'GRCODGRU'
      Origin = 'SG_ASSOC.CADGRU.GRCODGRU'
    end
    object Tb_GruGRNOME: TStringField
      FieldName = 'GRNOME'
      Origin = 'SG_ASSOC.CADGRU.GRNOME'
      Size = 30
    end
    object Tb_GruGRDATHOR_INC: TDateTimeField
      FieldName = 'GRDATHOR_INC'
      Origin = 'SG_ASSOC.CADGRU.GRDATHOR_INC'
    end
    object Tb_GruGRCODUSR_INC: TFloatField
      FieldName = 'GRCODUSR_INC'
      Origin = 'SG_ASSOC.CADGRU.GRCODUSR_INC'
    end
    object Tb_GruGRCODUSR_ALT: TFloatField
      FieldName = 'GRCODUSR_ALT'
      Origin = 'SG_ASSOC.CADGRU.GRCODUSR_ALT'
    end
    object Tb_GruGRDATHOR_ALT: TDateTimeField
      FieldName = 'GRDATHOR_ALT'
      Origin = 'SG_ASSOC.CADGRU.GRDATHOR_ALT'
    end
    object Tb_GruGRTEXTO: TMemoField
      FieldName = 'GRTEXTO'
      Origin = 'SG_ASSOC.CADGRU.GRTEXTO'
      BlobType = ftMemo
      Size = 300
    end
  end
  object Src_Gru: TDataSource
    DataSet = Tb_Gru
    Left = 318
    Top = 406
  end
  object Tb_PF1: TQuery
    CachedUpdates = True
    BeforePost = Tb_PF1BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_PF1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1 where'
      'PF1CODEMP   is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PF1
    Left = 490
    Top = 487
    object Tb_PF1PF1CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Tb_PF1PF1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Tb_PF1PF1CODFOR: TFloatField
      DisplayLabel = 'C'#243'digo Forn.'
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Tb_PF1PF1DATA: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Tb_PF1PF1OBS: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PF1OBS'
      Origin = 'SG_ASSOC.CADPF1.PF1OBS'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_PF1PF1DESC01: TFloatField
      DisplayLabel = 'Desconto 01'
      FieldName = 'PF1DESC01'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC01'
    end
    object Tb_PF1PF1DESC02: TFloatField
      DisplayLabel = 'Desconto 02'
      FieldName = 'PF1DESC02'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC02'
    end
    object Tb_PF1PF1DESC03: TFloatField
      DisplayLabel = 'Desconto 03'
      FieldName = 'PF1DESC03'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC03'
    end
    object Tb_PF1PF1TOTDES: TFloatField
      DisplayLabel = 'Total de Descontos'
      FieldName = 'PF1TOTDES'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDES'
    end
    object Tb_PF1PF1TOTBRU: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'PF1TOTBRU'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRU'
    end
    object Tb_PF1PF1CODUSR: TFloatField
      FieldName = 'PF1CODUSR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODUSR'
    end
    object Tb_PF1PF1HORDIG: TStringField
      FieldName = 'PF1HORDIG'
      Origin = 'SG_ASSOC.CADPF1.PF1HORDIG'
      Size = 8
    end
    object Tb_PF1PF1USRMOD: TFloatField
      FieldName = 'PF1USRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1USRMOD'
    end
    object Tb_PF1PF1DTMOD: TDateTimeField
      FieldName = 'PF1DTMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1DTMOD'
    end
    object Tb_PF1PF1TOTMER: TFloatField
      FieldName = 'PF1TOTMER'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTMER'
    end
    object Tb_PF1PF1TOTPOS: TFloatField
      FieldName = 'PF1TOTPOS'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPOS'
    end
    object Tb_PF1PF1TOTNEG: TFloatField
      FieldName = 'PF1TOTNEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTNEG'
    end
    object Tb_PF1PF1TOTINA: TFloatField
      FieldName = 'PF1TOTINA'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTINA'
    end
    object Tb_PF1PF1BASEN: TFloatField
      FieldName = 'PF1BASEN'
      Origin = 'SG_ASSOC.CADPF1.PF1BASEN'
    end
    object Tb_PF1PF1BASER: TFloatField
      FieldName = 'PF1BASER'
      Origin = 'SG_ASSOC.CADPF1.PF1BASER'
    end
    object Tb_PF1PF1ICMSN: TFloatField
      FieldName = 'PF1ICMSN'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSN'
    end
    object Tb_PF1PF1ICMSR: TFloatField
      FieldName = 'PF1ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
    object Tb_PF1PF1CODLDR: TFloatField
      FieldName = 'PF1CODLDR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODLDR'
    end
    object Tb_PF1PF1BASENR: TFloatField
      FieldName = 'PF1BASENR'
      Origin = 'SG_ASSOC.CADPF1.PF1BASENR'
    end
    object Tb_PF1PF1ICMSNR: TFloatField
      FieldName = 'PF1ICMSNR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSNR'
    end
    object Tb_PF1PF1ISENTAS: TFloatField
      FieldName = 'PF1ISENTAS'
      Origin = 'SG_ASSOC.CADPF1.PF1ISENTAS'
    end
    object Tb_PF1PF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Tb_PF1PF1DATANF: TDateTimeField
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Tb_PF1PF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Tb_PF1PF1SERIE: TStringField
      FieldName = 'PF1SERIE'
      Origin = 'SG_ASSOC.CADPF1.PF1SERIE'
      Size = 3
    end
    object Tb_PF1PF1SUBSER: TStringField
      FieldName = 'PF1SUBSER'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBSER'
      Size = 3
    end
    object Tb_PF1PF1MODELO: TStringField
      FieldName = 'PF1MODELO'
      Origin = 'SG_ASSOC.CADPF1.PF1MODELO'
      Size = 3
    end
    object Tb_PF1PF1TOTFRE: TFloatField
      FieldName = 'PF1TOTFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFRE'
    end
    object Tb_PF1PF1TOTOUT: TFloatField
      FieldName = 'PF1TOTOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT'
    end
    object Tb_PF1PF1TOTIPI: TFloatField
      FieldName = 'PF1TOTIPI'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTIPI'
    end
    object Tb_PF1PF1TOTSEG: TFloatField
      FieldName = 'PF1TOTSEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTSEG'
    end
    object Tb_PF1PF1NUMDUP: TFloatField
      FieldName = 'PF1NUMDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUP'
    end
    object Tb_PF1PF1DESD: TStringField
      DisplayWidth = 4
      FieldName = 'PF1DESD'
      Origin = 'SG_ASSOC.CADPF1.PF1DESD'
      Size = 4
    end
    object Tb_PF1PF1STATUS: TFloatField
      FieldName = 'PF1STATUS'
      Origin = 'SG_ASSOC.CADPF1.PF1STATUS'
    end
    object Tb_PF1PF1CODPV: TFloatField
      FieldName = 'PF1CODPV'
      Origin = 'SG_ASSOC.CADPF1.PF1CODPV'
    end
    object Tb_PF1PF1CODBCO: TFloatField
      FieldName = 'PF1CODBCO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODBCO'
    end
    object Tb_PF1PF1CODTRA: TFloatField
      FieldName = 'PF1CODTRA'
      Origin = 'SG_ASSOC.CADPF1.PF1CODTRA'
    end
    object Tb_PF1PF1GRAVNF: TFloatField
      FieldName = 'PF1GRAVNF'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVNF'
    end
    object Tb_PF1PF1GRAVDP: TFloatField
      FieldName = 'PF1GRAVDP'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVDP'
    end
    object Tb_PF1PF1CASASD: TFloatField
      FieldName = 'PF1CASASD'
      Origin = 'SG_ASSOC.CADPF1.PF1CASASD'
    end
    object Tb_PF1PF1HRMOD: TStringField
      FieldName = 'PF1HRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1HRMOD'
      Size = 10
    end
    object Tb_PF1PF1TABPV: TStringField
      FieldName = 'PF1TABPV'
      Origin = 'SG_ASSOC.CADPF1.PF1TABPV'
      Size = 2
    end
    object Tb_PF1PF1DATAENT: TDateTimeField
      FieldName = 'PF1DATAENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DATAENT'
    end
    object Tb_PF1PF1DTPFAT: TDateTimeField
      FieldName = 'PF1DTPFAT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPFAT'
    end
    object Tb_PF1PF1DTPENT: TDateTimeField
      FieldName = 'PF1DTPENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPENT'
    end
    object Tb_PF1PF1PERCFRE: TFloatField
      FieldName = 'PF1PERCFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1PERCFRE'
    end
    object Tb_PF1PF1FRETEPC: TFloatField
      FieldName = 'PF1FRETEPC'
      Origin = 'SG_ASSOC.CADPF1.PF1FRETEPC'
    end
    object Tb_PF1PF1CONDPAG: TStringField
      FieldName = 'PF1CONDPAG'
      Origin = 'SG_ASSOC.CADPF1.PF1CONDPAG'
      Size = 30
    end
    object Tb_PF1PF1PIPIFRETE: TFloatField
      FieldName = 'PF1PIPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1PIPIFRETE'
    end
    object Tb_PF1PF1IPIFRETE: TFloatField
      FieldName = 'PF1IPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1IPIFRETE'
    end
    object Tb_PF1PF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Tb_PF1PF1TEMBOL: TFloatField
      DisplayLabel = 'Tem Boleto Bancario 0-Sim 1-Nao'
      FieldName = 'PF1TEMBOL'
      Origin = 'SG_ASSOC.CADPF1.PF1TEMBOL'
    end
    object Tb_PF1PF1LEMAT: TFloatField
      FieldName = 'PF1LEMAT'
      Origin = 'SG_ASSOC.CADPF1.PF1LEMAT'
    end
    object Tb_PF1PF1CODEMP_ORI: TFloatField
      FieldName = 'PF1CODEMP_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP_ORI'
    end
    object Tb_PF1PF1NUMPED_ORI: TFloatField
      FieldName = 'PF1NUMPED_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMPED_ORI'
    end
    object Tb_PF1PF1PAG_ORI: TFloatField
      FieldName = 'PF1PAG_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1PAG_ORI'
    end
    object Tb_PF1PF1ORIGEM: TFloatField
      FieldName = 'PF1ORIGEM'
      Origin = 'SG_ASSOC.CADPF1.PF1ORIGEM'
    end
    object Tb_PF1PF1OUTNINC: TFloatField
      FieldName = 'PF1OUTNINC'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTNINC'
    end
    object Tb_PF1PF1OUTDESP: TFloatField
      FieldName = 'PF1OUTDESP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTDESP'
    end
    object Tb_PF1PF1NFCF: TFloatField
      FieldName = 'PF1NFCF'
      Origin = 'SGE.CADPF1.PF1NFCF'
    end
    object Tb_PF1PF1TOTLIQOUT: TFloatField
      FieldName = 'PF1TOTLIQOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQOUT'
    end
    object Tb_PF1PF1TOTPBT: TFloatField
      FieldName = 'PF1TOTPBT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPBT'
    end
    object Tb_PF1PF1FORMACE: TFloatField
      FieldName = 'PF1FORMACE'
      Origin = 'SG_ASSOC.CADPF1.PF1FORMACE'
    end
    object Tb_PF1PF1SITPED: TFloatField
      FieldName = 'PF1SITPED'
      Origin = 'SG_ASSOC.CADPF1.PF1SITPED'
    end
    object Tb_PF1PF1QTDMAN: TFloatField
      FieldName = 'PF1QTDMAN'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDMAN'
    end
    object Tb_PF1PF1TOTDESOUT: TFloatField
      FieldName = 'PF1TOTDESOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDESOUT'
    end
    object Tb_PF1PF1TOTBRUOUT: TFloatField
      FieldName = 'PF1TOTBRUOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRUOUT'
    end
    object Tb_PF1PF1TOTFREOUT: TFloatField
      FieldName = 'PF1TOTFREOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFREOUT'
    end
    object Tb_PF1PF1OUTROS: TFloatField
      FieldName = 'PF1OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTROS'
    end
    object Tb_PF1PF1NUMDUPOUT: TFloatField
      FieldName = 'PF1NUMDUPOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUPOUT'
    end
    object Tb_PF1PF1TIPO: TFloatField
      FieldName = 'PF1TIPO'
      Origin = 'SG_ASSOC.CADPF1.PF1TIPO'
    end
    object Tb_PF1PF1SIV_FRETE: TFloatField
      FieldName = 'PF1SIV_FRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_FRETE'
    end
    object Tb_PF1PF1SIV_DARE: TFloatField
      FieldName = 'PF1SIV_DARE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_DARE'
    end
    object Tb_PF1PF1SIV_OUTROS: TFloatField
      FieldName = 'PF1SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_OUTROS'
    end
    object Tb_PF1PF1OUTVDUP: TFloatField
      FieldName = 'PF1OUTVDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTVDUP'
    end
    object Tb_PF1PF1PRAZO: TFloatField
      FieldName = 'PF1PRAZO'
      Origin = 'SG_ASSOC.CADPF1.PF1PRAZO'
    end
    object Tb_PF1PF1INT: TFloatField
      FieldName = 'PF1INT'
      Origin = 'SG_ASSOC.CADPF1.PF1INT'
    end
    object Tb_PF1PF1QTDP: TFloatField
      FieldName = 'PF1QTDP'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDP'
    end
    object Tb_PF1PF1LOCAL: TFloatField
      FieldName = 'PF1LOCAL'
      Origin = 'SG_ASSOC.CADPF1.PF1LOCAL'
    end
    object Tb_PF1PF1SUBMOD: TStringField
      FieldName = 'PF1SUBMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBMOD'
      Size = 3
    end
    object Tb_PF1PF1DATCONF: TDateTimeField
      FieldName = 'PF1DATCONF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATCONF'
    end
    object Tb_PF1PF1TOTOUT_ALIQ: TFloatField
      FieldName = 'PF1TOTOUT_ALIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_ALIQ'
    end
    object Tb_PF1PF1TOTOUT_IMP: TFloatField
      FieldName = 'PF1TOTOUT_IMP'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_IMP'
    end
    object Tb_PF1PF1LOTE_ENTRADA: TStringField
      FieldName = 'PF1LOTE_ENTRADA'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTE_ENTRADA'
    end
    object Tb_PF1PF1REGENT: TStringField
      FieldName = 'PF1REGENT'
      Origin = 'SG_ASSOC.CADPF1.PF1REGENT'
    end
    object Tb_PF1PF1_NFE_CHAVE: TStringField
      FieldName = 'PF1_NFE_CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1_NFE_CHAVE'
      Size = 44
    end
    object Tb_PF1PF1ID_NEW: TFloatField
      FieldName = 'PF1ID_NEW'
    end
    object Tb_PF1razfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'razfor'
      Size = 100
      Calculated = True
    end
  end
  object Src_PF1: TDataSource
    DataSet = Tb_PF1
    Left = 546
    Top = 487
  end
  object Tb_PF2: TQuery
    CachedUpdates = True
    BeforePost = Tb_PF2BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF2 where'
      'PF2CODEMP   is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PF2
    Left = 597
    Top = 55
    object Tb_PF2PF2CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Tb_PF2PF2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Tb_PF2PF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Tb_PF2PF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Tb_PF2PF2QTDP: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Tb_PF2PF2PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Tb_PF2PF2DESC01: TFloatField
      DisplayLabel = 'Desconto 01'
      FieldName = 'PF2DESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Tb_PF2PF2DESC02: TFloatField
      DisplayLabel = 'Desconto 02'
      FieldName = 'PF2DESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Tb_PF2PF2DESC03: TFloatField
      DisplayLabel = 'Desconto 03'
      FieldName = 'PF2DESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Tb_PF2PF2SIT: TStringField
      DisplayLabel = 'Sit.Tribut'#225'ria'
      DisplayWidth = 4
      FieldName = 'PF2SIT'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 4
    end
    object Tb_PF2PF2ALIQ: TFloatField
      DisplayLabel = 'Aliquota'
      FieldName = 'PF2ALIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Tb_PF2PF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Tb_PF2PF2ICMSN: TFloatField
      FieldName = 'PF2ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Tb_PF2PF2BASER: TFloatField
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Tb_PF2PF2ICMSR: TFloatField
      FieldName = 'PF2ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Tb_PF2PF2TAB: TStringField
      FieldName = 'PF2TAB'
      Origin = 'SG_ASSOC.CADPF2.PF2TAB'
      Size = 1
    end
    object Tb_PF2PF2BASENR: TFloatField
      FieldName = 'PF2BASENR'
      Origin = 'SG_ASSOC.CADPF2.PF2BASENR'
    end
    object Tb_PF2PF2ICMSNR: TFloatField
      FieldName = 'PF2ICMSNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSNR'
    end
    object Tb_PF2PF2ISENTAS: TFloatField
      FieldName = 'PF2ISENTAS'
      Origin = 'SG_ASSOC.CADPF2.PF2ISENTAS'
    end
    object Tb_PF2PF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQNR'
    end
    object Tb_PF2PF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Tb_PF2PF2IPI: TFloatField
      FieldName = 'PF2IPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Tb_PF2PF2CFO: TFloatField
      FieldName = 'PF2CFO'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Tb_PF2PF2LOTE: TStringField
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Tb_PF2PF2DATAV: TDateTimeField
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Tb_PF2PF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Tb_PF2PF2PCOTAB: TFloatField
      FieldName = 'PF2PCOTAB'
      Origin = 'SG_ASSOC.CADPF2.PF2PCOTAB'
    end
    object Tb_PF2PF2STATUS: TFloatField
      FieldName = 'PF2STATUS'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS'
    end
    object Tb_PF2PF2LISTA: TFloatField
      FieldName = 'PF2LISTA'
      Origin = 'SG_ASSOC.CADPF2.PF2LISTA'
    end
    object Tb_PF2PF2DESCRAT: TFloatField
      FieldName = 'PF2DESCRAT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRAT'
    end
    object Tb_PF2PF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Tb_PF2PF2PMC: TFloatField
      FieldName = 'PF2PMC'
      Origin = 'SG_ASSOC.CADPF2.PF2PMC'
    end
    object Tb_PF2PF2VALDES: TFloatField
      FieldName = 'PF2VALDES'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDES'
    end
    object Tb_PF2PF2OUTRAS: TFloatField
      FieldName = 'PF2OUTRAS'
      Origin = 'SG_ASSOC.CADPF2.PF2OUTRAS'
    end
    object Tb_PF2PF2ORIGEM: TFloatField
      FieldName = 'PF2ORIGEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ORIGEM'
    end
    object Tb_PF2PF2STATUS_PF1: TFloatField
      FieldName = 'PF2STATUS_PF1'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS_PF1'
    end
    object Tb_PF2PF2PUOUT: TFloatField
      FieldName = 'PF2PUOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2PUOUT'
    end
    object Tb_PF2PF2PBT: TFloatField
      FieldName = 'PF2PBT'
      Origin = 'SG_ASSOC.CADPF2.PF2PBT'
    end
    object Tb_PF2PF2FRERAT: TFloatField
      FieldName = 'PF2FRERAT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERAT'
    end
    object Tb_PF2PF2QTDREC: TFloatField
      FieldName = 'PF2QTDREC'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDREC'
    end
    object Tb_PF2PF2VALDESOUT: TFloatField
      FieldName = 'PF2VALDESOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDESOUT'
    end
    object Tb_PF2PF2FRERATOUT: TFloatField
      FieldName = 'PF2FRERATOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERATOUT'
    end
    object Tb_PF2PF2SIV_OUTROS: TFloatField
      FieldName = 'PF2SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF2.PF2SIV_OUTROS'
    end
    object Tb_PF2PF2PREDICMNOR: TFloatField
      FieldName = 'PF2PREDICMNOR'
      Origin = 'SG_ASSOC.CADPF2.PF2PREDICMNOR'
    end
    object Tb_PF2PF2CFOP_COMP: TStringField
      FieldName = 'PF2CFOP_COMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CFOP_COMP'
      Size = 10
    end
    object Tb_PF2PF2LOTE_RE: TStringField
      FieldName = 'PF2LOTE_RE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE_RE'
    end
    object Tb_PF2PF2DTENTRADA: TDateTimeField
      FieldName = 'PF2DTENTRADA'
      Origin = 'SG_ASSOC.CADPF2.PF2DTENTRADA'
    end
    object Tb_PF2PF2OBS: TStringField
      FieldName = 'PF2OBS'
      Origin = 'SG_ASSOC.CADPF2.PF2OBS'
      Size = 200
    end
    object Tb_PF2PF2CBENEF: TStringField
      FieldName = 'PF2CBENEF'
      Size = 10
    end
  end
  object Src_PF2: TDataSource
    DataSet = Tb_PF2
    Left = 650
    Top = 55
  end
  object Tb_CPFor: TQuery
    CachedUpdates = True
    BeforePost = Tb_CPForBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CODPFOR where'
      'PFCODEMP   like :EMPRESA  and'
      'PFCODFOR   like :CODFOR     and'
      'PFCODPRO   like :CODPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CPFor
    Left = 154
    Top = 223
    ParamData = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODFOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CPForPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
      Origin = 'SG_ASSOC.CODPFOR.PFCODEMP'
    end
    object Tb_CPForPFCODPRO: TFloatField
      FieldName = 'PFCODPRO'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPRO'
    end
    object Tb_CPForPFCODFOR: TFloatField
      FieldName = 'PFCODFOR'
      Origin = 'SG_ASSOC.CODPFOR.PFCODFOR'
    end
    object Tb_CPForPFCODPFOR: TFloatField
      FieldName = 'PFCODPFOR'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPFOR'
    end
    object Tb_CPForPFSALDO: TFloatField
      FieldName = 'PFSALDO'
      Origin = 'SG_ASSOC.CODPFOR.PFSALDO'
    end
  end
  object Src_CPfor: TDataSource
    DataSet = Tb_CPFor
    Left = 210
    Top = 223
  end
  object Tb_CI: TQuery
    CachedUpdates = True
    BeforePost = Tb_CIBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIMP where'
      'IMPRESSORA  like :IMPRESSORA')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CI
    Left = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'IMPRESSORA'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CIIMPRESSORA: TStringField
      FieldName = 'IMPRESSORA'
      Origin = 'SG_ASSOC.CADIMP.IMPRESSORA'
    end
    object Tb_CIC10CPPD: TStringField
      FieldName = 'C10CPPD'
      Origin = 'SG_ASSOC.CADIMP.C10CPPD'
      Size = 30
    end
    object Tb_CIC12CPPD: TStringField
      FieldName = 'C12CPPD'
      Origin = 'SG_ASSOC.CADIMP.C12CPPD'
      Size = 30
    end
    object Tb_CIC17CPPD: TStringField
      FieldName = 'C17CPPD'
      Origin = 'SG_ASSOC.CADIMP.C17CPPD'
      Size = 30
    end
    object Tb_CIC20CPPD: TStringField
      FieldName = 'C20CPPD'
      Origin = 'SG_ASSOC.CADIMP.C20CPPD'
      Size = 30
    end
    object Tb_CIC10CPP: TStringField
      FieldName = 'C10CPP'
      Origin = 'SG_ASSOC.CADIMP.C10CPP'
      Size = 30
    end
    object Tb_CIC12CPP: TStringField
      FieldName = 'C12CPP'
      Origin = 'SG_ASSOC.CADIMP.C12CPP'
      Size = 30
    end
    object Tb_CIC14CPP: TStringField
      FieldName = 'C14CPP'
      Origin = 'SG_ASSOC.CADIMP.C14CPP'
      Size = 30
    end
    object Tb_CIC17CPP: TStringField
      FieldName = 'C17CPP'
      Origin = 'SG_ASSOC.CADIMP.C17CPP'
      Size = 30
    end
    object Tb_CIC20CPP: TStringField
      FieldName = 'C20CPP'
      Origin = 'SG_ASSOC.CADIMP.C20CPP'
      Size = 30
    end
    object Tb_CICNORMAL: TStringField
      FieldName = 'CNORMAL'
      Origin = 'SG_ASSOC.CADIMP.CNORMAL'
      Size = 30
    end
    object Tb_CIL8P1: TStringField
      FieldName = 'L8P1'
      Origin = 'SG_ASSOC.CADIMP.L8P1'
      Size = 30
    end
    object Tb_CIL10P1: TStringField
      FieldName = 'L10P1'
      Origin = 'SG_ASSOC.CADIMP.L10P1'
      Size = 30
    end
    object Tb_CIL6P1: TStringField
      FieldName = 'L6P1'
      Origin = 'SG_ASSOC.CADIMP.L6P1'
      Size = 30
    end
    object Tb_CIL3P1: TStringField
      FieldName = 'L3P1'
      Origin = 'SG_ASSOC.CADIMP.L3P1'
      Size = 30
    end
    object Tb_CIPEJECT: TStringField
      FieldName = 'PEJECT'
      Origin = 'SG_ASSOC.CADIMP.PEJECT'
      Size = 30
    end
  end
  object Src_CI: TDataSource
    DataSet = Tb_CI
    Left = 216
    Top = 40
  end
  object Tb_Chq: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ChqBeforeInsert
    AfterInsert = Tb_ChqAfterInsert
    BeforePost = Tb_ChqBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_ChqCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * from CADCHQ where'
      'CHCODEMP   like :CODEMP   and'
      'CHNUMERO   like :NUMERO   and'
      'CHBANCO    like :BANCO    and'
      '(CHSERIE    like :SERIE   or CHSERIE   is null) and'
      '(CHAGENCIA  like :AGENCIA or CHAGENCIA is null) and'
      '(CHCC       like :CC      or CHCC      is null) and'
      '(CHDTDEP    like :DTDEP   or CHDTDEP   is null) and'
      '(CHDTEMIS   like :DTEMIS  or CHDTEMIS  is null) and'
      '(CHEMIT     like :EMIT    or CHEMIT    is null) and'
      '(CHVALOR    like :VALOR   or CHVALOR   is null) and'
      'CHLOTSEQ   like :LOTSEQ  and'
      'CHSEQ      like :SEQ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Chq
    Left = 64
    Top = 485
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'AGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EMIT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'VALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_ChqCHCODEMP: TFloatField
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCODEMP'
    end
    object Tb_ChqCHSEQ: TFloatField
      FieldName = 'CHSEQ'
      Origin = 'SG_ASSOC.CADCHQ.CHSEQ'
    end
    object Tb_ChqCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Tb_ChqCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Tb_ChqCHSERIE: TStringField
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHQ.CHSERIE'
    end
    object Tb_ChqCHEMIT: TStringField
      FieldName = 'CHEMIT'
      Origin = 'SG_ASSOC.CADCHQ.CHEMIT'
      Size = 40
    end
    object Tb_ChqCHCPF: TFloatField
      FieldName = 'CHCPF'
      Origin = 'SG_ASSOC.CADCHQ.CHCPF'
    end
    object Tb_ChqCHRG: TStringField
      FieldName = 'CHRG'
      Origin = 'SG_ASSOC.CADCHQ.CHRG'
      Size = 40
    end
    object Tb_ChqCHCC: TStringField
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.CADCHQ.CHCC'
    end
    object Tb_ChqCHDTNAS: TDateTimeField
      FieldName = 'CHDTNAS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTNAS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ChqCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
      DisplayFormat = '0.00'
      EditFormat = '#0,00'
    end
    object Tb_ChqCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ChqCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ChqCHAGENCIA: TStringField
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.CADCHQ.CHAGENCIA'
      Size = 10
    end
    object Tb_ChqCHLOTE: TFloatField
      FieldName = 'CHLOTE'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTE'
    end
    object Tb_ChqCHTIPO: TFloatField
      FieldName = 'CHTIPO'
      Origin = 'SG_ASSOC.CADCHQ.CHTIPO'
    end
    object Tb_ChqCHSTATUS: TFloatField
      FieldName = 'CHSTATUS'
      Origin = 'SG_ASSOC.CADCHQ.CHSTATUS'
    end
    object Tb_ChqCHDTBX: TDateTimeField
      FieldName = 'CHDTBX'
      Origin = 'SG_ASSOC.CADCHQ.CHDTBX'
    end
    object Tb_ChqCHUSRBX: TFloatField
      FieldName = 'CHUSRBX'
      Origin = 'SG_ASSOC.CADCHQ.CHUSRBX'
    end
    object Tb_ChqCHCAIXA: TFloatField
      FieldName = 'CHCAIXA'
      Origin = 'SG_ASSOC.CADCHQ.CHCAIXA'
    end
    object Tb_ChqCHCODCLI: TFloatField
      FieldName = 'CHCODCLI'
      Origin = 'SG_ASSOC.CADCHQ.CHCODCLI'
    end
    object Tb_ChqCHCOMP: TStringField
      FieldName = 'CHCOMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCOMP'
      Size = 4
    end
    object Tb_Chqnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_ChqCHLOTEBX: TFloatField
      FieldName = 'CHLOTEBX'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTEBX'
    end
    object Tb_ChqCHCODUSR: TFloatField
      FieldName = 'CHCODUSR'
      Origin = 'SG_ASSOC.CADCHQ.CHCODUSR'
    end
    object Tb_ChqCHDTALT: TDateTimeField
      FieldName = 'CHDTALT'
      Origin = 'SG_ASSOC.CADCHQ.CHDTALT'
    end
    object Tb_ChqCHHRALT: TStringField
      FieldName = 'CHHRALT'
      Origin = 'SG_ASSOC.CADCHQ.CHHRALT'
      Size = 10
    end
    object Tb_ChqCHLOTSEQ: TFloatField
      FieldName = 'CHLOTSEQ'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTSEQ'
    end
    object Tb_ChqCHCODLDR: TFloatField
      FieldName = 'CHCODLDR'
      Origin = 'SG_ASSOC.CADCHQ.CHCODLDR'
    end
    object Tb_ChqCHLEMAT: TFloatField
      FieldName = 'CHLEMAT'
      Origin = 'SG_ASSOC.CADCHQ.CHLEMAT'
    end
    object Tb_ChqCHFONE01: TStringField
      FieldName = 'CHFONE01'
      Origin = 'SG_ASSOC.CADCHQ.CHFONE01'
      Size = 16
    end
    object Tb_ChqCHFONE02: TStringField
      FieldName = 'CHFONE02'
      Origin = 'SG_ASSOC.CADCHQ.CHFONE02'
      Size = 16
    end
    object Tb_ChqCHLOTSEQ_FC: TFloatField
      FieldName = 'CHLOTSEQ_FC'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTSEQ_FC'
    end
    object Tb_ChqCHCODCTA: TFloatField
      FieldName = 'CHCODCTA'
      Origin = 'SG_ASSOC.CADCHQ.CHCODCTA'
    end
    object Tb_ChqCHCODCC: TStringField
      FieldName = 'CHCODCC'
      Origin = 'SG_ASSOC.CADCHQ.CHCODCC'
      Size = 5
    end
    object Tb_ChqCHCODDEP: TStringField
      FieldName = 'CHCODDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHCODDEP'
      Size = 5
    end
    object Tb_ChqCHDESCMV: TStringField
      FieldName = 'CHDESCMV'
      Origin = 'SG_ASSOC.CADCHQ.CHDESCMV'
      Size = 40
    end
    object Tb_ChqCHDEPOSITO: TFloatField
      FieldName = 'CHDEPOSITO'
      Origin = 'SG_ASSOC.CADCHQ.CHDEPOSITO'
    end
    object Tb_ChqCHPROR_QTDP: TFloatField
      FieldName = 'CHPROR_QTDP'
      Origin = 'SG_ASSOC.CADCHQ.CHPROR_QTDP'
    end
    object Tb_ChqCHPRO_ULTDAT: TDateTimeField
      FieldName = 'CHPRO_ULTDAT'
      Origin = 'SG_ASSOC.CADCHQ.CHPRO_ULTDAT'
    end
    object Tb_ChqCHOBSL01: TStringField
      FieldName = 'CHOBSL01'
      Origin = 'SG_ASSOC.CADCHQ.CHOBSL01'
      Size = 60
    end
    object Tb_ChqCHOBSL02: TStringField
      FieldName = 'CHOBSL02'
      Origin = 'SG_ASSOC.CADCHQ.CHOBSL02'
      Size = 60
    end
    object Tb_ChqCHCODFPGTO: TFloatField
      FieldName = 'CHCODFPGTO'
      Origin = 'SG_ASSOC.CADCHQ.CHCODFPGTO'
    end
    object Tb_Chqpro_ultdat: TDateField
      FieldKind = fkCalculated
      FieldName = 'pro_ultdat'
      Calculated = True
    end
    object Tb_Chqdtbx: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Calculated = True
    end
    object Tb_ChqCHNOMCTA: TStringField
      FieldName = 'CHNOMCTA'
      Origin = 'SG_ASSOC.CADCHQ.CHNOMCTA'
      Size = 40
    end
    object Tb_ChqCHNOMCC: TStringField
      FieldName = 'CHNOMCC'
      Origin = 'SG_ASSOC.CADCHQ.CHNOMCC'
      Size = 40
    end
    object Tb_ChqCHNATDC: TStringField
      FieldName = 'CHNATDC'
      Origin = 'SG_ASSOC.CADCHQ.CHNATDC'
      Size = 1
    end
    object Tb_ChqCHNOMDEP: TStringField
      FieldName = 'CHNOMDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHNOMDEP'
      Size = 40
    end
    object Tb_ChqCHLOTSEQ_BT: TFloatField
      FieldName = 'CHLOTSEQ_BT'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTSEQ_BT'
    end
    object Tb_ChqCHLOTE_BT: TFloatField
      FieldName = 'CHLOTE_BT'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTE_BT'
    end
    object Tb_ChqCHLOTSEQ_FC_DEB: TFloatField
      FieldName = 'CHLOTSEQ_FC_DEB'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTSEQ_FC_DEB'
    end
    object Tb_ChqCHCODLDR_DEB: TFloatField
      FieldName = 'CHCODLDR_DEB'
      Origin = 'SG_ASSOC.CADCHQ.CHCODLDR_DEB'
    end
    object Tb_ChqCHCODLDR_CRED: TFloatField
      FieldName = 'CHCODLDR_CRED'
      Origin = 'SG_ASSOC.CADCHQ.CHCODLDR_CRED'
    end
    object Tb_ChqCHCODBCO_CRED: TFloatField
      FieldName = 'CHCODBCO_CRED'
      Origin = 'SG_ASSOC.CADCHQ.CHCODBCO_CRED'
    end
    object Tb_ChqCHCODBCO_DEB: TFloatField
      FieldName = 'CHCODBCO_DEB'
      Origin = 'SG_ASSOC.CADCHQ.CHCODBCO_DEB'
    end
    object Tb_ChqCHDATHOR_INC: TDateTimeField
      FieldName = 'CHDATHOR_INC'
      Origin = 'SG_ASSOC.CADCHQ.CHDATHOR_INC'
    end
    object Tb_ChqCHCODUSR_INC: TFloatField
      FieldName = 'CHCODUSR_INC'
      Origin = 'SG_ASSOC.CADCHQ.CHCODUSR_INC'
    end
    object Tb_ChqCHDATHOR_ALT: TDateTimeField
      FieldName = 'CHDATHOR_ALT'
      Origin = 'SG_ASSOC.CADCHQ.CHDATHOR_ALT'
    end
    object Tb_ChqCHCODUSR_ALT: TFloatField
      FieldName = 'CHCODUSR_ALT'
      Origin = 'SG_ASSOC.CADCHQ.CHCODUSR_ALT'
    end
    object Tb_ChqCHID_NEW: TFloatField
      FieldName = 'CHID_NEW'
    end
  end
  object Src_Chq: TDataSource
    DataSet = Tb_Chq
    Left = 120
    Top = 485
  end
  object Tb_PV: TQuery
    CachedUpdates = True
    AfterInsert = Tb_PVAfterInsert
    BeforePost = Tb_PVBeforePost
    AfterPost = c
    BeforeDelete = Tb_PVBeforeDelete
    AfterDelete = c
    OnCalcFields = Tb_PVCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPV where'
      'PVCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PV
    Left = 595
    Top = 276
    object Tb_PVPVCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'PVCODEMP'
      Origin = 'SG_ASSOC.CADPV.PVCODEMP'
    end
    object Tb_PVPVCODPV: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PVCODPV'
      Origin = 'SG_ASSOC.CADPV.PVCODPV'
    end
    object Tb_PVPVNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PVNOME'
      Origin = 'SG_ASSOC.CADPV.PVNOME'
    end
    object Tb_PVPVCODUSR: TFloatField
      DisplayLabel = 'C'#243'digo Usu'#225'rio'
      FieldName = 'PVCODUSR'
      Origin = 'SG_ASSOC.CADPV.PVCODUSR'
    end
    object Tb_PVPVDTALT: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'PVDTALT'
      Origin = 'SG_ASSOC.CADPV.PVDTALT'
    end
    object Tb_PVPVHRALT: TStringField
      DisplayLabel = 'Horas Atera'#231#227'o'
      FieldName = 'PVHRALT'
      Origin = 'SG_ASSOC.CADPV.PVHRALT'
      Size = 10
    end
    object Tb_PVPVSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'PVSTATUS'
      Origin = 'SG_ASSOC.CADPV.PVSTATUS'
    end
    object Tb_PVPVCODTIP: TStringField
      DisplayLabel = 'Tipo do Plano'
      FieldName = 'PVCODTIP'
      Origin = 'SG_ASSOC.CADPV.PVCODTIP'
      Size = 2
    end
    object Tb_PVPVTPC: TFloatField
      DisplayLabel = 'Tipo de comiss'#227'o'
      FieldName = 'PVTPC'
      Origin = 'SG_ASSOC.CADPV.PVTPC'
    end
    object Tb_PVPVCOM: TFloatField
      DisplayLabel = '%Comissao'
      FieldName = 'PVCOM'
      Origin = 'SG_ASSOC.CADPV.PVCOM'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDES: TFloatField
      DisplayLabel = '%Desconto'
      FieldName = 'PVDES'
      Origin = 'SG_ASSOC.CADPV.PVDES'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVTPDC: TFloatField
      DisplayLabel = 'Tipo do Desconto Geral'
      FieldName = 'PVTPDC'
      Origin = 'SG_ASSOC.CADPV.PVTPDC'
    end
    object Tb_PVPVTPD1: TFloatField
      DisplayLabel = 'Tipo do Desconto 1'
      FieldName = 'PVTPD1'
      Origin = 'SG_ASSOC.CADPV.PVTPD1'
    end
    object Tb_PVPVDES1: TFloatField
      DisplayLabel = '% Desconto 1'
      FieldName = 'PVDES1'
      Origin = 'SG_ASSOC.CADPV.PVDES1'
      currency = True
    end
    object Tb_PVPVTPD2: TFloatField
      DisplayLabel = 'Tipo de Desconto 2'
      FieldName = 'PVTPD2'
      Origin = 'SG_ASSOC.CADPV.PVTPD2'
    end
    object Tb_PVPVDES2: TFloatField
      DisplayLabel = '% Desconto 2'
      FieldName = 'PVDES2'
      Origin = 'SG_ASSOC.CADPV.PVDES2'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVTPD3: TFloatField
      DisplayLabel = 'Tipo de Desconto 3'
      FieldName = 'PVTPD3'
      Origin = 'SG_ASSOC.CADPV.PVTPD3'
    end
    object Tb_PVPVDES3: TFloatField
      DisplayLabel = '% de desconto 3'
      FieldName = 'PVDES3'
      Origin = 'SG_ASSOC.CADPV.PVDES3'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF01A: TFloatField
      DisplayLabel = 'Intervalo de desconto 1'
      FieldName = 'PVDF01A'
      Origin = 'SG_ASSOC.CADPV.PVDF01A'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF01B: TFloatField
      DisplayLabel = 'Intervalo de desconto 1'
      FieldName = 'PVDF01B'
      Origin = 'SG_ASSOC.CADPV.PVDF01B'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF01: TFloatField
      DisplayLabel = '%Desconto financeiro 1 por intervalo'
      FieldName = 'PVDF01'
      Origin = 'SG_ASSOC.CADPV.PVDF01'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF02A: TFloatField
      DisplayLabel = 'Intervalo de desconto 1'
      FieldName = 'PVDF02A'
      Origin = 'SG_ASSOC.CADPV.PVDF02A'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF02B: TFloatField
      DisplayLabel = 'Intervalo de desconto 1'
      FieldName = 'PVDF02B'
      Origin = 'SG_ASSOC.CADPV.PVDF02B'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF02: TFloatField
      DisplayLabel = '%Desconto financeiro por intervalo 2'
      FieldName = 'PVDF02'
      Origin = 'SG_ASSOC.CADPV.PVDF02'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF03B: TFloatField
      DisplayLabel = 'Intervalo de desconto de produto 1 3'
      FieldName = 'PVDF03B'
      Origin = 'SG_ASSOC.CADPV.PVDF03B'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF03A: TFloatField
      DisplayLabel = 'Intervalo de desconto 1 3'
      FieldName = 'PVDF03A'
      Origin = 'SG_ASSOC.CADPV.PVDF03A'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF03: TFloatField
      DisplayLabel = '%Desconto Financeiro intervalo 3'
      FieldName = 'PVDF03'
      Origin = 'SG_ASSOC.CADPV.PVDF03'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF04A: TFloatField
      DisplayLabel = 'Invervalo de desconto produto 1 4'
      FieldName = 'PVDF04A'
      Origin = 'SG_ASSOC.CADPV.PVDF04A'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF04B: TFloatField
      DisplayLabel = 'Intervalo desconto produto 1 4'
      FieldName = 'PVDF04B'
      Origin = 'SG_ASSOC.CADPV.PVDF04B'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDF04: TFloatField
      DisplayLabel = 'desconto financeiro por intervalo 4'
      FieldName = 'PVDF04'
      Origin = 'SG_ASSOC.CADPV.PVDF04'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S0: TFloatField
      DisplayLabel = 'Desconto 2 do status 0'
      FieldName = 'PVD2S0'
      Origin = 'SG_ASSOC.CADPV.PVD2S0'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S1: TFloatField
      DisplayLabel = 'Desconto 2 do status 1'
      FieldName = 'PVD2S1'
      Origin = 'SG_ASSOC.CADPV.PVD2S1'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S2: TFloatField
      DisplayLabel = 'Desconto 2 to status 2'
      FieldName = 'PVD2S2'
      Origin = 'SG_ASSOC.CADPV.PVD2S2'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S3: TFloatField
      DisplayLabel = 'desconto 2 do status 3'
      FieldName = 'PVD2S3'
      Origin = 'SG_ASSOC.CADPV.PVD2S3'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S4: TFloatField
      DisplayLabel = 'desconto 2 do status 4'
      FieldName = 'PVD2S4'
      Origin = 'SG_ASSOC.CADPV.PVD2S4'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S5: TFloatField
      DisplayLabel = 'desconto 2 do status 5'
      FieldName = 'PVD2S5'
      Origin = 'SG_ASSOC.CADPV.PVD2S5'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S6: TFloatField
      DisplayLabel = 'Desconto 2 do status 6'
      FieldName = 'PVD2S6'
      Origin = 'SG_ASSOC.CADPV.PVD2S6'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD2S7: TFloatField
      DisplayLabel = 'Desconto 2 do status 7'
      FieldName = 'PVD2S7'
      Origin = 'SG_ASSOC.CADPV.PVD2S7'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S0: TFloatField
      DisplayLabel = 'Desconto 3 do status 0'
      FieldName = 'PVD3S0'
      Origin = 'SG_ASSOC.CADPV.PVD3S0'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S1: TFloatField
      DisplayLabel = 'desconto 3 do status 1'
      FieldName = 'PVD3S1'
      Origin = 'SG_ASSOC.CADPV.PVD3S1'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S2: TFloatField
      DisplayLabel = 'desconto 3 do status 2'
      FieldName = 'PVD3S2'
      Origin = 'SG_ASSOC.CADPV.PVD3S2'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S3: TFloatField
      DisplayLabel = 'desconto 3 do status 3'
      FieldName = 'PVD3S3'
      Origin = 'SG_ASSOC.CADPV.PVD3S3'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S4: TFloatField
      DisplayLabel = 'desconto3 do status 4'
      FieldName = 'PVD3S4'
      Origin = 'SG_ASSOC.CADPV.PVD3S4'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S5: TFloatField
      DisplayLabel = 'desconto 3 do status 5'
      FieldName = 'PVD3S5'
      Origin = 'SG_ASSOC.CADPV.PVD3S5'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S6: TFloatField
      DisplayLabel = 'desconto 3 do status 6'
      FieldName = 'PVD3S6'
      Origin = 'SG_ASSOC.CADPV.PVD3S6'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVD3S7: TFloatField
      DisplayLabel = 'desconto 3 do status 7'
      FieldName = 'PVD3S7'
      Origin = 'SG_ASSOC.CADPV.PVD3S7'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS0: TFloatField
      DisplayLabel = 'comissao do status 0'
      FieldName = 'PVCMS0'
      Origin = 'SG_ASSOC.CADPV.PVCMS0'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS1: TFloatField
      DisplayLabel = 'comissao do status 1'
      FieldName = 'PVCMS1'
      Origin = 'SG_ASSOC.CADPV.PVCMS1'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS2: TFloatField
      DisplayLabel = 'comiss'#227'o do status 2'
      FieldName = 'PVCMS2'
      Origin = 'SG_ASSOC.CADPV.PVCMS2'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS3: TFloatField
      DisplayLabel = 'comiss'#227'o do status 3'
      FieldName = 'PVCMS3'
      Origin = 'SG_ASSOC.CADPV.PVCMS3'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS4: TFloatField
      DisplayLabel = 'comiss'#227'o do status 4'
      FieldName = 'PVCMS4'
      Origin = 'SG_ASSOC.CADPV.PVCMS4'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS5: TFloatField
      DisplayLabel = 'comiss'#227'o do status 5'
      FieldName = 'PVCMS5'
      Origin = 'SG_ASSOC.CADPV.PVCMS5'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS6: TFloatField
      DisplayLabel = 'comiss'#227'o do status 6'
      FieldName = 'PVCMS6'
      Origin = 'SG_ASSOC.CADPV.PVCMS6'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCMS7: TFloatField
      DisplayLabel = 'comiss'#227'o do status 7'
      FieldName = 'PVCMS7'
      Origin = 'SG_ASSOC.CADPV.PVCMS7'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVDESCF: TFloatField
      DisplayLabel = 'Desconto financeiro'
      FieldName = 'PVDESCF'
      Origin = 'SG_ASSOC.CADPV.PVDESCF'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVFINPRM: TFloatField
      DisplayLabel = 'desconto financeiro incidir em promo'#231'oes'
      FieldName = 'PVFINPRM'
      Origin = 'SG_ASSOC.CADPV.PVFINPRM'
    end
    object Tb_PVPVDIASDESCF: TFloatField
      DisplayLabel = 'Ate quantos dias permitir desconto financeiro'
      FieldName = 'PVDIASDESCF'
      Origin = 'SG_ASSOC.CADPV.PVDIASDESCF'
    end
    object Tb_PVPVACTD: TFloatField
      DisplayLabel = 'acr'#233'scimo em todos os produtos'
      FieldName = 'PVACTD'
      Origin = 'SG_ASSOC.CADPV.PVACTD'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVACT00: TFloatField
      DisplayLabel = 'acr'#233'scimos em produtos do tipo de codigo 0'
      FieldName = 'PVACT00'
      Origin = 'SG_ASSOC.CADPV.PVACT00'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVACT01: TFloatField
      DisplayLabel = 'acr'#233'scimos em produtos do tipo 1 '
      FieldName = 'PVACT01'
      Origin = 'SG_ASSOC.CADPV.PVACT01'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVACT99: TFloatField
      DisplayLabel = 'Acr'#233'scimo em produtos do tipo diferente 0 e 1'
      FieldName = 'PVACT99'
      Origin = 'SG_ASSOC.CADPV.PVACT99'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVTPDESF: TFloatField
      DisplayLabel = 'Tipo de Desconto Financeiro'
      FieldName = 'PVTPDESF'
      Origin = 'SG_ASSOC.CADPV.PVTPDESF'
    end
    object Tb_PVPVPPORI: TFloatField
      FieldName = 'PVPPORI'
      Origin = 'SG_ASSOC.CADPV.PVPPORI'
    end
    object Tb_PVPVTPP: TFloatField
      FieldName = 'PVTPP'
      Origin = 'SG_ASSOC.CADPV.PVTPP'
    end
    object Tb_PVPVCOM02: TFloatField
      DisplayLabel = '% comissao do Vendedor 02'
      FieldName = 'PVCOM02'
      Origin = 'SG_ASSOC.CADPV.PVCOM02'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVPVCOM03: TFloatField
      DisplayLabel = '% Percentual de comiss'#227'o 03'
      FieldName = 'PVCOM03'
      Origin = 'SG_ASSOC.CADPV.PVCOM03'
      DisplayFormat = '#,##0.00'
    end
    object Tb_PVprazos: TStringField
      DisplayLabel = 'Prazos'
      FieldKind = fkCalculated
      FieldName = 'prazos'
      Size = 200
      Calculated = True
    end
    object Tb_PVPVBLQPRM: TFloatField
      FieldName = 'PVBLQPRM'
      Origin = 'SG_ASSOC.CADPV.PVBLQPRM'
    end
    object Tb_PVPVD1S0: TFloatField
      FieldName = 'PVD1S0'
      Origin = 'SG_ASSOC.CADPV.PVD1S0'
    end
    object Tb_PVPVD1S1: TFloatField
      FieldName = 'PVD1S1'
      Origin = 'SG_ASSOC.CADPV.PVD1S1'
    end
    object Tb_PVPVD1S2: TFloatField
      FieldName = 'PVD1S2'
      Origin = 'SG_ASSOC.CADPV.PVD1S2'
    end
    object Tb_PVPVD1S3: TFloatField
      FieldName = 'PVD1S3'
      Origin = 'SG_ASSOC.CADPV.PVD1S3'
    end
    object Tb_PVPVD1S4: TFloatField
      FieldName = 'PVD1S4'
      Origin = 'SG_ASSOC.CADPV.PVD1S4'
    end
    object Tb_PVPVD1S5: TFloatField
      FieldName = 'PVD1S5'
      Origin = 'SG_ASSOC.CADPV.PVD1S5'
    end
    object Tb_PVPVD1S6: TFloatField
      FieldName = 'PVD1S6'
      Origin = 'SG_ASSOC.CADPV.PVD1S6'
    end
    object Tb_PVPVD1S7: TFloatField
      FieldName = 'PVD1S7'
      Origin = 'SG_ASSOC.CADPV.PVD1S7'
    end
    object Tb_PVPVDFS0: TFloatField
      FieldName = 'PVDFS0'
      Origin = 'SG_ASSOC.CADPV.PVDFS0'
    end
    object Tb_PVPVDFS1: TFloatField
      FieldName = 'PVDFS1'
      Origin = 'SG_ASSOC.CADPV.PVDFS1'
    end
    object Tb_PVPVDFS2: TFloatField
      FieldName = 'PVDFS2'
      Origin = 'SG_ASSOC.CADPV.PVDFS2'
    end
    object Tb_PVPVDFS3: TFloatField
      FieldName = 'PVDFS3'
      Origin = 'SG_ASSOC.CADPV.PVDFS3'
    end
    object Tb_PVPVDFS4: TFloatField
      FieldName = 'PVDFS4'
      Origin = 'SG_ASSOC.CADPV.PVDFS4'
    end
    object Tb_PVPVDFS5: TFloatField
      FieldName = 'PVDFS5'
      Origin = 'SG_ASSOC.CADPV.PVDFS5'
    end
    object Tb_PVPVDFS6: TFloatField
      FieldName = 'PVDFS6'
      Origin = 'SG_ASSOC.CADPV.PVDFS6'
    end
    object Tb_PVPVDFS7: TFloatField
      FieldName = 'PVDFS7'
      Origin = 'SG_ASSOC.CADPV.PVDFS7'
    end
    object Tb_PVPVDDESCF: TFloatField
      FieldName = 'PVDDESCF'
      Origin = 'SG_ASSOC.CADPV.PVDDESCF'
    end
    object Tb_PVPVPRAZOS: TStringField
      FieldName = 'PVPRAZOS'
      Origin = 'SG_ASSOC.CADPV.PVPRAZOS'
      Size = 60
    end
    object Tb_PVPVVINCULO: TFloatField
      FieldName = 'PVVINCULO'
      Origin = 'SG_ASSOC.CADPV.PVVINCULO'
    end
    object Tb_PVPVPRAZOMED: TFloatField
      FieldName = 'PVPRAZOMED'
      Origin = 'SG_ASSOC.CADPV.PVPRAZOMED'
    end
    object Tb_PVPVCMVD02S0: TFloatField
      FieldName = 'PVCMVD02S0'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S0'
    end
    object Tb_PVPVCMVD02S1: TFloatField
      FieldName = 'PVCMVD02S1'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S1'
    end
    object Tb_PVPVCMVD02S2: TFloatField
      FieldName = 'PVCMVD02S2'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S2'
    end
    object Tb_PVPVCMVD02S3: TFloatField
      FieldName = 'PVCMVD02S3'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S3'
    end
    object Tb_PVPVCMVD02S4: TFloatField
      FieldName = 'PVCMVD02S4'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S4'
    end
    object Tb_PVPVCMVD02S5: TFloatField
      FieldName = 'PVCMVD02S5'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S5'
    end
    object Tb_PVPVCMVD02S6: TFloatField
      FieldName = 'PVCMVD02S6'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S6'
    end
    object Tb_PVPVCMVD02S7: TFloatField
      FieldName = 'PVCMVD02S7'
      Origin = 'SG_ASSOC.CADPV.PVCMVD02S7'
    end
    object Tb_PVPVACREDESREG: TFloatField
      FieldName = 'PVACREDESREG'
      Origin = 'SG_ASSOC.CADPV.PVACREDESREG'
    end
    object Tb_PVPVDTINC: TDateTimeField
      FieldName = 'PVDTINC'
      Origin = 'SG_ASSOC.CADPV.PVDTINC'
    end
    object Tb_PVPVUSRINC: TFloatField
      FieldName = 'PVUSRINC'
      Origin = 'SG_ASSOC.CADPV.PVUSRINC'
    end
    object Tb_PVPVAJCOMIS: TFloatField
      FieldName = 'PVAJCOMIS'
      Origin = 'SG_ASSOC.CADPV.PVAJCOMIS'
    end
    object Tb_PVPVUSRALT: TFloatField
      FieldName = 'PVUSRALT'
      Origin = 'SG_ASSOC.CADPV.PVUSRALT'
    end
    object Tb_PVPVVALORMIN: TFloatField
      DisplayLabel = 'Valor M'#237'nimo'
      FieldName = 'PVVALORMIN'
      Origin = 'SG_ASSOC.CADPV.PVVALORMIN'
    end
    object Tb_PVPVACREDESREG_PROMO: TFloatField
      FieldName = 'PVACREDESREG_PROMO'
      Origin = 'SG_ASSOC.CADPV.PVACREDESREG_PROMO'
    end
    object Tb_PVPVPERCPPARC: TFloatField
      FieldName = 'PVPERCPPARC'
      Origin = 'SG_ASSOC.CADPV.PVPERCPPARC'
    end
    object Tb_PVPVACEITARPCOEXCLUSIVO: TStringField
      FieldName = 'PVACEITARPCOEXCLUSIVO'
      Size = 1
    end
    object Tb_PVPVPERCOPERADORA: TFloatField
      FieldName = 'PVPERCOPERADORA'
      Origin = 'SG_ASSOC.CADPV.PVPERCOPERADORA'
    end
    object Tb_PVPVPERCANTECIPACAO: TFloatField
      FieldName = 'PVPERCANTECIPACAO'
      Origin = 'SG_ASSOC.CADPV.PVPERCANTECIPACAO'
    end
    object Tb_PVPVTITSEP_PROD_SERV: TFloatField
      FieldName = 'PVTITSEP_PROD_SERV'
      Origin = 'SG_ASSOC.CADPV.PVTITSEP_PROD_SERV'
    end
  end
  object Src_PV: TDataSource
    DataSet = Tb_PV
    OnDataChange = Src_PVDataChange
    Left = 651
    Top = 272
  end
  object Src_CP: TDataSource
    DataSet = Tb_CP
    Left = 210
    Top = 177
  end
  object Tb_NE: TQuery
    CachedUpdates = True
    AfterInsert = Tb_NEAfterInsert
    OnCalcFields = Tb_NECalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADNE where'
      'NECODEMP  is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_NE
    Left = 373
    Top = 268
    object Tb_NENECODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'NECODEMP'
      Origin = 'SG_ASSOC.CADNE.NECODEMP'
    end
    object Tb_NENECODFOR: TFloatField
      DisplayLabel = 'C'#243'digo do Fornecedor'
      FieldName = 'NECODFOR'
      Origin = 'SG_ASSOC.CADNE.NECODFOR'
    end
    object Tb_NENENUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NENUMERO'
      Origin = 'SG_ASSOC.CADNE.NENUMERO'
    end
    object Tb_NENESERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NESERIE'
      Origin = 'SG_ASSOC.CADNE.NESERIE'
      Size = 6
    end
    object Tb_NENECFO: TFloatField
      DisplayLabel = 'CFO'
      FieldName = 'NECFO'
      Origin = 'SG_ASSOC.CADNE.NECFO'
    end
    object Tb_NENEDTEMIS: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'NEDTEMIS'
      Origin = 'SG_ASSOC.CADNE.NEDTEMIS'
    end
    object Tb_NENESUBSER: TStringField
      DisplayLabel = 'Sub-S'#233'rie'
      FieldName = 'NESUBSER'
      Origin = 'SG_ASSOC.CADNE.NESUBSER'
      Size = 6
    end
    object Tb_NENEBASEN: TFloatField
      DisplayLabel = 'Base Icms Normal'
      FieldName = 'NEBASEN'
      Origin = 'SG_ASSOC.CADNE.NEBASEN'
    end
    object Tb_NENEICMSN: TFloatField
      DisplayLabel = 'Icms Normal'
      FieldName = 'NEICMSN'
      Origin = 'SG_ASSOC.CADNE.NEICMSN'
    end
    object Tb_NENEBASER: TFloatField
      DisplayLabel = 'Base Icms Retido'
      FieldName = 'NEBASER'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Tb_NENEICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'NEICMSR'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Tb_NENEFRETE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'NEFRETE'
      Origin = 'SG_ASSOC.CADNE.NEFRETE'
    end
    object Tb_NENESEG: TFloatField
      DisplayLabel = 'Seguro'
      FieldName = 'NESEG'
      Origin = 'SG_ASSOC.CADNE.NESEG'
    end
    object Tb_NENEOUTRAS: TFloatField
      DisplayLabel = 'Outras'
      FieldName = 'NEOUTRAS'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS'
    end
    object Tb_NENEIPI: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'NEIPI'
      Origin = 'SG_ASSOC.CADNE.NEIPI'
    end
    object Tb_NENETOTMER: TFloatField
      DisplayLabel = 'Total Mercadorias'
      FieldName = 'NETOTMER'
      Origin = 'SG_ASSOC.CADNE.NETOTMER'
    end
    object Tb_NENETOTNOT: TFloatField
      DisplayLabel = 'Total da Nota'
      FieldName = 'NETOTNOT'
      Origin = 'SG_ASSOC.CADNE.NETOTNOT'
    end
    object Tb_NENETOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'NETOTDES'
      Origin = 'SG_ASSOC.CADNE.NETOTDES'
    end
    object Tb_NENETOTPOS: TFloatField
      DisplayLabel = 'Total Positivo'
      FieldName = 'NETOTPOS'
      Origin = 'SG_ASSOC.CADNE.NETOTPOS'
    end
    object Tb_NENETOTNEG: TFloatField
      DisplayLabel = 'Total Negativo'
      FieldName = 'NETOTNEG'
      Origin = 'SG_ASSOC.CADNE.NETOTNEG'
    end
    object Tb_NENETOTINA: TFloatField
      DisplayLabel = 'Total Inalterado'
      FieldName = 'NETOTINA'
      Origin = 'SG_ASSOC.CADNE.NETOTINA'
    end
    object Tb_NENECHAVEP: TFloatField
      FieldName = 'NECHAVEP'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP'
    end
    object Tb_NENEALIQ: TFloatField
      FieldName = 'NEALIQ'
      Origin = 'SG_ASSOC.CADNE.NEALIQ'
    end
    object Tb_NEnomefor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomefor'
      Size = 40
      Calculated = True
    end
    object Tb_NENETIPO: TFloatField
      FieldName = 'NETIPO'
      Origin = 'SG_ASSOC.CADNE.NETIPO'
    end
    object Tb_NENEDTENT: TDateTimeField
      FieldName = 'NEDTENT'
      Origin = 'SG_ASSOC.CADNE.NEDTENT'
    end
    object Tb_NENEMODELO: TStringField
      FieldName = 'NEMODELO'
      Origin = 'SG_ASSOC.CADNE.NEMODELO'
      Size = 3
    end
    object Tb_NENECODUSR: TFloatField
      FieldName = 'NECODUSR'
      Origin = 'SG_ASSOC.CADNE.NECODUSR'
    end
    object Tb_NENEDTALT: TDateTimeField
      FieldName = 'NEDTALT'
      Origin = 'SG_ASSOC.CADNE.NEDTALT'
    end
    object Tb_NENEHRALT: TStringField
      FieldName = 'NEHRALT'
      Origin = 'SG_ASSOC.CADNE.NEHRALT'
      Size = 10
    end
    object Tb_NENESTATUS: TFloatField
      FieldName = 'NESTATUS'
      Origin = 'SG_ASSOC.CADNE.NESTATUS'
    end
    object Tb_NENEIPIFRETE: TFloatField
      FieldName = 'NEIPIFRETE'
      Origin = 'SG_ASSOC.CADNE.NEIPIFRETE'
    end
    object Tb_NENELOTSEQ_CP: TFloatField
      FieldName = 'NELOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNE.NELOTSEQ_CP'
    end
    object Tb_NENEISENTAS: TFloatField
      FieldName = 'NEISENTAS'
      Origin = 'SG_ASSOC.CADNE.NEISENTAS'
    end
    object Tb_NENEFRETEPC: TFloatField
      FieldName = 'NEFRETEPC'
      Origin = 'SG_ASSOC.CADNE.NEFRETEPC'
    end
    object Tb_NENELEMAT: TFloatField
      FieldName = 'NELEMAT'
      Origin = 'SG_ASSOC.CADNE.NELEMAT'
    end
    object Tb_NENEOUTNINC: TFloatField
      FieldName = 'NEOUTNINC'
      Origin = 'SG_ASSOC.CADNE.NEOUTNINC'
    end
    object Tb_NENEOUTDESP: TFloatField
      FieldName = 'NEOUTDESP'
      Origin = 'SG_ASSOC.CADNE.NEOUTDESP'
    end
    object Tb_NENEAVAP: TFloatField
      FieldName = 'NEAVAP'
      Origin = 'SG_ASSOC.CADNE.NEAVAP'
    end
    object Tb_NENESIV_FRETE: TFloatField
      FieldName = 'NESIV_FRETE'
      Origin = 'SG_ASSOC.CADNE.NESIV_FRETE'
    end
    object Tb_NENESIV_DARE: TFloatField
      FieldName = 'NESIV_DARE'
      Origin = 'SG_ASSOC.CADNE.NESIV_DARE'
    end
    object Tb_NENESIV_OUTROS: TFloatField
      FieldName = 'NESIV_OUTROS'
      Origin = 'SG_ASSOC.CADNE.NESIV_OUTROS'
    end
    object Tb_NENEOUTRAS_ALIQ: TFloatField
      FieldName = 'NEOUTRAS_ALIQ'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS_ALIQ'
    end
    object Tb_NENEOUTRAS_IMP: TFloatField
      FieldName = 'NEOUTRAS_IMP'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS_IMP'
    end
    object Tb_NENECFOP_COMP: TStringField
      FieldName = 'NECFOP_COMP'
      Origin = 'SG_ASSOC.CADNE.NECFOP_COMP'
      Size = 10
    end
    object Tb_NENEPIPIFRETE: TFloatField
      FieldName = 'NEPIPIFRETE'
      Origin = 'SG_ASSOC.CADNE.NEPIPIFRETE'
    end
    object Tb_NENEALIQ_FRETE: TFloatField
      FieldName = 'NEALIQ_FRETE'
      Origin = 'SG_ASSOC.CADNE.NEALIQ_FRETE'
    end
    object Tb_NENEICMS_FRETE: TFloatField
      FieldName = 'NEICMS_FRETE'
      Origin = 'SG_ASSOC.CADNE.NEICMS_FRETE'
    end
    object Tb_NENENFE_CHAVE: TStringField
      FieldName = 'NENFE_CHAVE'
      Origin = 'SG_ASSOC.CADNE.NENFE_CHAVE'
      Size = 44
    end
    object Tb_NENEVL_PIS: TFloatField
      FieldName = 'NEVL_PIS'
      Origin = 'SG_ASSOC.CADNE.NEVL_PIS'
    end
    object Tb_NENEVL_COFINS: TFloatField
      FieldName = 'NEVL_COFINS'
      Origin = 'SG_ASSOC.CADNE.NEVL_COFINS'
    end
    object Tb_NENEENERGIA_COD_CONS: TFloatField
      FieldName = 'NEENERGIA_COD_CONS'
      Origin = 'SG_ASSOC.CADNE.NEENERGIA_COD_CONS'
    end
    object Tb_NENEENERGIA_COD_INF: TStringField
      FieldName = 'NEENERGIA_COD_INF'
      Origin = 'SG_ASSOC.CADNE.NEENERGIA_COD_INF'
      Size = 6
    end
    object Tb_NENEENERGIA_TP_LIGACAO: TFloatField
      FieldName = 'NEENERGIA_TP_LIGACAO'
      Origin = 'SG_ASSOC.CADNE.NEENERGIA_TP_LIGACAO'
    end
    object Tb_NENEENERGIA_GRUPO_TENSAO: TFloatField
      FieldName = 'NEENERGIA_GRUPO_TENSAO'
      Origin = 'SG_ASSOC.CADNE.NEENERGIA_GRUPO_TENSAO'
    end
    object Tb_NENECHAVEP_NIVEL: TFloatField
      FieldName = 'NECHAVEP_NIVEL'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP_NIVEL'
    end
    object Tb_NENECODLOC_ORI: TFloatField
      FieldName = 'NECODLOC_ORI'
      Origin = 'SG_ASSOC.CADNE.NECODLOC_ORI'
    end
    object Tb_NENECODLOC_DEST: TFloatField
      FieldName = 'NECODLOC_DEST'
      Origin = 'SG_ASSOC.CADNE.NECODLOC_DEST'
    end
    object Tb_NEnomloc_ori: TStringField
      FieldName = 'nomloc_ori'
      Size = 100
    end
    object Tb_NEnomloc_dest: TStringField
      FieldName = 'nomloc_dest'
      Size = 100
    end
    object Tb_NENEID_NEW: TFloatField
      FieldName = 'NEID_NEW'
      Origin = 'SG_ASSOC.CADNE.NEID_NEW'
    end
    object Tb_NENEID_PF01_NEW: TFloatField
      FieldName = 'NEID_PF01_NEW'
      Origin = 'SG_ASSOC.CADNE.NEID_PF01_NEW'
    end
  end
  object Src_NE: TDataSource
    DataSet = Tb_NE
    Left = 429
    Top = 268
  end
  object Tb_CP: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CPAfterInsert
    BeforePost = Tb_CPBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CPCalcFields
    DatabaseName = 'SG_ASSOC'
    DataSource = DM2.Sr_AddExt
    SQL.Strings = (
      'Select  CADDAP.*,ROWID AS IDDAP FROM CADDAP where '
      'CACODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CP
    Left = 155
    Top = 177
    object Tb_CPCACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Tb_CPCANUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Tb_CPCACODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Tb_CPCADTEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCADESD: TStringField
      DisplayLabel = 'Desd'
      DisplayWidth = 4
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 4
    end
    object Tb_CPCAVALOR: TFloatField
      DisplayLabel = 'Valor do T'#237'tulo'
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Tb_CPCADTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCAVALDES: TFloatField
      DisplayLabel = 'Valor do Desconto'
      FieldName = 'CAVALDES'
      Origin = 'SG_ASSOC.CADDAP.CAVALDES'
    end
    object Tb_CPCADTDESC: TDateTimeField
      DisplayLabel = 'Data desconto'
      FieldName = 'CADTDESC'
      Origin = 'SG_ASSOC.CADDAP.CADTDESC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCADESC: TFloatField
      DisplayLabel = 'Desc.Concedido'
      FieldName = 'CADESC'
      Origin = 'SG_ASSOC.CADDAP.CADESC'
    end
    object Tb_CPCAJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CAJUROS'
      Origin = 'SG_ASSOC.CADDAP.CAJUROS'
    end
    object Tb_CPCABANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'CABANCO'
      Origin = 'SG_ASSOC.CADDAP.CABANCO'
    end
    object Tb_CPCALOTE: TFloatField
      DisplayLabel = 'Lote de Baixa'
      FieldName = 'CALOTE'
      Origin = 'SG_ASSOC.CADDAP.CALOTE'
    end
    object Tb_CPnomefor: TStringField
      DisplayLabel = 'Nome do fornecedor'
      FieldKind = fkCalculated
      FieldName = 'nomefor'
      Size = 40
      Calculated = True
    end
    object Tb_CPCACHAVEP: TFloatField
      FieldName = 'CACHAVEP'
      Origin = 'SG_ASSOC.CADDAP.CACHAVEP'
    end
    object Tb_CPCADTBX: TDateTimeField
      FieldName = 'CADTBX'
      Origin = 'SG_ASSOC.CADDAP.CADTBX'
    end
    object Tb_CPCADTPAG: TDateTimeField
      FieldName = 'CADTPAG'
      Origin = 'SG_ASSOC.CADDAP.CADTPAG'
    end
    object Tb_CPCAUSRBAI: TFloatField
      FieldName = 'CAUSRBAI'
      Origin = 'SG_ASSOC.CADDAP.CAUSRBAI'
    end
    object Tb_CPsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'situacao'
      Size = 10
      Calculated = True
    end
    object Tb_CPCACAIXA: TFloatField
      FieldName = 'CACAIXA'
      Origin = 'SG_ASSOC.CADDAP.CACAIXA'
    end
    object Tb_CPCACODLDR: TFloatField
      FieldName = 'CACODLDR'
      Origin = 'SG_ASSOC.CADDAP.CACODLDR'
    end
    object Tb_CPCASTATUS: TFloatField
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADDAP.CASTATUS'
    end
    object Tb_CPCAVALPAG: TFloatField
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Tb_CPnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 30
      Calculated = True
    end
    object Tb_CPCADUP: TFloatField
      FieldName = 'CADUP'
      Origin = 'SG_ASSOC.CADDAP.CADUP'
    end
    object Tb_CPCADEVOL: TFloatField
      FieldName = 'CADEVOL'
      Origin = 'SG_ASSOC.CADDAP.CADEVOL'
    end
    object Tb_CPCACODUSR: TFloatField
      FieldName = 'CACODUSR'
      Origin = 'SG_ASSOC.CADDAP.CACODUSR'
    end
    object Tb_CPCADTALT: TDateTimeField
      FieldName = 'CADTALT'
      Origin = 'SG_ASSOC.CADDAP.CADTALT'
    end
    object Tb_CPCAHRALT: TStringField
      FieldName = 'CAHRALT'
      Origin = 'SG_ASSOC.CADDAP.CAHRALT'
      Size = 10
    end
    object Tb_CPdenom: TStringField
      FieldKind = fkCalculated
      FieldName = 'denom'
      Size = 40
      Calculated = True
    end
    object Tb_CPCANOSNUM: TStringField
      FieldName = 'CANOSNUM'
      Origin = 'SG_ASSOC.CADDAP.CANOSNUM'
      Size = 30
    end
    object Tb_CPCALOTSEQ_CP: TFloatField
      FieldName = 'CALOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_CP'
    end
    object Tb_CPCALOTSEQ_LB: TFloatField
      FieldName = 'CALOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_LB'
    end
    object Tb_CPCALOTSEQ_FC: TFloatField
      FieldName = 'CALOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_FC'
    end
    object Tb_CPCATEMBOL: TFloatField
      DisplayLabel = 'Tem Boleto Bancario: 0-Sim 1-Nao'
      FieldName = 'CATEMBOL'
      Origin = 'SG_ASSOC.CADDAP.CATEMBOL'
    end
    object Tb_CPCALEMAT: TFloatField
      FieldName = 'CALEMAT'
      Origin = 'SG_ASSOC.CADDAP.CALEMAT'
    end
    object Tb_CPtipodoc: TStringField
      DisplayLabel = 'Tipo do Documento'
      FieldKind = fkCalculated
      FieldName = 'tipodoc'
      Size = 30
      Calculated = True
    end
    object Tb_CPCACODCTA: TFloatField
      FieldName = 'CACODCTA'
      Origin = 'SG_ASSOC.CADDAP.CACODCTA'
    end
    object Tb_CPCACODCC: TStringField
      FieldName = 'CACODCC'
      Origin = 'SG_ASSOC.CADDAP.CACODCC'
      Size = 5
    end
    object Tb_CPCACODDEP: TStringField
      FieldName = 'CACODDEP'
      Origin = 'SG_ASSOC.CADDAP.CACODDEP'
      Size = 5
    end
    object Tb_CPCADESCMV: TStringField
      FieldName = 'CADESCMV'
      Origin = 'SG_ASSOC.CADDAP.CADESCMV'
      Size = 60
    end
    object Tb_CPCANOMCTA: TStringField
      FieldName = 'CANOMCTA'
      Origin = 'SG_ASSOC.CADDAP.CANOMCTA'
      Size = 40
    end
    object Tb_CPCANOMCC: TStringField
      FieldName = 'CANOMCC'
      Origin = 'SG_ASSOC.CADDAP.CANOMCC'
      Size = 40
    end
    object Tb_CPCANOMDEP: TStringField
      FieldName = 'CANOMDEP'
      Origin = 'SG_ASSOC.CADDAP.CANOMDEP'
      Size = 40
    end
    object Tb_CPdatadesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'datadesc'
      Size = 10
      Calculated = True
    end
    object Tb_CPCANATDC: TStringField
      FieldName = 'CANATDC'
      Origin = 'SG_ASSOC.CADDAP.CANATDC'
      Size = 1
    end
    object Tb_CPCASEQ: TFloatField
      FieldName = 'CASEQ'
      Origin = 'SG_ASSOC.CADDAP.CASEQ'
    end
    object Tb_CPCADTINC: TDateTimeField
      FieldName = 'CADTINC'
      Origin = 'SG_ASSOC.CADDAP.CADTINC'
    end
    object Tb_CPvaldev: TFloatField
      DisplayLabel = 'Valor Devido'
      FieldKind = fkCalculated
      FieldName = 'valdev'
      Calculated = True
    end
    object Tb_CPdtPag: TStringField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtPag'
      Size = 10
      Calculated = True
    end
    object Tb_CPCAQTDPARC: TFloatField
      FieldName = 'CAQTDPARC'
      Origin = 'SG_ASSOC.CADDAP.CAQTDPARC'
    end
    object Tb_CPCANUMPARC: TFloatField
      FieldName = 'CANUMPARC'
      Origin = 'SG_ASSOC.CADDAP.CANUMPARC'
    end
    object Tb_CPCASERIE: TStringField
      FieldName = 'CASERIE'
      Origin = 'SG_ASSOC.CADDAP.CASERIE'
      Size = 6
    end
    object Tb_CPCAMODELO: TStringField
      FieldName = 'CAMODELO'
      Origin = 'SG_ASSOC.CADDAP.CAMODELO'
      Size = 3
    end
    object Tb_CPCACFO: TFloatField
      FieldName = 'CACFO'
      Origin = 'SG_ASSOC.CADDAP.CACFO'
    end
    object Tb_CPCADTENT: TDateTimeField
      FieldName = 'CADTENT'
      Origin = 'SG_ASSOC.CADDAP.CADTENT'
    end
    object Tb_CPCAVALORNF: TFloatField
      FieldName = 'CAVALORNF'
      Origin = 'SG_ASSOC.CADDAP.CAVALORNF'
    end
    object Tb_CPCABASEN: TFloatField
      FieldName = 'CABASEN'
      Origin = 'SG_ASSOC.CADDAP.CABASEN'
    end
    object Tb_CPCAALIQ: TFloatField
      FieldName = 'CAALIQ'
      Origin = 'SG_ASSOC.CADDAP.CAALIQ'
    end
    object Tb_CPCAICMSN: TFloatField
      FieldName = 'CAICMSN'
      Origin = 'SG_ASSOC.CADDAP.CAICMSN'
    end
    object Tb_CPCANETIPO: TFloatField
      FieldName = 'CANETIPO'
      Origin = 'SG_ASSOC.CADDAP.CANETIPO'
    end
    object Tb_CPCANUMERONF: TFloatField
      FieldName = 'CANUMERONF'
      Origin = 'SG_ASSOC.CADDAP.CANUMERONF'
    end
    object Tb_CPcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Calculated = True
    end
    object Tb_CPIDDAP: TStringField
      FieldName = 'IDDAP'
      Origin = 'SG_ASSOC.CADDAP.CAIDDAP'
      Size = 18
    end
    object Tb_CPCAVALOR_ACRES: TFloatField
      FieldName = 'CAVALOR_ACRES'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR_ACRES'
    end
    object Tb_CPCAOBS: TMemoField
      FieldName = 'CAOBS'
      Origin = 'SG_ASSOC.CADDAP.CAOBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Tb_CPCACOMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'CACOMPETENCIA_DTINICIO'
      Origin = 'SG_ASSOC.CADDAP.CACOMPETENCIA_DTINICIO'
    end
    object Tb_CPCACOMPETENCIA_TIPO: TFloatField
      FieldName = 'CACOMPETENCIA_TIPO'
      Origin = 'SG_ASSOC.CADDAP.CACOMPETENCIA_TIPO'
    end
    object Tb_CPCACHAVE_ID: TFloatField
      FieldName = 'CACHAVE_ID'
      Origin = 'SG_ASSOC.CADDAP.CACHAVE_ID'
    end
    object Tb_CPCACHAVE_ID_ANO: TFloatField
      FieldName = 'CACHAVE_ID_ANO'
      Origin = 'SG_ASSOC.CADDAP.CACHAVE_ID_ANO'
    end
    object Tb_CPCAQTDAJUSTE: TFloatField
      FieldName = 'CAQTDAJUSTE'
      Origin = 'SG_ASSOC.CADDAP.CAQTDAJUSTE'
    end
    object Tb_CPCADATAINCLUSAO: TDateTimeField
      FieldName = 'CADATAINCLUSAO'
      Origin = 'SG_ASSOC.CADDAR.CADATAINCLUSAO'
    end
    object Tb_CPCAID_NEW: TFloatField
      FieldName = 'CAID_NEW'
    end
    object Tb_CPCAID_PF01_NEW: TFloatField
      FieldName = 'CAID_PF01_NEW'
    end
    object Tb_CPCAID_LDR_NEW: TFloatField
      FieldName = 'CAID_LDR_NEW'
    end
    object Tb_CPnforigem: TStringField
      FieldKind = fkCalculated
      FieldName = 'nforigem'
      Size = 254
      Calculated = True
    end
  end
  object Query2: TQuery
    DatabaseName = 'SG_ASSOC'
    UpdateMode = upWhereKeyOnly
    Left = 161
    Top = 258
  end
  object Tb_ECF: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ECFBeforeInsert
    AfterInsert = Tb_ECFAfterInsert
    BeforePost = Tb_ECFBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADECF where '
      'CFCODEMP   is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_ECF
    Left = 258
    Top = 8
    object Tb_ECFCFCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da empresa'
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADECF.CFCODEMP'
    end
    object Tb_ECFCFCAIXA: TFloatField
      DisplayLabel = 'C'#243'digo do Caixa'
      FieldName = 'CFCAIXA'
      Origin = 'SG_ASSOC.CADECF.CFCAIXA'
    end
    object Tb_ECFCFNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CFNOME'
      Origin = 'SG_ASSOC.CADECF.CFNOME'
      Size = 40
    end
    object Tb_ECFCFMODELO: TFloatField
      DisplayLabel = 'Modelo'
      FieldName = 'CFMODELO'
      Origin = 'SG_ASSOC.CADECF.CFMODELO'
    end
    object Tb_ECFCFREDE: TFloatField
      DisplayLabel = 'Usa Rede'
      FieldName = 'CFREDE'
      Origin = 'SG_ASSOC.CADECF.CFREDE'
    end
    object Tb_ECFCFMENS1: TStringField
      DisplayLabel = 'Mensagem linha 1'
      FieldName = 'CFMENS1'
      Origin = 'SG_ASSOC.CADECF.CFMENS1'
      Size = 40
    end
    object Tb_ECFCFMENS2: TStringField
      DisplayLabel = 'Mensagem linha 2'
      FieldName = 'CFMENS2'
      Origin = 'SG_ASSOC.CADECF.CFMENS2'
      Size = 40
    end
    object Tb_ECFCFMENS3: TStringField
      DisplayLabel = 'Mensagem linha 3'
      FieldName = 'CFMENS3'
      Origin = 'SG_ASSOC.CADECF.CFMENS3'
      Size = 40
    end
    object Tb_ECFCFMENS4: TStringField
      DisplayLabel = 'Mensagem linha 4'
      FieldName = 'CFMENS4'
      Origin = 'SG_ASSOC.CADECF.CFMENS4'
      Size = 40
    end
    object Tb_ECFCFCRITS: TFloatField
      DisplayLabel = 'Critica Senha'
      FieldName = 'CFCRITS'
      Origin = 'SG_ASSOC.CADECF.CFCRITS'
    end
    object Tb_ECFCFSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'CFSENHA'
      Origin = 'SG_ASSOC.CADECF.CFSENHA'
    end
    object Tb_ECFCFLOCAL: TStringField
      DisplayLabel = 'Local'
      FieldName = 'CFLOCAL'
      Origin = 'SG_ASSOC.CADECF.CFLOCAL'
      Size = 40
    end
    object Tb_ECFCFCODALN: TStringField
      DisplayLabel = 'C'#243'digo da Aliquota Produtos Tributados'
      FieldName = 'CFCODALN'
      Origin = 'SG_ASSOC.CADECF.CFCODALN'
      Size = 2
    end
    object Tb_ECFCFCODALR: TStringField
      DisplayLabel = 'C'#243'digo da aliquota Produtos Retidos'
      FieldName = 'CFCODALR'
      Origin = 'SG_ASSOC.CADECF.CFCODALR'
      Size = 2
    end
    object Tb_ECFCFCODALI: TStringField
      DisplayLabel = 'C'#243'digo da Aliquota Produtos Inalterados'
      FieldName = 'CFCODALI'
      Origin = 'SG_ASSOC.CADECF.CFCODALI'
      Size = 2
    end
    object Tb_ECFCFSERIE: TStringField
      FieldName = 'CFSERIE'
      Origin = 'SG_ASSOC.CADECF.CFSERIE'
    end
    object Tb_ECFCFARRED: TFloatField
      FieldName = 'CFARRED'
      Origin = 'SG_ASSOC.CADECF.CFARRED'
    end
    object Tb_ECFCFDTULTMOV: TDateTimeField
      FieldName = 'CFDTULTMOV'
      Origin = 'SG_ASSOC.CADECF.CFDTULTMOV'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object Tb_ECFCFDTULTREDZ: TDateTimeField
      FieldName = 'CFDTULTREDZ'
      Origin = 'SG_ASSOC.CADECF.CFDTULTREDZ'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object Tb_ECFCFSUP: TFloatField
      FieldName = 'CFSUP'
      Origin = 'SG_ASSOC.CADECF.CFSUP'
    end
    object Tb_ECFCFSANGRIA: TFloatField
      FieldName = 'CFSANGRIA'
      Origin = 'SG_ASSOC.CADECF.CFSANGRIA'
    end
    object Tb_ECFCFMAPARES: TFloatField
      FieldName = 'CFMAPARES'
      Origin = 'SG_ASSOC.CADECF.CFMAPARES'
    end
    object Tb_ECFCFFPGTO: TFloatField
      FieldName = 'CFFPGTO'
      Origin = 'SG_ASSOC.CADECF.CFFPGTO'
    end
    object Tb_ECFCFMODDOC: TStringField
      FieldName = 'CFMODDOC'
      Origin = 'SG_ASSOC.CADECF.CFMODDOC'
      Size = 2
    end
    object Tb_ECFCFDADSINT: TFloatField
      FieldName = 'CFDADSINT'
      Origin = 'SG_ASSOC.CADECF.CFDADSINT'
    end
    object Tb_ECFCFABERTSIS: TFloatField
      FieldName = 'CFABERTSIS'
      Origin = 'SG_ASSOC.CADECF.CFABERTSIS'
    end
    object Tb_ECFCFMODPROGPAD: TFloatField
      FieldName = 'CFMODPROGPAD'
      Origin = 'SG_ASSOC.CADECF.CFMODPROGPAD'
    end
    object Tb_ECFCFPORTA: TStringField
      FieldName = 'CFPORTA'
      Origin = 'SG_ASSOC.CADECF.CFPORTA'
      Size = 7
    end
  end
  object Src_ECF: TDataSource
    DataSet = Tb_ECF
    OnDataChange = Src_ECFDataChange
    Left = 314
    Top = 8
  end
  object Tb_Gpro: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GproBeforeInsert
    AfterInsert = Tb_GproAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGRU where'
      'GRCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_GPro
    Left = 261
    Top = 338
    object Tb_GproGRCODEMP: TFloatField
      FieldName = 'GRCODEMP'
      Origin = 'SG_ASSOC.CADGRU.GRCODEMP'
    end
    object Tb_GproGRCODGRU: TFloatField
      DisplayLabel = 'C'#243'digo do Grupo:'
      FieldName = 'GRCODGRU'
      Origin = 'SG_ASSOC.CADGRU.GRCODGRU'
    end
    object Tb_GproGRNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'GRNOME'
      Origin = 'SG_ASSOC.CADGRU.GRNOME'
      Size = 30
    end
    object Tb_GproGRNOMEABREV: TStringField
      DisplayWidth = 10
      FieldName = 'GRNOMEABREV'
      Origin = 'SG_ASSOC.CADGRU.GRNOMEABREV'
      Size = 10
    end
    object Tb_GproGRPERCFRE: TFloatField
      FieldName = 'GRPERCFRE'
      Origin = 'SG_ASSOC.CADGRU.GRPERCFRE'
    end
    object Tb_GproGRPERCCOMIS: TFloatField
      FieldName = 'GRPERCCOMIS'
      Origin = 'SG_ASSOC.CADGRU.GRPERCCOMIS'
    end
    object Tb_GproGRDATHOR_INC: TDateTimeField
      FieldName = 'GRDATHOR_INC'
      Origin = 'SG_ASSOC.CADGRU.GRDATHOR_INC'
    end
    object Tb_GproGRCODUSR_INC: TFloatField
      FieldName = 'GRCODUSR_INC'
      Origin = 'SG_ASSOC.CADGRU.GRCODUSR_INC'
    end
    object Tb_GproGRCODUSR_ALT: TFloatField
      FieldName = 'GRCODUSR_ALT'
      Origin = 'SG_ASSOC.CADGRU.GRCODUSR_ALT'
    end
    object Tb_GproGRTEXTO: TMemoField
      FieldName = 'GRTEXTO'
      Origin = 'SG_ASSOC.CADGRU.GRTEXTO'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_GproGRDATHOR_ALT: TDateTimeField
      FieldName = 'GRDATHOR_ALT'
      Origin = 'SG_ASSOC.CADGRU.GRDATHOR_ALT'
    end
    object Tb_GproGRDATHOR_REP: TDateTimeField
      FieldName = 'GRDATHOR_REP'
      Origin = 'SG_ASSOC.CADGRU.GRDATHOR_REP'
    end
    object Tb_GproGRPERCDESC: TFloatField
      FieldName = 'GRPERCDESC'
      Origin = 'SG_ASSOC.CADGRU.GRPERCDESC'
    end
  end
  object Src_Gpro: TDataSource
    DataSet = Tb_Gpro
    Left = 318
    Top = 362
  end
  object Tb_Tcon: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TconBeforeInsert
    AfterInsert = Tb_TconAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCON where'
      'CCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TCon
    Left = 694
    Top = 189
    object Tb_TconCCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CCODEMP'
      Origin = 'SG_ASSOC.CADCON.CCODEMP'
    end
    object Tb_TconCCODCON: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CCODCON'
      Origin = 'SG_ASSOC.CADCON.CCODCON'
    end
    object Tb_TconCNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CNOME'
      Origin = 'SG_ASSOC.CADCON.CNOME'
      Size = 30
    end
    object Tb_TconCRESTCON: TFloatField
      FieldName = 'CRESTCON'
      Origin = 'SG_ASSOC.CADCON.CRESTCON'
    end
    object Tb_TconCDATHOR_INC: TDateTimeField
      FieldName = 'CDATHOR_INC'
      Origin = 'SG_ASSOC.CADCON.CDATHOR_INC'
    end
    object Tb_TconCCODUSR_INC: TFloatField
      FieldName = 'CCODUSR_INC'
      Origin = 'SG_ASSOC.CADCON.CCODUSR_INC'
    end
    object Tb_TconCDATHOR_ALT: TDateTimeField
      FieldName = 'CDATHOR_ALT'
      Origin = 'SG_ASSOC.CADCON.CDATHOR_ALT'
    end
    object Tb_TconCCODUSR_ALT: TFloatField
      FieldName = 'CCODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON.CCODUSR_ALT'
    end
  end
  object Tb_Tpro: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TproBeforeInsert
    AfterInsert = Tb_TproAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTP where'
      'TCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TPro
    Left = 690
    Top = 355
    object Tb_TproTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTP.TCODEMP'
    end
    object Tb_TproTCODTIP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TCODTIP'
      Origin = 'SG_ASSOC.CADTP.TCODTIP'
    end
    object Tb_TproTNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTP.TNOME'
      Size = 30
    end
    object Tb_TproTDESCAV: TStringField
      FieldName = 'TDESCAV'
      Origin = 'SG_ASSOC.CADTP.TDESCAV'
      Size = 1
    end
    object Tb_TproTDATHOR_INC: TDateTimeField
      FieldName = 'TDATHOR_INC'
      Origin = 'SG_ASSOC.CADTP.TDATHOR_INC'
    end
    object Tb_TproTCODUSR_INC: TFloatField
      FieldName = 'TCODUSR_INC'
      Origin = 'SG_ASSOC.CADTP.TCODUSR_INC'
    end
    object Tb_TproTDATHOR_ALT: TDateTimeField
      FieldName = 'TDATHOR_ALT'
      Origin = 'SG_ASSOC.CADTP.TDATHOR_ALT'
    end
    object Tb_TproTCODUSR_ALT: TFloatField
      FieldName = 'TCODUSR_ALT'
      Origin = 'SG_ASSOC.CADTP.TCODUSR_ALT'
    end
  end
  object Src_Tcon: TDataSource
    DataSet = Tb_Tcon
    Left = 749
    Top = 189
  end
  object Src_Tpro: TDataSource
    DataSet = Tb_Tpro
    Left = 744
    Top = 355
  end
  object Tb_Tab: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TabBeforeInsert
    AfterInsert = Tb_TabAfterInsert
    BeforePost = Tb_TabBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * FROM CADTAB where'
      'TCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Tab
    Left = 694
    Top = 101
    object Tb_TabTCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTAB.TCODEMP'
    end
    object Tb_TabTSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTAB.TSEQ'
    end
    object Tb_TabTTIPOC: TStringField
      DisplayLabel = 'Tipo Campo'
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTAB.TTIPOC'
      Size = 1
    end
    object Tb_TabTFORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTAB.TFORMATO'
      Size = 40
    end
    object Tb_TabTCONDT1: TStringField
      DisplayLabel = 'Tipo de condicao 1'
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTAB.TCONDT1'
      Size = 1
    end
    object Tb_TabTCOND01: TStringField
      DisplayLabel = 'Condicao'
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTAB.TCOND01'
      Size = 30
    end
    object Tb_TabTCONDOP: TStringField
      DisplayLabel = 'Operador'
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTAB.TCONDOP'
      Size = 5
    end
    object Tb_TabTCONDT2: TStringField
      DisplayLabel = 'Tipo de condicao 2'
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTAB.TCONDT2'
      Size = 1
    end
    object Tb_TabTCOND02: TStringField
      DisplayLabel = 'Condicao 2'
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTAB.TCOND02'
      Size = 30
    end
    object Tb_TabTCAMPO: TStringField
      DisplayLabel = 'Nome do campo'
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTAB.TCAMPO'
      Size = 60
    end
    object Tb_TabTDCAMPO: TStringField
      DisplayLabel = 'Descricao do campo'
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTAB.TDCAMPO'
      Size = 60
    end
    object Tb_TabTDOC: TFloatField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTAB.TDOC'
    end
    object Tb_TabTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTAB.TLOCAL'
    end
    object Tb_TabTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTAB.TLIN'
    end
    object Tb_TabTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTAB.TCOL'
    end
    object Tb_TabTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTAB.TFONTE'
    end
    object Tb_TabTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTAB.TTIPO'
    end
    object Tb_TabTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTAB.TALINHAR'
    end
    object Tb_TabTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTAB.TTAM'
    end
  end
  object Src_Tab: TDataSource
    DataSet = Tb_Tab
    Left = 749
    Top = 101
  end
  object Tb_Cfo: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CfoAfterInsert
    BeforePost = Tb_CfoBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCFO where'
      'CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CFO
    Left = 64
    Top = 439
    object Tb_CfoCFCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADCFO.CFCODEMP'
    end
    object Tb_CfoCFCODCFO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFCODCFO'
      Origin = 'SG_ASSOC.CADCFO.CFCODCFO'
    end
    object Tb_CfoCFCFOENT: TFloatField
      DisplayLabel = 'CFOP da entrada'
      FieldName = 'CFCFOENT'
      Origin = 'SG_ASSOC.CADCFO.CFCFOENT'
    end
    object Tb_CfoCFTPOPER: TFloatField
      FieldName = 'CFTPOPER'
      Origin = 'SG_ASSOC.CADCFO.CFTPOPER'
    end
    object Tb_CfoCFNOME: TStringField
      FieldName = 'CFNOME'
      Origin = 'SG_ASSOC.CADCFO.CFNOME'
      Size = 150
    end
    object Tb_CfoCFCODCTA_EFD: TStringField
      FieldName = 'CFCODCTA_EFD'
      Origin = 'SG_ASSOC.CADCFO.CFCODCTA_EFD'
      Size = 2
    end
  end
  object Src_Cfo: TDataSource
    DataSet = Tb_Cfo
    Left = 120
    Top = 442
  end
  object Tb_TCa: TQuery
    CachedUpdates = True
    BeforePost = Tb_TCaBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTCA where '
      'TCCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TCA
    Left = 694
    Top = 145
    object Tb_TCaTCCODEMP: TFloatField
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CADTCA.TCCODEMP'
    end
    object Tb_TCaTCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CADTCA.TCOBS'
      Size = 200
    end
    object Tb_TCaTCDOC: TFloatField
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CADTCA.TCDOC'
    end
    object Tb_TCaTCQTDLIN: TFloatField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CADTCA.TCQTDLIN'
    end
    object Tb_TCaTCQTDCOL: TFloatField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CADTCA.TCQTDCOL'
    end
    object Tb_TCaTCFPADRAO: TFloatField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CADTCA.TCFPADRAO'
    end
    object Tb_TCaTCQTDITEM: TFloatField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CADTCA.TCQTDITEM'
    end
    object Tb_TCaTCQTDSER: TFloatField
      FieldName = 'TCQTDSER'
      Origin = 'SG_ASSOC.CADTCA.TCQTDSER'
    end
    object Tb_TCaTCQTDLPP: TFloatField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CADTCA.TCQTDLPP'
    end
    object Tb_TCaTCIMPDA: TFloatField
      FieldName = 'TCIMPDA'
      Origin = 'SG_ASSOC.CADTCA.TCIMPDA'
    end
  end
  object SRC_TCA: TDataSource
    DataSet = Tb_TCa
    Left = 749
    Top = 145
  end
  object Tb_Ven: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_VenBeforeInsert
    AfterInsert = Tb_VenAfterInsert
    OnCalcFields = Tb_VenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADVEN where'
      'VCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ven
    Left = 686
    Top = 488
    object Tb_VenVCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'VCODEMP'
      Origin = 'SG_ASSOC.CADVEN.VCODEMP'
    end
    object Tb_VenVCODVEN: TFloatField
      DisplayLabel = 'C'#243'digo do Vendedor'
      FieldName = 'VCODVEN'
      Origin = 'SG_ASSOC.CADVEN.VCODVEN'
    end
    object Tb_VenVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_VenVTPLOG: TStringField
      DisplayLabel = 'Tipo do Logradouro'
      FieldName = 'VTPLOG'
      Origin = 'SG_ASSOC.CADVEN.VTPLOG'
      Size = 10
    end
    object Tb_VenVLOG: TStringField
      DisplayLabel = 'Nome do Logradouro'
      FieldName = 'VLOG'
      Origin = 'SG_ASSOC.CADVEN.VLOG'
      Size = 60
    end
    object Tb_VenVNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'VNUM'
      Origin = 'SG_ASSOC.CADVEN.VNUM'
      Size = 10
    end
    object Tb_VenVCOMPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'VCOMPL'
      Origin = 'SG_ASSOC.CADVEN.VCOMPL'
      Size = 30
    end
    object Tb_VenVCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo do Bairro'
      FieldName = 'VCODBAI'
      Origin = 'SG_ASSOC.CADVEN.VCODBAI'
    end
    object Tb_VenVCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo da Cidade'
      FieldName = 'VCODLOC'
      Origin = 'SG_ASSOC.CADVEN.VCODLOC'
    end
    object Tb_VenVCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'VCEP'
      Origin = 'SG_ASSOC.CADVEN.VCEP'
      EditMask = '99999-999;1; '
      Size = 9
    end
    object Tb_VenVCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'VCELULAR'
      Origin = 'SG_ASSOC.CADVEN.VCELULAR'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_VenVFONERES: TStringField
      DisplayLabel = 'Telefone Residencia'
      FieldName = 'VFONERES'
      Origin = 'SG_ASSOC.CADVEN.VFONERES'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_VenVFONECOM: TStringField
      DisplayLabel = 'Telefone Comercial'
      FieldName = 'VFONECOM'
      Origin = 'SG_ASSOC.CADVEN.VFONECOM'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_VenVDTCAD: TDateTimeField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'VDTCAD'
      Origin = 'SG_ASSOC.CADVEN.VDTCAD'
    end
    object Tb_VenVRG: TStringField
      DisplayLabel = 'Registro geral'
      FieldName = 'VRG'
      Origin = 'SG_ASSOC.CADVEN.VRG'
      Size = 40
    end
    object Tb_VenVCPF: TFloatField
      DisplayLabel = 'CNPF'
      FieldName = 'VCPF'
      Origin = 'SG_ASSOC.CADVEN.VCPF'
      DisplayFormat = '000"."000"."000"-"00'
      EditFormat = '##############'
    end
    object Tb_VenVPONTOR: TStringField
      DisplayLabel = 'Ponto de Referencia'
      FieldName = 'VPONTOR'
      Origin = 'SG_ASSOC.CADVEN.VPONTOR'
      Size = 60
    end
    object Tb_VenVREFP01: TStringField
      DisplayLabel = 'Referencias Pessoais 1'
      FieldName = 'VREFP01'
      Origin = 'SG_ASSOC.CADVEN.VREFP01'
      Size = 40
    end
    object Tb_VenVFREFP1: TStringField
      DisplayLabel = 'Telefone Ref.Pessoais 1'
      FieldName = 'VFREFP1'
      Origin = 'SG_ASSOC.CADVEN.VFREFP1'
    end
    object Tb_VenVREFP02: TStringField
      DisplayLabel = 'Referencias Pessoais 2'
      FieldName = 'VREFP02'
      Origin = 'SG_ASSOC.CADVEN.VREFP02'
      Size = 40
    end
    object Tb_VenVFREFP2: TStringField
      DisplayLabel = 'Fone Ref.Pessoais 2'
      FieldName = 'VFREFP2'
      Origin = 'SG_ASSOC.CADVEN.VFREFP2'
    end
    object Tb_VenVREFP03: TStringField
      DisplayLabel = 'Referencias Pessoais 3'
      FieldName = 'VREFP03'
      Origin = 'SG_ASSOC.CADVEN.VREFP03'
      Size = 40
    end
    object Tb_VenVFREFP3: TStringField
      DisplayLabel = 'Fone Ref.Pessoais 3'
      FieldName = 'VFREFP3'
      Origin = 'SG_ASSOC.CADVEN.VFREFP3'
    end
    object Tb_VenVREFB01: TStringField
      DisplayLabel = 'Referencias Bancarias 1'
      FieldName = 'VREFB01'
      Origin = 'SG_ASSOC.CADVEN.VREFB01'
      Size = 40
    end
    object Tb_VenVFREFB1: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'VFREFB1'
      Origin = 'SG_ASSOC.CADVEN.VFREFB1'
    end
    object Tb_VenVREFB02: TStringField
      DisplayLabel = 'Referencias Bancarias 2'
      FieldName = 'VREFB02'
      Origin = 'SG_ASSOC.CADVEN.VREFB02'
      Size = 40
    end
    object Tb_VenVFREFB2: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'VFREFB2'
      Origin = 'SG_ASSOC.CADVEN.VFREFB2'
    end
    object Tb_VenVREFB03: TStringField
      DisplayLabel = 'Referencias Bancarias 3'
      FieldName = 'VREFB03'
      Origin = 'SG_ASSOC.CADVEN.VREFB03'
      Size = 40
    end
    object Tb_VenVFREFB3: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'VFREFB3'
      Origin = 'SG_ASSOC.CADVEN.VFREFB3'
    end
    object Tb_VenVREFC01: TStringField
      DisplayLabel = 'Referencias Comerciais 1'
      FieldName = 'VREFC01'
      Origin = 'SG_ASSOC.CADVEN.VREFC01'
      Size = 40
    end
    object Tb_VenVFREFC1: TStringField
      DisplayLabel = 'Telefone '
      FieldName = 'VFREFC1'
      Origin = 'SG_ASSOC.CADVEN.VFREFC1'
    end
    object Tb_VenVREFC02: TStringField
      DisplayLabel = 'Referencias Comerciais 2'
      FieldName = 'VREFC02'
      Origin = 'SG_ASSOC.CADVEN.VREFC02'
      Size = 40
    end
    object Tb_VenVFREFC2: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'VFREFC2'
      Origin = 'SG_ASSOC.CADVEN.VFREFC2'
    end
    object Tb_VenVREFC03: TStringField
      DisplayLabel = 'Referencias comerciais 3'
      FieldName = 'VREFC03'
      Origin = 'SG_ASSOC.CADVEN.VREFC03'
      Size = 40
    end
    object Tb_VenVFREFC3: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'VFREFC3'
      Origin = 'SG_ASSOC.CADVEN.VFREFC3'
    end
    object Tb_VenVOBS: TMemoField
      DisplayLabel = 'Observacoes'
      FieldName = 'VOBS'
      Origin = 'SG_ASSOC.CADVEN.VOBS'
      BlobType = ftMemo
      Size = 600
    end
    object Tb_Vennomloc: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomloc'
      Size = 30
      Calculated = True
    end
    object Tb_Vennombai: TStringField
      FieldKind = fkCalculated
      FieldName = 'nombai'
      Size = 30
      Calculated = True
    end
    object Tb_VenVBAIRRO: TStringField
      FieldName = 'VBAIRRO'
      Origin = 'SG_ASSOC.CADVEN.VBAIRRO'
      Size = 30
    end
    object Tb_VenVCIDADE: TStringField
      FieldName = 'VCIDADE'
      Origin = 'SG_ASSOC.CADVEN.VCIDADE'
      Size = 30
    end
    object Tb_VenVUF: TStringField
      FieldName = 'VUF'
      Origin = 'SG_ASSOC.CADVEN.VUF'
      Size = 2
    end
    object Tb_VenVSTATUS: TFloatField
      FieldName = 'VSTATUS'
      Origin = 'SG_ASSOC.CADVEN.VSTATUS'
    end
    object Tb_VenVCODSUP: TFloatField
      FieldName = 'VCODSUP'
      Origin = 'SG_ASSOC.CADVEN.VCODSUP'
    end
    object Tb_VenVCOMIS: TFloatField
      FieldName = 'VCOMIS'
      Origin = 'SG_ASSOC.CADVEN.VCOMIS'
      DisplayFormat = '0.00'
    end
    object Tb_Vennomsup: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsup'
      Size = 40
      Calculated = True
    end
    object Tb_VenVEMAIL: TStringField
      FieldName = 'VEMAIL'
      Origin = 'SG_ASSOC.CADVEN.VEMAIL'
      Size = 70
    end
    object Tb_VenVCODREG: TFloatField
      FieldName = 'VCODREG'
      Origin = 'SG_ASSOC.CADVEN.VCODREG'
    end
    object Tb_Vennomreg: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomreg'
      Size = 40
      Calculated = True
    end
    object Tb_Venacrereg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'acrereg'
      Calculated = True
    end
    object Tb_Vendescreg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'descreg'
      Calculated = True
    end
    object Tb_VenVDM_PCOEXTRA: TFloatField
      FieldName = 'VDM_PCOEXTRA'
      Origin = 'SG_ASSOC.CADVEN.VDM_PCOEXTRA'
    end
    object Tb_VenVDM_DESCMAXITEM: TFloatField
      FieldName = 'VDM_DESCMAXITEM'
      Origin = 'SG_ASSOC.CADVEN.VDM_DESCMAXITEM'
    end
    object Tb_VenVDM_ACREMAXITEM: TFloatField
      FieldName = 'VDM_ACREMAXITEM'
      Origin = 'SG_ASSOC.CADVEN.VDM_ACREMAXITEM'
    end
    object Tb_VenVCODUSR_INC: TFloatField
      FieldName = 'VCODUSR_INC'
      Origin = 'SG_ASSOC.CADVEN.VCODUSR_INC'
    end
    object Tb_VenVDATHOR_ALT: TDateTimeField
      FieldName = 'VDATHOR_ALT'
      Origin = 'SG_ASSOC.CADVEN.VDATHOR_ALT'
    end
    object Tb_VenVCODUSR_ALT: TFloatField
      FieldName = 'VCODUSR_ALT'
      Origin = 'SG_ASSOC.CADVEN.VCODUSR_ALT'
    end
    object Tb_VenVDATHOR_REP: TDateTimeField
      FieldName = 'VDATHOR_REP'
      Origin = 'SG_ASSOC.CADVEN.VDATHOR_REP'
    end
    object Tb_VenVPEDELE_SENHA: TStringField
      FieldName = 'VPEDELE_SENHA'
      Origin = 'SG_ASSOC.CADVEN.VPEDELE_SENHA'
    end
    object Tb_VenVPEDELE_AJUSTE_PRECO: TFloatField
      FieldName = 'VPEDELE_AJUSTE_PRECO'
      Origin = 'SG_ASSOC.CADVEN.VPEDELE_AJUSTE_PRECO'
    end
    object Tb_VenVPEDELE_PRECO_PADRAO: TStringField
      FieldName = 'VPEDELE_PRECO_PADRAO'
      Origin = 'SG_ASSOC.CADVEN.VPEDELE_PRECO_PADRAO'
      Size = 30
    end
    object Tb_VenVPEDELE_BLOQUEIO: TStringField
      FieldName = 'VPEDELE_BLOQUEIO'
      Origin = 'SG_ASSOC.CADVEN.VPEDELE_BLOQUEIO'
      Size = 1
    end
    object Tb_VenVPEDELE_MOT_BLOQUEIO: TMemoField
      FieldName = 'VPEDELE_MOT_BLOQUEIO'
      Origin = 'SG_ASSOC.CADVEN.VPEDELE_MOT_BLOQUEIO'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_VenVFCIA_POPULAR_SENHA: TStringField
      FieldName = 'VFCIA_POPULAR_SENHA'
      Origin = 'SG_ASSOC.CADVEN.VFCIA_POPULAR_SENHA'
      Size = 10
    end
    object Tb_VenVFCIA_POPULAR_USUARIO: TStringField
      FieldName = 'VFCIA_POPULAR_USUARIO'
      Origin = 'SG_ASSOC.CADVEN.VFCIA_POPULAR_USUARIO'
    end
    object Tb_VenVGERENTE: TStringField
      FieldName = 'VGERENTE'
      Origin = 'SG_ASSOC.CADVEN.VGERENTE'
      Size = 1
    end
    object Tb_VenVSUPERVISOR: TStringField
      FieldName = 'VSUPERVISOR'
      Origin = 'SG_ASSOC.CADVEN.VSUPERVISOR'
      Size = 1
    end
  end
  object Src_Ven: TDataSource
    DataSet = Tb_Ven
    Left = 746
    Top = 488
  end
  object Tb_Ped02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped02BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Ped02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02 where'
      'P2CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped02
    Left = 490
    Top = 320
    object Tb_Ped02nompro: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 200
      Calculated = True
    end
    object Tb_Ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02P2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02P2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02P2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODGRU'
    end
    object Tb_Ped02P2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
      Origin = 'SG_ASSOC.CADP02.P2VCOM04'
    end
    object Tb_Ped02P2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Tb_Ped02P2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02P2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02P2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS_EXTRA'
    end
    object Tb_Ped02P2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS_EXTRA'
    end
    object Tb_Ped02P2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
      Origin = 'SG_ASSOC.CADP02.P2STATUS_PED1'
    end
    object Tb_Ped02P2TIPO: TFloatField
      FieldName = 'P2TIPO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO'
    end
    object Tb_Ped02P2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Tb_Ped02P2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Tb_Ped02P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02P2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Tb_Ped02P2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
      Origin = 'SG_ASSOC.CADP02.P2PCOM03'
    end
    object Tb_Ped02P2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Tb_Ped02P2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Tb_Ped02P2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Tb_Ped02P2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Tb_Ped02P2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Tb_Ped02P2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
      Origin = 'SG_ASSOC.CADP02.P2PRAZO'
    end
    object Tb_Ped02P2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
    object Tb_Ped02P2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
      Origin = 'SG_ASSOC.CADP02.P2ALPIS'
    end
    object Tb_Ped02P2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Tb_Ped02P2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
      Origin = 'SG_ASSOC.CADP02.P2ALCOFINS'
    end
    object Tb_Ped02P2COFINS: TFloatField
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
    object Tb_Ped02P2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Tb_Ped02P2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO_PCO'
    end
    object Tb_Ped02P2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
      Origin = 'SG_ASSOC.CADP02.P2CONS_PROPRIO'
    end
    object Tb_Ped02P2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02P2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 15
    end
    object Tb_Ped02P2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02P2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE_NIVEL'
    end
    object Tb_Ped02P2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
      Origin = 'SG_ASSOC.CADP02.P2PCRED_SN'
    end
    object Tb_Ped02P2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
      Origin = 'SG_ASSOC.CADP02.P2PCREDSN'
    end
    object Tb_Ped02P2UND: TStringField
      FieldName = 'P2UND'
      Origin = 'SG_ASSOC.CADP02.P2UND'
      Size = 6
    end
    object Tb_Ped02P2PREPAS: TFloatField
      FieldName = 'P2PREPAS'
      Origin = 'SG_ASSOC.CADP02.P2PREPAS'
    end
    object Tb_Ped02P2MODBCST: TFloatField
      FieldName = 'P2MODBCST'
      Origin = 'SG_ASSOC.CADP02.P2MODBCST'
    end
    object Tb_Ped02P2KIT_PRO: TStringField
      FieldName = 'P2KIT_PRO'
      Origin = 'SG_ASSOC.CADP02.P2KIT_PRO'
      Size = 1
    end
    object Tb_Ped02P2LOTCT: TFloatField
      FieldName = 'P2LOTCT'
      Origin = 'SG_ASSOC.CADP02.P2LOTCT'
    end
    object Tb_Ped02P2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Origin = 'SG_ASSOC.CADP02.P2CST_PIS'
      Size = 3
    end
    object Tb_Ped02P2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Origin = 'SG_ASSOC.CADP02.P2CST_COFINS'
      Size = 3
    end
    object Tb_Ped02P2CSOSN: TFloatField
      FieldName = 'P2CSOSN'
      Origin = 'SG_ASSOC.CADP02.P2CSOSN'
    end
    object Tb_Ped02P2CSOSN_ORI: TFloatField
      FieldName = 'P2CSOSN_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CSOSN_ORI'
    end
    object Tb_Ped02P2ESTNOR: TStringField
      FieldName = 'P2ESTNOR'
      Origin = 'SG_ASSOC.CADP02.P2ESTNOR'
      Size = 1
    end
    object Tb_Ped02P2ESTCONS: TStringField
      FieldName = 'P2ESTCONS'
      Origin = 'SG_ASSOC.CADP02.P2ESTCONS'
      Size = 1
    end
    object Tb_Ped02P2ESTTERC: TStringField
      FieldName = 'P2ESTTERC'
      Origin = 'SG_ASSOC.CADP02.P2ESTTERC'
      Size = 1
    end
    object Tb_Ped02P2ESTREV: TStringField
      FieldName = 'P2ESTREV'
      Origin = 'SG_ASSOC.CADP02.P2ESTREV'
      Size = 1
    end
    object Tb_Ped02P2VLRICMS_SN: TFloatField
      FieldName = 'P2VLRICMS_SN'
      Origin = 'SG_ASSOC.CADP02.P2VLRICMS_SN'
    end
    object Tb_Ped02P2SITUACAO: TFloatField
      FieldName = 'P2SITUACAO'
      Origin = 'SG_ASSOC.CADP02.P2SITUACAO'
    end
    object Tb_Ped02P2DESC_CAB: TFloatField
      FieldName = 'P2DESC_CAB'
      Origin = 'SG_ASSOC.CADP02.P2DESC_CAB'
    end
    object Tb_Ped02P2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Origin = 'SG_ASSOC.CADP02.P2CST_IPI'
      Size = 3
    end
    object Tb_Ped02P2CONTESP: TFloatField
      FieldName = 'P2CONTESP'
      Origin = 'SG_ASSOC.CADP02.P2CONTESP'
    end
    object Tb_Ped02P2VICMSDES: TFloatField
      FieldName = 'P2VICMSDES'
      Origin = 'SG_ASSOC.CADP02.P2VICMSDES'
    end
    object Tb_Ped02P2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
      Origin = 'SG_ASSOC.CADP02.P2DESCPR'
    end
    object Tb_Ped02P2VSEGRAT: TFloatField
      FieldName = 'P2VSEGRAT'
      Origin = 'SG_ASSOC.CADP02.P2VSEGRAT'
    end
    object Tb_Ped02P2VDESPACESRAT: TFloatField
      FieldName = 'P2VDESPACESRAT'
      Origin = 'SG_ASSOC.CADP02.P2VDESPACESRAT'
    end
    object Tb_Ped02P2PERCIMPOSTOS: TFloatField
      FieldName = 'P2PERCIMPOSTOS'
      Origin = 'SG_ASSOC.CADP02.P2PERCIMPOSTOS'
    end
    object Tb_Ped02P2TIPOPROD: TFloatField
      FieldName = 'P2TIPOPROD'
      Origin = 'SG_ASSOC.CADP02.P2TIPOPROD'
    end
    object Tb_Ped02P2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
      Origin = 'SG_ASSOC.CADP02.P2ALIQICMSDES'
    end
    object Tb_Ped02P2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
      Origin = 'SG_ASSOC.CADP02.P2ALIQAPROXTRIB'
    end
    object Tb_Ped02P2VALAPROXTRIB: TFloatField
      FieldName = 'P2VALAPROXTRIB'
      Origin = 'SG_ASSOC.CADP02.P2VALAPROXTRIB'
    end
    object Tb_Ped02P2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_ALIPI'
    end
    object Tb_Ped02P2ICMS_BCIPI: TFloatField
      FieldName = 'P2ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_BCIPI'
    end
    object Tb_Ped02P2ICMS_VLIPI: TFloatField
      FieldName = 'P2ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_VLIPI'
    end
    object Tb_Ped02P2VSEGRAT_BCICMS: TFloatField
      FieldName = 'P2VSEGRAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VSEGRAT_BCICMS'
    end
    object Tb_Ped02P2VFRERAT_BCICMS: TFloatField
      FieldName = 'P2VFRERAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VFRERAT_BCICMS'
    end
    object Tb_Ped02P2VFRERAT: TFloatField
      FieldName = 'P2VFRERAT'
      Origin = 'SG_ASSOC.CADP02.P2VFRERAT'
    end
    object Tb_Ped02P2VDESPACESRAT_BCICMS: TFloatField
      FieldName = 'P2VDESPACESRAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VDESPACESRAT_BCICMS'
    end
    object Tb_Ped02P2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
      Origin = 'SG_ASSOC.CADP02.P2COMPRA_XPED'
      Size = 15
    end
    object Tb_Ped02P2COMPRA_NITEMPED: TFloatField
      FieldName = 'P2COMPRA_NITEMPED'
      Origin = 'SG_ASSOC.CADP02.P2COMPRA_NITEMPED'
    end
    object Tb_Ped02P2IMP_IMP_ALIQ: TFloatField
      FieldName = 'P2IMP_IMP_ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_ALIQ'
    end
    object Tb_Ped02P2IMP_IMP_VALOR: TFloatField
      FieldName = 'P2IMP_IMP_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VALOR'
    end
    object Tb_Ped02P2IMP_IMP_VDESDPADU: TFloatField
      FieldName = 'P2IMP_IMP_VDESDPADU'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VDESDPADU'
    end
    object Tb_Ped02P2IMP_IMP_VII: TFloatField
      FieldName = 'P2IMP_IMP_VII'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VII'
    end
    object Tb_Ped02P2IMP_IMP_VIOF: TFloatField
      FieldName = 'P2IMP_IMP_VIOF'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VIOF'
    end
    object Tb_Ped02P2IMP_IMP_VBC: TFloatField
      FieldName = 'P2IMP_IMP_VBC'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VBC'
    end
    object Tb_Ped02P2IMP_TPVIATRANSP: TFloatField
      FieldName = 'P2IMP_TPVIATRANSP'
      Origin = 'SG_ASSOC.CADP02.P2IMP_TPVIATRANSP'
    end
    object Tb_Ped02P2IMP_VAFRMM: TFloatField
      FieldName = 'P2IMP_VAFRMM'
      Origin = 'SG_ASSOC.CADP02.P2IMP_VAFRMM'
    end
    object Tb_Ped02P2IMP_TPINTERMEDIARIO: TFloatField
      FieldName = 'P2IMP_TPINTERMEDIARIO'
      Origin = 'SG_ASSOC.CADP02.P2IMP_TPINTERMEDIARIO'
    end
    object Tb_Ped02P2IMP_CNPJ: TStringField
      FieldName = 'P2IMP_CNPJ'
      Origin = 'SG_ASSOC.CADP02.P2IMP_CNPJ'
      Size = 14
    end
    object Tb_Ped02P2IMP_UFTERCEIRO: TStringField
      FieldName = 'P2IMP_UFTERCEIRO'
      Origin = 'SG_ASSOC.CADP02.P2IMP_UFTERCEIRO'
      Size = 2
    end
    object Tb_Ped02P2IMP_NDRAW: TFloatField
      FieldName = 'P2IMP_NDRAW'
      Origin = 'SG_ASSOC.CADP02.P2IMP_NDRAW'
    end
    object Tb_Ped02P2EXP_NDRAW: TFloatField
      FieldName = 'P2EXP_NDRAW'
      Origin = 'SG_ASSOC.CADP02.P2EXP_NDRAW'
    end
    object Tb_Ped02P2EXP_NRE: TFloatField
      FieldName = 'P2EXP_NRE'
      Origin = 'SG_ASSOC.CADP02.P2EXP_NRE'
    end
    object Tb_Ped02P2EXP_CHNFE: TStringField
      FieldName = 'P2EXP_CHNFE'
      Origin = 'SG_ASSOC.CADP02.P2EXP_CHNFE'
      Size = 44
    end
    object Tb_Ped02P2EXP_QEXPORT: TFloatField
      FieldName = 'P2EXP_QEXPORT'
      Origin = 'SG_ASSOC.CADP02.P2EXP_QEXPORT'
    end
    object Tb_Ped02P2IPI_VBC: TFloatField
      FieldName = 'P2IPI_VBC'
      Origin = 'SG_ASSOC.CADP02.P2IPI_VBC'
    end
    object Tb_Ped02P2PIS_VBC: TFloatField
      FieldName = 'P2PIS_VBC'
      Origin = 'SG_ASSOC.CADP02.P2PIS_VBC'
    end
    object Tb_Ped02P2COFINS_VBC: TFloatField
      FieldName = 'P2COFINS_VBC'
      Origin = 'SG_ASSOC.CADP02.P2COFINS_VBC'
    end
    object Tb_Ped02P2CBENEF: TStringField
      FieldName = 'P2CBENEF'
      Origin = 'SG_ASSOC.CADP02.P2CBENEF'
      Size = 10
    end
    object Tb_Ped02P2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
      Origin = 'SG_ASSOC.CADP02.P2ID_NEW'
    end
    object Tb_Ped02P2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
      Origin = 'SG_ASSOC.CADP02.P2ID_PED01_NEW'
    end
    object Tb_Ped02P2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
      Origin = 'SG_ASSOC.CADP02.P2IRRF_PERC'
    end
    object Tb_Ped02P2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2IRRF_VALOR'
    end
    object Tb_Ped02P2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
      Origin = 'SG_ASSOC.CADP02.P2CSLL_PERC'
    end
    object Tb_Ped02P2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2CSLL_VALOR'
    end
    object Tb_Ped02P2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Origin = 'SG_ASSOC.CADP02.P2CBS_CST'
      Size = 3
    end
    object Tb_Ped02P2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Origin = 'SG_ASSOC.CADP02.P2CODCLASSTRIB'
      Size = 6
    end
    object Tb_Ped02P2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2CBS_ALIQ'
    end
    object Tb_Ped02P2CBS_BC: TFloatField
      FieldName = 'P2CBS_BC'
      Origin = 'SG_ASSOC.CADP02.P2CBS_BC'
    end
    object Tb_Ped02P2CBS_VALOR: TFloatField
      FieldName = 'P2CBS_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2CBS_VALOR'
    end
    object Tb_Ped02P2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2IBS_UF_ALIQ'
    end
    object Tb_Ped02P2IBS_UF_VALOR: TFloatField
      FieldName = 'P2IBS_UF_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2IBS_UF_VALOR'
    end
    object Tb_Ped02P2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2IBS_MUN_ALIQ'
    end
    object Tb_Ped02P2IBS_MUN_VALOR: TFloatField
      FieldName = 'P2IBS_MUN_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2IBS_MUN_VALOR'
    end
    object Tb_Ped02P2CBS_DEV_TRIB: TFloatField
      FieldName = 'P2CBS_DEV_TRIB'
      Origin = 'SG_ASSOC.CADP02.P2CBS_DEV_TRIB'
    end
  end
  object SGTEMP: TDatabase
    DatabaseName = 'SGTEMP'
    DriverName = 'STANDARD'
    LoginPrompt = False
    Params.Strings = (
      'PATH=C:\SGASSOC'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Default'
    Left = 17
    Top = 88
  end
  object Tb_Dar: TQuery
    CachedUpdates = True
    AfterInsert = Tb_DarAfterInsert
    BeforePost = Tb_DarBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_DarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADDAR.*,ROWID AS IDDAR From CADDAR where '
      'CRCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Dar
    Left = 154
    Top = 443
    object Tb_DarCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_DarCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DarCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Tb_DarCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 4
    end
    object Tb_DarCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDTBX: TDateTimeField
      DisplayLabel = 'Data Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRNPED: TFloatField
      DisplayLabel = 'N'#250'mero do Pedido'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Tb_DarCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Tb_DarCRLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Tb_DarCRDTDESCF: TDateTimeField
      DisplayLabel = 'Dt.Lim.Desc.Financ'
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRVALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.CADDAR.CRVALFRE'
      currency = True
    end
    object Tb_DarCRJURD: TFloatField
      DisplayLabel = 'Juros por dia de atraso'
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDESCF: TFloatField
      DisplayLabel = 'Desc.Financeiro'
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDEVOL: TFloatField
      DisplayLabel = 'Devolucao'
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRVALOR: TFloatField
      DisplayLabel = 'Valor do T'#237'tulo'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRNOSNUM: TStringField
      DisplayLabel = 'Numero do titulo no banco'
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Tb_DarCRDTALT: TDateTimeField
      FieldName = 'CRDTALT'
      Origin = 'SG_ASSOC.CADDAR.CRDTALT'
    end
    object Tb_DarCRUSRALT: TFloatField
      FieldName = 'CRUSRALT'
      Origin = 'SG_ASSOC.CADDAR.CRUSRALT'
    end
    object Tb_DarCRUSRBX: TFloatField
      FieldName = 'CRUSRBX'
      Origin = 'SG_ASSOC.CADDAR.CRUSRBX'
    end
    object Tb_Darrazaocli: TStringField
      DisplayLabel = 'Razao Social'
      FieldKind = fkCalculated
      FieldName = 'razaocli'
      Size = 40
      Calculated = True
    end
    object Tb_Darnomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_Darnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Tb_DarCRCODLDR: TFloatField
      FieldName = 'CRCODLDR'
      Origin = 'SG_ASSOC.CADDAR.CRCODLDR'
    end
    object Tb_DarCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_DarCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Tb_DarCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Tb_DarCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Tb_DarCREMIDUP: TFloatField
      FieldName = 'CREMIDUP'
      Origin = 'SG_ASSOC.CADDAR.CREMIDUP'
    end
    object Tb_DarCREMIBLQ: TFloatField
      FieldName = 'CREMIBLQ'
      Origin = 'SG_ASSOC.CADDAR.CREMIBLQ'
    end
    object Tb_DarCRTIPCOB: TFloatField
      FieldName = 'CRTIPCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTIPCOB'
    end
    object Tb_DarCRNUMCUP: TFloatField
      FieldName = 'CRNUMCUP'
      Origin = 'SG_ASSOC.CADDAR.CRNUMCUP'
    end
    object Tb_DarCRDATCUP: TDateTimeField
      FieldName = 'CRDATCUP'
      Origin = 'SG_ASSOC.CADDAR.CRDATCUP'
    end
    object Tb_DarCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRCOMTEL: TFloatField
      FieldName = 'CRCOMTEL'
      Origin = 'SG_ASSOC.CADDAR.CRCOMTEL'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRCOMSUP: TFloatField
      FieldName = 'CRCOMSUP'
      Origin = 'SG_ASSOC.CADDAR.CRCOMSUP'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRSEMCOM: TFloatField
      FieldName = 'CRSEMCOM'
      Origin = 'SG_ASSOC.CADDAR.CRSEMCOM'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRLOTCV: TFloatField
      FieldName = 'CRLOTCV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV'
    end
    object Tb_DarCRLOTCS: TFloatField
      FieldName = 'CRLOTCS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCS'
    end
    object Tb_DarCRLOTCT: TFloatField
      FieldName = 'CRLOTCT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCT'
    end
    object Tb_DarCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Tb_DarCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.CADDAR.CRQTDDM'
    end
    object Tb_DarCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Tb_DarCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SG_ASSOC.CADDAR.CRCODTLV'
    end
    object Tb_DarCRCODORI: TFloatField
      FieldName = 'CRCODORI'
      Origin = 'SG_ASSOC.CADDAR.CRCODORI'
    end
    object Tb_DarCRCODUSR: TFloatField
      FieldName = 'CRCODUSR'
      Origin = 'SG_ASSOC.CADDAR.CRCODUSR'
    end
    object Tb_DarCRHRALT: TStringField
      FieldName = 'CRHRALT'
      Origin = 'SG_ASSOC.CADDAR.CRHRALT'
      Size = 10
    end
    object Tb_DarCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Tb_DarCRTOTNF: TFloatField
      FieldName = 'CRTOTNF'
      Origin = 'SG_ASSOC.CADDAR.CRTOTNF'
      DisplayFormat = '0.00'
    end
    object Tb_Dardenomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'denomcli'
      Size = 40
      Calculated = True
    end
    object Tb_DarCRCOMV02: TFloatField
      FieldName = 'CRCOMV02'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV02'
    end
    object Tb_DarCRCOMV03: TFloatField
      FieldName = 'CRCOMV03'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV03'
    end
    object Tb_DarCRLOTCV02: TFloatField
      FieldName = 'CRLOTCV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV02'
    end
    object Tb_DarCRLOTCV03: TFloatField
      FieldName = 'CRLOTCV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV03'
    end
    object Tb_DarCRCODV02: TFloatField
      FieldName = 'CRCODV02'
      Origin = 'SG_ASSOC.CADDAR.CRCODV02'
    end
    object Tb_DarCRCODV03: TFloatField
      FieldName = 'CRCODV03'
      Origin = 'SG_ASSOC.CADDAR.CRCODV03'
    end
    object Tb_DarCRCODCV: TFloatField
      FieldName = 'CRCODCV'
      Origin = 'SG_ASSOC.CADDAR.CRCODCV'
    end
    object Tb_DarCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CP'
    end
    object Tb_DarCRCODECF: TFloatField
      FieldName = 'CRCODECF'
      Origin = 'SG_ASSOC.CADDAR.CRCODECF'
    end
    object Tb_DarCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
    object Tb_DarCRLOTSEQ_FC: TFloatField
      FieldName = 'CRLOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_FC'
    end
    object Tb_DarCRLOTSEQ_CV: TFloatField
      FieldName = 'CRLOTSEQ_CV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV'
    end
    object Tb_DarCRLOTSEQ_CV02: TFloatField
      FieldName = 'CRLOTSEQ_CV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV02'
    end
    object Tb_DarCRLOTSEQ_CV03: TFloatField
      FieldName = 'CRLOTSEQ_CV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV03'
    end
    object Tb_DarCRLOTSEQ_CS: TFloatField
      FieldName = 'CRLOTSEQ_CS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CS'
    end
    object Tb_DarCRLOTSEQ_CT: TFloatField
      FieldName = 'CRLOTSEQ_CT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CT'
    end
    object Tb_DarCRTOTDI01: TFloatField
      DisplayLabel = 'Total do Desconto 01 dos '#237'tens'
      FieldName = 'CRTOTDI01'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI01'
    end
    object Tb_DarCRTOTDI02: TFloatField
      DisplayLabel = 'Total do Desconto 02 dos '#237'tens'
      FieldName = 'CRTOTDI02'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI02'
    end
    object Tb_DarCRTOTDI03: TFloatField
      DisplayLabel = 'Total do Desconto 03 dos '#237'tens'
      FieldName = 'CRTOTDI03'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI03'
    end
    object Tb_DarCRTOTDIVL: TFloatField
      DisplayLabel = 'Total do Desconto em valor dos '#237'tens'
      FieldName = 'CRTOTDIVL'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDIVL'
    end
    object Tb_DarCRVALDES01: TFloatField
      DisplayLabel = 'Total do Desconto 01 do cabecalho'
      FieldName = 'CRVALDES01'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES01'
    end
    object Tb_DarCRVALDES02: TFloatField
      DisplayLabel = 'Total do Desconto 02 do Cabe'#231'alho'
      FieldName = 'CRVALDES02'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES02'
    end
    object Tb_DarCRVLRDES: TFloatField
      DisplayLabel = 'Valor do desconto do Cabe'#231'alho'
      FieldName = 'CRVLRDES'
      Origin = 'SG_ASSOC.CADDAR.CRVLRDES'
    end
    object Tb_DarCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.CADDAR.CRTARBAN'
    end
    object Tb_DarCRDNOSNUM: TStringField
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object Tb_DarCRACEITE: TStringField
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.CADDAR.CRACEITE'
      Size = 1
    end
    object Tb_DarCRESPECIE: TStringField
      DisplayLabel = 'Especie'
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.CADDAR.CRESPECIE'
      Size = 2
    end
    object Tb_DarCRCODBAR: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODBAR'
      Size = 60
    end
    object Tb_DarCRCODDIG: TStringField
      DisplayLabel = 'C'#243'digo digitavel da Boleta'
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.CADDAR.CRCODDIG'
      Size = 60
    end
    object Tb_DarCRLEMAT: TFloatField
      DisplayLabel = 'Lote de Envio para Matriz'
      FieldName = 'CRLEMAT'
      Origin = 'SG_ASSOC.CADDAR.CRLEMAT'
    end
    object Tb_DarCRCODASSE: TFloatField
      DisplayLabel = 'C'#243'digo do Assessor'
      FieldName = 'CRCODASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCODASSE'
    end
    object Tb_DarCRCOMASSE: TFloatField
      DisplayLabel = 'Comiss'#227'o do Assessor'
      FieldName = 'CRCOMASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCOMASSE'
    end
    object Tb_DarCRLOTSEQ_CASSE: TFloatField
      DisplayLabel = 'Lote Seq.Comiss'#227'o do Assessor'
      FieldName = 'CRLOTSEQ_CASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CASSE'
    end
    object Tb_DarCRLOTCASSE: TFloatField
      DisplayLabel = 'Lote de Comiss'#227'o do Assessor'
      FieldName = 'CRLOTCASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCASSE'
    end
    object Tb_DarCRINST01: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 01'
      FieldName = 'CRINST01'
      Origin = 'SG_ASSOC.CADDAR.CRINST01'
      Size = 60
    end
    object Tb_DarCRINST02: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 02'
      FieldName = 'CRINST02'
      Origin = 'SG_ASSOC.CADDAR.CRINST02'
      Size = 60
    end
    object Tb_DarCRINST03: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 03'
      FieldName = 'CRINST03'
      Origin = 'SG_ASSOC.CADDAR.CRINST03'
      Size = 60
    end
    object Tb_DarCRINST04: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 04'
      FieldName = 'CRINST04'
      Origin = 'SG_ASSOC.CADDAR.CRINST04'
      Size = 60
    end
    object Tb_DarCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.CADDAR.CRQTDPARC'
    end
    object Tb_DarCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.CADDAR.CRNUMPARC'
    end
    object Tb_DarCRVALSEG: TFloatField
      FieldName = 'CRVALSEG'
      Origin = 'SG_ASSOC.CADDAR.CRVALSEG'
    end
    object Tb_DarCRTOTCGRU: TFloatField
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTCGRU'
    end
    object Tb_DarCRTOTSGRU: TFloatField
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTSGRU'
    end
    object Tb_DarCRTBCOCOB: TFloatField
      FieldName = 'CRTBCOCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTBCOCOB'
    end
    object Tb_DarCREMIBOR: TFloatField
      FieldName = 'CREMIBOR'
      Origin = 'SG_ASSOC.CADDAR.CREMIBOR'
    end
    object Tb_DarCRCHD_BANCO: TFloatField
      FieldName = 'CRCHD_BANCO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_BANCO'
    end
    object Tb_DarCRCHD_AGENCIA: TStringField
      FieldName = 'CRCHD_AGENCIA'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_AGENCIA'
      Size = 5
    end
    object Tb_DarCRCHD_CC: TStringField
      FieldName = 'CRCHD_CC'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_CC'
      Size = 15
    end
    object Tb_DarCRCHD_NUMERO: TFloatField
      FieldName = 'CRCHD_NUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_NUMERO'
    end
    object Tb_DarCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SG_ASSOC.CADDAR.CRTCB'
    end
    object Tb_DarCRCAUCAO: TFloatField
      FieldName = 'CRCAUCAO'
      Origin = 'SG_ASSOC.CADDAR.CRCAUCAO'
    end
    object Tb_DarCRBCOCAU: TFloatField
      FieldName = 'CRBCOCAU'
      Origin = 'SG_ASSOC.CADDAR.CRBCOCAU'
    end
    object Tb_DarCRDTCAU: TDateTimeField
      FieldName = 'CRDTCAU'
      Origin = 'SG_ASSOC.CADDAR.CRDTCAU'
    end
    object Tb_DarCRSPC_DTPEN: TDateTimeField
      FieldName = 'CRSPC_DTPEN'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTPEN'
    end
    object Tb_DarCRSPC_DTNEG: TDateTimeField
      FieldName = 'CRSPC_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTNEG'
    end
    object Tb_DarCRSERASA_DTNEG: TDateTimeField
      FieldName = 'CRSERASA_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSERASA_DTNEG'
    end
    object Tb_DarCRNR: TFloatField
      FieldName = 'CRNR'
      Origin = 'SG_ASSOC.CADDAR.CRNR'
    end
    object Tb_DarCRCODV04: TFloatField
      FieldName = 'CRCODV04'
      Origin = 'SG_ASSOC.CADDAR.CRCODV04'
    end
    object Tb_DarCRCOMV04: TFloatField
      FieldName = 'CRCOMV04'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV04'
    end
    object Tb_DarCRLOTSEQ_CV04: TFloatField
      FieldName = 'CRLOTSEQ_CV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV04'
    end
    object Tb_DarCRLOTCV04: TFloatField
      FieldName = 'CRLOTCV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV04'
    end
    object Tb_DarCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.CADDAR.CRTOTIPI'
    end
    object Tb_DarCRCUSBCO: TFloatField
      FieldName = 'CRCUSBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCUSBCO'
    end
    object Tb_Dartipodoc: TStringField
      DisplayLabel = 'Tipo do Documento'
      FieldKind = fkCalculated
      FieldName = 'tipodoc'
      Size = 30
      Calculated = True
    end
    object Tb_Darsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'situacao'
      Calculated = True
    end
    object Tb_DarCRCODCTA: TFloatField
      FieldName = 'CRCODCTA'
      Origin = 'SG_ASSOC.CADDAR.CRCODCTA'
    end
    object Tb_DarCRCODCC: TStringField
      FieldName = 'CRCODCC'
      Origin = 'SG_ASSOC.CADDAR.CRCODCC'
      Size = 5
    end
    object Tb_DarCRCODDEP: TStringField
      FieldName = 'CRCODDEP'
      Origin = 'SG_ASSOC.CADDAR.CRCODDEP'
      Size = 5
    end
    object Tb_DarCRDESCMV: TStringField
      DisplayWidth = 60
      FieldName = 'CRDESCMV'
      Origin = 'SG_ASSOC.CADDAR.CRDESCMV'
      Size = 60
    end
    object Tb_DarCRNOMCC: TStringField
      FieldName = 'CRNOMCC'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCC'
      Size = 40
    end
    object Tb_DarCRNOMDEP: TStringField
      FieldName = 'CRNOMDEP'
      Origin = 'SG_ASSOC.CADDAR.CRNOMDEP'
      Size = 40
    end
    object Tb_DarCRNOMCTA: TStringField
      FieldName = 'CRNOMCTA'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCTA'
      Size = 40
    end
    object Tb_DarCRNATDC: TStringField
      FieldName = 'CRNATDC'
      Origin = 'SG_ASSOC.CADDAR.CRNATDC'
      Size = 1
    end
    object Tb_Dardtemis: TDateField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtemis'
      Calculated = True
    end
    object Tb_Dardtvcto: TDateField
      DisplayLabel = 'Dt.Vcto.'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      Calculated = True
    end
    object Tb_Dardtpag: TDateField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtpag'
      Calculated = True
    end
    object Tb_Dardtbx: TDateField
      DisplayLabel = 'Dt.Baixa'
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Calculated = True
    end
    object Tb_Dardtdescf: TDateField
      DisplayLabel = 'Dt.Desc.Fin'
      FieldKind = fkCalculated
      FieldName = 'dtdescf'
      Calculated = True
    end
    object Tb_Dardatcup: TDateField
      DisplayLabel = 'Dt.Cupom'
      FieldKind = fkCalculated
      FieldName = 'datcup'
      Calculated = True
    end
    object Tb_Darspc_dtpen: TDateField
      DisplayLabel = 'Dt.SPC Neg'
      FieldKind = fkCalculated
      FieldName = 'spc_dtpen'
      Calculated = True
    end
    object Tb_Darspc_dtneg: TDateField
      DisplayLabel = 'Dt.SPC.Neg'
      FieldKind = fkCalculated
      FieldName = 'spc_dtneg'
      Calculated = True
    end
    object Tb_Darserasa_dtneg: TDateField
      DisplayLabel = 'Dt.Serasa Neg'
      FieldKind = fkCalculated
      FieldName = 'serasa_dtneg'
      Calculated = True
    end
    object Tb_Dardtcau: TDateField
      DisplayLabel = 'Dt.Cau'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtcau'
      Calculated = True
    end
    object Tb_DarCRCOMIS_EXTRA: TFloatField
      FieldName = 'CRCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADDAR.CRCOMIS_EXTRA'
    end
    object Tb_DarCRSEQ: TFloatField
      FieldName = 'CRSEQ'
      Origin = 'SG_ASSOC.CADDAR.CRSEQ'
    end
    object Tb_DarCRPFPGTO: TFloatField
      FieldName = 'CRPFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRPFPGTO'
    end
    object Tb_DarCRTABPV: TStringField
      FieldName = 'CRTABPV'
      Origin = 'SG_ASSOC.CADDAR.CRTABPV'
      Size = 2
    end
    object Tb_DarCRCODPV: TFloatField
      FieldName = 'CRCODPV'
      Origin = 'SG_ASSOC.CADDAR.CRCODPV'
    end
    object Tb_DarCRVINC02: TFloatField
      FieldName = 'CRVINC02'
      Origin = 'SG_ASSOC.CADDAR.CRVINC02'
    end
    object Tb_DarCRCODFPGTO: TFloatField
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRCODFPGTO'
    end
    object Tb_DarCRNOMFPGTO: TStringField
      FieldName = 'CRNOMFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRNOMFPGTO'
      Size = 40
    end
    object Tb_DarCRFIN_CODFIN: TFloatField
      FieldName = 'CRFIN_CODFIN'
      Origin = 'SG_ASSOC.CADDAR.CRFIN_CODFIN'
    end
    object Tb_DarCRLANCFIN: TFloatField
      FieldName = 'CRLANCFIN'
      Origin = 'SG_ASSOC.CADDAR.CRLANCFIN'
    end
    object Tb_DarCRRECFRENTE: TFloatField
      FieldName = 'CRRECFRENTE'
      Origin = 'SG_ASSOC.CADDAR.CRRECFRENTE'
    end
    object Tb_DarCRDATPED: TDateTimeField
      FieldName = 'CRDATPED'
      Origin = 'SG_ASSOC.CADDAR.CRDATPED'
    end
    object Tb_DarCRCX_CODCAI: TFloatField
      FieldName = 'CRCX_CODCAI'
      Origin = 'SG_ASSOC.CADDAR.CRCX_CODCAI'
    end
    object Tb_DarCRCX_LOTMOV: TFloatField
      FieldName = 'CRCX_LOTMOV'
      Origin = 'SG_ASSOC.CADDAR.CRCX_LOTMOV'
    end
    object Tb_DarCRCHD_EMITENTE: TStringField
      FieldName = 'CRCHD_EMITENTE'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_EMITENTE'
      Size = 40
    end
    object Tb_DarCRJURDEB: TFloatField
      FieldName = 'CRJURDEB'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB'
    end
    object Tb_DarCRJURDEB_SAC: TFloatField
      FieldName = 'CRJURDEB_SAC'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB_SAC'
    end
    object Tb_Darvaldev: TFloatField
      DisplayLabel = 'Valor Devido'
      FieldKind = fkCalculated
      FieldName = 'valdev'
      Calculated = True
    end
    object Tb_DarCRTARPROT: TFloatField
      FieldName = 'CRTARPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTARPROT'
    end
    object Tb_DarCRTARPROT_DATA: TDateTimeField
      FieldName = 'CRTARPROT_DATA'
      Origin = 'SG_ASSOC.CADDAR.CRTARPROT_DATA'
    end
    object Tb_DarCRCUSPROT: TFloatField
      FieldName = 'CRCUSPROT'
      Origin = 'SG_ASSOC.CADDAR.CRCUSPROT'
    end
    object Tb_DarCRCUSPROT_DATA: TDateTimeField
      FieldName = 'CRCUSPROT_DATA'
      Origin = 'SG_ASSOC.CADDAR.CRCUSPROT_DATA'
    end
    object Tb_DarCRCODCAR: TFloatField
      FieldName = 'CRCODCAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODCAR'
    end
    object Tb_DarCRLOTSEQ_EC: TFloatField
      FieldName = 'CRLOTSEQ_EC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_EC'
    end
    object Tb_DarCRLOTE_EC: TFloatField
      FieldName = 'CRLOTE_EC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE_EC'
    end
    object Tb_DarCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTITPROT'
    end
    object Tb_Darcnpj: TFloatField
      DisplayLabel = 'CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Calculated = True
    end
    object Tb_DarNOMEACESS: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEACESS'
      LookupDataSet = DM2.Tb_Assessor
      LookupKeyFields = 'CACODASS'
      LookupResultField = 'CARAZAO'
      KeyFields = 'CRCODASSE'
      Size = 40
      Lookup = True
    end
    object Tb_DarCRNPED_NIVEL: TFloatField
      FieldName = 'CRNPED_NIVEL'
      Origin = 'SG_ASSOC.CADDAR.CRNPED_NIVEL'
    end
    object Tb_DarIDDAR: TStringField
      FieldName = 'IDDAR'
      Origin = 'SG_ASSOC.CADDAR.CRIDDAR'
      Size = 18
    end
    object Tb_DarCROBS: TMemoField
      FieldName = 'CROBS'
      Origin = 'SG_ASSOC.CADDAR.CROBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Tb_DarCRCOMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'CRCOMPETENCIA_DTINICIO'
      Origin = 'SG_ASSOC.CADDAR.CRCOMPETENCIA_DTINICIO'
    end
    object Tb_Darcompetencia_obs: TStringField
      FieldKind = fkCalculated
      FieldName = 'competencia_obs'
      Size = 200
      Calculated = True
    end
    object Tb_DarCRCOMPETENCIA_TIPO: TFloatField
      FieldName = 'CRCOMPETENCIA_TIPO'
      Origin = 'SG_ASSOC.CADDAR.CRCOMPETENCIA_TIPO'
    end
    object Tb_DarCRVALOR_ACRES: TFloatField
      FieldName = 'CRVALOR_ACRES'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR_ACRES'
    end
    object Tb_DarCRCHAVE_ID: TFloatField
      FieldName = 'CRCHAVE_ID'
      Origin = 'SG_ASSOC.CADDAR.CRCHAVE_ID'
    end
    object Tb_DarCRCHAVE_ID_ANO: TFloatField
      FieldName = 'CRCHAVE_ID_ANO'
      Origin = 'SG_ASSOC.CADDAR.CRCHAVE_ID_ANO'
    end
    object Tb_DarCRTDAJUSTE: TFloatField
      FieldName = 'CRQTDAJUSTE'
      Origin = 'SG_ASSOC.CADDAR.CRTDAJUSTE'
    end
    object Tb_DarCRDATAINCLUSAO: TDateTimeField
      FieldName = 'CRDATAINCLUSAO'
      Origin = 'SG_ASSOC.CADDAR.CRDATAINCLUSAO'
    end
    object Tb_DarCREXCLUSIVOPARA: TFloatField
      FieldName = 'CREXCLUSIVOPARA'
      Origin = 'SG_ASSOC.CADDAR.CREXCLUSIVOPARA'
    end
    object Tb_DarCRID_NEW: TFloatField
      FieldName = 'CRID_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_NEW'
    end
    object Tb_DarCRID_PED01_NEW: TFloatField
      FieldName = 'CRID_PED01_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_PED01_NEW'
    end
    object Tb_DarCRID_LDR_NEW: TFloatField
      FieldName = 'CRID_LDR_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_LDR_NEW'
    end
  end
  object Src_Dar: TDataSource
    DataSet = Tb_Dar
    Left = 210
    Top = 443
  end
  object Tb_Ns: TQuery
    CachedUpdates = True
    AfterInsert = Tb_NsAfterInsert
    BeforePost = Tb_NsBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_NsCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADNS where '
      'NSCODEMP  is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_NS
    Left = 373
    Top = 312
    object Tb_NsNSCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'NSCODEMP'
      Origin = 'SG_ASSOC.CADNS.NSCODEMP'
    end
    object Tb_NsNSNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NSNUMERO'
      Origin = 'SG_ASSOC.CADNS.NSNUMERO'
    end
    object Tb_NsNSSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NSSERIE'
      Origin = 'SG_ASSOC.CADNS.NSSERIE'
      Size = 6
    end
    object Tb_NsNSCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'NSCODCLI'
      Origin = 'SG_ASSOC.CADNS.NSCODCLI'
    end
    object Tb_NsNSDTEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'NSDTEMIS'
      Origin = 'SG_ASSOC.CADNS.NSDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_NsNSTOTNOTA: TFloatField
      DisplayLabel = 'Total da nota'
      FieldName = 'NSTOTNOTA'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOTA'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'NSCNPJ'
      Origin = 'SG_ASSOC.CADNS.NSCNPJ'
    end
    object Tb_NsNSIE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'NSIE'
      Origin = 'SG_ASSOC.CADNS.NSIE'
      Size = 30
    end
    object Tb_NsNSBASENI: TFloatField
      DisplayLabel = 'Base icms normal inalterado'
      FieldName = 'NSBASENI'
      Origin = 'SG_ASSOC.CADNS.NSBASENI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNI: TFloatField
      DisplayLabel = 'Icms inalterados'
      FieldName = 'NSICMSNI'
      Origin = 'SG_ASSOC.CADNS.NSICMSNI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASENP: TFloatField
      DisplayLabel = 'Base de Calculo normal positivo'
      FieldName = 'NSBASENP'
      Origin = 'SG_ASSOC.CADNS.NSBASENP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNP: TFloatField
      DisplayLabel = 'Icms normal positivo'
      FieldName = 'NSICMSNP'
      Origin = 'SG_ASSOC.CADNS.NSICMSNP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASENN: TFloatField
      DisplayLabel = 'Base icms normal negativo'
      FieldName = 'NSBASENN'
      Origin = 'SG_ASSOC.CADNS.NSBASENN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNN: TFloatField
      DisplayLabel = 'ICMS normal negativo'
      FieldName = 'NSICMSNN'
      Origin = 'SG_ASSOC.CADNS.NSICMSNN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASERI: TFloatField
      DisplayLabel = 'Base do Retido Inalterado'
      FieldName = 'NSBASERI'
      Origin = 'SG_ASSOC.CADNS.NSBASERI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSRI: TFloatField
      FieldName = 'NSICMSRI'
      Origin = 'SG_ASSOC.CADNS.NSICMSRI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASERP: TFloatField
      FieldName = 'NSBASERP'
      Origin = 'SG_ASSOC.CADNS.NSBASERP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSRP: TFloatField
      FieldName = 'NSICMSRP'
      Origin = 'SG_ASSOC.CADNS.NSICMSRP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASERN: TFloatField
      FieldName = 'NSBASERN'
      Origin = 'SG_ASSOC.CADNS.NSBASERN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSRN: TFloatField
      FieldName = 'NSICMSRN'
      Origin = 'SG_ASSOC.CADNS.NSICMSRN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSTOTPROI: TFloatField
      FieldName = 'NSTOTPROI'
      Origin = 'SG_ASSOC.CADNS.NSTOTPROI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSTOTPROP: TFloatField
      FieldName = 'NSTOTPROP'
      Origin = 'SG_ASSOC.CADNS.NSTOTPROP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSTOTPRON: TFloatField
      FieldName = 'NSTOTPRON'
      Origin = 'SG_ASSOC.CADNS.NSTOTPRON'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASENRI: TFloatField
      FieldName = 'NSBASENRI'
      Origin = 'SG_ASSOC.CADNS.NSBASENRI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNRI: TFloatField
      FieldName = 'NSICMSNRI'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASENRP: TFloatField
      FieldName = 'NSBASENRP'
      Origin = 'SG_ASSOC.CADNS.NSBASENRP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNRP: TFloatField
      FieldName = 'NSICMSNRP'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASENRN: TFloatField
      FieldName = 'NSBASENRN'
      Origin = 'SG_ASSOC.CADNS.NSBASENRN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSNRN: TFloatField
      FieldName = 'NSICMSNRN'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSALIQ: TFloatField
      FieldName = 'NSALIQ'
      Origin = 'SG_ASSOC.CADNS.NSALIQ'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSIPII: TFloatField
      FieldName = 'NSIPII'
      Origin = 'SG_ASSOC.CADNS.NSIPII'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSIPIP: TFloatField
      FieldName = 'NSIPIP'
      Origin = 'SG_ASSOC.CADNS.NSIPIP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSIPIN: TFloatField
      FieldName = 'NSIPIN'
      Origin = 'SG_ASSOC.CADNS.NSIPIN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSTOTISEN: TFloatField
      FieldName = 'NSTOTISEN'
      Origin = 'SG_ASSOC.CADNS.NSTOTISEN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSCHAVEP: TFloatField
      FieldName = 'NSCHAVEP'
      Origin = 'SG_ASSOC.CADNS.NSCHAVEP'
    end
    object Tb_Nsnomcfo1: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcfo1'
      Size = 40
      Calculated = True
    end
    object Tb_Nsnomcfo2: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcfo2'
      Size = 40
      Calculated = True
    end
    object Tb_Nsrazcli: TStringField
      DisplayLabel = 'Raz'#227'o Social do Cliente'
      FieldKind = fkCalculated
      FieldName = 'razcli'
      Size = 40
      Calculated = True
    end
    object Tb_NsNSCFO1: TStringField
      FieldName = 'NSCFO1'
      Origin = 'SG_ASSOC.CADNS.NSCFO1'
      Size = 6
    end
    object Tb_NsNSCFO2: TStringField
      FieldName = 'NSCFO2'
      Origin = 'SG_ASSOC.CADNS.NSCFO2'
      Size = 6
    end
    object Tb_NsNSTOTNOR: TFloatField
      FieldName = 'NSTOTNOR'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSTOTRET: TFloatField
      FieldName = 'NSTOTRET'
      Origin = 'SG_ASSOC.CADNS.NSTOTRET'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSBASEN: TFloatField
      FieldName = 'NSBASEN'
      Origin = 'SG_ASSOC.CADNS.NSBASEN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSICMSN: TFloatField
      FieldName = 'NSICMSN'
      Origin = 'SG_ASSOC.CADNS.NSICMSN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSALIQ2: TFloatField
      FieldName = 'NSALIQ2'
      Origin = 'SG_ASSOC.CADNS.NSALIQ2'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSPISCOFN: TFloatField
      FieldName = 'NSPISCOFN'
      Origin = 'SG_ASSOC.CADNS.NSPISCOFN'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSPISCOFR: TFloatField
      FieldName = 'NSPISCOFR'
      Origin = 'SG_ASSOC.CADNS.NSPISCOFR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_NsNSSUBSER: TStringField
      DisplayLabel = 'Sub-S'#233'rie'
      FieldName = 'NSSUBSER'
      Origin = 'SG_ASSOC.CADNS.NSSUBSER'
      Size = 3
    end
    object Tb_NsNSMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NSMODELO'
      Origin = 'SG_ASSOC.CADNS.NSMODELO'
      Size = 3
    end
    object Tb_NsNSTIPO: TFloatField
      FieldName = 'NSTIPO'
      Origin = 'SG_ASSOC.CADNS.NSTIPO'
    end
    object Tb_NsNSORDEMP: TFloatField
      FieldName = 'NSORDEMP'
      Origin = 'SG_ASSOC.CADNS.NSORDEMP'
    end
    object Tb_NsNSSTATUS: TFloatField
      FieldName = 'NSSTATUS'
      Origin = 'SG_ASSOC.CADNS.NSSTATUS'
    end
    object Tb_NsNSNUMCUP: TFloatField
      FieldName = 'NSNUMCUP'
      Origin = 'SG_ASSOC.CADNS.NSNUMCUP'
    end
    object Tb_NsNSDATCUP: TDateTimeField
      FieldName = 'NSDATCUP'
      Origin = 'SG_ASSOC.CADNS.NSDATCUP'
    end
    object Tb_NsNSCODUSR: TFloatField
      FieldName = 'NSCODUSR'
      Origin = 'SG_ASSOC.CADNS.NSCODUSR'
    end
    object Tb_NsNSDTALT: TDateTimeField
      FieldName = 'NSDTALT'
      Origin = 'SG_ASSOC.CADNS.NSDTALT'
    end
    object Tb_NsNSHRALT: TStringField
      FieldName = 'NSHRALT'
      Origin = 'SG_ASSOC.CADNS.NSHRALT'
      Size = 10
    end
    object Tb_NsNSCODECF: TFloatField
      FieldName = 'NSCODECF'
      Origin = 'SG_ASSOC.CADNS.NSCODECF'
    end
    object Tb_NsNSSITCUP: TFloatField
      FieldName = 'NSSITCUP'
      Origin = 'SG_ASSOC.CADNS.NSSITCUP'
    end
    object Tb_NsNSTOTOUT: TFloatField
      FieldName = 'NSTOTOUT'
      Origin = 'SG_ASSOC.CADNS.NSTOTOUT'
      DisplayFormat = '#,##0.00'
    end
    object Tb_Nsuf: TStringField
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Tb_NsNSLOTSEQ_CP: TFloatField
      FieldName = 'NSLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNS.NSLOTSEQ_CP'
    end
    object Tb_NsNSBCISSQN: TFloatField
      FieldName = 'NSBCISSQN'
      Origin = 'SG_ASSOC.CADNS.NSBCISSQN'
    end
    object Tb_NsNSVISSQN: TFloatField
      FieldName = 'NSVISSQN'
      Origin = 'SG_ASSOC.CADNS.NSVISSQN'
    end
    object Tb_NsNSSERIEECF: TStringField
      FieldName = 'NSSERIEECF'
      Origin = 'SG_ASSOC.CADNS.NSSERIEECF'
    end
    object Tb_NsNSCFOSER: TStringField
      FieldName = 'NSCFOSER'
      Origin = 'SG_ASSOC.CADNS.NSCFOSER'
      Size = 4
    end
    object Tb_NsNSMODECF: TStringField
      FieldName = 'NSMODECF'
      Origin = 'SG_ASSOC.CADNS.NSMODECF'
      Size = 2
    end
    object Tb_NsNSCUPACRE: TFloatField
      FieldName = 'NSCUPACRE'
      Origin = 'SG_ASSOC.CADNS.NSCUPACRE'
    end
    object Tb_NsNSCUPDES: TFloatField
      FieldName = 'NSCUPDES'
      Origin = 'SG_ASSOC.CADNS.NSCUPDES'
    end
    object Tb_NsNSLEMAT: TFloatField
      FieldName = 'NSLEMAT'
      Origin = 'SG_ASSOC.CADNS.NSLEMAT'
    end
    object Tb_NsNSFRETEPC: TFloatField
      FieldName = 'NSFRETEPC'
      Origin = 'SG_ASSOC.CADNS.NSFRETEPC'
    end
    object Tb_NsNSICMS_BCFRE: TFloatField
      FieldName = 'NSICMS_BCFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCFRE'
    end
    object Tb_NsNSICMS_ALFRE: TFloatField
      FieldName = 'NSICMS_ALFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALFRE'
    end
    object Tb_NsNSICMS_VLFRE: TFloatField
      FieldName = 'NSICMS_VLFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLFRE'
    end
    object Tb_NsNSICMS_BCSEG: TFloatField
      FieldName = 'NSICMS_BCSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCSEG'
    end
    object Tb_NsNSICMS_ALSEG: TFloatField
      FieldName = 'NSICMS_ALSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALSEG'
    end
    object Tb_NsNSICMS_VLSEG: TFloatField
      FieldName = 'NSICMS_VLSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLSEG'
    end
    object Tb_NsNSICMS_BCOUTD: TFloatField
      FieldName = 'NSICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCOUTD'
    end
    object Tb_NsNSICMS_ALOUTD: TFloatField
      FieldName = 'NSICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALOUTD'
    end
    object Tb_NsNSICMS_VLOUTD: TFloatField
      FieldName = 'NSICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLOUTD'
    end
    object Tb_NsNSICMS_BCIPI: TFloatField
      FieldName = 'NSICMS_BCIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCIPI'
    end
    object Tb_NsNSICMS_ALIPI: TFloatField
      FieldName = 'NSICMS_ALIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALIPI'
    end
    object Tb_NsNSICMS_VLIPI: TFloatField
      FieldName = 'NSICMS_VLIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLIPI'
    end
    object Tb_NsNSFRETE: TFloatField
      FieldName = 'NSFRETE'
      Origin = 'SG_ASSOC.CADNS.NSFRETE'
    end
    object Tb_NsNSTARBAN: TFloatField
      FieldName = 'NSTARBAN'
      Origin = 'SG_ASSOC.CADNS.NSTARBAN'
    end
    object Tb_NsNSNFCF: TFloatField
      FieldName = 'NSNFCF'
      Origin = 'SGE4.CADNS.NSNFCF'
    end
    object Tb_NsNSAVAP: TFloatField
      FieldName = 'NSAVAP'
      Origin = 'SG_ASSOC.CADNS.NSAVAP'
    end
    object Tb_NsNSEMITENTE: TStringField
      FieldName = 'NSEMITENTE'
      Origin = 'SG_ASSOC.CADNS.NSEMITENTE'
      Size = 1
    end
    object Tb_NsNSINFAD01: TStringField
      FieldName = 'NSINFAD01'
      Origin = 'SG_ASSOC.CADNS.NSINFAD01'
      Size = 136
    end
    object Tb_NsNSINFAD02: TStringField
      FieldName = 'NSINFAD02'
      Origin = 'SG_ASSOC.CADNS.NSINFAD02'
      Size = 136
    end
    object Tb_NsNSINFAD03: TStringField
      FieldName = 'NSINFAD03'
      Origin = 'SG_ASSOC.CADNS.NSINFAD03'
      Size = 136
    end
    object Tb_NsNSINFAD04: TStringField
      FieldName = 'NSINFAD04'
      Origin = 'SG_ASSOC.CADNS.NSINFAD04'
      Size = 136
    end
    object Tb_NsNSINFAD05: TStringField
      FieldName = 'NSINFAD05'
      Origin = 'SG_ASSOC.CADNS.NSINFAD05'
      Size = 136
    end
    object Tb_NsNSINFAD06: TStringField
      FieldName = 'NSINFAD06'
      Origin = 'SG_ASSOC.CADNS.NSINFAD06'
      Size = 136
    end
    object Tb_NsNSINFAD07: TStringField
      FieldName = 'NSINFAD07'
      Origin = 'SG_ASSOC.CADNS.NSINFAD07'
      Size = 136
    end
    object Tb_NsNSTPIMPRES: TFloatField
      FieldName = 'NSTPIMPRES'
      Origin = 'SG_ASSOC.CADNS.NSTPIMPRES'
    end
    object Tb_NsNSINFAD08: TStringField
      FieldName = 'NSINFAD08'
      Origin = 'SG_ASSOC.CADNS.NSINFAD08'
      Size = 136
    end
    object Tb_NsNSINFAD09: TStringField
      FieldName = 'NSINFAD09'
      Origin = 'SG_ASSOC.CADNS.NSINFAD09'
      Size = 136
    end
    object Tb_NsNSINFADFIS01: TStringField
      FieldName = 'NSINFADFIS01'
      Origin = 'SG_ASSOC.CADNS.NSINFADFIS01'
      Size = 120
    end
    object Tb_NsNSINFADFIS02: TStringField
      FieldName = 'NSINFADFIS02'
      Origin = 'SG_ASSOC.CADNS.NSINFADFIS02'
      Size = 120
    end
    object Tb_NsNSNFE_CHAVEACESSO: TStringField
      FieldName = 'NSNFE_CHAVEACESSO'
      Origin = 'SG_ASSOC.CADNS.NSNFE_CHAVEACESSO'
      Size = 50
    end
    object Tb_NsNSNFE_DCHAVEACESSO: TStringField
      FieldName = 'NSNFE_DCHAVEACESSO'
      Origin = 'SG_ASSOC.CADNS.NSNFE_DCHAVEACESSO'
      Size = 1
    end
    object Tb_NsNSNFE_NRECIBO: TStringField
      FieldName = 'NSNFE_NRECIBO'
      Origin = 'SG_ASSOC.CADNS.NSNFE_NRECIBO'
    end
    object Tb_NsNSNFE_DH_RECIBO: TStringField
      FieldName = 'NSNFE_DH_RECIBO'
      Origin = 'SG_ASSOC.CADNS.NSNFE_DH_RECIBO'
    end
    object Tb_NsNSNFE_STAT_REC: TStringField
      FieldName = 'NSNFE_STAT_REC'
      Origin = 'SG_ASSOC.CADNS.NSNFE_STAT_REC'
      Size = 4
    end
    object Tb_NsNSNFE_LOTENV: TStringField
      FieldName = 'NSNFE_LOTENV'
      Origin = 'SG_ASSOC.CADNS.NSNFE_LOTENV'
    end
    object Tb_NsNSNFE_NOMARQLOT: TStringField
      FieldName = 'NSNFE_NOMARQLOT'
      Origin = 'SG_ASSOC.CADNS.NSNFE_NOMARQLOT'
      Size = 100
    end
    object Tb_NsNSNFE_NOMARQREC: TStringField
      FieldName = 'NSNFE_NOMARQREC'
      Origin = 'SG_ASSOC.CADNS.NSNFE_NOMARQREC'
      Size = 100
    end
    object Tb_NsNSNFE_CONTIGENCIA: TFloatField
      FieldName = 'NSNFE_CONTIGENCIA'
      Origin = 'SG_ASSOC.CADNS.NSNFE_CONTIGENCIA'
    end
    object Tb_NsNSNFE_DH_CONTIGENCIA: TDateTimeField
      FieldName = 'NSNFE_DH_CONTIGENCIA'
      Origin = 'SG_ASSOC.CADNS.NSNFE_DH_CONTIGENCIA'
    end
    object Tb_NsNSRED_BCISSQN: TFloatField
      FieldName = 'NSRED_BCISSQN'
      Origin = 'SG_ASSOC.CADNS.NSRED_BCISSQN'
    end
    object Tb_NsNSBCINSS: TFloatField
      FieldName = 'NSBCINSS'
      Origin = 'SG_ASSOC.CADNS.NSBCINSS'
    end
    object Tb_NsNSRED_BCINSS: TFloatField
      FieldName = 'NSRED_BCINSS'
      Origin = 'SG_ASSOC.CADNS.NSRED_BCINSS'
    end
    object Tb_NsNSVINSS: TFloatField
      FieldName = 'NSVINSS'
      Origin = 'SG_ASSOC.CADNS.NSVINSS'
    end
    object Tb_NsNSBCIRRF: TFloatField
      FieldName = 'NSBCIRRF'
      Origin = 'SG_ASSOC.CADNS.NSBCIRRF'
    end
    object Tb_NsNSRED_BCIRRF: TFloatField
      FieldName = 'NSRED_BCIRRF'
      Origin = 'SG_ASSOC.CADNS.NSRED_BCIRRF'
    end
    object Tb_NsNSVIRRF: TFloatField
      FieldName = 'NSVIRRF'
      Origin = 'SG_ASSOC.CADNS.NSVIRRF'
    end
    object Tb_NsNSNFE_STATUS: TStringField
      FieldName = 'NSNFE_STATUS'
      Origin = 'SG_ASSOC.CADNS.NSNFE_STATUS'
      Size = 4
    end
    object Tb_NsNSNFE_STAT_PROT: TStringField
      FieldName = 'NSNFE_STAT_PROT'
      Origin = 'SG_ASSOC.CADNS.NSNFE_STAT_PROT'
      Size = 4
    end
    object Tb_NsNSNFE_DIGVAL: TStringField
      FieldName = 'NSNFE_DIGVAL'
      Origin = 'SG_ASSOC.CADNS.NSNFE_DIGVAL'
      Size = 40
    end
    object Tb_NsNSNFE_NUMPROT: TStringField
      FieldName = 'NSNFE_NUMPROT'
      Origin = 'SG_ASSOC.CADNS.NSNFE_NUMPROT'
      Size = 30
    end
    object Tb_NsNSFRETE_ALIQ: TFloatField
      FieldName = 'NSFRETE_ALIQ'
      Origin = 'SG_ASSOC.CADNS.NSFRETE_ALIQ'
    end
    object Tb_NsNSFRETE_ICMS: TFloatField
      FieldName = 'NSFRETE_ICMS'
      Origin = 'SG_ASSOC.CADNS.NSFRETE_ICMS'
    end
    object Tb_NsNSNFSERV_DATHORREC: TDateTimeField
      FieldName = 'NSNFSERV_DATHORREC'
      Origin = 'SG_ASSOC.CADNS.NSNFSERV_DATHORREC'
    end
    object Tb_NsNSNFSERV_DATHORCANC: TDateTimeField
      FieldName = 'NSNFSERV_DATHORCANC'
      Origin = 'SG_ASSOC.CADNS.NSNFSERV_DATHORCANC'
    end
    object Tb_NsNSNFSERV_LOTE: TFloatField
      FieldName = 'NSNFSERV_LOTE'
      Origin = 'SG_ASSOC.CADNS.NSNFSERV_LOTE'
    end
    object Tb_NsNSNFSERV_PROTOCOLO: TStringField
      FieldName = 'NSNFSERV_PROTOCOLO'
      Origin = 'SG_ASSOC.CADNS.NSNFSERV_PROTOCOLO'
      Size = 50
    end
    object Tb_NsNSNFSERV_NUMNF: TFloatField
      FieldName = 'NSNFSERV_NUMNF'
      Origin = 'SG_ASSOC.CADNS.NSNFSERV_NUMNF'
    end
    object Tb_Nsnfes_data_hora_rec: TStringField
      FieldKind = fkCalculated
      FieldName = 'nfes_data_hora_rec'
      Size = 25
      Calculated = True
    end
    object Tb_Nsnfes_data_hora_canc: TStringField
      FieldKind = fkCalculated
      FieldName = 'nfes_data_hora_canc'
      Size = 25
      Calculated = True
    end
    object Tb_NsNSNFE_VERAPLIC: TStringField
      FieldName = 'NSNFE_VERAPLIC'
      Origin = 'SG_ASSOC.CADNS.NSNFE_VERAPLIC'
      Size = 10
    end
    object Tb_NsNSNFE_INFPRODID: TStringField
      FieldName = 'NSNFE_INFPRODID'
      Origin = 'SG_ASSOC.CADNS.NSNFE_INFPRODID'
      Size = 10
    end
    object Tb_NsNSCHAVEP_NIVEL: TFloatField
      FieldName = 'NSCHAVEP_NIVEL'
      Origin = 'SG_ASSOC.CADNS.NSCHAVEP_NIVEL'
    end
    object Tb_NsNSNFE_TPEMIS: TFloatField
      FieldName = 'NSNFE_TPEMIS'
      Origin = 'SG_ASSOC.CADNS.NSNFE_TPEMIS'
    end
    object Tb_NsNSTIPDOC: TStringField
      FieldName = 'NSTIPDOC'
      Origin = 'SG_ASSOC.CADNS.NSTIPDOC'
      Size = 5
    end
    object Tb_NsNSDATHOR_CANC: TDateTimeField
      FieldName = 'NSDATHOR_CANC'
      Origin = 'SG_ASSOC.CADNS.NSDATHOR_CANC'
    end
    object Tb_NsNSXML_NPROT_CANC: TStringField
      FieldName = 'NSXML_NPROT_CANC'
      Origin = 'SG_ASSOC.CADNS.NSXML_NPROT_CANC'
      Size = 15
    end
    object Tb_NsNSDATHOR_INUT: TDateTimeField
      FieldName = 'NSDATHOR_INUT'
      Origin = 'SG_ASSOC.CADNS.NSDATHOR_INUT'
    end
    object Tb_NsNSXML_NPROT_INUT: TStringField
      FieldName = 'NSXML_NPROT_INUT'
      Origin = 'SG_ASSOC.CADNS.NSXML_NPROT_INUT'
      Size = 15
    end
    object Tb_NsNSDATHOR_DENEG: TDateTimeField
      FieldName = 'NSDATHOR_DENEG'
    end
    object Tb_NsNSXML_NPROT_DENEG: TStringField
      FieldName = 'NSXML_NPROT_DENEG'
      Size = 15
    end
    object Tb_NsNSNFCE_DATA: TDateTimeField
      FieldName = 'NSNFCE_DATA'
    end
    object Tb_NsNSNFCE_NUMERO: TFloatField
      FieldName = 'NSNFCE_NUMERO'
    end
    object Tb_NsNSNFCE_CHV_ACESSO: TStringField
      FieldName = 'NSNFCE_CHV_ACESSO'
      Size = 44
    end
    object Tb_NsNSNFCE_SERIE: TStringField
      FieldName = 'NSNFCE_SERIE'
      Size = 3
    end
    object Tb_NsNSNFCE_MODELO: TStringField
      FieldName = 'NSNFCE_MODELO'
      Size = 3
    end
    object Tb_NsNSNFCE_NPROT: TStringField
      FieldName = 'NSNFCE_NPROT'
      Size = 15
    end
    object Tb_NsNSNFCE_SITUACAO: TFloatField
      FieldName = 'NSNFCE_SITUACAO'
    end
    object Tb_NsNSINFAD10: TMemoField
      FieldName = 'NSINFAD10'
      BlobType = ftMemo
    end
    object Tb_NsNSID_NEW: TFloatField
      FieldName = 'NSID_NEW'
    end
    object Tb_NsNSID_PED01_NEW: TFloatField
      FieldName = 'NSID_PED01_NEW'
    end
    object Tb_Nsinfo_emissao: TStringField
      FieldKind = fkCalculated
      FieldName = 'info_emissao'
      Size = 254
      Calculated = True
    end
    object Tb_NsNSNFSERV_SERIE: TStringField
      FieldName = 'NSNFSERV_SERIE'
      Size = 6
    end
    object Tb_NsNSNFSERV_NUMNF_RPS: TFloatField
      FieldName = 'NSNFSERV_NUMNF_RPS'
    end
  end
  object Src_NS: TDataSource
    DataSet = Tb_Ns
    Left = 429
    Top = 312
  end
  object Tb_Tra: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TraBeforeInsert
    AfterInsert = Tb_TraAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRA where'
      'TRCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Tra
    Left = 687
    Top = 402
    object Tb_TraTRCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'TRCODEMP'
      Origin = 'SG_ASSOC.CADTRA.TRCODEMP'
    end
    object Tb_TraTRCODTRA: TFloatField
      DisplayLabel = 'C'#243'digo da Transportadora'
      FieldName = 'TRCODTRA'
      Origin = 'SG_ASSOC.CADTRA.TRCODTRA'
    end
    object Tb_TraTRRAZTRA: TStringField
      DisplayLabel = 'Razao Social Transportadora'
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
    object Tb_TraTRFANTRA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'TRFANTRA'
      Origin = 'SG_ASSOC.CADTRA.TRFANTRA'
      Size = 40
    end
    object Tb_TraTRTPLOG: TStringField
      DisplayLabel = 'Tipo Log'
      FieldName = 'TRTPLOG'
      Origin = 'SG_ASSOC.CADTRA.TRTPLOG'
      Size = 5
    end
    object Tb_TraTRCOMPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'TRCOMPL'
      Origin = 'SG_ASSOC.CADTRA.TRCOMPL'
      Size = 30
    end
    object Tb_TraTRCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo do Bairo'
      FieldName = 'TRCODBAI'
      Origin = 'SG_ASSOC.CADTRA.TRCODBAI'
    end
    object Tb_TraTRCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo da Cidade'
      FieldName = 'TRCODLOC'
      Origin = 'SG_ASSOC.CADTRA.TRCODLOC'
    end
    object Tb_TraTRCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'TRCEP'
      Origin = 'SG_ASSOC.CADTRA.TRCEP'
      EditMask = '99999-999;1; '
      Size = 9
    end
    object Tb_TraTRCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'TRCNPJ'
      Origin = 'SG_ASSOC.CADTRA.TRCNPJ'
      DisplayFormat = '00"."000"."000"/"0000"-"00'
      EditFormat = '###############'
    end
    object Tb_TraTRIE: TStringField
      DisplayLabel = 'Inscricao Estadual'
      FieldName = 'TRIE'
      Origin = 'SG_ASSOC.CADTRA.TRIE'
    end
    object Tb_TraTROBS: TStringField
      DisplayLabel = 'Observacoes'
      FieldName = 'TROBS'
      Origin = 'SG_ASSOC.CADTRA.TROBS'
      Size = 200
    end
    object Tb_TraTRDTCAD: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'TRDTCAD'
      Origin = 'SG_ASSOC.CADTRA.TRDTCAD'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_Tranomcid: TStringField
      DisplayLabel = 'Nome da Cidade'
      FieldKind = fkCalculated
      FieldName = 'nomcid'
      Size = 40
      Calculated = True
    end
    object Tb_Tranombai: TStringField
      DisplayLabel = 'Nome do Bairro'
      FieldKind = fkCalculated
      FieldName = 'nombai'
      Size = 40
      Calculated = True
    end
    object Tb_Trauftra: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkCalculated
      FieldName = 'uftra'
      Size = 2
      Calculated = True
    end
    object Tb_TraTRCNPF: TFloatField
      FieldName = 'TRCNPF'
      Origin = 'SG_ASSOC.CADTRA.TRCNPF'
      DisplayFormat = '000"."000"."000"-"00'
      EditFormat = '############'
    end
    object Tb_TraTRRG: TStringField
      FieldName = 'TRRG'
      Origin = 'SG_ASSOC.CADTRA.TRRG'
      Size = 30
    end
    object Tb_TraTRBAIRRO: TStringField
      FieldName = 'TRBAIRRO'
      Origin = 'SG_ASSOC.CADTRA.TRBAIRRO'
      Size = 30
    end
    object Tb_TraTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'SG_ASSOC.CADTRA.TRCIDADE'
      Size = 30
    end
    object Tb_TraTRNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'TRNUM'
      Origin = 'SG_ASSOC.CADTRA.TRNUM'
    end
    object Tb_TraTRUF: TStringField
      FieldName = 'TRUF'
      Origin = 'SG_ASSOC.CADTRA.TRUF'
      Size = 2
    end
    object Tb_TraTRPLACAV: TStringField
      FieldName = 'TRPLACAV'
      Origin = 'SG_ASSOC.CADTRA.TRPLACAV'
      Size = 8
    end
    object Tb_TraTRUFPV: TStringField
      FieldName = 'TRUFPV'
      Origin = 'SG_ASSOC.CADTRA.TRUFPV'
      Size = 2
    end
    object Tb_TraTRSTATUS: TFloatField
      FieldName = 'TRSTATUS'
      Origin = 'SG_ASSOC.CADTRA.TRSTATUS'
    end
    object Tb_TraTRNLOG: TStringField
      FieldName = 'TRNLOG'
      Origin = 'SG_ASSOC.CADTRA.TRNLOG'
      Size = 42
    end
    object Tb_TraTRFONE: TStringField
      FieldName = 'TRFONE'
      Origin = 'SG_ASSOC.CADTRA.TRFONE'
      EditMask = '(9999)9999-9999;1; '
    end
    object Tb_TraTRFAX: TStringField
      FieldName = 'TRFAX'
      Origin = 'SG_ASSOC.CADTRA.TRFAX'
      EditMask = '(9999)9999-9999;1; '
    end
    object Tb_TraTREMAIL: TStringField
      FieldName = 'TREMAIL'
      Origin = 'SG_ASSOC.CADTRA.TREMAIL'
      Size = 60
    end
    object Tb_TraTRHOME: TStringField
      FieldName = 'TRHOME'
      Origin = 'SG_ASSOC.CADTRA.TRHOME'
      Size = 60
    end
    object Tb_TraTRCODUSR_INC: TFloatField
      FieldName = 'TRCODUSR_INC'
      Origin = 'SG_ASSOC.CADTRA.TRCODUSR_INC'
    end
    object Tb_TraTRDATHOR_ALT: TDateTimeField
      FieldName = 'TRDATHOR_ALT'
      Origin = 'SG_ASSOC.CADTRA.TRDATHOR_ALT'
    end
    object Tb_TraTRCODUSR_ALT: TFloatField
      FieldName = 'TRCODUSR_ALT'
      Origin = 'SG_ASSOC.CADTRA.TRCODUSR_ALT'
    end
    object Tb_TraTRCNPJ_CONSISTE: TStringField
      FieldName = 'TRCNPJ_CONSISTE'
      Origin = 'SG_ASSOC.CADTRA.TRCNPJ_CONSISTE'
      Size = 1
    end
    object Tb_TraTRCODBLOQ: TFloatField
      FieldName = 'TRCODBLOQ'
      Origin = 'SG_ASSOC.CADTRA.TRCODBLOQ'
    end
    object Tb_TraTRDATHOR_BLOQ: TDateTimeField
      FieldName = 'TRDATHOR_BLOQ'
      Origin = 'SG_ASSOC.CADTRA.TRDATHOR_BLOQ'
    end
    object Tb_TraTRMOTBLOQ: TStringField
      FieldName = 'TRMOTBLOQ'
      Origin = 'SG_ASSOC.CADTRA.TRMOTBLOQ'
      Size = 50
    end
    object Tb_TraTRNUMAVMUN: TStringField
      FieldName = 'TRNUMAVMUN'
      Origin = 'SG_ASSOC.CADTRA.TRNUMAVMUN'
    end
    object Tb_TraTRDTAVNUM: TDateTimeField
      FieldName = 'TRDTAVNUM'
      Origin = 'SG_ASSOC.CADTRA.TRDTAVNUM'
    end
    object Tb_TraTRNUMCE: TStringField
      FieldName = 'TRNUMCE'
      Origin = 'SG_ASSOC.CADTRA.TRNUMCE'
    end
    object Tb_TraTRDTVCE: TDateTimeField
      FieldName = 'TRDTVCE'
      Origin = 'SG_ASSOC.CADTRA.TRDTVCE'
    end
    object Tb_TraTRNUMPS: TStringField
      FieldName = 'TRNUMPS'
      Origin = 'SG_ASSOC.CADTRA.TRNUMPS'
    end
    object Tb_TraTRDTVPS: TDateTimeField
      FieldName = 'TRDTVPS'
      Origin = 'SG_ASSOC.CADTRA.TRDTVPS'
    end
    object Tb_TraTRNUMS: TStringField
      FieldName = 'TRNUMS'
      Origin = 'SG_ASSOC.CADTRA.TRNUMS'
    end
    object Tb_TraTRDTVS: TDateTimeField
      FieldName = 'TRDTVS'
      Origin = 'SG_ASSOC.CADTRA.TRDTVS'
    end
    object Tb_TraTRNUMCS: TStringField
      FieldName = 'TRNUMCS'
      Origin = 'SG_ASSOC.CADTRA.TRNUMCS'
    end
    object Tb_TraTRDTVCS: TDateTimeField
      FieldName = 'TRDTVCS'
      Origin = 'SG_ASSOC.CADTRA.TRDTVCS'
    end
  end
  object Src_Tra: TDataSource
    DataSet = Tb_Tra
    Left = 743
    Top = 402
  end
  object Tb_Bco: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_BcoBeforeInsert
    AfterInsert = Tb_BcoAfterInsert
    OnCalcFields = Tb_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADBCO where '
      'BCCODEMP  is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Bco
    Left = 64
    Top = 176
    object Tb_BcoBCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'BCCODEMP'
      Origin = 'SG_ASSOC.CADBCO.BCCODEMP'
    end
    object Tb_BcoBCCODBCO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BCCODBCO'
      Origin = 'SG_ASSOC.CADBCO.BCCODBCO'
    end
    object Tb_BcoBCBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
      Size = 40
    end
    object Tb_BcoBCCONT: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'BCCONT'
      Origin = 'SG_ASSOC.CADBCO.BCCONT'
      Size = 25
    end
    object Tb_BcoBCFONE: TStringField
      DisplayLabel = 'Telefone Contato'
      FieldName = 'BCFONE'
      Origin = 'SG_ASSOC.CADBCO.BCFONE'
    end
    object Tb_BcoBCCODAGE: TStringField
      DisplayLabel = 'Agencia'
      FieldName = 'BCCODAGE'
      Origin = 'SG_ASSOC.CADBCO.BCCODAGE'
      Size = 10
    end
    object Tb_BcoBCDIGAGE: TStringField
      DisplayLabel = 'Digito Agencia'
      FieldName = 'BCDIGAGE'
      Origin = 'SG_ASSOC.CADBCO.BCDIGAGE'
      Size = 2
    end
    object Tb_BcoBCNOMAGE: TStringField
      DisplayLabel = 'Nome Agencia'
      FieldName = 'BCNOMAGE'
      Origin = 'SG_ASSOC.CADBCO.BCNOMAGE'
    end
    object Tb_BcoBCNUMCON: TStringField
      DisplayLabel = 'N'#250'mero Convenio'
      FieldName = 'BCNUMCON'
      Origin = 'SG_ASSOC.CADBCO.BCNUMCON'
    end
    object Tb_BcoBCCODCAR: TStringField
      DisplayLabel = 'Codigo Carteira'
      FieldName = 'BCCODCAR'
      Origin = 'SG_ASSOC.CADBCO.BCCODCAR'
      Size = 10
    end
    object Tb_BcoBCDIGCON: TStringField
      DisplayLabel = 'D'#237'gito Convenio'
      FieldName = 'BCDIGCON'
      Origin = 'SG_ASSOC.CADBCO.BCDIGCON'
      Size = 2
    end
    object Tb_BcoBCINST01: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 1'
      FieldName = 'BCINST01'
      Origin = 'SG_ASSOC.CADBCO.BCINST01'
      Size = 60
    end
    object Tb_BcoBCNUMBOL: TFloatField
      DisplayLabel = 'N'#250'mero Boleta'
      FieldName = 'BCNUMBOL'
      Origin = 'SG_ASSOC.CADBCO.BCNUMBOL'
    end
    object Tb_BcoBCINST02: TStringField
      DisplayLabel = 'Instru'#231#227'o Linha 2'
      FieldName = 'BCINST02'
      Origin = 'SG_ASSOC.CADBCO.BCINST02'
      Size = 60
    end
    object Tb_BcoBCINST03: TStringField
      DisplayLabel = 'Instru'#231#227'o Linha 3'
      FieldName = 'BCINST03'
      Origin = 'SG_ASSOC.CADBCO.BCINST03'
      Size = 60
    end
    object Tb_BcoBCINST04: TStringField
      DisplayLabel = 'Instru'#231#227'o Linha 4'
      FieldName = 'BCINST04'
      Origin = 'SG_ASSOC.CADBCO.BCINST04'
      Size = 60
    end
    object Tb_BcoBCCODCED: TStringField
      DisplayLabel = 'C'#243'digo Cedente'
      DisplayWidth = 12
      FieldName = 'BCCODCED'
      Origin = 'SG_ASSOC.CADBCO.BCCODCED'
      Size = 12
    end
    object Tb_BcoBCDIGCED: TStringField
      DisplayLabel = 'Digito Cedente'
      FieldName = 'BCDIGCED'
      Origin = 'SG_ASSOC.CADBCO.BCDIGCED'
      Size = 2
    end
    object Tb_BcoBCNUMBCO: TFloatField
      DisplayLabel = 'N'#250'mero do Banco'
      FieldName = 'BCNUMBCO'
      Origin = 'SG_ASSOC.CADBCO.BCNUMBCO'
    end
    object Tb_BcoBCDIGNCO: TStringField
      DisplayLabel = 'Digito Convenio'
      FieldName = 'BCDIGNCO'
      Origin = 'SG_ASSOC.CADBCO.BCDIGNCO'
      Size = 1
    end
    object Tb_BcoBCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'BCSALDO'
      Origin = 'SG_ASSOC.CADBCO.BCSALDO'
    end
    object Tb_BcoBCSALDOI: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'BCSALDOI'
      Origin = 'SG_ASSOC.CADBCO.BCSALDOI'
    end
    object Tb_BcoBCCH_IV: TFloatField
      FieldName = 'BCCH_IV'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IV'
    end
    object Tb_BcoBCCH_VL: TFloatField
      FieldName = 'BCCH_VL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_VL'
    end
    object Tb_BcoBCCH_VC: TFloatField
      FieldName = 'BCCH_VC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_VC'
    end
    object Tb_BcoBCCH_IEXL1: TFloatField
      FieldName = 'BCCH_IEXL1'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IEXL1'
    end
    object Tb_BcoBCCH_EXL1L: TFloatField
      FieldName = 'BCCH_EXL1L'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL1L'
    end
    object Tb_BcoBCCH_EXL1C: TFloatField
      FieldName = 'BCCH_EXL1C'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL1C'
    end
    object Tb_BcoBCCH_EXL1T: TFloatField
      FieldName = 'BCCH_EXL1T'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL1T'
    end
    object Tb_BcoBCCH_IEXL2: TFloatField
      FieldName = 'BCCH_IEXL2'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IEXL2'
    end
    object Tb_BcoBCCH_EXL2L: TFloatField
      FieldName = 'BCCH_EXL2L'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL2L'
    end
    object Tb_BcoBCCH_EXL2C: TFloatField
      FieldName = 'BCCH_EXL2C'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL2C'
    end
    object Tb_BcoBCCH_EXL2T: TFloatField
      FieldName = 'BCCH_EXL2T'
      Origin = 'SG_ASSOC.CADBCO.BCCH_EXL2T'
    end
    object Tb_BcoBCCH_INOM: TFloatField
      FieldName = 'BCCH_INOM'
      Origin = 'SG_ASSOC.CADBCO.BCCH_INOM'
    end
    object Tb_BcoBCCH_NOML: TFloatField
      FieldName = 'BCCH_NOML'
      Origin = 'SG_ASSOC.CADBCO.BCCH_NOML'
    end
    object Tb_BcoBCCH_NOMC: TFloatField
      FieldName = 'BCCH_NOMC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_NOMC'
    end
    object Tb_BcoBCCH_ICID: TFloatField
      FieldName = 'BCCH_ICID'
      Origin = 'SG_ASSOC.CADBCO.BCCH_ICID'
    end
    object Tb_BcoBCCH_CIDL: TFloatField
      FieldName = 'BCCH_CIDL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_CIDL'
    end
    object Tb_BcoBCCH_CIDC: TFloatField
      FieldName = 'BCCH_CIDC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_CIDC'
    end
    object Tb_BcoBCCH_IDIA: TFloatField
      FieldName = 'BCCH_IDIA'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IDIA'
    end
    object Tb_BcoBCCH_DIAL: TFloatField
      FieldName = 'BCCH_DIAL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_DIAL'
    end
    object Tb_BcoBCCH_DIAC: TFloatField
      FieldName = 'BCCH_DIAC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_DIAC'
    end
    object Tb_BcoBCCH_IMES: TFloatField
      FieldName = 'BCCH_IMES'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IMES'
    end
    object Tb_BcoBCCH_MESL: TFloatField
      FieldName = 'BCCH_MESL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_MESL'
    end
    object Tb_BcoBCCH_MESC: TFloatField
      FieldName = 'BCCH_MESC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_MESC'
    end
    object Tb_BcoBCCH_IANO: TFloatField
      FieldName = 'BCCH_IANO'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IANO'
    end
    object Tb_BcoBCCH_ANOL: TFloatField
      FieldName = 'BCCH_ANOL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_ANOL'
    end
    object Tb_BcoBCCH_ANOC: TFloatField
      FieldName = 'BCCH_ANOC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_ANOC'
    end
    object Tb_BcoBCCH_IBOMP: TFloatField
      FieldName = 'BCCH_IBOMP'
      Origin = 'SG_ASSOC.CADBCO.BCCH_IBOMP'
    end
    object Tb_BcoBCCH_BOMPL: TFloatField
      FieldName = 'BCCH_BOMPL'
      Origin = 'SG_ASSOC.CADBCO.BCCH_BOMPL'
    end
    object Tb_BcoBCCH_BOMPC: TFloatField
      FieldName = 'BCCH_BOMPC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_BOMPC'
    end
    object Tb_BcoBCCH_QTDLC: TFloatField
      FieldName = 'BCCH_QTDLC'
      Origin = 'SG_ASSOC.CADBCO.BCCH_QTDLC'
    end
    object Tb_BcoBCCH_QTDLP: TFloatField
      FieldName = 'BCCH_QTDLP'
      Origin = 'SG_ASSOC.CADBCO.BCCH_QTDLP'
    end
    object Tb_BcoBCB_LOCP: TStringField
      FieldName = 'BCB_LOCP'
      Origin = 'SG_ASSOC.CADBCO.BCB_LOCP'
      Size = 60
    end
    object Tb_BcoBCB_ESPD: TStringField
      FieldName = 'BCB_ESPD'
      Origin = 'SG_ASSOC.CADBCO.BCB_ESPD'
      Size = 5
    end
    object Tb_BcoBCB_ACEITE: TStringField
      FieldName = 'BCB_ACEITE'
      Origin = 'SG_ASSOC.CADBCO.BCB_ACEITE'
      Size = 5
    end
    object Tb_BcoBCB_QTDLP: TFloatField
      FieldName = 'BCB_QTDLP'
      Origin = 'SG_ASSOC.CADBCO.BCB_QTDLP'
    end
    object Tb_BcoBCB_QTDL: TFloatField
      FieldName = 'BCB_QTDL'
      Origin = 'SG_ASSOC.CADBCO.BCB_QTDL'
    end
    object Tb_BcoBCB_ILP: TFloatField
      FieldName = 'BCB_ILP'
      Origin = 'SG_ASSOC.CADBCO.BCB_ILP'
    end
    object Tb_BcoBCB_LPL: TFloatField
      FieldName = 'BCB_LPL'
      Origin = 'SG_ASSOC.CADBCO.BCB_LPL'
    end
    object Tb_BcoBCB_LPC: TFloatField
      FieldName = 'BCB_LPC'
      Origin = 'SG_ASSOC.CADBCO.BCB_LPC'
    end
    object Tb_BcoBCB_IVC: TFloatField
      FieldName = 'BCB_IVC'
      Origin = 'SG_ASSOC.CADBCO.BCB_IVC'
    end
    object Tb_BcoBCB_VCL: TFloatField
      FieldName = 'BCB_VCL'
      Origin = 'SG_ASSOC.CADBCO.BCB_VCL'
    end
    object Tb_BcoBCB_VCC: TFloatField
      FieldName = 'BCB_VCC'
      Origin = 'SG_ASSOC.CADBCO.BCB_VCC'
    end
    object Tb_BcoBCB_IDE: TFloatField
      FieldName = 'BCB_IDE'
      Origin = 'SG_ASSOC.CADBCO.BCB_IDE'
    end
    object Tb_BcoBCB_DEL: TFloatField
      FieldName = 'BCB_DEL'
      Origin = 'SG_ASSOC.CADBCO.BCB_DEL'
    end
    object Tb_BcoBCB_DEC: TFloatField
      FieldName = 'BCB_DEC'
      Origin = 'SG_ASSOC.CADBCO.BCB_DEC'
    end
    object Tb_BcoBCB_IND: TFloatField
      FieldName = 'BCB_IND'
      Origin = 'SG_ASSOC.CADBCO.BCB_IND'
    end
    object Tb_BcoBCB_NDL: TFloatField
      FieldName = 'BCB_NDL'
      Origin = 'SG_ASSOC.CADBCO.BCB_NDL'
    end
    object Tb_BcoBCB_NDC: TFloatField
      FieldName = 'BCB_NDC'
      Origin = 'SG_ASSOC.CADBCO.BCB_NDC'
    end
    object Tb_BcoBCB_IED: TFloatField
      FieldName = 'BCB_IED'
      Origin = 'SG_ASSOC.CADBCO.BCB_IED'
    end
    object Tb_BcoBCB_EDL: TFloatField
      FieldName = 'BCB_EDL'
      Origin = 'SG_ASSOC.CADBCO.BCB_EDL'
    end
    object Tb_BcoBCB_EDC: TFloatField
      FieldName = 'BCB_EDC'
      Origin = 'SG_ASSOC.CADBCO.BCB_EDC'
    end
    object Tb_BcoBCB_IAC: TFloatField
      FieldName = 'BCB_IAC'
      Origin = 'SG_ASSOC.CADBCO.BCB_IAC'
    end
    object Tb_BcoBCB_ACL: TFloatField
      FieldName = 'BCB_ACL'
      Origin = 'SG_ASSOC.CADBCO.BCB_ACL'
    end
    object Tb_BcoBCB_ACC: TFloatField
      FieldName = 'BCB_ACC'
      Origin = 'SG_ASSOC.CADBCO.BCB_ACC'
    end
    object Tb_BcoBCB_IDP: TFloatField
      FieldName = 'BCB_IDP'
      Origin = 'SG_ASSOC.CADBCO.BCB_IDP'
    end
    object Tb_BcoBCB_DPL: TFloatField
      FieldName = 'BCB_DPL'
      Origin = 'SG_ASSOC.CADBCO.BCB_DPL'
    end
    object Tb_BcoBCB_DPC: TFloatField
      FieldName = 'BCB_DPC'
      Origin = 'SG_ASSOC.CADBCO.BCB_DPC'
    end
    object Tb_BcoBCB_IEM: TFloatField
      FieldName = 'BCB_IEM'
      Origin = 'SG_ASSOC.CADBCO.BCB_IEM'
    end
    object Tb_BcoBCB_EML: TFloatField
      FieldName = 'BCB_EML'
      Origin = 'SG_ASSOC.CADBCO.BCB_EML'
    end
    object Tb_BcoBCB_EMC: TFloatField
      FieldName = 'BCB_EMC'
      Origin = 'SG_ASSOC.CADBCO.BCB_EMC'
    end
    object Tb_BcoBCB_IQM: TFloatField
      FieldName = 'BCB_IQM'
      Origin = 'SG_ASSOC.CADBCO.BCB_IQM'
    end
    object Tb_BcoBCB_QML: TFloatField
      FieldName = 'BCB_QML'
      Origin = 'SG_ASSOC.CADBCO.BCB_QML'
    end
    object Tb_BcoBCB_QMC: TFloatField
      FieldName = 'BCB_QMC'
      Origin = 'SG_ASSOC.CADBCO.BCB_QMC'
    end
    object Tb_BcoBCB_IVM: TFloatField
      FieldName = 'BCB_IVM'
      Origin = 'SG_ASSOC.CADBCO.BCB_IVM'
    end
    object Tb_BcoBCB_VML: TFloatField
      FieldName = 'BCB_VML'
      Origin = 'SG_ASSOC.CADBCO.BCB_VML'
    end
    object Tb_BcoBCB_VMC: TFloatField
      FieldName = 'BCB_VMC'
      Origin = 'SG_ASSOC.CADBCO.BCB_VMC'
    end
    object Tb_BcoBCB_IVD: TFloatField
      FieldName = 'BCB_IVD'
      Origin = 'SG_ASSOC.CADBCO.BCB_IVD'
    end
    object Tb_BcoBCB_VDL: TFloatField
      FieldName = 'BCB_VDL'
      Origin = 'SG_ASSOC.CADBCO.BCB_VDL'
    end
    object Tb_BcoBCB_VDC: TFloatField
      FieldName = 'BCB_VDC'
      Origin = 'SG_ASSOC.CADBCO.BCB_VDC'
    end
    object Tb_BcoBCB_ITI: TFloatField
      FieldName = 'BCB_ITI'
      Origin = 'SG_ASSOC.CADBCO.BCB_ITI'
    end
    object Tb_BcoBCB_TIL: TFloatField
      FieldName = 'BCB_TIL'
      Origin = 'SG_ASSOC.CADBCO.BCB_TIL'
    end
    object Tb_BcoBCB_TIC: TFloatField
      FieldName = 'BCB_TIC'
      Origin = 'SG_ASSOC.CADBCO.BCB_TIC'
    end
    object Tb_BcoBCB_IDS: TFloatField
      FieldName = 'BCB_IDS'
      Origin = 'SG_ASSOC.CADBCO.BCB_IDS'
    end
    object Tb_BcoBCB_DSL: TFloatField
      FieldName = 'BCB_DSL'
      Origin = 'SG_ASSOC.CADBCO.BCB_DSL'
    end
    object Tb_BcoBCB_DSC: TFloatField
      FieldName = 'BCB_DSC'
      Origin = 'SG_ASSOC.CADBCO.BCB_DSC'
    end
    object Tb_BcoBCLOGO: TBlobField
      FieldName = 'BCLOGO'
      Origin = 'SG_ASSOC.CADBCO.BCLOGO'
      Size = 1
    end
    object Tb_BcoBCTARIFA: TFloatField
      FieldName = 'BCTARIFA'
      Origin = 'SG_ASSOC.CADBCO.BCTARIFA'
      DisplayFormat = '#,###0.00'
    end
    object Tb_Bconometab: TStringField
      DisplayLabel = 'Nome da Tabula'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'nometab'
      Size = 60
      Calculated = True
    end
    object Tb_BcoBCLOTMOV: TFloatField
      FieldName = 'BCLOTMOV'
      Origin = 'SG_ASSOC.CADBCO.BCLOTMOV'
    end
    object Tb_BcoBCNOMTIT: TStringField
      FieldName = 'BCNOMTIT'
      Origin = 'SG_ASSOC.CADBCO.BCNOMTIT'
      Size = 40
    end
    object Tb_BcoBCCODVAR: TStringField
      FieldName = 'BCCODVAR'
      Origin = 'SG_ASSOC.CADBCO.BCCODVAR'
      Size = 10
    end
    object Tb_Bconomcar: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcar'
      Size = 40
      Calculated = True
    end
    object Tb_BcoBCLIMITE: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'BCLIMITE'
      Origin = 'SG_ASSOC.CADBCO.BCLIMITE'
    end
    object Tb_BcoBCRAZAOCTA: TStringField
      FieldName = 'BCRAZAOCTA'
      Origin = 'SG_ASSOC.CADBCO.BCRAZAOCTA'
      Size = 10
    end
    object Tb_BcoBCIMPPVREP: TFloatField
      FieldName = 'BCIMPPVREP'
      Origin = 'SG_ASSOC.CADBCO.BCIMPPVREP'
    end
    object Tb_BcoBCREPLICARCX: TFloatField
      FieldName = 'BCREPLICARCX'
      Origin = 'SG_ASSOC.CADBCO.BCREPLICARCX'
    end
    object Tb_BcoBCREP_CODBCO: TFloatField
      FieldName = 'BCREP_CODBCO'
      Origin = 'SG_ASSOC.CADBCO.BCREP_CODBCO'
    end
    object Tb_BcoBCREP_NOMBCO: TStringField
      FieldName = 'BCREP_NOMBCO'
      Origin = 'SG_ASSOC.CADBCO.BCREP_NOMBCO'
      Size = 40
    end
    object Tb_BcoBCREP_CODDEP: TStringField
      FieldName = 'BCREP_CODDEP'
      Origin = 'SG_ASSOC.CADBCO.BCREP_CODDEP'
      Size = 5
    end
    object Tb_BcoBCREP_NOMDEP: TStringField
      FieldName = 'BCREP_NOMDEP'
      Origin = 'SG_ASSOC.CADBCO.BCREP_NOMDEP'
      Size = 40
    end
    object Tb_BcoBCREP_CODCCU: TStringField
      FieldName = 'BCREP_CODCCU'
      Origin = 'SG_ASSOC.CADBCO.BCREP_CODCCU'
      Size = 5
    end
    object Tb_BcoBCREP_NOMCCU: TStringField
      FieldName = 'BCREP_NOMCCU'
      Origin = 'SG_ASSOC.CADBCO.BCREP_NOMCCU'
      Size = 40
    end
    object Tb_BcoBCREP_NATDC: TStringField
      FieldName = 'BCREP_NATDC'
      Origin = 'SG_ASSOC.CADBCO.BCREP_NATDC'
      Size = 1
    end
    object Tb_BcoBCREP_TIPO: TStringField
      FieldName = 'BCREP_TIPO'
      Origin = 'SG_ASSOC.CADBCO.BCREP_TIPO'
      Size = 2
    end
    object Tb_BcoBCREP_CODIGO: TFloatField
      FieldName = 'BCREP_CODIGO'
      Origin = 'SG_ASSOC.CADBCO.BCREP_CODIGO'
    end
    object Tb_BcoBCREP_NOMESAC: TStringField
      FieldName = 'BCREP_NOMESAC'
      Origin = 'SG_ASSOC.CADBCO.BCREP_NOMESAC'
      Size = 60
    end
    object Tb_BcoBCREP_DESCMV: TStringField
      FieldName = 'BCREP_DESCMV'
      Origin = 'SG_ASSOC.CADBCO.BCREP_DESCMV'
      Size = 60
    end
    object Tb_BcoBCCH_NOMTAM: TFloatField
      FieldName = 'BCCH_NOMTAM'
      Origin = 'SG_ASSOC.CADBCO.BCCH_NOMTAM'
    end
    object Tb_BcoBCCH_FORM: TStringField
      FieldName = 'BCCH_FORM'
      Size = 4
    end
    object Tb_BcoBCDATHOR_INC: TDateTimeField
      FieldName = 'BCDATHOR_INC'
      Origin = 'SG_ASSOC.CADBCO.BCDATHOR_INC'
    end
    object Tb_BcoBCCODUSR_INC: TFloatField
      FieldName = 'BCCODUSR_INC'
      Origin = 'SG_ASSOC.CADBCO.BCCODUSR_INC'
    end
    object Tb_BcoBCDATHOR_ALT: TDateTimeField
      FieldName = 'BCDATHOR_ALT'
      Origin = 'SG_ASSOC.CADBCO.BCDATHOR_ALT'
    end
    object Tb_BcoBCCODUSR_ALT: TFloatField
      FieldName = 'BCCODUSR_ALT'
      Origin = 'SG_ASSOC.CADBCO.BCCODUSR_ALT'
    end
    object Tb_BcoBCDATHOR_REP: TDateTimeField
      FieldName = 'BCDATHOR_REP'
      Origin = 'SG_ASSOC.CADBCO.BCDATHOR_REP'
    end
    object Tb_BcoBCB_LOCP02: TStringField
      FieldName = 'BCB_LOCP02'
      Origin = 'SG_ASSOC.CADBCO.BCB_LOCP02'
      Size = 60
    end
    object Tb_BcoBCSITCAD: TFloatField
      FieldName = 'BCSITCAD'
      Origin = 'SG_ASSOC.CADBCO.BCSITCAD'
    end
    object Tb_BcoBCCODCAR_C006: TFloatField
      FieldName = 'BCCODCAR_C006'
      Origin = 'SG_ASSOC.CADBCO.BCCODCAR_C006'
    end
    object Tb_BcoBCLAYOUT_PADRAO: TFloatField
      FieldName = 'BCLAYOUT_PADRAO'
      Origin = 'SG_ASSOC.CADBCO.BCLAYOUT_PADRAO'
    end
    object Tb_BcoBCDOCBOL: TStringField
      FieldName = 'BCDOCBOL'
      Origin = 'SG_ASSOC.CADBCO.BCDOCBOL'
      Size = 30
    end
    object Tb_BcoBCDOCEMIBOL: TFloatField
      FieldName = 'BCDOCEMIBOL'
      Origin = 'SG_ASSOC.CADBCO.BCDOCEMIBOL'
    end
    object Tb_BcoBCSACADOR_AVALISTA_OBS: TStringField
      FieldName = 'BCSACADOR_AVALISTA_OBS'
      Origin = 'SG_ASSOC.CADBCO.BCSACADOR_AVALISTA_OBS'
      Size = 60
    end
  end
  object Src_Bco: TDataSource
    DataSet = Tb_Bco
    Left = 120
    Top = 176
  end
  object Tb_CCU: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CCUBeforeInsert
    AfterInsert = Tb_CCUAfterInsert
    OnCalcFields = Tb_CCUCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCCU where '
      'CCCODCCU is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CCU
    Left = 64
    Top = 399
    object Tb_CCUCCCODCCU: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CCCODCCU'
      Origin = 'SG_ASSOC.CADCCU.CCCODCCU'
      Size = 16
    end
    object Tb_CCUCCNOME: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'CCNOME'
      Origin = 'SG_ASSOC.CADCCU.CCNOME'
    end
    object Tb_CCUCCNAT: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'CCNAT'
      Origin = 'SG_ASSOC.CADCCU.CCNAT'
      Size = 1
    end
    object Tb_CCUCCCODEMP: TFloatField
      FieldName = 'CCCODEMP'
      Origin = 'SG_ASSOC.CADCCU.CCCODEMP'
    end
    object Tb_CCUNOMDRE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMDRE'
      Size = 30
      Calculated = True
    end
    object Tb_CCUCCCODDRE: TStringField
      FieldName = 'CCCODDRE'
      Origin = 'SG_ASSOC.CADCCU.CCCODDRE'
      Size = 6
    end
    object Tb_CCUCCEXP_CATEG: TFloatField
      FieldName = 'CCEXP_CATEG'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CATEG'
    end
    object Tb_CCUCCEXP_EVENTO: TStringField
      FieldName = 'CCEXP_EVENTO'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_EVENTO'
      Size = 5
    end
    object Tb_CCUCCEXP_CODCTA_DEB: TStringField
      FieldName = 'CCEXP_CODCTA_DEB'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODCTA_DEB'
      Size = 30
    end
    object Tb_CCUCCEXP_CODHIST_DEB: TStringField
      FieldName = 'CCEXP_CODHIST_DEB'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODHIST_DEB'
      Size = 5
    end
    object Tb_CCUCCEXP_CODCTA_CRED: TStringField
      FieldName = 'CCEXP_CODCTA_CRED'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODCTA_CRED'
      Size = 30
    end
    object Tb_CCUCCEXP_CODHIST_CRED: TStringField
      FieldName = 'CCEXP_CODHIST_CRED'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODHIST_CRED'
      Size = 5
    end
    object Tb_CCUCCEXP_CODCCU_CRED: TStringField
      FieldName = 'CCEXP_CODCCU_CRED'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODCCU_CRED'
      Size = 5
    end
    object Tb_CCUCCEXP_CODCCU_DEB: TStringField
      FieldName = 'CCEXP_CODCCU_DEB'
      Origin = 'SG_ASSOC.CADCCU.CCEXP_CODCCU_DEB'
      Size = 5
    end
    object Tb_CCUCCSITCAD: TFloatField
      FieldName = 'CCSITCAD'
      Origin = 'SG_ASSOC.CADCCU.CCSITCAD'
    end
  end
  object Src_CCU: TDataSource
    DataSet = Tb_CCU
    Left = 120
    Top = 399
  end
  object Tb_Dep_Ldr: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Dep_LdrBeforeInsert
    AfterInsert = Tb_Dep_LdrAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * FROM CADDEP where '
      'DCODDEP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Dep_Ldr
    Left = 154
    Top = 486
    object Tb_Dep_LdrDCODDEP: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DCODDEP'
      Origin = 'SG_ASSOC.CADDEP.DCODDEP'
      Size = 6
    end
    object Tb_Dep_LdrDNOME: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'DNOME'
      Origin = 'SG_ASSOC.CADDEP.DNOME'
    end
    object Tb_Dep_LdrDCODEMP: TFloatField
      FieldName = 'DCODEMP'
      Origin = 'SG_ASSOC.CADDEP.DCODEMP'
    end
    object Tb_Dep_LdrDSITCAD: TFloatField
      FieldName = 'DSITCAD'
      Origin = 'SG_ASSOC.CADDEP.DSITCAD'
    end
  end
  object Src_Dep_Ldr: TDataSource
    DataSet = Tb_Dep_Ldr
    Left = 210
    Top = 486
  end
  object Tb_LDR: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_LDRBeforeInsert
    AfterInsert = Tb_LDRAfterInsert
    BeforePost = Tb_LDRBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    Filter = 'STATUS<>9'
    Filtered = True
    SQL.Strings = (
      'Select * From CADLDR where DATAREAL is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LDR
    Left = 373
    Top = 136
    object Tb_LDRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADLDR.CODEMP'
    end
    object Tb_LDRDATADP: TDateTimeField
      DisplayLabel = 'Dt.Prevista'
      FieldName = 'DATADP'
      Origin = 'SG_ASSOC.CADLDR.DATADP'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LDRCODLDR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODLDR'
      Origin = 'SG_ASSOC.CADLDR.CODLDR'
    end
    object Tb_LDRDATAREAL: TDateTimeField
      DisplayLabel = 'Data Real'
      FieldName = 'DATAREAL'
      Origin = 'SG_ASSOC.CADLDR.DATAREAL'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LDRDATAREF: TDateTimeField
      DisplayLabel = 'Dt.Refer.'
      FieldName = 'DATAREF'
      Origin = 'SG_ASSOC.CADLDR.DATAREF'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LDRVALORP: TFloatField
      DisplayLabel = 'Vlr.Previsto'
      FieldName = 'VALORP'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Tb_LDRVALORR: TFloatField
      DisplayLabel = 'Valor Real'
      FieldName = 'VALORR'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Tb_LDRCODCC: TStringField
      DisplayLabel = 'Centro custo'
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 16
    end
    object Tb_LDRCODDEP: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.CADLDR.CODDEP'
      Size = 6
    end
    object Tb_LDRNATDC: TStringField
      DisplayLabel = 'Nat'
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object Tb_LDRDESCMV: TStringField
      DisplayLabel = 'Descricao do Movimento'
      DisplayWidth = 60
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 60
    end
    object Tb_LDRNUMDOC: TStringField
      DisplayLabel = 'N'#250'm.Doc.'
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object Tb_LDRNUMDOC2: TStringField
      DisplayLabel = 'Cheque'
      DisplayWidth = 15
      FieldName = 'NUMDOC2'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC2'
      Size = 15
    end
    object Tb_LDRTIPO: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPO'
      Origin = 'SG_ASSOC.CADLDR.TIPO'
      Size = 2
    end
    object Tb_LDRCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODIGO'
    end
    object Tb_LDRUSRALT: TFloatField
      DisplayLabel = 'Cod.Usuario Alterou'
      FieldName = 'USRALT'
      Origin = 'SG_ASSOC.CADLDR.USRALT'
    end
    object Tb_LDRDTALT: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'DTALT'
      Origin = 'SG_ASSOC.CADLDR.DTALT'
    end
    object Tb_LDRUSREXC: TFloatField
      DisplayLabel = 'Usr.Excluiu'
      FieldName = 'USREXC'
      Origin = 'SG_ASSOC.CADLDR.USREXC'
    end
    object Tb_LDRDTHREXC: TDateTimeField
      DisplayLabel = 'Dt.Exclus'#227'o'
      FieldName = 'DTHREXC'
      Origin = 'SG_ASSOC.CADLDR.DTHREXC'
    end
    object Tb_LDRCODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADLDR.CODBCO'
    end
    object Tb_LDRSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADLDR.STATUS'
    end
    object Tb_LDRORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = 'SG_ASSOC.CADLDR.ORIGEM'
    end
    object Tb_LDRLOCDEP: TFloatField
      DisplayLabel = 'Loc.Depto'
      FieldName = 'LOCDEP'
      Origin = 'SG_ASSOC.CADLDR.LOCDEP'
    end
    object Tb_LDRHRALT: TStringField
      DisplayLabel = 'Hora Alter.'
      FieldName = 'HRALT'
      Origin = 'SG_ASSOC.CADLDR.HRALT'
      Size = 10
    end
    object Tb_LDRcdatareal: TStringField
      DisplayLabel = 'Data Real'
      FieldKind = fkCalculated
      FieldName = 'cdatareal'
      Size = 10
      Calculated = True
    end
    object Tb_LDRCOMPENS: TFloatField
      DisplayLabel = 'Comp.'
      FieldName = 'COMPENS'
      Origin = 'SG_ASSOC.CADLDR.COMPENS'
    end
    object Tb_LDRNOMDEP: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMDEP'
      Origin = 'SG_ASSOC.CADLDR.NOMDEP'
      Size = 40
    end
    object Tb_LDRNOMBCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOMBCO'
      Origin = 'SG_ASSOC.CADLDR.NOMBCO'
      Size = 40
    end
    object Tb_LDRNOMCCU: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'NOMCCU'
      Origin = 'SG_ASSOC.CADLDR.NOMCCU'
      Size = 40
    end
    object Tb_LDRNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Tb_LDRLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'LOTSEQ'
      Origin = 'SG_ASSOC.CADLDR.LOTSEQ'
    end
    object Tb_LDRDATLAN: TDateTimeField
      DisplayLabel = 'Dt.Lcto.'
      FieldName = 'DATLAN'
      Origin = 'SG_ASSOC.CADLDR.DATLAN'
    end
    object Tb_LDRDTCOMP: TDateTimeField
      DisplayLabel = 'Dt.Comp.'
      FieldName = 'DTCOMP'
      Origin = 'SG_ASSOC.CADLDR.DTCOMP'
    end
    object Tb_LDRLOTMOV: TFloatField
      DisplayLabel = 'Lote Mov'
      FieldName = 'LOTMOV'
      Origin = 'SG_ASSOC.CADLDR.LOTMOV'
    end
    object Tb_LDRLEMAT: TFloatField
      DisplayLabel = 'Lt.Envio'
      FieldName = 'LEMAT'
      Origin = 'SG_ASSOC.CADLDR.LEMAT'
    end
    object Tb_LDRVINCULO: TFloatField
      DisplayLabel = 'Vinculo'
      FieldName = 'VINCULO'
      Origin = 'SG_ASSOC.CADLDR.VINCULO'
    end
    object Tb_LDRDTSALDO: TDateTimeField
      FieldName = 'DTSALDO'
      Origin = 'SG_ASSOC.CADLDR.DTSALDO'
    end
    object Tb_LDRFC_OBSFIN: TStringField
      FieldName = 'FC_OBSFIN'
      Origin = 'SG_ASSOC.CADLDR.FC_OBSFIN'
      Size = 40
    end
    object Tb_LDRFC_COMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'FC_COMPETENCIA_DTINICIO'
    end
    object Tb_LDRFC_COMPETENCIA_TIPO: TFloatField
      FieldName = 'FC_COMPETENCIA_TIPO'
    end
    object Tb_LDRcompetencia_obs: TStringField
      FieldKind = fkCalculated
      FieldName = 'competencia_obs'
      Size = 30
      Calculated = True
    end
    object Tb_LDRLDR_ID_NEW: TFloatField
      FieldName = 'LDR_ID_NEW'
      Origin = 'SG_ASSOC.CADLDR.LDR_ID_NEW'
    end
    object Tb_LDRDATCONC: TDateTimeField
      FieldName = 'DATCONC'
      Origin = 'SG_ASSOC.CADLDR.DATCONC'
    end
  end
  object Src_LDR: TDataSource
    DataSet = Tb_LDR
    Left = 429
    Top = 136
  end
  object Par_LDR: TQuery
    CachedUpdates = True
    BeforePost = Par_LDRBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From PARLDR')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PLDR
    Left = 61
    Top = 48
    object Par_LDRCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.PARLDR.CODEMP'
    end
    object Par_LDRCDOC: TStringField
      DisplayLabel = 'Nome da Tabela'
      FieldName = 'CDOC'
      Origin = 'SG_ASSOC.PARLDR.CDOC'
    end
    object Par_LDRCODCC: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.PARLDR.CODCC'
      Size = 6
    end
    object Par_LDRCODDEP: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.PARLDR.CODDEP'
      Size = 6
    end
    object Par_LDRNOME: TStringField
      DisplayLabel = 'Descricao a ser Gravada'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.PARLDR.NOME'
      Size = 40
    end
    object Par_LDRCDESC_ORI: TStringField
      DisplayLabel = 'Descricao Original'
      FieldName = 'CDESC_ORI'
      Origin = 'SG_ASSOC.PARLDR.CDESC_ORI'
      Size = 40
    end
  end
  object SRC_PLDR: TDataSource
    DataSet = Par_LDR
    Left = 120
    Top = 46
  end
  object Tb_TDV: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TDVBeforeInsert
    AfterInsert = Tb_TDVAfterInsert
    BeforePost = Tb_TDVBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_TDVCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TDV
    Left = 690
    Top = 222
    object Tb_TDVTCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Tb_TDVTDOC: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Tb_TDVTSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Tb_TDVTTIPOC: TStringField
      DisplayLabel = 'Tipo Caracter'
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Tb_TDVTFORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Tb_TDVTCONDT1: TStringField
      DisplayLabel = 'Tipo Condicao 1'
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Tb_TDVTCOND01: TStringField
      DisplayLabel = 'Condicao 1'
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Tb_TDVTCONDOP: TStringField
      DisplayLabel = 'Operador'
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Tb_TDVTCONDT2: TStringField
      DisplayLabel = 'Tipo Condicao 2'
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Tb_TDVTCOND02: TStringField
      DisplayLabel = 'Condicao 2'
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Tb_TDVTCAMPO: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 142
    end
    object Tb_TDVTDCAMPO: TStringField
      DisplayLabel = 'Descri'#231#227'o do campo'
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 142
    end
    object Tb_TDVTLOCAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Tb_TDVTLIN: TFloatField
      DisplayLabel = 'Linha'
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Tb_TDVTCOL: TFloatField
      DisplayLabel = 'Coluna'
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Tb_TDVTFONTE: TFloatField
      DisplayLabel = 'Fonte'
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Tb_TDVTTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Tb_TDVTALINHAR: TFloatField
      DisplayLabel = 'Alinhamento'
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Tb_TDVTTAM: TFloatField
      DisplayLabel = 'Tamanho'
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Tb_TDVTZERVAR: TFloatField
      DisplayLabel = 'Zerar Variaveis'
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Tb_TDVTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Tb_TDVTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Tb_TDVTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Tb_TDVTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Tb_TDVTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Tb_TDVTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Tb_TDVTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Tb_TDVTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Tb_TDVTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Tb_TDVTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Tb_TDVTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Tb_TDVTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Tb_TDVTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Tb_TDVTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Tb_TDVTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Tb_TDVTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Tb_TDVTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Tb_TDVTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
      Size = 52
    end
    object Tb_TDVTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Tb_TDVTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Tb_TDVTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Tb_TDVTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Tb_TDVTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Tb_TDVTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Tb_TDVTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Tb_TDVTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Tb_TDVTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Tb_TDVTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Tb_TDVTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Tb_TDVTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Tb_TDVTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Tb_TDVTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Tb_TDVTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Tb_TDVTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Tb_TDVTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
    object Tb_TDVcolfinal: TFloatField
      DisplayLabel = 'Col.Final'
      FieldKind = fkCalculated
      FieldName = 'colfinal'
      Calculated = True
    end
    object Tb_TDVTCINFADIC: TFloatField
      FieldName = 'TCINFADIC'
      Origin = 'SG_ASSOC.CADTDV.TCINFADIC'
    end
  end
  object Tb_TDVCA: TQuery
    CachedUpdates = True
    BeforePost = Tb_TDVCABeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVCA '
      'where TCCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TDVCA
    Left = 690
    Top = 267
    object Tb_TDVCATCCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CTDVCA.TCCODEMP'
    end
    object Tb_TDVCATCDOC: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CTDVCA.TCDOC'
      Size = 10
    end
    object Tb_TDVCATCOBS: TStringField
      DisplayLabel = 'Observacoes'
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
    end
    object Tb_TDVCATCQTDLIN: TFloatField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLIN'
    end
    object Tb_TDVCATCQTDCOL: TFloatField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDCOL'
    end
    object Tb_TDVCATCFPADRAO: TFloatField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPADRAO'
    end
    object Tb_TDVCATCQTDITEM: TFloatField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDITEM'
    end
    object Tb_TDVCATCQTDLPP: TFloatField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLPP'
    end
    object Tb_TDVCATCNUMCOL: TFloatField
      FieldName = 'TCNUMCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCNUMCOL'
    end
    object Tb_TDVCATCINTCOL: TFloatField
      FieldName = 'TCINTCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCINTCOL'
    end
    object Tb_TDVCATCTPCOL: TFloatField
      FieldName = 'TCTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPCOL'
    end
    object Tb_TDVCATCORDEM: TFloatField
      FieldName = 'TCORDEM'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM'
    end
    object Tb_TDVCATCMPAGGR: TFloatField
      FieldName = 'TCMPAGGR'
      Origin = 'SG_ASSOC.CTDVCA.TCMPAGGR'
    end
    object Tb_TDVCATCTPESQ: TFloatField
      FieldName = 'TCTPESQ'
      Origin = 'SG_ASSOC.CTDVCA.TCTPESQ'
    end
    object Tb_TDVCATCTPREL: TFloatField
      FieldName = 'TCTPREL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPREL'
    end
    object Tb_TDVCATCIMPG: TFloatField
      FieldName = 'TCIMPG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPG'
    end
    object Tb_TDVCATCIMPSG: TFloatField
      FieldName = 'TCIMPSG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPSG'
    end
    object Tb_TDVCATCAVPTPI: TFloatField
      FieldName = 'TCAVPTPI'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPTPI'
    end
    object Tb_TDVCATCAVPIPF: TFloatField
      FieldName = 'TCAVPIPF'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPIPF'
    end
    object Tb_TDVCATCSTATUS: TFloatField
      FieldName = 'TCSTATUS'
      Origin = 'SG_ASSOC.CTDVCA.TCSTATUS'
    end
    object Tb_TDVCATCVIS: TFloatField
      FieldName = 'TCVIS'
      Origin = 'SG_ASSOC.CTDVCA.TCVIS'
    end
    object Tb_TDVCATCQTDSER: TFloatField
      FieldName = 'TCQTDSER'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDSER'
    end
    object Tb_TDVCATCIMPDA: TFloatField
      FieldName = 'TCIMPDA'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPDA'
    end
    object Tb_TDVCATCTAB01: TStringField
      FieldName = 'TCTAB01'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB01'
      Size = 40
    end
    object Tb_TDVCATCTAB02: TStringField
      FieldName = 'TCTAB02'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02'
      Size = 40
    end
    object Tb_TDVCATCTAB02N: TFloatField
      FieldName = 'TCTAB02N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02N'
    end
    object Tb_TDVCATCTAB03: TStringField
      FieldName = 'TCTAB03'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03'
      Size = 40
    end
    object Tb_TDVCATCTAB03N: TFloatField
      FieldName = 'TCTAB03N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03N'
    end
    object Tb_TDVCATCTAB04: TStringField
      FieldName = 'TCTAB04'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04'
      Size = 40
    end
    object Tb_TDVCATCTAB04N: TFloatField
      FieldName = 'TCTAB04N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04N'
    end
    object Tb_TDVCATCTAB05: TStringField
      FieldName = 'TCTAB05'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05'
      Size = 40
    end
    object Tb_TDVCATCTAB05N: TFloatField
      FieldName = 'TCTAB05N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05N'
    end
    object Tb_TDVCATCORDEM2: TStringField
      FieldName = 'TCORDEM2'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM2'
      Size = 240
    end
    object Tb_TDVCATCFILTRO: TStringField
      FieldName = 'TCFILTRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRO'
      Size = 240
    end
    object Tb_TDVCATCCONT_M: TStringField
      FieldName = 'TCCONT_M'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_M'
      Size = 30
    end
    object Tb_TDVCATCCONT_R: TStringField
      FieldName = 'TCCONT_R'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_R'
      Size = 40
    end
    object Tb_TDVCATCCONT_AP: TFloatField
      FieldName = 'TCCONT_AP'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_AP'
    end
    object Tb_TDVCATCBLOQ: TFloatField
      FieldName = 'TCBLOQ'
      Origin = 'SG_ASSOC.CTDVCA.TCBLOQ'
    end
    object Tb_TDVCATCAGRUPAR: TFloatField
      FieldName = 'TCAGRUPAR'
      Origin = 'SG_ASSOC.CTDVCA.TCAGRUPAR'
    end
    object Tb_TDVCATCMASC: TStringField
      FieldName = 'TCMASC'
      Origin = 'SG_ASSOC.CTDVCA.TCMASC'
      Size = 40
    end
    object Tb_TDVCATCPERIODO: TStringField
      FieldName = 'TCPERIODO'
      Origin = 'SG_ASSOC.CTDVCA.TCPERIODO'
      Size = 40
    end
    object Tb_TDVCATCDIMGRU: TFloatField
      FieldName = 'TCDIMGRU'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMGRU'
    end
    object Tb_TDVCATCDIMSG: TFloatField
      FieldName = 'TCDIMSG'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMSG'
    end
    object Tb_TDVCATCTPFORM: TFloatField
      FieldName = 'TCTPFORM'
      Origin = 'SG_ASSOC.CTDVCA.TCTPFORM'
    end
    object Tb_TDVCATCQTDDIV: TFloatField
      FieldName = 'TCQTDDIV'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDDIV'
    end
    object Tb_TDVCATCTAB06: TStringField
      FieldName = 'TCTAB06'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06'
      Size = 40
    end
    object Tb_TDVCATCTAB06N: TFloatField
      FieldName = 'TCTAB06N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06N'
    end
    object Tb_TDVCATCTAB07: TStringField
      FieldName = 'TCTAB07'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07'
      Size = 40
    end
    object Tb_TDVCATCTAB07N: TFloatField
      FieldName = 'TCTAB07N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07N'
    end
    object Tb_TDVCATCTAB08: TStringField
      FieldName = 'TCTAB08'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08'
      Size = 40
    end
    object Tb_TDVCATCTAB08N: TFloatField
      FieldName = 'TCTAB08N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08N'
    end
    object Tb_TDVCATCTAB09: TStringField
      FieldName = 'TCTAB09'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09'
      Size = 40
    end
    object Tb_TDVCATCTAB09N: TFloatField
      FieldName = 'TCTAB09N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09N'
    end
    object Tb_TDVCATCNOME: TStringField
      FieldName = 'TCNOME'
      Origin = 'SG_ASSOC.CTDVCA.TCNOME'
      Size = 52
    end
    object Tb_TDVCATCFILVEN: TFloatField
      FieldName = 'TCFILVEN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILVEN'
    end
    object Tb_TDVCATCFILCLI: TFloatField
      FieldName = 'TCFILCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCLI'
    end
    object Tb_TDVCATCFILPRO: TFloatField
      FieldName = 'TCFILPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILPRO'
    end
    object Tb_TDVCATCFILFOR: TFloatField
      FieldName = 'TCFILFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFOR'
    end
    object Tb_TDVCATCFILRED: TFloatField
      FieldName = 'TCFILRED'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRED'
    end
    object Tb_TDVCATCFVCAMPO: TStringField
      FieldName = 'TCFVCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFVCAMPO'
    end
    object Tb_TDVCATCFCCAMPO: TStringField
      FieldName = 'TCFCCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFCCAMPO'
    end
    object Tb_TDVCATCFPCAMPO: TStringField
      FieldName = 'TCFPCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPCAMPO'
    end
    object Tb_TDVCATCFFCAMPO: TStringField
      FieldName = 'TCFFCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFFCAMPO'
    end
    object Tb_TDVCATCFRCAMPO: TStringField
      FieldName = 'TCFRCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFRCAMPO'
    end
    object Tb_TDVCATCDETNCOL: TFloatField
      FieldName = 'TCDETNCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETNCOL'
    end
    object Tb_TDVCATCDETICOL: TFloatField
      FieldName = 'TCDETICOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETICOL'
    end
    object Tb_TDVCATCDETTPCOL: TFloatField
      FieldName = 'TCDETTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETTPCOL'
    end
    object Tb_TDVCATCAVANCAROD: TFloatField
      FieldName = 'TCAVANCAROD'
      Origin = 'SG_ASSOC.CTDVCA.TCAVANCAROD'
    end
    object Tb_TDVCATCFILEST: TFloatField
      FieldName = 'TCFILEST'
      Origin = 'SG_ASSOC.CTDVCA.TCFILEST'
    end
    object Tb_TDVCATCQTDVIA: TFloatField
      FieldName = 'TCQTDVIA'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDVIA'
    end
    object Tb_TDVCATCFILRAMCLI: TFloatField
      FieldName = 'TCFILRAMCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMCLI'
    end
    object Tb_TDVCATCFILRAMPRO: TFloatField
      FieldName = 'TCFILRAMPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMPRO'
    end
    object Tb_TDVCATCFILTPRO: TFloatField
      FieldName = 'TCFILTPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTPRO'
    end
    object Tb_TDVCATCFILGPRO: TFloatField
      FieldName = 'TCFILGPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGPRO'
    end
    object Tb_TDVCATCFILCPRO: TFloatField
      FieldName = 'TCFILCPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCPRO'
    end
    object Tb_TDVCATCFILLOC: TFloatField
      FieldName = 'TCFILLOC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILLOC'
    end
    object Tb_TDVCATCFILBAI: TFloatField
      FieldName = 'TCFILBAI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBAI'
    end
    object Tb_TDVCATCFILGFOR: TFloatField
      FieldName = 'TCFILGFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGFOR'
    end
    object Tb_TDVCATCFILCONV: TFloatField
      FieldName = 'TCFILCONV'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCONV'
    end
    object Tb_TDVCATCFILSUP: TFloatField
      FieldName = 'TCFILSUP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILSUP'
    end
    object Tb_TDVCATCFILASS: TFloatField
      FieldName = 'TCFILASS'
      Origin = 'SG_ASSOC.CTDVCA.TCFILASS'
    end
    object Tb_TDVCATCFILREG: TFloatField
      FieldName = 'TCFILREG'
      Origin = 'SG_ASSOC.CTDVCA.TCFILREG'
    end
    object Tb_TDVCATCFILTRA: TFloatField
      FieldName = 'TCFILTRA'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRA'
    end
    object Tb_TDVCATCFILBCO: TFloatField
      FieldName = 'TCFILBCO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBCO'
    end
    object Tb_TDVCATCFILCC: TFloatField
      FieldName = 'TCFILCC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCC'
    end
    object Tb_TDVCATCFILDEP: TFloatField
      FieldName = 'TCFILDEP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILDEP'
    end
    object Tb_TDVCATCFILUSR: TFloatField
      FieldName = 'TCFILUSR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILUSR'
    end
    object Tb_TDVCATCFILCAR: TFloatField
      FieldName = 'TCFILCAR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCAR'
    end
    object Tb_TDVCATCFILFUN: TFloatField
      FieldName = 'TCFILFUN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFUN'
    end
    object Tb_TDVCATCGPRO: TFloatField
      FieldName = 'TCGPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCGPRO'
    end
    object Tb_TDVCATCMODIMP: TFloatField
      FieldName = 'TCMODIMP'
      Origin = 'SG_ASSOC.CTDVCA.TCMODIMP'
    end
    object Tb_TDVCATCIMPCMET: TFloatField
      FieldName = 'TCIMPCMET'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPCMET'
    end
    object Tb_TDVCATCIMPPD: TFloatField
      FieldName = 'TCIMPPD'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPPD'
    end
  end
  object SRC_TDV: TDataSource
    DataSet = Tb_TDV
    Left = 745
    Top = 222
  end
  object SRC_TDVCA: TDataSource
    DataSet = Tb_TDVCA
    Left = 745
    Top = 267
  end
  object Tb_IDV: TQuery
    CachedUpdates = True
    BeforePost = Tb_IDVBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIDV where '
      'IDCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_IDV
    Left = 261
    Top = 450
    object Tb_IDVIDCODEMP: TFloatField
      FieldName = 'IDCODEMP'
      Origin = 'SG_ASSOC.CADIDV.IDCODEMP'
    end
    object Tb_IDVIDNOMREL: TStringField
      FieldName = 'IDNOMREL'
      Origin = 'SG_ASSOC.CADIDV.IDNOMREL'
    end
    object Tb_IDVIDLINHA1: TStringField
      FieldName = 'IDLINHA1'
      Origin = 'SG_ASSOC.CADIDV.IDLINHA1'
    end
    object Tb_IDVIDLINHA2: TStringField
      FieldName = 'IDLINHA2'
      Origin = 'SG_ASSOC.CADIDV.IDLINHA2'
    end
    object Tb_IDVIDCOL1: TFloatField
      FieldName = 'IDCOL1'
      Origin = 'SG_ASSOC.CADIDV.IDCOL1'
    end
    object Tb_IDVIDPULAR1: TFloatField
      FieldName = 'IDPULAR1'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR1'
    end
    object Tb_IDVIDCOL2: TFloatField
      FieldName = 'IDCOL2'
      Origin = 'SG_ASSOC.CADIDV.IDCOL2'
    end
    object Tb_IDVIDPULAR2: TFloatField
      FieldName = 'IDPULAR2'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR2'
    end
    object Tb_IDVIDPULAR3: TFloatField
      FieldName = 'IDPULAR3'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR3'
    end
    object Tb_IDVIDQTDCOL: TFloatField
      FieldName = 'IDQTDCOL'
      Origin = 'SG_ASSOC.CADIDV.IDQTDCOL'
    end
    object Tb_IDVIDQTDCP: TFloatField
      FieldName = 'IDQTDCP'
      Origin = 'SG_ASSOC.CADIDV.IDQTDCP'
    end
    object Tb_IDVIDQTDJ: TFloatField
      FieldName = 'IDQTDJ'
      Origin = 'SG_ASSOC.CADIDV.IDQTDJ'
    end
    object Tb_IDVIDFPADRAO: TFloatField
      FieldName = 'IDFPADRAO'
      Origin = 'SG_ASSOC.CADIDV.IDFPADRAO'
    end
    object Tb_IDVIDQTDLPP: TFloatField
      FieldName = 'IDQTDLPP'
      Origin = 'SG_ASSOC.CADIDV.IDQTDLPP'
    end
  end
  object Src_IDV: TDataSource
    DataSet = Tb_IDV
    Left = 318
    Top = 450
  end
  object Tb_Parger: TQuery
    CachedUpdates = True
    BeforePost = Tb_PargerBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARGER where'
      'CODIGO=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_ParGer
    Left = 480
    Top = 87
    object Tb_PargerCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.PARGER.CODIGO'
    end
    object Tb_PargerEMPPRE: TFloatField
      FieldName = 'EMPPRE'
      Origin = 'SG_ASSOC.PARGER.EMPPRE'
    end
    object Tb_PargerPSEGMENTO: TStringField
      FieldName = 'PSEGMENTO'
      Origin = 'SG_ASSOC.PARGER.PSEGMENTO'
    end
    object Tb_PargerPSISTEMA: TStringField
      FieldName = 'PSISTEMA'
      Origin = 'SG_ASSOC.PARGER.PSISTEMA'
      Size = 8
    end
    object Tb_PargerUDTTRA: TDateTimeField
      FieldName = 'UDTTRA'
      Origin = 'SG_ASSOC.PARGER.UDTTRA'
    end
    object Tb_PargerPGRAVE: TStringField
      FieldName = 'PGRAVE'
      Origin = 'SG_ASSOC.PARGER.PGRAVE'
    end
    object Tb_PargerPTIPO: TStringField
      FieldName = 'PTIPO'
      Origin = 'SG_ASSOC.PARGER.PTIPO'
      Size = 6
    end
    object Tb_PargerPCAMINHO: TStringField
      FieldName = 'PCAMINHO'
      Origin = 'SG_ASSOC.PARGER.PCAMINHO'
      Size = 30
    end
    object Tb_PargerPDCADCAR: TFloatField
      FieldName = 'PDCADCAR'
      Origin = 'SG_ASSOC.PARGER.PDCADCAR'
    end
    object Tb_PargerPDCADBAI: TFloatField
      FieldName = 'PDCADBAI'
      Origin = 'SG_ASSOC.PARGER.PDCADBAI'
    end
    object Tb_PargerPDCADCLI: TFloatField
      FieldName = 'PDCADCLI'
      Origin = 'SG_ASSOC.PARGER.PDCADCLI'
    end
    object Tb_PargerPDCADCON: TFloatField
      FieldName = 'PDCADCON'
      Origin = 'SG_ASSOC.PARGER.PDCADCON'
    end
    object Tb_PargerPDCADCV: TFloatField
      FieldName = 'PDCADCV'
      Origin = 'SG_ASSOC.PARGER.PDCADCV'
    end
    object Tb_PargerPDCADFOR: TFloatField
      FieldName = 'PDCADFOR'
      Origin = 'SG_ASSOC.PARGER.PDCADFOR'
    end
    object Tb_PargerPDCADGRU: TFloatField
      FieldName = 'PDCADGRU'
      Origin = 'SG_ASSOC.PARGER.PDCADGRU'
    end
    object Tb_PargerPDCADLOC: TFloatField
      FieldName = 'PDCADLOC'
      Origin = 'SG_ASSOC.PARGER.PDCADLOC'
    end
    object Tb_PargerPDCADPRO: TFloatField
      FieldName = 'PDCADPRO'
      Origin = 'SG_ASSOC.PARGER.PDCADPRO'
    end
    object Tb_PargerPDCADRAM: TFloatField
      FieldName = 'PDCADRAM'
      Origin = 'SG_ASSOC.PARGER.PDCADRAM'
    end
    object Tb_PargerPDCADTP: TFloatField
      FieldName = 'PDCADTP'
      Origin = 'SG_ASSOC.PARGER.PDCADTP'
    end
    object Tb_PargerPDCADTRA: TFloatField
      FieldName = 'PDCADTRA'
      Origin = 'SG_ASSOC.PARGER.PDCADTRA'
    end
    object Tb_PargerPDCADUSR: TFloatField
      FieldName = 'PDCADUSR'
      Origin = 'SG_ASSOC.PARGER.PDCADUSR'
    end
    object Tb_PargerPDCADVEN: TFloatField
      FieldName = 'PDCADVEN'
      Origin = 'SG_ASSOC.PARGER.PDCADVEN'
    end
    object Tb_PargerPIMPFPAD: TFloatField
      FieldName = 'PIMPFPAD'
      Origin = 'SG_ASSOC.PARGER.PIMPFPAD'
    end
    object Tb_PargerPCASAS: TFloatField
      FieldName = 'PCASAS'
      Origin = 'SG_ASSOC.PARGER.PCASAS'
    end
    object Tb_PargerPCASASPU: TFloatField
      FieldName = 'PCASASPU'
      Origin = 'SG_ASSOC.PARGER.PCASASPU'
    end
    object Tb_PargerPCASQTD: TFloatField
      FieldName = 'PCASQTD'
      Origin = 'SG_ASSOC.PARGER.PCASQTD'
    end
    object Tb_PargerPCLIPED: TFloatField
      FieldName = 'PCLIPED'
      Origin = 'SG_ASSOC.PARGER.PCLIPED'
    end
    object Tb_PargerPCOMVEN: TFloatField
      FieldName = 'PCOMVEN'
      Origin = 'SG_ASSOC.PARGER.PCOMVEN'
    end
    object Tb_PargerPCOMTLV: TFloatField
      FieldName = 'PCOMTLV'
      Origin = 'SG_ASSOC.PARGER.PCOMTLV'
    end
    object Tb_PargerPDEDVD: TFloatField
      FieldName = 'PDEDVD'
      Origin = 'SG_ASSOC.PARGER.PDEDVD'
    end
    object Tb_PargerPCOMSUP: TFloatField
      FieldName = 'PCOMSUP'
      Origin = 'SG_ASSOC.PARGER.PCOMSUP'
    end
    object Tb_PargerPTPACER: TFloatField
      FieldName = 'PTPACER'
      Origin = 'SG_ASSOC.PARGER.PTPACER'
    end
    object Tb_PargerPDCADSUP: TFloatField
      FieldName = 'PDCADSUP'
      Origin = 'SG_ASSOC.PARGER.PDCADSUP'
    end
    object Tb_PargerPTPACERT: TFloatField
      FieldName = 'PTPACERT'
      Origin = 'SG_ASSOC.PARGER.PTPACERT'
    end
    object Tb_PargerPTPACERS: TFloatField
      FieldName = 'PTPACERS'
      Origin = 'SG_ASSOC.PARGER.PTPACERS'
    end
    object Tb_PargerPMOD00: TFloatField
      FieldName = 'PMOD00'
      Origin = 'SG_ASSOC.PARGER.PMOD00'
    end
    object Tb_PargerPMOD01: TFloatField
      FieldName = 'PMOD01'
      Origin = 'SG_ASSOC.PARGER.PMOD01'
    end
    object Tb_PargerPTIPPED: TFloatField
      FieldName = 'PTIPPED'
      Origin = 'SG_ASSOC.PARGER.PTIPPED'
    end
    object Tb_PargerPTITSCOM: TStringField
      FieldName = 'PTITSCOM'
      Origin = 'SG_ASSOC.PARGER.PTITSCOM'
      Size = 7
    end
    object Tb_PargerPMANPC: TFloatField
      FieldName = 'PMANPC'
      Origin = 'SG_ASSOC.PARGER.PMANPC'
    end
    object Tb_PargerPDEVOL: TFloatField
      FieldName = 'PDEVOL'
      Origin = 'SG_ASSOC.PARGER.PDEVOL'
    end
    object Tb_PargerPDJNR: TFloatField
      FieldName = 'PDJNR'
      Origin = 'SG_ASSOC.PARGER.PDJNR'
    end
    object Tb_PargerPCOMEMP: TFloatField
      FieldName = 'PCOMEMP'
      Origin = 'SG_ASSOC.PARGER.PCOMEMP'
    end
    object Tb_PargerPVENUSR: TFloatField
      FieldName = 'PVENUSR'
      Origin = 'SG_ASSOC.PARGER.PVENUSR'
    end
    object Tb_PargerPA001: TStringField
      FieldName = 'PA001'
      Origin = 'SG_ASSOC.PARGER.PA001'
      Size = 17
    end
    object Tb_PargerPA002: TStringField
      FieldName = 'PA002'
      Origin = 'SG_ASSOC.PARGER.PA002'
      Size = 17
    end
    object Tb_PargerPA003: TStringField
      FieldName = 'PA003'
      Origin = 'SG_ASSOC.PARGER.PA003'
      Size = 17
    end
    object Tb_PargerPAQTDATA: TFloatField
      FieldName = 'PAQTDATA'
      Origin = 'SG_ASSOC.PARGER.PAQTDATA'
    end
    object Tb_PargerPAUSRTD: TFloatField
      FieldName = 'PAUSRTD'
      Origin = 'SG_ASSOC.PARGER.PAUSRTD'
    end
    object Tb_PargerPMOD02: TFloatField
      FieldName = 'PMOD02'
      Origin = 'SG_ASSOC.PARGER.PMOD02'
    end
    object Tb_PargerPVISA: TFloatField
      FieldName = 'PVISA'
      Origin = 'SG_ASSOC.PARGER.PVISA'
    end
    object Tb_PargerPANVISA: TFloatField
      FieldName = 'PANVISA'
      Origin = 'SG_ASSOC.PARGER.PANVISA'
    end
    object Tb_PargerPREDE: TFloatField
      FieldName = 'PREDE'
      Origin = 'SG_ASSOC.PARGER.PREDE'
    end
    object Tb_PargerPCONV: TFloatField
      FieldName = 'PCONV'
      Origin = 'SG_ASSOC.PARGER.PCONV'
    end
    object Tb_PargerPCODDBC: TFloatField
      FieldName = 'PCODDBC'
      Origin = 'SG_ASSOC.PARGER.PCODDBC'
    end
    object Tb_PargerPDCADRED: TFloatField
      FieldName = 'PDCADRED'
      Origin = 'SG_ASSOC.PARGER.PDCADRED'
    end
    object Tb_PargerPCODLOC: TFloatField
      FieldName = 'PCODLOC'
      Origin = 'SG_ASSOC.PARGER.PCODLOC'
    end
    object Tb_PargerPCODBAI: TFloatField
      FieldName = 'PCODBAI'
      Origin = 'SG_ASSOC.PARGER.PCODBAI'
    end
    object Tb_PargerPMOEDA: TStringField
      FieldName = 'PMOEDA'
      Origin = 'SG_ASSOC.PARGER.PMOEDA'
      Size = 3
    end
    object Tb_PargerPPRZVAL: TFloatField
      FieldName = 'PPRZVAL'
      Origin = 'SG_ASSOC.PARGER.PPRZVAL'
    end
    object Tb_PargerPVERCRE: TFloatField
      FieldName = 'PVERCRE'
      Origin = 'SG_ASSOC.PARGER.PVERCRE'
    end
    object Tb_PargerPQTDBLQ: TFloatField
      FieldName = 'PQTDBLQ'
      Origin = 'SG_ASSOC.PARGER.PQTDBLQ'
    end
    object Tb_PargerPTPBLQ: TFloatField
      FieldName = 'PTPBLQ'
      Origin = 'SG_ASSOC.PARGER.PTPBLQ'
    end
    object Tb_PargerPPRZCOMP: TFloatField
      FieldName = 'PPRZCOMP'
      Origin = 'SG_ASSOC.PARGER.PPRZCOMP'
    end
    object Tb_PargerPDTUBKP: TDateTimeField
      FieldName = 'PDTUBKP'
      Origin = 'SG_ASSOC.PARGER.PDTUBKP'
    end
    object Tb_PargerPHRABKP: TStringField
      FieldName = 'PHRABKP'
      Origin = 'SG_ASSOC.PARGER.PHRABKP'
      Size = 10
    end
    object Tb_PargerPDCAMBKP: TStringField
      FieldName = 'PDCAMBKP'
      Origin = 'SG_ASSOC.PARGER.PDCAMBKP'
      Size = 150
    end
    object Tb_PargerPDRESBKP: TStringField
      FieldName = 'PDRESBKP'
      Origin = 'SG_ASSOC.PARGER.PDRESBKP'
      Size = 150
    end
    object Tb_PargerPDQTDRES: TFloatField
      FieldName = 'PDQTDRES'
      Origin = 'SG_ASSOC.PARGER.PDQTDRES'
    end
    object Tb_PargerPDDTPRES: TDateTimeField
      FieldName = 'PDDTPRES'
      Origin = 'SG_ASSOC.PARGER.PDDTPRES'
    end
    object Tb_PargerPDQPCOP: TFloatField
      FieldName = 'PDQPCOP'
      Origin = 'SG_ASSOC.PARGER.PDQPCOP'
    end
    object Tb_PargerPUCADGRU: TFloatField
      FieldName = 'PUCADGRU'
      Origin = 'SG_ASSOC.PARGER.PUCADGRU'
    end
    object Tb_PargerPUCADRAM: TFloatField
      FieldName = 'PUCADRAM'
      Origin = 'SG_ASSOC.PARGER.PUCADRAM'
    end
    object Tb_PargerPUCADCON: TFloatField
      FieldName = 'PUCADCON'
      Origin = 'SG_ASSOC.PARGER.PUCADCON'
    end
    object Tb_PargerPUCADTIP: TFloatField
      FieldName = 'PUCADTIP'
      Origin = 'SG_ASSOC.PARGER.PUCADTIP'
    end
    object Tb_PargerPUREGMS: TFloatField
      FieldName = 'PUREGMS'
      Origin = 'SG_ASSOC.PARGER.PUREGMS'
    end
    object Tb_PargerPUPISCOF: TFloatField
      FieldName = 'PUPISCOF'
      Origin = 'SG_ASSOC.PARGER.PUPISCOF'
    end
    object Tb_PargerPUTABICM: TFloatField
      FieldName = 'PUTABICM'
      Origin = 'SG_ASSOC.PARGER.PUTABICM'
    end
    object Tb_PargerPUPVESP: TFloatField
      FieldName = 'PUPVESP'
      Origin = 'SG_ASSOC.PARGER.PUPVESP'
    end
    object Tb_PargerPUFOLHA: TFloatField
      FieldName = 'PUFOLHA'
      Origin = 'SG_ASSOC.PARGER.PUFOLHA'
    end
    object Tb_PargerPUPMC: TFloatField
      FieldName = 'PUPMC'
      Origin = 'SG_ASSOC.PARGER.PUPMC'
    end
    object Tb_PargerPPVPED: TFloatField
      FieldName = 'PPVPED'
      Origin = 'SG_ASSOC.PARGER.PPVPED'
    end
    object Tb_PargerPECFDIR: TFloatField
      FieldName = 'PECFDIR'
      Origin = 'SG_ASSOC.PARGER.PECFDIR'
    end
    object Tb_PargerPDUPTIP1: TFloatField
      FieldName = 'PDUPTIP1'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP1'
    end
    object Tb_PargerPDUPTIP2: TFloatField
      FieldName = 'PDUPTIP2'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP2'
    end
    object Tb_PargerPDUPTIP3: TFloatField
      FieldName = 'PDUPTIP3'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP3'
    end
    object Tb_PargerPDUPTIP4: TFloatField
      FieldName = 'PDUPTIP4'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP4'
    end
    object Tb_PargerPDUPTIP5: TFloatField
      FieldName = 'PDUPTIP5'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP5'
    end
    object Tb_PargerPDUPTIP6: TFloatField
      FieldName = 'PDUPTIP6'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP6'
    end
    object Tb_PargerPDUPTIP7: TFloatField
      FieldName = 'PDUPTIP7'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP7'
    end
    object Tb_PargerPDUPTIP8: TFloatField
      FieldName = 'PDUPTIP8'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP8'
    end
    object Tb_PargerPDUPTIP9: TFloatField
      FieldName = 'PDUPTIP9'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP9'
    end
    object Tb_PargerPDESTTIP1: TFloatField
      FieldName = 'PDESTTIP1'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP1'
    end
    object Tb_PargerPDESTTIP2: TFloatField
      FieldName = 'PDESTTIP2'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP2'
    end
    object Tb_PargerPDESTTIP3: TFloatField
      FieldName = 'PDESTTIP3'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP3'
    end
    object Tb_PargerPDESTTIP4: TFloatField
      FieldName = 'PDESTTIP4'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP4'
    end
    object Tb_PargerPDESTTIP5: TFloatField
      FieldName = 'PDESTTIP5'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP5'
    end
    object Tb_PargerPDESTTIP6: TFloatField
      FieldName = 'PDESTTIP6'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP6'
    end
    object Tb_PargerPDESTTIP7: TFloatField
      FieldName = 'PDESTTIP7'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP7'
    end
    object Tb_PargerPDESTTIP8: TFloatField
      FieldName = 'PDESTTIP8'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP8'
    end
    object Tb_PargerPDESTTIP9: TFloatField
      FieldName = 'PDESTTIP9'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP9'
    end
    object Tb_PargerPCASIND: TFloatField
      FieldName = 'PCASIND'
      Origin = 'SG_ASSOC.PARGER.PCASIND'
    end
    object Tb_PargerPINDUSTRIA: TFloatField
      FieldName = 'PINDUSTRIA'
      Origin = 'SG_ASSOC.PARGER.PINDUSTRIA'
    end
    object Tb_PargerPPUZERO: TFloatField
      FieldName = 'PPUZERO'
      Origin = 'SG_ASSOC.PARGER.PPUZERO'
    end
    object Tb_PargerPAGRUDUP: TFloatField
      FieldName = 'PAGRUDUP'
      Origin = 'SG_ASSOC.PARGER.PAGRUDUP'
    end
    object Tb_PargerPDTAMUBKP: TFloatField
      FieldName = 'PDTAMUBKP'
      Origin = 'SG_ASSOC.PARGER.PDTAMUBKP'
    end
    object Tb_PargerPANOTUNI: TFloatField
      FieldName = 'PANOTUNI'
      Origin = 'SG_ASSOC.PARGER.PANOTUNI'
    end
    object Tb_PargerPECFCAI: TFloatField
      FieldName = 'PECFCAI'
      Origin = 'SG_ASSOC.PARGER.PECFCAI'
    end
    object Tb_PargerPEXTRACUS: TFloatField
      FieldName = 'PEXTRACUS'
      Origin = 'SG_ASSOC.PARGER.PEXTRACUS'
    end
    object Tb_PargerPUPALNUM: TFloatField
      FieldName = 'PUPALNUM'
      Origin = 'SG_ASSOC.PARGER.PUPALNUM'
    end
    object Tb_PargerPPALNUM: TStringField
      FieldName = 'PPALNUM'
      Origin = 'SG_ASSOC.PARGER.PPALNUM'
      Size = 10
    end
    object Tb_PargerPEXTRAMEN: TFloatField
      FieldName = 'PEXTRAMEN'
      Origin = 'SG_ASSOC.PARGER.PEXTRAMEN'
    end
    object Tb_PargerPONCHAGEPRO: TFloatField
      FieldName = 'PONCHAGEPRO'
      Origin = 'SG_ASSOC.PARGER.PONCHAGEPRO'
    end
    object Tb_PargerPCLIOINF: TFloatField
      FieldName = 'PCLIOINF'
      Origin = 'SG_ASSOC.PARGER.PCLIOINF'
    end
    object Tb_PargerPACREGER: TFloatField
      FieldName = 'PACREGER'
      Origin = 'SG_ASSOC.PARGER.PACREGER'
    end
    object Tb_PargerPECFSOLCOD: TFloatField
      FieldName = 'PECFSOLCOD'
      Origin = 'SG_ASSOC.PARGER.PECFSOLCOD'
    end
    object Tb_PargerPECFFECCOM: TFloatField
      FieldName = 'PECFFECCOM'
      Origin = 'SG_ASSOC.PARGER.PECFFECCOM'
    end
    object Tb_PargerPCASPUIND: TFloatField
      FieldName = 'PCASPUIND'
      Origin = 'SG_ASSOC.PARGER.PCASPUIND'
    end
    object Tb_PargerPTITAGER: TStringField
      FieldName = 'PTITAGER'
      Origin = 'SG_ASSOC.PARGER.PTITAGER'
    end
    object Tb_PargerPCRITCNPJ: TFloatField
      FieldName = 'PCRITCNPJ'
      Origin = 'SG_ASSOC.PARGER.PCRITCNPJ'
    end
    object Tb_PargerPCRITIE: TFloatField
      FieldName = 'PCRITIE'
      Origin = 'SG_ASSOC.PARGER.PCRITIE'
    end
    object Tb_PargerPFSM: TFloatField
      FieldName = 'PFSM'
      Origin = 'SG_ASSOC.PARGER.PFSM'
    end
    object Tb_PargerPLCVM: TFloatField
      FieldName = 'PLCVM'
      Origin = 'SG_ASSOC.PARGER.PLCVM'
    end
    object Tb_PargerPFORMACE: TFloatField
      FieldName = 'PFORMACE'
      Origin = 'SG_ASSOC.PARGER.PFORMACE'
    end
    object Tb_PargerPMANDATCXBX: TFloatField
      FieldName = 'PMANDATCXBX'
      Origin = 'SG_ASSOC.PARGER.PMANDATCXBX'
    end
    object Tb_PargerPCADCLITAXC: TFloatField
      FieldName = 'PCADCLITAXC'
      Origin = 'SG_ASSOC.PARGER.PCADCLITAXC'
    end
    object Tb_PargerPLS_NUMPED: TFloatField
      FieldName = 'PLS_NUMPED'
      Origin = 'SG_ASSOC.PARGER.PLS_NUMPED'
    end
    object Tb_PargerPLS_NUMPF: TFloatField
      FieldName = 'PLS_NUMPF'
      Origin = 'SG_ASSOC.PARGER.PLS_NUMPF'
    end
    object Tb_PargerPPERCPL: TFloatField
      FieldName = 'PPERCPL'
      Origin = 'SG_ASSOC.PARGER.PPERCPL'
    end
    object Tb_PargerPCALCPPRO: TFloatField
      FieldName = 'PCALCPPRO'
      Origin = 'SG_ASSOC.PARGER.PCALCPPRO'
    end
    object Tb_PargerPBLQDEVOL: TFloatField
      FieldName = 'PBLQDEVOL'
      Origin = 'SG_ASSOC.PARGER.PBLQDEVOL'
    end
    object Tb_PargerPMPDISP: TFloatField
      FieldName = 'PMPDISP'
      Origin = 'SG_ASSOC.PARGER.PMPDISP'
    end
    object Tb_PargerPTIPOEXT: TFloatField
      FieldName = 'PTIPOEXT'
      Origin = 'SG_ASSOC.PARGER.PTIPOEXT'
    end
    object Tb_PargerPCRDOCSIG: TStringField
      FieldName = 'PCRDOCSIG'
      Origin = 'SG_ASSOC.PARGER.PCRDOCSIG'
      Size = 3
    end
    object Tb_PargerPCRDOC: TFloatField
      FieldName = 'PCRDOC'
      Origin = 'SG_ASSOC.PARGER.PCRDOC'
    end
    object Tb_PargerPQTDDIAV: TFloatField
      FieldName = 'PQTDDIAV'
      Origin = 'SG_ASSOC.PARGER.PQTDDIAV'
    end
    object Tb_PargerPDIASORCAT: TFloatField
      FieldName = 'PDIASORCAT'
      Origin = 'SG_ASSOC.PARGER.PDIASORCAT'
    end
    object Tb_PargerPCODMOE: TFloatField
      FieldName = 'PCODMOE'
      Origin = 'SG_ASSOC.PARGER.PCODMOE'
    end
    object Tb_PargerPLSEPCUPOM: TFloatField
      FieldName = 'PLSEPCUPOM'
      Origin = 'SG_ASSOC.PARGER.PLSEPCUPOM'
    end
    object Tb_PargerPDUPTIP10: TFloatField
      FieldName = 'PDUPTIP10'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP10'
    end
    object Tb_PargerPDUPTIP11: TFloatField
      FieldName = 'PDUPTIP11'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP11'
    end
    object Tb_PargerPDUPTIP12: TFloatField
      FieldName = 'PDUPTIP12'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP12'
    end
    object Tb_PargerPDUPTIP13: TFloatField
      FieldName = 'PDUPTIP13'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP13'
    end
    object Tb_PargerPDUPTIP14: TFloatField
      FieldName = 'PDUPTIP14'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP14'
    end
    object Tb_PargerPDUPTIP15: TFloatField
      FieldName = 'PDUPTIP15'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP15'
    end
    object Tb_PargerPDESTTIP10: TFloatField
      FieldName = 'PDESTTIP10'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP10'
    end
    object Tb_PargerPDESTTIP11: TFloatField
      FieldName = 'PDESTTIP11'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP11'
    end
    object Tb_PargerPDESTTIP12: TFloatField
      FieldName = 'PDESTTIP12'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP12'
    end
    object Tb_PargerPDESTTIP13: TFloatField
      FieldName = 'PDESTTIP13'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP13'
    end
    object Tb_PargerPDESTTIP14: TFloatField
      FieldName = 'PDESTTIP14'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP14'
    end
    object Tb_PargerPDESTTIP15: TFloatField
      FieldName = 'PDESTTIP15'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP15'
    end
    object Tb_PargerPFCORP_ACAB: TFloatField
      FieldName = 'PFCORP_ACAB'
      Origin = 'SG_ASSOC.PARGER.PFCORP_ACAB'
    end
    object Tb_PargerPFCORP_SERV: TFloatField
      FieldName = 'PFCORP_SERV'
      Origin = 'SG_ASSOC.PARGER.PFCORP_SERV'
    end
    object Tb_PargerPFCORP_MPR: TFloatField
      FieldName = 'PFCORP_MPR'
      Origin = 'SG_ASSOC.PARGER.PFCORP_MPR'
    end
    object Tb_PargerPFCORP_PP: TFloatField
      FieldName = 'PFCORP_PP'
      Origin = 'SG_ASSOC.PARGER.PFCORP_PP'
    end
    object Tb_PargerPFCORP_MP: TFloatField
      FieldName = 'PFCORP_MP'
      Origin = 'SG_ASSOC.PARGER.PFCORP_MP'
    end
    object Tb_PargerPFCORP_ISUM: TFloatField
      FieldName = 'PFCORP_ISUM'
      Origin = 'SG_ASSOC.PARGER.PFCORP_ISUM'
    end
    object Tb_PargerPFCORP_OUT: TFloatField
      FieldName = 'PFCORP_OUT'
      Origin = 'SG_ASSOC.PARGER.PFCORP_OUT'
    end
    object Tb_PargerPFCORP_VENC: TFloatField
      FieldName = 'PFCORP_VENC'
      Origin = 'SG_ASSOC.PARGER.PFCORP_VENC'
    end
    object Tb_PargerPFCORP_BLOQ: TFloatField
      FieldName = 'PFCORP_BLOQ'
      Origin = 'SG_ASSOC.PARGER.PFCORP_BLOQ'
    end
    object Tb_PargerPFATDPRO: TFloatField
      FieldName = 'PFATDPRO'
      Origin = 'SG_ASSOC.PARGER.PFATDPRO'
    end
    object Tb_PargerPUIMOBIL: TFloatField
      FieldName = 'PUIMOBIL'
      Origin = 'SG_ASSOC.PARGER.PUIMOBIL'
    end
    object Tb_PargerPUCONVEI: TFloatField
      FieldName = 'PUCONVEI'
      Origin = 'SG_ASSOC.PARGER.PUCONVEI'
    end
    object Tb_PargerPTAMJPG: TFloatField
      FieldName = 'PTAMJPG'
      Origin = 'SG_ASSOC.PARGER.PTAMJPG'
    end
    object Tb_PargerPOCUEST: TFloatField
      FieldName = 'POCUEST'
      Origin = 'SG_ASSOC.PARGER.POCUEST'
    end
    object Tb_PargerPPPADATU: TFloatField
      FieldName = 'PPPADATU'
      Origin = 'SG_ASSOC.PARGER.PPPADATU'
    end
    object Tb_PargerPDM_ENDIP: TStringField
      FieldName = 'PDM_ENDIP'
      Origin = 'SG_ASSOC.PARGER.PDM_ENDIP'
    end
    object Tb_PargerPDM_PORTA: TFloatField
      FieldName = 'PDM_PORTA'
      Origin = 'SG_ASSOC.PARGER.PDM_PORTA'
    end
    object Tb_PargerPPCOGRA: TFloatField
      FieldName = 'PPCOGRA'
      Origin = 'SG_ASSOC.PARGER.PPCOGRA'
    end
    object Tb_PargerPEXCFP_EXCPED: TFloatField
      FieldName = 'PEXCFP_EXCPED'
      Origin = 'SG_ASSOC.PARGER.PEXCFP_EXCPED'
    end
    object Tb_PargerPPEDFPGTO: TFloatField
      FieldName = 'PPEDFPGTO'
      Origin = 'SG_ASSOC.PARGER.PPEDFPGTO'
    end
    object Tb_PargerPDUPCNPJ: TFloatField
      FieldName = 'PDUPCNPJ'
      Origin = 'SG_ASSOC.PARGER.PDUPCNPJ'
    end
    object Tb_PargerPCOMASSE: TFloatField
      FieldName = 'PCOMASSE'
      Origin = 'SG_ASSOC.PARGER.PCOMASSE'
    end
    object Tb_PargerPCONSPROPAD: TFloatField
      FieldName = 'PCONSPROPAD'
      Origin = 'SG_ASSOC.PARGER.PCONSPROPAD'
    end
    object Tb_PargerPLEITORPED: TFloatField
      FieldName = 'PLEITORPED'
      Origin = 'SG_ASSOC.PARGER.PLEITORPED'
    end
    object Tb_PargerPLEITORPF: TFloatField
      FieldName = 'PLEITORPF'
      Origin = 'SG_ASSOC.PARGER.PLEITORPF'
    end
    object Tb_PargerPLEITORAJU: TFloatField
      FieldName = 'PLEITORAJU'
      Origin = 'SG_ASSOC.PARGER.PLEITORAJU'
    end
    object Tb_PargerPDUPTIP16: TFloatField
      FieldName = 'PDUPTIP16'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP16'
    end
    object Tb_PargerPDUPTIP18: TFloatField
      FieldName = 'PDUPTIP18'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP18'
    end
    object Tb_PargerPDESTTIP16: TFloatField
      FieldName = 'PDESTTIP16'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP16'
    end
    object Tb_PargerPDESTTIP17: TFloatField
      FieldName = 'PDESTTIP17'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP17'
    end
    object Tb_PargerPDESTTIP18: TFloatField
      FieldName = 'PDESTTIP18'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP18'
    end
    object Tb_PargerPDUPTIP17: TFloatField
      FieldName = 'PDUPTIP17'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP17'
    end
    object Tb_PargerPTRODCX: TFloatField
      FieldName = 'PTRODCX'
      Origin = 'SG_ASSOC.PARGER.PTRODCX'
    end
    object Tb_PargerPTROEMP100: TFloatField
      FieldName = 'PTROEMP100'
      Origin = 'SG_ASSOC.PARGER.PTROEMP100'
    end
    object Tb_PargerPPERCPLCX: TFloatField
      FieldName = 'PPERCPLCX'
      Origin = 'SG_ASSOC.PARGER.PPERCPLCX'
    end
    object Tb_PargerPPERCPLFARDO: TFloatField
      FieldName = 'PPERCPLFARDO'
      Origin = 'SG_ASSOC.PARGER.PPERCPLFARDO'
    end
    object Tb_PargerPPERCPLPCT: TFloatField
      FieldName = 'PPERCPLPCT'
      Origin = 'SG_ASSOC.PARGER.PPERCPLPCT'
    end
    object Tb_PargerPCODPROPADFAT: TFloatField
      FieldName = 'PCODPROPADFAT'
      Origin = 'SG_ASSOC.PARGER.PCODPROPADFAT'
    end
    object Tb_PargerPQTDCASARRED: TFloatField
      FieldName = 'PQTDCASARRED'
      Origin = 'SG_ASSOC.PARGER.PQTDCASARRED'
    end
    object Tb_PargerPMANPCUSFOR: TFloatField
      FieldName = 'PMANPCUSFOR'
      Origin = 'SG_ASSOC.PARGER.PMANPCUSFOR'
    end
    object Tb_PargerPME_TECLA01: TFloatField
      FieldName = 'PME_TECLA01'
      Origin = 'SG_ASSOC.PARGER.PME_TECLA01'
    end
    object Tb_PargerPME_TECLA02: TFloatField
      FieldName = 'PME_TECLA02'
      Origin = 'SG_ASSOC.PARGER.PME_TECLA02'
    end
    object Tb_PargerPME_TECLA03: TFloatField
      FieldName = 'PME_TECLA03'
      Origin = 'SG_ASSOC.PARGER.PME_TECLA03'
    end
    object Tb_PargerPME_TECLA04: TFloatField
      FieldName = 'PME_TECLA04'
      Origin = 'SG_ASSOC.PARGER.PME_TECLA04'
    end
    object Tb_PargerPCE_TECLA01: TFloatField
      FieldName = 'PCE_TECLA01'
      Origin = 'SG_ASSOC.PARGER.PCE_TECLA01'
    end
    object Tb_PargerPCE_TECLA02: TFloatField
      FieldName = 'PCE_TECLA02'
      Origin = 'SG_ASSOC.PARGER.PCE_TECLA02'
    end
    object Tb_PargerPCE_TECLA03: TFloatField
      FieldName = 'PCE_TECLA03'
      Origin = 'SG_ASSOC.PARGER.PCE_TECLA03'
    end
    object Tb_PargerPCE_TECLA04: TFloatField
      FieldName = 'PCE_TECLA04'
      Origin = 'SG_ASSOC.PARGER.PCE_TECLA04'
    end
    object Tb_PargerPATIVARTODAS: TFloatField
      FieldName = 'PATIVARTODAS'
      Origin = 'SG_ASSOC.PARGER.PATIVARTODAS'
    end
    object Tb_PargerPONCHANGECLI: TFloatField
      FieldName = 'PONCHANGECLI'
      Origin = 'SG_ASSOC.PARGER.PONCHANGECLI'
    end
    object Tb_PargerPONCHANGELOC: TFloatField
      FieldName = 'PONCHANGELOC'
      Origin = 'SG_ASSOC.PARGER.PONCHANGELOC'
    end
    object Tb_PargerPONCHANGEBAI: TFloatField
      FieldName = 'PONCHANGEBAI'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEBAI'
    end
    object Tb_PargerPONCHANGEPV: TFloatField
      FieldName = 'PONCHANGEPV'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEPV'
    end
    object Tb_PargerPONCHANGEVEND: TFloatField
      FieldName = 'PONCHANGEVEND'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEVEND'
    end
    object Tb_PargerPONCHANGUSR: TFloatField
      FieldName = 'PONCHANGUSR'
      Origin = 'SG_ASSOC.PARGER.PONCHANGUSR'
    end
    object Tb_PargerPONCHANGECAR: TFloatField
      FieldName = 'PONCHANGECAR'
      Origin = 'SG_ASSOC.PARGER.PONCHANGECAR'
    end
    object Tb_PargerPONCHANGFUN: TFloatField
      FieldName = 'PONCHANGFUN'
      Origin = 'SG_ASSOC.PARGER.PONCHANGFUN'
    end
    object Tb_PargerPONCHANGREDEC: TFloatField
      FieldName = 'PONCHANGREDEC'
      Origin = 'SG_ASSOC.PARGER.PONCHANGREDEC'
    end
    object Tb_PargerPONCHANGEGPRO: TFloatField
      FieldName = 'PONCHANGEGPRO'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEGPRO'
    end
    object Tb_PargerPONCHANGRPRO: TFloatField
      FieldName = 'PONCHANGRPRO'
      Origin = 'SG_ASSOC.PARGER.PONCHANGRPRO'
    end
    object Tb_PargerPONCHANGETPRO: TFloatField
      FieldName = 'PONCHANGETPRO'
      Origin = 'SG_ASSOC.PARGER.PONCHANGETPRO'
    end
    object Tb_PargerPONCHANGECPRO: TFloatField
      FieldName = 'PONCHANGECPRO'
      Origin = 'SG_ASSOC.PARGER.PONCHANGECPRO'
    end
    object Tb_PargerPONCHANGERCLI: TFloatField
      FieldName = 'PONCHANGERCLI'
      Origin = 'SG_ASSOC.PARGER.PONCHANGERCLI'
    end
    object Tb_PargerPONCHANGESUP: TFloatField
      FieldName = 'PONCHANGESUP'
      Origin = 'SG_ASSOC.PARGER.PONCHANGESUP'
    end
    object Tb_PargerPONCHANGETRA: TFloatField
      FieldName = 'PONCHANGETRA'
      Origin = 'SG_ASSOC.PARGER.PONCHANGETRA'
    end
    object Tb_PargerPTIPOAJUDA: TFloatField
      FieldName = 'PTIPOAJUDA'
      Origin = 'SG_ASSOC.PARGER.PTIPOAJUDA'
    end
    object Tb_PargerPONCHANGEUF: TFloatField
      FieldName = 'PONCHANGEUF'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEUF'
    end
    object Tb_PargerPONCHANGECV: TFloatField
      FieldName = 'PONCHANGECV'
      Origin = 'SG_ASSOC.PARGER.PONCHANGECV'
    end
    object Tb_PargerPONCHANGEFOR: TFloatField
      FieldName = 'PONCHANGEFOR'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEFOR'
    end
    object Tb_PargerPONCHANGEDBC: TFloatField
      FieldName = 'PONCHANGEDBC'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEDBC'
    end
    object Tb_PargerPONCHANGEDEPCX: TFloatField
      FieldName = 'PONCHANGEDEPCX'
      Origin = 'SG_ASSOC.PARGER.PONCHANGEDEPCX'
    end
    object Tb_PargerPONCHANGECCU: TFloatField
      FieldName = 'PONCHANGECCU'
      Origin = 'SG_ASSOC.PARGER.PONCHANGECCU'
    end
    object Tb_PargerPTAMJPGALT: TFloatField
      FieldName = 'PTAMJPGALT'
      Origin = 'SG_ASSOC.PARGER.PTAMJPGALT'
    end
    object Tb_PargerPTAMJPGTAM: TFloatField
      FieldName = 'PTAMJPGTAM'
      Origin = 'SG_ASSOC.PARGER.PTAMJPGTAM'
    end
    object Tb_PargerPPROMCADPRO: TFloatField
      FieldName = 'PPROMCADPRO'
      Origin = 'SG_ASSOC.PARGER.PPROMCADPRO'
    end
    object Tb_PargerPTEXTOBAIXO: TStringField
      FieldName = 'PTEXTOBAIXO'
      Origin = 'SG_ASSOC.PARGER.PTEXTOBAIXO'
      Size = 10
    end
    object Tb_PargerPCORTEXBAIXO: TFloatField
      FieldName = 'PCORTEXBAIXO'
      Origin = 'SG_ASSOC.PARGER.PCORTEXBAIXO'
    end
    object Tb_PargerPTEXTOALTO: TStringField
      FieldName = 'PTEXTOALTO'
      Origin = 'SG_ASSOC.PARGER.PTEXTOALTO'
      Size = 10
    end
    object Tb_PargerPCORTEXALTO: TFloatField
      FieldName = 'PCORTEXALTO'
      Origin = 'SG_ASSOC.PARGER.PCORTEXALTO'
    end
    object Tb_PargerPTEXTOAMBAS: TStringField
      FieldName = 'PTEXTOAMBAS'
      Origin = 'SG_ASSOC.PARGER.PTEXTOAMBAS'
      Size = 10
    end
    object Tb_PargerPCORTEXAMBAS: TFloatField
      FieldName = 'PCORTEXAMBAS'
      Origin = 'SG_ASSOC.PARGER.PCORTEXAMBAS'
    end
    object Tb_PargerPUSA_DEGRADE: TFloatField
      FieldName = 'PUSA_DEGRADE'
      Origin = 'SG_ASSOC.PARGER.PUSA_DEGRADE'
    end
    object Tb_PargerPIMAGEM_DEGRADE: TBlobField
      FieldName = 'PIMAGEM_DEGRADE'
      Origin = 'SG_ASSOC.PARGER.PIMAGEM_DEGRADE'
      Size = 1
    end
    object Tb_PargerPTIPOTEF: TFloatField
      FieldName = 'PTIPOTEF'
      Origin = 'SG_ASSOC.PARGER.PTIPOTEF'
    end
    object Tb_PargerPTIPOMENU: TFloatField
      FieldName = 'PTIPOMENU'
      Origin = 'SG_ASSOC.PARGER.PTIPOMENU'
    end
    object Tb_PargerPFILPRO: TFloatField
      FieldName = 'PFILPRO'
      Origin = 'SG_ASSOC.PARGER.PFILPRO'
    end
    object Tb_PargerPHOSTEMAIL: TStringField
      FieldName = 'PHOSTEMAIL'
      Origin = 'SG_ASSOC.PARGER.PHOSTEMAIL'
      Size = 60
    end
    object Tb_PargerPUSEREMAIL: TStringField
      FieldName = 'PUSEREMAIL'
      Origin = 'SG_ASSOC.PARGER.PUSEREMAIL'
      Size = 60
    end
    object Tb_PargerPSENHAEMAIL: TStringField
      FieldName = 'PSENHAEMAIL'
      Origin = 'SG_ASSOC.PARGER.PSENHAEMAIL'
      Size = 60
    end
    object Tb_PargerPATPCOFABENT: TFloatField
      FieldName = 'PATPCOFABENT'
      Origin = 'SG_ASSOC.PARGER.PATPCOFABENT'
    end
    object Tb_PargerPFORPEDPAD: TFloatField
      FieldName = 'PFORPEDPAD'
      Origin = 'SG_ASSOC.PARGER.PFORPEDPAD'
    end
    object Tb_PargerPLSEPMOD02: TFloatField
      FieldName = 'PLSEPMOD02'
      Origin = 'SG_ASSOC.PARGER.PLSEPMOD02'
    end
    object Tb_PargerPCONSPROPED: TFloatField
      FieldName = 'PCONSPROPED'
      Origin = 'SG_ASSOC.PARGER.PCONSPROPED'
    end
    object Tb_PargerPLORCMOD02: TFloatField
      FieldName = 'PLORCMOD02'
      Origin = 'SG_ASSOC.PARGER.PLORCMOD02'
    end
    object Tb_PargerPDUPTIP19: TFloatField
      FieldName = 'PDUPTIP19'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP19'
    end
    object Tb_PargerPDUPTIP20: TFloatField
      FieldName = 'PDUPTIP20'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP20'
    end
    object Tb_PargerPDUPTIP21: TFloatField
      FieldName = 'PDUPTIP21'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP21'
    end
    object Tb_PargerPDUPTIP22: TFloatField
      FieldName = 'PDUPTIP22'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP22'
    end
    object Tb_PargerPDUPTIP23: TFloatField
      FieldName = 'PDUPTIP23'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP23'
    end
    object Tb_PargerPDUPTIP24: TFloatField
      FieldName = 'PDUPTIP24'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP24'
    end
    object Tb_PargerPDUPTIP25: TFloatField
      FieldName = 'PDUPTIP25'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP25'
    end
    object Tb_PargerPDESTTIP19: TFloatField
      FieldName = 'PDESTTIP19'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP19'
    end
    object Tb_PargerPDESTTIP20: TFloatField
      FieldName = 'PDESTTIP20'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP20'
    end
    object Tb_PargerPDESTTIP21: TFloatField
      FieldName = 'PDESTTIP21'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP21'
    end
    object Tb_PargerPDESTTIP22: TFloatField
      FieldName = 'PDESTTIP22'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP22'
    end
    object Tb_PargerPDESTTIP23: TFloatField
      FieldName = 'PDESTTIP23'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP23'
    end
    object Tb_PargerPDESTTIP24: TFloatField
      FieldName = 'PDESTTIP24'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP24'
    end
    object Tb_PargerPDESTTIP25: TFloatField
      FieldName = 'PDESTTIP25'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP25'
    end
    object Tb_PargerPQTDLCQP: TFloatField
      FieldName = 'PQTDLCQP'
      Origin = 'SG_ASSOC.PARGER.PQTDLCQP'
    end
    object Tb_PargerPIND_TPFORMULA: TFloatField
      FieldName = 'PIND_TPFORMULA'
      Origin = 'SG_ASSOC.PARGER.PIND_TPFORMULA'
    end
    object Tb_PargerPFORPROPAD: TFloatField
      FieldName = 'PFORPROPAD'
      Origin = 'SG_ASSOC.PARGER.PFORPROPAD'
    end
    object Tb_PargerPLOGUSRPED: TFloatField
      FieldName = 'PLOGUSRPED'
      Origin = 'SG_ASSOC.PARGER.PLOGUSRPED'
    end
    object Tb_PargerPHINTPROPED: TFloatField
      FieldName = 'PHINTPROPED'
      Origin = 'SG_ASSOC.PARGER.PHINTPROPED'
    end
    object Tb_PargerPVISMLUC: TFloatField
      FieldName = 'PVISMLUC'
      Origin = 'SG_ASSOC.PARGER.PVISMLUC'
    end
    object Tb_PargerPCOMISPAD: TFloatField
      FieldName = 'PCOMISPAD'
      Origin = 'SG_ASSOC.PARGER.PCOMISPAD'
    end
    object Tb_PargerPATUCOMPROGRU: TFloatField
      FieldName = 'PATUCOMPROGRU'
      Origin = 'SG_ASSOC.PARGER.PATUCOMPROGRU'
    end
    object Tb_PargerPMTE: TFloatField
      FieldName = 'PMTE'
      Origin = 'SG_ASSOC.PARGER.PMTE'
    end
    object Tb_PargerPBLOQCNPJ: TFloatField
      FieldName = 'PBLOQCNPJ'
      Origin = 'SG_ASSOC.PARGER.PBLOQCNPJ'
    end
    object Tb_PargerPBLOQCEP: TFloatField
      FieldName = 'PBLOQCEP'
      Origin = 'SG_ASSOC.PARGER.PBLOQCEP'
    end
    object Tb_PargerPDEV_TABPV: TStringField
      FieldName = 'PDEV_TABPV'
      Origin = 'SG_ASSOC.PARGER.PDEV_TABPV'
      Size = 2
    end
    object Tb_PargerPDEV_CODPV: TFloatField
      FieldName = 'PDEV_CODPV'
      Origin = 'SG_ASSOC.PARGER.PDEV_CODPV'
    end
    object Tb_PargerPFRENTE_VDANOR: TFloatField
      FieldName = 'PFRENTE_VDANOR'
      Origin = 'SG_ASSOC.PARGER.PFRENTE_VDANOR'
    end
    object Tb_PargerPQTDDBLOQPED: TFloatField
      FieldName = 'PQTDDBLOQPED'
      Origin = 'SG_ASSOC.PARGER.PQTDDBLOQPED'
    end
    object Tb_PargerPDESCEXTRA_PEDRET: TFloatField
      FieldName = 'PDESCEXTRA_PEDRET'
      Origin = 'SG_ASSOC.PARGER.PDESCEXTRA_PEDRET'
    end
    object Tb_PargerPPCOPADLIQ: TFloatField
      FieldName = 'PPCOPADLIQ'
      Origin = 'SG_ASSOC.PARGER.PPCOPADLIQ'
    end
    object Tb_PargerPGRAVPEDBLOQ: TFloatField
      FieldName = 'PGRAVPEDBLOQ'
      Origin = 'SG_ASSOC.PARGER.PGRAVPEDBLOQ'
    end
    object Tb_PargerPPROD_DNOME2: TStringField
      FieldName = 'PPROD_DNOME2'
      Origin = 'SG_ASSOC.PARGER.PPROD_DNOME2'
      Size = 30
    end
    object Tb_PargerPKITPROD: TFloatField
      FieldName = 'PKITPROD'
      Origin = 'SG_ASSOC.PARGER.PKITPROD'
    end
    object Tb_PargerPVENDCLI: TFloatField
      FieldName = 'PVENDCLI'
      Origin = 'SG_ASSOC.PARGER.PVENDCLI'
    end
    object Tb_PargerPBLOQPED_MINAVISO: TFloatField
      FieldName = 'PBLOQPED_MINAVISO'
      Origin = 'SG_ASSOC.PARGER.PBLOQPED_MINAVISO'
    end
    object Tb_PargerPSTATUS_LSEP09: TFloatField
      FieldName = 'PSTATUS_LSEP09'
      Origin = 'SG_ASSOC.PARGER.PSTATUS_LSEP09'
    end
    object Tb_PargerPLSEPSEP_ORDEM: TFloatField
      FieldName = 'PLSEPSEP_ORDEM'
      Origin = 'SG_ASSOC.PARGER.PLSEPSEP_ORDEM'
    end
    object Tb_PargerPCADPRO_VDAFRENTE: TFloatField
      FieldName = 'PCADPRO_VDAFRENTE'
      Origin = 'SG_ASSOC.PARGER.PCADPRO_VDAFRENTE'
    end
    object Tb_PargerPEXPMOV_EXC: TFloatField
      FieldName = 'PEXPMOV_EXC'
      Origin = 'SG_ASSOC.PARGER.PEXPMOV_EXC'
    end
    object Tb_PargerPFCORP_ESTMIN_PRAT: TFloatField
      FieldName = 'PFCORP_ESTMIN_PRAT'
      Origin = 'SG_ASSOC.PARGER.PFCORP_ESTMIN_PRAT'
    end
    object Tb_PargerPFCORP_ESTMIN_GER: TFloatField
      FieldName = 'PFCORP_ESTMIN_GER'
      Origin = 'SG_ASSOC.PARGER.PFCORP_ESTMIN_GER'
    end
    object Tb_PargerPMANDUPREC_AUT: TFloatField
      FieldName = 'PMANDUPREC_AUT'
      Origin = 'SG_ASSOC.PARGER.PMANDUPREC_AUT'
    end
    object Tb_PargerPMANDUPPAG_AUT: TFloatField
      FieldName = 'PMANDUPPAG_AUT'
      Origin = 'SG_ASSOC.PARGER.PMANDUPPAG_AUT'
    end
    object Tb_PargerPTIPOVALDES: TFloatField
      FieldName = 'PTIPOVALDES'
      Origin = 'SG_ASSOC.PARGER.PTIPOVALDES'
    end
    object Tb_PargerPDM_ENDIP_INTERNO: TStringField
      FieldName = 'PDM_ENDIP_INTERNO'
      Origin = 'SG_ASSOC.PARGER.PDM_ENDIP_INTERNO'
      Size = 50
    end
    object Tb_PargerPRECALCPEDMAN: TFloatField
      FieldName = 'PRECALCPEDMAN'
      Origin = 'SG_ASSOC.PARGER.PRECALCPEDMAN'
    end
    object Tb_PargerPACREMPEXTRA: TFloatField
      FieldName = 'PACREMPEXTRA'
      Origin = 'SG_ASSOC.PARGER.PACREMPEXTRA'
    end
    object Tb_PargerPBLQPCOMENOR_QTD: TFloatField
      FieldName = 'PBLQPCOMENOR_QTD'
      Origin = 'SG_ASSOC.PARGER.PBLQPCOMENOR_QTD'
    end
    object Tb_PargerPATUPCUSACABMP: TFloatField
      FieldName = 'PATUPCUSACABMP'
      Origin = 'SG_ASSOC.PARGER.PATUPCUSACABMP'
    end
    object Tb_PargerPCOMPRAPADRAO: TFloatField
      FieldName = 'PCOMPRAPADRAO'
    end
    object Tb_PargerPLVALEMOD02: TFloatField
      FieldName = 'PLVALEMOD02'
      Origin = 'SG_ASSOC.PARGER.PLVALEMOD02'
    end
    object Tb_PargerPFRBMS_VENC: TFloatField
      FieldName = 'PFRBMS_VENC'
      Origin = 'SG_ASSOC.PARGER.PFRBMS_VENC'
    end
    object Tb_PargerPTLOGINEMAIL: TFloatField
      FieldName = 'PTLOGINEMAIL'
      Origin = 'SG_ASSOC.PARGER.PTLOGINEMAIL'
    end
    object Tb_PargerPTAUTENTICAEMAIL: TFloatField
      FieldName = 'PTAUTENTICAEMAIL'
      Origin = 'SG_ASSOC.PARGER.PTAUTENTICAEMAIL'
    end
    object Tb_PargerPPORTAEMAIL: TFloatField
      FieldName = 'PPORTAEMAIL'
      Origin = 'SG_ASSOC.PARGER.PFCORP_EM'
    end
    object Tb_PargerPFCORP_EM: TFloatField
      FieldName = 'PFCORP_EM'
      Origin = 'SG_ASSOC.PARGER.PFCORP_EM'
    end
    object Tb_PargerPFCORP_SBP: TFloatField
      FieldName = 'PFCORP_SBP'
      Origin = 'SG_ASSOC.PARGER.PFCORP_SBP'
    end
    object Tb_PargerPFCORP_PI: TFloatField
      FieldName = 'PFCORP_PI'
      Origin = 'SG_ASSOC.PARGER.PFCORP_PI'
    end
    object Tb_PargerPFCORP_MUC: TFloatField
      FieldName = 'PFCORP_MUC'
      Origin = 'SG_ASSOC.PARGER.PFCORP_MUC'
    end
    object Tb_PargerPFCORP_AI: TFloatField
      FieldName = 'PFCORP_AI'
      Origin = 'SG_ASSOC.PARGER.PFCORP_AI'
    end
    object Tb_PargerPORDEMCADPRO: TFloatField
      FieldName = 'PORDEMCADPRO'
      Origin = 'SG_ASSOC.PARGER.PORDEMCADPRO'
    end
    object Tb_PargerPCLIVEN: TFloatField
      FieldName = 'PCLIVEN'
      Origin = 'SG_ASSOC.PARGER.PCLIVEN'
    end
    object Tb_PargerPFCORP_SEMMOV: TFloatField
      FieldName = 'PFCORP_SEMMOV'
      Origin = 'SG_ASSOC.PARGER.PFCORP_SEMMOV'
    end
    object Tb_PargerPFDIAS_SEMMOV: TFloatField
      FieldName = 'PFDIAS_SEMMOV'
      Origin = 'SG_ASSOC.PARGER.PFDIAS_SEMMOV'
    end
    object Tb_PargerPCOMISVENDA: TFloatField
      FieldName = 'PCOMISVENDA'
      Origin = 'SG_ASSOC.PARGER.PCOMISVENDA'
    end
    object Tb_PargerPDUPTIP26: TFloatField
      FieldName = 'PDUPTIP26'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP26'
    end
    object Tb_PargerPDUPTIP27: TFloatField
      FieldName = 'PDUPTIP27'
      Origin = 'SG_ASSOC.PARGER.PDUPTIP27'
    end
    object Tb_PargerPDESTTIP26: TFloatField
      FieldName = 'PDESTTIP26'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP26'
    end
    object Tb_PargerPDESTTIP27: TFloatField
      FieldName = 'PDESTTIP27'
      Origin = 'SG_ASSOC.PARGER.PDESTTIP27'
    end
    object Tb_PargerPDUPTIP28: TFloatField
      FieldName = 'PDUPTIP28'
    end
    object Tb_PargerPDESTTIP28: TFloatField
      FieldName = 'PDESTTIP28'
    end
    object Tb_PargerPDESTTIP29: TFloatField
      FieldName = 'PDESTTIP29'
    end
    object Tb_PargerPDUPTIP29: TFloatField
      FieldName = 'PDUPTIP29'
    end
    object Tb_PargerPVALIDAR_CERT_TECNICO: TFloatField
      FieldName = 'PVALIDAR_CERT_TECNICO'
      Origin = 'SG_ASSOC.PARGER.PVALIDAR_CERT_TECNICO'
    end
  end
  object Src_ParGer: TDataSource
    DataSet = Tb_Parger
    Left = 533
    Top = 88
  end
  object Tb_UF: TQuery
    CachedUpdates = True
    AfterInsert = Tb_UFAfterInsert
    BeforePost = Tb_UFBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_UFCalcFields
    DatabaseName = 'SG_ASSOC'
    ParamCheck = False
    RequestLive = True
    SQL.Strings = (
      'Select * from CADUF where'
      'PCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_UF
    Left = 682
    Top = 445
    object Tb_UFPCODEMP: TFloatField
      FieldName = 'PCODEMP'
      Origin = 'SG_ASSOC.CADUF.PCODEMP'
    end
    object Tb_UFPUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'PUF'
      Origin = 'SG_ASSOC.CADUF.PUF'
      Size = 2
    end
    object Tb_UFPNOM: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'PNOM'
      Origin = 'SG_ASSOC.CADUF.PNOM'
      Size = 40
    end
    object Tb_UFPORG: TStringField
      FieldName = 'PORG'
      Origin = 'SG_ASSOC.CADUF.PORG'
      Size = 41
    end
    object Tb_UFPDEP: TStringField
      FieldName = 'PDEP'
      Origin = 'SG_ASSOC.CADUF.PDEP'
      Size = 41
    end
    object Tb_UFPEND: TStringField
      FieldName = 'PEND'
      Origin = 'SG_ASSOC.CADUF.PEND'
      Size = 41
    end
    object Tb_UFPCID: TStringField
      FieldName = 'PCID'
      Origin = 'SG_ASSOC.CADUF.PCID'
      Size = 41
    end
    object Tb_UFPBAN: TStringField
      FieldName = 'PBAN'
      Origin = 'SG_ASSOC.CADUF.PBAN'
      Size = 41
    end
    object Tb_UFPCUF: TStringField
      FieldName = 'PCUF'
      Origin = 'SG_ASSOC.CADUF.PCUF'
      Size = 3
    end
    object Tb_UFPCFOSER: TFloatField
      FieldName = 'PCFOSER'
      Origin = 'SG_ASSOC.CADUF.PCFOSER'
    end
    object Tb_UFPICMSNOR: TFloatField
      FieldName = 'PICMSNOR'
      Origin = 'SG_ASSOC.CADUF.PICMSNOR'
    end
    object Tb_UFPIESUB: TStringField
      FieldName = 'PIESUB'
      Origin = 'SG_ASSOC.CADUF.PIESUB'
    end
    object Tb_UFPICMSC: TFloatField
      FieldName = 'PICMSC'
      Origin = 'SG_ASSOC.CADUF.PICMSC'
    end
    object Tb_UFPICMSD: TFloatField
      FieldName = 'PICMSD'
      Origin = 'SG_ASSOC.CADUF.PICMSD'
    end
    object Tb_UFPIVAINA: TFloatField
      FieldName = 'PIVAINA'
      Origin = 'SG_ASSOC.CADUF.PIVAINA'
    end
    object Tb_UFPIVANEG: TFloatField
      FieldName = 'PIVANEG'
      Origin = 'SG_ASSOC.CADUF.PIVANEG'
    end
    object Tb_UFPIVAPOS: TFloatField
      FieldName = 'PIVAPOS'
      Origin = 'SG_ASSOC.CADUF.PIVAPOS'
    end
    object Tb_UFPREDUTRA: TFloatField
      FieldName = 'PREDUTRA'
      Origin = 'SG_ASSOC.CADUF.PREDUTRA'
    end
    object Tb_UFPREDUTRB: TFloatField
      FieldName = 'PREDUTRB'
      Origin = 'SG_ASSOC.CADUF.PREDUTRB'
    end
    object Tb_UFPREDUTNA: TFloatField
      FieldName = 'PREDUTNA'
      Origin = 'SG_ASSOC.CADUF.PREDUTNA'
    end
    object Tb_UFPREDUTNB: TFloatField
      FieldName = 'PREDUTNB'
      Origin = 'SG_ASSOC.CADUF.PREDUTNB'
    end
    object Tb_UFPREPAS: TFloatField
      FieldName = 'PREPAS'
      Origin = 'SG_ASSOC.CADUF.PREPAS'
    end
    object Tb_UFPBICMS: TStringField
      FieldName = 'PBICMS'
      Origin = 'SG_ASSOC.CADUF.PBICMS'
      Size = 1
    end
    object Tb_UFPLIMINA1: TStringField
      FieldName = 'PLIMINA1'
      Origin = 'SG_ASSOC.CADUF.PLIMINA1'
      Size = 57
    end
    object Tb_UFPLIMINA2: TStringField
      FieldName = 'PLIMINA2'
      Origin = 'SG_ASSOC.CADUF.PLIMINA2'
      Size = 57
    end
    object Tb_UFPSEPTAB: TStringField
      FieldName = 'PSEPTAB'
      Origin = 'SG_ASSOC.CADUF.PSEPTAB'
      Size = 1
    end
    object Tb_UFPTIPCAL: TStringField
      FieldName = 'PTIPCAL'
      Origin = 'SG_ASSOC.CADUF.PTIPCAL'
      Size = 1
    end
    object Tb_UFPCALCRET: TFloatField
      FieldName = 'PCALCRET'
      Origin = 'SG_ASSOC.CADUF.PCALCRET'
    end
    object Tb_UFPTIPOPC: TFloatField
      FieldName = 'PTIPOPC'
      Origin = 'SG_ASSOC.CADUF.PTIPOPC'
    end
    object Tb_UFPTIPOPCO: TFloatField
      FieldName = 'PTIPOPCO'
      Origin = 'SG_ASSOC.CADUF.PTIPOPCO'
    end
    object Tb_UFPALISSQN: TFloatField
      FieldName = 'PALISSQN'
      Origin = 'SG_ASSOC.CADUF.PALISSQN'
    end
    object Tb_UFPCOMIS: TFloatField
      FieldName = 'PCOMIS'
      Origin = 'SG_ASSOC.CADUF.PCOMIS'
    end
    object Tb_UFPICMSA: TFloatField
      FieldName = 'PICMSA'
      Origin = 'SG_ASSOC.CADUF.PICMSA'
    end
    object Tb_UFPICMSB: TFloatField
      FieldName = 'PICMSB'
      Origin = 'SG_ASSOC.CADUF.PICMSB'
    end
    object Tb_UFPSTATUS: TFloatField
      FieldName = 'PSTATUS'
      Origin = 'SG_ASSOC.CADUF.PSTATUS'
    end
    object Tb_UFPCODUSR: TFloatField
      FieldName = 'PCODUSR'
      Origin = 'SG_ASSOC.CADUF.PCODUSR'
    end
    object Tb_UFPDTALT: TDateTimeField
      FieldName = 'PDTALT'
      Origin = 'SG_ASSOC.CADUF.PDTALT'
    end
    object Tb_UFPHRALT: TStringField
      FieldName = 'PHRALT'
      Origin = 'SG_ASSOC.CADUF.PHRALT'
      Size = 10
    end
    object Tb_UFPICMSFRETE: TFloatField
      DisplayLabel = 'Calcular Icms Sob o Frete'
      FieldName = 'PICMSFRETE'
      Origin = 'SG_ASSOC.CADUF.PICMSFRETE'
    end
    object Tb_UFPICMSSEGURO: TFloatField
      DisplayLabel = 'Calcular Icms Sob o Valor do Seguro'
      FieldName = 'PICMSSEGURO'
      Origin = 'SG_ASSOC.CADUF.PICMSSEGURO'
    end
    object Tb_UFPICMSOUTDESP: TFloatField
      DisplayLabel = 'Calcular Icms Sob Outras Despesas'
      FieldName = 'PICMSOUTDESP'
      Origin = 'SG_ASSOC.CADUF.PICMSOUTDESP'
    end
    object Tb_UFPICMSIPI: TFloatField
      FieldName = 'PICMSIPI'
      Origin = 'SG_ASSOC.CADUF.PICMSIPI'
    end
    object Tb_UFPCIMP_SER: TFloatField
      FieldName = 'PCIMP_SER'
      Origin = 'SG_ASSOC.CADUF.PCIMP_SER'
    end
    object Tb_UFPREDUTRC: TFloatField
      FieldName = 'PREDUTRC'
      Origin = 'SG_ASSOC.CADUF.PREDUTRC'
    end
    object Tb_UFPREDUTRD: TFloatField
      FieldName = 'PREDUTRD'
      Origin = 'SG_ASSOC.CADUF.PREDUTRD'
    end
    object Tb_UFPREDUTRE: TFloatField
      FieldName = 'PREDUTRE'
      Origin = 'SG_ASSOC.CADUF.PREDUTRE'
    end
    object Tb_UFPREDUTRF: TFloatField
      FieldName = 'PREDUTRF'
      Origin = 'SG_ASSOC.CADUF.PREDUTRF'
    end
    object Tb_UFPREDUTRG: TFloatField
      FieldName = 'PREDUTRG'
      Origin = 'SG_ASSOC.CADUF.PREDUTRG'
    end
    object Tb_UFPREDUTRH: TFloatField
      FieldName = 'PREDUTRH'
      Origin = 'SG_ASSOC.CADUF.PREDUTRH'
    end
    object Tb_UFPREDUTRI: TFloatField
      FieldName = 'PREDUTRI'
      Origin = 'SG_ASSOC.CADUF.PREDUTRI'
    end
    object Tb_UFPREDUTNC: TFloatField
      FieldName = 'PREDUTNC'
      Origin = 'SG_ASSOC.CADUF.PREDUTNC'
    end
    object Tb_UFPREDUTND: TFloatField
      FieldName = 'PREDUTND'
      Origin = 'SG_ASSOC.CADUF.PREDUTND'
    end
    object Tb_UFPREDUTNE: TFloatField
      FieldName = 'PREDUTNE'
      Origin = 'SG_ASSOC.CADUF.PREDUTNE'
    end
    object Tb_UFPREDUTNF: TFloatField
      FieldName = 'PREDUTNF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNF'
    end
    object Tb_UFPREDUTNG: TFloatField
      FieldName = 'PREDUTNG'
      Origin = 'SG_ASSOC.CADUF.PREDUTNG'
    end
    object Tb_UFPREDUTNH: TFloatField
      FieldName = 'PREDUTNH'
      Origin = 'SG_ASSOC.CADUF.PREDUTNH'
    end
    object Tb_UFPREDUTNI: TFloatField
      FieldName = 'PREDUTNI'
      Origin = 'SG_ASSOC.CADUF.PREDUTNI'
    end
    object Tb_UFPICMSNC: TFloatField
      FieldName = 'PICMSNC'
      Origin = 'SG_ASSOC.CADUF.PICMSNC'
    end
    object Tb_UFPICMSND: TFloatField
      FieldName = 'PICMSND'
      Origin = 'SG_ASSOC.CADUF.PICMSND'
    end
    object Tb_UFPICMSNE: TFloatField
      FieldName = 'PICMSNE'
      Origin = 'SG_ASSOC.CADUF.PICMSNE'
    end
    object Tb_UFPICMSNF: TFloatField
      FieldName = 'PICMSNF'
      Origin = 'SG_ASSOC.CADUF.PICMSNF'
    end
    object Tb_UFPICMSNG: TFloatField
      FieldName = 'PICMSNG'
      Origin = 'SG_ASSOC.CADUF.PICMSNG'
    end
    object Tb_UFPICMSNH: TFloatField
      FieldName = 'PICMSNH'
      Origin = 'SG_ASSOC.CADUF.PICMSNH'
    end
    object Tb_UFPICMSNI: TFloatField
      FieldName = 'PICMSNI'
      Origin = 'SG_ASSOC.CADUF.PICMSNI'
    end
    object Tb_UFPCODUF_IBGE: TFloatField
      FieldName = 'PCODUF_IBGE'
      Origin = 'SG_ASSOC.CADUF.PCODUF_IBGE'
    end
    object Tb_UFPCODREG_IBGE: TFloatField
      FieldName = 'PCODREG_IBGE'
      Origin = 'SG_ASSOC.CADUF.PCODREG_IBGE'
    end
    object Tb_UFnomreg: TStringField
      DisplayLabel = 'Nome da Regiao'
      FieldKind = fkCalculated
      FieldName = 'nomreg'
      Size = 50
      Calculated = True
    end
    object Tb_UFnompais: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompais'
      Size = 60
      Calculated = True
    end
    object Tb_UFcodpais: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codpais'
      Calculated = True
    end
    object Tb_UFPCFOSER_DEV: TFloatField
      FieldName = 'PCFOSER_DEV'
      Origin = 'SG_ASSOC.CADUF.PCFOSER_DEV'
    end
    object Tb_UFPICMSC_SN: TFloatField
      FieldName = 'PICMSC_SN'
      Origin = 'SG_ASSOC.CADUF.PICMSC_SN'
    end
    object Tb_UFPICMSD_SN: TFloatField
      FieldName = 'PICMSD_SN'
      Origin = 'SG_ASSOC.CADUF.PICMSD_SN'
    end
    object Tb_UFPIVAINA_SN: TFloatField
      FieldName = 'PIVAINA_SN'
      Origin = 'SG_ASSOC.CADUF.PIVAINA_SN'
    end
    object Tb_UFPIVANEG_SN: TFloatField
      FieldName = 'PIVANEG_SN'
      Origin = 'SG_ASSOC.CADUF.PIVANEG_SN'
    end
    object Tb_UFPIVAPOS_SN: TFloatField
      FieldName = 'PIVAPOS_SN'
      Origin = 'SG_ASSOC.CADUF.PIVAPOS_SN'
    end
    object Tb_UFPREDUTRA_SN: TFloatField
      FieldName = 'PREDUTRA_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRA_SN'
    end
    object Tb_UFPREDUTRB_SN: TFloatField
      FieldName = 'PREDUTRB_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRB_SN'
    end
    object Tb_UFPREDUTRC_SN: TFloatField
      FieldName = 'PREDUTRC_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRC_SN'
    end
    object Tb_UFPREDUTRD_SN: TFloatField
      FieldName = 'PREDUTRD_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRD_SN'
    end
    object Tb_UFPREDUTRE_SN: TFloatField
      FieldName = 'PREDUTRE_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRE_SN'
    end
    object Tb_UFPREDUTRF_SN: TFloatField
      FieldName = 'PREDUTRF_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRF_SN'
    end
    object Tb_UFPREDUTRG_SN: TFloatField
      FieldName = 'PREDUTRG_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRG_SN'
    end
    object Tb_UFPREDUTRH_SN: TFloatField
      FieldName = 'PREDUTRH_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRH_SN'
    end
    object Tb_UFPREDUTRI_SN: TFloatField
      FieldName = 'PREDUTRI_SN'
      Origin = 'SG_ASSOC.CADUF.PREDUTRI_SN'
    end
    object Tb_UFPALIQ_CBA: TFloatField
      FieldName = 'PALIQ_CBA'
    end
    object Tb_UFPALIQ_CBB: TFloatField
      FieldName = 'PALIQ_CBB'
    end
    object Tb_UFPALIQ_CBC: TFloatField
      FieldName = 'PALIQ_CBC'
    end
    object Tb_UFPALIQ_CBD: TFloatField
      FieldName = 'PALIQ_CBD'
    end
    object Tb_UFPALIQ_CBE: TFloatField
      FieldName = 'PALIQ_CBE'
    end
    object Tb_UFPALIQ_CBF: TFloatField
      FieldName = 'PALIQ_CBF'
    end
    object Tb_UFPALIQ_CBG: TFloatField
      FieldName = 'PALIQ_CBG'
    end
    object Tb_UFPALIQ_CBH: TFloatField
      FieldName = 'PALIQ_CBH'
    end
    object Tb_UFPALIQ_CBI: TFloatField
      FieldName = 'PALIQ_CBI'
    end
    object Tb_UFPICMSPART_CRED: TFloatField
      FieldName = 'PICMSPART_CRED'
    end
    object Tb_UFPICMSPART_DEB: TFloatField
      FieldName = 'PICMSPART_DEB'
    end
    object Tb_UFPREDUTNA_CF: TFloatField
      FieldName = 'PREDUTNA_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNA_CF'
    end
    object Tb_UFPREDUTNB_CF: TFloatField
      FieldName = 'PREDUTNB_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNB_CF'
    end
    object Tb_UFPREDUTNC_CF: TFloatField
      FieldName = 'PREDUTNC_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNC_CF'
    end
    object Tb_UFPREDUTND_CF: TFloatField
      FieldName = 'PREDUTND_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTND_CF'
    end
    object Tb_UFPREDUTNE_CF: TFloatField
      FieldName = 'PREDUTNE_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNE_CF'
    end
    object Tb_UFPREDUTNF_CF: TFloatField
      FieldName = 'PREDUTNF_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNF_CF'
    end
    object Tb_UFPREDUTNG_CF: TFloatField
      FieldName = 'PREDUTNG_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNG_CF'
    end
    object Tb_UFPREDUTNH_CF: TFloatField
      FieldName = 'PREDUTNH_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNH_CF'
    end
    object Tb_UFPREDUTNI_CF: TFloatField
      FieldName = 'PREDUTNI_CF'
      Origin = 'SG_ASSOC.CADUF.PREDUTNI_CF'
    end
    object Tb_UFPREDICMSNOR_BC_PISCOFINS: TFloatField
      FieldName = 'PREDICMSNOR_BC_PISCOFINS'
      Origin = 'SG_ASSOC.CADUF.PREDICMSNOR_BC_PISCOFINS'
    end
    object Tb_UFPGERARDIFAL: TFloatField
      FieldName = 'PGERARDIFAL'
    end
    object Tb_UFPCBS_ALIQA: TFloatField
      FieldName = 'PCBS_ALIQA'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQA'
    end
    object Tb_UFPCBS_ALIQB: TFloatField
      FieldName = 'PCBS_ALIQB'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQB'
    end
    object Tb_UFPCBS_ALIQC: TFloatField
      FieldName = 'PCBS_ALIQC'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQC'
    end
    object Tb_UFPCBS_ALIQD: TFloatField
      FieldName = 'PCBS_ALIQD'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQD'
    end
    object Tb_UFPCBS_ALIQE: TFloatField
      FieldName = 'PCBS_ALIQE'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQE'
    end
    object Tb_UFPCBS_ALIQF: TFloatField
      FieldName = 'PCBS_ALIQF'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQF'
    end
    object Tb_UFPCBS_ALIQG: TFloatField
      FieldName = 'PCBS_ALIQG'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQG'
    end
    object Tb_UFPCBS_ALIQH: TFloatField
      FieldName = 'PCBS_ALIQH'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQH'
    end
    object Tb_UFPCBS_ALIQI: TFloatField
      FieldName = 'PCBS_ALIQI'
      Origin = 'SG_ASSOC.CADUF.PCBS_ALIQI'
    end
    object Tb_UFPIBS_ALIQA: TFloatField
      FieldName = 'PIBS_ALIQA'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQA'
    end
    object Tb_UFPIBS_ALIQB: TFloatField
      FieldName = 'PIBS_ALIQB'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQB'
    end
    object Tb_UFPIBS_ALIQC: TFloatField
      FieldName = 'PIBS_ALIQC'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQC'
    end
    object Tb_UFPIBS_ALIQD: TFloatField
      FieldName = 'PIBS_ALIQD'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQD'
    end
    object Tb_UFPIBS_ALIQE: TFloatField
      FieldName = 'PIBS_ALIQE'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQE'
    end
    object Tb_UFPIBS_ALIQF: TFloatField
      FieldName = 'PIBS_ALIQF'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQF'
    end
    object Tb_UFPIBS_ALIQG: TFloatField
      FieldName = 'PIBS_ALIQG'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQG'
    end
    object Tb_UFPIBS_ALIQH: TFloatField
      FieldName = 'PIBS_ALIQH'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQH'
    end
    object Tb_UFPIBS_ALIQI: TFloatField
      FieldName = 'PIBS_ALIQI'
      Origin = 'SG_ASSOC.CADUF.PIBS_ALIQI'
    end
  end
  object Src_UF: TDataSource
    DataSet = Tb_UF
    Left = 743
    Top = 445
  end
  object Tb_Aju: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_AjuBeforeInsert
    AfterInsert = Tb_AjuAfterInsert
    BeforePost = Tb_AjuBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADAJU where'
      'AJCODEMP like :CODEMP and'
      'AJSEQ         like :SEQ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Aju
    Left = 64
    Top = 90
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_AjuAJCODEMP: TFloatField
      FieldName = 'AJCODEMP'
      Origin = 'SG_ASSOC.CADAJU.AJCODEMP'
    end
    object Tb_AjuAJSEQ: TFloatField
      FieldName = 'AJSEQ'
      Origin = 'SG_ASSOC.CADAJU.AJSEQ'
    end
    object Tb_AjuAJDATA: TDateTimeField
      FieldName = 'AJDATA'
      Origin = 'SG_ASSOC.CADAJU.AJDATA'
    end
    object Tb_AjuAJCODPRO: TFloatField
      FieldName = 'AJCODPRO'
      Origin = 'SG_ASSOC.CADAJU.AJCODPRO'
    end
    object Tb_AjuAJQTD: TFloatField
      FieldName = 'AJQTD'
      Origin = 'SG_ASSOC.CADAJU.AJQTD'
    end
    object Tb_AjuAJCODUSR: TFloatField
      FieldName = 'AJCODUSR'
      Origin = 'SG_ASSOC.CADAJU.AJCODUSR'
    end
    object Tb_AjuAJMOTIVO: TStringField
      FieldName = 'AJMOTIVO'
      Origin = 'SG_ASSOC.CADAJU.AJMOTIVO'
      Size = 60
    end
    object Tb_AjuAJDATAREF: TDateTimeField
      FieldName = 'AJDATAREF'
      Origin = 'SG_ASSOC.CADAJU.AJDATAREF'
    end
    object Tb_AjuAJLOTE: TStringField
      FieldName = 'AJLOTE'
      Origin = 'SG_ASSOC.CADAJU.AJLOTE'
    end
    object Tb_AjuAJDATAV: TDateTimeField
      FieldName = 'AJDATAV'
      Origin = 'SG_ASSOC.CADAJU.AJDATAV'
    end
    object Tb_AjuAJTIPOM: TFloatField
      FieldName = 'AJTIPOM'
      Origin = 'SG_ASSOC.CADAJU.AJTIPOM'
    end
    object Tb_AjuAJLOTSEQ: TFloatField
      FieldName = 'AJLOTSEQ'
      Origin = 'SG_ASSOC.CADAJU.AJLOTSEQ'
    end
    object Tb_AjuAJESTMOV: TFloatField
      FieldName = 'AJESTMOV'
      Origin = 'SG_ASSOC.CADAJU.AJESTMOV'
    end
    object Tb_AjuAJLEMAT: TFloatField
      FieldName = 'AJLEMAT'
      Origin = 'SG_ASSOC.CADAJU.AJLEMAT'
    end
    object Tb_AjuAJUSREXC: TFloatField
      FieldName = 'AJUSREXC'
      Origin = 'SG_ASSOC.CADAJU.AJUSREXC'
    end
    object Tb_AjuAJDATEXC: TDateTimeField
      FieldName = 'AJDATEXC'
      Origin = 'SG_ASSOC.CADAJU.AJDATEXC'
    end
    object Tb_AjuAJHOREXC: TStringField
      FieldName = 'AJHOREXC'
      Origin = 'SG_ASSOC.CADAJU.AJHOREXC'
      Size = 10
    end
    object Tb_AjuAJLOCAL: TFloatField
      FieldName = 'AJLOCAL'
      Origin = 'SG_ASSOC.CADAJU.AJLOCAL'
    end
    object Tb_AjuAJUTILCQ: TFloatField
      FieldName = 'AJUTILCQ'
      Origin = 'SG_ASSOC.CADAJU.AJUTILCQ'
    end
    object Tb_AjuAJPC0CUS: TFloatField
      FieldName = 'AJPC0CUS'
      Origin = 'SG_ASSOC.CADAJU.AJPC0CUS'
    end
    object Tb_AjuAJPRECO1: TFloatField
      FieldName = 'AJPRECO1'
      Origin = 'SG_ASSOC.CADAJU.AJPRECO1'
    end
    object Tb_AjuAJLOTE_RE: TStringField
      FieldName = 'AJLOTE_RE'
      Origin = 'SG_ASSOC.CADAJU.AJLOTE_RE'
    end
    object Tb_AjuAJFILIAL: TFloatField
      FieldName = 'AJFILIAL'
      Origin = 'SG_ASSOC.CADAJU.AJFILIAL'
    end
    object Tb_AjuAJID_NEW: TFloatField
      FieldName = 'AJID_NEW'
    end
    object Tb_AjuAJDTFAB: TDateTimeField
      FieldName = 'AJDTFAB'
    end
  end
  object Src_Aju: TDataSource
    DataSet = Tb_Aju
    Left = 120
    Top = 90
  end
  object Qr_TDVCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP like :CODEMP and'
      'TDOC    like :DOC    and'
      'TNOME   like :NOME   and'
      'TLOCAL   like :LOCAL and'
      'TSEQ      like :SEQ')
    UpdateMode = upWhereKeyOnly
    Left = 9
    Top = 402
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDVCRTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Qr_TDVCRTDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Qr_TDVCRTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
    end
    object Qr_TDVCRTSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Qr_TDVCRTFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Qr_TDVCRTCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Qr_TDVCRTCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Qr_TDVCRTCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Qr_TDVCRTCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Qr_TDVCRTCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Qr_TDVCRTCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 142
    end
    object Qr_TDVCRTDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 142
    end
    object Qr_TDVCRTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Qr_TDVCRTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Qr_TDVCRTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Qr_TDVCRTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Qr_TDVCRTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Qr_TDVCRTTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Qr_TDVCRTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Qr_TDVCRTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Qr_TDVCRTZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Qr_TDVCRTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Qr_TDVCRTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Qr_TDVCRTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Qr_TDVCRTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Qr_TDVCRTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Qr_TDVCRTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Qr_TDVCRTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Qr_TDVCRTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Qr_TDVCRTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Qr_TDVCRTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Qr_TDVCRTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Qr_TDVCRTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Qr_TDVCRTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Qr_TDVCRTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Qr_TDVCRTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Qr_TDVCRTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Qr_TDVCRTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Qr_TDVCRTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Qr_TDVCRTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Qr_TDVCRTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Qr_TDVCRTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Qr_TDVCRTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Qr_TDVCRTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Qr_TDVCRTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Qr_TDVCRTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
  end
  object Tb_CV: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CVBeforeInsert
    AfterInsert = Tb_CVAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCV where'
      'CVCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CV
    Left = 154
    Top = 400
    object Tb_CVCVCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CVCODEMP'
      Origin = 'SG_ASSOC.CADCV.CVCODEMP'
    end
    object Tb_CVCVCODCV: TFloatField
      DisplayLabel = 'C'#243'digo Convenio'
      FieldName = 'CVCODCV'
      Origin = 'SG_ASSOC.CADCV.CVCODCV'
    end
    object Tb_CVCVRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'CVRAZAO'
      Origin = 'SG_ASSOC.CADCV.CVRAZAO'
      Size = 30
    end
    object Tb_CVCVFANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'CVFANTASIA'
      Origin = 'SG_ASSOC.CADCV.CVFANTASIA'
      Size = 30
    end
    object Tb_CVCVNLOG: TStringField
      DisplayLabel = 'Nome do Logradouro'
      FieldName = 'CVNLOG'
      Origin = 'SG_ASSOC.CADCV.CVNLOG'
      Size = 30
    end
    object Tb_CVCVNUM: TStringField
      FieldName = 'CVNUM'
      Origin = 'SG_ASSOC.CADCV.CVNUM'
      Size = 10
    end
    object Tb_CVCVCOMPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'CVCOMPL'
      Origin = 'SG_ASSOC.CADCV.CVCOMPL'
      Size = 30
    end
    object Tb_CVCVBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CVBAIRRO'
      Origin = 'SG_ASSOC.CADCV.CVBAIRRO'
      Size = 30
    end
    object Tb_CVCVCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CVCEP'
      Origin = 'SG_ASSOC.CADCV.CVCEP'
      EditMask = '00000\-9999;1; '
      Size = 9
    end
    object Tb_CVCVCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CVCIDADE'
      Origin = 'SG_ASSOC.CADCV.CVCIDADE'
      Size = 30
    end
    object Tb_CVCVUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CVUF'
      Origin = 'SG_ASSOC.CADCV.CVUF'
      Size = 2
    end
    object Tb_CVCVFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CVFONE'
      Origin = 'SG_ASSOC.CADCV.CVFONE'
      EditMask = '!\(9999\)0000-0000;1; '
    end
    object Tb_CVCVFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CVFAX'
      Origin = 'SG_ASSOC.CADCV.CVFAX'
      EditMask = '!\(9999\)0000-0000;1; '
    end
    object Tb_CVCVEMAIL: TStringField
      DisplayLabel = 'E mail'
      FieldName = 'CVEMAIL'
      Origin = 'SG_ASSOC.CADCV.CVEMAIL'
      Size = 40
    end
    object Tb_CVCVRESP: TStringField
      DisplayLabel = 'Responsavel'
      FieldName = 'CVRESP'
      Origin = 'SG_ASSOC.CADCV.CVRESP'
      Size = 40
    end
    object Tb_CVCVCPF: TFloatField
      DisplayLabel = 'CNPF'
      FieldName = 'CVCPF'
      Origin = 'SG_ASSOC.CADCV.CVCPF'
      DisplayFormat = '000"."000"."000"."000"-"00'
      EditFormat = '000"."000"."000"."000"-"00'
    end
    object Tb_CVCVCVRG: TStringField
      FieldName = 'CVCVRG'
      Origin = 'SG_ASSOC.CADCV.CVCVRG'
      Size = 40
    end
    object Tb_CVCVCGC: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CVCGC'
      Origin = 'SG_ASSOC.CADCV.CVCGC'
      DisplayFormat = '00"."000"."000"/"0000"-"00'
      EditFormat = '00"."000"."000"/"0000"-"00'
    end
    object Tb_CVCVIE: TStringField
      DisplayLabel = 'Inscricao Estadual'
      FieldName = 'CVIE'
      Origin = 'SG_ASSOC.CADCV.CVIE'
    end
    object Tb_CVCVFONC01: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CVFONC01'
      Origin = 'SG_ASSOC.CADCV.CVFONC01'
    end
    object Tb_CVCVCONT02: TStringField
      DisplayLabel = 'Contato 02'
      FieldName = 'CVCONT02'
      Origin = 'SG_ASSOC.CADCV.CVCONT02'
      Size = 40
    end
    object Tb_CVCVFONC02: TStringField
      DisplayLabel = 'Telefone '
      FieldName = 'CVFONC02'
      Origin = 'SG_ASSOC.CADCV.CVFONC02'
    end
    object Tb_CVCVCONT03: TStringField
      DisplayLabel = 'Contato 03'
      FieldName = 'CVCONT03'
      Origin = 'SG_ASSOC.CADCV.CVCONT03'
      Size = 40
    end
    object Tb_CVCVFONC03: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CVFONC03'
      Origin = 'SG_ASSOC.CADCV.CVFONC03'
    end
    object Tb_CVCVCODPV: TFloatField
      DisplayLabel = 'C'#243'digo Plano Vendas'
      FieldName = 'CVCODPV'
      Origin = 'SG_ASSOC.CADCV.CVCODPV'
    end
    object Tb_CVCVACFIN: TFloatField
      DisplayLabel = 'Acrescimo Financeiro'
      FieldName = 'CVACFIN'
      Origin = 'SG_ASSOC.CADCV.CVACFIN'
      currency = True
    end
    object Tb_CVnompla: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompla'
      Size = 40
      Calculated = True
    end
    object Tb_CVCVDIAV: TFloatField
      FieldName = 'CVDIAV'
      Origin = 'SG_ASSOC.CADCV.CVDIAV'
    end
    object Tb_CVCVCONT01: TStringField
      FieldName = 'CVCONT01'
      Origin = 'SG_ASSOC.CADCV.CVCONT01'
      Size = 40
    end
    object Tb_CVCVCODBAI: TFloatField
      FieldName = 'CVCODBAI'
      Origin = 'SG_ASSOC.CADCV.CVCODBAI'
    end
    object Tb_CVCVCODLOC: TFloatField
      FieldName = 'CVCODLOC'
      Origin = 'SG_ASSOC.CADCV.CVCODLOC'
    end
    object Tb_CVCVTABPV: TStringField
      FieldName = 'CVTABPV'
      Origin = 'SG_ASSOC.CADCV.CVTABPV'
      Size = 2
    end
    object Tb_CVCVOBS: TMemoField
      FieldName = 'CVOBS'
      Origin = 'SG_ASSOC.CADCV.CVOBS'
      BlobType = ftMemo
      Size = 500
    end
  end
  object Src_CV: TDataSource
    DataSet = Tb_CV
    Left = 210
    Top = 400
  end
  object Tb_Cac: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CacBeforeInsert
    AfterInsert = Tb_CacAfterInsert
    BeforePost = Tb_CacBeforePost
    BeforeDelete = c
    AfterDelete = c
    OnCalcFields = Tb_CacCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADCAC where CASEQ is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Cac
    Left = 64
    Top = 222
    object Tb_CacCACODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADCAC.CACODEMP'
    end
    object Tb_CacCASEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'CASEQ'
      Origin = 'SG_ASSOC.CADCAC.CASEQ'
    end
    object Tb_CacCACODUSR: TFloatField
      DisplayLabel = 'C'#243'digo do Usu'#225'rio'
      FieldName = 'CACODUSR'
      Origin = 'SG_ASSOC.CADCAC.CACODUSR'
    end
    object Tb_CacCANOMUSR: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'CANOMUSR'
      Origin = 'SG_ASSOC.CADCAC.CANOMUSR'
      Size = 30
    end
    object Tb_CacCADATAI: TDateTimeField
      DisplayLabel = 'Data inicial'
      FieldName = 'CADATAI'
      Origin = 'SG_ASSOC.CADCAC.CADATAI'
    end
    object Tb_CacCAHORAI: TStringField
      DisplayLabel = 'Hora inicial'
      FieldName = 'CAHORAI'
      Origin = 'SG_ASSOC.CADCAC.CAHORAI'
      Size = 10
    end
    object Tb_CacCADATAF: TDateTimeField
      DisplayLabel = 'Data Final'
      FieldName = 'CADATAF'
      Origin = 'SG_ASSOC.CADCAC.CADATAF'
    end
    object Tb_CacCAHORAF: TStringField
      DisplayLabel = 'Hora final'
      FieldName = 'CAHORAF'
      Origin = 'SG_ASSOC.CADCAC.CAHORAF'
      Size = 10
    end
    object Tb_CacCATERM: TStringField
      DisplayLabel = 'Nome do Terminal'
      FieldName = 'CATERM'
      Origin = 'SG_ASSOC.CADCAC.CATERM'
    end
    object Tb_Cacinicio: TStringField
      DisplayLabel = 'Entrada'
      FieldKind = fkCalculated
      FieldName = 'inicio'
      Size = 30
      Calculated = True
    end
    object Tb_Cacfim: TStringField
      DisplayLabel = 'Saida'
      FieldKind = fkCalculated
      FieldName = 'fim'
      Size = 30
      Calculated = True
    end
    object Tb_Cacduracao: TStringField
      DisplayLabel = 'Duracao'
      FieldKind = fkCalculated
      FieldName = 'duracao'
      Size = 10
      Calculated = True
    end
    object Tb_CacCALOTSEQ: TFloatField
      FieldName = 'CALOTSEQ'
      Origin = 'SG_ASSOC.CADCAC.CALOTSEQ'
    end
  end
  object Src_Cac: TDataSource
    DataSet = Tb_Cac
    Left = 120
    Top = 222
  end
  object Tb_LGC: TQuery
    CachedUpdates = True
    AfterInsert = Tb_LGCAfterInsert
    BeforePost = Tb_LGCBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *  from CADLGC where CLCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LGC
    Left = 373
    Top = 179
    object Tb_LGCCLCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
    end
    object Tb_LGCCLCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
    object Tb_LGCCLDTVCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Tb_LGCCLNUMERO: TStringField
      DisplayLabel = 'N'#250'mero do Lote'
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Tb_LGCCLQTD: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Tb_LGCCLQTDR: TFloatField
      DisplayLabel = 'Estoque Revenda'
      FieldName = 'CLQTDR'
      Origin = 'SG_ASSOC.CADLGC.CLQTDR'
    end
    object Tb_LGCCLQTDC: TFloatField
      DisplayLabel = 'Estoque Consignado'
      FieldName = 'CLQTDC'
      Origin = 'SG_ASSOC.CADLGC.CLQTDC'
    end
    object Tb_LGCCLPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 01'
      FieldName = 'CLPRECO1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO1'
    end
    object Tb_LGCCLPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 02'
      FieldName = 'CLPRECO2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO2'
    end
    object Tb_LGCCLPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 03'
      FieldName = 'CLPRECO3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO3'
    end
    object Tb_LGCCLPRECOA1: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 01'
      FieldName = 'CLPRECOA1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA1'
    end
    object Tb_LGCCLPRECOA2: TFloatField
      DisplayLabel = 'P'#231'o. Anterior 02'
      FieldName = 'CLPRECOA2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA2'
    end
    object Tb_LGCCLPRECOA3: TFloatField
      DisplayLabel = 'P'#231'o. Anterior 03'
      FieldName = 'CLPRECOA3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA3'
    end
    object Tb_LGCCLESTMAX: TFloatField
      DisplayLabel = 'Estoque M'#225'ximo'
      FieldName = 'CLESTMAX'
      Origin = 'SG_ASSOC.CADLGC.CLESTMAX'
    end
    object Tb_LGCCLESTMIN: TFloatField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'CLESTMIN'
      Origin = 'SG_ASSOC.CADLGC.CLESTMIN'
    end
    object Tb_LGCCLPCUSTO: TFloatField
      DisplayLabel = 'P'#231'o.Custo'
      FieldName = 'CLPCUSTO'
      Origin = 'SG_ASSOC.CADLGC.CLPCUSTO'
    end
    object Tb_LGCCLDTUATP1: TDateTimeField
      FieldName = 'CLDTUATP1'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP1'
    end
    object Tb_LGCCLDTUATP2: TDateTimeField
      FieldName = 'CLDTUATP2'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP2'
    end
    object Tb_LGCCLDTUATP3: TDateTimeField
      FieldName = 'CLDTUATP3'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP3'
    end
    object Tb_LGCCLQTDT: TFloatField
      DisplayLabel = 'Estoque Terceiros'
      FieldName = 'CLQTDT'
      Origin = 'SG_ASSOC.CADLGC.CLQTDT'
    end
    object Tb_LGCCLQTD_PRAT: TFloatField
      DisplayLabel = 'Prateleira'
      FieldName = 'CLQTD_PRAT'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_PRAT'
    end
    object Tb_LGCCLQTD_DEP: TFloatField
      DisplayLabel = 'Deposito'
      FieldName = 'CLQTD_DEP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_DEP'
    end
    object Tb_LGCCLQTD_REP: TFloatField
      FieldName = 'CLQTD_REP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_REP'
    end
    object Tb_LGCCLLOTE_RE: TStringField
      FieldName = 'CLLOTE_RE'
      Origin = 'SG_ASSOC.CADLGC.CLLOTE_RE'
    end
    object Tb_LGCCLFILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CLFILIAL'
      Origin = 'SG_ASSOC.CADLGC.CLFILIAL'
    end
    object Tb_LGCCLQTD_ANALISE: TFloatField
      FieldName = 'CLQTD_ANALISE'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_ANALISE'
    end
    object Tb_LGCCLSITUACAO: TFloatField
      FieldName = 'CLSITUACAO'
    end
    object Tb_LGCCLDTFAB: TDateTimeField
      FieldName = 'CLDTFAB'
    end
  end
  object Src_LGC: TDataSource
    DataSet = Tb_LGC
    Left = 430
    Top = 179
  end
  object Tb_Pro2: TQuery
    OnCalcFields = Tb_Pro2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from cadpro where pdcodemp is null')
    UpdateMode = upWhereKeyOnly
    Left = 9
    Top = 446
    object Tb_Pro2PDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Tb_Pro2PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_Pro2PDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_Pro2PDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Tb_Pro2PDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 120
    end
    object Tb_Pro2PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Pro2PDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_Pro2PDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_Pro2PDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_Pro2PDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_Pro2PDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Tb_Pro2PDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Tb_Pro2PDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Tb_Pro2PDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_Pro2PDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Tb_Pro2PDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Tb_Pro2PDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Tb_Pro2PDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Tb_Pro2PDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Tb_Pro2PDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Tb_Pro2PDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Tb_Pro2PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Pro2PDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Pro2PDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Tb_Pro2PDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Tb_Pro2PDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_Pro2PDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Tb_Pro2PDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Tb_Pro2PDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Tb_Pro2PDDTUSAI: TDateTimeField
      FieldName = 'PDDTUSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTUSAI'
    end
    object Tb_Pro2PDDTUENT: TDateTimeField
      FieldName = 'PDDTUENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTUENT'
    end
    object Tb_Pro2PDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_Pro2PDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Tb_Pro2PDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Tb_Pro2PDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Tb_Pro2PDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Tb_Pro2PDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_Pro2PDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_Pro2nomefab: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomefab'
      Size = 40
      Calculated = True
    end
    object Tb_Pro2nomegru: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomegru'
      Size = 40
      Calculated = True
    end
    object Tb_Pro2nomram: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomram'
      Size = 30
      Calculated = True
    end
    object Tb_Pro2nomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcon'
      Size = 30
      Calculated = True
    end
    object Tb_Pro2nomtip: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtip'
      Size = 40
      Calculated = True
    end
    object Tb_Pro2n_nivel: TStringField
      FieldKind = fkCalculated
      FieldName = 'n_nivel'
      Calculated = True
    end
    object Tb_Pro2PDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Tb_Pro2PDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Tb_Pro2PDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Tb_Pro2PDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_Pro2PDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_Pro2PDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Tb_Pro2PDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Tb_Pro2PDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Tb_Pro2PDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_Pro2PDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Tb_Pro2PDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Tb_Pro2PDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Tb_Pro2PDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Tb_Pro2PDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Tb_Pro2PDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Tb_Pro2PDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Tb_Pro2PDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Tb_Pro2PDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Tb_Pro2PDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Tb_Pro2PDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Tb_Pro2PDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Tb_Pro2PDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Tb_Pro2PDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
  end
  object Tb_LC1: TQuery
    CachedUpdates = True
    AfterInsert = Tb_LC1AfterInsert
    OnCalcFields = Tb_LC1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLC1 where LC1_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LC1
    Left = 371
    Top = 47
    object Tb_LC1LC1_CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'LC1_CODEMP'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODEMP'
    end
    object Tb_LC1LC1_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'LC1_CHAVE'
      Origin = 'SG_ASSOC.CADLC1.LC1_CHAVE'
    end
    object Tb_LC1LC1_DTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'LC1_DTEMIS'
      Origin = 'SG_ASSOC.CADLC1.LC1_DTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LC1LC1_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'LC1_CODCLI'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODCLI'
    end
    object Tb_LC1LC1_AOSCUI: TStringField
      DisplayLabel = 'Aos Cuidados de'
      FieldName = 'LC1_AOSCUI'
      Origin = 'SG_ASSOC.CADLC1.LC1_AOSCUI'
      Size = 40
    end
    object Tb_LC1LC1_FONCUI: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'LC1_FONCUI'
      Origin = 'SG_ASSOC.CADLC1.LC1_FONCUI'
    end
    object Tb_LC1LC1_CARCON: TStringField
      DisplayLabel = 'Carta Convite'
      FieldName = 'LC1_CARCON'
      Origin = 'SG_ASSOC.CADLC1.LC1_CARCON'
      Size = 30
    end
    object Tb_LC1LC1_DATCON: TDateTimeField
      DisplayLabel = 'Data Convite'
      FieldName = 'LC1_DATCON'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LC1LC1_CONDPAG: TStringField
      DisplayLabel = 'Condicao de Pagamentos'
      FieldName = 'LC1_CONDPAG'
      Origin = 'SG_ASSOC.CADLC1.LC1_CONDPAG'
      Size = 53
    end
    object Tb_LC1LC1_OBJETO: TStringField
      DisplayLabel = 'Objeto'
      FieldName = 'LC1_OBJETO'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBJETO'
    end
    object Tb_LC1LC1_OBS1: TStringField
      DisplayLabel = 'Observacoes linha 1'
      FieldName = 'LC1_OBS1'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBS1'
      Size = 53
    end
    object Tb_LC1LC1_OBS2: TStringField
      DisplayLabel = 'observacoes linha 2'
      FieldName = 'LC1_OBS2'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBS2'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT1: TStringField
      DisplayLabel = 'prazo de entrega linha 1'
      FieldName = 'LC1_PRZENT1'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT1'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT2: TStringField
      DisplayLabel = 'prazo de entrega linha 2'
      FieldName = 'LC1_PRZENT2'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT2'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT3: TStringField
      DisplayLabel = 'prazo de entrega linha 3'
      FieldName = 'LC1_PRZENT3'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT3'
      Size = 53
    end
    object Tb_LC1LC1_DEC01: TStringField
      DisplayLabel = 'declaracao linha 1'
      FieldName = 'LC1_DEC01'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC01'
      Size = 74
    end
    object Tb_LC1LC1_DEC02: TStringField
      DisplayLabel = 'declaracao linha 2'
      FieldName = 'LC1_DEC02'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC02'
      Size = 74
    end
    object Tb_LC1LC1_DEC03: TStringField
      DisplayLabel = 'declaracao linha 3'
      FieldName = 'LC1_DEC03'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC03'
      Size = 74
    end
    object Tb_LC1LC1_DEC04: TStringField
      DisplayLabel = 'declaracao linha 4'
      FieldName = 'LC1_DEC04'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC04'
      Size = 74
    end
    object Tb_LC1LC1_DEC05: TStringField
      DisplayLabel = 'declaracao linha 5'
      FieldName = 'LC1_DEC05'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC05'
      Size = 74
    end
    object Tb_LC1LC1_DEC06: TStringField
      DisplayLabel = 'declaracao linha 6'
      FieldName = 'LC1_DEC06'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC06'
      Size = 74
    end
    object Tb_LC1LC1_DEC07: TStringField
      DisplayLabel = 'declaracao linha 7'
      FieldName = 'LC1_DEC07'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC07'
      Size = 74
    end
    object Tb_LC1LC1_DEC08: TStringField
      DisplayLabel = 'declaracao linha 8'
      FieldName = 'LC1_DEC08'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC08'
      Size = 74
    end
    object Tb_LC1LC1_DEC09: TStringField
      DisplayLabel = 'declaracao linha 9'
      FieldName = 'LC1_DEC09'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC09'
      Size = 74
    end
    object Tb_LC1LC1_DEC10: TStringField
      DisplayLabel = 'declaracao linha 10'
      FieldName = 'LC1_DEC10'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC10'
      Size = 74
    end
    object Tb_LC1LC1_VALPRO: TFloatField
      FieldName = 'LC1_VALPRO'
      Origin = 'SG_ASSOC.CADLC1.LC1_VALPRO'
    end
    object Tb_LC1LC1_DIGRMS: TFloatField
      FieldName = 'LC1_DIGRMS'
      Origin = 'SG_ASSOC.CADLC1.LC1_DIGRMS'
    end
    object Tb_LC1LC1_PCOAVI: TFloatField
      FieldName = 'LC1_PCOAVI'
      Origin = 'SG_ASSOC.CADLC1.LC1_PCOAVI'
    end
    object Tb_LC1LC1_PCOPRZ: TFloatField
      FieldName = 'LC1_PCOPRZ'
      Origin = 'SG_ASSOC.CADLC1.LC1_PCOPRZ'
    end
    object Tb_LC1LC1_EXTTAV: TFloatField
      FieldName = 'LC1_EXTTAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTTAV'
    end
    object Tb_LC1LC1_EXTUAV: TFloatField
      FieldName = 'LC1_EXTUAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTUAV'
    end
    object Tb_LC1LC1_EXTPAV: TFloatField
      FieldName = 'LC1_EXTPAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTPAV'
    end
    object Tb_LC1LC1_EXTTAP: TFloatField
      FieldName = 'LC1_EXTTAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTTAP'
    end
    object Tb_LC1LC1_EXTUAP: TFloatField
      FieldName = 'LC1_EXTUAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTUAP'
    end
    object Tb_LC1LC1_IMPCAB: TFloatField
      FieldName = 'LC1_IMPCAB'
      Origin = 'SG_ASSOC.CADLC1.LC1_IMPCAB'
    end
    object Tb_LC1LC1_EXTPAP: TFloatField
      FieldName = 'LC1_EXTPAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTPAP'
    end
    object Tb_LC1LC1_CODVEN: TFloatField
      FieldName = 'LC1_CODVEN'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODVEN'
    end
    object Tb_LC1nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_LC1LC1_BORDAGRADE: TFloatField
      FieldName = 'LC1_BORDAGRADE'
      Origin = 'SG_ASSOC.CADLC1.LC1_BORDAGRADE'
    end
    object Tb_LC1lc1_qtdenv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'lc1_qtdenv'
      Calculated = True
    end
    object Tb_LC1LC1_SEPLOTEPREGAO: TFloatField
      FieldName = 'LC1_SEPLOTEPREGAO'
      Origin = 'SG_ASSOC.CADLC1.LC1_SEPLOTEPREGAO'
    end
    object Tb_LC1LC1_PROPL01: TStringField
      FieldName = 'LC1_PROPL01'
      Origin = 'SG_ASSOC.CADLC1.LC1_PROPL01'
      Size = 53
    end
    object Tb_LC1LC1_PROPL02: TStringField
      FieldName = 'LC1_PROPL02'
      Origin = 'SG_ASSOC.CADLC1.LC1_PROPL02'
      Size = 53
    end
    object Tb_LC1LC1_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'LC1_NOMCLI'
      Origin = 'SG_ASSOC.CADLC1.LC1_NOMCLI'
      Size = 50
    end
    object Tb_LC1LC1_NOMLOC: TStringField
      FieldName = 'LC1_NOMLOC'
      Origin = 'SG_ASSOC.CADLC1.LC1_NOMLOC'
      Size = 30
    end
    object Tb_LC1LC1_UF: TStringField
      FieldName = 'LC1_UF'
      Origin = 'SG_ASSOC.CADLC1.LC1_UF'
      Size = 2
    end
    object Tb_LC1LC1_CEP: TStringField
      FieldName = 'LC1_CEP'
      Origin = 'SG_ASSOC.CADLC1.LC1_CEP'
      Size = 9
    end
    object Tb_LC1LC1_CNPJ: TFloatField
      FieldName = 'LC1_CNPJ'
      Origin = 'SG_ASSOC.CADLC1.LC1_CNPJ'
    end
    object Tb_LC1LC1_IE: TStringField
      FieldName = 'LC1_IE'
      Origin = 'SG_ASSOC.CADLC1.LC1_IE'
      Size = 30
    end
    object Tb_LC1LC1_FONE: TStringField
      FieldName = 'LC1_FONE'
      Origin = 'SG_ASSOC.CADLC1.LC1_FONE'
    end
    object Tb_LC1LC1_ENDER: TStringField
      FieldName = 'LC1_ENDER'
      Origin = 'SG_ASSOC.CADLC1.LC1_ENDER'
      Size = 40
    end
    object Tb_LC1LC1_BAIRRO: TStringField
      FieldName = 'LC1_BAIRRO'
      Origin = 'SG_ASSOC.CADLC1.LC1_BAIRRO'
      Size = 30
    end
    object Tb_LC1LC1_LOTSEQ: TFloatField
      FieldName = 'LC1_LOTSEQ'
      Origin = 'SG_ASSOC.CADLC1.LC1_LOTSEQ'
    end
    object Tb_LC1LC1_DATHOR_INC: TDateTimeField
      FieldName = 'LC1_DATHOR_INC'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATHOR_INC'
    end
    object Tb_LC1LC1_CODUSR_INC: TFloatField
      FieldName = 'LC1_CODUSR_INC'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODUSR_INC'
    end
    object Tb_LC1LC1_CODUSR_ALT: TFloatField
      FieldName = 'LC1_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODUSR_ALT'
    end
    object Tb_LC1LC1_DATHOR_ALT: TDateTimeField
      FieldName = 'LC1_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATHOR_ALT'
    end
    object Tb_LC1LC1_TPPCO: TFloatField
      FieldName = 'LC1_TPPCO'
      Origin = 'SG_ASSOC.CADLC1.LC1_TPPCO'
    end
    object Tb_LC1LC1_EMAIL: TStringField
      FieldName = 'LC1_EMAIL'
      Origin = 'SG_ASSOC.CADLC1.LC1_EMAIL'
      Size = 50
    end
    object Tb_LC1LC1_STATUS: TFloatField
      FieldName = 'LC1_STATUS'
      Origin = 'SG_ASSOC.CADLC1.LC1_STATUS'
    end
    object Tb_LC1LC1_CASASDEC: TFloatField
      FieldName = 'LC1_CASASDEC'
      Origin = 'SG_ASSOC.CADLC1.LC1_CASASDEC'
    end
  end
  object Tb_LC2: TQuery
    CachedUpdates = True
    BeforePost = Tb_LC2BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_LC2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLC2 where LC2_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LC2
    Left = 373
    Top = 92
    object Tb_LC2LC2_CODEMP: TFloatField
      FieldName = 'LC2_CODEMP'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODEMP'
    end
    object Tb_LC2LC2_CODPRO: TFloatField
      FieldName = 'LC2_CODPRO'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODPRO'
    end
    object Tb_LC2LC2_QTD: TFloatField
      FieldName = 'LC2_QTD'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTD'
    end
    object Tb_LC2LC2_UND: TStringField
      FieldName = 'LC2_UND'
      Origin = 'SG_ASSOC.CADLC2.LC2_UND'
      Size = 3
    end
    object Tb_LC2LC2_NOM01: TStringField
      FieldName = 'LC2_NOM01'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM01'
      Size = 50
    end
    object Tb_LC2LC2_NOM02: TStringField
      FieldName = 'LC2_NOM02'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM02'
      Size = 50
    end
    object Tb_LC2LC2_NOM03: TStringField
      FieldName = 'LC2_NOM03'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM03'
      Size = 50
    end
    object Tb_LC2LC2_NOM04: TStringField
      FieldName = 'LC2_NOM04'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM04'
      Size = 50
    end
    object Tb_LC2LC2_NOM05: TStringField
      FieldName = 'LC2_NOM05'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM05'
      Size = 50
    end
    object Tb_LC2LC2_NOM06: TStringField
      FieldName = 'LC2_NOM06'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM06'
      Size = 50
    end
    object Tb_LC2LC2_NOM07: TStringField
      FieldName = 'LC2_NOM07'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM07'
      Size = 50
    end
    object Tb_LC2LC2_NOM08: TStringField
      FieldName = 'LC2_NOM08'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM08'
      Size = 50
    end
    object Tb_LC2LC2_NOM09: TStringField
      FieldName = 'LC2_NOM09'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM09'
      Size = 50
    end
    object Tb_LC2LC2_NOM10: TStringField
      FieldName = 'LC2_NOM10'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM10'
      Size = 50
    end
    object Tb_LC2LC2_MARCA: TStringField
      FieldName = 'LC2_MARCA'
      Origin = 'SG_ASSOC.CADLC2.LC2_MARCA'
      Size = 15
    end
    object Tb_LC2LC2_RMS: TStringField
      FieldName = 'LC2_RMS'
      Origin = 'SG_ASSOC.CADLC2.LC2_RMS'
      Size = 15
    end
    object Tb_LC2LC2_PCOAV: TFloatField
      FieldName = 'LC2_PCOAV'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOAV'
    end
    object Tb_LC2LC2_PCOPZ: TFloatField
      FieldName = 'LC2_PCOPZ'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOPZ'
    end
    object Tb_LC2LC2_CHAVE: TFloatField
      FieldName = 'LC2_CHAVE'
      Origin = 'SG_ASSOC.CADLC2.LC2_CHAVE'
    end
    object Tb_LC2totav: TFloatField
      DisplayLabel = 'Total a Vista'
      FieldKind = fkCalculated
      FieldName = 'totav'
      Calculated = True
    end
    object Tb_LC2totpz: TFloatField
      DisplayLabel = 'Total a Prazo'
      FieldKind = fkCalculated
      FieldName = 'totpz'
      Calculated = True
    end
    object Tb_LC2LC2_ITEM: TFloatField
      FieldName = 'LC2_ITEM'
      Origin = 'SG_ASSOC.CADLC2.LC2_ITEM'
    end
    object Tb_LC2LC2_LOTEPREGAO: TStringField
      FieldName = 'LC2_LOTEPREGAO'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTEPREGAO'
      Size = 10
    end
    object Tb_LC2LC2_LOTSEQ: TFloatField
      FieldName = 'LC2_LOTSEQ'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTSEQ'
    end
    object Tb_LC2LC2_QTDENV: TFloatField
      FieldName = 'LC2_QTDENV'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTDENV'
    end
    object Tb_LC2LC2_GANHOU: TStringField
      FieldName = 'LC2_GANHOU'
      Origin = 'SG_ASSOC.CADLC2.LC2_GANHOU'
      Size = 1
    end
  end
  object Src_LC1: TDataSource
    DataSet = Tb_LC1
    Left = 428
    Top = 47
  end
  object Src_LC2: TDataSource
    DataSet = Tb_LC2
    Left = 429
    Top = 92
  end
  object Qr_TID: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTID')
    UpdateMode = upWhereKeyOnly
    Left = 9
    Top = 357
    object Qr_TIDTINOME: TStringField
      FieldName = 'TINOME'
      Origin = 'SG_ASSOC.CADTID.TINOME'
      Size = 30
    end
    object Qr_TIDTIQTD: TFloatField
      FieldName = 'TIQTD'
      Origin = 'SG_ASSOC.CADTID.TIQTD'
    end
  end
  object Tb_Est: TQuery
    CachedUpdates = True
    BeforePost = Tb_EstBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADEST where CECODEMP is null')
    UpdateObject = U_Est
    Left = 253
    Top = 146
    object Tb_EstCECODEMP: TFloatField
      FieldName = 'CECODEMP'
      Origin = 'SG_ASSOC.CADEST.CECODEMP'
    end
    object Tb_EstCECODPRO: TFloatField
      FieldName = 'CECODPRO'
      Origin = 'SG_ASSOC.CADEST.CECODPRO'
    end
    object Tb_EstCESALDO: TFloatField
      FieldName = 'CESALDO'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
      DisplayFormat = '##0.000'
    end
    object Tb_EstCESALDOR: TFloatField
      FieldName = 'CESALDOR'
      Origin = 'SG_ASSOC.CADEST.CESALDOR'
      DisplayFormat = '##0.000'
    end
    object Tb_EstCEDTUSAI: TDateTimeField
      FieldName = 'CEDTUSAI'
      Origin = 'SG_ASSOC.CADEST.CEDTUSAI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_EstCEDTUENT: TDateTimeField
      FieldName = 'CEDTUENT'
      Origin = 'SG_ASSOC.CADEST.CEDTUENT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_EstCEENTPEN: TFloatField
      FieldName = 'CEENTPEN'
      Origin = 'SG_ASSOC.CADEST.CEENTPEN'
    end
    object Tb_EstCESALDOC: TFloatField
      FieldName = 'CESALDOC'
      Origin = 'SG_ASSOC.CADEST.CESALDOC'
    end
    object Tb_EstCESALDOT: TFloatField
      FieldName = 'CESALDOT'
      Origin = 'SG_ASSOC.CADEST.CESALDOT'
    end
    object Tb_EstCELOG: TStringField
      FieldName = 'CELOG'
      Origin = 'SG_ASSOC.CADEST.CELOG'
      Size = 40
    end
    object Tb_EstCESALDO_PRAT: TFloatField
      FieldName = 'CESALDO_PRAT'
      Origin = 'SG_ASSOC.CADEST.CESALDO_PRAT'
    end
    object Tb_EstCESALDO_DEP: TFloatField
      FieldName = 'CESALDO_DEP'
      Origin = 'SG_ASSOC.CADEST.CESALDO_DEP'
    end
    object Tb_EstCESALDO_REP: TFloatField
      FieldName = 'CESALDO_REP'
      Origin = 'SG_ASSOC.CADEST.CESALDO_REP'
    end
  end
  object Src_Est: TDataSource
    DataSet = Tb_Est
    Left = 318
    Top = 138
  end
  object Tb_Ped01V: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped01VBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Ped01VCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01V  where'
      'P1VCODEMP  is null'
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped01V
    Left = 490
    Top = 267
    object Tb_Ped01VP1VCODEMP: TFloatField
      FieldName = 'P1VCODEMP'
      Origin = 'SG_ASSOC.CADP01V.P1VCODEMP'
    end
    object Tb_Ped01VP1VCHAVE: TFloatField
      FieldName = 'P1VCHAVE'
      Origin = 'SG_ASSOC.CADP01V.P1VCHAVE'
    end
    object Tb_Ped01VP1VDATAV: TDateTimeField
      FieldName = 'P1VDATAV'
      Origin = 'SG_ASSOC.CADP01V.P1VDATAV'
    end
    object Tb_Ped01VP1VVALOR: TFloatField
      FieldName = 'P1VVALOR'
      Origin = 'SG_ASSOC.CADP01V.P1VVALOR'
    end
    object Tb_Ped01VP1VORDEM: TFloatField
      FieldName = 'P1VORDEM'
      Origin = 'SG_ASSOC.CADP01V.P1VORDEM'
    end
    object Tb_Ped01VP1VCODIGO: TFloatField
      FieldName = 'P1VCODIGO'
      Origin = 'SG_ASSOC.CADP01V.P1VCODIGO'
    end
    object Tb_Ped01VP1VCOMISV: TFloatField
      FieldName = 'P1VCOMISV'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISV'
    end
    object Tb_Ped01VP1VCOMISS: TFloatField
      FieldName = 'P1VCOMISS'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISS'
    end
    object Tb_Ped01VP1VCOMIST: TFloatField
      FieldName = 'P1VCOMIST'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMIST'
    end
    object Tb_Ped01VP1VFRETE: TFloatField
      FieldName = 'P1VFRETE'
      Origin = 'SG_ASSOC.CADP01V.P1VFRETE'
    end
    object Tb_Ped01VP1VICMSR: TFloatField
      FieldName = 'P1VICMSR'
      Origin = 'SG_ASSOC.CADP01V.P1VICMSR'
    end
    object Tb_Ped01VP1VSEMCOM: TFloatField
      FieldName = 'P1VSEMCOM'
      Origin = 'SG_ASSOC.CADP01V.P1VSEMCOM'
    end
    object Tb_Ped01VP1VTABPV: TStringField
      FieldName = 'P1VTABPV'
      Origin = 'SG_ASSOC.CADP01V.P1VTABPV'
      Size = 2
    end
    object Tb_Ped01VP1VDESCF: TFloatField
      FieldName = 'P1VDESCF'
      Origin = 'SG_ASSOC.CADP01V.P1VDESCF'
    end
    object Tb_Ped01VP1VDTDESCF: TDateTimeField
      FieldName = 'P1VDTDESCF'
      Origin = 'SG_ASSOC.CADP01V.P1VDTDESCF'
    end
    object Tb_Ped01VP1VCOM02: TFloatField
      FieldName = 'P1VCOM02'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM02'
    end
    object Tb_Ped01VP1VCOM03: TFloatField
      FieldName = 'P1VCOM03'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM03'
    end
    object Tb_Ped01VP1VLOTSEQ: TFloatField
      FieldName = 'P1VLOTSEQ'
      Origin = 'SG_ASSOC.CADP01V.P1VLOTSEQ'
    end
    object Tb_Ped01VP1VSEQ: TFloatField
      FieldName = 'P1VSEQ'
      Origin = 'SG_ASSOC.CADP01V.P1VSEQ'
    end
    object Tb_Ped01VP1VTOTDI01: TFloatField
      FieldName = 'P1VTOTDI01'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI01'
    end
    object Tb_Ped01VP1VTOTDI02: TFloatField
      FieldName = 'P1VTOTDI02'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI02'
    end
    object Tb_Ped01VP1VTOTDI03: TFloatField
      FieldName = 'P1VTOTDI03'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI03'
    end
    object Tb_Ped01VP1VTOTDIVL: TFloatField
      FieldName = 'P1VTOTDIVL'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDIVL'
    end
    object Tb_Ped01VP1VVALDES01: TFloatField
      FieldName = 'P1VVALDES01'
      Origin = 'SG_ASSOC.CADP01V.P1VVALDES01'
    end
    object Tb_Ped01VP1VVALDES02: TFloatField
      FieldName = 'P1VVALDES02'
      Origin = 'SG_ASSOC.CADP01V.P1VVALDES02'
    end
    object Tb_Ped01VP1VVLRDES: TFloatField
      FieldName = 'P1VVLRDES'
      Origin = 'SG_ASSOC.CADP01V.P1VVLRDES'
    end
    object Tb_Ped01VP1VTARBAN: TFloatField
      FieldName = 'P1VTARBAN'
      Origin = 'SG_ASSOC.CADP01V.P1VTARBAN'
    end
    object Tb_Ped01VP1VCOMASSE: TFloatField
      FieldName = 'P1VCOMASSE'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMASSE'
    end
    object Tb_Ped01VP1VSEG: TFloatField
      FieldName = 'P1VSEG'
      Origin = 'SG_ASSOC.CADP01V.P1VSEG'
    end
    object Tb_Ped01VP1VCOM04: TFloatField
      FieldName = 'P1VCOM04'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM04'
    end
    object Tb_Ped01VP1VTOTIPI: TFloatField
      FieldName = 'P1VTOTIPI'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTIPI'
    end
    object Tb_Ped01VP1VTOTCGRU: TFloatField
      FieldName = 'P1VTOTCGRU'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTCGRU'
    end
    object Tb_Ped01VP1VTOTSGRU: TFloatField
      FieldName = 'P1VTOTSGRU'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTSGRU'
    end
    object Tb_Ped01VP1VVLRSERV: TFloatField
      FieldName = 'P1VVLRSERV'
      Origin = 'SGE.CADP01V.P1VVLRSERV'
    end
    object Tb_Ped01VP1VCOMISV_EXTRA: TFloatField
      FieldName = 'P1VCOMISV_EXTRA'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISV_EXTRA'
    end
    object Tb_Ped01VP1VVINC02: TFloatField
      FieldName = 'P1VVINC02'
      Origin = 'SG_ASSOC.CADP01V.P1VVINC02'
    end
    object Tb_Ped01VP1VNOMFPGTO: TStringField
      FieldName = 'P1VNOMFPGTO'
      Origin = 'SG_ASSOC.CADP01V.P1VNOMFPGTO'
      Size = 40
    end
    object Tb_Ped01VP1VCODFP: TFloatField
      FieldName = 'P1VCODFP'
      Origin = 'SG_ASSOC.CADP01V.P1VCODFP'
    end
    object Tb_Ped01VP1VPFPGTO: TFloatField
      FieldName = 'P1VPFPGTO'
      Origin = 'SG_ASSOC.CADP01V.P1VPFPGTO'
    end
    object Tb_Ped01VP1VDEV_CODEMP: TFloatField
      FieldName = 'P1VDEV_CODEMP'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_CODEMP'
    end
    object Tb_Ped01VP1VDEV_CODECF: TFloatField
      FieldName = 'P1VDEV_CODECF'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_CODECF'
    end
    object Tb_Ped01VP1VDEV_NUMERO: TFloatField
      FieldName = 'P1VDEV_NUMERO'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_NUMERO'
    end
    object Tb_Ped01VP1VDEV_DESD: TStringField
      FieldName = 'P1VDEV_DESD'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DESD'
      Size = 4
    end
    object Tb_Ped01VP1VDEV_DTEMIS: TDateTimeField
      FieldName = 'P1VDEV_DTEMIS'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DTEMIS'
    end
    object Tb_Ped01VP1VDEV_DUP: TFloatField
      FieldName = 'P1VDEV_DUP'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DUP'
    end
    object Tb_Ped01VP1VCHAVE_NIVEL: TFloatField
      FieldName = 'P1VCHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01V.P1VCHAVE_NIVEL'
    end
    object Tb_Ped01Vnomfp: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfp'
      Size = 40
      Calculated = True
    end
  end
  object Src_Ped01V: TDataSource
    DataSet = Tb_Ped01V
    Left = 546
    Top = 267
  end
  object Src_Ped2D: TDataSource
    DataSet = Tb_Ped02D
    Left = 546
    Top = 362
  end
  object Tb_Ped02D: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped02DBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02D where'
      'P2DCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped02D
    Left = 490
    Top = 362
    object Tb_Ped02DP2DCODEMP: TFloatField
      FieldName = 'P2DCODEMP'
      Origin = 'SG_ASSOC.CADP02D.P2DCODEMP'
    end
    object Tb_Ped02DP2DCHAVE: TFloatField
      FieldName = 'P2DCHAVE'
      Origin = 'SG_ASSOC.CADP02D.P2DCHAVE'
    end
    object Tb_Ped02DP2DORDEM: TFloatField
      FieldName = 'P2DORDEM'
      Origin = 'SG_ASSOC.CADP02D.P2DORDEM'
    end
    object Tb_Ped02DP2DCODPRO: TFloatField
      FieldName = 'P2DCODPRO'
      Origin = 'SG_ASSOC.CADP02D.P2DCODPRO'
    end
    object Tb_Ped02DP2DESC: TStringField
      FieldName = 'P2DESC'
      Origin = 'SG_ASSOC.CADP02D.P2DESC'
      Size = 60
    end
    object Tb_Ped02DP2DTIPO: TFloatField
      FieldName = 'P2DTIPO'
      Origin = 'SG_ASSOC.CADP02D.P2DTIPO'
    end
    object Tb_Ped02DP2DITEM: TFloatField
      FieldName = 'P2DITEM'
      Origin = 'SG_ASSOC.CADP02D.P2DITEM'
    end
    object Tb_Ped02DP2DLINHA: TFloatField
      FieldName = 'P2DLINHA'
      Origin = 'SG_ASSOC.CADP02D.P2DLINHA'
    end
    object Tb_Ped02DP2DLOTSEQ: TFloatField
      FieldName = 'P2DLOTSEQ'
      Origin = 'SG_ASSOC.CADP02D.P2DLOTSEQ'
    end
    object Tb_Ped02DP2DGRADE: TStringField
      FieldName = 'P2DGRADE'
      Origin = 'SG_ASSOC.CADP02D.P2DGRADE'
    end
  end
  object Src_Ped02S: TDataSource
    DataSet = Tb_Ped02S
    Left = 546
    Top = 397
  end
  object Tb_Ped02S: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02S where'
      'P2SCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped02S
    Left = 490
    Top = 397
    object Tb_Ped02SP2SCODEMP: TFloatField
      FieldName = 'P2SCODEMP'
      Origin = 'SG_ASSOC.CADP02S.P2SCODEMP'
    end
    object Tb_Ped02SP2SCHAVE: TFloatField
      FieldName = 'P2SCHAVE'
      Origin = 'SG_ASSOC.CADP02S.P2SCHAVE'
    end
    object Tb_Ped02SP2SITEM: TFloatField
      FieldName = 'P2SITEM'
      Origin = 'SG_ASSOC.CADP02S.P2SITEM'
    end
    object Tb_Ped02SP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Tb_Ped02SP2SQTD: TFloatField
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Tb_Ped02SP2SDESC1: TFloatField
      FieldName = 'P2SDESC1'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC1'
    end
    object Tb_Ped02SP2SDESC2: TFloatField
      FieldName = 'P2SDESC2'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC2'
    end
    object Tb_Ped02SP2SVALDES: TFloatField
      FieldName = 'P2SVALDES'
      Origin = 'SG_ASSOC.CADP02S.P2SVALDES'
    end
    object Tb_Ped02SP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Tb_Ped02SP2SSIT: TStringField
      FieldName = 'P2SSIT'
      Origin = 'SG_ASSOC.CADP02S.P2SSIT'
      Size = 3
    end
    object Tb_Ped02SP2SCODFAB: TFloatField
      FieldName = 'P2SCODFAB'
      Origin = 'SG_ASSOC.CADP02S.P2SCODFAB'
    end
    object Tb_Ped02SP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Tb_Ped02SP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Tb_Ped02SP2SPCOTAB: TFloatField
      FieldName = 'P2SPCOTAB'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOTAB'
    end
    object Tb_Ped02SP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Tb_Ped02SP2STABELA: TStringField
      FieldName = 'P2STABELA'
      Origin = 'SG_ASSOC.CADP02S.P2STABELA'
      Size = 1
    end
    object Tb_Ped02SP2SISENTAS: TFloatField
      FieldName = 'P2SISENTAS'
      Origin = 'SG_ASSOC.CADP02S.P2SISENTAS'
    end
    object Tb_Ped02SP2SALIQ: TFloatField
      FieldName = 'P2SALIQ'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQ'
    end
    object Tb_Ped02SP2SCFO: TFloatField
      FieldName = 'P2SCFO'
      Origin = 'SG_ASSOC.CADP02S.P2SCFO'
    end
    object Tb_Ped02SP2SORDEM: TFloatField
      FieldName = 'P2SORDEM'
      Origin = 'SG_ASSOC.CADP02S.P2SORDEM'
    end
    object Tb_Ped02SP2SLISTA: TFloatField
      FieldName = 'P2SLISTA'
      Origin = 'SG_ASSOC.CADP02S.P2SLISTA'
    end
    object Tb_Ped02SP2SSTATUS: TFloatField
      FieldName = 'P2SSTATUS'
      Origin = 'SG_ASSOC.CADP02S.P2SSTATUS'
    end
    object Tb_Ped02SP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOMIS'
    end
    object Tb_Ped02SP2SDESCM: TFloatField
      FieldName = 'P2SDESCM'
      Origin = 'SG_ASSOC.CADP02S.P2SDESCM'
    end
    object Tb_Ped02SP2SSEMCOM: TFloatField
      FieldName = 'P2SSEMCOM'
      Origin = 'SG_ASSOC.CADP02S.P2SSEMCOM'
    end
    object Tb_Ped02SP2SPDESCF: TFloatField
      FieldName = 'P2SPDESCF'
      Origin = 'SG_ASSOC.CADP02S.P2SPDESCF'
    end
    object Tb_Ped02SP2SVDESCF: TFloatField
      FieldName = 'P2SVDESCF'
      Origin = 'SG_ASSOC.CADP02S.P2SVDESCF'
    end
    object Tb_Ped02SP2SVCOMIS: TFloatField
      FieldName = 'P2SVCOMIS'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOMIS'
    end
    object Tb_Ped02SP2SDESCRAT: TFloatField
      FieldName = 'P2SDESCRAT'
      Origin = 'SG_ASSOC.CADP02S.P2SDESCRAT'
    end
    object Tb_Ped02SP2SPCOCUS: TFloatField
      FieldName = 'P2SPCOCUS'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOCUS'
    end
    object Tb_Ped02SP2SVCOM02: TFloatField
      FieldName = 'P2SVCOM02'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOM02'
    end
    object Tb_Ped02SP2SVCOM03: TFloatField
      FieldName = 'P2SVCOM03'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOM03'
    end
    object Tb_Ped02SP2SLOTSEQ: TFloatField
      FieldName = 'P2SLOTSEQ'
      Origin = 'SG_ASSOC.CADP02S.P2SLOTSEQ'
    end
    object Tb_Ped02SP2SQTDDEV: TFloatField
      FieldName = 'P2SQTDDEV'
      Origin = 'SG_ASSOC.CADP02S.P2SQTDDEV'
    end
    object Tb_Ped02SP2SDESC3: TFloatField
      FieldName = 'P2SDESC3'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC3'
    end
    object Tb_Ped02SP2SACRECRAT: TFloatField
      FieldName = 'P2SACRECRAT'
      Origin = 'SG_ASSOC.CADP02S.P2SACRECRAT'
    end
    object Tb_Ped02SP2SSTATUS_PED1: TFloatField
      FieldName = 'P2SSTATUS_PED1'
      Origin = 'SG_ASSOC.CADP02S.P2SSTATUS_PED1'
    end
    object Tb_Ped02SP2STIPO: TFloatField
      FieldName = 'P2STIPO'
      Origin = 'SG_ASSOC.CADP02S.P2STIPO'
    end
    object Tb_Ped02SP2SCODFUN: TFloatField
      FieldName = 'P2SCODFUN'
      Origin = 'SG_ASSOC.CADP02S.P2SCODFUN'
    end
    object Tb_Ped02SP2SQTD_ATEN: TFloatField
      FieldName = 'P2SQTD_ATEN'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD_ATEN'
    end
    object Tb_Ped02SP2SBCINSS: TFloatField
      FieldName = 'P2SBCINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SBCINSS'
    end
    object Tb_Ped02SP2SREDINSS: TFloatField
      FieldName = 'P2SREDINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SREDINSS'
    end
    object Tb_Ped02SP2SVINSS: TFloatField
      FieldName = 'P2SVINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SVINSS'
    end
    object Tb_Ped02SP2SALIQINSS: TFloatField
      DisplayLabel = '% INSS'
      FieldName = 'P2SALIQINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQINSS'
    end
    object Tb_Ped02SP2SREDIRRF: TFloatField
      FieldName = 'P2SREDIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SREDIRRF'
    end
    object Tb_Ped02SP2SBCIRRF: TFloatField
      FieldName = 'P2SBCIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SBCIRRF'
    end
    object Tb_Ped02SP2SVIRRF: TFloatField
      FieldName = 'P2SVIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SVIRRF'
    end
    object Tb_Ped02SP2SALIQIRRF: TFloatField
      FieldName = 'P2SALIQIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQIRRF'
    end
  end
  object Qr_FP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFP')
    UpdateMode = upWhereKeyOnly
    Left = 9
    Top = 312
    object Qr_FPFPCODIGO: TFloatField
      FieldName = 'FPCODIGO'
      Origin = 'SG_ASSOC.CADFP.FPCODIGO'
    end
    object Qr_FPFPDESC: TStringField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.CADFP.FPDESC'
      Size = 15
    end
    object Qr_FPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.CADFP.FPTIPO'
    end
    object Qr_FPFPNUM: TFloatField
      FieldName = 'FPNUM'
      Origin = 'SG_ASSOC.CADFP.FPNUM'
    end
    object Qr_FPFPVINCULO: TFloatField
      FieldName = 'FPVINCULO'
      Origin = 'SG_ASSOC.CADFP.FPVINCULO'
    end
    object Qr_FPFPCODBCO: TFloatField
      FieldName = 'FPCODBCO'
      Origin = 'SG_ASSOC.CADFP.FPCODBCO'
    end
    object Qr_FPFPCODBCO_PM: TFloatField
      FieldName = 'FPCODBCO_PM'
      Origin = 'SG_ASSOC.CADFP.FPCODBCO_PM'
    end
  end
  object Tb_JD01: TQuery
    CachedUpdates = True
    BeforePost = Tb_JD01BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADJD01 where J1CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_JD01
    Left = 261
    Top = 495
    object Tb_JD01J1CODEMP: TFloatField
      FieldName = 'J1CODEMP'
      Origin = 'SG_ASSOC.CADJD01.J1CODEMP'
    end
    object Tb_JD01J1TIPO: TFloatField
      FieldName = 'J1TIPO'
      Origin = 'SG_ASSOC.CADJD01.J1TIPO'
    end
    object Tb_JD01J1LOTE: TFloatField
      FieldName = 'J1LOTE'
      Origin = 'SG_ASSOC.CADJD01.J1LOTE'
    end
    object Tb_JD01J1DESC: TStringField
      FieldName = 'J1DESC'
      Origin = 'SG_ASSOC.CADJD01.J1DESC'
      Size = 30
    end
    object Tb_JD01J1DATAR: TDateTimeField
      FieldName = 'J1DATAR'
      Origin = 'SG_ASSOC.CADJD01.J1DATAR'
    end
    object Tb_JD01J1FATOR: TFloatField
      FieldName = 'J1FATOR'
      Origin = 'SG_ASSOC.CADJD01.J1FATOR'
    end
  end
  object Tb_JD02: TQuery
    CachedUpdates = True
    BeforePost = Tb_JD02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADJD02 where J2CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_JD02
    Left = 365
    Top = 10
    object Tb_JD02J2CODEMP: TFloatField
      FieldName = 'J2CODEMP'
      Origin = 'SG_ASSOC.CADJD02.J2CODEMP'
    end
    object Tb_JD02J2TIPO: TFloatField
      FieldName = 'J2TIPO'
      Origin = 'SG_ASSOC.CADJD02.J2TIPO'
    end
    object Tb_JD02J2LOTE: TFloatField
      FieldName = 'J2LOTE'
      Origin = 'SG_ASSOC.CADJD02.J2LOTE'
    end
    object Tb_JD02J2SEQ: TFloatField
      FieldName = 'J2SEQ'
      Origin = 'SG_ASSOC.CADJD02.J2SEQ'
    end
    object Tb_JD02J2DESC: TStringField
      FieldName = 'J2DESC'
      Origin = 'SG_ASSOC.CADJD02.J2DESC'
      Size = 30
    end
    object Tb_JD02J2VALOR: TFloatField
      FieldName = 'J2VALOR'
      Origin = 'SG_ASSOC.CADJD02.J2VALOR'
    end
    object Tb_JD02J2DATA: TDateTimeField
      FieldName = 'J2DATA'
      Origin = 'SG_ASSOC.CADJD02.J2DATA'
    end
  end
  object Src_JD01: TDataSource
    DataSet = Tb_JD01
    Left = 318
    Top = 495
  end
  object Src_JD02: TDataSource
    DataSet = Tb_JD02
    Left = 422
    Top = 10
  end
  object Tb_Cli: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CliBeforeInsert
    AfterInsert = Tb_CliAfterInsert
    BeforeDelete = Tb_CliBeforeDelete
    OnCalcFields = Tb_CliCalcFields
    DatabaseName = 'SG_ASSOC'
    Constrained = True
    SQL.Strings = (
      'Select * from CADCLI')
    UpdateObject = U_Cli
    Left = 152
    Top = 50
    object Tb_CliCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CCODEMP'
      Origin = 'SG_ASSOC.CADCLI.CCODEMP'
    end
    object Tb_CliCCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
    object Tb_CliCTPLOG: TStringField
      DisplayLabel = 'Tipo Logradouro'
      FieldName = 'CTPLOG'
      Origin = 'SG_ASSOC.CADCLI.CTPLOG'
      Size = 10
    end
    object Tb_CliCLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Tb_CliCNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CNUM'
      Origin = 'SG_ASSOC.CADCLI.CNUM'
      Size = 10
    end
    object Tb_CliCCOMPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'CCOMPL'
      Origin = 'SG_ASSOC.CADCLI.CCOMPL'
      Size = 30
    end
    object Tb_CliCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Tb_CliCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_CliCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_CliCCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo Bairro'
      FieldName = 'CCODBAI'
      Origin = 'SG_ASSOC.CADCLI.CCODBAI'
    end
    object Tb_CliCCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo Local'
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Tb_CliCCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      EditMask = '99999-999;1; '
      Size = 9
    end
    object Tb_CliCCELULAR: TStringField
      DisplayLabel = 'Fone 03'
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Tb_CliCFONERES: TStringField
      DisplayLabel = 'Fone 01'
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Tb_CliCFONECOM: TStringField
      DisplayLabel = 'Fone 02'
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Tb_CliCDTCAD: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'CDTCAD'
      Origin = 'SG_ASSOC.CADCLI.CDTCAD'
    end
    object Tb_CliCCPF: TFloatField
      DisplayLabel = 'CPF'
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
      DisplayFormat = '000"."000"."000"-"00'
      EditFormat = '###########'
    end
    object Tb_CliCRG: TStringField
      DisplayLabel = 'Registro Geral'
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Tb_CliCCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
      DisplayFormat = '00"."000"."000"/"0000"-"00'
      EditFormat = '##############'
    end
    object Tb_CliCIE: TStringField
      DisplayLabel = 'Incri'#231#227'o Estadual'
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Tb_CliCPONTOR: TStringField
      DisplayLabel = 'Ponto de Referencia'
      FieldName = 'CPONTOR'
      Origin = 'SG_ASSOC.CADCLI.CPONTOR'
      Size = 60
    end
    object Tb_CliCLCRED: TFloatField
      DisplayLabel = 'Limite de Credito'
      FieldName = 'CLCRED'
      Origin = 'SG_ASSOC.CADCLI.CLCRED'
      DisplayFormat = '0.00'
    end
    object Tb_CliCTABPV: TStringField
      DisplayLabel = 'Tabela PV'
      FieldName = 'CTABPV'
      Origin = 'SG_ASSOC.CADCLI.CTABPV'
      Size = 2
    end
    object Tb_CliCCODPV: TFloatField
      DisplayLabel = 'C'#243'digo PV'
      FieldName = 'CCODPV'
      Origin = 'SG_ASSOC.CADCLI.CCODPV'
    end
    object Tb_CliCCODVEN: TFloatField
      DisplayLabel = 'C'#243'digo Vendedor'
      FieldName = 'CCODVEN'
      Origin = 'SG_ASSOC.CADCLI.CCODVEN'
    end
    object Tb_CliCCODV02: TFloatField
      DisplayLabel = 'C'#243'digo Vendedor 02'
      FieldName = 'CCODV02'
      Origin = 'SG_ASSOC.CADCLI.CCODV02'
    end
    object Tb_CliCCODV03: TFloatField
      DisplayLabel = 'C'#243'digo Vendedor 03'
      FieldName = 'CCODV03'
      Origin = 'SG_ASSOC.CADCLI.CCODV03'
    end
    object Tb_CliCCODCV: TFloatField
      DisplayLabel = 'C'#243'digo Convenio'
      FieldName = 'CCODCV'
      Origin = 'SG_ASSOC.CADCLI.CCODCV'
    end
    object Tb_CliCSTATUS: TFloatField
      DisplayLabel = 'Status Cliente'
      FieldName = 'CSTATUS'
      Origin = 'SG_ASSOC.CADCLI.CSTATUS'
    end
    object Tb_CliCALIQA: TFloatField
      DisplayLabel = 'Al'#237'quota A'
      FieldName = 'CALIQA'
      Origin = 'SG_ASSOC.CADCLI.CALIQA'
      DisplayFormat = '0.00'
    end
    object Tb_CliCALIQB: TFloatField
      DisplayLabel = 'Al'#237'quota B'
      FieldName = 'CALIQB'
      Origin = 'SG_ASSOC.CADCLI.CALIQB'
      DisplayFormat = '0.00'
    end
    object Tb_CliCCONSF: TFloatField
      DisplayLabel = 'Consumidor Final'
      FieldName = 'CCONSF'
      Origin = 'SG_ASSOC.CADCLI.CCONSF'
    end
    object Tb_CliCICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CICMSR'
      Origin = 'SG_ASSOC.CADCLI.CICMSR'
    end
    object Tb_CliCLIM1: TStringField
      DisplayLabel = 'Liminar linha 01'
      FieldName = 'CLIM1'
      Origin = 'SG_ASSOC.CADCLI.CLIM1'
      Size = 60
    end
    object Tb_CliCLIM2: TStringField
      DisplayLabel = 'Liminar Linha 02'
      FieldName = 'CLIM2'
      Origin = 'SG_ASSOC.CADCLI.CLIM2'
      Size = 60
    end
    object Tb_CliCNALV: TStringField
      DisplayLabel = 'N'#250'mero Alvara Vig.Estadual'
      FieldName = 'CNALV'
      Origin = 'SG_ASSOC.CADCLI.CNALV'
    end
    object Tb_CliCDTVALV: TDateTimeField
      DisplayLabel = 'Dt.Venc.Alv.Vig.Estadual'
      FieldName = 'CDTVALV'
      Origin = 'SG_ASSOC.CADCLI.CDTVALV'
    end
    object Tb_CliCNANVISA: TStringField
      DisplayLabel = 'N'#250'mero Alv.ANIVSA'
      FieldName = 'CNANVISA'
      Origin = 'SG_ASSOC.CADCLI.CNANVISA'
    end
    object Tb_CliCDTANVISA: TDateTimeField
      DisplayLabel = 'Dt.Alv.ANVISA'
      FieldName = 'CDTANVISA'
      Origin = 'SG_ASSOC.CADCLI.CDTANVISA'
    end
    object Tb_CliCICMSRP: TFloatField
      DisplayLabel = 'Icms Retido todos produtos'
      FieldName = 'CICMSRP'
      Origin = 'SG_ASSOC.CADCLI.CICMSRP'
    end
    object Tb_CliCIPI: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'CIPI'
      Origin = 'SG_ASSOC.CADCLI.CIPI'
    end
    object Tb_CliCICMSTP: TFloatField
      DisplayLabel = 'Calcula ICMS dos produtos Retidos 0-Nao 1-Sim'
      FieldName = 'CICMSTP'
      Origin = 'SG_ASSOC.CADCLI.CICMSTP'
    end
    object Tb_CliCREPAS: TFloatField
      DisplayLabel = 'Repasse de ICMS'
      FieldName = 'CREPAS'
      Origin = 'SG_ASSOC.CADCLI.CREPAS'
    end
    object Tb_CliCCOMIS: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'CCOMIS'
      Origin = 'SG_ASSOC.CADCLI.CCOMIS'
      DisplayFormat = '0.00'
    end
    object Tb_CliCDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CDESC'
      Origin = 'SG_ASSOC.CADCLI.CDESC'
      DisplayFormat = '0.00'
    end
    object Tb_CliCEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
    end
    object Tb_CliCNOMCON: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'CNOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Tb_CliCFONCON: TStringField
      DisplayLabel = 'Fone do Contato'
      FieldName = 'CFONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Tb_CliCHOME: TStringField
      DisplayLabel = 'Home page'
      FieldName = 'CHOME'
      Origin = 'SG_ASSOC.CADCLI.CHOME'
      Size = 50
    end
    object Tb_CliCCODRED: TFloatField
      FieldName = 'CCODRED'
      Origin = 'SG_ASSOC.CADCLI.CCODRED'
    end
    object Tb_CliCCODCCD: TStringField
      FieldName = 'CCODCCD'
      Origin = 'SG_ASSOC.CADCLI.CCODCCD'
      Size = 16
    end
    object Tb_CliCCODCCC: TStringField
      FieldName = 'CCODCCC'
      Origin = 'SG_ASSOC.CADCLI.CCODCCC'
      Size = 16
    end
    object Tb_CliCCODDEPD: TStringField
      FieldName = 'CCODDEPD'
      Origin = 'SG_ASSOC.CADCLI.CCODDEPD'
      Size = 5
    end
    object Tb_CliCCODDEPC: TStringField
      FieldName = 'CCODDEPC'
      Origin = 'SG_ASSOC.CADCLI.CCODDEPC'
      Size = 5
    end
    object Tb_CliCDESCMVD: TStringField
      FieldName = 'CDESCMVD'
      Origin = 'SG_ASSOC.CADCLI.CDESCMVD'
      Size = 40
    end
    object Tb_CliCDESCMVC: TStringField
      FieldName = 'CDESCMVC'
      Origin = 'SG_ASSOC.CADCLI.CDESCMVC'
      Size = 40
    end
    object Tb_CliCCODUSR: TFloatField
      FieldName = 'CCODUSR'
      Origin = 'SG_ASSOC.CADCLI.CCODUSR'
    end
    object Tb_CliCDTALT: TDateTimeField
      FieldName = 'CDTALT'
      Origin = 'SG_ASSOC.CADCLI.CDTALT'
    end
    object Tb_CliCDTUCPR: TDateTimeField
      FieldName = 'CDTUCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTUCPR'
    end
    object Tb_CliCDTPCPR: TDateTimeField
      FieldName = 'CDTPCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTPCPR'
    end
    object Tb_CliCHRALT: TStringField
      FieldName = 'CHRALT'
      Origin = 'SG_ASSOC.CADCLI.CHRALT'
      Size = 10
    end
    object Tb_CliCTIPOC: TFloatField
      FieldName = 'CTIPOC'
      Origin = 'SG_ASSOC.CADCLI.CTIPOC'
    end
    object Tb_CliCTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
      Origin = 'SG_ASSOC.CADCLI.CTPPESSOA'
    end
    object Tb_CliCOBS01: TStringField
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Tb_CliCOBS02: TStringField
      FieldName = 'COBS02'
      Origin = 'SG_ASSOC.CADCLI.COBS02'
      Size = 60
    end
    object Tb_CliCOBS03: TStringField
      FieldName = 'COBS03'
      Origin = 'SG_ASSOC.CADCLI.COBS03'
      Size = 60
    end
    object Tb_CliCOBS04: TStringField
      FieldName = 'COBS04'
      Origin = 'SG_ASSOC.CADCLI.COBS04'
      Size = 60
    end
    object Tb_CliCSITCLI: TFloatField
      FieldName = 'CSITCLI'
      Origin = 'SG_ASSOC.CADCLI.CSITCLI'
    end
    object Tb_CliCNCONV: TStringField
      FieldName = 'CNCONV'
      Origin = 'SG_ASSOC.CADCLI.CNCONV'
      Size = 30
    end
    object Tb_CliCDTUREN: TDateTimeField
      FieldName = 'CDTUREN'
      Origin = 'SG_ASSOC.CADCLI.CDTUREN'
    end
    object Tb_CliCACCOM: TFloatField
      FieldName = 'CACCOM'
      Origin = 'SG_ASSOC.CADCLI.CACCOM'
    end
    object Tb_CliCCEPC: TStringField
      FieldName = 'CCEPC'
      Origin = 'SG_ASSOC.CADCLI.CCEPC'
      EditMask = '99999-999;1; '
      Size = 9
    end
    object Tb_CliCENDERC: TStringField
      FieldName = 'CENDERC'
      Origin = 'SG_ASSOC.CADCLI.CENDERC'
      Size = 40
    end
    object Tb_CliCCODBAIC: TFloatField
      FieldName = 'CCODBAIC'
      Origin = 'SG_ASSOC.CADCLI.CCODBAIC'
    end
    object Tb_CliCBAIRROC: TStringField
      FieldName = 'CBAIRROC'
      Origin = 'SG_ASSOC.CADCLI.CBAIRROC'
      Size = 30
    end
    object Tb_CliCCODLOCC: TFloatField
      FieldName = 'CCODLOCC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOCC'
    end
    object Tb_CliCCIDADEC: TStringField
      FieldName = 'CCIDADEC'
      Origin = 'SG_ASSOC.CADCLI.CCIDADEC'
      Size = 30
    end
    object Tb_CliCUFC: TStringField
      FieldName = 'CUFC'
      Origin = 'SG_ASSOC.CADCLI.CUFC'
      Size = 2
    end
    object Tb_CliCNOMVEN: TStringField
      FieldName = 'CNOMVEN'
      Origin = 'SG_ASSOC.CADCLI.CNOMVEN'
      Size = 40
    end
    object Tb_CliCNOMV02: TStringField
      FieldName = 'CNOMV02'
      Origin = 'SG_ASSOC.CADCLI.CNOMV02'
      Size = 40
    end
    object Tb_CliCNOMV03: TStringField
      FieldName = 'CNOMV03'
      Origin = 'SG_ASSOC.CADCLI.CNOMV03'
      Size = 40
    end
    object Tb_CliCNOMPLA: TStringField
      FieldName = 'CNOMPLA'
      Origin = 'SG_ASSOC.CADCLI.CNOMPLA'
      Size = 40
    end
    object Tb_CliCNOMCCD: TStringField
      FieldName = 'CNOMCCD'
      Origin = 'SG_ASSOC.CADCLI.CNOMCCD'
      Size = 40
    end
    object Tb_CliCNOMCCC: TStringField
      FieldName = 'CNOMCCC'
      Origin = 'SG_ASSOC.CADCLI.CNOMCCC'
      Size = 40
    end
    object Tb_CliCNOMDEPD: TStringField
      FieldName = 'CNOMDEPD'
      Origin = 'SG_ASSOC.CADCLI.CNOMDEPD'
      Size = 40
    end
    object Tb_CliCNOMRED: TStringField
      FieldName = 'CNOMRED'
      Origin = 'SG_ASSOC.CADCLI.CNOMRED'
      Size = 40
    end
    object Tb_CliCNOMDEPC: TStringField
      FieldName = 'CNOMDEPC'
      Origin = 'SG_ASSOC.CADCLI.CNOMDEPC'
      Size = 40
    end
    object Tb_CliCBLQPRM: TFloatField
      FieldName = 'CBLQPRM'
      Origin = 'SG_ASSOC.CADCLI.CBLQPRM'
    end
    object Tb_CliCCODTRA: TFloatField
      DisplayLabel = 'C'#243'digo da Transportadora'
      FieldName = 'CCODTRA'
      Origin = 'SG_ASSOC.CADCLI.CCODTRA'
    end
    object Tb_CliCICMSNOR: TFloatField
      DisplayLabel = 'Calcula Icms Normal 0-Sim 1-N'#227'o'
      FieldName = 'CICMSNOR'
      Origin = 'SG_ASSOC.CADCLI.CICMSNOR'
    end
    object Tb_CliCNOMTRA: TStringField
      DisplayLabel = 'Nome da Transportadora'
      FieldName = 'CNOMTRA'
      Origin = 'SG_ASSOC.CADCLI.CNOMTRA'
      Size = 40
    end
    object Tb_CliCFAX: TStringField
      FieldName = 'CFAX'
      Origin = 'SG_ASSOC.CADCLI.CFAX'
      Size = 16
    end
    object Tb_CliCFRETEPC: TFloatField
      FieldName = 'CFRETEPC'
      Origin = 'SG_ASSOC.CADCLI.CFRETEPC'
    end
    object Tb_CliCPCOPRAT: TFloatField
      FieldName = 'CPCOPRAT'
      Origin = 'SG_ASSOC.CADCLI.CPCOPRAT'
    end
    object Tb_CliCCH_FONE01: TStringField
      FieldName = 'CCH_FONE01'
      Origin = 'SG_ASSOC.CADCLI.CCH_FONE01'
      Size = 16
    end
    object Tb_CliCCH_FONE02: TStringField
      FieldName = 'CCH_FONE02'
      Origin = 'SG_ASSOC.CADCLI.CCH_FONE02'
      Size = 16
    end
    object Tb_CliCCH_CELULAR: TStringField
      FieldName = 'CCH_CELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCH_CELULAR'
      Size = 16
    end
    object Tb_CliCCH_FONCON: TStringField
      FieldName = 'CCH_FONCON'
      Origin = 'SG_ASSOC.CADCLI.CCH_FONCON'
      Size = 16
    end
    object Tb_CliCCH_FAX: TStringField
      FieldName = 'CCH_FAX'
      Origin = 'SG_ASSOC.CADCLI.CCH_FAX'
      Size = 16
    end
    object Tb_CliCCODASSE: TFloatField
      FieldName = 'CCODASSE'
      Origin = 'SG_ASSOC.CADCLI.CCODASSE'
    end
    object Tb_CliCNOMASSE: TStringField
      FieldName = 'CNOMASSE'
      Origin = 'SG_ASSOC.CADCLI.CNOMASSE'
      Size = 40
    end
    object Tb_CliCREDICMSNOR: TFloatField
      DisplayLabel = 
        'Permite Reduzir Base de Calculo de Icms Normal se houver 0-Sim 1' +
        '-Nao'
      FieldName = 'CREDICMSNOR'
      Origin = 'SG_ASSOC.CADCLI.CREDICMSNOR'
    end
    object Tb_CliCBLQEMP: TFloatField
      FieldName = 'CBLQEMP'
      Origin = 'SG_ASSOC.CADCLI.CBLQEMP'
    end
    object Tb_CliCALIQDEB: TFloatField
      FieldName = 'CALIQDEB'
      Origin = 'SG_ASSOC.CADCLI.CALIQDEB'
      DisplayFormat = '0.00'
    end
    object Tb_CliCOBS05: TStringField
      FieldName = 'COBS05'
      Origin = 'SG_ASSOC.CADCLI.COBS05'
      Size = 60
    end
    object Tb_CliCCODV04: TFloatField
      FieldName = 'CCODV04'
      Origin = 'SG_ASSOC.CADCLI.CCODV04'
    end
    object Tb_CliCCOMIS02: TFloatField
      FieldName = 'CCOMIS02'
      Origin = 'SG_ASSOC.CADCLI.CCOMIS02'
    end
    object Tb_CliCCOMIS03: TFloatField
      FieldName = 'CCOMIS03'
      Origin = 'SG_ASSOC.CADCLI.CCOMIS03'
    end
    object Tb_CliCDTINC: TDateTimeField
      FieldName = 'CDTINC'
      Origin = 'SG_ASSOC.CADCLI.CDTINC'
    end
    object Tb_CliCUSRLAT: TFloatField
      FieldName = 'CUSRLAT'
      Origin = 'SG_ASSOC.CADCLI.CUSRLAT'
    end
    object Tb_CliCNOMV04: TStringField
      FieldName = 'CNOMV04'
      Origin = 'SG_ASSOC.CADCLI.CNOMV04'
      Size = 40
    end
    object Tb_CliCVSEG: TStringField
      FieldName = 'CVSEG'
      Origin = 'SG_ASSOC.CADCLI.CVSEG'
      Size = 1
    end
    object Tb_CliCVTER: TStringField
      FieldName = 'CVTER'
      Origin = 'SG_ASSOC.CADCLI.CVTER'
      Size = 1
    end
    object Tb_CliCVQUA: TStringField
      FieldName = 'CVQUA'
      Origin = 'SG_ASSOC.CADCLI.CVQUA'
      Size = 1
    end
    object Tb_CliCVQUI: TStringField
      FieldName = 'CVQUI'
      Origin = 'SG_ASSOC.CADCLI.CVQUI'
      Size = 1
    end
    object Tb_CliCVSEX: TStringField
      FieldName = 'CVSEX'
      Origin = 'SG_ASSOC.CADCLI.CVSEX'
      Size = 1
    end
    object Tb_CliCVSAB: TStringField
      FieldName = 'CVSAB'
      Origin = 'SG_ASSOC.CADCLI.CVSAB'
      Size = 1
    end
    object Tb_CliCVDOM: TStringField
      FieldName = 'CVDOM'
      Origin = 'SG_ASSOC.CADCLI.CVDOM'
      Size = 1
    end
    object Tb_CliCDEC5825: TFloatField
      FieldName = 'CDEC5825'
      Origin = 'SG_ASSOC.CADCLI.CDEC5825'
    end
    object Tb_CliCDEC5834: TFloatField
      FieldName = 'CDEC5834'
      Origin = 'SG_ASSOC.CADCLI.CDEC5834'
    end
    object Tb_CliCTARBAN: TFloatField
      FieldName = 'CTARBAN'
      Origin = 'SG_ASSOC.CADCLI.CTARBAN'
    end
    object Tb_CliCCTARBAN: TFloatField
      FieldName = 'CCTARBAN'
      Origin = 'SG_ASSOC.CADCLI.CCTARBAN'
    end
    object Tb_CliCCODBCO01: TFloatField
      FieldName = 'CCODBCO01'
      Origin = 'SG_ASSOC.CADCLI.CCODBCO01'
    end
    object Tb_CliCCODBCO02: TFloatField
      FieldName = 'CCODBCO02'
      Origin = 'SG_ASSOC.CADCLI.CCODBCO02'
    end
    object Tb_CliCNOMBCO01: TStringField
      FieldName = 'CNOMBCO01'
      Origin = 'SG_ASSOC.CADCLI.CNOMBCO01'
      Size = 40
    end
    object Tb_CliCNOMBCO02: TStringField
      FieldName = 'CNOMBCO02'
      Origin = 'SG_ASSOC.CADCLI.CNOMBCO02'
      Size = 40
    end
    object Tb_CliCNIVEL: TFloatField
      FieldName = 'CNIVEL'
      Origin = 'SG_ASSOC.CADCLI.CNIVEL'
    end
    object Tb_CliCTIPCLI: TFloatField
      FieldName = 'CTIPCLI'
      Origin = 'SG_ASSOC.CADCLI.CTIPCLI'
    end
    object Tb_CliCDTCCRED: TDateTimeField
      FieldName = 'CDTCCRED'
      Origin = 'SG_ASSOC.CADCLI.CDTCCRED'
    end
    object Tb_CliCTPCCRED: TStringField
      FieldName = 'CTPCCRED'
      Origin = 'SG_ASSOC.CADCLI.CTPCCRED'
    end
    object Tb_CliCVDAMEN: TFloatField
      FieldName = 'CVDAMEN'
      Origin = 'SG_ASSOC.CADCLI.CVDAMEN'
    end
    object Tb_CliCCOTAMES: TFloatField
      FieldName = 'CCOTAMES'
      Origin = 'SG_ASSOC.CADCLI.CCOTAMES'
    end
    object Tb_CliCALIQRTRIB: TFloatField
      FieldName = 'CALIQRTRIB'
      Origin = 'SG_ASSOC.CADCLI.CALIQRTRIB'
    end
    object Tb_CliCLIMRTR: TStringField
      FieldName = 'CLIMRTR'
      Origin = 'SG_ASSOC.CADCLI.CLIMRTR'
      Size = 50
    end
    object Tb_CliCCODRAM: TFloatField
      FieldName = 'CCODRAM'
      Origin = 'SG_ASSOC.CADCLI.CCODRAM'
    end
    object Tb_CliCNOMRAM: TStringField
      FieldName = 'CNOMRAM'
      Origin = 'SG_ASSOC.CADCLI.CNOMRAM'
      Size = 40
    end
    object Tb_CliCNOMCV: TStringField
      FieldName = 'CNOMCV'
      Origin = 'SG_ASSOC.CADCLI.CNOMCV'
      Size = 40
    end
    object Tb_CliCCOMIS04: TFloatField
      FieldName = 'CCOMIS04'
      Origin = 'SG_ASSOC.CADCLI.CCOMIS04'
    end
    object Tb_CliCDTFUNDACAO: TDateTimeField
      FieldName = 'CDTFUNDACAO'
      Origin = 'SG_ASSOC.CADCLI.CDTFUNDACAO'
    end
    object Tb_CliCNATDCD: TStringField
      FieldName = 'CNATDCD'
      Origin = 'SG_ASSOC.CADCLI.CNATDCD'
      Size = 1
    end
    object Tb_CliCNATDCC: TStringField
      FieldName = 'CNATDCC'
      Origin = 'SG_ASSOC.CADCLI.CNATDCC'
      Size = 1
    end
    object Tb_CliCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_CliCFONE02: TStringField
      FieldName = 'CFONE02'
      Origin = 'SG_ASSOC.CADCLI.CFONE02'
      Size = 16
    end
    object Tb_CliCFONE03: TStringField
      FieldName = 'CFONE03'
      Origin = 'SG_ASSOC.CADCLI.CFONE03'
      Size = 16
    end
    object Tb_CliC_ORGAO_EMIS_RG: TStringField
      FieldName = 'C_ORGAO_EMIS_RG'
      Origin = 'SG_ASSOC.CADCLI.C_ORGAO_EMIS_RG'
    end
    object Tb_CliC_DT_EXPRG: TDateTimeField
      FieldName = 'C_DT_EXPRG'
      Origin = 'SG_ASSOC.CADCLI.C_DT_EXPRG'
    end
    object Tb_CliCALIQC: TFloatField
      FieldName = 'CALIQC'
      Origin = 'SG_ASSOC.CADCLI.CALIQC'
    end
    object Tb_CliCALIQD: TFloatField
      FieldName = 'CALIQD'
      Origin = 'SG_ASSOC.CADCLI.CALIQD'
    end
    object Tb_CliCALIQE: TFloatField
      FieldName = 'CALIQE'
      Origin = 'SG_ASSOC.CADCLI.CALIQE'
    end
    object Tb_CliCALIQF: TFloatField
      FieldName = 'CALIQF'
      Origin = 'SG_ASSOC.CADCLI.CALIQF'
    end
    object Tb_CliCALIQG: TFloatField
      FieldName = 'CALIQG'
      Origin = 'SG_ASSOC.CADCLI.CALIQG'
    end
    object Tb_CliCALIQH: TFloatField
      FieldName = 'CALIQH'
      Origin = 'SG_ASSOC.CADCLI.CALIQH'
    end
    object Tb_CliCALIQI: TFloatField
      FieldName = 'CALIQI'
      Origin = 'SG_ASSOC.CADCLI.CALIQI'
    end
    object Tb_CliCDESC02: TFloatField
      FieldName = 'CDESC02'
      Origin = 'SG_ASSOC.CADCLI.CDESC02'
    end
    object Tb_CliCDESC03: TFloatField
      FieldName = 'CDESC03'
      Origin = 'SG_ASSOC.CADCLI.CDESC03'
    end
    object Tb_CliCDESCFIN: TFloatField
      FieldName = 'CDESCFIN'
      Origin = 'SG_ASSOC.CADCLI.CDESCFIN'
    end
    object Tb_CliCREVENDA_CP: TFloatField
      FieldName = 'CREVENDA_CP'
      Origin = 'SG_ASSOC.CADCLI.CREVENDA_CP'
    end
    object Tb_CliCSUPERMICRO: TFloatField
      FieldName = 'CSUPERMICRO'
      Origin = 'SG_ASSOC.CADCLI.CSUPERMICRO'
    end
    object Tb_CliCICMSST_LIQ: TFloatField
      FieldName = 'CICMSST_LIQ'
      Origin = 'SG_ASSOC.CADCLI.CICMSST_LIQ'
    end
    object Tb_CliCROTA: TFloatField
      FieldName = 'CROTA'
      Origin = 'SG_ASSOC.CADCLI.CROTA'
    end
    object Tb_CliCNOMROTA: TStringField
      FieldName = 'CNOMROTA'
      Origin = 'SG_ASSOC.CADCLI.CNOMROTA'
      Size = 40
    end
    object Tb_Clinomestatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomestatus'
      Calculated = True
    end
    object Tb_CliCPEDELE_PAD: TFloatField
      FieldName = 'CPEDELE_PAD'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_PAD'
    end
    object Tb_CliCPEDELE_SENHA: TStringField
      FieldName = 'CPEDELE_SENHA'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_SENHA'
    end
    object Tb_CliCPEDELE_RETBLOQ: TFloatField
      FieldName = 'CPEDELE_RETBLOQ'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_RETBLOQ'
    end
    object Tb_CliCISSQN_ALIQ: TFloatField
      FieldName = 'CISSQN_ALIQ'
      Origin = 'SG_ASSOC.CADCLI.CISSQN_ALIQ'
    end
    object Tb_CliCINSS_ALIQ: TFloatField
      FieldName = 'CINSS_ALIQ'
      Origin = 'SG_ASSOC.CADCLI.CINSS_ALIQ'
    end
    object Tb_CliCINSS_RED: TFloatField
      FieldName = 'CINSS_RED'
      Origin = 'SG_ASSOC.CADCLI.CINSS_RED'
    end
    object Tb_CliCIRRF_ALIQ: TFloatField
      FieldName = 'CIRRF_ALIQ'
      Origin = 'SG_ASSOC.CADCLI.CIRRF_ALIQ'
    end
    object Tb_CliCIRRF_RED: TFloatField
      FieldName = 'CIRRF_RED'
      Origin = 'SG_ASSOC.CADCLI.CIRRF_RED'
    end
    object Tb_CliCRAZAO: TStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Tb_CliCDENOM: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 60
    end
    object Tb_CliCCNPJ_CONSISTE: TStringField
      FieldName = 'CCNPJ_CONSISTE'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ_CONSISTE'
      Size = 1
    end
    object Tb_Clicgc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cgc'
      Calculated = True
    end
    object Tb_Cliender: TStringField
      FieldKind = fkCalculated
      FieldName = 'ender'
      Size = 60
      Calculated = True
    end
    object Tb_Cliierg: TStringField
      FieldKind = fkCalculated
      FieldName = 'ierg'
      Calculated = True
    end
    object Tb_CliCPEDELE_AJUSTE_PRECO: TFloatField
      FieldName = 'CPEDELE_AJUSTE_PRECO'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_AJUSTE_PRECO'
    end
    object Tb_CliCPEDELE_PRECO_PADRAO: TStringField
      FieldName = 'CPEDELE_PRECO_PADRAO'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_PRECO_PADRAO'
      Size = 30
    end
    object Tb_CliCPEDELE_BLOQUEIO: TStringField
      FieldName = 'CPEDELE_BLOQUEIO'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_BLOQUEIO'
      Size = 1
    end
    object Tb_CliCPEDELE_MOT_BLOQUEIO: TMemoField
      FieldName = 'CPEDELE_MOT_BLOQUEIO'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_MOT_BLOQUEIO'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_CliCMOTDES: TFloatField
      FieldName = 'CMOTDES'
      Origin = 'SG_ASSOC.CADCLI.CMOTDES'
    end
    object Tb_CliCSUFRAMA: TStringField
      FieldName = 'CSUFRAMA'
      Origin = 'SG_ASSOC.CADCLI.CSUFRAMA'
      Size = 9
    end
    object Tb_CliIDCLI: TStringField
      FieldName = 'IDCLI'
      Size = 18
    end
    object Tb_CliCBLOQCONTROLADO: TStringField
      FieldName = 'CBLOQCONTROLADO'
      Origin = 'SG_ASSOC.CADCLI.CBLOQCONTROLADO'
      Size = 1
    end
    object Tb_CliCISENTOIE: TStringField
      FieldName = 'CISENTOIE'
      Origin = 'SG_ASSOC.CADCLI.CISENTOIE'
      Size = 1
    end
    object Tb_CliCBLOQVDAPRZ: TFloatField
      FieldName = 'CBLOQVDAPRZ'
      Origin = 'SG_ASSOC.CADCLI.CBLOQVDAPRZ'
    end
    object Tb_CliCIPI_INC_BC_ICMS: TFloatField
      FieldName = 'CIPI_INC_BC_ICMS'
      Origin = 'SG_ASSOC.CADCLI.CIPI_INC_BC_ICMS'
    end
    object Tb_CliCDISTANCIAKM: TFloatField
      FieldName = 'CDISTANCIAKM'
      Origin = 'SG_ASSOC.CADCLI.CDISTANCIAKM'
    end
    object Tb_CliCVALMIM_EMPRESTIMO: TFloatField
      FieldName = 'CVALMIM_EMPRESTIMO'
      Origin = 'SG_ASSOC.CADCLI.CVALMIM_EMPRESTIMO'
    end
    object Tb_CliCWHATSAPP: TStringField
      FieldName = 'CWHATSAPP'
      Origin = 'SG_ASSOC.CADCLI.CWHATSAPP'
      Size = 16
    end
    object Tb_CliCCERTTECNICO_DTVCTO: TDateTimeField
      FieldName = 'CCERTTECNICO_DTVCTO'
      Origin = 'SG_ASSOC.CADCLI.CCERTTECNICO_DTVCTO'
    end
    object Tb_CliCCERTTECNICO_NUM: TStringField
      FieldName = 'CCERTTECNICO_NUM'
      Origin = 'SG_ASSOC.CADCLI.CCERTTECNICO_NUM'
    end
    object Tb_CliCISSRETIDO: TFloatField
      FieldName = 'CISSRETIDO'
      Origin = 'SG_ASSOC.CADCLI.CISSRETIDO'
    end
    object Tb_CliCIBS_ALIQ_UFA: TFloatField
      FieldName = 'CIBS_ALIQ_UFA'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFA'
    end
    object Tb_CliCIBS_ALIQ_UFB: TFloatField
      FieldName = 'CIBS_ALIQ_UFB'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFB'
    end
    object Tb_CliCIBS_ALIQ_UFC: TFloatField
      FieldName = 'CIBS_ALIQ_UFC'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFC'
    end
    object Tb_CliCIBS_ALIQ_UFD: TFloatField
      FieldName = 'CIBS_ALIQ_UFD'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFD'
    end
    object Tb_CliCIBS_ALIQ_UFE: TFloatField
      FieldName = 'CIBS_ALIQ_UFE'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFE'
    end
    object Tb_CliCIBS_ALIQ_UFF: TFloatField
      FieldName = 'CIBS_ALIQ_UFF'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFF'
    end
    object Tb_CliCIBS_ALIQ_UFG: TFloatField
      FieldName = 'CIBS_ALIQ_UFG'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFG'
    end
    object Tb_CliCIBS_ALIQ_UFH: TFloatField
      FieldName = 'CIBS_ALIQ_UFH'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFH'
    end
    object Tb_CliCIBS_ALIQ_UFI: TFloatField
      FieldName = 'CIBS_ALIQ_UFI'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_UFI'
    end
    object Tb_CliCIBS_ALIQ_MUNA: TFloatField
      FieldName = 'CIBS_ALIQ_MUNA'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNA'
    end
    object Tb_CliCIBS_ALIQ_MUNB: TFloatField
      FieldName = 'CIBS_ALIQ_MUNB'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNB'
    end
    object Tb_CliCIBS_ALIQ_MUNC: TFloatField
      FieldName = 'CIBS_ALIQ_MUNC'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNC'
    end
    object Tb_CliCIBS_ALIQ_MUND: TFloatField
      FieldName = 'CIBS_ALIQ_MUND'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUND'
    end
    object Tb_CliCIBS_ALIQ_MUNE: TFloatField
      FieldName = 'CIBS_ALIQ_MUNE'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNE'
    end
    object Tb_CliCIBS_ALIQ_MUNF: TFloatField
      FieldName = 'CIBS_ALIQ_MUNF'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNF'
    end
    object Tb_CliCIBS_ALIQ_MUNG: TFloatField
      FieldName = 'CIBS_ALIQ_MUNG'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNG'
    end
    object Tb_CliCIBS_ALIQ_MUNH: TFloatField
      FieldName = 'CIBS_ALIQ_MUNH'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNH'
    end
    object Tb_CliCIBS_ALIQ_MUNI: TFloatField
      FieldName = 'CIBS_ALIQ_MUNI'
      Origin = 'SG_ASSOC.CADCLI.CIBS_ALIQ_MUNI'
    end
    object Tb_CliCCBS_ALIQA: TFloatField
      FieldName = 'CCBS_ALIQA'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQA'
    end
    object Tb_CliCCBS_ALIQB: TFloatField
      FieldName = 'CCBS_ALIQB'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQB'
    end
    object Tb_CliCCBS_ALIQC: TFloatField
      FieldName = 'CCBS_ALIQC'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQC'
    end
    object Tb_CliCCBS_ALIQD: TFloatField
      FieldName = 'CCBS_ALIQD'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQD'
    end
    object Tb_CliCCBS_ALIQE: TFloatField
      FieldName = 'CCBS_ALIQE'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQE'
    end
    object Tb_CliCCBS_ALIQF: TFloatField
      FieldName = 'CCBS_ALIQF'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQF'
    end
    object Tb_CliCCBS_ALIQG: TFloatField
      FieldName = 'CCBS_ALIQG'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQG'
    end
    object Tb_CliCCBS_ALIQH: TFloatField
      FieldName = 'CCBS_ALIQH'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQH'
    end
    object Tb_CliCCBS_ALIQI: TFloatField
      FieldName = 'CCBS_ALIQI'
      Origin = 'SG_ASSOC.CADCLI.CCBS_ALIQI'
    end
  end
  object Src_Cli: TDataSource
    DataSet = Tb_Cli
    Left = 252
    Top = 65471
  end
  object Tb_Cal: TQuery
    CachedUpdates = True
    BeforePost = Tb_CalBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCAL where CACODEMP is null')
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 266
    object Tb_CalCACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADCAL.CACODEMP'
    end
    object Tb_CalCACODIMP: TFloatField
      DisplayLabel = 'Impressora'
      FieldName = 'CACODIMP'
      Origin = 'SG_ASSOC.CADCAL.CACODIMP'
    end
    object Tb_CalCACODALI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CACODALI'
      Origin = 'SG_ASSOC.CADCAL.CACODALI'
    end
    object Tb_CalCAALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'CAALIQ'
      Origin = 'SG_ASSOC.CADCAL.CAALIQ'
    end
  end
  object Src_Cal: TDataSource
    DataSet = Tb_Cal
    Left = 120
    Top = 266
  end
  object Src_CSF: TDataSource
    DataSet = Tb_CSF
    Left = 218
    Top = 267
  end
  object Tb_CSF: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CSFBeforeInsert
    AfterInsert = Tb_CSFAfterInsert
    BeforePost = Tb_CSFBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCSF where CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CSF
    Left = 154
    Top = 267
    object Tb_CSFCFCODEMP: TFloatField
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADCSF.CFCODEMP'
    end
    object Tb_CSFCFCODSEQ: TFloatField
      FieldName = 'CFCODSEQ'
      Origin = 'SG_ASSOC.CADCSF.CFCODSEQ'
    end
    object Tb_CSFCFCHAVEP: TFloatField
      FieldName = 'CFCHAVEP'
      Origin = 'SG_ASSOC.CADCSF.CFCHAVEP'
    end
    object Tb_CSFCFORDEMP: TFloatField
      FieldName = 'CFORDEMP'
      Origin = 'SG_ASSOC.CADCSF.CFORDEMP'
    end
    object Tb_CSFCFRAZAO: TStringField
      FieldName = 'CFRAZAO'
      Origin = 'SG_ASSOC.CADCSF.CFRAZAO'
      Size = 34
    end
    object Tb_CSFCFDENOM: TStringField
      FieldName = 'CFDENOM'
      Origin = 'SG_ASSOC.CADCSF.CFDENOM'
      Size = 34
    end
    object Tb_CSFCFENDER: TStringField
      FieldName = 'CFENDER'
      Origin = 'SG_ASSOC.CADCSF.CFENDER'
      Size = 34
    end
    object Tb_CSFCFBAIRRO: TStringField
      FieldName = 'CFBAIRRO'
      Origin = 'SG_ASSOC.CADCSF.CFBAIRRO'
    end
    object Tb_CSFCFCIDADE: TStringField
      FieldName = 'CFCIDADE'
      Origin = 'SG_ASSOC.CADCSF.CFCIDADE'
    end
    object Tb_CSFCFUF: TStringField
      FieldName = 'CFUF'
      Origin = 'SG_ASSOC.CADCSF.CFUF'
      Size = 2
    end
    object Tb_CSFCFCEP: TStringField
      FieldName = 'CFCEP'
      Origin = 'SG_ASSOC.CADCSF.CFCEP'
      Size = 9
    end
    object Tb_CSFCFTIPOC: TFloatField
      FieldName = 'CFTIPOC'
      Origin = 'SG_ASSOC.CADCSF.CFTIPOC'
    end
    object Tb_CSFCFCGC: TFloatField
      FieldName = 'CFCGC'
      Origin = 'SG_ASSOC.CADCSF.CFCGC'
    end
    object Tb_CSFCFIE: TStringField
      FieldName = 'CFIE'
      Origin = 'SG_ASSOC.CADCSF.CFIE'
      Size = 40
    end
    object Tb_CSFCFFONE: TStringField
      FieldName = 'CFFONE'
      Origin = 'SG_ASSOC.CADCSF.CFFONE'
    end
    object Tb_CSFCFLOTSEQ: TFloatField
      FieldName = 'CFLOTSEQ'
      Origin = 'SG_ASSOC.CADCSF.CFLOTSEQ'
    end
    object Tb_CSFCFCHAVEP_NIVEL: TFloatField
      FieldName = 'CFCHAVEP_NIVEL'
      Origin = 'SG_ASSOC.CADCSF.CFCHAVEP_NIVEL'
    end
    object Tb_CSFCFFONE_CHAVE: TFloatField
      FieldName = 'CFFONE_CHAVE'
      Origin = 'SG_ASSOC.CADCSF.CFFONE_CHAVE'
    end
    object Tb_CSFCFCODVEN: TFloatField
      FieldName = 'CFCODVEN'
      Origin = 'SG_ASSOC.CADCSF.CFCODVEN'
    end
    object Tb_CSFCFFAX: TStringField
      FieldName = 'CFFAX'
      Origin = 'SG_ASSOC.CADCSF.CFFAX'
    end
  end
  object Tb_ComD: TQuery
    CachedUpdates = True
    AfterInsert = Tb_ComDAfterInsert
    BeforePost = Tb_ComDBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCOMD where CDCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_ComD
    Left = 154
    Top = 91
    object Tb_ComDCDCODEMP: TFloatField
      FieldName = 'CDCODEMP'
      Origin = 'SG_ASSOC.CADCOMD.CDCODEMP'
    end
    object Tb_ComDCDDESC: TFloatField
      FieldName = 'CDDESC'
      Origin = 'SG_ASSOC.CADCOMD.CDDESC'
      DisplayFormat = '##0'
    end
    object Tb_ComDCDCOMIS: TFloatField
      FieldName = 'CDCOMIS'
      Origin = 'SG_ASSOC.CADCOMD.CDCOMIS'
      DisplayFormat = '##0.00'
    end
  end
  object Src_ComD: TDataSource
    DataSet = Tb_ComD
    Left = 210
    Top = 91
  end
  object Tb_Cus: TQuery
    CachedUpdates = True
    BeforePost = Tb_CusBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCUS where CUCODIGO is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Cus
    Left = 154
    Top = 311
    object Tb_CusCUCODEMP: TFloatField
      FieldName = 'CUCODEMP'
      Origin = 'SG_ASSOC.CADCUS.CUCODEMP'
    end
    object Tb_CusCUTIPO: TFloatField
      FieldName = 'CUTIPO'
      Origin = 'SG_ASSOC.CADCUS.CUTIPO'
    end
    object Tb_CusCUCODIGO: TFloatField
      FieldName = 'CUCODIGO'
      Origin = 'SG_ASSOC.CADCUS.CUCODIGO'
    end
    object Tb_CusCUCODPCU: TFloatField
      FieldName = 'CUCODPCU'
      Origin = 'SG_ASSOC.CADCUS.CUCODPCU'
    end
    object Tb_CusCUPERC: TFloatField
      FieldName = 'CUPERC'
      Origin = 'SG_ASSOC.CADCUS.CUPERC'
    end
    object Tb_CusCUVALOR: TFloatField
      FieldName = 'CUVALOR'
      Origin = 'SG_ASSOC.CADCUS.CUVALOR'
    end
    object Tb_CusCUBASECALC: TFloatField
      FieldName = 'CUBASECALC'
      Origin = 'SG_ASSOC.CADCUS.CUBASECALC'
    end
    object Tb_CusCUAPLS: TFloatField
      FieldName = 'CUAPLS'
      Origin = 'SG_ASSOC.CADCUS.CUAPLS'
    end
    object Tb_CusCUFATOR: TFloatField
      FieldName = 'CUFATOR'
      Origin = 'SG_ASSOC.CADCUS.CUFATOR'
    end
    object Tb_CusCUOPCIO: TFloatField
      FieldName = 'CUOPCIO'
      Origin = 'SG_ASSOC.CADCUS.CUOPCIO'
    end
  end
  object Src_Cus: TDataSource
    DataSet = Tb_Cus
    Left = 210
    Top = 311
  end
  object Tb_Ped01D: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped01DBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01D where P1DCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped01D
    Left = 490
    Top = 222
    object Tb_Ped01DP1DCODEMP: TFloatField
      FieldName = 'P1DCODEMP'
      Origin = 'SG_ASSOC.CADP01D.P1DCODEMP'
    end
    object Tb_Ped01DP1DCHAVE: TFloatField
      FieldName = 'P1DCHAVE'
      Origin = 'SG_ASSOC.CADP01D.P1DCHAVE'
    end
    object Tb_Ped01DP1DORDEM: TFloatField
      FieldName = 'P1DORDEM'
      Origin = 'SG_ASSOC.CADP01D.P1DORDEM'
    end
    object Tb_Ped01DP1DCH_OR: TFloatField
      FieldName = 'P1DCH_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DCH_OR'
    end
    object Tb_Ped01DP1DOR_OR: TFloatField
      FieldName = 'P1DOR_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DOR_OR'
    end
    object Tb_Ped01DP1DDATAP: TDateTimeField
      FieldName = 'P1DDATAP'
      Origin = 'SG_ASSOC.CADP01D.P1DDATAP'
    end
    object Tb_Ped01DP1DLOTSEQ: TFloatField
      FieldName = 'P1DLOTSEQ'
      Origin = 'SG_ASSOC.CADP01D.P1DLOTSEQ'
    end
    object Tb_Ped01DP1DLS_OR: TFloatField
      FieldName = 'P1DLS_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DLS_OR'
    end
    object Tb_Ped01DP1DCHAVE_NIVEL: TFloatField
      FieldName = 'P1DCHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01D.P1DCHAVE_NIVEL'
    end
  end
  object Tb_Pen: TQuery
    CachedUpdates = True
    BeforePost = Tb_PenBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_PenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPEN where'
      'PECODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Pen
    Left = 490
    Top = 443
    object Tb_PenPECODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PECODEMP'
      Origin = 'SG_ASSOC.CADPEN.PECODEMP'
    end
    object Tb_PenPECHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PECHAVE'
      Origin = 'SG_ASSOC.CADPEN.PECHAVE'
    end
    object Tb_PenPEITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'PEITEM'
      Origin = 'SG_ASSOC.CADPEN.PEITEM'
    end
    object Tb_PenPECODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'PECODPRO'
      Origin = 'SG_ASSOC.CADPEN.PECODPRO'
    end
    object Tb_PenPEQTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedida'
      FieldName = 'PEQTDPED'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPED'
    end
    object Tb_PenPEQTDENV: TFloatField
      DisplayLabel = 'Qtd.Envidada'
      FieldName = 'PEQTDENV'
      Origin = 'SG_ASSOC.CADPEN.PEQTDENV'
    end
    object Tb_PenPEQTDPEN: TFloatField
      DisplayLabel = 'Qtd.Pendente'
      FieldName = 'PEQTDPEN'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPEN'
    end
    object Tb_PenPEDESC01: TFloatField
      DisplayLabel = '%desc.01'
      FieldName = 'PEDESC01'
      Origin = 'SG_ASSOC.CADPEN.PEDESC01'
    end
    object Tb_PenPEDESC02: TFloatField
      DisplayLabel = '%desc.02'
      FieldName = 'PEDESC02'
      Origin = 'SG_ASSOC.CADPEN.PEDESC02'
    end
    object Tb_PenPEDESC03: TFloatField
      DisplayLabel = '%desc.03'
      FieldName = 'PEDESC03'
      Origin = 'SG_ASSOC.CADPEN.PEDESC03'
    end
    object Tb_PenPEVALDES: TFloatField
      DisplayLabel = 'Valor do Desconto'
      FieldName = 'PEVALDES'
      Origin = 'SG_ASSOC.CADPEN.PEVALDES'
    end
    object Tb_PenPEPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PEPRECO'
      Origin = 'SG_ASSOC.CADPEN.PEPRECO'
    end
    object Tb_PenPEDATA: TDateTimeField
      DisplayLabel = 'Data '
      FieldName = 'PEDATA'
      Origin = 'SG_ASSOC.CADPEN.PEDATA'
    end
    object Tb_PenPECODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'PECODCLI'
      Origin = 'SG_ASSOC.CADPEN.PECODCLI'
    end
    object Tb_PenPECODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'PECODVEN'
      Origin = 'SG_ASSOC.CADPEN.PECODVEN'
    end
    object Tb_PenPELOTSEQ: TFloatField
      DisplayLabel = 'Lot.Seq'
      FieldName = 'PELOTSEQ'
      Origin = 'SG_ASSOC.CADPEN.PELOTSEQ'
    end
    object Tb_Pennompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Tb_Penundpro: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'undpro'
      Size = 3
      Calculated = True
    end
    object Tb_Penmarca: TStringField
      DisplayLabel = 'Marca'
      FieldKind = fkCalculated
      FieldName = 'marca'
      Size = 30
      Calculated = True
    end
    object Tb_Pentotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_PenPEGRADE: TStringField
      DisplayLabel = 'Lote/Grade'
      FieldName = 'PEGRADE'
      Origin = 'SG_ASSOC.CADPEN.PEGRADE'
    end
    object Tb_Pencodbar: TFloatField
      DisplayLabel = 'Codigo de Barras'
      FieldKind = fkCalculated
      FieldName = 'codbar'
      Calculated = True
    end
  end
  object Src_Pen: TDataSource
    DataSet = Tb_Pen
    Left = 546
    Top = 443
  end
  object Tb_Red: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_RedBeforeInsert
    AfterInsert = Tb_RedAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRED where'
      'RDCODEMP like :CODEMP and'
      'RDCODRED like :CODRED and'
      'RDNOME     like  :NOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Red
    Left = 589
    Top = 449
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODRED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_RedRDCODEMP: TFloatField
      FieldName = 'RDCODEMP'
      Origin = 'SG_ASSOC.CADRED.RDCODEMP'
    end
    object Tb_RedRDCODRED: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RDCODRED'
      Origin = 'SG_ASSOC.CADRED.RDCODRED'
    end
    object Tb_RedRDNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RDNOME'
      Origin = 'SG_ASSOC.CADRED.RDNOME'
      Size = 40
    end
    object Tb_RedRDDATHOR_INC: TDateTimeField
      FieldName = 'RDDATHOR_INC'
      Origin = 'SG_ASSOC.CADRED.RDDATHOR_INC'
    end
    object Tb_RedRDCODUSR_INC: TFloatField
      FieldName = 'RDCODUSR_INC'
      Origin = 'SG_ASSOC.CADRED.RDCODUSR_INC'
    end
    object Tb_RedRDDATHOR_ALT: TDateTimeField
      FieldName = 'RDDATHOR_ALT'
      Origin = 'SG_ASSOC.CADRED.RDDATHOR_ALT'
    end
    object Tb_RedRDCODUSR_ALT: TFloatField
      FieldName = 'RDCODUSR_ALT'
      Origin = 'SG_ASSOC.CADRED.RDCODUSR_ALT'
    end
    object Tb_RedRDDATHOR_REP: TDateTimeField
      FieldName = 'RDDATHOR_REP'
      Origin = 'SG_ASSOC.CADRED.RDDATHOR_REP'
    end
  end
  object Src_Red: TDataSource
    DataSet = Tb_Red
    Left = 644
    Top = 449
  end
  object Tb_Gen: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GenBeforeInsert
    AfterInsert = Tb_GenAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGEN where'
      'CGCODEMP  is null  ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Gen
    Left = 261
    Top = 294
    object Tb_GenCGCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CGCODEMP'
      Origin = 'SG_ASSOC.CADGEN.CGCODEMP'
    end
    object Tb_GenCGCODDCB: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CGCODDCB'
      Origin = 'SG_ASSOC.CADGEN.CGCODDCB'
      Size = 12
    end
    object Tb_GenCGNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CGNOME'
      Origin = 'SG_ASSOC.CADGEN.CGNOME'
      Size = 30
    end
  end
  object Src_Gen: TDataSource
    DataSet = Tb_Gen
    Left = 318
    Top = 318
  end
  object Tb_PGen: TQuery
    CachedUpdates = True
    AfterInsert = Tb_PGenAfterInsert
    BeforePost = Tb_PGenBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_PGenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPGEN where'
      'PGCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PGen
    Left = 594
    Top = 100
    object Tb_PGenPGCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PGCODEMP'
      Origin = 'SG_ASSOC.CADPGEN.PGCODEMP'
    end
    object Tb_PGenPGCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'PGCODPRO'
      Origin = 'SG_ASSOC.CADPGEN.PGCODPRO'
    end
    object Tb_PGenPGCODDCB: TStringField
      DisplayLabel = 'C'#243'digo DCB'
      FieldName = 'PGCODDCB'
      Origin = 'SG_ASSOC.CADPGEN.PGCODDCB'
      Size = 7
    end
    object Tb_PGennomedcb: TStringField
      DisplayLabel = 'Descri'#231#227'o do DCB'
      FieldKind = fkCalculated
      FieldName = 'nomedcb'
      Size = 40
      Calculated = True
    end
  end
  object Src_Pgen: TDataSource
    DataSet = Tb_PGen
    Left = 650
    Top = 100
  end
  object Tb_Cb01: TQuery
    CachedUpdates = True
    BeforePost = Tb_Cb01BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCB01 where '
      'CB1CODEMP like :CODEMP and'
      'CB1CHAVE    like :CHAVE')
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 310
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Cb01CB1CODEMP: TFloatField
      FieldName = 'CB1CODEMP'
      Origin = 'SG_ASSOC.CADCB01.CB1CODEMP'
    end
    object Tb_Cb01CB1CHAVE: TFloatField
      FieldName = 'CB1CHAVE'
      Origin = 'SG_ASSOC.CADCB01.CB1CHAVE'
    end
    object Tb_Cb01CB1DATA: TDateTimeField
      FieldName = 'CB1DATA'
      Origin = 'SG_ASSOC.CADCB01.CB1DATA'
    end
    object Tb_Cb01CB1JURM: TFloatField
      FieldName = 'CB1JURM'
      Origin = 'SG_ASSOC.CADCB01.CB1JURM'
    end
    object Tb_Cb01CB1OBS01: TStringField
      FieldName = 'CB1OBS01'
      Origin = 'SG_ASSOC.CADCB01.CB1OBS01'
      Size = 60
    end
    object Tb_Cb01CB1OBS02: TStringField
      FieldName = 'CB1OBS02'
      Origin = 'SG_ASSOC.CADCB01.CB1OBS02'
      Size = 60
    end
    object Tb_Cb01CB1CODVEN: TFloatField
      FieldName = 'CB1CODVEN'
      Origin = 'SG_ASSOC.CADCB01.CB1CODVEN'
    end
  end
  object Src_Cb01: TDataSource
    DataSet = Tb_Cb01
    Left = 120
    Top = 310
  end
  object Tb_Cb02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Cb02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCB02 where '
      'CB2CODEMP like :CODEMP and'
      'CB2CHAVE    like :CHAVE and'
      'CB2SEQ         like :SEQ')
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 354
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Cb02CB2CODEMP: TFloatField
      FieldName = 'CB2CODEMP'
      Origin = 'SG_ASSOC.CADCB02.CB2CODEMP'
    end
    object Tb_Cb02CB2CHAVE: TFloatField
      FieldName = 'CB2CHAVE'
      Origin = 'SG_ASSOC.CADCB02.CB2CHAVE'
    end
    object Tb_Cb02CB2SEQ: TFloatField
      FieldName = 'CB2SEQ'
      Origin = 'SG_ASSOC.CADCB02.CB2SEQ'
    end
    object Tb_Cb02CB2NUMERO: TFloatField
      FieldName = 'CB2NUMERO'
      Origin = 'SG_ASSOC.CADCB02.CB2NUMERO'
    end
    object Tb_Cb02CB2DESD: TStringField
      DisplayWidth = 4
      FieldName = 'CB2DESD'
      Origin = 'SG_ASSOC.CADCB02.CB2DESD'
      Size = 4
    end
    object Tb_Cb02CB2DUP: TFloatField
      FieldName = 'CB2DUP'
      Origin = 'SG_ASSOC.CADCB02.CB2DUP'
    end
    object Tb_Cb02CB2VALDUP: TFloatField
      FieldName = 'CB2VALDUP'
      Origin = 'SG_ASSOC.CADCB02.CB2VALDUP'
    end
    object Tb_Cb02CB2ATRASO: TFloatField
      FieldName = 'CB2ATRASO'
      Origin = 'SG_ASSOC.CADCB02.CB2ATRASO'
    end
    object Tb_Cb02CB2JURD: TFloatField
      FieldName = 'CB2JURD'
      Origin = 'SG_ASSOC.CADCB02.CB2JURD'
    end
  end
  object Src_Cb02: TDataSource
    DataSet = Tb_Cb02
    Left = 120
    Top = 354
  end
  object Tb_TDVFT: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TDVFTBeforeInsert
    AfterInsert = Tb_TDVFTAfterInsert
    BeforePost = Tb_TDVFTBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVFT where '
      'TFCODEMP like :CODEMP and'
      'TFDOC        like  :DOC        and'
      'TFNOME     like  :NOME     and'
      'TFTIPO       like  :TIPO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TDVFT
    Left = 690
    Top = 310
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_TDVFTTFCODEMP: TFloatField
      FieldName = 'TFCODEMP'
      Origin = 'SG_ASSOC.CTDVFT.TFCODEMP'
    end
    object Tb_TDVFTTFDOC: TStringField
      FieldName = 'TFDOC'
      Origin = 'SG_ASSOC.CTDVFT.TFDOC'
      Size = 10
    end
    object Tb_TDVFTTFTIPO: TFloatField
      FieldName = 'TFTIPO'
      Origin = 'SG_ASSOC.CTDVFT.TFTIPO'
    end
    object Tb_TDVFTTFCODIGO: TFloatField
      FieldName = 'TFCODIGO'
      Origin = 'SG_ASSOC.CTDVFT.TFCODIGO'
    end
    object Tb_TDVFTTFTCAMPO1: TStringField
      FieldName = 'TFTCAMPO1'
      Origin = 'SG_ASSOC.CTDVFT.TFTCAMPO1'
      Size = 1
    end
    object Tb_TDVFTTFTAB01: TStringField
      FieldName = 'TFTAB01'
      Origin = 'SG_ASSOC.CTDVFT.TFTAB01'
      Size = 50
    end
    object Tb_TDVFTTFCAMPO1: TStringField
      FieldName = 'TFCAMPO1'
      Origin = 'SG_ASSOC.CTDVFT.TFCAMPO1'
      Size = 50
    end
    object Tb_TDVFTTFCOND1: TStringField
      FieldName = 'TFCOND1'
      Origin = 'SG_ASSOC.CTDVFT.TFCOND1'
      Size = 5
    end
    object Tb_TDVFTTFTCAMPO2: TStringField
      FieldName = 'TFTCAMPO2'
      Origin = 'SG_ASSOC.CTDVFT.TFTCAMPO2'
      Size = 1
    end
    object Tb_TDVFTTFTAB02: TStringField
      FieldName = 'TFTAB02'
      Origin = 'SG_ASSOC.CTDVFT.TFTAB02'
      Size = 50
    end
    object Tb_TDVFTTFCAMPO2: TStringField
      FieldName = 'TFCAMPO2'
      Origin = 'SG_ASSOC.CTDVFT.TFCAMPO2'
      Size = 50
    end
    object Tb_TDVFTTFNOME: TStringField
      FieldName = 'TFNOME'
      Origin = 'SG_ASSOC.CTDVFT.TFNOME'
      Size = 52
    end
  end
  object SRC_TDVFT: TDataSource
    DataSet = Tb_TDVFT
    Left = 745
    Top = 310
  end
  object Tb_Bai: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_BaiBeforeInsert
    AfterInsert = Tb_BaiAfterInsert
    AfterPost = c
    AfterCancel = Tb_BaiAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBAI where'
      'BCODEMP like :CODEMP and'
      'BCODBAI   like :CODBAI and'
      'BNOME      like :NOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Bai
    Left = 64
    Top = 133
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODBAI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_BaiBCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'BCODEMP'
      Origin = 'SG_ASSOC.CADBAI.BCODEMP'
    end
    object Tb_BaiBCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BCODBAI'
      Origin = 'SG_ASSOC.CADBAI.BCODBAI'
    end
    object Tb_BaiBNOME: TStringField
      DisplayLabel = 'Nome do Bairro'
      FieldName = 'BNOME'
      Origin = 'SG_ASSOC.CADBAI.BNOME'
      Size = 30
    end
    object Tb_BaiBSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'BSTATUS'
      Origin = 'SG_ASSOC.CADBAI.BSTATUS'
    end
    object Tb_BaiBDATHOR_INC: TDateTimeField
      FieldName = 'BDATHOR_INC'
      Origin = 'SG_ASSOC.CADBAI.BDATHOR_INC'
    end
    object Tb_BaiBCODUSR_INC: TFloatField
      FieldName = 'BCODUSR_INC'
      Origin = 'SG_ASSOC.CADBAI.BCODUSR_INC'
    end
    object Tb_BaiBDATHOR_ALT: TDateTimeField
      FieldName = 'BDATHOR_ALT'
      Origin = 'SG_ASSOC.CADBAI.BDATHOR_ALT'
    end
    object Tb_BaiBCODUSR_ALT: TFloatField
      FieldName = 'BCODUSR_ALT'
      Origin = 'SG_ASSOC.CADBAI.BCODUSR_ALT'
    end
  end
  object Src_Bai: TDataSource
    DataSet = Tb_Bai
    Left = 120
    Top = 133
  end
  object Tb_Loc: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_LocBeforeInsert
    AfterInsert = Tb_LocAfterInsert
    BeforePost = Tb_LocBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLOC  where'
      'LCODEMP like :CODEMP and'
      'LCODLOC  like :CODLOC and'
      'LNOME      like :NOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Loc
    Left = 373
    Top = 222
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODLOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_LocLCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'LCODEMP'
      Origin = 'SG_ASSOC.CADLOC.LCODEMP'
    end
    object Tb_LocLCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LCODLOC'
      Origin = 'SG_ASSOC.CADLOC.LCODLOC'
    end
    object Tb_LocLNOME: TStringField
      DisplayLabel = 'Nome do Municipio'
      FieldName = 'LNOME'
      Origin = 'SG_ASSOC.CADLOC.LNOME'
      Size = 30
    end
    object Tb_LocLUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'LUF'
      Origin = 'SG_ASSOC.CADLOC.LUF'
      Size = 2
    end
    object Tb_LocLCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'LCEP'
      Origin = 'SG_ASSOC.CADLOC.LCEP'
      EditMask = '00000-999;1; '
      Size = 9
    end
    object Tb_LocLSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'LSTATUS'
      Origin = 'SG_ASSOC.CADLOC.LSTATUS'
    end
    object Tb_LocLCODMUN_IBGE: TFloatField
      FieldName = 'LCODMUN_IBGE'
      Origin = 'SG_ASSOC.CADLOC.LCODMUN_IBGE'
    end
    object Tb_LocLISSQN_ALIQ: TFloatField
      FieldName = 'LISSQN_ALIQ'
      Origin = 'SG_ASSOC.CADLOC.LISSQN_ALIQ'
    end
    object Tb_LocLINSS_ALIQ: TFloatField
      FieldName = 'LINSS_ALIQ'
      Origin = 'SG_ASSOC.CADLOC.LINSS_ALIQ'
    end
    object Tb_LocLINSS_RED: TFloatField
      FieldName = 'LINSS_RED'
      Origin = 'SG_ASSOC.CADLOC.LINSS_RED'
    end
    object Tb_LocLIRRF_ALIQ: TFloatField
      FieldName = 'LIRRF_ALIQ'
      Origin = 'SG_ASSOC.CADLOC.LIRRF_ALIQ'
    end
    object Tb_LocLIRRF_RED: TFloatField
      FieldName = 'LIRRF_RED'
      Origin = 'SG_ASSOC.CADLOC.LIRRF_RED'
    end
    object Tb_LocLCODUSR_INC: TFloatField
      FieldName = 'LCODUSR_INC'
      Origin = 'SG_ASSOC.CADLOC.LCODUSR_INC'
    end
    object Tb_LocLDATHOR_INC: TDateTimeField
      FieldName = 'LDATHOR_INC'
      Origin = 'SG_ASSOC.CADLOC.LDATHOR_INC'
    end
    object Tb_LocLCODUSR_ALT: TFloatField
      FieldName = 'LCODUSR_ALT'
      Origin = 'SG_ASSOC.CADLOC.LCODUSR_ALT'
    end
    object Tb_LocLDATHOR_ALT: TDateTimeField
      FieldName = 'LDATHOR_ALT'
      Origin = 'SG_ASSOC.CADLOC.LDATHOR_ALT'
    end
    object Tb_LocLDATHOR_REP: TDateTimeField
      FieldName = 'LDATHOR_REP'
      Origin = 'SG_ASSOC.CADLOC.LDATHOR_REP'
    end
    object Tb_LocLEXP_EMBARGUE_UF: TStringField
      FieldName = 'LEXP_EMBARGUE_UF'
      Origin = 'SG_ASSOC.CADLOC.LEXP_EMBARGUE_UF'
      Size = 2
    end
    object Tb_LocLEXP_EMBARGUE_LOCAL: TStringField
      FieldName = 'LEXP_EMBARGUE_LOCAL'
      Origin = 'SG_ASSOC.CADLOC.LEXP_EMBARGUE_LOCAL'
      Size = 40
    end
    object Tb_LocLCODMUN_PREF: TFloatField
      FieldName = 'LCODMUN_PREF'
    end
    object Tb_LocLIBS_ALIQ: TFloatField
      FieldName = 'LIBS_ALIQ'
      Origin = 'SG_ASSOC.CADLOC.Tb_LocLIBS_ALIQ'
    end
  end
  object Src_Loc: TDataSource
    DataSet = Tb_Loc
    Left = 445
    Top = 222
  end
  object Tb_Pf1V: TQuery
    CachedUpdates = True
    BeforePost = Tb_Pf1VBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1V where'
      'PF1VCODEMP   is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PF1V
    Left = 594
    Top = 12
    object Tb_Pf1VPF1VCODEMP: TFloatField
      FieldName = 'PF1VCODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODEMP'
    end
    object Tb_Pf1VPF1VCHAVE: TFloatField
      FieldName = 'PF1VCHAVE'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCHAVE'
    end
    object Tb_Pf1VPF1VCODIGO: TFloatField
      FieldName = 'PF1VCODIGO'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODIGO'
    end
    object Tb_Pf1VPF1VDATAV: TDateTimeField
      FieldName = 'PF1VDATAV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDATAV'
    end
    object Tb_Pf1VPF1VVALOR: TFloatField
      FieldName = 'PF1VVALOR'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOR'
    end
    object Tb_Pf1VPF1VTABPV: TStringField
      FieldName = 'PF1VTABPV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VTABPV'
      Size = 2
    end
    object Tb_Pf1VPF1VDESCF: TFloatField
      FieldName = 'PF1VDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCF'
    end
    object Tb_Pf1VPF1VDTDESCF: TDateTimeField
      FieldName = 'PF1VDTDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDTDESCF'
    end
    object Tb_Pf1VPF1VLOTSEQ: TFloatField
      FieldName = 'PF1VLOTSEQ'
      Origin = 'SG_ASSOC.CADPF1V.PF1VLOTSEQ'
    end
    object Tb_Pf1VPF1VVALOUT: TFloatField
      FieldName = 'PF1VVALOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOUT'
    end
    object Tb_Pf1VPF1VDESCFOUT: TFloatField
      FieldName = 'PF1VDESCFOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCFOUT'
    end
    object Tb_Pf1VPF1VDES_CODEMP: TFloatField
      FieldName = 'PF1VDES_CODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDES_CODEMP'
    end
  end
  object Src_PF1V: TDataSource
    DataSet = Tb_Pf1V
    Left = 650
    Top = 11
  end
  object Src_Cus2: TDataSource
    DataSet = Tb_Cus2
    Left = 210
    Top = 355
  end
  object Tb_Cus2: TQuery
    CachedUpdates = True
    BeforePost = Tb_Cus2BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCUS2 where CUCODIGO is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Cus2
    Left = 154
    Top = 355
    object Tb_Cus2CUCODEMP: TFloatField
      FieldName = 'CUCODEMP'
      Origin = 'SG_ASSOC.CADCUS2.CUCODEMP'
    end
    object Tb_Cus2CUTIPO: TFloatField
      FieldName = 'CUTIPO'
      Origin = 'SG_ASSOC.CADCUS2.CUTIPO'
    end
    object Tb_Cus2CUCODIGO: TFloatField
      FieldName = 'CUCODIGO'
      Origin = 'SG_ASSOC.CADCUS2.CUCODIGO'
    end
    object Tb_Cus2CUACPCO2: TFloatField
      FieldName = 'CUACPCO2'
      Origin = 'SG_ASSOC.CADCUS2.CUACPCO2'
    end
    object Tb_Cus2CUACPCO3: TFloatField
      FieldName = 'CUACPCO3'
      Origin = 'SG_ASSOC.CADCUS2.CUACPCO3'
    end
    object Tb_Cus2CUATUP01: TFloatField
      FieldName = 'CUATUP01'
      Origin = 'SG_ASSOC.CADCUS2.CUATUP01'
    end
    object Tb_Cus2CUATUP02: TFloatField
      FieldName = 'CUATUP02'
      Origin = 'SG_ASSOC.CADCUS2.CUATUP02'
    end
    object Tb_Cus2CUATUP03: TFloatField
      FieldName = 'CUATUP03'
      Origin = 'SG_ASSOC.CADCUS2.CUATUP03'
    end
    object Tb_Cus2CUORIGEMPCO: TFloatField
      FieldName = 'CUORIGEMPCO'
      Origin = 'SG_ASSOC.CADCUS2.CUORIGEMPCO'
    end
    object Tb_Cus2CUPCOMIN: TFloatField
      FieldName = 'CUPCOMIN'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOMIN'
    end
    object Tb_Cus2CUINCPCOMIN: TFloatField
      FieldName = 'CUINCPCOMIN'
      Origin = 'SG_ASSOC.CADCUS2.CUINCPCOMIN'
    end
    object Tb_Cus2CUPCOFAB: TFloatField
      FieldName = 'CUPCOFAB'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOFAB'
    end
    object Tb_Cus2CUPCOCUS: TFloatField
      FieldName = 'CUPCOCUS'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOCUS'
    end
    object Tb_Cus2CUPCOVDA01: TFloatField
      FieldName = 'CUPCOVDA01'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOVDA01'
    end
    object Tb_Cus2CUPCOVDA02: TFloatField
      FieldName = 'CUPCOVDA02'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOVDA02'
    end
    object Tb_Cus2CUPCOVDA03: TFloatField
      FieldName = 'CUPCOVDA03'
      Origin = 'SG_ASSOC.CADCUS2.CUPCOVDA03'
    end
  end
  object Tb_Contato: TQuery
    CachedUpdates = True
    AfterInsert = Tb_ContatoAfterInsert
    BeforePost = Tb_ContatoBeforePost
    AfterPost = c
    AfterCancel = Tb_ContatoAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_ContatoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select CTNUMCON,'
      '       CTCODVEN,'
      '       CTCODCLI,'
      '       CTDATCON,'
      '       CTTEXCON,'
      '       CTDTPCON,'
      '       CTTEXPCON,'
      '       CTCODEMP,'
      '       CTSTATUS,'
      '       VNOME   AS TMP_NOMVEN,'
      '       CRAZAO  AS TMP_NOMCLI,'
      '       CNOMCON AS TMP_NOMCON,'
      '       CFONCON AS TMP_FONCON,'
      '       CFONECOM AS TMP_FONECOM,'
      '       CUF      AS TMP_CUF'
      '       ,CFONE01,CCIDADE,CEMAIL'
      'from CONTATO,CADCLI,CADVEN'
      'where CCODCLI=CTCODCLI'
      'AND   VCODVEN=CTCODVEN')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Contato
    Left = 154
    Top = 134
    object Tb_ContatoCTNUMCON: TFloatField
      DisplayLabel = 'No.Contato'
      FieldName = 'CTNUMCON'
      Origin = 'SG_ASSOC.CONTATO.CTNUMCON'
    end
    object Tb_ContatoCTCODVEN: TFloatField
      DisplayLabel = 'Vendedor'
      FieldName = 'CTCODVEN'
      Origin = 'SG_ASSOC.CONTATO.CTCODVEN'
    end
    object Tb_ContatoCTCODCLI: TFloatField
      DisplayLabel = 'Cliente'
      FieldName = 'CTCODCLI'
      Origin = 'SG_ASSOC.CONTATO.CTCODCLI'
    end
    object Tb_ContatoCTDATCON: TDateTimeField
      DisplayLabel = 'Data Contato'
      FieldName = 'CTDATCON'
      Origin = 'SG_ASSOC.CONTATO.CTDATCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ContatoCTTEXCON: TMemoField
      DisplayLabel = 'Texto do Contato'
      FieldName = 'CTTEXCON'
      Origin = 'SG_ASSOC.CONTATO.CTTEXCON'
      BlobType = ftMemo
      Size = 700
    end
    object Tb_ContatoCTDTPCON: TDateTimeField
      DisplayLabel = 'Data Proximo Contato'
      FieldName = 'CTDTPCON'
      Origin = 'SG_ASSOC.CONTATO.CTDTPCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ContatoCTTEXPCON: TMemoField
      DisplayLabel = 'Texto Proximo Contato'
      FieldName = 'CTTEXPCON'
      Origin = 'SG_ASSOC.CONTATO.CTTEXPCON'
      BlobType = ftMemo
      Size = 700
    end
    object Tb_Contatofone: TStringField
      DisplayLabel = 'Telefone'
      FieldKind = fkCalculated
      FieldName = 'fone'
      Calculated = True
    end
    object Tb_ContatoCTCODEMP: TFloatField
      FieldName = 'CTCODEMP'
      Origin = 'SG_ASSOC.CONTATO.CTCODEMP'
    end
    object Tb_ContatoCTSTATUS: TFloatField
      FieldName = 'CTSTATUS'
      Origin = 'SG_ASSOC.CONTATO.CTSTATUS'
    end
    object Tb_Contatodatcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 10
      Calculated = True
    end
    object Tb_Contatodtpcont: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpcont'
      Size = 10
      Calculated = True
    end
    object Tb_ContatoTMP_NOMVEN: TStringField
      FieldName = 'TMP_NOMVEN'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_ContatoTMP_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'TMP_NOMCLI'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_ContatoTMP_NOMCON: TStringField
      FieldName = 'TMP_NOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Tb_ContatoTMP_FONCON: TStringField
      FieldName = 'TMP_FONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Tb_ContatoTMP_FONECOM: TStringField
      FieldName = 'TMP_FONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Tb_ContatoTMP_CUF: TStringField
      FieldName = 'TMP_CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_ContatoCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_ContatoCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_ContatoCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
    end
  end
  object Src_Contato: TDataSource
    DataSet = Tb_Contato
    Left = 210
    Top = 134
  end
  object Tb_PO99: TQuery
    CachedUpdates = True
    BeforePost = Tb_PO99BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPO99 where '
      'POCODEMP like :CODEMP and'
      'POCHAVE    like :CHAVE     '
      'order by POCHAVE,POPRAZO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PO99
    Left = 595
    Top = 183
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_PO99POCODEMP: TFloatField
      FieldName = 'POCODEMP'
      Origin = 'SG_ASSOC.CADPO99.POCODEMP'
    end
    object Tb_PO99POCHAVE: TFloatField
      FieldName = 'POCHAVE'
      Origin = 'SG_ASSOC.CADPO99.POCHAVE'
    end
    object Tb_PO99POPRAZO: TFloatField
      FieldName = 'POPRAZO'
      Origin = 'SG_ASSOC.CADPO99.POPRAZO'
    end
    object Tb_PO99POLOTSEQ: TFloatField
      FieldName = 'POLOTSEQ'
      Origin = 'SG_ASSOC.CADPO99.POLOTSEQ'
    end
  end
  object Src_PO99: TDataSource
    DataSet = Tb_PO99
    Left = 653
    Top = 183
  end
  object Tb_MI01: TQuery
    CachedUpdates = True
    AfterInsert = Tb_MI01AfterInsert
    BeforePost = Tb_MI01BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_MI01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMI01')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_MI01
    Left = 373
    Top = 356
    object Tb_MI01CMCODIMP: TFloatField
      DisplayLabel = 'Impressora'
      FieldName = 'CMCODIMP'
      Origin = 'SG_ASSOC.CADMI01.CMCODIMP'
    end
    object Tb_MI01CMCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CMCODEMP'
      Origin = 'SG_ASSOC.CADMI01.CMCODEMP'
    end
    object Tb_MI01CMDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CMDATA'
      Origin = 'SG_ASSOC.CADMI01.CMDATA'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_MI01CMCONRED: TFloatField
      DisplayLabel = 'Contador de Redu'#231#245'es'
      FieldName = 'CMCONRED'
      Origin = 'SG_ASSOC.CADMI01.CMCONRED'
    end
    object Tb_MI01CMCOO: TFloatField
      DisplayLabel = 'N'#250'mero Cupom'
      FieldName = 'CMCOO'
      Origin = 'SG_ASSOC.CADMI01.CMCOO'
    end
    object Tb_MI01CMVDABRUT: TFloatField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'CMVDABRUT'
      Origin = 'SG_ASSOC.CADMI01.CMVDABRUT'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMVDALIQ: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'CMVDALIQ'
      Origin = 'SG_ASSOC.CADMI01.CMVDALIQ'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMCUPCAN: TFloatField
      DisplayLabel = 'Cupons Cancelados'
      FieldName = 'CMCUPCAN'
      Origin = 'SG_ASSOC.CADMI01.CMCUPCAN'
      DisplayFormat = '0.00'
    end
    object Tb_MI01CMACRECUP: TFloatField
      DisplayLabel = 'Acr'#233'scimos em Cupom'
      FieldName = 'CMACRECUP'
      Origin = 'SG_ASSOC.CADMI01.CMACRECUP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMDESCUP: TFloatField
      DisplayLabel = 'Descontos em Cupons'
      FieldName = 'CMDESCUP'
      Origin = 'SG_ASSOC.CADMI01.CMDESCUP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMISSCUP: TFloatField
      DisplayLabel = 'ISSQN '
      FieldName = 'CMISSCUP'
      Origin = 'SG_ASSOC.CADMI01.CMISSCUP'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'CMISENTAS'
      Origin = 'SG_ASSOC.CADMI01.CMISENTAS'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMNAOINC: TFloatField
      DisplayLabel = 'N'#227'o Incidente'
      FieldName = 'CMNAOINC'
      Origin = 'SG_ASSOC.CADMI01.CMNAOINC'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMSUBTRI: TFloatField
      DisplayLabel = 'Substitui'#231#227'o Tribut'#225'ria'
      FieldName = 'CMSUBTRI'
      Origin = 'SG_ASSOC.CADMI01.CMSUBTRI'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01nomeimp: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeimp'
      Size = 40
      Calculated = True
    end
    object Tb_MI01CMORDEM: TFloatField
      FieldName = 'CMORDEM'
      Origin = 'SG_ASSOC.CADMI01.CMORDEM'
    end
    object Tb_MI01CMMODDOC: TStringField
      FieldName = 'CMMODDOC'
      Origin = 'SG_ASSOC.CADMI01.CMMODDOC'
      Size = 2
    end
    object Tb_MI01CMSERIE: TStringField
      FieldName = 'CMSERIE'
      Origin = 'SG_ASSOC.CADMI01.CMSERIE'
    end
    object Tb_MI01CMCOO_FINAL: TFloatField
      FieldName = 'CMCOO_FINAL'
      Origin = 'SG_ASSOC.CADMI01.CMCOO_FINAL'
    end
    object Tb_MI01CMCRO: TFloatField
      FieldName = 'CMCRO'
      Origin = 'SG_ASSOC.CADMI01.CMCRO'
    end
    object Tb_MI01CMVDABACUM: TFloatField
      FieldName = 'CMVDABACUM'
      Origin = 'SG_ASSOC.CADMI01.CMVDABACUM'
      DisplayFormat = '#,##0.00'
    end
    object Tb_MI01CMVDALACUM: TFloatField
      FieldName = 'CMVDALACUM'
      Origin = 'SG_ASSOC.CADMI01.CMVDALACUM'
      DisplayFormat = '#,##0.00'
    end
  end
  object Src_MI01: TDataSource
    DataSet = Tb_MI01
    OnDataChange = Src_MI01DataChange
    Left = 429
    Top = 356
  end
  object Src_MI02: TDataSource
    DataSet = Tb_MI02
    Left = 429
    Top = 400
  end
  object Tb_MI02: TQuery
    CachedUpdates = True
    BeforePost = Tb_MI02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMI02')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_MI02
    Left = 373
    Top = 400
    object Tb_MI02CM2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADMI02.CM2CODEMP'
    end
    object Tb_MI02CM2CODIMP: TFloatField
      DisplayLabel = 'Impressora'
      FieldName = 'CM2CODIMP'
      Origin = 'SG_ASSOC.CADMI02.CM2CODIMP'
    end
    object Tb_MI02CM2DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CM2DATA'
      Origin = 'SG_ASSOC.CADMI02.CM2DATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object Tb_MI02CM2ALIQ: TFloatField
      DisplayLabel = 'Aliquota'
      FieldName = 'CM2ALIQ'
      Origin = 'SG_ASSOC.CADMI02.CM2ALIQ'
      DisplayFormat = '0.00'
    end
    object Tb_MI02CM2VALOR: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADMI02.CM2VALOR'
      DisplayFormat = '0.00'
    end
  end
  object Tb_ParFon: TQuery
    CachedUpdates = True
    BeforePost = Tb_ParFonBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARFON')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_ParFon
    Left = 477
    Top = 45
    object Tb_ParFonPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
      Origin = 'SG_ASSOC.PARFON.PFCODEMP'
    end
    object Tb_ParFonPFNOMTER: TStringField
      FieldName = 'PFNOMTER'
      Origin = 'SG_ASSOC.PARFON.PFNOMTER'
      Size = 50
    end
    object Tb_ParFonPFNOMFOR: TStringField
      FieldName = 'PFNOMFOR'
      Origin = 'SG_ASSOC.PARFON.PFNOMFOR'
      Size = 50
    end
    object Tb_ParFonPFNOMCOM: TStringField
      FieldName = 'PFNOMCOM'
      Origin = 'SG_ASSOC.PARFON.PFNOMCOM'
      Size = 50
    end
    object Tb_ParFonPFNOMFON: TStringField
      FieldName = 'PFNOMFON'
      Origin = 'SG_ASSOC.PARFON.PFNOMFON'
      Size = 50
    end
    object Tb_ParFonPFTAMFON: TFloatField
      FieldName = 'PFTAMFON'
      Origin = 'SG_ASSOC.PARFON.PFTAMFON'
    end
    object Tb_ParFonPFCORFON: TFloatField
      FieldName = 'PFCORFON'
      Origin = 'SG_ASSOC.PARFON.PFCORFON'
    end
    object Tb_ParFonPFMENS: TStringField
      FieldName = 'PFMENS'
      Origin = 'SG_ASSOC.PARFON.PFMENS'
      Size = 50
    end
    object Tb_ParFonPFMTIPO: TFloatField
      FieldName = 'PFMTIPO'
      Origin = 'SG_ASSOC.PARFON.PFMTIPO'
    end
    object Tb_ParFonPFCORFUN: TFloatField
      FieldName = 'PFCORFUN'
      Origin = 'SG_ASSOC.PARFON.PFCORFUN'
    end
  end
  object Src_ParFon: TDataSource
    DataSet = Tb_ParFon
    Left = 533
    Top = 45
  end
  object U_PLDR: TUpdateSQL
    ModifySQL.Strings = (
      'update PARLDR'
      'set'
      '  CODEMP = :CODEMP,'
      '  CDOC = :CDOC,'
      '  CODCC = :CODCC,'
      '  CODDEP = :CODDEP,'
      '  NOME = :NOME,'
      '  CDESC_ORI = :CDESC_ORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CDOC = :OLD_CDOC')
    InsertSQL.Strings = (
      'insert into PARLDR'
      '  (CODEMP, CDOC, CODCC, CODDEP, NOME, CDESC_ORI)'
      'values'
      '  (:CODEMP, :CDOC, :CODCC, :CODDEP, :NOME, :CDESC_ORI)')
    DeleteSQL.Strings = (
      'delete from PARLDR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CDOC = :OLD_CDOC')
    Left = 92
    Top = 46
  end
  object U_Aju: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAJU'
      'set'
      '  AJCODEMP = :AJCODEMP,'
      '  AJLOTSEQ = :AJLOTSEQ,'
      '  AJSEQ = :AJSEQ,'
      '  AJDATA = :AJDATA,'
      '  AJDATAREF = :AJDATAREF,'
      '  AJCODPRO = :AJCODPRO,'
      '  AJLOTE = :AJLOTE,'
      '  AJDATAV = :AJDATAV,'
      '  AJDTFAB = :AJDTFAB,'
      '  AJQTD = :AJQTD,'
      '  AJTIPOM = :AJTIPOM,'
      '  AJMOTIVO = :AJMOTIVO,'
      '  AJCODUSR = :AJCODUSR,'
      '  AJESTMOV = :AJESTMOV,'
      '  AJLEMAT = :AJLEMAT,'
      '  AJUSREXC = :AJUSREXC,'
      '  AJDATEXC = :AJDATEXC,'
      '  AJHOREXC = :AJHOREXC,'
      '  AJLOCAL = :AJLOCAL,'
      '  AJUTILCQ = :AJUTILCQ,'
      '  AJPC0CUS = :AJPC0CUS,'
      '  AJPRECO1 = :AJPRECO1,'
      '  AJLOTE_RE = :AJLOTE_RE,'
      '  AJFILIAL = :AJFILIAL'
      '  , AJID_NEW = :AJID_NEW'
      'where'
      '  AJCODEMP = :OLD_AJCODEMP and'
      '  AJLOTSEQ = :OLD_AJLOTSEQ and'
      '  AJSEQ = :OLD_AJSEQ')
    InsertSQL.Strings = (
      'insert into CADAJU'
      
        '  (AJCODEMP, AJLOTSEQ, AJSEQ, AJDATA, AJDATAREF, AJCODPRO, AJLOT' +
        'E, AJDATAV,AJDTFAB,'
      
        '   AJQTD, AJTIPOM, AJMOTIVO, AJCODUSR, AJESTMOV, AJLEMAT, AJUSRE' +
        'XC, AJDATEXC,'
      
        '   AJHOREXC, AJLOCAL, AJUTILCQ, AJPC0CUS, AJPRECO1, AJLOTE_RE, A' +
        'JFILIAL, AJID_NEW)'
      'values'
      
        '  (:AJCODEMP, :AJLOTSEQ, :AJSEQ, :AJDATA, :AJDATAREF, :AJCODPRO,' +
        ' :AJLOTE,'
      
        '   :AJDATAV,:AJDTFAB, :AJQTD, :AJTIPOM, :AJMOTIVO, :AJCODUSR, :A' +
        'JESTMOV, :AJLEMAT,'
      
        '   :AJUSREXC, :AJDATEXC, :AJHOREXC, :AJLOCAL, :AJUTILCQ, :AJPC0C' +
        'US, :AJPRECO1,'
      '   :AJLOTE_RE, :AJFILIAL, :AJID_NEW)')
    DeleteSQL.Strings = (
      'delete from CADAJU'
      'where'
      '  AJCODEMP = :OLD_AJCODEMP and'
      '  AJLOTSEQ = :OLD_AJLOTSEQ and'
      '  AJSEQ = :OLD_AJSEQ')
    Left = 92
    Top = 90
  end
  object U_Bai: TUpdateSQL
    ModifySQL.Strings = (
      'update CADBAI'
      'set'
      '  BCODEMP = :BCODEMP,'
      '  BCODBAI = :BCODBAI,'
      '  BNOME = :BNOME,'
      '  BSTATUS = :BSTATUS,'
      '  BDATHOR_INC = :BDATHOR_INC,'
      '  BCODUSR_INC = :BCODUSR_INC,'
      '  BDATHOR_ALT = :BDATHOR_ALT,'
      '  BCODUSR_ALT = :BCODUSR_ALT'
      'where'
      '  BCODEMP = :OLD_BCODEMP and'
      '  BCODBAI = :OLD_BCODBAI')
    InsertSQL.Strings = (
      'insert into CADBAI'
      '  (BCODEMP, BCODBAI, BNOME, BSTATUS, BDATHOR_INC, BCODUSR_INC, '
      'BDATHOR_ALT, '
      '   BCODUSR_ALT)'
      'values'
      
        '  (:BCODEMP, :BCODBAI, :BNOME, :BSTATUS, :BDATHOR_INC, :BCODUSR_' +
        'INC, '
      ':BDATHOR_ALT, '
      '   :BCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADBAI'
      'where'
      '  BCODEMP = :OLD_BCODEMP and'
      '  BCODBAI = :OLD_BCODBAI')
    Left = 92
    Top = 133
  end
  object U_Bco: TUpdateSQL
    ModifySQL.Strings = (
      'update CADBCO'
      'set'
      '  BCCODEMP = :BCCODEMP,'
      '  BCCODBCO = :BCCODBCO,'
      '  BCBANCO = :BCBANCO,'
      '  BCCONT = :BCCONT,'
      '  BCFONE = :BCFONE,'
      '  BCCODAGE = :BCCODAGE,'
      '  BCDIGAGE = :BCDIGAGE,'
      '  BCNOMAGE = :BCNOMAGE,'
      '  BCNUMCON = :BCNUMCON,'
      '  BCDIGCON = :BCDIGCON,'
      '  BCCODCAR = :BCCODCAR,'
      '  BCINST01 = :BCINST01,'
      '  BCNUMBOL = :BCNUMBOL,'
      '  BCINST02 = :BCINST02,'
      '  BCINST03 = :BCINST03,'
      '  BCINST04 = :BCINST04,'
      '  BCCODCED = :BCCODCED,'
      '  BCDIGCED = :BCDIGCED,'
      '  BCNUMBCO = :BCNUMBCO,'
      '  BCDIGNCO = :BCDIGNCO,'
      '  BCSALDO = :BCSALDO,'
      '  BCSALDOI = :BCSALDOI,'
      '  BCCH_IV = :BCCH_IV,'
      '  BCCH_VL = :BCCH_VL,'
      '  BCCH_VC = :BCCH_VC,'
      '  BCCH_IEXL1 = :BCCH_IEXL1,'
      '  BCCH_EXL1L = :BCCH_EXL1L,'
      '  BCCH_EXL1C = :BCCH_EXL1C,'
      '  BCCH_EXL1T = :BCCH_EXL1T,'
      '  BCCH_IEXL2 = :BCCH_IEXL2,'
      '  BCCH_EXL2L = :BCCH_EXL2L,'
      '  BCCH_EXL2C = :BCCH_EXL2C,'
      '  BCCH_EXL2T = :BCCH_EXL2T,'
      '  BCCH_INOM = :BCCH_INOM,'
      '  BCCH_NOML = :BCCH_NOML,'
      '  BCCH_NOMC = :BCCH_NOMC,'
      '  BCCH_ICID = :BCCH_ICID,'
      '  BCCH_CIDL = :BCCH_CIDL,'
      '  BCCH_CIDC = :BCCH_CIDC,'
      '  BCCH_IDIA = :BCCH_IDIA,'
      '  BCCH_DIAL = :BCCH_DIAL,'
      '  BCCH_DIAC = :BCCH_DIAC,'
      '  BCCH_IMES = :BCCH_IMES,'
      '  BCCH_MESL = :BCCH_MESL,'
      '  BCCH_MESC = :BCCH_MESC,'
      '  BCCH_IANO = :BCCH_IANO,'
      '  BCCH_ANOL = :BCCH_ANOL,'
      '  BCCH_ANOC = :BCCH_ANOC,'
      '  BCCH_IBOMP = :BCCH_IBOMP,'
      '  BCCH_BOMPL = :BCCH_BOMPL,'
      '  BCCH_BOMPC = :BCCH_BOMPC,'
      '  BCCH_QTDLC = :BCCH_QTDLC,'
      '  BCCH_QTDLP = :BCCH_QTDLP,'
      '  BCB_LOCP = :BCB_LOCP,'
      '  BCB_LOCP02 = :BCB_LOCP02,'
      '  BCB_ESPD = :BCB_ESPD,'
      '  BCB_ACEITE = :BCB_ACEITE,'
      '  BCB_QTDLP = :BCB_QTDLP,'
      '  BCB_QTDL = :BCB_QTDL,'
      '  BCB_ILP = :BCB_ILP,'
      '  BCB_LPL = :BCB_LPL,'
      '  BCB_LPC = :BCB_LPC,'
      '  BCB_IVC = :BCB_IVC,'
      '  BCB_VCL = :BCB_VCL,'
      '  BCB_VCC = :BCB_VCC,'
      '  BCB_IDE = :BCB_IDE,'
      '  BCB_DEL = :BCB_DEL,'
      '  BCB_DEC = :BCB_DEC,'
      '  BCB_IND = :BCB_IND,'
      '  BCB_NDL = :BCB_NDL,'
      '  BCB_NDC = :BCB_NDC,'
      '  BCB_IED = :BCB_IED,'
      '  BCB_EDL = :BCB_EDL,'
      '  BCB_EDC = :BCB_EDC,'
      '  BCB_IAC = :BCB_IAC,'
      '  BCB_ACL = :BCB_ACL,'
      '  BCB_ACC = :BCB_ACC,'
      '  BCB_IDP = :BCB_IDP,'
      '  BCB_DPL = :BCB_DPL,'
      '  BCB_DPC = :BCB_DPC,'
      '  BCB_IEM = :BCB_IEM,'
      '  BCB_EML = :BCB_EML,'
      '  BCB_EMC = :BCB_EMC,'
      '  BCB_IQM = :BCB_IQM,'
      '  BCB_QML = :BCB_QML,'
      '  BCB_QMC = :BCB_QMC,'
      '  BCB_IVM = :BCB_IVM,'
      '  BCB_VML = :BCB_VML,'
      '  BCB_VMC = :BCB_VMC,'
      '  BCB_IVD = :BCB_IVD,'
      '  BCB_VDL = :BCB_VDL,'
      '  BCB_VDC = :BCB_VDC,'
      '  BCB_ITI = :BCB_ITI,'
      '  BCB_TIL = :BCB_TIL,'
      '  BCB_TIC = :BCB_TIC,'
      '  BCB_IDS = :BCB_IDS,'
      '  BCB_DSL = :BCB_DSL,'
      '  BCB_DSC = :BCB_DSC,'
      '  BCTARIFA = :BCTARIFA,'
      '  BCLOTMOV = :BCLOTMOV,'
      '  BCCODVAR = :BCCODVAR,'
      '  BCNOMTIT = :BCNOMTIT,'
      '  BCLIMITE = :BCLIMITE,'
      '  BCRAZAOCTA = :BCRAZAOCTA,'
      '  BCIMPPVREP = :BCIMPPVREP,'
      '  BCCH_NOMTAM = :BCCH_NOMTAM,'
      '  BCREPLICARCX = :BCREPLICARCX,'
      '  BCREP_CODBCO = :BCREP_CODBCO,'
      '  BCREP_NOMBCO = :BCREP_NOMBCO,'
      '  BCREP_CODDEP = :BCREP_CODDEP,'
      '  BCREP_NOMDEP = :BCREP_NOMDEP,'
      '  BCREP_CODCCU = :BCREP_CODCCU,'
      '  BCREP_NOMCCU = :BCREP_NOMCCU,'
      '  BCREP_NATDC = :BCREP_NATDC,'
      '  BCREP_TIPO = :BCREP_TIPO,'
      '  BCREP_CODIGO = :BCREP_CODIGO,'
      '  BCREP_NOMESAC = :BCREP_NOMESAC,'
      '  BCREP_DESCMV = :BCREP_DESCMV,'
      '  BCDATHOR_INC = :BCDATHOR_INC,'
      '  BCCODUSR_INC = :BCCODUSR_INC,'
      '  BCDATHOR_ALT = :BCDATHOR_ALT,'
      '  BCCODUSR_ALT = :BCCODUSR_ALT,'
      '  BCSITCAD = :BCSITCAD,'
      ' ,BCDOCEMIBOL = :BCDOCEMIBOL'
      ' ,BCSACADOR_AVALISTA_OBS = :BCSACADOR_AVALISTA_OBS'
      'where'
      '  BCCODEMP = :OLD_BCCODEMP and'
      '  BCCODBCO = :OLD_BCCODBCO and'
      '  BCBANCO = :OLD_BCBANCO')
    InsertSQL.Strings = (
      'insert into CADBCO'
      '  (BCCODEMP, BCCODBCO, BCBANCO, BCCONT, BCFONE, BCCODAGE, '
      'BCDIGAGE, BCNOMAGE, '
      '   BCNUMCON, BCDIGCON, BCCODCAR, BCINST01, BCNUMBOL, BCINST02, '
      'BCINST03, '
      '   BCINST04, BCCODCED, BCDIGCED, BCNUMBCO, BCDIGNCO, BCSALDO, '
      'BCSALDOI, '
      
        '   BCCH_IV, BCCH_VL, BCCH_VC, BCCH_IEXL1, BCCH_EXL1L, BCCH_EXL1C' +
        ', '
      'BCCH_EXL1T, '
      '   BCCH_IEXL2, BCCH_EXL2L, BCCH_EXL2C, BCCH_EXL2T, BCCH_INOM, '
      'BCCH_NOML, '
      
        '   BCCH_NOMC, BCCH_ICID, BCCH_CIDL, BCCH_CIDC, BCCH_IDIA, BCCH_D' +
        'IAL, '
      'BCCH_DIAC, '
      '   BCCH_IMES, BCCH_MESL, BCCH_MESC, BCCH_IANO, BCCH_ANOL, '
      'BCCH_ANOC, BCCH_IBOMP, '
      
        '   BCCH_BOMPL, BCCH_BOMPC, BCCH_QTDLC, BCCH_QTDLP, BCB_LOCP,BCB_' +
        'LOCP02, '
      'BCB_ESPD, '
      '   BCB_ACEITE, BCB_QTDLP, BCB_QTDL, BCB_ILP, BCB_LPL, BCB_LPC, '
      'BCB_IVC, '
      
        '   BCB_VCL, BCB_VCC, BCB_IDE, BCB_DEL, BCB_DEC, BCB_IND, BCB_NDL' +
        ', '
      'BCB_NDC, '
      
        '   BCB_IED, BCB_EDL, BCB_EDC, BCB_IAC, BCB_ACL, BCB_ACC, BCB_IDP' +
        ', '
      'BCB_DPL, '
      
        '   BCB_DPC, BCB_IEM, BCB_EML, BCB_EMC, BCB_IQM, BCB_QML, BCB_QMC' +
        ', '
      'BCB_IVM, '
      
        '   BCB_VML, BCB_VMC, BCB_IVD, BCB_VDL, BCB_VDC, BCB_ITI, BCB_TIL' +
        ', '
      'BCB_TIC, '
      '   BCB_IDS, BCB_DSL, BCB_DSC, BCTARIFA, BCLOTMOV, BCCODVAR, '
      'BCNOMTIT, BCLIMITE, '
      '   BCRAZAOCTA, BCIMPPVREP, BCCH_NOMTAM, BCREPLICARCX, '
      'BCREP_CODBCO, BCREP_NOMBCO, '
      '   BCREP_CODDEP, BCREP_NOMDEP, BCREP_CODCCU, BCREP_NOMCCU, '
      'BCREP_NATDC, '
      '   BCREP_TIPO, BCREP_CODIGO, BCREP_NOMESAC, BCREP_DESCMV, '
      'BCDATHOR_INC,'
      '   BCCODUSR_INC, BCDATHOR_ALT, BCCODUSR_ALT,BCSITCAD'
      '   ,BCCODCAR_C006,BCLAYOUT_PADRAO'
      '   ,BCDOCEMIBOL,BCDOCBOL'
      '   ,BCSACADOR_AVALISTA_OBS'
      ''
      '   )'
      'values'
      '  (:BCCODEMP, :BCCODBCO, :BCBANCO, :BCCONT, :BCFONE, :BCCODAGE,'
      ':BCDIGAGE,'
      
        '   :BCNOMAGE, :BCNUMCON, :BCDIGCON, :BCCODCAR, :BCINST01, :BCNUM' +
        'BOL,'
      ':BCINST02,'
      
        '   :BCINST03, :BCINST04, :BCCODCED, :BCDIGCED, :BCNUMBCO, :BCDIG' +
        'NCO,'
      ':BCSALDO,'
      
        '   :BCSALDOI, :BCCH_IV, :BCCH_VL, :BCCH_VC, :BCCH_IEXL1, :BCCH_E' +
        'XL1L,'
      ':BCCH_EXL1C,'
      
        '   :BCCH_EXL1T, :BCCH_IEXL2, :BCCH_EXL2L, :BCCH_EXL2C, :BCCH_EXL' +
        '2T,'
      ':BCCH_INOM,'
      '   :BCCH_NOML, :BCCH_NOMC, :BCCH_ICID, :BCCH_CIDL, :BCCH_CIDC,'
      ':BCCH_IDIA,'
      '   :BCCH_DIAL, :BCCH_DIAC, :BCCH_IMES, :BCCH_MESL, :BCCH_MESC,'
      ':BCCH_IANO,'
      
        '   :BCCH_ANOL, :BCCH_ANOC, :BCCH_IBOMP, :BCCH_BOMPL, :BCCH_BOMPC' +
        ','
      ':BCCH_QTDLC,'
      
        '   :BCCH_QTDLP, :BCB_LOCP, :BCB_LOCP02, :BCB_ESPD, :BCB_ACEITE, ' +
        ':BCB_QTDLP,'
      ':BCB_QTDL,'
      
        '   :BCB_ILP, :BCB_LPL, :BCB_LPC, :BCB_IVC, :BCB_VCL, :BCB_VCC, :' +
        'BCB_IDE,'
      
        '   :BCB_DEL, :BCB_DEC, :BCB_IND, :BCB_NDL, :BCB_NDC, :BCB_IED, :' +
        'BCB_EDL,'
      
        '   :BCB_EDC, :BCB_IAC, :BCB_ACL, :BCB_ACC, :BCB_IDP, :BCB_DPL, :' +
        'BCB_DPC,'
      
        '   :BCB_IEM, :BCB_EML, :BCB_EMC, :BCB_IQM, :BCB_QML, :BCB_QMC, :' +
        'BCB_IVM,'
      
        '   :BCB_VML, :BCB_VMC, :BCB_IVD, :BCB_VDL, :BCB_VDC, :BCB_ITI, :' +
        'BCB_TIL,'
      '   :BCB_TIC, :BCB_IDS, :BCB_DSL, :BCB_DSC, :BCTARIFA, :BCLOTMOV,'
      ':BCCODVAR,'
      '   :BCNOMTIT, :BCLIMITE, :BCRAZAOCTA, :BCIMPPVREP, :BCCH_NOMTAM,'
      ':BCREPLICARCX,'
      '   :BCREP_CODBCO, :BCREP_NOMBCO, :BCREP_CODDEP, :BCREP_NOMDEP,'
      ':BCREP_CODCCU,'
      '   :BCREP_NOMCCU, :BCREP_NATDC, :BCREP_TIPO, :BCREP_CODIGO,'
      ':BCREP_NOMESAC,'
      '   :BCREP_DESCMV, :BCDATHOR_INC, :BCCODUSR_INC, :BCDATHOR_ALT,'
      ':BCCODUSR_ALT,:BCSITCAD'
      ',:BCCODCAR_C006,:BCLAYOUT_PADRAO'
      ',:BCDOCEMIBOL,:BCDOCBOL'
      ',:BCSACADOR_AVALISTA_OBS'
      ''
      ')')
    DeleteSQL.Strings = (
      'delete from CADBCO'
      'where'
      '  BCCODEMP = :OLD_BCCODEMP and'
      '  BCCODBCO = :OLD_BCCODBCO and'
      '  BCBANCO = :OLD_BCBANCO')
    Left = 92
    Top = 176
  end
  object U_Cac: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCAC'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CALOTSEQ = :CALOTSEQ,'
      '  CASEQ = :CASEQ,'
      '  CACODUSR = :CACODUSR,'
      '  CANOMUSR = :CANOMUSR,'
      '  CADATAI = :CADATAI,'
      '  CAHORAI = :CAHORAI,'
      '  CADATAF = :CADATAF,'
      '  CAHORAF = :CAHORAF,'
      '  CATERM = :CATERM'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CALOTSEQ = :OLD_CALOTSEQ and'
      '  CASEQ = :OLD_CASEQ')
    InsertSQL.Strings = (
      'insert into CADCAC'
      '  (CACODEMP, CALOTSEQ, CASEQ, CACODUSR, CANOMUSR, CADATAI, '
      'CAHORAI, CADATAF, '
      '   CAHORAF, CATERM)'
      'values'
      
        '  (:CACODEMP, :CALOTSEQ, :CASEQ, :CACODUSR, :CANOMUSR, :CADATAI,' +
        ' '
      ':CAHORAI, '
      '   :CADATAF, :CAHORAF, :CATERM)')
    DeleteSQL.Strings = (
      'delete from CADCAC'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CALOTSEQ = :OLD_CALOTSEQ and'
      '  CASEQ = :OLD_CASEQ')
    Left = 92
    Top = 222
  end
  object U_Cal: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCAL'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CACODIMP = :CACODIMP,'
      '  CACODALI = :CACODALI,'
      '  CAALIQ = :CAALIQ'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CACODIMP = :OLD_CACODIMP and'
      '  CACODALI = :OLD_CACODALI')
    InsertSQL.Strings = (
      'insert into CADCAL'
      '  (CACODEMP, CACODIMP, CACODALI, CAALIQ)'
      'values'
      '  (:CACODEMP, :CACODIMP, :CACODALI, :CAALIQ)')
    DeleteSQL.Strings = (
      'delete from CADCAL'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CACODIMP = :OLD_CACODIMP and'
      '  CACODALI = :OLD_CACODALI')
    Left = 92
    Top = 266
  end
  object U_Cb01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCB01'
      'set'
      '  CB1CODEMP = :CB1CODEMP,'
      '  CB1CHAVE = :CB1CHAVE,'
      '  CB1CODVEN = :CB1CODVEN,'
      '  CB1DATA = :CB1DATA,'
      '  CB1JURM = :CB1JURM,'
      '  CB1OBS01 = :CB1OBS01,'
      '  CB1OBS02 = :CB1OBS02'
      'where'
      '  CB1CODEMP = :OLD_CB1CODEMP and'
      '  CB1CHAVE = :OLD_CB1CHAVE')
    InsertSQL.Strings = (
      'insert into CADCB01'
      '  (CB1CODEMP, CB1CHAVE, CB1CODVEN, CB1DATA, CB1JURM, CB1OBS01, '
      'CB1OBS02)'
      'values'
      
        '  (:CB1CODEMP, :CB1CHAVE, :CB1CODVEN, :CB1DATA, :CB1JURM, :CB1OB' +
        'S01, '
      ':CB1OBS02)')
    DeleteSQL.Strings = (
      'delete from CADCB01'
      'where'
      '  CB1CODEMP = :OLD_CB1CODEMP and'
      '  CB1CHAVE = :OLD_CB1CHAVE')
    Left = 92
    Top = 310
  end
  object U_Cb02: TUpdateSQL
    Left = 92
    Top = 354
  end
  object U_CCU: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCCU'
      'set'
      '  CCCODEMP = :CCCODEMP,'
      '  CCCODCCU = :CCCODCCU,'
      '  CCNOME = :CCNOME,'
      '  CCNAT = :CCNAT,'
      '  CCCODDRE = :CCCODDRE,'
      '  CCEXP_CATEG = :CCEXP_CATEG,'
      '  CCEXP_EVENTO = :CCEXP_EVENTO,'
      '  CCEXP_CODCTA_DEB = :CCEXP_CODCTA_DEB,'
      '  CCEXP_CODHIST_DEB = :CCEXP_CODHIST_DEB,'
      '  CCEXP_CODCTA_CRED = :CCEXP_CODCTA_CRED,'
      '  CCEXP_CODHIST_CRED = :CCEXP_CODHIST_CRED,'
      '  CCEXP_CODCCU_CRED = :CCEXP_CODCCU_CRED,'
      '  CCEXP_CODCCU_DEB = :CCEXP_CODCCU_DEB'
      'where'
      '  CCCODEMP = :OLD_CCCODEMP and'
      '  CCCODCCU = :OLD_CCCODCCU')
    InsertSQL.Strings = (
      'insert into CADCCU'
      '  (CCCODEMP, CCCODCCU, CCNOME, CCNAT, CCCODDRE, CCEXP_CATEG, '
      'CCEXP_EVENTO, '
      '   CCEXP_CODCTA_DEB, CCEXP_CODHIST_DEB, CCEXP_CODCTA_CRED, '
      'CCEXP_CODHIST_CRED, '
      '   CCEXP_CODCCU_CRED, CCEXP_CODCCU_DEB)'
      'values'
      
        '  (:CCCODEMP, :CCCODCCU, :CCNOME, :CCNAT, :CCCODDRE, :CCEXP_CATE' +
        'G, '
      ':CCEXP_EVENTO, '
      '   :CCEXP_CODCTA_DEB, :CCEXP_CODHIST_DEB, :CCEXP_CODCTA_CRED, '
      ':CCEXP_CODHIST_CRED, '
      '   :CCEXP_CODCCU_CRED, :CCEXP_CODCCU_DEB)')
    DeleteSQL.Strings = (
      'delete from CADCCU'
      'where'
      '  CCCODEMP = :OLD_CCCODEMP and'
      '  CCCODCCU = :OLD_CCCODCCU')
    Left = 92
    Top = 399
  end
  object U_CFO: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCFO'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCODCFO = :CFCODCFO,'
      '  CFNOME = :CFNOME,'
      '  CFCFOENT = :CFCFOENT,'
      '  CFTPOPER = :CFTPOPER'
      '  ,CFCODCTA_EFD = :CFCODCTA_EFD'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    InsertSQL.Strings = (
      'insert into CADCFO'
      '  (CFCODEMP, CFCODCFO, CFNOME, CFCFOENT, CFTPOPER,:CFCODCTA_EFD)'
      'values'
      '  (:CFCODEMP, :CFCODCFO, :CFNOME, :CFCFOENT, :CFTPOPER'
      '  ,:CFCODCTA_EFD)')
    DeleteSQL.Strings = (
      'delete from CADCFO'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    Left = 92
    Top = 442
  end
  object U_Chq: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCHQ'
      'set'
      '  CHCODEMP = :CHCODEMP,'
      '  CHSEQ = :CHSEQ,'
      '  CHLOTSEQ = :CHLOTSEQ,'
      '  CHNUMERO = :CHNUMERO,'
      '  CHBANCO = :CHBANCO,'
      '  CHSERIE = :CHSERIE,'
      '  CHCOMP = :CHCOMP,'
      '  CHCODCLI = :CHCODCLI,'
      '  CHEMIT = :CHEMIT,'
      '  CHCPF = :CHCPF,'
      '  CHRG = :CHRG,'
      '  CHCC = :CHCC,'
      '  CHDTNAS = :CHDTNAS,'
      '  CHVALOR = :CHVALOR,'
      '  CHDTEMIS = :CHDTEMIS,'
      '  CHDTDEP = :CHDTDEP,'
      '  CHAGENCIA = :CHAGENCIA,'
      '  CHLOTE = :CHLOTE,'
      '  CHLOTEBX = :CHLOTEBX,'
      '  CHTIPO = :CHTIPO,'
      '  CHSTATUS = :CHSTATUS,'
      '  CHDTBX = :CHDTBX,'
      '  CHUSRBX = :CHUSRBX,'
      '  CHCAIXA = :CHCAIXA,'
      '  CHCODUSR = :CHCODUSR,'
      '  CHDTALT = :CHDTALT,'
      '  CHHRALT = :CHHRALT,'
      '  CHCODLDR = :CHCODLDR,'
      '  CHLEMAT = :CHLEMAT,'
      '  CHFONE01 = :CHFONE01,'
      '  CHFONE02 = :CHFONE02,'
      '  CHCODCTA = :CHCODCTA,'
      '  CHCODCC = :CHCODCC,'
      '  CHCODDEP = :CHCODDEP,'
      '  CHDESCMV = :CHDESCMV,'
      '  CHLOTSEQ_FC = :CHLOTSEQ_FC,'
      '  CHDEPOSITO = :CHDEPOSITO,'
      '  CHPROR_QTDP = :CHPROR_QTDP,'
      '  CHPRO_ULTDAT = :CHPRO_ULTDAT,'
      '  CHOBSL01 = :CHOBSL01,'
      '  CHOBSL02 = :CHOBSL02,'
      '  CHCODFPGTO = :CHCODFPGTO,'
      '  CHCODLDR_CRED = :CHCODLDR_CRED,'
      '  CHCODBCO_CRED = :CHCODBCO_CRED,'
      '  CHCODBCO_DEB = :CHCODBCO_DEB,'
      '  CHLOTSEQ_FC_DEB = :CHLOTSEQ_FC_DEB,'
      '  CHCODLDR_DEB = :CHCODLDR_DEB,'
      '  CHNOMCTA = :CHNOMCTA,'
      '  CHNOMCC = :CHNOMCC,'
      '  CHNATDC = :CHNATDC,'
      '  CHNOMDEP = :CHNOMDEP,'
      '  CHLOTSEQ_BT = :CHLOTSEQ_BT,'
      '  CHLOTE_BT = :CHLOTE_BT,'
      '  CHDATHOR_INC = :CHDATHOR_INC,'
      '  CHCODUSR_INC = :CHCODUSR_INC,'
      '  CHDATHOR_ALT = :CHDATHOR_ALT,'
      '  CHCODUSR_ALT = :CHCODUSR_ALT'
      '  ,CHID_NEW = :CHID_NEW'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    InsertSQL.Strings = (
      'insert into CADCHQ'
      '  (CHCODEMP, CHSEQ, CHLOTSEQ, CHNUMERO, CHBANCO, CHSERIE, '
      'CHCOMP, CHCODCLI, '
      
        '   CHEMIT, CHCPF, CHRG, CHCC, CHDTNAS, CHVALOR, CHDTEMIS, CHDTDE' +
        'P, '
      'CHAGENCIA, '
      
        '   CHLOTE, CHLOTEBX, CHTIPO, CHSTATUS, CHDTBX, CHUSRBX, CHCAIXA,' +
        ' '
      'CHCODUSR, '
      '   CHDTALT, CHHRALT, CHCODLDR, CHLEMAT, CHFONE01, CHFONE02, '
      'CHCODCTA, CHCODCC, '
      '   CHCODDEP, CHDESCMV, CHLOTSEQ_FC, CHDEPOSITO, CHPROR_QTDP, '
      'CHPRO_ULTDAT, '
      '   CHOBSL01, CHOBSL02, CHCODFPGTO, CHCODLDR_CRED, '
      'CHCODBCO_CRED, CHCODBCO_DEB, '
      '   CHLOTSEQ_FC_DEB, CHCODLDR_DEB, CHNOMCTA, CHNOMCC, CHNATDC, '
      'CHNOMDEP,'
      '   CHLOTSEQ_BT, CHLOTE_BT, CHDATHOR_INC, CHCODUSR_INC,'
      'CHDATHOR_ALT, CHCODUSR_ALT, CHID_NEW)'
      'values'
      '  (:CHCODEMP, :CHSEQ, :CHLOTSEQ, :CHNUMERO, :CHBANCO, :CHSERIE, '
      ':CHCOMP, '
      
        '   :CHCODCLI, :CHEMIT, :CHCPF, :CHRG, :CHCC, :CHDTNAS, :CHVALOR,' +
        ' '
      ':CHDTEMIS, '
      
        '   :CHDTDEP, :CHAGENCIA, :CHLOTE, :CHLOTEBX, :CHTIPO, :CHSTATUS,' +
        ' '
      ':CHDTBX, '
      
        '   :CHUSRBX, :CHCAIXA, :CHCODUSR, :CHDTALT, :CHHRALT, :CHCODLDR,' +
        ' '
      ':CHLEMAT, '
      
        '   :CHFONE01, :CHFONE02, :CHCODCTA, :CHCODCC, :CHCODDEP, :CHDESC' +
        'MV, '
      ':CHLOTSEQ_FC, '
      
        '   :CHDEPOSITO, :CHPROR_QTDP, :CHPRO_ULTDAT, :CHOBSL01, :CHOBSL0' +
        '2, '
      ':CHCODFPGTO, '
      '   :CHCODLDR_CRED, :CHCODBCO_CRED, :CHCODBCO_DEB, '
      ':CHLOTSEQ_FC_DEB, :CHCODLDR_DEB, '
      '   :CHNOMCTA, :CHNOMCC, :CHNATDC, :CHNOMDEP, :CHLOTSEQ_BT, '
      ':CHLOTE_BT, '
      
        '   :CHDATHOR_INC, :CHCODUSR_INC, :CHDATHOR_ALT, :CHCODUSR_ALT, :' +
        'CHID_NEW)')
    DeleteSQL.Strings = (
      'delete from CADCHQ'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    Left = 92
    Top = 485
  end
  object U_CI: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIMP'
      'set'
      '  IMPRESSORA = :IMPRESSORA,'
      '  C10CPPD = :C10CPPD,'
      '  C12CPPD = :C12CPPD,'
      '  C17CPPD = :C17CPPD,'
      '  C20CPPD = :C20CPPD,'
      '  C10CPP = :C10CPP,'
      '  C12CPP = :C12CPP,'
      '  C14CPP = :C14CPP,'
      '  C17CPP = :C17CPP,'
      '  C20CPP = :C20CPP,'
      '  CNORMAL = :CNORMAL,'
      '  L8P1 = :L8P1,'
      '  L10P1 = :L10P1,'
      '  L6P1 = :L6P1,'
      '  L3P1 = :L3P1,'
      '  PEJECT = :PEJECT'
      'where'
      '  IMPRESSORA = :OLD_IMPRESSORA')
    InsertSQL.Strings = (
      'insert into CADIMP'
      
        '  (IMPRESSORA, C10CPPD, C12CPPD, C17CPPD, C20CPPD, C10CPP, C12CP' +
        'P, '
      'C14CPP, '
      '   C17CPP, C20CPP, CNORMAL, L8P1, L10P1, L6P1, L3P1, PEJECT)'
      'values'
      
        '  (:IMPRESSORA, :C10CPPD, :C12CPPD, :C17CPPD, :C20CPPD, :C10CPP,' +
        ' '
      ':C12CPP, '
      
        '   :C14CPP, :C17CPP, :C20CPP, :CNORMAL, :L8P1, :L10P1, :L6P1, :L' +
        '3P1, :PEJECT)')
    DeleteSQL.Strings = (
      'delete from CADIMP'
      'where'
      '  IMPRESSORA = :OLD_IMPRESSORA')
    Left = 108
    Top = 4
  end
  object U_ComD: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMD'
      'set'
      '  CDCODEMP = :CDCODEMP,'
      '  CDDESC = :CDDESC,'
      '  CDCOMIS = :CDCOMIS'
      'where'
      '  CDCODEMP = :OLD_CDCODEMP and'
      '  CDDESC = :OLD_CDDESC')
    InsertSQL.Strings = (
      'insert into CADCOMD'
      '  (CDCODEMP, CDDESC, CDCOMIS)'
      'values'
      '  (:CDCODEMP, :CDDESC, :CDCOMIS)')
    DeleteSQL.Strings = (
      'delete from CADCOMD'
      'where'
      '  CDCODEMP = :OLD_CDCODEMP and'
      '  CDDESC = :OLD_CDDESC')
    Left = 190
    Top = 92
  end
  object U_Contato: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTATO'
      'set'
      '  CTNUMCON = :CTNUMCON,'
      '  CTCODVEN = :CTCODVEN,'
      '  CTCODCLI = :CTCODCLI,'
      '  CTDATCON = :CTDATCON,'
      '  CTDTPCON = :CTDTPCON,'
      '  CTCODEMP = :CTCODEMP,'
      '  CTSTATUS = :CTSTATUS'
      'where'
      '  CTNUMCON = :OLD_CTNUMCON')
    InsertSQL.Strings = (
      'insert into CONTATO'
      
        '  (CTNUMCON, CTCODVEN, CTCODCLI, CTDATCON, CTDTPCON, CTCODEMP, C' +
        'TSTATUS)'
      'values'
      
        '  (:CTNUMCON, :CTCODVEN, :CTCODCLI, :CTDATCON, :CTDTPCON, :CTCOD' +
        'EMP, :CTSTATUS)')
    DeleteSQL.Strings = (
      'delete from CONTATO'
      'where'
      '  CTNUMCON = :OLD_CTNUMCON')
    Left = 182
    Top = 134
  end
  object U_CP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAP'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CANUMERO = :CANUMERO,'
      '  CADESD = :CADESD,'
      '  CACODFOR = :CACODFOR,'
      '  CADTEMIS = :CADTEMIS,'
      '  CASEQ = :CASEQ,'
      '  CAVALOR = :CAVALOR,'
      '  CADUP = :CADUP,'
      '  CADTVCTO = :CADTVCTO,'
      '  CASTATUS = :CASTATUS,'
      '  CAVALDES = :CAVALDES,'
      '  CADTDESC = :CADTDESC,'
      '  CADESC = :CADESC,'
      '  CADEVOL = :CADEVOL,'
      '  CAJUROS = :CAJUROS,'
      '  CABANCO = :CABANCO,'
      '  CALOTSEQ_LB = :CALOTSEQ_LB,'
      '  CALOTE = :CALOTE,'
      '  CALOTSEQ_CP = :CALOTSEQ_CP,'
      '  CACHAVEP = :CACHAVEP,'
      '  CADTBX = :CADTBX,'
      '  CADTPAG = :CADTPAG,'
      '  CAVALPAG = :CAVALPAG,'
      '  CAUSRBAI = :CAUSRBAI,'
      '  CACAIXA = :CACAIXA,'
      '  CALOTSEQ_FC = :CALOTSEQ_FC,'
      '  CACODLDR = :CACODLDR,'
      '  CACODUSR = :CACODUSR,'
      '  CADTINC = :CADTINC,'
      '  CADTALT = :CADTALT,'
      '  CAHRALT = :CAHRALT,'
      '  CANOSNUM = :CANOSNUM,'
      '  CATEMBOL = :CATEMBOL,'
      '  CALEMAT = :CALEMAT,'
      '  CACODCTA = :CACODCTA,'
      '  CANOMCTA = :CANOMCTA,'
      '  CACODCC = :CACODCC,'
      '  CANOMCC = :CANOMCC,'
      '  CANATDC = :CANATDC,'
      '  CACODDEP = :CACODDEP,'
      '  CANOMDEP = :CANOMDEP,'
      '  CADESCMV = :CADESCMV,'
      '  CAQTDPARC = :CAQTDPARC,'
      '  CANUMPARC = :CANUMPARC,'
      '  CASERIE = :CASERIE,'
      '  CAMODELO = :CAMODELO,'
      '  CACFO = :CACFO,'
      '  CADTENT = :CADTENT,'
      '  CAVALORNF = :CAVALORNF,'
      '  CANUMERONF = :CANUMERONF,'
      '  CABASEN = :CABASEN,'
      '  CAALIQ = :CAALIQ,'
      '  CAICMSN = :CAICMSN,'
      '  CANETIPO = :CANETIPO,'
      '  CAVALOR_ACRES = :CAVALOR_ACRES'
      '   ,CACOMPETENCIA_DTINICIO= :CACOMPETENCIA_DTINICIO'
      '   ,CACOMPETENCIA_TIPO= :CACOMPETENCIA_TIPO'
      '  ,CACHAVE_ID_ANO = :CACHAVE_ID_ANO'
      '   ,CACHAVE_ID = :CACHAVE_ID'
      ',CADATAINCLUSAO = :CADATAINCLUSAO'
      ',CAQTDAJUSTE= :CAQTDAJUSTE'
      ',CAID_NEW = :CAID_NEW'
      ',CAID_PF01_NEW = :CAID_PF01_NEW'
      ',CAID_LDR_NEW = :CAID_LDR_NEW'
      ''
      ''
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS and'
      '  CADUP = :OLD_CADUP')
    InsertSQL.Strings = (
      'insert into CADDAP'
      '  (CACODEMP, CANUMERO, CADESD, CACODFOR, CADTEMIS, CASEQ, '
      'CAVALOR, CADUP, '
      '   CADTVCTO, CASTATUS, CAVALDES, CADTDESC, CADESC, CADEVOL, '
      'CAJUROS, CABANCO, '
      '   CALOTSEQ_LB, CALOTE, CALOTSEQ_CP, CACHAVEP, CADTBX, CADTPAG, '
      'CAVALPAG, '
      '   CAUSRBAI, CACAIXA, CALOTSEQ_FC, CACODLDR, CACODUSR, '
      'CADTINC, '
      '   CADTALT, CAHRALT, CANOSNUM, CATEMBOL, CALEMAT, CACODCTA, '
      'CANOMCTA, CACODCC, '
      '   CANOMCC, CANATDC, CACODDEP, CANOMDEP, CADESCMV, CAQTDPARC, '
      'CANUMPARC, '
      '   CASERIE, CAMODELO, CACFO, CADTENT, CAVALORNF, CANUMERONF, '
      'CABASEN, CAALIQ, '
      '   CAICMSN, CANETIPO, CAVALOR_ACRES'
      '   ,CACOMPETENCIA_DTINICIO'
      '   ,CACOMPETENCIA_TIPO'
      '   ,CACHAVE_ID_ANO'
      '   ,CACHAVE_ID'
      ',CADATAINCLUSAO'
      ',CAQTDAJUSTE'
      ',CAID_NEW'
      ',CAID_PF01_NEW'
      ',CAID_LDR_NEW'
      ''
      '   )'
      ''
      'values'
      '  (:CACODEMP, :CANUMERO, :CADESD, :CACODFOR, :CADTEMIS, :CASEQ, '
      ':CAVALOR, '
      '   :CADUP, :CADTVCTO, :CASTATUS, :CAVALDES, :CADTDESC, :CADESC, '
      ':CADEVOL, '
      '   :CAJUROS, :CABANCO, :CALOTSEQ_LB, :CALOTE, :CALOTSEQ_CP, '
      ':CACHAVEP, '
      
        '   :CADTBX, :CADTPAG, :CAVALPAG, :CAUSRBAI, :CACAIXA, :CALOTSEQ_' +
        'FC, '
      ':CACODLDR, '
      '    :CACODUSR, :CADTINC, :CADTALT, :CAHRALT, :CANOSNUM,'
      ':CATEMBOL, '
      
        '   :CALEMAT, :CACODCTA, :CANOMCTA, :CACODCC, :CANOMCC, :CANATDC,' +
        ' '
      ':CACODDEP, '
      '   :CANOMDEP, :CADESCMV, :CAQTDPARC, :CANUMPARC, :CASERIE, '
      ':CAMODELO, :CACFO, '
      
        '   :CADTENT, :CAVALORNF, :CANUMERONF, :CABASEN, :CAALIQ, :CAICMS' +
        'N, '
      ':CANETIPO,'
      '   :CAVALOR_ACRES'
      '   ,:CACOMPETENCIA_DTINICIO'
      '   ,:CACOMPETENCIA_TIPO'
      '   ,:CACHAVE_ID_ANO'
      '   ,:CACHAVE_ID'
      ',:CADATAINCLUSAO'
      ',:CAQTDAJUSTE'
      ',:CAID_NEW'
      ',:CAID_PF01_NEW'
      ',:CAID_LDR_NEW'
      ''
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADDAP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS and'
      '  CADUP = :OLD_CADUP')
    Left = 183
    Top = 177
  end
  object U_CPFor: TUpdateSQL
    ModifySQL.Strings = (
      'update CODPFOR'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFCODPRO = :PFCODPRO,'
      '  PFCODFOR = :PFCODFOR,'
      '  PFCODPFOR = :PFCODPFOR,'
      '  PFSALDO = :PFSALDO'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR')
    InsertSQL.Strings = (
      'insert into CODPFOR'
      '  (PFCODEMP, PFCODPRO, PFCODFOR, PFCODPFOR, PFSALDO)'
      'values'
      '  (:PFCODEMP, :PFCODPRO, :PFCODFOR, :PFCODPFOR, :PFSALDO)')
    DeleteSQL.Strings = (
      'delete from CODPFOR'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR')
    Left = 181
    Top = 223
  end
  object U_CSF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSF'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCODSEQ = :CFCODSEQ,'
      '  CFCHAVEP = :CFCHAVEP,'
      '  CFORDEMP = :CFORDEMP,'
      '  CFRAZAO = :CFRAZAO,'
      '  CFDENOM = :CFDENOM,'
      '  CFENDER = :CFENDER,'
      '  CFBAIRRO = :CFBAIRRO,'
      '  CFCIDADE = :CFCIDADE,'
      '  CFUF = :CFUF,'
      '  CFCEP = :CFCEP,'
      '  CFTIPOC = :CFTIPOC,'
      '  CFCGC = :CFCGC,'
      '  CFIE = :CFIE,'
      '  CFFONE = :CFFONE,'
      '  CFLOTSEQ = :CFLOTSEQ,'
      '  CFCHAVEP_NIVEL = :CFCHAVEP_NIVEL,'
      '  CFFONE_CHAVE = :CFFONE_CHAVE,'
      '  CFCODVEN = :CFCODVEN,'
      '  CFFAX = :CFFAX'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODSEQ = :OLD_CFCODSEQ and'
      '  CFCHAVEP = :OLD_CFCHAVEP and'
      '  CFORDEMP = :OLD_CFORDEMP and'
      '  CFLOTSEQ = :OLD_CFLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADCSF'
      '  (CFCODEMP, CFCODSEQ, CFCHAVEP, CFORDEMP, CFRAZAO, CFDENOM, '
      'CFENDER, CFBAIRRO, '
      
        '   CFCIDADE, CFUF, CFCEP, CFTIPOC, CFCGC, CFIE, CFFONE, CFLOTSEQ' +
        ', '
      'CFCHAVEP_NIVEL, '
      '   CFFONE_CHAVE, CFCODVEN, CFFAX)'
      'values'
      
        '  (:CFCODEMP, :CFCODSEQ, :CFCHAVEP, :CFORDEMP, :CFRAZAO, :CFDENO' +
        'M, '
      ':CFENDER, '
      
        '   :CFBAIRRO, :CFCIDADE, :CFUF, :CFCEP, :CFTIPOC, :CFCGC, :CFIE,' +
        ' :CFFONE, '
      '   :CFLOTSEQ, :CFCHAVEP_NIVEL, :CFFONE_CHAVE, :CFCODVEN, :CFFAX)')
    DeleteSQL.Strings = (
      'delete from CADCSF'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODSEQ = :OLD_CFCODSEQ and'
      '  CFCHAVEP = :OLD_CFCHAVEP and'
      '  CFORDEMP = :OLD_CFORDEMP and'
      '  CFLOTSEQ = :OLD_CFLOTSEQ')
    Left = 182
    Top = 267
  end
  object U_Cus: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCUS'
      'set'
      '  CUCODEMP = :CUCODEMP,'
      '  CUTIPO = :CUTIPO,'
      '  CUCODIGO = :CUCODIGO,'
      '  CUCODPCU = :CUCODPCU,'
      '  CUPERC = :CUPERC,'
      '  CUVALOR = :CUVALOR,'
      '  CUBASECALC = :CUBASECALC,'
      '  CUAPLS = :CUAPLS,'
      '  CUFATOR = :CUFATOR,'
      '  CUOPCIO = :CUOPCIO,'
      ' CCSITCAD =:CCSITCAD'
      'where'
      '  CUCODEMP = :OLD_CUCODEMP and'
      '  CUTIPO = :OLD_CUTIPO and'
      '  CUCODIGO = :OLD_CUCODIGO and'
      '  CUCODPCU = :OLD_CUCODPCU')
    InsertSQL.Strings = (
      'insert into CADCUS'
      '  (CUCODEMP, CUTIPO, CUCODIGO, CUCODPCU, CUPERC, CUVALOR, '
      'CUBASECALC, CUAPLS, '
      '   CUFATOR, CUOPCIO,CCSITCAD)'
      'values'
      '  (:CUCODEMP, :CUTIPO, :CUCODIGO, :CUCODPCU, :CUPERC, :CUVALOR, '
      ':CUBASECALC, '
      '   :CUAPLS, :CUFATOR, :CUOPCIO, :CCSITCAD)')
    DeleteSQL.Strings = (
      'delete from CADCUS'
      'where'
      '  CUCODEMP = :OLD_CUCODEMP and'
      '  CUTIPO = :OLD_CUTIPO and'
      '  CUCODIGO = :OLD_CUCODIGO and'
      '  CUCODPCU = :OLD_CUCODPCU')
    Left = 181
    Top = 311
  end
  object U_Cus2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCUS2'
      'set'
      '  CUCODEMP = :CUCODEMP,'
      '  CUTIPO = :CUTIPO,'
      '  CUCODIGO = :CUCODIGO,'
      '  CUACPCO2 = :CUACPCO2,'
      '  CUACPCO3 = :CUACPCO3,'
      '  CUATUP01 = :CUATUP01,'
      '  CUATUP02 = :CUATUP02,'
      '  CUATUP03 = :CUATUP03,'
      '  CUORIGEMPCO = :CUORIGEMPCO,'
      '  CUPCOMIN = :CUPCOMIN,'
      '  CUINCPCOMIN = :CUINCPCOMIN,'
      '  CUPCOFAB = :CUPCOFAB,'
      '  CUPCOCUS = :CUPCOCUS,'
      '  CUPCOVDA01 = :CUPCOVDA01,'
      '  CUPCOVDA02 = :CUPCOVDA02,'
      '  CUPCOVDA03 = :CUPCOVDA03'
      'where'
      '  CUCODEMP = :OLD_CUCODEMP and'
      '  CUTIPO = :OLD_CUTIPO and'
      '  CUCODIGO = :OLD_CUCODIGO')
    InsertSQL.Strings = (
      'insert into CADCUS2'
      '  (CUCODEMP, CUTIPO, CUCODIGO, CUACPCO2, CUACPCO3, CUATUP01, '
      'CUATUP02, '
      '   CUATUP03, CUORIGEMPCO, CUPCOMIN, CUINCPCOMIN, CUPCOFAB, '
      'CUPCOCUS, CUPCOVDA01, '
      '   CUPCOVDA02, CUPCOVDA03)'
      'values'
      
        '  (:CUCODEMP, :CUTIPO, :CUCODIGO, :CUACPCO2, :CUACPCO3, :CUATUP0' +
        '1, '
      ':CUATUP02, '
      '   :CUATUP03, :CUORIGEMPCO, :CUPCOMIN, :CUINCPCOMIN, :CUPCOFAB, '
      ':CUPCOCUS, '
      '   :CUPCOVDA01, :CUPCOVDA02, :CUPCOVDA03)')
    DeleteSQL.Strings = (
      'delete from CADCUS2'
      'where'
      '  CUCODEMP = :OLD_CUCODEMP and'
      '  CUTIPO = :OLD_CUTIPO and'
      '  CUCODIGO = :OLD_CUCODIGO')
    Left = 183
    Top = 355
  end
  object U_CV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCV'
      'set'
      '  CVCODEMP = :CVCODEMP,'
      '  CVCODCV = :CVCODCV,'
      '  CVRAZAO = :CVRAZAO,'
      '  CVFANTASIA = :CVFANTASIA,'
      '  CVDIAV = :CVDIAV,'
      '  CVNLOG = :CVNLOG,'
      '  CVNUM = :CVNUM,'
      '  CVCOMPL = :CVCOMPL,'
      '  CVBAIRRO = :CVBAIRRO,'
      '  CVCEP = :CVCEP,'
      '  CVCIDADE = :CVCIDADE,'
      '  CVUF = :CVUF,'
      '  CVFONE = :CVFONE,'
      '  CVFAX = :CVFAX,'
      '  CVEMAIL = :CVEMAIL,'
      '  CVRESP = :CVRESP,'
      '  CVCPF = :CVCPF,'
      '  CVCVRG = :CVCVRG,'
      '  CVCGC = :CVCGC,'
      '  CVIE = :CVIE,'
      '  CVCONT01 = :CVCONT01,'
      '  CVFONC01 = :CVFONC01,'
      '  CVCONT02 = :CVCONT02,'
      '  CVFONC02 = :CVFONC02,'
      '  CVCONT03 = :CVCONT03,'
      '  CVFONC03 = :CVFONC03,'
      '  CVCODPV = :CVCODPV,'
      '  CVACFIN = :CVACFIN,'
      '  CVCODBAI = :CVCODBAI,'
      '  CVCODLOC = :CVCODLOC,'
      '  CVTABPV = :CVTABPV,'
      '  CVOBS = :CVOBS'
      'where'
      '  CVCODEMP = :OLD_CVCODEMP and'
      '  CVCODCV = :OLD_CVCODCV and'
      '  CVRAZAO = :OLD_CVRAZAO')
    InsertSQL.Strings = (
      'insert into CADCV'
      
        '  (CVCODEMP, CVCODCV, CVRAZAO, CVFANTASIA, CVDIAV, CVNLOG, CVNUM' +
        ', '
      'CVCOMPL, '
      
        '   CVBAIRRO, CVCEP, CVCIDADE, CVUF, CVFONE, CVFAX, CVEMAIL, CVRE' +
        'SP, '
      'CVCPF, '
      '   CVCVRG, CVCGC, CVIE, CVCONT01, CVFONC01, CVCONT02, CVFONC02, '
      'CVCONT03, '
      
        '   CVFONC03, CVCODPV, CVACFIN, CVCODBAI, CVCODLOC, CVTABPV, CVOB' +
        'S)'
      'values'
      
        '  (:CVCODEMP, :CVCODCV, :CVRAZAO, :CVFANTASIA, :CVDIAV, :CVNLOG,' +
        ' '
      ':CVNUM, '
      
        '   :CVCOMPL, :CVBAIRRO, :CVCEP, :CVCIDADE, :CVUF, :CVFONE, :CVFA' +
        'X, '
      ':CVEMAIL, '
      
        '   :CVRESP, :CVCPF, :CVCVRG, :CVCGC, :CVIE, :CVCONT01, :CVFONC01' +
        ', '
      ':CVCONT02, '
      
        '   :CVFONC02, :CVCONT03, :CVFONC03, :CVCODPV, :CVACFIN, :CVCODBA' +
        'I, '
      ':CVCODLOC, '
      '   :CVTABPV, :CVOBS)')
    DeleteSQL.Strings = (
      'delete from CADCV'
      'where'
      '  CVCODEMP = :OLD_CVCODEMP and'
      '  CVCODCV = :OLD_CVCODCV and'
      '  CVRAZAO = :OLD_CVRAZAO')
    Left = 182
    Top = 400
  end
  object U_Dar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAR'
      'set'
      '  CRCODEMP = :CRCODEMP,'
      '  CRCODECF = :CRCODECF,'
      '  CRNUMERO = :CRNUMERO,'
      '  CRDESD = :CRDESD,'
      '  CRDUP = :CRDUP,'
      '  CRCODCLI = :CRCODCLI,'
      '  CRNUMCUP = :CRNUMCUP,'
      '  CRDATCUP = :CRDATCUP,'
      '  CRVALOR = :CRVALOR,'
      '  CRVALOR_ACRES = :CRVALOR_ACRES,'
      '  CRTOTNF = :CRTOTNF,'
      '  CRDTEMIS = :CRDTEMIS,'
      '  CRDTVCTO = :CRDTVCTO,'
      '  CRDTPAG = :CRDTPAG,'
      '  CRDTBX = :CRDTBX,'
      '  CRLOTSEQ_CP = :CRLOTSEQ_CP,'
      '  CRNPED = :CRNPED,'
      '  CRORDEM = :CRORDEM,'
      '  CRVALPAG = :CRVALPAG,'
      '  CRCODVEN = :CRCODVEN,'
      '  CRCODASSE = :CRCODASSE,'
      '  CRCODV02 = :CRCODV02,'
      '  CRCODV03 = :CRCODV03,'
      '  CRCODTLV = :CRCODTLV,'
      '  CRCODCV = :CRCODCV,'
      '  CRSTATUS = :CRSTATUS,'
      '  CROBS = :CROBS,'
      '  CRDESC = :CRDESC,'
      '  CRDEVOL = :CRDEVOL,'
      '  CRJUROS = :CRJUROS,'
      '  CRCODBCO = :CRCODBCO,'
      '  CRLOTSEQ_LB = :CRLOTSEQ_LB,'
      '  CRLOTE = :CRLOTE,'
      '  CRICMSR = :CRICMSR,'
      '  CRDESCF = :CRDESCF,'
      '  CRDTDESCF = :CRDTDESCF,'
      '  CRJURD = :CRJURD,'
      '  CRDESCD = :CRDESCD,'
      '  CRMULTA = :CRMULTA,'
      '  CRTARBAN = :CRTARBAN,'
      '  CRQTDDM = :CRQTDDM,'
      '  CREMIDUP = :CREMIDUP,'
      '  CREMIBLQ = :CREMIBLQ,'
      '  CRVALFRE = :CRVALFRE,'
      '  CRNOSNUM = :CRNOSNUM,'
      '  CRDNOSNUM = :CRDNOSNUM,'
      '  CRACEITE = :CRACEITE,'
      '  CRESPECIE = :CRESPECIE,'
      '  CRCODBAR = :CRCODBAR,'
      '  CRCODDIG = :CRCODDIG,'
      '  CRNFACUM = :CRNFACUM,'
      '  CRTIPCOB = :CRTIPCOB,'
      '  CRDTALT = :CRDTALT,'
      '  CRUSRALT = :CRUSRALT,'
      '  CRUSRBX = :CRUSRBX,'
      '  CRCOMVEN = :CRCOMVEN,'
      '  CRCOMV02 = :CRCOMV02,'
      '  CRCOMV03 = :CRCOMV03,'
      '  CRCOMTEL = :CRCOMTEL,'
      '  CRCOMSUP = :CRCOMSUP,'
      '  CRCOMASSE = :CRCOMASSE,'
      '  CRSEMCOM = :CRSEMCOM,'
      '  CRLOTSEQ_FC = :CRLOTSEQ_FC,'
      '  CRCODLDR = :CRCODLDR,'
      '  CRLOTSEQ_CV = :CRLOTSEQ_CV,'
      '  CRLOTCV = :CRLOTCV,'
      '  CRLOTSEQ_CV02 = :CRLOTSEQ_CV02,'
      '  CRLOTCV02 = :CRLOTCV02,'
      '  CRLOTSEQ_CV03 = :CRLOTSEQ_CV03,'
      '  CRLOTCV03 = :CRLOTCV03,'
      '  CRLOTSEQ_CS = :CRLOTSEQ_CS,'
      '  CRLOTCS = :CRLOTCS,'
      '  CRLOTSEQ_CASSE = :CRLOTSEQ_CASSE,'
      '  CRLOTCASSE = :CRLOTCASSE,'
      '  CRCODORI = :CRCODORI,'
      '  CRLOTSEQ_CT = :CRLOTSEQ_CT,'
      '  CRLOTCT = :CRLOTCT,'
      '  CRCODUSR = :CRCODUSR,'
      '  CRHRALT = :CRHRALT,'
      '  CRTOTDI01 = :CRTOTDI01,'
      '  CRTOTDI02 = :CRTOTDI02,'
      '  CRTOTDI03 = :CRTOTDI03,'
      '  CRTOTDIVL = :CRTOTDIVL,'
      '  CRVALDES01 = :CRVALDES01,'
      '  CRVALDES02 = :CRVALDES02,'
      '  CRVLRDES = :CRVLRDES,'
      '  CRLEMAT = :CRLEMAT,'
      '  CRINST01 = :CRINST01,'
      '  CRINST02 = :CRINST02,'
      '  CRINST03 = :CRINST03,'
      '  CRINST04 = :CRINST04,'
      '  CRQTDPARC = :CRQTDPARC,'
      '  CRNUMPARC = :CRNUMPARC,'
      '  CRVALSEG = :CRVALSEG,'
      '  CRTBCOCOB = :CRTBCOCOB,'
      '  CRTOTCGRU = :CRTOTCGRU,'
      '  CRTOTSGRU = :CRTOTSGRU,'
      '  CRCODV04 = :CRCODV04,'
      '  CRNR = :CRNR,'
      '  CRCUSBCO = :CRCUSBCO,'
      '  CRCOMV04 = :CRCOMV04,'
      '  CRLOTSEQ_CV04 = :CRLOTSEQ_CV04,'
      '  CRLOTCV04 = :CRLOTCV04,'
      '  CRTOTIPI = :CRTOTIPI,'
      '  CREMIBOR = :CREMIBOR,'
      '  CRCHD_BANCO = :CRCHD_BANCO,'
      '  CRCHD_AGENCIA = :CRCHD_AGENCIA,'
      '  CRCHD_CC = :CRCHD_CC,'
      '  CRCHD_NUMERO = :CRCHD_NUMERO,'
      '  CRTCB = :CRTCB,'
      '  CRCAUCAO = :CRCAUCAO,'
      '  CRBCOCAU = :CRBCOCAU,'
      '  CRDTCAU = :CRDTCAU,'
      '  CRSPC_DTPEN = :CRSPC_DTPEN,'
      '  CRSPC_DTNEG = :CRSPC_DTNEG,'
      '  CRSERASA_DTNEG = :CRSERASA_DTNEG,'
      '  CRCODCTA = :CRCODCTA,'
      '  CRNOMCTA = :CRNOMCTA,'
      '  CRCODCC = :CRCODCC,'
      '  CRNOMCC = :CRNOMCC,'
      '  CRNATDC = :CRNATDC,'
      '  CRCODDEP = :CRCODDEP,'
      '  CRNOMDEP = :CRNOMDEP,'
      '  CRDESCMV = :CRDESCMV,'
      '  CRSEQ = :CRSEQ,'
      '  CRDATPED = :CRDATPED,'
      '  CRJURDEB = :CRJURDEB,'
      '  CRJURDEB_SAC = :CRJURDEB_SAC,'
      '  CRCOMIS_EXTRA = :CRCOMIS_EXTRA,'
      '  CRCX_CODCAI = :CRCX_CODCAI,'
      '  CRCX_LOTMOV = :CRCX_LOTMOV,'
      '  CRCHD_EMITENTE = :CRCHD_EMITENTE,'
      '  CRFIN_CODFIN = :CRFIN_CODFIN,'
      '  CRPFPGTO = :CRPFPGTO,'
      '  CRTABPV = :CRTABPV,'
      '  CRCODPV = :CRCODPV,'
      '  CRVINC02 = :CRVINC02,'
      '  CRCODFPGTO = :CRCODFPGTO,'
      '  CRLANCFIN = :CRLANCFIN,'
      '  CRRECFRENTE = :CRRECFRENTE,'
      '  CRNOMFPGTO = :CRNOMFPGTO,'
      '  CRCODCAR = :CRCODCAR,'
      '  CRTITPROT = :CRTITPROT,'
      '  CRTARPROT = :CRTARPROT,'
      '  CRTARPROT_DATA = :CRTARPROT_DATA,'
      '  CRCUSPROT = :CRCUSPROT,'
      '  CRCUSPROT_DATA = :CRCUSPROT_DATA,'
      '  CRLOTSEQ_EC = :CRLOTSEQ_EC,'
      '  CRLOTE_EC = :CRLOTE_EC'
      '  ,CRCOMPETENCIA_DTINICIO = :CRCOMPETENCIA_DTINICIO'
      '  ,CRCOMPETENCIA_TIPO = :CRCOMPETENCIA_TIPO'
      '  ,CRCHAVE_ID_ANO=:CRCHAVE_ID_ANO'
      ',CRCHAVE_ID=:CRCHAVE_ID'
      ',CRDATAINCLUSAO=:CRDATAINCLUSAO'
      ',CRQTDAJUSTE=:CRQTDAJUSTE'
      ',CRID_NEW = :CRID_NEW'
      ',CRID_PED01_NEW = :CRID_PED01_NEW'
      ',CRID_LDR_NEW = :CRID_LDR_NEW'
      ''
      ''
      ''
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRNUMCUP = :OLD_CRNUMCUP and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRSTATUS = :OLD_CRSTATUS')
    InsertSQL.Strings = (
      'insert into CADDAR'
      '  (CRCODEMP, CRCODECF, CRNUMERO, CRDESD, CRDUP, CRCODCLI, '
      'CRNUMCUP, CRDATCUP, '
      
        '   CRVALOR, CRVALOR_ACRES,CRTOTNF, CRDTEMIS, CRDTVCTO, CRDTPAG, ' +
        'CRDTBX, '
      'CRLOTSEQ_CP, '
      '   CRNPED, CRORDEM, CRVALPAG, CRCODVEN, CRCODASSE, CRCODV02, '
      'CRCODV03, '
      
        '   CRCODTLV, CRCODCV, CRSTATUS, CROBS, CRDESC, CRDEVOL, CRJUROS,' +
        ' '
      'CRCODBCO, '
      '   CRLOTSEQ_LB, CRLOTE, CRICMSR, CRDESCF, CRDTDESCF, CRJURD, '
      'CRDESCD, CRMULTA, '
      '   CRTARBAN, CRQTDDM, CREMIDUP, CREMIBLQ, CRVALFRE, CRNOSNUM, '
      'CRDNOSNUM, '
      '   CRACEITE, CRESPECIE, CRCODBAR, CRCODDIG, CRNFACUM, CRTIPCOB, '
      'CRDTALT, '
      '   CRUSRALT, CRUSRBX, CRCOMVEN, CRCOMV02, CRCOMV03, CRCOMTEL, '
      'CRCOMSUP, '
      '   CRCOMASSE, CRSEMCOM, CRLOTSEQ_FC, CRCODLDR, CRLOTSEQ_CV, '
      'CRLOTCV, CRLOTSEQ_CV02, '
      '   CRLOTCV02, CRLOTSEQ_CV03, CRLOTCV03, CRLOTSEQ_CS, CRLOTCS, '
      'CRLOTSEQ_CASSE, '
      
        '   CRLOTCASSE, CRCODORI, CRLOTSEQ_CT, CRLOTCT, CRCODUSR, CRHRALT' +
        ', '
      'CRTOTDI01, '
      '   CRTOTDI02, CRTOTDI03, CRTOTDIVL, CRVALDES01, CRVALDES02, '
      'CRVLRDES, CRLEMAT, '
      
        '   CRINST01, CRINST02, CRINST03, CRINST04, CRQTDPARC, CRNUMPARC,' +
        ' '
      'CRVALSEG, '
      '   CRTBCOCOB, CRTOTCGRU, CRTOTSGRU, CRCODV04, CRNR, CRCUSBCO, '
      'CRCOMV04, '
      '   CRLOTSEQ_CV04, CRLOTCV04, CRTOTIPI, CREMIBOR, CRCHD_BANCO, '
      'CRCHD_AGENCIA, '
      '   CRCHD_CC, CRCHD_NUMERO, CRTCB, CRCAUCAO, CRBCOCAU, CRDTCAU, '
      'CRSPC_DTPEN, '
      '   CRSPC_DTNEG, CRSERASA_DTNEG, CRCODCTA, CRNOMCTA, CRCODCC, '
      'CRNOMCC, CRNATDC, '
      '   CRCODDEP, CRNOMDEP, CRDESCMV, CRSEQ, CRDATPED, CRJURDEB, '
      'CRJURDEB_SAC, '
      '   CRCOMIS_EXTRA, CRCX_CODCAI, CRCX_LOTMOV, CRCHD_EMITENTE, '
      'CRFIN_CODFIN, '
      '   CRPFPGTO, CRTABPV, CRCODPV, CRVINC02, CRCODFPGTO, CRLANCFIN, '
      'CRRECFRENTE, '
      '   CRNOMFPGTO, CRCODCAR, CRTITPROT, CRTARPROT, CRTARPROT_DATA, '
      'CRCUSPROT, '
      '   CRCUSPROT_DATA, CRLOTSEQ_EC, CRLOTE_EC'
      ',CRCOMPETENCIA_DTINICIO'
      ',CRCOMPETENCIA_TIPO'
      ',CRCHAVE_ID_ANO'
      ',CRCHAVE_ID'
      ',CRDATAINCLUSAO'
      ',CRQTDAJUSTE'
      ',CREXCLUSIVOPARA'
      ',CRID_NEW'
      ',CRID_PED01_NEW'
      ',CRID_LDR_NEW'
      '   )'
      'values'
      '  (:CRCODEMP, :CRCODECF, :CRNUMERO, :CRDESD, :CRDUP, :CRCODCLI,'
      ':CRNUMCUP,'
      
        '   :CRDATCUP, :CRVALOR,:CRVALOR_ACRES, :CRTOTNF, :CRDTEMIS, :CRD' +
        'TVCTO, :CRDTPAG,'
      ':CRDTBX,'
      '   :CRLOTSEQ_CP, :CRNPED, :CRORDEM, :CRVALPAG, :CRCODVEN,'
      ':CRCODASSE, :CRCODV02,'
      '   :CRCODV03, :CRCODTLV, :CRCODCV, :CRSTATUS, :CROBS, :CRDESC,'
      ':CRDEVOL,'
      
        '   :CRJUROS, :CRCODBCO, :CRLOTSEQ_LB, :CRLOTE, :CRICMSR, :CRDESC' +
        'F,'
      ':CRDTDESCF,'
      '   :CRJURD, :CRDESCD, :CRMULTA, :CRTARBAN, :CRQTDDM, :CREMIDUP,'
      ':CREMIBLQ,'
      '   :CRVALFRE, :CRNOSNUM, :CRDNOSNUM, :CRACEITE, :CRESPECIE,'
      ':CRCODBAR,'
      
        '   :CRCODDIG, :CRNFACUM, :CRTIPCOB, :CRDTALT, :CRUSRALT, :CRUSRB' +
        'X,'
      ':CRCOMVEN,'
      '   :CRCOMV02, :CRCOMV03, :CRCOMTEL, :CRCOMSUP, :CRCOMASSE,'
      ':CRSEMCOM, :CRLOTSEQ_FC,'
      
        '   :CRCODLDR, :CRLOTSEQ_CV, :CRLOTCV, :CRLOTSEQ_CV02, :CRLOTCV02' +
        ','
      ':CRLOTSEQ_CV03,'
      '   :CRLOTCV03, :CRLOTSEQ_CS, :CRLOTCS, :CRLOTSEQ_CASSE,'
      ':CRLOTCASSE, :CRCODORI,'
      '   :CRLOTSEQ_CT, :CRLOTCT, :CRCODUSR, :CRHRALT, :CRTOTDI01,'
      ':CRTOTDI02,'
      '   :CRTOTDI03, :CRTOTDIVL, :CRVALDES01, :CRVALDES02, :CRVLRDES,'
      ':CRLEMAT,'
      
        '   :CRINST01, :CRINST02, :CRINST03, :CRINST04, :CRQTDPARC, :CRNU' +
        'MPARC,'
      
        '   :CRVALSEG, :CRTBCOCOB, :CRTOTCGRU, :CRTOTSGRU, :CRCODV04, :CR' +
        'NR,'
      ':CRCUSBCO,'
      '   :CRCOMV04, :CRLOTSEQ_CV04, :CRLOTCV04, :CRTOTIPI, :CREMIBOR,'
      ':CRCHD_BANCO,'
      '   :CRCHD_AGENCIA, :CRCHD_CC, :CRCHD_NUMERO, :CRTCB, :CRCAUCAO,'
      ':CRBCOCAU,'
      '   :CRDTCAU, :CRSPC_DTPEN, :CRSPC_DTNEG, :CRSERASA_DTNEG,'
      ':CRCODCTA, :CRNOMCTA,'
      
        '   :CRCODCC, :CRNOMCC, :CRNATDC, :CRCODDEP, :CRNOMDEP, :CRDESCMV' +
        ','
      ':CRSEQ,'
      '   :CRDATPED, :CRJURDEB, :CRJURDEB_SAC, :CRCOMIS_EXTRA,'
      ':CRCX_CODCAI, :CRCX_LOTMOV,'
      
        '   :CRCHD_EMITENTE, :CRFIN_CODFIN, :CRPFPGTO, :CRTABPV, :CRCODPV' +
        ','
      ':CRVINC02,'
      
        '   :CRCODFPGTO, :CRLANCFIN, :CRRECFRENTE, :CRNOMFPGTO, :CRCODCAR' +
        ','
      ':CRTITPROT,'
      '   :CRTARPROT, :CRTARPROT_DATA, :CRCUSPROT, :CRCUSPROT_DATA,'
      ':CRLOTSEQ_EC,'
      '   :CRLOTE_EC'
      ',:CRCOMPETENCIA_DTINICIO'
      ',:CRCOMPETENCIA_TIPO'
      ',:CRCHAVE_ID_ANO'
      ',:CRCHAVE_ID'
      ',:CRDATAINCLUSAO'
      ',:CRQTDAJUSTE'
      ',:CREXCLUSIVOPARA'
      ',:CRID_NEW'
      ',:CRID_PED01_NEW'
      ',:CRID_LDR_NEW'
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADDAR'
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRNUMCUP = :OLD_CRNUMCUP and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRSTATUS = :OLD_CRSTATUS')
    Left = 181
    Top = 445
  end
  object U_Dep_Ldr: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDEP'
      'set'
      '  DCODEMP = :DCODEMP,'
      '  DCODDEP = :DCODDEP,'
      '  DNOME = :DNOME,'
      '  DSITCAD = :DSITCAD'
      'where'
      '  DCODEMP = :OLD_DCODEMP and'
      '  DCODDEP = :OLD_DCODDEP')
    InsertSQL.Strings = (
      'insert into CADDEP'
      '  (DCODEMP, DCODDEP, DNOME,DSITCAD)'
      'values'
      '  (:DCODEMP, :DCODDEP, :DNOME, :DSITCAD)')
    DeleteSQL.Strings = (
      'delete from CADDEP'
      'where'
      '  DCODEMP = :OLD_DCODEMP and'
      '  DCODDEP = :OLD_DCODDEP')
    Left = 183
    Top = 486
  end
  object U_ECF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADECF'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCAIXA = :CFCAIXA,'
      '  CFNOME = :CFNOME,'
      '  CFMODELO = :CFMODELO,'
      '  CFPORTA = :CFPORTA,'
      '  CFREDE = :CFREDE,'
      '  CFMENS1 = :CFMENS1,'
      '  CFMENS2 = :CFMENS2,'
      '  CFMENS3 = :CFMENS3,'
      '  CFMENS4 = :CFMENS4,'
      '  CFCRITS = :CFCRITS,'
      '  CFSENHA = :CFSENHA,'
      '  CFLOCAL = :CFLOCAL,'
      '  CFCODALN = :CFCODALN,'
      '  CFCODALR = :CFCODALR,'
      '  CFCODALI = :CFCODALI,'
      '  CFSERIE = :CFSERIE,'
      '  CFMODDOC = :CFMODDOC,'
      '  CFARRED = :CFARRED,'
      '  CFMAPARES = :CFMAPARES,'
      '  CFDADSINT = :CFDADSINT,'
      '  CFFPGTO = :CFFPGTO,'
      '  CFSUP = :CFSUP,'
      '  CFSANGRIA = :CFSANGRIA,'
      '  CFABERTSIS = :CFABERTSIS,'
      '  CFDTULTMOV = :CFDTULTMOV,'
      '  CFDTULTREDZ = :CFDTULTREDZ,'
      '  CFMODPROGPAD = :CFMODPROGPAD'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCAIXA = :OLD_CFCAIXA')
    InsertSQL.Strings = (
      'insert into CADECF'
      
        '  (CFCODEMP, CFCAIXA, CFNOME, CFMODELO, CFPORTA, CFREDE, CFMENS1' +
        ', CFMENS2, '
      
        '   CFMENS3, CFMENS4, CFCRITS, CFSENHA, CFLOCAL, CFCODALN, CFCODA' +
        'LR, CFCODALI, '
      
        '   CFSERIE, CFMODDOC, CFARRED, CFMAPARES, CFDADSINT, CFFPGTO, CF' +
        'SUP, CFSANGRIA, '
      '   CFABERTSIS, CFDTULTMOV, CFDTULTREDZ, CFMODPROGPAD)'
      'values'
      
        '  (:CFCODEMP, :CFCAIXA, :CFNOME, :CFMODELO, :CFPORTA, :CFREDE, :' +
        'CFMENS1, '
      
        '   :CFMENS2, :CFMENS3, :CFMENS4, :CFCRITS, :CFSENHA, :CFLOCAL, :' +
        'CFCODALN, '
      
        '   :CFCODALR, :CFCODALI, :CFSERIE, :CFMODDOC, :CFARRED, :CFMAPAR' +
        'ES, :CFDADSINT, '
      
        '   :CFFPGTO, :CFSUP, :CFSANGRIA, :CFABERTSIS, :CFDTULTMOV, :CFDT' +
        'ULTREDZ, '
      '   :CFMODPROGPAD)')
    DeleteSQL.Strings = (
      'delete from CADECF'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCAIXA = :OLD_CFCAIXA')
    Left = 286
    Top = 8
  end
  object U_Emp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEMP'
      'set'
      '  CODEMP = :CODEMP,'
      '  RAZAO = :RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  RESPONS = :RESPONS,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CGC = :CGC,'
      '  INSCRICAO = :INSCRICAO,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  E_MAIL = :E_MAIL,'
      '  PRESID = :PRESID,'
      '  FONEP = :FONEP,'
      '  DIRETOR = :DIRETOR,'
      '  FONED = :FONED,'
      '  CEP = :CEP,'
      '  CAMINHO = :CAMINHO,'
      '  TELEVENDAS = :TELEVENDAS,'
      '  DATACAD = :DATACAD,'
      '  DATAALT = :DATAALT,'
      '  PA001 = :PA001,'
      '  PA002 = :PA002,'
      '  PA003 = :PA003,'
      '  FONERES = :FONERES,'
      '  FUNCAORES = :FUNCAORES,'
      '  INSCMUNIC = :INSCMUNIC,'
      '  CERTREG = :CERTREG,'
      '  AUTFUNC = :AUTFUNC,'
      '  AUTESP = :AUTESP,'
      '  ALVFUNC = :ALVFUNC,'
      '  JUCEG = :JUCEG,'
      '  RAZAO_CAB = :RAZAO_CAB,'
      '  FANTASIA_CAB = :FANTASIA_CAB,'
      '  CONTADOR = :CONTADOR,'
      '  CRC_CONTADOR = :CRC_CONTADOR,'
      '  FECMEN = :FECMEN,'
      '  BLOQ = :BLOQ,'
      '  STATUS = :STATUS,'
      '  CNPF = :CNPF,'
      '  RG = :RG,'
      '  HOMEPAGE = :HOMEPAGE,'
      '  CODLOC = :CODLOC,'
      '  CODSERV_PREST = :CODSERV_PREST,'
      '  EMP_CNAE = :EMP_CNAE,'
      '  EMP_OPTSIMPLES = :EMP_OPTSIMPLES,'
      '  EMP_INC_CULTURAL = :EMP_INC_CULTURAL,'
      '  EMP_SUFRAMA = :EMP_SUFRAMA,'
      '  EMP_INSC_PISPASEP = :EMP_INSC_PISPASEP,'
      '  EMP_CONT_CPF = :EMP_CONT_CPF,'
      '  EMP_CONT_CNPJ = :EMP_CONT_CNPJ,'
      '  EMP_CONT_CEP = :EMP_CONT_CEP,'
      '  EMP_CONT_ENDER = :EMP_CONT_ENDER,'
      '  EMP_CONT_NUM_END = :EMP_CONT_NUM_END,'
      '  EMP_CONT_COMP_END = :EMP_CONT_COMP_END,'
      '  EMP_CONT_BAIRRO = :EMP_CONT_BAIRRO,'
      '  EMP_CONT_CODLOC = :EMP_CONT_CODLOC,'
      '  EMP_CONT_NOMLOC = :EMP_CONT_NOMLOC,'
      '  EMP_CONT_UF = :EMP_CONT_UF,'
      '  EMP_CONT_FONE = :EMP_CONT_FONE,'
      '  EMP_CONT_FAX = :EMP_CONT_FAX,'
      '  EMP_CONT_EMAIL = :EMP_CONT_EMAIL,'
      '  EMP_IND_NAT_PJ = :EMP_IND_NAT_PJ,'
      '  EMP_IND_ATIV = :EMP_IND_ATIV,'
      '  EMP_CPF_RESPONS = :EMP_CPF_RESPONS'
      '  ,EMP_AUTXML_CNPJCPF = :EMP_AUTXML_CNPJCPF'
      '  ,EMP_WHATSAPP_AUTO = :EMP_WHATSAPP_AUTO'
      '  ,EMP_WHATSAPP_ID = :EMP_WHATSAPP_ID'
      ''
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  RAZAO = :OLD_RAZAO')
    InsertSQL.Strings = (
      'insert into CADEMP'
      
        '  (CODEMP, RAZAO, FANTASIA, ENDERECO, NUMERO, RESPONS, BAIRRO, C' +
        'IDADE, '
      
        '   UF, CGC, INSCRICAO, FONE, FAX, E_MAIL, PRESID, FONEP, DIRETOR' +
        ', FONED, '
      
        '   CEP, CAMINHO, TELEVENDAS, DATACAD, DATAALT, PA001, PA002, PA0' +
        '03, FONERES, '
      
        '   FUNCAORES, INSCMUNIC, CERTREG, AUTFUNC, AUTESP, ALVFUNC, JUCE' +
        'G, RAZAO_CAB, '
      
        '   FANTASIA_CAB, CONTADOR, CRC_CONTADOR, FECMEN, BLOQ, STATUS, C' +
        'NPF, RG, '
      
        '   HOMEPAGE, CODLOC, CODSERV_PREST, EMP_CNAE, EMP_OPTSIMPLES, EM' +
        'P_INC_CULTURAL, '
      
        '   EMP_SUFRAMA, EMP_INSC_PISPASEP, EMP_CONT_CPF, EMP_CONT_CNPJ, ' +
        'EMP_CONT_CEP, '
      
        '   EMP_CONT_ENDER, EMP_CONT_NUM_END, EMP_CONT_COMP_END, EMP_CONT' +
        '_BAIRRO, '
      
        '   EMP_CONT_CODLOC, EMP_CONT_NOMLOC, EMP_CONT_UF, EMP_CONT_FONE,' +
        ' EMP_CONT_FAX, '
      '   EMP_CONT_EMAIL, EMP_IND_NAT_PJ, EMP_IND_ATIV, EMP_CPF_RESPONS'
      '   ,EMP_AUTXML_CNPJCPF'
      ',EMP_WHATSAPP_AUTO,EMP_WHATSAPP_ID'
      ')'
      'values'
      
        '  (:CODEMP, :RAZAO, :FANTASIA, :ENDERECO, :NUMERO, :RESPONS, :BA' +
        'IRRO, :CIDADE,'
      
        '   :UF, :CGC, :INSCRICAO, :FONE, :FAX, :E_MAIL, :PRESID, :FONEP,' +
        ' :DIRETOR,'
      
        '   :FONED, :CEP, :CAMINHO, :TELEVENDAS, :DATACAD, :DATAALT, :PA0' +
        '01, :PA002,'
      
        '   :PA003, :FONERES, :FUNCAORES, :INSCMUNIC, :CERTREG, :AUTFUNC,' +
        ' :AUTESP,'
      
        '   :ALVFUNC, :JUCEG, :RAZAO_CAB, :FANTASIA_CAB, :CONTADOR, :CRC_' +
        'CONTADOR,'
      
        '   :FECMEN, :BLOQ, :STATUS, :CNPF, :RG, :HOMEPAGE, :CODLOC, :COD' +
        'SERV_PREST,'
      
        '   :EMP_CNAE, :EMP_OPTSIMPLES, :EMP_INC_CULTURAL, :EMP_SUFRAMA, ' +
        ':EMP_INSC_PISPASEP,'
      
        '   :EMP_CONT_CPF, :EMP_CONT_CNPJ, :EMP_CONT_CEP, :EMP_CONT_ENDER' +
        ', :EMP_CONT_NUM_END,'
      
        '   :EMP_CONT_COMP_END, :EMP_CONT_BAIRRO, :EMP_CONT_CODLOC, :EMP_' +
        'CONT_NOMLOC,'
      
        '   :EMP_CONT_UF, :EMP_CONT_FONE, :EMP_CONT_FAX, :EMP_CONT_EMAIL,' +
        ' :EMP_IND_NAT_PJ,'
      '   :EMP_IND_ATIV, :EMP_CPF_RESPONS'
      '   ,:EMP_AUTXML_CNPJCPF'
      ',:EMP_WHATSAPP_AUTO,:EMP_WHATSAPP_ID'
      ')')
    DeleteSQL.Strings = (
      'delete from CADEMP'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  RAZAO = :OLD_RAZAO')
    Left = 289
    Top = 94
  end
  object U_Est: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEST'
      'set'
      '  CECODEMP = :CECODEMP,'
      '  CECODPRO = :CECODPRO,'
      '  CESALDO = :CESALDO,'
      '  CESALDOR = :CESALDOR,'
      '  CESALDOC = :CESALDOC,'
      '  CEENTPEN = :CEENTPEN,'
      '  CEDTUSAI = :CEDTUSAI,'
      '  CEDTUENT = :CEDTUENT,'
      '  CESALDOT = :CESALDOT,'
      '  CELOG = :CELOG,'
      '  CESALDO_PRAT = :CESALDO_PRAT,'
      '  CESALDO_DEP = :CESALDO_DEP,'
      '  CESALDO_REP = :CESALDO_REP'
      'where'
      '  CECODEMP = :OLD_CECODEMP and'
      '  CECODPRO = :OLD_CECODPRO')
    InsertSQL.Strings = (
      'insert into CADEST'
      '  (CECODEMP, CECODPRO, CESALDO, CESALDOR, CESALDOC, CEENTPEN, '
      'CEDTUSAI, '
      '   CEDTUENT, CESALDOT, CELOG, CESALDO_PRAT, CESALDO_DEP, '
      'CESALDO_REP)'
      'values'
      
        '  (:CECODEMP, :CECODPRO, :CESALDO, :CESALDOR, :CESALDOC, :CEENTP' +
        'EN, '
      ':CEDTUSAI, '
      '   :CEDTUENT, :CESALDOT, :CELOG, :CESALDO_PRAT, :CESALDO_DEP, '
      ':CESALDO_REP)')
    DeleteSQL.Strings = (
      'delete from CADEST'
      'where'
      '  CECODEMP = :OLD_CECODEMP and'
      '  CECODPRO = :OLD_CECODPRO')
    Left = 289
    Top = 138
  end
  object U_For: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFOR'
      'set'
      '  FCODEMP = :FCODEMP,'
      '  FCODFOR = :FCODFOR,'
      '  FRAZAO = :FRAZAO,'
      '  FDENOM = :FDENOM,'
      '  FNLOG = :FNLOG,'
      '  FNUM = :FNUM,'
      '  FCOMPL = :FCOMPL,'
      '  FBAIRRO = :FBAIRRO,'
      '  FCIDADE = :FCIDADE,'
      '  FUF = :FUF,'
      '  FCODBAI = :FCODBAI,'
      '  FCODLOC = :FCODLOC,'
      '  FCEP = :FCEP,'
      '  FIE = :FIE,'
      '  FEMAIL = :FEMAIL,'
      '  FDTCAD = :FDTCAD,'
      '  FCONT01 = :FCONT01,'
      '  FFONEC01 = :FFONEC01,'
      '  FCONT02 = :FCONT02,'
      '  FFONEC02 = :FFONEC02,'
      '  FCONT03 = :FCONT03,'
      '  FFONEC03 = :FFONEC03,'
      '  FFONE = :FFONE,'
      '  FFAX = :FFAX,'
      '  FOBS1 = :FOBS1,'
      '  FOBS2 = :FOBS2,'
      '  FSTATUS = :FSTATUS,'
      '  FCODEFO = :FCODEFO,'
      '  FCICMSR = :FCICMSR,'
      '  FICMSN = :FICMSN,'
      '  FALIQ = :FALIQ,'
      '  FIVAPOS = :FIVAPOS,'
      '  FIVANEG = :FIVANEG,'
      '  FIVAINA = :FIVAINA,'
      '  FRBCIR = :FRBCIR,'
      '  FRBICN = :FRBICN,'
      '  FICMSC = :FICMSC,'
      '  FICMSD = :FICMSD,'
      '  FTIPOF = :FTIPOF,'
      '  FTDESP = :FTDESP,'
      '  FDIAE = :FDIAE,'
      '  FDIAV = :FDIAV,'
      '  FFREQ = :FFREQ,'
      '  FTIPOI = :FTIPOI,'
      '  FTCALC = :FTCALC,'
      '  FCOMIS = :FCOMIS,'
      '  FPRAZO = :FPRAZO,'
      '  FPRAZOV = :FPRAZOV,'
      '  FDESCMV = :FDESCMV,'
      '  FDESCFINV = :FDESCFINV,'
      '  FCODCCD = :FCODCCD,'
      '  FCODCCC = :FCODCCC,'
      '  FCODDEPD = :FCODDEPD,'
      '  FCODDEPC = :FCODDEPC,'
      '  FDESCMVD = :FDESCMVD,'
      '  FDESCMVC = :FDESCMVC,'
      '  FNOMCCC = :FNOMCCC,'
      '  FNOMCCD = :FNOMCCD,'
      '  FNOMDEPC = :FNOMDEPC,'
      '  FNOMDEPD = :FNOMDEPD,'
      '  FRETLIQ = :FRETLIQ,'
      '  FPADRAO = :FPADRAO,'
      '  FNATDCC = :FNATDCC,'
      '  FNATDCD = :FNATDCD,'
      '  FCFOTRI = :FCFOTRI,'
      '  FCFOST = :FCFOST,'
      '  FRESTFOR = :FRESTFOR,'
      '  FCODGFOR = :FCODGFOR,'
      '  FDESC01V = :FDESC01V,'
      '  FCODUSR_INC = :FCODUSR_INC,'
      '  FDATHOR_INC = :FDATHOR_INC,'
      '  FCODUSR_ALT = :FCODUSR_ALT,'
      '  FDATHOR_ALT = :FDATHOR_ALT,'
      '  FCB_TAM = :FCB_TAM,'
      '  FCB_POSCOD = :FCB_POSCOD,'
      '  FCB_TAMCOD = :FCB_TAMCOD,'
      '  FCB_TAMVCT = :FCB_TAMVCT,'
      '  FCB_POSVCT = :FCB_POSVCT,'
      '  FCB_TAMQTD = :FCB_TAMQTD,'
      '  FCB_POSQTD = :FCB_POSQTD,'
      '  FCB_TAMLOT = :FCB_TAMLOT,'
      '  FCB_POSLOT = :FCB_POSLOT,'
      '  FREPLICARCX = :FREPLICARCX,'
      '  FREP_CODBCO = :FREP_CODBCO,'
      '  FREP_NOMBCO = :FREP_NOMBCO,'
      '  FREP_CODDEP = :FREP_CODDEP,'
      '  FREP_NOMDEP = :FREP_NOMDEP,'
      '  FREP_CODCCU = :FREP_CODCCU,'
      '  FREP_NOMCCU = :FREP_NOMCCU,'
      '  FREP_NATDC = :FREP_NATDC,'
      '  FREP_TIPO = :FREP_TIPO,'
      '  FREP_CODIGO = :FREP_CODIGO,'
      '  FREP_NOMESAC = :FREP_NOMESAC,'
      '  FREP_DESCMV = :FREP_DESCMV,'
      '  FIM = :FIM,'
      '  FCODBLOQ = :FCODBLOQ,'
      '  FDATHOR_BLOQ = :FDATHOR_BLOQ,'
      '  FMOTBLOQ = :FMOTBLOQ,'
      '  FTPPESSOA = :FTPPESSOA,'
      '  FCNPJ_CONSISTE = :FCNPJ_CONSISTE,'
      '  FCGC = :FCGC,'
      '  FVSANIT = :FVSANIT,'
      '  FDTVSANIT = :FDTVSANIT,'
      '  FANVISA_NUMERO = :FANVISA_NUMERO,'
      '  FANVISA_DTVCTO = :FANVISA_DTVCTO,'
      '  FCERTTECNICO_NUM = :FCERTTECNICO_NUM,'
      '  FCERTTECNICO_DTVCTO = :FCERTTECNICO_DTVCTO,'
      '  FNUMAFE = :FNUMAFE,'
      '  FDTVAFE = :FDTVAFE,'
      '  FNUMAE = :FNUMAE,'
      '  FDTVAE = :FDTVAE,'
      '  FNUMCRT = :FNUMCRT,'
      '  FDTVCRT = :FDTVCRT,'
      '  FNUMCBPF = :FNUMCBPF,'
      '  FDTVCBPF = :FDTVCBPF,'
      '  FCBPF_SOLIDO = :FCBPF_SOLIDO,'
      '  FCBPF_LIQUIDO = :FCBPF_LIQUIDO,'
      '  FCBPF_INJETAVEL = :FCBPF_INJETAVEL,'
      '  FCBPF_POMADA = :FCBPF_POMADA,'
      '  FNUMCC = :FNUMCC,'
      '  FDTVCC = :FDTVCC,'
      '  FSITFOR = :FSITFOR,'
      '  FCRT = :FCRT'
      'where'
      '  FCODEMP = :OLD_FCODEMP and'
      '  FCODFOR = :OLD_FCODFOR')
    InsertSQL.Strings = (
      'insert into CADFOR'
      
        '  (FCODEMP, FCODFOR, FRAZAO, FDENOM, FNLOG, FNUM, FCOMPL, FBAIRR' +
        'O,'
      'FCIDADE,'
      
        '   FUF, FCODBAI, FCODLOC, FCEP, FIE, FEMAIL, FDTCAD, FCONT01, FF' +
        'ONEC01,'
      
        '   FCONT02, FFONEC02, FCONT03, FFONEC03, FFONE, FFAX, FOBS1, FOB' +
        'S2,'
      'FSTATUS,'
      
        '   FCODEFO, FCICMSR, FICMSN, FALIQ, FIVAPOS, FIVANEG, FIVAINA, F' +
        'RBCIR,'
      
        '   FRBICN, FICMSC, FICMSD, FTIPOF, FTDESP, FDIAE, FDIAV, FFREQ, ' +
        'FTIPOI,'
      '   FTCALC, FCOMIS, FPRAZO, FPRAZOV, FDESCMV, FDESCFINV, FCODCCD,'
      'FCODCCC,'
      '   FCODDEPD, FCODDEPC, FDESCMVD, FDESCMVC, FNOMCCC, FNOMCCD,'
      'FNOMDEPC,'
      
        '   FNOMDEPD, FRETLIQ, FPADRAO, FNATDCC, FNATDCD, FCFOTRI, FCFOST' +
        ','
      'FRESTFOR,'
      '   FCODGFOR, FDESC01V, FCODUSR_INC, FDATHOR_INC, FCODUSR_ALT,'
      'FDATHOR_ALT,'
      '   FCB_TAM, FCB_POSCOD, FCB_TAMCOD, FCB_TAMVCT, FCB_POSVCT, '
      'FCB_TAMQTD, '
      
        '   FCB_POSQTD, FCB_TAMLOT, FCB_POSLOT, FREPLICARCX, FREP_CODBCO,' +
        ' '
      'FREP_NOMBCO, '
      '   FREP_CODDEP, FREP_NOMDEP, FREP_CODCCU, FREP_NOMCCU, '
      'FREP_NATDC, FREP_TIPO, '
      '   FREP_CODIGO, FREP_NOMESAC, FREP_DESCMV, FIM, FCODBLOQ, '
      'FDATHOR_BLOQ, '
      '   FMOTBLOQ, FTPPESSOA, FCNPJ_CONSISTE, FCGC,'
      '   FVSANIT, FDTVSANIT,'
      '   FANVISA_NUMERO,'
      '   FANVISA_DTVCTO,'
      '   FCERTTECNICO_NUM,'
      '   FCERTTECNICO_DTVCTO,'
      'FNUMAFE,'
      
        '   FDTVAFE, FNUMAE, FDTVAE, FNUMCRT, FDTVCRT, FNUMCBPF, FDTVCBPF' +
        ','
      'FCBPF_SOLIDO,'
      '   FCBPF_LIQUIDO, FCBPF_INJETAVEL, FCBPF_POMADA, FNUMCC, FDTVCC,'
      'FSITFOR,'
      '   FCRT'
      ''
      '   )'
      'values'
      '  (:FCODEMP, :FCODFOR, :FRAZAO, :FDENOM, :FNLOG, :FNUM, :FCOMPL,'
      ':FBAIRRO,'
      
        '   :FCIDADE, :FUF, :FCODBAI, :FCODLOC, :FCEP, :FIE, :FEMAIL, :FD' +
        'TCAD,'
      ':FCONT01,'
      
        '   :FFONEC01, :FCONT02, :FFONEC02, :FCONT03, :FFONEC03, :FFONE, ' +
        ':FFAX,'
      
        '   :FOBS1, :FOBS2, :FSTATUS, :FCODEFO, :FCICMSR, :FICMSN, :FALIQ' +
        ', :FIVAPOS,'
      
        '   :FIVANEG, :FIVAINA, :FRBCIR, :FRBICN, :FICMSC, :FICMSD, :FTIP' +
        'OF, :FTDESP,'
      
        '   :FDIAE, :FDIAV, :FFREQ, :FTIPOI, :FTCALC, :FCOMIS, :FPRAZO, :' +
        'FPRAZOV,'
      
        '   :FDESCMV, :FDESCFINV, :FCODCCD, :FCODCCC, :FCODDEPD, :FCODDEP' +
        'C,'
      ':FDESCMVD,'
      
        '   :FDESCMVC, :FNOMCCC, :FNOMCCD, :FNOMDEPC, :FNOMDEPD, :FRETLIQ' +
        ','
      ':FPADRAO,'
      '   :FNATDCC, :FNATDCD, :FCFOTRI, :FCFOST, :FRESTFOR, :FCODGFOR,'
      ':FDESC01V,'
      
        '   :FCODUSR_INC, :FDATHOR_INC, :FCODUSR_ALT, :FDATHOR_ALT, :FCB_' +
        'TAM,'
      ':FCB_POSCOD,'
      
        '   :FCB_TAMCOD, :FCB_TAMVCT, :FCB_POSVCT, :FCB_TAMQTD, :FCB_POSQ' +
        'TD,'
      ':FCB_TAMLOT,'
      '   :FCB_POSLOT, :FREPLICARCX, :FREP_CODBCO, :FREP_NOMBCO,'
      ':FREP_CODDEP,'
      '   :FREP_NOMDEP, :FREP_CODCCU, :FREP_NOMCCU, :FREP_NATDC,'
      ':FREP_TIPO, :FREP_CODIGO,'
      '   :FREP_NOMESAC, :FREP_DESCMV, :FIM, :FCODBLOQ, :FDATHOR_BLOQ,'
      ':FMOTBLOQ,'
      '   :FTPPESSOA, :FCNPJ_CONSISTE, :FCGC,'
      '   :FVSANIT,'
      '   :FDTVSANIT,'
      '   :FANVISA_NUMERO,'
      '   :FANVISA_DTVCTO,'
      '   :FCERTTECNICO_NUM,'
      '   :FCERTTECNICO_DTVCTO,'
      '   :FNUMAFE,'
      '   :FDTVAFE, :FNUMAE, :FDTVAE, :FNUMCRT, :FDTVCRT, :FNUMCBPF,'
      ':FDTVCBPF,'
      
        '   :FCBPF_SOLIDO, :FCBPF_LIQUIDO, :FCBPF_INJETAVEL, :FCBPF_POMAD' +
        'A,'
      ':FNUMCC,'
      '   :FDTVCC, :FSITFOR, :FCRT)')
    DeleteSQL.Strings = (
      'delete from CADFOR'
      'where'
      '  FCODEMP = :OLD_FCODEMP and'
      '  FCODFOR = :OLD_FCODFOR')
    Left = 289
    Top = 189
  end
  object U_Funcao: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCAR'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODCAR = :CODCAR,'
      '  NOMCAR = :NOMCAR,'
      '  TIPACE = :TIPACE,'
      '  PREVTAB = :PREVTAB,'
      '  CG_DATHOR_INC = :CG_DATHOR_INC,'
      '  CG_CODUSR_INC = :CG_CODUSR_INC,'
      '  CG_DATHOR_ALT = :CG_DATHOR_ALT,'
      '  CG_CODUSR_ALT = :CG_CODUSR_ALT,'
      '  CG_DATHOR_REP = :CG_DATHOR_REP,'
      '  CG_NIVEL_LIBERACAO = :CG_NIVEL_LIBERACAO'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCAR = :OLD_CODCAR')
    InsertSQL.Strings = (
      'insert into CADCAR'
      '  (CODEMP, CODCAR, NOMCAR, TIPACE, PREVTAB, CG_DATHOR_INC, '
      'CG_CODUSR_INC, '
      
        '   CG_DATHOR_ALT, CG_CODUSR_ALT, CG_DATHOR_REP,CG_NIVEL_LIBERACA' +
        'O)'
      'values'
      '  (:CODEMP, :CODCAR, :NOMCAR, :TIPACE, :PREVTAB, :CG_DATHOR_INC,'
      ':CG_CODUSR_INC,'
      
        '   :CG_DATHOR_ALT, :CG_CODUSR_ALT, :CG_DATHOR_REP,:CG_NIVEL_LIBE' +
        'RACAO)')
    DeleteSQL.Strings = (
      'delete from CADCAR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCAR = :OLD_CODCAR')
    Left = 249
    Top = 360
  end
  object U_Gen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGEN'
      'set'
      '  CGCODEMP = :CGCODEMP,'
      '  CGCODDCB = :CGCODDCB,'
      '  CGNOME = :CGNOME'
      'where'
      '  CGCODEMP = :OLD_CGCODEMP and'
      '  CGCODDCB = :OLD_CGCODDCB')
    InsertSQL.Strings = (
      'insert into CADGEN'
      '  (CGCODEMP, CGCODDCB, CGNOME)'
      'values'
      '  (:CGCODEMP, :CGCODDCB, :CGNOME)')
    DeleteSQL.Strings = (
      'delete from CADGEN'
      'where'
      '  CGCODEMP = :OLD_CGCODEMP and'
      '  CGCODDCB = :OLD_CGCODDCB')
    Left = 289
    Top = 318
  end
  object U_GPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGRU'
      'set'
      '  GRCODEMP = :GRCODEMP,'
      '  GRCODGRU = :GRCODGRU,'
      '  GRNOME = :GRNOME,'
      '  GRNOMEABREV = :GRNOMEABREV,'
      '  GRPERCFRE = :GRPERCFRE,'
      '  GRPERCCOMIS = :GRPERCCOMIS,'
      '  GRTEXTO = :GRTEXTO,'
      '  GRDATHOR_INC = :GRDATHOR_INC,'
      '  GRCODUSR_INC = :GRCODUSR_INC,'
      '  GRDATHOR_ALT = :GRDATHOR_ALT,'
      '  GRCODUSR_ALT = :GRCODUSR_ALT,'
      '  GRPERCDESC = :GRPERCDESC'
      'where'
      '  GRCODEMP = :OLD_GRCODEMP and'
      '  GRCODGRU = :OLD_GRCODGRU')
    InsertSQL.Strings = (
      'insert into CADGRU'
      '  (GRCODEMP, GRCODGRU, GRNOME, GRNOMEABREV, GRPERCFRE, '
      'GRPERCCOMIS, GRTEXTO, '
      '   GRDATHOR_INC, GRCODUSR_INC, GRDATHOR_ALT, GRCODUSR_ALT, '
      'GRPERCDESC)'
      'values'
      '  (:GRCODEMP, :GRCODGRU, :GRNOME, :GRNOMEABREV, :GRPERCFRE, '
      ':GRPERCCOMIS, '
      '   :GRTEXTO, :GRDATHOR_INC, :GRCODUSR_INC, :GRDATHOR_ALT, '
      ':GRCODUSR_ALT, '
      '   :GRPERCDESC)')
    DeleteSQL.Strings = (
      'delete from CADGRU'
      'where'
      '  GRCODEMP = :OLD_GRCODEMP and'
      '  GRCODGRU = :OLD_GRCODGRU')
    Left = 290
    Top = 362
  end
  object U_Gru: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGRU'
      'set'
      '  GRCODEMP = :GRCODEMP,'
      '  GRCODGRU = :GRCODGRU,'
      '  GRNOME = :GRNOME,'
      '  GRNOMEABREV = :GRNOMEABREV,'
      '  GRPERCFRE = :GRPERCFRE,'
      '  GRPERCCOMIS = :GRPERCCOMIS,'
      '  GRDATHOR_INC = :GRDATHOR_INC,'
      '  GRCODUSR_INC = :GRCODUSR_INC,'
      '  GRDATHOR_ALT = :GRDATHOR_ALT,'
      '  GRCODUSR_ALT = :GRCODUSR_ALT,'
      '  GRTEXTO = :GRTEXTO'
      'where'
      '  GRCODEMP = :OLD_GRCODEMP and'
      '  GRCODGRU = :OLD_GRCODGRU')
    InsertSQL.Strings = (
      'insert into CADGRU'
      '  (GRCODEMP, GRCODGRU, GRNOME, GRNOMEABREV, GRPERCFRE, '
      'GRPERCCOMIS, GRDATHOR_INC, '
      '   GRCODUSR_INC, GRDATHOR_ALT, GRCODUSR_ALT, GRTEXTO)'
      'values'
      '  (:GRCODEMP, :GRCODGRU, :GRNOME, :GRNOMEABREV, :GRPERCFRE, '
      ':GRPERCCOMIS, '
      '   :GRDATHOR_INC, :GRCODUSR_INC, :GRDATHOR_ALT, :GRCODUSR_ALT, '
      ':GRTEXTO)')
    DeleteSQL.Strings = (
      'delete from CADGRU'
      'where'
      '  GRCODEMP = :OLD_GRCODEMP and'
      '  GRCODGRU = :OLD_GRCODGRU')
    Left = 289
    Top = 406
  end
  object U_IDV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIDV'
      'set'
      '  IDCODEMP = :IDCODEMP,'
      '  IDNOMREL = :IDNOMREL,'
      '  IDLINHA1 = :IDLINHA1,'
      '  IDCOL1 = :IDCOL1,'
      '  IDPULAR1 = :IDPULAR1,'
      '  IDLINHA2 = :IDLINHA2,'
      '  IDCOL2 = :IDCOL2,'
      '  IDPULAR2 = :IDPULAR2,'
      '  IDPULAR3 = :IDPULAR3,'
      '  IDQTDCOL = :IDQTDCOL,'
      '  IDQTDCP = :IDQTDCP,'
      '  IDQTDJ = :IDQTDJ,'
      '  IDFPADRAO = :IDFPADRAO,'
      '  IDQTDLPP = :IDQTDLPP'
      'where'
      '  IDCODEMP = :OLD_IDCODEMP and'
      '  IDNOMREL = :OLD_IDNOMREL')
    InsertSQL.Strings = (
      'insert into CADIDV'
      
        '  (IDCODEMP, IDNOMREL, IDLINHA1, IDCOL1, IDPULAR1, IDLINHA2, IDC' +
        'OL2, '
      'IDPULAR2, '
      '   IDPULAR3, IDQTDCOL, IDQTDCP, IDQTDJ, IDFPADRAO, IDQTDLPP)'
      'values'
      
        '  (:IDCODEMP, :IDNOMREL, :IDLINHA1, :IDCOL1, :IDPULAR1, :IDLINHA' +
        '2, :IDCOL2, '
      
        '   :IDPULAR2, :IDPULAR3, :IDQTDCOL, :IDQTDCP, :IDQTDJ, :IDFPADRA' +
        'O, '
      ':IDQTDLPP)')
    DeleteSQL.Strings = (
      'delete from CADIDV'
      'where'
      '  IDCODEMP = :OLD_IDCODEMP and'
      '  IDNOMREL = :OLD_IDNOMREL')
    Left = 289
    Top = 450
  end
  object U_JD01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADJD01'
      'set'
      '  J1CODEMP = :J1CODEMP,'
      '  J1TIPO = :J1TIPO,'
      '  J1LOTE = :J1LOTE,'
      '  J1DESC = :J1DESC,'
      '  J1DATAR = :J1DATAR,'
      '  J1FATOR = :J1FATOR'
      'where'
      '  J1CODEMP = :OLD_J1CODEMP and'
      '  J1TIPO = :OLD_J1TIPO and'
      '  J1LOTE = :OLD_J1LOTE')
    InsertSQL.Strings = (
      'insert into CADJD01'
      '  (J1CODEMP, J1TIPO, J1LOTE, J1DESC, J1DATAR, J1FATOR)'
      'values'
      '  (:J1CODEMP, :J1TIPO, :J1LOTE, :J1DESC, :J1DATAR, :J1FATOR)')
    DeleteSQL.Strings = (
      'delete from CADJD01'
      'where'
      '  J1CODEMP = :OLD_J1CODEMP and'
      '  J1TIPO = :OLD_J1TIPO and'
      '  J1LOTE = :OLD_J1LOTE')
    Left = 289
    Top = 495
  end
  object U_JD02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADJD02'
      'set'
      '  J2CODEMP = :J2CODEMP,'
      '  J2TIPO = :J2TIPO,'
      '  J2LOTE = :J2LOTE,'
      '  J2SEQ = :J2SEQ,'
      '  J2DESC = :J2DESC,'
      '  J2VALOR = :J2VALOR,'
      '  J2DATA = :J2DATA'
      'where'
      '  J2CODEMP = :OLD_J2CODEMP and'
      '  J2TIPO = :OLD_J2TIPO and'
      '  J2LOTE = :OLD_J2LOTE and'
      '  J2SEQ = :OLD_J2SEQ')
    InsertSQL.Strings = (
      'insert into CADJD02'
      '  (J2CODEMP, J2TIPO, J2LOTE, J2SEQ, J2DESC, J2VALOR, J2DATA)'
      'values'
      
        '  (:J2CODEMP, :J2TIPO, :J2LOTE, :J2SEQ, :J2DESC, :J2VALOR, :J2DA' +
        'TA)')
    DeleteSQL.Strings = (
      'delete from CADJD02'
      'where'
      '  J2CODEMP = :OLD_J2CODEMP and'
      '  J2TIPO = :OLD_J2TIPO and'
      '  J2LOTE = :OLD_J2LOTE and'
      '  J2SEQ = :OLD_J2SEQ')
    Left = 393
    Top = 10
  end
  object U_LC2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLC2'
      'set'
      '  LC2_CODEMP = :LC2_CODEMP,'
      '  LC2_CHAVE = :LC2_CHAVE,'
      '  LC2_ITEM = :LC2_ITEM,'
      '  LC2_CODPRO = :LC2_CODPRO,'
      '  LC2_QTD = :LC2_QTD,'
      '  LC2_UND = :LC2_UND,'
      '  LC2_NOM01 = :LC2_NOM01,'
      '  LC2_NOM02 = :LC2_NOM02,'
      '  LC2_NOM03 = :LC2_NOM03,'
      '  LC2_NOM04 = :LC2_NOM04,'
      '  LC2_NOM05 = :LC2_NOM05,'
      '  LC2_NOM06 = :LC2_NOM06,'
      '  LC2_NOM07 = :LC2_NOM07,'
      '  LC2_NOM08 = :LC2_NOM08,'
      '  LC2_NOM09 = :LC2_NOM09,'
      '  LC2_NOM10 = :LC2_NOM10,'
      '  LC2_MARCA = :LC2_MARCA,'
      '  LC2_RMS = :LC2_RMS,'
      '  LC2_PCOAV = :LC2_PCOAV,'
      '  LC2_PCOPZ = :LC2_PCOPZ,'
      '  LC2_LOTSEQ = :LC2_LOTSEQ,'
      '  LC2_LOTEPREGAO = :LC2_LOTEPREGAO,'
      '  LC2_QTDENV = :LC2_QTDENV,'
      '  LC2_GANHOU = :LC2_GANHOU'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_QTD = :OLD_LC2_QTD and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    InsertSQL.Strings = (
      'insert into CADLC2'
      
        '  (LC2_CODEMP, LC2_CHAVE, LC2_ITEM, LC2_CODPRO, LC2_QTD, LC2_UND' +
        ', '
      'LC2_NOM01, '
      '   LC2_NOM02, LC2_NOM03, LC2_NOM04, LC2_NOM05, LC2_NOM06, '
      'LC2_NOM07, LC2_NOM08, '
      
        '   LC2_NOM09, LC2_NOM10, LC2_MARCA, LC2_RMS, LC2_PCOAV, LC2_PCOP' +
        'Z, '
      'LC2_LOTSEQ, '
      '   LC2_LOTEPREGAO, LC2_QTDENV, LC2_GANHOU)'
      'values'
      '  (:LC2_CODEMP, :LC2_CHAVE, :LC2_ITEM, :LC2_CODPRO, :LC2_QTD, '
      ':LC2_UND, '
      '   :LC2_NOM01, :LC2_NOM02, :LC2_NOM03, :LC2_NOM04, :LC2_NOM05, '
      ':LC2_NOM06, '
      '   :LC2_NOM07, :LC2_NOM08, :LC2_NOM09, :LC2_NOM10, :LC2_MARCA, '
      ':LC2_RMS, '
      
        '   :LC2_PCOAV, :LC2_PCOPZ, :LC2_LOTSEQ, :LC2_LOTEPREGAO, :LC2_QT' +
        'DENV, '
      ':LC2_GANHOU)')
    DeleteSQL.Strings = (
      'delete from CADLC2'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_QTD = :OLD_LC2_QTD and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    Left = 401
    Top = 92
  end
  object U_LDR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLDR'
      'set'
      '  CODEMP = :CODEMP,'
      '  DATADP = :DATADP,'
      '  LOTSEQ = :LOTSEQ,'
      '  CODLDR = :CODLDR,'
      '  DATAREAL = :DATAREAL,'
      '  DATAREF = :DATAREF,'
      '  VALORP = :VALORP,'
      '  VALORR = :VALORR,'
      '  CODBCO = :CODBCO,'
      '  CODCC = :CODCC,'
      '  CODDEP = :CODDEP,'
      '  NATDC = :NATDC,'
      '  DESCMV = :DESCMV,'
      '  NUMDOC = :NUMDOC,'
      '  NUMDOC2 = :NUMDOC2,'
      '  STATUS = :STATUS,'
      '  ORIGEM = :ORIGEM,'
      '  LOCDEP = :LOCDEP,'
      '  TIPO = :TIPO,'
      '  CODIGO = :CODIGO,'
      '  USRALT = :USRALT,'
      '  DTALT = :DTALT,'
      '  DATLAN = :DATLAN,'
      '  HRALT = :HRALT,'
      '  COMPENS = :COMPENS,'
      '  USREXC = :USREXC,'
      '  DTHREXC = :DTHREXC,'
      '  NOMDEP = :NOMDEP,'
      '  NOMBCO = :NOMBCO,'
      '  NOMCCU = :NOMCCU,'
      '  NOME = :NOME,'
      '  DTCOMP = :DTCOMP,'
      '  LOTMOV = :LOTMOV,'
      '  LEMAT = :LEMAT,'
      '  VINCULO = :VINCULO,'
      '  DTSALDO = :DTSALDO,'
      '  FC_OBSFIN = :FC_OBSFIN'
      ',FC_COMPETENCIA_DTINICIO=:FC_COMPETENCIA_DTINICIO'
      ',FC_COMPETENCIA_TIPO=:FC_COMPETENCIA_TIPO'
      ',LDR_ID_NEW = :LDR_ID_NEW'
      ',DATCONC = :DATCONC'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DATADP = :OLD_DATADP and'
      '  CODLDR = :OLD_CODLDR')
    InsertSQL.Strings = (
      'insert into CADLDR'
      '  (CODEMP, DATADP, LOTSEQ, CODLDR, DATAREAL, DATAREF, VALORP, '
      'VALORR, CODBCO, '
      
        '   CODCC, CODDEP, NATDC, DESCMV, NUMDOC, NUMDOC2, STATUS, ORIGEM' +
        ', '
      'LOCDEP, '
      '   TIPO, CODIGO, USRALT, DTALT, DATLAN, HRALT, COMPENS, USREXC, '
      'DTHREXC, '
      
        '   NOMDEP, NOMBCO, NOMCCU, NOME, DTCOMP, LOTMOV, LEMAT, VINCULO,' +
        ' '
      'DTSALDO, '
      '   FC_OBSFIN'
      ''
      ',FC_COMPETENCIA_DTINICIO'
      ',FC_COMPETENCIA_TIPO'
      ',LDR_ID_NEW,DATCONC'
      '   )'
      'values'
      
        '  (:CODEMP, :DATADP, :LOTSEQ, :CODLDR, :DATAREAL, :DATAREF, :VAL' +
        'ORP,'
      ':VALORR,'
      '   :CODBCO, :CODCC, :CODDEP, :NATDC, :DESCMV, :NUMDOC, :NUMDOC2,'
      ':STATUS,'
      
        '   :ORIGEM, :LOCDEP, :TIPO, :CODIGO, :USRALT, :DTALT, :DATLAN, :' +
        'HRALT,'
      
        '   :COMPENS, :USREXC, :DTHREXC, :NOMDEP, :NOMBCO, :NOMCCU, :NOME' +
        ','
      ':DTCOMP,'
      '   :LOTMOV, :LEMAT, :VINCULO, :DTSALDO, :FC_OBSFIN'
      ',:FC_COMPETENCIA_DTINICIO'
      ',:FC_COMPETENCIA_TIPO'
      ',:LDR_ID_NEW'
      ',:DATCONC'
      '   )')
    DeleteSQL.Strings = (
      'delete from CADLDR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DATADP = :OLD_DATADP and'
      '  CODLDR = :OLD_CODLDR')
    Left = 401
    Top = 136
  end
  object U_LGC: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLGC'
      'set'
      '  CLCODEMP = :CLCODEMP,'
      '  CLCODPRO = :CLCODPRO,'
      '  CLDTVCTO = :CLDTVCTO,'
      '  CLNUMERO = :CLNUMERO,'
      '  CLQTD = :CLQTD,'
      '  CLQTDR = :CLQTDR,'
      '  CLQTDC = :CLQTDC,'
      '  CLPRECO1 = :CLPRECO1,'
      '  CLPRECO2 = :CLPRECO2,'
      '  CLPRECO3 = :CLPRECO3,'
      '  CLPRECOA1 = :CLPRECOA1,'
      '  CLPRECOA2 = :CLPRECOA2,'
      '  CLPRECOA3 = :CLPRECOA3,'
      '  CLPCUSTO = :CLPCUSTO,'
      '  CLESTMAX = :CLESTMAX,'
      '  CLESTMIN = :CLESTMIN,'
      '  CLDTUATP1 = :CLDTUATP1,'
      '  CLDTUATP2 = :CLDTUATP2,'
      '  CLDTUATP3 = :CLDTUATP3,'
      '  CLQTDT = :CLQTDT,'
      '  CLQTD_PRAT = :CLQTD_PRAT,'
      '  CLQTD_DEP = :CLQTD_DEP,'
      '  CLQTD_REP = :CLQTD_REP,'
      '  CLLOTE_RE = :CLLOTE_RE,'
      '  CLFILIAL = :CLFILIAL,'
      '  CLQTD_ANALISE = :CLQTD_ANALISE'
      'where'
      '  CLCODEMP = :OLD_CLCODEMP and'
      '  CLCODPRO = :OLD_CLCODPRO and'
      '  CLDTVCTO = :OLD_CLDTVCTO and'
      '  CLNUMERO = :OLD_CLNUMERO')
    InsertSQL.Strings = (
      'insert into CADLGC'
      
        '  (CLCODEMP, CLCODPRO, CLDTVCTO, CLNUMERO, CLQTD, CLQTDR, CLQTDC' +
        ', '
      'CLPRECO1, '
      
        '   CLPRECO2, CLPRECO3, CLPRECOA1, CLPRECOA2, CLPRECOA3, CLPCUSTO' +
        ', '
      'CLESTMAX, '
      
        '   CLESTMIN, CLDTUATP1, CLDTUATP2, CLDTUATP3, CLQTDT, CLQTD_PRAT' +
        ', '
      'CLQTD_DEP, '
      '   CLQTD_REP, CLLOTE_RE, CLFILIAL, CLQTD_ANALISE)'
      'values'
      '  (:CLCODEMP, :CLCODPRO, :CLDTVCTO, :CLNUMERO, :CLQTD, :CLQTDR, '
      ':CLQTDC, '
      '   :CLPRECO1, :CLPRECO2, :CLPRECO3, :CLPRECOA1, :CLPRECOA2, '
      ':CLPRECOA3, '
      '   :CLPCUSTO, :CLESTMAX, :CLESTMIN, :CLDTUATP1, :CLDTUATP2, '
      ':CLDTUATP3, '
      
        '   :CLQTDT, :CLQTD_PRAT, :CLQTD_DEP, :CLQTD_REP, :CLLOTE_RE, :CL' +
        'FILIAL, '
      '   :CLQTD_ANALISE)')
    DeleteSQL.Strings = (
      'delete from CADLGC'
      'where'
      '  CLCODEMP = :OLD_CLCODEMP and'
      '  CLCODPRO = :OLD_CLCODPRO and'
      '  CLDTVCTO = :OLD_CLDTVCTO and'
      '  CLNUMERO = :OLD_CLNUMERO')
    Left = 401
    Top = 179
  end
  object U_Loc: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLOC'
      'set'
      '  LCODEMP = :LCODEMP,'
      '  LCODLOC = :LCODLOC,'
      '  LNOME = :LNOME,'
      '  LUF = :LUF,'
      '  LCEP = :LCEP,'
      '  LSTATUS = :LSTATUS,'
      '  LCODMUN_IBGE = :LCODMUN_IBGE,'
      '  LCODMUN_PREF = :LCODMUN_PREF,'
      '  LISSQN_ALIQ = :LISSQN_ALIQ,'
      '  LINSS_ALIQ = :LINSS_ALIQ,'
      '  LINSS_RED = :LINSS_RED,'
      '  LIRRF_ALIQ = :LIRRF_ALIQ,'
      '  LIRRF_RED = :LIRRF_RED,'
      '  LCODUSR_INC = :LCODUSR_INC,'
      '  LDATHOR_INC = :LDATHOR_INC,'
      '  LCODUSR_ALT = :LCODUSR_ALT,'
      '  LDATHOR_ALT = :LDATHOR_ALT,'
      '  LEXP_EMBARGUE_UF = :LEXP_EMBARGUE_UF,'
      '  LEXP_EMBARGUE_LOCAL = :LEXP_EMBARGUE_LOCAL'
      '  ,LIBS_ALIQ = :LIBS_ALIQ'
      'where'
      '  LCODEMP = :OLD_LCODEMP and'
      '  LCODLOC = :OLD_LCODLOC')
    InsertSQL.Strings = (
      'insert into CADLOC'
      '  (LCODEMP, LCODLOC, LNOME, LUF, LCEP, LSTATUS, LCODMUN_IBGE, '
      '  LCODMUN_PREF,'
      ''
      'LISSQN_ALIQ, '
      '   LINSS_ALIQ, LINSS_RED, LIRRF_ALIQ, LIRRF_RED, LCODUSR_INC, '
      'LDATHOR_INC, '
      '   LCODUSR_ALT, LDATHOR_ALT, LEXP_EMBARGUE_UF, '
      'LEXP_EMBARGUE_LOCAL'
      ',LIBS_ALIQ'
      ')'
      'values'
      
        '  (:LCODEMP, :LCODLOC, :LNOME, :LUF, :LCEP, :LSTATUS, :LCODMUN_I' +
        'BGE,'
      '  :LCODMUN_PREF,'
      ''
      ':LISSQN_ALIQ,'
      
        '   :LINSS_ALIQ, :LINSS_RED, :LIRRF_ALIQ, :LIRRF_RED, :LCODUSR_IN' +
        'C,'
      ':LDATHOR_INC,'
      '   :LCODUSR_ALT, :LDATHOR_ALT, :LEXP_EMBARGUE_UF,'
      ':LEXP_EMBARGUE_LOCAL'
      ',:LIBS_ALIQ)')
    DeleteSQL.Strings = (
      'delete from CADLOC'
      'where'
      '  LCODEMP = :OLD_LCODEMP and'
      '  LCODLOC = :OLD_LCODLOC')
    Left = 401
    Top = 222
  end
  object U_NE: TUpdateSQL
    ModifySQL.Strings = (
      'update CADNE'
      'set'
      '  NECODEMP = :NECODEMP,'
      '  NECODFOR = :NECODFOR,'
      '  NENUMERO = :NENUMERO,'
      '  NESERIE = :NESERIE,'
      '  NESUBSER = :NESUBSER,'
      '  NEMODELO = :NEMODELO,'
      '  NECFO = :NECFO,'
      '  NEDTENT = :NEDTENT,'
      '  NEDTEMIS = :NEDTEMIS,'
      '  NEBASEN = :NEBASEN,'
      '  NEICMSN = :NEICMSN,'
      '  NEBASER = :NEBASER,'
      '  NEICMSR = :NEICMSR,'
      '  NEFRETE = :NEFRETE,'
      '  NESEG = :NESEG,'
      '  NEOUTRAS = :NEOUTRAS,'
      '  NEIPI = :NEIPI,'
      '  NETOTMER = :NETOTMER,'
      '  NETOTNOT = :NETOTNOT,'
      '  NETOTDES = :NETOTDES,'
      '  NETOTPOS = :NETOTPOS,'
      '  NETOTNEG = :NETOTNEG,'
      '  NETOTINA = :NETOTINA,'
      '  NECHAVEP = :NECHAVEP,'
      '  NEALIQ = :NEALIQ,'
      '  NETIPO = :NETIPO,'
      '  NECODUSR = :NECODUSR,'
      '  NEDTALT = :NEDTALT,'
      '  NEHRALT = :NEHRALT,'
      '  NESTATUS = :NESTATUS,'
      '  NEIPIFRETE = :NEIPIFRETE,'
      '  NELOTSEQ_CP = :NELOTSEQ_CP,'
      '  NEISENTAS = :NEISENTAS,'
      '  NEFRETEPC = :NEFRETEPC,'
      '  NELEMAT = :NELEMAT,'
      '  NEOUTNINC = :NEOUTNINC,'
      '  NEOUTDESP = :NEOUTDESP,'
      '  NEAVAP = :NEAVAP,'
      '  NESIV_FRETE = :NESIV_FRETE,'
      '  NESIV_DARE = :NESIV_DARE,'
      '  NESIV_OUTROS = :NESIV_OUTROS,'
      '  NECFOP_COMP = :NECFOP_COMP,'
      '  NEOUTRAS_ALIQ = :NEOUTRAS_ALIQ,'
      '  NEOUTRAS_IMP = :NEOUTRAS_IMP,'
      '  NEALIQ_FRETE = :NEALIQ_FRETE,'
      '  NEICMS_FRETE = :NEICMS_FRETE,'
      '  NEPIPIFRETE = :NEPIPIFRETE,'
      '  NEVL_PIS = :NEVL_PIS,'
      '  NEVL_COFINS = :NEVL_COFINS,'
      '  NENFE_CHAVE = :NENFE_CHAVE,'
      '  NEENERGIA_COD_CONS = :NEENERGIA_COD_CONS,'
      '  NEENERGIA_COD_INF = :NEENERGIA_COD_INF,'
      '  NEENERGIA_TP_LIGACAO = :NEENERGIA_TP_LIGACAO,'
      '  NEENERGIA_GRUPO_TENSAO = :NEENERGIA_GRUPO_TENSAO,'
      '  NECHAVEP_NIVEL = :NECHAVEP_NIVEL,'
      '  NECODLOC_ORI = :NECODLOC_ORI,'
      '  NECODLOC_ORI = :NECODLOC_DEST,'
      '  NEID_NEW = :NEID_NEW,'
      '  NEID_PF01_NEW = :NEID_PF01_NEW'
      'where'
      '  NECODEMP = :OLD_NECODEMP and'
      '  NECODFOR = :OLD_NECODFOR and'
      '  NENUMERO = :OLD_NENUMERO and'
      '  NESERIE = :OLD_NESERIE and'
      '  NESUBSER = :OLD_NESUBSER and'
      '  NEMODELO = :OLD_NEMODELO and'
      '  NECFO = :OLD_NECFO and'
      '  NEDTENT = :OLD_NEDTENT and'
      '  NEDTEMIS = :OLD_NEDTEMIS')
    InsertSQL.Strings = (
      'insert into CADNE'
      '  (NECODEMP, NECODFOR, NENUMERO, NESERIE, NESUBSER, NEMODELO, '
      'NECFO, NEDTENT, '
      
        '   NEDTEMIS, NEBASEN, NEICMSN, NEBASER, NEICMSR, NEFRETE, NESEG,' +
        ' '
      'NEOUTRAS, '
      '   NEIPI, NETOTMER, NETOTNOT, NETOTDES, NETOTPOS, NETOTNEG, '
      'NETOTINA, NECHAVEP, '
      
        '   NEALIQ, NETIPO, NECODUSR, NEDTALT, NEHRALT, NESTATUS, NEIPIFR' +
        'ETE, '
      'NELOTSEQ_CP, '
      '   NEISENTAS, NEFRETEPC, NELEMAT, NEOUTNINC, NEOUTDESP, NEAVAP, '
      'NESIV_FRETE, '
      '   NESIV_DARE, NESIV_OUTROS, NECFOP_COMP, NEOUTRAS_ALIQ, '
      'NEOUTRAS_IMP, '
      
        '   NEALIQ_FRETE, NEICMS_FRETE, NEPIPIFRETE, NEVL_PIS, NEVL_COFIN' +
        'S, '
      'NENFE_CHAVE, '
      '   NEENERGIA_COD_CONS, NEENERGIA_COD_INF, NEENERGIA_TP_LIGACAO, '
      'NEENERGIA_GRUPO_TENSAO, '
      '   NECHAVEP_NIVEL,'
      '   NECODLOC_ORI,'
      '   NECODLOC_DEST'
      '   ,NEID_NEW'
      '   ,NEID_PF01_NEW'
      '   )'
      'values'
      '  (:NECODEMP, :NECODFOR, :NENUMERO, :NESERIE, :NESUBSER,'
      ':NEMODELO, :NECFO,'
      '   :NEDTENT, :NEDTEMIS, :NEBASEN, :NEICMSN, :NEBASER, :NEICMSR,'
      ':NEFRETE,'
      '   :NESEG, :NEOUTRAS, :NEIPI, :NETOTMER, :NETOTNOT, :NETOTDES,'
      ':NETOTPOS,'
      '   :NETOTNEG, :NETOTINA, :NECHAVEP, :NEALIQ, :NETIPO, :NECODUSR,'
      ':NEDTALT,'
      '   :NEHRALT, :NESTATUS, :NEIPIFRETE, :NELOTSEQ_CP, :NEISENTAS,'
      ':NEFRETEPC,'
      '   :NELEMAT, :NEOUTNINC, :NEOUTDESP, :NEAVAP, :NESIV_FRETE,'
      ':NESIV_DARE,'
      '   :NESIV_OUTROS, :NECFOP_COMP, :NEOUTRAS_ALIQ, :NEOUTRAS_IMP,'
      ':NEALIQ_FRETE,'
      
        '   :NEICMS_FRETE, :NEPIPIFRETE, :NEVL_PIS, :NEVL_COFINS, :NENFE_' +
        'CHAVE,'
      '   :NEENERGIA_COD_CONS, :NEENERGIA_COD_INF,'
      ':NEENERGIA_TP_LIGACAO, :NEENERGIA_GRUPO_TENSAO,'
      '   :NECHAVEP_NIVEL,'
      '   :NECODLOC_ORI,'
      '   :NECODLOC_DEST'
      '   ,:NEID_NEW'
      '   ,:NEID_PF01_NEW'
      ''
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADNE'
      'where'
      '  NECODEMP = :OLD_NECODEMP and'
      '  NECODFOR = :OLD_NECODFOR and'
      '  NENUMERO = :OLD_NENUMERO and'
      '  NESERIE = :OLD_NESERIE and'
      '  NESUBSER = :OLD_NESUBSER and'
      '  NEMODELO = :OLD_NEMODELO and'
      '  NECFO = :OLD_NECFO and'
      '  NEDTENT = :OLD_NEDTENT and'
      '  NEDTEMIS = :OLD_NEDTEMIS')
    Left = 401
    Top = 268
  end
  object U_NS: TUpdateSQL
    ModifySQL.Strings = (
      'update CADNS'
      'set'
      '  NSCODEMP = :NSCODEMP,'
      '  NSTIPO = :NSTIPO,'
      '  NSNUMERO = :NSNUMERO,'
      '  NSSERIE = :NSSERIE,'
      '  NSSUBSER = :NSSUBSER,'
      '  NSMODELO = :NSMODELO,'
      '  NSCODCLI = :NSCODCLI,'
      '  NSDTEMIS = :NSDTEMIS,'
      '  NSCFO1 = :NSCFO1,'
      '  NSCFO2 = :NSCFO2,'
      '  NSNUMCUP = :NSNUMCUP,'
      '  NSDATCUP = :NSDATCUP,'
      '  NSCNPJ = :NSCNPJ,'
      '  NSIE = :NSIE,'
      '  NSTOTNOTA = :NSTOTNOTA,'
      '  NSBASENI = :NSBASENI,'
      '  NSICMSNI = :NSICMSNI,'
      '  NSBASENP = :NSBASENP,'
      '  NSICMSNP = :NSICMSNP,'
      '  NSBASENN = :NSBASENN,'
      '  NSICMSNN = :NSICMSNN,'
      '  NSBASERI = :NSBASERI,'
      '  NSPISCOFN = :NSPISCOFN,'
      '  NSPISCOFR = :NSPISCOFR,'
      '  NSICMSRI = :NSICMSRI,'
      '  NSBASERP = :NSBASERP,'
      '  NSICMSRP = :NSICMSRP,'
      '  NSBASERN = :NSBASERN,'
      '  NSICMSRN = :NSICMSRN,'
      '  NSTOTPROI = :NSTOTPROI,'
      '  NSTOTPROP = :NSTOTPROP,'
      '  NSTOTPRON = :NSTOTPRON,'
      '  NSBASENRI = :NSBASENRI,'
      '  NSICMSNRI = :NSICMSNRI,'
      '  NSBASENRP = :NSBASENRP,'
      '  NSICMSNRP = :NSICMSNRP,'
      '  NSBASENRN = :NSBASENRN,'
      '  NSICMSNRN = :NSICMSNRN,'
      '  NSALIQ = :NSALIQ,'
      '  NSALIQ2 = :NSALIQ2,'
      '  NSIPII = :NSIPII,'
      '  NSIPIP = :NSIPIP,'
      '  NSIPIN = :NSIPIN,'
      '  NSFRETE = :NSFRETE,'
      '  NSTOTISEN = :NSTOTISEN,'
      '  NSTOTNOR = :NSTOTNOR,'
      '  NSTOTRET = :NSTOTRET,'
      '  NSCHAVEP = :NSCHAVEP,'
      '  NSORDEMP = :NSORDEMP,'
      '  NSSTATUS = :NSSTATUS,'
      '  NSBASEN = :NSBASEN,'
      '  NSICMSN = :NSICMSN,'
      '  NSCODUSR = :NSCODUSR,'
      '  NSDTALT = :NSDTALT,'
      '  NSHRALT = :NSHRALT,'
      '  NSCODECF = :NSCODECF,'
      '  NSSITCUP = :NSSITCUP,'
      '  NSTOTOUT = :NSTOTOUT,'
      '  NSLOTSEQ_CP = :NSLOTSEQ_CP,'
      '  NSTARBAN = :NSTARBAN,'
      '  NSBCISSQN = :NSBCISSQN,'
      '  NSVISSQN = :NSVISSQN,'
      '  NSCFOSER = :NSCFOSER,'
      '  NSSERIEECF = :NSSERIEECF,'
      '  NSMODECF = :NSMODECF,'
      '  NSCUPACRE = :NSCUPACRE,'
      '  NSCUPDES = :NSCUPDES,'
      '  NSLEMAT = :NSLEMAT,'
      '  NSFRETEPC = :NSFRETEPC,'
      '  NSICMS_BCFRE = :NSICMS_BCFRE,'
      '  NSICMS_ALFRE = :NSICMS_ALFRE,'
      '  NSICMS_VLFRE = :NSICMS_VLFRE,'
      '  NSICMS_BCSEG = :NSICMS_BCSEG,'
      '  NSICMS_ALSEG = :NSICMS_ALSEG,'
      '  NSICMS_VLSEG = :NSICMS_VLSEG,'
      '  NSICMS_BCOUTD = :NSICMS_BCOUTD,'
      '  NSICMS_ALOUTD = :NSICMS_ALOUTD,'
      '  NSICMS_VLOUTD = :NSICMS_VLOUTD,'
      '  NSICMS_BCIPI = :NSICMS_BCIPI,'
      '  NSICMS_ALIPI = :NSICMS_ALIPI,'
      '  NSICMS_VLIPI = :NSICMS_VLIPI,'
      '  NSNFCF = :NSNFCF,'
      '  NSAVAP = :NSAVAP,'
      '  NSEMITENTE = :NSEMITENTE,'
      '  NSINFAD01 = :NSINFAD01,'
      '  NSINFAD02 = :NSINFAD02,'
      '  NSINFAD03 = :NSINFAD03,'
      '  NSINFAD04 = :NSINFAD04,'
      '  NSINFAD05 = :NSINFAD05,'
      '  NSINFAD06 = :NSINFAD06,'
      '  NSINFAD07 = :NSINFAD07,'
      '  NSINFAD08 = :NSINFAD08,'
      '  NSINFAD09 = :NSINFAD09,'
      '  NSINFAD10 = :NSINFAD10,'
      '  NSINFADFIS01 = :NSINFADFIS01,'
      '  NSINFADFIS02 = :NSINFADFIS02,'
      '  NSTPIMPRES = :NSTPIMPRES,'
      '  NSNFE_CHAVEACESSO = :NSNFE_CHAVEACESSO,'
      '  NSNFE_DCHAVEACESSO = :NSNFE_DCHAVEACESSO,'
      '  NSNFE_NRECIBO = :NSNFE_NRECIBO,'
      '  NSNFE_DH_RECIBO = :NSNFE_DH_RECIBO,'
      '  NSNFE_STAT_REC = :NSNFE_STAT_REC,'
      '  NSNFE_LOTENV = :NSNFE_LOTENV,'
      '  NSNFE_NOMARQLOT = :NSNFE_NOMARQLOT,'
      '  NSNFE_NOMARQREC = :NSNFE_NOMARQREC,'
      '  NSNFE_CONTIGENCIA = :NSNFE_CONTIGENCIA,'
      '  NSNFE_DH_CONTIGENCIA = :NSNFE_DH_CONTIGENCIA,'
      '  NSRED_BCISSQN = :NSRED_BCISSQN,'
      '  NSBCINSS = :NSBCINSS,'
      '  NSRED_BCINSS = :NSRED_BCINSS,'
      '  NSVINSS = :NSVINSS,'
      '  NSBCIRRF = :NSBCIRRF,'
      '  NSRED_BCIRRF = :NSRED_BCIRRF,'
      '  NSVIRRF = :NSVIRRF,'
      '  NSNFE_STATUS = :NSNFE_STATUS,'
      '  NSNFE_STAT_PROT = :NSNFE_STAT_PROT,'
      '  NSNFE_DIGVAL = :NSNFE_DIGVAL,'
      '  NSNFE_NUMPROT = :NSNFE_NUMPROT,'
      '  NSFRETE_ALIQ = :NSFRETE_ALIQ,'
      '  NSFRETE_ICMS = :NSFRETE_ICMS,'
      '  NSNFSERV_DATHORREC = :NSNFSERV_DATHORREC,'
      '  NSNFSERV_DATHORCANC = :NSNFSERV_DATHORCANC,'
      '  NSNFSERV_LOTE = :NSNFSERV_LOTE,'
      '  NSNFSERV_PROTOCOLO = :NSNFSERV_PROTOCOLO,'
      '  NSNFSERV_NUMNF = :NSNFSERV_NUMNF,'
      '  NSCHAVEP_NIVEL = :NSCHAVEP_NIVEL,'
      '  NSNFE_VERAPLIC = :NSNFE_VERAPLIC,'
      '  NSNFE_INFPRODID = :NSNFE_INFPRODID,'
      '  NSNFE_TPEMIS = :NSNFE_TPEMIS,'
      '  NSTIPDOC = :NSTIPDOC,'
      '  NSDATHOR_CANC = :NSDATHOR_CANC,'
      '  NSXML_NPROT_CANC = :NSXML_NPROT_CANC,'
      '  NSDATHOR_INUT = :NSDATHOR_INUT,'
      '  NSXML_NPROT_INUT = :NSXML_NPROT_INUT'
      ',NSNFCE_DATA = :NSNFCE_DATA'
      ',NSNFCE_NUMERO = :NSNFCE_NUMERO'
      ',NSNFCE_CHV_ACESSO = :NSNFCE_CHV_ACESSO'
      ',NSNFCE_SERIE = :NSNFCE_SERIE'
      ',NSNFCE_MODELO = :NSNFCE_MODELO'
      ',NSNFCE_NPROT = :NSNFCE_NPROT'
      ',NSNFCE_SITUACAO = :NSNFCE_SITUACAO'
      ',NSID_NEW = :NSID_NEW'
      ',NSID_PED01_NEW = :NSID_PED01_NEW'
      ',NSNFSERV_NUMNF_RPS = :NSNFSERV_NUMNF_RPS'
      ',NSNFSERV_SERIE = :NSNFSERV_SERIE'
      ''
      'where'
      '  NSCODEMP = :OLD_NSCODEMP and'
      '  NSCHAVEP = :OLD_NSCHAVEP and'
      '  NSORDEMP = :OLD_NSORDEMP and'
      '  NSLOTSEQ_CP = :OLD_NSLOTSEQ_CP'
      '')
    InsertSQL.Strings = (
      'insert into CADNS'
      '  (NSCODEMP, NSTIPO, NSNUMERO, NSSERIE, NSSUBSER, NSMODELO, '
      'NSCODCLI, NSDTEMIS, '
      '   NSCFO1, NSCFO2, NSNUMCUP, NSDATCUP, NSCNPJ, NSIE, NSTOTNOTA, '
      'NSBASENI, '
      '   NSICMSNI, NSBASENP, NSICMSNP, NSBASENN, NSICMSNN, NSBASERI, '
      'NSPISCOFN, '
      '   NSPISCOFR, NSICMSRI, NSBASERP, NSICMSRP, NSBASERN, NSICMSRN, '
      'NSTOTPROI, '
      '   NSTOTPROP, NSTOTPRON, NSBASENRI, NSICMSNRI, NSBASENRP, '
      'NSICMSNRP, NSBASENRN,'
      '   NSICMSNRN, NSALIQ, NSALIQ2, NSIPII, NSIPIP, NSIPIN, NSFRETE, '
      'NSTOTISEN, '
      '   NSTOTNOR, NSTOTRET, NSCHAVEP, NSORDEMP, NSSTATUS, NSBASEN, '
      'NSICMSN, '
      '   NSCODUSR, NSDTALT, NSHRALT, NSCODECF, NSSITCUP, NSTOTOUT, '
      'NSLOTSEQ_CP, '
      
        '   NSTARBAN, NSBCISSQN, NSVISSQN, NSCFOSER, NSSERIEECF, NSMODECF' +
        ', '
      'NSCUPACRE, '
      '   NSCUPDES, NSLEMAT, NSFRETEPC, NSICMS_BCFRE, NSICMS_ALFRE, '
      'NSICMS_VLFRE, '
      '   NSICMS_BCSEG, NSICMS_ALSEG, NSICMS_VLSEG, NSICMS_BCOUTD, '
      'NSICMS_ALOUTD, '
      
        '   NSICMS_VLOUTD, NSICMS_BCIPI, NSICMS_ALIPI, NSICMS_VLIPI, NSNF' +
        'CF, '
      'NSAVAP, '
      
        '   NSEMITENTE, NSINFAD01, NSINFAD02, NSINFAD03, NSINFAD04, NSINF' +
        'AD05, '
      'NSINFAD06, '
      '   NSINFAD07, NSINFAD08, NSINFAD09, NSINFAD10, NSINFADFIS01, '
      'NSINFADFIS02, '
      '   NSTPIMPRES, NSNFE_CHAVEACESSO, NSNFE_DCHAVEACESSO, '
      'NSNFE_NRECIBO, NSNFE_DH_RECIBO, '
      '   NSNFE_STAT_REC, NSNFE_LOTENV, NSNFE_NOMARQLOT, '
      'NSNFE_NOMARQREC, NSNFE_CONTIGENCIA, '
      '   NSNFE_DH_CONTIGENCIA, NSRED_BCISSQN, NSBCINSS, NSRED_BCINSS, '
      'NSVINSS, '
      '   NSBCIRRF, NSRED_BCIRRF, NSVIRRF, NSNFE_STATUS,'
      'NSNFE_STAT_PROT, NSNFE_DIGVAL, '
      '   NSNFE_NUMPROT, NSFRETE_ALIQ, NSFRETE_ICMS, '
      'NSNFSERV_DATHORREC, NSNFSERV_DATHORCANC, '
      '   NSNFSERV_LOTE, NSNFSERV_PROTOCOLO, NSNFSERV_NUMNF, '
      'NSCHAVEP_NIVEL, NSNFE_VERAPLIC, '
      '   NSNFE_INFPRODID, NSNFE_TPEMIS, NSTIPDOC, NSDATHOR_CANC, '
      'NSXML_NPROT_CANC, '
      '   NSDATHOR_INUT, NSXML_NPROT_INUT'
      ',NSNFCE_DATA'
      ',NSNFCE_NUMERO'
      ',NSNFCE_CHV_ACESSO'
      ',NSNFCE_SERIE'
      ',NSNFCE_MODELO'
      ',NSNFCE_NPROT'
      ',NSNFCE_SITUACAO'
      ',NSID_NEW'
      ',NSID_PED01_NEW'
      ',NSNFSERV_NUMNF_RPS'
      ',NSNFSERV_SERIE'
      ''
      '   )'
      'values'
      
        '  (:NSCODEMP, :NSTIPO, :NSNUMERO, :NSSERIE, :NSSUBSER, :NSMODELO' +
        ', '
      ':NSCODCLI, '
      
        '   :NSDTEMIS, :NSCFO1, :NSCFO2, :NSNUMCUP, :NSDATCUP, :NSCNPJ, :' +
        'NSIE, '
      ':NSTOTNOTA, '
      
        '   :NSBASENI, :NSICMSNI, :NSBASENP, :NSICMSNP, :NSBASENN, :NSICM' +
        'SNN, '
      ':NSBASERI,'
      
        '   :NSPISCOFN, :NSPISCOFR, :NSICMSRI, :NSBASERP, :NSICMSRP, :NSB' +
        'ASERN, '
      '   :NSICMSRN, :NSTOTPROI, :NSTOTPROP, :NSTOTPRON, :NSBASENRI, '
      ':NSICMSNRI, '
      
        '   :NSBASENRP, :NSICMSNRP, :NSBASENRN, :NSICMSNRN, :NSALIQ, :NSA' +
        'LIQ2, '
      ':NSIPII, '
      
        '   :NSIPIP, :NSIPIN, :NSFRETE, :NSTOTISEN, :NSTOTNOR, :NSTOTRET,' +
        ' '
      ':NSCHAVEP, '
      
        '   :NSORDEMP, :NSSTATUS, :NSBASEN, :NSICMSN, :NSCODUSR, :NSDTALT' +
        ', '
      ':NSHRALT, '
      '   :NSCODECF, :NSSITCUP, :NSTOTOUT, :NSLOTSEQ_CP, :NSTARBAN, '
      ':NSBCISSQN, '
      '   :NSVISSQN, :NSCFOSER, :NSSERIEECF, :NSMODECF, :NSCUPACRE, '
      ':NSCUPDES, '
      
        '   :NSLEMAT, :NSFRETEPC, :NSICMS_BCFRE, :NSICMS_ALFRE, :NSICMS_V' +
        'LFRE, '
      ':NSICMS_BCSEG, '
      
        '   :NSICMS_ALSEG, :NSICMS_VLSEG, :NSICMS_BCOUTD, :NSICMS_ALOUTD,' +
        ' '
      ':NSICMS_VLOUTD, '
      
        '   :NSICMS_BCIPI, :NSICMS_ALIPI, :NSICMS_VLIPI, :NSNFCF, :NSAVAP' +
        ', '
      ':NSEMITENTE, '
      '   :NSINFAD01, :NSINFAD02, :NSINFAD03, :NSINFAD04, :NSINFAD05, '
      ':NSINFAD06, '
      
        '   :NSINFAD07, :NSINFAD08, :NSINFAD09, :NSINFAD10, :NSINFADFIS01' +
        ', '
      ':NSINFADFIS02, '
      '   :NSTPIMPRES, :NSNFE_CHAVEACESSO, :NSNFE_DCHAVEACESSO, '
      ':NSNFE_NRECIBO,'
      '   :NSNFE_DH_RECIBO, :NSNFE_STAT_REC, :NSNFE_LOTENV, '
      ':NSNFE_NOMARQLOT, '
      '   :NSNFE_NOMARQREC, :NSNFE_CONTIGENCIA, :NSNFE_DH_CONTIGENCIA, '
      ':NSRED_BCISSQN, '
      
        '   :NSBCINSS, :NSRED_BCINSS, :NSVINSS, :NSBCIRRF, :NSRED_BCIRRF,' +
        ' '
      ':NSVIRRF, '
      '   :NSNFE_STATUS, :NSNFE_STAT_PROT, :NSNFE_DIGVAL, '
      ':NSNFE_NUMPROT, :NSFRETE_ALIQ, '
      '   :NSFRETE_ICMS, :NSNFSERV_DATHORREC, :NSNFSERV_DATHORCANC, '
      ':NSNFSERV_LOTE, '
      '   :NSNFSERV_PROTOCOLO, :NSNFSERV_NUMNF, :NSCHAVEP_NIVEL, '
      ':NSNFE_VERAPLIC, '
      '   :NSNFE_INFPRODID, :NSNFE_TPEMIS, :NSTIPDOC, :NSDATHOR_CANC, '
      ':NSXML_NPROT_CANC,'
      '   :NSDATHOR_INUT, :NSXML_NPROT_INUT'
      ''
      ',:NSNFCE_DATA'
      ',:NSNFCE_NUMERO'
      ',:NSNFCE_CHV_ACESSO'
      ',:NSNFCE_SERIE'
      ',:NSNFCE_MODELO'
      ',:NSNFCE_NPROT'
      ',:NSNFCE_SITUACAO'
      ',:NSID_NEW'
      ',:NSID_PED01_NEW'
      ',:NSNFSERV_NUMNF_RPS'
      ',:NSNFSERV_SERIE'
      ''
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADNS'
      'where'
      '  NSCODEMP = :OLD_NSCODEMP and'
      '  NSCHAVEP = :OLD_NSCHAVEP and'
      '  NSORDEMP = :OLD_NSORDEMP and'
      '  NSLOTSEQ_CP = :OLD_NSLOTSEQ_CP'
      '')
    Left = 401
    Top = 312
  end
  object U_MI01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMI01'
      'set'
      '  CMCODEMP = :CMCODEMP,'
      '  CMCODIMP = :CMCODIMP,'
      '  CMDATA = :CMDATA,'
      '  CMCONRED = :CMCONRED,'
      '  CMCOO = :CMCOO,'
      '  CMVDABRUT = :CMVDABRUT,'
      '  CMVDALIQ = :CMVDALIQ,'
      '  CMCUPCAN = :CMCUPCAN,'
      '  CMACRECUP = :CMACRECUP,'
      '  CMDESCUP = :CMDESCUP,'
      '  CMISSCUP = :CMISSCUP,'
      '  CMISENTAS = :CMISENTAS,'
      '  CMNAOINC = :CMNAOINC,'
      '  CMSUBTRI = :CMSUBTRI,'
      '  CMORDEM = :CMORDEM,'
      '  CMMODDOC = :CMMODDOC,'
      '  CMSERIE = :CMSERIE,'
      '  CMCOO_FINAL = :CMCOO_FINAL,'
      '  CMCRO = :CMCRO,'
      '  CMVDABACUM = :CMVDABACUM,'
      '  CMVDALACUM = :CMVDALACUM'
      'where'
      '  CMCODEMP = :OLD_CMCODEMP and'
      '  CMCODIMP = :OLD_CMCODIMP and'
      '  CMDATA = :OLD_CMDATA')
    InsertSQL.Strings = (
      'insert into CADMI01'
      '  (CMCODEMP, CMCODIMP, CMDATA, CMCONRED, CMCOO, CMVDABRUT, '
      'CMVDALIQ, CMCUPCAN, '
      
        '   CMACRECUP, CMDESCUP, CMISSCUP, CMISENTAS, CMNAOINC, CMSUBTRI,' +
        ' '
      'CMORDEM, '
      '   CMMODDOC, CMSERIE, CMCOO_FINAL, CMCRO, CMVDABACUM, '
      'CMVDALACUM)'
      'values'
      
        '  (:CMCODEMP, :CMCODIMP, :CMDATA, :CMCONRED, :CMCOO, :CMVDABRUT,' +
        ' '
      ':CMVDALIQ, '
      '   :CMCUPCAN, :CMACRECUP, :CMDESCUP, :CMISSCUP, :CMISENTAS, '
      ':CMNAOINC, '
      
        '   :CMSUBTRI, :CMORDEM, :CMMODDOC, :CMSERIE, :CMCOO_FINAL, :CMCR' +
        'O, '
      ':CMVDABACUM, '
      '   :CMVDALACUM)')
    DeleteSQL.Strings = (
      'delete from CADMI01'
      'where'
      '  CMCODEMP = :OLD_CMCODEMP and'
      '  CMCODIMP = :OLD_CMCODIMP and'
      '  CMDATA = :OLD_CMDATA')
    Left = 401
    Top = 356
  end
  object U_MI02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMI02'
      'set'
      '  CM2CODEMP = :CM2CODEMP,'
      '  CM2CODIMP = :CM2CODIMP,'
      '  CM2DATA = :CM2DATA,'
      '  CM2ALIQ = :CM2ALIQ,'
      '  CM2VALOR = :CM2VALOR'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2CODIMP = :OLD_CM2CODIMP and'
      '  CM2DATA = :OLD_CM2DATA and'
      '  CM2ALIQ = :OLD_CM2ALIQ')
    InsertSQL.Strings = (
      'insert into CADMI02'
      '  (CM2CODEMP, CM2CODIMP, CM2DATA, CM2ALIQ, CM2VALOR)'
      'values'
      '  (:CM2CODEMP, :CM2CODIMP, :CM2DATA, :CM2ALIQ, :CM2VALOR)')
    DeleteSQL.Strings = (
      'delete from CADMI02'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2CODIMP = :OLD_CM2CODIMP and'
      '  CM2DATA = :OLD_CM2DATA and'
      '  CM2ALIQ = :OLD_CM2ALIQ')
    Left = 401
    Top = 400
  end
  object U_ParFon: TUpdateSQL
    ModifySQL.Strings = (
      'update PARFON'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFNOMTER = :PFNOMTER,'
      '  PFNOMFOR = :PFNOMFOR,'
      '  PFNOMCOM = :PFNOMCOM,'
      '  PFNOMFON = :PFNOMFON,'
      '  PFTAMFON = :PFTAMFON,'
      '  PFCORFON = :PFCORFON,'
      '  PFCORFUN = :PFCORFUN,'
      '  PFMENS = :PFMENS,'
      '  PFMTIPO = :PFMTIPO'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFNOMTER = :OLD_PFNOMTER and'
      '  PFNOMFOR = :OLD_PFNOMFOR and'
      '  PFNOMCOM = :OLD_PFNOMCOM')
    InsertSQL.Strings = (
      'insert into PARFON'
      '  (PFCODEMP, PFNOMTER, PFNOMFOR, PFNOMCOM, PFNOMFON, PFTAMFON, '
      'PFCORFON, '
      '   PFCORFUN, PFMENS, PFMTIPO)'
      'values'
      '  (:PFCODEMP, :PFNOMTER, :PFNOMFOR, :PFNOMCOM, :PFNOMFON, '
      ':PFTAMFON, :PFCORFON, '
      '   :PFCORFUN, :PFMENS, :PFMTIPO)')
    DeleteSQL.Strings = (
      'delete from PARFON'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFNOMTER = :OLD_PFNOMTER and'
      '  PFNOMFOR = :OLD_PFNOMFOR and'
      '  PFNOMCOM = :OLD_PFNOMCOM')
    Left = 505
    Top = 45
  end
  object U_ParGer: TUpdateSQL
    ModifySQL.Strings = (
      'update PARGER'
      'set'
      '  CODIGO = :CODIGO,'
      '  EMPPRE = :EMPPRE,'
      '  PSEGMENTO = :PSEGMENTO,'
      '  PSISTEMA = :PSISTEMA,'
      '  PGRAVE = :PGRAVE,'
      '  PTIPO = :PTIPO,'
      '  UDTTRA = :UDTTRA,'
      '  PCAMINHO = :PCAMINHO,'
      '  PDCADCAR = :PDCADCAR,'
      '  PDCADBAI = :PDCADBAI,'
      '  PDCADCLI = :PDCADCLI,'
      '  PDCADCON = :PDCADCON,'
      '  PDCADCV = :PDCADCV,'
      '  PDCADFOR = :PDCADFOR,'
      '  PDCADGRU = :PDCADGRU,'
      '  PDCADLOC = :PDCADLOC,'
      '  PDCADPRO = :PDCADPRO,'
      '  PDCADRAM = :PDCADRAM,'
      '  PDCADRED = :PDCADRED,'
      '  PDCADTP = :PDCADTP,'
      '  PDCADTRA = :PDCADTRA,'
      '  PDCADUSR = :PDCADUSR,'
      '  PDCADVEN = :PDCADVEN,'
      '  PDCADSUP = :PDCADSUP,'
      '  PIMPFPAD = :PIMPFPAD,'
      '  PCASAS = :PCASAS,'
      '  PCASASPU = :PCASASPU,'
      '  PCASQTD = :PCASQTD,'
      '  PCLIPED = :PCLIPED,'
      '  PPVPED = :PPVPED,'
      '  PVENUSR = :PVENUSR,'
      '  PCODLOC = :PCODLOC,'
      '  PCODBAI = :PCODBAI,'
      '  PTIPPED = :PTIPPED,'
      '  PCOMVEN = :PCOMVEN,'
      '  PCOMSUP = :PCOMSUP,'
      '  PCOMTLV = :PCOMTLV,'
      '  PDEDVD = :PDEDVD,'
      '  PTPACER = :PTPACER,'
      '  PTPACERT = :PTPACERT,'
      '  PTPACERS = :PTPACERS,'
      '  PMOD00 = :PMOD00,'
      '  PMOD01 = :PMOD01,'
      '  PMOD02 = :PMOD02,'
      '  PTITSCOM = :PTITSCOM,'
      '  PMANPC = :PMANPC,'
      '  PDEVOL = :PDEVOL,'
      '  PCOMEMP = :PCOMEMP,'
      '  PDJNR = :PDJNR,'
      '  PA001 = :PA001,'
      '  PA002 = :PA002,'
      '  PA003 = :PA003,'
      '  PAQTDATA = :PAQTDATA,'
      '  PAUSRTD = :PAUSRTD,'
      '  PVISA = :PVISA,'
      '  PANVISA = :PANVISA,'
      '  PREDE = :PREDE,'
      '  PCONV = :PCONV,'
      '  PCODDBC = :PCODDBC,'
      '  PPRZVAL = :PPRZVAL,'
      '  PMOEDA = :PMOEDA,'
      '  PVERCRE = :PVERCRE,'
      '  PQTDBLQ = :PQTDBLQ,'
      '  PTPBLQ = :PTPBLQ,'
      '  PPRZCOMP = :PPRZCOMP,'
      '  PDTUBKP = :PDTUBKP,'
      '  PHRABKP = :PHRABKP,'
      '  PDCAMBKP = :PDCAMBKP,'
      '  PDRESBKP = :PDRESBKP,'
      '  PDDTPRES = :PDDTPRES,'
      '  PDQTDRES = :PDQTDRES,'
      '  PDQPCOP = :PDQPCOP,'
      '  PUCADGRU = :PUCADGRU,'
      '  PUCADRAM = :PUCADRAM,'
      '  PUCADCON = :PUCADCON,'
      '  PUCADTIP = :PUCADTIP,'
      '  PUREGMS = :PUREGMS,'
      '  PUPMC = :PUPMC,'
      '  PUPISCOF = :PUPISCOF,'
      '  PUTABICM = :PUTABICM,'
      '  PUPVESP = :PUPVESP,'
      '  PUFOLHA = :PUFOLHA,'
      '  PECFDIR = :PECFDIR,'
      '  PDUPTIP1 = :PDUPTIP1,'
      '  PDUPTIP2 = :PDUPTIP2,'
      '  PDUPTIP3 = :PDUPTIP3,'
      '  PDUPTIP4 = :PDUPTIP4,'
      '  PDUPTIP5 = :PDUPTIP5,'
      '  PDUPTIP6 = :PDUPTIP6,'
      '  PDUPTIP7 = :PDUPTIP7,'
      '  PDUPTIP8 = :PDUPTIP8,'
      '  PDUPTIP9 = :PDUPTIP9,'
      '  PDESTTIP1 = :PDESTTIP1,'
      '  PDESTTIP2 = :PDESTTIP2,'
      '  PDESTTIP3 = :PDESTTIP3,'
      '  PDESTTIP4 = :PDESTTIP4,'
      '  PDESTTIP5 = :PDESTTIP5,'
      '  PDESTTIP6 = :PDESTTIP6,'
      '  PDESTTIP7 = :PDESTTIP7,'
      '  PDESTTIP8 = :PDESTTIP8,'
      '  PDESTTIP9 = :PDESTTIP9,'
      '  PCASIND = :PCASIND,'
      '  PINDUSTRIA = :PINDUSTRIA,'
      '  PPUZERO = :PPUZERO,'
      '  PAGRUDUP = :PAGRUDUP,'
      '  PDTAMUBKP = :PDTAMUBKP,'
      '  PCASPUIND = :PCASPUIND,'
      '  PLCVM = :PLCVM,'
      '  PFORMACE = :PFORMACE,'
      '  PMANDATCXBX = :PMANDATCXBX,'
      '  PCLIOINF = :PCLIOINF,'
      '  PACREGER = :PACREGER,'
      '  PTITAGER = :PTITAGER,'
      '  PCRITCNPJ = :PCRITCNPJ,'
      '  PCRITIE = :PCRITIE,'
      '  PANOTUNI = :PANOTUNI,'
      '  PECFSOLCOD = :PECFSOLCOD,'
      '  PECFFECCOM = :PECFFECCOM,'
      '  PECFCAI = :PECFCAI,'
      '  PEXTRACUS = :PEXTRACUS,'
      '  PEXTRAMEN = :PEXTRAMEN,'
      '  PUPALNUM = :PUPALNUM,'
      '  PPALNUM = :PPALNUM,'
      '  PONCHAGEPRO = :PONCHAGEPRO,'
      '  PFSM = :PFSM,'
      '  PCADCLITAXC = :PCADCLITAXC,'
      '  PLS_NUMPED = :PLS_NUMPED,'
      '  PLS_NUMPF = :PLS_NUMPF,'
      '  PPERCPL = :PPERCPL,'
      '  PCALCPPRO = :PCALCPPRO,'
      '  PBLQDEVOL = :PBLQDEVOL,'
      '  PMPDISP = :PMPDISP,'
      '  PTIPOEXT = :PTIPOEXT,'
      '  PCRDOCSIG = :PCRDOCSIG,'
      '  PCRDOC = :PCRDOC,'
      '  PDIASORCAT = :PDIASORCAT,'
      '  PQTDDIAV = :PQTDDIAV,'
      '  PCODMOE = :PCODMOE,'
      '  PLSEPCUPOM = :PLSEPCUPOM,'
      '  PDUPTIP10 = :PDUPTIP10,'
      '  PDUPTIP11 = :PDUPTIP11,'
      '  PDUPTIP12 = :PDUPTIP12,'
      '  PDUPTIP13 = :PDUPTIP13,'
      '  PDUPTIP14 = :PDUPTIP14,'
      '  PDUPTIP15 = :PDUPTIP15,'
      '  PDESTTIP10 = :PDESTTIP10,'
      '  PDESTTIP11 = :PDESTTIP11,'
      '  PDESTTIP12 = :PDESTTIP12,'
      '  PDESTTIP13 = :PDESTTIP13,'
      '  PDESTTIP14 = :PDESTTIP14,'
      '  PDESTTIP15 = :PDESTTIP15,'
      '  PFCORP_ACAB = :PFCORP_ACAB,'
      '  PFCORP_SERV = :PFCORP_SERV,'
      '  PFCORP_MPR = :PFCORP_MPR,'
      '  PFCORP_PP = :PFCORP_PP,'
      '  PFCORP_MP = :PFCORP_MP,'
      '  PFCORP_ISUM = :PFCORP_ISUM,'
      '  PFCORP_OUT = :PFCORP_OUT,'
      '  PFCORP_VENC = :PFCORP_VENC,'
      '  PFCORP_BLOQ = :PFCORP_BLOQ,'
      '  PUIMOBIL = :PUIMOBIL,'
      '  PUCONVEI = :PUCONVEI,'
      '  PFATDPRO = :PFATDPRO,'
      '  PTAMJPG = :PTAMJPG,'
      '  POCUEST = :POCUEST,'
      '  PPPADATU = :PPPADATU,'
      '  PDM_ENDIP = :PDM_ENDIP,'
      '  PDM_PORTA = :PDM_PORTA,'
      '  PPCOGRA = :PPCOGRA,'
      '  PTIPOTEF = :PTIPOTEF,'
      '  PEXCFP_EXCPED = :PEXCFP_EXCPED,'
      '  PPEDFPGTO = :PPEDFPGTO,'
      '  PDUPCNPJ = :PDUPCNPJ,'
      '  PCOMASSE = :PCOMASSE,'
      '  PPERCPLCX = :PPERCPLCX,'
      '  PPERCPLFARDO = :PPERCPLFARDO,'
      '  PPERCPLPCT = :PPERCPLPCT,'
      '  PCODPROPADFAT = :PCODPROPADFAT,'
      '  PDUPTIP16 = :PDUPTIP16,'
      '  PDUPTIP17 = :PDUPTIP17,'
      '  PDUPTIP18 = :PDUPTIP18,'
      '  PDESTTIP16 = :PDESTTIP16,'
      '  PDESTTIP17 = :PDESTTIP17,'
      '  PDESTTIP18 = :PDESTTIP18,'
      '  PCONSPROPAD = :PCONSPROPAD,'
      '  PLEITORPED = :PLEITORPED,'
      '  PLEITORPF = :PLEITORPF,'
      '  PLEITORAJU = :PLEITORAJU,'
      '  PTRODCX = :PTRODCX,'
      '  PTROEMP100 = :PTROEMP100,'
      '  PQTDCASARRED = :PQTDCASARRED,'
      '  PMANPCUSFOR = :PMANPCUSFOR,'
      '  PTAMJPGALT = :PTAMJPGALT,'
      '  PTAMJPGTAM = :PTAMJPGTAM,'
      '  PONCHANGECLI = :PONCHANGECLI,'
      '  PONCHANGECV = :PONCHANGECV,'
      '  PONCHANGEFOR = :PONCHANGEFOR,'
      '  PONCHANGEDBC = :PONCHANGEDBC,'
      '  PONCHANGEDEPCX = :PONCHANGEDEPCX,'
      '  PONCHANGECCU = :PONCHANGECCU,'
      '  PONCHANGELOC = :PONCHANGELOC,'
      '  PONCHANGEBAI = :PONCHANGEBAI,'
      '  PONCHANGEPV = :PONCHANGEPV,'
      '  PONCHANGEVEND = :PONCHANGEVEND,'
      '  PONCHANGUSR = :PONCHANGUSR,'
      '  PONCHANGECAR = :PONCHANGECAR,'
      '  PONCHANGFUN = :PONCHANGFUN,'
      '  PONCHANGREDEC = :PONCHANGREDEC,'
      '  PONCHANGEGPRO = :PONCHANGEGPRO,'
      '  PONCHANGRPRO = :PONCHANGRPRO,'
      '  PONCHANGETPRO = :PONCHANGETPRO,'
      '  PONCHANGECPRO = :PONCHANGECPRO,'
      '  PONCHANGERCLI = :PONCHANGERCLI,'
      '  PONCHANGESUP = :PONCHANGESUP,'
      '  PONCHANGETRA = :PONCHANGETRA,'
      '  PONCHANGEUF = :PONCHANGEUF,'
      '  PTIPOAJUDA = :PTIPOAJUDA,'
      '  PME_TECLA01 = :PME_TECLA01,'
      '  PME_TECLA02 = :PME_TECLA02,'
      '  PME_TECLA03 = :PME_TECLA03,'
      '  PME_TECLA04 = :PME_TECLA04,'
      '  PCE_TECLA01 = :PCE_TECLA01,'
      '  PCE_TECLA02 = :PCE_TECLA02,'
      '  PCE_TECLA03 = :PCE_TECLA03,'
      '  PCE_TECLA04 = :PCE_TECLA04,'
      '  PATIVARTODAS = :PATIVARTODAS,'
      '  PPROMCADPRO = :PPROMCADPRO,'
      '  PTEXTOBAIXO = :PTEXTOBAIXO,'
      '  PCORTEXBAIXO = :PCORTEXBAIXO,'
      '  PTEXTOALTO = :PTEXTOALTO,'
      '  PCORTEXALTO = :PCORTEXALTO,'
      '  PTEXTOAMBAS = :PTEXTOAMBAS,'
      '  PCORTEXAMBAS = :PCORTEXAMBAS,'
      '  PUSA_DEGRADE = :PUSA_DEGRADE,'
      '  PTIPOMENU = :PTIPOMENU,'
      '  PFILPRO = :PFILPRO,'
      '  PHOSTEMAIL = :PHOSTEMAIL,'
      '  PUSEREMAIL = :PUSEREMAIL,'
      '  PSENHAEMAIL = :PSENHAEMAIL,'
      '  PATPCOFABENT = :PATPCOFABENT,'
      '  PFORPEDPAD = :PFORPEDPAD,'
      '  PLSEPMOD02 = :PLSEPMOD02,'
      '  PLORCMOD02 = :PLORCMOD02,'
      '  PCONSPROPED = :PCONSPROPED,'
      '  PDUPTIP19 = :PDUPTIP19,'
      '  PDUPTIP20 = :PDUPTIP20,'
      '  PDUPTIP21 = :PDUPTIP21,'
      '  PDUPTIP22 = :PDUPTIP22,'
      '  PDUPTIP23 = :PDUPTIP23,'
      '  PDUPTIP24 = :PDUPTIP24,'
      '  PDUPTIP25 = :PDUPTIP25,'
      '  PDESTTIP19 = :PDESTTIP19,'
      '  PDESTTIP20 = :PDESTTIP20,'
      '  PDESTTIP21 = :PDESTTIP21,'
      '  PDESTTIP22 = :PDESTTIP22,'
      '  PDESTTIP23 = :PDESTTIP23,'
      '  PDESTTIP24 = :PDESTTIP24,'
      '  PDESTTIP25 = :PDESTTIP25,'
      '  PQTDLCQP = :PQTDLCQP,'
      '  PLOGUSRPED = :PLOGUSRPED,'
      '  PVISMLUC = :PVISMLUC,'
      '  PHINTPROPED = :PHINTPROPED,'
      '  PIND_TPFORMULA = :PIND_TPFORMULA,'
      '  PFORPROPAD = :PFORPROPAD,'
      '  PATUCOMPROGRU = :PATUCOMPROGRU,'
      '  PCOMISPAD = :PCOMISPAD,'
      '  PFRENTE_VDANOR = :PFRENTE_VDANOR,'
      '  PBLOQCNPJ = :PBLOQCNPJ,'
      '  PBLOQCEP = :PBLOQCEP,'
      '  PMTE = :PMTE,'
      '  PQTDDBLOQPED = :PQTDDBLOQPED,'
      '  PDEV_TABPV = :PDEV_TABPV,'
      '  PDEV_CODPV = :PDEV_CODPV,'
      '  PDESCEXTRA_PEDRET = :PDESCEXTRA_PEDRET,'
      '  PPCOPADLIQ = :PPCOPADLIQ,'
      '  PGRAVPEDBLOQ = :PGRAVPEDBLOQ,'
      '  PPROD_DNOME2 = :PPROD_DNOME2,'
      '  PKITPROD = :PKITPROD,'
      '  PVENDCLI = :PVENDCLI,'
      '  PBLOQPED_MINAVISO = :PBLOQPED_MINAVISO,'
      '  PSTATUS_LSEP09 = :PSTATUS_LSEP09,'
      '  PLSEPSEP_ORDEM = :PLSEPSEP_ORDEM,'
      '  PCADPRO_VDAFRENTE = :PCADPRO_VDAFRENTE,'
      '  PEXPMOV_EXC = :PEXPMOV_EXC,'
      '  PFCORP_ESTMIN_PRAT = :PFCORP_ESTMIN_PRAT,'
      '  PFCORP_ESTMIN_GER = :PFCORP_ESTMIN_GER,'
      '  PMANDUPREC_AUT = :PMANDUPREC_AUT,'
      '  PMANDUPPAG_AUT = :PMANDUPPAG_AUT,'
      '  PTIPOVALDES = :PTIPOVALDES,'
      '  PDM_ENDIP_INTERNO = :PDM_ENDIP_INTERNO,'
      '  PACREMPEXTRA = :PACREMPEXTRA,'
      '  PRECALCPEDMAN = :PRECALCPEDMAN,'
      '  PBLQPCOMENOR_QTD = :PBLQPCOMENOR_QTD,'
      '  PATUPCUSACABMP = :PATUPCUSACABMP,'
      '  PIMAGEM_DEGRADE = :PIMAGEM_DEGRADE,'
      '  PCOMPRAPADRAO = :PCOMPRAPADRAO,'
      '  PLVALEMOD02 = :PLVALEMOD02,'
      '  PFRBMS_VENC = :PFRBMS_VENC,'
      '  PFCORP_EM = :PFCORP_EM,'
      '  PFCORP_SBP = :PFCORP_SBP,'
      '  PFCORP_PI = :PFCORP_PI,'
      '  PFCORP_MUC = :PFCORP_MUC,'
      '  PFCORP_AI = :PFCORP_AI,'
      '  PTLOGINEMAIL = :PTLOGINEMAIL,'
      '  PTAUTENTICAEMAIL = :PTAUTENTICAEMAIL,'
      '  PPORTAEMAIL = :PPORTAEMAIL,'
      '  PORDEMCADPRO = :PORDEMCADPRO,'
      '  PCLIVEN = :PCLIVEN,'
      '  PFCORP_SEMMOV = :PFCORP_SEMMOV,'
      '  PFDIAS_SEMMOV = :PFDIAS_SEMMOV,'
      '  PCOMISVENDA = :PCOMISVENDA,'
      '  PDUPTIP26 = :PDUPTIP26,'
      '  PDUPTIP27 = :PDUPTIP27,'
      '  PDESTTIP26 = :PDESTTIP26,'
      '  PDESTTIP27 = :PDESTTIP27,'
      '  PDUPTIP28 = :PDUPTIP28,'
      '  PDUPTIP29 = :PDUPTIP29,'
      '  PDESTTIP28 = :PDESTTIP28,'
      '  PDESTTIP29 = :PDESTTIP29,'
      '  PVALIDAR_CERT_TECNICO = :PVALIDAR_CERT_TECNICO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PARGER'
      '  (CODIGO, EMPPRE, PSEGMENTO, PSISTEMA, PGRAVE, PTIPO, UDTTRA, '
      'PCAMINHO, '
      '   PDCADCAR, PDCADBAI, PDCADCLI, PDCADCON, PDCADCV, PDCADFOR, '
      'PDCADGRU, '
      '   PDCADLOC, PDCADPRO, PDCADRAM, PDCADRED, PDCADTP, PDCADTRA, '
      'PDCADUSR, '
      '   PDCADVEN, PDCADSUP, PIMPFPAD, PCASAS, PCASASPU, PCASQTD, '
      'PCLIPED, PPVPED, '
      
        '   PVENUSR, PCODLOC, PCODBAI, PTIPPED, PCOMVEN, PCOMSUP, PCOMTLV' +
        ', '
      'PDEDVD, '
      
        '   PTPACER, PTPACERT, PTPACERS, PMOD00, PMOD01, PMOD02, PTITSCOM' +
        ', '
      'PMANPC, '
      
        '   PDEVOL, PCOMEMP, PDJNR, PA001, PA002, PA003, PAQTDATA, PAUSRT' +
        'D, '
      'PVISA, '
      '   PANVISA, PREDE, PCONV, PCODDBC, PPRZVAL, PMOEDA, PVERCRE, '
      'PQTDBLQ, PTPBLQ, '
      '   PPRZCOMP, PDTUBKP, PHRABKP, PDCAMBKP, PDRESBKP, PDDTPRES, '
      'PDQTDRES, '
      '   PDQPCOP, PUCADGRU, PUCADRAM, PUCADCON, PUCADTIP, PUREGMS, '
      'PUPMC, PUPISCOF, '
      
        '   PUTABICM, PUPVESP, PUFOLHA, PECFDIR, PDUPTIP1, PDUPTIP2, PDUP' +
        'TIP3, '
      'PDUPTIP4, '
      '   PDUPTIP5, PDUPTIP6, PDUPTIP7, PDUPTIP8, PDUPTIP9, PDESTTIP1, '
      'PDESTTIP2, '
      
        '   PDESTTIP3, PDESTTIP4, PDESTTIP5, PDESTTIP6, PDESTTIP7, PDESTT' +
        'IP8, '
      'PDESTTIP9, '
      
        '   PCASIND, PINDUSTRIA, PPUZERO, PAGRUDUP, PDTAMUBKP, PCASPUIND,' +
        ' '
      'PLCVM, '
      
        '   PFORMACE, PMANDATCXBX, PCLIOINF, PACREGER, PTITAGER, PCRITCNP' +
        'J, '
      'PCRITIE, '
      '   PANOTUNI, PECFSOLCOD, PECFFECCOM, PECFCAI, PEXTRACUS, '
      'PEXTRAMEN, PUPALNUM, '
      '   PPALNUM, PONCHAGEPRO, PFSM, PCADCLITAXC, PLS_NUMPED, '
      'PLS_NUMPF, PPERCPL, '
      '   PCALCPPRO, PBLQDEVOL, PMPDISP, PTIPOEXT, PCRDOCSIG, PCRDOC, '
      'PDIASORCAT, '
      
        '   PQTDDIAV, PCODMOE, PLSEPCUPOM, PDUPTIP10, PDUPTIP11, PDUPTIP1' +
        '2, '
      'PDUPTIP13, '
      '   PDUPTIP14, PDUPTIP15, PDESTTIP10, PDESTTIP11, PDESTTIP12, '
      'PDESTTIP13, '
      
        '   PDESTTIP14, PDESTTIP15, PFCORP_ACAB, PFCORP_SERV, PFCORP_MPR,' +
        ' '
      'PFCORP_PP, '
      
        '   PFCORP_MP, PFCORP_ISUM, PFCORP_OUT, PFCORP_VENC, PFCORP_BLOQ,' +
        ' '
      'PUIMOBIL, '
      '   PUCONVEI, PFATDPRO, PTAMJPG, POCUEST, PPPADATU, PDM_ENDIP, '
      'PDM_PORTA, '
      '   PPCOGRA, PTIPOTEF, PEXCFP_EXCPED, PPEDFPGTO, PDUPCNPJ, '
      'PCOMASSE, PPERCPLCX, '
      
        '   PPERCPLFARDO, PPERCPLPCT, PCODPROPADFAT, PDUPTIP16, PDUPTIP17' +
        ', '
      'PDUPTIP18, '
      '   PDESTTIP16, PDESTTIP17, PDESTTIP18, PCONSPROPAD, PLEITORPED, '
      'PLEITORPF, '
      '   PLEITORAJU, PTRODCX, PTROEMP100, PQTDCASARRED, PMANPCUSFOR, '
      'PTAMJPGALT, '
      '   PTAMJPGTAM, PONCHANGECLI, PONCHANGECV, PONCHANGEFOR, '
      'PONCHANGEDBC, PONCHANGEDEPCX, '
      '   PONCHANGECCU, PONCHANGELOC, PONCHANGEBAI, PONCHANGEPV, '
      'PONCHANGEVEND, '
      '   PONCHANGUSR, PONCHANGECAR, PONCHANGFUN, PONCHANGREDEC, '
      'PONCHANGEGPRO, '
      '   PONCHANGRPRO, PONCHANGETPRO, PONCHANGECPRO, PONCHANGERCLI, '
      'PONCHANGESUP, '
      '   PONCHANGETRA, PONCHANGEUF, PTIPOAJUDA, PME_TECLA01, '
      'PME_TECLA02, PME_TECLA03, '
      
        '   PME_TECLA04, PCE_TECLA01, PCE_TECLA02, PCE_TECLA03, PCE_TECLA' +
        '04, '
      'PATIVARTODAS, '
      '   PPROMCADPRO, PTEXTOBAIXO, PCORTEXBAIXO, PTEXTOALTO, '
      'PCORTEXALTO, PTEXTOAMBAS, '
      '   PCORTEXAMBAS, PUSA_DEGRADE, PTIPOMENU, PFILPRO, PHOSTEMAIL, '
      'PUSEREMAIL, '
      '   PSENHAEMAIL, PATPCOFABENT, PFORPEDPAD, PLSEPMOD02, '
      'PLORCMOD02, PCONSPROPED, '
      
        '   PDUPTIP19, PDUPTIP20, PDUPTIP21, PDUPTIP22, PDUPTIP23, PDUPTI' +
        'P24, '
      'PDUPTIP25, '
      '   PDESTTIP19, PDESTTIP20, PDESTTIP21, PDESTTIP22, PDESTTIP23, '
      'PDESTTIP24, '
      '   PDESTTIP25, PQTDLCQP, PLOGUSRPED, PVISMLUC, PHINTPROPED, '
      'PIND_TPFORMULA, '
      '   PFORPROPAD, PATUCOMPROGRU, PCOMISPAD, PFRENTE_VDANOR, '
      'PBLOQCNPJ, PBLOQCEP, '
      '   PMTE, PQTDDBLOQPED, PDEV_TABPV, PDEV_CODPV, '
      'PDESCEXTRA_PEDRET, PPCOPADLIQ, '
      '   PGRAVPEDBLOQ, PPROD_DNOME2, PKITPROD, PVENDCLI, '
      'PBLOQPED_MINAVISO, PSTATUS_LSEP09, '
      '   PLSEPSEP_ORDEM, PCADPRO_VDAFRENTE, PEXPMOV_EXC, '
      'PFCORP_ESTMIN_PRAT, '
      '   PFCORP_ESTMIN_GER, PMANDUPREC_AUT, PMANDUPPAG_AUT, '
      'PTIPOVALDES, PDM_ENDIP_INTERNO, '
      '   PACREMPEXTRA, PRECALCPEDMAN, PBLQPCOMENOR_QTD, '
      'PATUPCUSACABMP, PIMAGEM_DEGRADE, '
      '   PCOMPRAPADRAO, PLVALEMOD02, PFRBMS_VENC, PFCORP_EM, '
      'PFCORP_SBP, PFCORP_PI, '
      '   PFCORP_MUC, PFCORP_AI, PTLOGINEMAIL, PTAUTENTICAEMAIL, '
      'PPORTAEMAIL, '
      '   PORDEMCADPRO, PCLIVEN, PFCORP_SEMMOV, PFDIAS_SEMMOV, '
      'PCOMISVENDA, PDUPTIP26, '
      '   PDUPTIP27, PDESTTIP26, PDESTTIP27, PDUPTIP28, PDUPTIP29, '
      'PDESTTIP28, '
      '   PDESTTIP29,PVALIDAR_CERT_TECNICO)'
      'values'
      
        '  (:CODIGO, :EMPPRE, :PSEGMENTO, :PSISTEMA, :PGRAVE, :PTIPO, :UD' +
        'TTRA, '
      ':PCAMINHO, '
      
        '   :PDCADCAR, :PDCADBAI, :PDCADCLI, :PDCADCON, :PDCADCV, :PDCADF' +
        'OR, '
      ':PDCADGRU, '
      
        '   :PDCADLOC, :PDCADPRO, :PDCADRAM, :PDCADRED, :PDCADTP, :PDCADT' +
        'RA, '
      ':PDCADUSR, '
      
        '   :PDCADVEN, :PDCADSUP, :PIMPFPAD, :PCASAS, :PCASASPU, :PCASQTD' +
        ', '
      ':PCLIPED, '
      '   :PPVPED, :PVENUSR, :PCODLOC, :PCODBAI, :PTIPPED, :PCOMVEN, '
      ':PCOMSUP, '
      '   :PCOMTLV, :PDEDVD, :PTPACER, :PTPACERT, :PTPACERS, :PMOD00, '
      ':PMOD01, '
      
        '   :PMOD02, :PTITSCOM, :PMANPC, :PDEVOL, :PCOMEMP, :PDJNR, :PA00' +
        '1, '
      ':PA002, '
      
        '   :PA003, :PAQTDATA, :PAUSRTD, :PVISA, :PANVISA, :PREDE, :PCONV' +
        ', '
      ':PCODDBC, '
      '   :PPRZVAL, :PMOEDA, :PVERCRE, :PQTDBLQ, :PTPBLQ, :PPRZCOMP, '
      ':PDTUBKP, '
      
        '   :PHRABKP, :PDCAMBKP, :PDRESBKP, :PDDTPRES, :PDQTDRES, :PDQPCO' +
        'P, '
      ':PUCADGRU, '
      
        '   :PUCADRAM, :PUCADCON, :PUCADTIP, :PUREGMS, :PUPMC, :PUPISCOF,' +
        ' '
      ':PUTABICM, '
      
        '   :PUPVESP, :PUFOLHA, :PECFDIR, :PDUPTIP1, :PDUPTIP2, :PDUPTIP3' +
        ', '
      ':PDUPTIP4, '
      
        '   :PDUPTIP5, :PDUPTIP6, :PDUPTIP7, :PDUPTIP8, :PDUPTIP9, :PDEST' +
        'TIP1, '
      ':PDESTTIP2, '
      '   :PDESTTIP3, :PDESTTIP4, :PDESTTIP5, :PDESTTIP6, :PDESTTIP7, '
      ':PDESTTIP8, '
      '   :PDESTTIP9, :PCASIND, :PINDUSTRIA, :PPUZERO, :PAGRUDUP, '
      ':PDTAMUBKP, '
      
        '   :PCASPUIND, :PLCVM, :PFORMACE, :PMANDATCXBX, :PCLIOINF, :PACR' +
        'EGER, '
      ':PTITAGER, '
      
        '   :PCRITCNPJ, :PCRITIE, :PANOTUNI, :PECFSOLCOD, :PECFFECCOM, :P' +
        'ECFCAI, '
      '   :PEXTRACUS, :PEXTRAMEN, :PUPALNUM, :PPALNUM, :PONCHAGEPRO, '
      ':PFSM, :PCADCLITAXC, '
      '   :PLS_NUMPED, :PLS_NUMPF, :PPERCPL, :PCALCPPRO, :PBLQDEVOL, '
      ':PMPDISP, '
      
        '   :PTIPOEXT, :PCRDOCSIG, :PCRDOC, :PDIASORCAT, :PQTDDIAV, :PCOD' +
        'MOE, '
      ':PLSEPCUPOM, '
      '   :PDUPTIP10, :PDUPTIP11, :PDUPTIP12, :PDUPTIP13, :PDUPTIP14, '
      ':PDUPTIP15, '
      
        '   :PDESTTIP10, :PDESTTIP11, :PDESTTIP12, :PDESTTIP13, :PDESTTIP' +
        '14, '
      ':PDESTTIP15, '
      
        '   :PFCORP_ACAB, :PFCORP_SERV, :PFCORP_MPR, :PFCORP_PP, :PFCORP_' +
        'MP, '
      ':PFCORP_ISUM, '
      
        '   :PFCORP_OUT, :PFCORP_VENC, :PFCORP_BLOQ, :PUIMOBIL, :PUCONVEI' +
        ', '
      ':PFATDPRO, '
      
        '   :PTAMJPG, :POCUEST, :PPPADATU, :PDM_ENDIP, :PDM_PORTA, :PPCOG' +
        'RA, '
      ':PTIPOTEF, '
      
        '   :PEXCFP_EXCPED, :PPEDFPGTO, :PDUPCNPJ, :PCOMASSE, :PPERCPLCX,' +
        ' '
      ':PPERCPLFARDO, '
      
        '   :PPERCPLPCT, :PCODPROPADFAT, :PDUPTIP16, :PDUPTIP17, :PDUPTIP' +
        '18, '
      ':PDESTTIP16, '
      
        '   :PDESTTIP17, :PDESTTIP18, :PCONSPROPAD, :PLEITORPED, :PLEITOR' +
        'PF, '
      ':PLEITORAJU, '
      '   :PTRODCX, :PTROEMP100, :PQTDCASARRED, :PMANPCUSFOR, '
      ':PTAMJPGALT, :PTAMJPGTAM, '
      '   :PONCHANGECLI, :PONCHANGECV, :PONCHANGEFOR, :PONCHANGEDBC, '
      ':PONCHANGEDEPCX, '
      '   :PONCHANGECCU, :PONCHANGELOC, :PONCHANGEBAI, :PONCHANGEPV, '
      ':PONCHANGEVEND, '
      '   :PONCHANGUSR, :PONCHANGECAR, :PONCHANGFUN, :PONCHANGREDEC, '
      ':PONCHANGEGPRO, '
      '   :PONCHANGRPRO, :PONCHANGETPRO, :PONCHANGECPRO, '
      ':PONCHANGERCLI, :PONCHANGESUP, '
      '   :PONCHANGETRA, :PONCHANGEUF, :PTIPOAJUDA, :PME_TECLA01, '
      ':PME_TECLA02, '
      '   :PME_TECLA03, :PME_TECLA04, :PCE_TECLA01, :PCE_TECLA02, '
      ':PCE_TECLA03, '
      '   :PCE_TECLA04, :PATIVARTODAS, :PPROMCADPRO, :PTEXTOBAIXO, '
      ':PCORTEXBAIXO, '
      '   :PTEXTOALTO, :PCORTEXALTO, :PTEXTOAMBAS, :PCORTEXAMBAS, '
      ':PUSA_DEGRADE, '
      
        '   :PTIPOMENU, :PFILPRO, :PHOSTEMAIL, :PUSEREMAIL, :PSENHAEMAIL,' +
        ' '
      ':PATPCOFABENT, '
      
        '   :PFORPEDPAD, :PLSEPMOD02, :PLORCMOD02, :PCONSPROPED, :PDUPTIP' +
        '19, '
      ':PDUPTIP20, '
      '   :PDUPTIP21, :PDUPTIP22, :PDUPTIP23, :PDUPTIP24, :PDUPTIP25, '
      ':PDESTTIP19, '
      
        '   :PDESTTIP20, :PDESTTIP21, :PDESTTIP22, :PDESTTIP23, :PDESTTIP' +
        '24, '
      ':PDESTTIP25, '
      '   :PQTDLCQP, :PLOGUSRPED, :PVISMLUC, :PHINTPROPED, '
      ':PIND_TPFORMULA, :PFORPROPAD, '
      '   :PATUCOMPROGRU, :PCOMISPAD, :PFRENTE_VDANOR, :PBLOQCNPJ, '
      ':PBLOQCEP, '
      '   :PMTE, :PQTDDBLOQPED, :PDEV_TABPV, :PDEV_CODPV, '
      ':PDESCEXTRA_PEDRET, '
      
        '   :PPCOPADLIQ, :PGRAVPEDBLOQ, :PPROD_DNOME2, :PKITPROD, :PVENDC' +
        'LI, '
      ':PBLOQPED_MINAVISO, '
      '   :PSTATUS_LSEP09, :PLSEPSEP_ORDEM, :PCADPRO_VDAFRENTE, '
      ':PEXPMOV_EXC, '
      '   :PFCORP_ESTMIN_PRAT, :PFCORP_ESTMIN_GER, :PMANDUPREC_AUT, '
      ':PMANDUPPAG_AUT, '
      '   :PTIPOVALDES, :PDM_ENDIP_INTERNO, :PACREMPEXTRA, '
      ':PRECALCPEDMAN, :PBLQPCOMENOR_QTD, '
      '   :PATUPCUSACABMP, :PIMAGEM_DEGRADE, :PCOMPRAPADRAO, '
      ':PLVALEMOD02, :PFRBMS_VENC, '
      
        '   :PFCORP_EM, :PFCORP_SBP, :PFCORP_PI, :PFCORP_MUC, :PFCORP_AI,' +
        ' '
      ':PTLOGINEMAIL, '
      '   :PTAUTENTICAEMAIL, :PPORTAEMAIL, :PORDEMCADPRO, :PCLIVEN, '
      ':PFCORP_SEMMOV, '
      
        '   :PFDIAS_SEMMOV, :PCOMISVENDA, :PDUPTIP26, :PDUPTIP27, :PDESTT' +
        'IP26, '
      ':PDESTTIP27,'
      
        '   :PDUPTIP28, :PDUPTIP29, :PDESTTIP28, :PDESTTIP29,:PVALIDAR_CE' +
        'RT_TECNICO)')
    DeleteSQL.Strings = (
      'delete from PARGER'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 505
    Top = 87
  end
  object U_Ped01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01'
      'set'
      '  P1CODEMP = :P1CODEMP,'
      '  P1LOTSEQ = :P1LOTSEQ,'
      '  P1CHAVE = :P1CHAVE,'
      '  P1CHAVE_NIVEL = :P1CHAVE_NIVEL,'
      '  P1ORDEM = :P1ORDEM,'
      '  P1LOCAL = :P1LOCAL,'
      '  P1CODCLI = :P1CODCLI,'
      '  P1CODVEN = :P1CODVEN,'
      '  P1CODV02 = :P1CODV02,'
      '  P1CODV03 = :P1CODV03,'
      '  P1CODV04 = :P1CODV04,'
      '  P1CODASSE = :P1CODASSE,'
      '  P1BLQPRM = :P1BLQPRM,'
      '  P1TOTEXTCOM = :P1TOTEXTCOM,'
      '  P1PROMOCAO = :P1PROMOCAO,'
      '  P1DATAP = :P1DATAP,'
      '  P1DATANF = :P1DATANF,'
      '  P1MOTDES = :P1MOTDES,'
      '  P1TOTVICMSDES = :P1TOTVICMSDES,'
      '  P1NUMNF = :P1NUMNF,'
      '  P1SERIE = :P1SERIE,'
      '  P1NUMNF_SERV = :P1NUMNF_SERV,'
      '  P1SUBSER = :P1SUBSER,'
      '  P1MODELO = :P1MODELO,'
      '  P1SUBMOD = :P1SUBMOD,'
      '  P1FORMACE = :P1FORMACE,'
      '  P1PROCESSO = :P1PROCESSO,'
      '  P1OBS1 = :P1OBS1,'
      '  P1OBS2 = :P1OBS2,'
      '  P1OBS3 = :P1OBS3,'
      '  P1STATUS = :P1STATUS,'
      '  P1ANALISE = :P1ANALISE,'
      '  P1TIPO = :P1TIPO,'
      '  P1TIPO_ENTSAI = :P1TIPO_ENTSAI,'
      '  P1PEDORI = :P1PEDORI,'
      '  P1SITPED = :P1SITPED,'
      '  P1DATHOR_ULTEVE = :P1DATHOR_ULTEVE,'
      '  P1ACRESCIMO = :P1ACRESCIMO,'
      '  P1CODUSR_ULTEVE = :P1CODUSR_ULTEVE,'
      '  P1COMP_ULTEVE = :P1COMP_ULTEVE,'
      '  P1TOTSERLIQ = :P1TOTSERLIQ,'
      '  P1TOTALB = :P1TOTALB,'
      '  P1TOTPROM = :P1TOTPROM,'
      '  P1TOTALL = :P1TOTALL,'
      '  P1CODUSR = :P1CODUSR,'
      '  P1HORADIG = :P1HORADIG,'
      '  P1DTMOD = :P1DTMOD,'
      '  P1HRMOD = :P1HRMOD,'
      '  P1USRMOD = :P1USRMOD,'
      '  P1CONF = :P1CONF,'
      '  P1CODCON = :P1CODCON,'
      '  P1DATCON = :P1DATCON,'
      '  P1HORCON = :P1HORCON,'
      '  P1TIPENT = :P1TIPENT,'
      '  P1PREVENT = :P1PREVENT,'
      '  P1HPREVENT = :P1HPREVENT,'
      '  P1CODENT = :P1CODENT,'
      '  P1PRAZO = :P1PRAZO,'
      '  P1DATENT = :P1DATENT,'
      '  P1NOMEREC = :P1NOMEREC,'
      '  P1DATHORREC = :P1DATHORREC,'
      '  P1TPEMIS = :P1TPEMIS,'
      '  P1HORENT = :P1HORENT,'
      '  P1TABPV = :P1TABPV,'
      '  P1CODPV = :P1CODPV,'
      '  P1VALENT = :P1VALENT,'
      '  P1PRAZO_ENT = :P1PRAZO_ENT,'
      '  P1CANHOTO = :P1CANHOTO,'
      '  P1CUPOM = :P1CUPOM,'
      '  P1BASEN = :P1BASEN,'
      '  P1ICMSN = :P1ICMSN,'
      '  P1REPAS = :P1REPAS,'
      '  P1BASER = :P1BASER,'
      '  P1ICMSR = :P1ICMSR,'
      '  P1BASENP = :P1BASENP,'
      '  P1BASENN = :P1BASENN,'
      '  P1BASENI = :P1BASENI,'
      '  P1ICMSNP = :P1ICMSNP,'
      '  P1ICMSNN = :P1ICMSNN,'
      '  P1ICMSNI = :P1ICMSNI,'
      '  P1BASERP = :P1BASERP,'
      '  P1BASERN = :P1BASERN,'
      '  P1BASERI = :P1BASERI,'
      '  P1ICMSRP = :P1ICMSRP,'
      '  P1ICMSRN = :P1ICMSRN,'
      '  P1ICMSRI = :P1ICMSRI,'
      '  P1BASENRI = :P1BASENRI,'
      '  P1ICMSNRI = :P1ICMSNRI,'
      '  P1BASENRP = :P1BASENRP,'
      '  P1ICMSNRP = :P1ICMSNRP,'
      '  P1BASENRN = :P1BASENRN,'
      '  P1ICMSNRN = :P1ICMSNRN,'
      '  P1ICMS_BCFRE = :P1ICMS_BCFRE,'
      '  P1ICMS_ALFRE = :P1ICMS_ALFRE,'
      '  P1ICMS_VLFRE = :P1ICMS_VLFRE,'
      '  P1ICMS_BCSEG = :P1ICMS_BCSEG,'
      '  P1ICMS_ALSEG = :P1ICMS_ALSEG,'
      '  P1ICMS_VLSEG = :P1ICMS_VLSEG,'
      '  P1DESPACES = :P1DESPACES,'
      '  P1ICMS_BCOUTD = :P1ICMS_BCOUTD,'
      '  P1ICMS_ALOUTD = :P1ICMS_ALOUTD,'
      '  P1ICMS_VLOUTD = :P1ICMS_VLOUTD,'
      '  P1ICMS_BCIPI = :P1ICMS_BCIPI,'
      '  P1ICMS_ALIPI = :P1ICMS_ALIPI,'
      '  P1ICMS_VLIPI = :P1ICMS_VLIPI,'
      '  P1ALIQDEB = :P1ALIQDEB,'
      '  P1TOTPIS = :P1TOTPIS,'
      '  P1TOTCOFINS = :P1TOTCOFINS,'
      '  P1IPIINA = :P1IPIINA,'
      '  P1IPIPOS = :P1IPIPOS,'
      '  P1IPINEG = :P1IPINEG,'
      '  P1TOTTRI = :P1TOTTRI,'
      '  P1TOTRET = :P1TOTRET,'
      '  P1TOTISE = :P1TOTISE,'
      '  P1TOTOUT = :P1TOTOUT,'
      '  P1TARBAN = :P1TARBAN,'
      '  P1INCTB = :P1INCTB,'
      '  P1VALSEG = :P1VALSEG,'
      '  P1TOTPOS = :P1TOTPOS,'
      '  P1TOTNEG = :P1TOTNEG,'
      '  P1TOTINA = :P1TOTINA,'
      '  P1TOTDES = :P1TOTDES,'
      '  P1TOTDESCPR = :P1TOTDESCPR,'
      '  P1TOTDI01 = :P1TOTDI01,'
      '  P1TOTDI02 = :P1TOTDI02,'
      '  P1TOTDI03 = :P1TOTDI03,'
      '  P1VALDES01 = :P1VALDES01,'
      '  P1VALDES02 = :P1VALDES02,'
      '  P1TOTDIVL = :P1TOTDIVL,'
      '  P1TOTUCPR = :P1TOTUCPR,'
      '  P1DESC01 = :P1DESC01,'
      '  P1DESC02 = :P1DESC02,'
      '  P1VLRDES = :P1VLRDES,'
      '  P1PAVDES = :P1PAVDES,'
      '  P1CODTRA = :P1CODTRA,'
      '  P1QTDVOL = :P1QTDVOL,'
      '  P1PESOL = :P1PESOL,'
      '  P1PESOB = :P1PESOB,'
      '  P1QTDM3 = :P1QTDM3,'
      '  P1ESPECIE = :P1ESPECIE,'
      '  P1FRETEPC = :P1FRETEPC,'
      '  P1VALFRE = :P1VALFRE,'
      '  P1VFRE_CUSENT = :P1VFRE_CUSENT,'
      '  P1UFPV = :P1UFPV,'
      '  P1PLACAV = :P1PLACAV,'
      '  P1BANCO = :P1BANCO,'
      '  P1CODSER = :P1CODSER,'
      '  P1CODLDR = :P1CODLDR,'
      '  P1PCOMIS = :P1PCOMIS,'
      '  P1CODCV = :P1CODCV,'
      '  P1LOTEDM = :P1LOTEDM,'
      '  P1MINUTA = :P1MINUTA,'
      '  P1COMIS = :P1COMIS,'
      '  P1COMIS_EXTRA = :P1COMIS_EXTRA,'
      '  P1COMV02 = :P1COMV02,'
      '  P1COMV03 = :P1COMV03,'
      '  P1COMV04 = :P1COMV04,'
      '  P1COMIST = :P1COMIST,'
      '  P1COMISS = :P1COMISS,'
      '  P1COMASSE = :P1COMASSE,'
      '  P1ORIGEM = :P1ORIGEM,'
      '  P1NPEDORI = :P1NPEDORI,'
      '  P1CODTLV = :P1CODTLV,'
      '  P1BCISSQN = :P1BCISSQN,'
      '  P1RED_BCISSQN = :P1RED_BCISSQN,'
      '  P1VISSQN = :P1VISSQN,'
      '  P1BCINSS = :P1BCINSS,'
      '  P1RED_BCINSS = :P1RED_BCINSS,'
      '  P1VINSS = :P1VINSS,'
      '  P1BCIRRF = :P1BCIRRF,'
      '  P1RED_BCIRRF = :P1RED_BCIRRF,'
      '  P1VIRRF = :P1VIRRF,'
      '  P1ETIVOL = :P1ETIVOL,'
      '  P1CODSEP = :P1CODSEP,'
      '  P1DATASEP = :P1DATASEP,'
      '  P1HORSEP = :P1HORSEP,'
      '  P1CODEMB = :P1CODEMB,'
      '  P1DATAEMB = :P1DATAEMB,'
      '  P1HOREMB = :P1HOREMB,'
      '  P1NUMCF = :P1NUMCF,'
      '  P1CODECF = :P1CODECF,'
      '  P1ECF_SERIE = :P1ECF_SERIE,'
      '  P1CX_CODCAI = :P1CX_CODCAI,'
      '  P1CX_LOTMOV = :P1CX_LOTMOV,'
      '  P1DATACF = :P1DATACF,'
      '  P1TPPCO = :P1TPPCO,'
      '  P1SEMCOM = :P1SEMCOM,'
      '  P1DESCFIN = :P1DESCFIN,'
      '  P1LOTCV = :P1LOTCV,'
      '  P1LOTCV02 = :P1LOTCV02,'
      '  P1LOTCV03 = :P1LOTCV03,'
      '  P1LOTCV04 = :P1LOTCV04,'
      '  P1LOTCS = :P1LOTCS,'
      '  P1LOTCASSE = :P1LOTCASSE,'
      '  P1LOTCT = :P1LOTCT,'
      '  P1PVTC = :P1PVTC,'
      '  P1PVCOM = :P1PVCOM,'
      '  P1PVCOM02 = :P1PVCOM02,'
      '  P1PVCOM03 = :P1PVCOM03,'
      '  P1PVCOM04 = :P1PVCOM04,'
      '  P1PVACTD = :P1PVACTD,'
      '  P1PVACT00 = :P1PVACT00,'
      '  P1PVACT01 = :P1PVACT01,'
      '  P1PVACT99 = :P1PVACT99,'
      '  P1PVTDC = :P1PVTDC,'
      '  P1PVDES = :P1PVDES,'
      '  P1PVTPD1 = :P1PVTPD1,'
      '  P1PVDES1 = :P1PVDES1,'
      '  P1PVTPD2 = :P1PVTPD2,'
      '  P1PVDES2 = :P1PVDES2,'
      '  P1PVTPD3 = :P1PVTPD3,'
      '  P1PVDES3 = :P1PVDES3,'
      '  P1PVTPDESF = :P1PVTPDESF,'
      '  P1PVDESCF = :P1PVDESCF,'
      '  P1PVDIASDESCF = :P1PVDIASDESCF,'
      '  P1PVDDESCF = :P1PVDDESCF,'
      '  P1TPP = :P1TPP,'
      '  P1SITAC = :P1SITAC,'
      '  P1DTACERTO = :P1DTACERTO,'
      '  P1LTACERTO = :P1LTACERTO,'
      '  P1SITCPR = :P1SITCPR,'
      '  P1VLRACRE = :P1VLRACRE,'
      '  P1PEDORI1 = :P1PEDORI1,'
      '  P1PEDORI2 = :P1PEDORI2,'
      '  P1MOTIVO = :P1MOTIVO,'
      '  P1NUMVIS = :P1NUMVIS,'
      '  P1DATVIS = :P1DATVIS,'
      '  P1DATDOC = :P1DATDOC,'
      '  P1EMIDOC = :P1EMIDOC,'
      '  P1ACRECONV = :P1ACRECONV,'
      '  P1ACREGER = :P1ACREGER,'
      '  P1PACRECONV = :P1PACRECONV,'
      '  P1PACREGER = :P1PACREGER,'
      '  P1CODDEP = :P1CODDEP,'
      '  P1SEMCOMP = :P1SEMCOMP,'
      '  P1NAUT = :P1NAUT,'
      '  P1CFO1 = :P1CFO1,'
      '  P1CFO2 = :P1CFO2,'
      '  P1CFOSER = :P1CFOSER,'
      '  P1PDESCLIB = :P1PDESCLIB,'
      '  P1PDESCL_USR = :P1PDESCL_USR,'
      '  P1PZOLIB = :P1PZOLIB,'
      '  P1PZOLIB_USR = :P1PZOLIB_USR,'
      '  P1CODBLOQ_LIB = :P1CODBLOQ_LIB,'
      '  P1BLOQPEND = :P1BLOQPEND,'
      '  P1CODBLOQ = :P1CODBLOQ,'
      '  P1CODUSR_LBLOQ = :P1CODUSR_LBLOQ,'
      '  P1CUPACRE = :P1CUPACRE,'
      '  P1CUPDES = :P1CUPDES,'
      '  P1TOTCGRU = :P1TOTCGRU,'
      '  P1TOTSGRU = :P1TOTSGRU,'
      '  P1LEMAT = :P1LEMAT,'
      '  P1QTDMAN = :P1QTDMAN,'
      '  P1CODPRIOR = :P1CODPRIOR,'
      '  P1DTHRCHEG = :P1DTHRCHEG,'
      '  P1SEPAMB = :P1SEPAMB,'
      '  P1DUP_PROD = :P1DUP_PROD,'
      '  P1DUP_SERV = :P1DUP_SERV,'
      '  P1EMITENTE = :P1EMITENTE,'
      '  P1PVACREDESREG = :P1PVACREDESREG,'
      '  P1PVAJCOMIS = :P1PVAJCOMIS,'
      '  P1NFE_ENVXML = :P1NFE_ENVXML,'
      '  P1QTDDECPU = :P1QTDDECPU,'
      '  P1DATHOR_REP = :P1DATHOR_REP,'
      '  P1PESO_LIDO_TOTAL = :P1PESO_LIDO_TOTAL,'
      '  P1IRRF = :P1IRRF, P1CSLL = :P1CSLL,'
      '  P1SERVICO_OBS_CORPO = :P1SERVICO_OBS_CORPO,'
      '  P1SERVICO_OBS_INF_ADIC = :P1SERVICO_OBS_INF_ADIC'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM')
    InsertSQL.Strings = (
      'insert into CADP01'
      
        '  (P1CODEMP, P1LOTSEQ, P1CHAVE, P1CHAVE_NIVEL, P1ORDEM, P1LOCAL,' +
        ' '
      'P1CODCLI, '
      '   P1CODVEN, P1CODV02, P1CODV03, P1CODV04, P1CODASSE, P1BLQPRM, '
      'P1TOTEXTCOM, '
      '   P1PROMOCAO, P1DATAP, P1DATANF, P1MOTDES, P1TOTVICMSDES, '
      'P1NUMNF, P1SERIE, '
      '   P1NUMNF_SERV, P1SUBSER, P1MODELO, P1SUBMOD, P1FORMACE, '
      'P1PROCESSO, P1OBS1, '
      '   P1OBS2, P1OBS3, P1STATUS, P1ANALISE, P1TIPO, P1TIPO_ENTSAI, '
      'P1PEDORI, '
      '   P1SITPED, P1DATHOR_ULTEVE, P1ACRESCIMO, P1CODUSR_ULTEVE, '
      'P1COMP_ULTEVE, '
      '   P1TOTSERLIQ, P1TOTALB, P1TOTPROM, P1TOTALL, P1CODUSR, '
      'P1HORADIG, P1DTMOD, '
      '   P1HRMOD, P1USRMOD, P1CONF, P1CODCON, P1DATCON, P1HORCON, '
      'P1TIPENT, P1PREVENT, '
      '   P1HPREVENT, P1CODENT, P1PRAZO, P1DATENT, P1NOMEREC, '
      'P1DATHORREC, P1TPEMIS, '
      
        '   P1HORENT, P1TABPV, P1CODPV, P1VALENT, P1PRAZO_ENT, P1CANHOTO,' +
        ' '
      'P1CUPOM, '
      
        '   P1BASEN, P1ICMSN, P1REPAS, P1BASER, P1ICMSR, P1BASENP, P1BASE' +
        'NN, '
      'P1BASENI, '
      '   P1ICMSNP, P1ICMSNN, P1ICMSNI, P1BASERP, P1BASERN, P1BASERI, '
      'P1ICMSRP, '
      
        '   P1ICMSRN, P1ICMSRI, P1BASENRI, P1ICMSNRI, P1BASENRP, P1ICMSNR' +
        'P, '
      'P1BASENRN, '
      '   P1ICMSNRN, P1ICMS_BCFRE, P1ICMS_ALFRE, P1ICMS_VLFRE, '
      'P1ICMS_BCSEG, P1ICMS_ALSEG, '
      '   P1ICMS_VLSEG, P1DESPACES, P1ICMS_BCOUTD, P1ICMS_ALOUTD, '
      'P1ICMS_VLOUTD, '
      
        '   P1ICMS_BCIPI, P1ICMS_ALIPI, P1ICMS_VLIPI, P1ALIQDEB, P1TOTPIS' +
        ','
      'P1TOTCOFINS, '
      
        '   P1IPIINA, P1IPIPOS, P1IPINEG, P1TOTTRI, P1TOTRET, P1TOTISE, P' +
        '1TOTOUT, '
      '   P1TARBAN, P1INCTB, P1VALSEG, P1TOTPOS, P1TOTNEG, P1TOTINA, '
      'P1TOTDES, '
      '   P1TOTDESCPR, P1TOTDI01, P1TOTDI02, P1TOTDI03, P1VALDES01, '
      'P1VALDES02, '
      
        '   P1TOTDIVL, P1TOTUCPR, P1DESC01, P1DESC02, P1VLRDES, P1PAVDES,' +
        ' '
      'P1CODTRA, '
      '   P1QTDVOL, P1PESOL, P1PESOB, P1QTDM3, P1ESPECIE, P1FRETEPC, '
      'P1VALFRE, '
      
        '   P1VFRE_CUSENT, P1UFPV, P1PLACAV, P1BANCO, P1CODSER, P1CODLDR,' +
        ' '
      'P1PCOMIS, '
      
        '   P1CODCV, P1LOTEDM, P1MINUTA, P1COMIS, P1COMIS_EXTRA, P1COMV02' +
        ', '
      'P1COMV03, '
      
        '   P1COMV04, P1COMIST, P1COMISS, P1COMASSE, P1ORIGEM, P1NPEDORI,' +
        ' '
      'P1CODTLV, '
      '   P1BCISSQN, P1RED_BCISSQN, P1VISSQN, P1BCINSS, P1RED_BCINSS, '
      'P1VINSS, '
      
        '   P1BCIRRF, P1RED_BCIRRF, P1VIRRF, P1ETIVOL, P1CODSEP, P1DATASE' +
        'P, '
      'P1HORSEP, '
      
        '   P1CODEMB, P1DATAEMB, P1HOREMB, P1NUMCF, P1CODECF, P1ECF_SERIE' +
        ', '
      'P1CX_CODCAI, '
      
        '   P1CX_LOTMOV, P1DATACF, P1TPPCO, P1SEMCOM, P1DESCFIN, P1LOTCV,' +
        ' '
      'P1LOTCV02, '
      '   P1LOTCV03, P1LOTCV04, P1LOTCS, P1LOTCASSE, P1LOTCT, P1PVTC, '
      'P1PVCOM, '
      
        '   P1PVCOM02, P1PVCOM03, P1PVCOM04, P1PVACTD, P1PVACT00, P1PVACT' +
        '01, '
      'P1PVACT99, '
      '   P1PVTDC, P1PVDES, P1PVTPD1, P1PVDES1, P1PVTPD2, P1PVDES2, '
      'P1PVTPD3, '
      '   P1PVDES3, P1PVTPDESF, P1PVDESCF, P1PVDIASDESCF, P1PVDDESCF,'
      'P1TPP, P1SITAC, '
      '   P1DTACERTO, P1LTACERTO, P1SITCPR, P1VLRACRE, P1PEDORI1, '
      'P1PEDORI2, P1MOTIVO, '
      
        '   P1NUMVIS, P1DATVIS, P1DATDOC, P1EMIDOC, P1ACRECONV, P1ACREGER' +
        ','
      'P1PACRECONV,'
      '   P1PACREGER, P1CODDEP, P1SEMCOMP, P1NAUT, P1CFO1, P1CFO2,'
      'P1CFOSER, P1PDESCLIB,'
      
        '   P1PDESCL_USR, P1PZOLIB, P1PZOLIB_USR, P1CODBLOQ_LIB, P1BLOQPE' +
        'ND,'
      'P1CODBLOQ,'
      '   P1CODUSR_LBLOQ, P1CUPACRE, P1CUPDES, P1TOTCGRU, P1TOTSGRU,'
      'P1LEMAT,'
      '   P1QTDMAN, P1CODPRIOR, P1DTHRCHEG, P1SEPAMB, P1DUP_PROD,'
      'P1DUP_SERV,'
      '   P1EMITENTE, P1PVACREDESREG, P1PVAJCOMIS, P1NFE_ENVXML,'
      'P1QTDDECPU, P1DATHOR_REP,'
      '   P1PESO_LIDO_TOTAL'
      '   ,P1ID_NEW'
      '   ,P1IRRF,P1CSLL'
      '   ,P1SERVICO_OBS_CORPO'
      '   ,P1SERVICO_OBS_INF_ADIC'
      ''
      '   )'
      'values'
      
        '  (:P1CODEMP, :P1LOTSEQ, :P1CHAVE, :P1CHAVE_NIVEL, :P1ORDEM, :P1' +
        'LOCAL, '
      
        '   :P1CODCLI, :P1CODVEN, :P1CODV02, :P1CODV03, :P1CODV04, :P1COD' +
        'ASSE, '
      ':P1BLQPRM, '
      '   :P1TOTEXTCOM, :P1PROMOCAO, :P1DATAP, :P1DATANF, :P1MOTDES, '
      ':P1TOTVICMSDES, '
      '   :P1NUMNF, :P1SERIE, :P1NUMNF_SERV, :P1SUBSER, :P1MODELO, '
      ':P1SUBMOD, '
      
        '   :P1FORMACE, :P1PROCESSO, :P1OBS1, :P1OBS2, :P1OBS3, :P1STATUS' +
        ', '
      ':P1ANALISE, '
      
        '   :P1TIPO, :P1TIPO_ENTSAI, :P1PEDORI, :P1SITPED, :P1DATHOR_ULTE' +
        'VE, '
      ':P1ACRESCIMO,'
      '   :P1CODUSR_ULTEVE, :P1COMP_ULTEVE, :P1TOTSERLIQ, :P1TOTALB, '
      ':P1TOTPROM, '
      
        '   :P1TOTALL, :P1CODUSR, :P1HORADIG, :P1DTMOD, :P1HRMOD, :P1USRM' +
        'OD, '
      ':P1CONF, '
      '   :P1CODCON, :P1DATCON, :P1HORCON, :P1TIPENT, :P1PREVENT, '
      ':P1HPREVENT, '
      '   :P1CODENT, :P1PRAZO, :P1DATENT, :P1NOMEREC, :P1DATHORREC,'
      ':P1TPEMIS, '
      '   :P1HORENT, :P1TABPV, :P1CODPV, :P1VALENT, :P1PRAZO_ENT, '
      ':P1CANHOTO, '
      '   :P1CUPOM, :P1BASEN, :P1ICMSN, :P1REPAS, :P1BASER, :P1ICMSR, '
      ':P1BASENP, '
      
        '   :P1BASENN, :P1BASENI, :P1ICMSNP, :P1ICMSNN, :P1ICMSNI, :P1BAS' +
        'ERP, '
      ':P1BASERN, '
      
        '   :P1BASERI, :P1ICMSRP, :P1ICMSRN, :P1ICMSRI, :P1BASENRI, :P1IC' +
        'MSNRI, '
      
        '   :P1BASENRP, :P1ICMSNRP, :P1BASENRN, :P1ICMSNRN, :P1ICMS_BCFRE' +
        ', '
      ':P1ICMS_ALFRE, '
      '   :P1ICMS_VLFRE, :P1ICMS_BCSEG, :P1ICMS_ALSEG, :P1ICMS_VLSEG, '
      ':P1DESPACES, '
      
        '   :P1ICMS_BCOUTD, :P1ICMS_ALOUTD, :P1ICMS_VLOUTD, :P1ICMS_BCIPI' +
        ', '
      ':P1ICMS_ALIPI, '
      
        '   :P1ICMS_VLIPI, :P1ALIQDEB, :P1TOTPIS, :P1TOTCOFINS, :P1IPIINA' +
        ', :P1IPIPOS, '
      
        '   :P1IPINEG, :P1TOTTRI, :P1TOTRET, :P1TOTISE, :P1TOTOUT, :P1TAR' +
        'BAN, '
      ':P1INCTB, '
      '   :P1VALSEG, :P1TOTPOS, :P1TOTNEG, :P1TOTINA, :P1TOTDES, '
      ':P1TOTDESCPR, '
      
        '   :P1TOTDI01, :P1TOTDI02, :P1TOTDI03, :P1VALDES01, :P1VALDES02,' +
        ' '
      ':P1TOTDIVL, '
      
        '   :P1TOTUCPR, :P1DESC01, :P1DESC02, :P1VLRDES, :P1PAVDES, :P1CO' +
        'DTRA, '
      ':P1QTDVOL, '
      
        '   :P1PESOL, :P1PESOB, :P1QTDM3, :P1ESPECIE, :P1FRETEPC, :P1VALF' +
        'RE,'
      ':P1VFRE_CUSENT, '
      
        '   :P1UFPV, :P1PLACAV, :P1BANCO, :P1CODSER, :P1CODLDR, :P1PCOMIS' +
        ', '
      ':P1CODCV, '
      '   :P1LOTEDM, :P1MINUTA, :P1COMIS, :P1COMIS_EXTRA, :P1COMV02, '
      ':P1COMV03, '
      
        '   :P1COMV04, :P1COMIST, :P1COMISS, :P1COMASSE, :P1ORIGEM, :P1NP' +
        'EDORI, '
      '   :P1CODTLV, :P1BCISSQN, :P1RED_BCISSQN, :P1VISSQN, :P1BCINSS,'
      ':P1RED_BCINSS, '
      
        '   :P1VINSS, :P1BCIRRF, :P1RED_BCIRRF, :P1VIRRF, :P1ETIVOL, :P1C' +
        'ODSEP, '
      '   :P1DATASEP, :P1HORSEP, :P1CODEMB, :P1DATAEMB, :P1HOREMB, '
      ':P1NUMCF, :P1CODECF,'
      
        '   :P1ECF_SERIE, :P1CX_CODCAI, :P1CX_LOTMOV, :P1DATACF, :P1TPPCO' +
        ', '
      ':P1SEMCOM, '
      
        '   :P1DESCFIN, :P1LOTCV, :P1LOTCV02, :P1LOTCV03, :P1LOTCV04, :P1' +
        'LOTCS, '
      
        '   :P1LOTCASSE, :P1LOTCT, :P1PVTC, :P1PVCOM, :P1PVCOM02, :P1PVCO' +
        'M03, '
      ':P1PVCOM04, '
      
        '   :P1PVACTD, :P1PVACT00, :P1PVACT01, :P1PVACT99, :P1PVTDC, :P1P' +
        'VDES, '
      ':P1PVTPD1, '
      
        '   :P1PVDES1, :P1PVTPD2, :P1PVDES2, :P1PVTPD3, :P1PVDES3, :P1PVT' +
        'PDESF, '
      '   :P1PVDESCF, :P1PVDIASDESCF, :P1PVDDESCF, :P1TPP, :P1SITAC, '
      ':P1DTACERTO, '
      '   :P1LTACERTO, :P1SITCPR, :P1VLRACRE, :P1PEDORI1, :P1PEDORI2, '
      ':P1MOTIVO, '
      '   :P1NUMVIS, :P1DATVIS, :P1DATDOC, :P1EMIDOC, :P1ACRECONV, '
      ':P1ACREGER, '
      '   :P1PACRECONV, :P1PACREGER, :P1CODDEP, :P1SEMCOMP, :P1NAUT, '
      ':P1CFO1, '
      '   :P1CFO2, :P1CFOSER, :P1PDESCLIB, :P1PDESCL_USR, :P1PZOLIB, '
      ':P1PZOLIB_USR, '
      '   :P1CODBLOQ_LIB, :P1BLOQPEND, :P1CODBLOQ, :P1CODUSR_LBLOQ, '
      ':P1CUPACRE,'
      '   :P1CUPDES, :P1TOTCGRU, :P1TOTSGRU, :P1LEMAT, :P1QTDMAN, '
      ':P1CODPRIOR, '
      
        '   :P1DTHRCHEG, :P1SEPAMB, :P1DUP_PROD, :P1DUP_SERV, :P1EMITENTE' +
        ', '
      ':P1PVACREDESREG, '
      '   :P1PVAJCOMIS, :P1NFE_ENVXML, :P1QTDDECPU, :P1DATHOR_REP,'
      ':P1PESO_LIDO_TOTAL'
      ',:P1ID_NEW'
      ',:P1IRRF,:P1CSLL'
      ',:P1SERVICO_OBS_CORPO'
      ',:P1SERVICO_OBS_INF_ADIC'
      ')')
    DeleteSQL.Strings = (
      'delete from CADP01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM')
    Left = 509
    Top = 181
  end
  object U_Ped01D: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01D'
      'set'
      '  P1DCODEMP = :P1DCODEMP,'
      '  P1DLOTSEQ = :P1DLOTSEQ,'
      '  P1DCHAVE = :P1DCHAVE,'
      '  P1DORDEM = :P1DORDEM,'
      '  P1DLS_OR = :P1DLS_OR,'
      '  P1DCH_OR = :P1DCH_OR,'
      '  P1DOR_OR = :P1DOR_OR,'
      '  P1DDATAP = :P1DDATAP,'
      '  P1DCHAVE_NIVEL = :P1DCHAVE_NIVEL'
      'where'
      '  P1DCODEMP = :OLD_P1DCODEMP and'
      '  P1DCHAVE = :OLD_P1DCHAVE and'
      '  P1DORDEM = :OLD_P1DORDEM')
    InsertSQL.Strings = (
      'insert into CADP01D'
      
        '  (P1DCODEMP, P1DLOTSEQ, P1DCHAVE, P1DORDEM, P1DLS_OR, P1DCH_OR,' +
        ' P1DOR_OR, '
      '   P1DDATAP, P1DCHAVE_NIVEL)'
      'values'
      
        '  (:P1DCODEMP, :P1DLOTSEQ, :P1DCHAVE, :P1DORDEM, :P1DLS_OR, :P1D' +
        'CH_OR, '
      '   :P1DOR_OR, :P1DDATAP, :P1DCHAVE_NIVEL)')
    DeleteSQL.Strings = (
      'delete from CADP01D'
      'where'
      '  P1DCODEMP = :OLD_P1DCODEMP and'
      '  P1DCHAVE = :OLD_P1DCHAVE and'
      '  P1DORDEM = :OLD_P1DORDEM')
    Left = 518
    Top = 222
  end
  object U_Ped01V: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01V'
      'set'
      '  P1VCODEMP = :P1VCODEMP,'
      '  P1VLOTSEQ = :P1VLOTSEQ,'
      '  P1VCHAVE = :P1VCHAVE,'
      '  P1VORDEM = :P1VORDEM,'
      '  P1VSEQ = :P1VSEQ,'
      '  P1VTABPV = :P1VTABPV,'
      '  P1VCODIGO = :P1VCODIGO,'
      '  P1VDATAV = :P1VDATAV,'
      '  P1VVALOR = :P1VVALOR,'
      '  P1VCOMISV = :P1VCOMISV,'
      '  P1VCOM02 = :P1VCOM02,'
      '  P1VCOM03 = :P1VCOM03,'
      '  P1VCOMISS = :P1VCOMISS,'
      '  P1VCOMIST = :P1VCOMIST,'
      '  P1VFRETE = :P1VFRETE,'
      '  P1VICMSR = :P1VICMSR,'
      '  P1VDESCF = :P1VDESCF,'
      '  P1VDTDESCF = :P1VDTDESCF,'
      '  P1VSEMCOM = :P1VSEMCOM,'
      '  P1VTOTDI01 = :P1VTOTDI01,'
      '  P1VTOTDI02 = :P1VTOTDI02,'
      '  P1VTOTDI03 = :P1VTOTDI03,'
      '  P1VTOTDIVL = :P1VTOTDIVL,'
      '  P1VVALDES01 = :P1VVALDES01,'
      '  P1VVALDES02 = :P1VVALDES02,'
      '  P1VVLRDES = :P1VVLRDES,'
      '  P1VTARBAN = :P1VTARBAN,'
      '  P1VCOMASSE = :P1VCOMASSE,'
      '  P1VSEG = :P1VSEG,'
      '  P1VCOM04 = :P1VCOM04,'
      '  P1VTOTIPI = :P1VTOTIPI,'
      '  P1VTOTCGRU = :P1VTOTCGRU,'
      '  P1VTOTSGRU = :P1VTOTSGRU,'
      '  P1VVLRSERV = :P1VVLRSERV,'
      '  P1VCOMISV_EXTRA = :P1VCOMISV_EXTRA,'
      '  P1VPFPGTO = :P1VPFPGTO,'
      '  P1VVINC02 = :P1VVINC02,'
      '  P1VCODFP = :P1VCODFP,'
      '  P1VNOMFPGTO = :P1VNOMFPGTO,'
      '  P1VDEV_CODEMP = :P1VDEV_CODEMP,'
      '  P1VDEV_CODECF = :P1VDEV_CODECF,'
      '  P1VDEV_NUMERO = :P1VDEV_NUMERO,'
      '  P1VDEV_DESD = :P1VDEV_DESD,'
      '  P1VDEV_DUP = :P1VDEV_DUP,'
      '  P1VDEV_DTEMIS = :P1VDEV_DTEMIS,'
      '  P1VCHAVE_NIVEL = :P1VCHAVE_NIVEL'
      '  ,P1TITSEP_PROD_SERV = :P1TITSEP_PROD_SERV'
      'where'
      '  P1VCODEMP = :OLD_P1VCODEMP and'
      '  P1VLOTSEQ = :OLD_P1VLOTSEQ and'
      '  P1VCHAVE = :OLD_P1VCHAVE and'
      '  P1VORDEM = :OLD_P1VORDEM')
    InsertSQL.Strings = (
      'insert into CADP01V'
      
        '  (P1VCODEMP, P1VLOTSEQ, P1VCHAVE, P1VORDEM, P1VSEQ, P1VTABPV, P' +
        '1VCODIGO, '
      
        '   P1VDATAV, P1VVALOR, P1VCOMISV, P1VCOM02, P1VCOM03, P1VCOMISS,' +
        ' P1VCOMIST, '
      
        '   P1VFRETE, P1VICMSR, P1VDESCF, P1VDTDESCF, P1VSEMCOM, P1VTOTDI' +
        '01, P1VTOTDI02, '
      
        '   P1VTOTDI03, P1VTOTDIVL, P1VVALDES01, P1VVALDES02, P1VVLRDES, ' +
        'P1VTARBAN, '
      
        '   P1VCOMASSE, P1VSEG, P1VCOM04, P1VTOTIPI, P1VTOTCGRU, P1VTOTSG' +
        'RU, P1VVLRSERV, '
      
        '   P1VCOMISV_EXTRA, P1VPFPGTO, P1VVINC02, P1VCODFP, P1VNOMFPGTO,' +
        ' P1VDEV_CODEMP, '
      
        '   P1VDEV_CODECF, P1VDEV_NUMERO, P1VDEV_DESD, P1VDEV_DUP, P1VDEV' +
        '_DTEMIS, '
      '   P1VCHAVE_NIVEL,P1TITSEP_PROD_SERV)'
      'values'
      
        '  (:P1VCODEMP, :P1VLOTSEQ, :P1VCHAVE, :P1VORDEM, :P1VSEQ, :P1VTA' +
        'BPV, :P1VCODIGO, '
      
        '   :P1VDATAV, :P1VVALOR, :P1VCOMISV, :P1VCOM02, :P1VCOM03, :P1VC' +
        'OMISS, '
      
        '   :P1VCOMIST, :P1VFRETE, :P1VICMSR, :P1VDESCF, :P1VDTDESCF, :P1' +
        'VSEMCOM, '
      
        '   :P1VTOTDI01, :P1VTOTDI02, :P1VTOTDI03, :P1VTOTDIVL, :P1VVALDE' +
        'S01, :P1VVALDES02, '
      
        '   :P1VVLRDES, :P1VTARBAN, :P1VCOMASSE, :P1VSEG, :P1VCOM04, :P1V' +
        'TOTIPI, '
      
        '   :P1VTOTCGRU, :P1VTOTSGRU, :P1VVLRSERV, :P1VCOMISV_EXTRA, :P1V' +
        'PFPGTO, '
      
        '   :P1VVINC02, :P1VCODFP, :P1VNOMFPGTO, :P1VDEV_CODEMP, :P1VDEV_' +
        'CODECF, '
      
        '   :P1VDEV_NUMERO, :P1VDEV_DESD, :P1VDEV_DUP, :P1VDEV_DTEMIS, :P' +
        '1VCHAVE_NIVEL'
      '   ,:P1TITSEP_PROD_SERV)')
    DeleteSQL.Strings = (
      'delete from CADP01V'
      'where'
      '  P1VCODEMP = :OLD_P1VCODEMP and'
      '  P1VLOTSEQ = :OLD_P1VLOTSEQ and'
      '  P1VCHAVE = :OLD_P1VCHAVE and'
      '  P1VORDEM = :OLD_P1VORDEM')
    Left = 518
    Top = 267
  end
  object U_Ped02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2QTD = :P2QTD,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2DESC3 = :P2DESC3,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2UND = :P2UND,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2PERCIMPOSTOS = :P2PERCIMPOSTOS,'
      '  P2CST_PIS = :P2CST_PIS,'
      '  P2CST_IPI = :P2CST_IPI,'
      '  P2CST_COFINS = :P2CST_COFINS,'
      '  P2CSOSN = :P2CSOSN,'
      '  P2CSOSN_ORI = :P2CSOSN_ORI,'
      '  P2CONTESP = :P2CONTESP,'
      '  P2TIPOPROD = :P2TIPOPROD,'
      '  P2ALIQICMSDES = :P2ALIQICMSDES,'
      '  P2VICMSDES = :P2VICMSDES,'
      '  P2ALIQAPROXTRIB = :P2ALIQAPROXTRIB,'
      '  P2VALAPROXTRIB = :P2VALAPROXTRIB,'
      '  P2DESCPR = :P2DESCPR,'
      '  P2PREPAS = :P2PREPAS,'
      '  P2ICMS_ALIPI = :P2ICMS_ALIPI,'
      '  P2ICMS_BCIPI = :P2ICMS_BCIPI,'
      '  P2ICMS_VLIPI = :P2ICMS_VLIPI,'
      '  P2ESTNOR = :P2ESTNOR,'
      '  P2ESTCONS = :P2ESTCONS,'
      '  P2ESTTERC = :P2ESTTERC,'
      '  P2ESTREV = :P2ESTREV,'
      '  P2MODBCST = :P2MODBCST,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2VLRICMS_SN = :P2VLRICMS_SN,'
      '  P2LOTCT = :P2LOTCT,'
      '  P2PCREDSN = :P2PCREDSN,'
      '  P2SITUACAO = :P2SITUACAO,'
      '  P2DESC_CAB = :P2DESC_CAB,'
      '  P2VSEGRAT = :P2VSEGRAT,'
      '  P2VSEGRAT_BCICMS = :P2VSEGRAT_BCICMS,'
      '  P2VFRERAT_BCICMS = :P2VFRERAT_BCICMS,'
      '  P2VFRERAT = :P2VFRERAT,'
      '  P2VDESPACESRAT = :P2VDESPACESRAT,'
      '  P2VDESPACESRAT_BCICMS = :P2VDESPACESRAT_BCICMS,'
      '  P2COMPRA_XPED = :P2COMPRA_XPED,'
      '  P2COMPRA_NITEMPED = :P2COMPRA_NITEMPED,'
      '  P2KIT_PRO = :P2KIT_PRO,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2IMP_IMP_ALIQ = :P2IMP_IMP_ALIQ,'
      '  P2IMP_IMP_VALOR = :P2IMP_IMP_VALOR,'
      '  P2IMP_IMP_VDESDPADU = :P2IMP_IMP_VDESDPADU,'
      '  P2IMP_IMP_VII = :P2IMP_IMP_VII,'
      '  P2IMP_IMP_VIOF = :P2IMP_IMP_VIOF,'
      '  P2IMP_IMP_VBC = :P2IMP_IMP_VBC,'
      '  P2IMP_TPVIATRANSP = :P2IMP_TPVIATRANSP,'
      '  P2IMP_VAFRMM = :P2IMP_VAFRMM,'
      '  P2IMP_TPINTERMEDIARIO = :P2IMP_TPINTERMEDIARIO,'
      '  P2IMP_CNPJ = :P2IMP_CNPJ,'
      '  P2IMP_UFTERCEIRO = :P2IMP_UFTERCEIRO,'
      '  P2IMP_NDRAW = :P2IMP_NDRAW,'
      '  P2EXP_NDRAW = :P2EXP_NDRAW,'
      '  P2EXP_NRE = :P2EXP_NRE,'
      '  P2EXP_CHNFE = :P2EXP_CHNFE,'
      '  P2EXP_QEXPORT = :P2EXP_QEXPORT,'
      '  P2IPI_VBC = :P2IPI_VBC,'
      '  P2PIS_VBC = :P2PIS_VBC,'
      '  P2COFINS_VBC = :P2COFINS_VBC'
      '  ,P2ID_NEW = :P2ID_NEW'
      '  ,P2ID_PED01_NEW = :P2ID_PED01_NEW'
      '  ,P2IRRF_PERC = :P2IRRF_PERC , P2CSLL_PERC = :P2CSLL_PERC'
      '  ,P2IRRF_VALOR = :P2IRRF_VALOR , P2CSLL_VALOR = :P2CSLL_VALOR'
      ''
      '   ,P2CBS_CST = :P2CBS_CST,P2CODCLASSTRIB = :P2CODCLASSTRIB'
      '   ,P2CBS_ALIQ = :P2CBS_ALIQ'
      '   ,P2CBS_BC = :P2CBS_BC'
      '   ,P2CBS_VALOR = :P2CBS_VALOR'
      '   ,P2IBS_UF_ALIQ = :P2IBS_UF_ALIQ'
      '   ,P2IBS_UF_VALOR = :P2IBS_UF_VALOR'
      '   ,P2IBS_MUN_ALIQ = :P2IBS_MUN_ALIQ'
      '   ,P2IBS_MUN_VALOR = :P2IBS_MUN_VALOR'
      '   ,P2CBS_DEV_TRIB = :P2CBS_DEV_TRIB'
      ''
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    InsertSQL.Strings = (
      'insert into CADP02'
      
        '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, P2COD' +
        'ANT, P2QTD,'
      
        '   P2QTDDEV, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, P2V' +
        'ALDES,'
      
        '   P2PRECO, P2SIT, P2CODFAB, P2BASEN, P2ICMSN, P2REPAS, P2BASER,' +
        ' P2ICMSR,'
      
        '   P2LISTA, P2STATUS, P2PCOTAB, P2UCPR, P2PCOCUS, P2PCOMAX, P2TO' +
        'TDES, P2DESCRAT,'
      
        '   P2TABELA, P2VALIPI, P2BCINR, P2ICMSNR, P2ISENTAS, P2TOTOUT, P' +
        '2PCOMIS,'
      
        '   P2VCOMIS, P2VCOM02, P2VCOM03, P2DESCM, P2CFO, P2SEMCOM, P2TOT' +
        'LIQ, P2VDESCF,'
      
        '   P2ACRECONV, P2ACREGER, P2DESC3, P2CODGRU, P2VCOM04, P2ACRERAT' +
        ', P2QTD_ENTREGUE,'
      
        '   P2QTD_ENTREGANDO, P2AMBIENTE, P2PCOFPG, P2PCOMIS_EXTRA, P2VCO' +
        'MIS_EXTRA,'
      
        '   P2STATUS_PED1, P2TIPO, P2CFOSUBECF, P2CODAGRU, P2CONSIG, P2PC' +
        'OM02, P2PCOM03,'
      
        '   P2ST_IVA, P2ST_REDUT, P2ST_ICMCRED, P2ST_ICMDEB, P2REDUTICM, ' +
        'P2PRAZO,'
      
        '   P2QTD_ATEN, P2ALPIS, P2VALPIS, P2ALCOFINS, P2COFINS, P2COMPLE' +
        'MENTO,'
      
        '   P2CODVEN, P2TIPO_PCO, P2CONS_PROPRIO, P2CHAVE_NIVEL, P2UND, P' +
        '2CODPRO_ORI,'
      
        '   P2NOMPRO_ORI, P2PERCIMPOSTOS, P2CST_PIS, P2CST_IPI, P2CST_COF' +
        'INS, P2CSOSN,'
      
        '   P2CSOSN_ORI, P2CONTESP, P2TIPOPROD, P2ALIQICMSDES, P2VICMSDES' +
        ', P2ALIQAPROXTRIB,'
      
        '   P2VALAPROXTRIB, P2DESCPR, P2PREPAS, P2ICMS_ALIPI, P2ICMS_BCIP' +
        'I, P2ICMS_VLIPI,'
      
        '   P2ESTNOR, P2ESTCONS, P2ESTTERC, P2ESTREV, P2MODBCST, P2PCRED_' +
        'SN, P2VLRICMS_SN,'
      
        '   P2LOTCT, P2PCREDSN, P2SITUACAO, P2DESC_CAB, P2VSEGRAT, P2VSEG' +
        'RAT_BCICMS,'
      
        '   P2VFRERAT_BCICMS, P2VFRERAT, P2VDESPACESRAT, P2VDESPACESRAT_B' +
        'CICMS,'
      
        '   P2COMPRA_XPED, P2COMPRA_NITEMPED, P2KIT_PRO, P2ALIPI, P2ALIQ,' +
        ' P2ALIQNR,'
      
        '   P2PDESCF, P2IMP_IMP_ALIQ, P2IMP_IMP_VALOR, P2IMP_IMP_VDESDPAD' +
        'U, P2IMP_IMP_VII,'
      
        '   P2IMP_IMP_VIOF, P2IMP_IMP_VBC, P2IMP_TPVIATRANSP, P2IMP_VAFRM' +
        'M, P2IMP_TPINTERMEDIARIO,'
      
        '   P2IMP_CNPJ, P2IMP_UFTERCEIRO, P2IMP_NDRAW, P2EXP_NDRAW, P2EXP' +
        '_NRE, P2EXP_CHNFE,'
      '   P2EXP_QEXPORT, P2IPI_VBC, P2PIS_VBC, P2COFINS_VBC'
      '   ,P2ID_NEW,P2ID_PED01_NEW'
      '   ,P2IRRF_PERF, P2CSLL_PERC'
      '   ,P2IRRF_VALOR, P2CSLL_VALOR'
      
        '   ,P2CBS_CST,P2CODCLASSTRIB,P2CBS_ALIQ,P2CBS_BC,P2CBS_VALOR,P2I' +
        'BS_UF_ALIQ'
      '   ,P2IBS_UF_VALOR,P2IBS_MUN_ALIQ,P2IBS_MUN_VALOR,P2CBS_DEV_TRIB'
      ''
      ''
      '   )'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' :P2CODANT,'
      
        '   :P2QTD, :P2QTDDEV, :P2LOTE, :P2PROMOCAO, :P2DTVCTO, :P2DESC1,' +
        ' :P2DESC2,'
      
        '   :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, :P2BASEN, :P2ICMSN, :' +
        'P2REPAS,'
      
        '   :P2BASER, :P2ICMSR, :P2LISTA, :P2STATUS, :P2PCOTAB, :P2UCPR, ' +
        ':P2PCOCUS,'
      
        '   :P2PCOMAX, :P2TOTDES, :P2DESCRAT, :P2TABELA, :P2VALIPI, :P2BC' +
        'INR, :P2ICMSNR,'
      
        '   :P2ISENTAS, :P2TOTOUT, :P2PCOMIS, :P2VCOMIS, :P2VCOM02, :P2VC' +
        'OM03, :P2DESCM,'
      
        '   :P2CFO, :P2SEMCOM, :P2TOTLIQ, :P2VDESCF, :P2ACRECONV, :P2ACRE' +
        'GER, :P2DESC3,'
      
        '   :P2CODGRU, :P2VCOM04, :P2ACRERAT, :P2QTD_ENTREGUE, :P2QTD_ENT' +
        'REGANDO,'
      
        '   :P2AMBIENTE, :P2PCOFPG, :P2PCOMIS_EXTRA, :P2VCOMIS_EXTRA, :P2' +
        'STATUS_PED1,'
      
        '   :P2TIPO, :P2CFOSUBECF, :P2CODAGRU, :P2CONSIG, :P2PCOM02, :P2P' +
        'COM03,'
      
        '   :P2ST_IVA, :P2ST_REDUT, :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUT' +
        'ICM, :P2PRAZO,'
      
        '   :P2QTD_ATEN, :P2ALPIS, :P2VALPIS, :P2ALCOFINS, :P2COFINS, :P2' +
        'COMPLEMENTO,'
      
        '   :P2CODVEN, :P2TIPO_PCO, :P2CONS_PROPRIO, :P2CHAVE_NIVEL, :P2U' +
        'ND, :P2CODPRO_ORI,'
      
        '   :P2NOMPRO_ORI, :P2PERCIMPOSTOS, :P2CST_PIS, :P2CST_IPI, :P2CS' +
        'T_COFINS,'
      
        '   :P2CSOSN, :P2CSOSN_ORI, :P2CONTESP, :P2TIPOPROD, :P2ALIQICMSD' +
        'ES, :P2VICMSDES,'
      
        '   :P2ALIQAPROXTRIB, :P2VALAPROXTRIB, :P2DESCPR, :P2PREPAS, :P2I' +
        'CMS_ALIPI,'
      
        '   :P2ICMS_BCIPI, :P2ICMS_VLIPI, :P2ESTNOR, :P2ESTCONS, :P2ESTTE' +
        'RC, :P2ESTREV,'
      
        '   :P2MODBCST, :P2PCRED_SN, :P2VLRICMS_SN, :P2LOTCT, :P2PCREDSN,' +
        ' :P2SITUACAO,'
      
        '   :P2DESC_CAB, :P2VSEGRAT, :P2VSEGRAT_BCICMS, :P2VFRERAT_BCICMS' +
        ', :P2VFRERAT,'
      
        '   :P2VDESPACESRAT, :P2VDESPACESRAT_BCICMS, :P2COMPRA_XPED, :P2C' +
        'OMPRA_NITEMPED,'
      
        '   :P2KIT_PRO, :P2ALIPI, :P2ALIQ, :P2ALIQNR, :P2PDESCF, :P2IMP_I' +
        'MP_ALIQ,'
      
        '   :P2IMP_IMP_VALOR, :P2IMP_IMP_VDESDPADU, :P2IMP_IMP_VII, :P2IM' +
        'P_IMP_VIOF,'
      
        '   :P2IMP_IMP_VBC, :P2IMP_TPVIATRANSP, :P2IMP_VAFRMM, :P2IMP_TPI' +
        'NTERMEDIARIO,'
      
        '   :P2IMP_CNPJ, :P2IMP_UFTERCEIRO, :P2IMP_NDRAW, :P2EXP_NDRAW, :' +
        'P2EXP_NRE,'
      
        '   :P2EXP_CHNFE, :P2EXP_QEXPORT, :P2IPI_VBC, :P2PIS_VBC, :P2COFI' +
        'NS_VBC'
      '   ,:P2ID_NEW,:P2ID_PED01_NEW'
      '   ,:P2IRRF_PERF, :P2CSLL_PERC'
      '   ,:P2IRRF_VALOR, :P2CSLL_VALOR'
      
        '   ,:P2CBS_CST,:P2CODCLASSTRIB,:P2CBS_ALIQ,:P2CBS_BC,:P2CBS_VALO' +
        'R,:P2IBS_UF_ALIQ'
      
        '   ,:P2IBS_UF_VALOR,:P2IBS_MUN_ALIQ,:P2IBS_MUN_VALOR,:P2CBS_DEV_' +
        'TRIB'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    Left = 518
    Top = 318
  end
  object U_Ped02D: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02D'
      'set'
      '  P2DCODEMP = :P2DCODEMP,'
      '  P2DTIPO = :P2DTIPO,'
      '  P2DCHAVE = :P2DCHAVE,'
      '  P2DORDEM = :P2DORDEM,'
      '  P2DITEM = :P2DITEM,'
      '  P2DCODPRO = :P2DCODPRO,'
      '  P2DLINHA = :P2DLINHA,'
      '  P2DESC = :P2DESC,'
      '  P2DLOTSEQ = :P2DLOTSEQ,'
      '  P2DGRADE = :P2DGRADE'
      'where'
      '  P2DCODEMP = :OLD_P2DCODEMP and'
      '  P2DTIPO = :OLD_P2DTIPO and'
      '  P2DCHAVE = :OLD_P2DCHAVE and'
      '  P2DORDEM = :OLD_P2DORDEM and'
      '  P2DITEM = :OLD_P2DITEM and'
      '  P2DCODPRO = :OLD_P2DCODPRO and'
      '  P2DLOTSEQ = :OLD_P2DLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP02D'
      '  (P2DCODEMP, P2DTIPO, P2DCHAVE, P2DORDEM, P2DITEM, P2DCODPRO, '
      'P2DLINHA, '
      '   P2DESC, P2DLOTSEQ, P2DGRADE)'
      'values'
      
        '  (:P2DCODEMP, :P2DTIPO, :P2DCHAVE, :P2DORDEM, :P2DITEM, :P2DCOD' +
        'PRO, '
      ':P2DLINHA, '
      '   :P2DESC, :P2DLOTSEQ, :P2DGRADE)')
    DeleteSQL.Strings = (
      'delete from CADP02D'
      'where'
      '  P2DCODEMP = :OLD_P2DCODEMP and'
      '  P2DTIPO = :OLD_P2DTIPO and'
      '  P2DCHAVE = :OLD_P2DCHAVE and'
      '  P2DORDEM = :OLD_P2DORDEM and'
      '  P2DITEM = :OLD_P2DITEM and'
      '  P2DCODPRO = :OLD_P2DCODPRO and'
      '  P2DLOTSEQ = :OLD_P2DLOTSEQ')
    Left = 518
    Top = 362
  end
  object U_Ped02S: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02S'
      'set'
      '  P2SCODEMP = :P2SCODEMP,'
      '  P2SCHAVE = :P2SCHAVE,'
      '  P2SORDEM = :P2SORDEM,'
      '  P2SITEM = :P2SITEM,'
      '  P2SCODPRO = :P2SCODPRO,'
      '  P2SQTD = :P2SQTD,'
      '  P2SDESC1 = :P2SDESC1,'
      '  P2SDESC2 = :P2SDESC2,'
      '  P2SVALDES = :P2SVALDES,'
      '  P2SPRECO = :P2SPRECO,'
      '  P2SSIT = :P2SSIT,'
      '  P2SCODFAB = :P2SCODFAB,'
      '  P2SBCISSQN = :P2SBCISSQN,'
      '  P2SVISSQN = :P2SVISSQN,'
      '  P2SLISTA = :P2SLISTA,'
      '  P2SSTATUS = :P2SSTATUS,'
      '  P2SPCOTAB = :P2SPCOTAB,'
      '  P2STOTDES = :P2STOTDES,'
      '  P2STABELA = :P2STABELA,'
      '  P2SISENTAS = :P2SISENTAS,'
      '  P2SALIQ = :P2SALIQ,'
      '  P2SPCOMIS = :P2SPCOMIS,'
      '  P2SVCOMIS = :P2SVCOMIS,'
      '  P2SDESCM = :P2SDESCM,'
      '  P2SCFO = :P2SCFO,'
      '  P2SSEMCOM = :P2SSEMCOM,'
      '  P2SPDESCF = :P2SPDESCF,'
      '  P2SVDESCF = :P2SVDESCF,'
      '  P2SDESCRAT = :P2SDESCRAT,'
      '  P2SLOTSEQ = :P2SLOTSEQ,'
      '  P2SPCOCUS = :P2SPCOCUS,'
      '  P2SVCOM02 = :P2SVCOM02,'
      '  P2SVCOM03 = :P2SVCOM03,'
      '  P2SQTDDEV = :P2SQTDDEV,'
      '  P2SDESC3 = :P2SDESC3,'
      '  P2SACRECRAT = :P2SACRECRAT,'
      '  P2SSTATUS_PED1 = :P2SSTATUS_PED1,'
      '  P2STIPO = :P2STIPO,'
      '  P2SCODFUN = :P2SCODFUN,'
      '  P2SQTD_ATEN = :P2SQTD_ATEN,'
      '  P2SBCINSS = :P2SBCINSS,'
      '  P2SREDINSS = :P2SREDINSS,'
      '  P2SVINSS = :P2SVINSS,'
      '  P2SALIQINSS = :P2SALIQINSS,'
      '  P2SREDIRRF = :P2SREDIRRF,'
      '  P2SBCIRRF = :P2SBCIRRF,'
      '  P2SVIRRF = :P2SVIRRF,'
      '  P2SALIQIRRF = :P2SALIQIRRF'
      'where'
      '  P2SCODEMP = :OLD_P2SCODEMP and'
      '  P2SCHAVE = :OLD_P2SCHAVE and'
      '  P2SORDEM = :OLD_P2SORDEM and'
      '  P2SITEM = :OLD_P2SITEM and'
      '  P2SCODPRO = :OLD_P2SCODPRO and'
      '  P2SLOTSEQ = :OLD_P2SLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP02S'
      '  (P2SCODEMP, P2SCHAVE, P2SORDEM, P2SITEM, P2SCODPRO, P2SQTD, '
      'P2SDESC1, '
      
        '   P2SDESC2, P2SVALDES, P2SPRECO, P2SSIT, P2SCODFAB, P2SBCISSQN,' +
        ' '
      'P2SVISSQN, '
      
        '   P2SLISTA, P2SSTATUS, P2SPCOTAB, P2STOTDES, P2STABELA, P2SISEN' +
        'TAS, '
      'P2SALIQ, '
      
        '   P2SPCOMIS, P2SVCOMIS, P2SDESCM, P2SCFO, P2SSEMCOM, P2SPDESCF,' +
        ' '
      'P2SVDESCF, '
      '   P2SDESCRAT, P2SLOTSEQ, P2SPCOCUS, P2SVCOM02, P2SVCOM03, '
      'P2SQTDDEV, P2SDESC3, '
      
        '   P2SACRECRAT, P2SSTATUS_PED1, P2STIPO, P2SCODFUN, P2SQTD_ATEN,' +
        ' '
      'P2SBCINSS, '
      
        '   P2SREDINSS, P2SVINSS, P2SALIQINSS, P2SREDIRRF, P2SBCIRRF, P2S' +
        'VIRRF, '
      '   P2SALIQIRRF)'
      'values'
      
        '  (:P2SCODEMP, :P2SCHAVE, :P2SORDEM, :P2SITEM, :P2SCODPRO, :P2SQ' +
        'TD, '
      ':P2SDESC1, '
      
        '   :P2SDESC2, :P2SVALDES, :P2SPRECO, :P2SSIT, :P2SCODFAB, :P2SBC' +
        'ISSQN, '
      '   :P2SVISSQN, :P2SLISTA, :P2SSTATUS, :P2SPCOTAB, :P2STOTDES, '
      ':P2STABELA, '
      
        '   :P2SISENTAS, :P2SALIQ, :P2SPCOMIS, :P2SVCOMIS, :P2SDESCM, :P2' +
        'SCFO, '
      ':P2SSEMCOM, '
      '   :P2SPDESCF, :P2SVDESCF, :P2SDESCRAT, :P2SLOTSEQ, :P2SPCOCUS, '
      ':P2SVCOM02, '
      
        '   :P2SVCOM03, :P2SQTDDEV, :P2SDESC3, :P2SACRECRAT, :P2SSTATUS_P' +
        'ED1, '
      ':P2STIPO, '
      
        '   :P2SCODFUN, :P2SQTD_ATEN, :P2SBCINSS, :P2SREDINSS, :P2SVINSS,' +
        ' '
      ':P2SALIQINSS, '
      '   :P2SREDIRRF, :P2SBCIRRF, :P2SVIRRF, :P2SALIQIRRF)')
    DeleteSQL.Strings = (
      'delete from CADP02S'
      'where'
      '  P2SCODEMP = :OLD_P2SCODEMP and'
      '  P2SCHAVE = :OLD_P2SCHAVE and'
      '  P2SORDEM = :OLD_P2SORDEM and'
      '  P2SITEM = :OLD_P2SITEM and'
      '  P2SCODPRO = :OLD_P2SCODPRO and'
      '  P2SLOTSEQ = :OLD_P2SLOTSEQ')
    Left = 518
    Top = 397
  end
  object U_Pen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPEN'
      'set'
      '  PECODEMP = :PECODEMP,'
      '  PELOTSEQ = :PELOTSEQ,'
      '  PECHAVE = :PECHAVE,'
      '  PECODCLI = :PECODCLI,'
      '  PECODVEN = :PECODVEN,'
      '  PEDATA = :PEDATA,'
      '  PEITEM = :PEITEM,'
      '  PECODPRO = :PECODPRO,'
      '  PEQTDPED = :PEQTDPED,'
      '  PEQTDENV = :PEQTDENV,'
      '  PEQTDPEN = :PEQTDPEN,'
      '  PEDESC01 = :PEDESC01,'
      '  PEDESC02 = :PEDESC02,'
      '  PEDESC03 = :PEDESC03,'
      '  PEVALDES = :PEVALDES,'
      '  PEPRECO = :PEPRECO,'
      '  PEGRADE = :PEGRADE'
      'where'
      '  PECODEMP = :OLD_PECODEMP and'
      '  PELOTSEQ = :OLD_PELOTSEQ and'
      '  PECHAVE = :OLD_PECHAVE and'
      '  PEITEM = :OLD_PEITEM')
    InsertSQL.Strings = (
      'insert into CADPEN'
      
        '  (PECODEMP, PELOTSEQ, PECHAVE, PECODCLI, PECODVEN, PEDATA, PEIT' +
        'EM, '
      'PECODPRO, '
      '   PEQTDPED, PEQTDENV, PEQTDPEN, PEDESC01, PEDESC02, PEDESC03, '
      'PEVALDES, '
      '   PEPRECO, PEGRADE)'
      'values'
      
        '  (:PECODEMP, :PELOTSEQ, :PECHAVE, :PECODCLI, :PECODVEN, :PEDATA' +
        ', '
      ':PEITEM, '
      
        '   :PECODPRO, :PEQTDPED, :PEQTDENV, :PEQTDPEN, :PEDESC01, :PEDES' +
        'C02, '
      ':PEDESC03, '
      '   :PEVALDES, :PEPRECO, :PEGRADE)')
    DeleteSQL.Strings = (
      'delete from CADPEN'
      'where'
      '  PECODEMP = :OLD_PECODEMP and'
      '  PELOTSEQ = :OLD_PELOTSEQ and'
      '  PECHAVE = :OLD_PECHAVE and'
      '  PEITEM = :OLD_PEITEM')
    Left = 518
    Top = 443
  end
  object U_PF1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF1'
      'set'
      '  PF1CODEMP = :PF1CODEMP,'
      '  PF1CHAVE = :PF1CHAVE,'
      '  PF1CODFOR = :PF1CODFOR,'
      '  PF1DATA = :PF1DATA,'
      '  PF1OBS = :PF1OBS,'
      '  PF1CASASD = :PF1CASASD,'
      '  PF1DESC01 = :PF1DESC01,'
      '  PF1DESC02 = :PF1DESC02,'
      '  PF1DESC03 = :PF1DESC03,'
      '  PF1TOTDES = :PF1TOTDES,'
      '  PF1TOTBRU = :PF1TOTBRU,'
      '  PF1TOTLIQ = :PF1TOTLIQ,'
      '  PF1STATUS = :PF1STATUS,'
      '  PF1CODUSR = :PF1CODUSR,'
      '  PF1HORDIG = :PF1HORDIG,'
      '  PF1USRMOD = :PF1USRMOD,'
      '  PF1DTMOD = :PF1DTMOD,'
      '  PF1HRMOD = :PF1HRMOD,'
      '  PF1TOTMER = :PF1TOTMER,'
      '  PF1TOTPOS = :PF1TOTPOS,'
      '  PF1TOTNEG = :PF1TOTNEG,'
      '  PF1TOTINA = :PF1TOTINA,'
      '  PF1TOTFRE = :PF1TOTFRE,'
      '  PF1TOTSEG = :PF1TOTSEG,'
      '  PF1BASEN = :PF1BASEN,'
      '  PF1BASER = :PF1BASER,'
      '  PF1ICMSN = :PF1ICMSN,'
      '  PF1ICMSR = :PF1ICMSR,'
      '  PF1CODLDR = :PF1CODLDR,'
      '  PF1BASENR = :PF1BASENR,'
      '  PF1ICMSNR = :PF1ICMSNR,'
      '  PF1ISENTAS = :PF1ISENTAS,'
      '  PF1TOTOUT = :PF1TOTOUT,'
      '  PF1TOTIPI = :PF1TOTIPI,'
      '  PF1DATANF = :PF1DATANF,'
      '  PF1NUMNF = :PF1NUMNF,'
      '  PF1SERIE = :PF1SERIE,'
      '  PF1SUBSER = :PF1SUBSER,'
      '  PF1TABPV = :PF1TABPV,'
      '  PF1CODPV = :PF1CODPV,'
      '  PF1CODBCO = :PF1CODBCO,'
      '  PF1CODTRA = :PF1CODTRA,'
      '  PF1MODELO = :PF1MODELO,'
      '  PF1NUMDUP = :PF1NUMDUP,'
      '  PF1DESD = :PF1DESD,'
      '  PF1GRAVNF = :PF1GRAVNF,'
      '  PF1GRAVDP = :PF1GRAVDP,'
      '  PF1DATAENT = :PF1DATAENT,'
      '  PF1LOTSEQ = :PF1LOTSEQ,'
      '  PF1CONDPAG = :PF1CONDPAG,'
      '  PF1PIPIFRETE = :PF1PIPIFRETE,'
      '  PF1IPIFRETE = :PF1IPIFRETE,'
      '  PF1DTPFAT = :PF1DTPFAT,'
      '  PF1DTPENT = :PF1DTPENT,'
      '  PF1PERCFRE = :PF1PERCFRE,'
      '  PF1FRETEPC = :PF1FRETEPC,'
      '  PF1TEMBOL = :PF1TEMBOL,'
      '  PF1LEMAT = :PF1LEMAT,'
      '  PF1CODEMP_ORI = :PF1CODEMP_ORI,'
      '  PF1NUMPED_ORI = :PF1NUMPED_ORI,'
      '  PF1PAG_ORI = :PF1PAG_ORI,'
      '  PF1ORIGEM = :PF1ORIGEM,'
      '  PF1OUTNINC = :PF1OUTNINC,'
      '  PF1OUTDESP = :PF1OUTDESP,'
      '  PF1NFCF = :PF1NFCF,'
      '  PF1SITPED = :PF1SITPED,'
      '  PF1QTDMAN = :PF1QTDMAN,'
      '  PF1TOTDESOUT = :PF1TOTDESOUT,'
      '  PF1TOTBRUOUT = :PF1TOTBRUOUT,'
      '  PF1TOTLIQOUT = :PF1TOTLIQOUT,'
      '  PF1TOTPBT = :PF1TOTPBT,'
      '  PF1TOTFREOUT = :PF1TOTFREOUT,'
      '  PF1FORMACE = :PF1FORMACE,'
      '  PF1OUTROS = :PF1OUTROS,'
      '  PF1NUMDUPOUT = :PF1NUMDUPOUT,'
      '  PF1TIPO = :PF1TIPO,'
      '  PF1SIV_FRETE = :PF1SIV_FRETE,'
      '  PF1SIV_DARE = :PF1SIV_DARE,'
      '  PF1SIV_OUTROS = :PF1SIV_OUTROS,'
      '  PF1OUTVDUP = :PF1OUTVDUP,'
      '  PF1PRAZO = :PF1PRAZO,'
      '  PF1QTDP = :PF1QTDP,'
      '  PF1INT = :PF1INT,'
      '  PF1LOCAL = :PF1LOCAL,'
      '  PF1DATCONF = :PF1DATCONF,'
      '  PF1SUBMOD = :PF1SUBMOD,'
      '  PF1TOTOUT_ALIQ = :PF1TOTOUT_ALIQ,'
      '  PF1TOTOUT_IMP = :PF1TOTOUT_IMP,'
      '  PF1LOTE_ENTRADA = :PF1LOTE_ENTRADA,'
      '  PF1REGENT = :PF1REGENT,'
      '  PF1_NFE_CHAVE = :PF1_NFE_CHAVE'
      'where'
      '  PF1CODEMP = :OLD_PF1CODEMP and'
      '  PF1CHAVE = :OLD_PF1CHAVE and'
      '  PF1LOTSEQ = :OLD_PF1LOTSEQ')
    InsertSQL.Strings = (
      'insert into CADPF1'
      '  (PF1CODEMP, PF1CHAVE, PF1CODFOR, PF1DATA, PF1OBS, PF1CASASD, '
      'PF1DESC01, '
      
        '   PF1DESC02, PF1DESC03, PF1TOTDES, PF1TOTBRU, PF1TOTLIQ, PF1STA' +
        'TUS, '
      'PF1CODUSR, '
      '   PF1HORDIG, PF1USRMOD, PF1DTMOD, PF1HRMOD, PF1TOTMER, '
      'PF1TOTPOS, PF1TOTNEG, '
      
        '   PF1TOTINA, PF1TOTFRE, PF1TOTSEG, PF1BASEN, PF1BASER, PF1ICMSN' +
        ', '
      'PF1ICMSR, '
      '   PF1CODLDR, PF1BASENR, PF1ICMSNR, PF1ISENTAS, PF1TOTOUT, '
      'PF1TOTIPI, PF1DATANF, '
      
        '   PF1NUMNF, PF1SERIE, PF1SUBSER, PF1TABPV, PF1CODPV, PF1CODBCO,' +
        ' '
      'PF1CODTRA, '
      '   PF1MODELO, PF1NUMDUP, PF1DESD, PF1GRAVNF, PF1GRAVDP, '
      'PF1DATAENT, PF1LOTSEQ, '
      '   PF1CONDPAG, PF1PIPIFRETE, PF1IPIFRETE, PF1DTPFAT, PF1DTPENT, '
      'PF1PERCFRE, '
      
        '   PF1FRETEPC, PF1TEMBOL, PF1LEMAT, PF1CODEMP_ORI, PF1NUMPED_ORI' +
        ', '
      'PF1PAG_ORI, '
      '   PF1ORIGEM, PF1OUTNINC, PF1OUTDESP, PF1NFCF, PF1SITPED, '
      'PF1QTDMAN, PF1TOTDESOUT, '
      '   PF1TOTBRUOUT, PF1TOTLIQOUT, PF1TOTPBT, PF1TOTFREOUT, '
      'PF1FORMACE, PF1OUTROS, '
      
        '   PF1NUMDUPOUT, PF1TIPO, PF1SIV_FRETE, PF1SIV_DARE, PF1SIV_OUTR' +
        'OS, '
      'PF1OUTVDUP, '
      '   PF1PRAZO, PF1QTDP, PF1INT, PF1LOCAL, PF1DATCONF, PF1SUBMOD, '
      'PF1TOTOUT_ALIQ, '
      '   PF1TOTOUT_IMP, PF1LOTE_ENTRADA, PF1REGENT, PF1_NFE_CHAVE)'
      'values'
      
        '  (:PF1CODEMP, :PF1CHAVE, :PF1CODFOR, :PF1DATA, :PF1OBS, :PF1CAS' +
        'ASD, '
      ':PF1DESC01, '
      '   :PF1DESC02, :PF1DESC03, :PF1TOTDES, :PF1TOTBRU, :PF1TOTLIQ, '
      ':PF1STATUS, '
      '   :PF1CODUSR, :PF1HORDIG, :PF1USRMOD, :PF1DTMOD, :PF1HRMOD, '
      ':PF1TOTMER, '
      '   :PF1TOTPOS, :PF1TOTNEG, :PF1TOTINA, :PF1TOTFRE, :PF1TOTSEG, '
      ':PF1BASEN, '
      
        '   :PF1BASER, :PF1ICMSN, :PF1ICMSR, :PF1CODLDR, :PF1BASENR, :PF1' +
        'ICMSNR, '
      '   :PF1ISENTAS, :PF1TOTOUT, :PF1TOTIPI, :PF1DATANF, :PF1NUMNF, '
      ':PF1SERIE, '
      '   :PF1SUBSER, :PF1TABPV, :PF1CODPV, :PF1CODBCO, :PF1CODTRA, '
      ':PF1MODELO, '
      '   :PF1NUMDUP, :PF1DESD, :PF1GRAVNF, :PF1GRAVDP, :PF1DATAENT, '
      ':PF1LOTSEQ, '
      
        '   :PF1CONDPAG, :PF1PIPIFRETE, :PF1IPIFRETE, :PF1DTPFAT, :PF1DTP' +
        'ENT, '
      ':PF1PERCFRE, '
      '   :PF1FRETEPC, :PF1TEMBOL, :PF1LEMAT, :PF1CODEMP_ORI, '
      ':PF1NUMPED_ORI, '
      '   :PF1PAG_ORI, :PF1ORIGEM, :PF1OUTNINC, :PF1OUTDESP, :PF1NFCF, '
      ':PF1SITPED, '
      '   :PF1QTDMAN, :PF1TOTDESOUT, :PF1TOTBRUOUT, :PF1TOTLIQOUT, '
      ':PF1TOTPBT, '
      
        '   :PF1TOTFREOUT, :PF1FORMACE, :PF1OUTROS, :PF1NUMDUPOUT, :PF1TI' +
        'PO, '
      ':PF1SIV_FRETE, '
      
        '   :PF1SIV_DARE, :PF1SIV_OUTROS, :PF1OUTVDUP, :PF1PRAZO, :PF1QTD' +
        'P, '
      ':PF1INT, '
      '   :PF1LOCAL, :PF1DATCONF, :PF1SUBMOD, :PF1TOTOUT_ALIQ, '
      ':PF1TOTOUT_IMP, '
      '   :PF1LOTE_ENTRADA, :PF1REGENT, :PF1_NFE_CHAVE)')
    DeleteSQL.Strings = (
      'delete from CADPF1'
      'where'
      '  PF1CODEMP = :OLD_PF1CODEMP and'
      '  PF1CHAVE = :OLD_PF1CHAVE and'
      '  PF1LOTSEQ = :OLD_PF1LOTSEQ')
    Left = 518
    Top = 485
  end
  object U_PF1V: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF1V'
      'set'
      '  PF1VCODEMP = :PF1VCODEMP,'
      '  PF1VCHAVE = :PF1VCHAVE,'
      '  PF1VCODIGO = :PF1VCODIGO,'
      '  PF1VDATAV = :PF1VDATAV,'
      '  PF1VVALOR = :PF1VVALOR,'
      '  PF1VTABPV = :PF1VTABPV,'
      '  PF1VDESCF = :PF1VDESCF,'
      '  PF1VDTDESCF = :PF1VDTDESCF,'
      '  PF1VLOTSEQ = :PF1VLOTSEQ,'
      '  PF1VVALOUT = :PF1VVALOUT,'
      '  PF1VDESCFOUT = :PF1VDESCFOUT,'
      '  PF1VDES_CODEMP = :PF1VDES_CODEMP'
      'where'
      '  PF1VCODEMP = :OLD_PF1VCODEMP and'
      '  PF1VCHAVE = :OLD_PF1VCHAVE and'
      '  PF1VCODIGO = :OLD_PF1VCODIGO and'
      '  PF1VDATAV = :OLD_PF1VDATAV and'
      '  PF1VVALOR = :OLD_PF1VVALOR and'
      '  PF1VTABPV = :OLD_PF1VTABPV and'
      '  PF1VLOTSEQ = :OLD_PF1VLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADPF1V'
      '  (PF1VCODEMP, PF1VCHAVE, PF1VCODIGO, PF1VDATAV, PF1VVALOR, '
      'PF1VTABPV, '
      
        '   PF1VDESCF, PF1VDTDESCF, PF1VLOTSEQ, PF1VVALOUT, PF1VDESCFOUT,' +
        ' '
      'PF1VDES_CODEMP)'
      'values'
      
        '  (:PF1VCODEMP, :PF1VCHAVE, :PF1VCODIGO, :PF1VDATAV, :PF1VVALOR,' +
        ' '
      ':PF1VTABPV, '
      
        '   :PF1VDESCF, :PF1VDTDESCF, :PF1VLOTSEQ, :PF1VVALOUT, :PF1VDESC' +
        'FOUT, '
      ':PF1VDES_CODEMP)')
    DeleteSQL.Strings = (
      'delete from CADPF1V'
      'where'
      '  PF1VCODEMP = :OLD_PF1VCODEMP and'
      '  PF1VCHAVE = :OLD_PF1VCHAVE and'
      '  PF1VCODIGO = :OLD_PF1VCODIGO and'
      '  PF1VDATAV = :OLD_PF1VDATAV and'
      '  PF1VVALOR = :OLD_PF1VVALOR and'
      '  PF1VTABPV = :OLD_PF1VTABPV and'
      '  PF1VLOTSEQ = :OLD_PF1VLOTSEQ')
    Left = 622
    Top = 11
  end
  object U_PF2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF2'
      'set'
      '  PF2CODEMP = :PF2CODEMP,'
      '  PF2CHAVE = :PF2CHAVE,'
      '  PF2LOTSEQ = :PF2LOTSEQ,'
      '  PF2ITEM = :PF2ITEM,'
      '  PF2CODPRO = :PF2CODPRO,'
      '  PF2LOTE = :PF2LOTE,'
      '  PF2DATAV = :PF2DATAV,'
      '  PF2QTDP = :PF2QTDP,'
      '  PF2PU = :PF2PU,'
      '  PF2DESC01 = :PF2DESC01,'
      '  PF2DESC02 = :PF2DESC02,'
      '  PF2DESC03 = :PF2DESC03,'
      '  PF2SIT = :PF2SIT,'
      '  PF2ALIQ = :PF2ALIQ,'
      '  PF2ALIQNR = :PF2ALIQNR,'
      '  PF2BASEN = :PF2BASEN,'
      '  PF2ICMSN = :PF2ICMSN,'
      '  PF2BASER = :PF2BASER,'
      '  PF2ICMSR = :PF2ICMSR,'
      '  PF2STATUS = :PF2STATUS,'
      '  PF2TAB = :PF2TAB,'
      '  PF2LISTA = :PF2LISTA,'
      '  PF2PCOTAB = :PF2PCOTAB,'
      '  PF2TOTDES = :PF2TOTDES,'
      '  PF2BASENR = :PF2BASENR,'
      '  PF2ICMSNR = :PF2ICMSNR,'
      '  PF2ISENTAS = :PF2ISENTAS,'
      '  PF2ALIPI = :PF2ALIPI,'
      '  PF2IPI = :PF2IPI,'
      '  PF2CFO = :PF2CFO,'
      '  PF2DESCRAT = :PF2DESCRAT,'
      '  PF2PMC = :PF2PMC,'
      '  PF2VALDES = :PF2VALDES,'
      '  PF2OUTRAS = :PF2OUTRAS,'
      '  PF2QTDREC = :PF2QTDREC,'
      '  PF2PUOUT = :PF2PUOUT,'
      '  PF2PBT = :PF2PBT,'
      '  PF2VALDESOUT = :PF2VALDESOUT,'
      '  PF2FRERAT = :PF2FRERAT,'
      '  PF2FRERATOUT = :PF2FRERATOUT,'
      '  PF2ORIGEM = :PF2ORIGEM,'
      '  PF2STATUS_PF1 = :PF2STATUS_PF1,'
      '  PF2SIV_OUTROS = :PF2SIV_OUTROS,'
      '  PF2LOTE_RE = :PF2LOTE_RE,'
      '  PF2DTENTRADA = :PF2DTENTRADA,'
      '  PF2PREDICMNOR = :PF2PREDICMNOR,'
      '  PF2CFOP_COMP = :PF2CFOP_COMP,'
      '  PF2OBS = :PF2OBS'
      'where'
      '  PF2CODEMP = :OLD_PF2CODEMP and'
      '  PF2CHAVE = :OLD_PF2CHAVE and'
      '  PF2LOTSEQ = :OLD_PF2LOTSEQ and'
      '  PF2ITEM = :OLD_PF2ITEM')
    InsertSQL.Strings = (
      'insert into CADPF2'
      '  (PF2CODEMP, PF2CHAVE, PF2LOTSEQ, PF2ITEM, PF2CODPRO, PF2LOTE, '
      'PF2DATAV, '
      
        '   PF2QTDP, PF2PU, PF2DESC01, PF2DESC02, PF2DESC03, PF2SIT, PF2A' +
        'LIQ, '
      'PF2ALIQNR, '
      '   PF2BASEN, PF2ICMSN, PF2BASER, PF2ICMSR, PF2STATUS, PF2TAB, '
      'PF2LISTA, '
      
        '   PF2PCOTAB, PF2TOTDES, PF2BASENR, PF2ICMSNR, PF2ISENTAS, PF2AL' +
        'IPI, '
      'PF2IPI, '
      '   PF2CFO, PF2DESCRAT, PF2PMC, PF2VALDES, PF2OUTRAS, PF2QTDREC, '
      'PF2PUOUT, '
      '   PF2PBT, PF2VALDESOUT, PF2FRERAT, PF2FRERATOUT, PF2ORIGEM, '
      'PF2STATUS_PF1, '
      '   PF2SIV_OUTROS, PF2LOTE_RE, PF2DTENTRADA, PF2PREDICMNOR, '
      'PF2CFOP_COMP, '
      '   PF2OBS,PF2CBENEF)'
      'values'
      
        '  (:PF2CODEMP, :PF2CHAVE, :PF2LOTSEQ, :PF2ITEM, :PF2CODPRO, :PF2' +
        'LOTE,'
      ':PF2DATAV,'
      
        '   :PF2QTDP, :PF2PU, :PF2DESC01, :PF2DESC02, :PF2DESC03, :PF2SIT' +
        ','
      ':PF2ALIQ,'
      
        '   :PF2ALIQNR, :PF2BASEN, :PF2ICMSN, :PF2BASER, :PF2ICMSR, :PF2S' +
        'TATUS,'
      
        '   :PF2TAB, :PF2LISTA, :PF2PCOTAB, :PF2TOTDES, :PF2BASENR, :PF2I' +
        'CMSNR,'
      
        '   :PF2ISENTAS, :PF2ALIPI, :PF2IPI, :PF2CFO, :PF2DESCRAT, :PF2PM' +
        'C,'
      ':PF2VALDES,'
      '   :PF2OUTRAS, :PF2QTDREC, :PF2PUOUT, :PF2PBT, :PF2VALDESOUT,'
      ':PF2FRERAT,'
      '   :PF2FRERATOUT, :PF2ORIGEM, :PF2STATUS_PF1, :PF2SIV_OUTROS,'
      ':PF2LOTE_RE,'
      
        '   :PF2DTENTRADA, :PF2PREDICMNOR, :PF2CFOP_COMP, :PF2OBS, :PF2CB' +
        'ENEF)')
    DeleteSQL.Strings = (
      'delete from CADPF2'
      'where'
      '  PF2CODEMP = :OLD_PF2CODEMP and'
      '  PF2CHAVE = :OLD_PF2CHAVE and'
      '  PF2LOTSEQ = :OLD_PF2LOTSEQ and'
      '  PF2ITEM = :OLD_PF2ITEM')
    Left = 622
    Top = 55
  end
  object U_PGen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPGEN'
      'set'
      '  PGCODEMP = :PGCODEMP,'
      '  PGCODPRO = :PGCODPRO,'
      '  PGCODDCB = :PGCODDCB'
      'where'
      '  PGCODEMP = :OLD_PGCODEMP and'
      '  PGCODPRO = :OLD_PGCODPRO and'
      '  PGCODDCB = :OLD_PGCODDCB')
    InsertSQL.Strings = (
      'insert into CADPGEN'
      '  (PGCODEMP, PGCODPRO, PGCODDCB)'
      'values'
      '  (:PGCODEMP, :PGCODPRO, :PGCODDCB)')
    DeleteSQL.Strings = (
      'delete from CADPGEN'
      'where'
      '  PGCODEMP = :OLD_PGCODEMP and'
      '  PGCODPRO = :OLD_PGCODPRO and'
      '  PGCODDCB = :OLD_PGCODDCB')
    Left = 622
    Top = 100
  end
  object U_PO99: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPO99'
      'set'
      '  POCODEMP = :POCODEMP,'
      '  POCHAVE = :POCHAVE,'
      '  POPRAZO = :POPRAZO,'
      '  POLOTSEQ = :POLOTSEQ'
      'where'
      '  POCODEMP = :OLD_POCODEMP and'
      '  POCHAVE = :OLD_POCHAVE and'
      '  POPRAZO = :OLD_POPRAZO and'
      '  POLOTSEQ = :OLD_POLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADPO99'
      '  (POCODEMP, POCHAVE, POPRAZO, POLOTSEQ)'
      'values'
      '  (:POCODEMP, :POCHAVE, :POPRAZO, :POLOTSEQ)')
    DeleteSQL.Strings = (
      'delete from CADPO99'
      'where'
      '  POCODEMP = :OLD_POCODEMP and'
      '  POCHAVE = :OLD_POCHAVE and'
      '  POPRAZO = :OLD_POPRAZO and'
      '  POLOTSEQ = :OLD_POLOTSEQ')
    Left = 625
    Top = 183
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDCODEMP = :PDCODEMP,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDCODBAR = :PDCODBAR,'
      '  PDNOME = :PDNOME,'
      '  PDNOME2 = :PDNOME2,'
      '  PDMARCA = :PDMARCA,'
      '  PDNIVEL = :PDNIVEL,'
      '  PDCODFOR = :PDCODFOR,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDPMC = :PDPMC,'
      '  PDPRECOA1 = :PDPRECOA1,'
      '  PDPRECOA2 = :PDPRECOA2,'
      '  PDPRECOA3 = :PDPRECOA3,'
      '  PDDESC1 = :PDDESC1,'
      '  PDDESC1A = :PDDESC1A,'
      '  PDDESC2 = :PDDESC2,'
      '  PDDESC3 = :PDDESC3,'
      '  PDQTDP = :PDQTDP,'
      '  PDPRAZO = :PDPRAZO,'
      '  PDDESFIN = :PDDESFIN,'
      '  PDSIT = :PDSIT,'
      '  PDDTUATP1 = :PDDTUATP1,'
      '  PDUSRALT1 = :PDUSRALT1,'
      '  PDDTUATP2 = :PDDTUATP2,'
      '  PDUSRALT2 = :PDUSRALT2,'
      '  PDDTUATP3 = :PDDTUATP3,'
      '  PDUSRALT3 = :PDUSRALT3,'
      '  PDDATAUA = :PDDATAUA,'
      '  PDUND = :PDUND,'
      '  PDCURVA = :PDCURVA,'
      '  PDCODGRU = :PDCODGRU,'
      '  PDCODCON = :PDCODCON,'
      '  PDCODRAM = :PDCODRAM,'
      '  PDCODTIP = :PDCODTIP,'
      '  PDESTMAX = :PDESTMAX,'
      '  PDESTMIN = :PDESTMIN,'
      '  PDFRACAO = :PDFRACAO,'
      '  PDLISTA = :PDLISTA,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDPCOMC = :PDPCOMC,'
      '  PDPCOFAB = :PDPCOFAB,'
      '  PDSTATUS = :PDSTATUS,'
      '  PDTABICM = :PDTABICM,'
      '  PDIPI = :PDIPI,'
      '  PDREGMS = :PDREGMS,'
      '  PDCLAS = :PDCLAS,'
      '  PDSECAO = :PDSECAO,'
      '  PDEMBPAD = :PDEMBPAD,'
      '  PDEMBMUL = :PDEMBMUL,'
      '  PDCOMIS = :PDCOMIS,'
      '  PDSEMCOM = :PDSEMCOM,'
      '  PDPRZVAL = :PDPRZVAL,'
      '  PDUCPR = :PDUCPR,'
      '  PDCODUSR = :PDCODUSR,'
      '  PDSALDO = :PDSALDO,'
      '  PDDTALT = :PDDTALT,'
      '  PDHRALT = :PDHRALT,'
      '  PDEMBPAD2 = :PDEMBPAD2,'
      '  PDCODPROC = :PDCODPROC,'
      '  PDPROALT = :PDPROALT,'
      '  PDDTULTSAI = :PDDTULTSAI,'
      '  PDDTULTENT = :PDDTULTENT,'
      '  PDVDAMAXM = :PDVDAMAXM,'
      '  PDREST = :PDREST,'
      '  PDPESOB = :PDPESOB,'
      '  PDPESOL = :PDPESOL,'
      '  PDBAIXO = :PDBAIXO,'
      '  PDALTO = :PDALTO,'
      '  PDDATCAD = :PDDATCAD,'
      '  PDNOMFOR = :PDNOMFOR,'
      '  PDNOMPROC = :PDNOMPROC,'
      '  PDNOMGRU = :PDNOMGRU,'
      '  PDNOMCON = :PDNOMCON,'
      '  PDNOMRAM = :PDNOMRAM,'
      '  PDNOMTIP = :PDNOMTIP,'
      '  PDNOMPROALT = :PDNOMPROALT,'
      '  PDSTATUS02 = :PDSTATUS02,'
      '  PDSALDOR = :PDSALDOR,'
      '  PDBAIXOR = :PDBAIXOR,'
      '  PDALTOR = :PDALTOR,'
      '  PDSALDOC = :PDSALDOC,'
      '  PDBAIXOC = :PDBAIXOC,'
      '  PDALTOC = :PDALTOC,'
      '  PDCODNCM = :PDCODNCM,'
      '  PDCUSFAB = :PDCUSFAB,'
      '  PDCUSENV = :PDCUSENV,'
      '  PDCUSFIN = :PDCUSFIN,'
      '  PDUCODFOR = :PDUCODFOR,'
      '  PDUNOMFOR = :PDUNOMFOR,'
      '  PDCODFAB = :PDCODFAB,'
      '  PDSALDOT = :PDSALDOT,'
      '  PDALTOT = :PDALTOT,'
      '  PDBAIXOT = :PDBAIXOT,'
      '  PDPMC02 = :PDPMC02,'
      '  PDPMC03 = :PDPMC03,'
      '  PDCX_PVDA = :PDCX_PVDA,'
      '  PDCX_PFAB = :PDCX_PFAB,'
      '  PDCX_PMAX = :PDCX_PMAX,'
      '  PDICMSCRED = :PDICMSCRED,'
      '  PDICMSDEB = :PDICMSDEB,'
      '  PDVLRINC = :PDVLRINC,'
      '  PDPRAT = :PDPRAT,'
      '  PDLADO = :PDLADO,'
      '  PDRUA = :PDRUA,'
      '  PDAPLIC = :PDAPLIC,'
      '  PDAPRES = :PDAPRES,'
      '  PDQTDM3 = :PDQTDM3,'
      '  PDCOMIS_EXTRA = :PDCOMIS_EXTRA,'
      '  PDQTDGRML = :PDQTDGRML,'
      '  PDUNDVDA = :PDUNDVDA,'
      '  PDBLDESCAV = :PDBLDESCAV,'
      '  PDRESTFOR = :PDRESTFOR,'
      '  PDRESTCON = :PDRESTCON,'
      '  PDSITCF = :PDSITCF,'
      '  PDCODBAR_EMBPAD = :PDCODBAR_EMBPAD,'
      '  PDENTPEN = :PDENTPEN,'
      '  PDUSRALT = :PDUSRALT,'
      '  PDUSRINC = :PDUSRINC,'
      '  PDSALDO_PRAT = :PDSALDO_PRAT,'
      '  PDSALDO_DEP = :PDSALDO_DEP,'
      '  PDSALDO_REP = :PDSALDO_REP,'
      '  PDTEMPOFAB = :PDTEMPOFAB,'
      '  PDREFER = :PDREFER,'
      '  PDPRZVAL_ANOS = :PDPRZVAL_ANOS,'
      '  PDPRZVAL_DIAS = :PDPRZVAL_DIAS,'
      '  PDCODDEP = :PDCODDEP,'
      '  PDNOMDEP = :PDNOMDEP,'
      '  PDDATA_REPLICA = :PDDATA_REPLICA,'
      '  PDTIPO_MED = :PDTIPO_MED,'
      '  PDNOME_COMPRA = :PDNOME_COMPRA,'
      '  PDDESCMAX = :PDDESCMAX,'
      '  PDCONTESP = :PDCONTESP,'
      '  PDTIPOPROD = :PDTIPOPROD,'
      '  PDCMET_CONSTANTE = :PDCMET_CONSTANTE,'
      '  PDCMET_BITOLA = :PDCMET_BITOLA,'
      '  PDCODGEN = :PDCODGEN,'
      '  PDBALANCA = :PDBALANCA,'
      '  PDKIT = :PDKIT,'
      '  PDVALREGMS = :PDVALREGMS,'
      '  PDVENDA_PEND = :PDVENDA_PEND,'
      '  PDTEMFORMULA = :PDTEMFORMULA,'
      '  PDFIS_ORIGEM = :PDFIS_ORIGEM,'
      '  PDFIS_CST_ICMS_EST_REV = :PDFIS_CST_ICMS_EST_REV,'
      '  PDFIS_CST_ICMS_EST_CF = :PDFIS_CST_ICMS_EST_CF,'
      '  PDFIS_PRED_ICMS_EST = :PDFIS_PRED_ICMS_EST,'
      '  PDFIS_CST_ICMS_INT_CF = :PDFIS_CST_ICMS_INT_CF,'
      '  PDFIS_CST_ICMS_INT_REV = :PDFIS_CST_ICMS_INT_REV,'
      '  PDFIS_PRED_ICMS_INT = :PDFIS_PRED_ICMS_INT,'
      '  PDFIS_CSOSN_EST_REV = :PDFIS_CSOSN_EST_REV,'
      '  PDFIS_CSOSN_EST_CF = :PDFIS_CSOSN_EST_CF,'
      '  PDFIS_CSOSN_INT_REV = :PDFIS_CSOSN_INT_REV,'
      '  PDFIS_CSOSN_INT_CF = :PDFIS_CSOSN_INT_CF,'
      '  PDFIS_CST_PISCOF_ENTRADA = :PDFIS_CST_PISCOF_ENTRADA,'
      '  PDFIS_CST_PISCOF_SAIDA = :PDFIS_CST_PISCOF_SAIDA,'
      '  PDFIS_PIS_ALIQ_ENTRADA = :PDFIS_PIS_ALIQ_ENTRADA,'
      '  PDFIS_COFINS_ALIQ_ENTRADA = :PDFIS_COFINS_ALIQ_ENTRADA,'
      '  PDFIS_PIS_ALIQ_SAIDA = :PDFIS_PIS_ALIQ_SAIDA,'
      '  PDFIS_COFINS_ALIQ_SAIDA = :PDFIS_COFINS_ALIQ_SAIDA,'
      '  PDPERCIMPOSTOS = :PDPERCIMPOSTOS,'
      '  PDPEDELE_DISP = :PDPEDELE_DISP,'
      '  PDCEST = :PDCEST,'
      '  PDCODIGO_CNAE = :PDCODIGO_CNAE,'
      '  PDPRECO_INDEX = :PDPRECO_INDEX,'
      '  PDPRECO_CODINDEX = :PDPRECO_CODINDEX,'
      '  PDOBS_NEW = :PDOBS_NEW,'
      '  PDIPI_CST = :PDIPI_CST,'
      '  PDIPI_CENQ = :PDIPI_CENQ,'
      '  PDCOMPRA_UND = :PDCOMPRA_UND'
      '  ,PDCBENEF_CST_FORAE_REV = :PDCBENEF_CST_FORAE_REV'
      '  ,PDCBENEF_CST_FORAE_CONSFIN = :PDCBENEF_CST_FORAE_CONSFIN'
      '  ,PDCBENEF_CST_DENTROE_REV = :PDCBENEF_CST_DENTROE_REV'
      '  ,PDCBENEF_CST_DENTROE_CONSFIN = :PDCBENEF_CST_DENTROE_CONSFIN'
      '  ,PDPRECO_RESIDUO = :PDPRECO_RESIDUO'
      '  ,PDCODLC_116_03 = :PDCODLC_116_03'
      '  ,PDCODIGO_SERVICO = :PDCODIGO_SERVICO'
      '  ,PDALIQ_ISS = :PDALIQ_ISS'
      '  ,PDCBS_CST = :PDCBS_CST'
      '  ,PDCODCLASSTRIB = :PDCODCLASSTRIB'
      '  ,PDCODNBS = :PDCODNBS'
      '  ,PDSERV_INSS_ALIQ = :PDSERV_INSS_ALIQ'
      '  ,PDSERV_INSS_RED  = :PDSERV_INSS_RED'
      '  ,PDSERV_IRRF_ALIQ = :PDSERV_IRRF_ALIQ'
      '  ,PDSERV_IRRF_RED = :PDSERV_IRRF_RED'
      ''
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (PDCODEMP, PDCODPRO, PDCODBAR, PDNOME, PDNOME2, PDMARCA, '
      'PDNIVEL, PDCODFOR, '
      '   PDPRECO1, PDPRECO2, PDPRECO3, PDPMC, PDPRECOA1, PDPRECOA2, '
      'PDPRECOA3, '
      
        '   PDDESC1, PDDESC1A, PDDESC2, PDDESC3, PDQTDP, PDPRAZO, PDDESFI' +
        'N, '
      'PDSIT, '
      '   PDDTUATP1, PDUSRALT1, PDDTUATP2, PDUSRALT2, PDDTUATP3, '
      'PDUSRALT3, PDDATAUA, '
      '   PDUND, PDCURVA, PDCODGRU, PDCODCON, PDCODRAM, PDCODTIP, '
      'PDESTMAX, PDESTMIN, '
      '   PDFRACAO, PDLISTA, PDPRECOC, PDPCOMC, PDPCOFAB, PDSTATUS, '
      'PDTABICM, '
      
        '   PDIPI, PDREGMS, PDCLAS, PDSECAO, PDEMBPAD, PDEMBMUL, PDCOMIS,' +
        ' '
      'PDSEMCOM, '
      '   PDPRZVAL, PDUCPR, PDCODUSR, PDSALDO, PDDTALT, PDHRALT, '
      'PDEMBPAD2, PDCODPROC, '
      
        '   PDPROALT, PDDTULTSAI, PDDTULTENT, PDVDAMAXM, PDREST, PDPESOB,' +
        ' '
      'PDPESOL, '
      '   PDBAIXO, PDALTO, PDDATCAD, PDNOMFOR, PDNOMPROC, PDNOMGRU, '
      'PDNOMCON, '
      '   PDNOMRAM, PDNOMTIP, PDNOMPROALT, PDSTATUS02, PDSALDOR, '
      'PDBAIXOR, PDALTOR, '
      '   PDSALDOC, PDBAIXOC, PDALTOC, PDCODNCM, PDCUSFAB, PDCUSENV, '
      'PDCUSFIN, '
      '   PDUCODFOR, PDUNOMFOR, PDCODFAB, PDSALDOT, PDALTOT, PDBAIXOT, '
      'PDPMC02, '
      '   PDPMC03, PDCX_PVDA, PDCX_PFAB, PDCX_PMAX, PDICMSCRED, '
      'PDICMSDEB, PDVLRINC, '
      '   PDPRAT, PDLADO, PDRUA, PDAPLIC, PDAPRES, PDQTDM3, '
      'PDCOMIS_EXTRA, PDQTDGRML, '
      '   PDUNDVDA, PDBLDESCAV, PDRESTFOR, PDRESTCON, PDSITCF, '
      'PDCODBAR_EMBPAD, '
      '   PDENTPEN, PDUSRALT, PDUSRINC, PDSALDO_PRAT, PDSALDO_DEP, '
      'PDSALDO_REP, '
      '   PDTEMPOFAB, PDREFER, PDPRZVAL_ANOS, PDPRZVAL_DIAS, PDCODDEP, '
      'PDNOMDEP, '
      '   PDDATA_REPLICA, PDTIPO_MED, PDNOME_COMPRA, PDDESCMAX, '
      'PDCONTESP, PDTIPOPROD, '
      '   PDCMET_CONSTANTE, PDCMET_BITOLA, PDCODGEN, PDBALANCA, PDKIT, '
      'PDVALREGMS, '
      '   PDVENDA_PEND, PDTEMFORMULA, PDFIS_ORIGEM, '
      'PDFIS_CST_ICMS_EST_REV, PDFIS_CST_ICMS_EST_CF, '
      '   PDFIS_PRED_ICMS_EST, PDFIS_CST_ICMS_INT_CF, '
      'PDFIS_CST_ICMS_INT_REV, '
      
        '   PDFIS_PRED_ICMS_INT, PDFIS_CSOSN_EST_REV, PDFIS_CSOSN_EST_CF,' +
        ' '
      'PDFIS_CSOSN_INT_REV, '
      '   PDFIS_CSOSN_INT_CF, PDFIS_CST_PISCOF_ENTRADA, '
      'PDFIS_CST_PISCOF_SAIDA, '
      '   PDFIS_PIS_ALIQ_ENTRADA, PDFIS_COFINS_ALIQ_ENTRADA, '
      'PDFIS_PIS_ALIQ_SAIDA, '
      
        '   PDFIS_COFINS_ALIQ_SAIDA, PDPERCIMPOSTOS, PDPEDELE_DISP, PDCES' +
        'T, '
      'PDCODIGO_CNAE, '
      
        '   PDPRECO_INDEX, PDPRECO_CODINDEX, PDOBS_NEW, PDIPI_CST, PDIPI_' +
        'CENQ, '
      'PDCOMPRA_UND'
      
        ',PDCBENEF_CST_FORAE_REV,PDCBENEF_CST_FORAE_CONSFIN,PDCBENEF_CST_' +
        'DENTROE_REV,PDCBENEF_CST_DENTROE_CONSFIN'
      ',PDPRECO_RESIDUO'
      ',PDCODLC_116_03'
      ',PDCODIGO_SERVICO'
      ',PDALIQ_ISS'
      ',PDCBS_CST'
      ',PDCODCLASSTRIB'
      ',PDCODNBS'
      ',PDSERV_INSS_ALIQ'
      ',PDSERV_INSS_RED'
      ',PDSERV_IRRF_ALIQ'
      ',PDSERV_IRRF_RED'
      ''
      ')'
      'values'
      
        '  (:PDCODEMP, :PDCODPRO, :PDCODBAR, :PDNOME, :PDNOME2, :PDMARCA,' +
        ' '
      ':PDNIVEL, '
      
        '   :PDCODFOR, :PDPRECO1, :PDPRECO2, :PDPRECO3, :PDPMC, :PDPRECOA' +
        '1, '
      ':PDPRECOA2, '
      
        '   :PDPRECOA3, :PDDESC1, :PDDESC1A, :PDDESC2, :PDDESC3, :PDQTDP,' +
        ' '
      ':PDPRAZO, '
      
        '   :PDDESFIN, :PDSIT, :PDDTUATP1, :PDUSRALT1, :PDDTUATP2, :PDUSR' +
        'ALT2, '
      ':PDDTUATP3, '
      
        '   :PDUSRALT3, :PDDATAUA, :PDUND, :PDCURVA, :PDCODGRU, :PDCODCON' +
        ', '
      ':PDCODRAM, '
      
        '   :PDCODTIP, :PDESTMAX, :PDESTMIN, :PDFRACAO, :PDLISTA, :PDPREC' +
        'OC, '
      ':PDPCOMC, '
      '   :PDPCOFAB, :PDSTATUS, :PDTABICM, :PDIPI, :PDREGMS, :PDCLAS, '
      ':PDSECAO, '
      
        '   :PDEMBPAD, :PDEMBMUL, :PDCOMIS, :PDSEMCOM, :PDPRZVAL, :PDUCPR' +
        ', '
      ':PDCODUSR, '
      
        '   :PDSALDO, :PDDTALT, :PDHRALT, :PDEMBPAD2, :PDCODPROC, :PDPROA' +
        'LT, '
      ':PDDTULTSAI, '
      
        '   :PDDTULTENT, :PDVDAMAXM, :PDREST, :PDPESOB, :PDPESOL, :PDBAIX' +
        'O, '
      ':PDALTO, '
      '   :PDDATCAD, :PDNOMFOR, :PDNOMPROC, :PDNOMGRU, :PDNOMCON, '
      ':PDNOMRAM, :PDNOMTIP, '
      '   :PDNOMPROALT, :PDSTATUS02, :PDSALDOR, :PDBAIXOR, :PDALTOR, '
      ':PDSALDOC, '
      
        '   :PDBAIXOC, :PDALTOC, :PDCODNCM, :PDCUSFAB, :PDCUSENV, :PDCUSF' +
        'IN, '
      ':PDUCODFOR, '
      
        '   :PDUNOMFOR, :PDCODFAB, :PDSALDOT, :PDALTOT, :PDBAIXOT, :PDPMC' +
        '02, '
      ':PDPMC03, '
      '   :PDCX_PVDA, :PDCX_PFAB, :PDCX_PMAX, :PDICMSCRED, :PDICMSDEB, '
      ':PDVLRINC, '
      '   :PDPRAT, :PDLADO, :PDRUA, :PDAPLIC, :PDAPRES, :PDQTDM3, '
      ':PDCOMIS_EXTRA, '
      '   :PDQTDGRML, :PDUNDVDA, :PDBLDESCAV, :PDRESTFOR, :PDRESTCON, '
      ':PDSITCF, '
      '   :PDCODBAR_EMBPAD, :PDENTPEN, :PDUSRALT, :PDUSRINC, '
      ':PDSALDO_PRAT, :PDSALDO_DEP, '
      '   :PDSALDO_REP, :PDTEMPOFAB, :PDREFER, :PDPRZVAL_ANOS, '
      ':PDPRZVAL_DIAS, '
      '   :PDCODDEP, :PDNOMDEP, :PDDATA_REPLICA, :PDTIPO_MED, '
      ':PDNOME_COMPRA, '
      '   :PDDESCMAX, :PDCONTESP, :PDTIPOPROD, :PDCMET_CONSTANTE, '
      ':PDCMET_BITOLA, '
      '   :PDCODGEN, :PDBALANCA, :PDKIT, :PDVALREGMS, :PDVENDA_PEND, '
      ':PDTEMFORMULA, '
      
        '   :PDFIS_ORIGEM, :PDFIS_CST_ICMS_EST_REV, :PDFIS_CST_ICMS_EST_C' +
        'F, '
      ':PDFIS_PRED_ICMS_EST, '
      '   :PDFIS_CST_ICMS_INT_CF, :PDFIS_CST_ICMS_INT_REV, '
      ':PDFIS_PRED_ICMS_INT, '
      
        '   :PDFIS_CSOSN_EST_REV, :PDFIS_CSOSN_EST_CF, :PDFIS_CSOSN_INT_R' +
        'EV, '
      ':PDFIS_CSOSN_INT_CF, '
      '   :PDFIS_CST_PISCOF_ENTRADA, :PDFIS_CST_PISCOF_SAIDA, '
      ':PDFIS_PIS_ALIQ_ENTRADA, '
      '   :PDFIS_COFINS_ALIQ_ENTRADA, :PDFIS_PIS_ALIQ_SAIDA, '
      ':PDFIS_COFINS_ALIQ_SAIDA, '
      '   :PDPERCIMPOSTOS, :PDPEDELE_DISP, :PDCEST, :PDCODIGO_CNAE, '
      ':PDPRECO_INDEX,'
      '   :PDPRECO_CODINDEX, :PDOBS_NEW, :PDIPI_CST, :PDIPI_CENQ,'
      ':PDCOMPRA_UND'
      
        ',:PDCBENEF_CST_FORAE_REV,:PDCBENEF_CST_FORAE_CONSFIN,:PDCBENEF_C' +
        'ST_DENTROE_REV,:PDCBENEF_CST_DENTROE_CONSFIN'
      ',:PDPRECO_RESIDUO'
      ',:PDCODLC_116_03'
      ',:PDCODIGO_SERVICO'
      ',:PDALIQ_ISS'
      ',:PDCBS_CST'
      ',:PDCODCLASSTRIB'
      ',:PDCODNBS'
      ',:PDSERV_INSS_ALIQ'
      ',:PDSERV_INSS_RED'
      ',:PDSERV_IRRF_ALIQ'
      ',:PDSERV_IRRF_RED'
      ')')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 621
    Top = 226
  end
  object U_PV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPV'
      'set'
      '  PVCODEMP = :PVCODEMP,'
      '  PVCODTIP = :PVCODTIP,'
      '  PVCODPV = :PVCODPV,'
      '  PVNOME = :PVNOME,'
      '  PVTPC = :PVTPC,'
      '  PVTPP = :PVTPP,'
      '  PVBLQPRM = :PVBLQPRM,'
      '  PVCOM = :PVCOM,'
      '  PVCOM02 = :PVCOM02,'
      '  PVCOM03 = :PVCOM03,'
      '  PVDES = :PVDES,'
      '  PVTPDC = :PVTPDC,'
      '  PVTPD1 = :PVTPD1,'
      '  PVDES1 = :PVDES1,'
      '  PVTPD2 = :PVTPD2,'
      '  PVDES2 = :PVDES2,'
      '  PVTPD3 = :PVTPD3,'
      '  PVDES3 = :PVDES3,'
      '  PVDF01A = :PVDF01A,'
      '  PVDF01B = :PVDF01B,'
      '  PVDF01 = :PVDF01,'
      '  PVDF02A = :PVDF02A,'
      '  PVDF02B = :PVDF02B,'
      '  PVDF02 = :PVDF02,'
      '  PVDF03A = :PVDF03A,'
      '  PVDF03B = :PVDF03B,'
      '  PVDF03 = :PVDF03,'
      '  PVDF04A = :PVDF04A,'
      '  PVDF04B = :PVDF04B,'
      '  PVDF04 = :PVDF04,'
      '  PVD2S0 = :PVD2S0,'
      '  PVD2S1 = :PVD2S1,'
      '  PVD2S2 = :PVD2S2,'
      '  PVD2S3 = :PVD2S3,'
      '  PVD2S4 = :PVD2S4,'
      '  PVD2S5 = :PVD2S5,'
      '  PVD2S6 = :PVD2S6,'
      '  PVD2S7 = :PVD2S7,'
      '  PVD3S0 = :PVD3S0,'
      '  PVD3S1 = :PVD3S1,'
      '  PVD3S2 = :PVD3S2,'
      '  PVD3S3 = :PVD3S3,'
      '  PVD3S4 = :PVD3S4,'
      '  PVD3S5 = :PVD3S5,'
      '  PVD3S6 = :PVD3S6,'
      '  PVD3S7 = :PVD3S7,'
      '  PVCMS0 = :PVCMS0,'
      '  PVCMS1 = :PVCMS1,'
      '  PVCMS2 = :PVCMS2,'
      '  PVCMS3 = :PVCMS3,'
      '  PVCMS4 = :PVCMS4,'
      '  PVCMS5 = :PVCMS5,'
      '  PVCMS6 = :PVCMS6,'
      '  PVCMS7 = :PVCMS7,'
      '  PVTPDESF = :PVTPDESF,'
      '  PVDESCF = :PVDESCF,'
      '  PVDDESCF = :PVDDESCF,'
      '  PVDIASDESCF = :PVDIASDESCF,'
      '  PVFINPRM = :PVFINPRM,'
      '  PVACTD = :PVACTD,'
      '  PVACT00 = :PVACT00,'
      '  PVACT01 = :PVACT01,'
      '  PVACT99 = :PVACT99,'
      '  PVPPORI = :PVPPORI,'
      '  PVCODUSR = :PVCODUSR,'
      '  PVDTALT = :PVDTALT,'
      '  PVHRALT = :PVHRALT,'
      '  PVSTATUS = :PVSTATUS,'
      '  PVD1S0 = :PVD1S0,'
      '  PVD1S1 = :PVD1S1,'
      '  PVD1S2 = :PVD1S2,'
      '  PVD1S3 = :PVD1S3,'
      '  PVD1S4 = :PVD1S4,'
      '  PVD1S5 = :PVD1S5,'
      '  PVD1S6 = :PVD1S6,'
      '  PVD1S7 = :PVD1S7,'
      '  PVDFS0 = :PVDFS0,'
      '  PVDFS1 = :PVDFS1,'
      '  PVDFS2 = :PVDFS2,'
      '  PVDFS3 = :PVDFS3,'
      '  PVDFS4 = :PVDFS4,'
      '  PVDFS5 = :PVDFS5,'
      '  PVDFS6 = :PVDFS6,'
      '  PVDFS7 = :PVDFS7,'
      '  PVPRAZOS = :PVPRAZOS,'
      '  PVVINCULO = :PVVINCULO,'
      '  PVPRAZOMED = :PVPRAZOMED,'
      '  PVCMVD02S0 = :PVCMVD02S0,'
      '  PVCMVD02S1 = :PVCMVD02S1,'
      '  PVCMVD02S2 = :PVCMVD02S2,'
      '  PVCMVD02S3 = :PVCMVD02S3,'
      '  PVCMVD02S4 = :PVCMVD02S4,'
      '  PVCMVD02S5 = :PVCMVD02S5,'
      '  PVCMVD02S6 = :PVCMVD02S6,'
      '  PVCMVD02S7 = :PVCMVD02S7,'
      '  PVACREDESREG = :PVACREDESREG,'
      '  PVUSRALT = :PVUSRALT,'
      '  PVDTINC = :PVDTINC,'
      '  PVUSRINC = :PVUSRINC,'
      '  PVAJCOMIS = :PVAJCOMIS,'
      '  PVACREDESREG_PROMO = :PVACREDESREG_PROMO,'
      '  PVVALORMIN = :PVVALORMIN,'
      '  PVPERCPPARC = :PVPERCPPARC,'
      '  PVACEITARPCOEXCLUSIVO = :PVACEITARPCOEXCLUSIVO'
      '  ,PVPERCOPERADORA = :PVPERCOPERADORA'
      '  ,PVPERCANTECIPACAO = :PVPERCANTECIPACAO'
      '  ,PVTITSEP_PROD_SERV = :PVTITSEP_PROD_SERV'
      'where'
      '  PVCODEMP = :OLD_PVCODEMP and'
      '  PVCODTIP = :OLD_PVCODTIP and'
      '  PVCODPV = :OLD_PVCODPV')
    InsertSQL.Strings = (
      'insert into CADPV'
      '  (PVCODEMP, PVCODTIP, PVCODPV, PVNOME, PVTPC, PVTPP, PVBLQPRM,'
      'PVCOM,'
      
        '   PVCOM02, PVCOM03, PVDES, PVTPDC, PVTPD1, PVDES1, PVTPD2, PVDE' +
        'S2,'
      'PVTPD3,'
      '   PVDES3, PVDF01A, PVDF01B, PVDF01, PVDF02A, PVDF02B, PVDF02,'
      'PVDF03A,'
      
        '   PVDF03B, PVDF03, PVDF04A, PVDF04B, PVDF04, PVD2S0, PVD2S1, PV' +
        'D2S2,'
      'PVD2S3,'
      
        '   PVD2S4, PVD2S5, PVD2S6, PVD2S7, PVD3S0, PVD3S1, PVD3S2, PVD3S' +
        '3,'
      'PVD3S4,'
      
        '   PVD3S5, PVD3S6, PVD3S7, PVCMS0, PVCMS1, PVCMS2, PVCMS3, PVCMS' +
        '4,'
      'PVCMS5,'
      '   PVCMS6, PVCMS7, PVTPDESF, PVDESCF, PVDDESCF, PVDIASDESCF,'
      'PVFINPRM,'
      
        '   PVACTD, PVACT00, PVACT01, PVACT99, PVPPORI, PVCODUSR, PVDTALT' +
        ','
      'PVHRALT,'
      
        '   PVSTATUS, PVD1S0, PVD1S1, PVD1S2, PVD1S3, PVD1S4, PVD1S5, PVD' +
        '1S6,'
      'PVD1S7,'
      
        '   PVDFS0, PVDFS1, PVDFS2, PVDFS3, PVDFS4, PVDFS5, PVDFS6, PVDFS' +
        '7,'
      'PVPRAZOS,'
      '   PVVINCULO, PVPRAZOMED, PVCMVD02S0, PVCMVD02S1, PVCMVD02S2,'
      'PVCMVD02S3,'
      '   PVCMVD02S4, PVCMVD02S5, PVCMVD02S6, PVCMVD02S7, PVACREDESREG,'
      'PVUSRALT,'
      '   PVDTINC, PVUSRINC, PVAJCOMIS, PVACREDESREG_PROMO, PVVALORMIN,'
      'PVPERCPPARC,PVACEITARPCOEXCLUSIVO'
      ',PVPERCOPERADORA,PVPERCANTECIPACAO'
      ',PVTITSEP_PROD_SERV)'
      'values'
      
        '  (:PVCODEMP, :PVCODTIP, :PVCODPV, :PVNOME, :PVTPC, :PVTPP, :PVB' +
        'LQPRM,'
      
        '   :PVCOM, :PVCOM02, :PVCOM03, :PVDES, :PVTPDC, :PVTPD1, :PVDES1' +
        ','
      ':PVTPD2, '
      
        '   :PVDES2, :PVTPD3, :PVDES3, :PVDF01A, :PVDF01B, :PVDF01, :PVDF' +
        '02A, '
      ':PVDF02B, '
      
        '   :PVDF02, :PVDF03A, :PVDF03B, :PVDF03, :PVDF04A, :PVDF04B, :PV' +
        'DF04, '
      ':PVD2S0, '
      
        '   :PVD2S1, :PVD2S2, :PVD2S3, :PVD2S4, :PVD2S5, :PVD2S6, :PVD2S7' +
        ', :PVD3S0, '
      
        '   :PVD3S1, :PVD3S2, :PVD3S3, :PVD3S4, :PVD3S5, :PVD3S6, :PVD3S7' +
        ', :PVCMS0, '
      
        '   :PVCMS1, :PVCMS2, :PVCMS3, :PVCMS4, :PVCMS5, :PVCMS6, :PVCMS7' +
        ', '
      ':PVTPDESF, '
      
        '   :PVDESCF, :PVDDESCF, :PVDIASDESCF, :PVFINPRM, :PVACTD, :PVACT' +
        '00, '
      ':PVACT01, '
      
        '   :PVACT99, :PVPPORI, :PVCODUSR, :PVDTALT, :PVHRALT, :PVSTATUS,' +
        ' '
      ':PVD1S0, '
      
        '   :PVD1S1, :PVD1S2, :PVD1S3, :PVD1S4, :PVD1S5, :PVD1S6, :PVD1S7' +
        ', :PVDFS0, '
      
        '   :PVDFS1, :PVDFS2, :PVDFS3, :PVDFS4, :PVDFS5, :PVDFS6, :PVDFS7' +
        ', '
      ':PVPRAZOS, '
      
        '   :PVVINCULO, :PVPRAZOMED, :PVCMVD02S0, :PVCMVD02S1, :PVCMVD02S' +
        '2, '
      ':PVCMVD02S3, '
      '   :PVCMVD02S4, :PVCMVD02S5, :PVCMVD02S6, :PVCMVD02S7, '
      ':PVACREDESREG, :PVUSRALT, '
      '   :PVDTINC, :PVUSRINC, :PVAJCOMIS, :PVACREDESREG_PROMO,'
      ':PVVALORMIN, :PVPERCPPARC, :PVACEITARPCOEXCLUSIVO'
      ',:PVPERCOPERADORA,:PVPERCANTECIPACAO'
      ',:PVTITSEP_PROD_SERV'
      ')')
    DeleteSQL.Strings = (
      'delete from CADPV'
      'where'
      '  PVCODEMP = :OLD_PVCODEMP and'
      '  PVCODTIP = :OLD_PVCODTIP and'
      '  PVCODPV = :OLD_PVCODPV')
    Left = 623
    Top = 272
  end
  object U_Red: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRED'
      'set'
      '  RDCODEMP = :RDCODEMP,'
      '  RDCODRED = :RDCODRED,'
      '  RDNOME = :RDNOME,'
      '  RDDATHOR_INC = :RDDATHOR_INC,'
      '  RDCODUSR_INC = :RDCODUSR_INC,'
      '  RDDATHOR_ALT = :RDDATHOR_ALT,'
      '  RDCODUSR_ALT = :RDCODUSR_ALT'
      'where'
      '  RDCODEMP = :OLD_RDCODEMP and'
      '  RDCODRED = :OLD_RDCODRED')
    InsertSQL.Strings = (
      'insert into CADRED'
      '  (RDCODEMP, RDCODRED, RDNOME, RDDATHOR_INC, RDCODUSR_INC, '
      'RDDATHOR_ALT, '
      '   RDCODUSR_ALT)'
      'values'
      '  (:RDCODEMP, :RDCODRED, :RDNOME, :RDDATHOR_INC, :RDCODUSR_INC, '
      ':RDDATHOR_ALT, '
      '   :RDCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADRED'
      'where'
      '  RDCODEMP = :OLD_RDCODEMP and'
      '  RDCODRED = :OLD_RDCODRED')
    Left = 617
    Top = 449
  end
  object U_Tab: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTAB'
      'set'
      '  TCODEMP = :TCODEMP,'
      '  TDOC = :TDOC,'
      '  TLOCAL = :TLOCAL,'
      '  TSEQ = :TSEQ,'
      '  TLIN = :TLIN,'
      '  TCOL = :TCOL,'
      '  TFONTE = :TFONTE,'
      '  TTIPO = :TTIPO,'
      '  TCAMPO = :TCAMPO,'
      '  TDCAMPO = :TDCAMPO,'
      '  TTIPOC = :TTIPOC,'
      '  TALINHAR = :TALINHAR,'
      '  TTAM = :TTAM,'
      '  TFORMATO = :TFORMATO,'
      '  TCONDT1 = :TCONDT1,'
      '  TCOND01 = :TCOND01,'
      '  TCONDOP = :TCONDOP,'
      '  TCONDT2 = :TCONDT2,'
      '  TCOND02 = :TCOND02'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TDOC = :OLD_TDOC and'
      '  TLOCAL = :OLD_TLOCAL and'
      '  TSEQ = :OLD_TSEQ')
    InsertSQL.Strings = (
      'insert into CADTAB'
      
        '  (TCODEMP, TDOC, TLOCAL, TSEQ, TLIN, TCOL, TFONTE, TTIPO, TCAMP' +
        'O, '
      'TDCAMPO, '
      '   TTIPOC, TALINHAR, TTAM, TFORMATO, TCONDT1, TCOND01, TCONDOP, '
      'TCONDT2, '
      '   TCOND02)'
      'values'
      
        '  (:TCODEMP, :TDOC, :TLOCAL, :TSEQ, :TLIN, :TCOL, :TFONTE, :TTIP' +
        'O, '
      ':TCAMPO, '
      
        '   :TDCAMPO, :TTIPOC, :TALINHAR, :TTAM, :TFORMATO, :TCONDT1, :TC' +
        'OND01, '
      '   :TCONDOP, :TCONDT2, :TCOND02)')
    DeleteSQL.Strings = (
      'delete from CADTAB'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TDOC = :OLD_TDOC and'
      '  TLOCAL = :OLD_TLOCAL and'
      '  TSEQ = :OLD_TSEQ')
    Left = 722
    Top = 101
  end
  object U_TCA: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTCA'
      'set'
      '  TCCODEMP = :TCCODEMP,'
      '  TCDOC = :TCDOC,'
      '  TCQTDLIN = :TCQTDLIN,'
      '  TCQTDCOL = :TCQTDCOL,'
      '  TCFPADRAO = :TCFPADRAO,'
      '  TCQTDITEM = :TCQTDITEM,'
      '  TCQTDSER = :TCQTDSER,'
      '  TCQTDLPP = :TCQTDLPP,'
      '  TCIMPDA = :TCIMPDA,'
      '  TCOBS = :TCOBS'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCDOC = :OLD_TCDOC')
    InsertSQL.Strings = (
      'insert into CADTCA'
      '  (TCCODEMP, TCDOC, TCQTDLIN, TCQTDCOL, TCFPADRAO, TCQTDITEM, '
      'TCQTDSER, '
      '   TCQTDLPP, TCIMPDA, TCOBS)'
      'values'
      
        '  (:TCCODEMP, :TCDOC, :TCQTDLIN, :TCQTDCOL, :TCFPADRAO, :TCQTDIT' +
        'EM, '
      ':TCQTDSER, '
      '   :TCQTDLPP, :TCIMPDA, :TCOBS)')
    DeleteSQL.Strings = (
      'delete from CADTCA'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCDOC = :OLD_TCDOC')
    Left = 722
    Top = 145
  end
  object U_TCon: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON'
      'set'
      '  CCODEMP = :CCODEMP,'
      '  CCODCON = :CCODCON,'
      '  CNOME = :CNOME,'
      '  CRESTCON = :CRESTCON,'
      '  CDATHOR_INC = :CDATHOR_INC,'
      '  CCODUSR_INC = :CCODUSR_INC,'
      '  CDATHOR_ALT = :CDATHOR_ALT,'
      '  CCODUSR_ALT = :CCODUSR_ALT'
      'where'
      '  CCODEMP = :OLD_CCODEMP and'
      '  CCODCON = :OLD_CCODCON')
    InsertSQL.Strings = (
      'insert into CADCON'
      
        '  (CCODEMP, CCODCON, CNOME, CRESTCON, CDATHOR_INC, CCODUSR_INC, ' +
        'CDATHOR_ALT, '
      '   CCODUSR_ALT)'
      'values'
      
        '  (:CCODEMP, :CCODCON, :CNOME, :CRESTCON, :CDATHOR_INC, :CCODUSR' +
        '_INC, :CDATHOR_ALT, '
      '   :CCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADCON'
      'where'
      '  CCODEMP = :OLD_CCODEMP and'
      '  CCODCON = :OLD_CCODCON')
    Left = 722
    Top = 189
  end
  object U_TDV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTDV'
      'set'
      '  TCODEMP = :TCODEMP,'
      '  TDOC = :TDOC,'
      '  TNOME = :TNOME,'
      '  TLOCAL = :TLOCAL,'
      '  TSEQ = :TSEQ,'
      '  TLIN = :TLIN,'
      '  TCOL = :TCOL,'
      '  TFONTE = :TFONTE,'
      '  TTIPO = :TTIPO,'
      '  TCAMPO = :TCAMPO,'
      '  TCAMPO_TAB = :TCAMPO_TAB,'
      '  TDCAMPO = :TDCAMPO,'
      '  TTIPOC = :TTIPOC,'
      '  TALINHAR = :TALINHAR,'
      '  TTAM = :TTAM,'
      '  TFORMATO = :TFORMATO,'
      '  TCONDT1 = :TCONDT1,'
      '  TCOND01 = :TCOND01,'
      '  TCOND01_TAB = :TCOND01_TAB,'
      '  TCONDOP = :TCONDOP,'
      '  TCONDT2 = :TCONDT2,'
      '  TCOND02 = :TCOND02,'
      '  TCOND02_TAB = :TCOND02_TAB,'
      '  TZERVAR = :TZERVAR,'
      '  TCTPSEL = :TCTPSEL,'
      '  TCBARRAS = :TCBARRAS,'
      '  TCEXTENSO = :TCEXTENSO,'
      '  TCEXT_QTDL = :TCEXT_QTDL,'
      '  TCEXT_1LP = :TCEXT_1LP,'
      '  TCEXT_1LT = :TCEXT_1LT,'
      '  TCEXT_1IC = :TCEXT_1IC,'
      '  TCEXT_2LP = :TCEXT_2LP,'
      '  TCEXT_2LT = :TCEXT_2LT,'
      '  TCEXT_2IC = :TCEXT_2IC,'
      '  TCEXT_3LP = :TCEXT_3LP,'
      '  TCEXT_3LT = :TCEXT_3LT,'
      '  TCEXT_3IC = :TCEXT_3IC,'
      '  TCTPVAR = :TCTPVAR,'
      '  TCOND_CONT = :TCOND_CONT,'
      '  TCOND_02_T1 = :TCOND_02_T1,'
      '  TCOND_02_01 = :TCOND_02_01,'
      '  TCOND_02_01_TAB = :TCOND_02_01_TAB,'
      '  TCOND_02_OP = :TCOND_02_OP,'
      '  TCOND_02_T2 = :TCOND_02_T2,'
      '  TCOND_02_02 = :TCOND_02_02,'
      '  TCOND_02_02_TAB = :TCOND_02_02_TAB,'
      '  TCCORTARDE = :TCCORTARDE,'
      '  TCOND_CONT03 = :TCOND_CONT03,'
      '  TCOND_03_T1 = :TCOND_03_T1,'
      '  TCOND_03_01 = :TCOND_03_01,'
      '  TCOND_03_01_TAB = :TCOND_03_01_TAB,'
      '  TCOND_03_OP = :TCOND_03_OP,'
      '  TCOND_03_T2 = :TCOND_03_T2,'
      '  TCOND_03_02 = :TCOND_03_02,'
      '  TCOND_03_02_TAB = :TCOND_03_02_TAB,'
      '  TCINFADIC = :TCINFADIC'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TDOC = :OLD_TDOC and'
      '  TNOME = :OLD_TNOME and'
      '  TLOCAL = :OLD_TLOCAL and'
      '  TSEQ = :OLD_TSEQ')
    InsertSQL.Strings = (
      'insert into CADTDV'
      
        '  (TCODEMP, TDOC, TNOME, TLOCAL, TSEQ, TLIN, TCOL, TFONTE, TTIPO' +
        ', '
      'TCAMPO, '
      
        '   TCAMPO_TAB, TDCAMPO, TTIPOC, TALINHAR, TTAM, TFORMATO, TCONDT' +
        '1, '
      'TCOND01, '
      
        '   TCOND01_TAB, TCONDOP, TCONDT2, TCOND02, TCOND02_TAB, TZERVAR,' +
        ' '
      'TCTPSEL, '
      '   TCBARRAS, TCEXTENSO, TCEXT_QTDL, TCEXT_1LP, TCEXT_1LT, '
      'TCEXT_1IC, TCEXT_2LP, '
      
        '   TCEXT_2LT, TCEXT_2IC, TCEXT_3LP, TCEXT_3LT, TCEXT_3IC, TCTPVA' +
        'R, '
      'TCOND_CONT, '
      '   TCOND_02_T1, TCOND_02_01, TCOND_02_01_TAB, TCOND_02_OP, '
      'TCOND_02_T2, '
      '   TCOND_02_02, TCOND_02_02_TAB, TCCORTARDE, TCOND_CONT03, '
      'TCOND_03_T1, '
      '   TCOND_03_01, TCOND_03_01_TAB, TCOND_03_OP, TCOND_03_T2, '
      'TCOND_03_02, '
      '   TCOND_03_02_TAB, TCINFADIC)'
      'values'
      
        '  (:TCODEMP, :TDOC, :TNOME, :TLOCAL, :TSEQ, :TLIN, :TCOL, :TFONT' +
        'E, :TTIPO, '
      '   :TCAMPO, :TCAMPO_TAB, :TDCAMPO, :TTIPOC, :TALINHAR, :TTAM, '
      ':TFORMATO, '
      
        '   :TCONDT1, :TCOND01, :TCOND01_TAB, :TCONDOP, :TCONDT2, :TCOND0' +
        '2, '
      ':TCOND02_TAB, '
      '   :TZERVAR, :TCTPSEL, :TCBARRAS, :TCEXTENSO, :TCEXT_QTDL, '
      ':TCEXT_1LP, '
      '   :TCEXT_1LT, :TCEXT_1IC, :TCEXT_2LP, :TCEXT_2LT, :TCEXT_2IC, '
      ':TCEXT_3LP, '
      '   :TCEXT_3LT, :TCEXT_3IC, :TCTPVAR, :TCOND_CONT, :TCOND_02_T1, '
      ':TCOND_02_01, '
      '   :TCOND_02_01_TAB, :TCOND_02_OP, :TCOND_02_T2, :TCOND_02_02, '
      ':TCOND_02_02_TAB, '
      '   :TCCORTARDE, :TCOND_CONT03, :TCOND_03_T1, :TCOND_03_01, '
      ':TCOND_03_01_TAB, '
      '   :TCOND_03_OP, :TCOND_03_T2, :TCOND_03_02, :TCOND_03_02_TAB, '
      ':TCINFADIC)')
    DeleteSQL.Strings = (
      'delete from CADTDV'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TDOC = :OLD_TDOC and'
      '  TNOME = :OLD_TNOME and'
      '  TLOCAL = :OLD_TLOCAL and'
      '  TSEQ = :OLD_TSEQ')
    Left = 718
    Top = 222
  end
  object U_TDVCA: TUpdateSQL
    ModifySQL.Strings = (
      'update CTDVCA'
      'set'
      '  TCCODEMP = :TCCODEMP,'
      '  TCDOC = :TCDOC,'
      '  TCNOME = :TCNOME,'
      '  TCQTDLIN = :TCQTDLIN,'
      '  TCQTDCOL = :TCQTDCOL,'
      '  TCFPADRAO = :TCFPADRAO,'
      '  TCQTDLPP = :TCQTDLPP,'
      '  TCNUMCOL = :TCNUMCOL,'
      '  TCINTCOL = :TCINTCOL,'
      '  TCTPCOL = :TCTPCOL,'
      '  TCORDEM = :TCORDEM,'
      '  TCMPAGGR = :TCMPAGGR,'
      '  TCOBS = :TCOBS,'
      '  TCTPESQ = :TCTPESQ,'
      '  TCTPREL = :TCTPREL,'
      '  TCIMPG = :TCIMPG,'
      '  TCIMPSG = :TCIMPSG,'
      '  TCAVPTPI = :TCAVPTPI,'
      '  TCAVPIPF = :TCAVPIPF,'
      '  TCSTATUS = :TCSTATUS,'
      '  TCVIS = :TCVIS,'
      '  TCQTDITEM = :TCQTDITEM,'
      '  TCQTDSER = :TCQTDSER,'
      '  TCIMPDA = :TCIMPDA,'
      '  TCTAB01 = :TCTAB01,'
      '  TCTAB02 = :TCTAB02,'
      '  TCTAB02N = :TCTAB02N,'
      '  TCTAB03 = :TCTAB03,'
      '  TCTAB03N = :TCTAB03N,'
      '  TCTAB04 = :TCTAB04,'
      '  TCTAB04N = :TCTAB04N,'
      '  TCTAB05 = :TCTAB05,'
      '  TCTAB05N = :TCTAB05N,'
      '  TCTAB06 = :TCTAB06,'
      '  TCTAB06N = :TCTAB06N,'
      '  TCTAB07 = :TCTAB07,'
      '  TCTAB07N = :TCTAB07N,'
      '  TCTAB08 = :TCTAB08,'
      '  TCTAB08N = :TCTAB08N,'
      '  TCTAB09 = :TCTAB09,'
      '  TCTAB09N = :TCTAB09N,'
      '  TCORDEM2 = :TCORDEM2,'
      '  TCFILTRO = :TCFILTRO,'
      '  TCCONT_M = :TCCONT_M,'
      '  TCCONT_R = :TCCONT_R,'
      '  TCCONT_AP = :TCCONT_AP,'
      '  TCBLOQ = :TCBLOQ,'
      '  TCAGRUPAR = :TCAGRUPAR,'
      '  TCMASC = :TCMASC,'
      '  TCPERIODO = :TCPERIODO,'
      '  TCDIMGRU = :TCDIMGRU,'
      '  TCDIMSG = :TCDIMSG,'
      '  TCTPFORM = :TCTPFORM,'
      '  TCQTDDIV = :TCQTDDIV,'
      '  TCFILVEN = :TCFILVEN,'
      '  TCFVCAMPO = :TCFVCAMPO,'
      '  TCFILCLI = :TCFILCLI,'
      '  TCFCCAMPO = :TCFCCAMPO,'
      '  TCFILPRO = :TCFILPRO,'
      '  TCFPCAMPO = :TCFPCAMPO,'
      '  TCFILFOR = :TCFILFOR,'
      '  TCFFCAMPO = :TCFFCAMPO,'
      '  TCFILRED = :TCFILRED,'
      '  TCFRCAMPO = :TCFRCAMPO,'
      '  TCDETNCOL = :TCDETNCOL,'
      '  TCDETICOL = :TCDETICOL,'
      '  TCDETTPCOL = :TCDETTPCOL,'
      '  TCAVANCAROD = :TCAVANCAROD,'
      '  TCFILEST = :TCFILEST,'
      '  TCQTDVIA = :TCQTDVIA,'
      '  TCFILRAMCLI = :TCFILRAMCLI,'
      '  TCFILRAMPRO = :TCFILRAMPRO,'
      '  TCFILTPRO = :TCFILTPRO,'
      '  TCFILGPRO = :TCFILGPRO,'
      '  TCFILCPRO = :TCFILCPRO,'
      '  TCFILLOC = :TCFILLOC,'
      '  TCFILBAI = :TCFILBAI,'
      '  TCFILGFOR = :TCFILGFOR,'
      '  TCFILCONV = :TCFILCONV,'
      '  TCFILSUP = :TCFILSUP,'
      '  TCFILASS = :TCFILASS,'
      '  TCFILREG = :TCFILREG,'
      '  TCFILTRA = :TCFILTRA,'
      '  TCFILBCO = :TCFILBCO,'
      '  TCFILCC = :TCFILCC,'
      '  TCFILDEP = :TCFILDEP,'
      '  TCFILUSR = :TCFILUSR,'
      '  TCFILCAR = :TCFILCAR,'
      '  TCFILFUN = :TCFILFUN,'
      '  TCGPRO = :TCGPRO,'
      '  TCMODIMP = :TCMODIMP,'
      '  TCIMPCMET = :TCIMPCMET,'
      '  TCIMPPD = :TCIMPPD'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCDOC = :OLD_TCDOC and'
      '  TCNOME = :OLD_TCNOME')
    InsertSQL.Strings = (
      'insert into CTDVCA'
      '  (TCCODEMP, TCDOC, TCNOME, TCQTDLIN, TCQTDCOL, TCFPADRAO, '
      'TCQTDLPP, TCNUMCOL, '
      
        '   TCINTCOL, TCTPCOL, TCORDEM, TCMPAGGR, TCOBS, TCTPESQ, TCTPREL' +
        ', '
      'TCIMPG, '
      
        '   TCIMPSG, TCAVPTPI, TCAVPIPF, TCSTATUS, TCVIS, TCQTDITEM, TCQT' +
        'DSER, '
      'TCIMPDA, '
      
        '   TCTAB01, TCTAB02, TCTAB02N, TCTAB03, TCTAB03N, TCTAB04, TCTAB' +
        '04N, '
      'TCTAB05, '
      
        '   TCTAB05N, TCTAB06, TCTAB06N, TCTAB07, TCTAB07N, TCTAB08, TCTA' +
        'B08N, '
      'TCTAB09, '
      '   TCTAB09N, TCORDEM2, TCFILTRO, TCCONT_M, TCCONT_R, TCCONT_AP, '
      'TCBLOQ, '
      '   TCAGRUPAR, TCMASC, TCPERIODO, TCDIMGRU, TCDIMSG, TCTPFORM, '
      'TCQTDDIV, '
      
        '   TCFILVEN, TCFVCAMPO, TCFILCLI, TCFCCAMPO, TCFILPRO, TCFPCAMPO' +
        ', '
      'TCFILFOR, '
      '   TCFFCAMPO, TCFILRED, TCFRCAMPO, TCDETNCOL, TCDETICOL, '
      'TCDETTPCOL, TCAVANCAROD, '
      
        '   TCFILEST, TCQTDVIA, TCFILRAMCLI, TCFILRAMPRO, TCFILTPRO, TCFI' +
        'LGPRO, '
      
        '   TCFILCPRO, TCFILLOC, TCFILBAI, TCFILGFOR, TCFILCONV, TCFILSUP' +
        ', '
      'TCFILASS, '
      
        '   TCFILREG, TCFILTRA, TCFILBCO, TCFILCC, TCFILDEP, TCFILUSR, TC' +
        'FILCAR, '
      '   TCFILFUN, TCGPRO, TCMODIMP, TCIMPCMET, TCIMPPD)'
      'values'
      
        '  (:TCCODEMP, :TCDOC, :TCNOME, :TCQTDLIN, :TCQTDCOL, :TCFPADRAO,' +
        ' '
      ':TCQTDLPP, '
      '   :TCNUMCOL, :TCINTCOL, :TCTPCOL, :TCORDEM, :TCMPAGGR, :TCOBS, '
      ':TCTPESQ, '
      
        '   :TCTPREL, :TCIMPG, :TCIMPSG, :TCAVPTPI, :TCAVPIPF, :TCSTATUS,' +
        ' :TCVIS, '
      
        '   :TCQTDITEM, :TCQTDSER, :TCIMPDA, :TCTAB01, :TCTAB02, :TCTAB02' +
        'N, '
      ':TCTAB03, '
      
        '   :TCTAB03N, :TCTAB04, :TCTAB04N, :TCTAB05, :TCTAB05N, :TCTAB06' +
        ', '
      ':TCTAB06N, '
      
        '   :TCTAB07, :TCTAB07N, :TCTAB08, :TCTAB08N, :TCTAB09, :TCTAB09N' +
        ', '
      ':TCORDEM2, '
      
        '   :TCFILTRO, :TCCONT_M, :TCCONT_R, :TCCONT_AP, :TCBLOQ, :TCAGRU' +
        'PAR, '
      ':TCMASC, '
      
        '   :TCPERIODO, :TCDIMGRU, :TCDIMSG, :TCTPFORM, :TCQTDDIV, :TCFIL' +
        'VEN, '
      ':TCFVCAMPO, '
      
        '   :TCFILCLI, :TCFCCAMPO, :TCFILPRO, :TCFPCAMPO, :TCFILFOR, :TCF' +
        'FCAMPO, '
      '   :TCFILRED, :TCFRCAMPO, :TCDETNCOL, :TCDETICOL, :TCDETTPCOL, '
      ':TCAVANCAROD, '
      
        '   :TCFILEST, :TCQTDVIA, :TCFILRAMCLI, :TCFILRAMPRO, :TCFILTPRO,' +
        ' '
      ':TCFILGPRO, '
      
        '   :TCFILCPRO, :TCFILLOC, :TCFILBAI, :TCFILGFOR, :TCFILCONV, :TC' +
        'FILSUP, '
      
        '   :TCFILASS, :TCFILREG, :TCFILTRA, :TCFILBCO, :TCFILCC, :TCFILD' +
        'EP, '
      ':TCFILUSR, '
      
        '   :TCFILCAR, :TCFILFUN, :TCGPRO, :TCMODIMP, :TCIMPCMET, :TCIMPP' +
        'D)')
    DeleteSQL.Strings = (
      'delete from CTDVCA'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCDOC = :OLD_TCDOC and'
      '  TCNOME = :OLD_TCNOME')
    Left = 718
    Top = 267
  end
  object U_TDVFT: TUpdateSQL
    ModifySQL.Strings = (
      'update CTDVFT'
      'set'
      '  TFCODEMP = :TFCODEMP,'
      '  TFDOC = :TFDOC,'
      '  TFNOME = :TFNOME,'
      '  TFTIPO = :TFTIPO,'
      '  TFCODIGO = :TFCODIGO,'
      '  TFTCAMPO1 = :TFTCAMPO1,'
      '  TFTAB01 = :TFTAB01,'
      '  TFCAMPO1 = :TFCAMPO1,'
      '  TFCOND1 = :TFCOND1,'
      '  TFTCAMPO2 = :TFTCAMPO2,'
      '  TFTAB02 = :TFTAB02,'
      '  TFCAMPO2 = :TFCAMPO2'
      'where'
      '  TFCODEMP = :OLD_TFCODEMP and'
      '  TFDOC = :OLD_TFDOC and'
      '  TFNOME = :OLD_TFNOME and'
      '  TFTIPO = :OLD_TFTIPO and'
      '  TFCODIGO = :OLD_TFCODIGO')
    InsertSQL.Strings = (
      'insert into CTDVFT'
      
        '  (TFCODEMP, TFDOC, TFNOME, TFTIPO, TFCODIGO, TFTCAMPO1, TFTAB01' +
        ', '
      'TFCAMPO1, '
      '   TFCOND1, TFTCAMPO2, TFTAB02, TFCAMPO2)'
      'values'
      '  (:TFCODEMP, :TFDOC, :TFNOME, :TFTIPO, :TFCODIGO, :TFTCAMPO1, '
      ':TFTAB01, '
      '   :TFCAMPO1, :TFCOND1, :TFTCAMPO2, :TFTAB02, :TFCAMPO2)')
    DeleteSQL.Strings = (
      'delete from CTDVFT'
      'where'
      '  TFCODEMP = :OLD_TFCODEMP and'
      '  TFDOC = :OLD_TFDOC and'
      '  TFNOME = :OLD_TFNOME and'
      '  TFTIPO = :OLD_TFTIPO and'
      '  TFCODIGO = :OLD_TFCODIGO')
    Left = 718
    Top = 310
  end
  object U_TPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTP'
      'set'
      '  TCODEMP = :TCODEMP,'
      '  TCODTIP = :TCODTIP,'
      '  TNOME = :TNOME,'
      '  TDESCAV = :TDESCAV,'
      '  TDATHOR_INC = :TDATHOR_INC,'
      '  TCODUSR_INC = :TCODUSR_INC,'
      '  TDATHOR_ALT = :TDATHOR_ALT,'
      '  TCODUSR_ALT = :TCODUSR_ALT'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTIP = :OLD_TCODTIP')
    InsertSQL.Strings = (
      'insert into CADTP'
      '  (TCODEMP, TCODTIP, TNOME, TDESCAV, TDATHOR_INC, TCODUSR_INC, '
      'TDATHOR_ALT, '
      '   TCODUSR_ALT)'
      'values'
      
        '  (:TCODEMP, :TCODTIP, :TNOME, :TDESCAV, :TDATHOR_INC, :TCODUSR_' +
        'INC, '
      ':TDATHOR_ALT, '
      '   :TCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADTP'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTIP = :OLD_TCODTIP')
    Left = 717
    Top = 355
  end
  object U_Tra: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRA'
      'set'
      '  TRCODEMP = :TRCODEMP,'
      '  TRCODTRA = :TRCODTRA,'
      '  TRRAZTRA = :TRRAZTRA,'
      '  TRFANTRA = :TRFANTRA,'
      '  TRTPLOG = :TRTPLOG,'
      '  TRNLOG = :TRNLOG,'
      '  TRNUM = :TRNUM,'
      '  TRCOMPL = :TRCOMPL,'
      '  TRBAIRRO = :TRBAIRRO,'
      '  TRCIDADE = :TRCIDADE,'
      '  TRUF = :TRUF,'
      '  TRCODBAI = :TRCODBAI,'
      '  TRCODLOC = :TRCODLOC,'
      '  TRCEP = :TRCEP,'
      '  TRCNPJ = :TRCNPJ,'
      '  TRIE = :TRIE,'
      '  TRCNPF = :TRCNPF,'
      '  TRRG = :TRRG,'
      '  TROBS = :TROBS,'
      '  TRDTCAD = :TRDTCAD,'
      '  TRSTATUS = :TRSTATUS,'
      '  TRPLACAV = :TRPLACAV,'
      '  TRFONE = :TRFONE,'
      '  TRFAX = :TRFAX,'
      '  TREMAIL = :TREMAIL,'
      '  TRHOME = :TRHOME,'
      '  TRUFPV = :TRUFPV,'
      '  TRCNPJ_CONSISTE = :TRCNPJ_CONSISTE,'
      '  TRCODUSR_INC = :TRCODUSR_INC,'
      '  TRDATHOR_ALT = :TRDATHOR_ALT,'
      '  TRCODUSR_ALT = :TRCODUSR_ALT,'
      '  TRNUMAVMUN = :TRNUMAVMUN,'
      '  TRDTAVNUM = :TRDTAVNUM,'
      '  TRCODBLOQ = :TRCODBLOQ,'
      '  TRDATHOR_BLOQ = :TRDATHOR_BLOQ,'
      '  TRMOTBLOQ = :TRMOTBLOQ,'
      '  TRPERTRAMED = :TRPERTRAMED,'
      '  TRNUMCE = :TRNUMCE,'
      '  TRDTVCE = :TRDTVCE,'
      '  TRNUMPS = :TRNUMPS,'
      '  TRDTVPS = :TRDTVPS,'
      '  TRNUMS = :TRNUMS,'
      '  TRDTVS = :TRDTVS,'
      '  TRNUMCS = :TRNUMCS,'
      '  TRDTVCS = :TRDTVCS'
      'where'
      '  TRCODEMP = :OLD_TRCODEMP and'
      '  TRCODTRA = :OLD_TRCODTRA')
    InsertSQL.Strings = (
      'insert into CADTRA'
      '  (TRCODEMP, TRCODTRA, TRRAZTRA, TRFANTRA, TRTPLOG, TRNLOG, '
      'TRNUM, TRCOMPL, '
      '   TRBAIRRO, TRCIDADE, TRUF, TRCODBAI, TRCODLOC, TRCEP, TRCNPJ, '
      'TRIE, TRCNPF, '
      '   TRRG, TROBS, TRDTCAD, TRSTATUS, TRPLACAV, TRFONE, TRFAX, '
      'TREMAIL, TRHOME, '
      '   TRUFPV, TRCNPJ_CONSISTE, TRCODUSR_INC, TRDATHOR_ALT, '
      'TRCODUSR_ALT, TRNUMAVMUN, '
      '   TRDTAVNUM, TRCODBLOQ, TRDATHOR_BLOQ, TRMOTBLOQ, '
      'TRPERTRAMED, TRNUMCE, '
      '   TRDTVCE, TRNUMPS, TRDTVPS, TRNUMS, TRDTVS, TRNUMCS, TRDTVCS)'
      'values'
      
        '  (:TRCODEMP, :TRCODTRA, :TRRAZTRA, :TRFANTRA, :TRTPLOG, :TRNLOG' +
        ', '
      ':TRNUM, '
      '   :TRCOMPL, :TRBAIRRO, :TRCIDADE, :TRUF, :TRCODBAI, :TRCODLOC, '
      ':TRCEP, '
      '   :TRCNPJ, :TRIE, :TRCNPF, :TRRG, :TROBS, :TRDTCAD, :TRSTATUS, '
      ':TRPLACAV, '
      
        '   :TRFONE, :TRFAX, :TREMAIL, :TRHOME, :TRUFPV, :TRCNPJ_CONSISTE' +
        ', '
      ':TRCODUSR_INC, '
      '   :TRDATHOR_ALT, :TRCODUSR_ALT, :TRNUMAVMUN, :TRDTAVNUM, '
      ':TRCODBLOQ, :TRDATHOR_BLOQ, '
      '   :TRMOTBLOQ, :TRPERTRAMED, :TRNUMCE, :TRDTVCE, :TRNUMPS, '
      ':TRDTVPS, :TRNUMS, '
      '   :TRDTVS, :TRNUMCS, :TRDTVCS)')
    DeleteSQL.Strings = (
      'delete from CADTRA'
      'where'
      '  TRCODEMP = :OLD_TRCODEMP and'
      '  TRCODTRA = :OLD_TRCODTRA')
    Left = 715
    Top = 402
  end
  object U_UF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADUF'
      'set'
      '  PCODEMP = :PCODEMP,'
      '  PUF = :PUF,'
      '  PNOM = :PNOM,'
      '  PORG = :PORG,'
      '  PDEP = :PDEP,'
      '  PEND = :PEND,'
      '  PCID = :PCID,'
      '  PBAN = :PBAN,'
      '  PCUF = :PCUF,'
      '  PIESUB = :PIESUB,'
      '  PICMSC = :PICMSC,'
      '  PICMSD = :PICMSD,'
      '  PIVAINA = :PIVAINA,'
      '  PIVANEG = :PIVANEG,'
      '  PIVAPOS = :PIVAPOS,'
      '  PREDUTRA = :PREDUTRA,'
      '  PREDUTRB = :PREDUTRB,'
      '  PREDUTNA = :PREDUTNA,'
      '  PREDUTNB = :PREDUTNB,'
      '  PREPAS = :PREPAS,'
      '  PBICMS = :PBICMS,'
      '  PLIMINA1 = :PLIMINA1,'
      '  PLIMINA2 = :PLIMINA2,'
      '  PSEPTAB = :PSEPTAB,'
      '  PTIPCAL = :PTIPCAL,'
      '  PTIPOPC = :PTIPOPC,'
      '  PTIPOPCO = :PTIPOPCO,'
      '  PALISSQN = :PALISSQN,'
      '  PCOMIS = :PCOMIS,'
      '  PICMSA = :PICMSA,'
      '  PICMSB = :PICMSB,'
      '  PSTATUS = :PSTATUS,'
      '  PCODUSR = :PCODUSR,'
      '  PDTALT = :PDTALT,'
      '  PHRALT = :PHRALT,'
      '  PCALCRET = :PCALCRET,'
      '  PCFOSER = :PCFOSER,'
      '  PICMSNOR = :PICMSNOR,'
      '  PICMSFRETE = :PICMSFRETE,'
      '  PICMSIPI = :PICMSIPI,'
      '  PICMSSEGURO = :PICMSSEGURO,'
      '  PICMSOUTDESP = :PICMSOUTDESP,'
      '  PCIMP_SER = :PCIMP_SER,'
      '  PREDUTRC = :PREDUTRC,'
      '  PREDUTRD = :PREDUTRD,'
      '  PREDUTRE = :PREDUTRE,'
      '  PREDUTRF = :PREDUTRF,'
      '  PREDUTRG = :PREDUTRG,'
      '  PREDUTRH = :PREDUTRH,'
      '  PREDUTRI = :PREDUTRI,'
      '  PREDUTNC = :PREDUTNC,'
      '  PREDUTND = :PREDUTND,'
      '  PREDUTNE = :PREDUTNE,'
      '  PREDUTNF = :PREDUTNF,'
      '  PREDUTNG = :PREDUTNG,'
      '  PREDUTNH = :PREDUTNH,'
      '  PREDUTNI = :PREDUTNI,'
      '  PICMSNC = :PICMSNC,'
      '  PICMSND = :PICMSND,'
      '  PICMSNE = :PICMSNE,'
      '  PICMSNF = :PICMSNF,'
      '  PICMSNG = :PICMSNG,'
      '  PICMSNH = :PICMSNH,'
      '  PICMSNI = :PICMSNI,'
      '  PCFOSER_DEV = :PCFOSER_DEV,'
      '  PCODUF_IBGE = :PCODUF_IBGE,'
      '  PCODREG_IBGE = :PCODREG_IBGE,'
      '  PICMSC_SN = :PICMSC_SN,'
      '  PICMSD_SN = :PICMSD_SN,'
      '  PIVAINA_SN = :PIVAINA_SN,'
      '  PIVANEG_SN = :PIVANEG_SN,'
      '  PIVAPOS_SN = :PIVAPOS_SN,'
      '  PREDUTRA_SN = :PREDUTRA_SN,'
      '  PREDUTRB_SN = :PREDUTRB_SN,'
      '  PREDUTRC_SN = :PREDUTRC_SN,'
      '  PREDUTRD_SN = :PREDUTRD_SN,'
      '  PREDUTRE_SN = :PREDUTRE_SN,'
      '  PREDUTRF_SN = :PREDUTRF_SN,'
      '  PREDUTRG_SN = :PREDUTRG_SN,'
      '  PREDUTRH_SN = :PREDUTRH_SN,'
      '  PREDUTRI_SN = :PREDUTRI_SN,'
      '  PALIQ_CBA = :PALIQ_CBA,'
      '  PALIQ_CBB = :PALIQ_CBB,'
      '  PALIQ_CBC = :PALIQ_CBC,'
      '  PALIQ_CBD = :PALIQ_CBD,'
      '  PALIQ_CBE = :PALIQ_CBE,'
      '  PALIQ_CBF = :PALIQ_CBF,'
      '  PALIQ_CBG = :PALIQ_CBG,'
      '  PALIQ_CBH = :PALIQ_CBH,'
      '  PALIQ_CBI = :PALIQ_CBI,'
      '  PICMSPART_CRED = :PICMSPART_CRED,'
      '  PICMSPART_DEB = :PICMSPART_DEB,'
      '  PREDUTNA_CF = :PREDUTNA_CF,'
      '  PREDUTNB_CF = :PREDUTNB_CF,'
      '  PREDUTNC_CF = :PREDUTNC_CF,'
      '  PREDUTND_CF = :PREDUTND_CF,'
      '  PREDUTNE_CF = :PREDUTNE_CF,'
      '  PREDUTNF_CF = :PREDUTNF_CF,'
      '  PREDUTNG_CF = :PREDUTNG_CF,'
      '  PREDUTNH_CF = :PREDUTNH_CF,'
      '  PREDUTNI_CF = :PREDUTNI_CF,'
      '  PREDICMSNOR_BC_PISCOFINS=:PREDICMSNOR_BC_PISCOFINS,'
      '  PGERARDIFAL =:PGERARDIFAL'
      ''
      'where'
      '  PCODEMP = :OLD_PCODEMP and'
      '  PUF = :OLD_PUF')
    InsertSQL.Strings = (
      'insert into CADUF'
      
        '  (PCODEMP, PUF, PNOM, PORG, PDEP, PEND, PCID, PBAN, PCUF, PIESU' +
        'B, '
      'PICMSC, '
      
        '   PICMSD, PIVAINA, PIVANEG, PIVAPOS, PREDUTRA, PREDUTRB, PREDUT' +
        'NA, '
      'PREDUTNB, '
      
        '   PREPAS, PBICMS, PLIMINA1, PLIMINA2, PSEPTAB, PTIPCAL, PTIPOPC' +
        ', '
      'PTIPOPCO, '
      '   PALISSQN, PCOMIS, PICMSA, PICMSB, PSTATUS, PCODUSR, PDTALT, '
      'PHRALT, '
      
        '   PCALCRET, PCFOSER, PICMSNOR, PICMSFRETE, PICMSIPI, PICMSSEGUR' +
        'O, '
      'PICMSOUTDESP, '
      '   PCIMP_SER, PREDUTRC, PREDUTRD, PREDUTRE, PREDUTRF, PREDUTRG, '
      'PREDUTRH, '
      '   PREDUTRI, PREDUTNC, PREDUTND, PREDUTNE, PREDUTNF, PREDUTNG, '
      'PREDUTNH, '
      
        '   PREDUTNI, PICMSNC, PICMSND, PICMSNE, PICMSNF, PICMSNG, PICMSN' +
        'H, '
      'PICMSNI, '
      
        '   PCFOSER_DEV, PCODUF_IBGE, PCODREG_IBGE, PICMSC_SN, PICMSD_SN,' +
        ' '
      'PIVAINA_SN, '
      '   PIVANEG_SN, PIVAPOS_SN, PREDUTRA_SN, PREDUTRB_SN, '
      'PREDUTRC_SN, PREDUTRD_SN, '
      '   PREDUTRE_SN, PREDUTRF_SN, PREDUTRG_SN, PREDUTRH_SN, '
      'PREDUTRI_SN, PALIQ_CBA, '
      
        '   PALIQ_CBB, PALIQ_CBC, PALIQ_CBD, PALIQ_CBE, PALIQ_CBF, PALIQ_' +
        'CBG, '
      'PALIQ_CBH, '
      '   PALIQ_CBI, PICMSPART_CRED, PICMSPART_DEB, PREDUTNA_CF, '
      'PREDUTNB_CF, '
      '   PREDUTNC_CF, PREDUTND_CF, PREDUTNE_CF, PREDUTNF_CF, '
      'PREDUTNG_CF, PREDUTNH_CF, '
      '   PREDUTNI_CF'
      '   ,   PREDICMSNOR_BC_PISCOFINS'
      '   ,PGERARDIFAL'
      '   )'
      'values'
      
        '  (:PCODEMP, :PUF, :PNOM, :PORG, :PDEP, :PEND, :PCID, :PBAN, :PC' +
        'UF, '
      ':PIESUB, '
      
        '   :PICMSC, :PICMSD, :PIVAINA, :PIVANEG, :PIVAPOS, :PREDUTRA, :P' +
        'REDUTRB, '
      
        '   :PREDUTNA, :PREDUTNB, :PREPAS, :PBICMS, :PLIMINA1, :PLIMINA2,' +
        ' '
      ':PSEPTAB, '
      
        '   :PTIPCAL, :PTIPOPC, :PTIPOPCO, :PALISSQN, :PCOMIS, :PICMSA, :' +
        'PICMSB, '
      '   :PSTATUS, :PCODUSR, :PDTALT, :PHRALT, :PCALCRET, :PCFOSER, '
      ':PICMSNOR, '
      
        '   :PICMSFRETE, :PICMSIPI, :PICMSSEGURO, :PICMSOUTDESP, :PCIMP_S' +
        'ER, '
      ':PREDUTRC, '
      '   :PREDUTRD, :PREDUTRE, :PREDUTRF, :PREDUTRG, :PREDUTRH, '
      ':PREDUTRI, :PREDUTNC, '
      '   :PREDUTND, :PREDUTNE, :PREDUTNF, :PREDUTNG, :PREDUTNH, '
      ':PREDUTNI, :PICMSNC, '
      '   :PICMSND, :PICMSNE, :PICMSNF, :PICMSNG, :PICMSNH, :PICMSNI, '
      ':PCFOSER_DEV, '
      
        '   :PCODUF_IBGE, :PCODREG_IBGE, :PICMSC_SN, :PICMSD_SN, :PIVAINA' +
        '_SN, '
      ':PIVANEG_SN, '
      '   :PIVAPOS_SN, :PREDUTRA_SN, :PREDUTRB_SN, :PREDUTRC_SN, '
      ':PREDUTRD_SN, '
      '   :PREDUTRE_SN, :PREDUTRF_SN, :PREDUTRG_SN, :PREDUTRH_SN, '
      ':PREDUTRI_SN, '
      
        '   :PALIQ_CBA, :PALIQ_CBB, :PALIQ_CBC, :PALIQ_CBD, :PALIQ_CBE, :' +
        'PALIQ_CBF, '
      '   :PALIQ_CBG, :PALIQ_CBH, :PALIQ_CBI, :PICMSPART_CRED, '
      ':PICMSPART_DEB,'
      '   :PREDUTNA_CF, :PREDUTNB_CF, :PREDUTNC_CF, :PREDUTND_CF, '
      ':PREDUTNE_CF, '
      '   :PREDUTNF_CF, :PREDUTNG_CF, :PREDUTNH_CF, :PREDUTNI_CF'
      ''
      ''
      '   ,:PREDICMSNOR_BC_PISCOFINS'
      '   ,:PGERARDIFAL'
      ')')
    DeleteSQL.Strings = (
      'delete from CADUF'
      'where'
      '  PCODEMP = :OLD_PCODEMP and'
      '  PUF = :OLD_PUF')
    Left = 709
    Top = 447
  end
  object U_Ven: TUpdateSQL
    ModifySQL.Strings = (
      'update CADVEN'
      'set'
      '  VCODEMP = :VCODEMP,'
      '  VCODVEN = :VCODVEN,'
      '  VNOME = :VNOME,'
      '  VTPLOG = :VTPLOG,'
      '  VLOG = :VLOG,'
      '  VNUM = :VNUM,'
      '  VCOMPL = :VCOMPL,'
      '  VBAIRRO = :VBAIRRO,'
      '  VCIDADE = :VCIDADE,'
      '  VUF = :VUF,'
      '  VCODBAI = :VCODBAI,'
      '  VCODLOC = :VCODLOC,'
      '  VCODSUP = :VCODSUP,'
      '  VCEP = :VCEP,'
      '  VCELULAR = :VCELULAR,'
      '  VFONERES = :VFONERES,'
      '  VFONECOM = :VFONECOM,'
      '  VDTCAD = :VDTCAD,'
      '  VRG = :VRG,'
      '  VCPF = :VCPF,'
      '  VPONTOR = :VPONTOR,'
      '  VREFP01 = :VREFP01,'
      '  VFREFP1 = :VFREFP1,'
      '  VREFP02 = :VREFP02,'
      '  VFREFP2 = :VFREFP2,'
      '  VREFP03 = :VREFP03,'
      '  VFREFP3 = :VFREFP3,'
      '  VREFB01 = :VREFB01,'
      '  VFREFB1 = :VFREFB1,'
      '  VREFB02 = :VREFB02,'
      '  VFREFB2 = :VFREFB2,'
      '  VREFB03 = :VREFB03,'
      '  VFREFB3 = :VFREFB3,'
      '  VREFC01 = :VREFC01,'
      '  VFREFC1 = :VFREFC1,'
      '  VREFC02 = :VREFC02,'
      '  VFREFC2 = :VFREFC2,'
      '  VREFC03 = :VREFC03,'
      '  VFREFC3 = :VFREFC3,'
      '  VOBS = :VOBS,'
      '  VSTATUS = :VSTATUS,'
      '  VCOMIS = :VCOMIS,'
      '  VEMAIL = :VEMAIL,'
      '  VCODREG = :VCODREG,'
      '  VDM_PCOEXTRA = :VDM_PCOEXTRA,'
      '  VDM_DESCMAXITEM = :VDM_DESCMAXITEM,'
      '  VDM_ACREMAXITEM = :VDM_ACREMAXITEM,'
      '  VCODUSR_INC = :VCODUSR_INC,'
      '  VDATHOR_ALT = :VDATHOR_ALT,'
      '  VCODUSR_ALT = :VCODUSR_ALT,'
      '  VPEDELE_SENHA = :VPEDELE_SENHA,'
      '  VPEDELE_AJUSTE_PRECO = :VPEDELE_AJUSTE_PRECO,'
      '  VPEDELE_PRECO_PADRAO = :VPEDELE_PRECO_PADRAO,'
      '  VPEDELE_BLOQUEIO = :VPEDELE_BLOQUEIO,'
      '  VPEDELE_MOT_BLOQUEIO = :VPEDELE_MOT_BLOQUEIO,'
      '  VFCIA_POPULAR_SENHA = :VFCIA_POPULAR_SENHA,'
      '  VFCIA_POPULAR_USUARIO = :VFCIA_POPULAR_USUARIO'
      '  ,VGERENTE = :VGERENTE'
      '  ,VSUPERVISOR = :VSUPERVISOR'
      ''
      'where'
      '  VCODEMP = :OLD_VCODEMP and'
      '  VCODVEN = :OLD_VCODVEN')
    InsertSQL.Strings = (
      'insert into CADVEN'
      
        '  (VCODEMP, VCODVEN, VNOME, VTPLOG, VLOG, VNUM, VCOMPL, VBAIRRO,' +
        ' '
      'VCIDADE, '
      '   VUF, VCODBAI, VCODLOC, VCODSUP, VCEP, VCELULAR, VFONERES, '
      'VFONECOM, '
      
        '   VDTCAD, VRG, VCPF, VPONTOR, VREFP01, VFREFP1, VREFP02, VFREFP' +
        '2, '
      'VREFP03, '
      
        '   VFREFP3, VREFB01, VFREFB1, VREFB02, VFREFB2, VREFB03, VFREFB3' +
        ', '
      'VREFC01, '
      
        '   VFREFC1, VREFC02, VFREFC2, VREFC03, VFREFC3, VOBS, VSTATUS, V' +
        'COMIS, '
      '   VEMAIL, VCODREG, VDM_PCOEXTRA, VDM_DESCMAXITEM, '
      'VDM_ACREMAXITEM, VCODUSR_INC, '
      '   VDATHOR_ALT, VCODUSR_ALT, VPEDELE_SENHA, '
      'VPEDELE_AJUSTE_PRECO, VPEDELE_PRECO_PADRAO, '
      '   VPEDELE_BLOQUEIO, VPEDELE_MOT_BLOQUEIO, VFCIA_POPULAR_SENHA, '
      'VFCIA_POPULAR_USUARIO'
      ',VGERENTE'
      ',VSUPERVISOR'
      ')'
      'values'
      '  (:VCODEMP, :VCODVEN, :VNOME, :VTPLOG, :VLOG, :VNUM, :VCOMPL, '
      ':VBAIRRO, '
      
        '   :VCIDADE, :VUF, :VCODBAI, :VCODLOC, :VCODSUP, :VCEP, :VCELULA' +
        'R, '
      ':VFONERES, '
      
        '   :VFONECOM, :VDTCAD, :VRG, :VCPF, :VPONTOR, :VREFP01, :VFREFP1' +
        ', '
      ':VREFP02, '
      
        '   :VFREFP2, :VREFP03, :VFREFP3, :VREFB01, :VFREFB1, :VREFB02, :' +
        'VFREFB2, '
      
        '   :VREFB03, :VFREFB3, :VREFC01, :VFREFC1, :VREFC02, :VFREFC2, :' +
        'VREFC03, '
      '   :VFREFC3, :VOBS, :VSTATUS, :VCOMIS, :VEMAIL, :VCODREG, '
      ':VDM_PCOEXTRA, '
      '   :VDM_DESCMAXITEM, :VDM_ACREMAXITEM, :VCODUSR_INC, '
      ':VDATHOR_ALT, :VCODUSR_ALT, '
      
        '   :VPEDELE_SENHA, :VPEDELE_AJUSTE_PRECO, :VPEDELE_PRECO_PADRAO,' +
        ' '
      ':VPEDELE_BLOQUEIO, '
      '   :VPEDELE_MOT_BLOQUEIO, :VFCIA_POPULAR_SENHA,'
      ':VFCIA_POPULAR_USUARIO'
      ',:VGERENTE'
      ',:VSUPERVISOR'
      ')')
    DeleteSQL.Strings = (
      'delete from CADVEN'
      'where'
      '  VCODEMP = :OLD_VCODEMP and'
      '  VCODVEN = :OLD_VCODVEN')
    Left = 715
    Top = 488
  end
  object U_PV2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPV2'
      'set'
      '  PV2CODEMP = :PV2CODEMP,'
      '  PV2CODTIP = :PV2CODTIP,'
      '  PV2CODPV = :PV2CODPV,'
      '  PV2PRAZO = :PV2PRAZO'
      'where'
      '  PV2CODEMP = :OLD_PV2CODEMP and'
      '  PV2CODTIP = :OLD_PV2CODTIP and'
      '  PV2CODPV = :OLD_PV2CODPV and'
      '  PV2PRAZO = :OLD_PV2PRAZO')
    InsertSQL.Strings = (
      'insert into CADPV2'
      '  (PV2CODEMP, PV2CODTIP, PV2CODPV, PV2PRAZO)'
      'values'
      '  (:PV2CODEMP, :PV2CODTIP, :PV2CODPV, :PV2PRAZO)')
    DeleteSQL.Strings = (
      'delete from CADPV2'
      'where'
      '  PV2CODEMP = :OLD_PV2CODEMP and'
      '  PV2CODTIP = :OLD_PV2CODTIP and'
      '  PV2CODPV = :OLD_PV2CODPV and'
      '  PV2PRAZO = :OLD_PV2PRAZO')
    Left = 617
    Top = 320
  end
  object Src_PV2: TDataSource
    DataSet = Tb_PV2
    Left = 644
    Top = 318
  end
  object Tb_PV2: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Pv2AfterInsert
    BeforePost = Tb_Pv2BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPV2 where PV2CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PV2
    Left = 589
    Top = 321
    object Tb_PV2PV2CODEMP: TFloatField
      FieldName = 'PV2CODEMP'
      Origin = 'SG_ASSOC.CADPV2.PV2CODEMP'
    end
    object Tb_PV2PV2CODTIP: TStringField
      FieldName = 'PV2CODTIP'
      Origin = 'SG_ASSOC.CADPV2.PV2CODTIP'
      Size = 2
    end
    object Tb_PV2PV2CODPV: TFloatField
      FieldName = 'PV2CODPV'
      Origin = 'SG_ASSOC.CADPV2.PV2CODPV'
    end
    object Tb_PV2PV2PRAZO: TFloatField
      FieldName = 'PV2PRAZO'
      Origin = 'SG_ASSOC.CADPV2.PV2PRAZO'
    end
    object Tb_PV2PV2PORC: TFloatField
      FieldName = 'PV2PORC'
      Origin = 'SG_ASSOC.CADPV2.PV2PORC'
    end
  end
  object Query3: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 8
    Top = 182
  end
  object Query4: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 10
    Top = 227
  end
  object Query5: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 11
    Top = 267
  end
  object Tb_ECF_FP: TQuery
    CachedUpdates = True
    AfterInsert = Tb_ECF_FPAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADECF_FP')
    UpdateObject = U_ECF_FP
    Left = 260
    Top = 54
    object Tb_ECF_FPFPECODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'FPECODEMP'
      Origin = 'SG_ASSOC.CADECF_FP.FPECODEMP'
    end
    object Tb_ECF_FPFPECODECF: TFloatField
      DisplayLabel = 'Impressora'
      FieldName = 'FPECODECF'
      Origin = 'SG_ASSOC.CADECF_FP.FPECODECF'
    end
    object Tb_ECF_FPFPECODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FPECODIGO'
      Origin = 'SG_ASSOC.CADECF_FP.FPECODIGO'
    end
    object Tb_ECF_FPFPEFORMA: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'FPEFORMA'
      Origin = 'SG_ASSOC.CADECF_FP.FPEFORMA'
      Size = 16
    end
    object Tb_ECF_FPFPEVINCULO: TStringField
      DisplayLabel = 'V'#237'nculo'
      FieldName = 'FPEVINCULO'
      Origin = 'SG_ASSOC.CADECF_FP.FPEVINCULO'
      Size = 16
    end
    object Tb_ECF_FPFPEVINC: TFloatField
      FieldName = 'FPEVINC'
      Origin = 'SG_ASSOC.CADECF_FP.FPEVINC'
    end
  end
  object U_ECF_FP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADECF_FP'
      'set'
      '  FPECODEMP = :FPECODEMP,'
      '  FPECODECF = :FPECODECF,'
      '  FPECODIGO = :FPECODIGO,'
      '  FPEFORMA = :FPEFORMA,'
      '  FPEVINCULO = :FPEVINCULO,'
      '  FPEVINC = :FPEVINC'
      'where'
      '  FPECODEMP = :OLD_FPECODEMP and'
      '  FPECODECF = :OLD_FPECODECF and'
      '  FPECODIGO = :OLD_FPECODIGO')
    InsertSQL.Strings = (
      'insert into CADECF_FP'
      
        '  (FPECODEMP, FPECODECF, FPECODIGO, FPEFORMA, FPEVINCULO, FPEVIN' +
        'C)'
      'values'
      '  (:FPECODEMP, :FPECODECF, :FPECODIGO, :FPEFORMA, :FPEVINCULO, '
      ':FPEVINC)')
    DeleteSQL.Strings = (
      'delete from CADECF_FP'
      'where'
      '  FPECODEMP = :OLD_FPECODEMP and'
      '  FPECODECF = :OLD_FPECODECF and'
      '  FPECODIGO = :OLD_FPECODIGO')
    Left = 296
    Top = 54
  end
  object Src_ECF_FP: TDataSource
    DataSet = Tb_ECF_FP
    Left = 488
    Top = 7
  end
  object Tb_PNF: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPNF where PNCODEMP is null')
    UpdateObject = U_PNF
    Left = 595
    Top = 146
    object Tb_PNFPNCODEMP: TFloatField
      FieldName = 'PNCODEMP'
      Origin = 'SG_ASSOC.CADPNF.PNCODEMP'
    end
    object Tb_PNFPNCHAVE: TFloatField
      FieldName = 'PNCHAVE'
      Origin = 'SG_ASSOC.CADPNF.PNCHAVE'
    end
    object Tb_PNFPNORDEM: TFloatField
      FieldName = 'PNORDEM'
      Origin = 'SG_ASSOC.CADPNF.PNORDEM'
    end
    object Tb_PNFPNLINHA: TFloatField
      FieldName = 'PNLINHA'
      Origin = 'SG_ASSOC.CADPNF.PNLINHA'
    end
    object Tb_PNFPNOBS: TStringField
      FieldName = 'PNOBS'
      Origin = 'SG_ASSOC.CADPNF.PNOBS'
      Size = 60
    end
  end
  object U_PNF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPNF'
      'set'
      '  PNCODEMP = :PNCODEMP,'
      '  PNCHAVE = :PNCHAVE,'
      '  PNORDEM = :PNORDEM,'
      '  PNLINHA = :PNLINHA,'
      '  PNOBS = :PNOBS'
      'where'
      '  PNCODEMP = :OLD_PNCODEMP and'
      '  PNCHAVE = :OLD_PNCHAVE and'
      '  PNORDEM = :OLD_PNORDEM and'
      '  PNLINHA = :OLD_PNLINHA')
    InsertSQL.Strings = (
      'insert into CADPNF'
      '  (PNCODEMP, PNCHAVE, PNORDEM, PNLINHA, PNOBS)'
      'values'
      '  (:PNCODEMP, :PNCHAVE, :PNORDEM, :PNLINHA, :PNOBS)')
    DeleteSQL.Strings = (
      'delete from CADPNF'
      'where'
      '  PNCODEMP = :OLD_PNCODEMP and'
      '  PNCHAVE = :OLD_PNCHAVE and'
      '  PNORDEM = :OLD_PNORDEM and'
      '  PNLINHA = :OLD_PNLINHA')
    Left = 627
    Top = 147
  end
  object Src_PNF: TDataSource
    DataSet = Tb_PNF
    Left = 659
    Top = 147
  end
  object Tb_Min2: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMIN2 where'
      'CM2CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Min2
    Left = 376
    Top = 446
    object Tb_Min2CM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODEMP'
    end
    object Tb_Min2CM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODMIN'
    end
    object Tb_Min2CM2SEQ: TFloatField
      FieldName = 'CM2SEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2SEQ'
    end
    object Tb_Min2CM2TIPO: TStringField
      FieldName = 'CM2TIPO'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPO'
      Size = 2
    end
    object Tb_Min2CM2NUMERO: TFloatField
      FieldName = 'CM2NUMERO'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMERO'
    end
    object Tb_Min2CM2VALOR: TFloatField
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALOR'
    end
    object Tb_Min2CM2DTCONF: TDateTimeField
      FieldName = 'CM2DTCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DTCONF'
    end
    object Tb_Min2CM2USRCONF: TFloatField
      FieldName = 'CM2USRCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2USRCONF'
    end
    object Tb_Min2CM2CLIFOR: TStringField
      FieldName = 'CM2CLIFOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2CLIFOR'
      Size = 2
    end
    object Tb_Min2CM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODIGO'
    end
    object Tb_Min2CM2TIPDOC: TStringField
      FieldName = 'CM2TIPDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPDOC'
      Size = 2
    end
    object Tb_Min2CM2NUMDOC: TFloatField
      FieldName = 'CM2NUMDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMDOC'
    end
    object Tb_Min2CM2OBS01: TStringField
      FieldName = 'CM2OBS01'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS01'
      Size = 60
    end
    object Tb_Min2CM2OBS02: TStringField
      FieldName = 'CM2OBS02'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS02'
      Size = 60
    end
    object Tb_Min2CM2OBS03: TStringField
      FieldName = 'CM2OBS03'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS03'
      Size = 60
    end
    object Tb_Min2CM2LOTSEQ: TFloatField
      FieldName = 'CM2LOTSEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ'
    end
    object Tb_Min2CM2LOTSEQ_CP: TFloatField
      FieldName = 'CM2LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ_CP'
    end
    object Tb_Min2CM2QTDVOL: TFloatField
      FieldName = 'CM2QTDVOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDVOL'
    end
    object Tb_Min2CM2PESOB: TFloatField
      FieldName = 'CM2PESOB'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOB'
    end
    object Tb_Min2CM2PESOL: TFloatField
      FieldName = 'CM2PESOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOL'
    end
    object Tb_Min2CM2PED_CODEMP: TFloatField
      FieldName = 'CM2PED_CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2PED_CODEMP'
    end
    object Tb_Min2CM2QTDITENS: TFloatField
      FieldName = 'CM2QTDITENS'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDITENS'
    end
    object Tb_Min2CM2QTDUND: TFloatField
      FieldName = 'CM2QTDUND'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDUND'
    end
    object Tb_Min2CM2TIPOPED: TFloatField
      FieldName = 'CM2TIPOPED'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPOPED'
    end
    object Tb_Min2CM2CODCLI: TFloatField
      FieldName = 'CM2CODCLI'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODCLI'
    end
    object Tb_Min2CM2VALFRE: TFloatField
      FieldName = 'CM2VALFRE'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALFRE'
    end
    object Tb_Min2CM2QTDPAG: TFloatField
      FieldName = 'CM2QTDPAG'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDPAG'
    end
    object Tb_Min2CM2DATANF: TDateTimeField
      FieldName = 'CM2DATANF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DATANF'
    end
    object Tb_Min2CM2CODBCO: TFloatField
      FieldName = 'CM2CODBCO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODBCO'
    end
    object Tb_Min2CM2QTDTIT: TFloatField
      FieldName = 'CM2QTDTIT'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDTIT'
    end
  end
  object U_Min2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMIN2'
      'set'
      '  CM2CODEMP = :CM2CODEMP,'
      '  CM2LOTSEQ = :CM2LOTSEQ,'
      '  CM2CODMIN = :CM2CODMIN,'
      '  CM2SEQ = :CM2SEQ,'
      '  CM2TIPO = :CM2TIPO,'
      '  CM2LOTSEQ_CP = :CM2LOTSEQ_CP,'
      '  CM2NUMERO = :CM2NUMERO,'
      '  CM2CLIFOR = :CM2CLIFOR,'
      '  CM2CODIGO = :CM2CODIGO,'
      '  CM2TIPDOC = :CM2TIPDOC,'
      '  CM2NUMDOC = :CM2NUMDOC,'
      '  CM2VALOR = :CM2VALOR,'
      '  CM2OBS01 = :CM2OBS01,'
      '  CM2OBS02 = :CM2OBS02,'
      '  CM2OBS03 = :CM2OBS03,'
      '  CM2DTCONF = :CM2DTCONF,'
      '  CM2USRCONF = :CM2USRCONF,'
      '  CM2QTDVOL = :CM2QTDVOL,'
      '  CM2PESOB = :CM2PESOB,'
      '  CM2PESOL = :CM2PESOL,'
      '  CM2PED_CODEMP = :CM2PED_CODEMP,'
      '  CM2QTDITENS = :CM2QTDITENS,'
      '  CM2QTDUND = :CM2QTDUND,'
      '  CM2TIPOPED = :CM2TIPOPED,'
      '  CM2CODCLI = :CM2CODCLI,'
      '  CM2VALFRE = :CM2VALFRE,'
      '  CM2QTDPAG = :CM2QTDPAG,'
      '  CM2DATANF = :CM2DATANF,'
      '  CM2CODBCO = :CM2CODBCO,'
      '  CM2QTDTIT = :CM2QTDTIT'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2LOTSEQ = :OLD_CM2LOTSEQ and'
      '  CM2CODMIN = :OLD_CM2CODMIN and'
      '  CM2SEQ = :OLD_CM2SEQ')
    InsertSQL.Strings = (
      'insert into CADMIN2'
      '  (CM2CODEMP, CM2LOTSEQ, CM2CODMIN, CM2SEQ, CM2TIPO, '
      'CM2LOTSEQ_CP, CM2NUMERO, '
      '   CM2CLIFOR, CM2CODIGO, CM2TIPDOC, CM2NUMDOC, CM2VALOR, '
      'CM2OBS01, CM2OBS02, '
      '   CM2OBS03, CM2DTCONF, CM2USRCONF, CM2QTDVOL, CM2PESOB, '
      'CM2PESOL, CM2PED_CODEMP, '
      '   CM2QTDITENS, CM2QTDUND, CM2TIPOPED, CM2CODCLI, CM2VALFRE, '
      'CM2QTDPAG, '
      '   CM2DATANF, CM2CODBCO, CM2QTDTIT)'
      'values'
      '  (:CM2CODEMP, :CM2LOTSEQ, :CM2CODMIN, :CM2SEQ, :CM2TIPO, '
      ':CM2LOTSEQ_CP, '
      '   :CM2NUMERO, :CM2CLIFOR, :CM2CODIGO, :CM2TIPDOC, :CM2NUMDOC, '
      ':CM2VALOR, '
      '   :CM2OBS01, :CM2OBS02, :CM2OBS03, :CM2DTCONF, :CM2USRCONF, '
      ':CM2QTDVOL, '
      
        '   :CM2PESOB, :CM2PESOL, :CM2PED_CODEMP, :CM2QTDITENS, :CM2QTDUN' +
        'D, '
      ':CM2TIPOPED, '
      '   :CM2CODCLI, :CM2VALFRE, :CM2QTDPAG, :CM2DATANF, :CM2CODBCO, '
      ':CM2QTDTIT)')
    DeleteSQL.Strings = (
      'delete from CADMIN2'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2LOTSEQ = :OLD_CM2LOTSEQ and'
      '  CM2CODMIN = :OLD_CM2CODMIN and'
      '  CM2SEQ = :OLD_CM2SEQ')
    Left = 407
    Top = 447
  end
  object Src_Min2: TDataSource
    DataSet = Tb_Min2
    Left = 433
    Top = 446
  end
  object Src_Min1: TDataSource
    DataSet = Tb_Min1
    Left = 433
    Top = 493
  end
  object U_Min1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMIN1'
      'set'
      '  CM1CODEMP = :CM1CODEMP,'
      '  CM1LOTSEQ = :CM1LOTSEQ,'
      '  CM1CODMIN = :CM1CODMIN,'
      '  CM1CODTRA = :CM1CODTRA,'
      '  M1NOMEENT = :M1NOMEENT,'
      '  CM1RG = :CM1RG,'
      '  CM1TOTAL = :CM1TOTAL,'
      '  CM1DATA = :CM1DATA,'
      '  CM1CNPF = :CM1CNPF,'
      '  CM1USRINC = :CM1USRINC,'
      '  CM1USRALT = :CM1USRALT,'
      '  CM1INCDTHORA = :CM1INCDTHORA,'
      '  CM1ALTDTHORA = :CM1ALTDTHORA'
      ''
      '  ,CM1VEICULO = :CM1VEICULO'
      ',CM1VEICULO_PLACA = :CM1VEICULO_PLACA'
      ',CM1DATHOR_SAIDA = :CM1DATHOR_SAIDA'
      ',CM1KM_SAIDA = :CM1KM_SAIDA'
      ',CM1DATHOR_CHEGADA = :CM1DATHOR_CHEGADA'
      ',CM1KM_CHEGADA = :CM1KM_CHEGADA'
      ''
      ',CM1TEMPAMB = :CM1TEMPAMB'
      ',CM1VEICULO_COND_LIMPEZA = :CM1VEICULO_COND_LIMPEZA'
      ',CM1RECIPIENTE_LACRADOS  = :CM1RECIPIENTE_LACRADOS'
      ',CM1DADOS_PROD_CONDIZ_NF = :CM1DADOS_PROD_CONDIZ_NF'
      ',CM1RECIPIENTE_NAO_IDENT = :CM1RECIPIENTE_NAO_IDENT'
      ',CM1RECIPIENTE_DANIFICADO = :CM1RECIPIENTE_DANIFICADO'
      ',CM1NUMSERIE = :CM1NUMSERIE'
      ',CM1TEMP = :CM1TEMP'
      ''
      'where'
      '  CM1CODEMP = :OLD_CM1CODEMP and'
      '  CM1LOTSEQ = :OLD_CM1LOTSEQ and'
      '  CM1CODMIN = :OLD_CM1CODMIN')
    InsertSQL.Strings = (
      'insert into CADMIN1'
      '  (CM1CODEMP, CM1LOTSEQ, CM1CODMIN, CM1CODTRA, M1NOMEENT, '
      'CM1RG, CM1TOTAL, '
      '   CM1DATA, CM1CNPF, CM1USRINC, CM1USRALT, CM1INCDTHORA, '
      'CM1ALTDTHORA'
      ',CM1VEICULO'
      ',CM1VEICULO_PLACA'
      ',CM1DATHOR_SAIDA'
      ',CM1KM_SAIDA'
      ',CM1DATHOR_CHEGADA'
      ',CM1KM_CHEGADA'
      ',CM1TEMPAMB'
      ',CM1VEICULO_COND_LIMPEZA'
      ',CM1RECIPIENTE_LACRADOS'
      ',CM1DADOS_PROD_CONDIZ_NF'
      ',CM1RECIPIENTE_NAO_IDENT'
      ',CM1RECIPIENTE_DANIFICADO'
      ',CM1NUMSERIE'
      ',CM1TEMP'
      ''
      ''
      ''
      ')'
      'values'
      '  (:CM1CODEMP, :CM1LOTSEQ, :CM1CODMIN, :CM1CODTRA, :M1NOMEENT,'
      ':CM1RG,'
      '   :CM1TOTAL, :CM1DATA, :CM1CNPF, :CM1USRINC, :CM1USRALT,'
      ':CM1INCDTHORA,'
      '   :CM1ALTDTHORA'
      ',:CM1VEICULO'
      ',:CM1VEICULO_PLACA'
      ',:CM1DATHOR_SAIDA'
      ',:CM1KM_SAIDA'
      ',:CM1DATHOR_CHEGADA'
      ',:CM1KM_CHEGADA'
      ',:CM1TEMPAMB'
      ',:CM1VEICULO_COND_LIMPEZA'
      ',:CM1RECIPIENTE_LACRADOS'
      ',:CM1DADOS_PROD_CONDIZ_NF'
      ',:CM1RECIPIENTE_NAO_IDENT'
      ',:CM1RECIPIENTE_DANIFICADO'
      ',:CM1NUMSERIE'
      ',:CM1TEMP'
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADMIN1'
      'where'
      '  CM1CODEMP = :OLD_CM1CODEMP and'
      '  CM1LOTSEQ = :OLD_CM1LOTSEQ and'
      '  CM1CODMIN = :OLD_CM1CODMIN')
    Left = 408
    Top = 495
  end
  object Tb_Min1: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Min1BeforeInsert
    BeforePost = Tb_Min1BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADMIN1 where'
      'CM1CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Min1
    Left = 375
    Top = 493
    object Tb_Min1CM1CODEMP: TFloatField
      FieldName = 'CM1CODEMP'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODEMP'
    end
    object Tb_Min1CM1LOTSEQ: TFloatField
      FieldName = 'CM1LOTSEQ'
      Origin = 'SG_ASSOC.CADMIN1.CM1LOTSEQ'
    end
    object Tb_Min1CM1CODMIN: TFloatField
      FieldName = 'CM1CODMIN'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODMIN'
    end
    object Tb_Min1CM1CODTRA: TFloatField
      FieldName = 'CM1CODTRA'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODTRA'
    end
    object Tb_Min1M1NOMEENT: TStringField
      FieldName = 'M1NOMEENT'
      Origin = 'SG_ASSOC.CADMIN1.M1NOMEENT'
      Size = 40
    end
    object Tb_Min1CM1RG: TStringField
      FieldName = 'CM1RG'
      Origin = 'SG_ASSOC.CADMIN1.CM1RG'
      Size = 30
    end
    object Tb_Min1CM1TOTAL: TFloatField
      FieldName = 'CM1TOTAL'
      Origin = 'SG_ASSOC.CADMIN1.CM1TOTAL'
    end
    object Tb_Min1CM1DATA: TDateTimeField
      FieldName = 'CM1DATA'
      Origin = 'SG_ASSOC.CADMIN1.CM1DATA'
    end
    object Tb_Min1CM1CNPF: TStringField
      FieldName = 'CM1CNPF'
      Origin = 'SG_ASSOC.CADMIN1.CM1CNPF'
      Size = 30
    end
    object Tb_Min1CM1USRINC: TFloatField
      FieldName = 'CM1USRINC'
      Origin = 'SG_ASSOC.CADMIN1.CM1USRINC'
    end
    object Tb_Min1CM1USRALT: TFloatField
      FieldName = 'CM1USRALT'
      Origin = 'SG_ASSOC.CADMIN1.CM1USRALT'
    end
    object Tb_Min1CM1INCDTHORA: TDateTimeField
      FieldName = 'CM1INCDTHORA'
      Origin = 'SG_ASSOC.CADMIN1.CM1INCDTHORA'
    end
    object Tb_Min1CM1ALTDTHORA: TDateTimeField
      FieldName = 'CM1ALTDTHORA'
      Origin = 'SG_ASSOC.CADMIN1.CM1ALTDTHORA'
    end
    object Tb_Min1CM1VEICULO: TStringField
      FieldName = 'CM1VEICULO'
      Origin = 'SG_ASSOC.CADMIN1.CM1VEICULO'
      Size = 100
    end
    object Tb_Min1CM1VEICULO_PLACA: TStringField
      FieldName = 'CM1VEICULO_PLACA'
      Origin = 'SG_ASSOC.CADMIN1.'
      Size = 10
    end
    object Tb_Min1CM1KM_SAIDA: TFloatField
      FieldName = 'CM1KM_SAIDA'
      Origin = 'SG_ASSOC.CADMIN1.'
    end
    object Tb_Min1CM1KM_CHEGADA: TFloatField
      FieldName = 'CM1KM_CHEGADA'
      Origin = 'SG_ASSOC.CADMIN1.CM1KM_CHEGADA'
    end
    object Tb_Min1CM1DATHOR_SAIDA: TDateTimeField
      FieldName = 'CM1DATHOR_SAIDA'
      Origin = 'SG_ASSOC.CADMIN1.'
    end
    object Tb_Min1CM1DATHOR_CHEGADA: TDateTimeField
      FieldName = 'CM1DATHOR_CHEGADA'
      Origin = 'SG_ASSOC.CADMIN1.'
    end
    object Tb_Min1CM1TEMPAMB: TFloatField
      FieldName = 'CM1TEMPAMB'
      Origin = 'SG_ASSOC.CADMIN1.CM1TEMPAMB'
    end
    object Tb_Min1CM1VEICULO_COND_LIMPEZA: TFloatField
      FieldName = 'CM1VEICULO_COND_LIMPEZA'
      Origin = 'SG_ASSOC.CADMIN1.CM1VEICULO_COND_LIMPEZA'
    end
    object Tb_Min1CM1RECIPIENTE_LACRADOS: TFloatField
      FieldName = 'CM1RECIPIENTE_LACRADOS'
      Origin = 'SG_ASSOC.CADMIN1.CM1RECIPIENTE_LACRADOS'
    end
    object Tb_Min1CM1DADOS_PROD_CONDIZ_NF: TFloatField
      FieldName = 'CM1DADOS_PROD_CONDIZ_NF'
      Origin = 'SG_ASSOC.CADMIN1.CM1DADOS_PROD_CONDIZ_NF'
    end
    object Tb_Min1CM1RECIPIENTE_NAO_IDENT: TFloatField
      FieldName = 'CM1RECIPIENTE_NAO_IDENT'
      Origin = 'SG_ASSOC.CADMIN1.CM1RECIPIENTE_NAO_IDENT'
    end
    object Tb_Min1CM1RECIPIENTE_DANIFICADO: TFloatField
      FieldName = 'CM1RECIPIENTE_DANIFICADO'
      Origin = 'SG_ASSOC.CADMIN1.CM1RECIPIENTE_DANIFICADO'
    end
    object Tb_Min1CM1NUMSERIE: TStringField
      FieldName = 'CM1NUMSERIE'
      Origin = 'SG_ASSOC.CADMIN1.CM1NUMSERIE'
      Size = 50
    end
    object Tb_Min1CM1TEMP: TFloatField
      FieldName = 'CM1TEMP'
      Origin = 'SG_ASSOC.CADMIN1.CM1TEMP'
    end
  end
  object Tb_Pcus: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_PcusBeforeInsert
    AfterInsert = Tb_PcusAfterInsert
    BeforePost = Tb_PcusBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPCUS')
    UpdateObject = U_Pcus
    Left = 482
    Top = 132
    object Tb_PcusPCCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'PCCODIGO'
      Origin = 'SG_ASSOC.CADPCUS.PCCODIGO'
    end
    object Tb_PcusPCNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PCNOME'
      Origin = 'SG_ASSOC.CADPCUS.PCNOME'
      Size = 30
    end
    object Tb_PcusPCAPLS: TFloatField
      DisplayLabel = 'Aplicar Sob 0-P'#231'o.Compra 1-Resultado'
      FieldName = 'PCAPLS'
      Origin = 'SG_ASSOC.CADPCUS.PCAPLS'
    end
    object Tb_PcusPCFATOR: TFloatField
      DisplayLabel = 'Tipo de Fator: 0-Amplia'#231#227'o 1-Dedu'#231'ao'
      FieldName = 'PCFATOR'
      Origin = 'SG_ASSOC.CADPCUS.PCFATOR'
    end
    object Tb_PcusPCOPCIO: TFloatField
      DisplayLabel = 'Tipo Campo 0-Obrigat'#243'rio  1-Opcional'
      FieldName = 'PCOPCIO'
      Origin = 'SG_ASSOC.CADPCUS.PCOPCIO'
    end
    object Tb_PcusPFORMULA: TFloatField
      FieldName = 'PFORMULA'
      Origin = 'SG_ASSOC.CADPCUS.PFORMULA'
    end
    object Tb_PcusPTIPO: TFloatField
      FieldName = 'PTIPO'
      Origin = 'SG_ASSOC.CADPCUS.PTIPO'
    end
  end
  object U_Pcus: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPCUS'
      'set'
      '  PCCODIGO = :PCCODIGO,'
      '  PCNOME = :PCNOME,'
      '  PCAPLS = :PCAPLS,'
      '  PCFATOR = :PCFATOR,'
      '  PCOPCIO = :PCOPCIO,'
      '  PFORMULA = :PFORMULA,'
      '  PTIPO = :PTIPO'
      'where'
      '  PCCODIGO = :OLD_PCCODIGO and'
      '  PCNOME = :OLD_PCNOME')
    InsertSQL.Strings = (
      'insert into CADPCUS'
      '  (PCCODIGO, PCNOME, PCAPLS, PCFATOR, PCOPCIO, PFORMULA, PTIPO)'
      'values'
      
        '  (:PCCODIGO, :PCNOME, :PCAPLS, :PCFATOR, :PCOPCIO, :PFORMULA, :' +
        'PTIPO)')
    DeleteSQL.Strings = (
      'delete from CADPCUS'
      'where'
      '  PCCODIGO = :OLD_PCCODIGO and'
      '  PCNOME = :OLD_PCNOME')
    Left = 512
    Top = 132
  end
  object Src_Pcus: TDataSource
    DataSet = Tb_Pcus
    Left = 541
    Top = 133
  end
  object Tb_FP: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_FPBeforeInsert
    AfterInsert = Tb_FPAfterInsert
    BeforePost = Tb_FPBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFP')
    UpdateObject = U_FP
    Left = 263
    Top = 227
    object Tb_FPFPCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FPCODIGO'
      Origin = 'SG_ASSOC.CADFP.FPCODIGO'
    end
    object Tb_FPFPDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.CADFP.FPDESC'
      Size = 15
    end
    object Tb_FPFPTIPO: TFloatField
      DisplayLabel = 'Tipo 0-Cr'#233'dito 1-D'#233'bito'
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.CADFP.FPTIPO'
    end
    object Tb_FPFPNUM: TFloatField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'FPNUM'
      Origin = 'SG_ASSOC.CADFP.FPNUM'
    end
    object Tb_FPFPVINCULO: TFloatField
      FieldName = 'FPVINCULO'
      Origin = 'SG_ASSOC.CADFP.FPVINCULO'
    end
    object Tb_FPFPCODCLI_EMP: TFloatField
      FieldName = 'FPCODCLI_EMP'
      Origin = 'SG_ASSOC.CADFP.FPCODCLI_EMP'
    end
    object Tb_FPFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.CADFP.FPCODCLI'
    end
    object Tb_FPFPPRAZO_FIN: TFloatField
      FieldName = 'FPPRAZO_FIN'
      Origin = 'SG_ASSOC.CADFP.FPPRAZO_FIN'
    end
    object Tb_FPFPORDEM: TFloatField
      FieldName = 'FPORDEM'
      Origin = 'SG_ASSOC.CADFP.FPORDEM'
    end
    object Tb_FPFPCODBCO: TFloatField
      FieldName = 'FPCODBCO'
      Origin = 'SG_ASSOC.CADFP.FPCODBCO'
    end
    object Tb_FPFPCODBCO_PM: TFloatField
      FieldName = 'FPCODBCO_PM'
      Origin = 'SG_ASSOC.CADFP.FPCODBCO_PM'
    end
    object Tb_FPFPDESCMAX: TFloatField
      FieldName = 'FPDESCMAX'
      Origin = 'SG_ASSOC.CADFP.FPDESCMAX'
      DisplayFormat = '#,##0.00'
    end
    object Tb_FPFPDATHOR_INC: TDateTimeField
      FieldName = 'FPDATHOR_INC'
    end
    object Tb_FPFPDATHOR_ALT: TDateTimeField
      FieldName = 'FPDATHOR_ALT'
    end
    object Tb_FPFPBANDEIRA_OPERADORA: TFloatField
      FieldName = 'FPBANDEIRA_OPERADORA'
    end
    object Tb_FPFPVINCULO_TPAG: TFloatField
      FieldName = 'FPVINCULO_TPAG'
    end
  end
  object U_FP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFP'
      'set'
      '  FPCODIGO = :FPCODIGO,'
      '  FPDESC = :FPDESC,'
      '  FPTIPO = :FPTIPO,'
      '  FPNUM = :FPNUM,'
      '  FPVINCULO = :FPVINCULO,'
      '  FPCODCLI_EMP = :FPCODCLI_EMP,'
      '  FPCODCLI = :FPCODCLI,'
      '  FPPRAZO_FIN = :FPPRAZO_FIN,'
      '  FPORDEM = :FPORDEM,'
      '  FPCODBCO = :FPCODBCO,'
      '  FPCODBCO_PM = :FPCODBCO_PM,'
      '  FPDESCMAX = :FPDESCMAX,'
      '  FPDATHOR_INC = :FPDATHOR_INC,'
      '  FPDATHOR_ALT = :FPDATHOR_ALT'
      '  ,FPBANDEIRA_OPERADORA=:FPBANDEIRA_OPERADORA'
      '  ,FPVINCULO_TPAG=:FPVINCULO_TPAG'
      ''
      'where'
      '  FPCODIGO = :OLD_FPCODIGO')
    InsertSQL.Strings = (
      'insert into CADFP'
      '  (FPCODIGO, FPDESC, FPTIPO, FPNUM, FPVINCULO, FPCODCLI_EMP, '
      'FPCODCLI, '
      '   FPPRAZO_FIN, FPORDEM, FPCODBCO, FPCODBCO_PM, FPDESCMAX'
      '   ,FPDATHOR_INC,FPDATHOR_ALT'
      '   ,FPBANDEIRA_OPERADORA'
      '   ,FPVINCULO_TPAG'
      ''
      '   )'
      'values'
      
        '  (:FPCODIGO, :FPDESC, :FPTIPO, :FPNUM, :FPVINCULO, :FPCODCLI_EM' +
        'P,'
      ':FPCODCLI,'
      '   :FPPRAZO_FIN, :FPORDEM, :FPCODBCO, :FPCODBCO_PM, :FPDESCMAX'
      '      ,:FPDATHOR_INC,:FPDATHOR_ALT'
      '      ,:FPBANDEIRA_OPERADORA'
      '      ,:FPVINCULO_TPAG'
      '   )')
    DeleteSQL.Strings = (
      'delete from CADFP'
      'where'
      '  FPCODIGO = :OLD_FPCODIGO')
    Left = 293
    Top = 228
  end
  object Src_FP: TDataSource
    DataSet = Tb_FP
    Left = 323
    Top = 229
  end
  object Tb_Mov: TQuery
    CachedUpdates = True
    BeforePost = Tb_MovBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMOV')
    UpdateObject = U_Mov
    Left = 479
    Top = 6
    object Tb_MovCMCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CMCODEMP'
      Origin = 'SG_ASSOC.CADMOV.CMCODEMP'
    end
    object Tb_MovCMCAIXA: TFloatField
      DisplayLabel = 'C'#243'digo do Caixa'
      FieldName = 'CMCAIXA'
      Origin = 'SG_ASSOC.CADMOV.CMCAIXA'
    end
    object Tb_MovCMLOTE: TFloatField
      DisplayLabel = 'Lote do Caixa'
      FieldName = 'CMLOTE'
      Origin = 'SG_ASSOC.CADMOV.CMLOTE'
    end
    object Tb_MovCMDTABERTURA: TDateTimeField
      DisplayLabel = 'Dt.Abertura'
      FieldName = 'CMDTABERTURA'
      Origin = 'SG_ASSOC.CADMOV.CMDTABERTURA'
    end
    object Tb_MovCMDTENC: TDateTimeField
      DisplayLabel = 'Dt.Encerramento'
      FieldName = 'CMDTENC'
      Origin = 'SG_ASSOC.CADMOV.CMDTENC'
    end
    object Tb_MovCMSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CMSTATUS'
      Origin = 'SG_ASSOC.CADMOV.CMSTATUS'
    end
    object Tb_MovCMDTREABER: TDateTimeField
      DisplayLabel = 'Dt.Reabertura'
      FieldName = 'CMDTREABER'
      Origin = 'SG_ASSOC.CADMOV.CMDTREABER'
    end
    object Tb_MovCMSALDOANT: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'CMSALDOANT'
      Origin = 'SG_ASSOC.CADMOV.CMSALDOANT'
    end
    object Tb_MovCMCREDITO: TFloatField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CMCREDITO'
      Origin = 'SG_ASSOC.CADMOV.CMCREDITO'
    end
    object Tb_MovCMDEBITOS: TFloatField
      DisplayLabel = 'D'#233'bitos'
      FieldName = 'CMDEBITOS'
      Origin = 'SG_ASSOC.CADMOV.CMDEBITOS'
    end
    object Tb_MovCMSALDO: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'CMSALDO'
      Origin = 'SG_ASSOC.CADMOV.CMSALDO'
    end
    object Tb_MovCMCODUSR: TFloatField
      FieldName = 'CMCODUSR'
      Origin = 'SG_ASSOC.CADMOV.CMCODUSR'
    end
    object Tb_MovCMDATINC: TDateTimeField
      FieldName = 'CMDATINC'
      Origin = 'SG_ASSOC.CADMOV.CMDATINC'
    end
    object Tb_MovCMUSRALT: TFloatField
      FieldName = 'CMUSRALT'
      Origin = 'SG_ASSOC.CADMOV.CMUSRALT'
    end
    object Tb_MovCMDATALT: TDateTimeField
      FieldName = 'CMDATALT'
      Origin = 'SG_ASSOC.CADMOV.CMDATALT'
    end
    object Tb_MovCMHORALT: TStringField
      FieldName = 'CMHORALT'
      Origin = 'SG_ASSOC.CADMOV.CMHORALT'
      Size = 10
    end
  end
  object U_Mov: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMOV'
      'set'
      '  CMCODEMP = :CMCODEMP,'
      '  CMCAIXA = :CMCAIXA,'
      '  CMLOTE = :CMLOTE,'
      '  CMDTABERTURA = :CMDTABERTURA,'
      '  CMDTENC = :CMDTENC,'
      '  CMSTATUS = :CMSTATUS,'
      '  CMDTREABER = :CMDTREABER,'
      '  CMSALDOANT = :CMSALDOANT,'
      '  CMCREDITO = :CMCREDITO,'
      '  CMDEBITOS = :CMDEBITOS,'
      '  CMSALDO = :CMSALDO,'
      '  CMCODUSR = :CMCODUSR,'
      '  CMDATINC = :CMDATINC,'
      '  CMUSRALT = :CMUSRALT,'
      '  CMDATALT = :CMDATALT,'
      '  CMHORALT = :CMHORALT'
      'where'
      '  CMCODEMP = :OLD_CMCODEMP and'
      '  CMCAIXA = :OLD_CMCAIXA and'
      '  CMLOTE = :OLD_CMLOTE')
    InsertSQL.Strings = (
      'insert into CADMOV'
      '  (CMCODEMP, CMCAIXA, CMLOTE, CMDTABERTURA, CMDTENC, CMSTATUS, '
      'CMDTREABER, '
      '   CMSALDOANT, CMCREDITO, CMDEBITOS, CMSALDO, CMCODUSR, '
      'CMDATINC, CMUSRALT, '
      '   CMDATALT, CMHORALT)'
      'values'
      '  (:CMCODEMP, :CMCAIXA, :CMLOTE, :CMDTABERTURA, :CMDTENC, '
      ':CMSTATUS, :CMDTREABER, '
      '   :CMSALDOANT, :CMCREDITO, :CMDEBITOS, :CMSALDO, :CMCODUSR, '
      ':CMDATINC, '
      '   :CMUSRALT, :CMDATALT, :CMHORALT)')
    DeleteSQL.Strings = (
      'delete from CADMOV'
      'where'
      '  CMCODEMP = :OLD_CMCODEMP and'
      '  CMCAIXA = :OLD_CMCAIXA and'
      '  CMLOTE = :OLD_CMLOTE')
    Left = 509
    Top = 6
  end
  object Src_Mov: TDataSource
    DataSet = Tb_Mov
    Left = 539
    Top = 6
  end
  object Tb_RSin01: TQuery
    CachedUpdates = True
    AfterInsert = Tb_RSin01AfterInsert
    BeforePost = Tb_RSin01BeforePost
    AfterPost = c
    BeforeDelete = c
    OnCalcFields = Tb_RSin01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRSIN01')
    UpdateObject = U_RSin01
    Left = 590
    Top = 492
    object Tb_RSin01RSCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RSCODEMP'
      Origin = 'SG_ASSOC.CADRSIN01.RSCODEMP'
    end
    object Tb_RSin01RSCODIMP: TFloatField
      DisplayLabel = 'C'#243'digo impressora'
      FieldName = 'RSCODIMP'
      Origin = 'SG_ASSOC.CADRSIN01.RSCODIMP'
    end
    object Tb_RSin01RSDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RSDATA'
      Origin = 'SG_ASSOC.CADRSIN01.RSDATA'
    end
    object Tb_RSin01RSNSERIE: TStringField
      DisplayLabel = 'N'#250'mero S'#233'rie'
      FieldName = 'RSNSERIE'
      Origin = 'SG_ASSOC.CADRSIN01.RSNSERIE'
    end
    object Tb_RSin01RSSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'RSSEQ'
      Origin = 'SG_ASSOC.CADRSIN01.RSSEQ'
    end
    object Tb_RSin01RSCRO: TFloatField
      DisplayLabel = 'Contador Reinicio Opera'#231#227'o'
      FieldName = 'RSCRO'
      Origin = 'SG_ASSOC.CADRSIN01.RSCRO'
    end
    object Tb_RSin01RSCREDZ: TFloatField
      DisplayLabel = 'Contador Red. Z'
      FieldName = 'RSCREDZ'
      Origin = 'SG_ASSOC.CADRSIN01.RSCREDZ'
    end
    object Tb_RSin01RSCOO_FINAL: TFloatField
      DisplayLabel = 'Contador Ordem Opera'#231#227'o Final'
      FieldName = 'RSCOO_FINAL'
      Origin = 'SG_ASSOC.CADRSIN01.RSCOO_FINAL'
    end
    object Tb_RSin01RSCOO_INICIAL: TFloatField
      DisplayLabel = 'Contador Ordem Opera'#231#227'o Inicial'
      FieldName = 'RSCOO_INICIAL'
      Origin = 'SG_ASSOC.CADRSIN01.RSCOO_INICIAL'
    end
    object Tb_RSin01RSCUPCAN: TFloatField
      DisplayLabel = 'Cupons Cancelados'
      FieldName = 'RSCUPCAN'
      Origin = 'SG_ASSOC.CADRSIN01.RSCUPCAN'
    end
    object Tb_RSin01RSACRECUP: TFloatField
      DisplayLabel = 'Acr'#233'scimos em Cupom'
      FieldName = 'RSACRECUP'
      Origin = 'SG_ASSOC.CADRSIN01.RSACRECUP'
    end
    object Tb_RSin01RSDESCUP: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'RSDESCUP'
      Origin = 'SG_ASSOC.CADRSIN01.RSDESCUP'
    end
    object Tb_RSin01RSISSCUP: TFloatField
      DisplayLabel = 'Issqn'
      FieldName = 'RSISSCUP'
      Origin = 'SG_ASSOC.CADRSIN01.RSISSCUP'
    end
    object Tb_RSin01RSISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'RSISENTAS'
      Origin = 'SG_ASSOC.CADRSIN01.RSISENTAS'
    end
    object Tb_RSin01RSNAOINC: TFloatField
      DisplayLabel = 'N'#227'o Incidentes'
      FieldName = 'RSNAOINC'
      Origin = 'SG_ASSOC.CADRSIN01.RSNAOINC'
    end
    object Tb_RSin01RSSUBTRI: TFloatField
      DisplayLabel = 'Substitui'#231#227'o Tribut'#225'ria'
      FieldName = 'RSSUBTRI'
      Origin = 'SG_ASSOC.CADRSIN01.RSSUBTRI'
    end
    object Tb_RSin01RSVDABRUT: TFloatField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'RSVDABRUT'
      Origin = 'SG_ASSOC.CADRSIN01.RSVDABRUT'
    end
    object Tb_RSin01RSVDALIQ: TFloatField
      DisplayLabel = 'Venda L'#237'quida'
      FieldName = 'RSVDALIQ'
      Origin = 'SG_ASSOC.CADRSIN01.RSVDALIQ'
    end
    object Tb_RSin01nomeimp: TStringField
      DisplayLabel = 'Nome da Impressoara'
      FieldKind = fkCalculated
      FieldName = 'nomeimp'
      Size = 40
      Calculated = True
    end
  end
  object U_RSin01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRSIN01'
      'set'
      '  RSCODEMP = :RSCODEMP,'
      '  RSCODIMP = :RSCODIMP,'
      '  RSDATA = :RSDATA,'
      '  RSNSERIE = :RSNSERIE,'
      '  RSSEQ = :RSSEQ,'
      '  RSCRO = :RSCRO,'
      '  RSCREDZ = :RSCREDZ,'
      '  RSCOO_FINAL = :RSCOO_FINAL,'
      '  RSCOO_INICIAL = :RSCOO_INICIAL,'
      '  RSCUPCAN = :RSCUPCAN,'
      '  RSACRECUP = :RSACRECUP,'
      '  RSDESCUP = :RSDESCUP,'
      '  RSISSCUP = :RSISSCUP,'
      '  RSISENTAS = :RSISENTAS,'
      '  RSNAOINC = :RSNAOINC,'
      '  RSSUBTRI = :RSSUBTRI,'
      '  RSVDABRUT = :RSVDABRUT,'
      '  RSVDALIQ = :RSVDALIQ'
      'where'
      '  RSCODEMP = :OLD_RSCODEMP and'
      '  RSCODIMP = :OLD_RSCODIMP and'
      '  RSDATA = :OLD_RSDATA')
    InsertSQL.Strings = (
      'insert into CADRSIN01'
      '  (RSCODEMP, RSCODIMP, RSDATA, RSNSERIE, RSSEQ, RSCRO, RSCREDZ, '
      'RSCOO_FINAL, '
      '   RSCOO_INICIAL, RSCUPCAN, RSACRECUP, RSDESCUP, RSISSCUP, '
      'RSISENTAS, RSNAOINC, '
      '   RSSUBTRI, RSVDABRUT, RSVDALIQ)'
      'values'
      '  (:RSCODEMP, :RSCODIMP, :RSDATA, :RSNSERIE, :RSSEQ, :RSCRO, '
      ':RSCREDZ, '
      
        '   :RSCOO_FINAL, :RSCOO_INICIAL, :RSCUPCAN, :RSACRECUP, :RSDESCU' +
        'P, '
      ':RSISSCUP, '
      '   :RSISENTAS, :RSNAOINC, :RSSUBTRI, :RSVDABRUT, :RSVDALIQ)')
    DeleteSQL.Strings = (
      'delete from CADRSIN01'
      'where'
      '  RSCODEMP = :OLD_RSCODEMP and'
      '  RSCODIMP = :OLD_RSCODIMP and'
      '  RSDATA = :OLD_RSDATA')
    Left = 616
    Top = 492
  end
  object Src_RSin01: TDataSource
    DataSet = Tb_RSin01
    OnDataChange = Src_RSin01DataChange
    Left = 648
    Top = 492
  end
  object Tb_RSin02: TQuery
    CachedUpdates = True
    BeforePost = Tb_RSin02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRSIN02')
    UpdateObject = U_RSin02
    Left = 684
    Top = 12
    object Tb_RSin02RS2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RS2CODEMP'
      Origin = 'SG_ASSOC.CADRSIN02.RS2CODEMP'
    end
    object Tb_RSin02RS2CODIMP: TFloatField
      DisplayLabel = 'C'#243'digo Impressora'
      FieldName = 'RS2CODIMP'
      Origin = 'SG_ASSOC.CADRSIN02.RS2CODIMP'
    end
    object Tb_RSin02RS2DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RS2DATA'
      Origin = 'SG_ASSOC.CADRSIN02.RS2DATA'
    end
    object Tb_RSin02RS2ALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'RS2ALIQ'
      Origin = 'SG_ASSOC.CADRSIN02.RS2ALIQ'
    end
    object Tb_RSin02RS2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'RS2VALOR'
      Origin = 'SG_ASSOC.CADRSIN02.RS2VALOR'
    end
  end
  object U_RSin02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRSIN02'
      'set'
      '  RS2CODEMP = :RS2CODEMP,'
      '  RS2CODIMP = :RS2CODIMP,'
      '  RS2DATA = :RS2DATA,'
      '  RS2ALIQ = :RS2ALIQ,'
      '  RS2VALOR = :RS2VALOR'
      'where'
      '  RS2CODEMP = :OLD_RS2CODEMP and'
      '  RS2CODIMP = :OLD_RS2CODIMP and'
      '  RS2DATA = :OLD_RS2DATA and'
      '  RS2ALIQ = :OLD_RS2ALIQ')
    InsertSQL.Strings = (
      'insert into CADRSIN02'
      '  (RS2CODEMP, RS2CODIMP, RS2DATA, RS2ALIQ, RS2VALOR)'
      'values'
      '  (:RS2CODEMP, :RS2CODIMP, :RS2DATA, :RS2ALIQ, :RS2VALOR)')
    DeleteSQL.Strings = (
      'delete from CADRSIN02'
      'where'
      '  RS2CODEMP = :OLD_RS2CODEMP and'
      '  RS2CODIMP = :OLD_RS2CODIMP and'
      '  RS2DATA = :OLD_RS2DATA and'
      '  RS2ALIQ = :OLD_RS2ALIQ')
    Left = 720
    Top = 12
  end
  object Src_RSin02: TDataSource
    DataSet = Tb_RSin02
    Left = 748
    Top = 14
  end
  object Qr_PedBlq: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 9
    Top = 479
  end
  object U_Cli: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI'
      'set'
      '  CCODEMP = :CCODEMP,'
      '  CCODCLI = :CCODCLI,'
      '  CRAZAO = :CRAZAO,'
      '  CDENOM = :CDENOM,'
      '  CTPLOG = :CTPLOG,'
      '  CLOG = :CLOG,'
      '  CNUM = :CNUM,'
      '  CCOMPL = :CCOMPL,'
      '  CBAIRRO = :CBAIRRO,'
      '  CCIDADE = :CCIDADE,'
      '  CUF = :CUF,'
      '  CCODBAI = :CCODBAI,'
      '  CCODLOC = :CCODLOC,'
      '  CCEP = :CCEP,'
      '  CCELULAR = :CCELULAR,'
      '  CFONERES = :CFONERES,'
      '  CFONECOM = :CFONECOM,'
      '  CDTCAD = :CDTCAD,'
      '  CRG = :CRG,'
      '  CCPF = :CCPF,'
      '  CCNPJ = :CCNPJ,'
      '  CIE = :CIE,'
      '  CPONTOR = :CPONTOR,'
      '  CLCRED = :CLCRED,'
      '  CTABPV = :CTABPV,'
      '  CCODPV = :CCODPV,'
      '  CCODVEN = :CCODVEN,'
      '  CCODV02 = :CCODV02,'
      '  CCODV03 = :CCODV03,'
      '  CCODCV = :CCODCV,'
      '  CTIPOC = :CTIPOC,'
      '  CSTATUS = :CSTATUS,'
      '  CALIQA = :CALIQA,'
      '  CALIQB = :CALIQB,'
      '  CCONSF = :CCONSF,'
      '  CICMSR = :CICMSR,'
      '  CLIM1 = :CLIM1,'
      '  CLIM2 = :CLIM2,'
      '  CNALV = :CNALV,'
      '  CDTVALV = :CDTVALV,'
      '  CNANVISA = :CNANVISA,'
      '  CDTANVISA = :CDTANVISA,'
      '  CICMSRP = :CICMSRP,'
      '  CIPI = :CIPI,'
      '  CICMSTP = :CICMSTP,'
      '  CREPAS = :CREPAS,'
      '  CCOMIS = :CCOMIS,'
      '  CDESC = :CDESC,'
      '  CEMAIL = :CEMAIL,'
      '  CNOMCON = :CNOMCON,'
      '  CFONCON = :CFONCON,'
      '  CHOME = :CHOME,'
      '  CCODRED = :CCODRED,'
      '  CCODCCD = :CCODCCD,'
      '  CCODCCC = :CCODCCC,'
      '  CCODDEPD = :CCODDEPD,'
      '  CCODDEPC = :CCODDEPC,'
      '  CDESCMVD = :CDESCMVD,'
      '  CDESCMVC = :CDESCMVC,'
      '  CCODUSR = :CCODUSR,'
      '  CDTALT = :CDTALT,'
      '  CDTUCPR = :CDTUCPR,'
      '  CDTPCPR = :CDTPCPR,'
      '  CHRALT = :CHRALT,'
      '  CTPPESSOA = :CTPPESSOA,'
      '  COBS01 = :COBS01,'
      '  COBS02 = :COBS02,'
      '  COBS03 = :COBS03,'
      '  COBS04 = :COBS04,'
      '  CSITCLI = :CSITCLI,'
      '  CCEPC = :CCEPC,'
      '  CENDERC = :CENDERC,'
      '  CCODBAIC = :CCODBAIC,'
      '  CBAIRROC = :CBAIRROC,'
      '  CCODLOCC = :CCODLOCC,'
      '  CCIDADEC = :CCIDADEC,'
      '  CUFC = :CUFC,'
      '  CNCONV = :CNCONV,'
      '  CDTUREN = :CDTUREN,'
      '  CACCOM = :CACCOM,'
      '  CNOMVEN = :CNOMVEN,'
      '  CNOMV02 = :CNOMV02,'
      '  CNOMV03 = :CNOMV03,'
      '  CNOMPLA = :CNOMPLA,'
      '  CNOMCCD = :CNOMCCD,'
      '  CNOMCCC = :CNOMCCC,'
      '  CNOMDEPD = :CNOMDEPD,'
      '  CNOMDEPC = :CNOMDEPC,'
      '  CNOMRED = :CNOMRED,'
      '  CBLQPRM = :CBLQPRM,'
      '  CCODTRA = :CCODTRA,'
      '  CNOMTRA = :CNOMTRA,'
      '  CICMSNOR = :CICMSNOR,'
      '  CFAX = :CFAX,'
      '  CFRETEPC = :CFRETEPC,'
      '  CPCOPRAT = :CPCOPRAT,'
      '  CCH_FONE01 = :CCH_FONE01,'
      '  CCH_FONE02 = :CCH_FONE02,'
      '  CCH_CELULAR = :CCH_CELULAR,'
      '  CCH_FONCON = :CCH_FONCON,'
      '  CCH_FAX = :CCH_FAX,'
      '  CCODASSE = :CCODASSE,'
      '  CNOMASSE = :CNOMASSE,'
      '  CREDICMSNOR = :CREDICMSNOR,'
      '  CBLQEMP = :CBLQEMP,'
      '  COBS05 = :COBS05,'
      '  CCODV04 = :CCODV04,'
      '  CALIQDEB = :CALIQDEB,'
      '  CCOMIS02 = :CCOMIS02,'
      '  CCOMIS03 = :CCOMIS03,'
      '  CCOMIS04 = :CCOMIS04,'
      '  CDTINC = :CDTINC,'
      '  CUSRLAT = :CUSRLAT,'
      '  CNOMV04 = :CNOMV04,'
      '  CNOMCV = :CNOMCV,'
      '  CVSEG = :CVSEG,'
      '  CVTER = :CVTER,'
      '  CVQUA = :CVQUA,'
      '  CVQUI = :CVQUI,'
      '  CVSEX = :CVSEX,'
      '  CVSAB = :CVSAB,'
      '  CVDOM = :CVDOM,'
      '  CDEC5825 = :CDEC5825,'
      '  CDEC5834 = :CDEC5834,'
      '  CTARBAN = :CTARBAN,'
      '  CCTARBAN = :CCTARBAN,'
      '  CCODBCO01 = :CCODBCO01,'
      '  CCODBCO02 = :CCODBCO02,'
      '  CNOMBCO01 = :CNOMBCO01,'
      '  CNOMBCO02 = :CNOMBCO02,'
      '  CCODRAM = :CCODRAM,'
      '  CNOMRAM = :CNOMRAM,'
      '  CNIVEL = :CNIVEL,'
      '  CTIPCLI = :CTIPCLI,'
      '  CDTCCRED = :CDTCCRED,'
      '  CTPCCRED = :CTPCCRED,'
      '  CVDAMEN = :CVDAMEN,'
      '  CCOTAMES = :CCOTAMES,'
      '  CALIQRTRIB = :CALIQRTRIB,'
      '  CLIMRTR = :CLIMRTR,'
      '  CDTFUNDACAO = :CDTFUNDACAO,'
      '  CNATDCD = :CNATDCD,'
      '  CNATDCC = :CNATDCC,'
      '  CFONE01 = :CFONE01,'
      '  CFONE02 = :CFONE02,'
      '  CFONE03 = :CFONE03,'
      '  C_ORGAO_EMIS_RG = :C_ORGAO_EMIS_RG,'
      '  C_DT_EXPRG = :C_DT_EXPRG,'
      '  CALIQC = :CALIQC,'
      '  CALIQD = :CALIQD,'
      '  CALIQE = :CALIQE,'
      '  CALIQF = :CALIQF,'
      '  CALIQG = :CALIQG,'
      '  CALIQH = :CALIQH,'
      '  CALIQI = :CALIQI,'
      '  CDESC02 = :CDESC02,'
      '  CDESC03 = :CDESC03,'
      '  CDESCFIN = :CDESCFIN,'
      '  CREVENDA_CP = :CREVENDA_CP,'
      '  CSUPERMICRO = :CSUPERMICRO,'
      '  CICMSST_LIQ = :CICMSST_LIQ,'
      '  CROTA = :CROTA,'
      '  CNOMROTA = :CNOMROTA,'
      '  CPEDELE_PAD = :CPEDELE_PAD,'
      '  CPEDELE_SENHA = :CPEDELE_SENHA,'
      '  CPEDELE_RETBLOQ = :CPEDELE_RETBLOQ,'
      '  CISSQN_ALIQ = :CISSQN_ALIQ,'
      '  CINSS_ALIQ = :CINSS_ALIQ,'
      '  CINSS_RED = :CINSS_RED,'
      '  CIRRF_ALIQ = :CIRRF_ALIQ,'
      '  CIRRF_RED = :CIRRF_RED,'
      '  CCNPJ_CONSISTE = :CCNPJ_CONSISTE,'
      '  CMOTDES = :CMOTDES,'
      '  CPEDELE_BLOQUEIO = :CPEDELE_BLOQUEIO,'
      '  CPEDELE_MOT_BLOQUEIO = :CPEDELE_MOT_BLOQUEIO,'
      '  CPEDELE_AJUSTE_PRECO = :CPEDELE_AJUSTE_PRECO,'
      '  CPEDELE_PRECO_PADRAO = :CPEDELE_PRECO_PADRAO,'
      '  CSUFRAMA = :CSUFRAMA,'
      '  CBLOQCONTROLADO = :CBLOQCONTROLADO,'
      '  CISENTOIE = :CISENTOIE,'
      '  CBLOQVDAPRZ = :CBLOQVDAPRZ,'
      '  CIPI_INC_BC_ICMS = :CIPI_INC_BC_ICMS'
      '  ,CDISTANCIAKM = :CDISTANCIAKM'
      '  ,CVALMIM_EMPRESTIMO = :CVALMIM_EMPRESTIMO'
      '  ,CWHATSAPP = :CWHATSAPP'
      '  ,CCERTTECNICO_NUM = :CCERTTECNICO_NUM'
      '  ,CCERTTECNICO_DTVCTO = :CCERTTECNICO_DTVCTO'
      '  ,CISSRETIDO = :CISSRETIDO'
      'CIBS_ALIQ_MUNA = :CIBS_ALIQ_MUNA,'
      'CIBS_ALIQ_MUNB = :CIBS_ALIQ_MUNB,'
      'CIBS_ALIQ_MUNC = :CIBS_ALIQ_MUNC,'
      'CIBS_ALIQ_MUND = :CIBS_ALIQ_MUND,'
      'CIBS_ALIQ_MUNE = :CIBS_ALIQ_MUNE,'
      'CIBS_ALIQ_MUNF = :CIBS_ALIQ_MUNF,'
      'CIBS_ALIQ_MUNG = :CIBS_ALIQ_MUNG,'
      'CIBS_ALIQ_MUNH = :CIBS_ALIQ_MUNH,'
      'CIBS_ALIQ_MUNI = :CIBS_ALIQ_MUNI,'
      'CIBS_ALIQ_UFA = :CIBS_ALIQ_UFA,'
      'CIBS_ALIQ_UFB = :CIBS_ALIQ_UFB,'
      'CIBS_ALIQ_UFC = :CIBS_ALIQ_UFC,'
      'CIBS_ALIQ_UFD = :CIBS_ALIQ_UFD,'
      'CIBS_ALIQ_UFE = :CIBS_ALIQ_UFE,'
      'CIBS_ALIQ_UFF = :CIBS_ALIQ_UFF,'
      'CIBS_ALIQ_UFG = :CIBS_ALIQ_UFG,'
      'CIBS_ALIQ_UFH = :CIBS_ALIQ_UFH,'
      'CIBS_ALIQ_UFI = :CIBS_ALIQ_UFI,'
      'CCBS_ALIQA = :CCBS_ALIQA,'
      'CCBS_ALIQB = :CCBS_ALIQB,'
      'CCBS_ALIQC = :CCBS_ALIQC,'
      'CCBS_ALIQD = :CCBS_ALIQD,'
      'CCBS_ALIQE = :CCBS_ALIQE,'
      'CCBS_ALIQF = :CCBS_ALIQF,'
      'CCBS_ALIQG = :CCBS_ALIQG,'
      'CCBS_ALIQH = :CCBS_ALIQH,'
      'CCBS_ALIQI = :CCBS_ALIQI'
      ''
      ''
      'where'
      '  CCODEMP = :OLD_CCODEMP and'
      '  CCODCLI = :OLD_CCODCLI and'
      '  CRAZAO = :OLD_CRAZAO')
    InsertSQL.Strings = (
      'insert into CADCLI'
      
        '  (CCODEMP, CCODCLI, CRAZAO, CDENOM, CTPLOG, CLOG, CNUM, CCOMPL,' +
        ' '
      'CBAIRRO, '
      '   CCIDADE, CUF, CCODBAI, CCODLOC, CCEP, CCELULAR, CFONERES, '
      'CFONECOM, '
      
        '   CDTCAD, CRG, CCPF, CCNPJ, CIE, CPONTOR, CLCRED, CTABPV, CCODP' +
        'V, '
      'CCODVEN, '
      
        '   CCODV02, CCODV03, CCODCV, CTIPOC, CSTATUS, CALIQA, CALIQB, CC' +
        'ONSF, '
      'CICMSR, '
      
        '   CLIM1, CLIM2, CNALV, CDTVALV, CNANVISA, CDTANVISA, CICMSRP, C' +
        'IPI, '
      'CICMSTP, '
      '   CREPAS, CCOMIS, CDESC, CEMAIL, CNOMCON, CFONCON, CHOME, '
      'CCODRED, CCODCCD, '
      '   CCODCCC, CCODDEPD, CCODDEPC, CDESCMVD, CDESCMVC, CCODUSR, '
      'CDTALT, CDTUCPR, '
      '   CDTPCPR, CHRALT, CTPPESSOA, COBS01, COBS02, COBS03, COBS04, '
      'CSITCLI, '
      
        '   CCEPC, CENDERC, CCODBAIC, CBAIRROC, CCODLOCC, CCIDADEC, CUFC,' +
        ' '
      'CNCONV, '
      
        '   CDTUREN, CACCOM, CNOMVEN, CNOMV02, CNOMV03, CNOMPLA, CNOMCCD,' +
        ' '
      'CNOMCCC, '
      '   CNOMDEPD, CNOMDEPC, CNOMRED, CBLQPRM, CCODTRA, CNOMTRA, '
      'CICMSNOR, CFAX,'
      '   CFRETEPC, CPCOPRAT, CCH_FONE01, CCH_FONE02, CCH_CELULAR,'
      'CCH_FONCON,'
      '   CCH_FAX, CCODASSE, CNOMASSE, CREDICMSNOR, CBLQEMP, COBS05,'
      'CCODV04,'
      
        '   CALIQDEB, CCOMIS02, CCOMIS03, CCOMIS04, CDTINC, CUSRLAT, CNOM' +
        'V04,'
      'CNOMCV,'
      '   CVSEG, CVTER, CVQUA, CVQUI, CVSEX, CVSAB, CVDOM, CDEC5825,'
      'CDEC5834,'
      '   CTARBAN, CCTARBAN, CCODBCO01, CCODBCO02, CNOMBCO01,'
      'CNOMBCO02, CCODRAM,'
      '   CNOMRAM, CNIVEL, CTIPCLI, CDTCCRED, CTPCCRED, CVDAMEN,'
      'CCOTAMES, CALIQRTRIB,'
      '   CLIMRTR, CDTFUNDACAO, CNATDCD, CNATDCC, CFONE01, CFONE02,'
      'CFONE03, C_ORGAO_EMIS_RG,'
      
        '   C_DT_EXPRG, CALIQC, CALIQD, CALIQE, CALIQF, CALIQG, CALIQH, C' +
        'ALIQI,'
      '   CDESC02, CDESC03, CDESCFIN, CREVENDA_CP, CSUPERMICRO,'
      'CICMSST_LIQ, CROTA,'
      '   CNOMROTA, CPEDELE_PAD, CPEDELE_SENHA, CPEDELE_RETBLOQ,'
      'CISSQN_ALIQ,'
      '   CINSS_ALIQ, CINSS_RED, CIRRF_ALIQ, CIRRF_RED, CCNPJ_CONSISTE,'
      'CMOTDES,'
      '   CPEDELE_BLOQUEIO, CPEDELE_MOT_BLOQUEIO,'
      'CPEDELE_AJUSTE_PRECO, CPEDELE_PRECO_PADRAO,'
      '   CSUFRAMA, CBLOQCONTROLADO, CISENTOIE, CBLOQVDAPRZ,'
      'CIPI_INC_BC_ICMS,CDISTANCIAKM,CVALMIM_EMPRESTIMO'
      ',CWHATSAPP,CCERTTECNICO_NUM,CCERTTECNICO_DTVCTO,CISSRETIDO'
      'CIBS_ALIQ_MUNA,'
      'CIBS_ALIQ_MUNB,'
      'CIBS_ALIQ_MUNC,'
      'CIBS_ALIQ_MUND,'
      'CIBS_ALIQ_MUNE,'
      'CIBS_ALIQ_MUNF,'
      'CIBS_ALIQ_MUNG,'
      'CIBS_ALIQ_MUNH,'
      'CIBS_ALIQ_MUNI,'
      'CIBS_ALIQ_UFA,'
      'CIBS_ALIQ_UFB,'
      'CIBS_ALIQ_UFC,'
      'CIBS_ALIQ_UFD,'
      'CIBS_ALIQ_UFE,'
      'CIBS_ALIQ_UFF,'
      'CIBS_ALIQ_UFG,'
      'CIBS_ALIQ_UFH,'
      'CIBS_ALIQ_UFI,'
      'CCBS_ALIQA,'
      'CCBS_ALIQB,'
      'CCBS_ALIQC,'
      'CCBS_ALIQD,'
      'CCBS_ALIQE,'
      'CCBS_ALIQF,'
      'CCBS_ALIQG,'
      'CCBS_ALIQH,'
      'CCBS_ALIQI'
      ''
      ''
      ')'
      'values'
      '  (:CCODEMP, :CCODCLI, :CRAZAO, :CDENOM, :CTPLOG, :CLOG, :CNUM,'
      ':CCOMPL,'
      
        '   :CBAIRRO, :CCIDADE, :CUF, :CCODBAI, :CCODLOC, :CCEP, :CCELULA' +
        'R,'
      ':CFONERES,'
      
        '   :CFONECOM, :CDTCAD, :CRG, :CCPF, :CCNPJ, :CIE, :CPONTOR, :CLC' +
        'RED, '
      ':CTABPV, '
      
        '   :CCODPV, :CCODVEN, :CCODV02, :CCODV03, :CCODCV, :CTIPOC, :CST' +
        'ATUS, '
      ':CALIQA, '
      
        '   :CALIQB, :CCONSF, :CICMSR, :CLIM1, :CLIM2, :CNALV, :CDTVALV, ' +
        ':CNANVISA, '
      
        '   :CDTANVISA, :CICMSRP, :CIPI, :CICMSTP, :CREPAS, :CCOMIS, :CDE' +
        'SC, '
      ':CEMAIL, '
      '   :CNOMCON, :CFONCON, :CHOME, :CCODRED, :CCODCCD, :CCODCCC, '
      ':CCODDEPD, '
      
        '   :CCODDEPC, :CDESCMVD, :CDESCMVC, :CCODUSR, :CDTALT, :CDTUCPR,' +
        ' '
      ':CDTPCPR, '
      
        '   :CHRALT, :CTPPESSOA, :COBS01, :COBS02, :COBS03, :COBS04, :CSI' +
        'TCLI, '
      ':CCEPC, '
      '   :CENDERC, :CCODBAIC, :CBAIRROC, :CCODLOCC, :CCIDADEC, :CUFC,'
      ':CNCONV, '
      '   :CDTUREN, :CACCOM, :CNOMVEN, :CNOMV02, :CNOMV03, :CNOMPLA, '
      ':CNOMCCD, '
      
        '   :CNOMCCC, :CNOMDEPD, :CNOMDEPC, :CNOMRED, :CBLQPRM, :CCODTRA,' +
        ' '
      ':CNOMTRA, '
      
        '   :CICMSNOR, :CFAX, :CFRETEPC, :CPCOPRAT, :CCH_FONE01, :CCH_FON' +
        'E02, '
      ':CCH_CELULAR, '
      '   :CCH_FONCON, :CCH_FAX, :CCODASSE, :CNOMASSE, :CREDICMSNOR, '
      ':CBLQEMP, '
      
        '   :COBS05, :CCODV04, :CALIQDEB, :CCOMIS02, :CCOMIS03, :CCOMIS04' +
        ', '
      ':CDTINC, '
      
        '   :CUSRLAT, :CNOMV04, :CNOMCV, :CVSEG, :CVTER, :CVQUA, :CVQUI, ' +
        ':CVSEX, '
      '   :CVSAB, :CVDOM, :CDEC5825, :CDEC5834, :CTARBAN, :CCTARBAN, '
      ':CCODBCO01, '
      
        '   :CCODBCO02, :CNOMBCO01, :CNOMBCO02, :CCODRAM, :CNOMRAM, :CNIV' +
        'EL, '
      ':CTIPCLI, '
      
        '   :CDTCCRED, :CTPCCRED, :CVDAMEN, :CCOTAMES, :CALIQRTRIB, :CLIM' +
        'RTR, '
      ':CDTFUNDACAO, '
      '   :CNATDCD, :CNATDCC, :CFONE01, :CFONE02, :CFONE03, '
      ':C_ORGAO_EMIS_RG, '
      
        '   :C_DT_EXPRG, :CALIQC, :CALIQD, :CALIQE, :CALIQF, :CALIQG, :CA' +
        'LIQH, '
      ':CALIQI, '
      '   :CDESC02, :CDESC03, :CDESCFIN, :CREVENDA_CP, :CSUPERMICRO, '
      ':CICMSST_LIQ, '
      '   :CROTA, :CNOMROTA, :CPEDELE_PAD, :CPEDELE_SENHA, '
      ':CPEDELE_RETBLOQ, :CISSQN_ALIQ, '
      
        '   :CINSS_ALIQ, :CINSS_RED, :CIRRF_ALIQ, :CIRRF_RED, :CCNPJ_CONS' +
        'ISTE, '
      ':CMOTDES, '
      '   :CPEDELE_BLOQUEIO, :CPEDELE_MOT_BLOQUEIO, '
      ':CPEDELE_AJUSTE_PRECO, :CPEDELE_PRECO_PADRAO,'
      '   :CSUFRAMA, :CBLOQCONTROLADO, :CISENTOIE, :CBLOQVDAPRZ,'
      ':CIPI_INC_BC_ICMS,:CDISTANCIAKM,:CVALMIM_EMPRESTIMO'
      ',:CWHATSAPP,:CCERTTECNICO_NUM,:CCERTTECNICO_DTVCTO,:CISSRETIDO'
      ':CIBS_ALIQ_MUNA,'
      ':CIBS_ALIQ_MUNB,'
      ':CIBS_ALIQ_MUNC,'
      ':CIBS_ALIQ_MUND,'
      ':CIBS_ALIQ_MUNE,'
      ':CIBS_ALIQ_MUNF,'
      ':CIBS_ALIQ_MUNG,'
      ':CIBS_ALIQ_MUNH,'
      ':CIBS_ALIQ_MUNI,'
      ':CIBS_ALIQ_UFA,'
      ':CIBS_ALIQ_UFB,'
      ':CIBS_ALIQ_UFC,'
      ':CIBS_ALIQ_UFD,'
      ':CIBS_ALIQ_UFE,'
      ':CIBS_ALIQ_UFF,'
      ':CIBS_ALIQ_UFG,'
      ':CIBS_ALIQ_UFH,'
      ':CIBS_ALIQ_UFI,'
      ':CCBS_ALIQA,'
      ':CCBS_ALIQB,'
      ':CCBS_ALIQC,'
      ':CCBS_ALIQD,'
      ':CCBS_ALIQE,'
      ':CCBS_ALIQF,'
      ':CCBS_ALIQG,'
      ':CCBS_ALIQH,'
      ':CCBS_ALIQI,'
      ''
      ')')
    DeleteSQL.Strings = (
      'delete from CADCLI'
      'where'
      '  CCODEMP = :OLD_CCODEMP and'
      '  CCODCLI = :OLD_CCODCLI and'
      '  CRAZAO = :OLD_CRAZAO')
    Left = 184
    Top = 52
  end
  object Query6: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 38
    Top = 267
  end
  object Tb_Sup: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_SupBeforeInsert
    AfterInsert = Tb_SupAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADSUP where SCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Sup
    Left = 691
    Top = 57
    object Tb_SupSCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'SCODEMP'
      Origin = 'SG_ASSOC.CADSUP.SCODEMP'
    end
    object Tb_SupSCODSUP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SCODSUP'
      Origin = 'SG_ASSOC.CADSUP.SCODSUP'
    end
    object Tb_SupSNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'SNOME'
      Origin = 'SG_ASSOC.CADSUP.SNOME'
      Size = 40
    end
    object Tb_SupSENDER: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'SENDER'
      Origin = 'SG_ASSOC.CADSUP.SENDER'
      Size = 40
    end
    object Tb_SupSBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'SBAIRRO'
      Origin = 'SG_ASSOC.CADSUP.SBAIRRO'
      Size = 30
    end
    object Tb_SupSCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'SCIDADE'
      Origin = 'SG_ASSOC.CADSUP.SCIDADE'
      Size = 30
    end
    object Tb_SupSUF: TStringField
      DisplayLabel = 'Unidade da federa'#231#227'o'
      FieldName = 'SUF'
      Origin = 'SG_ASSOC.CADSUP.SUF'
      Size = 2
    end
    object Tb_SupSCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo do Bairro'
      FieldName = 'SCODBAI'
      Origin = 'SG_ASSOC.CADSUP.SCODBAI'
    end
    object Tb_SupSCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo da localidade'
      FieldName = 'SCODLOC'
      Origin = 'SG_ASSOC.CADSUP.SCODLOC'
    end
    object Tb_SupSCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'SCEP'
      Origin = 'SG_ASSOC.CADSUP.SCEP'
      EditMask = '99999-999;1; '
      Size = 9
    end
    object Tb_SupSCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'SCELULAR'
      Origin = 'SG_ASSOC.CADSUP.SCELULAR'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_SupSFONERES: TStringField
      DisplayLabel = 'Fone residencial'
      FieldName = 'SFONERES'
      Origin = 'SG_ASSOC.CADSUP.SFONERES'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_SupSFONECOM: TStringField
      DisplayLabel = 'Fone Comercial'
      FieldName = 'SFONECOM'
      Origin = 'SG_ASSOC.CADSUP.SFONECOM'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_SupSDTCAD: TDateTimeField
      FieldName = 'SDTCAD'
      Origin = 'SG_ASSOC.CADSUP.SDTCAD'
    end
    object Tb_SupSRG: TStringField
      FieldName = 'SRG'
      Origin = 'SG_ASSOC.CADSUP.SRG'
      Size = 40
    end
    object Tb_SupSCPF: TFloatField
      FieldName = 'SCPF'
      Origin = 'SG_ASSOC.CADSUP.SCPF'
      DisplayFormat = '000"."000"."000"-"00'
      EditFormat = '##############'
    end
    object Tb_SupSPONTOR: TStringField
      FieldName = 'SPONTOR'
      Origin = 'SG_ASSOC.CADSUP.SPONTOR'
      Size = 60
    end
    object Tb_SupSREFP01: TStringField
      FieldName = 'SREFP01'
      Origin = 'SG_ASSOC.CADSUP.SREFP01'
      Size = 40
    end
    object Tb_SupSFREFP1: TStringField
      FieldName = 'SFREFP1'
      Origin = 'SG_ASSOC.CADSUP.SFREFP1'
    end
    object Tb_SupSREFP02: TStringField
      FieldName = 'SREFP02'
      Origin = 'SG_ASSOC.CADSUP.SREFP02'
      Size = 40
    end
    object Tb_SupSFREFP2: TStringField
      FieldName = 'SFREFP2'
      Origin = 'SG_ASSOC.CADSUP.SFREFP2'
    end
    object Tb_SupSREFP03: TStringField
      FieldName = 'SREFP03'
      Origin = 'SG_ASSOC.CADSUP.SREFP03'
      Size = 40
    end
    object Tb_SupSFREFP3: TStringField
      FieldName = 'SFREFP3'
      Origin = 'SG_ASSOC.CADSUP.SFREFP3'
    end
    object Tb_SupSREFB01: TStringField
      FieldName = 'SREFB01'
      Origin = 'SG_ASSOC.CADSUP.SREFB01'
      Size = 40
    end
    object Tb_SupSFREFB1: TStringField
      FieldName = 'SFREFB1'
      Origin = 'SG_ASSOC.CADSUP.SFREFB1'
    end
    object Tb_SupSREFB02: TStringField
      FieldName = 'SREFB02'
      Origin = 'SG_ASSOC.CADSUP.SREFB02'
      Size = 40
    end
    object Tb_SupSFREFB2: TStringField
      FieldName = 'SFREFB2'
      Origin = 'SG_ASSOC.CADSUP.SFREFB2'
    end
    object Tb_SupSREFB03: TStringField
      FieldName = 'SREFB03'
      Origin = 'SG_ASSOC.CADSUP.SREFB03'
      Size = 40
    end
    object Tb_SupSFREFB3: TStringField
      FieldName = 'SFREFB3'
      Origin = 'SG_ASSOC.CADSUP.SFREFB3'
    end
    object Tb_SupSREFC01: TStringField
      FieldName = 'SREFC01'
      Origin = 'SG_ASSOC.CADSUP.SREFC01'
      Size = 40
    end
    object Tb_SupSFREFC1: TStringField
      FieldName = 'SFREFC1'
      Origin = 'SG_ASSOC.CADSUP.SFREFC1'
    end
    object Tb_SupSREFC02: TStringField
      FieldName = 'SREFC02'
      Origin = 'SG_ASSOC.CADSUP.SREFC02'
      Size = 40
    end
    object Tb_SupSFREFC2: TStringField
      FieldName = 'SFREFC2'
      Origin = 'SG_ASSOC.CADSUP.SFREFC2'
    end
    object Tb_SupSREFC03: TStringField
      FieldName = 'SREFC03'
      Origin = 'SG_ASSOC.CADSUP.SREFC03'
      Size = 40
    end
    object Tb_SupSFREFC3: TStringField
      FieldName = 'SFREFC3'
      Origin = 'SG_ASSOC.CADSUP.SFREFC3'
    end
    object Tb_SupSOBS: TMemoField
      FieldName = 'SOBS'
      Origin = 'SG_ASSOC.CADSUP.SOBS'
      BlobType = ftMemo
      Size = 600
    end
    object Tb_SupSSTATUS: TFloatField
      FieldName = 'SSTATUS'
      Origin = 'SG_ASSOC.CADSUP.SSTATUS'
    end
    object Tb_SupSDATHOR_INC: TDateTimeField
      FieldName = 'SDATHOR_INC'
      Origin = 'SG_ASSOC.CADSUP.SDATHOR_INC'
    end
    object Tb_SupSCODUSR_INC: TFloatField
      FieldName = 'SCODUSR_INC'
      Origin = 'SG_ASSOC.CADSUP.SCODUSR_INC'
    end
    object Tb_SupSDATHOR_ALT: TDateTimeField
      FieldName = 'SDATHOR_ALT'
      Origin = 'SG_ASSOC.CADSUP.SDATHOR_ALT'
    end
    object Tb_SupSCODUSR_ALT: TFloatField
      FieldName = 'SCODUSR_ALT'
      Origin = 'SG_ASSOC.CADSUP.SCODUSR_ALT'
    end
  end
  object U_Sup: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSUP'
      'set'
      '  SCODEMP = :SCODEMP,'
      '  SCODSUP = :SCODSUP,'
      '  SNOME = :SNOME,'
      '  SENDER = :SENDER,'
      '  SBAIRRO = :SBAIRRO,'
      '  SCIDADE = :SCIDADE,'
      '  SUF = :SUF,'
      '  SCODBAI = :SCODBAI,'
      '  SCODLOC = :SCODLOC,'
      '  SCEP = :SCEP,'
      '  SCELULAR = :SCELULAR,'
      '  SFONERES = :SFONERES,'
      '  SFONECOM = :SFONECOM,'
      '  SDTCAD = :SDTCAD,'
      '  SRG = :SRG,'
      '  SCPF = :SCPF,'
      '  SPONTOR = :SPONTOR,'
      '  SREFP01 = :SREFP01,'
      '  SFREFP1 = :SFREFP1,'
      '  SREFP02 = :SREFP02,'
      '  SFREFP2 = :SFREFP2,'
      '  SREFP03 = :SREFP03,'
      '  SFREFP3 = :SFREFP3,'
      '  SREFB01 = :SREFB01,'
      '  SFREFB1 = :SFREFB1,'
      '  SREFB02 = :SREFB02,'
      '  SFREFB2 = :SFREFB2,'
      '  SREFB03 = :SREFB03,'
      '  SFREFB3 = :SFREFB3,'
      '  SREFC01 = :SREFC01,'
      '  SFREFC1 = :SFREFC1,'
      '  SREFC02 = :SREFC02,'
      '  SFREFC2 = :SFREFC2,'
      '  SREFC03 = :SREFC03,'
      '  SFREFC3 = :SFREFC3,'
      '  SOBS = :SOBS,'
      '  SSTATUS = :SSTATUS,'
      '  SDATHOR_INC = :SDATHOR_INC,'
      '  SCODUSR_INC = :SCODUSR_INC,'
      '  SDATHOR_ALT = :SDATHOR_ALT,'
      '  SCODUSR_ALT = :SCODUSR_ALT'
      'where'
      '  SCODEMP = :OLD_SCODEMP and'
      '  SCODSUP = :OLD_SCODSUP')
    InsertSQL.Strings = (
      'insert into CADSUP'
      
        '  (SCODEMP, SCODSUP, SNOME, SENDER, SBAIRRO, SCIDADE, SUF, SCODB' +
        'AI, '
      'SCODLOC, '
      
        '   SCEP, SCELULAR, SFONERES, SFONECOM, SDTCAD, SRG, SCPF, SPONTO' +
        'R, '
      'SREFP01, '
      
        '   SFREFP1, SREFP02, SFREFP2, SREFP03, SFREFP3, SREFB01, SFREFB1' +
        ', '
      'SREFB02, '
      
        '   SFREFB2, SREFB03, SFREFB3, SREFC01, SFREFC1, SREFC02, SFREFC2' +
        ', '
      'SREFC03, '
      
        '   SFREFC3, SOBS, SSTATUS, SDATHOR_INC, SCODUSR_INC, SDATHOR_ALT' +
        ', '
      'SCODUSR_ALT)'
      'values'
      
        '  (:SCODEMP, :SCODSUP, :SNOME, :SENDER, :SBAIRRO, :SCIDADE, :SUF' +
        ', '
      ':SCODBAI, '
      
        '   :SCODLOC, :SCEP, :SCELULAR, :SFONERES, :SFONECOM, :SDTCAD, :S' +
        'RG, '
      ':SCPF, '
      
        '   :SPONTOR, :SREFP01, :SFREFP1, :SREFP02, :SFREFP2, :SREFP03, :' +
        'SFREFP3, '
      
        '   :SREFB01, :SFREFB1, :SREFB02, :SFREFB2, :SREFB03, :SFREFB3, :' +
        'SREFC01, '
      
        '   :SFREFC1, :SREFC02, :SFREFC2, :SREFC03, :SFREFC3, :SOBS, :SST' +
        'ATUS, '
      ':SDATHOR_INC, '
      '   :SCODUSR_INC, :SDATHOR_ALT, :SCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADSUP'
      'where'
      '  SCODEMP = :OLD_SCODEMP and'
      '  SCODSUP = :OLD_SCODSUP')
    Left = 719
    Top = 57
  end
  object Src_Sup: TDataSource
    DataSet = Tb_Sup
    Left = 785
    Top = 57
  end
  object Tb_Ram: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_RamBeforeInsert
    AfterInsert = Tb_RamAfterInsert
    AutoRefresh = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRAM where'
      'RCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ram
    Left = 594
    Top = 362
    object Tb_RamRCODEMP: TFloatField
      FieldName = 'RCODEMP'
      Origin = 'SG_ASSOC.CADRAM.RCODEMP'
    end
    object Tb_RamRCODRAM: TFloatField
      DisplayLabel = 'C'#243'digo do Ramo'
      FieldName = 'RCODRAM'
      Origin = 'SG_ASSOC.CADRAM.RCODRAM'
    end
    object Tb_RamRNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RNOME'
      Origin = 'SG_ASSOC.CADRAM.RNOME'
      Size = 30
    end
    object Tb_RamRDATHOR_INC: TDateTimeField
      FieldName = 'RDATHOR_INC'
      Origin = 'SG_ASSOC.CADRAM.RDATHOR_INC'
    end
    object Tb_RamRCODUSR_INC: TFloatField
      FieldName = 'RCODUSR_INC'
      Origin = 'SG_ASSOC.CADRAM.RCODUSR_INC'
    end
    object Tb_RamRDATHOR_ALT: TDateTimeField
      FieldName = 'RDATHOR_ALT'
      Origin = 'SG_ASSOC.CADRAM.RDATHOR_ALT'
    end
    object Tb_RamRCODUSR_ALT: TFloatField
      FieldName = 'RCODUSR_ALT'
      Origin = 'SG_ASSOC.CADRAM.RCODUSR_ALT'
    end
    object Tb_RamRDATHOR_REP: TDateTimeField
      FieldName = 'RDATHOR_REP'
      Origin = 'SG_ASSOC.CADRAM.RDATHOR_REP'
    end
    object Tb_RamRTEXTO: TMemoField
      FieldName = 'RTEXTO'
      Origin = 'SG_ASSOC.CADRAM.RTEXTO'
      BlobType = ftMemo
      Size = 300
    end
  end
  object U_Ram: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRAM'
      'set'
      '  RCODEMP = :RCODEMP,'
      '  RCODRAM = :RCODRAM,'
      '  RNOME = :RNOME,'
      '  RDATHOR_INC = :RDATHOR_INC,'
      '  RCODUSR_INC = :RCODUSR_INC,'
      '  RDATHOR_ALT = :RDATHOR_ALT,'
      '  RCODUSR_ALT = :RCODUSR_ALT,'
      '  RTEXTO = :RTEXTO'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RCODRAM = :OLD_RCODRAM')
    InsertSQL.Strings = (
      'insert into CADRAM'
      '  (RCODEMP, RCODRAM, RNOME, RDATHOR_INC, RCODUSR_INC, '
      'RDATHOR_ALT, RCODUSR_ALT, '
      '   RTEXTO)'
      'values'
      '  (:RCODEMP, :RCODRAM, :RNOME, :RDATHOR_INC, :RCODUSR_INC, '
      ':RDATHOR_ALT, '
      '   :RCODUSR_ALT, :RTEXTO)')
    DeleteSQL.Strings = (
      'delete from CADRAM'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RCODRAM = :OLD_RCODRAM')
    Left = 622
    Top = 362
  end
  object Src_Ram: TDataSource
    DataSet = Tb_Ram
    Left = 649
    Top = 362
  end
  object Src_PED02_SOBRAS: TDataSource
    DataSet = TB_PED02_SOBRAS
    Left = 607
    Top = 541
  end
  object TB_PED02_SOBRAS: TQuery
    CachedUpdates = True
    BeforePost = TB_PED02_SOBRASBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = TB_PED02_SOBRASCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select'
      '    *'
      ' from '
      '    cadp02_sobras'
      ' where '
      '   P2S_CODEMP=0')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UP_PED02_SOBRAS
    Left = 540
    Top = 541
    object TB_PED02_SOBRASNOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 40
      Calculated = True
    end
    object TB_PED02_SOBRASP2S_CODEMP: TFloatField
      FieldName = 'P2S_CODEMP'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_CODEMP'
    end
    object TB_PED02_SOBRASP2S_LOTSEQ: TFloatField
      FieldName = 'P2S_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_LOTSEQ'
    end
    object TB_PED02_SOBRASP2S_CHAVE: TFloatField
      FieldName = 'P2S_CHAVE'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_CHAVE'
    end
    object TB_PED02_SOBRASP2S_ORIGEM: TFloatField
      FieldName = 'P2S_ORIGEM'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_ORIGEM'
    end
    object TB_PED02_SOBRASP2S_ITEM: TFloatField
      FieldName = 'P2S_ITEM'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_ITEM'
    end
    object TB_PED02_SOBRASP2S_CODPRO: TFloatField
      FieldName = 'P2S_CODPRO'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_CODPRO'
    end
    object TB_PED02_SOBRASP2S_PRECO_UNI: TFloatField
      FieldName = 'P2S_PRECO_UNI'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_PRECO_UNI'
    end
    object TB_PED02_SOBRASP2S_PRECO_CUS: TFloatField
      FieldName = 'P2S_PRECO_CUS'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_PRECO_CUS'
    end
    object TB_PED02_SOBRASP2S_PRECO_VEN: TFloatField
      FieldName = 'P2S_PRECO_VEN'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_PRECO_VEN'
    end
    object TB_PED02_SOBRASP2S_QTD_VEN: TFloatField
      FieldName = 'P2S_QTD_VEN'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_QTD_VEN'
    end
    object TB_PED02_SOBRASP2S_QTD_DEV: TFloatField
      FieldName = 'P2S_QTD_DEV'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_QTD_DEV'
    end
    object TB_PED02_SOBRASP2S_QTD_QUE: TFloatField
      FieldName = 'P2S_QTD_QUE'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_QTD_QUE'
    end
    object TB_PED02_SOBRASP2S_QTD_SOBRA: TFloatField
      FieldName = 'P2S_QTD_SOBRA'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_QTD_SOBRA'
    end
    object TB_PED02_SOBRASP2S_PRECO_ORI: TFloatField
      FieldName = 'P2S_PRECO_ORI'
      Origin = 'SG_ASSOC.CADP02_SOBRAS.P2S_PRECO_ORI'
    end
  end
  object UP_PED02_SOBRAS: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02_SOBRAS'
      'set'
      '  P2S_CODEMP = :P2S_CODEMP,'
      '  P2S_LOTSEQ = :P2S_LOTSEQ,'
      '  P2S_CHAVE = :P2S_CHAVE,'
      '  P2S_ORIGEM = :P2S_ORIGEM,'
      '  P2S_ITEM = :P2S_ITEM,'
      '  P2S_CODPRO = :P2S_CODPRO,'
      '  P2S_PRECO_UNI = :P2S_PRECO_UNI,'
      '  P2S_PRECO_CUS = :P2S_PRECO_CUS,'
      '  P2S_PRECO_VEN = :P2S_PRECO_VEN,'
      '  P2S_QTD_VEN = :P2S_QTD_VEN,'
      '  P2S_QTD_DEV = :P2S_QTD_DEV,'
      '  P2S_QTD_QUE = :P2S_QTD_QUE,'
      '  P2S_QTD_SOBRA = :P2S_QTD_SOBRA,'
      '  P2S_PRECO_ORI = :P2S_PRECO_ORI'
      'where'
      '  P2S_CODEMP = :OLD_P2S_CODEMP and'
      '  P2S_LOTSEQ = :OLD_P2S_LOTSEQ and'
      '  P2S_CHAVE = :OLD_P2S_CHAVE and'
      '  P2S_ITEM = :OLD_P2S_ITEM')
    InsertSQL.Strings = (
      'insert into CADP02_SOBRAS'
      '  (P2S_CODEMP, P2S_LOTSEQ, P2S_CHAVE, P2S_ORIGEM, P2S_ITEM, '
      'P2S_CODPRO, '
      '   P2S_PRECO_UNI, P2S_PRECO_CUS, P2S_PRECO_VEN, P2S_QTD_VEN, '
      'P2S_QTD_DEV, '
      '   P2S_QTD_QUE, P2S_QTD_SOBRA, P2S_PRECO_ORI)'
      'values'
      
        '  (:P2S_CODEMP, :P2S_LOTSEQ, :P2S_CHAVE, :P2S_ORIGEM, :P2S_ITEM,' +
        ' '
      ':P2S_CODPRO, '
      
        '   :P2S_PRECO_UNI, :P2S_PRECO_CUS, :P2S_PRECO_VEN, :P2S_QTD_VEN,' +
        ' '
      ':P2S_QTD_DEV, '
      '   :P2S_QTD_QUE, :P2S_QTD_SOBRA, :P2S_PRECO_ORI)')
    DeleteSQL.Strings = (
      'delete from CADP02_SOBRAS'
      'where'
      '  P2S_CODEMP = :OLD_P2S_CODEMP and'
      '  P2S_LOTSEQ = :OLD_P2S_LOTSEQ and'
      '  P2S_CHAVE = :OLD_P2S_CHAVE and'
      '  P2S_ITEM = :OLD_P2S_ITEM')
    Left = 574
    Top = 541
  end
  object SRC_PED01_SOBRAS: TDataSource
    DataSet = TB_PED01_SOBRAS
    Left = 492
    Top = 546
  end
  object TB_PED01_SOBRAS: TQuery
    CachedUpdates = True
    BeforePost = TB_PED01_SOBRASBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01_SOBRAS where'
      'P1S_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UP_PED01_SOBRAS
    Left = 420
    Top = 545
    object TB_PED01_SOBRASP1S_CODEMP: TFloatField
      FieldName = 'P1S_CODEMP'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_CODEMP'
    end
    object TB_PED01_SOBRASP1S_LOTSEQ: TFloatField
      FieldName = 'P1S_LOTSEQ'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_LOTSEQ'
    end
    object TB_PED01_SOBRASP1S_CHAVE: TFloatField
      FieldName = 'P1S_CHAVE'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_CHAVE'
    end
    object TB_PED01_SOBRASP1S_CODCLI: TFloatField
      FieldName = 'P1S_CODCLI'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_CODCLI'
    end
    object TB_PED01_SOBRASP1S_DATA_INC: TDateTimeField
      FieldName = 'P1S_DATA_INC'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_DATA_INC'
    end
    object TB_PED01_SOBRASP1S_USER_INC: TFloatField
      FieldName = 'P1S_USER_INC'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_USER_INC'
    end
    object TB_PED01_SOBRASP1S_DATA_FEC: TDateTimeField
      FieldName = 'P1S_DATA_FEC'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_DATA_FEC'
    end
    object TB_PED01_SOBRASP1S_USER_FEC: TFloatField
      FieldName = 'P1S_USER_FEC'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_USER_FEC'
    end
    object TB_PED01_SOBRASP1S_STATUS: TFloatField
      FieldName = 'P1S_STATUS'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_STATUS'
    end
    object TB_PED01_SOBRASP1S_TABPV: TStringField
      FieldName = 'P1S_TABPV'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_TABPV'
      Size = 2
    end
    object TB_PED01_SOBRASP1S_CODPV: TFloatField
      FieldName = 'P1S_CODPV'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_CODPV'
    end
    object TB_PED01_SOBRASP1S_PACTD: TFloatField
      FieldName = 'P1S_PACTD'
      Origin = 'SG_ASSOC.CADP01_SOBRAS.P1S_PACTD'
    end
    object TB_PED01_SOBRASP1S_DATHOR_EVE: TDateTimeField
      FieldName = 'P1S_DATHOR_EVE'
      Origin = 'SGE_172.CADP01_SOBRAS.P1S_DATHOR_EVE'
    end
  end
  object UP_PED01_SOBRAS: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01_SOBRAS'
      'set'
      '  P1S_CODEMP = :P1S_CODEMP,'
      '  P1S_LOTSEQ = :P1S_LOTSEQ,'
      '  P1S_CHAVE = :P1S_CHAVE,'
      '  P1S_CODCLI = :P1S_CODCLI,'
      '  P1S_DATA_INC = :P1S_DATA_INC,'
      '  P1S_USER_INC = :P1S_USER_INC,'
      '  P1S_DATA_FEC = :P1S_DATA_FEC,'
      '  P1S_USER_FEC = :P1S_USER_FEC,'
      '  P1S_STATUS = :P1S_STATUS,'
      '  P1S_TABPV = :P1S_TABPV,'
      '  P1S_CODPV = :P1S_CODPV,'
      '  P1S_PACTD = :P1S_PACTD,'
      '  P1S_DATHOR_EVE = :P1S_DATHOR_EVE'
      'where'
      '  P1S_CODEMP = :OLD_P1S_CODEMP and'
      '  P1S_LOTSEQ = :OLD_P1S_LOTSEQ and'
      '  P1S_CHAVE = :OLD_P1S_CHAVE and'
      '  P1S_CODCLI = :OLD_P1S_CODCLI')
    InsertSQL.Strings = (
      'insert into CADP01_SOBRAS'
      '  (P1S_CODEMP, P1S_LOTSEQ, P1S_CHAVE, P1S_CODCLI, P1S_DATA_INC, '
      'P1S_USER_INC, '
      
        '   P1S_DATA_FEC, P1S_USER_FEC, P1S_STATUS, P1S_TABPV, P1S_CODPV,' +
        ' '
      'P1S_PACTD, '
      '   P1S_DATHOR_EVE)'
      'values'
      
        '  (:P1S_CODEMP, :P1S_LOTSEQ, :P1S_CHAVE, :P1S_CODCLI, :P1S_DATA_' +
        'INC, '
      ':P1S_USER_INC, '
      
        '   :P1S_DATA_FEC, :P1S_USER_FEC, :P1S_STATUS, :P1S_TABPV, :P1S_C' +
        'ODPV, '
      ':P1S_PACTD, '
      '   :P1S_DATHOR_EVE)')
    DeleteSQL.Strings = (
      'delete from CADP01_SOBRAS'
      'where'
      '  P1S_CODEMP = :OLD_P1S_CODEMP and'
      '  P1S_LOTSEQ = :OLD_P1S_LOTSEQ and'
      '  P1S_CHAVE = :OLD_P1S_CHAVE and'
      '  P1S_CODCLI = :OLD_P1S_CODCLI')
    Left = 456
    Top = 546
  end
  object U_LC1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLC1'
      'set'
      '  LC1_CODEMP = :LC1_CODEMP,'
      '  LC1_LOTSEQ = :LC1_LOTSEQ,'
      '  LC1_CHAVE = :LC1_CHAVE,'
      '  LC1_DTEMIS = :LC1_DTEMIS,'
      '  LC1_CODCLI = :LC1_CODCLI,'
      '  LC1_CODVEN = :LC1_CODVEN,'
      '  LC1_AOSCUI = :LC1_AOSCUI,'
      '  LC1_FONCUI = :LC1_FONCUI,'
      '  LC1_CARCON = :LC1_CARCON,'
      '  LC1_DATCON = :LC1_DATCON,'
      '  LC1_VALPRO = :LC1_VALPRO,'
      '  LC1_CONDPAG = :LC1_CONDPAG,'
      '  LC1_OBJETO = :LC1_OBJETO,'
      '  LC1_DIGRMS = :LC1_DIGRMS,'
      '  LC1_PCOAVI = :LC1_PCOAVI,'
      '  LC1_PCOPRZ = :LC1_PCOPRZ,'
      '  LC1_EXTTAV = :LC1_EXTTAV,'
      '  LC1_EXTUAV = :LC1_EXTUAV,'
      '  LC1_EXTPAV = :LC1_EXTPAV,'
      '  LC1_EXTTAP = :LC1_EXTTAP,'
      '  LC1_EXTPAP = :LC1_EXTPAP,'
      '  LC1_EXTUAP = :LC1_EXTUAP,'
      '  LC1_OBS1 = :LC1_OBS1,'
      '  LC1_OBS2 = :LC1_OBS2,'
      '  LC1_IMPCAB = :LC1_IMPCAB,'
      '  LC1_PRZENT1 = :LC1_PRZENT1,'
      '  LC1_PRZENT2 = :LC1_PRZENT2,'
      '  LC1_PRZENT3 = :LC1_PRZENT3,'
      '  LC1_DEC01 = :LC1_DEC01,'
      '  LC1_DEC02 = :LC1_DEC02,'
      '  LC1_DEC03 = :LC1_DEC03,'
      '  LC1_DEC04 = :LC1_DEC04,'
      '  LC1_DEC05 = :LC1_DEC05,'
      '  LC1_DEC06 = :LC1_DEC06,'
      '  LC1_DEC07 = :LC1_DEC07,'
      '  LC1_DEC08 = :LC1_DEC08,'
      '  LC1_DEC09 = :LC1_DEC09,'
      '  LC1_DEC10 = :LC1_DEC10,'
      '  LC1_BORDAGRADE = :LC1_BORDAGRADE,'
      '  LC1_SEPLOTEPREGAO = :LC1_SEPLOTEPREGAO,'
      '  LC1_PROPL01 = :LC1_PROPL01,'
      '  LC1_PROPL02 = :LC1_PROPL02,'
      '  LC1_NOMCLI = :LC1_NOMCLI,'
      '  LC1_NOMLOC = :LC1_NOMLOC,'
      '  LC1_UF = :LC1_UF,'
      '  LC1_CEP = :LC1_CEP,'
      '  LC1_CNPJ = :LC1_CNPJ,'
      '  LC1_IE = :LC1_IE,'
      '  LC1_FONE = :LC1_FONE,'
      '  LC1_ENDER = :LC1_ENDER,'
      '  LC1_BAIRRO = :LC1_BAIRRO,'
      '  LC1_DATHOR_INC = :LC1_DATHOR_INC,'
      '  LC1_CODUSR_INC = :LC1_CODUSR_INC,'
      '  LC1_CODUSR_ALT = :LC1_CODUSR_ALT,'
      '  LC1_DATHOR_ALT = :LC1_DATHOR_ALT,'
      '  LC1_EMAIL = :LC1_EMAIL,'
      '  LC1_TPPCO = :LC1_TPPCO,'
      '  LC1_STATUS = :LC1_STATUS,'
      '  LC1_CASASDEC = :LC1_CASASDEC'
      'where'
      '  LC1_CODEMP = :OLD_LC1_CODEMP and'
      '  LC1_CHAVE = :OLD_LC1_CHAVE and'
      '  LC1_DTEMIS = :OLD_LC1_DTEMIS')
    InsertSQL.Strings = (
      'insert into CADLC1'
      '  (LC1_CODEMP, LC1_LOTSEQ, LC1_CHAVE, LC1_DTEMIS, LC1_CODCLI, '
      'LC1_CODVEN, '
      '   LC1_AOSCUI, LC1_FONCUI, LC1_CARCON, LC1_DATCON, LC1_VALPRO, '
      'LC1_CONDPAG, '
      '   LC1_OBJETO, LC1_DIGRMS, LC1_PCOAVI, LC1_PCOPRZ, LC1_EXTTAV, '
      'LC1_EXTUAV, '
      '   LC1_EXTPAV, LC1_EXTTAP, LC1_EXTPAP, LC1_EXTUAP, LC1_OBS1, '
      'LC1_OBS2, '
      
        '   LC1_IMPCAB, LC1_PRZENT1, LC1_PRZENT2, LC1_PRZENT3, LC1_DEC01,' +
        ' '
      'LC1_DEC02, '
      
        '   LC1_DEC03, LC1_DEC04, LC1_DEC05, LC1_DEC06, LC1_DEC07, LC1_DE' +
        'C08, '
      'LC1_DEC09, '
      '   LC1_DEC10,  LC1_BORDAGRADE, LC1_SEPLOTEPREGAO,'
      'LC1_PROPL01, '
      
        '   LC1_PROPL02, LC1_NOMCLI, LC1_NOMLOC, LC1_UF, LC1_CEP, LC1_CNP' +
        'J, '
      'LC1_IE, '
      
        '   LC1_FONE, LC1_ENDER, LC1_BAIRRO, LC1_DATHOR_INC, LC1_CODUSR_I' +
        'NC, '
      'LC1_CODUSR_ALT, '
      
        '   LC1_DATHOR_ALT, LC1_EMAIL, LC1_TPPCO, LC1_STATUS, LC1_CASASDE' +
        'C)'
      'values'
      
        '  (:LC1_CODEMP, :LC1_LOTSEQ, :LC1_CHAVE, :LC1_DTEMIS, :LC1_CODCL' +
        'I, '
      ':LC1_CODVEN, '
      
        '   :LC1_AOSCUI, :LC1_FONCUI, :LC1_CARCON, :LC1_DATCON, :LC1_VALP' +
        'RO, '
      ':LC1_CONDPAG, '
      
        '   :LC1_OBJETO, :LC1_DIGRMS, :LC1_PCOAVI, :LC1_PCOPRZ, :LC1_EXTT' +
        'AV, '
      ':LC1_EXTUAV, '
      
        '   :LC1_EXTPAV, :LC1_EXTTAP, :LC1_EXTPAP, :LC1_EXTUAP, :LC1_OBS1' +
        ', '
      ':LC1_OBS2, '
      
        '   :LC1_IMPCAB, :LC1_PRZENT1, :LC1_PRZENT2, :LC1_PRZENT3, :LC1_D' +
        'EC01, '
      ':LC1_DEC02, '
      '   :LC1_DEC03, :LC1_DEC04, :LC1_DEC05, :LC1_DEC06, :LC1_DEC07, '
      ':LC1_DEC08, '
      '   :LC1_DEC09, :LC1_DEC10,  :LC1_BORDAGRADE,'
      ':LC1_SEPLOTEPREGAO,'
      
        '   :LC1_PROPL01, :LC1_PROPL02, :LC1_NOMCLI, :LC1_NOMLOC, :LC1_UF' +
        ', '
      ':LC1_CEP, '
      '   :LC1_CNPJ, :LC1_IE, :LC1_FONE, :LC1_ENDER, :LC1_BAIRRO, '
      ':LC1_DATHOR_INC, '
      
        '   :LC1_CODUSR_INC, :LC1_CODUSR_ALT, :LC1_DATHOR_ALT, :LC1_EMAIL' +
        ', '
      ':LC1_TPPCO, '
      '   :LC1_STATUS, :LC1_CASASDEC)')
    DeleteSQL.Strings = (
      'delete from CADLC1'
      'where'
      '  LC1_CODEMP = :OLD_LC1_CODEMP and'
      '  LC1_CHAVE = :OLD_LC1_CHAVE and'
      '  LC1_DTEMIS = :OLD_LC1_DTEMIS')
    Left = 399
    Top = 47
  end
  object SRC_PED02_SOBRAS_MP: TDataSource
    DataSet = TB_PED02_SOBRAS_MP
    Left = 743
    Top = 549
  end
  object TB_PED02_SOBRAS_MP: TQuery
    CachedUpdates = True
    BeforePost = TB_PED02_SOBRAS_MPBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = TB_PED02_SOBRAS_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select'
      '    *'
      ' from '
      '    cadp02_sobras_mp'
      ' where '
      '   P2Smp_CODEMP=0')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UP_PED02_SOBRAS_MP
    Left = 677
    Top = 549
    object TB_PED02_SOBRAS_MPP2SMP_CODEMP: TFloatField
      FieldName = 'P2SMP_CODEMP'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_CODEMP'
    end
    object TB_PED02_SOBRAS_MPP2SMP_LOTSEQ: TFloatField
      FieldName = 'P2SMP_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_LOTSEQ'
    end
    object TB_PED02_SOBRAS_MPP2SMP_CHAVE: TFloatField
      FieldName = 'P2SMP_CHAVE'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_CHAVE'
    end
    object TB_PED02_SOBRAS_MPNOMPRO_MP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO_MP'
      Size = 40
      Calculated = True
    end
    object TB_PED02_SOBRAS_MPP2SMP_ORIGEM: TFloatField
      FieldName = 'P2SMP_ORIGEM'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_ORIGEM'
    end
    object TB_PED02_SOBRAS_MPP2SMP_ITEM: TFloatField
      FieldName = 'P2SMP_ITEM'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_ITEM'
    end
    object TB_PED02_SOBRAS_MPP2SMP_QTD_QUE: TFloatField
      FieldName = 'P2SMP_QTD_QUE'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_QTD_QUE'
    end
    object TB_PED02_SOBRAS_MPP2SMP_CODPRO: TFloatField
      FieldName = 'P2SMP_CODPRO'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_CODPRO'
    end
    object TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI: TFloatField
      FieldName = 'P2SMP_CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_CODPRO_ORI'
    end
    object TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI: TFloatField
      FieldName = 'P2SMP_PRECO_UNI'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_PRECO_UNI'
    end
    object TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS: TFloatField
      FieldName = 'P2SMP_PRECO_CUS'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_PRECO_CUS'
    end
    object TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN: TFloatField
      FieldName = 'P2SMP_PRECO_VEN'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_PRECO_VEN'
    end
    object TB_PED02_SOBRAS_MPP2SMP_QTD_VEN: TFloatField
      FieldName = 'P2SMP_QTD_VEN'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_QTD_VEN'
    end
    object TB_PED02_SOBRAS_MPP2SMP_QTD_DEV: TFloatField
      FieldName = 'P2SMP_QTD_DEV'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_QTD_DEV'
    end
    object TB_PED02_SOBRAS_MPP2SMP_QTD_SOBRA: TFloatField
      FieldName = 'P2SMP_QTD_SOBRA'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_QTD_SOBRA'
    end
    object TB_PED02_SOBRAS_MPP2SMP_PRECO_ORI: TFloatField
      FieldName = 'P2SMP_PRECO_ORI'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_PRECO_ORI'
    end
    object TB_PED02_SOBRAS_MPP2SMP_ITEM_ORIGEM: TFloatField
      FieldName = 'P2SMP_ITEM_ORIGEM'
      Origin = 'SG_ASSOC.CADP02_SOBRAS_MP.P2SMP_ITEM_ORIGEM'
    end
  end
  object UP_PED02_SOBRAS_MP: TUpdateSQL
    ModifySQL.Strings = (
      'update cadp02_sobras_mp'
      'set'
      '  P2SMP_CODEMP = :P2SMP_CODEMP,'
      '  P2SMP_LOTSEQ = :P2SMP_LOTSEQ,'
      '  P2SMP_CHAVE = :P2SMP_CHAVE,'
      '  P2SMP_ORIGEM = :P2SMP_ORIGEM,'
      '  P2SMP_ITEM = :P2SMP_ITEM,'
      '  P2SMP_CODPRO = :P2SMP_CODPRO,'
      '  P2SMP_CODPRO_ORI = :P2SMP_CODPRO_ORI,'
      '  P2SMP_PRECO_UNI = :P2SMP_PRECO_UNI,'
      '  P2SMP_PRECO_CUS = :P2SMP_PRECO_CUS,'
      '  P2SMP_PRECO_VEN = :P2SMP_PRECO_VEN,'
      '  P2SMP_QTD_SOBRA = :P2SMP_QTD_SOBRA,'
      '  P2SMP_QTD_VEN = :P2SMP_QTD_VEN,'
      '  P2SMP_QTD_DEV = :P2SMP_QTD_DEV,'
      '  P2SMP_QTD_QUE = :P2SMP_QTD_QUE,'
      '  P2SMP_PRECO_ORI = :P2SMP_PRECO_ORI,'
      '  P2SMP_ITEM_ORIGEM = :P2SMP_ITEM_ORIGEM'
      'where'
      '  P2SMP_CODEMP = :OLD_P2SMP_CODEMP and'
      '  P2SMP_LOTSEQ = :OLD_P2SMP_LOTSEQ and'
      '  P2SMP_CHAVE = :OLD_P2SMP_CHAVE and'
      '  P2SMP_ORIGEM = :OLD_P2SMP_ORIGEM and'
      '  P2SMP_ITEM = :OLD_P2SMP_ITEM')
    InsertSQL.Strings = (
      'insert into cadp02_sobras_mp'
      '  (P2SMP_CODEMP, P2SMP_LOTSEQ, P2SMP_CHAVE, P2SMP_ORIGEM, '
      'P2SMP_ITEM, P2SMP_CODPRO, '
      '   P2SMP_CODPRO_ORI, P2SMP_PRECO_UNI, P2SMP_PRECO_CUS, '
      'P2SMP_PRECO_VEN, '
      '   P2SMP_QTD_SOBRA, P2SMP_QTD_VEN, P2SMP_QTD_DEV, '
      'P2SMP_QTD_QUE, P2SMP_PRECO_ORI, '
      '   P2SMP_ITEM_ORIGEM)'
      'values'
      '  (:P2SMP_CODEMP, :P2SMP_LOTSEQ, :P2SMP_CHAVE, :P2SMP_ORIGEM, '
      ':P2SMP_ITEM, '
      '   :P2SMP_CODPRO, :P2SMP_CODPRO_ORI, :P2SMP_PRECO_UNI, '
      ':P2SMP_PRECO_CUS, '
      '   :P2SMP_PRECO_VEN, :P2SMP_QTD_SOBRA, :P2SMP_QTD_VEN, '
      ':P2SMP_QTD_DEV, '
      '   :P2SMP_QTD_QUE, :P2SMP_PRECO_ORI, :P2SMP_ITEM_ORIGEM)')
    DeleteSQL.Strings = (
      'delete from cadp02_sobras_mp'
      'where'
      '  P2SMP_CODEMP = :OLD_P2SMP_CODEMP and'
      '  P2SMP_LOTSEQ = :OLD_P2SMP_LOTSEQ and'
      '  P2SMP_CHAVE = :OLD_P2SMP_CHAVE and'
      '  P2SMP_ORIGEM = :OLD_P2SMP_ORIGEM and'
      '  P2SMP_ITEM = :OLD_P2SMP_ITEM')
    Left = 710
    Top = 549
  end
  object DS_TPDRE: TDataSource
    DataSet = TB_TPDRE
    Left = 324
    Top = 536
  end
  object TB_TPDRE: TQuery
    CachedUpdates = True
    BeforePost = TB_TPDREBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = TB_TPDRECalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTPDRE')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UP_TPDRE
    Left = 252
    Top = 535
    object TB_TPDRETPD_CODEMP: TFloatField
      FieldName = 'TPD_CODEMP'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_CODEMP'
    end
    object TB_TPDRETPD_CHAVE: TStringField
      FieldName = 'TPD_CHAVE'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_CHAVE'
      Size = 6
    end
    object TB_TPDRETPD_DATA_INC: TDateTimeField
      FieldName = 'TPD_DATA_INC'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_DATA_INC'
    end
    object TB_TPDRETPD_USR_INC: TFloatField
      FieldName = 'TPD_USR_INC'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_USR_INC'
    end
    object TB_TPDRETPD_COMPOEM: TFloatField
      FieldName = 'TPD_COMPOEM'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_COMPOEM'
    end
    object TB_TPDRETPD_DESCRICAO: TStringField
      FieldName = 'TPD_DESCRICAO'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_DESCRICAO'
      Size = 50
    end
    object TB_TPDRECOMPOEM: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'COMPOEM'
      Calculated = True
    end
    object TB_TPDRETPD_DESPOP: TFloatField
      FieldName = 'TPD_DESPOP'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_DESPOP'
    end
    object TB_TPDRETPD_VINCULO: TFloatField
      FieldName = 'TPD_VINCULO'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_VINCULO'
    end
  end
  object UP_TPDRE: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTPDRE'
      'set'
      '  TPD_CODEMP = :TPD_CODEMP,'
      '  TPD_DESCRICAO = :TPD_DESCRICAO,'
      '  TPD_DATA_INC = :TPD_DATA_INC,'
      '  TPD_USR_INC = :TPD_USR_INC,'
      '  TPD_COMPOEM = :TPD_COMPOEM,'
      '  TPD_DESPOP = :TPD_DESPOP,'
      '  TPD_CHAVE = :TPD_CHAVE,'
      '  TPD_VINCULO = :TPD_VINCULO'
      'where'
      '  TPD_CODEMP = :OLD_TPD_CODEMP and'
      '  TPD_DESCRICAO = :OLD_TPD_DESCRICAO and'
      '  TPD_COMPOEM = :OLD_TPD_COMPOEM and'
      '  TPD_CHAVE = :OLD_TPD_CHAVE')
    InsertSQL.Strings = (
      'insert into CADTPDRE'
      '  (TPD_CODEMP, TPD_DESCRICAO, TPD_DATA_INC, TPD_USR_INC, '
      'TPD_COMPOEM, TPD_DESPOP, '
      '   TPD_CHAVE, TPD_VINCULO)'
      'values'
      '  (:TPD_CODEMP, :TPD_DESCRICAO, :TPD_DATA_INC, :TPD_USR_INC, '
      ':TPD_COMPOEM, '
      '   :TPD_DESPOP, :TPD_CHAVE, :TPD_VINCULO)')
    DeleteSQL.Strings = (
      'delete from CADTPDRE'
      'where'
      '  TPD_CODEMP = :OLD_TPD_CODEMP and'
      '  TPD_DESCRICAO = :OLD_TPD_DESCRICAO and'
      '  TPD_COMPOEM = :OLD_TPD_COMPOEM and'
      '  TPD_CHAVE = :OLD_TPD_CHAVE')
    Left = 288
    Top = 536
  end
  object Qr_Evento: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODNOV'
        DataType = ftFloat
      end
      item
        Name = 'STATUS'
        DataType = ftFloat
      end>
    Left = 80
    Top = 4
    object Qr_EventoCODNOV: TFloatField
      FieldName = 'CODNOV'
    end
    object Qr_EventoSTATUS: TFloatField
      FieldName = 'STATUS'
    end
  end
  object Src_MovPro: TDataSource
    DataSet = Tb_MovPro
    Left = 124
    Top = 538
  end
  object Tb_MovPro: TQuery
    CachedUpdates = True
    BeforePost = Tb_MovProBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CMOVPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = up_MovPro
    Left = 60
    Top = 537
    object Tb_MovProCMPCODEMP: TFloatField
      FieldName = 'CMPCODEMP'
      Origin = 'SG_ASSOC.CMOVPRO.CMPCODEMP'
    end
    object Tb_MovProCMPCODPRO: TFloatField
      FieldName = 'CMPCODPRO'
      Origin = 'SG_ASSOC.CMOVPRO.CMPCODPRO'
    end
    object Tb_MovProCMPCODUSR: TFloatField
      FieldName = 'CMPCODUSR'
      Origin = 'SG_ASSOC.CMOVPRO.CMPCODUSR'
    end
    object Tb_MovProCMPDATA: TDateTimeField
      FieldName = 'CMPDATA'
      Origin = 'SG_ASSOC.CMOVPRO.CMPDATA'
    end
    object Tb_MovProCMPLOTSEQ: TFloatField
      FieldName = 'CMPLOTSEQ'
      Origin = 'SG_ASSOC.CMOVPRO.CMPLOTSEQ'
    end
    object Tb_MovProCMPFORM: TStringField
      FieldName = 'CMPFORM'
      Origin = 'SG_ASSOC.CMOVPRO.CMPFORM'
      Size = 10
    end
    object Tb_MovProCMPTPMOV: TFloatField
      FieldName = 'CMPTPMOV'
      Origin = 'SG_ASSOC.CMOVPRO.CMPTPMOV'
    end
    object Tb_MovProCMPESTANT: TFloatField
      FieldName = 'CMPESTANT'
      Origin = 'SG_ASSOC.CMOVPRO.CMPESTANT'
    end
    object Tb_MovProCMPQTD: TFloatField
      FieldName = 'CMPQTD'
      Origin = 'SG_ASSOC.CMOVPRO.CMPQTD'
    end
    object Tb_MovProCMPOBS: TStringField
      FieldName = 'CMPOBS'
      Origin = 'SG_ASSOC.CMOVPRO.CMPOBS'
      Size = 200
    end
    object Tb_MovProCMPLOTE: TStringField
      FieldName = 'CMPLOTE'
      Origin = 'SG_ASSOC.CMOVPRO.CMPLOTE'
    end
    object Tb_MovProCMPFILIAL: TFloatField
      FieldName = 'CMPFILIAL'
    end
  end
  object up_MovPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CMOVPRO'
      'set'
      '  CMPCODEMP = :CMPCODEMP,'
      '  CMPCODUSR = :CMPCODUSR,'
      '  CMPDATA = :CMPDATA,'
      '  CMPLOTSEQ = :CMPLOTSEQ,'
      '  CMPCODPRO = :CMPCODPRO,'
      '  CMPLOTE = :CMPLOTE,'
      '  CMPFORM = :CMPFORM,'
      '  CMPTPMOV = :CMPTPMOV,'
      '  CMPESTANT = :CMPESTANT,'
      '  CMPQTD = :CMPQTD,'
      '  CMPOBS = :CMPOBS'
      'where'
      '  CMPCODEMP = :OLD_CMPCODEMP and'
      '  CMPLOTSEQ = :OLD_CMPLOTSEQ')
    InsertSQL.Strings = (
      'insert into CMOVPRO'
      '  (CMPCODEMP, CMPCODUSR, CMPDATA, CMPLOTSEQ, CMPCODPRO, '
      'CMPLOTE, CMPFORM, '
      '   CMPTPMOV, CMPESTANT, CMPQTD, CMPOBS)'
      'values'
      '  (:CMPCODEMP, :CMPCODUSR, :CMPDATA, :CMPLOTSEQ, :CMPCODPRO, '
      ':CMPLOTE, '
      '   :CMPFORM, :CMPTPMOV, :CMPESTANT, :CMPQTD, :CMPOBS)')
    DeleteSQL.Strings = (
      'delete from CMOVPRO'
      'where'
      '  CMPCODEMP = :OLD_CMPCODEMP and'
      '  CMPLOTSEQ = :OLD_CMPLOTSEQ')
    Left = 96
    Top = 538
  end
  object Src_InfGrid: TDataSource
    DataSet = Tb_InfGrid
    Left = 132
    Top = 578
  end
  object Tb_InfGrid: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADINFGRID')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_Inf_Grid
    Left = 60
    Top = 577
    object Tb_InfGridGCODEMP: TFloatField
      FieldName = 'GCODEMP'
      Origin = 'SG_ASSOC.CADINFGRID.GCODEMP'
    end
    object Tb_InfGridGCODUSR: TFloatField
      FieldName = 'GCODUSR'
      Origin = 'SG_ASSOC.CADINFGRID.GCODUSR'
    end
    object Tb_InfGridGFORMULARIO: TStringField
      FieldName = 'GFORMULARIO'
      Origin = 'SG_ASSOC.CADINFGRID.GFORMULARIO'
      Size = 50
    end
    object Tb_InfGridGNOMEGRID: TStringField
      FieldName = 'GNOMEGRID'
      Origin = 'SG_ASSOC.CADINFGRID.GNOMEGRID'
      Size = 50
    end
    object Tb_InfGridGCOLUMN: TFloatField
      FieldName = 'GCOLUMN'
      Origin = 'SG_ASSOC.CADINFGRID.GCOLUMN'
    end
    object Tb_InfGridGFIELD: TStringField
      FieldName = 'GFIELD'
      Origin = 'SG_ASSOC.CADINFGRID.GFIELD'
      Size = 50
    end
    object Tb_InfGridGWIDTH: TFloatField
      FieldName = 'GWIDTH'
      Origin = 'SG_ASSOC.CADINFGRID.GWIDTH'
    end
    object Tb_InfGridGTITLE: TStringField
      FieldName = 'GTITLE'
      Origin = 'SG_ASSOC.CADINFGRID.GTITLE'
      Size = 60
    end
  end
  object Up_Inf_Grid: TUpdateSQL
    ModifySQL.Strings = (
      'update CADINFGRID'
      'set'
      '  GCODEMP = :GCODEMP,'
      '  GCODUSR = :GCODUSR,'
      '  GFORMULARIO = :GFORMULARIO,'
      '  GNOMEGRID = :GNOMEGRID,'
      '  GCOLUMN = :GCOLUMN,'
      '  GFIELD = :GFIELD,'
      '  GWIDTH = :GWIDTH,'
      '  GTITLE = :GTITLE'
      'where'
      '  GCODEMP = :OLD_GCODEMP and'
      '  GCODUSR = :OLD_GCODUSR and'
      '  GFORMULARIO = :OLD_GFORMULARIO and'
      '  GNOMEGRID = :OLD_GNOMEGRID')
    InsertSQL.Strings = (
      'insert into CADINFGRID'
      '  (GCODEMP, GCODUSR, GFORMULARIO, GNOMEGRID, GCOLUMN, GFIELD, '
      'GWIDTH, GTITLE)'
      'values'
      
        '  (:GCODEMP, :GCODUSR, :GFORMULARIO, :GNOMEGRID, :GCOLUMN, :GFIE' +
        'LD, '
      ':GWIDTH, '
      '   :GTITLE)')
    DeleteSQL.Strings = (
      'delete from CADINFGRID'
      'where'
      '  GCODEMP = :OLD_GCODEMP and'
      '  GCODUSR = :OLD_GCODUSR and'
      '  GFORMULARIO = :OLD_GFORMULARIO and'
      '  GNOMEGRID = :OLD_GNOMEGRID')
    Left = 96
    Top = 578
  end
  object Tb_GerFin: TQuery
    DatabaseName = 'SG_ASSOC'
    UpdateMode = upWhereKeyOnly
    Left = 233
    Top = 616
  end
  object Query7: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 38
    Top = 315
  end
  object Query10: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 801
    Top = 143
  end
  object Query_Soma: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 817
    Top = 215
  end
  object Qr_Soma: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 809
    Top = 263
  end
  object Tb_ExTh: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADEXTH')
    Left = 801
    Top = 311
    object Tb_ExThCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADEXTH.CODEMP'
    end
    object Tb_ExThNOMETHREAD: TStringField
      FieldName = 'NOMETHREAD'
      Origin = 'SG_ASSOC.CADEXTH.NOMETHREAD'
    end
    object Tb_ExThNOMEPC: TStringField
      FieldName = 'NOMEPC'
      Origin = 'SG_ASSOC.CADEXTH.NOMEPC'
    end
    object Tb_ExThENDERMAC: TStringField
      FieldName = 'ENDERMAC'
      Origin = 'SG_ASSOC.CADEXTH.ENDERMAC'
    end
    object Tb_ExThSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADEXTH.STATUS'
    end
    object Tb_ExThHORAINICIO: TStringField
      FieldName = 'HORAINICIO'
      Origin = 'SG_ASSOC.CADEXTH.HORAINICIO'
    end
    object Tb_ExThHORAFIM: TStringField
      FieldName = 'HORAFIM'
      Origin = 'SG_ASSOC.CADEXTH.HORAFIM'
    end
  end
  object Src_Ped02_Canc: TDataSource
    DataSet = Tb_Ped02_Canc
    Left = 335
    Top = 582
  end
  object Tb_Ped02_Canc: TQuery
    CachedUpdates = True
    BeforePost = TB_PED02_SOBRAS_MPBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = TB_PED02_SOBRAS_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadp02_canc')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_Ped02_Canc
    Left = 253
    Top = 582
    object Tb_Ped02_CancP2EX_CODCAI: TFloatField
      FieldName = 'P2EX_CODCAI'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_CODCAI'
    end
    object Tb_Ped02_CancP2EX_DATHOR_EXC: TDateTimeField
      FieldName = 'P2EX_DATHOR_EXC'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_DATHOR_EXC'
    end
    object Tb_Ped02_CancP2EX_NUMEROCF: TFloatField
      FieldName = 'P2EX_NUMEROCF'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_NUMEROCF'
    end
    object Tb_Ped02_CancP2EX_CHAVE: TFloatField
      FieldName = 'P2EX_CHAVE'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_CHAVE'
    end
    object Tb_Ped02_CancP2EX_ITEMVALOR: TStringField
      FieldName = 'P2EX_ITEMVALOR'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_ITEMVALOR'
      Size = 100
    end
    object Tb_Ped02_CancP2EX_LOTSEQ: TFloatField
      FieldName = 'P2EX_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_LOTSEQ'
    end
    object Tb_Ped02_CancP2EX_CODEMP: TFloatField
      FieldName = 'P2EX_CODEMP'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_CODEMP'
    end
    object Tb_Ped02_CancP2EX_CODUSR_LOG: TFloatField
      FieldName = 'P2EX_CODUSR_LOG'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_CODUSR_LOG'
    end
    object Tb_Ped02_CancP2EX_NOMUSR_LOG: TStringField
      FieldName = 'P2EX_NOMUSR_LOG'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_NOMUSR_LOG'
      Size = 40
    end
    object Tb_Ped02_CancP2EX_CODUSR_SI: TFloatField
      FieldName = 'P2EX_CODUSR_SI'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_CODUSR_SI'
    end
    object Tb_Ped02_CancP2EX_NOMUSR_SI: TStringField
      FieldName = 'P2EX_NOMUSR_SI'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_NOMUSR_SI'
      Size = 40
    end
    object Tb_Ped02_CancP2EX_NOMECOMPUTADOR: TStringField
      FieldName = 'P2EX_NOMECOMPUTADOR'
      Origin = 'SG_ASSOC.CADP02_CANC.P2EX_NOMECOMPUTADOR'
      Size = 40
    end
  end
  object Up_Ped02_Canc: TUpdateSQL
    ModifySQL.Strings = (
      'update cadp02_canc'
      'set'
      '  P2EX_CODCAI = :P2EX_CODCAI,'
      '  P2EX_DATHOR_EXC = :P2EX_DATHOR_EXC,'
      '  P2EX_NUMEROCF = :P2EX_NUMEROCF,'
      '  P2EX_CHAVE = :P2EX_CHAVE,'
      '  P2EX_ITEMVALOR = :P2EX_ITEMVALOR,'
      '  P2EX_LOTSEQ = :P2EX_LOTSEQ,'
      '  P2EX_CODEMP = :P2EX_CODEMP,'
      '  P2EX_CODUSR_LOG = :P2EX_CODUSR_LOG,'
      '  P2EX_NOMUSR_LOG = :P2EX_NOMUSR_LOG,'
      '  P2EX_CODUSR_SI = :P2EX_CODUSR_SI,'
      '  P2EX_NOMUSR_SI = :P2EX_NOMUSR_SI,'
      '  P2EX_NOMECOMPUTADOR = :P2EX_NOMECOMPUTADOR'
      'where'
      '  P2EX_CODCAI = :OLD_P2EX_CODCAI and'
      '  P2EX_DATHOR_EXC = :OLD_P2EX_DATHOR_EXC and'
      '  P2EX_NUMEROCF = :OLD_P2EX_NUMEROCF and'
      '  P2EX_CHAVE = :OLD_P2EX_CHAVE and'
      '  P2EX_LOTSEQ = :OLD_P2EX_LOTSEQ and'
      '  P2EX_CODEMP = :OLD_P2EX_CODEMP and'
      '  P2EX_NOMECOMPUTADOR = :OLD_P2EX_NOMECOMPUTADOR')
    InsertSQL.Strings = (
      'insert into cadp02_canc'
      '  (P2EX_CODCAI, P2EX_DATHOR_EXC, P2EX_NUMEROCF, P2EX_CHAVE, '
      'P2EX_ITEMVALOR, '
      '   P2EX_LOTSEQ, P2EX_CODEMP, P2EX_CODUSR_LOG, P2EX_NOMUSR_LOG, '
      'P2EX_CODUSR_SI, '
      '   P2EX_NOMUSR_SI, P2EX_NOMECOMPUTADOR)'
      'values'
      '  (:P2EX_CODCAI, :P2EX_DATHOR_EXC, :P2EX_NUMEROCF, :P2EX_CHAVE, '
      ':P2EX_ITEMVALOR, '
      '   :P2EX_LOTSEQ, :P2EX_CODEMP, :P2EX_CODUSR_LOG, '
      ':P2EX_NOMUSR_LOG, :P2EX_CODUSR_SI, '
      '   :P2EX_NOMUSR_SI, :P2EX_NOMECOMPUTADOR)')
    DeleteSQL.Strings = (
      'delete from cadp02_canc'
      'where'
      '  P2EX_CODCAI = :OLD_P2EX_CODCAI and'
      '  P2EX_DATHOR_EXC = :OLD_P2EX_DATHOR_EXC and'
      '  P2EX_NUMEROCF = :OLD_P2EX_NUMEROCF and'
      '  P2EX_CHAVE = :OLD_P2EX_CHAVE and'
      '  P2EX_LOTSEQ = :OLD_P2EX_LOTSEQ and'
      '  P2EX_CODEMP = :OLD_P2EX_CODEMP and'
      '  P2EX_NOMECOMPUTADOR = :OLD_P2EX_NOMECOMPUTADOR')
    Left = 294
    Top = 582
  end
  object Src_CADCONQ: TDataSource
    DataSet = Tb_CADCONQ
    Left = 484
    Top = 598
  end
  object Tb_CADCONQ: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CADCONQCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCONQ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_CADCONQ
    Left = 412
    Top = 597
    object Tb_CADCONQCQ_CODEMP: TFloatField
      FieldName = 'CQ_CODEMP'
      Origin = 'SG_ASSOC.CADCONQ.CQ_CODEMP'
    end
    object Tb_CADCONQCQ_CHAVE: TFloatField
      FieldName = 'CQ_CHAVE'
      Origin = 'SG_ASSOC.CADCONQ.CQ_CHAVE'
    end
    object Tb_CADCONQCQ_TIPO: TFloatField
      FieldName = 'CQ_TIPO'
      Origin = 'SG_ASSOC.CADCONQ.CQ_TIPO'
    end
    object Tb_CADCONQCQ_NOME: TStringField
      FieldName = 'CQ_NOME'
      Origin = 'SG_ASSOC.CADCONQ.CQ_NOME'
      Size = 60
    end
    object Tb_CADCONQCQ_OK: TFloatField
      FieldName = 'CQ_OK'
      Origin = 'SG_ASSOC.CADCONQ.CQ_OK'
    end
    object Tb_CADCONQselecionado: TStringField
      FieldKind = fkCalculated
      FieldName = 'selecionado'
      Size = 1
      Calculated = True
    end
  end
  object Up_CADCONQ: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCONQ'
      'set'
      '  CQ_CODEMP = :CQ_CODEMP,'
      '  CQ_CHAVE = :CQ_CHAVE,'
      '  CQ_TIPO = :CQ_TIPO,'
      '  CQ_NOME = :CQ_NOME,'
      '  CQ_OK = :CQ_OK'
      'where'
      '  CQ_CODEMP = :OLD_CQ_CODEMP and'
      '  CQ_CHAVE = :OLD_CQ_CHAVE and'
      '  CQ_TIPO = :OLD_CQ_TIPO and'
      '  CQ_NOME = :OLD_CQ_NOME')
    InsertSQL.Strings = (
      'insert into CADCONQ'
      '  (CQ_CODEMP, CQ_CHAVE, CQ_TIPO, CQ_NOME, CQ_OK)'
      'values'
      '  (:CQ_CODEMP, :CQ_CHAVE, :CQ_TIPO, :CQ_NOME, :CQ_OK)')
    DeleteSQL.Strings = (
      'delete from CADCONQ'
      'where'
      '  CQ_CODEMP = :OLD_CQ_CODEMP and'
      '  CQ_CHAVE = :OLD_CQ_CHAVE and'
      '  CQ_TIPO = :OLD_CQ_TIPO and'
      '  CQ_NOME = :OLD_CQ_NOME')
    Left = 448
    Top = 598
  end
  object Src_RegRec: TDataSource
    DataSet = Tb_RegRec
    Left = 636
    Top = 594
  end
  object Tb_RegRec: TQuery
    CachedUpdates = True
    AfterInsert = Tb_RegRecAfterInsert
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_RegRecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADREGREC')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_RegRec
    Left = 540
    Top = 593
    object Tb_RegRecRRCODEMP: TFloatField
      FieldName = 'RRCODEMP'
      Origin = 'SG_ASSOC.CADREGREC.RRCODEMP'
    end
    object Tb_RegRecRRCODUSR: TFloatField
      FieldName = 'RRCODUSR'
      Origin = 'SG_ASSOC.CADREGREC.RRCODUSR'
    end
    object Tb_RegRecRRDATINC: TDateTimeField
      FieldName = 'RRDATINC'
      Origin = 'SG_ASSOC.CADREGREC.RRDATINC'
    end
    object Tb_RegRecRRPROTOCOLO: TStringField
      FieldName = 'RRPROTOCOLO'
      Origin = 'SG_ASSOC.CADREGREC.RRPROTOCOLO'
      Size = 12
    end
    object Tb_RegRecRRDATOCO: TDateTimeField
      FieldName = 'RRDATOCO'
      Origin = 'SG_ASSOC.CADREGREC.RRDATOCO'
    end
    object Tb_RegRecRROCORRENCIA: TMemoField
      FieldName = 'RROCORRENCIA'
      Origin = 'SG_ASSOC.CADREGREC.RROCORRENCIA'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_RegRecRRTIPO: TFloatField
      FieldName = 'RRTIPO'
      Origin = 'SG_ASSOC.CADREGREC.RRTIPO'
    end
    object Tb_RegRecRRCODIGO: TFloatField
      FieldName = 'RRCODIGO'
      Origin = 'SG_ASSOC.CADREGREC.RRCODIGO'
    end
    object Tb_RegRecRRCODPRO: TFloatField
      FieldName = 'RRCODPRO'
      Origin = 'SG_ASSOC.CADREGREC.RRCODPRO'
    end
    object Tb_RegRecRRQTD: TFloatField
      FieldName = 'RRQTD'
      Origin = 'SG_ASSOC.CADREGREC.RRQTD'
    end
    object Tb_RegRecRRLOTEEVCTO: TStringField
      FieldName = 'RRLOTEEVCTO'
      Origin = 'SG_ASSOC.CADREGREC.RRLOTEEVCTO'
      Size = 60
    end
    object Tb_RegRecRRPARECER: TFloatField
      FieldName = 'RRPARECER'
      Origin = 'SG_ASSOC.CADREGREC.RRPARECER'
    end
    object Tb_RegRecRRRESOLUCAO: TMemoField
      FieldName = 'RRRESOLUCAO'
      Origin = 'SG_ASSOC.CADREGREC.RRRESOLUCAO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_RegRecNOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 60
      Calculated = True
    end
    object Tb_RegRecNOMCOD: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMCOD'
      Size = 60
      Calculated = True
    end
  end
  object Up_RegRec: TUpdateSQL
    ModifySQL.Strings = (
      'update CADREGREC'
      'set'
      '  RRCODEMP = :RRCODEMP,'
      '  RRCODUSR = :RRCODUSR,'
      '  RRDATINC = :RRDATINC,'
      '  RRPROTOCOLO = :RRPROTOCOLO,'
      '  RRDATOCO = :RRDATOCO,'
      '  RROCORRENCIA = :RROCORRENCIA,'
      '  RRTIPO = :RRTIPO,'
      '  RRCODIGO = :RRCODIGO,'
      '  RRCODPRO = :RRCODPRO,'
      '  RRQTD = :RRQTD,'
      '  RRLOTEEVCTO = :RRLOTEEVCTO,'
      '  RRPARECER = :RRPARECER,'
      '  RRRESOLUCAO = :RRRESOLUCAO'
      'where'
      '  RRCODEMP = :OLD_RRCODEMP and'
      '  RRPROTOCOLO = :OLD_RRPROTOCOLO')
    InsertSQL.Strings = (
      'insert into CADREGREC'
      '  (RRCODEMP, RRCODUSR, RRDATINC, RRPROTOCOLO, RRDATOCO, '
      'RROCORRENCIA, RRTIPO, '
      '   RRCODIGO, RRCODPRO, RRQTD, RRLOTEEVCTO, RRPARECER, '
      'RRRESOLUCAO)'
      'values'
      '  (:RRCODEMP, :RRCODUSR, :RRDATINC, :RRPROTOCOLO, :RRDATOCO, '
      ':RROCORRENCIA, '
      
        '   :RRTIPO, :RRCODIGO, :RRCODPRO, :RRQTD, :RRLOTEEVCTO, :RRPAREC' +
        'ER, '
      ':RRRESOLUCAO)')
    DeleteSQL.Strings = (
      'delete from CADREGREC'
      'where'
      '  RRCODEMP = :OLD_RRCODEMP and'
      '  RRPROTOCOLO = :OLD_RRPROTOCOLO')
    Left = 584
    Top = 594
  end
  object cds_retorno: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 400
    object cds_retornoce_motivo: TMemoField
      FieldName = 'ce_motivo'
      BlobType = ftMemo
    end
    object cds_retornoce_coderro: TStringField
      FieldName = 'ce_coderro'
      Size = 10
    end
    object cds_retornoce_codigo: TStringField
      FieldName = 'ce_codigo'
    end
  end
end
