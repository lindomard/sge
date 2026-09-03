object DM3: TDM3
  OldCreateOrder = False
  Left = 362
  Top = 132
  Height = 340
  Width = 516
  object Src_Comp: TDataSource
    Left = 74
    Top = 48
  end
  object U_Comp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      
        '  (CPCODEMP, CPORDEM, CPCODPRO, CPCODMAT, CPQUANT, CPPU, CPNUMER' +
        'O, CPMPNUM, '
      
        '   CPCODPRO_ACAB, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      
        '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPCODMAT, :CPQUANT, :CPPU, :' +
        'CPNUMERO, '
      
        '   :CPMPNUM, :CPCODPRO_ACAB, :CPVLRINC, :CPALIQORI, :CPALICMSCRE' +
        'D, :CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    Left = 48
    Top = 48
  end
  object Tb_Op01: TQuery
    CachedUpdates = True
    BeforePost = Tb_Op01BeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOP01 where OP1_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_OP01
    Left = 376
    Top = 8
    object Tb_Op01OP1_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP1_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODEMP'
    end
    object Tb_Op01OP1_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Tb_Op01OP1_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Tb_Op01OP1_DATAPREV: TDateTimeField
      DisplayLabel = 'Data Prevista'
      FieldName = 'OP1_DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Tb_Op01OP1_LOTE: TStringField
      DisplayLabel = 'Lote de Fabrica'#231#227'o'
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Tb_Op01OP1_DATAVEN: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'OP1_DATAVEN'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAVEN'
    end
    object Tb_Op01OP1_TMPPREV: TFloatField
      DisplayLabel = 'Valor Previsto em Mat'#233'ria Prima'
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
    end
    object Tb_Op01OP1_TMPUTIL: TFloatField
      DisplayLabel = 'Valor Utilizado em Mat'#233'ria Prima'
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
    end
    object Tb_Op01OP1_TOTPREV: TFloatField
      DisplayLabel = 'Total em Reais Previsto a ser Produzido'
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
    end
    object Tb_Op01OP1_TOTPROD: TFloatField
      DisplayLabel = 'Total Em Reais Produzido'
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
    end
    object Tb_Op01OP1_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Tb_Op01OP1_OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'OP1_OBS01'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS01'
      Size = 60
    end
    object Tb_Op01OP1_OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'OP1_OBS02'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS02'
      Size = 60
    end
    object Tb_Op01OP1_OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'OP1_OBS03'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS03'
      Size = 60
    end
    object Tb_Op01OP1_OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'OP1_OBS04'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS04'
      Size = 60
    end
    object Tb_Op01OP1_OBS05: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 05'
      FieldName = 'OP1_OBS05'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS05'
      Size = 60
    end
    object Tb_Op01OP1_OBS06: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 06'
      FieldName = 'OP1_OBS06'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS06'
      Size = 60
    end
    object Tb_Op01OP1_OBS07: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 07'
      FieldName = 'OP1_OBS07'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS07'
      Size = 60
    end
    object Tb_Op01OP1_OBS08: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 08'
      FieldName = 'OP1_OBS08'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS08'
      Size = 60
    end
    object Tb_Op01OP1_OBS09: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 09'
      FieldName = 'OP1_OBS09'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS09'
      Size = 60
    end
    object Tb_Op01OP1_OBS10: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 10'
      FieldName = 'OP1_OBS10'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS10'
      Size = 60
    end
    object Tb_Op01OP1_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Tb_Op01OP1_LOTSEQ: TFloatField
      FieldName = 'OP1_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTSEQ'
    end
    object Tb_Op01OP1_FABENV: TFloatField
      FieldName = 'OP1_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_FABENV'
    end
    object Tb_Op01OP1_ORIGEM: TFloatField
      FieldName = 'OP1_ORIGEM'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Tb_Op01OP1_SITMP: TFloatField
      FieldName = 'OP1_SITMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITMP'
    end
    object Tb_Op01OP1_SITACAB: TFloatField
      FieldName = 'OP1_SITACAB'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITACAB'
    end
    object Tb_Op01OP1_SITUACAO: TFloatField
      FieldName = 'OP1_SITUACAO'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITUACAO'
    end
    object Tb_Op01OP1_QTDMAN: TFloatField
      FieldName = 'OP1_QTDMAN'
      Origin = 'SG_ASSOC.CADOP01.OP1_QTDMAN'
    end
    object Tb_Op01OP1_LOCARMAZENAMENTO: TFloatField
      FieldName = 'OP1_LOCARMAZENAMENTO'
    end
    object Tb_Op01OP1_PEDORI_CHAVE: TFloatField
      FieldName = 'OP1_PEDORI_CHAVE'
    end
    object Tb_Op01OP1_PEDORI_LOTSEQ: TFloatField
      FieldName = 'OP1_PEDORI_LOTSEQ'
    end
    object Tb_Op01OP1_PEDORI_CODEMP: TFloatField
      FieldName = 'OP1_PEDORI_CODEMP'
    end
    object Tb_Op01OP1_CHAVE_FRAC: TFloatField
      FieldName = 'OP1_CHAVE_FRAC'
    end
    object Tb_Op01OP1_CHAVE_FRAC_ANO: TFloatField
      FieldName = 'OP1_CHAVE_FRAC_ANO'
    end
    object Tb_Op01OP1_TIPO_OP: TFloatField
      FieldName = 'OP1_TIPO_OP'
    end
    object Tb_Op01OP1_NOMEREL_PADRAO: TStringField
      FieldName = 'OP1_NOMEREL_PADRAO'
      Size = 254
    end
    object Tb_Op01OP1_DATFAB: TDateTimeField
      FieldName = 'OP1_DATFAB'
    end
  end
  object U_OP01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP01'
      'set'
      '  OP1_CODEMP = :OP1_CODEMP,'
      '  OP1_CODIGO = :OP1_CODIGO,'
      '  OP1_DATA = :OP1_DATA,'
      '  OP1_DATAPREV = :OP1_DATAPREV,'
      '  OP1_LOTE = :OP1_LOTE,'
      '  OP1_DATAVEN = :OP1_DATAVEN,'
      '  OP1_DATFAB = :OP1_DATFAB,'
      '  OP1_TMPPREV = :OP1_TMPPREV,'
      '  OP1_TMPUTIL = :OP1_TMPUTIL,'
      '  OP1_TOTPREV = :OP1_TOTPREV,'
      '  OP1_TOTPROD = :OP1_TOTPROD,'
      '  OP1_STATUS = :OP1_STATUS,'
      '  OP1_OBS01 = :OP1_OBS01,'
      '  OP1_OBS02 = :OP1_OBS02,'
      '  OP1_OBS03 = :OP1_OBS03,'
      '  OP1_OBS04 = :OP1_OBS04,'
      '  OP1_OBS05 = :OP1_OBS05,'
      '  OP1_OBS06 = :OP1_OBS06,'
      '  OP1_OBS07 = :OP1_OBS07,'
      '  OP1_OBS08 = :OP1_OBS08,'
      '  OP1_OBS09 = :OP1_OBS09,'
      '  OP1_OBS10 = :OP1_OBS10,'
      '  OP1_NOME = :OP1_NOME,'
      '  OP1_LOTSEQ = :OP1_LOTSEQ,'
      '  OP1_FABENV = :OP1_FABENV,'
      '  OP1_ORIGEM = :OP1_ORIGEM,'
      '  OP1_SITMP = :OP1_SITMP,'
      '  OP1_SITACAB = :OP1_SITACAB,'
      '  OP1_SITUACAO = :OP1_SITUACAO,'
      '  OP1_QTDMAN = :OP1_QTDMAN,'
      '  OP1_LOCARMAZENAMENTO = :OP1_LOCARMAZENAMENTO'
      
        '  ,OP1_PEDORI_CHAVE=:OP1_PEDORI_CHAVE,OP1_PEDORI_LOTSEQ=:OP1_PED' +
        'ORI_LOTSEQ,OP1_PEDORI_CODEMP=:OP1_PEDORI_CODEMP'
      '  ,OP1_CHAVE_FRAC =:OP1_CHAVE_FRAC'
      '  ,OP1_CHAVE_FRAC_ANO =:OP1_CHAVE_FRAC_ANO'
      '  ,OP1_TIPO_OP =:OP1_TIPO_OP'
      '  ,OP1_NOMEREL_PADRAO =:OP1_NOMEREL_PADRAO'
      'where'
      '  OP1_CODEMP = :OLD_OP1_CODEMP and'
      '  OP1_CODIGO = :OLD_OP1_CODIGO and'
      '  OP1_LOTSEQ = :OLD_OP1_LOTSEQ and'
      '  OP1_FABENV = :OLD_OP1_FABENV')
    InsertSQL.Strings = (
      'insert into CADOP01'
      '  (OP1_CODEMP, OP1_CODIGO, OP1_DATA, OP1_DATAPREV, OP1_LOTE, '
      'OP1_DATFAB,OP1_DATAVEN,'
      '   OP1_TMPPREV, OP1_TMPUTIL, OP1_TOTPREV, OP1_TOTPROD, '
      'OP1_STATUS, OP1_OBS01, '
      
        '   OP1_OBS02, OP1_OBS03, OP1_OBS04, OP1_OBS05, OP1_OBS06, OP1_OB' +
        'S07,'
      'OP1_OBS08, '
      '   OP1_OBS09, OP1_OBS10, OP1_NOME, OP1_LOTSEQ, OP1_FABENV, '
      'OP1_ORIGEM, '
      
        '   OP1_SITMP, OP1_SITACAB, OP1_SITUACAO, OP1_QTDMAN,OP1_LOCARMAZ' +
        'ENAMENTO'
      ',OP1_PEDORI_CHAVE,OP1_PEDORI_LOTSEQ,OP1_PEDORI_CODEMP'
      
        ',OP1_CHAVE_FRAC,OP1_CHAVE_FRAC_ANO,OP1_TIPO_OP,OP1_NOMEREL_PADRA' +
        'O'
      '   )'
      'values'
      
        '  (:OP1_CODEMP, :OP1_CODIGO, :OP1_DATA, :OP1_DATAPREV, :OP1_LOTE' +
        ','
      ':OP1_DATFAB,:OP1_DATAVEN,'
      '   :OP1_TMPPREV, :OP1_TMPUTIL, :OP1_TOTPREV, :OP1_TOTPROD,'
      ':OP1_STATUS,'
      '   :OP1_OBS01, :OP1_OBS02, :OP1_OBS03, :OP1_OBS04, :OP1_OBS05,'
      ':OP1_OBS06,'
      '   :OP1_OBS07, :OP1_OBS08, :OP1_OBS09, :OP1_OBS10, :OP1_NOME,'
      ':OP1_LOTSEQ,'
      
        '   :OP1_FABENV, :OP1_ORIGEM, :OP1_SITMP, :OP1_SITACAB, :OP1_SITU' +
        'ACAO,'
      ':OP1_QTDMAN,:OP1_LOCARMAZENAMENTO'
      ',:OP1_PEDORI_CHAVE,:OP1_PEDORI_LOTSEQ,:OP1_PEDORI_CODEMP'
      
        ',:OP1_CHAVE_FRAC,:OP1_CHAVE_FRAC_ANO,:OP1_TIPO_OP,:OP1_NOMEREL_P' +
        'ADRAO'
      ')')
    DeleteSQL.Strings = (
      'delete from CADOP01'
      'where'
      '  OP1_CODEMP = :OLD_OP1_CODEMP and'
      '  OP1_CODIGO = :OLD_OP1_CODIGO and'
      '  OP1_LOTSEQ = :OLD_OP1_LOTSEQ and'
      '  OP1_FABENV = :OLD_OP1_FABENV')
    Left = 396
    Top = 8
  end
  object Src_Op01: TDataSource
    DataSet = Tb_Op01
    Left = 424
    Top = 9
  end
  object Tb_Op02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Op02BeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP2_CODEMP,'
      '       OP2_CODIGO,'
      '       OP2_SEQ,'
      '       OP2_CODPRO,'
      '       OP2_NUMERO,'
      '       OP2_QTDPREV,'
      '       OP2_QTDPROD,'
      '       OP2_PU,'
      '       OP2_LOTSEQ,'
      '       OP2_FABENV,'
      '       OP2_DTVCTO,'
      '       OP2_FAB_CHORI,'
      '       OP2_FAB_CODIGO,'
      '       OP2_FAB_LOTE,'
      '       OP2_FAB_VCTO,'
      '       OP2_FAB_DTFAB,'
      '       OP2_FAB_QTD,'
      '       OP2_FAB_PU,'
      '       OP2_SITACAB,'
      '       OP2_ORIGEM,'
      '       PDNOME'
      '       ,PDMARCA'
      '       ,PDUND'
      '       ,PDQTDGRML'
      '       ,PDPRZVAL'
      '       ,PDREGMS'
      '       ,PDCODGRU AS CODGRU'
      '       ,PDNOMGRU AS NOMGRU'
      'from CADOP02,CADPRO'
      'where OP2_CODEMP is null'
      'and PDCODPRO=OP2_CODPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op02
    Left = 368
    Top = 55
    object Tb_Op02OP2_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP2_CODEMP'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODEMP'
    end
    object Tb_Op02OP2_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP2_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODIGO'
    end
    object Tb_Op02OP2_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP2_SEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_SEQ'
    end
    object Tb_Op02OP2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'OP2_CODPRO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODPRO'
    end
    object Tb_Op02OP2_NUMERO: TStringField
      DisplayLabel = 'Grade do Produto'
      FieldName = 'OP2_NUMERO'
      Origin = 'SG_ASSOC.CADOP02.OP2_NUMERO'
    end
    object Tb_Op02OP2_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP2_QTDPREV'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPREV'
    end
    object Tb_Op02OP2_QTDPROD: TFloatField
      DisplayLabel = 'Quantidade Produzida'
      FieldName = 'OP2_QTDPROD'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPROD'
    end
    object Tb_Op02OP2_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'OP2_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_PU'
    end
    object Tb_Op02OP2_LOTSEQ: TFloatField
      FieldName = 'OP2_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_LOTSEQ'
    end
    object Tb_Op02OP2_FABENV: TFloatField
      FieldName = 'OP2_FABENV'
      Origin = 'SG_ASSOC.CADOP02.OP2_FABENV'
    end
    object Tb_Op02OP2_DTVCTO: TDateTimeField
      FieldName = 'OP2_DTVCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_DTVCTO'
    end
    object Tb_Op02OP2_FAB_CHORI: TFloatField
      FieldName = 'OP2_FAB_CHORI'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CHORI'
    end
    object Tb_Op02OP2_FAB_CODIGO: TFloatField
      FieldName = 'OP2_FAB_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CODIGO'
    end
    object Tb_Op02OP2_FAB_VCTO: TDateTimeField
      FieldName = 'OP2_FAB_VCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_VCTO'
    end
    object Tb_Op02OP2_FAB_QTD: TFloatField
      FieldName = 'OP2_FAB_QTD'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_QTD'
    end
    object Tb_Op02OP2_FAB_LOTE: TStringField
      FieldName = 'OP2_FAB_LOTE'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_LOTE'
    end
    object Tb_Op02OP2_FAB_DTFAB: TDateTimeField
      FieldName = 'OP2_FAB_DTFAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_DTFAB'
    end
    object Tb_Op02OP2_FAB_PU: TFloatField
      FieldName = 'OP2_FAB_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_PU'
    end
    object Tb_Op02OP2_ORIGEM: TFloatField
      FieldName = 'OP2_ORIGEM'
      Origin = 'SG_ASSOC.CADOP02.OP2_ORIGEM'
    end
    object Tb_Op02OP2_SITACAB: TFloatField
      FieldName = 'OP2_SITACAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_SITACAB'
    end
    object Tb_Op02PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op02PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op02PDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Tb_Op02PDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_Op02PDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_Op02CODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op02NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op02PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
  end
  object U_Op02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP02'
      'set'
      '  OP2_CODEMP = :OP2_CODEMP,'
      '  OP2_CODIGO = :OP2_CODIGO,'
      '  OP2_SEQ = :OP2_SEQ,'
      '  OP2_CODPRO = :OP2_CODPRO,'
      '  OP2_NUMERO = :OP2_NUMERO,'
      '  OP2_QTDPREV = :OP2_QTDPREV,'
      '  OP2_QTDPROD = :OP2_QTDPROD,'
      '  OP2_PU = :OP2_PU,'
      '  OP2_LOTSEQ = :OP2_LOTSEQ,'
      '  OP2_FABENV = :OP2_FABENV,'
      '  OP2_DTVCTO = :OP2_DTVCTO,'
      '  OP2_FAB_CHORI = :OP2_FAB_CHORI,'
      '  OP2_FAB_CODIGO = :OP2_FAB_CODIGO,'
      '  OP2_FAB_LOTE = :OP2_FAB_LOTE,'
      '  OP2_FAB_VCTO = :OP2_FAB_VCTO,'
      '  OP2_FAB_DTFAB = :OP2_FAB_DTFAB,'
      '  OP2_FAB_QTD = :OP2_FAB_QTD,'
      '  OP2_FAB_PU = :OP2_FAB_PU,'
      '  OP2_SITACAB = :OP2_SITACAB,'
      '  OP2_ORIGEM = :OP2_ORIGEM'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    InsertSQL.Strings = (
      'insert into CADOP02'
      '  (OP2_CODEMP, OP2_CODIGO, OP2_SEQ, OP2_CODPRO, OP2_NUMERO, '
      'OP2_QTDPREV, '
      '   OP2_QTDPROD, OP2_PU, OP2_LOTSEQ, OP2_FABENV, OP2_DTVCTO, '
      'OP2_FAB_CHORI, '
      '   OP2_FAB_CODIGO, OP2_FAB_LOTE, OP2_FAB_VCTO, OP2_FAB_DTFAB, '
      'OP2_FAB_QTD, '
      '   OP2_FAB_PU, OP2_SITACAB, OP2_ORIGEM)'
      'values'
      
        '  (:OP2_CODEMP, :OP2_CODIGO, :OP2_SEQ, :OP2_CODPRO, :OP2_NUMERO,' +
        ' '
      ':OP2_QTDPREV, '
      
        '   :OP2_QTDPROD, :OP2_PU, :OP2_LOTSEQ, :OP2_FABENV, :OP2_DTVCTO,' +
        ' '
      ':OP2_FAB_CHORI, '
      
        '   :OP2_FAB_CODIGO, :OP2_FAB_LOTE, :OP2_FAB_VCTO, :OP2_FAB_DTFAB' +
        ', '
      ':OP2_FAB_QTD, '
      '   :OP2_FAB_PU, :OP2_SITACAB, :OP2_ORIGEM)')
    DeleteSQL.Strings = (
      'delete from CADOP02'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    Left = 398
    Top = 56
  end
  object Src_Op02: TDataSource
    DataSet = Tb_Op02
    Left = 426
    Top = 56
  end
  object Tb_Op03: TQuery
    CachedUpdates = True
    BeforePost = Tb_Op03BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Op03CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP3_CODEMP ,'
      '  OP3_CODIGO,'
      '  OP3_SEQ,'
      '  OP3_CODMAT,'
      '  OP3_NUMERO,'
      '  OP3_QTDPREV,'
      '  OP3_QTDUTIL,'
      '  OP3_PU,'
      '  OP3_LOTSEQ,'
      '  OP3_FABENV,'
      '  OP3_LOTE,'
      '  OP3_LOTE_RE,'
      '  OP3_DTVCTO,'
      '  OP3_SITMP,'
      '  OP3_ORIGEM'
      '  ,PDCODPRO'
      '  ,PDNOME'
      '  ,PDUND'
      '  ,PDNOME2'
      ' ,PDCODGRU AS CODGRU'
      ' ,PDNOMGRU AS NOMGRU'
      ' ,PDMARCA'
      ' ,CPORDEM'
      ' ,CPCODPRO'
      ' ,CPNUMERO'
      ' ,CPCODMAT'
      ' ,CPCODPRO_ACAB'
      ' ,CPMPNUM'
      ' ,CPQUANT'
      ' ,CPPU'
      ' ,CPVLRINC'
      ' ,CPALIQORI'
      ' ,CPALICMSCRED'
      ' ,CPICMSCRED'
      ' ,CPTIPO'
      ' ,CPQTD_PAD'
      ' ,CPPERCENT'
      ' ,CPPERCENT_REST'
      '   from CADOP03,CADPRO,CADCOMP'
      '  where PDCODPRO=OP3_CODMAT'
      '    and CPCODEMP=PDCODEMP and PDCODEMP=CPCODEMP and'
      '     CPCODMAT=PDCODPRO and (CPTIPO=1)'
      '     and CPCODPRO=OP3_CODMAT'
      '  and PDCODPRO is null'
      ''
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op03
    Left = 369
    Top = 102
    object Tb_Op03OP3_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP3_CODEMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODEMP'
    end
    object Tb_Op03OP3_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP3_CODIGO'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODIGO'
    end
    object Tb_Op03OP3_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP3_SEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_SEQ'
    end
    object Tb_Op03OP3_CODMAT: TFloatField
      DisplayLabel = 'C'#243'digo Mat'#233'ria Prima'
      FieldName = 'OP3_CODMAT'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODMAT'
    end
    object Tb_Op03OP3_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero/Grade/Cor Materia Prima'
      FieldName = 'OP3_NUMERO'
      Origin = 'SG_ASSOC.CADOP03.OP3_NUMERO'
    end
    object Tb_Op03OP3_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Tb_Op03OP3_QTDUTIL: TFloatField
      DisplayLabel = 'Quantidade Utilizada'
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Tb_Op03OP3_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Tb_Op03OP3_LOTSEQ: TFloatField
      FieldName = 'OP3_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTSEQ'
    end
    object Tb_Op03OP3_FABENV: TFloatField
      FieldName = 'OP3_FABENV'
      Origin = 'SG_ASSOC.CADOP03.OP3_FABENV'
    end
    object Tb_Op03OP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Tb_Op03OP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Tb_Op03OP3_SITMP: TFloatField
      FieldName = 'OP3_SITMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_SITMP'
    end
    object Tb_Op03OP3_ORIGEM: TFloatField
      FieldName = 'OP3_ORIGEM'
      Origin = 'SG_ASSOC.CADOP03.OP3_ORIGEM'
    end
    object Tb_Op03PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_Op03PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op03PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op03PDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_Op03CODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op03NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op03PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Op03CPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Op03CPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Op03CPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Op03CPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Op03CPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Op03CPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Op03CPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Op03CPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Op03CPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Op03CPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Op03CPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Op03CPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Op03CPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Op03CPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Op03CPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Op03CPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Op03observacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacao'
      Size = 10
      Calculated = True
    end
    object Tb_Op03OP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
    object Tb_Op03OP3_DTFAB: TDateTimeField
      FieldName = 'OP3_DTFAB'
    end
  end
  object U_Op03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP03'
      'set'
      '  OP3_CODEMP = :OP3_CODEMP,'
      '  OP3_CODIGO = :OP3_CODIGO,'
      '  OP3_SEQ = :OP3_SEQ,'
      '  OP3_CODMAT = :OP3_CODMAT,'
      '  OP3_NUMERO = :OP3_NUMERO,'
      '  OP3_QTDPREV = :OP3_QTDPREV,'
      '  OP3_QTDUTIL = :OP3_QTDUTIL,'
      '  OP3_PU = :OP3_PU,'
      '  OP3_LOTSEQ = :OP3_LOTSEQ,'
      '  OP3_FABENV = :OP3_FABENV,'
      '  OP3_LOTE = :OP3_LOTE,'
      '  OP3_LOTE_RE = :OP3_LOTE_RE,'
      '  OP3_DTVCTO = :OP3_DTVCTO,'
      '  OP3_SITMP = :OP3_SITMP,'
      '  OP3_ORIGEM = :OP3_ORIGEM,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDNOME = :PDNOME,'
      '  PDUND = :PDUND,'
      '  PDNOME2 = :PDNOME2'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    InsertSQL.Strings = (
      'insert into CADOP03'
      '  (OP3_CODEMP, OP3_CODIGO, OP3_SEQ, OP3_CODMAT, OP3_NUMERO, '
      'OP3_QTDPREV, '
      '   OP3_QTDUTIL, OP3_PU, OP3_LOTSEQ, OP3_FABENV, OP3_LOTE, '
      'OP3_LOTE_RE, '
      '   OP3_DTVCTO, OP3_SITMP, OP3_ORIGEM, PDCODPRO, PDNOME, PDUND, '
      'PDNOME2)'
      'values'
      
        '  (:OP3_CODEMP, :OP3_CODIGO, :OP3_SEQ, :OP3_CODMAT, :OP3_NUMERO,' +
        ' '
      ':OP3_QTDPREV, '
      '   :OP3_QTDUTIL, :OP3_PU, :OP3_LOTSEQ, :OP3_FABENV, :OP3_LOTE, '
      ':OP3_LOTE_RE, '
      
        '   :OP3_DTVCTO, :OP3_SITMP, :OP3_ORIGEM, :PDCODPRO, :PDNOME, :PD' +
        'UND, '
      ':PDNOME2)')
    DeleteSQL.Strings = (
      'delete from CADOP03'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    Left = 399
    Top = 102
  end
  object Src_Op03: TDataSource
    DataSet = Tb_Op03
    Left = 428
    Top = 103
  end
  object Tb_OpET: TQuery
    CachedUpdates = True
    BeforePost = Tb_OpETBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOPET where OPE_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_OPET
    Left = 369
    Top = 152
    object Tb_OpETOPE_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OPE_CODEMP'
      Origin = 'SG_ASSOC.CADOPET.OPE_CODEMP'
    end
    object Tb_OpETOPE_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPE_CODIGO'
      Origin = 'SG_ASSOC.CADOPET.OPE_CODIGO'
    end
    object Tb_OpETOPE_CODETA: TFloatField
      DisplayLabel = 'Sequencia da Etapa'
      FieldName = 'OPE_CODETA'
      Origin = 'SG_ASSOC.CADOPET.OPE_CODETA'
    end
    object Tb_OpETOPE_NOMETA: TStringField
      DisplayLabel = 'Descri'#231#227'o da Etapa'
      FieldName = 'OPE_NOMETA'
      Origin = 'SG_ASSOC.CADOPET.OPE_NOMETA'
      Size = 40
    end
    object Tb_OpETOPE_NOME: TStringField
      DisplayLabel = 'Nome do Respons'#225'vel'
      FieldName = 'OPE_NOME'
      Origin = 'SG_ASSOC.CADOPET.OPE_NOME'
      Size = 40
    end
    object Tb_OpETOPE_DATAI: TDateTimeField
      DisplayLabel = 'Data de Inicio'
      FieldName = 'OPE_DATAI'
      Origin = 'SG_ASSOC.CADOPET.OPE_DATAI'
    end
    object Tb_OpETOPE_HORAI: TStringField
      DisplayLabel = 'Hora do Inicio'
      FieldName = 'OPE_HORAI'
      Origin = 'SG_ASSOC.CADOPET.OPE_HORAI'
      Size = 8
    end
    object Tb_OpETOPE_DATAT: TDateTimeField
      DisplayLabel = 'Data T'#233'rmino'
      FieldName = 'OPE_DATAT'
      Origin = 'SG_ASSOC.CADOPET.OPE_DATAT'
    end
    object Tb_OpETOPE_HORAT: TStringField
      DisplayLabel = 'Hora T'#233'rmino'
      FieldName = 'OPE_HORAT'
      Origin = 'SG_ASSOC.CADOPET.OPE_HORAT'
      Size = 8
    end
    object Tb_OpETOPE_LOTSEQ: TFloatField
      FieldName = 'OPE_LOTSEQ'
      Origin = 'SG_ASSOC.CADOPET.OPE_LOTSEQ'
    end
    object Tb_OpETOPE_FABENV: TFloatField
      FieldName = 'OPE_FABENV'
      Origin = 'SG_ASSOC.CADOPET.OPE_FABENV'
    end
  end
  object U_OPET: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOPET'
      'set'
      '  OPE_CODEMP = :OPE_CODEMP,'
      '  OPE_CODIGO = :OPE_CODIGO,'
      '  OPE_CODETA = :OPE_CODETA,'
      '  OPE_NOMETA = :OPE_NOMETA,'
      '  OPE_NOME = :OPE_NOME,'
      '  OPE_DATAI = :OPE_DATAI,'
      '  OPE_HORAI = :OPE_HORAI,'
      '  OPE_DATAT = :OPE_DATAT,'
      '  OPE_HORAT = :OPE_HORAT,'
      '  OPE_LOTSEQ = :OPE_LOTSEQ,'
      '  OPE_FABENV = :OPE_FABENV'
      'where'
      '  OPE_CODEMP = :OLD_OPE_CODEMP and'
      '  OPE_CODIGO = :OLD_OPE_CODIGO and'
      '  OPE_CODETA = :OLD_OPE_CODETA')
    InsertSQL.Strings = (
      'insert into CADOPET'
      '  (OPE_CODEMP, OPE_CODIGO, OPE_CODETA, OPE_NOMETA, OPE_NOME, '
      'OPE_DATAI, '
      '   OPE_HORAI, OPE_DATAT, OPE_HORAT, OPE_LOTSEQ, OPE_FABENV)'
      'values'
      
        '  (:OPE_CODEMP, :OPE_CODIGO, :OPE_CODETA, :OPE_NOMETA, :OPE_NOME' +
        ', '
      ':OPE_DATAI, '
      '   :OPE_HORAI, :OPE_DATAT, :OPE_HORAT, :OPE_LOTSEQ, :OPE_FABENV)')
    DeleteSQL.Strings = (
      'delete from CADOPET'
      'where'
      '  OPE_CODEMP = :OLD_OPE_CODEMP and'
      '  OPE_CODIGO = :OLD_OPE_CODIGO and'
      '  OPE_CODETA = :OLD_OPE_CODETA')
    Left = 397
    Top = 152
  end
  object Src_OPEt: TDataSource
    DataSet = Tb_OpET
    Left = 426
    Top = 152
  end
  object Tb_Proc: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ProcBeforeInsert
    AfterInsert = Tb_ProcAfterInsert
    BeforePost = Tb_ProcBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPROC where CP_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Proc
    Left = 368
    Top = 199
    object Tb_ProcCP_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CP_CODEMP'
      Origin = 'SG_ASSOC.CADPROC.CP_CODEMP'
    end
    object Tb_ProcCP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CP_CODPRO'
      Origin = 'SG_ASSOC.CADPROC.CP_CODPRO'
    end
    object Tb_ProcCP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CP_NOME'
      Origin = 'SG_ASSOC.CADPROC.CP_NOME'
      Size = 40
    end
    object Tb_ProcCP_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CP_DESCRICAO'
      Origin = 'SG_ASSOC.CADPROC.CP_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object U_Proc: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPROC'
      'set'
      '  CP_CODEMP = :CP_CODEMP,'
      '  CP_CODPRO = :CP_CODPRO,'
      '  CP_NOME = :CP_NOME,'
      '  CP_DESCRICAO = :CP_DESCRICAO'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_NOME = :OLD_CP_NOME')
    InsertSQL.Strings = (
      'insert into CADPROC'
      '  (CP_CODEMP, CP_CODPRO, CP_NOME, CP_DESCRICAO)'
      'values'
      '  (:CP_CODEMP, :CP_CODPRO, :CP_NOME, :CP_DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from CADPROC'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_NOME = :OLD_CP_NOME')
    Left = 398
    Top = 199
  end
  object Src_Proc: TDataSource
    DataSet = Tb_Proc
    Left = 427
    Top = 199
  end
  object Tb_Comp02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Comp02BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Comp02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPROC02 where'
      '    CP_CODEMP       like :CODEMP'
      'and CP_CODPRO_EMPRO like :CODPRO_EMPRO'
      'and CP_CODPRO       like :CODPRO'
      'order by CP_CODPRO_EMPRO,CP_CODPRO')
    UpdateObject = U_Comp02
    Left = 17
    Top = 99
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO_EMPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Comp02CP_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CP_CODEMP'
      Origin = 'SG_ASSOC.CADPROC02.CP_CODEMP'
    end
    object Tb_Comp02CP_CODPRO: TFloatField
      DisplayLabel = 'Cod.Pro.Acabado'
      FieldName = 'CP_CODPRO'
      Origin = 'SG_ASSOC.CADPROC02.CP_CODPRO'
    end
    object Tb_Comp02CP_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o do Procedimento'
      FieldName = 'CP_DESCRICAO'
      Origin = 'SG_ASSOC.CADPROC02.CP_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_Comp02CP_TESTE01: TStringField
      DisplayLabel = 'Teste 01'
      FieldName = 'CP_TESTE01'
      Origin = 'SG_ASSOC.CADPROC02.CP_TESTE01'
      Size = 100
    end
    object Tb_Comp02CP_TESTE02: TStringField
      DisplayLabel = 'Teste 02'
      FieldName = 'CP_TESTE02'
      Origin = 'SG_ASSOC.CADPROC02.CP_TESTE02'
      Size = 100
    end
    object Tb_Comp02CP_TESTE03: TStringField
      DisplayLabel = 'Teste 03'
      FieldName = 'CP_TESTE03'
      Origin = 'SG_ASSOC.CADPROC02.CP_TESTE03'
      Size = 100
    end
    object Tb_Comp02CP_TESTE04: TStringField
      DisplayLabel = 'Teste 04'
      FieldName = 'CP_TESTE04'
      Origin = 'SG_ASSOC.CADPROC02.CP_TESTE04'
      Size = 100
    end
    object Tb_Comp02CP_ESP01: TStringField
      DisplayLabel = 'Especifica'#231#245'es 01'
      FieldName = 'CP_ESP01'
      Origin = 'SG_ASSOC.CADPROC02.CP_ESP01'
      Size = 100
    end
    object Tb_Comp02CP_ESP02: TStringField
      DisplayLabel = 'Especifica'#231#245'es 02'
      FieldName = 'CP_ESP02'
      Origin = 'SG_ASSOC.CADPROC02.CP_ESP02'
      Size = 100
    end
    object Tb_Comp02CP_ESP03: TStringField
      DisplayLabel = 'Especifica'#231#245'es 03'
      FieldName = 'CP_ESP03'
      Origin = 'SG_ASSOC.CADPROC02.CP_ESP03'
      Size = 100
    end
    object Tb_Comp02CP_ESP04: TStringField
      DisplayLabel = 'Especifica'#231#245'es 04'
      FieldName = 'CP_ESP04'
      Origin = 'SG_ASSOC.CADPROC02.CP_ESP04'
      Size = 100
    end
    object Tb_Comp02CP_MET01: TStringField
      DisplayLabel = 'M'#233'todo 01'
      FieldName = 'CP_MET01'
      Origin = 'SG_ASSOC.CADPROC02.CP_MET01'
      Size = 100
    end
    object Tb_Comp02CP_MET02: TStringField
      DisplayLabel = 'M'#233'todo 02'
      FieldName = 'CP_MET02'
      Origin = 'SG_ASSOC.CADPROC02.CP_MET02'
      Size = 100
    end
    object Tb_Comp02CP_MET03: TStringField
      DisplayLabel = 'M'#233'todo 03'
      FieldName = 'CP_MET03'
      Origin = 'SG_ASSOC.CADPROC02.CP_MET03'
      Size = 100
    end
    object Tb_Comp02CP_MET04: TStringField
      DisplayLabel = 'M'#233'todo 04'
      FieldName = 'CP_MET04'
      Origin = 'SG_ASSOC.CADPROC02.CP_MET04'
      Size = 100
    end
    object Tb_Comp02CP_MEDUND: TFloatField
      DisplayLabel = 'Medida Unidade'
      FieldName = 'CP_MEDUND'
      Origin = 'SG_ASSOC.CADPROC02.CP_MEDUND'
    end
    object Tb_Comp02CP_CODPRO_EMPRO: TFloatField
      DisplayLabel = 'C'#243'd.Pro.Prod'
      FieldName = 'CP_CODPRO_EMPRO'
      Origin = 'SG_ASSOC.CADPROC02.CP_CODPRO_EMPRO'
    end
    object Tb_Comp02nompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Tb_Comp02nompro_empro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro_empro'
      Size = 40
      Calculated = True
    end
    object Tb_Comp02porund: TFloatField
      FieldKind = fkCalculated
      FieldName = 'porund'
      Calculated = True
    end
    object Tb_Comp02embpad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'embpad'
      Calculated = True
    end
    object Tb_Comp02qtdgrml: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdgrml'
      Calculated = True
    end
  end
  object U_Comp02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPROC02'
      'set'
      '  CP_CODEMP = :CP_CODEMP,'
      '  CP_CODPRO = :CP_CODPRO,'
      '  CP_DESCRICAO = :CP_DESCRICAO,'
      '  CP_TESTE01 = :CP_TESTE01,'
      '  CP_TESTE02 = :CP_TESTE02,'
      '  CP_TESTE03 = :CP_TESTE03,'
      '  CP_TESTE04 = :CP_TESTE04,'
      '  CP_ESP01 = :CP_ESP01,'
      '  CP_ESP02 = :CP_ESP02,'
      '  CP_ESP03 = :CP_ESP03,'
      '  CP_ESP04 = :CP_ESP04,'
      '  CP_MET01 = :CP_MET01,'
      '  CP_MET02 = :CP_MET02,'
      '  CP_MET03 = :CP_MET03,'
      '  CP_MET04 = :CP_MET04,'
      '  CP_MEDUND = :CP_MEDUND,'
      '  CP_CODPRO_EMPRO = :CP_CODPRO_EMPRO'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_CODPRO_EMPRO = :OLD_CP_CODPRO_EMPRO')
    InsertSQL.Strings = (
      'insert into CADPROC02'
      '  (CP_CODEMP, CP_CODPRO, CP_DESCRICAO, CP_TESTE01, CP_TESTE02, '
      'CP_TESTE03, '
      
        '   CP_TESTE04, CP_ESP01, CP_ESP02, CP_ESP03, CP_ESP04, CP_MET01,' +
        ' '
      'CP_MET02, '
      '   CP_MET03, CP_MET04, CP_MEDUND, CP_CODPRO_EMPRO)'
      'values'
      
        '  (:CP_CODEMP, :CP_CODPRO, :CP_DESCRICAO, :CP_TESTE01, :CP_TESTE' +
        '02, '
      ':CP_TESTE03, '
      
        '   :CP_TESTE04, :CP_ESP01, :CP_ESP02, :CP_ESP03, :CP_ESP04, :CP_' +
        'MET01, '
      
        '   :CP_MET02, :CP_MET03, :CP_MET04, :CP_MEDUND, :CP_CODPRO_EMPRO' +
        ')')
    DeleteSQL.Strings = (
      'delete from CADPROC02'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_CODPRO_EMPRO = :OLD_CP_CODPRO_EMPRO')
    Left = 46
    Top = 98
  end
  object Src_Comp02: TDataSource
    DataSet = Tb_Comp02
    Left = 77
    Top = 100
  end
  object Tb_CQ: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CQBeforeInsert
    AfterInsert = Tb_CQAfterInsert
    BeforePost = Tb_CQBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCQ where'
      '       CQ_CODEMP       like :CODEMP'
      'and CQ_CODPPR       like :CODPPR'
      'and CQ_CODPRO       like :CODPRO'
      '')
    UpdateObject = U_CQ
    Left = 17
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPPR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CQCQ_CODEMP: TFloatField
      FieldName = 'CQ_CODEMP'
      Origin = 'SG_ASSOC.CADCQ.CQ_CODEMP'
    end
    object Tb_CQCQ_CODPPR: TFloatField
      FieldName = 'CQ_CODPPR'
      Origin = 'SG_ASSOC.CADCQ.CQ_CODPPR'
    end
    object Tb_CQCQ_CODPRO: TFloatField
      FieldName = 'CQ_CODPRO'
      Origin = 'SG_ASSOC.CADCQ.CQ_CODPRO'
    end
    object Tb_CQCQ_CODIGO: TFloatField
      FieldName = 'CQ_CODIGO'
      Origin = 'SG_ASSOC.CADCQ.CQ_CODIGO'
    end
    object Tb_CQCQ_TESTE: TStringField
      FieldName = 'CQ_TESTE'
      Origin = 'SG_ASSOC.CADCQ.CQ_TESTE'
      Size = 200
    end
    object Tb_CQCQ_ESP: TStringField
      FieldName = 'CQ_ESP'
      Origin = 'SG_ASSOC.CADCQ.CQ_ESP'
      Size = 200
    end
    object Tb_CQCQ_MET: TStringField
      FieldName = 'CQ_MET'
      Origin = 'SG_ASSOC.CADCQ.CQ_MET'
      Size = 200
    end
  end
  object U_CQ: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCQ'
      'set'
      '  CQ_CODEMP = :CQ_CODEMP,'
      '  CQ_CODPPR = :CQ_CODPPR,'
      '  CQ_CODPRO = :CQ_CODPRO,'
      '  CQ_CODIGO = :CQ_CODIGO,'
      '  CQ_TESTE = :CQ_TESTE,'
      '  CQ_ESP = :CQ_ESP,'
      '  CQ_MET = :CQ_MET'
      'where'
      '  CQ_CODEMP = :OLD_CQ_CODEMP and'
      '  CQ_CODPPR = :OLD_CQ_CODPPR and'
      '  CQ_CODPRO = :OLD_CQ_CODPRO and'
      '  CQ_CODIGO = :OLD_CQ_CODIGO')
    InsertSQL.Strings = (
      'insert into CADCQ'
      
        '  (CQ_CODEMP, CQ_CODPPR, CQ_CODPRO, CQ_CODIGO, CQ_TESTE, CQ_ESP,' +
        ' '
      'CQ_MET)'
      'values'
      '  (:CQ_CODEMP, :CQ_CODPPR, :CQ_CODPRO, :CQ_CODIGO, :CQ_TESTE, '
      ':CQ_ESP, '
      '   :CQ_MET)')
    DeleteSQL.Strings = (
      'delete from CADCQ'
      'where'
      '  CQ_CODEMP = :OLD_CQ_CODEMP and'
      '  CQ_CODPPR = :OLD_CQ_CODPPR and'
      '  CQ_CODPRO = :OLD_CQ_CODPRO and'
      '  CQ_CODIGO = :OLD_CQ_CODIGO')
    Left = 46
    Top = 233
  end
  object Src_CQ: TDataSource
    DataSet = Tb_CQ
    Left = 77
    Top = 234
  end
  object Tb_Os01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOS01 where OS1CODEMP is null')
    Left = 168
    Top = 48
    object Tb_Os01OS1CODEMP: TFloatField
      FieldName = 'OS1CODEMP'
      Origin = 'SG_ASSOC.CADOS01.OS1CODEMP'
    end
    object Tb_Os01OS1LOTSEQ: TFloatField
      FieldName = 'OS1LOTSEQ'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ'
    end
    object Tb_Os01OS1CHAVE: TFloatField
      FieldName = 'OS1CHAVE'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVE'
    end
    object Tb_Os01OS1DATA: TDateTimeField
      FieldName = 'OS1DATA'
      Origin = 'SG_ASSOC.CADOS01.OS1DATA'
    end
    object Tb_Os01OS1DATADEV: TDateTimeField
      FieldName = 'OS1DATADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1DATADEV'
    end
    object Tb_Os01OS1DATAENT: TDateTimeField
      FieldName = 'OS1DATAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAENT'
    end
    object Tb_Os01OS1CODCLI: TFloatField
      FieldName = 'OS1CODCLI'
      Origin = 'SG_ASSOC.CADOS01.OS1CODCLI'
    end
    object Tb_Os01OS1CODVEN: TFloatField
      FieldName = 'OS1CODVEN'
      Origin = 'SG_ASSOC.CADOS01.OS1CODVEN'
    end
    object Tb_Os01OS1OPER: TFloatField
      FieldName = 'OS1OPER'
      Origin = 'SG_ASSOC.CADOS01.OS1OPER'
    end
    object Tb_Os01OS1STATUS: TFloatField
      FieldName = 'OS1STATUS'
      Origin = 'SG_ASSOC.CADOS01.OS1STATUS'
    end
    object Tb_Os01OS1LOTSEQ_CP: TFloatField
      FieldName = 'OS1LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ_CP'
    end
    object Tb_Os01OS1CHAVEPED: TFloatField
      FieldName = 'OS1CHAVEPED'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVEPED'
    end
    object Tb_Os01OS1DEFREC: TBlobField
      FieldName = 'OS1DEFREC'
      Origin = 'SG_ASSOC.CADOS01.OS1DEFREC'
      Size = 1
    end
    object Tb_Os01OS1OBS01: TStringField
      FieldName = 'OS1OBS01'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS01'
      Size = 60
    end
    object Tb_Os01OS1OBS02: TStringField
      FieldName = 'OS1OBS02'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS02'
      Size = 60
    end
    object Tb_Os01OS1OBS03: TStringField
      FieldName = 'OS1OBS03'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS03'
      Size = 60
    end
    object Tb_Os01OS1OBS04: TStringField
      FieldName = 'OS1OBS04'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS04'
      Size = 60
    end
    object Tb_Os01OS1DATAAUT: TDateTimeField
      FieldName = 'OS1DATAAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAAUT'
    end
    object Tb_Os01OS1TOTSER: TFloatField
      FieldName = 'OS1TOTSER'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTSER'
    end
    object Tb_Os01OS1DESCSER: TFloatField
      FieldName = 'OS1DESCSER'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCSER'
    end
    object Tb_Os01OS1TOTPEC: TFloatField
      FieldName = 'OS1TOTPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTPEC'
    end
    object Tb_Os01OS1DESCPEC: TFloatField
      FieldName = 'OS1DESCPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCPEC'
    end
    object Tb_Os01OS1TOTAL: TFloatField
      FieldName = 'OS1TOTAL'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTAL'
    end
    object Tb_Os01OS1ESTREG: TFloatField
      FieldName = 'OS1ESTREG'
      Origin = 'SG_ASSOC.CADOS01.OS1ESTREG'
    end
    object Tb_Os01OS1DATALT: TDateTimeField
      FieldName = 'OS1DATALT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATALT'
    end
    object Tb_Os01OS1CODUSR: TFloatField
      FieldName = 'OS1CODUSR'
      Origin = 'SG_ASSOC.CADOS01.OS1CODUSR'
    end
    object Tb_Os01OS1NOMEAUT: TStringField
      FieldName = 'OS1NOMEAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMEAUT'
      Size = 40
    end
    object Tb_Os01OS1NOMSOL: TStringField
      FieldName = 'OS1NOMSOL'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMSOL'
      Size = 40
    end
  end
  object U_Os01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS01'
      'set'
      '  OS1CODEMP = :OS1CODEMP,'
      '  OS1LOTSEQ = :OS1LOTSEQ,'
      '  OS1CHAVE = :OS1CHAVE,'
      '  OS1DATA = :OS1DATA,'
      '  OS1DATAAUT = :OS1DATAAUT,'
      '  OS1DATADEV = :OS1DATADEV,'
      '  OS1DATAENT = :OS1DATAENT,'
      '  OS1CODCLI = :OS1CODCLI,'
      '  OS1CODVEN = :OS1CODVEN,'
      '  OS1OPER = :OS1OPER,'
      '  OS1DEFREC = :OS1DEFREC,'
      '  OS1OBS01 = :OS1OBS01,'
      '  OS1OBS02 = :OS1OBS02,'
      '  OS1OBS03 = :OS1OBS03,'
      '  OS1OBS04 = :OS1OBS04,'
      '  OS1STATUS = :OS1STATUS,'
      '  OS1LOTSEQ_CP = :OS1LOTSEQ_CP,'
      '  OS1TOTSER = :OS1TOTSER,'
      '  OS1DESCSER = :OS1DESCSER,'
      '  OS1TOTPEC = :OS1TOTPEC,'
      '  OS1DESCPEC = :OS1DESCPEC,'
      '  OS1TOTAL = :OS1TOTAL,'
      '  OS1CHAVEPED = :OS1CHAVEPED,'
      '  OS1ESTREG = :OS1ESTREG,'
      '  OS1DATALT = :OS1DATALT,'
      '  OS1CODUSR = :OS1CODUSR,'
      '  OS1NOMEAUT = :OS1NOMEAUT,'
      '  OS1NOMSOL = :OS1NOMSOL'
      'where'
      '  OS1CODEMP = :OLD_OS1CODEMP and'
      '  OS1LOTSEQ = :OLD_OS1LOTSEQ and'
      '  OS1CHAVE = :OLD_OS1CHAVE and'
      '  OS1DATA = :OLD_OS1DATA')
    InsertSQL.Strings = (
      'insert into CADOS01'
      '  (OS1CODEMP, OS1LOTSEQ, OS1CHAVE, OS1DATA, OS1DATAAUT, '
      'OS1DATADEV, OS1DATAENT, '
      
        '   OS1CODCLI, OS1CODVEN, OS1OPER, OS1DEFREC, OS1OBS01, OS1OBS02,' +
        ' '
      'OS1OBS03, '
      '   OS1OBS04, OS1STATUS, OS1LOTSEQ_CP, OS1TOTSER, OS1DESCSER, '
      'OS1TOTPEC, '
      '   OS1DESCPEC, OS1TOTAL, OS1CHAVEPED, OS1ESTREG, OS1DATALT, '
      'OS1CODUSR, '
      '   OS1NOMEAUT, OS1NOMSOL)'
      'values'
      '  (:OS1CODEMP, :OS1LOTSEQ, :OS1CHAVE, :OS1DATA, :OS1DATAAUT, '
      ':OS1DATADEV, '
      '   :OS1DATAENT, :OS1CODCLI, :OS1CODVEN, :OS1OPER, :OS1DEFREC, '
      ':OS1OBS01, '
      '   :OS1OBS02, :OS1OBS03, :OS1OBS04, :OS1STATUS, :OS1LOTSEQ_CP, '
      ':OS1TOTSER, '
      
        '   :OS1DESCSER, :OS1TOTPEC, :OS1DESCPEC, :OS1TOTAL, :OS1CHAVEPED' +
        ', '
      ':OS1ESTREG, '
      '   :OS1DATALT, :OS1CODUSR, :OS1NOMEAUT, :OS1NOMSOL)')
    DeleteSQL.Strings = (
      'delete from CADOS01'
      'where'
      '  OS1CODEMP = :OLD_OS1CODEMP and'
      '  OS1LOTSEQ = :OLD_OS1LOTSEQ and'
      '  OS1CHAVE = :OLD_OS1CHAVE and'
      '  OS1DATA = :OLD_OS1DATA')
    Left = 196
    Top = 49
  end
  object Src_Os01: TDataSource
    DataSet = Tb_Os01
    Left = 225
    Top = 49
  end
  object Tb_Os02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOS02 where OS2CODEMP is null')
    UpdateObject = U_Os02
    Left = 168
    Top = 91
    object Tb_Os02OS2CODEMP: TFloatField
      FieldName = 'OS2CODEMP'
      Origin = 'SG_ASSOC.CADOS02.OS2CODEMP'
    end
    object Tb_Os02OS2LOTSEQ: TFloatField
      FieldName = 'OS2LOTSEQ'
      Origin = 'SG_ASSOC.CADOS02.OS2LOTSEQ'
    end
    object Tb_Os02OS2CHAVE: TFloatField
      FieldName = 'OS2CHAVE'
      Origin = 'SG_ASSOC.CADOS02.OS2CHAVE'
    end
    object Tb_Os02OS2ITEM: TFloatField
      FieldName = 'OS2ITEM'
      Origin = 'SG_ASSOC.CADOS02.OS2ITEM'
    end
    object Tb_Os02OS2CODPRO: TFloatField
      FieldName = 'OS2CODPRO'
      Origin = 'SG_ASSOC.CADOS02.OS2CODPRO'
    end
    object Tb_Os02OS2MODELO: TStringField
      FieldName = 'OS2MODELO'
      Origin = 'SG_ASSOC.CADOS02.OS2MODELO'
    end
    object Tb_Os02OS2MARCA: TStringField
      FieldName = 'OS2MARCA'
      Origin = 'SG_ASSOC.CADOS02.OS2MARCA'
    end
    object Tb_Os02OS2SERIE: TStringField
      FieldName = 'OS2SERIE'
      Origin = 'SG_ASSOC.CADOS02.OS2SERIE'
    end
    object Tb_Os02OS2NUMPAT: TStringField
      FieldName = 'OS2NUMPAT'
      Origin = 'SG_ASSOC.CADOS02.OS2NUMPAT'
    end
    object Tb_Os02OS2OBS01: TStringField
      FieldName = 'OS2OBS01'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS01'
      Size = 130
    end
    object Tb_Os02OS2OBS02: TStringField
      FieldName = 'OS2OBS02'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS02'
      Size = 130
    end
  end
  object U_Os02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS02'
      'set'
      '  OS2CODEMP = :OS2CODEMP,'
      '  OS2LOTSEQ = :OS2LOTSEQ,'
      '  OS2CHAVE = :OS2CHAVE,'
      '  OS2ITEM = :OS2ITEM,'
      '  OS2CODPRO = :OS2CODPRO,'
      '  OS2MODELO = :OS2MODELO,'
      '  OS2MARCA = :OS2MARCA,'
      '  OS2SERIE = :OS2SERIE,'
      '  OS2NUMPAT = :OS2NUMPAT,'
      '  OS2OBS01 = :OS2OBS01,'
      '  OS2OBS02 = :OS2OBS02'
      'where'
      '  OS2CODEMP = :OLD_OS2CODEMP and'
      '  OS2LOTSEQ = :OLD_OS2LOTSEQ and'
      '  OS2CHAVE = :OLD_OS2CHAVE and'
      '  OS2ITEM = :OLD_OS2ITEM')
    InsertSQL.Strings = (
      'insert into CADOS02'
      '  (OS2CODEMP, OS2LOTSEQ, OS2CHAVE, OS2ITEM, OS2CODPRO, '
      'OS2MODELO, OS2MARCA, '
      '   OS2SERIE, OS2NUMPAT, OS2OBS01, OS2OBS02)'
      'values'
      '  (:OS2CODEMP, :OS2LOTSEQ, :OS2CHAVE, :OS2ITEM, :OS2CODPRO, '
      ':OS2MODELO, '
      '   :OS2MARCA, :OS2SERIE, :OS2NUMPAT, :OS2OBS01, :OS2OBS02)')
    DeleteSQL.Strings = (
      'delete from CADOS02'
      'where'
      '  OS2CODEMP = :OLD_OS2CODEMP and'
      '  OS2LOTSEQ = :OLD_OS2LOTSEQ and'
      '  OS2CHAVE = :OLD_OS2CHAVE and'
      '  OS2ITEM = :OLD_OS2ITEM')
    Left = 196
    Top = 92
  end
  object Src_Os02: TDataSource
    DataSet = Tb_Os02
    Left = 225
    Top = 92
  end
  object Src_Os03: TDataSource
    DataSet = Tb_Os03
    Left = 225
    Top = 137
  end
  object U_Os03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS03'
      'set'
      '  OS3CODEMP = :OS3CODEMP,'
      '  OS3LOTSEQ = :OS3LOTSEQ,'
      '  OS3CHAVE = :OS3CHAVE,'
      '  OS3ITEM = :OS3ITEM,'
      '  OS3CODPRO = :OS3CODPRO,'
      '  OS3QTD = :OS3QTD'
      'where'
      '  OS3CODEMP = :OLD_OS3CODEMP and'
      '  OS3LOTSEQ = :OLD_OS3LOTSEQ and'
      '  OS3CHAVE = :OLD_OS3CHAVE and'
      '  OS3ITEM = :OLD_OS3ITEM')
    InsertSQL.Strings = (
      'insert into CADOS03'
      '  (OS3CODEMP, OS3LOTSEQ, OS3CHAVE, OS3ITEM, OS3CODPRO, OS3QTD)'
      'values'
      
        '  (:OS3CODEMP, :OS3LOTSEQ, :OS3CHAVE, :OS3ITEM, :OS3CODPRO, :OS3' +
        'QTD)')
    DeleteSQL.Strings = (
      'delete from CADOS03'
      'where'
      '  OS3CODEMP = :OLD_OS3CODEMP and'
      '  OS3LOTSEQ = :OLD_OS3LOTSEQ and'
      '  OS3CHAVE = :OLD_OS3CHAVE and'
      '  OS3ITEM = :OLD_OS3ITEM')
    Left = 196
    Top = 137
  end
  object Tb_Os03: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOS03 where OS3CODEMP is null')
    UpdateObject = U_Os03
    Left = 168
    Top = 136
    object Tb_Os03OS3CODEMP: TFloatField
      FieldName = 'OS3CODEMP'
      Origin = 'SG_ASSOC.CADOS03.OS3CODEMP'
    end
    object Tb_Os03OS3LOTSEQ: TFloatField
      FieldName = 'OS3LOTSEQ'
      Origin = 'SG_ASSOC.CADOS03.OS3LOTSEQ'
    end
    object Tb_Os03OS3CHAVE: TFloatField
      FieldName = 'OS3CHAVE'
      Origin = 'SG_ASSOC.CADOS03.OS3CHAVE'
    end
    object Tb_Os03OS3ITEM: TFloatField
      FieldName = 'OS3ITEM'
      Origin = 'SG_ASSOC.CADOS03.OS3ITEM'
    end
    object Tb_Os03OS3CODPRO: TFloatField
      FieldName = 'OS3CODPRO'
      Origin = 'SG_ASSOC.CADOS03.OS3CODPRO'
    end
    object Tb_Os03OS3QTD: TFloatField
      FieldName = 'OS3QTD'
      Origin = 'SG_ASSOC.CADOS03.OS3QTD'
    end
  end
  object Src_Os04: TDataSource
    DataSet = Tb_Os04
    Left = 225
    Top = 180
  end
  object U_Os04: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS04'
      'set'
      '  OS4CODEMP = :OS4CODEMP,'
      '  OS4LOTSEQ = :OS4LOTSEQ,'
      '  OS4CHAVE = :OS4CHAVE,'
      '  OS4ITEM = :OS4ITEM,'
      '  OS4CODPRO = :OS4CODPRO,'
      '  OS4QTD = :OS4QTD,'
      '  OS4PU = :OS4PU,'
      '  OS4DESC01 = :OS4DESC01,'
      '  OS4TOTDES = :OS4TOTDES'
      'where'
      '  OS4CODEMP = :OLD_OS4CODEMP and'
      '  OS4LOTSEQ = :OLD_OS4LOTSEQ and'
      '  OS4CHAVE = :OLD_OS4CHAVE and'
      '  OS4ITEM = :OLD_OS4ITEM')
    InsertSQL.Strings = (
      'insert into CADOS04'
      '  (OS4CODEMP, OS4LOTSEQ, OS4CHAVE, OS4ITEM, OS4CODPRO, OS4QTD, '
      'OS4PU, OS4DESC01, '
      '   OS4TOTDES)'
      'values'
      
        '  (:OS4CODEMP, :OS4LOTSEQ, :OS4CHAVE, :OS4ITEM, :OS4CODPRO, :OS4' +
        'QTD, '
      ':OS4PU, '
      '   :OS4DESC01, :OS4TOTDES)')
    DeleteSQL.Strings = (
      'delete from CADOS04'
      'where'
      '  OS4CODEMP = :OLD_OS4CODEMP and'
      '  OS4LOTSEQ = :OLD_OS4LOTSEQ and'
      '  OS4CHAVE = :OLD_OS4CHAVE and'
      '  OS4ITEM = :OLD_OS4ITEM')
    Left = 196
    Top = 180
  end
  object Tb_Os04: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOS04 where OS4CODEMP is null')
    UpdateObject = U_Os04
    Left = 168
    Top = 179
    object Tb_Os04OS4CODEMP: TFloatField
      FieldName = 'OS4CODEMP'
      Origin = 'SG_ASSOC.CADOS04.OS4CODEMP'
    end
    object Tb_Os04OS4LOTSEQ: TFloatField
      FieldName = 'OS4LOTSEQ'
      Origin = 'SG_ASSOC.CADOS04.OS4LOTSEQ'
    end
    object Tb_Os04OS4CHAVE: TFloatField
      FieldName = 'OS4CHAVE'
      Origin = 'SG_ASSOC.CADOS04.OS4CHAVE'
    end
    object Tb_Os04OS4ITEM: TFloatField
      FieldName = 'OS4ITEM'
      Origin = 'SG_ASSOC.CADOS04.OS4ITEM'
    end
    object Tb_Os04OS4CODPRO: TFloatField
      FieldName = 'OS4CODPRO'
      Origin = 'SG_ASSOC.CADOS04.OS4CODPRO'
    end
    object Tb_Os04OS4QTD: TFloatField
      FieldName = 'OS4QTD'
      Origin = 'SG_ASSOC.CADOS04.OS4QTD'
    end
    object Tb_Os04OS4PU: TFloatField
      FieldName = 'OS4PU'
      Origin = 'SG_ASSOC.CADOS04.OS4PU'
    end
    object Tb_Os04OS4DESC01: TFloatField
      FieldName = 'OS4DESC01'
      Origin = 'SG_ASSOC.CADOS04.OS4DESC01'
    end
    object Tb_Os04OS4TOTDES: TFloatField
      FieldName = 'OS4TOTDES'
      Origin = 'SG_ASSOC.CADOS04.OS4TOTDES'
    end
  end
  object U_Os05: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS05'
      'set'
      '  OS5CODEMP = :OS5CODEMP,'
      '  OS5LOTSEQ = :OS5LOTSEQ,'
      '  OS5CHAVE = :OS5CHAVE,'
      '  OS5ITEM = :OS5ITEM,'
      '  OS5CODPRO = :OS5CODPRO,'
      '  OS5QTD = :OS5QTD,'
      '  OS5PU = :OS5PU,'
      '  OS5DESC01 = :OS5DESC01,'
      '  OS5TOTDES = :OS5TOTDES'
      'where'
      '  OS5CODEMP = :OLD_OS5CODEMP and'
      '  OS5LOTSEQ = :OLD_OS5LOTSEQ and'
      '  OS5CHAVE = :OLD_OS5CHAVE and'
      '  OS5ITEM = :OLD_OS5ITEM')
    InsertSQL.Strings = (
      'insert into CADOS05'
      '  (OS5CODEMP, OS5LOTSEQ, OS5CHAVE, OS5ITEM, OS5CODPRO, OS5QTD, '
      'OS5PU, OS5DESC01, '
      '   OS5TOTDES)'
      'values'
      
        '  (:OS5CODEMP, :OS5LOTSEQ, :OS5CHAVE, :OS5ITEM, :OS5CODPRO, :OS5' +
        'QTD, '
      ':OS5PU, '
      '   :OS5DESC01, :OS5TOTDES)')
    DeleteSQL.Strings = (
      'delete from CADOS05'
      'where'
      '  OS5CODEMP = :OLD_OS5CODEMP and'
      '  OS5LOTSEQ = :OLD_OS5LOTSEQ and'
      '  OS5CHAVE = :OLD_OS5CHAVE and'
      '  OS5ITEM = :OLD_OS5ITEM')
    Left = 196
    Top = 224
  end
  object Tb_Os05: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOS05 where OS5CODEMP is null')
    UpdateObject = U_Os05
    Left = 168
    Top = 223
    object Tb_Os05OS5CODEMP: TFloatField
      FieldName = 'OS5CODEMP'
      Origin = 'SG_ASSOC.CADOS05.OS5CODEMP'
    end
    object Tb_Os05OS5LOTSEQ: TFloatField
      FieldName = 'OS5LOTSEQ'
      Origin = 'SG_ASSOC.CADOS05.OS5LOTSEQ'
    end
    object Tb_Os05OS5CHAVE: TFloatField
      FieldName = 'OS5CHAVE'
      Origin = 'SG_ASSOC.CADOS05.OS5CHAVE'
    end
    object Tb_Os05OS5ITEM: TFloatField
      FieldName = 'OS5ITEM'
      Origin = 'SG_ASSOC.CADOS05.OS5ITEM'
    end
    object Tb_Os05OS5CODPRO: TFloatField
      FieldName = 'OS5CODPRO'
      Origin = 'SG_ASSOC.CADOS05.OS5CODPRO'
    end
    object Tb_Os05OS5QTD: TFloatField
      FieldName = 'OS5QTD'
      Origin = 'SG_ASSOC.CADOS05.OS5QTD'
    end
    object Tb_Os05OS5PU: TFloatField
      FieldName = 'OS5PU'
      Origin = 'SG_ASSOC.CADOS05.OS5PU'
    end
    object Tb_Os05OS5DESC01: TFloatField
      FieldName = 'OS5DESC01'
      Origin = 'SG_ASSOC.CADOS05.OS5DESC01'
    end
    object Tb_Os05OS5TOTDES: TFloatField
      FieldName = 'OS5TOTDES'
      Origin = 'SG_ASSOC.CADOS05.OS5TOTDES'
    end
  end
  object Src_Os05: TDataSource
    DataSet = Tb_Os05
    Left = 225
    Top = 224
  end
  object Tb_Comp03: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPROC02_TEXTO where'
      '    CP_CODEMP       like :CODEMP'
      'and CP_CODPRO_EMPRO like :CODPRO_EMPRO'
      'and CP_CODPRO       like :CODPRO'
      'order by CP_CODPRO_EMPRO,CP_CODPRO,CP_PAGINA')
    UpdateObject = U_Comp03
    Left = 18
    Top = 148
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO_EMPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Comp03CP_CODEMP: TFloatField
      FieldName = 'CP_CODEMP'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODEMP'
    end
    object Tb_Comp03CP_CODPRO: TFloatField
      FieldName = 'CP_CODPRO'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODPRO'
    end
    object Tb_Comp03CP_CODPRO_EMPRO: TFloatField
      FieldName = 'CP_CODPRO_EMPRO'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODPRO_EMPRO'
    end
    object Tb_Comp03CP_PAGINA: TFloatField
      FieldName = 'CP_PAGINA'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_PAGINA'
    end
    object Tb_Comp03CP_TEXTO: TMemoField
      FieldName = 'CP_TEXTO'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_TEXTO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object U_Comp03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPROC02_TEXTO'
      'set'
      '  CP_CODEMP = :CP_CODEMP,'
      '  CP_CODPRO = :CP_CODPRO,'
      '  CP_CODPRO_EMPRO = :CP_CODPRO_EMPRO,'
      '  CP_PAGINA = :CP_PAGINA,'
      '  CP_TEXTO = :CP_TEXTO'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_CODPRO_EMPRO = :OLD_CP_CODPRO_EMPRO and'
      '  CP_PAGINA = :OLD_CP_PAGINA')
    InsertSQL.Strings = (
      'insert into CADPROC02_TEXTO'
      '  (CP_CODEMP, CP_CODPRO, CP_CODPRO_EMPRO, CP_PAGINA, CP_TEXTO)'
      'values'
      
        '  (:CP_CODEMP, :CP_CODPRO, :CP_CODPRO_EMPRO, :CP_PAGINA, :CP_TEX' +
        'TO)')
    DeleteSQL.Strings = (
      'delete from CADPROC02_TEXTO'
      'where'
      '  CP_CODEMP = :OLD_CP_CODEMP and'
      '  CP_CODPRO = :OLD_CP_CODPRO and'
      '  CP_CODPRO_EMPRO = :OLD_CP_CODPRO_EMPRO and'
      '  CP_PAGINA = :OLD_CP_PAGINA')
    Left = 47
    Top = 147
  end
  object Src_Comp03: TDataSource
    DataSet = Tb_Comp03
    Left = 75
    Top = 148
  end
  object Tb_Texto: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE,'
      ' CP_PAGINA,CP_IMPRIME'
      ',CP_IMPMP,CP_IMPEMB,CP_AVANCPAG'
      ' from CADPROC02_TEXTO  where'
      'CP_CODEMP=0 and'
      'CP_CODPRO_EMPRO=0'
      ' and CP_CODPRO=0'
      ' and CP_CHAVE='#39#39
      ' ORDER BY CP_PAGINA'
      '')
    UpdateObject = U_Os01
    Left = 369
    Top = 245
    object Tb_TextoCP_PAGINA: TFloatField
      FieldName = 'CP_PAGINA'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_PAGINA'
    end
    object Tb_TextoCP_IMPRIME: TFloatField
      FieldName = 'CP_IMPRIME'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_IMPRIME'
    end
    object Tb_TextoCP_CODEMP: TFloatField
      FieldName = 'CP_CODEMP'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODEMP'
    end
    object Tb_TextoCP_CODPRO: TFloatField
      FieldName = 'CP_CODPRO'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODPRO'
    end
    object Tb_TextoCP_CODPRO_EMPRO: TFloatField
      FieldName = 'CP_CODPRO_EMPRO'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CODPRO_EMPRO'
    end
    object Tb_TextoCP_CHAVE: TStringField
      FieldName = 'CP_CHAVE'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_CHAVE'
    end
    object Tb_TextoCP_IMPMP: TFloatField
      FieldName = 'CP_IMPMP'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_IMPMP'
    end
    object Tb_TextoCP_IMPEMB: TFloatField
      FieldName = 'CP_IMPEMB'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_IMPEMB'
    end
    object Tb_TextoCP_AVANCPAG: TFloatField
      FieldName = 'CP_AVANCPAG'
      Origin = 'SG_ASSOC.CADPROC02_TEXTO.CP_AVANCPAG'
    end
  end
  object tb_comp: TQuery
    CachedUpdates = True
    OnCalcFields = tb_compCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCOMP')
    UpdateObject = U_Comp
    Left = 20
    Top = 48
    object tb_compCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object tb_compCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object tb_compCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object tb_compCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object tb_compCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object tb_compCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object tb_compCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object tb_compCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object tb_compCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object tb_compCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object tb_compCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object tb_compCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object tb_compCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object tb_compCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object tb_compCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object tb_compCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object tb_compCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object tb_compnommat: TStringField
      FieldKind = fkCalculated
      FieldName = 'nommat'
      Size = 60
      Calculated = True
    end
    object tb_compund: TStringField
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object tb_compquantidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'quantidade'
      Calculated = True
    end
    object tb_comppcocus: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pcocus'
      Calculated = True
    end
    object tb_comppreco1atual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco1atual'
      Calculated = True
    end
    object tb_comppucpr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pucpr'
      Calculated = True
    end
    object tb_compquant_por_unidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'quant_por_unidade'
      Calculated = True
    end
    object tb_compqtdgrml: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdgrml'
      Calculated = True
    end
  end
end
