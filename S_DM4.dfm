object DM4: TDM4
  OldCreateOrder = False
  Left = 490
  Top = 113
  Height = 614
  Width = 835
  object Tb_AL1: TQuery
    CachedUpdates = True
    AfterInsert = Tb_AL1AfterInsert
    BeforePost = Tb_AL1BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_AL1CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    Filter = 'AL1STATUS<>9'
    Filtered = True
    SQL.Strings = (
      'Select * from CADAL1 where'
      'AL1CODEMP like :CODEMP and'
      'AL1LOTE       like :LOTE       and'
      'AL1DTPREV  like :DTPREV')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_AL1
    Left = 233
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTPREV'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_AL1AL1CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'AL1CODEMP'
      Origin = 'SG_ASSOC.CADAL1.AL1CODEMP'
    end
    object Tb_AL1AL1LOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'AL1LOTE'
      Origin = 'SG_ASSOC.CADAL1.AL1LOTE'
    end
    object Tb_AL1AL1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'AL1DATA'
      Origin = 'SG_ASSOC.CADAL1.AL1DATA'
    end
    object Tb_AL1AL1DTPREV: TDateTimeField
      DisplayLabel = 'Data Ajuste'
      FieldName = 'AL1DTPREV'
      Origin = 'SG_ASSOC.CADAL1.AL1DTPREV'
    end
    object Tb_AL1AL1DTCON: TDateTimeField
      DisplayLabel = 'Data Confirma'#231#227'o'
      FieldName = 'AL1DTCON'
      Origin = 'SG_ASSOC.CADAL1.AL1DTCON'
    end
    object Tb_AL1AL1USRCON: TFloatField
      DisplayLabel = 'Usu'#225'rio Confirma'#231#227'o'
      FieldName = 'AL1USRCON'
      Origin = 'SG_ASSOC.CADAL1.AL1USRCON'
    end
    object Tb_AL1AL1HORCON: TStringField
      DisplayLabel = 'Hora Confirma'#231#227'o'
      FieldName = 'AL1HORCON'
      Origin = 'SG_ASSOC.CADAL1.AL1HORCON'
      Size = 10
    end
    object Tb_AL1AL1PORC: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'AL1PORC'
      Origin = 'SG_ASSOC.CADAL1.AL1PORC'
    end
    object Tb_AL1AL1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'AL1TIPO'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPO'
    end
    object Tb_AL1AL1CODUSR: TFloatField
      DisplayLabel = 'C'#243'digo do Usu'#225'rio'
      FieldName = 'AL1CODUSR'
      Origin = 'SG_ASSOC.CADAL1.AL1CODUSR'
    end
    object Tb_AL1tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipo'
      Size = 10
      Calculated = True
    end
    object Tb_AL1AL1OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'AL1OBS'
      Origin = 'SG_ASSOC.CADAL1.AL1OBS'
      Size = 40
    end
    object Tb_AL1AL1STATUS: TFloatField
      FieldName = 'AL1STATUS'
      Origin = 'SG_ASSOC.CADAL1.AL1STATUS'
    end
    object Tb_AL1AL1LOTSEQ: TFloatField
      FieldName = 'AL1LOTSEQ'
      Origin = 'SG_ASSOC.CADAL1.AL1LOTSEQ'
    end
    object Tb_AL1AL1PCOFAB: TFloatField
      FieldName = 'AL1PCOFAB'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOFAB'
    end
    object Tb_AL1AL1PCOVDA: TFloatField
      FieldName = 'AL1PCOVDA'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOVDA'
    end
    object Tb_AL1AL1PCOMAX: TFloatField
      FieldName = 'AL1PCOMAX'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOMAX'
    end
    object Tb_AL1AL1TIPOPCO: TFloatField
      FieldName = 'AL1TIPOPCO'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPOPCO'
    end
    object Tb_AL1AL1MAXVDA: TFloatField
      FieldName = 'AL1MAXVDA'
      Origin = 'SG_ASSOC.CADAL1.AL1MAXVDA'
    end
    object Tb_AL1AL1TPCO01: TFloatField
      FieldName = 'AL1TPCO01'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO01'
    end
    object Tb_AL1AL1TPCO02: TFloatField
      FieldName = 'AL1TPCO02'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO02'
    end
    object Tb_AL1AL1TPCO03: TFloatField
      FieldName = 'AL1TPCO03'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO03'
    end
    object Tb_AL1AL1PCOCUS: TFloatField
      FieldName = 'AL1PCOCUS'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOCUS'
    end
  end
  object Tb_AL2: TQuery
    CachedUpdates = True
    BeforePost = Tb_AL2BeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADAL2 where'
      'AL2CODEMP like :CODEMP and'
      'AL2LOTE       like :LOTE      ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_AL2
    Left = 233
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTE'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_AL2AL2CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'AL2CODEMP'
      Origin = 'SG_ASSOC.CADAL2.AL2CODEMP'
    end
    object Tb_AL2AL2LOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'AL2LOTE'
      Origin = 'SG_ASSOC.CADAL2.AL2LOTE'
    end
    object Tb_AL2AL2ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'AL2ORDEM'
      Origin = 'SG_ASSOC.CADAL2.AL2ORDEM'
    end
    object Tb_AL2AL2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'AL2CODPRO'
      Origin = 'SG_ASSOC.CADAL2.AL2CODPRO'
    end
    object Tb_AL2AL2TIPALT: TFloatField
      FieldName = 'AL2TIPALT'
      Origin = 'SG_ASSOC.CADAL2.AL2TIPALT'
    end
    object Tb_AL2AL2PCOATU1: TFloatField
      FieldName = 'AL2PCOATU1'
      Origin = 'SG_ASSOC.CADAL2.AL2PCOATU1'
    end
    object Tb_AL2AL2PCONOV1: TFloatField
      FieldName = 'AL2PCONOV1'
      Origin = 'SG_ASSOC.CADAL2.AL2PCONOV1'
    end
    object Tb_AL2AL2LOTSEQ: TFloatField
      FieldName = 'AL2LOTSEQ'
      Origin = 'SG_ASSOC.CADAL2.AL2LOTSEQ'
    end
    object Tb_AL2AL2DTUAPCO: TDateTimeField
      FieldName = 'AL2DTUAPCO'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUAPCO'
    end
    object Tb_AL2AL2FABATU: TFloatField
      FieldName = 'AL2FABATU'
      Origin = 'SG_ASSOC.CADAL2.AL2FABATU'
    end
    object Tb_AL2AL2FABNOV: TFloatField
      FieldName = 'AL2FABNOV'
      Origin = 'SG_ASSOC.CADAL2.AL2FABNOV'
    end
    object Tb_AL2AL2DTUAFAB: TDateTimeField
      FieldName = 'AL2DTUAFAB'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUAFAB'
    end
    object Tb_AL2AL2PMCATU: TFloatField
      FieldName = 'AL2PMCATU'
      Origin = 'SG_ASSOC.CADAL2.AL2PMCATU'
    end
    object Tb_AL2AL2PMCNOV: TFloatField
      FieldName = 'AL2PMCNOV'
      Origin = 'SG_ASSOC.CADAL2.AL2PMCNOV'
    end
    object Tb_AL2AL2DTUAPMC: TDateTimeField
      FieldName = 'AL2DTUAPMC'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUAPMC'
    end
    object Tb_AL2AL2PCOANT: TFloatField
      FieldName = 'AL2PCOANT'
      Origin = 'SG_ASSOC.CADAL2.AL2PCOANT'
    end
    object Tb_AL2AL2FABANT: TFloatField
      FieldName = 'AL2FABANT'
      Origin = 'SG_ASSOC.CADAL2.AL2FABANT'
    end
    object Tb_AL2AL2PMCANT: TFloatField
      FieldName = 'AL2PMCANT'
      Origin = 'SG_ASSOC.CADAL2.AL2PMCANT'
    end
    object Tb_AL2AL2DTUA1: TDateTimeField
      FieldName = 'AL2DTUA1'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUA1'
    end
    object Tb_AL2AL2PCOATU2: TFloatField
      FieldName = 'AL2PCOATU2'
      Origin = 'SG_ASSOC.CADAL2.AL2PCOATU2'
    end
    object Tb_AL2AL2PCONOV2: TFloatField
      FieldName = 'AL2PCONOV2'
      Origin = 'SG_ASSOC.CADAL2.AL2PCONOV2'
    end
    object Tb_AL2AL2DTUA2: TDateTimeField
      FieldName = 'AL2DTUA2'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUA2'
    end
    object Tb_AL2AL2PCOATU3: TFloatField
      FieldName = 'AL2PCOATU3'
      Origin = 'SG_ASSOC.CADAL2.AL2PCOATU3'
    end
    object Tb_AL2AL2PCONOV3: TFloatField
      FieldName = 'AL2PCONOV3'
      Origin = 'SG_ASSOC.CADAL2.AL2PCONOV3'
    end
    object Tb_AL2AL2DTUA3: TDateTimeField
      FieldName = 'AL2DTUA3'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUA3'
    end
    object Tb_AL2AL2CUSANT: TFloatField
      FieldName = 'AL2CUSANT'
      Origin = 'SG_ASSOC.CADAL2.AL2CUSANT'
    end
    object Tb_AL2AL2CUSATU: TFloatField
      FieldName = 'AL2CUSATU'
      Origin = 'SG_ASSOC.CADAL2.AL2CUSATU'
    end
    object Tb_AL2AL2CUSNOV: TFloatField
      FieldName = 'AL2CUSNOV'
      Origin = 'SG_ASSOC.CADAL2.AL2CUSNOV'
    end
    object Tb_AL2AL2DTUACUS: TDateTimeField
      FieldName = 'AL2DTUACUS'
      Origin = 'SG_ASSOC.CADAL2.AL2DTUACUS'
    end
  end
  object Src_AL1: TDataSource
    DataSet = Tb_AL1
    Left = 289
    Top = 7
  end
  object Src_AL2: TDataSource
    DataSet = Tb_AL2
    Left = 289
    Top = 51
  end
  object Tb_Usr: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_UsrBeforeInsert
    AfterInsert = Tb_UsrAfterInsert
    BeforePost = Tb_UsrBeforePost
    AfterPost = c
    AfterCancel = Tb_UsrAfterCancel
    BeforeDelete = Tb_AL1AfterDelete
    AfterDelete = c
    OnCalcFields = Tb_UsrCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADUSR')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Usr
    Left = 608
    Top = 328
    object Tb_UsrCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADUSR.CODEMP'
    end
    object Tb_UsrCODUSR: TFloatField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'CODUSR'
      Origin = 'SG_ASSOC.CADUSR.CODUSR'
    end
    object Tb_UsrNOMUSR: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'NOMUSR'
      Origin = 'SG_ASSOC.CADUSR.NOMUSR'
      Size = 40
    end
    object Tb_UsrCODCAR: TFloatField
      DisplayLabel = 'Cargo'
      FieldName = 'CODCAR'
      Origin = 'SG_ASSOC.CADUSR.CODCAR'
    end
    object Tb_UsrCODVEN: TFloatField
      DisplayLabel = 'Vendedor'
      FieldName = 'CODVEN'
      Origin = 'SG_ASSOC.CADUSR.CODVEN'
    end
    object Tb_UsrSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SG_ASSOC.CADUSR.SENHA'
    end
    object Tb_UsrENDERECOIP: TStringField
      DisplayLabel = 'Endere'#231'o IP'
      FieldName = 'ENDERECOIP'
      Origin = 'SG_ASSOC.CADUSR.ENDERECOIP'
      Size = 40
    end
    object Tb_Usrnomcar: TStringField
      DisplayLabel = 'Nome do Cargo'
      FieldKind = fkCalculated
      FieldName = 'nomcar'
      Size = 40
      Calculated = True
    end
    object Tb_Usrnomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_UsrDIANAS: TFloatField
      FieldName = 'DIANAS'
      Origin = 'SG_ASSOC.CADUSR.DIANAS'
    end
    object Tb_UsrMESNAS: TFloatField
      FieldName = 'MESNAS'
      Origin = 'SG_ASSOC.CADUSR.MESNAS'
    end
    object Tb_UsrUSUARIO: TFloatField
      FieldName = 'USUARIO'
      Origin = 'SG_ASSOC.CADUSR.USUARIO'
    end
    object Tb_UsrNAME: TStringField
      FieldName = 'NAME'
      Origin = 'SG_ASSOC.CADUSR.NAME'
      Size = 30
    end
    object Tb_UsrTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADUSR.TFONTE'
    end
    object Tb_UsrCOLOR: TStringField
      FieldName = 'COLOR'
      Origin = 'SG_ASSOC.CADUSR.COLOR'
      Size = 30
    end
    object Tb_UsrFUNDO_BTREE: TStringField
      FieldName = 'FUNDO_BTREE'
      Origin = 'SG_ASSOC.CADUSR.FUNDO_BTREE'
    end
    object Tb_UsrUSR_PREVLIBSEN: TFloatField
      DisplayLabel = 'Previl'#233'gios para Liberar Senhas a Outros Usu'#225'rios'
      FieldName = 'USR_PREVLIBSEN'
      Origin = 'SG_ASSOC.CADUSR.USR_PREVLIBSEN'
    end
    object Tb_UsrUSR_STATUSLIBSEN: TFloatField
      DisplayLabel = 'Status de Libera'#231#227'o 0-Bloqueado 1-Ativo'
      FieldName = 'USR_STATUSLIBSEN'
      Origin = 'SG_ASSOC.CADUSR.USR_STATUSLIBSEN'
    end
    object Tb_UsrUSR_CODCAI: TFloatField
      FieldName = 'USR_CODCAI'
      Origin = 'SG_ASSOC.CADUSR.USR_CODCAI'
    end
    object Tb_UsrUSR_PREVLIBPEDBLQ: TFloatField
      FieldName = 'USR_PREVLIBPEDBLQ'
      Origin = 'SG_ASSOC.CADUSR.USR_PREVLIBPEDBLQ'
    end
    object Tb_UsrUSR_STATUSLIBPEDBLQ: TFloatField
      FieldName = 'USR_STATUSLIBPEDBLQ'
      Origin = 'SG_ASSOC.CADUSR.USR_STATUSLIBPEDBLQ'
    end
    object Tb_UsrCODSUP: TFloatField
      FieldName = 'CODSUP'
      Origin = 'SG_ASSOC.CADUSR.CODSUP'
    end
    object Tb_Usrnomsup: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsup'
      Size = 40
      Calculated = True
    end
    object Tb_UsrUSR_ESTMIN: TFloatField
      FieldName = 'USR_ESTMIN'
      Origin = 'SGE_172.CADUSR.USR_ESTMIN'
    end
    object Tb_UsrUSR_AGENDA: TFloatField
      FieldName = 'USR_AGENDA'
      Origin = 'SGE_67.CADUSR.USR_AGENDA'
    end
    object Tb_UsrUSR_DATMOS: TDateTimeField
      FieldName = 'USR_DATMOS'
      Origin = 'SGE_67.CADUSR.USR_DATMOS'
    end
    object Tb_UsrUSR_DATHOR: TDateTimeField
      FieldName = 'USR_DATHOR'
      Origin = 'SGE_67.CADUSR.USR_DATHOR'
    end
    object Tb_UsrCODUSR_EVE: TFloatField
      FieldName = 'CODUSR_EVE'
      Origin = 'SG_ASSOC.CADUSR.CODUSR_EVE'
    end
    object Tb_UsrUSR_DATHOR_REP: TDateTimeField
      FieldName = 'USR_DATHOR_REP'
      Origin = 'SG_ASSOC.CADUSR.USR_DATHOR_REP'
    end
    object Tb_UsrDATHOR_EVE: TDateTimeField
      FieldName = 'DATHOR_EVE'
      Origin = 'SG_ASSOC.CADUSR.DATHOR_EVE'
    end
    object Tb_UsrEMAILUSR: TStringField
      FieldName = 'EMAILUSR'
      Origin = 'SG_ASSOC.CADUSR.EMAILUSR'
      Size = 60
    end
    object Tb_UsrSENHAEMAILUSR: TStringField
      FieldName = 'SENHAEMAILUSR'
      Origin = 'SG_ASSOC.CADUSR.SENHAEMAILUSR'
      Size = 60
    end
    object Tb_UsrUSR_CODDEP_PADRAO: TStringField
      FieldName = 'USR_CODDEP_PADRAO'
      Origin = 'SG_ASSOC.CADUSR.USR_CODDEP_PADRAO'
      Size = 6
    end
    object Tb_UsrUSR_SITCAD: TFloatField
      FieldName = 'USR_SITCAD'
      Origin = 'SG_ASSOC.CADUSR.USR_SITCAD'
    end
    object Tb_UsrUSR_DESCMAX: TFloatField
      FieldName = 'USR_DESCMAX'
    end
    object Tb_Usrnivel_pdv: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nivel_pdv'
      Calculated = True
    end
    object Tb_UsrUSR_DESCMAX_MASTER: TFloatField
      FieldName = 'USR_DESCMAX_MASTER'
    end
    object Tb_UsrUSR_SENHA_NEW: TStringField
      FieldName = 'USR_SENHA_NEW'
      Origin = 'SG_ASSOC.CADUSR.USR_SENHA_NEW'
      Size = 254
    end
  end
  object Src_Usr: TDataSource
    DataSet = Tb_Usr
    Left = 661
    Top = 328
  end
  object Tb_Ace: TQuery
    CachedUpdates = True
    BeforePost = Tb_AceBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * from CADACE')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ace
    Left = 113
    Top = 360
    object Tb_AceCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADACE.CODEMP'
    end
    object Tb_AceCODCAR: TFloatField
      FieldName = 'CODCAR'
      Origin = 'SG_ASSOC.CADACE.CODCAR'
    end
    object Tb_AceMENU: TStringField
      FieldName = 'MENU'
      Origin = 'SG_ASSOC.CADACE.MENU'
    end
  end
  object Src_Ace: TDataSource
    DataSet = Tb_Ace
    Left = 169
    Top = 360
  end
  object Tb_Par02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Par02BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Par02CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPAR02 '
      'where '
      'PA2CODEMP like :CODEMP and'
      'PA2CODIGO  like :CODIGO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Par02
    Left = 475
    Top = 475
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Par02PA2CODEMP: TFloatField
      FieldName = 'PA2CODEMP'
      Origin = 'SG_ASSOC.CADPAR02.PA2CODEMP'
    end
    object Tb_Par02PA2CODIGO: TFloatField
      FieldName = 'PA2CODIGO'
      Origin = 'SG_ASSOC.CADPAR02.PA2CODIGO'
    end
    object Tb_Par02PA2PDSN: TStringField
      FieldName = 'PA2PDSN'
      Origin = 'SG_ASSOC.CADPAR02.PA2PDSN'
      Size = 1
    end
    object Tb_Par02PA2SENHA: TStringField
      FieldName = 'PA2SENHA'
      Origin = 'SG_ASSOC.CADPAR02.PA2SENHA'
    end
    object Tb_Par02senhageral: TStringField
      FieldKind = fkCalculated
      FieldName = 'senhageral'
      Calculated = True
    end
    object Tb_Par02PA2CODUSR: TFloatField
      FieldName = 'PA2CODUSR'
      Origin = 'SG_ASSOC.CADPAR02.PA2CODUSR'
    end
  end
  object Src_Par02: TDataSource
    DataSet = Tb_Par02
    Left = 533
    Top = 475
  end
  object Tb_Par01: TQuery
    CachedUpdates = True
    BeforePost = Tb_Par01BeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPAR')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Par01
    Left = 475
    Top = 423
    object Tb_Par01PCODEMP: TFloatField
      FieldName = 'PCODEMP'
      Origin = 'SG_ASSOC.CADPAR.PCODEMP'
    end
    object Tb_Par01PCODSEQ: TFloatField
      FieldName = 'PCODSEQ'
      Origin = 'SG_ASSOC.CADPAR.PCODSEQ'
    end
    object Tb_Par01PNUMPED_LS: TFloatField
      FieldName = 'PNUMPED_LS'
      Origin = 'SG_ASSOC.CADPAR.PNUMPED_LS'
    end
    object Tb_Par01PNUMPED: TFloatField
      FieldName = 'PNUMPED'
      Origin = 'SG_ASSOC.CADPAR.PNUMPED'
    end
    object Tb_Par01PNUMPF_LS: TFloatField
      FieldName = 'PNUMPF_LS'
      Origin = 'SG_ASSOC.CADPAR.PNUMPF_LS'
    end
    object Tb_Par01PNUMPF: TFloatField
      FieldName = 'PNUMPF'
      Origin = 'SG_ASSOC.CADPAR.PNUMPF'
    end
    object Tb_Par01PLOTBCP_LS: TFloatField
      FieldName = 'PLOTBCP_LS'
      Origin = 'SG_ASSOC.CADPAR.PLOTBCP_LS'
    end
    object Tb_Par01PLOTBCP: TFloatField
      FieldName = 'PLOTBCP'
      Origin = 'SG_ASSOC.CADPAR.PLOTBCP'
    end
    object Tb_Par01PLOTBCR_LS: TFloatField
      FieldName = 'PLOTBCR_LS'
      Origin = 'SG_ASSOC.CADPAR.PLOTBCR_LS'
    end
    object Tb_Par01PLOTBCR: TFloatField
      FieldName = 'PLOTBCR'
      Origin = 'SG_ASSOC.CADPAR.PLOTBCR'
    end
    object Tb_Par01PNUMLIC_LS: TFloatField
      FieldName = 'PNUMLIC_LS'
      Origin = 'SG_ASSOC.CADPAR.PNUMLIC_LS'
    end
    object Tb_Par01PNUMLIC: TFloatField
      FieldName = 'PNUMLIC'
      Origin = 'SG_ASSOC.CADPAR.PNUMLIC'
    end
    object Tb_Par01PCODLDR_LS: TFloatField
      FieldName = 'PCODLDR_LS'
      Origin = 'SG_ASSOC.CADPAR.PCODLDR_LS'
    end
    object Tb_Par01PCODLDR: TFloatField
      FieldName = 'PCODLDR'
      Origin = 'SG_ASSOC.CADPAR.PCODLDR'
    end
    object Tb_Par01PCODFPCR: TFloatField
      FieldName = 'PCODFPCR'
      Origin = 'SG_ASSOC.CADPAR.PCODFPCR'
    end
    object Tb_Par01PCFPCRDUP: TFloatField
      FieldName = 'PCFPCRDUP'
      Origin = 'SG_ASSOC.CADPAR.PCFPCRDUP'
    end
    object Tb_Par01PCODFPCP: TFloatField
      FieldName = 'PCODFPCP'
      Origin = 'SG_ASSOC.CADPAR.PCODFPCP'
    end
    object Tb_Par01PCFPCPDUP: TFloatField
      FieldName = 'PCFPCPDUP'
      Origin = 'SG_ASSOC.CADPAR.PCFPCPDUP'
    end
    object Tb_Par01PCODCHQCLI_LS: TFloatField
      FieldName = 'PCODCHQCLI_LS'
      Origin = 'SG_ASSOC.CADPAR.PCODCHQCLI_LS'
    end
    object Tb_Par01PCODCHQCLI: TFloatField
      FieldName = 'PCODCHQCLI'
      Origin = 'SG_ASSOC.CADPAR.PCODCHQCLI'
    end
    object Tb_Par01PCODCHQ_PE_LS: TFloatField
      FieldName = 'PCODCHQ_PE_LS'
      Origin = 'SG_ASSOC.CADPAR.PCODCHQ_PE_LS'
    end
    object Tb_Par01PCODCHQ_PE: TFloatField
      FieldName = 'PCODCHQ_PE'
      Origin = 'SG_ASSOC.CADPAR.PCODCHQ_PE'
    end
    object Tb_Par01PFATMZ: TFloatField
      FieldName = 'PFATMZ'
      Origin = 'SG_ASSOC.CADPAR.PFATMZ'
    end
    object Tb_Par01PFATMZC: TFloatField
      FieldName = 'PFATMZC'
      Origin = 'SG_ASSOC.CADPAR.PFATMZC'
    end
    object Tb_Par01PDBKP: TStringField
      FieldName = 'PDBKP'
      Origin = 'SG_ASSOC.CADPAR.PDBKP'
      Size = 60
    end
    object Tb_Par01PARQBKP: TStringField
      FieldName = 'PARQBKP'
      Origin = 'SG_ASSOC.CADPAR.PARQBKP'
      Size = 60
    end
    object Tb_Par01PMAXREC: TStringField
      FieldName = 'PMAXREC'
      Origin = 'SG_ASSOC.CADPAR.PMAXREC'
    end
    object Tb_Par01PMANDC01: TFloatField
      FieldName = 'PMANDC01'
      Origin = 'SG_ASSOC.CADPAR.PMANDC01'
    end
    object Tb_Par01PMANDC02: TFloatField
      FieldName = 'PMANDC02'
      Origin = 'SG_ASSOC.CADPAR.PMANDC02'
    end
    object Tb_Par01PMANDCV: TFloatField
      FieldName = 'PMANDCV'
      Origin = 'SG_ASSOC.CADPAR.PMANDCV'
    end
    object Tb_Par01PMANTPCO: TFloatField
      FieldName = 'PMANTPCO'
      Origin = 'SG_ASSOC.CADPAR.PMANTPCO'
    end
    object Tb_Par01PAVESTMIN: TFloatField
      FieldName = 'PAVESTMIN'
      Origin = 'SG_ASSOC.CADPAR.PAVESTMIN'
    end
    object Tb_Par01PMANDI01: TFloatField
      FieldName = 'PMANDI01'
      Origin = 'SG_ASSOC.CADPAR.PMANDI01'
    end
    object Tb_Par01PMANDI02: TFloatField
      FieldName = 'PMANDI02'
      Origin = 'SG_ASSOC.CADPAR.PMANDI02'
    end
    object Tb_Par01PMANNOCR: TFloatField
      FieldName = 'PMANNOCR'
      Origin = 'SG_ASSOC.CADPAR.PMANNOCR'
    end
    object Tb_Par01PMANDIV: TFloatField
      FieldName = 'PMANDIV'
      Origin = 'SG_ASSOC.CADPAR.PMANDIV'
    end
    object Tb_Par01PDATALT: TDateTimeField
      FieldName = 'PDATALT'
      Origin = 'SG_ASSOC.CADPAR.PDATALT'
    end
    object Tb_Par01PUSRALT: TFloatField
      FieldName = 'PUSRALT'
      Origin = 'SG_ASSOC.CADPAR.PUSRALT'
    end
    object Tb_Par01PCXAUTO: TFloatField
      FieldName = 'PCXAUTO'
      Origin = 'SG_ASSOC.CADPAR.PCXAUTO'
    end
    object Tb_Par01PVISNOT: TFloatField
      FieldName = 'PVISNOT'
      Origin = 'SG_ASSOC.CADPAR.PVISNOT'
    end
    object Tb_Par01PVISLSEP: TFloatField
      FieldName = 'PVISLSEP'
      Origin = 'SG_ASSOC.CADPAR.PVISLSEP'
    end
    object Tb_Par01PVISORC: TFloatField
      FieldName = 'PVISORC'
      Origin = 'SG_ASSOC.CADPAR.PVISORC'
    end
    object Tb_Par01PVISVAL: TFloatField
      FieldName = 'PVISVAL'
      Origin = 'SG_ASSOC.CADPAR.PVISVAL'
    end
    object Tb_Par01PATUACUS: TFloatField
      FieldName = 'PATUACUS'
      Origin = 'SG_ASSOC.CADPAR.PATUACUS'
    end
    object Tb_Par01PJURM: TFloatField
      FieldName = 'PJURM'
      Origin = 'SG_ASSOC.CADPAR.PJURM'
    end
    object Tb_Par01PMULTA: TFloatField
      FieldName = 'PMULTA'
      Origin = 'SG_ASSOC.CADPAR.PMULTA'
    end
    object Tb_Par01PQTDDM: TFloatField
      FieldName = 'PQTDDM'
      Origin = 'SG_ASSOC.CADPAR.PQTDDM'
    end
    object Tb_Par01PDESCM: TFloatField
      FieldName = 'PDESCM'
      Origin = 'SG_ASSOC.CADPAR.PDESCM'
    end
    object Tb_Par01PGRAPEN: TFloatField
      FieldName = 'PGRAPEN'
      Origin = 'SG_ASSOC.CADPAR.PGRAPEN'
    end
    object Tb_Par01PVISA: TFloatField
      FieldName = 'PVISA'
      Origin = 'SG_ASSOC.CADPAR.PVISA'
    end
    object Tb_Par01PANVISA: TFloatField
      FieldName = 'PANVISA'
      Origin = 'SG_ASSOC.CADPAR.PANVISA'
    end
    object Tb_Par01PDESCMP0: TFloatField
      FieldName = 'PDESCMP0'
      Origin = 'SG_ASSOC.CADPAR.PDESCMP0'
    end
    object Tb_Par01PDESCMP1: TFloatField
      FieldName = 'PDESCMP1'
      Origin = 'SG_ASSOC.CADPAR.PDESCMP1'
    end
    object Tb_Par01PCODUSR: TFloatField
      FieldName = 'PCODUSR'
      Origin = 'SG_ASSOC.CADPAR.PCODUSR'
    end
    object Tb_Par01PDTALT: TDateTimeField
      FieldName = 'PDTALT'
      Origin = 'SG_ASSOC.CADPAR.PDTALT'
    end
    object Tb_Par01PHRALT: TStringField
      FieldName = 'PHRALT'
      Origin = 'SG_ASSOC.CADPAR.PHRALT'
      Size = 10
    end
    object Tb_Par01PORDGPED: TFloatField
      FieldName = 'PORDGPED'
      Origin = 'SG_ASSOC.CADPAR.PORDGPED'
    end
    object Tb_Par01PSTATUS: TFloatField
      FieldName = 'PSTATUS'
      Origin = 'SG_ASSOC.CADPAR.PSTATUS'
    end
    object Tb_Par01PVALFRE: TFloatField
      FieldName = 'PVALFRE'
      Origin = 'SG_ASSOC.CADPAR.PVALFRE'
    end
    object Tb_Par01PVISDFIN: TFloatField
      FieldName = 'PVISDFIN'
      Origin = 'SG_ASSOC.CADPAR.PVISDFIN'
    end
    object Tb_Par01PVISCOMI: TFloatField
      FieldName = 'PVISCOMI'
      Origin = 'SG_ASSOC.CADPAR.PVISCOMI'
    end
    object Tb_Par01PCHAVFAB_LS: TFloatField
      FieldName = 'PCHAVFAB_LS'
      Origin = 'SG_ASSOC.CADPAR.PCHAVFAB_LS'
    end
    object Tb_Par01PCHAVFAB: TFloatField
      FieldName = 'PCHAVFAB'
      Origin = 'SG_ASSOC.CADPAR.PCHAVFAB'
    end
    object Tb_Par01PCHAVENV_LS: TFloatField
      FieldName = 'PCHAVENV_LS'
      Origin = 'SG_ASSOC.CADPAR.PCHAVENV_LS'
    end
    object Tb_Par01PCHAVENV: TFloatField
      FieldName = 'PCHAVENV'
      Origin = 'SG_ASSOC.CADPAR.PCHAVENV'
    end
    object Tb_Par01PCADAJU_LS: TFloatField
      FieldName = 'PCADAJU_LS'
      Origin = 'SG_ASSOC.CADPAR.PCADAJU_LS'
    end
    object Tb_Par01PCADAJU: TFloatField
      FieldName = 'PCADAJU'
      Origin = 'SG_ASSOC.CADPAR.PCADAJU'
    end
    object Tb_Par01PCADCAC_LS: TFloatField
      FieldName = 'PCADCAC_LS'
      Origin = 'SG_ASSOC.CADPAR.PCADCAC_LS'
    end
    object Tb_Par01PCADCAC: TFloatField
      FieldName = 'PCADCAC'
      Origin = 'SG_ASSOC.CADPAR.PCADCAC'
    end
    object Tb_Par01PLOCPEDGRAV: TFloatField
      FieldName = 'PLOCPEDGRAV'
      Origin = 'SG_ASSOC.CADPAR.PLOCPEDGRAV'
    end
    object Tb_Par01PINCTB: TFloatField
      FieldName = 'PINCTB'
      Origin = 'SG_ASSOC.CADPAR.PINCTB'
    end
    object Tb_Par01PMANDI03: TFloatField
      FieldName = 'PMANDI03'
      Origin = 'SG_ASSOC.CADPAR.PMANDI03'
    end
    object Tb_Par01PNUMOS_LS: TFloatField
      FieldName = 'PNUMOS_LS'
      Origin = 'SG_ASSOC.CADPAR.PNUMOS_LS'
    end
    object Tb_Par01PNUMOS: TFloatField
      FieldName = 'PNUMOS'
      Origin = 'SG_ASSOC.CADPAR.PNUMOS'
    end
    object Tb_Par01PMENPZORC: TFloatField
      FieldName = 'PMENPZORC'
      Origin = 'SG_ASSOC.CADPAR.PMENPZORC'
    end
    object Tb_Par01PCAIXASECF: TFloatField
      FieldName = 'PCAIXASECF'
      Origin = 'SG_ASSOC.CADPAR.PCAIXASECF'
    end
    object Tb_Par01PPFDC01: TFloatField
      FieldName = 'PPFDC01'
      Origin = 'SG_ASSOC.CADPAR.PPFDC01'
    end
    object Tb_Par01PPFDC02: TFloatField
      FieldName = 'PPFDC02'
      Origin = 'SG_ASSOC.CADPAR.PPFDC02'
    end
    object Tb_Par01PPFDVLR: TFloatField
      FieldName = 'PPFDVLR'
      Origin = 'SG_ASSOC.CADPAR.PPFDVLR'
    end
    object Tb_Par01PPFDI01: TFloatField
      FieldName = 'PPFDI01'
      Origin = 'SG_ASSOC.CADPAR.PPFDI01'
    end
    object Tb_Par01PPFDI02: TFloatField
      FieldName = 'PPFDI02'
      Origin = 'SG_ASSOC.CADPAR.PPFDI02'
    end
    object Tb_Par01PPFDI03: TFloatField
      FieldName = 'PPFDI03'
      Origin = 'SG_ASSOC.CADPAR.PPFDI03'
    end
    object Tb_Par01PPFDIVLR: TFloatField
      FieldName = 'PPFDIVLR'
      Origin = 'SG_ASSOC.CADPAR.PPFDIVLR'
    end
    object Tb_Par01PBOL_PADRAO: TFloatField
      FieldName = 'PBOL_PADRAO'
      Origin = 'SG_ASSOC.CADPAR.PBOL_PADRAO'
    end
    object Tb_Par01PDUP_PADRAO: TFloatField
      FieldName = 'PDUP_PADRAO'
      Origin = 'SG_ASSOC.CADPAR.PDUP_PADRAO'
    end
    object Tb_Par01PONLINE_NF: TFloatField
      FieldName = 'PONLINE_NF'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_NF'
    end
    object Tb_Par01PONLINE_ORC: TFloatField
      FieldName = 'PONLINE_ORC'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_ORC'
    end
    object Tb_Par01PONLINE_VAL: TFloatField
      FieldName = 'PONLINE_VAL'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_VAL'
    end
    object Tb_Par01PONLINE_DUP: TFloatField
      FieldName = 'PONLINE_DUP'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_DUP'
    end
    object Tb_Par01PONLINE_BOL: TFloatField
      FieldName = 'PONLINE_BOL'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_BOL'
    end
    object Tb_Par01PONLINE_LSEP: TFloatField
      FieldName = 'PONLINE_LSEP'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_LSEP'
    end
    object Tb_Par01PCHACREM_LS: TFloatField
      FieldName = 'PCHACREM_LS'
      Origin = 'SG_ASSOC.CADPAR.PCHACREM_LS'
    end
    object Tb_Par01PCHACREM: TFloatField
      FieldName = 'PCHACREM'
      Origin = 'SG_ASSOC.CADPAR.PCHACREM'
    end
    object Tb_Par01PLOTELBR_LS: TFloatField
      FieldName = 'PLOTELBR_LS'
      Origin = 'SG_ASSOC.CADPAR.PLOTELBR_LS'
    end
    object Tb_Par01PLOTELBR: TFloatField
      FieldName = 'PLOTELBR'
      Origin = 'SG_ASSOC.CADPAR.PLOTELBR'
    end
    object Tb_Par01PSEQTEF: TFloatField
      FieldName = 'PSEQTEF'
      Origin = 'SG_ASSOC.CADPAR.PSEQTEF'
    end
    object Tb_Par01PTIPOTEF: TFloatField
      FieldName = 'PTIPOTEF'
      Origin = 'SG_ASSOC.CADPAR.PTIPOTEF'
    end
    object Tb_Par01PTECBAN: TFloatField
      FieldName = 'PTECBAN'
      Origin = 'SG_ASSOC.CADPAR.PTECBAN'
    end
    object Tb_Par01PQTDVTEF: TFloatField
      FieldName = 'PQTDVTEF'
      Origin = 'SG_ASSOC.CADPAR.PQTDVTEF'
    end
    object Tb_Par01PONLINE_NF_CONF: TFloatField
      FieldName = 'PONLINE_NF_CONF'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_NF_CONF'
    end
    object Tb_Par01PONLINE_ORC_CONF: TFloatField
      FieldName = 'PONLINE_ORC_CONF'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_ORC_CONF'
    end
    object Tb_Par01PONLINE_VAL_CONF: TFloatField
      FieldName = 'PONLINE_VAL_CONF'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_VAL_CONF'
    end
    object Tb_Par01PONLINE_DUP_CART: TFloatField
      FieldName = 'PONLINE_DUP_CART'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_DUP_CART'
    end
    object Tb_Par01PONLINE_LSEP_CONF: TFloatField
      FieldName = 'PONLINE_LSEP_CONF'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_LSEP_CONF'
    end
    object Tb_Par01PFATMZ_LOCMOV: TFloatField
      FieldName = 'PFATMZ_LOCMOV'
      Origin = 'SG_ASSOC.CADPAR.PFATMZ_LOCMOV'
    end
    object Tb_Par01PHIPERCARD: TFloatField
      FieldName = 'PHIPERCARD'
      Origin = 'SG_ASSOC.CADPAR.PHIPERCARD'
    end
    object Tb_Par01PVISAMAST: TFloatField
      FieldName = 'PVISAMAST'
      Origin = 'SG_ASSOC.CADPAR.PVISAMAST'
    end
    object Tb_Par01PCBLOQAUTO: TFloatField
      FieldName = 'PCBLOQAUTO'
      Origin = 'SG_ASSOC.CADPAR.PCBLOQAUTO'
    end
    object Tb_Par01PONLINE_ORC_SELIMP: TFloatField
      FieldName = 'PONLINE_ORC_SELIMP'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_ORC_SELIMP'
    end
    object Tb_Par01PONLINE_LSEP_SELIMP: TFloatField
      FieldName = 'PONLINE_LSEP_SELIMP'
      Origin = 'SG_ASSOC.CADPAR.PONLINE_LSEP_SELIMP'
    end
  end
  object Src_Par01: TDataSource
    DataSet = Tb_Par01
    Left = 533
    Top = 423
  end
  object U_Ace: TUpdateSQL
    ModifySQL.Strings = (
      'update CADACE'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODCAR = :CODCAR,'
      '  MENU = :MENU'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCAR = :OLD_CODCAR and'
      '  MENU = :OLD_MENU')
    InsertSQL.Strings = (
      'insert into CADACE'
      '  (CODEMP, CODCAR, MENU)'
      'values'
      '  (:CODEMP, :CODCAR, :MENU)')
    DeleteSQL.Strings = (
      'delete from CADACE'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODCAR = :OLD_CODCAR and'
      '  MENU = :OLD_MENU')
    Left = 141
    Top = 360
  end
  object U_AL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAL1'
      'set'
      '  AL1CODEMP = :AL1CODEMP,'
      '  AL1LOTSEQ = :AL1LOTSEQ,'
      '  AL1LOTE = :AL1LOTE,'
      '  AL1DATA = :AL1DATA,'
      '  AL1DTPREV = :AL1DTPREV,'
      '  AL1DTCON = :AL1DTCON,'
      '  AL1USRCON = :AL1USRCON,'
      '  AL1HORCON = :AL1HORCON,'
      '  AL1PORC = :AL1PORC,'
      '  AL1TIPO = :AL1TIPO,'
      '  AL1OBS = :AL1OBS,'
      '  AL1STATUS = :AL1STATUS,'
      '  AL1CODUSR = :AL1CODUSR,'
      '  AL1PCOFAB = :AL1PCOFAB,'
      '  AL1PCOVDA = :AL1PCOVDA,'
      '  AL1PCOMAX = :AL1PCOMAX,'
      '  AL1MAXVDA = :AL1MAXVDA,'
      '  AL1TIPOPCO = :AL1TIPOPCO,'
      '  AL1PCOCUS = :AL1PCOCUS'
      'where'
      '  AL1CODEMP = :OLD_AL1CODEMP and'
      '  AL1LOTE = :OLD_AL1LOTE')
    InsertSQL.Strings = (
      'insert into CADAL1'
      '  (AL1CODEMP, AL1LOTSEQ, AL1LOTE, AL1DATA, AL1DTPREV, AL1DTCON, '
      'AL1USRCON, '
      '   AL1HORCON, AL1PORC, AL1TIPO, AL1OBS, AL1STATUS, AL1CODUSR, '
      'AL1PCOFAB, '
      '   AL1PCOVDA, AL1PCOMAX, AL1MAXVDA, AL1TIPOPCO, AL1PCOCUS)'
      'values'
      
        '  (:AL1CODEMP, :AL1LOTSEQ, :AL1LOTE, :AL1DATA, :AL1DTPREV, :AL1D' +
        'TCON, '
      ':AL1USRCON, '
      
        '   :AL1HORCON, :AL1PORC, :AL1TIPO, :AL1OBS, :AL1STATUS, :AL1CODU' +
        'SR, '
      ':AL1PCOFAB, '
      '   :AL1PCOVDA, :AL1PCOMAX, :AL1MAXVDA, :AL1TIPOPCO, :AL1PCOCUS)')
    DeleteSQL.Strings = (
      'delete from CADAL1'
      'where'
      '  AL1CODEMP = :OLD_AL1CODEMP and'
      '  AL1LOTE = :OLD_AL1LOTE')
    Left = 261
    Top = 7
  end
  object U_AL2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAL2'
      'set'
      '  AL2CODEMP = :AL2CODEMP,'
      '  AL2LOTSEQ = :AL2LOTSEQ,'
      '  AL2LOTE = :AL2LOTE,'
      '  AL2ORDEM = :AL2ORDEM,'
      '  AL2CODPRO = :AL2CODPRO,'
      '  AL2TIPALT = :AL2TIPALT,'
      '  AL2PCOATU1 = :AL2PCOATU1,'
      '  AL2PCONOV1 = :AL2PCONOV1,'
      '  AL2PCOANT = :AL2PCOANT,'
      '  AL2DTUAPCO = :AL2DTUAPCO,'
      '  AL2FABANT = :AL2FABANT,'
      '  AL2FABATU = :AL2FABATU,'
      '  AL2FABNOV = :AL2FABNOV,'
      '  AL2DTUAFAB = :AL2DTUAFAB,'
      '  AL2PMCANT = :AL2PMCANT,'
      '  AL2PMCATU = :AL2PMCATU,'
      '  AL2PMCNOV = :AL2PMCNOV,'
      '  AL2DTUAPMC = :AL2DTUAPMC,'
      '  AL2CUSANT = :AL2CUSANT,'
      '  AL2CUSATU = :AL2CUSATU,'
      '  AL2CUSNOV = :AL2CUSNOV,'
      '  AL2DTUACUS = :AL2DTUACUS'
      'where'
      '  AL2CODEMP = :OLD_AL2CODEMP and'
      '  AL2LOTE = :OLD_AL2LOTE and'
      '  AL2ORDEM = :OLD_AL2ORDEM and'
      '  AL2CODPRO = :OLD_AL2CODPRO')
    InsertSQL.Strings = (
      'insert into CADAL2'
      
        '  (AL2CODEMP, AL2LOTSEQ, AL2LOTE, AL2ORDEM, AL2CODPRO, AL2TIPALT' +
        ', '
      'AL2PCOATU1, '
      '   AL2PCONOV1, AL2PCOANT, AL2DTUAPCO, AL2FABANT, AL2FABATU, '
      'AL2FABNOV, '
      '   AL2DTUAFAB, AL2PMCANT, AL2PMCATU, AL2PMCNOV, AL2DTUAPMC, '
      'AL2CUSANT, '
      '   AL2CUSATU, AL2CUSNOV, AL2DTUACUS)'
      'values'
      '  (:AL2CODEMP, :AL2LOTSEQ, :AL2LOTE, :AL2ORDEM, :AL2CODPRO, '
      ':AL2TIPALT, '
      
        '   :AL2PCOATU1, :AL2PCONOV1, :AL2PCOANT, :AL2DTUAPCO, :AL2FABANT' +
        ', '
      ':AL2FABATU, '
      '   :AL2FABNOV, :AL2DTUAFAB, :AL2PMCANT, :AL2PMCATU, :AL2PMCNOV, '
      ':AL2DTUAPMC, '
      '   :AL2CUSANT, :AL2CUSATU, :AL2CUSNOV, :AL2DTUACUS)')
    DeleteSQL.Strings = (
      'delete from CADAL2'
      'where'
      '  AL2CODEMP = :OLD_AL2CODEMP and'
      '  AL2LOTE = :OLD_AL2LOTE and'
      '  AL2ORDEM = :OLD_AL2ORDEM and'
      '  AL2CODPRO = :OLD_AL2CODPRO')
    Left = 261
    Top = 51
  end
  object U_Par01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPAR'
      'set'
      '  PCODEMP = :PCODEMP,'
      '  PCODSEQ = :PCODSEQ,'
      '  PNUMPED_LS = :PNUMPED_LS,'
      '  PNUMPED = :PNUMPED,'
      '  PNUMPF_LS = :PNUMPF_LS,'
      '  PNUMPF = :PNUMPF,'
      '  PLOTBCP_LS = :PLOTBCP_LS,'
      '  PLOTBCP = :PLOTBCP,'
      '  PLOTBCR_LS = :PLOTBCR_LS,'
      '  PLOTBCR = :PLOTBCR,'
      '  PNUMLIC_LS = :PNUMLIC_LS,'
      '  PNUMLIC = :PNUMLIC,'
      '  PCODLDR_LS = :PCODLDR_LS,'
      '  PCODLDR = :PCODLDR,'
      '  PCODFPCR = :PCODFPCR,'
      '  PCFPCRDUP = :PCFPCRDUP,'
      '  PCODFPCP = :PCODFPCP,'
      '  PCFPCPDUP = :PCFPCPDUP,'
      '  PCODCHQCLI_LS = :PCODCHQCLI_LS,'
      '  PCODCHQCLI = :PCODCHQCLI,'
      '  PCODCHQ_PE_LS = :PCODCHQ_PE_LS,'
      '  PCODCHQ_PE = :PCODCHQ_PE,'
      '  PFATMZ = :PFATMZ,'
      '  PFATMZC = :PFATMZC,'
      '  PDBKP = :PDBKP,'
      '  PARQBKP = :PARQBKP,'
      '  PMAXREC = :PMAXREC,'
      '  PMANDC01 = :PMANDC01,'
      '  PMANDC02 = :PMANDC02,'
      '  PMANDCV = :PMANDCV,'
      '  PMANTPCO = :PMANTPCO,'
      '  PAVESTMIN = :PAVESTMIN,'
      '  PMANDI01 = :PMANDI01,'
      '  PMANDI02 = :PMANDI02,'
      '  PMANNOCR = :PMANNOCR,'
      '  PMANDIV = :PMANDIV,'
      '  PDATALT = :PDATALT,'
      '  PUSRALT = :PUSRALT,'
      '  PCXAUTO = :PCXAUTO,'
      '  PVISNOT = :PVISNOT,'
      '  PVISLSEP = :PVISLSEP,'
      '  PVISORC = :PVISORC,'
      '  PVISVAL = :PVISVAL,'
      '  PATUACUS = :PATUACUS,'
      '  PJURM = :PJURM,'
      '  PMULTA = :PMULTA,'
      '  PQTDDM = :PQTDDM,'
      '  PDESCM = :PDESCM,'
      '  PGRAPEN = :PGRAPEN,'
      '  PVISA = :PVISA,'
      '  PANVISA = :PANVISA,'
      '  PDESCMP0 = :PDESCMP0,'
      '  PDESCMP1 = :PDESCMP1,'
      '  PCODUSR = :PCODUSR,'
      '  PDTALT = :PDTALT,'
      '  PHRALT = :PHRALT,'
      '  PORDGPED = :PORDGPED,'
      '  PSTATUS = :PSTATUS,'
      '  PVALFRE = :PVALFRE,'
      '  PVISDFIN = :PVISDFIN,'
      '  PVISCOMI = :PVISCOMI,'
      '  PCHAVFAB_LS = :PCHAVFAB_LS,'
      '  PCHAVFAB = :PCHAVFAB,'
      '  PCHAVENV_LS = :PCHAVENV_LS,'
      '  PCHAVENV = :PCHAVENV,'
      '  PCADAJU_LS = :PCADAJU_LS,'
      '  PCADAJU = :PCADAJU,'
      '  PCADCAC_LS = :PCADCAC_LS,'
      '  PCADCAC = :PCADCAC,'
      '  PLOCPEDGRAV = :PLOCPEDGRAV,'
      '  PINCTB = :PINCTB,'
      '  PMANDI03 = :PMANDI03,'
      '  PNUMOS_LS = :PNUMOS_LS,'
      '  PNUMOS = :PNUMOS,'
      '  PMENPZORC = :PMENPZORC,'
      '  PCAIXASECF = :PCAIXASECF,'
      '  PPFDC01 = :PPFDC01,'
      '  PPFDC02 = :PPFDC02,'
      '  PPFDVLR = :PPFDVLR,'
      '  PPFDI01 = :PPFDI01,'
      '  PPFDI02 = :PPFDI02,'
      '  PPFDI03 = :PPFDI03,'
      '  PPFDIVLR = :PPFDIVLR,'
      '  PBOL_PADRAO = :PBOL_PADRAO,'
      '  PDUP_PADRAO = :PDUP_PADRAO,'
      '  PONLINE_NF = :PONLINE_NF,'
      '  PONLINE_ORC = :PONLINE_ORC,'
      '  PONLINE_VAL = :PONLINE_VAL,'
      '  PONLINE_DUP = :PONLINE_DUP,'
      '  PONLINE_BOL = :PONLINE_BOL,'
      '  PONLINE_LSEP = :PONLINE_LSEP,'
      '  PCHACREM_LS = :PCHACREM_LS,'
      '  PCHACREM = :PCHACREM,'
      '  PLOTELBR_LS = :PLOTELBR_LS,'
      '  PLOTELBR = :PLOTELBR,'
      '  PONLINE_NF_CONF = :PONLINE_NF_CONF,'
      '  PONLINE_ORC_CONF = :PONLINE_ORC_CONF,'
      '  PONLINE_VAL_CONF = :PONLINE_VAL_CONF,'
      '  PONLINE_DUP_CART = :PONLINE_DUP_CART,'
      '  PONLINE_LSEP_CONF = :PONLINE_LSEP_CONF,'
      '  PFATMZ_LOCMOV = :PFATMZ_LOCMOV,'
      '  PCBLOQAUTO = :PCBLOQAUTO,'
      '  PONLINE_ORC_SELIMP = :PONLINE_ORC_SELIMP,'
      '  PONLINE_LSEP_SELIMP = :PONLINE_LSEP_SELIMP'
      'where'
      '  PCODEMP = :OLD_PCODEMP and'
      '  PCODSEQ = :OLD_PCODSEQ')
    InsertSQL.Strings = (
      'insert into CADPAR'
      '  (PCODEMP, PCODSEQ, PNUMPED_LS, PNUMPED, PNUMPF_LS, PNUMPF, '
      'PLOTBCP_LS, '
      
        '   PLOTBCP, PLOTBCR_LS, PLOTBCR, PNUMLIC_LS, PNUMLIC, PCODLDR_LS' +
        ', '
      'PCODLDR, '
      '   PCODFPCR, PCFPCRDUP, PCODFPCP, PCFPCPDUP, PCODCHQCLI_LS, '
      'PCODCHQCLI, '
      '   PCODCHQ_PE_LS, PCODCHQ_PE, PFATMZ, PFATMZC, PDBKP, PARQBKP, '
      'PMAXREC, '
      '   PMANDC01, PMANDC02, PMANDCV, PMANTPCO, PAVESTMIN, PMANDI01, '
      'PMANDI02, '
      
        '   PMANNOCR, PMANDIV, PDATALT, PUSRALT, PCXAUTO, PVISNOT, PVISLS' +
        'EP, '
      'PVISORC, '
      '   PVISVAL, PATUACUS, PJURM, PMULTA, PQTDDM, PDESCM, PGRAPEN, '
      'PVISA, PANVISA, '
      '   PDESCMP0, PDESCMP1, PCODUSR, PDTALT, PHRALT, PORDGPED, '
      'PSTATUS, PVALFRE, '
      
        '   PVISDFIN, PVISCOMI, PCHAVFAB_LS, PCHAVFAB, PCHAVENV_LS, PCHAV' +
        'ENV, '
      'PCADAJU_LS, '
      '   PCADAJU, PCADCAC_LS, PCADCAC, PLOCPEDGRAV, PINCTB, PMANDI03, '
      'PNUMOS_LS, '
      '   PNUMOS, PMENPZORC, PCAIXASECF, PPFDC01, PPFDC02, PPFDVLR, '
      'PPFDI01, PPFDI02, '
      '   PPFDI03, PPFDIVLR, PBOL_PADRAO, PDUP_PADRAO, PONLINE_NF, '
      'PONLINE_ORC, '
      '   PONLINE_VAL, PONLINE_DUP, PONLINE_BOL, PONLINE_LSEP, '
      'PCHACREM_LS, PCHACREM, '
      '   PLOTELBR_LS, PLOTELBR, PONLINE_NF_CONF, PONLINE_ORC_CONF, '
      'PONLINE_VAL_CONF, '
      '   PONLINE_DUP_CART, PONLINE_LSEP_CONF, PFATMZ_LOCMOV, '
      'PCBLOQAUTO, PONLINE_ORC_SELIMP, '
      '   PONLINE_LSEP_SELIMP)'
      'values'
      
        '  (:PCODEMP, :PCODSEQ, :PNUMPED_LS, :PNUMPED, :PNUMPF_LS, :PNUMP' +
        'F, '
      ':PLOTBCP_LS, '
      '   :PLOTBCP, :PLOTBCR_LS, :PLOTBCR, :PNUMLIC_LS, :PNUMLIC, '
      ':PCODLDR_LS, '
      '   :PCODLDR, :PCODFPCR, :PCFPCRDUP, :PCODFPCP, :PCFPCPDUP, '
      ':PCODCHQCLI_LS, '
      '   :PCODCHQCLI, :PCODCHQ_PE_LS, :PCODCHQ_PE, :PFATMZ, :PFATMZC, '
      ':PDBKP, '
      
        '   :PARQBKP, :PMAXREC, :PMANDC01, :PMANDC02, :PMANDCV, :PMANTPCO' +
        ', '
      ':PAVESTMIN, '
      
        '   :PMANDI01, :PMANDI02, :PMANNOCR, :PMANDIV, :PDATALT, :PUSRALT' +
        ', '
      ':PCXAUTO, '
      
        '   :PVISNOT, :PVISLSEP, :PVISORC, :PVISVAL, :PATUACUS, :PJURM, :' +
        'PMULTA, '
      
        '   :PQTDDM, :PDESCM, :PGRAPEN, :PVISA, :PANVISA, :PDESCMP0, :PDE' +
        'SCMP1, '
      '   :PCODUSR, :PDTALT, :PHRALT, :PORDGPED, :PSTATUS, :PVALFRE, '
      ':PVISDFIN, '
      '   :PVISCOMI, :PCHAVFAB_LS, :PCHAVFAB, :PCHAVENV_LS, :PCHAVENV, '
      ':PCADAJU_LS, '
      
        '   :PCADAJU, :PCADCAC_LS, :PCADCAC, :PLOCPEDGRAV, :PINCTB, :PMAN' +
        'DI03, '
      ':PNUMOS_LS, '
      
        '   :PNUMOS, :PMENPZORC, :PCAIXASECF, :PPFDC01, :PPFDC02, :PPFDVL' +
        'R, '
      ':PPFDI01, '
      '   :PPFDI02, :PPFDI03, :PPFDIVLR, :PBOL_PADRAO, :PDUP_PADRAO, '
      ':PONLINE_NF, '
      '   :PONLINE_ORC, :PONLINE_VAL, :PONLINE_DUP, :PONLINE_BOL, '
      ':PONLINE_LSEP, '
      '   :PCHACREM_LS, :PCHACREM, :PLOTELBR_LS, :PLOTELBR, '
      ':PONLINE_NF_CONF, '
      '   :PONLINE_ORC_CONF, :PONLINE_VAL_CONF, :PONLINE_DUP_CART, '
      ':PONLINE_LSEP_CONF, '
      '   :PFATMZ_LOCMOV, :PCBLOQAUTO, :PONLINE_ORC_SELIMP, '
      ':PONLINE_LSEP_SELIMP)')
    DeleteSQL.Strings = (
      'delete from CADPAR'
      'where'
      '  PCODEMP = :OLD_PCODEMP and'
      '  PCODSEQ = :OLD_PCODSEQ')
    Left = 504
    Top = 423
  end
  object U_Par02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPAR02'
      'set'
      '  PA2CODEMP = :PA2CODEMP,'
      '  PA2CODIGO = :PA2CODIGO,'
      '  PA2PDSN = :PA2PDSN,'
      '  PA2SENHA = :PA2SENHA,'
      '  PA2CODUSR = :PA2CODUSR'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2CODIGO = :OLD_PA2CODIGO and'
      '  PA2CODUSR = :OLD_PA2CODUSR')
    InsertSQL.Strings = (
      'insert into CADPAR02'
      '  (PA2CODEMP, PA2CODIGO, PA2PDSN, PA2SENHA, PA2CODUSR)'
      'values'
      '  (:PA2CODEMP, :PA2CODIGO, :PA2PDSN, :PA2SENHA, :PA2CODUSR)')
    DeleteSQL.Strings = (
      'delete from CADPAR02'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2CODIGO = :OLD_PA2CODIGO and'
      '  PA2CODUSR = :OLD_PA2CODUSR')
    Left = 504
    Top = 475
  end
  object U_Usr: TUpdateSQL
    ModifySQL.Strings = (
      'update CADUSR'
      'set'
      '  CODEMP = :CODEMP,'
      '  CODUSR = :CODUSR,'
      '  NOMUSR = :NOMUSR,'
      '  CODCAR = :CODCAR,'
      '  CODVEN = :CODVEN,'
      '  SENHA = :SENHA,'
      '  ENDERECOIP = :ENDERECOIP,'
      '  DIANAS = :DIANAS,'
      '  MESNAS = :MESNAS,'
      '  USUARIO = :USUARIO,'
      '  NAME = :NAME,'
      '  TFONTE = :TFONTE,'
      '  COLOR = :COLOR,'
      '  FUNDO_BTREE = :FUNDO_BTREE,'
      '  USR_PREVLIBSEN = :USR_PREVLIBSEN,'
      '  USR_STATUSLIBSEN = :USR_STATUSLIBSEN,'
      '  USR_CODCAI = :USR_CODCAI,'
      '  USR_PREVLIBPEDBLQ = :USR_PREVLIBPEDBLQ,'
      '  USR_STATUSLIBPEDBLQ = :USR_STATUSLIBPEDBLQ,'
      '  CODSUP = :CODSUP,'
      '  USR_ESTMIN = :USR_ESTMIN,'
      '  USR_AGENDA = :USR_AGENDA,'
      '  USR_DATMOS = :USR_DATMOS,'
      '  USR_DATHOR = :USR_DATHOR,'
      '  EMAILUSR = :EMAILUSR,'
      '  SENHAEMAILUSR = :SENHAEMAILUSR,'
      '  USR_CODDEP_PADRAO = :USR_CODDEP_PADRAO,'
      '  USR_SITCAD = :USR_SITCAD'
      '  ,USR_DESCMAX = :USR_DESCMAX'
      '  ,USR_DESCMAX_MASTER = :USR_DESCMAX_MASTER'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSR = :OLD_CODUSR')
    InsertSQL.Strings = (
      'insert into CADUSR'
      '  (CODEMP, CODUSR, NOMUSR, CODCAR, CODVEN, SENHA, ENDERECOIP, '
      'DIANAS, MESNAS, '
      '   USUARIO, NAME, TFONTE, COLOR, FUNDO_BTREE, USR_PREVLIBSEN, '
      'USR_STATUSLIBSEN, '
      '   USR_CODCAI, USR_PREVLIBPEDBLQ, USR_STATUSLIBPEDBLQ, CODSUP, '
      'USR_ESTMIN, '
      '   USR_AGENDA, USR_DATMOS, USR_DATHOR, EMAILUSR, SENHAEMAILUSR, '
      'USR_CODDEP_PADRAO,USR_SITCAD,USR_DESCMAX,USR_DESCMAX_MASTER)'
      'values'
      
        '  (:CODEMP, :CODUSR, :NOMUSR, :CODCAR, :CODVEN, :SENHA, :ENDEREC' +
        'OIP,'
      ':DIANAS,'
      '   :MESNAS, :USUARIO, :NAME, :TFONTE, :COLOR, :FUNDO_BTREE,'
      ':USR_PREVLIBSEN,'
      '   :USR_STATUSLIBSEN, :USR_CODCAI, :USR_PREVLIBPEDBLQ,'
      ':USR_STATUSLIBPEDBLQ,'
      '   :CODSUP, :USR_ESTMIN, :USR_AGENDA, :USR_DATMOS, :USR_DATHOR,'
      ':EMAILUSR,'
      
        '   :SENHAEMAILUSR, :USR_CODDEP_PADRAO,:USR_SITCAD,:USR_DESCMAX,:' +
        'USR_DESCMAX_MASTER)')
    DeleteSQL.Strings = (
      'delete from CADUSR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CODUSR = :OLD_CODUSR')
    Left = 632
    Top = 328
  end
  object Tb_Bul: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBUL')
    UpdateMode = upWhereKeyOnly
    Left = 273
    Top = 137
    object Tb_BulCB_CODEMP: TFloatField
      FieldName = 'CB_CODEMP'
      Origin = 'SG_ASSOC.CADBUL.CB_CODEMP'
    end
    object Tb_BulCB_CODPRO: TFloatField
      FieldName = 'CB_CODPRO'
      Origin = 'SG_ASSOC.CADBUL.CB_CODPRO'
    end
    object Tb_BulCB_BULA: TMemoField
      FieldName = 'CB_BULA'
      Origin = 'SG_ASSOC.CADBUL.CB_BULA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object Tb_FPro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADFPRO')
    UpdateMode = upWhereKeyOnly
    Left = 357
    Top = 346
    object Tb_FProCF_CODEMP: TFloatField
      FieldName = 'CF_CODEMP'
      Origin = 'SG_ASSOC.CADFPRO.CF_CODEMP'
    end
    object Tb_FProCF_CODPRO: TFloatField
      FieldName = 'CF_CODPRO'
      Origin = 'SG_ASSOC.CADFPRO.CF_CODPRO'
    end
    object Tb_FProCF_FOTO: TBlobField
      FieldName = 'CF_FOTO'
      Origin = 'SG_ASSOC.CADFPRO.CF_FOTO'
      Size = 1
    end
  end
  object Tb_Rm1: TQuery
    CachedUpdates = True
    BeforePost = Tb_Rm1BeforePost
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRM1 where R1_CODEMP is null')
    UpdateObject = U_Rm1
    Left = 603
    Top = 186
    object Tb_Rm1R1_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'R1_CODEMP'
      Origin = 'SG_ASSOC.CADRM1.R1_CODEMP'
    end
    object Tb_Rm1R1_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'R1_CHAVE'
      Origin = 'SG_ASSOC.CADRM1.R1_CHAVE'
    end
    object Tb_Rm1R1_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'R1_CODIGO'
      Origin = 'SG_ASSOC.CADRM1.R1_CODIGO'
    end
    object Tb_Rm1R1_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'R1_DATA'
      Origin = 'SG_ASSOC.CADRM1.R1_DATA'
    end
    object Tb_Rm1R1_OBS1: TStringField
      DisplayLabel = 'Observa'#231'oes Linha 01'
      FieldName = 'R1_OBS1'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS1'
      Size = 60
    end
    object Tb_Rm1R1_OBS2: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'R1_OBS2'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS2'
      Size = 60
    end
    object Tb_Rm1R1_OBS3: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'R1_OBS3'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS3'
      Size = 60
    end
    object Tb_Rm1R1_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'R1_STATUS'
      Origin = 'SG_ASSOC.CADRM1.R1_STATUS'
    end
    object Tb_Rm1R1_TOTAL: TFloatField
      DisplayLabel = 'Total do Romaneio'
      FieldName = 'R1_TOTAL'
      Origin = 'SG_ASSOC.CADRM1.R1_TOTAL'
    end
    object Tb_Rm1R1_CODTRA: TFloatField
      DisplayLabel = 'C'#243'digo Transportadoria'
      FieldName = 'R1_CODTRA'
      Origin = 'SG_ASSOC.CADRM1.R1_CODTRA'
    end
    object Tb_Rm1R1_QTDVOL: TFloatField
      DisplayLabel = 'Quantidade Volumes'
      FieldName = 'R1_QTDVOL'
      Origin = 'SG_ASSOC.CADRM1.R1_QTDVOL'
    end
    object Tb_Rm1R1_PESOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'R1_PESOL'
      Origin = 'SG_ASSOC.CADRM1.R1_PESOL'
    end
    object Tb_Rm1R1_PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'R1_PESOB'
      Origin = 'SG_ASSOC.CADRM1.R1_PESOB'
    end
    object Tb_Rm1R1_ESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cio'
      FieldName = 'R1_ESPECIE'
      Origin = 'SG_ASSOC.CADRM1.R1_ESPECIE'
      Size = 10
    end
    object Tb_Rm1R1_FRETEPC: TFloatField
      DisplayLabel = 'Frete p/c'
      FieldName = 'R1_FRETEPC'
      Origin = 'SG_ASSOC.CADRM1.R1_FRETEPC'
    end
    object Tb_Rm1R1_VALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'R1_VALFRE'
      Origin = 'SG_ASSOC.CADRM1.R1_VALFRE'
    end
    object Tb_Rm1R1_UFPV: TStringField
      DisplayLabel = 'UF-do Veiculo'
      FieldName = 'R1_UFPV'
      Origin = 'SG_ASSOC.CADRM1.R1_UFPV'
      Size = 2
    end
    object Tb_Rm1R1_PLACAV: TStringField
      DisplayLabel = 'Placa do Veiculo'
      FieldName = 'R1_PLACAV'
      Origin = 'SG_ASSOC.CADRM1.R1_PLACAV'
      Size = 8
    end
    object Tb_Rm1R1_ETIVOL: TFloatField
      DisplayLabel = 'Etiqueta de Volumes'
      FieldName = 'R1_ETIVOL'
      Origin = 'SG_ASSOC.CADRM1.R1_ETIVOL'
    end
    object Tb_Rm1R1_DTMOD: TDateTimeField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'R1_DTMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_DTMOD'
    end
    object Tb_Rm1R1_HRMOD: TStringField
      DisplayLabel = 'Hora Altera'#231#227'o'
      FieldName = 'R1_HRMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_HRMOD'
      Size = 10
    end
    object Tb_Rm1R1_USRMOD: TFloatField
      DisplayLabel = 'Usu'#225'rio Altercou'
      FieldName = 'R1_USRMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_USRMOD'
    end
    object Tb_Rm1R1_CONF: TFloatField
      DisplayLabel = 'Conferido'
      FieldName = 'R1_CONF'
      Origin = 'SG_ASSOC.CADRM1.R1_CONF'
    end
    object Tb_Rm1R1_USRCON: TFloatField
      DisplayLabel = 'Usu'#225'rio que Conferiu'
      FieldName = 'R1_USRCON'
      Origin = 'SG_ASSOC.CADRM1.R1_USRCON'
    end
    object Tb_Rm1R1_DATCON: TDateTimeField
      DisplayLabel = 'Data de Conferencia'
      FieldName = 'R1_DATCON'
      Origin = 'SG_ASSOC.CADRM1.R1_DATCON'
    end
    object Tb_Rm1R1_HRCON: TStringField
      DisplayLabel = 'Hora Conferiu'
      FieldName = 'R1_HRCON'
      Origin = 'SG_ASSOC.CADRM1.R1_HRCON'
      Size = 10
    end
    object Tb_Rm1R1_USRENT: TFloatField
      DisplayLabel = 'Usu'#225'rio Conferiu'
      FieldName = 'R1_USRENT'
      Origin = 'SG_ASSOC.CADRM1.R1_USRENT'
    end
    object Tb_Rm1R1_DATENT: TDateTimeField
      DisplayLabel = 'Data da Entrada'
      FieldName = 'R1_DATENT'
      Origin = 'SG_ASSOC.CADRM1.R1_DATENT'
    end
    object Tb_Rm1R1_HRENT: TStringField
      DisplayLabel = 'Hora da Entrada'
      FieldName = 'R1_HRENT'
      Origin = 'SG_ASSOC.CADRM1.R1_HRENT'
      Size = 10
    end
    object Tb_Rm1R1_USRSEP: TFloatField
      DisplayLabel = 'Usuario Separou'
      FieldName = 'R1_USRSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_USRSEP'
    end
    object Tb_Rm1R1_DATSEP: TDateTimeField
      DisplayLabel = 'Data da Separa'#231#227'o'
      FieldName = 'R1_DATSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_DATSEP'
    end
    object Tb_Rm1R1_HRSEP: TStringField
      DisplayLabel = 'Hora da Separa'#231#227'o'
      FieldName = 'R1_HRSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_HRSEP'
      Size = 10
    end
    object Tb_Rm1R1_USREMB: TFloatField
      DisplayLabel = 'Usu'#225'rio Embalou'
      FieldName = 'R1_USREMB'
      Origin = 'SG_ASSOC.CADRM1.R1_USREMB'
    end
    object Tb_Rm1R1_DATEMB: TDateTimeField
      DisplayLabel = 'Data Embalou'
      FieldName = 'R1_DATEMB'
      Origin = 'SG_ASSOC.CADRM1.R1_DATEMB'
    end
    object Tb_Rm1R1_HREMB: TStringField
      DisplayLabel = 'Hora Embalou'
      FieldName = 'R1_HREMB'
      Origin = 'SG_ASSOC.CADRM1.R1_HREMB'
      Size = 10
    end
    object Tb_Rm1R1_HRDIG: TStringField
      FieldName = 'R1_HRDIG'
      Origin = 'SG_ASSOC.CADRM1.R1_HRDIG'
      Size = 10
    end
    object Tb_Rm1R1_USRDIG: TFloatField
      FieldName = 'R1_USRDIG'
      Origin = 'SG_ASSOC.CADRM1.R1_USRDIG'
    end
    object Tb_Rm1R1_LOTSEQ: TFloatField
      FieldName = 'R1_LOTSEQ'
      Origin = 'SG_ASSOC.CADRM1.R1_LOTSEQ'
    end
  end
  object Tb_Rm2: TQuery
    CachedUpdates = True
    BeforePost = Tb_Rm2BeforePost
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRM2 where R2_CODEMP is null')
    UpdateObject = U_Rm2
    Left = 603
    Top = 232
    object Tb_Rm2R2_CODEMP: TFloatField
      FieldName = 'R2_CODEMP'
      Origin = 'SG_ASSOC.CADRM2.R2_CODEMP'
    end
    object Tb_Rm2R2_CHAVE: TFloatField
      FieldName = 'R2_CHAVE'
      Origin = 'SG_ASSOC.CADRM2.R2_CHAVE'
    end
    object Tb_Rm2R2_CODIGO: TFloatField
      FieldName = 'R2_CODIGO'
      Origin = 'SG_ASSOC.CADRM2.R2_CODIGO'
    end
    object Tb_Rm2R2_ITEM: TFloatField
      FieldName = 'R2_ITEM'
      Origin = 'SG_ASSOC.CADRM2.R2_ITEM'
    end
    object Tb_Rm2R2_CODPRO: TFloatField
      FieldName = 'R2_CODPRO'
      Origin = 'SG_ASSOC.CADRM2.R2_CODPRO'
    end
    object Tb_Rm2R2_QTD: TFloatField
      FieldName = 'R2_QTD'
      Origin = 'SG_ASSOC.CADRM2.R2_QTD'
    end
    object Tb_Rm2R2_PRECO: TFloatField
      FieldName = 'R2_PRECO'
      Origin = 'SG_ASSOC.CADRM2.R2_PRECO'
    end
    object Tb_Rm2R2_LOTSEQ: TFloatField
      FieldName = 'R2_LOTSEQ'
      Origin = 'SG_ASSOC.CADRM2.R2_LOTSEQ'
    end
  end
  object U_Rm1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRM1'
      'set'
      '  R1_CODEMP = :R1_CODEMP,'
      '  R1_LOTSEQ = :R1_LOTSEQ,'
      '  R1_CHAVE = :R1_CHAVE,'
      '  R1_CODIGO = :R1_CODIGO,'
      '  R1_DATA = :R1_DATA,'
      '  R1_OBS1 = :R1_OBS1,'
      '  R1_OBS2 = :R1_OBS2,'
      '  R1_OBS3 = :R1_OBS3,'
      '  R1_STATUS = :R1_STATUS,'
      '  R1_TOTAL = :R1_TOTAL,'
      '  R1_CODTRA = :R1_CODTRA,'
      '  R1_QTDVOL = :R1_QTDVOL,'
      '  R1_PESOL = :R1_PESOL,'
      '  R1_PESOB = :R1_PESOB,'
      '  R1_ESPECIE = :R1_ESPECIE,'
      '  R1_FRETEPC = :R1_FRETEPC,'
      '  R1_VALFRE = :R1_VALFRE,'
      '  R1_UFPV = :R1_UFPV,'
      '  R1_PLACAV = :R1_PLACAV,'
      '  R1_ETIVOL = :R1_ETIVOL,'
      '  R1_DTMOD = :R1_DTMOD,'
      '  R1_HRMOD = :R1_HRMOD,'
      '  R1_USRMOD = :R1_USRMOD,'
      '  R1_HRDIG = :R1_HRDIG,'
      '  R1_USRDIG = :R1_USRDIG,'
      '  R1_CONF = :R1_CONF,'
      '  R1_USRCON = :R1_USRCON,'
      '  R1_DATCON = :R1_DATCON,'
      '  R1_HRCON = :R1_HRCON,'
      '  R1_USRENT = :R1_USRENT,'
      '  R1_DATENT = :R1_DATENT,'
      '  R1_HRENT = :R1_HRENT,'
      '  R1_USRSEP = :R1_USRSEP,'
      '  R1_DATSEP = :R1_DATSEP,'
      '  R1_HRSEP = :R1_HRSEP,'
      '  R1_USREMB = :R1_USREMB,'
      '  R1_DATEMB = :R1_DATEMB,'
      '  R1_HREMB = :R1_HREMB'
      'where'
      '  R1_CODEMP = :OLD_R1_CODEMP and'
      '  R1_LOTSEQ = :OLD_R1_LOTSEQ and'
      '  R1_CHAVE = :OLD_R1_CHAVE and'
      '  R1_CODIGO = :OLD_R1_CODIGO')
    InsertSQL.Strings = (
      'insert into CADRM1'
      '  (R1_CODEMP, R1_LOTSEQ, R1_CHAVE, R1_CODIGO, R1_DATA, R1_OBS1, '
      'R1_OBS2, '
      
        '   R1_OBS3, R1_STATUS, R1_TOTAL, R1_CODTRA, R1_QTDVOL, R1_PESOL,' +
        ' '
      'R1_PESOB, '
      
        '   R1_ESPECIE, R1_FRETEPC, R1_VALFRE, R1_UFPV, R1_PLACAV, R1_ETI' +
        'VOL, '
      'R1_DTMOD, '
      
        '   R1_HRMOD, R1_USRMOD, R1_HRDIG, R1_USRDIG, R1_CONF, R1_USRCON,' +
        ' '
      'R1_DATCON, '
      '   R1_HRCON, R1_USRENT, R1_DATENT, R1_HRENT, R1_USRSEP, '
      'R1_DATSEP, R1_HRSEP, '
      '   R1_USREMB, R1_DATEMB, R1_HREMB)'
      'values'
      
        '  (:R1_CODEMP, :R1_LOTSEQ, :R1_CHAVE, :R1_CODIGO, :R1_DATA, :R1_' +
        'OBS1, '
      ':R1_OBS2, '
      
        '   :R1_OBS3, :R1_STATUS, :R1_TOTAL, :R1_CODTRA, :R1_QTDVOL, :R1_' +
        'PESOL, '
      '   :R1_PESOB, :R1_ESPECIE, :R1_FRETEPC, :R1_VALFRE, :R1_UFPV, '
      ':R1_PLACAV, '
      '   :R1_ETIVOL, :R1_DTMOD, :R1_HRMOD, :R1_USRMOD, :R1_HRDIG, '
      ':R1_USRDIG, '
      '   :R1_CONF, :R1_USRCON, :R1_DATCON, :R1_HRCON, :R1_USRENT, '
      ':R1_DATENT, '
      '   :R1_HRENT, :R1_USRSEP, :R1_DATSEP, :R1_HRSEP, :R1_USREMB, '
      ':R1_DATEMB, '
      '   :R1_HREMB)')
    DeleteSQL.Strings = (
      'delete from CADRM1'
      'where'
      '  R1_CODEMP = :OLD_R1_CODEMP and'
      '  R1_LOTSEQ = :OLD_R1_LOTSEQ and'
      '  R1_CHAVE = :OLD_R1_CHAVE and'
      '  R1_CODIGO = :OLD_R1_CODIGO')
    Left = 632
    Top = 186
  end
  object U_Rm2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRM2'
      'set'
      '  R2_CODEMP = :R2_CODEMP,'
      '  R2_LOTSEQ = :R2_LOTSEQ,'
      '  R2_CHAVE = :R2_CHAVE,'
      '  R2_CODIGO = :R2_CODIGO,'
      '  R2_ITEM = :R2_ITEM,'
      '  R2_CODPRO = :R2_CODPRO,'
      '  R2_QTD = :R2_QTD,'
      '  R2_PRECO = :R2_PRECO'
      'where'
      '  R2_CODEMP = :OLD_R2_CODEMP and'
      '  R2_LOTSEQ = :OLD_R2_LOTSEQ and'
      '  R2_CHAVE = :OLD_R2_CHAVE and'
      '  R2_CODIGO = :OLD_R2_CODIGO and'
      '  R2_ITEM = :OLD_R2_ITEM')
    InsertSQL.Strings = (
      'insert into CADRM2'
      
        '  (R2_CODEMP, R2_LOTSEQ, R2_CHAVE, R2_CODIGO, R2_ITEM, R2_CODPRO' +
        ', '
      'R2_QTD, '
      '   R2_PRECO)'
      'values'
      '  (:R2_CODEMP, :R2_LOTSEQ, :R2_CHAVE, :R2_CODIGO, :R2_ITEM, '
      ':R2_CODPRO, '
      '   :R2_QTD, :R2_PRECO)')
    DeleteSQL.Strings = (
      'delete from CADRM2'
      'where'
      '  R2_CODEMP = :OLD_R2_CODEMP and'
      '  R2_LOTSEQ = :OLD_R2_LOTSEQ and'
      '  R2_CHAVE = :OLD_R2_CHAVE and'
      '  R2_CODIGO = :OLD_R2_CODIGO and'
      '  R2_ITEM = :OLD_R2_ITEM')
    Left = 632
    Top = 232
  end
  object Src_Rm1: TDataSource
    DataSet = Tb_Rm1
    Left = 661
    Top = 186
  end
  object Src_Rm2: TDataSource
    DataSet = Tb_Rm2
    Left = 661
    Top = 232
  end
  object Tb_AcTab: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_AcTabBeforeInsert
    BeforePost = Tb_AcTabBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * from CADACTAB')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_AcTab
    Left = 113
    Top = 500
    object Tb_AcTabAT_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'AT_CODEMP'
      Origin = 'SG_ASSOC.CADACTAB.AT_CODEMP'
    end
    object Tb_AcTabAT_CODCAR: TFloatField
      DisplayLabel = 'C'#243'digo Cargo'
      FieldName = 'AT_CODCAR'
      Origin = 'SG_ASSOC.CADACTAB.AT_CODCAR'
    end
    object Tb_AcTabAT_TABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'AT_TABELA'
      Origin = 'SG_ASSOC.CADACTAB.AT_TABELA'
    end
    object Tb_AcTabAT_DESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'AT_DESC'
      Origin = 'SG_ASSOC.CADACTAB.AT_DESC'
      Size = 60
    end
    object Tb_AcTabAT_INC: TFloatField
      DisplayLabel = 'Incluir'
      FieldName = 'AT_INC'
      Origin = 'SG_ASSOC.CADACTAB.AT_INC'
    end
    object Tb_AcTabAT_ALT: TFloatField
      DisplayLabel = 'Alterar'
      FieldName = 'AT_ALT'
      Origin = 'SG_ASSOC.CADACTAB.AT_ALT'
    end
    object Tb_AcTabAT_EXC: TFloatField
      DisplayLabel = 'Excluir'
      FieldName = 'AT_EXC'
      Origin = 'SG_ASSOC.CADACTAB.AT_EXC'
    end
    object Tb_AcTabAT_REL: TFloatField
      DisplayLabel = 'Relat'#243'rios'
      FieldName = 'AT_REL'
      Origin = 'SG_ASSOC.CADACTAB.AT_REL'
    end
    object Tb_AcTabAT_ADIC: TFloatField
      DisplayLabel = 'Adicionais'
      FieldName = 'AT_ADIC'
      Origin = 'SG_ASSOC.CADACTAB.AT_ADIC'
    end
  end
  object U_AcTab: TUpdateSQL
    ModifySQL.Strings = (
      'update CADACTAB'
      'set'
      '  AT_CODEMP = :AT_CODEMP,'
      '  AT_CODCAR = :AT_CODCAR,'
      '  AT_TABELA = :AT_TABELA,'
      '  AT_DESC = :AT_DESC,'
      '  AT_INC = :AT_INC,'
      '  AT_ALT = :AT_ALT,'
      '  AT_EXC = :AT_EXC,'
      '  AT_REL = :AT_REL,'
      '  AT_ADIC = :AT_ADIC'
      'where'
      '  AT_CODEMP = :OLD_AT_CODEMP and'
      '  AT_CODCAR = :OLD_AT_CODCAR and'
      '  AT_TABELA = :OLD_AT_TABELA')
    InsertSQL.Strings = (
      'insert into CADACTAB'
      
        '  (AT_CODEMP, AT_CODCAR, AT_TABELA, AT_DESC, AT_INC, AT_ALT, AT_' +
        'EXC, '
      'AT_REL, '
      '   AT_ADIC)'
      'values'
      
        '  (:AT_CODEMP, :AT_CODCAR, :AT_TABELA, :AT_DESC, :AT_INC, :AT_AL' +
        'T, '
      ':AT_EXC, '
      '   :AT_REL, :AT_ADIC)')
    DeleteSQL.Strings = (
      'delete from CADACTAB'
      'where'
      '  AT_CODEMP = :OLD_AT_CODEMP and'
      '  AT_CODCAR = :OLD_AT_CODCAR and'
      '  AT_TABELA = :OLD_AT_TABELA')
    Left = 141
    Top = 500
  end
  object Src_AcTab: TDataSource
    DataSet = Tb_AcTab
    Left = 169
    Top = 500
  end
  object Tb_Tax: TQuery
    CachedUpdates = True
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTAX'
      'where TXCODEMP like :CODEMP'
      'and     TXCODTAX like :CODTAX')
    UpdateObject = U_Tax
    Left = 603
    Top = 279
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODTAX'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_TaxTXCODEMP: TFloatField
      FieldName = 'TXCODEMP'
      Origin = 'SG_ASSOC.CADTAX.TXCODEMP'
    end
    object Tb_TaxTXCODTAX: TFloatField
      FieldName = 'TXCODTAX'
      Origin = 'SG_ASSOC.CADTAX.TXCODTAX'
    end
    object Tb_TaxTXCODCLI: TFloatField
      FieldName = 'TXCODCLI'
      Origin = 'SG_ASSOC.CADTAX.TXCODCLI'
    end
    object Tb_TaxTXDATA: TDateTimeField
      FieldName = 'TXDATA'
      Origin = 'SG_ASSOC.CADTAX.TXDATA'
    end
    object Tb_TaxTXVALOR: TFloatField
      FieldName = 'TXVALOR'
      Origin = 'SG_ASSOC.CADTAX.TXVALOR'
    end
    object Tb_TaxTXCODVEN: TFloatField
      FieldName = 'TXCODVEN'
      Origin = 'SG_ASSOC.CADTAX.TXCODVEN'
    end
    object Tb_TaxTXSTATUS: TFloatField
      FieldName = 'TXSTATUS'
      Origin = 'SG_ASSOC.CADTAX.TXSTATUS'
    end
    object Tb_TaxTXRCODUSR: TFloatField
      FieldName = 'TXRCODUSR'
      Origin = 'SG_ASSOC.CADTAX.TXRCODUSR'
    end
    object Tb_TaxTXRDATA: TDateTimeField
      FieldName = 'TXRDATA'
      Origin = 'SG_ASSOC.CADTAX.TXRDATA'
    end
    object Tb_TaxTXCODUSR: TFloatField
      FieldName = 'TXCODUSR'
      Origin = 'SG_ASSOC.CADTAX.TXCODUSR'
    end
    object Tb_TaxTXDATAC: TDateTimeField
      FieldName = 'TXDATAC'
      Origin = 'SG_ASSOC.CADTAX.TXDATAC'
    end
    object Tb_TaxTXDATAV: TDateTimeField
      FieldName = 'TXDATAV'
      Origin = 'SG_ASSOC.CADTAX.TXDATAV'
    end
    object Tb_TaxTXTIPO: TFloatField
      FieldName = 'TXTIPO'
      Origin = 'SG_ASSOC.CADTAX.TXTIPO'
    end
    object Tb_TaxTXQTDD: TFloatField
      FieldName = 'TXQTDD'
      Origin = 'SG_ASSOC.CADTAX.TXQTDD'
    end
    object Tb_TaxTXSITPAG: TFloatField
      FieldName = 'TXSITPAG'
      Origin = 'SG_ASSOC.CADTAX.TXSITPAG'
    end
    object Tb_TaxTXACVEN: TFloatField
      FieldName = 'TXACVEN'
      Origin = 'SG_ASSOC.CADTAX.TXACVEN'
    end
    object Tb_TaxTXCODPV: TFloatField
      FieldName = 'TXCODPV'
      Origin = 'SG_ASSOC.CADTAX.TXCODPV'
    end
    object Tb_TaxTXTABPV: TStringField
      FieldName = 'TXTABPV'
      Origin = 'SG_ASSOC.CADTAX.TXTABPV'
      Size = 2
    end
    object Tb_TaxTXNPARC: TFloatField
      FieldName = 'TXNPARC'
      Origin = 'SG_ASSOC.CADTAX.TXNPARC'
    end
    object Tb_TaxTXPARC: TFloatField
      FieldName = 'TXPARC'
      Origin = 'SG_ASSOC.CADTAX.TXPARC'
    end
    object Tb_TaxTXDTBX: TDateTimeField
      FieldName = 'TXDTBX'
      Origin = 'SG_ASSOC.CADTAX.TXDTBX'
    end
    object Tb_TaxTXCAIXA: TFloatField
      FieldName = 'TXCAIXA'
      Origin = 'SG_ASSOC.CADTAX.TXCAIXA'
    end
    object Tb_TaxTXCODLDR: TFloatField
      FieldName = 'TXCODLDR'
      Origin = 'SG_ASSOC.CADTAX.TXCODLDR'
    end
    object Tb_TaxTXVALPAG: TFloatField
      FieldName = 'TXVALPAG'
      Origin = 'SG_ASSOC.CADTAX.TXVALPAG'
    end
    object Tb_TaxTXVALJUR: TFloatField
      FieldName = 'TXVALJUR'
      Origin = 'SG_ASSOC.CADTAX.TXVALJUR'
    end
    object Tb_TaxTXVALDES: TFloatField
      FieldName = 'TXVALDES'
      Origin = 'SG_ASSOC.CADTAX.TXVALDES'
    end
    object Tb_TaxTXDATPAG: TDateTimeField
      FieldName = 'TXDATPAG'
      Origin = 'SG_ASSOC.CADTAX.TXDATPAG'
    end
    object Tb_TaxTXLOTE: TFloatField
      FieldName = 'TXLOTE'
      Origin = 'SG_ASSOC.CADTAX.TXLOTE'
    end
  end
  object U_Tax: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTAX'
      'set'
      '  TXCODEMP = :TXCODEMP,'
      '  TXCODTAX = :TXCODTAX,'
      '  TXCODCLI = :TXCODCLI,'
      '  TXDATA = :TXDATA,'
      '  TXVALOR = :TXVALOR,'
      '  TXCODVEN = :TXCODVEN,'
      '  TXSTATUS = :TXSTATUS,'
      '  TXRCODUSR = :TXRCODUSR,'
      '  TXRDATA = :TXRDATA,'
      '  TXCODUSR = :TXCODUSR,'
      '  TXDATAC = :TXDATAC,'
      '  TXDATAV = :TXDATAV,'
      '  TXTIPO = :TXTIPO,'
      '  TXQTDD = :TXQTDD,'
      '  TXSITPAG = :TXSITPAG,'
      '  TXACVEN = :TXACVEN,'
      '  TXCODPV = :TXCODPV,'
      '  TXTABPV = :TXTABPV,'
      '  TXNPARC = :TXNPARC,'
      '  TXPARC = :TXPARC,'
      '  TXDTBX = :TXDTBX,'
      '  TXCAIXA = :TXCAIXA,'
      '  TXCODLDR = :TXCODLDR,'
      '  TXVALPAG = :TXVALPAG,'
      '  TXVALJUR = :TXVALJUR,'
      '  TXVALDES = :TXVALDES,'
      '  TXDATPAG = :TXDATPAG,'
      '  TXLOTE = :TXLOTE'
      'where'
      '  TXCODEMP = :OLD_TXCODEMP and'
      '  TXCODTAX = :OLD_TXCODTAX')
    InsertSQL.Strings = (
      'insert into CADTAX'
      '  (TXCODEMP, TXCODTAX, TXCODCLI, TXDATA, TXVALOR, TXCODVEN, '
      'TXSTATUS, TXRCODUSR, '
      
        '   TXRDATA, TXCODUSR, TXDATAC, TXDATAV, TXTIPO, TXQTDD, TXSITPAG' +
        ', '
      'TXACVEN, '
      
        '   TXCODPV, TXTABPV, TXNPARC, TXPARC, TXDTBX, TXCAIXA, TXCODLDR,' +
        ' '
      'TXVALPAG, '
      '   TXVALJUR, TXVALDES, TXDATPAG, TXLOTE)'
      'values'
      
        '  (:TXCODEMP, :TXCODTAX, :TXCODCLI, :TXDATA, :TXVALOR, :TXCODVEN' +
        ', '
      ':TXSTATUS, '
      
        '   :TXRCODUSR, :TXRDATA, :TXCODUSR, :TXDATAC, :TXDATAV, :TXTIPO,' +
        ' '
      ':TXQTDD, '
      
        '   :TXSITPAG, :TXACVEN, :TXCODPV, :TXTABPV, :TXNPARC, :TXPARC, :' +
        'TXDTBX, '
      
        '   :TXCAIXA, :TXCODLDR, :TXVALPAG, :TXVALJUR, :TXVALDES, :TXDATP' +
        'AG, '
      ':TXLOTE)')
    DeleteSQL.Strings = (
      'delete from CADTAX'
      'where'
      '  TXCODEMP = :OLD_TXCODEMP and'
      '  TXCODTAX = :OLD_TXCODTAX')
    Left = 632
    Top = 279
  end
  object Src_Tax: TDataSource
    DataSet = Tb_Tax
    Left = 661
    Top = 279
  end
  object U_Imp_Sys: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIMP_SYS'
      'set'
      '  CITERMINAL = :CITERMINAL,'
      '  CICODIGO = :CICODIGO,'
      '  CINOMREL = :CINOMREL,'
      '  CIPORTA = :CIPORTA,'
      '  CIMODELO = :CIMODELO,'
      '  CIQTDLP = :CIQTDLP,'
      '  CIUSRALT = :CIUSRALT,'
      '  CIDATAALT = :CIDATAALT,'
      '  CICODEMP = :CICODEMP'
      'where'
      '  CITERMINAL = :OLD_CITERMINAL and'
      '  CICODIGO = :OLD_CICODIGO and'
      '  CINOMREL = :OLD_CINOMREL and'
      '  CICODEMP = :OLD_CICODEMP')
    InsertSQL.Strings = (
      'insert into CADIMP_SYS'
      '  (CITERMINAL, CICODIGO, CINOMREL, CIPORTA, CIMODELO, CIQTDLP, '
      'CIUSRALT, '
      '   CIDATAALT, CICODEMP)'
      'values'
      
        '  (:CITERMINAL, :CICODIGO, :CINOMREL, :CIPORTA, :CIMODELO, :CIQT' +
        'DLP, '
      ':CIUSRALT, '
      '   :CIDATAALT, :CICODEMP)')
    DeleteSQL.Strings = (
      'delete from CADIMP_SYS'
      'where'
      '  CITERMINAL = :OLD_CITERMINAL and'
      '  CICODIGO = :OLD_CICODIGO and'
      '  CINOMREL = :OLD_CINOMREL and'
      '  CICODEMP = :OLD_CICODEMP')
    Left = 384
    Top = 467
  end
  object Src_Imp_Sys: TDataSource
    Left = 412
    Top = 467
  end
  object Tb_ParAj01: TQuery
    AfterPost = c
    BeforeDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARAJUP01'
      'where PA1CODEMP like :CODEMP'
      'and     PA1TPRECO like :TPRECO')
    UpdateObject = U_ParAJP01
    Left = 483
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TPRECO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_ParAj01PA1CODEMP: TFloatField
      FieldName = 'PA1CODEMP'
      Origin = 'SG_ASSOC.PARAJUP01.PA1CODEMP'
    end
    object Tb_ParAj01PA1TPRECO: TFloatField
      FieldName = 'PA1TPRECO'
      Origin = 'SG_ASSOC.PARAJUP01.PA1TPRECO'
    end
    object Tb_ParAj01PA1IVA: TFloatField
      FieldName = 'PA1IVA'
      Origin = 'SG_ASSOC.PARAJUP01.PA1IVA'
    end
    object Tb_ParAj01PA1REDUTOR: TFloatField
      FieldName = 'PA1REDUTOR'
      Origin = 'SG_ASSOC.PARAJUP01.PA1REDUTOR'
    end
    object Tb_ParAj01PA1ICMSC: TFloatField
      FieldName = 'PA1ICMSC'
      Origin = 'SG_ASSOC.PARAJUP01.PA1ICMSC'
    end
    object Tb_ParAj01PA1ICMSD: TFloatField
      FieldName = 'PA1ICMSD'
      Origin = 'SG_ASSOC.PARAJUP01.PA1ICMSD'
    end
    object Tb_ParAj01PA1OUTROSAC: TFloatField
      FieldName = 'PA1OUTROSAC'
      Origin = 'SG_ASSOC.PARAJUP01.PA1OUTROSAC'
    end
    object Tb_ParAj01PA1CODUSR: TFloatField
      FieldName = 'PA1CODUSR'
      Origin = 'SG_ASSOC.PARAJUP01.PA1CODUSR'
    end
  end
  object U_ParAJP01: TUpdateSQL
    ModifySQL.Strings = (
      'update PARAJUP01'
      'set'
      '  PA1CODEMP = :PA1CODEMP,'
      '  PA1TPRECO = :PA1TPRECO,'
      '  PA1IVA = :PA1IVA,'
      '  PA1REDUTOR = :PA1REDUTOR,'
      '  PA1ICMSC = :PA1ICMSC,'
      '  PA1ICMSD = :PA1ICMSD,'
      '  PA1OUTROSAC = :PA1OUTROSAC,'
      '  PA1CODUSR = :PA1CODUSR'
      'where'
      '  PA1CODEMP = :OLD_PA1CODEMP and'
      '  PA1TPRECO = :OLD_PA1TPRECO')
    InsertSQL.Strings = (
      'insert into PARAJUP01'
      
        '  (PA1CODEMP, PA1TPRECO, PA1IVA, PA1REDUTOR, PA1ICMSC, PA1ICMSD,' +
        ' '
      'PA1OUTROSAC, '
      '   PA1CODUSR)'
      'values'
      
        '  (:PA1CODEMP, :PA1TPRECO, :PA1IVA, :PA1REDUTOR, :PA1ICMSC, :PA1' +
        'ICMSD, '
      '   :PA1OUTROSAC, :PA1CODUSR)')
    DeleteSQL.Strings = (
      'delete from PARAJUP01'
      'where'
      '  PA1CODEMP = :OLD_PA1CODEMP and'
      '  PA1TPRECO = :OLD_PA1TPRECO')
    Left = 512
    Top = 328
  end
  object Tb_ParAJP02: TQuery
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARAJUP02'
      'where PA2CODEMP   like :CODEMP'
      'and     PA2TPRECO    like :TPRECO'
      'and     PA2CODTPRO like :TCODTPRO'
      '')
    UpdateObject = U_ParJAP02
    Left = 483
    Top = 372
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TPRECO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TCODTPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_ParAJP02PA2CODEMP: TFloatField
      FieldName = 'PA2CODEMP'
      Origin = 'SG_ASSOC.PARAJUP02.PA2CODEMP'
    end
    object Tb_ParAJP02PA2TPRECO: TFloatField
      FieldName = 'PA2TPRECO'
      Origin = 'SG_ASSOC.PARAJUP02.PA2TPRECO'
    end
    object Tb_ParAJP02PA2CODTPRO: TFloatField
      FieldName = 'PA2CODTPRO'
      Origin = 'SG_ASSOC.PARAJUP02.PA2CODTPRO'
    end
    object Tb_ParAJP02PA2PERACRE: TFloatField
      FieldName = 'PA2PERACRE'
      Origin = 'SG_ASSOC.PARAJUP02.PA2PERACRE'
    end
  end
  object U_ParJAP02: TUpdateSQL
    ModifySQL.Strings = (
      'update PARAJUP02'
      'set'
      '  PA2CODEMP = :PA2CODEMP,'
      '  PA2TPRECO = :PA2TPRECO,'
      '  PA2CODTPRO = :PA2CODTPRO,'
      '  PA2PERACRE = :PA2PERACRE'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2TPRECO = :OLD_PA2TPRECO and'
      '  PA2CODTPRO = :OLD_PA2CODTPRO')
    InsertSQL.Strings = (
      'insert into PARAJUP02'
      '  (PA2CODEMP, PA2TPRECO, PA2CODTPRO, PA2PERACRE)'
      'values'
      '  (:PA2CODEMP, :PA2TPRECO, :PA2CODTPRO, :PA2PERACRE)')
    DeleteSQL.Strings = (
      'delete from PARAJUP02'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2TPRECO = :OLD_PA2TPRECO and'
      '  PA2CODTPRO = :OLD_PA2CODTPRO')
    Left = 512
    Top = 372
  end
  object Qr_IncPed01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADP01 ('
      'P1CODEMP'
      ',P1LOTSEQ'
      ',P1CHAVE'
      ',P1CHAVE_NIVEL'
      ',P1ORDEM'
      ',P1CODCLI'
      ',P1CODVEN'
      ',P1CODV02'
      ',P1CODV03'
      ',P1TOTDESCPR'
      ',P1CODASSE'
      ',P1DATAP'
      ',P1DATANF'
      ',P1NUMNF'
      ',P1SERIE'
      ',P1SUBSER'
      ',P1MODELO'
      ',P1SUBMOD'
      ',P1FORMACE'
      ',P1OBS1'
      ',P1OBS2'
      ',P1OBS3'
      ',P1STATUS'
      ',P1TIPO'
      ',P1TIPO_ENTSAI'
      ',P1SITPED'
      ',P1TOTALB'
      ',P1TOTALL'
      ',P1TOTEXTCOM'
      ',P1CODUSR'
      ',P1HORADIG'
      ',P1DTMOD'
      ',P1HRMOD'
      ',P1USRMOD'
      ',P1CONF'
      ',P1CODCON'
      ',P1DATCON'
      ',P1HORCON'
      ',P1TIPENT'
      ',P1PREVENT'
      ',P1HPREVENT'
      ',P1CODENT'
      ',P1PRAZO'
      ',P1DATENT'
      ',P1HORENT'
      ',P1TABPV'
      ',P1CODPV'
      ',P1CUPOM'
      ',P1BASEN'
      ',P1ICMSN'
      ',P1REPAS'
      ',P1BASER'
      ',P1ICMSR'
      ',P1BASENP'
      ',P1BASENN'
      ',P1BASENI'
      ',P1ICMSNP'
      ',P1ICMSNN'
      ',P1ICMSNI'
      ',P1BASERP'
      ',P1BASERN'
      ',P1BASERI'
      ',P1ICMSRP'
      ',P1ICMSRN'
      ',P1ICMSRI'
      ',P1BASENRI'
      ',P1ICMSNRI'
      ',P1BASENRP'
      ',P1ICMSNRP'
      ',P1BASENRN'
      ',P1ICMSNRN'
      ',P1IPIINA'
      ',P1IPIPOS'
      ',P1IPINEG'
      ',P1TOTTRI'
      ',P1TOTRET'
      ',P1TOTISE'
      ',P1TOTOUT'
      ',P1TOTPOS'
      ',P1TOTNEG'
      ',P1TOTINA'
      ',P1TOTDES'
      ',P1TOTDI01'
      ',P1TOTDI02'
      ',P1TOTDI03'
      ',P1VALDES01'
      ',P1VALDES02'
      ',P1TOTDIVL'
      ',P1TOTUCPR'
      ',P1DESC01'
      ',P1DESC02'
      ',P1VLRDES'
      ',P1PAVDES'
      ',P1CODTRA'
      ',P1QTDVOL'
      ',P1PESOL'
      ',P1PESOB'
      ',P1ESPECIE'
      ',P1FRETEPC'
      ',P1VALFRE'
      ',P1TARBAN'
      ',P1ICMS_BCFRE'
      ',P1ICMS_ALFRE'
      ',P1ICMS_VLFRE'
      ',P1ICMS_BCSEG'
      ',P1ICMS_ALSEG'
      ',P1ICMS_VLSEG'
      ',P1ICMS_BCOUTD'
      ',P1ICMS_ALOUTD'
      ',P1ICMS_VLOUTD'
      ',P1ICMS_BCIPI'
      ',P1ICMS_ALIPI'
      ',P1ICMS_VLIPI'
      ',P1UFPV'
      ',P1PLACAV'
      ',P1BANCO'
      ',P1CODSER'
      ',P1CODLDR'
      ',P1PCOMIS'
      ',P1CODCV'
      ',P1LOTEDM'
      ',P1COMIS'
      ',P1COMV02'
      ',P1COMV03'
      ',P1COMIST'
      ',P1COMISS'
      ',P1COMASSE'
      ',P1ORIGEM'
      ',P1NPEDORI'
      ',P1CODTLV'
      ',P1BCISSQN'
      ',P1VISSQN'
      ',P1ETIVOL'
      ',P1CODSEP'
      ',P1DATASEP'
      ',P1HORSEP'
      ',P1CODEMB'
      ',P1DATAEMB'
      ',P1HOREMB'
      ',P1NUMCF'
      ',P1CODECF'
      ',P1DATACF'
      ',P1TPPCO'
      ',P1SEMCOM'
      ',P1DESCFIN'
      ',P1LOTCV'
      ',P1LOTCASSE'
      ',P1LOTCS'
      ',P1LOTCT'
      ',P1PVTC'
      ',P1PVCOM'
      ',P1PVCOM02'
      ',P1PVCOM03'
      ',P1PVACTD'
      ',P1PVACT00'
      ',P1PVACT01'
      ',P1PVACT99'
      ',P1PVTDC'
      ',P1PVDES'
      ',P1PVTPD1'
      ',P1PVDES1'
      ',P1PVTPD2'
      ',P1PVDES2'
      ',P1PVTPD3'
      ',P1PVDES3'
      ',P1PVTPDESF'
      ',P1PVDESCF'
      ',P1PVDIASDESCF'
      ',P1PVDDESCF'
      ',P1TPP'
      ',P1SITAC'
      ',P1VLRACRE'
      ',P1PEDORI1'
      ',P1PEDORI2'
      ',P1MOTIVO'
      ',P1NUMVIS'
      ',P1DATVIS'
      ',P1DATDOC'
      ',P1EMIDOC'
      ',P1ACRECONV'
      ',P1ACREGER'
      ',P1PACRECONV'
      ',P1PACREGER'
      ',P1CODDEP'
      ',P1NAUT'
      ',P1MINUTA'
      ',P1SITCPR'
      ',P1LOTCV02'
      ',P1LOTCV03'
      ',P1SEMCOMP'
      ',P1CFO1'
      ',P1CFO2'
      ',P1CFOSER'
      ',P1PEDORI'
      ',P1BLQPRM'
      ',P1VALSEG'
      ',P1PDESCLIB'
      ',P1PDESCL_USR'
      ',P1PROCESSO'
      ',P1CUPACRE'
      ',P1CUPDES'
      ',P1LEMAT'
      ',P1QTDMAN'
      ',P1DTACERTO'
      ',P1LTACERTO'
      ',P1CANHOTO'
      ',P1ALIQDEB'
      ',P1TOTCGRU'
      ',P1TOTSGRU'
      ',P1CODV04'
      ',P1COMV04'
      ',P1LOTCV04'
      ',P1PVCOM04'
      ',P1DTHRCHEG'
      ',P1CODPRIOR'
      ',P1PROMOCAO'
      ',P1CODBLOQ'
      ',P1CODUSR_LBLOQ'
      ',P1TOTSERLIQ'
      ',P1COMIS_EXTRA'
      ',P1QTDM3'
      ',P1VFRE_CUSENT'
      ',P1VALENT'
      ',P1PRAZO_ENT'
      ',P1SEPAMB'
      ',P1PZOLIB'
      ',P1PZOLIB_USR'
      ',P1BLOQPEND'
      ',P1CODBLOQ_LIB'
      ',P1ECF_SERIE'
      ',P1CX_CODCAI'
      ',P1CX_LOTMOV'
      ',P1DUP_PROD'
      ',P1DUP_SERV'
      ',P1INCTB'
      ',P1EMITENTE'
      ',P1PVACREDESREG'
      ',P1PVAJCOMIS'
      ',P1LOCAL'
      ',P1TOTPROM'
      ',P1TOTPIS'
      ',P1TOTCOFINS'
      ',P1RED_BCISSQN'
      ',P1BCINSS'
      ',P1RED_BCINSS'
      ',P1VINSS'
      ',P1BCIRRF'
      ',P1RED_BCIRRF'
      ',P1VIRRF'
      ',P1NFE_ENVXML'
      ',P1QTDDECPU'
      ',P1TPEMIS'
      ',P1ANALISE'
      ',P1ACRESCIMO'
      ',P1ID_NEW'
      ',P1NOME_PROD'
      ') Values  ('
      ':P1CODEMP'
      ',:P1LOTSEQ'
      ',:P1CHAVE'
      ',:P1CHAVE_NIVEL'
      ',:P1ORDEM'
      ',:P1CODCLI'
      ',:P1CODVEN'
      ',:P1CODV02'
      ',:P1CODV03'
      ',:P1TOTDESCPR'
      ',:P1CODASSE'
      ',:P1DATAP'
      ',:P1DATANF'
      ',:P1NUMNF'
      ',:P1SERIE'
      ',:P1SUBSER'
      ',:P1MODELO'
      ',:P1SUBMOD'
      ',:P1FORMACE'
      ',:P1OBS1'
      ',:P1OBS2'
      ',:P1OBS3'
      ',:P1STATUS'
      ',:P1TIPO'
      ',:P1TIPO_ENTSAI'
      ',:P1SITPED'
      ',:P1TOTALB'
      ',:P1TOTALL'
      ',:P1TOTEXTCOM'
      ',:P1CODUSR'
      ',:P1HORADIG'
      ',:P1DTMOD'
      ',:P1HRMOD'
      ',:P1USRMOD'
      ',:P1CONF'
      ',:P1CODCON'
      ',:P1DATCON'
      ',:P1HORCON'
      ',:P1TIPENT'
      ',:P1PREVENT'
      ',:P1HPREVENT'
      ',:P1CODENT'
      ',:P1PRAZO'
      ',:P1DATENT'
      ',:P1HORENT'
      ',:P1TABPV'
      ',:P1CODPV'
      ',:P1CUPOM'
      ',:P1BASEN'
      ',:P1ICMSN'
      ',:P1REPAS'
      ',:P1BASER'
      ',:P1ICMSR'
      ',:P1BASENP'
      ',:P1BASENN'
      ',:P1BASENI'
      ',:P1ICMSNP'
      ',:P1ICMSNN'
      ',:P1ICMSNI'
      ',:P1BASERP'
      ',:P1BASERN'
      ',:P1BASERI'
      ',:P1ICMSRP'
      ',:P1ICMSRN'
      ',:P1ICMSRI'
      ',:P1BASENRI'
      ',:P1ICMSNRI'
      ',:P1BASENRP'
      ',:P1ICMSNRP'
      ',:P1BASENRN'
      ',:P1ICMSNRN'
      ',:P1IPIINA'
      ',:P1IPIPOS'
      ',:P1IPINEG'
      ',:P1TOTTRI'
      ',:P1TOTRET'
      ',:P1TOTISE'
      ',:P1TOTOUT'
      ',:P1TOTPOS'
      ',:P1TOTNEG'
      ',:P1TOTINA'
      ',:P1TOTDES'
      ',:P1TOTDI01'
      ',:P1TOTDI02'
      ',:P1TOTDI03'
      ',:P1VALDES01'
      ',:P1VALDES02'
      ',:P1TOTDIVL'
      ',:P1TOTUCPR'
      ',:P1DESC01'
      ',:P1DESC02'
      ',:P1VLRDES'
      ',:P1PAVDES'
      ',:P1CODTRA'
      ',:P1QTDVOL'
      ',:P1PESOL'
      ',:P1PESOB'
      ',:P1ESPECIE'
      ',:P1FRETEPC'
      ',:P1VALFRE'
      ',:P1TARBAN'
      ',:P1ICMS_BCFRE'
      ',:P1ICMS_ALFRE'
      ',:P1ICMS_VLFRE'
      ',:P1ICMS_BCSEG'
      ',:P1ICMS_ALSEG'
      ',:P1ICMS_VLSEG'
      ',:P1ICMS_BCOUTD'
      ',:P1ICMS_ALOUTD'
      ',:P1ICMS_VLOUTD'
      ',:P1ICMS_BCIPI'
      ',:P1ICMS_ALIPI'
      ',:P1ICMS_VLIPI'
      ',:P1UFPV'
      ',:P1PLACAV'
      ',:P1BANCO'
      ',:P1CODSER'
      ',:P1CODLDR'
      ',:P1PCOMIS'
      ',:P1CODCV'
      ',:P1LOTEDM'
      ',:P1COMIS'
      ',:P1COMV02'
      ',:P1COMV03'
      ',:P1COMIST'
      ',:P1COMISS'
      ',:P1COMASSE'
      ',:P1ORIGEM'
      ',:P1NPEDORI'
      ',:P1CODTLV'
      ',:P1BCISSQN'
      ',:P1VISSQN'
      ',:P1ETIVOL'
      ',:P1CODSEP'
      ',:P1DATASEP'
      ',:P1HORSEP'
      ',:P1CODEMB'
      ',:P1DATAEMB'
      ',:P1HOREMB'
      ',:P1NUMCF'
      ',:P1CODECF'
      ',:P1DATACF'
      ',:P1TPPCO'
      ',:P1SEMCOM'
      ',:P1DESCFIN'
      ',:P1LOTCV'
      ',:P1LOTCASSE'
      ',:P1LOTCS'
      ',:P1LOTCT'
      ',:P1PVTC'
      ',:P1PVCOM'
      ',:P1PVCOM02'
      ',:P1PVCOM03'
      ',:P1PVACTD'
      ',:P1PVACT00'
      ',:P1PVACT01'
      ',:P1PVACT99'
      ',:P1PVTDC'
      ',:P1PVDES'
      ',:P1PVTPD1'
      ',:P1PVDES1'
      ',:P1PVTPD2'
      ',:P1PVDES2'
      ',:P1PVTPD3'
      ',:P1PVDES3'
      ',:P1PVTPDESF'
      ',:P1PVDESCF'
      ',:P1PVDIASDESCF'
      ',:P1PVDDESCF'
      ',:P1TPP'
      ',:P1SITAC'
      ',:P1VLRACRE'
      ',:P1PEDORI1'
      ',:P1PEDORI2'
      ',:P1MOTIVO'
      ',:P1NUMVIS'
      ',:P1DATVIS'
      ',:P1DATDOC'
      ',:P1EMIDOC'
      ',:P1ACRECONV'
      ',:P1ACREGER'
      ',:P1PACRECONV'
      ',:P1PACREGER'
      ',:P1CODDEP'
      ',:P1NAUT'
      ',:P1MINUTA'
      ',:P1SITCPR'
      ',:P1LOTCV02'
      ',:P1LOTCV03'
      ',:P1SEMCOMP'
      ',:P1CFO1'
      ',:P1CFO2'
      ',:P1CFOSER'
      ',:P1PEDORI'
      ',:P1BLQPRM'
      ',:P1VALSEG'
      ',:P1PDESCLIB'
      ',:P1PDESCL_USR'
      ',:P1PROCESSO'
      ',:P1CUPACRE'
      ',:P1CUPDES'
      ',:P1LEMAT'
      ',:P1QTDMAN'
      ',:P1DTACERTO'
      ',:P1LTACERTO'
      ',:P1CANHOTO'
      ',:P1ALIQDEB'
      ',:P1TOTCGRU'
      ',:P1TOTSGRU'
      ',:P1CODV04'
      ',:P1COMV04'
      ',:P1LOTCV04'
      ',:P1PVCOM04'
      ',:P1DTHRCHEG'
      ',:P1CODPRIOR'
      ',:P1PROMOCAO'
      ',:P1CODBLOQ'
      ',:P1CODUSR_LBLOQ'
      ',:P1TOTSERLIQ'
      ',:P1COMIS_EXTRA'
      ',:P1QTDM3'
      ',:P1VFRE_CUSENT'
      ',:P1VALENT'
      ',:P1PRAZO_ENT'
      ',:P1SEPAMB'
      ',:P1PZOLIB'
      ',:P1PZOLIB_USR'
      ',:P1BLOQPEND'
      ',:P1CODBLOQ_LIB'
      ',:P1ECF_SERIE'
      ',:P1CX_CODCAI'
      ',:P1CX_LOTMOV'
      ',:P1DUP_PROD'
      ',:P1DUP_SERV'
      ',:P1INCTB'
      ',:P1EMITENTE'
      ',:P1PVACREDESREG'
      ',:P1PVAJCOMIS'
      ',:P1LOCAL'
      ',:P1TOTPROM'
      ',:P1TOTPIS'
      ',:P1TOTCOFINS'
      ',:P1RED_BCISSQN'
      ',:P1BCINSS'
      ',:P1RED_BCINSS'
      ',:P1VINSS'
      ',:P1BCIRRF'
      ',:P1RED_BCIRRF'
      ',:P1VIRRF'
      ',:P1NFE_ENVXML'
      ',:P1QTDDECPU'
      ',:P1TPEMIS'
      ',:P1ANALISE'
      ',:P1ACRESCIMO'
      ',:P1ID_NEW'
      ',:P1NOME_PROD'
      ')')
    Left = 24
    Top = 261
    ParamData = <
      item
        DataType = ftString
        Name = 'P1CODEMP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTSEQ'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CHAVE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CHAVE_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ORDEM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODCLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P1CODVEN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV03'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'P1TOTDESCPR'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1CODASSE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATAP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATANF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMNF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SERIE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SUBSER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MODELO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SUBMOD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1FORMACE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS3'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1STATUS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPO_ENTSAI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITPED'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTALB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTALL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'P1TOTEXTCOM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1CODUSR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORADIG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTMOD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HRMOD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1USRMOD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CONF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODCON'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATCON'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORCON'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PREVENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HPREVENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PRAZO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TABPV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODPV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPOM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASEN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1REPAS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPIINA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPIPOS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPINEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTTRI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTRET'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTISE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTOUT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPOS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTNEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTINA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDES'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI01'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI03'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALDES01'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALDES02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDIVL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTUCPR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESC01'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESC02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VLRDES'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PAVDES'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODTRA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDVOL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PESOL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PESOB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ESPECIE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1FRETEPC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALFRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TARBAN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCFRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALFRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLFRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCSEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALSEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLSEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCOUTD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALOUTD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLOUTD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCIPI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALIPI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLIPI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1UFPV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PLACAV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BANCO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODSER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODLDR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PCOMIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODCV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTEDM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV03'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIST'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMISS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMASSE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ORIGEM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NPEDORI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODTLV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCISSQN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VISSQN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ETIVOL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODSEP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATASEP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORSEP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODEMB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATAEMB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HOREMB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMCF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODECF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATACF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPPCO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEMCOM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESCFIN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCASSE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM03'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACTD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT00'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT01'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT99'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTDC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD3'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES3'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPDESF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDESCF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDIASDESCF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDDESCF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITAC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VLRACRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MOTIVO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMVIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATVIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATDOC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1EMIDOC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ACRECONV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ACREGER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PACRECONV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PACREGER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODDEP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NAUT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MINUTA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITCPR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV02'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV03'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEMCOMP'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFO1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFO2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFOSER'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BLQPRM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALSEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PDESCLIB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PDESCL_USR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PROCESSO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPACRE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPDES'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LEMAT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDMAN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTACERTO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LTACERTO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CANHOTO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ALIQDEB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTCGRU'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTSGRU'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV04'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV04'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV04'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM04'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTHRCHEG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODPRIOR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PROMOCAO'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODBLOQ'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODUSR_LBLOQ'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTSERLIQ'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIS_EXTRA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDM3'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VFRE_CUSENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PRAZO_ENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEPAMB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PZOLIB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PZOLIB_USR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BLOQPEND'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODBLOQ_LIB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ECF_SERIE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CX_CODCAI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CX_LOTMOV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DUP_PROD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DUP_SERV'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1INCTB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1EMITENTE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACREDESREG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVAJCOMIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOCAL'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPROM'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPIS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTCOFINS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCISSQN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCINSS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCINSS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VINSS'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCIRRF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCIRRF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VIRRF'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftSmallint
        Name = 'P1NFE_ENVXML'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDDECPU'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'P1ANALISE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P1ACRESCIMO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P1ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1NOME_PROD'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncPed02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADP02 ('
      'P2CODEMP'
      ',P2LOTSEQ'
      ',P2CHAVE'
      ',P2CHAVE_NIVEL'
      ',P2ORDEM'
      ',P2ITEM'
      ',P2CODPRO'
      ',P2UND'
      ',P2CODANT'
      ',P2QTD'
      ',P2QTD_ATEN'
      ',P2LOTE'
      ',P2DTVCTO'
      ',P2DESC1'
      ',P2DESC2'
      ',P2DESC3'
      ',P2VALDES'
      ',P2PRECO'
      ',P2SIT'
      ',P2CSOSN'
      ',P2CSOSN_ORI'
      ',P2CODFAB'
      ',P2CODGRU'
      ',P2BASEN'
      ',P2ICMSN'
      ',P2REPAS'
      ',P2BASER'
      ',P2ICMSR'
      ',P2LISTA'
      ',P2STATUS'
      ',P2PCOTAB'
      ',P2PCOFPG'
      ',P2UCPR'
      ',P2PCOCUS'
      ',P2TOTDES'
      ',P2DESCRAT'
      ',P2ACRERAT'
      ',P2TABELA'
      ',P2ALIPI'
      ',P2VALIPI'
      ',P2BCINR'
      ',P2ICMSNR'
      ',P2ISENTAS'
      ',P2TOTOUT'
      ',P2ALIQ'
      ',P2ALIQNR'
      ',P2PCOMIS'
      ',P2VCOMIS'
      ',P2VCOM02'
      ',P2VCOM03'
      ',P2PCOM02'
      ',P2PCOM03'
      ',P2VCOM04'
      ',P2DESCM'
      ',P2CFO'
      ',P2CFOSUBECF'
      ',P2SEMCOM'
      ',P2TOTLIQ'
      ',P2PDESCF'
      ',P2VDESCF'
      ',P2ACRECONV'
      ',P2ACREGER'
      ',P2PCOMAX'
      ',P2QTDDEV'
      ',P2PROMOCAO'
      ',P2DESCPR'
      ',P2QTD_ENTREGUE'
      ',P2QTD_ENTREGANDO'
      ',P2AMBIENTE'
      ',P2COMPLEMENTO'
      ',P2PCOMIS_EXTRA'
      ',P2VCOMIS_EXTRA'
      ',P2STATUS_PED1'
      ',P2TIPO'
      ',P2CODAGRU'
      ',P2CONSIG'
      ',P2ST_IVA'
      ',P2ST_REDUT'
      ',P2ST_ICMCRED'
      ',P2ST_ICMDEB'
      ',P2REDUTICM'
      ',P2PRAZO'
      ',P2ALPIS'
      ',P2VALPIS'
      ',P2ALCOFINS'
      ',P2COFINS'
      ',P2CODVEN'
      ',P2TIPO_PCO'
      ',P2CONS_PROPRIO'
      ',P2CODPRO_ORI'
      ',P2NOMPRO_ORI'
      ',P2PCREDSN'
      ',P2KIT_PRO'
      ',P2ID_NEW'
      ',P2ID_PED01_NEW'
      ',P2CBENEF'
      ',P2VFRERAT'
      ',P2VSEGRAT'
      ',P2VDESPACESRAT'
      ''
      ') Values  ('
      ':P2CODEMP'
      ',:P2LOTSEQ'
      ',:P2CHAVE'
      ',:P2CHAVE_NIVEL'
      ',:P2ORDEM'
      ',:P2ITEM'
      ',:P2CODPRO'
      ',:P2UND'
      ',:P2CODANT'
      ',:P2QTD'
      ',:P2QTD_ATEN'
      ',:P2LOTE'
      ',:P2DTVCTO'
      ',:P2DESC1'
      ',:P2DESC2'
      ',:P2DESC3'
      ',:P2VALDES'
      ',:P2PRECO'
      ',:P2SIT'
      ',:P2CSOSN'
      ',:P2CSOSN_ORI'
      ',:P2CODFAB'
      ',:P2CODGRU'
      ',:P2BASEN'
      ',:P2ICMSN'
      ',:P2REPAS'
      ',:P2BASER'
      ',:P2ICMSR'
      ',:P2LISTA'
      ',:P2STATUS'
      ',:P2PCOTAB'
      ',:P2PCOFPG'
      ',:P2UCPR'
      ',:P2PCOCUS'
      ',:P2TOTDES'
      ',:P2DESCRAT'
      ',:P2ACRERAT'
      ',:P2TABELA'
      ',:P2ALIPI'
      ',:P2VALIPI'
      ',:P2BCINR'
      ',:P2ICMSNR'
      ',:P2ISENTAS'
      ',:P2TOTOUT'
      ',:P2ALIQ'
      ',:P2ALIQNR'
      ',:P2PCOMIS'
      ',:P2VCOMIS'
      ',:P2VCOM02'
      ',:P2VCOM03'
      ',:P2PCOM02'
      ',:P2PCOM03'
      ',:P2VCOM04'
      ',:P2DESCM'
      ',:P2CFO'
      ',:P2CFOSUBECF'
      ',:P2SEMCOM'
      ',:P2TOTLIQ'
      ',:P2PDESCF'
      ',:P2VDESCF'
      ',:P2ACRECONV'
      ',:P2ACREGER'
      ',:P2PCOMAX'
      ',:P2QTDDEV'
      ',:P2PROMOCAO'
      ',:P2DESCPR'
      ',:P2QTD_ENTREGUE'
      ',:P2QTD_ENTREGANDO'
      ',:P2AMBIENTE'
      ',:P2COMPLEMENTO'
      ',:P2PCOMIS_EXTRA'
      ',:P2VCOMIS_EXTRA'
      ',:P2STATUS_PED1'
      ',:P2TIPO'
      ',:P2CODAGRU'
      ',:P2CONSIG'
      ',:P2ST_IVA'
      ',:P2ST_REDUT'
      ',:P2ST_ICMCRED'
      ',:P2ST_ICMDEB'
      ',:P2REDUTICM'
      ',:P2PRAZO'
      ',:P2ALPIS'
      ',:P2VALPIS'
      ',:P2ALCOFINS'
      ',:P2COFINS'
      ',:P2CODVEN'
      ',:P2TIPO_PCO'
      ',:P2CONS_PROPRIO'
      ',:P2CODPRO_ORI'
      ',:P2NOMPRO_ORI'
      ',:P2PCREDSN'
      ',:P2KIT_PRO'
      ',:P2ID_NEW'
      ',:P2ID_PED01_NEW'
      ',:P2CBENEF'
      ',:P2VFRERAT'
      ',:P2VSEGRAT'
      ',:P2VDESPACESRAT'
      ''
      ''
      ')')
    Left = 56
    Top = 261
    ParamData = <
      item
        DataType = ftString
        Name = 'P2CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CHAVE_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ORDEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2UND'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODANT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD_ATEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DTVCTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PRECO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2SIT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CSOSN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2CSOSN_ORI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2CODFAB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BASEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2REPAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BASER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LISTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOTAB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOFPG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2UCPR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOCUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESCRAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACRERAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TABELA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BCINR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ISENTAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTOUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIQNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOM02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOM03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESCM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CFO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CFOSUBECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2SEMCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTLIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACRECONV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACREGER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMAX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTDDEV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PROMOCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESCPR'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2QTD_ENTREGUE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD_ENTREGANDO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2AMBIENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2COMPLEMENTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2STATUS_PED1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODAGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CONSIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_IVA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_REDUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_ICMCRED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_ICMDEB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2REDUTICM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PRAZO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALPIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALPIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALCOFINS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2COFINS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TIPO_PCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CONS_PROPRIO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODPRO_ORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2NOMPRO_ORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCREDSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2KIT_PRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2ID_PED01_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2CBENEF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P2VFRERAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P2VSEGRAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P2VDESPACESRAT'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncNsai: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADNS ('
      'NSCODEMP'
      ',NSTIPO'
      ',NSNUMERO'
      ',NSSERIE'
      ',NSSUBSER'
      ',NSMODELO'
      ',NSCODCLI'
      ',NSDTEMIS'
      ',NSCFO1'
      ',NSCFO2'
      ',NSCFOSER'
      ',NSNUMCUP'
      ',NSCODECF'
      ',NSMODECF'
      ',NSSERIEECF'
      ',NSDATCUP'
      ',NSCNPJ'
      ',NSIE'
      ',NSTOTNOTA'
      ',NSBASENI'
      ',NSICMSNI'
      ',NSBASENP'
      ',NSICMSNP'
      ',NSBASENN'
      ',NSICMSNN'
      ',NSBASERI'
      ',NSPISCOFN'
      ',NSPISCOFR'
      ',NSICMSRI'
      ',NSBASERP'
      ',NSICMSRP'
      ',NSBASERN'
      ',NSICMSRN'
      ',NSTOTPROI'
      ',NSTOTPROP'
      ',NSTOTPRON'
      ',NSBASENRI'
      ',NSICMSNRI'
      ',NSBASENRP'
      ',NSICMSNRP'
      ',NSBASENRN'
      ',NSICMSNRN'
      ',NSALIQ'
      ',NSALIQ2'
      ',NSIPII'
      ',NSIPIP'
      ',NSIPIN'
      ',NSFRETE'
      ',NSFRETEPC'
      ',NSTARBAN'
      ',NSBCISSQN'
      ',NSVISSQN'
      ',NSTOTISEN'
      ',NSTOTOUT'
      ',NSTOTNOR'
      ',NSTOTRET'
      ',NSCHAVEP'
      ',NSCHAVEP_NIVEL'
      ',NSORDEMP'
      ',NSSTATUS'
      ',NSSITCUP'
      ',NSBASEN'
      ',NSICMSN'
      ',NSCODUSR'
      ',NSDTALT'
      ',NSHRALT'
      ',NSLOTSEQ_CP'
      ',NSCUPACRE'
      ',NSCUPDES'
      ',NSLEMAT'
      ',NSICMS_BCFRE'
      ',NSICMS_ALFRE'
      ',NSICMS_VLFRE'
      ',NSICMS_BCSEG'
      ',NSICMS_ALSEG'
      ',NSICMS_VLSEG'
      ',NSICMS_BCOUTD'
      ',NSICMS_ALOUTD'
      ',NSICMS_VLOUTD'
      ',NSICMS_BCIPI'
      ',NSICMS_ALIPI'
      ',NSICMS_VLIPI'
      ',NSNFCF'
      ',NSAVAP'
      ',NSEMITENTE'
      ',NSINFAD01'
      ',NSINFAD02'
      ',NSINFAD03'
      ',NSINFAD04'
      ',NSINFAD05'
      ',NSINFAD06'
      ',NSINFAD07'
      ',NSINFAD08'
      ',NSINFAD09'
      ',NSINFAD10'
      ',NSCERTDIG'
      ',NSTPIMPRES'
      ',NSINFADFIS01'
      ',NSINFADFIS02'
      ',NSNFE_CHAVEACESSO'
      ',NSNFE_DCHAVEACESSO'
      ',NSNFE_NRECIBO'
      ',NSNFE_DH_RECIBO'
      ',NSNFE_STAT_REC'
      ',NSNFE_LOTENV'
      ',NSNFE_NOMARQLOT'
      ',NSNFE_NOMARQREC'
      ',NSNFE_CONTIGENCIA'
      ',NSNFE_DH_CONTIGENCIA'
      ',NSRED_BCISSQN'
      ',NSBCINSS'
      ',NSRED_BCINSS'
      ',NSVINSS'
      ',NSBCIRRF'
      ',NSRED_BCIRRF'
      ',NSVIRRF'
      ',NSNFE_STATUS'
      ',NSNFE_STAT_PROT'
      ',NSNFE_DIGVAL'
      ',NSNFE_NUMPROT'
      ',NSNFE_VERAPLIC'
      ',NSNFE_INFPRODID'
      ',NSTIPDOC'
      ',NSNFE_TPEMIS'
      ',NSID_NEW'
      ',NSID_PED01_NEW'
      ') Values  ('
      ':NSCODEMP'
      ',:NSTIPO'
      ',:NSNUMERO'
      ',:NSSERIE'
      ',:NSSUBSER'
      ',:NSMODELO'
      ',:NSCODCLI'
      ',:NSDTEMIS'
      ',:NSCFO1'
      ',:NSCFO2'
      ',:NSCFOSER'
      ',:NSNUMCUP'
      ',:NSCODECF'
      ',:NSMODECF'
      ',:NSSERIEECF'
      ',:NSDATCUP'
      ',:NSCNPJ'
      ',:NSIE'
      ',:NSTOTNOTA'
      ',:NSBASENI'
      ',:NSICMSNI'
      ',:NSBASENP'
      ',:NSICMSNP'
      ',:NSBASENN'
      ',:NSICMSNN'
      ',:NSBASERI'
      ',:NSPISCOFN'
      ',:NSPISCOFR'
      ',:NSICMSRI'
      ',:NSBASERP'
      ',:NSICMSRP'
      ',:NSBASERN'
      ',:NSICMSRN'
      ',:NSTOTPROI'
      ',:NSTOTPROP'
      ',:NSTOTPRON'
      ',:NSBASENRI'
      ',:NSICMSNRI'
      ',:NSBASENRP'
      ',:NSICMSNRP'
      ',:NSBASENRN'
      ',:NSICMSNRN'
      ',:NSALIQ'
      ',:NSALIQ2'
      ',:NSIPII'
      ',:NSIPIP'
      ',:NSIPIN'
      ',:NSFRETE'
      ',:NSFRETEPC'
      ',:NSTARBAN'
      ',:NSBCISSQN'
      ',:NSVISSQN'
      ',:NSTOTISEN'
      ',:NSTOTOUT'
      ',:NSTOTNOR'
      ',:NSTOTRET'
      ',:NSCHAVEP'
      ',:NSCHAVEP_NIVEL'
      ',:NSORDEMP'
      ',:NSSTATUS'
      ',:NSSITCUP'
      ',:NSBASEN'
      ',:NSICMSN'
      ',:NSCODUSR'
      ',:NSDTALT'
      ',:NSHRALT'
      ',:NSLOTSEQ_CP'
      ',:NSCUPACRE'
      ',:NSCUPDES'
      ',:NSLEMAT'
      ',:NSICMS_BCFRE'
      ',:NSICMS_ALFRE'
      ',:NSICMS_VLFRE'
      ',:NSICMS_BCSEG'
      ',:NSICMS_ALSEG'
      ',:NSICMS_VLSEG'
      ',:NSICMS_BCOUTD'
      ',:NSICMS_ALOUTD'
      ',:NSICMS_VLOUTD'
      ',:NSICMS_BCIPI'
      ',:NSICMS_ALIPI'
      ',:NSICMS_VLIPI'
      ',:NSNFCF'
      ',:NSAVAP'
      ',:NSEMITENTE'
      ',:NSINFAD01'
      ',:NSINFAD02'
      ',:NSINFAD03'
      ',:NSINFAD04'
      ',:NSINFAD05'
      ',:NSINFAD06'
      ',:NSINFAD07'
      ',:NSINFAD08'
      ',:NSINFAD09'
      ',:NSINFAD10'
      ',:NSCERTDIG'
      ',:NSTPIMPRES'
      ',:NSINFADFIS01'
      ',:NSINFADFIS02'
      ',:NSNFE_CHAVEACESSO'
      ',:NSNFE_DCHAVEACESSO'
      ',:NSNFE_NRECIBO'
      ',:NSNFE_DH_RECIBO'
      ',:NSNFE_STAT_REC'
      ',:NSNFE_LOTENV'
      ',:NSNFE_NOMARQLOT'
      ',:NSNFE_NOMARQREC'
      ',:NSNFE_CONTIGENCIA'
      ',:NSNFE_DH_CONTIGENCIA'
      ',:NSRED_BCISSQN'
      ',:NSBCINSS'
      ',:NSRED_BCINSS'
      ',:NSVINSS'
      ',:NSBCIRRF'
      ',:NSRED_BCIRRF'
      ',:NSVIRRF'
      ',:NSNFE_STATUS'
      ',:NSNFE_STAT_PROT'
      ',:NSNFE_DIGVAL'
      ',:NSNFE_NUMPROT'
      ',:NSNFE_VERAPLIC'
      ',:NSNFE_INFPRODID'
      ',:NSTIPDOC'
      ',:NSNFE_TPEMIS'
      ',:NSID_NEW'
      ',:NSID_PED01_NEW'
      ')')
    Left = 56
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'NSCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSUBSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSMODELO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFO1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFO2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFOSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNUMCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSMODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSERIEECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDATCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCNPJ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTNOTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSPISCOFN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSPISCOFR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPROI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPROP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPRON'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSALIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSALIQ2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPII'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPIP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSFRETE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSFRETEPC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTARBAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTISEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTOUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTNOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTRET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCHAVEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCHAVEP_NIVEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NSORDEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSTATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSITCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSHRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSLOTSEQ_CP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCUPACRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCUPDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSAVAP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSEMITENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD05'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD06'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD07'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD08'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD09'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD10'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCERTDIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTPIMPRES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFADFIS01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFADFIS02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_CHAVEACESSO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DCHAVEACESSO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NRECIBO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DH_RECIBO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STAT_REC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_LOTENV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NOMARQLOT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NOMARQREC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_CONTIGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DH_CONTIGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STAT_PROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DIGVAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NUMPROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_VERAPLIC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_INFPRODID'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTIPDOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NSNFE_TPEMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NSID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NSID_PED01_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_AltNsai: TQuery
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Update CADNS set'
      '               NSSUBSER =:NSSUBSER'
      '              ,NSCODCLI =:NSCODCLI'
      '              ,NSCFO1   =:NSCFO1'
      '              ,NSCFO2   =:NSCFO2'
      '              ,NSCFOSER =:NSCFOSER'
      '              ,NSDATCUP =:NSDATCUP'
      '              ,NSCNPJ   =:NSCNPJ'
      '              ,NSIE     =:NSIE'
      '              ,NSTOTNOTA=:NSTOTNOTA'
      '              ,NSBASENI =:NSBASENI'
      '              ,NSICMSNI =:NSICMSNI'
      '              ,NSBASENP =:NSBASENP'
      '              ,NSICMSNP =:NSICMSNP'
      '              ,NSBASENN =:NSBASENN'
      '              ,NSICMSNN =:NSICMSNN'
      '              ,NSBASERI =:NSBASERI'
      '              ,NSPISCOFN=:NSPISCOFN'
      '              ,NSPISCOFR=:NSPISCOFR'
      '              ,NSICMSRI =:NSICMSRI'
      '              ,NSBASERP =:NSBASERP'
      '              ,NSICMSRP =:NSICMSRP'
      '              ,NSBASERN =:NSBASERN'
      '              ,NSICMSRN =:NSICMSRN'
      '              ,NSTOTPROI=:NSTOTPROI'
      '              ,NSTOTPROP=:NSTOTPROP'
      '              ,NSTOTPRON=:NSTOTPRON'
      '              ,NSBASENRI=:NSBASENRI'
      '              ,NSICMSNRI=:NSICMSNRI'
      '              ,NSBASENRP=:NSBASENRP'
      '              ,NSICMSNRP=:NSICMSNRP'
      '              ,NSBASENRN=:NSBASENRN'
      '              ,NSICMSNRN=:NSICMSNRN'
      '              ,NSALIQ   =:NSALIQ'
      '              ,NSALIQ2  =:NSALIQ2'
      '              ,NSIPII   =:NSIPII'
      '              ,NSIPIP   =:NSIPIP'
      '              ,NSIPIN   =:NSIPIN'
      '              ,NSFRETE  =:NSFRETE'
      '              ,NSFRETEPC=:NSFRETEPC'
      '              ,NSTARBAN =:NSTARBAN'
      '              ,NSBCISSQN=:NSBCISSQN'
      '              ,NSVISSQN =:NSVISSQN'
      '              ,NSTOTISEN=:NSTOTISEN'
      '              ,NSTOTOUT =:NSTOTOUT'
      '              ,NSTOTNOR =:NSTOTNOR'
      '              ,NSTOTRET =:NSTOTRET'
      '              ,NSID_PED01_NEW =:NSID_PED01_NEW'
      '              ,NSCHAVEP =:NSCHAVEP'
      '              ,NSORDEMP =:NSORDEMP'
      '              ,NSSTATUS =:NSSTATUS'
      '              ,NSSITCUP =:NSSITCUP'
      '              ,NSBASEN  =:NSBASEN'
      '              ,NSICMSN  =:NSICMSN'
      '              ,NSCODUSR =:NSCODUSR'
      '              ,NSDTALT  =:NSDTALT'
      '              ,NSHRALT  =:NSHRALT'
      '              ,NSSERIEECF=:NSSERIEECF'
      '              ,NSMODECF  =:NSMODECF'
      '              ,NSCUPACRE =:NSCUPACRE'
      '              ,NSCUPDES  =:NSCUPDES'
      '              ,NSLEMAT   =:NSLEMAT'
      '              ,NSICMS_BCFRE=:NSICMS_BCFRE'
      '              ,NSICMS_ALFRE=:NSICMS_ALFRE'
      '              ,NSICMS_VLFRE=:NSICMS_VLFRE'
      '              ,NSICMS_BCSEG=:NSICMS_BCSEG'
      '              ,NSICMS_ALSEG=:NSICMS_ALSEG'
      '              ,NSICMS_VLSEG=:NSICMS_VLSEG'
      '              ,NSICMS_BCOUTD=:NSICMS_BCOUTD'
      '              ,NSICMS_ALOUTD=:NSICMS_ALOUTD'
      '              ,NSICMS_VLOUTD=:NSICMS_VLOUTD'
      '              ,NSICMS_BCIPI=:NSICMS_BCIPI'
      '              ,NSICMS_ALIPI=:NSICMS_ALIPI'
      '              ,NSICMS_VLIPI=:NSICMS_VLIPI'
      '              ,NSNFCF=:NSNFCF'
      '              ,NSAVAP=:NSAVAP'
      '              ,NSEMITENTE=:NSEMITENTE'
      '              ,NSINFAD01=:NSINFAD01'
      '              ,NSINFAD02=:NSINFAD02'
      '              ,NSINFAD03=:NSINFAD03'
      '              ,NSINFAD04=:NSINFAD04'
      '              ,NSINFAD05=:NSINFAD05'
      '              ,NSINFAD06=:NSINFAD06'
      '              ,NSINFAD07=:NSINFAD07'
      '              ,NSINFAD08=:NSINFAD08'
      '              ,NSINFAD09=:NSINFAD09'
      '              ,NSINFAD10=:NSINFAD10'
      '              ,NSINFADFIS01=:NSINFADFIS01'
      '              ,NSINFADFIS02=:NSINFADFIS02'
      '              ,NSCERTDIG=:NSCERTDIG'
      '              ,NSTPIMPRES=:NSTPIMPRES'
      '              ,NSNFE_CHAVEACESSO=:NSNFE_CHAVEACESSO'
      '              ,NSNFE_DCHAVEACESSO=:NSNFE_DCHAVEACESSO'
      '              ,NSNFE_NRECIBO=:NSNFE_NRECIBO'
      '              ,NSNFE_DH_RECIBO=:NSNFE_DH_RECIBO'
      '              ,NSNFE_STAT_REC=:NSNFE_STAT_REC'
      '              ,NSNFE_LOTENV=:NSNFE_LOTENV'
      '              ,NSNFE_NOMARQLOT=:NSNFE_NOMARQLOT'
      '              ,NSNFE_NOMARQREC=:NSNFE_NOMARQREC'
      '              ,NSNFE_CONTIGENCIA=:NSNFE_CONTIGENCIA'
      '              ,NSNFE_DH_CONTIGENCIA=:NSNFE_DH_CONTIGENCIA'
      '              ,NSRED_BCISSQN =:NSRED_BCISSQN'
      '              ,NSBCINSS=:NSBCINSS'
      '              ,NSRED_BCINSS=:NSRED_BCINSS'
      '              ,NSVINSS=:NSVINSS'
      '              ,NSBCIRRF=:NSBCIRRF'
      '              ,NSRED_BCIRRF=:NSRED_BCIRRF'
      '              ,NSVIRRF=:NSVIRRF'
      '              ,NSNFE_STATUS   =:NSNFE_STATUS'
      '              ,NSNFE_STAT_PROT=:NSNFE_STAT_PROT'
      '              ,NSNFE_DIGVAL   =:NSNFE_DIGVAL'
      '              ,NSNFE_NUMPROT  =:NSNFE_NUMPROT'
      '              ,NSNFE_VERAPLIC =:NSNFE_VERAPLIC'
      '              ,NSNFE_INFPRODID =:NSNFE_INFPRODID'
      '              ,NSCHAVEP_NIVEL  =:NSCHAVEP_NIVEL'
      '              ,NSTIPDOC        =:NSTIPDOC'
      '              ,NSNFE_TPEMIS    =:NSNFE_TPEMIS'
      '              where'
      '              NSCODEMP   =:NSCODEMP and'
      '              NSTIPO     =:NSTIPO   and'
      '              NSNUMERO   =:NSNUMERO and'
      '              NSNUMCUP   =:NSNUMCUP and'
      '              NSCODECF   =:NSCODECF and'
      '              NSSERIE    =:NSSERIE  and'
      '              NSMODELO   =:NSMODELO and'
      '              NSDTEMIS   =:NSDTEMIS and'
      '              NSLOTSEQ_CP=:NSLOTSEQ_CP')
    Left = 16
    Top = 28
    ParamData = <
      item
        DataType = ftString
        Name = 'NSSUBSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFO1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFO2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCFOSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDATCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCNPJ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTNOTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSPISCOFN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSPISCOFR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASERN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPROI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPROP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTPRON'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASENRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSNRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSALIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSALIQ2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPII'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPIP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSIPIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSFRETE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSFRETEPC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTARBAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTISEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTOUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTNOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTOTRET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSID_PED01_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NSCHAVEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSORDEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSTATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSITCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBASEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSHRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSERIEECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSMODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCUPACRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCUPDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_BCIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_ALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSICMS_VLIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSAVAP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSEMITENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD05'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD06'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD07'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD08'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD09'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFAD10'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFADFIS01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSINFADFIS02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCERTDIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTPIMPRES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_CHAVEACESSO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DCHAVEACESSO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NRECIBO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DH_RECIBO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STAT_REC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_LOTENV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NOMARQLOT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NOMARQREC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_CONTIGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DH_CONTIGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSBCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSRED_BCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSVIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_STAT_PROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_DIGVAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_NUMPROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_VERAPLIC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_INFPRODID'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCHAVEP_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTIPDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNFE_TPEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSTIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSNUMCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSCODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSSERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSMODELO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NSLOTSEQ_CP'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Qr_IncDar: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADDAR ('
      'CRCODEMP'
      ',CRCODECF'
      ',CRNUMERO'
      ',CRDESD'
      ',CRDUP'
      ',CRCODCLI'
      ',CRNUMCUP'
      ',CRDATCUP'
      ',CRVALOR'
      ',CRTOTNF'
      ',CRTARBAN'
      ',CRDTEMIS'
      ',CRDTVCTO'
      ',CRDTPAG'
      ',CRDTBX'
      ',CRLOTSEQ_CP'
      ',CRLOTSEQ_LB'
      ',CRLOTSEQ_FC'
      ',CRLOTSEQ_CV'
      ',CRLOTSEQ_CV02'
      ',CRLOTSEQ_CV03'
      ',CRLOTSEQ_CS'
      ',CRLOTSEQ_CT'
      ',CRNPED'
      ',CRNPED_NIVEL'
      ',CRORDEM'
      ',CRVALPAG'
      ',CRCODVEN'
      ',CRCODTLV'
      ',CRSTATUS'
      ',CROBS'
      ',CRDESC'
      ',CRDEVOL'
      ',CRJUROS'
      ',CRCODBCO'
      ',CRLOTE'
      ',CRICMSR'
      ',CRDESCF'
      ',CRDTDESCF'
      ',CRJURD'
      ',CRDESCD'
      ',CRMULTA'
      ',CRQTDDM'
      ',CREMIDUP'
      ',CREMIBLQ'
      ',CRVALFRE'
      ',CRNOSNUM'
      ',CRDNOSNUM'
      ',CRNFACUM'
      ',CRTIPCOB'
      ',CRDTALT'
      ',CRUSRALT'
      ',CRUSRBX'
      ',CRCOMVEN'
      ',CRCOMV02'
      ',CRCOMV03'
      ',CRCOMTEL'
      ',CRCOMSUP'
      ',CRSEMCOM'
      ',CRCODLDR'
      ',CRLOTCV'
      ',CRLOTCV02'
      ',CRLOTCV03'
      ',CRLOTCS'
      ',CRCODORI'
      ',CRLOTCT'
      ',CRCODUSR'
      ',CRHRALT'
      ',CRCODV02'
      ',CRCODV03'
      ',CRCODCV'
      ',CRTOTDI01'
      ',CRTOTDI02'
      ',CRTOTDI03'
      ',CRTOTDIVL'
      ',CRVALDES01'
      ',CRVALDES02'
      ',CRVLRDES'
      ',CRCODBAR'
      ',CRCODDIG'
      ',CRACEITE'
      ',CRESPECIE'
      ',CRLEMAT'
      ',CRCODASSE'
      ',CRCOMASSE'
      ',CRLOTSEQ_CASSE'
      ',CRLOTCASSE'
      ',CRQTDPARC'
      ',CRNUMPARC'
      ',CRVALSEG'
      ',CRINST01'
      ',CRINST02'
      ',CRINST03'
      ',CRINST04'
      ',CRTOTCGRU'
      ',CRTOTSGRU'
      ',CRTBCOCOB'
      ',CREMIBOR'
      ',CRCHD_BANCO'
      ',CRCHD_AGENCIA'
      ',CRCHD_CC'
      ',CRCHD_NUMERO'
      ',CRTCB'
      ',CRCAUCAO'
      ',CRBCOCAU'
      ',CRDTCAU'
      ',CRSPC_DTPEN'
      ',CRSPC_DTNEG'
      ',CRSERASA_DTNEG'
      ',CRNR'
      ',CRCODV04'
      ',CRCOMV04'
      ',CRLOTSEQ_CV04'
      ',CRLOTCV04'
      ',CRTOTIPI'
      ',CRCUSBCO'
      ',CRCODCC'
      ',CRCODDEP'
      ',CRDESCMV'
      ',CRNOMCC'
      ',CRNOMDEP'
      ',CRCODCTA'
      ',CRNOMCTA'
      ',CRNATDC'
      ',CRCOMIS_EXTRA'
      ',CRSEQ'
      ',CRPFPGTO'
      ',CRTABPV'
      ',CRCODPV'
      ',CRVINC02'
      ',CRCODFPGTO'
      ',CRNOMFPGTO'
      ',CRFIN_CODFIN'
      ',CRLANCFIN'
      ',CRRECFRENTE'
      ',CRDATPED'
      ',CRCX_CODCAI'
      ',CRCX_LOTMOV'
      ',CRCODCAR'
      ',CRLOTSEQ_EC'
      ',CRLOTE_EC'
      ',CRTITPROT'
      ',CRCHD_EMITENTE'
      ',CRCOMPETENCIA_DTINICIO'
      ',CRCOMPETENCIA_TIPO'
      ',CRCHAVE_ID_ANO'
      ',CRCHAVE_ID'
      ',CRID_NEW'
      ',CRID_PED01_NEW'
      ',CRID_LDR_NEW'
      ''
      ') Values  ('
      ':CRCODEMP'
      ',:CRCODECF'
      ',:CRNUMERO'
      ',:CRDESD'
      ',:CRDUP'
      ',:CRCODCLI'
      ',:CRNUMCUP'
      ',:CRDATCUP'
      ',:CRVALOR'
      ',:CRTOTNF'
      ',:CRTARBAN'
      ',:CRDTEMIS'
      ',:CRDTVCTO'
      ',:CRDTPAG'
      ',:CRDTBX'
      ',:CRLOTSEQ_CP'
      ',:CRLOTSEQ_LB'
      ',:CRLOTSEQ_FC'
      ',:CRLOTSEQ_CV'
      ',:CRLOTSEQ_CV02'
      ',:CRLOTSEQ_CV03'
      ',:CRLOTSEQ_CS'
      ',:CRLOTSEQ_CT'
      ',:CRNPED'
      ',:CRNPED_NIVEL'
      ',:CRORDEM'
      ',:CRVALPAG'
      ',:CRCODVEN'
      ',:CRCODTLV'
      ',:CRSTATUS'
      ',:CROBS'
      ',:CRDESC'
      ',:CRDEVOL'
      ',:CRJUROS'
      ',:CRCODBCO'
      ',:CRLOTE'
      ',:CRICMSR'
      ',:CRDESCF'
      ',:CRDTDESCF'
      ',:CRJURD'
      ',:CRDESCD'
      ',:CRMULTA'
      ',:CRQTDDM'
      ',:CREMIDUP'
      ',:CREMIBLQ'
      ',:CRVALFRE'
      ',:CRNOSNUM'
      ',:CRDNOSNUM'
      ',:CRNFACUM'
      ',:CRTIPCOB'
      ',:CRDTALT'
      ',:CRUSRALT'
      ',:CRUSRBX'
      ',:CRCOMVEN'
      ',:CRCOMV02'
      ',:CRCOMV03'
      ',:CRCOMTEL'
      ',:CRCOMSUP'
      ',:CRSEMCOM'
      ',:CRCODLDR'
      ',:CRLOTCV'
      ',:CRLOTCV02'
      ',:CRLOTCV03'
      ',:CRLOTCS'
      ',:CRCODORI'
      ',:CRLOTCT'
      ',:CRCODUSR'
      ',:CRHRALT'
      ',:CRCODV02'
      ',:CRCODV03'
      ',:CRCODCV'
      ',:CRTOTDI01'
      ',:CRTOTDI02'
      ',:CRTOTDI03'
      ',:CRTOTDIVL'
      ',:CRVALDES01'
      ',:CRVALDES02'
      ',:CRVLRDES'
      ',:CRCODBAR'
      ',:CRCODDIG'
      ',:CRACEITE'
      ',:CRESPECIE'
      ',:CRLEMAT'
      ',:CRCODASSE'
      ',:CRCOMASSE'
      ',:CRLOTSEQ_CASSE'
      ',:CRLOTCASSE'
      ',:CRQTDPARC'
      ',:CRNUMPARC'
      ',:CRVALSEG'
      ',:CRINST01'
      ',:CRINST02'
      ',:CRINST03'
      ',:CRINST04'
      ',:CRTOTCGRU'
      ',:CRTOTSGRU'
      ',:CRTBCOCOB'
      ',:CREMIBOR'
      ',:CRCHD_BANCO'
      ',:CRCHD_AGENCIA'
      ',:CRCHD_CC'
      ',:CRCHD_NUMERO'
      ',:CRTCB'
      ',:CRCAUCAO'
      ',:CRBCOCAU'
      ',:CRDTCAU'
      ',:CRSPC_DTPEN'
      ',:CRSPC_DTNEG'
      ',:CRSERASA_DTNEG'
      ',:CRNR'
      ',:CRCODV04'
      ',:CRCOMV04'
      ',:CRLOTSEQ_CV04'
      ',:CRLOTCV04'
      ',:CRTOTIPI'
      ',:CRCUSBCO'
      ',:CRCODCC'
      ',:CRCODDEP'
      ',:CRDESCMV'
      ',:CRNOMCC'
      ',:CRNOMDEP'
      ',:CRCODCTA'
      ',:CRNOMCTA'
      ',:CRNATDC'
      ',:CRCOMIS_EXTRA'
      ',:CRSEQ'
      ',:CRPFPGTO'
      ',:CRTABPV'
      ',:CRCODPV'
      ',:CRVINC02'
      ',:CRCODFPGTO'
      ',:CRNOMFPGTO'
      ',:CRFIN_CODFIN'
      ',:CRLANCFIN'
      ',:CRRECFRENTE'
      ',:CRDATPED'
      ',:CRCX_CODCAI'
      ',:CRCX_LOTMOV'
      ',:CRCODCAR'
      ',:CRLOTSEQ_EC'
      ',:CRLOTE_EC'
      ',:CRTITPROT'
      ',:CRCHD_EMITENTE'
      ',:CRCOMPETENCIA_DTINICIO'
      ',:CRCOMPETENCIA_TIPO'
      ',:CRCHAVE_ID_ANO'
      ',:CRCHAVE_ID'
      ',:CRID_NEW'
      ',:CRID_PED01_NEW'
      ',:CRID_LDR_NEW'
      ''
      ')')
    Left = 24
    Top = 131
    ParamData = <
      item
        DataType = ftString
        Name = 'CRCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDATCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTNF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTARBAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTVCTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTPAG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_LB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_FC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNPED_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRORDEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALPAG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODTLV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSTATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CROBS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDEVOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRJUROS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRICMSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRJURD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRMULTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRQTDDM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIDUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIBLQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOSNUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDNOSNUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNFACUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTIPCOB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRUSRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRUSRBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMTEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMSUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSEMCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRHRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDIVL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALDES01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALDES02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVLRDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODBAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODDIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRACEITE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRESPECIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRQTDPARC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMPARC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTCGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTSGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTBCOCOB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIBOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_BANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_AGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_CC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTCB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCAUCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRBCOCAU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTCAU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSPC_DTPEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSPC_DTNEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSERASA_DTNEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCUSBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNATDC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRPFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTABPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVINC02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRFIN_CODFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLANCFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRRECFRENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDATPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCX_CODCAI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCX_LOTMOV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_EC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTE_EC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTITPROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_EMITENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMPETENCIA_DTINICIO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMPETENCIA_TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHAVE_ID_ANO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRCHAVE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRID_PED01_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRID_LDR_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_AltDar: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Update CADDAR set'
      ' CRCODCLI=:CRCODCLI'
      ',CRNUMCUP=:CRNUMCUP'
      ',CRDATCUP=:CRDATCUP'
      ',CRVALOR=:CRVALOR'
      ',CRTOTNF=:CRTOTNF'
      ',CRTARBAN=:CRTARBAN'
      ',CRDTEMIS=:CRDTEMIS'
      ',CRDTVCTO=:CRDTVCTO'
      ',CRDTPAG=:CRDTPAG'
      ',CRDTBX=:CRDTBX'
      ',CRLOTSEQ_CP=:CRLOTSEQ_CP'
      ',CRLOTSEQ_LB=:CRLOTSEQ_LB'
      ',CRLOTSEQ_FC=:CRLOTSEQ_FC'
      ',CRLOTSEQ_CV=:CRLOTSEQ_CV'
      ',CRLOTSEQ_CV02=:CRLOTSEQ_CV02'
      ',CRLOTSEQ_CV03=:CRLOTSEQ_CV03'
      ',CRLOTSEQ_CS   =:CRLOTSEQ_CS'
      ',CRLOTSEQ_CT   =:CRLOTSEQ_CT'
      ',CRNPED=:CRNPED'
      ',CRORDEM=:CRORDEM'
      ',CRVALPAG=:CRVALPAG'
      ',CRCODVEN=:CRCODVEN'
      ',CRCODTLV=:CRCODTLV'
      ',CRSTATUS=:CRSTATUS'
      ',CROBS=:CROBS'
      ',CRDESC=:CRDESC'
      ',CRDEVOL=:CRDEVOL'
      ',CRJUROS=:CRJUROS'
      ',CRCODBCO=:CRCODBCO'
      ',CRLOTE=:CRLOTE'
      ',CRICMSR=:CRICMSR'
      ',CRDESCF=:CRDESCF'
      ',CRDTDESCF=:CRDTDESCF'
      ',CRJURD=:CRJURD'
      ',CRDESCD=:CRDESCD'
      ',CRMULTA=:CRMULTA'
      ',CRQTDDM=:CRQTDDM'
      ',CREMIDUP=:CREMIDUP'
      ',CREMIBLQ=:CREMIBLQ'
      ',CRVALFRE=:CRVALFRE'
      ',CRNOSNUM=:CRNOSNUM'
      ',CRDNOSNUM=:CRDNOSNUM'
      ',CRNFACUM=:CRNFACUM'
      ',CRTIPCOB=:CRTIPCOB'
      ',CRDTALT=:CRDTALT'
      ',CRUSRALT=:CRUSRALT'
      ',CRUSRBX=:CRUSRBX'
      ',CRCOMVEN=:CRCOMVEN'
      ',CRCOMV02=:CRCOMV02'
      ',CRCOMV03=:CRCOMV03'
      ',CRCOMTEL=:CRCOMTEL'
      ',CRCOMSUP=:CRCOMSUP'
      ',CRSEMCOM=:CRSEMCOM'
      ',CRCODLDR=:CRCODLDR'
      ',CRLOTCV=:CRLOTCV'
      ',CRLOTCV02=:CRLOTCV02'
      ',CRLOTCV03=:CRLOTCV03'
      ',CRLOTCS=:CRLOTCS'
      ',CRCODORI=:CRCODORI'
      ',CRLOTCT=:CRLOTCT'
      ',CRCODUSR=:CRCODUSR'
      ',CRHRALT=:CRHRALT'
      ',CRCODV02=:CRCODV02'
      ',CRCODV03=:CRCODV03'
      ',CRCODCV =:CRCODCV'
      ',CRTOTDI01=:CRTOTDI01'
      ',CRTOTDI02=:CRTOTDI02'
      ',CRTOTDI03=:CRTOTDI03'
      ',CRTOTDIVL=:CRTOTDIVL'
      ',CRVALDES01=:CRVALDES01'
      ',CRVALDES02=:CRVALDES02'
      ',CRVLRDES  =:CRVLRDES'
      ',CRCODBAR  =:CRCODBAR'
      ',CRCODDIG  =:CRCODDIG'
      ',CRACEITE  =:CRACEITE'
      ',CRESPECIE =:CRESPECIE'
      ',CRLEMAT   =:CRLEMAT'
      ',CRCODASSE =:CRCODASSE'
      ',CRCOMASSE =:CRCOMASSE'
      ',CRLOTSEQ_CASSE=:CRLOTSEQ_CASSE'
      ',CRLOTCASSE    =:CRLOTCASSE'
      ',CRQTDPARC     =:CRQTDPARC'
      ',CRNUMPARC     =:CRNUMPARC'
      ',CRVALSEG      =:CRVALSEG'
      ',CRINST01      =:CRINST01'
      ',CRINST02      =:CRINST02'
      ',CRINST03      =:CRINST03'
      ',CRINST04      =:CRINST04'
      ',CRTOTCGRU     =:CRTOTCGRU'
      ',CRTOTSGRU     =:CRTOTSGRU'
      ',CRTBCOCOB     =:CRTBCOCOB'
      ',CREMIBOR      =:CREMIBOR'
      ',CRCHD_BANCO   =:CRCHD_BANCO'
      ',CRCHD_AGENCIA =:CRCHD_AGENCIA'
      ',CRCHD_CC      =:CRCHD_CC'
      ',CRCHD_NUMERO  =:CRCHD_NUMERO'
      ',CRTCB         =:CRTCB'
      ',CRTITPROT     =:CRTITPROT'
      ',CRCAUCAO      =:CRCAUCAO'
      ',CRBCOCAU      =:CRBCOCAU'
      ',CRDTCAU       =:CRDTCAU'
      ',CRSPC_DTPEN   =:CRSPC_DTPEN'
      ',CRSPC_DTNEG   =:CRSPC_DTNEG'
      ',CRSERASA_DTNEG=:CRSERASA_DTNEG'
      ',CRNR          =:CRNR'
      ',CRCODV04      =:CRCODV04'
      ',CRCOMV04      =:CRCOMV04'
      ',CRLOTSEQ_CV04 =:CRLOTSEQ_CV04'
      ',CRLOTCV04     =:CRLOTCV04'
      ',CRTOTIPI      =:CRTOTIPI'
      ',CRCUSBCO      =:CRCUSBCO'
      ',CRCODCTA      =:CRCODCTA'
      ',CRCODCC       =:CRCODCC'
      ',CRCODDEP      =:CRCODDEP'
      ',CRDESCMV      =:CRDESCMV'
      ',CRNOMCC       =:CRNOMCC'
      ',CRNOMDEP      =:CRNOMDEP'
      ',CRNOMCTA      =:CRNOMCTA'
      ',CRNATDC       =:CRNATDC'
      ',CRCOMIS_EXTRA =:CRCOMIS_EXTRA'
      ',CRSEQ         =:CRSEQ'
      ',CRPFPGTO      =:CRPFPGTO'
      ',CRTABPV       =:CRTABPV'
      ',CRCODPV       =:CRCODPV'
      ',CRVINC02      =:CRVINC02'
      ',CRCODFPGTO    =:CRCODFPGTO'
      ',CRNOMFPGTO    =:CRNOMFPGTO'
      ',CRFIN_CODFIN  =:CRFIN_CODFIN'
      ',CRLANCFIN     =:CRLANCFIN'
      ',CRRECFRENTE   =:CRRECFRENTE'
      ',CRDATPED      =:CRDATPED'
      ',CRCX_CODCAI   =:CRCX_CODCAI'
      ',CRCX_LOTMOV   =:CRCX_LOTMOV'
      ',CRCODCAR      =:CRCODCAR'
      ',CRLOTSEQ_EC   =:CRLOTSEQ_EC'
      ',CRLOTE_EC     =:CRLOTE_EC'
      ',CRCHD_EMITENTE=:CRCHD_EMITENTE'
      ',CRNPED_NIVEL  =:CRNPED_NIVEL'
      ',CRCOMPETENCIA_DTINICIO=:CRCOMPETENCIA_DTINICIO'
      ',CRCOMPETENCIA_TIPO=:CRCOMPETENCIA_TIPO'
      ',CRID_NEW=:CRID_NEW'
      ',CRID_PED01_NEW=:CRID_PED01_NEW'
      ',CRID_LDR_NEW=:CRID_LDR_NEW'
      ''
      'where CRCODEMP =:CRCODEMP'
      '  and CRCODECF =:CRCODECF'
      '  and CRNUMERO =:CRNUMERO'
      '  and CRDESD   =:CRDESD'
      '  and CRDUP    =:CRDUP'
      '  and CRDTEMIS =:CRDTEMIS')
    Left = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'CRCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDATCUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTNF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTARBAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTVCTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTPAG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_LB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_FC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRORDEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALPAG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODTLV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSTATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CROBS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDEVOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRJUROS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRICMSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRJURD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRMULTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRQTDDM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIDUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIBLQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOSNUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDNOSNUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNFACUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTIPCOB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRUSRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRUSRBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMTEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMSUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSEMCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRHRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDI03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTDIVL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALDES01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALDES02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVLRDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODBAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODDIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRACEITE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRESPECIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRQTDPARC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMPARC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRINST04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTCGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTSGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTBCOCOB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CREMIBOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_BANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_AGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_CC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTCB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTITPROT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCAUCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRBCOCAU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTCAU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSPC_DTPEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSPC_DTNEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSERASA_DTNEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_CV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTCV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTOTIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCUSBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNATDC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRPFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRTABPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRVINC02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNOMFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRFIN_CODFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLANCFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRRECFRENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDATPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCX_CODCAI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCX_LOTMOV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODCAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTSEQ_EC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRLOTE_EC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCHD_EMITENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNPED_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMPETENCIA_DTINICIO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCOMPETENCIA_TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRID_PED01_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRID_LDR_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CRCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRCODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDESD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CRDTEMIS'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncLDR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADLDR ('
      'CODEMP'
      ',DATADP'
      ',CODLDR'
      ',DATAREAL'
      ',DATAREF'
      ',VALORP'
      ',VALORR'
      ',CODBCO'
      ',CODCC'
      ',CODDEP'
      ',NATDC'
      ',DESCMV'
      ',NUMDOC'
      ',NUMDOC2'
      ',VINCULO'
      ',STATUS'
      ',ORIGEM'
      ',LOCDEP'
      ',TIPO'
      ',CODIGO'
      ',USRALT'
      ',DTALT'
      ',DTCOMP'
      ',HRALT'
      ',COMPENS'
      ',USREXC'
      ',DTHREXC'
      ',LOTSEQ'
      ',NOMDEP'
      ',NOMBCO'
      ',NOMCCU'
      ',NOME'
      ',FC_OBSFIN'
      ',DATLAN'
      ',LOTMOV'
      ',LEMAT'
      ',DTSALDO'
      ',CODUSR_CX'
      ',FC_COMPETENCIA_DTINICIO'
      ',FC_COMPETENCIA_TIPO'
      ',LDR_ID_NEW'
      ''
      ') Values  ('
      ':CODEMP'
      ',:DATADP'
      ',:CODLDR'
      ',:DATAREAL'
      ',:DATAREF'
      ',:VALORP'
      ',:VALORR'
      ',:CODBCO'
      ',:CODCC'
      ',:CODDEP'
      ',:NATDC'
      ',:DESCMV'
      ',:NUMDOC'
      ',:NUMDOC2'
      ',:VINCULO'
      ',:STATUS'
      ',:ORIGEM'
      ',:LOCDEP'
      ',:TIPO'
      ',:CODIGO'
      ',:USRALT'
      ',:DTALT'
      ',:DTCOMP'
      ',:HRALT'
      ',:COMPENS'
      ',:USREXC'
      ',:DTHREXC'
      ',:LOTSEQ'
      ',:NOMDEP'
      ',:NOMBCO'
      ',:NOMCCU'
      ',:NOME'
      ',:FC_OBSFIN'
      ',:DATLAN'
      ',:LOTMOV'
      ',:LEMAT'
      ',:DTSALDO'
      ',:CODUSR_CX'
      ',:FC_COMPETENCIA_DTINICIO'
      ',:FC_COMPETENCIA_TIPO'
      ',:LDR_ID_NEW'
      ')')
    Left = 24
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATADP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATAREAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATAREF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'VALORP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'VALORR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NATDC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMDOC2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'VINCULO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'USRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTCOMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'HRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'COMPENS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'USREXC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTHREXC'
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
        Name = 'NOMDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMBCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMCCU'
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
        Name = 'FC_OBSFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATLAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTMOV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTSALDO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODUSR_CX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FC_COMPETENCIA_DTINICIO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FC_COMPETENCIA_TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LDR_ID_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_AltPed01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Update CADP01 set'
      'P1CODCLI=:P1CODCLI'
      ',P1ANALISE=:P1ANALISE'
      ',P1ACRESCIMO=:P1ACRESCIMO'
      ',P1CODVEN=:P1CODVEN'
      ',P1CODV02=:P1CODV02'
      ',P1CODV03=:P1CODV03'
      ',P1CODASSE=:P1CODASSE'
      ',P1DATAP=:P1DATAP'
      ',P1DATANF=:P1DATANF'
      ',P1NUMNF=:P1NUMNF'
      ',P1SERIE=:P1SERIE'
      ',P1SUBSER=:P1SUBSER'
      ',P1MODELO=:P1MODELO'
      ',P1SUBMOD=:P1SUBMOD'
      ',P1OBS1=:P1OBS1'
      ',P1OBS2=:P1OBS2'
      ',P1OBS3=:P1OBS3'
      ',P1STATUS=:P1STATUS'
      ',P1TIPO=:P1TIPO'
      ',P1TIPO_ENTSAI=:P1TIPO_ENTSAI'
      ',P1TOTALB=:P1TOTALB'
      ',P1TOTALL=:P1TOTALL'
      ',P1TOTEXTCOM=:P1TOTEXTCOM'
      ',P1CODUSR=:P1CODUSR'
      ',P1HORADIG=:P1HORADIG'
      ',P1DTMOD=:P1DTMOD'
      ',P1HRMOD=:P1HRMOD'
      ',P1USRMOD=:P1USRMOD'
      ',P1CONF=:P1CONF'
      ',P1CODCON=:P1CODCON'
      ',P1DATCON=:P1DATCON'
      ',P1HORCON=:P1HORCON'
      ',P1TIPENT=:P1TIPENT'
      ',P1PREVENT=:P1PREVENT'
      ',P1HPREVENT=:P1HPREVENT'
      ',P1CODENT=:P1CODENT'
      ',P1PRAZO=:P1PRAZO'
      ',P1DATENT=:P1DATENT'
      ',P1HORENT=:P1HORENT'
      ',P1TABPV=:P1TABPV'
      ',P1CODPV=:P1CODPV'
      ',P1CUPOM=:P1CUPOM'
      ',P1BASEN=:P1BASEN'
      ',P1ICMSN=:P1ICMSN'
      ',P1REPAS=:P1REPAS'
      ',P1BASER=:P1BASER'
      ',P1ICMSR=:P1ICMSR'
      ',P1BASENP=:P1BASENP'
      ',P1BASENN=:P1BASENN'
      ',P1BASENI=:P1BASENI'
      ',P1ICMSNP=:P1ICMSNP'
      ',P1ICMSNN=:P1ICMSNN'
      ',P1ICMSNI=:P1ICMSNI'
      ',P1BASERP=:P1BASERP'
      ',P1BASERN=:P1BASERN'
      ',P1BASERI=:P1BASERI'
      ',P1ICMSRP=:P1ICMSRP'
      ',P1ICMSRN=:P1ICMSRN'
      ',P1ICMSRI=:P1ICMSRI'
      ',P1BASENRI=:P1BASENRI'
      ',P1ICMSNRI=:P1ICMSNRI'
      ',P1BASENRP=:P1BASENRP'
      ',P1ICMSNRP=:P1ICMSNRP'
      ',P1BASENRN=:P1BASENRN'
      ',P1ICMSNRN=:P1ICMSNRN'
      ',P1IPIINA=:P1IPIINA'
      ',P1IPIPOS=:P1IPIPOS'
      ',P1IPINEG=:P1IPINEG'
      ',P1TOTTRI=:P1TOTTRI'
      ',P1TOTRET=:P1TOTRET'
      ',P1TOTISE=:P1TOTISE'
      ',P1TOTPOS=:P1TOTPOS'
      ',P1TOTNEG=:P1TOTNEG'
      ',P1TOTINA=:P1TOTINA'
      ',P1TOTDES=:P1TOTDES'
      ',P1TOTUCPR=:P1TOTUCPR'
      ',P1DESC01=:P1DESC01'
      ',P1DESC02=:P1DESC02'
      ',P1VLRDES=:P1VLRDES'
      ',P1PAVDES=:P1PAVDES'
      ',P1CODTRA=:P1CODTRA'
      ',P1QTDVOL=:P1QTDVOL'
      ',P1PESOL=:P1PESOL'
      ',P1PESOB=:P1PESOB'
      ',P1ESPECIE=:P1ESPECIE'
      ',P1FRETEPC=:P1FRETEPC'
      ',P1VALFRE=:P1VALFRE'
      ',P1TARBAN=:P1TARBAN'
      ',P1ICMS_BCFRE=:P1ICMS_BCFRE'
      ',P1ICMS_ALFRE=:P1ICMS_ALFRE'
      ',P1ICMS_VLFRE=:P1ICMS_VLFRE'
      ',P1ICMS_BCSEG=:P1ICMS_BCSEG'
      ',P1ICMS_ALSEG=:P1ICMS_ALSEG'
      ',P1ICMS_VLSEG=:P1ICMS_VLSEG'
      ',P1ICMS_BCOUTD=:P1ICMS_BCOUTD'
      ',P1ICMS_ALOUTD=:P1ICMS_ALOUTD'
      ',P1ICMS_VLOUTD=:P1ICMS_VLOUTD'
      ',P1ICMS_BCIPI=:P1ICMS_BCIPI'
      ',P1ICMS_ALIPI=:P1ICMS_ALIPI'
      ',P1ICMS_VLIPI=:P1ICMS_VLIPI'
      ',P1UFPV=:P1UFPV'
      ',P1PLACAV=:P1PLACAV'
      ',P1BANCO=:P1BANCO'
      ',P1CODSER=:P1CODSER'
      ',P1CODLDR=:P1CODLDR'
      ',P1PCOMIS=:P1PCOMIS'
      ',P1COMIS=:P1COMIS'
      ',P1COMIST=:P1COMIST'
      ',P1COMISS=:P1COMISS'
      ',P1COMASSE=:P1COMASSE'
      ',P1ORIGEM=:P1ORIGEM'
      ',P1CODTLV=:P1CODTLV'
      ',P1BCISSQN=:P1BCISSQN'
      ',P1VISSQN=:P1VISSQN'
      ',P1ETIVOL=:P1ETIVOL'
      ',P1CODSEP=:P1CODSEP'
      ',P1DATASEP=:P1DATASEP'
      ',P1HORSEP=:P1HORSEP'
      ',P1CODEMB=:P1CODEMB'
      ',P1DATAEMB=:P1DATAEMB'
      ',P1HOREMB=:P1HOREMB'
      ',P1NUMCF=:P1NUMCF'
      ',P1DATACF=:P1DATACF'
      ',P1TPPCO=:P1TPPCO'
      ',P1SEMCOM=:P1SEMCOM'
      ',P1DESCFIN=:P1DESCFIN'
      ',P1LOTCV=:P1LOTCV'
      ',P1LOTCASSE=:P1LOTCASSE'
      ',P1LOTCS=:P1LOTCS'
      ',P1LOTCT=:P1LOTCT'
      ',P1PVTC=:P1PVTC'
      ',P1PVCOM=:P1PVCOM'
      ',P1PVACTD=:P1PVACTD'
      ',P1PVACT00=:P1PVACT00'
      ',P1PVACT01=:P1PVACT01'
      ',P1PVACT99=:P1PVACT99'
      ',P1PVTDC=:P1PVTDC'
      ',P1PVDES=:P1PVDES'
      ',P1PVTPD1=:P1PVTPD1'
      ',P1PVDES1=:P1PVDES1'
      ',P1PVTPD2=:P1PVTPD2'
      ',P1PVDES2=:P1PVDES2'
      ',P1PVTPD3=:P1PVTPD3'
      ',P1PVDES3=:P1PVDES3'
      ',P1PVTPDESF=:P1PVTPDESF'
      ',P1PVDESCF=:P1PVDESCF'
      ',P1PVDIASDESCF=:P1PVDIASDESCF'
      ',P1PVDDESCF=:P1PVDDESCF'
      ',P1TPP=:P1TPP'
      ',P1SITAC=:P1SITAC'
      ',P1CODECF=:P1CODECF'
      ',P1VLRACRE=:P1VLRACRE'
      ',P1PEDORI1=:P1PEDORI1'
      ',P1PEDORI2=:P1PEDORI2'
      ',P1MOTIVO=:P1MOTIVO'
      ',P1NUMVIS=:P1NUMVIS'
      ',P1DATVIS=:P1DATVIS'
      ',P1SITPED=:P1SITPED'
      ',P1FORMACE=:P1FORMACE'
      ',P1TOTOUT=:P1TOTOUT'
      ',P1TOTDI01=:P1TOTDI01'
      ',P1TOTDI02=:P1TOTDI02'
      ',P1TOTDI03=:P1TOTDI03'
      ',P1VALDES01=:P1VALDES01'
      ',P1VALDES02=:P1VALDES02'
      ',P1TOTDIVL=:P1TOTDIVL'
      ',P1CODCV=:P1CODCV'
      ',P1LOTEDM=:P1LOTEDM'
      ',P1COMV02=:P1COMV02'
      ',P1COMV03=:P1COMV03'
      ',P1NPEDORI=:P1NPEDORI'
      ',P1PVCOM02=:P1PVCOM02'
      ',P1PVCOM03=:P1PVCOM03'
      ',P1DATDOC=:P1DATDOC'
      ',P1EMIDOC=:P1EMIDOC'
      ',P1ACRECONV=:P1ACRECONV'
      ',P1ACREGER=:P1ACREGER'
      ',P1PACRECONV=:P1PACRECONV'
      ',P1PACREGER=:P1PACREGER'
      ',P1CODDEP=:P1CODDEP'
      ',P1NAUT=:P1NAUT'
      ',P1MINUTA=:P1MINUTA'
      ',P1LOTCV02=:P1LOTCV02'
      ',P1LOTCV03=:P1LOTCV03'
      ',P1SITCPR=:P1SITCPR'
      ',P1SEMCOMP=:P1SEMCOMP'
      ',P1CFO1  =:P1CFO1'
      ',P1CFO2  =:P1CFO2'
      ',P1CFOSER=:P1CFOSER'
      ',P1PEDORI=:P1PEDORI'
      ',P1BLQPRM=:P1BLQPRM'
      ',P1VALSEG=:P1VALSEG'
      ',P1PDESCLIB=:P1PDESCLIB'
      ',P1PDESCL_USR=:P1PDESCL_USR'
      ',P1PROCESSO  =:P1PROCESSO'
      ',P1CUPACRE   =:P1CUPACRE'
      ',P1CUPDES    =:P1CUPDES'
      ',P1LEMAT     =:P1LEMAT'
      ',P1QTDMAN    =:P1QTDMAN'
      ',P1DTACERTO  =:P1DTACERTO'
      ',P1LTACERTO  =:P1LTACERTO'
      ',P1CANHOTO   =:P1CANHOTO'
      ',P1ALIQDEB   =:P1ALIQDEB'
      ',P1TOTCGRU   =:P1TOTCGRU'
      ',P1TOTSGRU   =:P1TOTSGRU'
      ',P1CODV04    =:P1CODV04'
      ',P1COMV04    =:P1COMV04'
      ',P1LOTCV04   =:P1LOTCV04'
      ',P1PVCOM04   =:P1PVCOM04'
      ',P1DTHRCHEG  =:P1DTHRCHEG'
      ',P1CODPRIOR  =:P1CODPRIOR'
      ',P1PROMOCAO  =:P1PROMOCAO'
      ',P1CODBLOQ   =:P1CODBLOQ'
      ',P1CODUSR_LBLOQ=:P1CODUSR_LBLOQ'
      ',P1TOTSERLIQ   =:P1TOTSERLIQ'
      ',P1COMIS_EXTRA =:P1COMIS_EXTRA'
      ',P1QTDM3       =:P1QTDM3'
      ',P1VFRE_CUSENT =:P1VFRE_CUSENT'
      ',P1VALENT      =:P1VALENT'
      ',P1PRAZO_ENT   =:P1PRAZO_ENT'
      ',P1SEPAMB      =:P1SEPAMB'
      ',P1PZOLIB      =:P1PZOLIB'
      ',P1PZOLIB_USR  =:P1PZOLIB_USR'
      ',P1BLOQPEND    =:P1BLOQPEND'
      ',P1CODBLOQ_LIB  =:P1CODBLOQ_LIB'
      ',P1ECF_SERIE    =:P1ECF_SERIE'
      ',P1CX_CODCAI    =:P1CX_CODCAI'
      ',P1CX_LOTMOV    =:P1CX_LOTMOV'
      ',P1DUP_PROD     =:P1DUP_PROD'
      ',P1DUP_SERV     =:P1DUP_SERV'
      ',P1INCTB        =:P1INCTB'
      ',P1EMITENTE     =:P1EMITENTE'
      ',P1PVACREDESREG =:P1PVACREDESREG'
      ',P1PVAJCOMIS    =:P1PVAJCOMIS'
      ',P1LOCAL        =:P1LOCAL'
      ',P1TOTPROM      =:P1TOTPROM'
      ',P1TOTPIS       =:P1TOTPIS'
      ',P1TOTCOFINS   =:P1TOTCOFINS'
      ',P1RED_BCISSQN =:P1RED_BCISSQN'
      ',P1BCINSS      =:P1BCINSS'
      ',P1RED_BCINSS  =:P1RED_BCINSS'
      ',P1VINSS       =:P1VINSS'
      ',P1BCIRRF      =:P1BCIRRF'
      ',P1RED_BCIRRF  =:P1RED_BCIRRF'
      ',P1VIRRF       =:P1VIRRF'
      ',P1NFE_ENVXML  =:P1NFE_ENVXML'
      ',P1QTDDECPU    =:P1QTDDECPU'
      ',P1CHAVE_NIVEL =:P1CHAVE_NIVEL'
      ',P1TPEMIS      =:P1TPEMIS'
      ',P1ID_NEW      =:P1ID_NEW'
      ',P1NOME_PROD   =:P1NOME_PROD'
      'where P1CODEMP =:P1CODEMP'
      '      and P1LOTSEQ=:P1LOTSEQ'
      '      and P1CHAVE =:P1CHAVE'
      '      and P1ORDEM =:P1ORDEM')
    Left = 52
    Top = 44
    ParamData = <
      item
        DataType = ftString
        Name = 'P1CODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ANALISE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1ACRESCIMO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1CODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATAP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATANF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMNF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SUBSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MODELO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SUBMOD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1OBS3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPO_ENTSAI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTALB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTALL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTEXTCOM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1CODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORADIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTMOD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HRMOD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1USRMOD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CONF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODCON'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATCON'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORCON'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TIPENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PREVENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HPREVENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PRAZO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TABPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1REPAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASERI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BASENRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMSNRN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPIINA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPIPOS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1IPINEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTTRI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTRET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTISE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPOS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTNEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTINA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTUCPR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESC01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESC02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VLRDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PAVDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDVOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PESOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PESOB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ESPECIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1FRETEPC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TARBAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLFRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLOUTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_BCIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_ALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ICMS_VLIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1UFPV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PLACAV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIST'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMISS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ORIGEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODTLV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ETIVOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODSEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATASEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HORSEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODEMB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATAEMB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1HOREMB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATACF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPPCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEMCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DESCFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCASSE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT00'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACT99'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTDC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPD3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDES3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVTPDESF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDIASDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVDDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITAC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VLRACRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MOTIVO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NUMVIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATVIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1FORMACE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTOUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDI03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALDES01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALDES02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTDIVL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODCV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTEDM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NPEDORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DATDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1EMIDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ACRECONV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ACREGER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PACRECONV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PACREGER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NAUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1MINUTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SITCPR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEMCOMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFO1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFO2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CFOSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PEDORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BLQPRM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALSEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PDESCLIB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PDESCL_USR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PROCESSO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPACRE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CUPDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDMAN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTACERTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LTACERTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CANHOTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ALIQDEB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTCGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTSGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTCV04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVCOM04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DTHRCHEG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODPRIOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PROMOCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODBLOQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODUSR_LBLOQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTSERLIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1COMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDM3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VFRE_CUSENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VALENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PRAZO_ENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1SEPAMB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PZOLIB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PZOLIB_USR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BLOQPEND'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CODBLOQ_LIB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ECF_SERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CX_CODCAI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CX_LOTMOV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DUP_PROD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1DUP_SERV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1INCTB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1EMITENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVACREDESREG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1PVAJCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOCAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPROM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTPIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TOTCOFINS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCISSQN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VINSS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1BCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1RED_BCIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1VIRRF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1NFE_ENVXML'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1QTDDECPU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CHAVE_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1TPEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1NOME_PROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P1CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P1ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Qr_IncFPCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into FPCR ('
      'FPCODEMP'
      ',FPSEQ'
      ',FPDATA'
      ',FPFORMA'
      ',FPNUMERO'
      ',FPBANCO'
      ',FPSERIE'
      ',FPVALOR'
      ',FPLOTE'
      ',FPCC'
      ',FPTIPO'
      ',FPCAIXA'
      ',FPCODLDR'
      ',FPLOTSEQ_FC'
      ',FPLOTSEQ'
      ',FPLEMAT'
      ',FPVINCULO'
      ',FPNATUREZA'
      ',FPNR'
      ',FPCODCLI'
      ',FPDATDEP'
      ',FPDEV_CODEMP'
      ',FPDEV_CODECF'
      ',FPDEV_NUMERO'
      ',FPDEV_DESD'
      ',FPDEV_DUP'
      ',FPDEV_DTEMIS'
      ',FPDATHOR_EVE'
      ',FPCODLDR_TARBAN'
      ',FPTARBAN'
      ',FPID_NEW'
      ',FPID_LDR_NEW'
      ',FPDEV_ID_DAR_NEW'
      ')'
      ' Values  ('
      ':FPCODEMP'
      ',:FPSEQ'
      ',:FPDATA'
      ',:FPFORMA'
      ',:FPNUMERO'
      ',:FPBANCO'
      ',:FPSERIE'
      ',:FPVALOR'
      ',:FPLOTE'
      ',:FPCC'
      ',:FPTIPO'
      ',:FPCAIXA'
      ',:FPCODLDR'
      ',:FPLOTSEQ_FC'
      ',:FPLOTSEQ'
      ',:FPLEMAT'
      ',:FPVINCULO'
      ',:FPNATUREZA'
      ',:FPNR'
      ',:FPCODCLI'
      ',:FPDATDEP'
      ',:FPDEV_CODEMP'
      ',:FPDEV_CODECF'
      ',:FPDEV_NUMERO'
      ',:FPDEV_DESD'
      ',:FPDEV_DUP'
      ',:FPDEV_DTEMIS'
      ',:FPDATHOR_EVE'
      ',:FPCODLDR_TARBAN'
      ',:FPTARBAN'
      ',:FPID_NEW'
      ',:FPID_LDR_NEW'
      ',:FPDEV_ID_DAR_NEW'
      ''
      ')')
    Left = 52
    Top = 131
    ParamData = <
      item
        DataType = ftString
        Name = 'FPCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDATA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPFORMA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPBANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPSERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPTIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCAIXA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLOTSEQ_FC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVINCULO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPNATUREZA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDATDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_CODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_DESD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_DUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEV_DTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDATHOR_EVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODLDR_TARBAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FPTARBAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FPID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FPID_LDR_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FPDEV_ID_DAR_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncChqCli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADCHQ ('
      'CHCODEMP'
      ',CHSEQ'
      ',CHNUMERO'
      ',CHBANCO'
      ',CHSERIE'
      ',CHCOMP'
      ',CHCODCLI'
      ',CHEMIT'
      ',CHCPF'
      ',CHRG'
      ',CHCC'
      ',CHDTNAS'
      ',CHVALOR'
      ',CHDTEMIS'
      ',CHDTDEP'
      ',CHAGENCIA'
      ',CHLOTE'
      ',CHLOTEBX'
      ',CHTIPO'
      ',CHSTATUS'
      ',CHDTBX'
      ',CHUSRBX'
      ',CHCAIXA'
      ',CHCODUSR'
      ',CHDTALT'
      ',CHHRALT'
      ',CHCODLDR'
      ',CHLOTSEQ'
      ',CHLEMAT'
      ',CHLOTSEQ_FC'
      ',CHCODCTA'
      ',CHCODCC'
      ',CHNOMCC'
      ',CHNATDC'
      ',CHCODDEP'
      ',CHNOMDEP'
      ',CHDESCMV'
      ',CHDEPOSITO'
      ',CHPROR_QTDP'
      ',CHPRO_ULTDAT'
      ',CHOBSL01'
      ',CHOBSL02'
      ',CHCODFPGTO'
      ',CHNOMCTA'
      ',CHDATHOR_INC'
      ',CHCODUSR_INC'
      ',CHID_NEW'
      ') Values  ('
      ':CHCODEMP'
      ',:CHSEQ'
      ',:CHNUMERO'
      ',:CHBANCO'
      ',:CHSERIE'
      ',:CHCOMP'
      ',:CHCODCLI'
      ',:CHEMIT'
      ',:CHCPF'
      ',:CHRG'
      ',:CHCC'
      ',:CHDTNAS'
      ',:CHVALOR'
      ',:CHDTEMIS'
      ',:CHDTDEP'
      ',:CHAGENCIA'
      ',:CHLOTE'
      ',:CHLOTEBX'
      ',:CHTIPO'
      ',:CHSTATUS'
      ',:CHDTBX'
      ',:CHUSRBX'
      ',:CHCAIXA'
      ',:CHCODUSR'
      ',:CHDTALT'
      ',:CHHRALT'
      ',:CHCODLDR'
      ',:CHLOTSEQ'
      ',:CHLEMAT'
      ',:CHLOTSEQ_FC'
      ',:CHCODCTA'
      ',:CHCODCC'
      ',:CHNOMCC'
      ',:CHNATDC'
      ',:CHCODDEP'
      ',:CHNOMDEP'
      ',:CHDESCMV'
      ',:CHDEPOSITO'
      ',:CHPROR_QTDP'
      ',:CHPRO_ULTDAT'
      ',:CHOBSL01'
      ',:CHOBSL02'
      ',:CHCODFPGTO'
      ',:CHNOMCTA'
      ',:CHDATHOR_INC'
      ',:CHCODUSR_INC'
      ',:CHID_NEW'
      ')'
      '')
    Left = 24
    Top = 87
    ParamData = <
      item
        DataType = ftString
        Name = 'CHCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHBANCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHSERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCOMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHEMIT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCPF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHRG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDTNAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHVALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDTDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAGENCIA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHLOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHLOTEBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHTIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHSTATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDTBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHUSRBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCAIXA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDTALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHHRALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODLDR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHLOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHLOTSEQ_FC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODCC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHNOMCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHNATDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHCODDEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHNOMDEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHDESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDEPOSITO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHPROR_QTDP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHPRO_ULTDAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHOBSL01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHOBSL02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODFPGTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHNOMCTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHDATHOR_INC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHCODUSR_INC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHID_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncFPCRDUP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into FPCRDUP ('
      'FPCODEMP'
      ',FPSEQ'
      ',FPID_NEW'
      ',FPLOTE'
      ',FPNR'
      ',FPDUP_CODEMP'
      ',FPNUMERO'
      ',FPDESD'
      ',FPTIPO'
      ',FPCODCLI'
      ',FPCODVEN'
      ',FPDTEMIS'
      ',FPDTBX'
      ',FPCAIXA'
      ',FPCODUSR'
      ',FPVALOR'
      ',FPJUROS'
      ',FPDESC'
      ',FPLOTSEQ'
      ',FPCODECF'
      ',FPLEMAT'
      ',FPVLRST'
      ',FPVLRIPI'
      ',FPVALDUP'
      ',FPDEVOL'
      ',FPDATPAG'
      ',FPDTVCTO'
      ',FPPARCIAL'
      ',FPID_CR_NEW'
      ') Values  ('
      ':FPCODEMP'
      ',:FPSEQ'
      ',FPCRDUP_SEQ.NEXTVAL'
      ',:FPLOTE'
      ',:FPNR'
      ',:FPDUP_CODEMP'
      ',:FPNUMERO'
      ',:FPDESD'
      ',:FPTIPO'
      ',:FPCODCLI'
      ',:FPCODVEN'
      ',:FPDTEMIS'
      ',:FPDTBX'
      ',:FPCAIXA'
      ',:FPCODUSR'
      ',:FPVALOR'
      ',:FPJUROS'
      ',:FPDESC'
      ',:FPLOTSEQ'
      ',:FPCODECF'
      ',:FPLEMAT'
      ',:FPVLRST'
      ',:FPVLRIPI'
      ',:FPVALDUP'
      ',:FPDEVOL'
      ',:FPDATPAG'
      ',:FPDTVCTO'
      ',:FPPARCIAL'
      ',:FPID_CR_NEW'
      ')')
    Left = 24
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'FPCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDUP_CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPNUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDESD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPTIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDTEMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDTBX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCAIXA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVALOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPJUROS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDESC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPCODECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPLEMAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVLRST'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVLRIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPVALDUP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDEVOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDATPAG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPDTVCTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FPPARCIAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'FPID_CR_NEW'
        ParamType = ptUnknown
      end>
  end
  object Tb_Leitor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPARL'
      'where LO_NOMECOMP like :NOMECOMP'
      '    and LO_MARCABAL=:MARCABAL')
    Left = 484
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'NOMECOMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'MARCABAL'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_LeitorLO_NOMECOMP: TStringField
      FieldName = 'LO_NOMECOMP'
      Origin = 'SG_ASSOC.CADPARL.LO_NOMECOMP'
      Size = 60
    end
    object Tb_LeitorLO_TIPO: TFloatField
      FieldName = 'LO_TIPO'
      Origin = 'SG_ASSOC.CADPARL.LO_TIPO'
    end
    object Tb_LeitorLO_PORTA: TFloatField
      FieldName = 'LO_PORTA'
      Origin = 'SG_ASSOC.CADPARL.LO_PORTA'
    end
    object Tb_LeitorLO_VELOCIDADE: TFloatField
      FieldName = 'LO_VELOCIDADE'
      Origin = 'SG_ASSOC.CADPARL.LO_VELOCIDADE'
    end
    object Tb_LeitorLO_PARIDADE: TFloatField
      FieldName = 'LO_PARIDADE'
      Origin = 'SG_ASSOC.CADPARL.LO_PARIDADE'
    end
    object Tb_LeitorLO_DATABITS: TFloatField
      FieldName = 'LO_DATABITS'
      Origin = 'SG_ASSOC.CADPARL.LO_DATABITS'
    end
    object Tb_LeitorLO_STOPBITS: TFloatField
      FieldName = 'LO_STOPBITS'
      Origin = 'SG_ASSOC.CADPARL.LO_STOPBITS'
    end
    object Tb_LeitorLO_RTSINPUT: TFloatField
      FieldName = 'LO_RTSINPUT'
      Origin = 'SG_ASSOC.CADPARL.LO_RTSINPUT'
    end
    object Tb_LeitorLO_DTRINPUT: TFloatField
      FieldName = 'LO_DTRINPUT'
      Origin = 'SG_ASSOC.CADPARL.LO_DTRINPUT'
    end
    object Tb_LeitorLO_CTSOUTPUT: TFloatField
      FieldName = 'LO_CTSOUTPUT'
      Origin = 'SG_ASSOC.CADPARL.LO_CTSOUTPUT'
    end
    object Tb_LeitorLO_DSROUTPUT: TFloatField
      FieldName = 'LO_DSROUTPUT'
      Origin = 'SG_ASSOC.CADPARL.LO_DSROUTPUT'
    end
    object Tb_LeitorLO_XONXOFFOUT: TFloatField
      FieldName = 'LO_XONXOFFOUT'
      Origin = 'SG_ASSOC.CADPARL.LO_XONXOFFOUT'
    end
    object Tb_LeitorLO_XONXOFFINP: TFloatField
      FieldName = 'LO_XONXOFFINP'
      Origin = 'SG_ASSOC.CADPARL.LO_XONXOFFINP'
    end
    object Tb_LeitorLO_MARCABAL: TFloatField
      FieldName = 'LO_MARCABAL'
      Origin = 'SG_ASSOC.CADPARL.LO_MARCABAL'
    end
    object Tb_LeitorLO_MODBAL: TFloatField
      FieldName = 'LO_MODBAL'
      Origin = 'SG_ASSOC.CADPARL.LO_MODBAL'
    end
  end
  object Tb_PosDoc: TQuery
    CachedUpdates = True
    BeforePost = Tb_PosDocBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from POSDOC where '
      ' PD_CODIGO like :CODIGO'
      'and PD_DESCRICAO like :DESCRICAO')
    UpdateObject = U_PosDoc
    Left = 603
    Top = 133
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_PosDocPD_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PD_CODIGO'
      Origin = 'SG_ASSOC.POSDOC.PD_CODIGO'
    end
    object Tb_PosDocPD_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PD_DESCRICAO'
      Origin = 'SG_ASSOC.POSDOC.PD_DESCRICAO'
      Size = 40
    end
    object Tb_PosDocPD_QTDBITES: TFloatField
      DisplayLabel = 'Tamanho'
      FieldName = 'PD_QTDBITES'
      Origin = 'SG_ASSOC.POSDOC.PD_QTDBITES'
    end
    object Tb_PosDocPD_CAMERA_PI: TFloatField
      DisplayLabel = 'Camera Pos.Ini'
      FieldName = 'PD_CAMERA_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_CAMERA_PI'
    end
    object Tb_PosDocPD_CAMERA_TAM: TFloatField
      DisplayLabel = 'Camera Tam'
      FieldName = 'PD_CAMERA_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_CAMERA_TAM'
    end
    object Tb_PosDocPD_CODBCO_PI: TFloatField
      DisplayLabel = 'C'#243'd.Bco.Pos.Ini'
      FieldName = 'PD_CODBCO_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_CODBCO_PI'
    end
    object Tb_PosDocPD_CODBCO_TAM: TFloatField
      DisplayLabel = 'C'#243'd.Bco.Tam'
      FieldName = 'PD_CODBCO_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_CODBCO_TAM'
    end
    object Tb_PosDocPD_AGENCIA_PI: TFloatField
      DisplayLabel = 'Agencia Pos.Ini'
      FieldName = 'PD_AGENCIA_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_AGENCIA_PI'
    end
    object Tb_PosDocPD_AGENCIA_TAM: TFloatField
      DisplayLabel = 'Agencia Tam'
      FieldName = 'PD_AGENCIA_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_AGENCIA_TAM'
    end
    object Tb_PosDocPD_COMP_PI: TFloatField
      DisplayLabel = 'Compensa'#231#227'o Pos.Ini'
      FieldName = 'PD_COMP_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_COMP_PI'
    end
    object Tb_PosDocPD_COMP_TAM: TFloatField
      DisplayLabel = 'Compensa'#231#227'o Pos.Tam'
      FieldName = 'PD_COMP_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_COMP_TAM'
    end
    object Tb_PosDocPD_NUMDOC_PI: TFloatField
      DisplayLabel = 'N'#250'mero Documento Pos.Ini'
      FieldName = 'PD_NUMDOC_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMDOC_PI'
    end
    object Tb_PosDocPD_CONTA_PI: TFloatField
      DisplayLabel = 'Conta Pos.Ini'
      FieldName = 'PD_CONTA_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_CONTA_PI'
    end
    object Tb_PosDocPD_CONTA_TAM: TFloatField
      DisplayLabel = 'Conta Tam'
      FieldName = 'PD_CONTA_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_CONTA_TAM'
    end
    object Tb_PosDocPD_MOEDA_PI: TFloatField
      DisplayLabel = 'Moeda Pos.Ini'
      FieldName = 'PD_MOEDA_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_MOEDA_PI'
    end
    object Tb_PosDocPD_MOEDA_TAM: TFloatField
      DisplayLabel = 'Moeda Tam.'
      FieldName = 'PD_MOEDA_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_MOEDA_TAM'
    end
    object Tb_PosDocPD_VCTO_PI: TFloatField
      DisplayLabel = 'Vcto.Pos.ini'
      FieldName = 'PD_VCTO_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_VCTO_PI'
    end
    object Tb_PosDocPD_VCTO_TAM: TFloatField
      DisplayLabel = 'Vcto.Tam'
      FieldName = 'PD_VCTO_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_VCTO_TAM'
    end
    object Tb_PosDocPD_VALOR_PI: TFloatField
      DisplayLabel = 'Valor Pos.Ini'
      FieldName = 'PD_VALOR_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_VALOR_PI'
    end
    object Tb_PosDocPD_VALOR_TAM: TFloatField
      DisplayLabel = 'Valor Tam.'
      FieldName = 'PD_VALOR_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_VALOR_TAM'
    end
    object Tb_PosDocPD_NOSSON_PI: TFloatField
      DisplayLabel = 'Nosso Num.Pos.Ini'
      FieldName = 'PD_NOSSON_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_NOSSON_PI'
    end
    object Tb_PosDocPD_NOSSON_TAM: TFloatField
      DisplayLabel = 'Nosso Num.Tam'
      FieldName = 'PD_NOSSON_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_NOSSON_TAM'
    end
    object Tb_PosDocPD_CODCED_PI: TFloatField
      DisplayLabel = 'Cod.Ced.Pos.Ini'
      FieldName = 'PD_CODCED_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_CODCED_PI'
    end
    object Tb_PosDocPD_CODCED_TAM: TFloatField
      DisplayLabel = 'Cod.Ced.Tam.'
      FieldName = 'PD_CODCED_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_CODCED_TAM'
    end
    object Tb_PosDocPD_CODCAR_PI: TFloatField
      DisplayLabel = 'Cod.Cart.Pos.Ini'
      FieldName = 'PD_CODCAR_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_CODCAR_PI'
    end
    object Tb_PosDocPD_CODCAR_TAM: TFloatField
      DisplayLabel = 'Cod.Cart.Tam'
      FieldName = 'PD_CODCAR_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_CODCAR_TAM'
    end
    object Tb_PosDocPD_NUMNF_PI: TFloatField
      DisplayLabel = 'Num.NF.Pos.Ini'
      FieldName = 'PD_NUMNF_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMNF_PI'
    end
    object Tb_PosDocPD_NUMNF_TAM: TFloatField
      DisplayLabel = 'Num.NF.Tam.'
      FieldName = 'PD_NUMNF_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMNF_TAM'
    end
    object Tb_PosDocPD_MESREF_PI: TFloatField
      DisplayLabel = 'Mes Ref.Pos.Ini'
      FieldName = 'PD_MESREF_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_MESREF_PI'
    end
    object Tb_PosDocPD_MESREF_TAM: TFloatField
      DisplayLabel = 'Mes Ref.Tam.'
      FieldName = 'PD_MESREF_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_MESREF_TAM'
    end
    object Tb_PosDocPD_ANOREF_PI: TFloatField
      DisplayLabel = 'Ano Ref.Pos.Ini'
      FieldName = 'PD_ANOREF_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_ANOREF_PI'
    end
    object Tb_PosDocPD_ANOREF_TAM: TFloatField
      DisplayLabel = 'Ano Ref.Tam.'
      FieldName = 'PD_ANOREF_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_ANOREF_TAM'
    end
    object Tb_PosDocPD_NUMDIV_PI: TFloatField
      DisplayLabel = 'Num.Diversos Pos.Ini'
      FieldName = 'PD_NUMDIV_PI'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMDIV_PI'
    end
    object Tb_PosDocPD_NUMDIV_TAM: TFloatField
      DisplayLabel = 'Num.Diversos Tam.'
      FieldName = 'PD_NUMDIV_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMDIV_TAM'
    end
    object Tb_PosDocPD_NUMDOC_TAM: TFloatField
      DisplayLabel = 'Numero Doc.Tamanho'
      FieldName = 'PD_NUMDOC_TAM'
      Origin = 'SG_ASSOC.POSDOC.PD_NUMDOC_TAM'
    end
  end
  object U_PosDoc: TUpdateSQL
    ModifySQL.Strings = (
      'update POSDOC'
      'set'
      '  PD_CODIGO = :PD_CODIGO,'
      '  PD_DESCRICAO = :PD_DESCRICAO,'
      '  PD_QTDBITES = :PD_QTDBITES,'
      '  PD_CAMERA_PI = :PD_CAMERA_PI,'
      '  PD_CAMERA_TAM = :PD_CAMERA_TAM,'
      '  PD_CODBCO_PI = :PD_CODBCO_PI,'
      '  PD_CODBCO_TAM = :PD_CODBCO_TAM,'
      '  PD_AGENCIA_PI = :PD_AGENCIA_PI,'
      '  PD_AGENCIA_TAM = :PD_AGENCIA_TAM,'
      '  PD_COMP_PI = :PD_COMP_PI,'
      '  PD_COMP_TAM = :PD_COMP_TAM,'
      '  PD_NUMDOC_PI = :PD_NUMDOC_PI,'
      '  PD_CONTA_PI = :PD_CONTA_PI,'
      '  PD_CONTA_TAM = :PD_CONTA_TAM,'
      '  PD_MOEDA_PI = :PD_MOEDA_PI,'
      '  PD_MOEDA_TAM = :PD_MOEDA_TAM,'
      '  PD_VCTO_PI = :PD_VCTO_PI,'
      '  PD_VCTO_TAM = :PD_VCTO_TAM,'
      '  PD_VALOR_PI = :PD_VALOR_PI,'
      '  PD_VALOR_TAM = :PD_VALOR_TAM,'
      '  PD_NOSSON_PI = :PD_NOSSON_PI,'
      '  PD_NOSSON_TAM = :PD_NOSSON_TAM,'
      '  PD_CODCED_PI = :PD_CODCED_PI,'
      '  PD_CODCED_TAM = :PD_CODCED_TAM,'
      '  PD_CODCAR_PI = :PD_CODCAR_PI,'
      '  PD_CODCAR_TAM = :PD_CODCAR_TAM,'
      '  PD_NUMNF_PI = :PD_NUMNF_PI,'
      '  PD_NUMNF_TAM = :PD_NUMNF_TAM,'
      '  PD_MESREF_PI = :PD_MESREF_PI,'
      '  PD_MESREF_TAM = :PD_MESREF_TAM,'
      '  PD_ANOREF_PI = :PD_ANOREF_PI,'
      '  PD_ANOREF_TAM = :PD_ANOREF_TAM,'
      '  PD_NUMDIV_PI = :PD_NUMDIV_PI,'
      '  PD_NUMDIV_TAM = :PD_NUMDIV_TAM,'
      '  PD_NUMDOC_TAM = :PD_NUMDOC_TAM'
      'where'
      '  PD_CODIGO = :OLD_PD_CODIGO and'
      '  PD_DESCRICAO = :OLD_PD_DESCRICAO')
    InsertSQL.Strings = (
      'insert into POSDOC'
      '  (PD_CODIGO, PD_DESCRICAO, PD_QTDBITES, PD_CAMERA_PI, '
      'PD_CAMERA_TAM, PD_CODBCO_PI, '
      '   PD_CODBCO_TAM, PD_AGENCIA_PI, PD_AGENCIA_TAM, PD_COMP_PI, '
      'PD_COMP_TAM, '
      '   PD_NUMDOC_PI, PD_CONTA_PI, PD_CONTA_TAM, PD_MOEDA_PI, '
      'PD_MOEDA_TAM, '
      '   PD_VCTO_PI, PD_VCTO_TAM, PD_VALOR_PI, PD_VALOR_TAM, '
      'PD_NOSSON_PI, PD_NOSSON_TAM, '
      '   PD_CODCED_PI, PD_CODCED_TAM, PD_CODCAR_PI, PD_CODCAR_TAM, '
      'PD_NUMNF_PI, '
      '   PD_NUMNF_TAM, PD_MESREF_PI, PD_MESREF_TAM, PD_ANOREF_PI, '
      'PD_ANOREF_TAM, '
      '   PD_NUMDIV_PI, PD_NUMDIV_TAM, PD_NUMDOC_TAM)'
      'values'
      '  (:PD_CODIGO, :PD_DESCRICAO, :PD_QTDBITES, :PD_CAMERA_PI, '
      ':PD_CAMERA_TAM, '
      
        '   :PD_CODBCO_PI, :PD_CODBCO_TAM, :PD_AGENCIA_PI, :PD_AGENCIA_TA' +
        'M, '
      ':PD_COMP_PI, '
      '   :PD_COMP_TAM, :PD_NUMDOC_PI, :PD_CONTA_PI, :PD_CONTA_TAM, '
      ':PD_MOEDA_PI, '
      '   :PD_MOEDA_TAM, :PD_VCTO_PI, :PD_VCTO_TAM, :PD_VALOR_PI, '
      ':PD_VALOR_TAM, '
      
        '   :PD_NOSSON_PI, :PD_NOSSON_TAM, :PD_CODCED_PI, :PD_CODCED_TAM,' +
        ' '
      ':PD_CODCAR_PI, '
      '   :PD_CODCAR_TAM, :PD_NUMNF_PI, :PD_NUMNF_TAM, :PD_MESREF_PI, '
      ':PD_MESREF_TAM, '
      
        '   :PD_ANOREF_PI, :PD_ANOREF_TAM, :PD_NUMDIV_PI, :PD_NUMDIV_TAM,' +
        ' '
      ':PD_NUMDOC_TAM)')
    DeleteSQL.Strings = (
      'delete from POSDOC'
      'where'
      '  PD_CODIGO = :OLD_PD_CODIGO and'
      '  PD_DESCRICAO = :OLD_PD_DESCRICAO')
    Left = 632
    Top = 133
  end
  object Src_PosDoc: TDataSource
    DataSet = Tb_PosDoc
    Left = 661
    Top = 133
  end
  object Tb_FilPad: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FILPAD'
      'order by FPCODUSR,FPFORM,FPCOMP')
    Left = 387
    Top = 266
    object Tb_FilPadFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FILPAD.FPCODUSR'
    end
    object Tb_FilPadFPCOMP: TStringField
      FieldName = 'FPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPCOMP'
      Size = 30
    end
    object Tb_FilPadFPTPCOMP: TStringField
      FieldName = 'FPTPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPTPCOMP'
      Size = 30
    end
    object Tb_FilPadFPVALOR: TStringField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR'
      Size = 254
    end
    object Tb_FilPadFPFORM: TStringField
      FieldName = 'FPFORM'
      Origin = 'SG_ASSOC.FILPAD.FPFORM'
    end
    object Tb_FilPadFPVALOR2: TStringField
      FieldName = 'FPVALOR2'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR2'
      Size = 200
    end
    object Tb_FilPadFPVALOR_MEMO: TMemoField
      FieldName = 'FPVALOR_MEMO'
      BlobType = ftMemo
    end
  end
  object Qr_IncOS02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS02 ('
      'OS2CODEMP'
      ',OS2ID_NEW'
      ',OS2ID_OS1_NEW'
      ',OS2LOTSEQ'
      ',OS2CHAVE'
      ',OS2ITEM'
      ',OS2CODPRO'
      ',OS2MODELO'
      ',OS2MARCA'
      ',OS2SERIE'
      ',OS2NUMPAT'
      ',OS2OBS01'
      ',OS2OBS02'
      ') Values  ('
      ':OS2CODEMP'
      ',:OS2ID_NEW'
      ',:OS2ID_OS1_NEW'
      ',:OS2LOTSEQ'
      ',:OS2CHAVE'
      ',:OS2ITEM'
      ',:OS2CODPRO'
      ',:OS2MODELO'
      ',:OS2MARCA'
      ',:OS2SERIE'
      ',:OS2NUMPAT'
      ',:OS2OBS01'
      ',:OS2OBS02'
      ')'
      '')
    Left = 52
    Top = 306
    ParamData = <
      item
        DataType = ftString
        Name = 'OS2CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS2ID_OS1_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS2LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2MODELO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2MARCA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2SERIE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2NUMPAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2OBS01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS2OBS02'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Qr_IncOS03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS03 ('
      'OS3CODEMP'
      ',OS3LOTSEQ'
      ',OS3CHAVE'
      ',OS3ITEM'
      ',OS3CODPRO'
      ',OS3QTD'
      ',OS3ID_NEW'
      ',OS3ID_OS1_NEW'
      ') Values  ('
      ':OS3CODEMP'
      ',:OS3LOTSEQ'
      ',:OS3CHAVE'
      ',:OS3ITEM'
      ',:OS3CODPRO'
      ',:OS3QTD'
      ',:OS3ID_NEW'
      ',:OS3ID_OS1_NEW'
      ')')
    Left = 24
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'OS3CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3QTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS3ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS3ID_OS1_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncOS04: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS04 ('
      'OS4CODEMP'
      ',OS4LOTSEQ'
      ',OS4CHAVE'
      ',OS4ITEM'
      ',OS4CODPRO'
      ',OS4QTD'
      ',OS4PU'
      ',OS4TOTDES'
      ',OS4DESC01'
      ',OS4ID_NEW'
      ',OS4ID_OS1_NEW'
      ') Values  ('
      ':OS4CODEMP'
      ',:OS4LOTSEQ'
      ',:OS4CHAVE'
      ',:OS4ITEM'
      ',:OS4CODPRO'
      ',:OS4QTD'
      ',:OS4PU'
      ',:OS4TOTDES'
      ',:OS4DESC01'
      ',:OS4ID_NEW'
      ',:OS4ID_OS1_NEW'
      ''
      ')')
    Left = 52
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'OS4CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4QTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4PU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4TOTDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4DESC01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS4ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS4ID_OS1_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncOS05: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS05 ('
      'OS5CODEMP'
      ',OS5LOTSEQ'
      ',OS5CHAVE'
      ',OS5ITEM'
      ',OS5CODPRO'
      ',OS5QTD'
      ',OS5PU'
      ',OS5DESC01'
      ',OS5TOTDES'
      ',OS5ID_NEW'
      ',OS5ID_OS1_NEW'
      ') Values  ('
      ':OS5CODEMP'
      ',:OS5LOTSEQ'
      ',:OS5CHAVE'
      ',:OS5ITEM'
      ',:OS5CODPRO'
      ',:OS5QTD'
      ',:OS5PU'
      ',:OS5DESC01'
      ',:OS5TOTDES'
      ',:OS5ID_NEW'
      ',:OS5ID_OS1_NEW'
      ')')
    Left = 24
    Top = 399
    ParamData = <
      item
        DataType = ftString
        Name = 'OS5CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5QTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5PU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DESC01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5TOTDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS5ID_OS1_NEW'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncOS01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS01 ('
      'OS1CODEMP'
      ',OS1ID_NEW'
      ',OS1LOTSEQ'
      ',OS1CHAVE'
      ',OS1DATA'
      ',OS1DATAAUT'
      ',OS1NOMEAUT'
      ',OS1DATADEV'
      ',OS1HORADEV'
      ',OS1DATAENT'
      ',OS1HORAENT'
      ',OS1CODCLI'
      ',OS1CODVEN'
      ',OS1CODTEC'
      ',OS1OPER'
      ',OS1OBS01'
      ',OS1OBS02'
      ',OS1OBS03'
      ',OS1OBS04'
      ',OS1STATUS'
      ',OS1LOTSEQ_CP'
      ',OS1TOTSER'
      ',OS1DESCSER'
      ',OS1TOTPEC'
      ',OS1DESCPEC'
      ',OS1TOTAL'
      ',OS1CHAVEPED'
      ',OS1ESTREG'
      ',OS1DATALT'
      ',OS1CODUSR'
      ',OS1NOMSOL'
      ',OS1DEFREC'
      ',OS1NUMRAT'
      ',OS1PORTPAROVMOD'
      ',OS1NUMIMMETRO'
      ',OS1NUMMARCSELRET'
      ',OS1NUMMARCREPRET'
      ',OS1NUMMARCSELAFIX'
      ',OS1NUMMARCREPAFIX'
      ') Values  ('
      ':OS1CODEMP'
      ',:OS1ID_NEW'
      ',:OS1LOTSEQ'
      ',:OS1CHAVE'
      ',:OS1DATA'
      ',:OS1DATAAUT'
      ',:OS1NOMEAUT'
      ',:OS1DATADEV'
      ',:OS1HORADEV'
      ',:OS1DATAENT'
      ',:OS1HORAENT'
      ',:OS1CODCLI'
      ',:OS1CODVEN'
      ',:OS1CODTEC'
      ',:OS1OPER'
      ',:OS1OBS01'
      ',:OS1OBS02'
      ',:OS1OBS03'
      ',:OS1OBS04'
      ',:OS1STATUS'
      ',:OS1LOTSEQ_CP'
      ',:OS1TOTSER'
      ',:OS1DESCSER'
      ',:OS1TOTPEC'
      ',:OS1DESCPEC'
      ',:OS1TOTAL'
      ',:OS1CHAVEPED'
      ',:OS1ESTREG'
      ',:OS1DATALT'
      ',:OS1CODUSR'
      ',:OS1NOMSOL'
      ',:OS1DEFREC'
      ',:OS1NUMRAT'
      ',:OS1PORTPAROVMOD'
      ',:OS1NUMIMMETRO'
      ',:OS1NUMMARCSELRET'
      ',:OS1NUMMARCREPRET'
      ',:OS1NUMMARCSELAFIX'
      ',:OS1NUMMARCREPAFIX'
      ')'
      '')
    Left = 24
    Top = 306
    ParamData = <
      item
        DataType = ftString
        Name = 'OS1CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1ID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DATA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DATAAUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1NOMEAUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DATADEV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1HORADEV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DATAENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1HORAENT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CODCLI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CODTEC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1OPER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1OBS01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1OBS02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1OBS03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1OBS04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1LOTSEQ_CP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1TOTSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DESCSER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1TOTPEC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DESCPEC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1TOTAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CHAVEPED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1ESTREG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DATALT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1CODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1NOMSOL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1DEFREC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS1NUMRAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1PORTPAROVMOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1NUMIMMETRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1NUMMARCSELRET'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1NUMMARCREPRET'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1NUMMARCSELAFIX'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS1NUMMARCREPAFIX'
        ParamType = ptUnknown
      end>
  end
  object Qr_IncOs05D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADOS05D ('
      'OS5DCODEMP'
      ',OS5DLOTSEQ'
      ',OS5DCHAVE'
      ',OS5DID_NEW'
      ',OS5DID_OS5_NEW'
      ',OS5DITEM'
      ',OS5DCODPRO'
      ',OS5DLINHA'
      ',OS5DDESC'
      ') Values  ('
      ':OS5DCODEMP'
      ',:OS5DLOTSEQ'
      ',:OS5DCHAVE'
      ',:OS5DID_NEW'
      ',:OS5DID_OS5_NEW'
      ',:OS5DITEM'
      ',:OS5DCODPRO'
      ',:OS5DLINHA'
      ',:OS5DDESC'
      ')'
      '')
    Left = 52
    Top = 399
    ParamData = <
      item
        DataType = ftString
        Name = 'OS5DCODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DLOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DCHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DID_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS5DID_OS5_NEW'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OS5DITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DCODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DLINHA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OS5DDESC'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Tb_Ani: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_AniCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADANI')
    UpdateObject = U_Ani
    Left = 233
    Top = 94
    object Tb_AniCA_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CA_CODEMP'
      Origin = 'SG_ASSOC.CADANI.CA_CODEMP'
    end
    object Tb_AniCA_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CA_TIPO'
      Origin = 'SG_ASSOC.CADANI.CA_TIPO'
      Size = 2
    end
    object Tb_AniCA_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CA_CODIGO'
      Origin = 'SG_ASSOC.CADANI.CA_CODIGO'
    end
    object Tb_AniCA_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CA_NOME'
      Origin = 'SG_ASSOC.CADANI.CA_NOME'
      Size = 40
    end
    object Tb_AniCA_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CA_CARGO'
      Origin = 'SG_ASSOC.CADANI.CA_CARGO'
      Size = 40
    end
    object Tb_AniCA_FONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CA_FONE'
      Origin = 'SG_ASSOC.CADANI.CA_FONE'
    end
    object Tb_AniCA_CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CA_CELULAR'
      Origin = 'SG_ASSOC.CADANI.CA_CELULAR'
    end
    object Tb_AniCA_EMAIL: TStringField
      DisplayLabel = 'E_Mail'
      FieldName = 'CA_EMAIL'
      Origin = 'SG_ASSOC.CADANI.CA_EMAIL'
      Size = 80
    end
    object Tb_AniCA_MES: TFloatField
      DisplayLabel = 'Mes'
      FieldName = 'CA_MES'
      Origin = 'SG_ASSOC.CADANI.CA_MES'
    end
    object Tb_AniCA_DIA: TFloatField
      DisplayLabel = 'Dia'
      FieldName = 'CA_DIA'
      Origin = 'SG_ASSOC.CADANI.CA_DIA'
    end
    object Tb_AniCA_DTNAS: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'CA_DTNAS'
      Origin = 'SG_ASSOC.CADANI.CA_DTNAS'
    end
    object Tb_AniCA_DTCONTATO: TDateTimeField
      DisplayLabel = 'Data do Contato'
      FieldName = 'CA_DTCONTATO'
      Origin = 'SG_ASSOC.CADANI.CA_DTCONTATO'
    end
    object Tb_AniCA_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CA_STATUS'
      Origin = 'SG_ASSOC.CADANI.CA_STATUS'
    end
    object Tb_AniCA_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CA_ENDERECO'
      Origin = 'SG_ASSOC.CADANI.CA_ENDERECO'
      Size = 40
    end
    object Tb_AniCA_CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CA_CEP'
      Origin = 'SG_ASSOC.CADANI.CA_CEP'
      Size = 9
    end
    object Tb_AniCA_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CA_BAIRRO'
      Origin = 'SG_ASSOC.CADANI.CA_BAIRRO'
      Size = 30
    end
    object Tb_AniCA_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CA_CIDADE'
      Origin = 'SG_ASSOC.CADANI.CA_CIDADE'
      Size = 30
    end
    object Tb_AniCA_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CA_UF'
      Origin = 'SG_ASSOC.CADANI.CA_UF'
      Size = 2
    end
    object Tb_Anidtnas: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtnas'
      Calculated = True
    end
    object Tb_Anidtcontato: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtcontato'
      Calculated = True
    end
    object Tb_Aninome: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 40
      Calculated = True
    end
    object Tb_AniCA_DTEMAIL: TDateTimeField
      FieldName = 'CA_DTEMAIL'
      Origin = 'SG_ASSOC.CADANI.CA_DTEMAIL'
    end
    object Tb_AniCA_DATHOR_INC: TDateTimeField
      FieldName = 'CA_DATHOR_INC'
      Origin = 'SG_ASSOC.CADANI.CA_DATHOR_INC'
    end
    object Tb_AniCA_CODUSR_INC: TFloatField
      FieldName = 'CA_CODUSR_INC'
      Origin = 'SG_ASSOC.CADANI.CA_CODUSR_INC'
    end
    object Tb_AniCA_DATHOR_ALT: TDateTimeField
      FieldName = 'CA_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADANI.CA_DATHOR_ALT'
    end
    object Tb_AniCA_CODUSR_ALT: TFloatField
      FieldName = 'CA_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADANI.CA_CODUSR_ALT'
    end
    object Tb_AniCA_DATHOR_REP: TDateTimeField
      FieldName = 'CA_DATHOR_REP'
      Origin = 'SG_ASSOC.CADANI.CA_DATHOR_REP'
    end
    object Tb_AniCA_ORDEM: TFloatField
      FieldName = 'CA_ORDEM'
      Origin = 'SG_ASSOC.CADANI.CA_ORDEM'
    end
  end
  object U_Ani: TUpdateSQL
    ModifySQL.Strings = (
      'update CADANI'
      'set'
      '  CA_CODEMP = :CA_CODEMP,'
      '  CA_TIPO = :CA_TIPO,'
      '  CA_CODIGO = :CA_CODIGO,'
      '  CA_NOME = :CA_NOME,'
      '  CA_CARGO = :CA_CARGO,'
      '  CA_FONE = :CA_FONE,'
      '  CA_CELULAR = :CA_CELULAR,'
      '  CA_ENDERECO = :CA_ENDERECO,'
      '  CA_CEP = :CA_CEP,'
      '  CA_BAIRRO = :CA_BAIRRO,'
      '  CA_CIDADE = :CA_CIDADE,'
      '  CA_UF = :CA_UF,'
      '  CA_EMAIL = :CA_EMAIL,'
      '  CA_MES = :CA_MES,'
      '  CA_DIA = :CA_DIA,'
      '  CA_DTNAS = :CA_DTNAS,'
      '  CA_DTCONTATO = :CA_DTCONTATO,'
      '  CA_STATUS = :CA_STATUS,'
      '  CA_DTEMAIL = :CA_DTEMAIL,'
      '  CA_DATHOR_INC = :CA_DATHOR_INC,'
      '  CA_CODUSR_INC = :CA_CODUSR_INC,'
      '  CA_DATHOR_ALT = :CA_DATHOR_ALT,'
      '  CA_CODUSR_ALT = :CA_CODUSR_ALT,'
      '  CA_ORDEM = :CA_ORDEM'
      'where'
      '  CA_CODEMP = :OLD_CA_CODEMP and'
      '  CA_TIPO = :OLD_CA_TIPO and'
      '  CA_CODIGO = :OLD_CA_CODIGO and'
      '  CA_ORDEM = :OLD_CA_ORDEM')
    InsertSQL.Strings = (
      'insert into CADANI'
      '  (CA_CODEMP, CA_TIPO, CA_CODIGO, CA_NOME, CA_CARGO, CA_FONE, '
      'CA_CELULAR, '
      '   CA_ENDERECO, CA_CEP, CA_BAIRRO, CA_CIDADE, CA_UF, CA_EMAIL, '
      'CA_MES, '
      '   CA_DIA, CA_DTNAS, CA_DTCONTATO, CA_STATUS, CA_DTEMAIL, '
      'CA_DATHOR_INC, '
      '   CA_CODUSR_INC, CA_DATHOR_ALT, CA_CODUSR_ALT, CA_ORDEM)'
      'values'
      
        '  (:CA_CODEMP, :CA_TIPO, :CA_CODIGO, :CA_NOME, :CA_CARGO, :CA_FO' +
        'NE, '
      ':CA_CELULAR, '
      
        '   :CA_ENDERECO, :CA_CEP, :CA_BAIRRO, :CA_CIDADE, :CA_UF, :CA_EM' +
        'AIL, '
      ':CA_MES, '
      '   :CA_DIA, :CA_DTNAS, :CA_DTCONTATO, :CA_STATUS, :CA_DTEMAIL, '
      ':CA_DATHOR_INC, '
      '   :CA_CODUSR_INC, :CA_DATHOR_ALT, :CA_CODUSR_ALT, :CA_ORDEM)')
    DeleteSQL.Strings = (
      'delete from CADANI'
      'where'
      '  CA_CODEMP = :OLD_CA_CODEMP and'
      '  CA_TIPO = :OLD_CA_TIPO and'
      '  CA_CODIGO = :OLD_CA_CODIGO and'
      '  CA_ORDEM = :OLD_CA_ORDEM')
    Left = 261
    Top = 94
  end
  object Src_Ani: TDataSource
    DataSet = Tb_Ani
    Left = 289
    Top = 94
  end
  object U_CSer01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSER01'
      'set'
      '  CS_CODEMP = :CS_CODEMP,'
      '  CS_CODCLI = :CS_CODCLI,'
      '  CS_CHAVE = :CS_CHAVE,'
      '  CS_DATCON = :CS_DATCON,'
      '  CS_DATVAL = :CS_DATVAL,'
      '  CS_TIPO = :CS_TIPO,'
      '  CS_STATUS = :CS_STATUS,'
      '  CS_DIAV = :CS_DIAV,'
      '  CS_MESV = :CS_MESV,'
      '  CS_CODUSR_INC = :CS_CODUSR_INC,'
      '  CS_NOMUSR_INC = :CS_NOMUSR_INC,'
      '  CS_DATHOR_INC = :CS_DATHOR_INC,'
      '  CS_CODUSR_ALT = :CS_CODUSR_ALT,'
      '  CS_NOMUSR_ALT = :CS_NOMUSR_ALT,'
      '  CS_DATHOR_ALT = :CS_DATHOR_ALT,'
      '  CS_FORMAPAG = :CS_FORMAPAG,'
      '  CS_NUMPROPOSTA = :CS_NUMPROPOSTA,'
      '  CS_REPLEGAL = :CS_REPLEGAL,'
      '  CS_REPLEGAL_SEXO = :CS_REPLEGAL_SEXO,'
      '  CS_REPLEGAL_CPF = :CS_REPLEGAL_CPF,'
      '  CS_REPLEGAL_RG = :CS_REPLEGAL_RG,'
      '  CS_PRAZOENT = :CS_PRAZOENT,'
      '  CS_CODSER = :CS_CODSER'
      'where'
      '  CS_CODEMP = :OLD_CS_CODEMP and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CHAVE = :OLD_CS_CHAVE')
    InsertSQL.Strings = (
      'insert into CADCSER01'
      
        '  (CS_CODEMP, CS_CODCLI, CS_CHAVE, CS_DATCON, CS_DATVAL, CS_TIPO' +
        ', CS_STATUS, '
      
        '   CS_DIAV, CS_MESV, CS_CODUSR_INC, CS_NOMUSR_INC, CS_DATHOR_INC' +
        ', CS_CODUSR_ALT, '
      
        '   CS_NOMUSR_ALT, CS_DATHOR_ALT, CS_FORMAPAG, CS_NUMPROPOSTA, CS' +
        '_REPLEGAL, '
      
        '   CS_REPLEGAL_SEXO, CS_REPLEGAL_CPF, CS_REPLEGAL_RG, CS_PRAZOEN' +
        'T, CS_CODSER)'
      'values'
      
        '  (:CS_CODEMP, :CS_CODCLI, :CS_CHAVE, :CS_DATCON, :CS_DATVAL, :C' +
        'S_TIPO, '
      
        '   :CS_STATUS, :CS_DIAV, :CS_MESV, :CS_CODUSR_INC, :CS_NOMUSR_IN' +
        'C, :CS_DATHOR_INC, '
      
        '   :CS_CODUSR_ALT, :CS_NOMUSR_ALT, :CS_DATHOR_ALT, :CS_FORMAPAG,' +
        ' :CS_NUMPROPOSTA, '
      
        '   :CS_REPLEGAL, :CS_REPLEGAL_SEXO, :CS_REPLEGAL_CPF, :CS_REPLEG' +
        'AL_RG, '
      '   :CS_PRAZOENT, :CS_CODSER)')
    DeleteSQL.Strings = (
      'delete from CADCSER01'
      'where'
      '  CS_CODEMP = :OLD_CS_CODEMP and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CHAVE = :OLD_CS_CHAVE')
    Left = 382
    Top = 178
  end
  object Src_CSer01: TDataSource
    DataSet = Tb_CSer01
    Left = 410
    Top = 178
  end
  object Tb_CSer02: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CSer02AfterInsert
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CSer02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * from CADCSER02')
    UpdateObject = U_CSer02
    Left = 355
    Top = 221
    object Tb_CSer02CS2_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CS2_CODEMP'
      Origin = 'SG_ASSOC.CADCSER02.CS2_CODEMP'
    end
    object Tb_CSer02CS2_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'CS2_CODCLI'
      Origin = 'SG_ASSOC.CADCSER02.CS2_CODCLI'
    end
    object Tb_CSer02CS2_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CS2_CHAVE'
      Origin = 'SG_ASSOC.CADCSER02.CS2_CHAVE'
    end
    object Tb_CSer02CS2_ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CS2_ORDEM'
      Origin = 'SG_ASSOC.CADCSER02.CS2_ORDEM'
    end
    object Tb_CSer02CS2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'CS2_CODPRO'
      Origin = 'SG_ASSOC.CADCSER02.CS2_CODPRO'
    end
    object Tb_CSer02CS2_MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'CS2_MODELO'
      Origin = 'SG_ASSOC.CADCSER02.CS2_MODELO'
      Size = 30
    end
    object Tb_CSer02CS2_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'CS2_MARCA'
      Origin = 'SG_ASSOC.CADCSER02.CS2_MARCA'
      Size = 40
    end
    object Tb_CSer02CS2_SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CS2_SERIE'
      Origin = 'SG_ASSOC.CADCSER02.CS2_SERIE'
      Size = 40
    end
    object Tb_CSer02CS2_VERSAO: TStringField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'CS2_VERSAO'
      Origin = 'SG_ASSOC.CADCSER02.CS2_VERSAO'
      Size = 40
    end
    object Tb_CSer02nompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 53
      Calculated = True
    end
  end
  object U_CSer02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSER02'
      'set'
      '  CS2_CODEMP = :CS2_CODEMP,'
      '  CS2_CHAVE = :CS2_CHAVE,'
      '  CS2_ORDEM = :CS2_ORDEM,'
      '  CS2_CODPRO = :CS2_CODPRO,'
      '  CS2_MODELO = :CS2_MODELO,'
      '  CS2_MARCA = :CS2_MARCA,'
      '  CS2_SERIE = :CS2_SERIE,'
      '  CS2_VERSAO = :CS2_VERSAO,'
      '  CS2_CODCLI = :CS2_CODCLI'
      'where'
      '  CS2_CODEMP = :OLD_CS2_CODEMP and'
      '  CS2_CHAVE = :OLD_CS2_CHAVE and'
      '  CS2_ORDEM = :OLD_CS2_ORDEM and'
      '  CS2_CODCLI = :OLD_CS2_CODCLI')
    InsertSQL.Strings = (
      'insert into CADCSER02'
      '  (CS2_CODEMP, CS2_CHAVE, CS2_ORDEM, CS2_CODPRO, CS2_MODELO, '
      'CS2_MARCA, '
      '   CS2_SERIE, CS2_VERSAO, CS2_CODCLI)'
      'values'
      
        '  (:CS2_CODEMP, :CS2_CHAVE, :CS2_ORDEM, :CS2_CODPRO, :CS2_MODELO' +
        ', '
      ':CS2_MARCA, '
      '   :CS2_SERIE, :CS2_VERSAO, :CS2_CODCLI)')
    DeleteSQL.Strings = (
      'delete from CADCSER02'
      'where'
      '  CS2_CODEMP = :OLD_CS2_CODEMP and'
      '  CS2_CHAVE = :OLD_CS2_CHAVE and'
      '  CS2_ORDEM = :OLD_CS2_ORDEM and'
      '  CS2_CODCLI = :OLD_CS2_CODCLI')
    Left = 383
    Top = 221
  end
  object Src_CSer02: TDataSource
    DataSet = Tb_CSer02
    Left = 411
    Top = 221
  end
  object Tb_CSer01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CSer01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADCSER01.*,PDNOME,CRAZAO'
      ',NVL( ('
      'select'
      
        ' sum(round((VALOR_INDEX*CSS_PERCINDEX),2))        as Total_valor' +
        '_cont'
      ' from ('
      'Select CSS_PERCINDEX ,case when  (SELECT max(IVLRCOMCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_CONT'
      ''
      ',NVL( ('
      'select'
      
        'sum(round( (round((VALOR_INDEX*CSS_PERCINDEX),2)*CSS_PDESCFIN/10' +
        '0),2))     as Total_valor_cont_desc'
      ' from ('
      
        'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCO' +
        'MCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_CONT_desc'
      ''
      ',NVL( ('
      'select'
      
        'sum(round((VALOR_INDEX*CSS_PERCINDEX),2)-round( (round((VALOR_IN' +
        'DEX*CSS_PERCINDEX),2)*CSS_PDESCFIN/100),2))'
      '    as Total_valor_liq'
      ' from ('
      
        'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCO' +
        'MCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_liquido'
      
        ',nvl( (select sum(nvl(CSS_VALORLIC,0)) from CADCSER01_SERV where' +
        ' CSS_CODCLI=CS_CODCLI  '
      
        ' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LI' +
        'C'
      ''
      ' from CADCSER01,CADPRO,CADCLI where PDCODPRO=CS_CODSER'
      'AND CCODCLI=CS_CODCLI'
      '')
    UpdateObject = U_CSer01
    Left = 354
    Top = 178
    object Tb_CSer01datcon: TStringField
      DisplayLabel = 'Data Contrato'
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 10
      Calculated = True
    end
    object Tb_CSer01datval: TStringField
      DisplayLabel = 'Data Validade'
      FieldKind = fkCalculated
      FieldName = 'datval'
      Size = 10
      Calculated = True
    end
    object Tb_CSer01razsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razsoc'
      Size = 53
      Calculated = True
    end
    object Tb_CSer01nompro: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 53
      Calculated = True
    end
    object Tb_CSer01nomser: TStringField
      DisplayLabel = 'Nome do Servi'#231'o'
      FieldKind = fkCalculated
      FieldName = 'nomser'
      Size = 53
      Calculated = True
    end
    object Tb_CSer01obsvenc01: TStringField
      FieldKind = fkCalculated
      FieldName = 'obsvenc01'
      Size = 40
      Calculated = True
    end
    object Tb_CSer01obsvenc02: TStringField
      FieldKind = fkCalculated
      FieldName = 'obsvenc02'
      Size = 40
      Calculated = True
    end
    object Tb_CSer01CS_CODEMP: TFloatField
      FieldName = 'CS_CODEMP'
    end
    object Tb_CSer01CS_CODCLI: TFloatField
      FieldName = 'CS_CODCLI'
    end
    object Tb_CSer01CS_CHAVE: TFloatField
      FieldName = 'CS_CHAVE'
    end
    object Tb_CSer01CS_DATCON: TDateTimeField
      FieldName = 'CS_DATCON'
    end
    object Tb_CSer01CS_DATVAL: TDateTimeField
      FieldName = 'CS_DATVAL'
    end
    object Tb_CSer01CS_TIPO: TFloatField
      FieldName = 'CS_TIPO'
    end
    object Tb_CSer01CS_STATUS: TFloatField
      FieldName = 'CS_STATUS'
    end
    object Tb_CSer01CS_DIAV: TFloatField
      FieldName = 'CS_DIAV'
    end
    object Tb_CSer01CS_MESV: TFloatField
      FieldName = 'CS_MESV'
    end
    object Tb_CSer01CS_CODUSR_INC: TFloatField
      FieldName = 'CS_CODUSR_INC'
    end
    object Tb_CSer01CS_NOMUSR_INC: TStringField
      FieldName = 'CS_NOMUSR_INC'
      Size = 40
    end
    object Tb_CSer01CS_DATHOR_INC: TDateTimeField
      FieldName = 'CS_DATHOR_INC'
    end
    object Tb_CSer01CS_CODUSR_ALT: TFloatField
      FieldName = 'CS_CODUSR_ALT'
    end
    object Tb_CSer01CS_NOMUSR_ALT: TStringField
      FieldName = 'CS_NOMUSR_ALT'
      Size = 40
    end
    object Tb_CSer01CS_DATHOR_ALT: TDateTimeField
      FieldName = 'CS_DATHOR_ALT'
    end
    object Tb_CSer01CS_FORMAPAG: TMemoField
      FieldName = 'CS_FORMAPAG'
      BlobType = ftMemo
      Size = 4000
    end
    object Tb_CSer01CS_NUMPROPOSTA: TStringField
      FieldName = 'CS_NUMPROPOSTA'
    end
    object Tb_CSer01CS_REPLEGAL: TStringField
      FieldName = 'CS_REPLEGAL'
      Size = 60
    end
    object Tb_CSer01CS_REPLEGAL_SEXO: TStringField
      FieldName = 'CS_REPLEGAL_SEXO'
      Size = 1
    end
    object Tb_CSer01CS_REPLEGAL_CPF: TStringField
      FieldName = 'CS_REPLEGAL_CPF'
      Size = 14
    end
    object Tb_CSer01CS_REPLEGAL_RG: TStringField
      FieldName = 'CS_REPLEGAL_RG'
      Size = 60
    end
    object Tb_CSer01CS_PRAZOENT: TMemoField
      FieldName = 'CS_PRAZOENT'
      BlobType = ftMemo
      Size = 4000
    end
    object Tb_CSer01CS_CODSER: TFloatField
      FieldName = 'CS_CODSER'
    end
    object Tb_CSer01PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Tb_CSer01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Tb_CSer01TOTAL_VALOR_CONT: TFloatField
      FieldName = 'TOTAL_VALOR_CONT'
    end
    object Tb_CSer01TOTAL_VALOR_CONT_DESC: TFloatField
      FieldName = 'TOTAL_VALOR_CONT_DESC'
    end
    object Tb_CSer01TOTAL_VALOR_LIQUIDO: TFloatField
      FieldName = 'TOTAL_VALOR_LIQUIDO'
    end
    object Tb_CSer01TOTAL_LIC: TFloatField
      FieldName = 'TOTAL_LIC'
    end
  end
  object Tb_FCli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADFCLI')
    Left = 355
    Top = 266
    object Tb_FCliCF_CODEMP: TFloatField
      FieldName = 'CF_CODEMP'
      Origin = 'SG_ASSOC.CADFCLI.CF_CODEMP'
    end
    object Tb_FCliCF_CODCLI: TFloatField
      FieldName = 'CF_CODCLI'
      Origin = 'SG_ASSOC.CADFCLI.CF_CODCLI'
    end
    object Tb_FCliCF_FOTO: TBlobField
      FieldName = 'CF_FOTO'
      Origin = 'SG_ASSOC.CADFCLI.CF_FOTO'
      Size = 1
    end
  end
  object Tb_ICli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADICLI')
    Left = 348
    Top = 436
    object Tb_ICliCI_CODEMP: TFloatField
      FieldName = 'CI_CODEMP'
      Origin = 'SG_ASSOC.CADICLI.CI_CODEMP'
    end
    object Tb_ICliCI_CODCLI: TFloatField
      FieldName = 'CI_CODCLI'
      Origin = 'SG_ASSOC.CADICLI.CI_CODCLI'
    end
    object Tb_ICliCI_INFORMACAO: TMemoField
      FieldName = 'CI_INFORMACAO'
      Origin = 'SG_ASSOC.CADICLI.CI_INFORMACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object Tb_GraPro: TQuery
    CachedUpdates = True
    BeforePost = Tb_GraProBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select GPCODEMP,'
      '       GPCODPRO,'
      '       GPCODMAS,'
      '       GPGRADE,'
      '       GPNOMGRA,'
      '       MPNOMEMAS'
      'from CADGPRO,CADMPRO where GPCODEMP is null'
      'and MPCODEMP=GPCODEMP'
      'and MPCODMAS=GPCODMAS')
    UpdateObject = U_GraPro
    Left = 484
    Top = 3
    object Tb_GraProGPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GPCODEMP'
      Origin = 'SG_ASSOC.CADGPRO.GPCODEMP'
    end
    object Tb_GraProGPCODPRO: TFloatField
      DisplayLabel = 'Produto'
      FieldName = 'GPCODPRO'
      Origin = 'SG_ASSOC.CADGPRO.GPCODPRO'
    end
    object Tb_GraProGPCODMAS: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GPCODMAS'
      Origin = 'SG_ASSOC.CADGPRO.GPCODMAS'
      Size = 2
    end
    object Tb_GraProGPGRADE: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GPGRADE'
      Origin = 'SG_ASSOC.CADGPRO.GPGRADE'
    end
    object Tb_GraProGPNOMGRA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GPNOMGRA'
      Origin = 'SG_ASSOC.CADGPRO.GPNOMGRA'
    end
    object Tb_GraProMPNOMEMAS: TStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'MPNOMEMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPNOMEMAS'
    end
  end
  object U_GraPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGPRO'
      'set'
      '  GPCODEMP = :GPCODEMP,'
      '  GPCODPRO = :GPCODPRO,'
      '  GPCODMAS = :GPCODMAS,'
      '  GPGRADE = :GPGRADE,'
      '  GPNOMGRA = :GPNOMGRA'
      'where'
      '  GPCODEMP = :OLD_GPCODEMP and'
      '  GPCODPRO = :OLD_GPCODPRO and'
      '  GPCODMAS = :OLD_GPCODMAS and'
      '  GPGRADE = :OLD_GPGRADE')
    InsertSQL.Strings = (
      'insert into CADGPRO'
      '  (GPCODEMP, GPCODPRO, GPCODMAS, GPGRADE, GPNOMGRA)'
      'values'
      '  (:GPCODEMP, :GPCODPRO, :GPCODMAS, :GPGRADE, :GPNOMGRA)')
    DeleteSQL.Strings = (
      'delete from CADGPRO'
      'where'
      '  GPCODEMP = :OLD_GPCODEMP and'
      '  GPCODPRO = :OLD_GPCODPRO and'
      '  GPCODMAS = :OLD_GPCODMAS and'
      '  GPGRADE = :OLD_GPGRADE')
    Left = 512
    Top = 3
  end
  object Src_GraPro: TDataSource
    DataSet = Tb_GraPro
    Left = 540
    Top = 3
  end
  object Tb_MPro: TQuery
    CachedUpdates = True
    BeforePost = Tb_MProBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMPRO where MPCODEMP is null')
    UpdateObject = U_MPro
    Left = 482
    Top = 239
    object Tb_MProMPCODEMP: TFloatField
      FieldName = 'MPCODEMP'
      Origin = 'SG_ASSOC.CADMPRO.MPCODEMP'
    end
    object Tb_MProMPCODMAS: TStringField
      FieldName = 'MPCODMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPCODMAS'
      Size = 2
    end
    object Tb_MProMPNOMEMAS: TStringField
      FieldName = 'MPNOMEMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPNOMEMAS'
    end
    object Tb_MProMPNOMEMPL: TStringField
      FieldName = 'MPNOMEMPL'
      Origin = 'SG_ASSOC.CADMPRO.MPNOMEMPL'
    end
    object Tb_MProMPTPMAS: TFloatField
      FieldName = 'MPTPMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPTPMAS'
    end
    object Tb_MProMPPOSICAO: TFloatField
      FieldName = 'MPPOSICAO'
      Origin = 'SG_ASSOC.CADMPRO.MPPOSICAO'
    end
    object Tb_MProMPTAMANHO: TFloatField
      FieldName = 'MPTAMANHO'
      Origin = 'SG_ASSOC.CADMPRO.MPTAMANHO'
    end
  end
  object U_MPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMPRO'
      'set'
      '  MPCODEMP = :MPCODEMP,'
      '  MPCODMAS = :MPCODMAS,'
      '  MPNOMEMAS = :MPNOMEMAS,'
      '  MPNOMEMPL = :MPNOMEMPL,'
      '  MPTPMAS = :MPTPMAS,'
      '  MPPOSICAO = :MPPOSICAO,'
      '  MPTAMANHO = :MPTAMANHO'
      'where'
      '  MPCODEMP = :OLD_MPCODEMP and'
      '  MPCODMAS = :OLD_MPCODMAS')
    InsertSQL.Strings = (
      'insert into CADMPRO'
      '  (MPCODEMP, MPCODMAS, MPNOMEMAS, MPNOMEMPL, MPTPMAS, '
      'MPPOSICAO, MPTAMANHO)'
      'values'
      '  (:MPCODEMP, :MPCODMAS, :MPNOMEMAS, :MPNOMEMPL, :MPTPMAS, '
      ':MPPOSICAO, '
      '   :MPTAMANHO)')
    DeleteSQL.Strings = (
      'delete from CADMPRO'
      'where'
      '  MPCODEMP = :OLD_MPCODEMP and'
      '  MPCODMAS = :OLD_MPCODMAS')
    Left = 510
    Top = 239
  end
  object Src_MPro: TDataSource
    DataSet = Tb_MPro
    Left = 538
    Top = 239
  end
  object Tb_PedFP: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPFP'
      'where PFPCODEMP is null')
    UpdateObject = U_Tb_PedFP
    Left = 603
    Top = 90
    object Tb_PedFPPFPCODEMP: TFloatField
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Tb_PedFPPFPLOTSEQ: TFloatField
      FieldName = 'PFPLOTSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Tb_PedFPPFPCHAVE: TFloatField
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Tb_PedFPPFPSEQ: TFloatField
      FieldName = 'PFPSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPSEQ'
    end
    object Tb_PedFPPFPFORMA: TFloatField
      FieldName = 'PFPFORMA'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Tb_PedFPPFPNUMDOC: TStringField
      FieldName = 'PFPNUMDOC'
      Origin = 'SG_ASSOC.CADPFP.PFPNUMDOC'
    end
    object Tb_PedFPPFPBANCO: TFloatField
      FieldName = 'PFPBANCO'
      Origin = 'SG_ASSOC.CADPFP.PFPBANCO'
    end
    object Tb_PedFPPFPSERIE: TStringField
      FieldName = 'PFPSERIE'
      Origin = 'SG_ASSOC.CADPFP.PFPSERIE'
    end
    object Tb_PedFPPFPVALOR: TFloatField
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Tb_PedFPPFPCC: TStringField
      FieldName = 'PFPCC'
      Origin = 'SG_ASSOC.CADPFP.PFPCC'
    end
    object Tb_PedFPPFPCOMP: TStringField
      FieldName = 'PFPCOMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCOMP'
      Size = 5
    end
    object Tb_PedFPPFPAGENCIA: TStringField
      FieldName = 'PFPAGENCIA'
      Origin = 'SG_ASSOC.CADPFP.PFPAGENCIA'
      Size = 8
    end
    object Tb_PedFPPFPEMITENTE: TStringField
      FieldName = 'PFPEMITENTE'
      Origin = 'SG_ASSOC.CADPFP.PFPEMITENTE'
      Size = 40
    end
    object Tb_PedFPPFPDATA: TDateTimeField
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Tb_PedFPPFPNOMFOR: TStringField
      FieldName = 'PFPNOMFOR'
      Origin = 'SG_ASSOC.CADPFP.PFPNOMFOR'
    end
    object Tb_PedFPPFPCNPF: TFloatField
      FieldName = 'PFPCNPF'
      Origin = 'SG_ASSOC.CADPFP.PFPCNPF'
    end
    object Tb_PedFPPFPRG: TStringField
      FieldName = 'PFPRG'
      Origin = 'SG_ASSOC.CADPFP.PFPRG'
      Size = 50
    end
    object Tb_PedFPPFPDTNAS: TDateTimeField
      FieldName = 'PFPDTNAS'
      Origin = 'SG_ASSOC.CADPFP.PFPDTNAS'
    end
    object Tb_PedFPPFPVINCULO: TFloatField
      FieldName = 'PFPVINCULO'
      Origin = 'SG_ASSOC.CADPFP.PFPVINCULO'
    end
    object Tb_PedFPPFPFPGTO: TFloatField
      FieldName = 'PFPFPGTO'
      Origin = 'SG_ASSOC.CADPFP.PFPFPGTO'
    end
    object Tb_PedFPPFPDEV_CODEMP: TFloatField
      FieldName = 'PFPDEV_CODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODEMP'
    end
    object Tb_PedFPPFPDEV_CODECF: TFloatField
      FieldName = 'PFPDEV_CODECF'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODECF'
    end
    object Tb_PedFPPFPDEV_NUMERO: TFloatField
      FieldName = 'PFPDEV_NUMERO'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_NUMERO'
    end
    object Tb_PedFPPFPDEV_DESD: TStringField
      FieldName = 'PFPDEV_DESD'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DESD'
      Size = 2
    end
    object Tb_PedFPPFPDEV_DUP: TFloatField
      FieldName = 'PFPDEV_DUP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DUP'
    end
    object Tb_PedFPPFPDEV_DTEMIS: TDateTimeField
      FieldName = 'PFPDEV_DTEMIS'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DTEMIS'
    end
    object Tb_PedFPPFPDEV_ID_DUP_NEW: TFloatField
      FieldName = 'PFPDEV_ID_DUP_NEW'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DTEMIS'
    end
    object Tb_PedFPPFPID_PED01_NEW: TFloatField
      FieldName = 'PFPID_PED01_NEW'
      Origin = 'SG_ASSOC.CADPFP.PFPID_PED01_NEW'
    end
    object Tb_PedFPPFPID_NEW: TFloatField
      FieldName = 'PFPID_NEW'
      Origin = 'SG_ASSOC.CADPFP.PFPID_NEW'
    end
  end
  object U_Tb_PedFP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPFP'
      'set'
      '  PFPCODEMP = :PFPCODEMP,'
      '  PFPLOTSEQ = :PFPLOTSEQ,'
      '  PFPCHAVE = :PFPCHAVE,'
      '  PFPSEQ = :PFPSEQ,'
      '  PFPFORMA = :PFPFORMA,'
      '  PFPDATA = :PFPDATA,'
      '  PFPNUMDOC = :PFPNUMDOC,'
      '  PFPBANCO = :PFPBANCO,'
      '  PFPSERIE = :PFPSERIE,'
      '  PFPVALOR = :PFPVALOR,'
      '  PFPCC = :PFPCC,'
      '  PFPCOMP = :PFPCOMP,'
      '  PFPAGENCIA = :PFPAGENCIA,'
      '  PFPEMITENTE = :PFPEMITENTE,'
      '  PFPNOMFOR = :PFPNOMFOR,'
      '  PFPVINCULO = :PFPVINCULO,'
      '  PFPCNPF = :PFPCNPF,'
      '  PFPRG = :PFPRG,'
      '  PFPDTNAS = :PFPDTNAS,'
      '  PFPFPGTO = :PFPFPGTO,'
      '  PFPDEV_CODEMP = :PFPDEV_CODEMP,'
      '  PFPDEV_CODECF = :PFPDEV_CODECF,'
      '  PFPDEV_NUMERO = :PFPDEV_NUMERO,'
      '  PFPDEV_DESD = :PFPDEV_DESD,'
      '  PFPDEV_DUP = :PFPDEV_DUP,'
      '  PFPDEV_DTEMIS = :PFPDEV_DTEMIS'
      ',PFPDEV_ID_DUP_NEW=:PFPDEV_ID_DUP_NEW'
      ',PFPID_PED01_NEW=:PFPID_PED01_NEW'
      ',PFPID_NEW=:PFPID_NEW'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    InsertSQL.Strings = (
      'insert into CADPFP'
      '  (PFPCODEMP, PFPLOTSEQ, PFPCHAVE, PFPSEQ, PFPFORMA, PFPDATA,'
      'PFPNUMDOC,'
      '   PFPBANCO, PFPSERIE, PFPVALOR, PFPCC, PFPCOMP, PFPAGENCIA,'
      'PFPEMITENTE,'
      '   PFPNOMFOR, PFPVINCULO, PFPCNPF, PFPRG, PFPDTNAS, PFPFPGTO,'
      'PFPDEV_CODEMP,'
      '   PFPDEV_CODECF, PFPDEV_NUMERO, PFPDEV_DESD, PFPDEV_DUP,'
      'PFPDEV_DTEMIS'
      ',PFPDEV_ID_DUP_NEW'
      ',PFPID_PED01_NEW'
      ',PFPID_NEW)'
      'values'
      
        '  (:PFPCODEMP, :PFPLOTSEQ, :PFPCHAVE, :PFPSEQ, :PFPFORMA, :PFPDA' +
        'TA,'
      ':PFPNUMDOC, '
      
        '   :PFPBANCO, :PFPSERIE, :PFPVALOR, :PFPCC, :PFPCOMP, :PFPAGENCI' +
        'A, '
      ':PFPEMITENTE, '
      
        '   :PFPNOMFOR, :PFPVINCULO, :PFPCNPF, :PFPRG, :PFPDTNAS, :PFPFPG' +
        'TO, '
      ':PFPDEV_CODEMP, '
      '   :PFPDEV_CODECF, :PFPDEV_NUMERO, :PFPDEV_DESD, :PFPDEV_DUP, '
      ':PFPDEV_DTEMIS'
      ',:PFPDEV_ID_DUP_NEW'
      ',:PFPID_PED01_NEW'
      ',:PFPID_NEW'
      ')')
    DeleteSQL.Strings = (
      'delete from CADPFP'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    Left = 632
    Top = 90
  end
  object Src_PedFP: TDataSource
    DataSet = Tb_PedFP
    Left = 661
    Top = 90
  end
  object Tb_AcRe01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_AcRe01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADACRE01 where AR1CODEMP is null')
    UpdateObject = U_AcRe01
    Left = 113
    Top = 404
    object Tb_AcRe01AR1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'AR1CODEMP'
      Origin = 'SG_ASSOC.CADACRE01.AR1CODEMP'
    end
    object Tb_AcRe01AR1CHAVE: TFloatField
      DisplayLabel = 'Chave do Acerto'
      FieldName = 'AR1CHAVE'
      Origin = 'SG_ASSOC.CADACRE01.AR1CHAVE'
    end
    object Tb_AcRe01AR1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'AR1TIPO'
      Origin = 'SG_ASSOC.CADACRE01.AR1TIPO'
    end
    object Tb_AcRe01AR1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'AR1DATA'
      Origin = 'SG_ASSOC.CADACRE01.AR1DATA'
    end
    object Tb_AcRe01AR1QTDENV: TFloatField
      DisplayLabel = 'Qtd.Enviada'
      FieldName = 'AR1QTDENV'
      Origin = 'SG_ASSOC.CADACRE01.AR1QTDENV'
    end
    object Tb_AcRe01AR1VLRENV: TFloatField
      DisplayLabel = 'Valor Enviado'
      FieldName = 'AR1VLRENV'
      Origin = 'SG_ASSOC.CADACRE01.AR1VLRENV'
    end
    object Tb_AcRe01AR1QTDDEV: TFloatField
      DisplayLabel = 'Qtd.Devolvido'
      FieldName = 'AR1QTDDEV'
      Origin = 'SG_ASSOC.CADACRE01.AR1QTDDEV'
    end
    object Tb_AcRe01AR1VLRDEV: TFloatField
      DisplayLabel = 'Valor Devolvido'
      FieldName = 'AR1VLRDEV'
      Origin = 'SG_ASSOC.CADACRE01.AR1VLRDEV'
    end
    object Tb_AcRe01AR1QTDFAT: TFloatField
      DisplayLabel = 'Qtd.Faturado'
      FieldName = 'AR1QTDFAT'
      Origin = 'SG_ASSOC.CADACRE01.AR1QTDFAT'
    end
    object Tb_AcRe01AR1VLRFAT: TFloatField
      DisplayLabel = 'Valor Faturado'
      FieldName = 'AR1VLRFAT'
      Origin = 'SG_ASSOC.CADACRE01.AR1VLRFAT'
    end
    object Tb_AcRe01AR1CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'AR1CODCLI'
      Origin = 'SG_ASSOC.CADACRE01.AR1CODCLI'
    end
    object Tb_AcRe01nomcli: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_AcRe01tipoacerto: TStringField
      DisplayLabel = 'Tipo do Acerto'
      FieldKind = fkCalculated
      FieldName = 'tipoacerto'
      Calculated = True
    end
  end
  object U_AcRe01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADACRE01'
      'set'
      '  AR1CODEMP = :AR1CODEMP,'
      '  AR1CHAVE = :AR1CHAVE,'
      '  AR1TIPO = :AR1TIPO,'
      '  AR1DATA = :AR1DATA,'
      '  AR1QTDENV = :AR1QTDENV,'
      '  AR1VLRENV = :AR1VLRENV,'
      '  AR1QTDDEV = :AR1QTDDEV,'
      '  AR1VLRDEV = :AR1VLRDEV,'
      '  AR1QTDFAT = :AR1QTDFAT,'
      '  AR1VLRFAT = :AR1VLRFAT,'
      '  AR1CODCLI = :AR1CODCLI'
      'where'
      '  AR1CODEMP = :OLD_AR1CODEMP and'
      '  AR1CHAVE = :OLD_AR1CHAVE')
    InsertSQL.Strings = (
      'insert into CADACRE01'
      '  (AR1CODEMP, AR1CHAVE, AR1TIPO, AR1DATA, AR1QTDENV, AR1VLRENV, '
      'AR1QTDDEV, '
      '   AR1VLRDEV, AR1QTDFAT, AR1VLRFAT, AR1CODCLI)'
      'values'
      
        '  (:AR1CODEMP, :AR1CHAVE, :AR1TIPO, :AR1DATA, :AR1QTDENV, :AR1VL' +
        'RENV, '
      ':AR1QTDDEV, '
      '   :AR1VLRDEV, :AR1QTDFAT, :AR1VLRFAT, :AR1CODCLI)')
    DeleteSQL.Strings = (
      'delete from CADACRE01'
      'where'
      '  AR1CODEMP = :OLD_AR1CODEMP and'
      '  AR1CHAVE = :OLD_AR1CHAVE')
    Left = 141
    Top = 404
  end
  object Src_AcRe01: TDataSource
    DataSet = Tb_AcRe01
    Left = 161
    Top = 404
  end
  object Src_AcRe02: TDataSource
    DataSet = Tb_AcRe02
    Left = 169
    Top = 456
  end
  object Tb_AcRe02: TQuery
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_AcRe02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADACRE02 where AR2CODEMP is null')
    UpdateObject = U_AcRe02
    Left = 113
    Top = 456
    object Tb_AcRe02AR2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'AR2CODEMP'
      Origin = 'SG_ASSOC.CADACRE02.AR2CODEMP'
    end
    object Tb_AcRe02AR2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'AR2CHAVE'
      Origin = 'SG_ASSOC.CADACRE02.AR2CHAVE'
    end
    object Tb_AcRe02AR2TIPOMOV: TFloatField
      DisplayLabel = 'Tipo do Mov'
      FieldName = 'AR2TIPOMOV'
      Origin = 'SG_ASSOC.CADACRE02.AR2TIPOMOV'
    end
    object Tb_AcRe02AR2CHAVEPED: TFloatField
      DisplayLabel = 'Chave Pedido'
      FieldName = 'AR2CHAVEPED'
      Origin = 'SG_ASSOC.CADACRE02.AR2CHAVEPED'
    end
    object Tb_AcRe02AR2ORDEM: TFloatField
      DisplayLabel = 'Ordem Pedido'
      FieldName = 'AR2ORDEM'
      Origin = 'SG_ASSOC.CADACRE02.AR2ORDEM'
    end
    object Tb_AcRe02AR2DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'AR2DATA'
      Origin = 'SG_ASSOC.CADACRE02.AR2DATA'
    end
    object Tb_AcRe02AR2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'AR2QTD'
      Origin = 'SG_ASSOC.CADACRE02.AR2QTD'
    end
    object Tb_AcRe02AR2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'AR2VLR'
      Origin = 'SG_ASSOC.CADACRE02.AR2VLR'
    end
    object Tb_AcRe02AR2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'AR2LOTSEQ'
      Origin = 'SG_ASSOC.CADACRE02.AR2LOTSEQ'
    end
    object Tb_AcRe02AR2SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'AR2SEQ'
      Origin = 'SG_ASSOC.CADACRE02.AR2SEQ'
    end
    object Tb_AcRe02tipomov: TStringField
      DisplayLabel = 'Tipo do Movimento'
      FieldKind = fkCalculated
      FieldName = 'tipomov'
      Calculated = True
    end
  end
  object U_AcRe02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADACRE02'
      'set'
      '  AR2CODEMP = :AR2CODEMP,'
      '  AR2CHAVE = :AR2CHAVE,'
      '  AR2TIPOMOV = :AR2TIPOMOV,'
      '  AR2CHAVEPED = :AR2CHAVEPED,'
      '  AR2ORDEM = :AR2ORDEM,'
      '  AR2DATA = :AR2DATA,'
      '  AR2QTD = :AR2QTD,'
      '  AR2VLR = :AR2VLR,'
      '  AR2LOTSEQ = :AR2LOTSEQ,'
      '  AR2SEQ = :AR2SEQ'
      'where'
      '  AR2CODEMP = :OLD_AR2CODEMP and'
      '  AR2CHAVE = :OLD_AR2CHAVE and'
      '  AR2SEQ = :OLD_AR2SEQ')
    InsertSQL.Strings = (
      'insert into CADACRE02'
      '  (AR2CODEMP, AR2CHAVE, AR2TIPOMOV, AR2CHAVEPED, AR2ORDEM, '
      'AR2DATA, AR2QTD, '
      '   AR2VLR, AR2LOTSEQ, AR2SEQ)'
      'values'
      '  (:AR2CODEMP, :AR2CHAVE, :AR2TIPOMOV, :AR2CHAVEPED, :AR2ORDEM, '
      ':AR2DATA, '
      '   :AR2QTD, :AR2VLR, :AR2LOTSEQ, :AR2SEQ)')
    DeleteSQL.Strings = (
      'delete from CADACRE02'
      'where'
      '  AR2CODEMP = :OLD_AR2CODEMP and'
      '  AR2CHAVE = :OLD_AR2CHAVE and'
      '  AR2SEQ = :OLD_AR2SEQ')
    Left = 141
    Top = 456
  end
  object Tb_MPer: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_MPerBeforeInsert
    AfterInsert = Tb_MPerAfterInsert
    BeforePost = Tb_MPerBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMPER')
    UpdateObject = U_MPer
    Left = 482
    Top = 288
    object Tb_MPerCMPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CMPCODEMP'
      Origin = 'SG_ASSOC.CADMPER.CMPCODEMP'
    end
    object Tb_MPerCMPCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CMPCODIGO'
      Origin = 'SG_ASSOC.CADMPER.CMPCODIGO'
    end
    object Tb_MPerCMPMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'CMPMOTIVO'
      Origin = 'SG_ASSOC.CADMPER.CMPMOTIVO'
      Size = 40
    end
  end
  object U_MPer: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMPER'
      'set'
      '  CMPCODEMP = :CMPCODEMP,'
      '  CMPCODIGO = :CMPCODIGO,'
      '  CMPMOTIVO = :CMPMOTIVO'
      'where'
      '  CMPCODEMP = :OLD_CMPCODEMP and'
      '  CMPCODIGO = :OLD_CMPCODIGO')
    InsertSQL.Strings = (
      'insert into CADMPER'
      '  (CMPCODEMP, CMPCODIGO, CMPMOTIVO)'
      'values'
      '  (:CMPCODEMP, :CMPCODIGO, :CMPMOTIVO)')
    DeleteSQL.Strings = (
      'delete from CADMPER'
      'where'
      '  CMPCODEMP = :OLD_CMPCODEMP and'
      '  CMPCODIGO = :OLD_CMPCODIGO')
    Left = 510
    Top = 288
  end
  object Src_MPer: TDataSource
    DataSet = Tb_MPer
    Left = 538
    Top = 288
  end
  object Tb_MPar: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_MParBeforeInsert
    AfterInsert = Tb_MParAfterInsert
    BeforePost = Tb_MParBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMPAR')
    UpdateObject = U_MPar
    Left = 482
    Top = 192
    object Tb_MParMPARCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'MPARCODEMP'
      Origin = 'SG_ASSOC.CADMPAR.MPARCODEMP'
    end
    object Tb_MParMPARCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MPARCODIGO'
      Origin = 'SG_ASSOC.CADMPAR.MPARCODIGO'
    end
    object Tb_MParMPARMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MPARMOTIVO'
      Origin = 'SG_ASSOC.CADMPAR.MPARMOTIVO'
      Size = 40
    end
  end
  object U_MPar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMPAR'
      'set'
      '  MPARCODEMP = :MPARCODEMP,'
      '  MPARCODIGO = :MPARCODIGO,'
      '  MPARMOTIVO = :MPARMOTIVO'
      'where'
      '  MPARCODEMP = :OLD_MPARCODEMP and'
      '  MPARCODIGO = :OLD_MPARCODIGO')
    InsertSQL.Strings = (
      'insert into CADMPAR'
      '  (MPARCODEMP, MPARCODIGO, MPARMOTIVO)'
      'values'
      '  (:MPARCODEMP, :MPARCODIGO, :MPARMOTIVO)')
    DeleteSQL.Strings = (
      'delete from CADMPAR'
      'where'
      '  MPARCODEMP = :OLD_MPARCODEMP and'
      '  MPARCODIGO = :OLD_MPARCODIGO')
    Left = 510
    Top = 192
  end
  object Src_MPar: TDataSource
    DataSet = Tb_MPar
    Left = 538
    Top = 192
  end
  object Tb_CP01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CP01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCP01')
    UpdateObject = U_CP01
    Left = 242
    Top = 504
    object Tb_CP01CP1CODEMP: TFloatField
      FieldName = 'CP1CODEMP'
      Origin = 'SG_ASSOC.CADCP01.CP1CODEMP'
    end
    object Tb_CP01CP1LOTSEQ: TFloatField
      FieldName = 'CP1LOTSEQ'
      Origin = 'SG_ASSOC.CADCP01.CP1LOTSEQ'
    end
    object Tb_CP01CP1CHAVE: TFloatField
      FieldName = 'CP1CHAVE'
      Origin = 'SG_ASSOC.CADCP01.CP1CHAVE'
    end
    object Tb_CP01CP1DATA: TDateTimeField
      FieldName = 'CP1DATA'
      Origin = 'SG_ASSOC.CADCP01.CP1DATA'
    end
    object Tb_CP01CP1TURNO: TStringField
      FieldName = 'CP1TURNO'
      Origin = 'SG_ASSOC.CADCP01.CP1TURNO'
      Size = 40
    end
    object Tb_CP01CP1REBARBAS: TStringField
      FieldName = 'CP1REBARBAS'
      Origin = 'SG_ASSOC.CADCP01.CP1REBARBAS'
      Size = 40
    end
    object Tb_CP01CP1DATAINC: TDateTimeField
      FieldName = 'CP1DATAINC'
      Origin = 'SG_ASSOC.CADCP01.CP1DATAINC'
    end
    object Tb_CP01CP1USRINC: TFloatField
      FieldName = 'CP1USRINC'
      Origin = 'SG_ASSOC.CADCP01.CP1USRINC'
    end
    object Tb_CP01CP1DATAALT: TDateTimeField
      FieldName = 'CP1DATAALT'
      Origin = 'SG_ASSOC.CADCP01.CP1DATAALT'
    end
    object Tb_CP01CP1USRALT: TFloatField
      FieldName = 'CP1USRALT'
      Origin = 'SG_ASSOC.CADCP01.CP1USRALT'
    end
    object Tb_CP01CP1CODENC: TFloatField
      FieldName = 'CP1CODENC'
      Origin = 'SG_ASSOC.CADCP01.CP1CODENC'
    end
    object Tb_CP01nomenc: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomenc'
      Size = 40
      Calculated = True
    end
  end
  object Src_CP01: TDataSource
    DataSet = Tb_CP01
    OnDataChange = Src_CP01DataChange
    Left = 298
    Top = 504
  end
  object U_CP01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP01'
      'set'
      '  CP1CODEMP = :CP1CODEMP,'
      '  CP1LOTSEQ = :CP1LOTSEQ,'
      '  CP1CHAVE = :CP1CHAVE,'
      '  CP1DATA = :CP1DATA,'
      '  CP1TURNO = :CP1TURNO,'
      '  CP1REBARBAS = :CP1REBARBAS,'
      '  CP1DATAINC = :CP1DATAINC,'
      '  CP1USRINC = :CP1USRINC,'
      '  CP1DATAALT = :CP1DATAALT,'
      '  CP1USRALT = :CP1USRALT,'
      '  CP1CODENC = :CP1CODENC'
      'where'
      '  CP1CODEMP = :OLD_CP1CODEMP and'
      '  CP1LOTSEQ = :OLD_CP1LOTSEQ and'
      '  CP1CHAVE = :OLD_CP1CHAVE')
    InsertSQL.Strings = (
      'insert into CADCP01'
      '  (CP1CODEMP, CP1LOTSEQ, CP1CHAVE, CP1DATA, CP1TURNO, '
      'CP1REBARBAS, CP1DATAINC, '
      '   CP1USRINC, CP1DATAALT, CP1USRALT, CP1CODENC)'
      'values'
      '  (:CP1CODEMP, :CP1LOTSEQ, :CP1CHAVE, :CP1DATA, :CP1TURNO, '
      ':CP1REBARBAS, '
      '   :CP1DATAINC, :CP1USRINC, :CP1DATAALT, :CP1USRALT, :CP1CODENC)')
    DeleteSQL.Strings = (
      'delete from CADCP01'
      'where'
      '  CP1CODEMP = :OLD_CP1CODEMP and'
      '  CP1LOTSEQ = :OLD_CP1LOTSEQ and'
      '  CP1CHAVE = :OLD_CP1CHAVE')
    Left = 270
    Top = 504
  end
  object Tb_CP02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_CP02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02')
    UpdateObject = U_CP02
    Left = 354
    Top = 4
    object Tb_CP02CP2CODEMP: TFloatField
      FieldName = 'CP2CODEMP'
      Origin = 'SG_ASSOC.CADCP02.CP2CODEMP'
    end
    object Tb_CP02CP2LOTSEQ: TFloatField
      FieldName = 'CP2LOTSEQ'
      Origin = 'SG_ASSOC.CADCP02.CP2LOTSEQ'
    end
    object Tb_CP02CP2CHAVE: TFloatField
      FieldName = 'CP2CHAVE'
      Origin = 'SG_ASSOC.CADCP02.CP2CHAVE'
    end
    object Tb_CP02CP2ITEM: TFloatField
      FieldName = 'CP2ITEM'
      Origin = 'SG_ASSOC.CADCP02.CP2ITEM'
    end
    object Tb_CP02CP2CODMAQ: TFloatField
      FieldName = 'CP2CODMAQ'
      Origin = 'SG_ASSOC.CADCP02.CP2CODMAQ'
    end
    object Tb_CP02CP2FRASCO: TStringField
      FieldName = 'CP2FRASCO'
      Origin = 'SG_ASSOC.CADCP02.CP2FRASCO'
      Size = 40
    end
    object Tb_CP02CP2COR: TStringField
      FieldName = 'CP2COR'
      Origin = 'SG_ASSOC.CADCP02.CP2COR'
      Size = 40
    end
    object Tb_CP02CP2CICLO: TFloatField
      FieldName = 'CP2CICLO'
      Origin = 'SG_ASSOC.CADCP02.CP2CICLO'
    end
    object Tb_CP02CP2CAVIDADE: TFloatField
      FieldName = 'CP2CAVIDADE'
      Origin = 'SG_ASSOC.CADCP02.CP2CAVIDADE'
    end
    object Tb_CP02CP2PRODUCAO: TFloatField
      FieldName = 'CP2PRODUCAO'
      Origin = 'SG_ASSOC.CADCP02.CP2PRODUCAO'
    end
    object Tb_CP02CP2PERDA: TFloatField
      FieldName = 'CP2PERDA'
      Origin = 'SG_ASSOC.CADCP02.CP2PERDA'
    end
    object Tb_CP02CP2HORTRAB: TFloatField
      FieldName = 'CP2HORTRAB'
      Origin = 'SG_ASSOC.CADCP02.CP2HORTRAB'
    end
    object Tb_CP02CP2DTHRIPAR: TDateTimeField
      FieldName = 'CP2DTHRIPAR'
      Origin = 'SG_ASSOC.CADCP02.CP2DTHRIPAR'
    end
    object Tb_CP02CP2DTHRTPAR: TDateTimeField
      FieldName = 'CP2DTHRTPAR'
      Origin = 'SG_ASSOC.CADCP02.CP2DTHRTPAR'
    end
    object Tb_CP02nommaq: TStringField
      FieldKind = fkCalculated
      FieldName = 'nommaq'
      Size = 40
      Calculated = True
    end
    object Tb_CP02percperda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percperda'
      Calculated = True
    end
    object Tb_CP02perda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'perda'
      Calculated = True
    end
    object Tb_CP02totperdas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totperdas'
      Calculated = True
    end
  end
  object U_CP02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02'
      'set'
      '  CP2CODEMP = :CP2CODEMP,'
      '  CP2LOTSEQ = :CP2LOTSEQ,'
      '  CP2CHAVE = :CP2CHAVE,'
      '  CP2ITEM = :CP2ITEM,'
      '  CP2CODMAQ = :CP2CODMAQ,'
      '  CP2FRASCO = :CP2FRASCO,'
      '  CP2COR = :CP2COR,'
      '  CP2CICLO = :CP2CICLO,'
      '  CP2CAVIDADE = :CP2CAVIDADE,'
      '  CP2PRODUCAO = :CP2PRODUCAO,'
      '  CP2PERDA = :CP2PERDA,'
      '  CP2HORTRAB = :CP2HORTRAB,'
      '  CP2DTHRIPAR = :CP2DTHRIPAR,'
      '  CP2DTHRTPAR = :CP2DTHRTPAR'
      'where'
      '  CP2CODEMP = :OLD_CP2CODEMP and'
      '  CP2LOTSEQ = :OLD_CP2LOTSEQ and'
      '  CP2CHAVE = :OLD_CP2CHAVE and'
      '  CP2ITEM = :OLD_CP2ITEM and'
      '  CP2CODMAQ = :OLD_CP2CODMAQ')
    InsertSQL.Strings = (
      'insert into CADCP02'
      
        '  (CP2CODEMP, CP2LOTSEQ, CP2CHAVE, CP2ITEM, CP2CODMAQ, CP2FRASCO' +
        ', '
      'CP2COR, '
      '   CP2CICLO, CP2CAVIDADE, CP2PRODUCAO, CP2PERDA, CP2HORTRAB, '
      'CP2DTHRIPAR, '
      '   CP2DTHRTPAR)'
      'values'
      '  (:CP2CODEMP, :CP2LOTSEQ, :CP2CHAVE, :CP2ITEM, :CP2CODMAQ, '
      ':CP2FRASCO, '
      '   :CP2COR, :CP2CICLO, :CP2CAVIDADE, :CP2PRODUCAO, :CP2PERDA, '
      ':CP2HORTRAB, '
      '   :CP2DTHRIPAR, :CP2DTHRTPAR)')
    DeleteSQL.Strings = (
      'delete from CADCP02'
      'where'
      '  CP2CODEMP = :OLD_CP2CODEMP and'
      '  CP2LOTSEQ = :OLD_CP2LOTSEQ and'
      '  CP2CHAVE = :OLD_CP2CHAVE and'
      '  CP2ITEM = :OLD_CP2ITEM and'
      '  CP2CODMAQ = :OLD_CP2CODMAQ')
    Left = 382
    Top = 4
  end
  object Src_CP02: TDataSource
    DataSet = Tb_CP02
    Left = 410
    Top = 4
  end
  object Tb_CP02_MPAR: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_MPAR where '
      'CP2MPARCODEMP is null')
    UpdateObject = U_CP02_MPAR
    Left = 354
    Top = 47
    object Tb_CP02_MPARCP2MPARCODEMP: TFloatField
      FieldName = 'CP2MPARCODEMP'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODEMP'
    end
    object Tb_CP02_MPARCP2MPARLOTSEQ: TFloatField
      FieldName = 'CP2MPARLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARLOTSEQ'
    end
    object Tb_CP02_MPARCP2MPARSEQ: TFloatField
      FieldName = 'CP2MPARSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARSEQ'
    end
    object Tb_CP02_MPARCP2MPARCODMPAR: TFloatField
      FieldName = 'CP2MPARCODMPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODMPAR'
    end
    object Tb_CP02_MPARCP2MPARNOMPAR: TStringField
      FieldName = 'CP2MPARNOMPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARNOMPAR'
      Size = 40
    end
    object Tb_CP02_MPARCP2MPARDTHRTPAR: TDateTimeField
      FieldName = 'CP2MPARDTHRTPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARDTHRTPAR'
    end
    object Tb_CP02_MPARCP2MPARCHAVE: TFloatField
      FieldName = 'CP2MPARCHAVE'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCHAVE'
    end
    object Tb_CP02_MPARCP2MPARDTHRIPAR: TDateTimeField
      FieldName = 'CP2MPARDTHRIPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARDTHRIPAR'
    end
    object Tb_CP02_MPARCP2MPARCODMAQ: TFloatField
      FieldName = 'CP2MPARCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODMAQ'
    end
  end
  object U_CP02_MPAR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_MPAR'
      'set'
      '  CP2MPARCODEMP = :CP2MPARCODEMP,'
      '  CP2MPARLOTSEQ = :CP2MPARLOTSEQ,'
      '  CP2MPARSEQ = :CP2MPARSEQ,'
      '  CP2MPARCODMPAR = :CP2MPARCODMPAR,'
      '  CP2MPARNOMPAR = :CP2MPARNOMPAR,'
      '  CP2MPARDTHRTPAR = :CP2MPARDTHRTPAR,'
      '  CP2MPARCHAVE = :CP2MPARCHAVE,'
      '  CP2MPARDTHRIPAR = :CP2MPARDTHRIPAR,'
      '  CP2MPARCODMAQ = :CP2MPARCODMAQ'
      'where'
      '  CP2MPARCODEMP = :OLD_CP2MPARCODEMP and'
      '  CP2MPARLOTSEQ = :OLD_CP2MPARLOTSEQ and'
      '  CP2MPARSEQ = :OLD_CP2MPARSEQ and'
      '  CP2MPARCHAVE = :OLD_CP2MPARCHAVE and'
      '  CP2MPARCODMAQ = :OLD_CP2MPARCODMAQ')
    InsertSQL.Strings = (
      'insert into CADCP02_MPAR'
      '  (CP2MPARCODEMP, CP2MPARLOTSEQ, CP2MPARSEQ, CP2MPARCODMPAR, '
      'CP2MPARNOMPAR, '
      '   CP2MPARDTHRTPAR, CP2MPARCHAVE, CP2MPARDTHRIPAR, '
      'CP2MPARCODMAQ)'
      'values'
      '  (:CP2MPARCODEMP, :CP2MPARLOTSEQ, :CP2MPARSEQ, '
      ':CP2MPARCODMPAR, :CP2MPARNOMPAR, '
      '   :CP2MPARDTHRTPAR, :CP2MPARCHAVE, :CP2MPARDTHRIPAR, '
      ':CP2MPARCODMAQ)')
    DeleteSQL.Strings = (
      'delete from CADCP02_MPAR'
      'where'
      '  CP2MPARCODEMP = :OLD_CP2MPARCODEMP and'
      '  CP2MPARLOTSEQ = :OLD_CP2MPARLOTSEQ and'
      '  CP2MPARSEQ = :OLD_CP2MPARSEQ and'
      '  CP2MPARCHAVE = :OLD_CP2MPARCHAVE and'
      '  CP2MPARCODMAQ = :OLD_CP2MPARCODMAQ')
    Left = 382
    Top = 47
  end
  object Src_CP02_MPAR: TDataSource
    DataSet = Tb_CP02_MPAR
    Left = 410
    Top = 47
  end
  object Tb_CP02_MPER: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_MPER where '
      'CP2MPERCODEMP is null')
    UpdateObject = U_CP02_MPER
    Left = 354
    Top = 91
    object Tb_CP02_MPERCP2MPERCODEMP: TFloatField
      FieldName = 'CP2MPERCODEMP'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODEMP'
    end
    object Tb_CP02_MPERCP2MPERLOTSEQ: TFloatField
      FieldName = 'CP2MPERLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERLOTSEQ'
    end
    object Tb_CP02_MPERCP2MPERSEQ: TFloatField
      FieldName = 'CP2MPERSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERSEQ'
    end
    object Tb_CP02_MPERCP2MPERCODMPER: TFloatField
      FieldName = 'CP2MPERCODMPER'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODMPER'
    end
    object Tb_CP02_MPERCP2MPERNOMPER: TStringField
      FieldName = 'CP2MPERNOMPER'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERNOMPER'
      Size = 40
    end
    object Tb_CP02_MPERCP2MPERCHAVE: TFloatField
      FieldName = 'CP2MPERCHAVE'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCHAVE'
    end
    object Tb_CP02_MPERCP2MPERCODMAQ: TFloatField
      FieldName = 'CP2MPERCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODMAQ'
    end
  end
  object U_CP02_MPER: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_MPER'
      'set'
      '  CP2MPERCODEMP = :CP2MPERCODEMP,'
      '  CP2MPERLOTSEQ = :CP2MPERLOTSEQ,'
      '  CP2MPERSEQ = :CP2MPERSEQ,'
      '  CP2MPERCODMPER = :CP2MPERCODMPER,'
      '  CP2MPERNOMPER = :CP2MPERNOMPER,'
      '  CP2MPERCHAVE = :CP2MPERCHAVE,'
      '  CP2MPERCODMAQ = :CP2MPERCODMAQ'
      'where'
      '  CP2MPERCODEMP = :OLD_CP2MPERCODEMP and'
      '  CP2MPERLOTSEQ = :OLD_CP2MPERLOTSEQ and'
      '  CP2MPERSEQ = :OLD_CP2MPERSEQ and'
      '  CP2MPERCHAVE = :OLD_CP2MPERCHAVE and'
      '  CP2MPERCODMAQ = :OLD_CP2MPERCODMAQ')
    InsertSQL.Strings = (
      'insert into CADCP02_MPER'
      '  (CP2MPERCODEMP, CP2MPERLOTSEQ, CP2MPERSEQ, CP2MPERCODMPER, '
      'CP2MPERNOMPER, '
      '   CP2MPERCHAVE, CP2MPERCODMAQ)'
      'values'
      '  (:CP2MPERCODEMP, :CP2MPERLOTSEQ, :CP2MPERSEQ, '
      ':CP2MPERCODMPER, :CP2MPERNOMPER, '
      '   :CP2MPERCHAVE, :CP2MPERCODMAQ)')
    DeleteSQL.Strings = (
      'delete from CADCP02_MPER'
      'where'
      '  CP2MPERCODEMP = :OLD_CP2MPERCODEMP and'
      '  CP2MPERLOTSEQ = :OLD_CP2MPERLOTSEQ and'
      '  CP2MPERSEQ = :OLD_CP2MPERSEQ and'
      '  CP2MPERCHAVE = :OLD_CP2MPERCHAVE and'
      '  CP2MPERCODMAQ = :OLD_CP2MPERCODMAQ')
    Left = 382
    Top = 91
  end
  object Src_CP02_MPER: TDataSource
    DataSet = Tb_CP02_MPER
    Left = 410
    Top = 91
  end
  object Tb_CP02_PREN: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_PREN where '
      'CP2PRENCODEMP is null'
      '')
    UpdateObject = U_CP02_PREN
    Left = 354
    Top = 134
    object Tb_CP02_PRENCP2PRENCODEMP: TFloatField
      FieldName = 'CP2PRENCODEMP'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODEMP'
    end
    object Tb_CP02_PRENCP2PRENLOTSEQ: TFloatField
      FieldName = 'CP2PRENLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENLOTSEQ'
    end
    object Tb_CP02_PRENCP2PRENCHAVE: TFloatField
      FieldName = 'CP2PRENCHAVE'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCHAVE'
    end
    object Tb_CP02_PRENCP2PRENSEQ: TFloatField
      FieldName = 'CP2PRENSEQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENSEQ'
    end
    object Tb_CP02_PRENCP2PRENCODMPREN: TFloatField
      FieldName = 'CP2PRENCODMPREN'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODMPREN'
    end
    object Tb_CP02_PRENCP2PRENCODMAQ: TFloatField
      FieldName = 'CP2PRENCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODMAQ'
    end
    object Tb_CP02_PRENCP2PRENNOMPREN: TStringField
      FieldName = 'CP2PRENNOMPREN'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENNOMPREN'
      Size = 40
    end
  end
  object U_CP02_PREN: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_PREN'
      'set'
      '  CP2PRENCODEMP = :CP2PRENCODEMP,'
      '  CP2PRENLOTSEQ = :CP2PRENLOTSEQ,'
      '  CP2PRENCHAVE = :CP2PRENCHAVE,'
      '  CP2PRENSEQ = :CP2PRENSEQ,'
      '  CP2PRENCODMPREN = :CP2PRENCODMPREN,'
      '  CP2PRENCODMAQ = :CP2PRENCODMAQ,'
      '  CP2PRENNOMPREN = :CP2PRENNOMPREN'
      'where'
      '  CP2PRENCODEMP = :OLD_CP2PRENCODEMP and'
      '  CP2PRENLOTSEQ = :OLD_CP2PRENLOTSEQ and'
      '  CP2PRENCHAVE = :OLD_CP2PRENCHAVE and'
      '  CP2PRENSEQ = :OLD_CP2PRENSEQ and'
      '  CP2PRENCODMAQ = :OLD_CP2PRENCODMAQ')
    InsertSQL.Strings = (
      'insert into CADCP02_PREN'
      '  (CP2PRENCODEMP, CP2PRENLOTSEQ, CP2PRENCHAVE, CP2PRENSEQ, '
      'CP2PRENCODMPREN, '
      '   CP2PRENCODMAQ, CP2PRENNOMPREN)'
      'values'
      '  (:CP2PRENCODEMP, :CP2PRENLOTSEQ, :CP2PRENCHAVE, :CP2PRENSEQ, '
      ':CP2PRENCODMPREN, '
      '   :CP2PRENCODMAQ, :CP2PRENNOMPREN)')
    DeleteSQL.Strings = (
      'delete from CADCP02_PREN'
      'where'
      '  CP2PRENCODEMP = :OLD_CP2PRENCODEMP and'
      '  CP2PRENLOTSEQ = :OLD_CP2PRENLOTSEQ and'
      '  CP2PRENCHAVE = :OLD_CP2PRENCHAVE and'
      '  CP2PRENSEQ = :OLD_CP2PRENSEQ and'
      '  CP2PRENCODMAQ = :OLD_CP2PRENCODMAQ')
    Left = 382
    Top = 134
  end
  object Src_CP02_PREN: TDataSource
    DataSet = Tb_CP02_PREN
    Left = 410
    Top = 134
  end
  object Tb_ParCod: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPARCOD')
    UpdateObject = U_ParCod
    Left = 603
    Top = 46
    object Tb_ParCodPCCODEMP: TFloatField
      FieldName = 'PCCODEMP'
      Origin = 'SG_ASSOC.CADPARCOD.PCCODEMP'
    end
    object Tb_ParCodPCTABELA: TStringField
      FieldName = 'PCTABELA'
      Origin = 'SG_ASSOC.CADPARCOD.PCTABELA'
      Size = 30
    end
    object Tb_ParCodPCCODIGO: TFloatField
      FieldName = 'PCCODIGO'
      Origin = 'SG_ASSOC.CADPARCOD.PCCODIGO'
    end
    object Tb_ParCodPCBLQSTA01: TFloatField
      FieldName = 'PCBLQSTA01'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA01'
    end
    object Tb_ParCodPCBLQSTA02: TFloatField
      FieldName = 'PCBLQSTA02'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA02'
    end
    object Tb_ParCodPCBLQSTA03: TFloatField
      FieldName = 'PCBLQSTA03'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA03'
    end
    object Tb_ParCodPCBLQSTA04: TFloatField
      FieldName = 'PCBLQSTA04'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA04'
    end
    object Tb_ParCodPCBLQSTA05: TFloatField
      FieldName = 'PCBLQSTA05'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA05'
    end
    object Tb_ParCodPCBLQSTA06: TFloatField
      FieldName = 'PCBLQSTA06'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA06'
    end
    object Tb_ParCodPCBLQSTA07: TFloatField
      FieldName = 'PCBLQSTA07'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA07'
    end
    object Tb_ParCodPCBLQSTA08: TFloatField
      FieldName = 'PCBLQSTA08'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA08'
    end
    object Tb_ParCodPCBLQSTA09: TFloatField
      FieldName = 'PCBLQSTA09'
      Origin = 'SG_ASSOC.CADPARCOD.PCBLQSTA09'
    end
    object Tb_ParCodPCCODANT: TFloatField
      FieldName = 'PCCODANT'
      Origin = 'SG_ASSOC.CADPARCOD.PCCODANT'
    end
    object Tb_ParCodPCDESCRICAO: TStringField
      FieldName = 'PCDESCRICAO'
      Origin = 'SG_ASSOC.CADPARCOD.PCDESCRICAO'
      Size = 60
    end
  end
  object U_ParCod: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPARCOD'
      'set'
      '  PCDESCRICAO = :PCDESCRICAO,'
      '  PCCODIGO = :PCCODIGO,'
      '  PCCODANT = :PCCODANT,'
      '  PCBLQSTA01 = :PCBLQSTA01,'
      '  PCBLQSTA02 = :PCBLQSTA02,'
      '  PCBLQSTA03 = :PCBLQSTA03,'
      '  PCBLQSTA04 = :PCBLQSTA04,'
      '  PCBLQSTA05 = :PCBLQSTA05,'
      '  PCBLQSTA06 = :PCBLQSTA06,'
      '  PCBLQSTA07 = :PCBLQSTA07,'
      '  PCBLQSTA08 = :PCBLQSTA08,'
      '  PCBLQSTA09 = :PCBLQSTA09'
      'where'
      '  PCCODEMP = :OLD_PCCODEMP and'
      '  PCTABELA = :OLD_PCTABELA')
    InsertSQL.Strings = (
      'insert into CADPARCOD'
      '  (PCDESCRICAO, PCCODIGO, PCCODANT, PCBLQSTA01, PCBLQSTA02, '
      'PCBLQSTA03, '
      '   PCBLQSTA04, PCBLQSTA05, PCBLQSTA06, PCBLQSTA07, PCBLQSTA08, '
      'PCBLQSTA09)'
      'values'
      
        '  (:PCDESCRICAO, :PCCODIGO, :PCCODANT, :PCBLQSTA01, :PCBLQSTA02,' +
        ' '
      ':PCBLQSTA03, '
      
        '   :PCBLQSTA04, :PCBLQSTA05, :PCBLQSTA06, :PCBLQSTA07, :PCBLQSTA' +
        '08, '
      ':PCBLQSTA09)')
    DeleteSQL.Strings = (
      'delete from CADPARCOD'
      'where'
      '  PCCODEMP = :OLD_PCCODEMP and'
      '  PCTABELA = :OLD_PCTABELA')
    Left = 632
    Top = 46
  end
  object Src_ParCod: TDataSource
    DataSet = Tb_ParCod
    Left = 661
    Top = 46
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 17
    Top = 488
  end
  object Tb_Hlp: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADHLP'
      'where AJCHAVE like :CHAVE'
      'and AJDESCR like :DESCR')
    UpdateObject = U_hlp
    Left = 351
    Top = 389
    ParamData = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESCR'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_HlpAJCHAVE: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'AJCHAVE'
      Origin = 'SG_ASSOC.CADHLP.AJCHAVE'
      Size = 50
    end
    object Tb_HlpAJDESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'AJDESCR'
      Origin = 'SG_ASSOC.CADHLP.AJDESCR'
      Size = 50
    end
    object Tb_HlpAJMEMO: TMemoField
      DisplayLabel = 'Texto de Ajuda'
      FieldName = 'AJMEMO'
      Origin = 'SG_ASSOC.CADHLP.AJMEMO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object U_hlp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADHLP'
      'set'
      '  AJCHAVE = :AJCHAVE,'
      '  AJDESCR = :AJDESCR,'
      '  AJMEMO = :AJMEMO'
      'where'
      '  AJCHAVE = :OLD_AJCHAVE')
    InsertSQL.Strings = (
      'insert into CADHLP'
      '  (AJCHAVE, AJDESCR, AJMEMO)'
      'values'
      '  (:AJCHAVE, :AJDESCR, :AJMEMO)')
    DeleteSQL.Strings = (
      'delete from CADHLP'
      'where'
      '  AJCHAVE = :OLD_AJCHAVE')
    Left = 379
    Top = 388
  end
  object Src_hlp: TDataSource
    DataSet = Tb_Hlp
    Left = 410
    Top = 389
  end
  object Tb_Bloqueio: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  BQCODRCLI'
      '       ,BQCODRPRO'
      '       ,BQCODVEN'
      '       ,BQCODFOR'
      '       ,BQCODUF'
      '       ,BQCODLOC'
      '       ,BQCODBAI'
      '       ,BQCODPRO'
      '       ,BQCODCPRO'
      '       ,BQCODCLI'
      '       ,DECODE(BQCODRCLI,-1,'#39'Todos'#39',CADRCLI.RNOME) As RAMOCLI'
      '       ,DECODE(BQCODRPRO,-1,'#39'Todos'#39',CADRPRO.RNOME) As RAMOPRO'
      '       ,DECODE(BQCODVEN,-1 ,'#39'Todos'#39',VNOME) As NOMVEN'
      '       ,DECODE(BQCODFOR,-1 ,'#39'Todos'#39',FRAZAO) As NOMFOR'
      '       ,DECODE(BQCODUF,'#39'-1'#39','#39'Todos'#39',PUF) As ESTADO'
      '       ,DECODE(BQCODLOC,-1,'#39'Todas'#39',LNOME) As CIDADE'
      '       ,DECODE(BQCODBAI,-1,'#39'Todos'#39',BNOME) As BAIRRO'
      '       ,DECODE(BQCODPRO,-1,'#39'Todos'#39',PDNOME) As NOMEPRO'
      '       ,DECODE(BQCODCLI,-1,'#39'Todos'#39',CADCLI.CRAZAO) As NOMCLI'
      '       ,DECODE(BQCODCPRO,-1,'#39'Todos'#39',CADCON.CNOME) As CONPRO'
      '       ,BQGRUBLQ'
      '       ,BQGRUDUP'
      'from CADBLQ,CADRCLI CADRCLI,CADRAM CADRPRO,CADFOR,CADUF,'
      'CADLOC,CADBAI,CADPRO,CADCLI,CADVEN,CADCON'
      'Where'
      '    CADRCLI.RCODRAM(+)=BQCODRCLI'
      'and CADRPRO.RCODRAM(+)=BQCODRPRO'
      'and         VCODVEN(+)=BQCODVEN'
      'and         FCODFOR(+)=BQCODFOR'
      'and         PUF(+)    =BQCODUF'
      'and         LCODLOC(+)=BQCODLOC'
      'and         BCODBAI(+)=BQCODBAI'
      'and         PDCODPRO(+)=BQCODPRO'
      'and         CCODCON(+)=BQCODCPRO'
      'and         CCODCLI(+)=BQCODCLI'
      ''
      ''
      ''
      '')
    Left = 234
    Top = 138
    object Tb_BloqueioBQCODRCLI: TFloatField
      FieldName = 'BQCODRCLI'
    end
    object Tb_BloqueioBQCODRPRO: TFloatField
      FieldName = 'BQCODRPRO'
    end
    object Tb_BloqueioBQCODFOR: TFloatField
      FieldName = 'BQCODFOR'
    end
    object Tb_BloqueioBQCODUF: TStringField
      FieldName = 'BQCODUF'
      Size = 2
    end
    object Tb_BloqueioBQCODLOC: TFloatField
      FieldName = 'BQCODLOC'
    end
    object Tb_BloqueioBQCODBAI: TFloatField
      FieldName = 'BQCODBAI'
    end
    object Tb_BloqueioBQCODPRO: TFloatField
      FieldName = 'BQCODPRO'
    end
    object Tb_BloqueioRAMOCLI: TStringField
      FieldName = 'RAMOCLI'
      Size = 30
    end
    object Tb_BloqueioRAMOPRO: TStringField
      FieldName = 'RAMOPRO'
      Size = 30
    end
    object Tb_BloqueioNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 40
    end
    object Tb_BloqueioESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 5
    end
    object Tb_BloqueioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Tb_BloqueioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Tb_BloqueioNOMEPRO: TStringField
      FieldName = 'NOMEPRO'
      Size = 53
    end
    object Tb_Bloqueiocalc_ramocli: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_ramocli'
      Size = 40
      Calculated = True
    end
    object Tb_Bloqueiocalc_nomrpro: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomrpro'
      Size = 40
      Calculated = True
    end
    object Tb_Bloqueiocalc_nomepro: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomepro'
      Size = 53
      Calculated = True
    end
    object Tb_Bloqueiocalc_nomfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomfor'
      Size = 40
      Calculated = True
    end
    object Tb_Bloqueiocalc_estado: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_estado'
      Size = 2
      Calculated = True
    end
    object Tb_Bloqueiocalc_cidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_cidade'
      Size = 40
      Calculated = True
    end
    object Tb_Bloqueiocalc_bairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_bairro'
      Size = 40
      Calculated = True
    end
    object Tb_BloqueioBQGRUBLQ: TFloatField
      FieldName = 'BQGRUBLQ'
    end
    object Tb_BloqueioBQCODCLI: TFloatField
      FieldName = 'BQCODCLI'
    end
    object Tb_BloqueioNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 40
    end
    object Tb_BloqueioBQCODVEN: TFloatField
      FieldName = 'BQCODVEN'
    end
    object Tb_BloqueioNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Tb_BloqueioBQGRUDUP: TFloatField
      FieldName = 'BQGRUDUP'
    end
    object Tb_BloqueioBQCODCPRO: TFloatField
      FieldName = 'BQCODCPRO'
    end
    object Tb_BloqueioCONPRO: TStringField
      FieldName = 'CONPRO'
      Size = 30
    end
  end
  object Tb_LogoSis: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLOGSIS')
    UpdateObject = U_LogoSis
    Left = 477
    Top = 100
    object Tb_LogoSisLSCHAVE: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'LSCHAVE'
      Origin = 'SG_ASSOC.CADLOGSIS.LSCHAVE'
      Size = 30
    end
    object Tb_LogoSisLSLOGO: TBlobField
      DisplayLabel = 'Logotipo'
      FieldName = 'LSLOGO'
      Origin = 'SG_ASSOC.CADLOGSIS.LSLOGO'
      Size = 1
    end
    object Tb_LogoSisLSDESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LSDESCRICAO'
      Origin = 'SG_ASSOC.CADLOGSIS.LSDESCRICAO'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_LogoSisLSCODEMP: TFloatField
      FieldName = 'LSCODEMP'
      Origin = 'SG_ASSOC.CADLOGSIS.LSCODEMP'
    end
  end
  object U_LogoSis: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLOGSIS'
      'set'
      '  LSCHAVE = :LSCHAVE,'
      '  LSDESCRICAO = :LSDESCRICAO,'
      '  LSCODEMP = :LSCODEMP'
      'where'
      '  LSCHAVE = :OLD_LSCHAVE and'
      '  LSCODEMP = :OLD_LSCODEMP')
    InsertSQL.Strings = (
      'insert into CADLOGSIS'
      '  (LSCHAVE, LSDESCRICAO, LSCODEMP)'
      'values'
      '  (:LSCHAVE, :LSDESCRICAO, :LSCODEMP)')
    DeleteSQL.Strings = (
      'delete from CADLOGSIS'
      'where'
      '  LSCHAVE = :OLD_LSCHAVE and'
      '  LSCODEMP = :OLD_LSCODEMP')
    Left = 521
    Top = 100
  end
  object Src_LogoSis: TDataSource
    DataSet = Tb_LogoSis
    Left = 544
    Top = 102
  end
  object Tb_LSen: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select LSCODEMP'
      '       ,LSLOTSEQ'
      '       ,LSCODIGO'
      '       ,LSITENSBLOQ'
      '       ,LSSTATUS'
      '       ,LSCODUSRSOL'
      '       ,LSDATASOL'
      '       ,LSTEXTOMOT'
      '       ,LSTEXTOOBS'
      '       ,LSTEXTORESP'
      '       ,LSCODUSRLIB'
      '       ,LSDATALIB'
      '       ,LSCODTAB'
      '       ,LSCODCLI_DOC'
      '       ,LSCODEMP_DOC'
      '       ,LSLOTSEQ_DOC'
      '       ,LSCHAVE_DOC'
      '       ,LSORDEM_DOC'
      '       ,LSCHAVE_DOCST'
      '       ,NOMUSR'
      'from CADLSEN,CADUSR'
      'where CODUSR=LSCODUSRSOL')
    UpdateObject = U_LSen
    Left = 485
    Top = 152
    object Tb_LSenLSCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'LSCODEMP'
      Origin = 'SG_ASSOC.CADLSEN.LSCODEMP'
    end
    object Tb_LSenLSLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'LSLOTSEQ'
      Origin = 'SG_ASSOC.CADLSEN.LSLOTSEQ'
    end
    object Tb_LSenLSCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LSCODIGO'
      Origin = 'SG_ASSOC.CADLSEN.LSCODIGO'
    end
    object Tb_LSenLSITENSBLOQ: TStringField
      DisplayLabel = #205'tens Bloqueados'
      FieldName = 'LSITENSBLOQ'
      Origin = 'SG_ASSOC.CADLSEN.LSITENSBLOQ'
    end
    object Tb_LSenLSSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'LSSTATUS'
      Origin = 'SG_ASSOC.CADLSEN.LSSTATUS'
    end
    object Tb_LSenLSCODUSRLIB: TFloatField
      DisplayLabel = 'C'#243'digo Usu'#225'rio Liberou'
      FieldName = 'LSCODUSRLIB'
      Origin = 'SG_ASSOC.CADLSEN.LSCODUSRLIB'
    end
    object Tb_LSenLSDATALIB: TDateTimeField
      DisplayLabel = 'Data Libera'#231#227'o'
      FieldName = 'LSDATALIB'
      Origin = 'SG_ASSOC.CADLSEN.LSDATALIB'
    end
    object Tb_LSenLSCODTAB: TFloatField
      DisplayLabel = 'C'#243'd.Tabela'
      FieldName = 'LSCODTAB'
      Origin = 'SG_ASSOC.CADLSEN.LSCODTAB'
    end
    object Tb_LSenLSLOTSEQ_DOC: TFloatField
      DisplayLabel = 'Lote Seq.Doc'
      FieldName = 'LSLOTSEQ_DOC'
      Origin = 'SG_ASSOC.CADLSEN.LSLOTSEQ_DOC'
    end
    object Tb_LSenLSCHAVE_DOC: TFloatField
      DisplayLabel = 'Chave Doc'
      FieldName = 'LSCHAVE_DOC'
      Origin = 'SG_ASSOC.CADLSEN.LSCHAVE_DOC'
    end
    object Tb_LSenLSORDEM_DOC: TFloatField
      DisplayLabel = 'Ordem Doc'
      FieldName = 'LSORDEM_DOC'
      Origin = 'SG_ASSOC.CADLSEN.LSORDEM_DOC'
    end
    object Tb_LSenLSCHAVE_DOCST: TStringField
      DisplayLabel = 'Chave Documento'
      FieldName = 'LSCHAVE_DOCST'
      Origin = 'SG_ASSOC.CADLSEN.LSCHAVE_DOCST'
    end
    object Tb_LSenLSCODUSRSOL: TFloatField
      DisplayLabel = 'C'#243'd.Usr.Sol.'
      FieldName = 'LSCODUSRSOL'
      Origin = 'SG_ASSOC.CADLSEN.LSCODUSRSOL'
    end
    object Tb_LSenLSTEXTOMOT: TMemoField
      DisplayLabel = 'Texto Motivo'
      FieldName = 'LSTEXTOMOT'
      Origin = 'SG_ASSOC.CADLSEN.LSTEXTOMOT'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_LSenLSTEXTOOBS: TMemoField
      DisplayLabel = 'Texto Oberva'#231#245'es'
      FieldName = 'LSTEXTOOBS'
      Origin = 'SG_ASSOC.CADLSEN.LSTEXTOOBS'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_LSenLSDATASOL: TDateTimeField
      DisplayLabel = 'Data/Hora Solicita'#231#227'o'
      FieldName = 'LSDATASOL'
      Origin = 'SG_ASSOC.CADLSEN.LSDATASOL'
    end
    object Tb_LSenLSTEXTORESP: TMemoField
      DisplayLabel = 'Texto Resposta'
      FieldName = 'LSTEXTORESP'
      Origin = 'SG_ASSOC.CADLSEN.LSTEXTORESP'
      BlobType = ftMemo
      Size = 300
    end
    object Tb_LSenLSCODEMP_DOC: TFloatField
      DisplayLabel = 'Empresa Doc'
      FieldName = 'LSCODEMP_DOC'
      Origin = 'SG_ASSOC.CADLSEN.LSCODEMP_DOC'
    end
    object Tb_LSenNOMUSR: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio Solicitante'
      FieldName = 'NOMUSR'
      Origin = 'SG_ASSOC.CADUSR.NOMUSR'
      Size = 40
    end
    object Tb_LSenLSCODCLI_DOC: TFloatField
      FieldName = 'LSCODCLI_DOC'
      Origin = 'SG_ASSOC.CADLSEN.LSCODCLI_DOC'
    end
  end
  object U_LSen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLSEN'
      'set'
      '  LSCODEMP = :LSCODEMP,'
      '  LSLOTSEQ = :LSLOTSEQ,'
      '  LSCODIGO = :LSCODIGO,'
      '  LSITENSBLOQ = :LSITENSBLOQ,'
      '  LSSTATUS = :LSSTATUS,'
      '  LSCODUSRSOL = :LSCODUSRSOL,'
      '  LSDATASOL = :LSDATASOL,'
      '  LSTEXTOMOT = :LSTEXTOMOT,'
      '  LSTEXTOOBS = :LSTEXTOOBS,'
      '  LSTEXTORESP = :LSTEXTORESP,'
      '  LSCODUSRLIB = :LSCODUSRLIB,'
      '  LSDATALIB = :LSDATALIB,'
      '  LSCODTAB = :LSCODTAB,'
      '  LSCODCLI_DOC = :LSCODCLI_DOC,'
      '  LSCODEMP_DOC = :LSCODEMP_DOC,'
      '  LSLOTSEQ_DOC = :LSLOTSEQ_DOC,'
      '  LSCHAVE_DOC = :LSCHAVE_DOC,'
      '  LSORDEM_DOC = :LSORDEM_DOC,'
      '  LSCHAVE_DOCST = :LSCHAVE_DOCST'
      'where'
      '  LSCODEMP = :OLD_LSCODEMP and'
      '  LSLOTSEQ = :OLD_LSLOTSEQ and'
      '  LSCODIGO = :OLD_LSCODIGO')
    InsertSQL.Strings = (
      'insert into CADLSEN'
      '  (LSCODEMP, LSLOTSEQ, LSCODIGO, LSITENSBLOQ, LSSTATUS, '
      'LSCODUSRSOL, LSDATASOL, '
      '   LSTEXTOMOT, LSTEXTOOBS, LSTEXTORESP, LSCODUSRLIB, LSDATALIB, '
      'LSCODTAB, '
      '   LSCODCLI_DOC, LSCODEMP_DOC, LSLOTSEQ_DOC, LSCHAVE_DOC, '
      'LSORDEM_DOC, '
      '   LSCHAVE_DOCST)'
      'values'
      '  (:LSCODEMP, :LSLOTSEQ, :LSCODIGO, :LSITENSBLOQ, :LSSTATUS, '
      ':LSCODUSRSOL, '
      '   :LSDATASOL, :LSTEXTOMOT, :LSTEXTOOBS, :LSTEXTORESP, '
      ':LSCODUSRLIB, :LSDATALIB, '
      '   :LSCODTAB, :LSCODCLI_DOC, :LSCODEMP_DOC, :LSLOTSEQ_DOC, '
      ':LSCHAVE_DOC, '
      '   :LSORDEM_DOC, :LSCHAVE_DOCST)')
    DeleteSQL.Strings = (
      'delete from CADLSEN'
      'where'
      '  LSCODEMP = :OLD_LSCODEMP and'
      '  LSLOTSEQ = :OLD_LSLOTSEQ and'
      '  LSCODIGO = :OLD_LSCODIGO')
    Left = 515
    Top = 152
  end
  object Src_LSen: TDataSource
    DataSet = Tb_LSen
    Left = 546
    Top = 152
  end
  object Qr_ContBlq: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 121
    Top = 47
  end
  object Qr_Ped01: TQuery
    OnCalcFields = Qr_Ped01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01 where P1CHAVE is null')
    Left = 24
    Top = 446
    object Qr_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_Ped01P1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Qr_Ped01P1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_Ped01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_Ped01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_Ped01P1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Qr_Ped01P1SUBSER: TStringField
      FieldName = 'P1SUBSER'
      Origin = 'SG_ASSOC.CADP01.P1SUBSER'
      Size = 3
    end
    object Qr_Ped01P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object Qr_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Qr_Ped01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_Ped01P1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Ped01P1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_Ped01P1HORADIG: TStringField
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Qr_Ped01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Qr_Ped01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Qr_Ped01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Qr_Ped01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Qr_Ped01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Qr_Ped01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Qr_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_Ped01P1CUPOM: TFloatField
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Qr_Ped01P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Qr_Ped01P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Qr_Ped01P1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Qr_Ped01P1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_Ped01P1BASENP: TFloatField
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Qr_Ped01P1BASENN: TFloatField
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Qr_Ped01P1BASENI: TFloatField
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Qr_Ped01P1ICMSNP: TFloatField
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Qr_Ped01P1ICMSNN: TFloatField
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Qr_Ped01P1ICMSNI: TFloatField
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Qr_Ped01P1BASERP: TFloatField
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Qr_Ped01P1BASERN: TFloatField
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Qr_Ped01P1BASERI: TFloatField
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Qr_Ped01P1ICMSRP: TFloatField
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Qr_Ped01P1ICMSRN: TFloatField
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Qr_Ped01P1ICMSRI: TFloatField
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Qr_Ped01P1BASENRI: TFloatField
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Qr_Ped01P1ICMSNRI: TFloatField
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Qr_Ped01P1BASENRP: TFloatField
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Qr_Ped01P1ICMSNRP: TFloatField
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Qr_Ped01P1BASENRN: TFloatField
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Qr_Ped01P1ICMSNRN: TFloatField
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Qr_Ped01P1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_Ped01P1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Qr_Ped01P1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Qr_Ped01P1TOTTRI: TFloatField
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Qr_Ped01P1TOTRET: TFloatField
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Qr_Ped01P1TOTISE: TFloatField
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Qr_Ped01P1TOTPOS: TFloatField
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Qr_Ped01P1TOTNEG: TFloatField
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Qr_Ped01P1TOTINA: TFloatField
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Qr_Ped01P1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Qr_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Qr_Ped01P1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Qr_Ped01P1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Qr_Ped01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_Ped01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_Ped01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_Ped01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_Ped01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_Ped01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_Ped01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Qr_Ped01P1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Qr_Ped01P1CODLDR: TFloatField
      FieldName = 'P1CODLDR'
      Origin = 'SG_ASSOC.CADP01.P1CODLDR'
    end
    object Qr_Ped01P1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Qr_Ped01P1ORIGEM: TFloatField
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Qr_Ped01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Qr_Ped01P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Qr_Ped01P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Qr_Ped01P1PCOMIS: TFloatField
      FieldName = 'P1PCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PCOMIS'
    end
    object Qr_Ped01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_Ped01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Qr_Ped01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Qr_Ped01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Qr_Ped01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Qr_Ped01P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_Ped01P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Qr_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Qr_Ped01P1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Qr_Ped01P1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Qr_Ped01P1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Qr_Ped01P1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_Ped01P1PAVDES: TFloatField
      FieldName = 'P1PAVDES'
      Origin = 'SG_ASSOC.CADP01.P1PAVDES'
    end
    object Qr_Ped01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Qr_Ped01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Qr_Ped01P1TIPENT: TFloatField
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Qr_Ped01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Qr_Ped01P1LOTCV: TFloatField
      FieldName = 'P1LOTCV'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV'
    end
    object Qr_Ped01P1LOTCS: TFloatField
      FieldName = 'P1LOTCS'
      Origin = 'SG_ASSOC.CADP01.P1LOTCS'
    end
    object Qr_Ped01P1LOTCT: TFloatField
      FieldName = 'P1LOTCT'
      Origin = 'SG_ASSOC.CADP01.P1LOTCT'
    end
    object Qr_Ped01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Qr_Ped01P1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Qr_Ped01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Qr_Ped01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Qr_Ped01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Qr_Ped01P1SITAC: TFloatField
      FieldName = 'P1SITAC'
      Origin = 'SG_ASSOC.CADP01.P1SITAC'
    end
    object Qr_Ped01P1REPAS: TFloatField
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Qr_Ped01P1TOTUCPR: TFloatField
      FieldName = 'P1TOTUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTUCPR'
    end
    object Qr_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_Ped01P1PVTC: TFloatField
      FieldName = 'P1PVTC'
      Origin = 'SG_ASSOC.CADP01.P1PVTC'
    end
    object Qr_Ped01P1PVCOM: TFloatField
      FieldName = 'P1PVCOM'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM'
    end
    object Qr_Ped01P1PVACTD: TFloatField
      FieldName = 'P1PVACTD'
      Origin = 'SG_ASSOC.CADP01.P1PVACTD'
    end
    object Qr_Ped01P1PVACT00: TFloatField
      FieldName = 'P1PVACT00'
      Origin = 'SG_ASSOC.CADP01.P1PVACT00'
    end
    object Qr_Ped01P1PVACT01: TFloatField
      FieldName = 'P1PVACT01'
      Origin = 'SG_ASSOC.CADP01.P1PVACT01'
    end
    object Qr_Ped01P1PVACT99: TFloatField
      FieldName = 'P1PVACT99'
      Origin = 'SG_ASSOC.CADP01.P1PVACT99'
    end
    object Qr_Ped01P1PVTDC: TFloatField
      FieldName = 'P1PVTDC'
      Origin = 'SG_ASSOC.CADP01.P1PVTDC'
    end
    object Qr_Ped01P1PVDES: TFloatField
      FieldName = 'P1PVDES'
      Origin = 'SG_ASSOC.CADP01.P1PVDES'
    end
    object Qr_Ped01P1PVTPD1: TFloatField
      FieldName = 'P1PVTPD1'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD1'
    end
    object Qr_Ped01P1PVDES1: TFloatField
      FieldName = 'P1PVDES1'
      Origin = 'SG_ASSOC.CADP01.P1PVDES1'
    end
    object Qr_Ped01P1PVTPD2: TFloatField
      FieldName = 'P1PVTPD2'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD2'
    end
    object Qr_Ped01P1PVDES2: TFloatField
      FieldName = 'P1PVDES2'
      Origin = 'SG_ASSOC.CADP01.P1PVDES2'
    end
    object Qr_Ped01P1PVTPDESF: TFloatField
      FieldName = 'P1PVTPDESF'
      Origin = 'SG_ASSOC.CADP01.P1PVTPDESF'
    end
    object Qr_Ped01P1PVDESCF: TFloatField
      FieldName = 'P1PVDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDESCF'
    end
    object Qr_Ped01P1PVDIASDESCF: TFloatField
      FieldName = 'P1PVDIASDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDIASDESCF'
    end
    object Qr_Ped01P1PVDDESCF: TFloatField
      FieldName = 'P1PVDDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDDESCF'
    end
    object Qr_Ped01P1TPP: TFloatField
      FieldName = 'P1TPP'
      Origin = 'SG_ASSOC.CADP01.P1TPP'
    end
    object Qr_Ped01P1PRAZO: TFloatField
      FieldName = 'P1PRAZO'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO'
    end
    object Qr_Ped01P1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Qr_Ped01P1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Qr_Ped01P1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Qr_Ped01P1PEDORI1: TStringField
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Qr_Ped01P1PEDORI2: TStringField
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Qr_Ped01P1MOTIVO: TStringField
      FieldName = 'P1MOTIVO'
      Origin = 'SG_ASSOC.CADP01.P1MOTIVO'
      Size = 60
    end
    object Qr_Ped01P1NUMVIS: TStringField
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Qr_Ped01P1DATVIS: TDateTimeField
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Qr_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Qr_Ped01P1TOTDI01: TFloatField
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Qr_Ped01P1TOTDI02: TFloatField
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Qr_Ped01P1TOTDIVL: TFloatField
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Qr_Ped01P1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Qr_Ped01P1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_Ped01P1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_Ped01P1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_Ped01P1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Qr_Ped01P1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Qr_Ped01P1CODDEP: TFloatField
      FieldName = 'P1CODDEP'
      Origin = 'SG_ASSOC.CADP01.P1CODDEP'
    end
    object Qr_Ped01P1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_Ped01P1LOTEDM: TFloatField
      FieldName = 'P1LOTEDM'
      Origin = 'SG_ASSOC.CADP01.P1LOTEDM'
    end
    object Qr_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_Ped01P1TOTOUT: TFloatField
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Qr_Ped01P1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Qr_Ped01P1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Qr_Ped01P1PVCOM02: TFloatField
      FieldName = 'P1PVCOM02'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM02'
    end
    object Qr_Ped01P1PVCOM03: TFloatField
      FieldName = 'P1PVCOM03'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM03'
    end
    object Qr_Ped01P1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Qr_Ped01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Qr_Ped01P1SITCPR: TFloatField
      FieldName = 'P1SITCPR'
      Origin = 'SG_ASSOC.CADP01.P1SITCPR'
    end
    object Qr_Ped01P1LOTCV02: TFloatField
      FieldName = 'P1LOTCV02'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV02'
    end
    object Qr_Ped01P1LOTCV03: TFloatField
      FieldName = 'P1LOTCV03'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV03'
    end
    object Qr_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_Ped01P1CFO1: TStringField
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Qr_Ped01P1CFO2: TStringField
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Qr_Ped01P1PEDORI: TFloatField
      FieldName = 'P1PEDORI'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI'
    end
    object Qr_Ped01P1BLQPRM: TFloatField
      FieldName = 'P1BLQPRM'
      Origin = 'SG_ASSOC.CADP01.P1BLQPRM'
    end
    object Qr_Ped01P1TOTDI03: TFloatField
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Qr_Ped01P1VALDES01: TFloatField
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Qr_Ped01P1VALDES02: TFloatField
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Qr_Ped01P1TARBAN: TFloatField
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Qr_Ped01P1PVTPD3: TFloatField
      FieldName = 'P1PVTPD3'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD3'
    end
    object Qr_Ped01P1PVDES3: TFloatField
      FieldName = 'P1PVDES3'
      Origin = 'SG_ASSOC.CADP01.P1PVDES3'
    end
    object Qr_Ped01P1CFOSER: TStringField
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Qr_Ped01P1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Qr_Ped01P1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Qr_Ped01P1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Qr_Ped01P1PROCESSO: TStringField
      FieldName = 'P1PROCESSO'
      Origin = 'SG_ASSOC.CADP01.P1PROCESSO'
      Size = 15
    end
    object Qr_Ped01P1CUPACRE: TFloatField
      FieldName = 'P1CUPACRE'
      Origin = 'SG_ASSOC.CADP01.P1CUPACRE'
    end
    object Qr_Ped01P1CUPDES: TFloatField
      FieldName = 'P1CUPDES'
      Origin = 'SG_ASSOC.CADP01.P1CUPDES'
    end
    object Qr_Ped01P1LEMAT: TFloatField
      FieldName = 'P1LEMAT'
      Origin = 'SG_ASSOC.CADP01.P1LEMAT'
    end
    object Qr_Ped01P1DTACERTO: TDateTimeField
      FieldName = 'P1DTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1DTACERTO'
    end
    object Qr_Ped01P1LTACERTO: TFloatField
      FieldName = 'P1LTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1LTACERTO'
    end
    object Qr_Ped01P1COMASSE: TFloatField
      FieldName = 'P1COMASSE'
      Origin = 'SG_ASSOC.CADP01.P1COMASSE'
    end
    object Qr_Ped01P1LOTCASSE: TFloatField
      FieldName = 'P1LOTCASSE'
      Origin = 'SG_ASSOC.CADP01.P1LOTCASSE'
    end
    object Qr_Ped01P1CODASSE: TFloatField
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Qr_Ped01P1QTDMAN: TFloatField
      FieldName = 'P1QTDMAN'
      Origin = 'SG_ASSOC.CADP01.P1QTDMAN'
    end
    object Qr_Ped01P1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Qr_Ped01P1CANHOTO: TFloatField
      FieldName = 'P1CANHOTO'
      Origin = 'SG_ASSOC.CADP01.P1CANHOTO'
    end
    object Qr_Ped01P1ICMS_BCFRE: TFloatField
      FieldName = 'P1ICMS_BCFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCFRE'
    end
    object Qr_Ped01P1ICMS_ALFRE: TFloatField
      FieldName = 'P1ICMS_ALFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALFRE'
    end
    object Qr_Ped01P1ICMS_VLFRE: TFloatField
      FieldName = 'P1ICMS_VLFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLFRE'
    end
    object Qr_Ped01P1ICMS_BCSEG: TFloatField
      FieldName = 'P1ICMS_BCSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCSEG'
    end
    object Qr_Ped01P1ICMS_ALSEG: TFloatField
      FieldName = 'P1ICMS_ALSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALSEG'
    end
    object Qr_Ped01P1ICMS_VLSEG: TFloatField
      FieldName = 'P1ICMS_VLSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLSEG'
    end
    object Qr_Ped01P1ICMS_BCOUTD: TFloatField
      FieldName = 'P1ICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCOUTD'
    end
    object Qr_Ped01P1ICMS_ALOUTD: TFloatField
      FieldName = 'P1ICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALOUTD'
    end
    object Qr_Ped01P1ICMS_VLOUTD: TFloatField
      FieldName = 'P1ICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLOUTD'
    end
    object Qr_Ped01P1ICMS_BCIPI: TFloatField
      FieldName = 'P1ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCIPI'
    end
    object Qr_Ped01P1ICMS_ALIPI: TFloatField
      FieldName = 'P1ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALIPI'
    end
    object Qr_Ped01P1ICMS_VLIPI: TFloatField
      FieldName = 'P1ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLIPI'
    end
    object Qr_Ped01P1ALIQDEB: TFloatField
      FieldName = 'P1ALIQDEB'
      Origin = 'SG_ASSOC.CADP01.P1ALIQDEB'
    end
    object Qr_Ped01P1TOTCGRU: TFloatField
      FieldName = 'P1TOTCGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTCGRU'
    end
    object Qr_Ped01P1TOTSGRU: TFloatField
      FieldName = 'P1TOTSGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTSGRU'
    end
    object Qr_Ped01P1CODV04: TFloatField
      FieldName = 'P1CODV04'
      Origin = 'SG_ASSOC.CADP01.P1CODV04'
    end
    object Qr_Ped01P1COMV04: TFloatField
      FieldName = 'P1COMV04'
      Origin = 'SG_ASSOC.CADP01.P1COMV04'
    end
    object Qr_Ped01P1LOTCV04: TFloatField
      FieldName = 'P1LOTCV04'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV04'
    end
    object Qr_Ped01P1PVCOM04: TFloatField
      FieldName = 'P1PVCOM04'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM04'
    end
    object Qr_Ped01P1PROMOCAO: TStringField
      FieldName = 'P1PROMOCAO'
      Origin = 'SG_ASSOC.CADP01.P1PROMOCAO'
      Size = 10
    end
    object Qr_Ped01P1CODPRIOR: TFloatField
      FieldName = 'P1CODPRIOR'
      Origin = 'SG_ASSOC.CADP01.P1CODPRIOR'
    end
    object Qr_Ped01P1DTHRCHEG: TDateTimeField
      FieldName = 'P1DTHRCHEG'
      Origin = 'SG_ASSOC.CADP01.P1DTHRCHEG'
    end
    object Qr_Ped01P1CODBLOQ: TStringField
      FieldName = 'P1CODBLOQ'
      Origin = 'SGE.CADP01.P1CODBLOQ'
    end
    object Qr_Ped01P1CODUSR_LBLOQ: TFloatField
      FieldName = 'P1CODUSR_LBLOQ'
      Origin = 'SGE.CADP01.P1CODUSR_LBLOQ'
    end
    object Qr_Ped01P1TOTSERLIQ: TFloatField
      FieldName = 'P1TOTSERLIQ'
      Origin = 'SGE.CADP01.P1TOTSERLIQ'
    end
    object Qr_Ped01P1COMIS_EXTRA: TFloatField
      FieldName = 'P1COMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP01.P1COMIS_EXTRA'
    end
    object Qr_Ped01P1QTDM3: TFloatField
      FieldName = 'P1QTDM3'
      Origin = 'SG_ASSOC.CADP01.P1QTDM3'
    end
    object Qr_Ped01P1VFRE_CUSENT: TFloatField
      FieldName = 'P1VFRE_CUSENT'
      Origin = 'SG_ASSOC.CADP01.P1VFRE_CUSENT'
    end
    object Qr_Ped01P1VALENT: TFloatField
      FieldName = 'P1VALENT'
      Origin = 'SG_ASSOC.CADP01.P1VALENT'
    end
    object Qr_Ped01P1PRAZO_ENT: TFloatField
      FieldName = 'P1PRAZO_ENT'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO_ENT'
    end
    object Qr_Ped01P1SEPAMB: TFloatField
      FieldName = 'P1SEPAMB'
      Origin = 'SG_ASSOC.CADP01.P1SEPAMB'
    end
    object Qr_Ped01P1PZOLIB: TFloatField
      FieldName = 'P1PZOLIB'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB'
    end
    object Qr_Ped01P1PZOLIB_USR: TFloatField
      FieldName = 'P1PZOLIB_USR'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB_USR'
    end
    object Qr_Ped01P1BLOQPEND: TFloatField
      FieldName = 'P1BLOQPEND'
      Origin = 'SG_ASSOC.CADP01.P1BLOQPEND'
    end
    object Qr_Ped01P1CODBLOQ_LIB: TStringField
      FieldName = 'P1CODBLOQ_LIB'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ_LIB'
    end
    object Qr_Ped01P1ECF_SERIE: TStringField
      FieldName = 'P1ECF_SERIE'
      Origin = 'SG_ASSOC.CADP01.P1ECF_SERIE'
    end
    object Qr_Ped01P1CX_CODCAI: TFloatField
      FieldName = 'P1CX_CODCAI'
      Origin = 'SG_ASSOC.CADP01.P1CX_CODCAI'
    end
    object Qr_Ped01P1CX_LOTMOV: TFloatField
      FieldName = 'P1CX_LOTMOV'
      Origin = 'SG_ASSOC.CADP01.P1CX_LOTMOV'
    end
    object Qr_Ped01P1DUP_PROD: TFloatField
      FieldName = 'P1DUP_PROD'
      Origin = 'SG_ASSOC.CADP01.P1DUP_PROD'
    end
    object Qr_Ped01P1DUP_SERV: TFloatField
      FieldName = 'P1DUP_SERV'
      Origin = 'SG_ASSOC.CADP01.P1DUP_SERV'
    end
    object Qr_Ped01P1INCTB: TFloatField
      FieldName = 'P1INCTB'
      Origin = 'SG_ASSOC.CADP01.P1INCTB'
    end
    object Qr_Ped01P1EMITENTE: TStringField
      FieldName = 'P1EMITENTE'
      Origin = 'SG_ASSOC.CADP01.P1EMITENTE'
      Size = 1
    end
    object Qr_Ped01P1PVACREDESREG: TFloatField
      FieldName = 'P1PVACREDESREG'
      Origin = 'SG_ASSOC.CADP01.P1PVACREDESREG'
    end
    object Qr_Ped01P1PVAJCOMIS: TFloatField
      FieldName = 'P1PVAJCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PVAJCOMIS'
    end
    object Qr_Ped01P1LOCAL: TFloatField
      FieldName = 'P1LOCAL'
      Origin = 'SG_ASSOC.CADP01.P1LOCAL'
    end
    object Qr_Ped01P1TOTPROM: TFloatField
      FieldName = 'P1TOTPROM'
      Origin = 'SG_ASSOC.CADP01.P1TOTPROM'
    end
    object Qr_Ped01P1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Qr_Ped01P1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Qr_Ped01submod: TFloatField
      FieldKind = fkCalculated
      FieldName = 'submod'
      Calculated = True
    end
    object Qr_Ped01P1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
      Origin = 'SG_ASSOC.CADP01.P1QTDDECPU'
    end
    object Qr_Ped01P1DATHOR_ULTEVE: TDateTimeField
      FieldName = 'P1DATHOR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_ULTEVE'
    end
    object Qr_Ped01P1CODUSR_ULTEVE: TFloatField
      FieldName = 'P1CODUSR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_ULTEVE'
    end
    object Qr_Ped01P1COMP_ULTEVE: TStringField
      FieldName = 'P1COMP_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1COMP_ULTEVE'
      Size = 30
    end
    object Qr_Ped01P1ANALISE: TFloatField
      FieldName = 'P1ANALISE'
      Origin = 'SG_ASSOC.CADP01.P1ANALISE'
    end
    object Qr_Ped01P1ACRESCIMO: TFloatField
      FieldName = 'P1ACRESCIMO'
      Origin = 'SG_ASSOC.CADP01.P1ACRESCIMO'
    end
    object Qr_Ped01P1TOTDESCPR: TFloatField
      FieldName = 'P1TOTDESCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTDESCPR'
    end
    object Qr_Ped01P1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOMP'
    end
    object Qr_Ped01P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
    end
  end
  object Qr_Ped01D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01D')
    Left = 60
    Top = 448
    object Qr_Ped01DP1DCODEMP: TFloatField
      FieldName = 'P1DCODEMP'
      Origin = 'SG_ASSOC.CADP01D.P1DCODEMP'
    end
    object Qr_Ped01DP1DCHAVE: TFloatField
      FieldName = 'P1DCHAVE'
      Origin = 'SG_ASSOC.CADP01D.P1DCHAVE'
    end
    object Qr_Ped01DP1DORDEM: TFloatField
      FieldName = 'P1DORDEM'
      Origin = 'SG_ASSOC.CADP01D.P1DORDEM'
    end
    object Qr_Ped01DP1DCH_OR: TFloatField
      FieldName = 'P1DCH_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DCH_OR'
    end
    object Qr_Ped01DP1DOR_OR: TFloatField
      FieldName = 'P1DOR_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DOR_OR'
    end
    object Qr_Ped01DP1DDATAP: TDateTimeField
      FieldName = 'P1DDATAP'
      Origin = 'SG_ASSOC.CADP01D.P1DDATAP'
    end
    object Qr_Ped01DP1DLOTSEQ: TFloatField
      FieldName = 'P1DLOTSEQ'
      Origin = 'SG_ASSOC.CADP01D.P1DLOTSEQ'
    end
    object Qr_Ped01DP1DLS_OR: TFloatField
      FieldName = 'P1DLS_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DLS_OR'
    end
    object Qr_Ped01DP1DCODEMP_OR: TFloatField
      FieldName = 'P1DCODEMP_OR'
      Origin = 'SG_ASSOC.CADP01D.P1DCODEMP_OR'
    end
  end
  object Qr_Ped01v: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01V where P1VCODEMP is null')
    Left = 121
    Top = 312
    object Qr_Ped01vP1VCODEMP: TFloatField
      FieldName = 'P1VCODEMP'
      Origin = 'SG_ASSOC.CADP01V.P1VCODEMP'
    end
    object Qr_Ped01vP1VCHAVE: TFloatField
      FieldName = 'P1VCHAVE'
      Origin = 'SG_ASSOC.CADP01V.P1VCHAVE'
    end
    object Qr_Ped01vP1VORDEM: TFloatField
      FieldName = 'P1VORDEM'
      Origin = 'SG_ASSOC.CADP01V.P1VORDEM'
    end
    object Qr_Ped01vP1VCODIGO: TFloatField
      FieldName = 'P1VCODIGO'
      Origin = 'SG_ASSOC.CADP01V.P1VCODIGO'
    end
    object Qr_Ped01vP1VDATAV: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'P1VDATAV'
      Origin = 'SG_ASSOC.CADP01V.P1VDATAV'
    end
    object Qr_Ped01vP1VVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'P1VVALOR'
      Origin = 'SG_ASSOC.CADP01V.P1VVALOR'
    end
    object Qr_Ped01vP1VCOMISV: TFloatField
      FieldName = 'P1VCOMISV'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISV'
    end
    object Qr_Ped01vP1VCOMISS: TFloatField
      FieldName = 'P1VCOMISS'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISS'
    end
    object Qr_Ped01vP1VCOMIST: TFloatField
      FieldName = 'P1VCOMIST'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMIST'
    end
    object Qr_Ped01vP1VFRETE: TFloatField
      FieldName = 'P1VFRETE'
      Origin = 'SG_ASSOC.CADP01V.P1VFRETE'
    end
    object Qr_Ped01vP1VICMSR: TFloatField
      FieldName = 'P1VICMSR'
      Origin = 'SG_ASSOC.CADP01V.P1VICMSR'
    end
    object Qr_Ped01vP1VSEMCOM: TFloatField
      FieldName = 'P1VSEMCOM'
      Origin = 'SG_ASSOC.CADP01V.P1VSEMCOM'
    end
    object Qr_Ped01vP1VTABPV: TStringField
      FieldName = 'P1VTABPV'
      Origin = 'SG_ASSOC.CADP01V.P1VTABPV'
      Size = 2
    end
    object Qr_Ped01vP1VDESCF: TFloatField
      FieldName = 'P1VDESCF'
      Origin = 'SG_ASSOC.CADP01V.P1VDESCF'
    end
    object Qr_Ped01vP1VDTDESCF: TDateTimeField
      FieldName = 'P1VDTDESCF'
      Origin = 'SG_ASSOC.CADP01V.P1VDTDESCF'
    end
    object Qr_Ped01vP1VCOM02: TFloatField
      FieldName = 'P1VCOM02'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM02'
    end
    object Qr_Ped01vP1VCOM03: TFloatField
      FieldName = 'P1VCOM03'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM03'
    end
    object Qr_Ped01vP1VLOTSEQ: TFloatField
      FieldName = 'P1VLOTSEQ'
      Origin = 'SG_ASSOC.CADP01V.P1VLOTSEQ'
    end
    object Qr_Ped01vP1VSEQ: TFloatField
      FieldName = 'P1VSEQ'
      Origin = 'SG_ASSOC.CADP01V.P1VSEQ'
    end
    object Qr_Ped01vP1VTOTDI01: TFloatField
      FieldName = 'P1VTOTDI01'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI01'
    end
    object Qr_Ped01vP1VTOTDI02: TFloatField
      FieldName = 'P1VTOTDI02'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI02'
    end
    object Qr_Ped01vP1VTOTDI03: TFloatField
      FieldName = 'P1VTOTDI03'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDI03'
    end
    object Qr_Ped01vP1VTOTDIVL: TFloatField
      FieldName = 'P1VTOTDIVL'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTDIVL'
    end
    object Qr_Ped01vP1VVALDES01: TFloatField
      FieldName = 'P1VVALDES01'
      Origin = 'SG_ASSOC.CADP01V.P1VVALDES01'
    end
    object Qr_Ped01vP1VVALDES02: TFloatField
      FieldName = 'P1VVALDES02'
      Origin = 'SG_ASSOC.CADP01V.P1VVALDES02'
    end
    object Qr_Ped01vP1VVLRDES: TFloatField
      FieldName = 'P1VVLRDES'
      Origin = 'SG_ASSOC.CADP01V.P1VVLRDES'
    end
    object Qr_Ped01vP1VTARBAN: TFloatField
      FieldName = 'P1VTARBAN'
      Origin = 'SG_ASSOC.CADP01V.P1VTARBAN'
    end
    object Qr_Ped01vP1VCOMASSE: TFloatField
      FieldName = 'P1VCOMASSE'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMASSE'
    end
    object Qr_Ped01vP1VSEG: TFloatField
      FieldName = 'P1VSEG'
      Origin = 'SG_ASSOC.CADP01V.P1VSEG'
    end
    object Qr_Ped01vP1VCOM04: TFloatField
      FieldName = 'P1VCOM04'
      Origin = 'SG_ASSOC.CADP01V.P1VCOM04'
    end
    object Qr_Ped01vP1VTOTIPI: TFloatField
      FieldName = 'P1VTOTIPI'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTIPI'
    end
    object Qr_Ped01vP1VTOTCGRU: TFloatField
      FieldName = 'P1VTOTCGRU'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTCGRU'
    end
    object Qr_Ped01vP1VTOTSGRU: TFloatField
      FieldName = 'P1VTOTSGRU'
      Origin = 'SG_ASSOC.CADP01V.P1VTOTSGRU'
    end
    object Qr_Ped01vP1VVLRSERV: TFloatField
      FieldName = 'P1VVLRSERV'
      Origin = 'SGE.CADP01V.P1VVLRSERV'
    end
    object Qr_Ped01vP1VCOMISV_EXTRA: TFloatField
      FieldName = 'P1VCOMISV_EXTRA'
      Origin = 'SG_ASSOC.CADP01V.P1VCOMISV_EXTRA'
    end
    object Qr_Ped01vP1VVINC02: TFloatField
      FieldName = 'P1VVINC02'
      Origin = 'SG_ASSOC.CADP01V.P1VVINC02'
    end
    object Qr_Ped01vP1VNOMFPGTO: TStringField
      FieldName = 'P1VNOMFPGTO'
      Origin = 'SG_ASSOC.CADP01V.P1VNOMFPGTO'
      Size = 40
    end
    object Qr_Ped01vP1VCODFP: TFloatField
      FieldName = 'P1VCODFP'
      Origin = 'SG_ASSOC.CADP01V.P1VCODFP'
    end
    object Qr_Ped01vP1VPFPGTO: TFloatField
      FieldName = 'P1VPFPGTO'
      Origin = 'SG_ASSOC.CADP01V.P1VPFPGTO'
    end
    object Qr_Ped01vP1VDEV_CODEMP: TFloatField
      FieldName = 'P1VDEV_CODEMP'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_CODEMP'
    end
    object Qr_Ped01vP1VDEV_CODECF: TFloatField
      FieldName = 'P1VDEV_CODECF'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_CODECF'
    end
    object Qr_Ped01vP1VDEV_NUMERO: TFloatField
      FieldName = 'P1VDEV_NUMERO'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_NUMERO'
    end
    object Qr_Ped01vP1VDEV_DESD: TStringField
      FieldName = 'P1VDEV_DESD'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DESD'
      Size = 2
    end
    object Qr_Ped01vP1VDEV_DTEMIS: TDateTimeField
      FieldName = 'P1VDEV_DTEMIS'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DTEMIS'
    end
    object Qr_Ped01vP1VDEV_DUP: TFloatField
      FieldName = 'P1VDEV_DUP'
      Origin = 'SG_ASSOC.CADP01V.P1VDEV_DUP'
    end
  end
  object Qr_Ped02D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02D where P2DCODEMP is null')
    Left = 121
    Top = 176
    object Qr_Ped02DP2DCODEMP: TFloatField
      FieldName = 'P2DCODEMP'
      Origin = 'SG_ASSOC.CADP02D.P2DCODEMP'
    end
    object Qr_Ped02DP2DTIPO: TFloatField
      FieldName = 'P2DTIPO'
      Origin = 'SG_ASSOC.CADP02D.P2DTIPO'
    end
    object Qr_Ped02DP2DCHAVE: TFloatField
      FieldName = 'P2DCHAVE'
      Origin = 'SG_ASSOC.CADP02D.P2DCHAVE'
    end
    object Qr_Ped02DP2DORDEM: TFloatField
      FieldName = 'P2DORDEM'
      Origin = 'SG_ASSOC.CADP02D.P2DORDEM'
    end
    object Qr_Ped02DP2DITEM: TFloatField
      FieldName = 'P2DITEM'
      Origin = 'SG_ASSOC.CADP02D.P2DITEM'
    end
    object Qr_Ped02DP2DCODPRO: TFloatField
      FieldName = 'P2DCODPRO'
      Origin = 'SG_ASSOC.CADP02D.P2DCODPRO'
    end
    object Qr_Ped02DP2DLINHA: TFloatField
      FieldName = 'P2DLINHA'
      Origin = 'SG_ASSOC.CADP02D.P2DLINHA'
    end
    object Qr_Ped02DP2DESC: TStringField
      FieldName = 'P2DESC'
      Origin = 'SG_ASSOC.CADP02D.P2DESC'
      Size = 60
    end
    object Qr_Ped02DP2DLOTSEQ: TFloatField
      FieldName = 'P2DLOTSEQ'
      Origin = 'SG_ASSOC.CADP02D.P2DLOTSEQ'
    end
    object Qr_Ped02DP2DGRADE: TStringField
      FieldName = 'P2DGRADE'
      Origin = 'SG_ASSOC.CADP02D.P2DGRADE'
    end
  end
  object Src_Ped01V: TDataSource
    DataSet = Qr_Ped01v
    Left = 151
    Top = 314
  end
  object Qr_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADP02 where P2CODEMP is null')
    Left = 121
    Top = 96
  end
  object Qr_Pen: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPEN where PECODEMP is null')
    Left = 121
    Top = 264
    object Qr_PenPECODEMP: TFloatField
      FieldName = 'PECODEMP'
      Origin = 'SG_ASSOC.CADPEN.PECODEMP'
    end
    object Qr_PenPECHAVE: TFloatField
      FieldName = 'PECHAVE'
      Origin = 'SG_ASSOC.CADPEN.PECHAVE'
    end
    object Qr_PenPEITEM: TFloatField
      FieldName = 'PEITEM'
      Origin = 'SG_ASSOC.CADPEN.PEITEM'
    end
    object Qr_PenPECODPRO: TFloatField
      FieldName = 'PECODPRO'
      Origin = 'SG_ASSOC.CADPEN.PECODPRO'
    end
    object Qr_PenPEQTDPED: TFloatField
      FieldName = 'PEQTDPED'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPED'
    end
    object Qr_PenPEQTDENV: TFloatField
      FieldName = 'PEQTDENV'
      Origin = 'SG_ASSOC.CADPEN.PEQTDENV'
    end
    object Qr_PenPEQTDPEN: TFloatField
      FieldName = 'PEQTDPEN'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPEN'
    end
    object Qr_PenPEDESC01: TFloatField
      FieldName = 'PEDESC01'
      Origin = 'SG_ASSOC.CADPEN.PEDESC01'
    end
    object Qr_PenPEDESC02: TFloatField
      FieldName = 'PEDESC02'
      Origin = 'SG_ASSOC.CADPEN.PEDESC02'
    end
    object Qr_PenPEDESC03: TFloatField
      FieldName = 'PEDESC03'
      Origin = 'SG_ASSOC.CADPEN.PEDESC03'
    end
    object Qr_PenPEVALDES: TFloatField
      FieldName = 'PEVALDES'
      Origin = 'SG_ASSOC.CADPEN.PEVALDES'
    end
    object Qr_PenPEPRECO: TFloatField
      FieldName = 'PEPRECO'
      Origin = 'SG_ASSOC.CADPEN.PEPRECO'
    end
    object Qr_PenPEDATA: TDateTimeField
      FieldName = 'PEDATA'
      Origin = 'SG_ASSOC.CADPEN.PEDATA'
    end
    object Qr_PenPECODCLI: TFloatField
      FieldName = 'PECODCLI'
      Origin = 'SG_ASSOC.CADPEN.PECODCLI'
    end
    object Qr_PenPECODVEN: TFloatField
      FieldName = 'PECODVEN'
      Origin = 'SG_ASSOC.CADPEN.PECODVEN'
    end
    object Qr_PenPELOTSEQ: TFloatField
      FieldName = 'PELOTSEQ'
      Origin = 'SG_ASSOC.CADPEN.PELOTSEQ'
    end
    object Qr_PenPEGRADE: TStringField
      FieldName = 'PEGRADE'
      Origin = 'SG_ASSOC.CADPEN.PEGRADE'
    end
  end
  object Qr_PedFP: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PFPCODEMP,'
      '       PFPLOTSEQ,'
      '       PFPCHAVE,'
      '       PFPSEQ,'
      '       PFPFORMA,'
      '       PFPNOMFOR,'
      '       PFPDATA,'
      '       PFPNUMDOC,'
      '       PFPBANCO,'
      '       PFPSERIE,'
      '       PFPVALOR,'
      '       PFPCC,'
      '       PFPCOMP,'
      '       PFPAGENCIA,'
      '       PFPEMITENTE,'
      '       PFPCNPF,'
      '       PFPRG,'
      '       PFPDTNAS,'
      '       PFPFPGTO'
      '       ,PFPDEV_CODEMP'
      '       ,PFPDEV_CODECF'
      '       ,PFPDEV_NUMERO'
      '       ,PFPDEV_DESD'
      '       ,PFPDEV_DUP'
      '       ,PFPDEV_DTEMIS'
      ''
      '       from CADPFP where PFPCODEMP is null'
      ''
      '')
    UpdateObject = U_PedFP
    Left = 121
    Top = 218
    object Qr_PedFPPFPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Qr_PedFPPFPLOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'PFPLOTSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Qr_PedFPPFPCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Qr_PedFPPFPSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'PFPSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPSEQ'
    end
    object Qr_PedFPPFPFORMA: TFloatField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'PFPFORMA'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Qr_PedFPPFPNUMDOC: TStringField
      DisplayLabel = 'N'#250'mero doc'
      FieldName = 'PFPNUMDOC'
      Origin = 'SG_ASSOC.CADPFP.PFPNUMDOC'
    end
    object Qr_PedFPPFPBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'PFPBANCO'
      Origin = 'SG_ASSOC.CADPFP.PFPBANCO'
    end
    object Qr_PedFPPFPSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'PFPSERIE'
      Origin = 'SG_ASSOC.CADPFP.PFPSERIE'
    end
    object Qr_PedFPPFPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Qr_PedFPPFPCC: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'PFPCC'
      Origin = 'SG_ASSOC.CADPFP.PFPCC'
    end
    object Qr_PedFPPFPCOMP: TStringField
      DisplayLabel = 'Compensa'#231#227'o'
      FieldName = 'PFPCOMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCOMP'
      Size = 5
    end
    object Qr_PedFPPFPAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'PFPAGENCIA'
      Origin = 'SG_ASSOC.CADPFP.PFPAGENCIA'
      Size = 8
    end
    object Qr_PedFPPFPEMITENTE: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'PFPEMITENTE'
      Origin = 'SG_ASSOC.CADPFP.PFPEMITENTE'
      Size = 40
    end
    object Qr_PedFPPFPDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Qr_PedFPnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_PedFPPFPNOMFOR: TStringField
      FieldName = 'PFPNOMFOR'
      Origin = 'SG_ASSOC.CADPFP.PFPNOMFOR'
    end
    object Qr_PedFPPFPCNPF: TFloatField
      FieldName = 'PFPCNPF'
      Origin = 'SG_ASSOC.CADPFP.PFPCNPF'
    end
    object Qr_PedFPPFPRG: TStringField
      FieldName = 'PFPRG'
      Origin = 'SG_ASSOC.CADPFP.PFPRG'
      Size = 50
    end
    object Qr_PedFPPFPDTNAS: TDateTimeField
      FieldName = 'PFPDTNAS'
      Origin = 'SG_ASSOC.CADPFP.PFPDTNAS'
    end
    object Qr_PedFPPFPFPGTO: TFloatField
      FieldName = 'PFPFPGTO'
      Origin = 'SG_ASSOC.CADPFP.PFPFPGTO'
    end
    object Qr_PedFPPFPDEV_CODEMP: TFloatField
      FieldName = 'PFPDEV_CODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODEMP'
    end
    object Qr_PedFPPFPDEV_CODECF: TFloatField
      FieldName = 'PFPDEV_CODECF'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODECF'
    end
    object Qr_PedFPPFPDEV_NUMERO: TFloatField
      FieldName = 'PFPDEV_NUMERO'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_NUMERO'
    end
    object Qr_PedFPPFPDEV_DESD: TStringField
      FieldName = 'PFPDEV_DESD'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DESD'
      Size = 2
    end
    object Qr_PedFPPFPDEV_DUP: TFloatField
      FieldName = 'PFPDEV_DUP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DUP'
    end
    object Qr_PedFPPFPDEV_DTEMIS: TDateTimeField
      FieldName = 'PFPDEV_DTEMIS'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DTEMIS'
    end
  end
  object U_PedFP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPFP'
      'set'
      '  PFPCODEMP = :PFPCODEMP,'
      '  PFPLOTSEQ = :PFPLOTSEQ,'
      '  PFPCHAVE = :PFPCHAVE,'
      '  PFPSEQ = :PFPSEQ,'
      '  PFPFORMA = :PFPFORMA,'
      '  PFPNOMFOR = :PFPNOMFOR,'
      '  PFPDATA = :PFPDATA,'
      '  PFPNUMDOC = :PFPNUMDOC,'
      '  PFPBANCO = :PFPBANCO,'
      '  PFPSERIE = :PFPSERIE,'
      '  PFPVALOR = :PFPVALOR,'
      '  PFPCC = :PFPCC,'
      '  PFPCOMP = :PFPCOMP,'
      '  PFPAGENCIA = :PFPAGENCIA,'
      '  PFPEMITENTE = :PFPEMITENTE,'
      '  PFPCNPF = :PFPCNPF,'
      '  PFPRG = :PFPRG,'
      '  PFPDTNAS = :PFPDTNAS,'
      '  PFPFPGTO = :PFPFPGTO,'
      '  PFPDEV_CODEMP = :PFPDEV_CODEMP,'
      '  PFPDEV_CODECF = :PFPDEV_CODECF,'
      '  PFPDEV_NUMERO = :PFPDEV_NUMERO,'
      '  PFPDEV_DESD = :PFPDEV_DESD,'
      '  PFPDEV_DUP = :PFPDEV_DUP,'
      '  PFPDEV_DTEMIS = :PFPDEV_DTEMIS'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    InsertSQL.Strings = (
      'insert into CADPFP'
      '  (PFPCODEMP, PFPLOTSEQ, PFPCHAVE, PFPSEQ, PFPFORMA, PFPNOMFOR, '
      'PFPDATA, '
      '   PFPNUMDOC, PFPBANCO, PFPSERIE, PFPVALOR, PFPCC, PFPCOMP, '
      'PFPAGENCIA, '
      
        '   PFPEMITENTE, PFPCNPF, PFPRG, PFPDTNAS, PFPFPGTO, PFPDEV_CODEM' +
        'P, '
      'PFPDEV_CODECF, '
      '   PFPDEV_NUMERO, PFPDEV_DESD, PFPDEV_DUP, PFPDEV_DTEMIS)'
      'values'
      '  (:PFPCODEMP, :PFPLOTSEQ, :PFPCHAVE, :PFPSEQ, :PFPFORMA, '
      ':PFPNOMFOR, :PFPDATA, '
      
        '   :PFPNUMDOC, :PFPBANCO, :PFPSERIE, :PFPVALOR, :PFPCC, :PFPCOMP' +
        ', '
      ':PFPAGENCIA, '
      '   :PFPEMITENTE, :PFPCNPF, :PFPRG, :PFPDTNAS, :PFPFPGTO, '
      ':PFPDEV_CODEMP, '
      '   :PFPDEV_CODECF, :PFPDEV_NUMERO, :PFPDEV_DESD, :PFPDEV_DUP, '
      ':PFPDEV_DTEMIS)')
    DeleteSQL.Strings = (
      'delete from CADPFP'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    Left = 154
    Top = 218
  end
  object Qr_Ped02S: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02S where P2SCHAVE is null')
    Left = 155
    Top = 176
  end
  object U_Prodig: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODIG'
      'set'
      '  CODPRO = :CODPRO'
      'where'
      '  CODPRO = :OLD_CODPRO')
    InsertSQL.Strings = (
      'insert into PRODIG'
      '  (CODPRO)'
      'values'
      '  (:CODPRO)')
    DeleteSQL.Strings = (
      'delete from PRODIG'
      'where'
      '  CODPRO = :OLD_CODPRO')
    Left = 153
    Top = 3
  end
  object Prodig: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PRODIG')
    UpdateObject = U_Prodig
    Left = 121
    Top = 4
    object ProdigCODPRO: TFloatField
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.PRODIG.CODPRO'
    end
  end
  object Qr_Ped02Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT PDNOMGRU AS GRUPO, PDNOME,PDMARCA,PDUND,P2CODPRO,P2LOTE'
      ',sum(P2QTD) AS QTD'
      'FROM CADP01,CADP02,CADPRO'
      'WHERE '
      'P1DATAP>='#39'01/06/2006'#39
      'AND P2CODEMP=P1CODEMP'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND   P2CHAVE=P1CHAVE'
      'AND   P2ORDEM=P1ORDEM'
      'AND   PDCODPRO=P2CODPRO'
      'GROUP BY '
      'PDNOMGRU, PDNOME,PDMARCA,PDUND,P2CODPRO,P2LOTE')
    Left = 161
    Top = 135
    object Qr_Ped02Ped01GRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_Ped02Ped01PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped02Ped01PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_Ped02Ped01PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02Ped01P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped02Ped01P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_Ped02Ped01QTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
  object Src_Ped02Ped01: TDataSource
    DataSet = Qr_Ped02Ped01
    Left = 166
    Top = 49
  end
  object Tb_Cli_Bens: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_BensAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_BensAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_BENS')
    UpdateObject = U_Cli_Bens
    Left = 233
    Top = 182
    object Tb_Cli_BensCB_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CB_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_BENS.CB_CODEMP'
    end
    object Tb_Cli_BensCB_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CB_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_BENS.CB_CODCLI'
    end
    object Tb_Cli_BensCB_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'CB_SEQ'
      Origin = 'SG_ASSOC.CADCLI_BENS.CB_SEQ'
    end
    object Tb_Cli_BensCB_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CB_DESCRICAO'
      Origin = 'SG_ASSOC.CADCLI_BENS.CB_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_Cli_BensCB_QUITADO: TFloatField
      DisplayLabel = 'Quitado 0-Sim 1-N'#227'o'
      FieldName = 'CB_QUITADO'
      Origin = 'SG_ASSOC.CADCLI_BENS.CB_QUITADO'
    end
  end
  object U_Cli_Bens: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_BENS'
      'set'
      '  CB_CODEMP = :CB_CODEMP,'
      '  CB_CODCLI = :CB_CODCLI,'
      '  CB_SEQ = :CB_SEQ,'
      '  CB_DESCRICAO = :CB_DESCRICAO,'
      '  CB_QUITADO = :CB_QUITADO'
      'where'
      '  CB_CODEMP = :OLD_CB_CODEMP and'
      '  CB_CODCLI = :OLD_CB_CODCLI and'
      '  CB_SEQ = :OLD_CB_SEQ')
    InsertSQL.Strings = (
      'insert into CADCLI_BENS'
      '  (CB_CODEMP, CB_CODCLI, CB_SEQ, CB_DESCRICAO, CB_QUITADO)'
      'values'
      '  (:CB_CODEMP, :CB_CODCLI, :CB_SEQ, :CB_DESCRICAO, :CB_QUITADO)')
    DeleteSQL.Strings = (
      'delete from CADCLI_BENS'
      'where'
      '  CB_CODEMP = :OLD_CB_CODEMP and'
      '  CB_CODCLI = :OLD_CB_CODCLI and'
      '  CB_SEQ = :OLD_CB_SEQ')
    Left = 262
    Top = 182
  end
  object Src_Cli_Bens: TDataSource
    DataSet = Tb_Cli_Bens
    Left = 291
    Top = 182
  end
  object Tb_Cli_IC: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_ICAfterInsert
    BeforePost = Tb_Cli_ICBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_IC')
    UpdateObject = U_Cli_IC
    Left = 233
    Top = 224
    object Tb_Cli_ICIC_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'IC_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CODEMP'
    end
    object Tb_Cli_ICIC_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IC_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CODCLI'
    end
    object Tb_Cli_ICIC_SEDEPROPRIA: TFloatField
      DisplayLabel = 'Sede Propria 0-Sim 1-Nao'
      FieldName = 'IC_SEDEPROPRIA'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_SEDEPROPRIA'
    end
    object Tb_Cli_ICIC_VALOR_ALUG: TFloatField
      DisplayLabel = 'Valor do Aluguel'
      FieldName = 'IC_VALOR_ALUG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_VALOR_ALUG'
    end
    object Tb_Cli_ICIC_QTDANO_ALUG: TFloatField
      DisplayLabel = 'Qtd.Ano Aluguel'
      FieldName = 'IC_QTDANO_ALUG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_QTDANO_ALUG'
    end
    object Tb_Cli_ICIC_QTDMES_ALUG: TFloatField
      DisplayLabel = 'Qtd.M'#234's Aluguel'
      FieldName = 'IC_QTDMES_ALUG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_QTDMES_ALUG'
    end
    object Tb_Cli_ICIC_CATEG: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'IC_CATEG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CATEG'
      Size = 30
    end
    object Tb_Cli_ICIC_SEXO: TFloatField
      DisplayLabel = 'Sexo: 0-Masc 1-Fem'
      FieldName = 'IC_SEXO'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_SEXO'
    end
    object Tb_Cli_ICIC_ESTCIV: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'IC_ESTCIV'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_ESTCIV'
    end
    object Tb_Cli_ICIC_DTNAS: TDateTimeField
      DisplayLabel = 'Dt.Nasc.'
      FieldName = 'IC_DTNAS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_DTNAS'
    end
    object Tb_Cli_ICIC_FIL_PAI: TStringField
      DisplayLabel = 'Filia'#231#227'o Pai'
      FieldName = 'IC_FIL_PAI'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_FIL_PAI'
      Size = 40
    end
    object Tb_Cli_ICIC_FIL_MAE: TStringField
      DisplayLabel = 'Filia'#231#227'o M'#227'e'
      FieldName = 'IC_FIL_MAE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_FIL_MAE'
      Size = 40
    end
    object Tb_Cli_ICIC_NACIONALIDADE: TStringField
      DisplayLabel = 'Nacionalidade'
      FieldName = 'IC_NACIONALIDADE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_NACIONALIDADE'
      Size = 30
    end
    object Tb_Cli_ICIC_NATURAL: TStringField
      DisplayLabel = 'Naturalidade'
      FieldName = 'IC_NATURAL'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_NATURAL'
      Size = 30
    end
    object Tb_Cli_ICIC_NAT_UF: TStringField
      DisplayLabel = 'UF-Naturalidade'
      FieldName = 'IC_NAT_UF'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_NAT_UF'
      Size = 2
    end
    object Tb_Cli_ICIC_PROF: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'IC_PROF'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_PROF'
      Size = 40
    end
    object Tb_Cli_ICIC_LOCAL_TRAB: TStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'IC_LOCAL_TRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_LOCAL_TRAB'
      Size = 40
    end
    object Tb_Cli_ICIC_ENDTRAB: TStringField
      DisplayLabel = 'Endere'#231'o Trabalho'
      FieldName = 'IC_ENDTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_ENDTRAB'
      Size = 40
    end
    object Tb_Cli_ICIC_DEPTOTRAB: TStringField
      DisplayLabel = 'Depto.Trabalha'
      FieldName = 'IC_DEPTOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_DEPTOTRAB'
      Size = 30
    end
    object Tb_Cli_ICIC_CARGOTRAB: TStringField
      DisplayLabel = 'Cargo Trabalho'
      FieldName = 'IC_CARGOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CARGOTRAB'
      Size = 30
    end
    object Tb_Cli_ICIC_QTDANOTRAB: TFloatField
      DisplayLabel = 'Qtd.Ano Trabalho'
      FieldName = 'IC_QTDANOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_QTDANOTRAB'
    end
    object Tb_Cli_ICIC_QTDMESTRAB: TFloatField
      DisplayLabel = 'Qtd.M'#234's Trabalho'
      FieldName = 'IC_QTDMESTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_QTDMESTRAB'
    end
    object Tb_Cli_ICIC_SALARIO: TFloatField
      DisplayLabel = 'Salario'
      FieldName = 'IC_SALARIO'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_SALARIO'
    end
    object Tb_Cli_ICIC_SAL_OUTROS: TFloatField
      DisplayLabel = 'Outros Rendimentos'
      FieldName = 'IC_SAL_OUTROS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_SAL_OUTROS'
    end
    object Tb_Cli_ICIC_NOME_CONJUGE: TStringField
      DisplayLabel = 'Nome do Conjuge'
      FieldName = 'IC_NOME_CONJUGE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_NOME_CONJUGE'
      Size = 40
    end
    object Tb_Cli_ICIC_CONJUGE_NACION: TStringField
      DisplayLabel = 'Nacionalidade Conjuge'
      FieldName = 'IC_CONJUGE_NACION'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_NACION'
      Size = 30
    end
    object Tb_Cli_ICIC_CONJUGE_NATURAL: TStringField
      DisplayLabel = 'Naturalidade Conjuge'
      FieldName = 'IC_CONJUGE_NATURAL'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_NATURAL'
      Size = 30
    end
    object Tb_Cli_ICIC_CONJUGE_NAT_UF: TStringField
      DisplayLabel = 'UF Naturalidade Conjuge'
      FieldName = 'IC_CONJUGE_NAT_UF'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_NAT_UF'
      Size = 2
    end
    object Tb_Cli_ICIC_CONJUGE_CNPF: TFloatField
      DisplayLabel = 'CNPJ-Conjuge'
      FieldName = 'IC_CONJUGE_CNPF'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_CNPF'
    end
    object Tb_Cli_ICIC_CONJUGE_RG: TStringField
      DisplayLabel = 'RG-Conjuge'
      FieldName = 'IC_CONJUGE_RG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_RG'
      Size = 40
    end
    object Tb_Cli_ICIC_CONJUGE_EMIS_RG: TStringField
      DisplayLabel = 'Org'#227'o Emissor RG Conjuge'
      FieldName = 'IC_CONJUGE_EMIS_RG'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_EMIS_RG'
    end
    object Tb_Cli_ICIC_CONJUGE_DT_EXP: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o RG Conjuge'
      FieldName = 'IC_CONJUGE_DT_EXP'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_DT_EXP'
    end
    object Tb_Cli_ICIC_CONJUGE_PROF: TStringField
      DisplayLabel = 'Profiss'#227'o do Conjuge'
      FieldName = 'IC_CONJUGE_PROF'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_PROF'
      Size = 40
    end
    object Tb_Cli_ICIC_CONJUGE_LOCAL_TRAB: TStringField
      DisplayLabel = 'Local de Trabalho Conjuge'
      FieldName = 'IC_CONJUGE_LOCAL_TRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_LOCAL_TRAB'
      Size = 40
    end
    object Tb_Cli_ICIC_CONJUGE_ENDTRAB: TStringField
      DisplayLabel = 'Endere'#231'o Conjuge'
      FieldName = 'IC_CONJUGE_ENDTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_ENDTRAB'
      Size = 40
    end
    object Tb_Cli_ICIC_CONJUGE_DEPTOTRAB: TStringField
      DisplayLabel = 'Depto.Trabalho Conjuge'
      FieldName = 'IC_CONJUGE_DEPTOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_DEPTOTRAB'
      Size = 30
    end
    object Tb_Cli_ICIC_CONJUGE_CARGOTRAB: TStringField
      DisplayLabel = 'Cargo Conjuge'
      FieldName = 'IC_CONJUGE_CARGOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_CARGOTRAB'
      Size = 30
    end
    object Tb_Cli_ICIC_CONJUGE_QTDANOTRAB: TFloatField
      DisplayLabel = 'Qtd.Ano Trab.Conjuge'
      FieldName = 'IC_CONJUGE_QTDANOTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_QTDANOTRAB'
    end
    object Tb_Cli_ICIC_CONJUGE_QTDMESTRAB: TFloatField
      DisplayLabel = 'Qtd.M'#234's Trab.Conjuge'
      FieldName = 'IC_CONJUGE_QTDMESTRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_QTDMESTRAB'
    end
    object Tb_Cli_ICIC_CONJUGE_SALARIO: TFloatField
      DisplayLabel = 'Salario Conjuge'
      FieldName = 'IC_CONJUGE_SALARIO'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_SALARIO'
    end
    object Tb_Cli_ICIC_CONJUGE_SAL_OUTROS: TFloatField
      DisplayLabel = 'Outros Rendimentos Conjuge'
      FieldName = 'IC_CONJUGE_SAL_OUTROS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_SAL_OUTROS'
    end
    object Tb_Cli_ICIC_FONETRAB: TStringField
      FieldName = 'IC_FONETRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_FONETRAB'
      Size = 16
    end
    object Tb_Cli_ICIC_CONJUGE_FONETRAB: TStringField
      FieldName = 'IC_CONJUGE_FONETRAB'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_FONETRAB'
      Size = 16
    end
    object Tb_Cli_ICIC_CONJUGE_DT_NAS: TDateTimeField
      FieldName = 'IC_CONJUGE_DT_NAS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_CONJUGE_DT_NAS'
    end
    object Tb_Cli_ICIC_OTREC_TITREC: TStringField
      FieldName = 'IC_OTREC_TITREC'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_TITREC'
      Size = 60
    end
    object Tb_Cli_ICIC_OTREC_ESFOD: TFloatField
      FieldName = 'IC_OTREC_ESFOD'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_ESFOD'
    end
    object Tb_Cli_ICIC_OTREC_CILOD: TFloatField
      FieldName = 'IC_OTREC_CILOD'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_CILOD'
    end
    object Tb_Cli_ICIC_OTREC_EIXOOD: TFloatField
      FieldName = 'IC_OTREC_EIXOOD'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_EIXOOD'
    end
    object Tb_Cli_ICIC_OTREC_PRISMAOD: TFloatField
      FieldName = 'IC_OTREC_PRISMAOD'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_PRISMAOD'
    end
    object Tb_Cli_ICIC_OTREC_ESFOE: TFloatField
      FieldName = 'IC_OTREC_ESFOE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_ESFOE'
    end
    object Tb_Cli_ICIC_OTREC_CILOE: TFloatField
      FieldName = 'IC_OTREC_CILOE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_CILOE'
    end
    object Tb_Cli_ICIC_OTREC_EIXOOE: TFloatField
      FieldName = 'IC_OTREC_EIXOOE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_EIXOOE'
    end
    object Tb_Cli_ICIC_OTREC_PRISMAOE: TFloatField
      FieldName = 'IC_OTREC_PRISMAOE'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_PRISMAOE'
    end
    object Tb_Cli_ICIC_OTREC_ADICAO: TFloatField
      FieldName = 'IC_OTREC_ADICAO'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_ADICAO'
    end
    object Tb_Cli_ICIC_OTREC_DPDNP: TFloatField
      FieldName = 'IC_OTREC_DPDNP'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_DPDNP'
    end
    object Tb_Cli_ICIC_OTREC_OBS: TStringField
      FieldName = 'IC_OTREC_OBS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_OBS'
      Size = 200
    end
    object Tb_Cli_ICIC_OTREC_DTPCONS: TDateTimeField
      FieldName = 'IC_OTREC_DTPCONS'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTREC_DTPCONS'
    end
    object Tb_Cli_ICIC_OTLENTE_LABOR: TStringField
      FieldName = 'IC_OTLENTE_LABOR'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTLENTE_LABOR'
      Size = 60
    end
    object Tb_Cli_ICIC_OTLENTE_TIPOR: TStringField
      FieldName = 'IC_OTLENTE_TIPOR'
      Origin = 'SG_ASSOC.CADCLI_IC.IC_OTLENTE_TIPOR'
      Size = 100
    end
  end
  object U_Cli_IC: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_IC'
      'set'
      '  IC_CODEMP = :IC_CODEMP,'
      '  IC_CODCLI = :IC_CODCLI,'
      '  IC_SEDEPROPRIA = :IC_SEDEPROPRIA,'
      '  IC_VALOR_ALUG = :IC_VALOR_ALUG,'
      '  IC_QTDANO_ALUG = :IC_QTDANO_ALUG,'
      '  IC_QTDMES_ALUG = :IC_QTDMES_ALUG,'
      '  IC_CATEG = :IC_CATEG,'
      '  IC_SEXO = :IC_SEXO,'
      '  IC_ESTCIV = :IC_ESTCIV,'
      '  IC_DTNAS = :IC_DTNAS,'
      '  IC_FIL_PAI = :IC_FIL_PAI,'
      '  IC_FIL_MAE = :IC_FIL_MAE,'
      '  IC_NACIONALIDADE = :IC_NACIONALIDADE,'
      '  IC_NATURAL = :IC_NATURAL,'
      '  IC_NAT_UF = :IC_NAT_UF,'
      '  IC_PROF = :IC_PROF,'
      '  IC_LOCAL_TRAB = :IC_LOCAL_TRAB,'
      '  IC_FONETRAB = :IC_FONETRAB,'
      '  IC_ENDTRAB = :IC_ENDTRAB,'
      '  IC_DEPTOTRAB = :IC_DEPTOTRAB,'
      '  IC_CARGOTRAB = :IC_CARGOTRAB,'
      '  IC_QTDANOTRAB = :IC_QTDANOTRAB,'
      '  IC_QTDMESTRAB = :IC_QTDMESTRAB,'
      '  IC_SALARIO = :IC_SALARIO,'
      '  IC_SAL_OUTROS = :IC_SAL_OUTROS,'
      '  IC_NOME_CONJUGE = :IC_NOME_CONJUGE,'
      '  IC_CONJUGE_NACION = :IC_CONJUGE_NACION,'
      '  IC_CONJUGE_NATURAL = :IC_CONJUGE_NATURAL,'
      '  IC_CONJUGE_NAT_UF = :IC_CONJUGE_NAT_UF,'
      '  IC_CONJUGE_CNPF = :IC_CONJUGE_CNPF,'
      '  IC_CONJUGE_RG = :IC_CONJUGE_RG,'
      '  IC_CONJUGE_EMIS_RG = :IC_CONJUGE_EMIS_RG,'
      '  IC_CONJUGE_DT_EXP = :IC_CONJUGE_DT_EXP,'
      '  IC_CONJUGE_DT_NAS = :IC_CONJUGE_DT_NAS,'
      '  IC_CONJUGE_PROF = :IC_CONJUGE_PROF,'
      '  IC_CONJUGE_LOCAL_TRAB = :IC_CONJUGE_LOCAL_TRAB,'
      '  IC_CONJUGE_FONETRAB = :IC_CONJUGE_FONETRAB,'
      '  IC_CONJUGE_ENDTRAB = :IC_CONJUGE_ENDTRAB,'
      '  IC_CONJUGE_DEPTOTRAB = :IC_CONJUGE_DEPTOTRAB,'
      '  IC_CONJUGE_CARGOTRAB = :IC_CONJUGE_CARGOTRAB,'
      '  IC_CONJUGE_QTDANOTRAB = :IC_CONJUGE_QTDANOTRAB,'
      '  IC_CONJUGE_QTDMESTRAB = :IC_CONJUGE_QTDMESTRAB,'
      '  IC_CONJUGE_SALARIO = :IC_CONJUGE_SALARIO,'
      '  IC_CONJUGE_SAL_OUTROS = :IC_CONJUGE_SAL_OUTROS,'
      '  IC_OTREC_TITREC = :IC_OTREC_TITREC,'
      '  IC_OTREC_ESFOD = :IC_OTREC_ESFOD,'
      '  IC_OTREC_CILOD = :IC_OTREC_CILOD,'
      '  IC_OTREC_EIXOOD = :IC_OTREC_EIXOOD,'
      '  IC_OTREC_PRISMAOD = :IC_OTREC_PRISMAOD,'
      '  IC_OTREC_ESFOE = :IC_OTREC_ESFOE,'
      '  IC_OTREC_CILOE = :IC_OTREC_CILOE,'
      '  IC_OTREC_EIXOOE = :IC_OTREC_EIXOOE,'
      '  IC_OTREC_PRISMAOE = :IC_OTREC_PRISMAOE,'
      '  IC_OTREC_ADICAO = :IC_OTREC_ADICAO,'
      '  IC_OTREC_DPDNP = :IC_OTREC_DPDNP,'
      '  IC_OTREC_OBS = :IC_OTREC_OBS,'
      '  IC_OTREC_DTPCONS = :IC_OTREC_DTPCONS,'
      '  IC_OTLENTE_LABOR = :IC_OTLENTE_LABOR,'
      '  IC_OTLENTE_TIPOR = :IC_OTLENTE_TIPOR'
      'where'
      '  IC_CODEMP = :OLD_IC_CODEMP and'
      '  IC_CODCLI = :OLD_IC_CODCLI')
    InsertSQL.Strings = (
      'insert into CADCLI_IC'
      '  (IC_CODEMP, IC_CODCLI, IC_SEDEPROPRIA, IC_VALOR_ALUG, '
      'IC_QTDANO_ALUG, '
      
        '   IC_QTDMES_ALUG, IC_CATEG, IC_SEXO, IC_ESTCIV, IC_DTNAS, IC_FI' +
        'L_PAI, '
      
        '   IC_FIL_MAE, IC_NACIONALIDADE, IC_NATURAL, IC_NAT_UF, IC_PROF,' +
        ' '
      'IC_LOCAL_TRAB, '
      '   IC_FONETRAB, IC_ENDTRAB, IC_DEPTOTRAB, IC_CARGOTRAB, '
      'IC_QTDANOTRAB, '
      '   IC_QTDMESTRAB, IC_SALARIO, IC_SAL_OUTROS, IC_NOME_CONJUGE, '
      'IC_CONJUGE_NACION, '
      '   IC_CONJUGE_NATURAL, IC_CONJUGE_NAT_UF, IC_CONJUGE_CNPF, '
      'IC_CONJUGE_RG, '
      '   IC_CONJUGE_EMIS_RG, IC_CONJUGE_DT_EXP, IC_CONJUGE_DT_NAS, '
      'IC_CONJUGE_PROF, '
      '   IC_CONJUGE_LOCAL_TRAB, IC_CONJUGE_FONETRAB, '
      'IC_CONJUGE_ENDTRAB, IC_CONJUGE_DEPTOTRAB, '
      '   IC_CONJUGE_CARGOTRAB, IC_CONJUGE_QTDANOTRAB, '
      'IC_CONJUGE_QTDMESTRAB, '
      '   IC_CONJUGE_SALARIO, IC_CONJUGE_SAL_OUTROS, IC_OTREC_TITREC, '
      'IC_OTREC_ESFOD, '
      '   IC_OTREC_CILOD, IC_OTREC_EIXOOD, IC_OTREC_PRISMAOD, '
      'IC_OTREC_ESFOE, '
      '   IC_OTREC_CILOE, IC_OTREC_EIXOOE, IC_OTREC_PRISMAOE, '
      'IC_OTREC_ADICAO, '
      '   IC_OTREC_DPDNP, IC_OTREC_OBS, IC_OTREC_DTPCONS, '
      'IC_OTLENTE_LABOR, IC_OTLENTE_TIPOR)'
      'values'
      '  (:IC_CODEMP, :IC_CODCLI, :IC_SEDEPROPRIA, :IC_VALOR_ALUG, '
      ':IC_QTDANO_ALUG, '
      '   :IC_QTDMES_ALUG, :IC_CATEG, :IC_SEXO, :IC_ESTCIV, :IC_DTNAS, '
      ':IC_FIL_PAI, '
      
        '   :IC_FIL_MAE, :IC_NACIONALIDADE, :IC_NATURAL, :IC_NAT_UF, :IC_' +
        'PROF, '
      ':IC_LOCAL_TRAB, '
      '   :IC_FONETRAB, :IC_ENDTRAB, :IC_DEPTOTRAB, :IC_CARGOTRAB, '
      ':IC_QTDANOTRAB, '
      
        '   :IC_QTDMESTRAB, :IC_SALARIO, :IC_SAL_OUTROS, :IC_NOME_CONJUGE' +
        ', '
      ':IC_CONJUGE_NACION, '
      '   :IC_CONJUGE_NATURAL, :IC_CONJUGE_NAT_UF, :IC_CONJUGE_CNPF, '
      ':IC_CONJUGE_RG, '
      '   :IC_CONJUGE_EMIS_RG, :IC_CONJUGE_DT_EXP, :IC_CONJUGE_DT_NAS, '
      ':IC_CONJUGE_PROF, '
      '   :IC_CONJUGE_LOCAL_TRAB, :IC_CONJUGE_FONETRAB, '
      ':IC_CONJUGE_ENDTRAB, :IC_CONJUGE_DEPTOTRAB, '
      '   :IC_CONJUGE_CARGOTRAB, :IC_CONJUGE_QTDANOTRAB, '
      ':IC_CONJUGE_QTDMESTRAB, '
      
        '   :IC_CONJUGE_SALARIO, :IC_CONJUGE_SAL_OUTROS, :IC_OTREC_TITREC' +
        ', '
      ':IC_OTREC_ESFOD, '
      '   :IC_OTREC_CILOD, :IC_OTREC_EIXOOD, :IC_OTREC_PRISMAOD, '
      ':IC_OTREC_ESFOE, '
      '   :IC_OTREC_CILOE, :IC_OTREC_EIXOOE, :IC_OTREC_PRISMAOE, '
      ':IC_OTREC_ADICAO, '
      '   :IC_OTREC_DPDNP, :IC_OTREC_OBS, :IC_OTREC_DTPCONS, '
      ':IC_OTLENTE_LABOR, '
      '   :IC_OTLENTE_TIPOR)')
    DeleteSQL.Strings = (
      'delete from CADCLI_IC'
      'where'
      '  IC_CODEMP = :OLD_IC_CODEMP and'
      '  IC_CODCLI = :OLD_IC_CODCLI')
    Left = 262
    Top = 224
  end
  object Src_Cli_IC: TDataSource
    DataSet = Tb_Cli_IC
    Left = 291
    Top = 224
  end
  object Tb_Cli_OutInf: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_OutInfAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_OutInfAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_OUTINF')
    UpdateObject = U_Cli_OutInf
    Left = 233
    Top = 269
    object Tb_Cli_OutInfOI_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OI_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_OUTINF.OI_CODEMP'
    end
    object Tb_Cli_OutInfOI_CODCLI: TFloatField
      DisplayLabel = 'Cliente'
      FieldName = 'OI_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_OUTINF.OI_CODCLI'
    end
    object Tb_Cli_OutInfOI_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OI_SEQ'
      Origin = 'SG_ASSOC.CADCLI_OUTINF.OI_SEQ'
    end
    object Tb_Cli_OutInfOI_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OI_DESCRICAO'
      Origin = 'SG_ASSOC.CADCLI_OUTINF.OI_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object U_Cli_OutInf: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_OUTINF'
      'set'
      '  OI_CODEMP = :OI_CODEMP,'
      '  OI_CODCLI = :OI_CODCLI,'
      '  OI_SEQ = :OI_SEQ,'
      '  OI_DESCRICAO = :OI_DESCRICAO'
      'where'
      '  OI_CODEMP = :OLD_OI_CODEMP and'
      '  OI_CODCLI = :OLD_OI_CODCLI and'
      '  OI_SEQ = :OLD_OI_SEQ')
    InsertSQL.Strings = (
      'insert into CADCLI_OUTINF'
      '  (OI_CODEMP, OI_CODCLI, OI_SEQ, OI_DESCRICAO)'
      'values'
      '  (:OI_CODEMP, :OI_CODCLI, :OI_SEQ, :OI_DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from CADCLI_OUTINF'
      'where'
      '  OI_CODEMP = :OLD_OI_CODEMP and'
      '  OI_CODCLI = :OLD_OI_CODCLI and'
      '  OI_SEQ = :OLD_OI_SEQ')
    Left = 262
    Top = 269
  end
  object Src_Cli_OutInf: TDataSource
    DataSet = Tb_Cli_OutInf
    Left = 291
    Top = 269
  end
  object Tb_Cli_RefBan: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_RefBanAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_RefBanAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_REFBAN')
    UpdateObject = U_Cli_RefBan
    Left = 236
    Top = 358
    object Tb_Cli_RefBanRB_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RB_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_CODEMP'
    end
    object Tb_Cli_RefBanRB_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RB_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_CODCLI'
    end
    object Tb_Cli_RefBanRB_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'RB_SEQ'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_SEQ'
    end
    object Tb_Cli_RefBanRB_BANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'RB_BANCO'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_BANCO'
      Size = 40
    end
    object Tb_Cli_RefBanRB_AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'RB_AGENCIA'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_AGENCIA'
    end
    object Tb_Cli_RefBanRB_CONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'RB_CONTA'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_CONTA'
    end
    object Tb_Cli_RefBanRB_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'RB_FONE'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_FONE'
      Size = 16
    end
    object Tb_Cli_RefBanRB_CONCEITO: TStringField
      DisplayLabel = 'Conceito'
      FieldName = 'RB_CONCEITO'
      Origin = 'SG_ASSOC.CADCLI_REFBAN.RB_CONCEITO'
      Size = 60
    end
  end
  object U_Cli_RefBan: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_REFBAN'
      'set'
      '  RB_CODEMP = :RB_CODEMP,'
      '  RB_CODCLI = :RB_CODCLI,'
      '  RB_SEQ = :RB_SEQ,'
      '  RB_BANCO = :RB_BANCO,'
      '  RB_AGENCIA = :RB_AGENCIA,'
      '  RB_CONTA = :RB_CONTA,'
      '  RB_FONE = :RB_FONE,'
      '  RB_CONCEITO = :RB_CONCEITO'
      'where'
      '  RB_CODEMP = :OLD_RB_CODEMP and'
      '  RB_CODCLI = :OLD_RB_CODCLI and'
      '  RB_SEQ = :OLD_RB_SEQ')
    InsertSQL.Strings = (
      'insert into CADCLI_REFBAN'
      
        '  (RB_CODEMP, RB_CODCLI, RB_SEQ, RB_BANCO, RB_AGENCIA, RB_CONTA,' +
        ' '
      'RB_FONE, '
      '   RB_CONCEITO)'
      'values'
      '  (:RB_CODEMP, :RB_CODCLI, :RB_SEQ, :RB_BANCO, :RB_AGENCIA, '
      ':RB_CONTA, '
      '   :RB_FONE, :RB_CONCEITO)')
    DeleteSQL.Strings = (
      'delete from CADCLI_REFBAN'
      'where'
      '  RB_CODEMP = :OLD_RB_CODEMP and'
      '  RB_CODCLI = :OLD_RB_CODCLI and'
      '  RB_SEQ = :OLD_RB_SEQ')
    Left = 265
    Top = 358
  end
  object Src_Cli_RefBan: TDataSource
    DataSet = Tb_Cli_RefBan
    Left = 294
    Top = 358
  end
  object Tb_Cli_RefPes: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_RefPesAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_RefPesAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_REFPES')
    UpdateObject = U_Cli_RefPes
    Left = 240
    Top = 457
    object Tb_Cli_RefPesRP_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RP_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_CODEMP'
    end
    object Tb_Cli_RefPesRP_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RP_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_CODCLI'
    end
    object Tb_Cli_RefPesRP_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'RP_SEQ'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_SEQ'
    end
    object Tb_Cli_RefPesRP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RP_NOME'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_NOME'
      Size = 40
    end
    object Tb_Cli_RefPesRP_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'RP_ENDERECO'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_ENDERECO'
      Size = 40
    end
    object Tb_Cli_RefPesRP_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'RP_TIPO'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_TIPO'
      Size = 40
    end
    object Tb_Cli_RefPesRP_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'RP_FONE'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_FONE'
      Size = 16
    end
    object Tb_Cli_RefPesRP_CONCEITO: TStringField
      DisplayLabel = 'Conceito'
      FieldName = 'RP_CONCEITO'
      Origin = 'SG_ASSOC.CADCLI_REFPES.RP_CONCEITO'
      Size = 60
    end
  end
  object U_Cli_RefPes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_REFPES'
      'set'
      '  RP_CODEMP = :RP_CODEMP,'
      '  RP_CODCLI = :RP_CODCLI,'
      '  RP_SEQ = :RP_SEQ,'
      '  RP_NOME = :RP_NOME,'
      '  RP_ENDERECO = :RP_ENDERECO,'
      '  RP_TIPO = :RP_TIPO,'
      '  RP_FONE = :RP_FONE,'
      '  RP_CONCEITO = :RP_CONCEITO'
      'where'
      '  RP_CODEMP = :OLD_RP_CODEMP and'
      '  RP_CODCLI = :OLD_RP_CODCLI and'
      '  RP_SEQ = :OLD_RP_SEQ')
    InsertSQL.Strings = (
      'insert into CADCLI_REFPES'
      '  (RP_CODEMP, RP_CODCLI, RP_SEQ, RP_NOME, RP_ENDERECO, RP_TIPO, '
      'RP_FONE, '
      '   RP_CONCEITO)'
      'values'
      
        '  (:RP_CODEMP, :RP_CODCLI, :RP_SEQ, :RP_NOME, :RP_ENDERECO, :RP_' +
        'TIPO, '
      ':RP_FONE, '
      '   :RP_CONCEITO)')
    DeleteSQL.Strings = (
      'delete from CADCLI_REFPES'
      'where'
      '  RP_CODEMP = :OLD_RP_CODEMP and'
      '  RP_CODCLI = :OLD_RP_CODCLI and'
      '  RP_SEQ = :OLD_RP_SEQ')
    Left = 269
    Top = 457
  end
  object Src_Cli_RefPes: TDataSource
    DataSet = Tb_Cli_RefPes
    Left = 298
    Top = 457
  end
  object Tb_Cli_RefCom: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_RefComAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_RefComAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_REFCOM')
    UpdateObject = U_Cli_RefCon
    Left = 239
    Top = 406
    object Tb_Cli_RefComRC_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RC_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_CODEMP'
    end
    object Tb_Cli_RefComRC_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RC_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_CODCLI'
    end
    object Tb_Cli_RefComRC_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'RC_SEQ'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_SEQ'
    end
    object Tb_Cli_RefComRC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RC_NOME'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_NOME'
      Size = 40
    end
    object Tb_Cli_RefComRC_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'RC_FONE'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_FONE'
      Size = 16
    end
    object Tb_Cli_RefComRC_CONCEITO: TStringField
      DisplayLabel = 'Conceito'
      FieldName = 'RC_CONCEITO'
      Origin = 'SG_ASSOC.CADCLI_REFCOM.RC_CONCEITO'
      Size = 60
    end
  end
  object U_Cli_RefCon: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_REFCOM'
      'set'
      '  RC_CODEMP = :RC_CODEMP,'
      '  RC_CODCLI = :RC_CODCLI,'
      '  RC_SEQ = :RC_SEQ,'
      '  RC_NOME = :RC_NOME,'
      '  RC_FONE = :RC_FONE,'
      '  RC_CONCEITO = :RC_CONCEITO'
      'where'
      '  RC_CODEMP = :OLD_RC_CODEMP and'
      '  RC_CODCLI = :OLD_RC_CODCLI and'
      '  RC_SEQ = :OLD_RC_SEQ')
    InsertSQL.Strings = (
      'insert into CADCLI_REFCOM'
      '  (RC_CODEMP, RC_CODCLI, RC_SEQ, RC_NOME, RC_FONE, RC_CONCEITO)'
      'values'
      
        '  (:RC_CODEMP, :RC_CODCLI, :RC_SEQ, :RC_NOME, :RC_FONE, :RC_CONC' +
        'EITO)')
    DeleteSQL.Strings = (
      'delete from CADCLI_REFCOM'
      'where'
      '  RC_CODEMP = :OLD_RC_CODEMP and'
      '  RC_CODCLI = :OLD_RC_CODCLI and'
      '  RC_SEQ = :OLD_RC_SEQ')
    Left = 268
    Top = 406
  end
  object Src_Cli_RefCom: TDataSource
    DataSet = Tb_Cli_RefCom
    Left = 297
    Top = 406
  end
  object Tb_Ven_CotaMes: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CVCODEMP'
      '       ,CVCODVEN'
      '       ,CVANO'
      '       ,CVMES'
      '       ,CVCOTAVLR'
      '       ,CVCOTAQTD'
      '       ,CVREALVLR'
      '       ,CVQTDVLR'
      '       ,VNOME'
      ' from CADVEN_COTAMES,CADVEN'
      'where VCODVEN=CVCODVEN')
    UpdateObject = U_Ven_CotaMes
    Left = 608
    Top = 376
    object Tb_Ven_CotaMesCVCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CVCODEMP'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVCODEMP'
    end
    object Tb_Ven_CotaMesCVCODVEN: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CVCODVEN'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVCODVEN'
    end
    object Tb_Ven_CotaMesCVANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'CVANO'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVANO'
    end
    object Tb_Ven_CotaMesCVMES: TFloatField
      DisplayLabel = 'M'#234's'
      FieldName = 'CVMES'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVMES'
    end
    object Tb_Ven_CotaMesCVCOTAVLR: TFloatField
      DisplayLabel = 'Quota em Valor'
      FieldName = 'CVCOTAVLR'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVCOTAVLR'
    end
    object Tb_Ven_CotaMesCVCOTAQTD: TFloatField
      DisplayLabel = 'Quota em Qtd'
      FieldName = 'CVCOTAQTD'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVCOTAQTD'
    end
    object Tb_Ven_CotaMesCVREALVLR: TFloatField
      DisplayLabel = 'Valor Realizado'
      FieldName = 'CVREALVLR'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVREALVLR'
    end
    object Tb_Ven_CotaMesCVQTDVLR: TFloatField
      DisplayLabel = 'Quantidade Realizada'
      FieldName = 'CVQTDVLR'
      Origin = 'SG_ASSOC.CADVEN_COTAMES.CVQTDVLR'
    end
    object Tb_Ven_CotaMesVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
  end
  object U_Ven_CotaMes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADVEN_COTAMES'
      'set'
      '  CVCODEMP = :CVCODEMP,'
      '  CVCODVEN = :CVCODVEN,'
      '  CVANO = :CVANO,'
      '  CVMES = :CVMES,'
      '  CVCOTAVLR = :CVCOTAVLR,'
      '  CVCOTAQTD = :CVCOTAQTD,'
      '  CVREALVLR = :CVREALVLR,'
      '  CVQTDVLR = :CVQTDVLR'
      'where'
      '  CVCODEMP = :OLD_CVCODEMP and'
      '  CVCODVEN = :OLD_CVCODVEN and'
      '  CVANO = :OLD_CVANO and'
      '  CVMES = :OLD_CVMES')
    InsertSQL.Strings = (
      'insert into CADVEN_COTAMES'
      '  (CVCODEMP, CVCODVEN, CVANO, CVMES, CVCOTAVLR, CVCOTAQTD, '
      'CVREALVLR, CVQTDVLR)'
      'values'
      
        '  (:CVCODEMP, :CVCODVEN, :CVANO, :CVMES, :CVCOTAVLR, :CVCOTAQTD,' +
        ' '
      ':CVREALVLR, '
      '   :CVQTDVLR)')
    DeleteSQL.Strings = (
      'delete from CADVEN_COTAMES'
      'where'
      '  CVCODEMP = :OLD_CVCODEMP and'
      '  CVCODVEN = :OLD_CVCODVEN and'
      '  CVANO = :OLD_CVANO and'
      '  CVMES = :OLD_CVMES')
    Left = 636
    Top = 377
  end
  object Src_Ven_CotaMes: TDataSource
    DataSet = Tb_Ven_CotaMes
    Left = 664
    Top = 378
  end
  object Tb_GFor: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GForBeforeInsert
    AfterInsert = Tb_GForAfterInsert
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADGFOR'
      'where GFCODGRU is null'
      '')
    UpdateObject = U_GFor
    Left = 356
    Top = 508
    object Tb_GForGFCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GFCODEMP'
      Origin = 'SG_ASSOC.CADGFOR.GFCODEMP'
    end
    object Tb_GForGFCODGRU: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GFCODGRU'
      Origin = 'SG_ASSOC.CADGFOR.GFCODGRU'
    end
    object Tb_GForGFNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'GFNOME'
      Origin = 'SG_ASSOC.CADGFOR.GFNOME'
      Size = 30
    end
    object Tb_GForGFPERCFRE: TFloatField
      DisplayLabel = '%Perc.Frete'
      FieldName = 'GFPERCFRE'
      Origin = 'SG_ASSOC.CADGFOR.GFPERCFRE'
    end
    object Tb_GForGFCOMIS: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'GFCOMIS'
      Origin = 'SG_ASSOC.CADGFOR.GFCOMIS'
    end
    object Tb_GForGFORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'GFORDEM'
      Origin = 'SG_ASSOC.CADGFOR.GFORDEM'
    end
    object Tb_GForGFPERCPRFAT: TFloatField
      DisplayLabel = '% Compra Autorizado em Rela'#231#227'o ao m'#234's anterior'
      FieldName = 'GFPERCPRFAT'
      Origin = 'SG_ASSOC.CADGFOR.GFPERCPRFAT'
    end
  end
  object U_GFor: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGFOR'
      'set'
      '  GFCODEMP = :GFCODEMP,'
      '  GFCODGRU = :GFCODGRU,'
      '  GFNOME = :GFNOME,'
      '  GFPERCFRE = :GFPERCFRE,'
      '  GFCOMIS = :GFCOMIS,'
      '  GFORDEM = :GFORDEM,'
      '  GFPERCPRFAT = :GFPERCPRFAT'
      'where'
      '  GFCODEMP = :OLD_GFCODEMP and'
      '  GFCODGRU = :OLD_GFCODGRU')
    InsertSQL.Strings = (
      'insert into CADGFOR'
      '  (GFCODEMP, GFCODGRU, GFNOME, GFPERCFRE, GFCOMIS, GFORDEM, '
      'GFPERCPRFAT)'
      'values'
      
        '  (:GFCODEMP, :GFCODGRU, :GFNOME, :GFPERCFRE, :GFCOMIS, :GFORDEM' +
        ', '
      ':GFPERCPRFAT)')
    DeleteSQL.Strings = (
      'delete from CADGFOR'
      'where'
      '  GFCODEMP = :OLD_GFCODEMP and'
      '  GFCODGRU = :OLD_GFCODGRU')
    Left = 384
    Top = 508
  end
  object Src_GFor: TDataSource
    DataSet = Tb_GFor
    Left = 412
    Top = 508
  end
  object Tb_FilPad2: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FILPAD'
      'where FPFORM like :FORM'
      'and FPCODUSR like :CODUSR'
      'and FPCOMP like :COMP'
      'order by FPCOMP')
    Left = 419
    Top = 266
    ParamData = <
      item
        DataType = ftString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'COMP'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_FilPad2FPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FILPAD.FPCODUSR'
    end
    object Tb_FilPad2FPFORM: TStringField
      FieldName = 'FPFORM'
      Origin = 'SG_ASSOC.FILPAD.FPFORM'
    end
    object Tb_FilPad2FPCOMP: TStringField
      FieldName = 'FPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPCOMP'
      Size = 30
    end
    object Tb_FilPad2FPTPCOMP: TStringField
      FieldName = 'FPTPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPTPCOMP'
      Size = 30
    end
    object Tb_FilPad2FPVALOR: TStringField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR'
      Size = 254
    end
    object Tb_FilPad2FPVALOR2: TStringField
      FieldName = 'FPVALOR2'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR2'
      Size = 200
    end
    object Tb_FilPad2FPVALOR_MEMO: TMemoField
      FieldName = 'FPVALOR_MEMO'
      BlobType = ftMemo
    end
  end
  object Tb_Cli_PV: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Cli_PVAfterInsert
    AfterPost = c
    AfterCancel = Tb_Cli_PVAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_PV')
    UpdateObject = U_Cli_PV
    Left = 233
    Top = 316
    object Tb_Cli_PVCPV_CODEMP: TFloatField
      FieldName = 'CPV_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODEMP'
    end
    object Tb_Cli_PVCPV_CODCLI: TFloatField
      FieldName = 'CPV_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODCLI'
    end
    object Tb_Cli_PVCPV_TABPV: TStringField
      FieldName = 'CPV_TABPV'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_TABPV'
      Size = 2
    end
    object Tb_Cli_PVCPV_CODPV: TFloatField
      FieldName = 'CPV_CODPV'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODPV'
    end
  end
  object U_Cli_PV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_PV'
      'set'
      '  CPV_CODEMP = :CPV_CODEMP,'
      '  CPV_CODCLI = :CPV_CODCLI,'
      '  CPV_TABPV = :CPV_TABPV,'
      '  CPV_CODPV = :CPV_CODPV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    InsertSQL.Strings = (
      'insert into CADCLI_PV'
      '  (CPV_CODEMP, CPV_CODCLI, CPV_TABPV, CPV_CODPV)'
      'values'
      '  (:CPV_CODEMP, :CPV_CODCLI, :CPV_TABPV, :CPV_CODPV)')
    DeleteSQL.Strings = (
      'delete from CADCLI_PV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    Left = 262
    Top = 316
  end
  object Src_Cli_PV: TDataSource
    DataSet = Tb_Cli_PV
    Left = 291
    Top = 316
  end
  object Tb_CotaForVend_Mes: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CFV_CODEMP'
      '       ,CFV_CODVEN'
      '       ,CFV_CODFOR'
      '       ,CFV_ANO'
      '       ,CFV_MES'
      '       ,CFV_COTAVLR'
      '       ,CFV_COTAQTD'
      '       ,CFV_REALVLR'
      '       ,CFV_QTDVLR'
      '       ,VNOME'
      '       ,FRAZAO'
      ' from CADFORVEN_COTAMES,CADVEN,CADFOR'
      'where VCODVEN=CFV_CODVEN'
      'AND   FCODFOR=CFV_CODFOR')
    UpdateObject = U_CotaForVend_Mes
    Left = 608
    Top = 422
    object Tb_CotaForVend_MesCFV_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CFV_CODEMP'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_CODEMP'
    end
    object Tb_CotaForVend_MesCFV_CODVEN: TFloatField
      DisplayLabel = 'Cod.Vend'
      FieldName = 'CFV_CODVEN'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_CODVEN'
    end
    object Tb_CotaForVend_MesCFV_CODFOR: TFloatField
      DisplayLabel = 'Cod.Fornec.'
      FieldName = 'CFV_CODFOR'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_CODFOR'
    end
    object Tb_CotaForVend_MesCFV_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'CFV_ANO'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_ANO'
    end
    object Tb_CotaForVend_MesCFV_MES: TFloatField
      DisplayLabel = 'Mes'
      FieldName = 'CFV_MES'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_MES'
    end
    object Tb_CotaForVend_MesCFV_COTAVLR: TFloatField
      DisplayLabel = 'Cota Valor'
      FieldName = 'CFV_COTAVLR'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_COTAVLR'
    end
    object Tb_CotaForVend_MesCFV_COTAQTD: TFloatField
      DisplayLabel = 'Cota Qtd'
      FieldName = 'CFV_COTAQTD'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_COTAQTD'
    end
    object Tb_CotaForVend_MesCFV_REALVLR: TFloatField
      DisplayLabel = 'Valor Realizado'
      FieldName = 'CFV_REALVLR'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_REALVLR'
    end
    object Tb_CotaForVend_MesCFV_QTDVLR: TFloatField
      DisplayLabel = 'Qtd.Realizada'
      FieldName = 'CFV_QTDVLR'
      Origin = 'SG_ASSOC.CADFORVEN_COTAMES.CFV_QTDVLR'
    end
    object Tb_CotaForVend_MesVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_CotaForVend_MesFRAZAO: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
  end
  object U_CotaForVend_Mes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFORVEN_COTAMES'
      'set'
      '  CFV_CODEMP = :CFV_CODEMP,'
      '  CFV_CODVEN = :CFV_CODVEN,'
      '  CFV_CODFOR = :CFV_CODFOR,'
      '  CFV_ANO = :CFV_ANO,'
      '  CFV_MES = :CFV_MES,'
      '  CFV_COTAVLR = :CFV_COTAVLR,'
      '  CFV_COTAQTD = :CFV_COTAQTD,'
      '  CFV_REALVLR = :CFV_REALVLR,'
      '  CFV_QTDVLR = :CFV_QTDVLR'
      'where'
      '  CFV_CODEMP = :OLD_CFV_CODEMP and'
      '  CFV_CODVEN = :OLD_CFV_CODVEN and'
      '  CFV_CODFOR = :OLD_CFV_CODFOR and'
      '  CFV_ANO = :OLD_CFV_ANO and'
      '  CFV_MES = :OLD_CFV_MES')
    InsertSQL.Strings = (
      'insert into CADFORVEN_COTAMES'
      '  (CFV_CODEMP, CFV_CODVEN, CFV_CODFOR, CFV_ANO, CFV_MES, '
      'CFV_COTAVLR, CFV_COTAQTD, '
      '   CFV_REALVLR, CFV_QTDVLR)'
      'values'
      '  (:CFV_CODEMP, :CFV_CODVEN, :CFV_CODFOR, :CFV_ANO, :CFV_MES, '
      ':CFV_COTAVLR, '
      '   :CFV_COTAQTD, :CFV_REALVLR, :CFV_QTDVLR)')
    DeleteSQL.Strings = (
      'delete from CADFORVEN_COTAMES'
      'where'
      '  CFV_CODEMP = :OLD_CFV_CODEMP and'
      '  CFV_CODVEN = :OLD_CFV_CODVEN and'
      '  CFV_CODFOR = :OLD_CFV_CODFOR and'
      '  CFV_ANO = :OLD_CFV_ANO and'
      '  CFV_MES = :OLD_CFV_MES')
    Left = 636
    Top = 423
  end
  object Src_CotaForVend_Mes: TDataSource
    DataSet = Tb_CotaForVend_Mes
    Left = 664
    Top = 424
  end
  object Tb_CotaProVend_Mes: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPV_CODEMP'
      '       ,CPV_CODVEN'
      '       ,CPV_CODPRO'
      '       ,CPV_ANO'
      '       ,CPV_MES'
      '       ,CPV_COTAVLR'
      '       ,CPV_COTAQTD'
      '       ,CPV_REALVLR'
      '       ,CPV_QTDVLR'
      '       ,VNOME'
      '       ,PDNOME'
      ' from CADPROVEN_COTAMES,CADVEN,CADPRO'
      'where VCODVEN=CPV_CODVEN'
      'AND   PDCODPRO=CPV_CODPRO')
    UpdateObject = U_CotaProVend_Mes
    Left = 608
    Top = 469
    object Tb_CotaProVend_MesCPV_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPV_CODEMP'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_CODEMP'
    end
    object Tb_CotaProVend_MesCPV_CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'CPV_CODVEN'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_CODVEN'
    end
    object Tb_CotaProVend_MesCPV_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'CPV_CODPRO'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_CODPRO'
    end
    object Tb_CotaProVend_MesCPV_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'CPV_ANO'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_ANO'
    end
    object Tb_CotaProVend_MesCPV_MES: TFloatField
      DisplayLabel = 'M'#234's'
      FieldName = 'CPV_MES'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_MES'
    end
    object Tb_CotaProVend_MesCPV_COTAVLR: TFloatField
      DisplayLabel = 'Cota Valor'
      FieldName = 'CPV_COTAVLR'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_COTAVLR'
    end
    object Tb_CotaProVend_MesCPV_COTAQTD: TFloatField
      DisplayLabel = 'Cota Quant'
      FieldName = 'CPV_COTAQTD'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_COTAQTD'
    end
    object Tb_CotaProVend_MesCPV_REALVLR: TFloatField
      DisplayLabel = 'Valor Realizado'
      FieldName = 'CPV_REALVLR'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_REALVLR'
    end
    object Tb_CotaProVend_MesCPV_QTDVLR: TFloatField
      DisplayLabel = 'Quant.Valor'
      FieldName = 'CPV_QTDVLR'
      Origin = 'SG_ASSOC.CADPROVEN_COTAMES.CPV_QTDVLR'
    end
    object Tb_CotaProVend_MesVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_CotaProVend_MesPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
  end
  object U_CotaProVend_Mes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPROVEN_COTAMES'
      'set'
      '  CPV_CODEMP = :CPV_CODEMP,'
      '  CPV_CODVEN = :CPV_CODVEN,'
      '  CPV_CODPRO = :CPV_CODPRO,'
      '  CPV_ANO = :CPV_ANO,'
      '  CPV_MES = :CPV_MES,'
      '  CPV_COTAVLR = :CPV_COTAVLR,'
      '  CPV_COTAQTD = :CPV_COTAQTD,'
      '  CPV_REALVLR = :CPV_REALVLR,'
      '  CPV_QTDVLR = :CPV_QTDVLR'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODVEN = :OLD_CPV_CODVEN and'
      '  CPV_CODPRO = :OLD_CPV_CODPRO and'
      '  CPV_ANO = :OLD_CPV_ANO and'
      '  CPV_MES = :OLD_CPV_MES')
    InsertSQL.Strings = (
      'insert into CADPROVEN_COTAMES'
      '  (CPV_CODEMP, CPV_CODVEN, CPV_CODPRO, CPV_ANO, CPV_MES, '
      'CPV_COTAVLR, CPV_COTAQTD, '
      '   CPV_REALVLR, CPV_QTDVLR)'
      'values'
      '  (:CPV_CODEMP, :CPV_CODVEN, :CPV_CODPRO, :CPV_ANO, :CPV_MES, '
      ':CPV_COTAVLR, '
      '   :CPV_COTAQTD, :CPV_REALVLR, :CPV_QTDVLR)')
    DeleteSQL.Strings = (
      'delete from CADPROVEN_COTAMES'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODVEN = :OLD_CPV_CODVEN and'
      '  CPV_CODPRO = :OLD_CPV_CODPRO and'
      '  CPV_ANO = :OLD_CPV_ANO and'
      '  CPV_MES = :OLD_CPV_MES')
    Left = 636
    Top = 470
  end
  object Src_CotaProVend_Mes: TDataSource
    DataSet = Tb_CotaProVend_Mes
    Left = 664
    Top = 471
  end
  object Tb_ParGer02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARGER02')
    UpdateObject = U_Parger02
    Left = 604
    Top = 8
    object Tb_ParGer02PG2CODIGO: TFloatField
      FieldName = 'PG2CODIGO'
      Origin = 'SG_ASSOC.PARGER02.PG2CODIGO'
    end
    object Tb_ParGer02PG2QTDDBLQCLISEMCPR: TFloatField
      FieldName = 'PG2QTDDBLQCLISEMCPR'
      Origin = 'SG_ASSOC.PARGER02.PG2QTDDBLQCLISEMCPR'
    end
    object Tb_ParGer02PG2CONCEXATO: TFloatField
      FieldName = 'PG2CONCEXATO'
      Origin = 'SG_ASSOC.PARGER02.PG2CONCEXATO'
    end
    object Tb_ParGer02PG2IGNOR_MINUSCULAS: TFloatField
      FieldName = 'PG2IGNOR_MINUSCULAS'
      Origin = 'SG_ASSOC.PARGER02.PG2IGNOR_MINUSCULAS'
    end
    object Tb_ParGer02PG2USANFE: TFloatField
      FieldName = 'PG2USANFE'
      Origin = 'SG_ASSOC.PARGER02.PG2USANFE'
    end
    object Tb_ParGer02PG2NFETPIMP: TFloatField
      FieldName = 'PG2NFETPIMP'
      Origin = 'SG_ASSOC.PARGER02.PG2NFETPIMP'
    end
    object Tb_ParGer02PG2FORMALOTEFAB: TFloatField
      FieldName = 'PG2FORMALOTEFAB'
      Origin = 'SG_ASSOC.PARGER02.PG2FORMALOTEFAB'
    end
    object Tb_ParGer02PG2PROXLOTFAB: TFloatField
      FieldName = 'PG2PROXLOTFAB'
      Origin = 'SG_ASSOC.PARGER02.PG2PROXLOTFAB'
    end
    object Tb_ParGer02PG2ULTFORLOTFAB: TStringField
      FieldName = 'PG2ULTFORLOTFAB'
      Origin = 'SG_ASSOC.PARGER02.PG2ULTFORLOTFAB'
      Size = 10
    end
    object Tb_ParGer02PG2FORMALOTEFAB_MASC: TFloatField
      FieldName = 'PG2FORMALOTEFAB_MASC'
      Origin = 'SG_ASSOC.PARGER02.PG2FORMALOTEFAB_MASC'
    end
    object Tb_ParGer02PG2CHQFC: TFloatField
      FieldName = 'PG2CHQFC'
      Origin = 'SG_ASSOC.PARGER02.PG2CHQFC'
    end
    object Tb_ParGer02PG2PASTAENVIO: TStringField
      FieldName = 'PG2PASTAENVIO'
      Origin = 'SG_ASSOC.PARGER02.PG2PASTAENVIO'
      Size = 100
    end
    object Tb_ParGer02PG2PASTARETORNO: TStringField
      FieldName = 'PG2PASTARETORNO'
      Origin = 'SG_ASSOC.PARGER02.PG2PASTARETORNO'
      Size = 100
    end
    object Tb_ParGer02PG2VALXMLENVIO: TStringField
      FieldName = 'PG2VALXMLENVIO'
      Origin = 'SG_ASSOC.PARGER02.PG2VALXMLENVIO'
      Size = 100
    end
    object Tb_ParGer02PG2VALXMLRETORNO: TStringField
      FieldName = 'PG2VALXMLRETORNO'
      Origin = 'SG_ASSOC.PARGER02.PG2VALXMLRETORNO'
      Size = 100
    end
    object Tb_ParGer02PG2UTILCQ: TFloatField
      FieldName = 'PG2UTILCQ'
      Origin = 'SG_ASSOC.PARGER02.PG2UTILCQ'
    end
    object Tb_ParGer02PG2NFEPASTAIMP: TStringField
      FieldName = 'PG2NFEPASTAIMP'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEPASTAIMP'
      Size = 100
    end
    object Tb_ParGer02PG2NFEAVISA_MTPIMP: TFloatField
      FieldName = 'PG2NFEAVISA_MTPIMP'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEAVISA_MTPIMP'
    end
    object Tb_ParGer02PG2SEGLOGOFF: TFloatField
      FieldName = 'PG2SEGLOGOFF'
      Origin = 'SG_ASSOC.PARGER02.PG2SEGLOGOFF'
    end
    object Tb_ParGer02PG2DTBLOQCX: TDateTimeField
      FieldName = 'PG2DTBLOQCX'
      Origin = 'SG_ASSOC.PARGER02.PG2DTBLOQCX'
    end
    object Tb_ParGer02PG2NFEVISALIZAR: TFloatField
      FieldName = 'PG2NFEVISALIZAR'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEVISALIZAR'
    end
    object Tb_ParGer02PG2TIPO_ETIBAL: TFloatField
      FieldName = 'PG2TIPO_ETIBAL'
      Origin = 'SG_ASSOC.PARGER02.PG2TIPO_ETIBAL'
    end
    object Tb_ParGer02PG2CODPRO_SEMCOD: TFloatField
      FieldName = 'PG2CODPRO_SEMCOD'
      Origin = 'SG_ASSOC.PARGER02.PG2CODPRO_SEMCOD'
    end
    object Tb_ParGer02PG2USA_COMANDA: TFloatField
      FieldName = 'PG2USA_COMANDA'
      Origin = 'SG_ASSOC.PARGER02.PG2USA_COMANDA'
    end
    object Tb_ParGer02PG2FRENTE_ACEITAVALE: TFloatField
      FieldName = 'PG2FRENTE_ACEITAVALE'
      Origin = 'SG_ASSOC.PARGER02.PG2FRENTE_ACEITAVALE'
    end
    object Tb_ParGer02PG2SENINT_USU: TFloatField
      FieldName = 'PG2SENINT_USU'
      Origin = 'SG_ASSOC.PARGER02.PG2SENINT_USU'
    end
    object Tb_ParGer02PG2PACREDICMS: TFloatField
      FieldName = 'PG2PACREDICMS'
      Origin = 'SG_ASSOC.PARGER02.PG2PACREDICMS'
    end
    object Tb_ParGer02PG2SENINTUSR: TFloatField
      FieldName = 'PG2SENINTUSR'
      Origin = 'SG_ASSOC.PARGER02.PG2SENINTUSR'
    end
    object Tb_ParGer02PG2NFE_TAMLOGOMARCA: TFloatField
      FieldName = 'PG2NFE_TAMLOGOMARCA'
      Origin = 'SG_ASSOC.PARGER02.PG2NFE_TAMLOGOMARCA'
    end
    object Tb_ParGer02PG2VERSAOXML: TStringField
      FieldName = 'PG2VERSAOXML'
      Origin = 'SG_ASSOC.PARGER02.PG2VERSAOXML'
      Size = 6
    end
    object Tb_ParGer02PG2NFETPEMIS: TFloatField
      FieldName = 'PG2NFETPEMIS'
      Origin = 'SG_ASSOC.PARGER02.PG2NFETPEMIS'
    end
    object Tb_ParGer02PG2FRENTE_IMPRIMEVEND: TFloatField
      FieldName = 'PG2FRENTE_IMPRIMEVEND'
      Origin = 'SG_ASSOC.PARGER02.PG2FRENTE_IMPRIMEVEND'
    end
    object Tb_ParGer02PG2NFEPASTAMASTER: TStringField
      FieldName = 'PG2NFEPASTAMASTER'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEPASTAMASTER'
      Size = 100
    end
    object Tb_ParGer02PG2NFEDATHOR_CONT: TDateTimeField
      FieldName = 'PG2NFEDATHOR_CONT'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEDATHOR_CONT'
    end
    object Tb_ParGer02PG2NFEJUST_CONT: TStringField
      FieldName = 'PG2NFEJUST_CONT'
      Origin = 'SG_ASSOC.PARGER02.PG2NFEJUST_CONT'
      Size = 250
    end
  end
  object Src_Parger02: TDataSource
    DataSet = Tb_ParGer02
    Left = 666
    Top = 4
  end
  object Qr_Ped02_mp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADP02_MP where P2MP_CODEMP is null')
    Left = 158
    Top = 96
  end
  object Qr_Ped02_Trocas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADP02_TROCAS where P2TRO_CODEMP is null')
    Left = 121
    Top = 136
  end
  object U_Parger02: TUpdateSQL
    ModifySQL.Strings = (
      'update PARGER02'
      'set'
      '  PG2CODIGO = :PG2CODIGO,'
      '  PG2QTDDBLQCLISEMCPR = :PG2QTDDBLQCLISEMCPR,'
      '  PG2CONCEXATO = :PG2CONCEXATO,'
      '  PG2IGNOR_MINUSCULAS = :PG2IGNOR_MINUSCULAS,'
      '  PG2USANFE = :PG2USANFE,'
      '  PG2PASTAENVIO = :PG2PASTAENVIO,'
      '  PG2PASTARETORNO = :PG2PASTARETORNO,'
      '  PG2NFETPIMP = :PG2NFETPIMP,'
      '  PG2FORMALOTEFAB = :PG2FORMALOTEFAB,'
      '  PG2FORMALOTEFAB_MASC = :PG2FORMALOTEFAB_MASC,'
      '  PG2PROXLOTFAB = :PG2PROXLOTFAB,'
      '  PG2ULTFORLOTFAB = :PG2ULTFORLOTFAB,'
      '  PG2CHQFC = :PG2CHQFC,'
      '  PG2VALXMLENVIO = :PG2VALXMLENVIO,'
      '  PG2VALXMLRETORNO = :PG2VALXMLRETORNO,'
      '  PG2NFEPASTAIMP = :PG2NFEPASTAIMP,'
      '  PG2NFEAVISA_MTPIMP = :PG2NFEAVISA_MTPIMP,'
      '  PG2NFEVISALIZAR = :PG2NFEVISALIZAR,'
      '  PG2UTILCQ = :PG2UTILCQ,'
      '  PG2SEGLOGOFF = :PG2SEGLOGOFF,'
      '  PG2NFE_TAMLOGOMARCA = :PG2NFE_TAMLOGOMARCA,'
      '  PG2DTBLOQCX = :PG2DTBLOQCX,'
      '  PG2TIPO_ETIBAL = :PG2TIPO_ETIBAL,'
      '  PG2CODPRO_SEMCOD = :PG2CODPRO_SEMCOD,'
      '  PG2USA_COMANDA = :PG2USA_COMANDA,'
      '  PG2FRENTE_ACEITAVALE = :PG2FRENTE_ACEITAVALE,'
      '  PG2SENINT_USU = :PG2SENINT_USU,'
      '  PG2PACREDICMS = :PG2PACREDICMS,'
      '  PG2SENINTUSR = :PG2SENINTUSR,'
      '  PG2VERSAOXML = :PG2VERSAOXML,'
      '  PG2NFETPEMIS = :PG2NFETPEMIS,'
      '  PG2NFEPASTAMASTER = :PG2NFEPASTAMASTER,'
      '  PG2NFEDATHOR_CONT = :PG2NFEDATHOR_CONT,'
      '  PG2NFEJUST_CONT = :PG2NFEJUST_CONT'
      'where'
      '  PG2CODIGO = :OLD_PG2CODIGO')
    InsertSQL.Strings = (
      'insert into PARGER02'
      
        '  (PG2CODIGO, PG2QTDDBLQCLISEMCPR, PG2CONCEXATO, PG2IGNOR_MINUSC' +
        'ULAS, PG2USANFE, '
      
        '   PG2PASTAENVIO, PG2PASTARETORNO, PG2NFETPIMP, PG2FORMALOTEFAB,' +
        ' PG2FORMALOTEFAB_MASC, '
      
        '   PG2PROXLOTFAB, PG2ULTFORLOTFAB, PG2CHQFC, PG2VALXMLENVIO, PG2' +
        'VALXMLRETORNO, '
      
        '   PG2NFEPASTAIMP, PG2NFEAVISA_MTPIMP, PG2NFEVISALIZAR, PG2UTILC' +
        'Q, PG2SEGLOGOFF, '
      
        '   PG2NFE_TAMLOGOMARCA, PG2DTBLOQCX, PG2TIPO_ETIBAL, PG2CODPRO_S' +
        'EMCOD, '
      
        '   PG2USA_COMANDA, PG2FRENTE_ACEITAVALE, PG2SENINT_USU, PG2PACRE' +
        'DICMS, '
      
        '   PG2SENINTUSR, PG2VERSAOXML, PG2NFETPEMIS, PG2NFEPASTAMASTER, ' +
        'PG2NFEDATHOR_CONT, '
      '   PG2NFEJUST_CONT)'
      'values'
      
        '  (:PG2CODIGO, :PG2QTDDBLQCLISEMCPR, :PG2CONCEXATO, :PG2IGNOR_MI' +
        'NUSCULAS, '
      
        '   :PG2USANFE, :PG2PASTAENVIO, :PG2PASTARETORNO, :PG2NFETPIMP, :' +
        'PG2FORMALOTEFAB, '
      
        '   :PG2FORMALOTEFAB_MASC, :PG2PROXLOTFAB, :PG2ULTFORLOTFAB, :PG2' +
        'CHQFC, '
      
        '   :PG2VALXMLENVIO, :PG2VALXMLRETORNO, :PG2NFEPASTAIMP, :PG2NFEA' +
        'VISA_MTPIMP, '
      
        '   :PG2NFEVISALIZAR, :PG2UTILCQ, :PG2SEGLOGOFF, :PG2NFE_TAMLOGOM' +
        'ARCA, :PG2DTBLOQCX, '
      
        '   :PG2TIPO_ETIBAL, :PG2CODPRO_SEMCOD, :PG2USA_COMANDA, :PG2FREN' +
        'TE_ACEITAVALE, '
      
        '   :PG2SENINT_USU, :PG2PACREDICMS, :PG2SENINTUSR, :PG2VERSAOXML,' +
        ' :PG2NFETPEMIS, '
      '   :PG2NFEPASTAMASTER, :PG2NFEDATHOR_CONT, :PG2NFEJUST_CONT)')
    DeleteSQL.Strings = (
      'delete from PARGER02'
      'where'
      '  PG2CODIGO = :OLD_PG2CODIGO')
    Left = 635
    Top = 10
  end
  object Tb_Po99: TRxMemoryData
    FieldDefs = <
      item
        Name = 'POPRAZO'
        DataType = ftFloat
      end
      item
        Name = 'POCODEMP'
        DataType = ftFloat
      end>
    Left = 704
    Top = 248
    object Tb_Po99POPRAZO: TFloatField
      FieldName = 'POPRAZO'
    end
    object Tb_Po99POCODEMP: TFloatField
      FieldName = 'POCODEMP'
    end
  end
  object Tb_Imp_Sys: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Imp_SysAfterInsert
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADIMP_SYS'
      'where CITERMINAL like :TERMINAL'
      'and   CICODIGO   like :CODIGO'
      'and   CINOMREL   like :NOMREL'
      '')
    UpdateObject = U_Imp_Sys
    Left = 356
    Top = 467
    ParamData = <
      item
        DataType = ftString
        Name = 'TERMINAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMREL'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Imp_SysCITERMINAL: TStringField
      DisplayLabel = 'Terminal'
      FieldName = 'CITERMINAL'
      Origin = 'SG_ASSOC.CADIMP_SYS.CITERMINAL'
      Size = 40
    end
    object Tb_Imp_SysCICODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CICODIGO'
      Origin = 'SG_ASSOC.CADIMP_SYS.CICODIGO'
      Size = 10
    end
    object Tb_Imp_SysCINOMREL: TStringField
      DisplayLabel = 'Descri'#231#227'o do Relat'#243'rio'
      FieldName = 'CINOMREL'
      Origin = 'SG_ASSOC.CADIMP_SYS.CINOMREL'
      Size = 50
    end
    object Tb_Imp_SysCIPORTA: TStringField
      DisplayLabel = 'Porta do Relatorio/Impressora'
      FieldName = 'CIPORTA'
      Origin = 'SG_ASSOC.CADIMP_SYS.CIPORTA'
      Size = 60
    end
    object Tb_Imp_SysCIMODELO: TFloatField
      DisplayLabel = 'Modelo'
      FieldName = 'CIMODELO'
      Origin = 'SG_ASSOC.CADIMP_SYS.CIMODELO'
    end
    object Tb_Imp_SysCIQTDLP: TFloatField
      DisplayLabel = 'Qtd.Linhas por P'#225'g'
      FieldName = 'CIQTDLP'
      Origin = 'SG_ASSOC.CADIMP_SYS.CIQTDLP'
    end
    object Tb_Imp_SysCIUSRALT: TFloatField
      DisplayLabel = 'Usu'#225'rio Alterou'
      FieldName = 'CIUSRALT'
      Origin = 'SG_ASSOC.CADIMP_SYS.CIUSRALT'
    end
    object Tb_Imp_SysCIDATAALT: TDateTimeField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'CIDATAALT'
      Origin = 'SG_ASSOC.CADIMP_SYS.CIDATAALT'
    end
    object Tb_Imp_SysCICODEMP: TFloatField
      FieldName = 'CICODEMP'
    end
  end
  object Tb_FilPadV02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FILPAD'
      'where FPFORM like :FORM'
      'and FPCODUSR like :CODUSR'
      'and FPCOMP like :COMP'
      'order by FPCOMP')
    Left = 419
    Top = 308
    ParamData = <
      item
        DataType = ftString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODUSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'COMP'
        ParamType = ptUnknown
        Value = ''
      end>
    object FloatField4: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FILPAD.FPCODUSR'
    end
    object StringField6: TStringField
      FieldName = 'FPFORM'
      Origin = 'SG_ASSOC.FILPAD.FPFORM'
    end
    object StringField7: TStringField
      FieldName = 'FPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPCOMP'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'FPTPCOMP'
      Origin = 'SG_ASSOC.FILPAD.FPTPCOMP'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR'
      Size = 254
    end
    object StringField10: TStringField
      FieldName = 'FPVALOR2'
      Origin = 'SG_ASSOC.FILPAD.FPVALOR2'
      Size = 200
    end
  end
end
