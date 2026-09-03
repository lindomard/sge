object DM6: TDM6
  OldCreateOrder = False
  Left = 736
  Top = 234
  Height = 557
  Width = 798
  object Tb_Con01: TQuery
    CachedUpdates = True
    BeforePost = Tb_Con01BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select C01CODEMP,'
      '       C01CODCON,'
      '       C01DATCON,'
      '       C01DATFEC,'
      '       C01QTDITENS,'
      '       C01CODTRA,'
      '       C01PESOB,'
      '       C01QTDM3,'
      '       C01VLRTOT,'
      '       C01VALFRE,'
      '       C01VALFRE_DIG,'
      '       C01CODUSR_INC,'
      '       C01CODUSR_ALT,'
      '       C01DTHR_ALT,'
      '       C01ESTADO,'
      '       C01QTDPED,'
      '       C01QTDMAN,'
      '       TRRAZTRA'
      '       from CADCON01,CADTRA'
      'where TRCODTRA=C01CODTRA'
      '')
    UpdateObject = U_Con01
    Left = 16
    Top = 8
    object Tb_Con01C01CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'C01CODEMP'
      Origin = 'SG_ASSOC.CADCON01.C01CODEMP'
    end
    object Tb_Con01C01CODCON: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'C01CODCON'
      Origin = 'SG_ASSOC.CADCON01.C01CODCON'
    end
    object Tb_Con01C01DATCON: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'C01DATCON'
      Origin = 'SG_ASSOC.CADCON01.C01DATCON'
    end
    object Tb_Con01C01DATFEC: TDateTimeField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'C01DATFEC'
      Origin = 'SG_ASSOC.CADCON01.C01DATFEC'
    end
    object Tb_Con01C01QTDITENS: TFloatField
      DisplayLabel = 'Qtd.'#205'tens'
      FieldName = 'C01QTDITENS'
      Origin = 'SG_ASSOC.CADCON01.C01QTDITENS'
    end
    object Tb_Con01C01CODTRA: TFloatField
      DisplayLabel = 'C'#243'd.Transp.'
      FieldName = 'C01CODTRA'
      Origin = 'SG_ASSOC.CADCON01.C01CODTRA'
    end
    object Tb_Con01C01PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'C01PESOB'
      Origin = 'SG_ASSOC.CADCON01.C01PESOB'
    end
    object Tb_Con01C01QTDM3: TFloatField
      DisplayLabel = 'Quant.M3'
      FieldName = 'C01QTDM3'
      Origin = 'SG_ASSOC.CADCON01.C01QTDM3'
    end
    object Tb_Con01C01VLRTOT: TFloatField
      DisplayLabel = 'Valor total'
      FieldName = 'C01VLRTOT'
      Origin = 'SG_ASSOC.CADCON01.C01VLRTOT'
    end
    object Tb_Con01C01VALFRE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'C01VALFRE'
      Origin = 'SG_ASSOC.CADCON01.C01VALFRE'
    end
    object Tb_Con01C01VALFRE_DIG: TFloatField
      DisplayLabel = 'Frete Digitado'
      FieldName = 'C01VALFRE_DIG'
      Origin = 'SG_ASSOC.CADCON01.C01VALFRE_DIG'
    end
    object Tb_Con01C01CODUSR_INC: TFloatField
      DisplayLabel = 'Usr.Inclus'#227'o'
      FieldName = 'C01CODUSR_INC'
      Origin = 'SG_ASSOC.CADCON01.C01CODUSR_INC'
    end
    object Tb_Con01C01CODUSR_ALT: TFloatField
      DisplayLabel = 'Usr.Altera'#231#227'o'
      FieldName = 'C01CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON01.C01CODUSR_ALT'
    end
    object Tb_Con01C01DTHR_ALT: TDateTimeField
      DisplayLabel = 'Dt.Hora Altera'#231#227'o'
      FieldName = 'C01DTHR_ALT'
      Origin = 'SG_ASSOC.CADCON01.C01DTHR_ALT'
    end
    object Tb_Con01C01ESTADO: TFloatField
      DisplayLabel = 'Estado'
      FieldName = 'C01ESTADO'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object Tb_Con01C01QTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedida'
      FieldName = 'C01QTDPED'
      Origin = 'SG_ASSOC.CADCON01.C01QTDPED'
    end
    object Tb_Con01C01QTDMAN: TFloatField
      DisplayLabel = 'Qtd.Manuten'#231#227'o'
      FieldName = 'C01QTDMAN'
      Origin = 'SG_ASSOC.CADCON01.C01QTDMAN'
    end
    object Tb_Con01TRRAZTRA: TStringField
      DisplayLabel = 'Transportador(a)'
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
  end
  object U_Con01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON01'
      'set'
      '  C01CODEMP = :C01CODEMP,'
      '  C01CODCON = :C01CODCON,'
      '  C01DATCON = :C01DATCON,'
      '  C01DATFEC = :C01DATFEC,'
      '  C01QTDITENS = :C01QTDITENS,'
      '  C01CODTRA = :C01CODTRA,'
      '  C01PESOB = :C01PESOB,'
      '  C01QTDM3 = :C01QTDM3,'
      '  C01VLRTOT = :C01VLRTOT,'
      '  C01VALFRE = :C01VALFRE,'
      '  C01VALFRE_DIG = :C01VALFRE_DIG,'
      '  C01CODUSR_INC = :C01CODUSR_INC,'
      '  C01CODUSR_ALT = :C01CODUSR_ALT,'
      '  C01DTHR_ALT = :C01DTHR_ALT,'
      '  C01ESTADO = :C01ESTADO,'
      '  C01QTDPED = :C01QTDPED,'
      '  C01QTDMAN = :C01QTDMAN'
      'where'
      '  C01CODEMP = :OLD_C01CODEMP and'
      '  C01CODCON = :OLD_C01CODCON')
    InsertSQL.Strings = (
      'insert into CADCON01'
      '  (C01CODEMP, C01CODCON, C01DATCON, C01DATFEC, C01QTDITENS, '
      'C01CODTRA, '
      '   C01PESOB, C01QTDM3, C01VLRTOT, C01VALFRE, C01VALFRE_DIG, '
      'C01CODUSR_INC, '
      '   C01CODUSR_ALT, C01DTHR_ALT, C01ESTADO, C01QTDPED, C01QTDMAN)'
      'values'
      
        '  (:C01CODEMP, :C01CODCON, :C01DATCON, :C01DATFEC, :C01QTDITENS,' +
        ' '
      ':C01CODTRA, '
      
        '   :C01PESOB, :C01QTDM3, :C01VLRTOT, :C01VALFRE, :C01VALFRE_DIG,' +
        ' '
      ':C01CODUSR_INC, '
      '   :C01CODUSR_ALT, :C01DTHR_ALT, :C01ESTADO, :C01QTDPED, '
      ':C01QTDMAN)')
    DeleteSQL.Strings = (
      'delete from CADCON01'
      'where'
      '  C01CODEMP = :OLD_C01CODEMP and'
      '  C01CODCON = :OLD_C01CODCON')
    Left = 44
    Top = 8
  end
  object Src_Con01: TDataSource
    DataSet = Tb_Con01
    Left = 72
    Top = 8
  end
  object Tb_Con02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Con02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select C02CODEMP,'
      '       C02CODCON,'
      '       C02CODEMP_PED,'
      '       C02LOTSEQ_PED,'
      '       C02CHAVE_PED,'
      '       C02DATCON,'
      '       C02PESOB,'
      '       C02QTDM3,'
      '       C02VLRTOT,'
      '       C02VALFRE,'
      '       C02VALFRE_DIG,'
      '       C02SITENT,'
      '       C02TIPO_ENTREGA,'
      '       C02OBSERVACAO,'
      '       C02OBS_CONHEC,'
      '       C02CODUSR_INC,'
      '       C02CODUSR_ALT,'
      '       C02DTHR_ALT,'
      '       C02QTDMAN,'
      '       C02ESTADO,'
      '       C02CODTRA,'
      '       C02CODVEN,'
      '       C02CODCLI,'
      '       P1OBS1,'
      '       P1OBS2,'
      '       P1OBS3,'
      '       CRAZAO,'
      '       CLOG,'
      '       CBAIRRO,'
      '       CCIDADE,'
      '       CUF,'
      '       CCODCLI,'
      '       CCEP,'
      '       CFONE01'
      '        from CADCON02,CADP01,CADCLI'
      'where P1CODEMP=C02CODEMP_PED'
      '  and P1LOTSEQ=C02LOTSEQ_PED'
      '  and P1CHAVE =C02CHAVE_PED'
      '  and CCODCLI=P1CODCLI'
      ''
      '')
    UpdateObject = U_Con02
    Left = 16
    Top = 60
    object Tb_Con02C02CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'C02CODEMP'
      Origin = 'SG_ASSOC.CADCON02.C02CODEMP'
    end
    object Tb_Con02C02CODCON: TFloatField
      DisplayLabel = 'C'#243'd.Conhec'
      FieldName = 'C02CODCON'
      Origin = 'SG_ASSOC.CADCON02.C02CODCON'
    end
    object Tb_Con02C02CODEMP_PED: TFloatField
      DisplayLabel = 'Empresa Ped'
      FieldName = 'C02CODEMP_PED'
      Origin = 'SG_ASSOC.CADCON02.C02CODEMP_PED'
    end
    object Tb_Con02C02LOTSEQ_PED: TFloatField
      DisplayLabel = 'Lote Seq Ped'
      FieldName = 'C02LOTSEQ_PED'
      Origin = 'SG_ASSOC.CADCON02.C02LOTSEQ_PED'
    end
    object Tb_Con02C02CHAVE_PED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'C02CHAVE_PED'
      Origin = 'SG_ASSOC.CADCON02.C02CHAVE_PED'
    end
    object Tb_Con02C02PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'C02PESOB'
      Origin = 'SG_ASSOC.CADCON02.C02PESOB'
    end
    object Tb_Con02C02QTDM3: TFloatField
      DisplayLabel = 'Qtd.M3'
      FieldName = 'C02QTDM3'
      Origin = 'SG_ASSOC.CADCON02.C02QTDM3'
    end
    object Tb_Con02C02VLRTOT: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'C02VLRTOT'
      Origin = 'SG_ASSOC.CADCON02.C02VLRTOT'
    end
    object Tb_Con02C02VALFRE: TFloatField
      DisplayLabel = 'Valor Frete Calc.'
      FieldName = 'C02VALFRE'
      Origin = 'SG_ASSOC.CADCON02.C02VALFRE'
    end
    object Tb_Con02C02VALFRE_DIG: TFloatField
      DisplayLabel = 'Vlr.Frete Digitado'
      FieldName = 'C02VALFRE_DIG'
      Origin = 'SG_ASSOC.CADCON02.C02VALFRE_DIG'
    end
    object Tb_Con02C02SITENT: TFloatField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'C02SITENT'
      Origin = 'SG_ASSOC.CADCON02.C02SITENT'
    end
    object Tb_Con02C02TIPO_ENTREGA: TFloatField
      DisplayLabel = 'Tp.Entrega'
      FieldName = 'C02TIPO_ENTREGA'
      Origin = 'SG_ASSOC.CADCON02.C02TIPO_ENTREGA'
    end
    object Tb_Con02C02OBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'C02OBSERVACAO'
      Origin = 'SG_ASSOC.CADCON02.C02OBSERVACAO'
      Size = 60
    end
    object Tb_Con02C02OBS_CONHEC: TStringField
      DisplayLabel = 'Obs.Conhecimento'
      FieldName = 'C02OBS_CONHEC'
      Origin = 'SG_ASSOC.CADCON02.C02OBS_CONHEC'
      Size = 60
    end
    object Tb_Con02C02CODUSR_INC: TFloatField
      DisplayLabel = 'Usr.Inc.'
      FieldName = 'C02CODUSR_INC'
      Origin = 'SG_ASSOC.CADCON02.C02CODUSR_INC'
    end
    object Tb_Con02C02CODUSR_ALT: TFloatField
      DisplayLabel = 'Usr.Alt.'
      FieldName = 'C02CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON02.C02CODUSR_ALT'
    end
    object Tb_Con02C02DTHR_ALT: TDateTimeField
      DisplayLabel = 'Dt.Hora Alt'
      FieldName = 'C02DTHR_ALT'
      Origin = 'SG_ASSOC.CADCON02.C02DTHR_ALT'
    end
    object Tb_Con02C02ESTADO: TFloatField
      DisplayLabel = 'Estado'
      FieldName = 'C02ESTADO'
      Origin = 'SG_ASSOC.CADCON02.C02ESTADO'
    end
    object Tb_Con02C02DATCON: TDateTimeField
      DisplayLabel = 'Data Conhec'
      FieldName = 'C02DATCON'
      Origin = 'SG_ASSOC.CADCON02.C02DATCON'
    end
    object Tb_Con02CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_Con02CLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Tb_Con02CBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Tb_Con02CCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_Con02CUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_Con02C02QTDMAN: TFloatField
      FieldName = 'C02QTDMAN'
      Origin = 'SG_ASSOC.CADCON02.C02QTDMAN'
    end
    object Tb_Con02tipo_entrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_entrega'
      Size = 1
      Calculated = True
    end
    object Tb_Con02CCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
    object Tb_Con02endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 200
      Calculated = True
    end
    object Tb_Con02CCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Tb_Con02CFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_Con02nomtra: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtra'
      Size = 60
      Calculated = True
    end
    object Tb_Con02C02CODTRA: TFloatField
      FieldName = 'C02CODTRA'
      Origin = 'SG_ASSOC.CADCON02.C02CODTRA'
    end
    object Tb_Con02C02CODVEN: TFloatField
      FieldName = 'C02CODVEN'
      Origin = 'SG_ASSOC.CADCON02.C02CODVEN'
    end
    object Tb_Con02nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_Con02C02CODCLI: TFloatField
      FieldName = 'C02CODCLI'
      Origin = 'SG_ASSOC.CADCON02.C02CODCLI'
    end
    object Tb_Con02P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
    end
    object Tb_Con02P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
    end
    object Tb_Con02P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
    end
  end
  object U_Con02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON02'
      'set'
      '  C02CODEMP = :C02CODEMP,'
      '  C02CODCON = :C02CODCON,'
      '  C02CODEMP_PED = :C02CODEMP_PED,'
      '  C02LOTSEQ_PED = :C02LOTSEQ_PED,'
      '  C02CHAVE_PED = :C02CHAVE_PED,'
      '  C02DATCON = :C02DATCON,'
      '  C02PESOB = :C02PESOB,'
      '  C02QTDM3 = :C02QTDM3,'
      '  C02VLRTOT = :C02VLRTOT,'
      '  C02VALFRE = :C02VALFRE,'
      '  C02VALFRE_DIG = :C02VALFRE_DIG,'
      '  C02SITENT = :C02SITENT,'
      '  C02TIPO_ENTREGA = :C02TIPO_ENTREGA,'
      '  C02OBSERVACAO = :C02OBSERVACAO,'
      '  C02OBS_CONHEC = :C02OBS_CONHEC,'
      '  C02CODUSR_INC = :C02CODUSR_INC,'
      '  C02CODUSR_ALT = :C02CODUSR_ALT,'
      '  C02DTHR_ALT = :C02DTHR_ALT,'
      '  C02QTDMAN = :C02QTDMAN,'
      '  C02ESTADO = :C02ESTADO,'
      '  C02CODTRA = :C02CODTRA,'
      '  C02CODVEN = :C02CODVEN,'
      '  C02CODCLI = :C02CODCLI'
      'where'
      '  C02CODEMP = :OLD_C02CODEMP and'
      '  C02CODCON = :OLD_C02CODCON and'
      '  C02CODEMP_PED = :OLD_C02CODEMP_PED and'
      '  C02LOTSEQ_PED = :OLD_C02LOTSEQ_PED and'
      '  C02CHAVE_PED = :OLD_C02CHAVE_PED')
    InsertSQL.Strings = (
      'insert into CADCON02'
      '  (C02CODEMP, C02CODCON, C02CODEMP_PED, C02LOTSEQ_PED, '
      'C02CHAVE_PED, C02DATCON, '
      '   C02PESOB, C02QTDM3, C02VLRTOT, C02VALFRE, C02VALFRE_DIG, '
      'C02SITENT, '
      
        '   C02TIPO_ENTREGA, C02OBSERVACAO, C02OBS_CONHEC, C02CODUSR_INC,' +
        ' '
      'C02CODUSR_ALT, '
      '   C02DTHR_ALT, C02QTDMAN, C02ESTADO, C02CODTRA, C02CODVEN, '
      'C02CODCLI)'
      'values'
      '  (:C02CODEMP, :C02CODCON, :C02CODEMP_PED, :C02LOTSEQ_PED, '
      ':C02CHAVE_PED, '
      '   :C02DATCON, :C02PESOB, :C02QTDM3, :C02VLRTOT, :C02VALFRE, '
      ':C02VALFRE_DIG, '
      
        '   :C02SITENT, :C02TIPO_ENTREGA, :C02OBSERVACAO, :C02OBS_CONHEC,' +
        ' '
      ':C02CODUSR_INC, '
      
        '   :C02CODUSR_ALT, :C02DTHR_ALT, :C02QTDMAN, :C02ESTADO, :C02COD' +
        'TRA, '
      ':C02CODVEN, '
      '   :C02CODCLI)')
    DeleteSQL.Strings = (
      'delete from CADCON02'
      'where'
      '  C02CODEMP = :OLD_C02CODEMP and'
      '  C02CODCON = :OLD_C02CODCON and'
      '  C02CODEMP_PED = :OLD_C02CODEMP_PED and'
      '  C02LOTSEQ_PED = :OLD_C02LOTSEQ_PED and'
      '  C02CHAVE_PED = :OLD_C02CHAVE_PED')
    Left = 44
    Top = 59
  end
  object Src_Con02: TDataSource
    DataSet = Tb_Con02
    Left = 72
    Top = 59
  end
  object Tb_Con03: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select C03CODEMP,'
      '       C03CODCON,'
      '       C03CODEMP_PED,'
      '       C03LOTSEQ_PED,'
      '       C03CHAVE_PED,'
      '       C03CODPRO,'
      '       C03LOTE,'
      '       C03QTDVEND,'
      '       C03QTDENT,'
      '       C03QTDPEND,'
      '       C03PESOB,'
      '       C03QTDM3,'
      '       C03VLRTOT,'
      '       C03VALFRE,'
      '       C03VALFRE_DIG,'
      '       C03SITENT,'
      '       C03CODUSR_INC,'
      '       C03CODUSR_ALT,'
      '       C03DTHR_ALT,'
      '       C03QTDMAN,'
      '       C03ESTADO,'
      '       C03ITEM,'
      '       PDNOME,'
      '       PDMARCA,'
      '       PDUND,'
      '       PDPESOB,'
      '       PDQTDM3,'
      '       GRPERCFRE'
      'from CADCON03,CADPRO,CADGRU where'
      '     PDCODPRO=C03CODPRO'
      '     and GRCODGRU=PDCODGRU')
    UpdateObject = U_Con03
    Left = 16
    Top = 109
    object Tb_Con03C03CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'C03CODEMP'
      Origin = 'SG_ASSOC.CADCON03.C03CODEMP'
    end
    object Tb_Con03C03CODCON: TFloatField
      DisplayLabel = 'C'#243'd.Conhec'
      FieldName = 'C03CODCON'
      Origin = 'SG_ASSOC.CADCON03.C03CODCON'
    end
    object Tb_Con03C03CODEMP_PED: TFloatField
      DisplayLabel = 'C'#243'd.Emp.Ped'
      FieldName = 'C03CODEMP_PED'
      Origin = 'SG_ASSOC.CADCON03.C03CODEMP_PED'
    end
    object Tb_Con03C03LOTSEQ_PED: TFloatField
      DisplayLabel = 'Lote Seq.Ped'
      FieldName = 'C03LOTSEQ_PED'
      Origin = 'SG_ASSOC.CADCON03.C03LOTSEQ_PED'
    end
    object Tb_Con03C03CHAVE_PED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'C03CHAVE_PED'
      Origin = 'SG_ASSOC.CADCON03.C03CHAVE_PED'
    end
    object Tb_Con03C03CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod.'
      FieldName = 'C03CODPRO'
      Origin = 'SG_ASSOC.CADCON03.C03CODPRO'
    end
    object Tb_Con03C03QTDVEND: TFloatField
      DisplayLabel = 'Qtd.Vendida'
      FieldName = 'C03QTDVEND'
      Origin = 'SG_ASSOC.CADCON03.C03QTDVEND'
    end
    object Tb_Con03C03QTDPEND: TFloatField
      DisplayLabel = 'Qtd.Pend.'
      FieldName = 'C03QTDPEND'
      Origin = 'SG_ASSOC.CADCON03.C03QTDPEND'
    end
    object Tb_Con03C03QTDENT: TFloatField
      DisplayLabel = 'Qtd.Entregue'
      FieldName = 'C03QTDENT'
      Origin = 'SG_ASSOC.CADCON03.C03QTDENT'
    end
    object Tb_Con03C03PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'C03PESOB'
      Origin = 'SG_ASSOC.CADCON03.C03PESOB'
    end
    object Tb_Con03C03QTDM3: TFloatField
      DisplayLabel = 'Quant.M3'
      FieldName = 'C03QTDM3'
      Origin = 'SG_ASSOC.CADCON03.C03QTDM3'
    end
    object Tb_Con03C03VLRTOT: TFloatField
      DisplayLabel = 'Valor total'
      FieldName = 'C03VLRTOT'
      Origin = 'SG_ASSOC.CADCON03.C03VLRTOT'
    end
    object Tb_Con03C03VALFRE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'C03VALFRE'
      Origin = 'SG_ASSOC.CADCON03.C03VALFRE'
    end
    object Tb_Con03C03VALFRE_DIG: TFloatField
      DisplayLabel = 'Valor Frete Dig'
      FieldName = 'C03VALFRE_DIG'
      Origin = 'SG_ASSOC.CADCON03.C03VALFRE_DIG'
    end
    object Tb_Con03C03SITENT: TFloatField
      DisplayLabel = 'Sit.Entrega'
      FieldName = 'C03SITENT'
      Origin = 'SG_ASSOC.CADCON03.C03SITENT'
    end
    object Tb_Con03C03CODUSR_INC: TFloatField
      DisplayLabel = 'Cod.Usuario Inc'
      FieldName = 'C03CODUSR_INC'
      Origin = 'SG_ASSOC.CADCON03.C03CODUSR_INC'
    end
    object Tb_Con03C03CODUSR_ALT: TFloatField
      DisplayLabel = 'C'#243'd.Usuario Alt'
      FieldName = 'C03CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON03.C03CODUSR_ALT'
    end
    object Tb_Con03C03DTHR_ALT: TDateTimeField
      DisplayLabel = 'Dt.Hora Alt'
      FieldName = 'C03DTHR_ALT'
      Origin = 'SG_ASSOC.CADCON03.C03DTHR_ALT'
    end
    object Tb_Con03C03ESTADO: TFloatField
      FieldName = 'C03ESTADO'
      Origin = 'SG_ASSOC.CADCON03.C03ESTADO'
    end
    object Tb_Con03C03ITEM: TFloatField
      FieldName = 'C03ITEM'
      Origin = 'SG_ASSOC.CADCON03.C03ITEM'
    end
    object Tb_Con03PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Con03PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Con03PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Con03PDPESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Tb_Con03PDQTDM3: TFloatField
      DisplayLabel = 'Qtd.M3'
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Tb_Con03C03QTDMAN: TFloatField
      DisplayLabel = 'Qtd.Manuten'#231#227'o'
      FieldName = 'C03QTDMAN'
      Origin = 'SG_ASSOC.CADCON03.C03QTDMAN'
    end
    object Tb_Con03GRPERCFRE: TFloatField
      FieldName = 'GRPERCFRE'
      Origin = 'SG_ASSOC.CADGRU.GRPERCFRE'
    end
    object Tb_Con03C03LOTE: TStringField
      DisplayLabel = 'Lote/Detalhe'
      FieldName = 'C03LOTE'
      Origin = 'SG_ASSOC.CADCON03.C03LOTE'
    end
  end
  object U_Con03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON03'
      'set'
      '  C03CODEMP = :C03CODEMP,'
      '  C03CODCON = :C03CODCON,'
      '  C03CODEMP_PED = :C03CODEMP_PED,'
      '  C03LOTSEQ_PED = :C03LOTSEQ_PED,'
      '  C03CHAVE_PED = :C03CHAVE_PED,'
      '  C03CODPRO = :C03CODPRO,'
      '  C03LOTE = :C03LOTE,'
      '  C03QTDVEND = :C03QTDVEND,'
      '  C03QTDENT = :C03QTDENT,'
      '  C03QTDPEND = :C03QTDPEND,'
      '  C03PESOB = :C03PESOB,'
      '  C03QTDM3 = :C03QTDM3,'
      '  C03VLRTOT = :C03VLRTOT,'
      '  C03VALFRE = :C03VALFRE,'
      '  C03VALFRE_DIG = :C03VALFRE_DIG,'
      '  C03SITENT = :C03SITENT,'
      '  C03CODUSR_INC = :C03CODUSR_INC,'
      '  C03CODUSR_ALT = :C03CODUSR_ALT,'
      '  C03DTHR_ALT = :C03DTHR_ALT,'
      '  C03QTDMAN = :C03QTDMAN,'
      '  C03ESTADO = :C03ESTADO,'
      '  C03ITEM = :C03ITEM'
      'where'
      '  C03CODEMP = :OLD_C03CODEMP and'
      '  C03CODCON = :OLD_C03CODCON and'
      '  C03CODEMP_PED = :OLD_C03CODEMP_PED and'
      '  C03LOTSEQ_PED = :OLD_C03LOTSEQ_PED and'
      '  C03CHAVE_PED = :OLD_C03CHAVE_PED and'
      '  C03CODPRO = :OLD_C03CODPRO')
    InsertSQL.Strings = (
      'insert into CADCON03'
      '  (C03CODEMP, C03CODCON, C03CODEMP_PED, C03LOTSEQ_PED, '
      'C03CHAVE_PED, C03CODPRO, '
      
        '   C03LOTE, C03QTDVEND, C03QTDENT, C03QTDPEND, C03PESOB, C03QTDM' +
        '3, '
      'C03VLRTOT, '
      '   C03VALFRE, C03VALFRE_DIG, C03SITENT, C03CODUSR_INC, '
      'C03CODUSR_ALT, C03DTHR_ALT, '
      '   C03QTDMAN, C03ESTADO, C03ITEM)'
      'values'
      '  (:C03CODEMP, :C03CODCON, :C03CODEMP_PED, :C03LOTSEQ_PED, '
      ':C03CHAVE_PED, '
      '   :C03CODPRO, :C03LOTE, :C03QTDVEND, :C03QTDENT, :C03QTDPEND, '
      ':C03PESOB, '
      
        '   :C03QTDM3, :C03VLRTOT, :C03VALFRE, :C03VALFRE_DIG, :C03SITENT' +
        ', '
      ':C03CODUSR_INC, '
      
        '   :C03CODUSR_ALT, :C03DTHR_ALT, :C03QTDMAN, :C03ESTADO, :C03ITE' +
        'M)')
    DeleteSQL.Strings = (
      'delete from CADCON03'
      'where'
      '  C03CODEMP = :OLD_C03CODEMP and'
      '  C03CODCON = :OLD_C03CODCON and'
      '  C03CODEMP_PED = :OLD_C03CODEMP_PED and'
      '  C03LOTSEQ_PED = :OLD_C03LOTSEQ_PED and'
      '  C03CHAVE_PED = :OLD_C03CHAVE_PED and'
      '  C03CODPRO = :OLD_C03CODPRO')
    Left = 52
    Top = 109
  end
  object Src_Con03: TDataSource
    DataSet = Tb_Con03
    Left = 72
    Top = 109
  end
  object U_PedBlq: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01'
      'set'
      '  P1CODEMP = :P1CODEMP'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP01'
      '  (P1CODEMP)'
      'values'
      '  (:P1CODEMP)')
    DeleteSQL.Strings = (
      'delete from CADP01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    Left = 210
    Top = 4
  end
  object Tb_PedBlq: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_PedBlqCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39'  OK, P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATAP,'
      '           P1DATDOC,P1CODCLI,'
      '           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF,'
      '           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL,'
      '           P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD,'
      '           P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC,'
      '           P1TIPENT,P1PREVENT,P1HPREVENT,'
      '           P1CODENT,P1DATENT,P1HORENT,'
      '           P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB,'
      '           P1BANCO,P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF,'
      '           P1CODSEP,P1DATASEP,P1HORSEP,'
      '           P1CODEMB,P1DATAEMB,P1HOREMB,'
      
        '           P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER,P1ESPECIE' +
        ',P1MINUTA,'
      
        '           P1FORMACE,P1OBS1,P1OBS2,P1OBS3,P1BLOQPEND,P1CODBLOQ,P' +
        '1CODBLOQ_LIB,'
      '           CRAZAO from CADP01,CADCLI'
      'where P1CODEMP is null'
      'and CCODCLI=P1CODCLI'
      '')
    UpdateObject = U_PedBlq
    Left = 178
    Top = 4
    object Tb_PedBlqP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedBlqP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedBlqP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_PedBlqP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_PedBlqP1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedBlqP1DATDOC: TDateTimeField
      DisplayLabel = 'Data Documento'
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Tb_PedBlqP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedBlqP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_PedBlqP1ORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Tb_PedBlqP1CODTRA: TFloatField
      DisplayLabel = 'Cod.Transp'
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Tb_PedBlqP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_PedBlqP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_PedBlqP1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_PedBlqP1TOTALB: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_PedBlqP1TOTALL: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_PedBlqP1CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Tb_PedBlqP1HORADIG: TStringField
      DisplayLabel = 'Hora Dig.'
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Tb_PedBlqP1DTMOD: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Tb_PedBlqP1HRMOD: TStringField
      DisplayLabel = 'Hora Altera'#231#227'o'
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Tb_PedBlqP1USRMOD: TFloatField
      DisplayLabel = 'Usu'#225'rio Alterou'
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Tb_PedBlqP1CONF: TStringField
      DisplayLabel = 'Conferido'
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Tb_PedBlqP1CODCON: TFloatField
      DisplayLabel = 'C'#243'digo Conferidor'
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Tb_PedBlqP1DATCON: TDateTimeField
      DisplayLabel = 'Data Conferencia'
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Tb_PedBlqP1HORCON: TStringField
      DisplayLabel = 'Hora Conferencia'
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Tb_PedBlqP1EMIDOC: TFloatField
      DisplayLabel = 'Emitiu'
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Tb_PedBlqP1TIPENT: TFloatField
      DisplayLabel = 'Tipo Entrega'
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Tb_PedBlqP1PREVENT: TDateTimeField
      DisplayLabel = 'Data Prev.Entrega'
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Tb_PedBlqP1HPREVENT: TStringField
      DisplayLabel = 'Hora Prev.Entrega'
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Tb_PedBlqP1CODENT: TFloatField
      DisplayLabel = 'C'#243'd.Entregador'
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Tb_PedBlqP1DATENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Tb_PedBlqP1HORENT: TStringField
      DisplayLabel = 'Hora Entrega'
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Tb_PedBlqP1CUPOM: TFloatField
      DisplayLabel = 'Emitiu Cupom'
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Tb_PedBlqP1TOTDES: TFloatField
      DisplayLabel = 'Total desconto'
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_PedBlqP1QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Tb_PedBlqP1PESOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Tb_PedBlqP1PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Tb_PedBlqP1BANCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Tb_PedBlqP1CODTLV: TFloatField
      DisplayLabel = 'C'#243'd.Telev'
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Tb_PedBlqP1ETIVOL: TFloatField
      DisplayLabel = 'Etiq.Vol.'
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Tb_PedBlqP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero CF'
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Tb_PedBlqP1CODECF: TFloatField
      DisplayLabel = 'C'#243'd.ECF'
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Tb_PedBlqP1DATACF: TDateTimeField
      DisplayLabel = 'Data CF'
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_PedBlqP1CODSEP: TFloatField
      DisplayLabel = 'C'#243'd.Separador'
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Tb_PedBlqP1DATASEP: TDateTimeField
      DisplayLabel = 'Data Sep.'
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Tb_PedBlqP1HORSEP: TStringField
      DisplayLabel = 'Hor.Sep'
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Tb_PedBlqP1CODEMB: TFloatField
      DisplayLabel = 'C'#243'd.Emb'
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Tb_PedBlqP1DATAEMB: TDateTimeField
      DisplayLabel = 'Data Emb.'
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Tb_PedBlqP1HOREMB: TStringField
      DisplayLabel = 'Hora Emb'
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Tb_PedBlqP1ACRECONV: TFloatField
      DisplayLabel = 'Acresc.Conv.'
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Tb_PedBlqP1ACREGER: TFloatField
      DisplayLabel = 'Acresc.Geral'
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Tb_PedBlqP1PACRECONV: TFloatField
      DisplayLabel = 'Perc.Acre.Conv.'
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_PedBlqP1PACREGER: TFloatField
      DisplayLabel = 'Perc. Acresc.Geral'
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_PedBlqCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_PedBlqP1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
      Size = 10
    end
    object Tb_PedBlqP1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Tb_PedBlqnomdig: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomdig'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqnomalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomalt'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqnomsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsep'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqnomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcon'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqnomemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemb'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqdatalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'datalt'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqdatsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'datsep'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqdatcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqdatemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'datemb'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqnomtra: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtra'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqdatanf: TStringField
      DisplayLabel = 'Data NF'
      FieldKind = fkCalculated
      FieldName = 'datanf'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqdatacf: TStringField
      FieldKind = fkCalculated
      FieldName = 'datacf'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqemitiuls: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'emitiuls'
      Calculated = True
    end
    object Tb_PedBlqdatpent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datpent'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqdatent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datent'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqtipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 30
      Calculated = True
    end
    object Tb_PedBlqdatdoc: TStringField
      DisplayLabel = 'Data Doc'
      FieldKind = fkCalculated
      FieldName = 'datdoc'
      Size = 15
      Calculated = True
    end
    object Tb_PedBlqnomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqP1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Tb_PedBlqP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_PedBlqvalpag: TFloatField
      DisplayLabel = 'Valor Rec.'
      FieldKind = fkCalculated
      FieldName = 'valpag'
      Calculated = True
    end
    object Tb_PedBlqdesc: TFloatField
      DisplayLabel = 'Desc.Conc.'
      FieldKind = fkCalculated
      FieldName = 'desc'
      Calculated = True
    end
    object Tb_PedBlqjuros: TFloatField
      DisplayLabel = 'Juros Cob'
      FieldKind = fkCalculated
      FieldName = 'juros'
      Calculated = True
    end
    object Tb_PedBlqapagar: TFloatField
      DisplayLabel = 'A Receber'
      FieldKind = fkCalculated
      FieldName = 'apagar'
      Calculated = True
    end
    object Tb_PedBlqP1CODBLOQ_LIB: TStringField
      DisplayLabel = 'C'#243'd.Bloq.Lib'
      FieldName = 'P1CODBLOQ_LIB'
    end
    object Tb_PedBlqOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Tb_PedBlqrazsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razsoc'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlqP1BLOQPEND: TFloatField
      DisplayLabel = 'Blq.Pend'
      FieldName = 'P1BLOQPEND'
    end
    object Tb_PedBlqP1CODBLOQ: TStringField
      DisplayLabel = 'C'#243'd.Bloq'
      FieldName = 'P1CODBLOQ'
    end
    object Tb_PedBlqpendencias: TStringField
      DisplayLabel = 'Pendencias'
      FieldKind = fkCalculated
      FieldName = 'pendencias'
      Calculated = True
    end
    object Tb_PedBlqcidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 40
      Calculated = True
    end
    object Tb_PedBlquf: TStringField
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Tb_PedBlqprazos: TStringField
      FieldKind = fkCalculated
      FieldName = 'prazos'
      Size = 60
      Calculated = True
    end
    object Tb_PedBlqP1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
    end
    object Tb_PedBlqP1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
    end
    object Tb_PedBlqP1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
    end
  end
  object Src_PedBlq: TDataSource
    DataSet = Tb_PedBlq
    Left = 146
    Top = 4
  end
  object Tb_CFTabIcm: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CFTabIcmAfterInsert
    BeforePost = Tb_CFTabIcmBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Con02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *  from  CADCLATABICM')
    UpdateObject = U_CFTabIcm
    Left = 145
    Top = 59
    object Tb_CFTabIcmCICODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CICODEMP'
      Origin = 'SG_ASSOC.CADCLATABICM.CICODEMP'
    end
    object Tb_CFTabIcmCICLASSIF: TStringField
      DisplayLabel = 'Classificacao Fiscal'
      FieldName = 'CICLASSIF'
      Origin = 'SG_ASSOC.CADCLATABICM.CICLASSIF'
    end
    object Tb_CFTabIcmCITABICMS: TStringField
      DisplayLabel = 'Tabela de Icms'
      FieldName = 'CITABICMS'
      Origin = 'SG_ASSOC.CADCLATABICM.CITABICMS'
      Size = 1
    end
    object Tb_CFTabIcmCIMONOFASICO: TStringField
      FieldName = 'CIMONOFASICO'
      Origin = 'SG_ASSOC.CADCLATABICM.CIMONOFASICO'
      Size = 1
    end
    object Tb_CFTabIcmCICLASSIF_NOME: TMemoField
      FieldName = 'CICLASSIF_NOME'
      Origin = 'SG_ASSOC.CADCLATABICM.CICLASSIF_NOME'
      BlobType = ftMemo
      Size = 260
    end
    object Tb_CFTabIcmCIDI: TStringField
      FieldName = 'CIDI'
      Origin = 'SG_ASSOC.CADCLATABICM.CIDI'
      Size = 1
    end
    object Tb_CFTabIcmCIDIOBS: TMemoField
      FieldName = 'CIDIOBS'
      Origin = 'SG_ASSOC.CADCLATABICM.CIDIOBS'
      BlobType = ftMemo
      Size = 2000
    end
    object Tb_CFTabIcmCIVALAPROXNAC: TFloatField
      FieldName = 'CIVALAPROXNAC'
      Origin = 'SG_ASSOC.CADCLATABICM.CIVALAPROXNAC'
    end
    object Tb_CFTabIcmCIVALAPROXIMP: TFloatField
      FieldName = 'CIVALAPROXIMP'
      Origin = 'SG_ASSOC.CADCLATABICM.CIVALAPROXIMP'
    end
    object Tb_CFTabIcmCI_CEST: TStringField
      DisplayLabel = 'CEST - Codigo Especificador Substitui'#231#227'o Tributaria'
      FieldName = 'CI_CEST'
      Size = 9
    end
    object Tb_CFTabIcmCFUNIDADEEXP: TStringField
      FieldName = 'CFUNIDADEEXP'
      Origin = 'Tb_CFTabIcmCFUNIDADEEXP'
    end
    object Tb_CFTabIcmCIPERC_CSLL: TFloatField
      FieldName = 'CIPERC_CSLL'
    end
    object Tb_CFTabIcmCIPERC_IRRF: TFloatField
      FieldName = 'CIPERC_IRRF'
    end
    object Tb_CFTabIcmCIVALAPROXEST: TFloatField
      FieldName = 'CIVALAPROXEST'
    end
    object Tb_CFTabIcmCIVALAPROXMUN: TFloatField
      FieldName = 'CIVALAPROXMUN'
    end
    object Tb_CFTabIcmCIEX: TStringField
      DisplayWidth = 2
      FieldName = 'CIEX'
      Size = 2
    end
    object Tb_CFTabIcmCITIPO: TStringField
      FieldName = 'CITIPO'
    end
    object Tb_CFTabIcmCICHAVE: TStringField
      FieldName = 'CICHAVE'
    end
    object Tb_CFTabIcmCIVERSAO: TStringField
      FieldName = 'CIVERSAO'
    end
    object Tb_CFTabIcmCIDT_INI: TDateTimeField
      FieldName = 'CIDT_INI'
    end
    object Tb_CFTabIcmCIDT_FIN: TDateTimeField
      FieldName = 'CIDT_FIN'
    end
  end
  object U_CFTabIcm: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLATABICM'
      'set'
      '  CICODEMP = :CICODEMP,'
      '  CICLASSIF = :CICLASSIF,'
      '  CITABICMS = :CITABICMS,'
      '  CICLASSIF_NOME = :CICLASSIF_NOME,'
      '  CIMONOFASICO = :CIMONOFASICO,'
      '  CIDI = :CIDI,'
      '  CIDIOBS = :CIDIOBS,'
      '  CIVALAPROXNAC = :CIVALAPROXNAC,'
      '  CIVALAPROXIMP = :CIVALAPROXIMP,'
      '  CI_CEST = :CI_CEST,'
      '  CFUNIDADEEXP = :CFUNIDADEEXP'
      '  ,CIPERC_CSLL = :CIPERC_CSLL , CIPERC_IRRF = :CIPERC_IRRF'
      ''
      
        '   ,CIVALAPROXEST = :CIVALAPROXEST,CIVALAPROXMUN = :CIVALAPROXMU' +
        'N, CIEX = :CIEX'
      
        '   , CITIPO = :CITIPO, CICHAVE = :CICHAVE, CIVERSAO = :CIVERSAO,' +
        ' CIDT_INI = :CIDT_INI, CIDT_FIN = :CIDT_FIN'
      ''
      ''
      'where'
      '  CICODEMP = :OLD_CICODEMP and'
      '  CICLASSIF = :OLD_CICLASSIF')
    InsertSQL.Strings = (
      'insert into CADCLATABICM'
      
        '  (CICODEMP, CICLASSIF, CITABICMS, CICLASSIF_NOME, CIMONOFASICO,' +
        ' CIDI, '
      '   CIDIOBS, CIVALAPROXNAC, CIVALAPROXIMP,CI_CEST'
      '   ,CFUNIDADEEXP,   CIPERC_CSLL,CIPERC_IRRF'
      '   ,CIVALAPROXEST,CIVALAPROXMUN,CIEX'
      '   ,CITIPO,CICHAVE,CIVERSAO,CIDT_INI,CIDT_FIN'
      '   )'
      'values'
      
        '  (:CICODEMP, :CICLASSIF, :CITABICMS, :CICLASSIF_NOME, :CIMONOFA' +
        'SICO,'
      ':CIDI,'
      
        '   :CIDIOBS, :CIVALAPROXNAC, :CIVALAPROXIMP,:CI_CEST,:CFUNIDADEE' +
        'XP'
      '   ,:CIPERC_CSLL,:CIPERC_IRRF'
      '   ,:CIVALAPROXEST,:CIVALAPROXMUN,:CIEX'
      '   ,:CITIPO,:CICHAVE,:CIVERSAO,:CIDT_INI,:CIDT_FIN'
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADCLATABICM'
      'where'
      '  CICODEMP = :OLD_CICODEMP and'
      '  CICLASSIF = :OLD_CICLASSIF ')
    Left = 173
    Top = 58
  end
  object Src_CFTabIcm: TDataSource
    DataSet = Tb_CFTabIcm
    Left = 201
    Top = 58
  end
  object Tb_OrPed: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_OrPedBeforeInsert
    AfterInsert = Tb_OrPedAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *  from  CADORPED')
    UpdateObject = U_ORPED
    Left = 145
    Top = 109
    object Tb_OrPedCOCODIGO: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'COCODIGO'
      Origin = 'SG_ASSOC.CADORPED.COCODIGO'
    end
    object Tb_OrPedCONOMORI: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'CONOMORI'
      Origin = 'SG_ASSOC.CADORPED.CONOMORI'
      Size = 30
    end
    object Tb_OrPedCOVINCULO: TFloatField
      DisplayLabel = 'Vinculo'
      FieldName = 'COVINCULO'
      Origin = 'SG_ASSOC.CADORPED.COVINCULO'
    end
  end
  object U_ORPED: TUpdateSQL
    ModifySQL.Strings = (
      'update CADORPED'
      'set'
      '  COCODIGO = :COCODIGO,'
      '  CONOMORI = :CONOMORI,'
      '  COVINCULO = :COVINCULO'
      'where'
      '  COCODIGO = :OLD_COCODIGO')
    InsertSQL.Strings = (
      'insert into CADORPED'
      '  (COCODIGO, CONOMORI, COVINCULO)'
      'values'
      '  (:COCODIGO, :CONOMORI, :COVINCULO)')
    DeleteSQL.Strings = (
      'delete from CADORPED'
      'where'
      '  COCODIGO = :OLD_COCODIGO')
    Left = 178
    Top = 108
  end
  object Src_OrPed: TDataSource
    DataSet = Tb_OrPed
    Left = 201
    Top = 108
  end
  object Tb_Regiao: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_RegiaoBeforeInsert
    AfterInsert = Tb_RegiaoAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADREGIAO')
    UpdateObject = U_Regiao
    Left = 24
    Top = 160
    object Tb_RegiaoCR_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CR_CODEMP'
      Origin = 'SG_ASSOC.CADREGIAO.CR_CODEMP'
    end
    object Tb_RegiaoCR_CODREG: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'CR_CODREG'
      Origin = 'SG_ASSOC.CADREGIAO.CR_CODREG'
    end
    object Tb_RegiaoCR_NOMREG: TStringField
      DisplayLabel = 'Nome Regiao'
      FieldName = 'CR_NOMREG'
      Origin = 'SG_ASSOC.CADREGIAO.CR_NOMREG'
      Size = 40
    end
    object Tb_RegiaoCR_ACREREG: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'CR_ACREREG'
      Origin = 'SG_ASSOC.CADREGIAO.CR_ACREREG'
    end
    object Tb_RegiaoCR_DESREG: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'CR_DESREG'
      Origin = 'SG_ASSOC.CADREGIAO.CR_DESREG'
    end
    object Tb_RegiaoCR_DATINC: TDateTimeField
      DisplayLabel = 'Data Inclusao'
      FieldName = 'CR_DATINC'
      Origin = 'SG_ASSOC.CADREGIAO.CR_DATINC'
    end
    object Tb_RegiaoCR_USRINC: TFloatField
      DisplayLabel = 'Usr.Inclusao'
      FieldName = 'CR_USRINC'
      Origin = 'SG_ASSOC.CADREGIAO.CR_USRINC'
    end
    object Tb_RegiaoCR_DATALT: TDateTimeField
      DisplayLabel = 'Data Alteracao'
      FieldName = 'CR_DATALT'
      Origin = 'SG_ASSOC.CADREGIAO.CR_DATALT'
    end
    object Tb_RegiaoCR_USRALT: TFloatField
      DisplayLabel = 'Usr Alteracao'
      FieldName = 'CR_USRALT'
      Origin = 'SG_ASSOC.CADREGIAO.CR_USRALT'
    end
  end
  object U_Regiao: TUpdateSQL
    ModifySQL.Strings = (
      'update CADREGIAO'
      'set'
      '  CR_CODEMP = :CR_CODEMP,'
      '  CR_CODREG = :CR_CODREG,'
      '  CR_NOMREG = :CR_NOMREG,'
      '  CR_ACREREG = :CR_ACREREG,'
      '  CR_DESREG = :CR_DESREG,'
      '  CR_DATINC = :CR_DATINC,'
      '  CR_USRINC = :CR_USRINC,'
      '  CR_DATALT = :CR_DATALT,'
      '  CR_USRALT = :CR_USRALT'
      'where'
      '  CR_CODEMP = :OLD_CR_CODEMP and'
      '  CR_CODREG = :OLD_CR_CODREG and'
      '  CR_NOMREG = :OLD_CR_NOMREG')
    InsertSQL.Strings = (
      'insert into CADREGIAO'
      '  (CR_CODEMP, CR_CODREG, CR_NOMREG, CR_ACREREG, CR_DESREG, '
      'CR_DATINC, CR_USRINC, '
      '   CR_DATALT, CR_USRALT)'
      'values'
      '  (:CR_CODEMP, :CR_CODREG, :CR_NOMREG, :CR_ACREREG, :CR_DESREG, '
      ':CR_DATINC, '
      '   :CR_USRINC, :CR_DATALT, :CR_USRALT)')
    DeleteSQL.Strings = (
      'delete from CADREGIAO'
      'where'
      '  CR_CODEMP = :OLD_CR_CODEMP and'
      '  CR_CODREG = :OLD_CR_CODREG and'
      '  CR_NOMREG = :OLD_CR_NOMREG')
    Left = 55
    Top = 160
  end
  object Src_Regiao: TDataSource
    DataSet = Tb_Regiao
    Left = 85
    Top = 160
  end
  object Tb_AJCOMIS: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_AJCOMISBeforeInsert
    AfterInsert = Tb_AJCOMISAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADAJCOMIS')
    UpdateObject = U_AJCOMIS
    Left = 153
    Top = 158
    object Tb_AJCOMISAJC_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'AJC_CODEMP'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_CODEMP'
    end
    object Tb_AJCOMISAJC_FATOR_INI: TFloatField
      DisplayLabel = 'Fator Inicial'
      FieldName = 'AJC_FATOR_INI'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_FATOR_INI'
    end
    object Tb_AJCOMISAJC_FATOR_TER: TFloatField
      DisplayLabel = 'Fator Termino'
      FieldName = 'AJC_FATOR_TER'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_FATOR_TER'
    end
    object Tb_AJCOMISAJC_COMIS: TFloatField
      DisplayLabel = '% Comissao Ajustar'
      FieldName = 'AJC_COMIS'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_COMIS'
    end
    object Tb_AJCOMISAJC_USRINC: TFloatField
      DisplayLabel = 'Usuario Inclusao'
      FieldName = 'AJC_USRINC'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_USRINC'
    end
    object Tb_AJCOMISAJC_USRALT: TFloatField
      DisplayLabel = 'Usuario Alteracao'
      FieldName = 'AJC_USRALT'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_USRALT'
    end
    object Tb_AJCOMISAJC_DATHOR_INC: TDateTimeField
      FieldName = 'AJC_DATHOR_INC'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_DATHOR_INC'
    end
    object Tb_AJCOMISAJC_DATHOR_ALT: TDateTimeField
      FieldName = 'AJC_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADAJCOMIS.AJC_DATHOR_ALT'
    end
  end
  object U_AJCOMIS: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAJCOMIS'
      'set'
      '  AJC_CODEMP = :AJC_CODEMP,'
      '  AJC_FATOR_INI = :AJC_FATOR_INI,'
      '  AJC_FATOR_TER = :AJC_FATOR_TER,'
      '  AJC_COMIS = :AJC_COMIS,'
      '  AJC_USRINC = :AJC_USRINC,'
      '  AJC_USRALT = :AJC_USRALT,'
      '  AJC_DATHOR_INC = :AJC_DATHOR_INC,'
      '  AJC_DATHOR_ALT = :AJC_DATHOR_ALT'
      'where'
      '  AJC_CODEMP = :OLD_AJC_CODEMP and'
      '  AJC_FATOR_INI = :OLD_AJC_FATOR_INI and'
      '  AJC_FATOR_TER = :OLD_AJC_FATOR_TER')
    InsertSQL.Strings = (
      'insert into CADAJCOMIS'
      
        '  (AJC_CODEMP, AJC_FATOR_INI, AJC_FATOR_TER, AJC_COMIS, AJC_USRI' +
        'NC, '
      'AJC_USRALT, '
      '   AJC_DATHOR_INC, AJC_DATHOR_ALT)'
      'values'
      '  (:AJC_CODEMP, :AJC_FATOR_INI, :AJC_FATOR_TER, :AJC_COMIS, '
      ':AJC_USRINC, '
      '   :AJC_USRALT, :AJC_DATHOR_INC, :AJC_DATHOR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADAJCOMIS'
      'where'
      '  AJC_CODEMP = :OLD_AJC_CODEMP and'
      '  AJC_FATOR_INI = :OLD_AJC_FATOR_INI and'
      '  AJC_FATOR_TER = :OLD_AJC_FATOR_TER')
    Left = 180
    Top = 160
  end
  object Src_AJCOMIS: TDataSource
    DataSet = Tb_AJCOMIS
    Left = 208
    Top = 161
  end
  object Tb_CLFISCAL_UF: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CLFISCAL_UFAfterInsert
    AfterEdit = Tb_CLFISCAL_UFAfterEdit
    AfterPost = c
    AfterCancel = Tb_CLFISCAL_UFAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from '
      'CADCLFISCAL_UF')
    UpdateObject = U_CLFISCAL_UF
    Left = 24
    Top = 224
    object Tb_CLFISCAL_UFCFCODEMP: TFloatField
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODEMP'
    end
    object Tb_CLFISCAL_UFCFUF: TStringField
      FieldName = 'CFUF'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFUF'
      Size = 2
    end
    object Tb_CLFISCAL_UFCFCLAS_FISCAL: TStringField
      FieldName = 'CFCLAS_FISCAL'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCLAS_FISCAL'
    end
    object Tb_CLFISCAL_UFCFCST_RV: TStringField
      FieldName = 'CFCST_RV'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCST_RV'
    end
    object Tb_CLFISCAL_UFCFCST_CF: TStringField
      FieldName = 'CFCST_CF'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCST_CF'
    end
    object Tb_CLFISCAL_UFCFCODUSR_INC: TFloatField
      FieldName = 'CFCODUSR_INC'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODUSR_INC'
    end
    object Tb_CLFISCAL_UFCFDATHOR_INC: TDateTimeField
      FieldName = 'CFDATHOR_INC'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFDATHOR_INC'
    end
    object Tb_CLFISCAL_UFCFCODUSR_ALT: TFloatField
      FieldName = 'CFCODUSR_ALT'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODUSR_ALT'
    end
    object Tb_CLFISCAL_UFCFDATHOR_ALT: TDateTimeField
      FieldName = 'CFDATHOR_ALT'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFDATHOR_ALT'
    end
  end
  object U_CLFISCAL_UF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLFISCAL_UF'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFUF = :CFUF,'
      '  CFCLAS_FISCAL = :CFCLAS_FISCAL,'
      '  CFCST_RV = :CFCST_RV,'
      '  CFCST_CF = :CFCST_CF,'
      '  CFCODUSR_INC = :CFCODUSR_INC,'
      '  CFDATHOR_INC = :CFDATHOR_INC,'
      '  CFCODUSR_ALT = :CFCODUSR_ALT,'
      '  CFDATHOR_ALT = :CFDATHOR_ALT'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFUF = :OLD_CFUF and'
      '  CFCLAS_FISCAL = :OLD_CFCLAS_FISCAL')
    InsertSQL.Strings = (
      'insert into CADCLFISCAL_UF'
      
        '  (CFCODEMP, CFUF, CFCLAS_FISCAL, CFCST_RV, CFCST_CF, CFCODUSR_I' +
        'NC, '
      'CFDATHOR_INC, '
      '   CFCODUSR_ALT, CFDATHOR_ALT)'
      'values'
      '  (:CFCODEMP, :CFUF, :CFCLAS_FISCAL, :CFCST_RV, :CFCST_CF,'
      ':CFCODUSR_INC,'
      '   :CFDATHOR_INC, :CFCODUSR_ALT, :CFDATHOR_ALT )')
    DeleteSQL.Strings = (
      'delete from CADCLFISCAL_UF'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFUF = :OLD_CFUF and'
      '  CFCLAS_FISCAL = :OLD_CFCLAS_FISCAL')
    Left = 55
    Top = 224
  end
  object Src_CLFISCAL_UF: TDataSource
    Left = 85
    Top = 225
  end
  object Tb_ParLCD: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_ParLCDCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARLCD')
    UpdateObject = U_ParLCD
    Left = 160
    Top = 216
    object Tb_ParLCDLCD_DESCLOC: TStringField
      FieldName = 'LCD_DESCLOC'
      Origin = 'SG_ASSOC.PARLCD.LCD_DESCLOC'
      Size = 100
    end
    object Tb_ParLCDLCD_ENDLOC: TStringField
      FieldName = 'LCD_ENDLOC'
      Origin = 'SG_ASSOC.PARLCD.LCD_ENDLOC'
      Size = 200
    end
    object Tb_ParLCDLCD_ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'LCD_ORDEM'
      Origin = 'SG_ASSOC.PARLCD.LCD_ORDEM'
    end
    object Tb_ParLCDLCD_CODUSR_INC: TFloatField
      DisplayLabel = 'Usr.Inclusao'
      FieldName = 'LCD_CODUSR_INC'
      Origin = 'SG_ASSOC.PARLCD.LCD_CODUSR_INC'
    end
    object Tb_ParLCDLCD_DATHOR_INC: TDateTimeField
      DisplayLabel = 'Data Inclusao'
      FieldName = 'LCD_DATHOR_INC'
      Origin = 'SG_ASSOC.PARLCD.LCD_DATHOR_INC'
    end
    object Tb_ParLCDLCD_CODUSR_ALT: TFloatField
      DisplayLabel = 'Usu'#225'rio Altera'#231#227'o'
      FieldName = 'LCD_CODUSR_ALT'
      Origin = 'SG_ASSOC.PARLCD.LCD_CODUSR_ALT'
    end
    object Tb_ParLCDLCD_DATHOR_ALT: TDateTimeField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'LCD_DATHOR_ALT'
      Origin = 'SG_ASSOC.PARLCD.LCD_DATHOR_ALT'
    end
    object Tb_ParLCDdescloc: TStringField
      DisplayLabel = 'Descri'#231#227'o do Local'
      FieldKind = fkCalculated
      FieldName = 'descloc'
      Size = 100
      Calculated = True
    end
    object Tb_ParLCDendloc: TStringField
      DisplayLabel = 'Endere'#231'o do Local'
      FieldKind = fkCalculated
      FieldName = 'endloc'
      Size = 200
      Calculated = True
    end
    object Tb_ParLCDLCD_TIPSERV: TFloatField
      FieldName = 'LCD_TIPSERV'
      Origin = 'SG_ASSOC.PARLCD.LCD_TIPSERV'
    end
  end
  object U_ParLCD: TUpdateSQL
    ModifySQL.Strings = (
      'update PARLCD'
      'set'
      '  LCD_ORDEM = :LCD_ORDEM,'
      '  LCD_DESCLOC = :LCD_DESCLOC,'
      '  LCD_ENDLOC = :LCD_ENDLOC,'
      '  LCD_CODUSR_INC = :LCD_CODUSR_INC,'
      '  LCD_DATHOR_INC = :LCD_DATHOR_INC,'
      '  LCD_CODUSR_ALT = :LCD_CODUSR_ALT,'
      '  LCD_DATHOR_ALT = :LCD_DATHOR_ALT,'
      '  LCD_TIPSERV = :LCD_TIPSERV'
      'where'
      '  LCD_ORDEM = :OLD_LCD_ORDEM and'
      '  LCD_DESCLOC = :OLD_LCD_DESCLOC and'
      '  LCD_ENDLOC = :OLD_LCD_ENDLOC')
    InsertSQL.Strings = (
      'insert into PARLCD'
      '  (LCD_ORDEM, LCD_DESCLOC, LCD_ENDLOC, LCD_CODUSR_INC, '
      'LCD_DATHOR_INC, '
      '   LCD_CODUSR_ALT, LCD_DATHOR_ALT, LCD_TIPSERV)'
      'values'
      '  (:LCD_ORDEM, :LCD_DESCLOC, :LCD_ENDLOC, :LCD_CODUSR_INC, '
      ':LCD_DATHOR_INC, '
      '   :LCD_CODUSR_ALT, :LCD_DATHOR_ALT, :LCD_TIPSERV)')
    DeleteSQL.Strings = (
      'delete from PARLCD'
      'where'
      '  LCD_ORDEM = :OLD_LCD_ORDEM and'
      '  LCD_DESCLOC = :OLD_LCD_DESCLOC and'
      '  LCD_ENDLOC = :OLD_LCD_ENDLOC')
    Left = 189
    Top = 216
  end
  object Src_PARLCD: TDataSource
    DataSet = Tb_ParLCD
    Left = 217
    Top = 216
  end
  object Tb_ChqCP: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_ChqCPBeforeInsert
    AfterInsert = Tb_ChqCPAfterInsert
    BeforePost = Tb_ChqCPBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_ChqCPCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * from CADCHCP where'
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
    UpdateObject = U_ChqCP
    Left = 22
    Top = 277
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
    object Tb_ChqCPpro_ultdat: TDateField
      FieldKind = fkCalculated
      FieldName = 'pro_ultdat'
      Calculated = True
    end
    object Tb_ChqCPdtbx: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Calculated = True
    end
    object Tb_ChqCPnomfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfor'
      Size = 40
      Calculated = True
    end
    object Tb_ChqCPCHCODEMP: TFloatField
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.CADCHCP.CHCODEMP'
    end
    object Tb_ChqCPCHSEQ: TFloatField
      FieldName = 'CHSEQ'
      Origin = 'SG_ASSOC.CADCHCP.CHSEQ'
    end
    object Tb_ChqCPCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHCP.CHNUMERO'
    end
    object Tb_ChqCPCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHCP.CHBANCO'
    end
    object Tb_ChqCPCHSERIE: TStringField
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHCP.CHSERIE'
    end
    object Tb_ChqCPCHCODFOR: TFloatField
      FieldName = 'CHCODFOR'
      Origin = 'SG_ASSOC.CADCHCP.CHCODFOR'
    end
    object Tb_ChqCPCHEMIT: TStringField
      FieldName = 'CHEMIT'
      Origin = 'SG_ASSOC.CADCHCP.CHEMIT'
      Size = 40
    end
    object Tb_ChqCPCHCPF: TFloatField
      FieldName = 'CHCPF'
      Origin = 'SG_ASSOC.CADCHCP.CHCPF'
    end
    object Tb_ChqCPCHRG: TStringField
      FieldName = 'CHRG'
      Origin = 'SG_ASSOC.CADCHCP.CHRG'
      Size = 40
    end
    object Tb_ChqCPCHCC: TStringField
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.CADCHCP.CHCC'
    end
    object Tb_ChqCPCHDTNAS: TDateTimeField
      FieldName = 'CHDTNAS'
      Origin = 'SG_ASSOC.CADCHCP.CHDTNAS'
    end
    object Tb_ChqCPCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHCP.CHVALOR'
    end
    object Tb_ChqCPCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHCP.CHDTEMIS'
    end
    object Tb_ChqCPCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHCP.CHDTDEP'
    end
    object Tb_ChqCPCHAGENCIA: TStringField
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.CADCHCP.CHAGENCIA'
      Size = 10
    end
    object Tb_ChqCPCHLOTE: TFloatField
      FieldName = 'CHLOTE'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTE'
    end
    object Tb_ChqCPCHTIPO: TFloatField
      FieldName = 'CHTIPO'
      Origin = 'SG_ASSOC.CADCHCP.CHTIPO'
    end
    object Tb_ChqCPCHDTBX: TDateTimeField
      FieldName = 'CHDTBX'
      Origin = 'SG_ASSOC.CADCHCP.CHDTBX'
    end
    object Tb_ChqCPCHUSRBX: TFloatField
      FieldName = 'CHUSRBX'
      Origin = 'SG_ASSOC.CADCHCP.CHUSRBX'
    end
    object Tb_ChqCPCHSTATUS: TFloatField
      FieldName = 'CHSTATUS'
      Origin = 'SG_ASSOC.CADCHCP.CHSTATUS'
    end
    object Tb_ChqCPCHCAIXA: TFloatField
      FieldName = 'CHCAIXA'
      Origin = 'SG_ASSOC.CADCHCP.CHCAIXA'
    end
    object Tb_ChqCPCHCOMP: TStringField
      FieldName = 'CHCOMP'
      Origin = 'SG_ASSOC.CADCHCP.CHCOMP'
      Size = 4
    end
    object Tb_ChqCPCHLOTEBX: TFloatField
      FieldName = 'CHLOTEBX'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTEBX'
    end
    object Tb_ChqCPCHLOTSEQ: TFloatField
      FieldName = 'CHLOTSEQ'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTSEQ'
    end
    object Tb_ChqCPCHLEMAT: TFloatField
      FieldName = 'CHLEMAT'
      Origin = 'SG_ASSOC.CADCHCP.CHLEMAT'
    end
    object Tb_ChqCPCHOBSL01: TStringField
      FieldName = 'CHOBSL01'
      Origin = 'SG_ASSOC.CADCHCP.CHOBSL01'
      Size = 60
    end
    object Tb_ChqCPCHOBSL02: TStringField
      FieldName = 'CHOBSL02'
      Origin = 'SG_ASSOC.CADCHCP.CHOBSL02'
      Size = 60
    end
    object Tb_ChqCPCHPROR_QTDP: TFloatField
      FieldName = 'CHPROR_QTDP'
      Origin = 'SG_ASSOC.CADCHCP.CHPROR_QTDP'
    end
    object Tb_ChqCPCHPRO_ULTDAT: TDateTimeField
      FieldName = 'CHPRO_ULTDAT'
      Origin = 'SG_ASSOC.CADCHCP.CHPRO_ULTDAT'
    end
    object Tb_ChqCPCHDEPOSITO: TFloatField
      FieldName = 'CHDEPOSITO'
      Origin = 'SG_ASSOC.CADCHCP.CHDEPOSITO'
    end
    object Tb_ChqCPCHCODUSR: TFloatField
      FieldName = 'CHCODUSR'
      Origin = 'SG_ASSOC.CADCHCP.CHCODUSR'
    end
    object Tb_ChqCPCHDTALT: TDateTimeField
      FieldName = 'CHDTALT'
      Origin = 'SG_ASSOC.CADCHCP.CHDTALT'
    end
    object Tb_ChqCPCHHRALT: TStringField
      FieldName = 'CHHRALT'
      Origin = 'SG_ASSOC.CADCHCP.CHHRALT'
      Size = 10
    end
    object Tb_ChqCPCHLOTSEQ_FC: TFloatField
      FieldName = 'CHLOTSEQ_FC'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTSEQ_FC'
    end
    object Tb_ChqCPCHCODLDR: TFloatField
      FieldName = 'CHCODLDR'
      Origin = 'SG_ASSOC.CADCHCP.CHCODLDR'
    end
    object Tb_ChqCPCHCODCTA: TFloatField
      FieldName = 'CHCODCTA'
      Origin = 'SG_ASSOC.CADCHCP.CHCODCTA'
    end
    object Tb_ChqCPCHNOMCTA: TStringField
      FieldName = 'CHNOMCTA'
      Origin = 'SG_ASSOC.CADCHCP.CHNOMCTA'
      Size = 40
    end
    object Tb_ChqCPCHCODCC: TStringField
      FieldName = 'CHCODCC'
      Origin = 'SG_ASSOC.CADCHCP.CHCODCC'
      Size = 5
    end
    object Tb_ChqCPCHNOMCC: TStringField
      FieldName = 'CHNOMCC'
      Origin = 'SG_ASSOC.CADCHCP.CHNOMCC'
      Size = 40
    end
    object Tb_ChqCPCHNATDC: TStringField
      FieldName = 'CHNATDC'
      Origin = 'SG_ASSOC.CADCHCP.CHNATDC'
      Size = 1
    end
    object Tb_ChqCPCHCODDEP: TStringField
      FieldName = 'CHCODDEP'
      Origin = 'SG_ASSOC.CADCHCP.CHCODDEP'
      Size = 5
    end
    object Tb_ChqCPCHNOMDEP: TStringField
      FieldName = 'CHNOMDEP'
      Origin = 'SG_ASSOC.CADCHCP.CHNOMDEP'
      Size = 40
    end
    object Tb_ChqCPCHDESCMV: TStringField
      FieldName = 'CHDESCMV'
      Origin = 'SG_ASSOC.CADCHCP.CHDESCMV'
      Size = 60
    end
    object Tb_ChqCPCHLOTSEQ_BT: TFloatField
      FieldName = 'CHLOTSEQ_BT'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTSEQ_BT'
    end
    object Tb_ChqCPCHLOTE_BT: TFloatField
      FieldName = 'CHLOTE_BT'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTE_BT'
    end
    object Tb_ChqCPCHLOTSEQ_FC_DEB: TFloatField
      FieldName = 'CHLOTSEQ_FC_DEB'
      Origin = 'SG_ASSOC.CADCHCP.CHLOTSEQ_FC_DEB'
    end
    object Tb_ChqCPCHCODLDR_DEB: TFloatField
      FieldName = 'CHCODLDR_DEB'
      Origin = 'SG_ASSOC.CADCHCP.CHCODLDR_DEB'
    end
    object Tb_ChqCPCHDATHOR_INC: TDateTimeField
      FieldName = 'CHDATHOR_INC'
      Origin = 'SG_ASSOC.CADCHCP.CHDATHOR_INC'
    end
    object Tb_ChqCPCHCODUSR_INC: TFloatField
      FieldName = 'CHCODUSR_INC'
      Origin = 'SG_ASSOC.CADCHCP.CHCODUSR_INC'
    end
    object Tb_ChqCPCHDATHOR_ALT: TDateTimeField
      FieldName = 'CHDATHOR_ALT'
      Origin = 'SG_ASSOC.CADCHCP.CHDATHOR_ALT'
    end
    object Tb_ChqCPCHCODUSR_ALT: TFloatField
      FieldName = 'CHCODUSR_ALT'
      Origin = 'SG_ASSOC.CADCHCP.CHCODUSR_ALT'
    end
  end
  object U_ChqCP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCHCP'
      'set'
      '  CHCODEMP = :CHCODEMP,'
      '  CHSEQ = :CHSEQ,'
      '  CHLOTSEQ = :CHLOTSEQ,'
      '  CHNUMERO = :CHNUMERO,'
      '  CHBANCO = :CHBANCO,'
      '  CHSERIE = :CHSERIE,'
      '  CHCOMP = :CHCOMP,'
      '  CHCODFOR = :CHCODFOR,'
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
      '  CHDTBX = :CHDTBX,'
      '  CHUSRBX = :CHUSRBX,'
      '  CHSTATUS = :CHSTATUS,'
      '  CHCAIXA = :CHCAIXA,'
      '  CHLEMAT = :CHLEMAT,'
      '  CHPROR_QTDP = :CHPROR_QTDP,'
      '  CHPRO_ULTDAT = :CHPRO_ULTDAT,'
      '  CHOBSL01 = :CHOBSL01,'
      '  CHOBSL02 = :CHOBSL02,'
      '  CHCODUSR = :CHCODUSR,'
      '  CHDTALT = :CHDTALT,'
      '  CHHRALT = :CHHRALT,'
      '  CHDEPOSITO = :CHDEPOSITO,'
      '  CHLOTSEQ_FC = :CHLOTSEQ_FC,'
      '  CHCODLDR = :CHCODLDR,'
      '  CHCODCTA = :CHCODCTA,'
      '  CHLOTSEQ_FC_DEB = :CHLOTSEQ_FC_DEB,'
      '  CHCODLDR_DEB = :CHCODLDR_DEB,'
      '  CHNOMCTA = :CHNOMCTA,'
      '  CHCODCC = :CHCODCC,'
      '  CHNOMCC = :CHNOMCC,'
      '  CHNATDC = :CHNATDC,'
      '  CHCODDEP = :CHCODDEP,'
      '  CHNOMDEP = :CHNOMDEP,'
      '  CHDESCMV = :CHDESCMV,'
      '  CHLOTSEQ_BT = :CHLOTSEQ_BT,'
      '  CHLOTE_BT = :CHLOTE_BT,'
      '  CHDATHOR_INC = :CHDATHOR_INC,'
      '  CHCODUSR_INC = :CHCODUSR_INC,'
      '  CHDATHOR_ALT = :CHDATHOR_ALT,'
      '  CHCODUSR_ALT = :CHCODUSR_ALT'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    InsertSQL.Strings = (
      'insert into CADCHCP'
      '  (CHCODEMP, CHSEQ, CHLOTSEQ, CHNUMERO, CHBANCO, CHSERIE, '
      'CHCOMP, CHCODFOR, '
      
        '   CHEMIT, CHCPF, CHRG, CHCC, CHDTNAS, CHVALOR, CHDTEMIS, CHDTDE' +
        'P, '
      'CHAGENCIA, '
      
        '   CHLOTE, CHLOTEBX, CHTIPO, CHDTBX, CHUSRBX, CHSTATUS, CHCAIXA,' +
        ' '
      'CHLEMAT, '
      '   CHPROR_QTDP, CHPRO_ULTDAT, CHOBSL01, CHOBSL02, CHCODUSR, '
      'CHDTALT, CHHRALT, '
      
        '   CHDEPOSITO, CHLOTSEQ_FC, CHCODLDR, CHCODCTA, CHLOTSEQ_FC_DEB,' +
        ' '
      'CHCODLDR_DEB, '
      '   CHNOMCTA, CHCODCC, CHNOMCC, CHNATDC, CHCODDEP, CHNOMDEP, '
      'CHDESCMV, CHLOTSEQ_BT, '
      '   CHLOTE_BT, CHDATHOR_INC, CHCODUSR_INC, CHDATHOR_ALT, '
      'CHCODUSR_ALT)'
      'values'
      '  (:CHCODEMP, :CHSEQ, :CHLOTSEQ, :CHNUMERO, :CHBANCO, :CHSERIE, '
      ':CHCOMP, '
      
        '   :CHCODFOR, :CHEMIT, :CHCPF, :CHRG, :CHCC, :CHDTNAS, :CHVALOR,' +
        ' '
      ':CHDTEMIS, '
      '   :CHDTDEP, :CHAGENCIA, :CHLOTE, :CHLOTEBX, :CHTIPO, :CHDTBX, '
      ':CHUSRBX, '
      '   :CHSTATUS, :CHCAIXA, :CHLEMAT, :CHPROR_QTDP, :CHPRO_ULTDAT, '
      ':CHOBSL01, '
      '   :CHOBSL02, :CHCODUSR, :CHDTALT, :CHHRALT, :CHDEPOSITO, '
      ':CHLOTSEQ_FC, '
      '   :CHCODLDR, :CHCODCTA, :CHLOTSEQ_FC_DEB, :CHCODLDR_DEB, '
      ':CHNOMCTA, :CHCODCC, '
      '   :CHNOMCC, :CHNATDC, :CHCODDEP, :CHNOMDEP, :CHDESCMV, '
      ':CHLOTSEQ_BT, :CHLOTE_BT, '
      '   :CHDATHOR_INC, :CHCODUSR_INC, :CHDATHOR_ALT, :CHCODUSR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADCHCP'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    Left = 50
    Top = 277
  end
  object Src_ChqCP: TDataSource
    DataSet = Tb_ChqCP
    Left = 78
    Top = 277
  end
  object Tb_NFE_Pais: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_NFE_PaisBeforeInsert
    AfterInsert = Tb_NFE_PaisAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from NFE_CADPAIS')
    UpdateObject = U_NFE_Pais
    Left = 152
    Top = 272
    object Tb_NFE_PaisCPCODPAIS: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODPAIS'
      Origin = 'SG_ASSOC.NFE_CADPAIS.CPCODPAIS'
    end
    object Tb_NFE_PaisCPNOMEPAIS: TStringField
      DisplayLabel = 'Nome do Pais'
      FieldName = 'CPNOMEPAIS'
      Origin = 'SG_ASSOC.NFE_CADPAIS.CPNOMEPAIS'
      Size = 40
    end
  end
  object U_NFE_Pais: TUpdateSQL
    ModifySQL.Strings = (
      'update NFE_CADPAIS'
      'set'
      '  CPCODPAIS = :CPCODPAIS,'
      '  CPNOMEPAIS = :CPNOMEPAIS'
      'where'
      '  CPCODPAIS = :OLD_CPCODPAIS')
    InsertSQL.Strings = (
      'insert into NFE_CADPAIS'
      '  (CPCODPAIS, CPNOMEPAIS)'
      'values'
      '  (:CPCODPAIS, :CPNOMEPAIS)')
    DeleteSQL.Strings = (
      'delete from NFE_CADPAIS'
      'where'
      '  CPCODPAIS = :OLD_CPCODPAIS')
    Left = 183
    Top = 272
  end
  object Src_NFE_Pais: TDataSource
    DataSet = Tb_NFE_Pais
    Left = 213
    Top = 272
  end
  object Tb_NFE_Reg: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_NFE_RegBeforeInsert
    AfterInsert = Tb_NFE_RegAfterInsert
    OnCalcFields = Tb_NFE_RegCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from NFE_CADREG')
    UpdateObject = U_NFE_Reg
    Left = 287
    Top = 61
    object Tb_NFE_RegCRCODREG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CRCODREG'
      Origin = 'SG_ASSOC.NFE_CADREG.CRCODREG'
    end
    object Tb_NFE_RegCRNOMREG: TStringField
      DisplayLabel = 'Nome da Regi'#227'o'
      FieldName = 'CRNOMREG'
      Origin = 'SG_ASSOC.NFE_CADREG.CRNOMREG'
      Size = 40
    end
    object Tb_NFE_RegCRCODPAIS: TFloatField
      DisplayLabel = 'C'#243'digo Pais'
      FieldName = 'CRCODPAIS'
      Origin = 'SG_ASSOC.NFE_CADREG.CRCODPAIS'
    end
  end
  object Src_NFE_Reg: TDataSource
    DataSet = Tb_NFE_Reg
    Left = 411
    Top = 63
  end
  object U_NFE_Reg: TUpdateSQL
    ModifySQL.Strings = (
      'update NFE_CADREG'
      'set'
      '  CRCODREG = :CRCODREG,'
      '  CRCODPAIS = :CRCODPAIS,'
      '  CRNOMREG = :CRNOMREG'
      'where'
      '  CRCODREG = :OLD_CRCODREG and'
      '  CRCODPAIS = :OLD_CRCODPAIS')
    InsertSQL.Strings = (
      'insert into NFE_CADREG'
      '  (CRCODREG, CRCODPAIS, CRNOMREG)'
      'values'
      '  (:CRCODREG, :CRCODPAIS, :CRNOMREG)')
    DeleteSQL.Strings = (
      'delete from NFE_CADREG'
      'where'
      '  CRCODREG = :OLD_CRCODREG and'
      '  CRCODPAIS = :OLD_CRCODPAIS')
    Left = 347
    Top = 61
  end
  object Tb_Depen: TQuery
    CachedUpdates = True
    AfterInsert = Tb_DepenAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADTDEP')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Depen
    Left = 20
    Top = 340
    object Tb_DepenTDCODEMP: TFloatField
      FieldName = 'TDCODEMP'
      Origin = 'SG_ASSOC.CADTDEP.TDCODEMP'
    end
    object Tb_DepenTDCODDEP: TFloatField
      FieldName = 'TDCODDEP'
      Origin = 'SG_ASSOC.CADTDEP.TDCODDEP'
    end
    object Tb_DepenTPDNOME: TStringField
      FieldName = 'TPDNOME'
      Origin = 'SG_ASSOC.CADTDEP.TPDNOME'
      Size = 30
    end
  end
  object U_Depen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTDEP'
      'set'
      '  TDCODEMP = :TDCODEMP,'
      '  TDCODDEP = :TDCODDEP,'
      '  TPDNOME = :TPDNOME'
      'where'
      '  TDCODEMP = :OLD_TDCODEMP and'
      '  TDCODDEP = :OLD_TDCODDEP')
    InsertSQL.Strings = (
      'insert into CADTDEP'
      '  (TDCODEMP, TDCODDEP, TPDNOME)'
      'values'
      '  (:TDCODEMP, :TDCODDEP, :TPDNOME)')
    DeleteSQL.Strings = (
      'delete from CADTDEP'
      'where'
      '  TDCODEMP = :OLD_TDCODEMP and'
      '  TDCODDEP = :OLD_TDCODDEP')
    Left = 60
    Top = 340
  end
  object Tb_Sind: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_SindBeforeInsert
    AfterInsert = Tb_SindAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadsind where sdcodemp is null order by sdcodsind')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Sind
    Left = 20
    Top = 395
    object Tb_SindSDCODEMP: TFloatField
      FieldName = 'SDCODEMP'
      Origin = 'SG_ASSOC.CADSIND.SDCODEMP'
    end
    object Tb_SindSDCODSIND: TFloatField
      FieldName = 'SDCODSIND'
      Origin = 'SG_ASSOC.CADSIND.SDCODSIND'
    end
    object Tb_SindSDNOME: TStringField
      FieldName = 'SDNOME'
      Origin = 'SG_ASSOC.CADSIND.SDNOME'
      Size = 40
    end
    object Tb_SindSDCNPJ: TStringField
      FieldName = 'SDCNPJ'
      Origin = 'SG_ASSOC.CADSIND.SDCNPJ'
      Size = 18
    end
    object Tb_SindSDENDE: TStringField
      FieldName = 'SDENDE'
      Origin = 'SG_ASSOC.CADSIND.SDENDE'
      Size = 40
    end
    object Tb_SindSDBAIRRO: TFloatField
      FieldName = 'SDBAIRRO'
      Origin = 'SG_ASSOC.CADSIND.SDBAIRRO'
    end
    object Tb_SindSDNOMEBAIRRO: TStringField
      FieldName = 'SDNOMEBAIRRO'
      Origin = 'SG_ASSOC.CADSIND.SDNOMEBAIRRO'
      Size = 35
    end
    object Tb_SindSDCODCIDA: TFloatField
      FieldName = 'SDCODCIDA'
      Origin = 'SG_ASSOC.CADSIND.SDCODCIDA'
    end
    object Tb_SindSDNOMECIDA: TStringField
      FieldName = 'SDNOMECIDA'
      Origin = 'SG_ASSOC.CADSIND.SDNOMECIDA'
      Size = 35
    end
    object Tb_SindSDUFED: TStringField
      FieldName = 'SDUFED'
      Origin = 'SG_ASSOC.CADSIND.SDUFED'
      Size = 2
    end
    object Tb_SindSDCEP: TStringField
      FieldName = 'SDCEP'
      Origin = 'SG_ASSOC.CADSIND.SDCEP'
      Size = 10
    end
    object Tb_SindSDFONE: TStringField
      FieldName = 'SDFONE'
      Origin = 'SG_ASSOC.CADSIND.SDFONE'
      Size = 14
    end
    object Tb_SindSDPERSAL: TFloatField
      FieldName = 'SDPERSAL'
      Origin = 'SG_ASSOC.CADSIND.SDPERSAL'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Tb_SindSDVLRVALIME: TFloatField
      FieldName = 'SDVLRVALIME'
      Origin = 'SG_ASSOC.CADSIND.SDVLRVALIME'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Tb_SindSDVLRSEG: TFloatField
      FieldName = 'SDVLRSEG'
      Origin = 'SG_ASSOC.CADSIND.SDVLRSEG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Tb_SindSDDT_CAD: TDateTimeField
      FieldName = 'SDDT_CAD'
      Origin = 'SG_ASSOC.CADSIND.SDDT_CAD'
    end
    object Tb_SindSDDT_UALT: TDateTimeField
      FieldName = 'SDDT_UALT'
      Origin = 'SG_ASSOC.CADSIND.SDDT_UALT'
    end
    object Tb_SindSDCODUSR: TFloatField
      FieldName = 'SDCODUSR'
      Origin = 'SG_ASSOC.CADSIND.SDCODUSR'
    end
  end
  object U_Sind: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsind'
      'set'
      '  SDCODEMP = :SDCODEMP,'
      '  SDCODSIND = :SDCODSIND,'
      '  SDNOME = :SDNOME,'
      '  SDCNPJ = :SDCNPJ,'
      '  SDENDE = :SDENDE,'
      '  SDBAIRRO = :SDBAIRRO,'
      '  SDNOMEBAIRRO = :SDNOMEBAIRRO,'
      '  SDCODCIDA = :SDCODCIDA,'
      '  SDNOMECIDA = :SDNOMECIDA,'
      '  SDUFED = :SDUFED,'
      '  SDCEP = :SDCEP,'
      '  SDFONE = :SDFONE,'
      '  SDPERSAL = :SDPERSAL,'
      '  SDVLRVALIME = :SDVLRVALIME,'
      '  SDVLRSEG = :SDVLRSEG,'
      '  SDDT_CAD = :SDDT_CAD,'
      '  SDDT_UALT = :SDDT_UALT,'
      '  SDCODUSR = :SDCODUSR'
      'where'
      '  SDCODEMP = :OLD_SDCODEMP and'
      '  SDCODSIND = :OLD_SDCODSIND and'
      '  SDNOME = :OLD_SDNOME and'
      '  SDCNPJ = :OLD_SDCNPJ and'
      '  SDENDE = :OLD_SDENDE and'
      '  SDBAIRRO = :OLD_SDBAIRRO and'
      '  SDNOMEBAIRRO = :OLD_SDNOMEBAIRRO and'
      '  SDCODCIDA = :OLD_SDCODCIDA and'
      '  SDNOMECIDA = :OLD_SDNOMECIDA and'
      '  SDUFED = :OLD_SDUFED and'
      '  SDCEP = :OLD_SDCEP and'
      '  SDFONE = :OLD_SDFONE and'
      '  SDPERSAL = :OLD_SDPERSAL and'
      '  SDVLRVALIME = :OLD_SDVLRVALIME and'
      '  SDVLRSEG = :OLD_SDVLRSEG and'
      '  SDDT_CAD = :OLD_SDDT_CAD and'
      '  SDDT_UALT = :OLD_SDDT_UALT and'
      '  SDCODUSR = :OLD_SDCODUSR')
    InsertSQL.Strings = (
      'insert into cadsind'
      
        '  (SDCODEMP, SDCODSIND, SDNOME, SDCNPJ, SDENDE, SDBAIRRO, SDNOME' +
        'BAIRRO, '
      
        '   SDCODCIDA, SDNOMECIDA, SDUFED, SDCEP, SDFONE, SDPERSAL, SDVLR' +
        'VALIME, '
      '   SDVLRSEG, SDDT_CAD, SDDT_UALT, SDCODUSR)'
      'values'
      
        '  (:SDCODEMP, :SDCODSIND, :SDNOME, :SDCNPJ, :SDENDE, :SDBAIRRO, ' +
        ':SDNOMEBAIRRO, '
      
        '   :SDCODCIDA, :SDNOMECIDA, :SDUFED, :SDCEP, :SDFONE, :SDPERSAL,' +
        ' :SDVLRVALIME, '
      '   :SDVLRSEG, :SDDT_CAD, :SDDT_UALT, :SDCODUSR)')
    DeleteSQL.Strings = (
      'delete from cadsind'
      'where'
      '  SDCODEMP = :OLD_SDCODEMP and'
      '  SDCODSIND = :OLD_SDCODSIND and'
      '  SDNOME = :OLD_SDNOME and'
      '  SDCNPJ = :OLD_SDCNPJ and'
      '  SDENDE = :OLD_SDENDE and'
      '  SDBAIRRO = :OLD_SDBAIRRO and'
      '  SDNOMEBAIRRO = :OLD_SDNOMEBAIRRO and'
      '  SDCODCIDA = :OLD_SDCODCIDA and'
      '  SDNOMECIDA = :OLD_SDNOMECIDA and'
      '  SDUFED = :OLD_SDUFED and'
      '  SDCEP = :OLD_SDCEP and'
      '  SDFONE = :OLD_SDFONE and'
      '  SDPERSAL = :OLD_SDPERSAL and'
      '  SDVLRVALIME = :OLD_SDVLRVALIME and'
      '  SDVLRSEG = :OLD_SDVLRSEG and'
      '  SDDT_CAD = :OLD_SDDT_CAD and'
      '  SDDT_UALT = :OLD_SDDT_UALT and'
      '  SDCODUSR = :OLD_SDCODUSR')
    Left = 60
    Top = 395
  end
  object Ds_Depen: TDataSource
    DataSet = Tb_Depen
    Left = 95
    Top = 340
  end
  object Ds_Sind: TDataSource
    DataSet = Tb_Sind
    Left = 95
    Top = 395
  end
  object Tb_Turno: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TurnoBeforeInsert
    AfterInsert = Tb_TurnoAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select * from cadturno where tr_codemp is null order by tr_codtu' +
        'rno')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Turno
    Left = 20
    Top = 450
    object Tb_TurnoTR_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd Empresa'
      FieldName = 'TR_CODEMP'
      Origin = 'SG_ASSOC.CADTURNO.TR_CODEMP'
    end
    object Tb_TurnoTR_CODTURNO: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'TR_CODTURNO'
      Origin = 'SG_ASSOC.CADTURNO.TR_CODTURNO'
    end
    object Tb_TurnoTR_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TR_DESCRICAO'
      Origin = 'SG_ASSOC.CADTURNO.TR_DESCRICAO'
      Size = 30
    end
    object Tb_TurnoTR_HRSE1: TDateTimeField
      DisplayLabel = 'Hora entrada'
      FieldName = 'TR_HRSE1'
      Origin = 'SG_ASSOC.CADTURNO.TR_HRSE1'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object Tb_TurnoTR_HRSS1: TDateTimeField
      DisplayLabel = 'Horario Saida Intervalo'
      FieldName = 'TR_HRSS1'
      Origin = 'SG_ASSOC.CADTURNO.TR_HRSS1'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object Tb_TurnoTR_HRSE2: TDateTimeField
      DisplayLabel = 'Horario Entrada Apos Intervalo'
      FieldName = 'TR_HRSE2'
      Origin = 'SG_ASSOC.CADTURNO.TR_HRSE2'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object Tb_TurnoTR_HRSS2: TDateTimeField
      DisplayLabel = 'Horario de Saida'
      FieldName = 'TR_HRSS2'
      Origin = 'SG_ASSOC.CADTURNO.TR_HRSS2'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
  end
  object U_Turno: TUpdateSQL
    ModifySQL.Strings = (
      'update cadturno'
      'set'
      '  TR_CODEMP = :TR_CODEMP,'
      '  TR_CODTURNO = :TR_CODTURNO,'
      '  TR_DESCRICAO = :TR_DESCRICAO,'
      '  TR_HRSE1 = :TR_HRSE1,'
      '  TR_HRSS1 = :TR_HRSS1,'
      '  TR_HRSE2 = :TR_HRSE2,'
      '  TR_HRSS2 = :TR_HRSS2'
      'where'
      '  TR_CODEMP = :OLD_TR_CODEMP and'
      '  TR_CODTURNO = :OLD_TR_CODTURNO and'
      '  TR_DESCRICAO = :OLD_TR_DESCRICAO and'
      '  TR_HRSE1 = :OLD_TR_HRSE1 and'
      '  TR_HRSS1 = :OLD_TR_HRSS1 and'
      '  TR_HRSE2 = :OLD_TR_HRSE2 and'
      '  TR_HRSS2 = :OLD_TR_HRSS2')
    InsertSQL.Strings = (
      'insert into cadturno'
      
        '  (TR_CODEMP, TR_CODTURNO, TR_DESCRICAO, TR_HRSE1, TR_HRSS1, TR_' +
        'HRSE2, '
      '   TR_HRSS2)'
      'values'
      
        '  (:TR_CODEMP, :TR_CODTURNO, :TR_DESCRICAO, :TR_HRSE1, :TR_HRSS1' +
        ', :TR_HRSE2, '
      '   :TR_HRSS2)')
    DeleteSQL.Strings = (
      'delete from cadturno'
      'where'
      '  TR_CODEMP = :OLD_TR_CODEMP and'
      '  TR_CODTURNO = :OLD_TR_CODTURNO and'
      '  TR_DESCRICAO = :OLD_TR_DESCRICAO and'
      '  TR_HRSE1 = :OLD_TR_HRSE1 and'
      '  TR_HRSS1 = :OLD_TR_HRSS1 and'
      '  TR_HRSE2 = :OLD_TR_HRSE2 and'
      '  TR_HRSS2 = :OLD_TR_HRSS2')
    Left = 55
    Top = 450
  end
  object Ds_Turno: TDataSource
    DataSet = Tb_Turno
    Left = 93
    Top = 451
  end
  object Tb_Pro_InfNut: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_INFNUT')
    Left = 304
    Top = 136
    object Tb_Pro_InfNutPIN_CODEMP: TFloatField
      FieldName = 'PIN_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_INFNUT.PIN_CODEMP'
    end
    object Tb_Pro_InfNutPIN_CODPRO: TFloatField
      FieldName = 'PIN_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_INFNUT.PIN_CODPRO'
    end
    object Tb_Pro_InfNutPIN_MEDIDA: TStringField
      FieldName = 'PIN_MEDIDA'
      Origin = 'SG_ASSOC.CADPRO_INFNUT.PIN_MEDIDA'
      Size = 40
    end
    object Tb_Pro_InfNutPIN_PERCVD: TFloatField
      FieldName = 'PIN_PERCVD'
      Origin = 'SG_ASSOC.CADPRO_INFNUT.PIN_PERCVD'
    end
  end
  object Src_Pro_InfNut: TDataSource
    DataSet = Tb_Pro_InfNut
    Left = 338
    Top = 136
  end
  object Tb_Prod_Dep: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Prod_DepBeforeInsert
    AfterInsert = Tb_Prod_DepAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_DPTO')
    UpdateObject = U_Prod_Dep
    Left = 304
    Top = 200
    object Tb_Prod_DepPRODEP_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PRODEP_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_DPTO.PRODEP_CODEMP'
    end
    object Tb_Prod_DepPRODEP_CODDEP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODEP_CODDEP'
      Origin = 'SG_ASSOC.CADPRO_DPTO.PRODEP_CODDEP'
    end
    object Tb_Prod_DepPRODEP_NOME: TStringField
      DisplayLabel = 'Nome do Departamento'
      FieldName = 'PRODEP_NOME'
      Origin = 'SG_ASSOC.CADPRO_DPTO.PRODEP_NOME'
      Size = 40
    end
  end
  object Src_Prod_Dep: TDataSource
    DataSet = Tb_Prod_Dep
    Left = 336
    Top = 202
  end
  object U_Prod_Dep: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_DPTO'
      'set'
      '  PRODEP_CODEMP = :PRODEP_CODEMP,'
      '  PRODEP_CODDEP = :PRODEP_CODDEP,'
      '  PRODEP_NOME = :PRODEP_NOME'
      'where'
      '  PRODEP_CODEMP = :OLD_PRODEP_CODEMP and'
      '  PRODEP_CODDEP = :OLD_PRODEP_CODDEP')
    InsertSQL.Strings = (
      'insert into CADPRO_DPTO'
      '  (PRODEP_CODEMP, PRODEP_CODDEP, PRODEP_NOME)'
      'values'
      '  (:PRODEP_CODEMP, :PRODEP_CODDEP, :PRODEP_NOME)')
    DeleteSQL.Strings = (
      'delete from CADPRO_DPTO'
      'where'
      '  PRODEP_CODEMP = :OLD_PRODEP_CODEMP and'
      '  PRODEP_CODDEP = :OLD_PRODEP_CODDEP')
    Left = 368
    Top = 203
  end
  object Tb_Pro_CIN: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_CIN')
    UpdateObject = U_Pro_CIN
    Left = 160
    Top = 328
    object Tb_Pro_CINCIN_CODEMP: TFloatField
      FieldName = 'CIN_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_CIN.CIN_CODEMP'
    end
    object Tb_Pro_CINCIN_CODPRO: TFloatField
      FieldName = 'CIN_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_CIN.CIN_CODPRO'
    end
    object Tb_Pro_CINCIN_INFNUT: TStringField
      FieldName = 'CIN_INFNUT'
      Origin = 'SG_ASSOC.CADPRO_CIN.CIN_INFNUT'
      Size = 100
    end
    object Tb_Pro_CINCIN_OBSNUTRIC: TMemoField
      FieldName = 'CIN_OBSNUTRIC'
      Origin = 'SG_ASSOC.CADPRO_CIN.CIN_OBSNUTRIC'
      BlobType = ftMemo
      Size = 400
    end
    object Tb_Pro_CINCIN_CONDARMAZ: TMemoField
      FieldName = 'CIN_CONDARMAZ'
      Origin = 'SG_ASSOC.CADPRO_CIN.CIN_CONDARMAZ'
      BlobType = ftMemo
      Size = 400
    end
  end
  object Src_Pro_CIN: TDataSource
    DataSet = Tb_Pro_CIN
    Left = 188
    Top = 328
  end
  object U_Pro_CIN: TUpdateSQL
    Left = 224
    Top = 328
  end
  object Tb_RCli: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_RCliBeforeInsert
    AfterInsert = Tb_RCliAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRCLI')
    UpdateObject = U_RCli
    Left = 294
    Top = 257
    object Tb_RCliRCODEMP: TFloatField
      FieldName = 'RCODEMP'
      Origin = 'SG_ASSOC.CADRCLI.RCODEMP'
    end
    object Tb_RCliRCODRAM: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RCODRAM'
      Origin = 'SG_ASSOC.CADRCLI.RCODRAM'
    end
    object Tb_RCliRNOME: TStringField
      DisplayLabel = 'Nome do Ramo'
      FieldName = 'RNOME'
      Origin = 'SG_ASSOC.CADRCLI.RNOME'
      Size = 30
    end
  end
  object U_RCli: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRCLI'
      'set'
      '  RCODEMP = :RCODEMP,'
      '  RCODRAM = :RCODRAM,'
      '  RNOME = :RNOME'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RCODRAM = :OLD_RCODRAM')
    InsertSQL.Strings = (
      'insert into CADRCLI'
      '  (RCODEMP, RCODRAM, RNOME)'
      'values'
      '  (:RCODEMP, :RCODRAM, :RNOME)')
    DeleteSQL.Strings = (
      'delete from CADRCLI'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RCODRAM = :OLD_RCODRAM')
    Left = 330
    Top = 257
  end
  object Src_RCli: TDataSource
    DataSet = Tb_RCli
    Left = 365
    Top = 257
  end
  object mem_parlcd: TRxMemoryData
    FieldDefs = <
      item
        Name = 'descloc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'endloc'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ativo'
        DataType = ftString
        Size = 1
      end>
    Left = 200
    Top = 432
    object mem_parlcddescloc: TStringField
      FieldName = 'descloc'
      Size = 100
    end
    object mem_parlcdendloc: TStringField
      FieldName = 'endloc'
      Size = 200
    end
    object mem_parlcdativo: TStringField
      FieldName = 'ativo'
      Size = 1
    end
  end
  object Query_NFECab: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 344
    Top = 336
  end
  object Query_NFEDet: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 344
    Top = 392
  end
  object Query_NFEDup: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 344
    Top = 440
  end
  object Query_NFECampos: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT TABLE_NAME,COLUMN_NAME FROM USER_TAB_COLUMNS WHERE '
      '(TABLE_NAME='#39'NFE_CADCAB'#39
      'OR  TABLE_NAME='#39'NFE_CADDET'#39
      'OR TABLE_NAME='#39'NFE_CADDUP'#39')'
      'order by TABLE_NAME,COLUMN_NAME')
    Left = 432
    Top = 440
    object Query_NFECamposTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Origin = 'SG_ASSOC.USER_TAB_COLUMNS.TABLE_NAME'
      Size = 30
    end
    object Query_NFECamposCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Origin = 'SG_ASSOC.USER_TAB_COLUMNS.COLUMN_NAME'
      Size = 30
    end
  end
  object Tb_Pro_Ext: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Pro_ExtBeforeInsert
    AfterInsert = Tb_Pro_ExtAfterInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_EXT')
    UpdateObject = Up_Pro_Ext
    Left = 496
    Top = 344
    object Tb_Pro_ExtPROEXT_CODEMP: TFloatField
      FieldName = 'PROEXT_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_CODEMP'
    end
    object Tb_Pro_ExtPROEXT_CODEXT: TFloatField
      FieldName = 'PROEXT_CODEXT'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_CODEXT'
    end
    object Tb_Pro_ExtPROEXT_NOME: TStringField
      FieldName = 'PROEXT_NOME'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_NOME'
      Size = 100
    end
    object Tb_Pro_ExtPROEXT_LINHA01: TStringField
      FieldName = 'PROEXT_LINHA01'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_LINHA01'
      Size = 56
    end
    object Tb_Pro_ExtPROEXT_LINHA02: TStringField
      FieldName = 'PROEXT_LINHA02'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_LINHA02'
      Size = 56
    end
    object Tb_Pro_ExtPROEXT_LINHA03: TStringField
      FieldName = 'PROEXT_LINHA03'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_LINHA03'
      Size = 56
    end
    object Tb_Pro_ExtPROEXT_LINHA04: TStringField
      FieldName = 'PROEXT_LINHA04'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_LINHA04'
      Size = 56
    end
    object Tb_Pro_ExtPROEXT_LINHA05: TStringField
      FieldName = 'PROEXT_LINHA05'
      Origin = 'SG_ASSOC.CADPRO_EXT.PROEXT_LINHA05'
      Size = 56
    end
  end
  object Src_Pro_Ext: TDataSource
    DataSet = Tb_Pro_Ext
    Left = 528
    Top = 346
  end
  object Up_Pro_Ext: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_EXT'
      'set'
      '  PROEXT_CODEMP = :PROEXT_CODEMP,'
      '  PROEXT_CODEXT = :PROEXT_CODEXT,'
      '  PROEXT_NOME = :PROEXT_NOME,'
      '  PROEXT_LINHA01 = :PROEXT_LINHA01,'
      '  PROEXT_LINHA02 = :PROEXT_LINHA02,'
      '  PROEXT_LINHA03 = :PROEXT_LINHA03,'
      '  PROEXT_LINHA04 = :PROEXT_LINHA04,'
      '  PROEXT_LINHA05 = :PROEXT_LINHA05'
      'where'
      '  PROEXT_CODEMP = :OLD_PROEXT_CODEMP and'
      '  PROEXT_CODEXT = :OLD_PROEXT_CODEXT')
    InsertSQL.Strings = (
      'insert into CADPRO_EXT'
      '  (PROEXT_CODEMP, PROEXT_CODEXT, PROEXT_NOME, PROEXT_LINHA01, '
      'PROEXT_LINHA02, '
      '   PROEXT_LINHA03, PROEXT_LINHA04, PROEXT_LINHA05)'
      'values'
      
        '  (:PROEXT_CODEMP, :PROEXT_CODEXT, :PROEXT_NOME, :PROEXT_LINHA01' +
        ', '
      ':PROEXT_LINHA02, '
      '   :PROEXT_LINHA03, :PROEXT_LINHA04, :PROEXT_LINHA05)')
    DeleteSQL.Strings = (
      'delete from CADPRO_EXT'
      'where'
      '  PROEXT_CODEMP = :OLD_PROEXT_CODEMP and'
      '  PROEXT_CODEXT = :OLD_PROEXT_CODEXT')
    Left = 560
    Top = 347
  end
  object src_pro_cmet: TDataSource
    DataSet = tb_cmet
    Left = 620
    Top = 258
  end
  object tb_cmet: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_CMET')
    UpdateObject = u_cmet
    Left = 660
    Top = 258
    object tb_cmetCMET_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'CMET_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODEMP'
    end
    object tb_cmetCMET_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'CMET_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODPRO'
    end
    object tb_cmetCMET_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo Seq'
      FieldName = 'CMET_CODIGO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODIGO'
    end
    object tb_cmetCMET_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Sub-Produto'
      FieldName = 'CMET_NOME'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_NOME'
      Size = 60
    end
    object tb_cmetCMET_PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'CMET_PRECO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_PRECO'
    end
  end
  object u_cmet: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_CMET'
      'set'
      '  CMET_CODEMP = :CMET_CODEMP,'
      '  CMET_CODPRO = :CMET_CODPRO,'
      '  CMET_CODIGO = :CMET_CODIGO,'
      '  CMET_NOME = :CMET_NOME,'
      '  CMET_PRECO = :CMET_PRECO'
      'where'
      '  CMET_CODEMP = :OLD_CMET_CODEMP and'
      '  CMET_CODPRO = :OLD_CMET_CODPRO and'
      '  CMET_CODIGO = :OLD_CMET_CODIGO')
    InsertSQL.Strings = (
      'insert into CADPRO_CMET'
      '  (CMET_CODEMP, CMET_CODPRO, CMET_CODIGO, CMET_NOME, '
      'CMET_PRECO)'
      'values'
      '  (:CMET_CODEMP, :CMET_CODPRO, :CMET_CODIGO, :CMET_NOME, '
      ':CMET_PRECO)')
    DeleteSQL.Strings = (
      'delete from CADPRO_CMET'
      'where'
      '  CMET_CODEMP = :OLD_CMET_CODEMP and'
      '  CMET_CODPRO = :OLD_CMET_CODPRO and'
      '  CMET_CODIGO = :OLD_CMET_CODIGO')
    Left = 692
    Top = 258
  end
  object tb_param: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 63
      end
      item
        Name = 'QTDPED'
        DataType = ftFloat
      end
      item
        Name = 'QTDEST'
        DataType = ftFloat
      end
      item
        Name = 'QTDSALDO'
        DataType = ftFloat
      end>
    Left = 605
    Top = 103
    object tb_paramNOMCOMPRIMLIN: TStringField
      FieldName = 'NOMCOMPRIMLIN'
      Size = 100
    end
    object tb_paramNOMCOMSEGLIN: TStringField
      FieldName = 'NOMCOMSEGLIN'
      Size = 100
    end
    object tb_paramCODPROMASK: TStringField
      FieldName = 'CODPROMASK'
      Size = 14
    end
    object tb_paramCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object tb_paramAPRESENT: TStringField
      FieldName = 'APRESENT'
      Size = 50
    end
    object tb_paramNUMOP: TStringField
      FieldName = 'NUMOP'
      Size = 10
    end
    object tb_paramQTDPREV: TStringField
      FieldName = 'QTDPREV'
      Size = 14
    end
    object tb_paramMESANOEMI: TStringField
      FieldName = 'MESANOEMI'
      Size = 5
    end
    object tb_paramMESANOREV: TStringField
      FieldName = 'MESANOREV'
      Size = 10
    end
    object tb_paramDATFAB: TStringField
      FieldName = 'DATFAB'
      Size = 10
    end
    object tb_paramDATVAL: TStringField
      FieldName = 'DATVAL'
      Size = 10
    end
    object tb_paramDATEMI: TStringField
      FieldName = 'DATEMI'
      Size = 10
    end
    object tb_paramNUMLOT: TStringField
      FieldName = 'NUMLOT'
      Size = 10
    end
    object tb_paramRESPTEC: TStringField
      FieldName = 'RESPTEC'
      Size = 100
    end
    object tb_paramGERPROD: TStringField
      FieldName = 'GERPROD'
      Size = 100
    end
    object tb_paramGERQUAL: TStringField
      FieldName = 'GERQUAL'
      Size = 100
    end
    object tb_paramDATREV: TStringField
      FieldName = 'DATREV'
      Size = 10
    end
    object tb_paramDATAFAB: TStringField
      FieldKind = fkCalculated
      FieldName = 'DATAFAB'
      Size = 10
      Calculated = True
    end
    object tb_paramHORMININIFRAC: TStringField
      FieldName = 'HORMININIFRAC'
      Size = 10
    end
    object tb_paramHORMINTERFRAC: TStringField
      FieldName = 'HORMINTERFRAC'
      Size = 10
    end
    object tb_paramNOMFUNCFRAC: TStringField
      FieldName = 'NOMFUNCFRAC'
      Size = 100
    end
    object tb_paramNOMFUNCCONFFRAC: TStringField
      FieldName = 'NOMFUNCCONFFRAC'
      Size = 100
    end
    object tb_paramHORMININIMAN: TStringField
      FieldName = 'HORMININIMAN'
      Size = 10
    end
    object tb_paramDATAINIMAN: TStringField
      FieldName = 'DATAINIMAN'
      Size = 10
    end
    object tb_paramHORMINTERMAN: TStringField
      FieldName = 'HORMINTERMAN'
      Size = 10
    end
    object tb_paramNOMFUNCMAN: TStringField
      FieldName = 'NOMFUNCMAN'
      Size = 100
    end
    object tb_paramNOMFUNCONFMAN: TStringField
      FieldName = 'NOMFUNCONFMAN'
      Size = 100
    end
    object tb_paramNOMANALISTA: TStringField
      FieldName = 'NOMANALISTA'
      Size = 100
    end
    object tb_paramNOMSUPANALISTA: TStringField
      FieldName = 'NOMSUPANALISTA'
      Size = 100
    end
    object tb_paramOBSANALISE: TStringField
      FieldName = 'OBSANALISE'
      Size = 100
    end
    object tb_paramRESULTANALISE: TStringField
      FieldName = 'RESULTANALISE'
      Size = 100
    end
    object tb_paramSETOR: TStringField
      FieldName = 'SETOR'
      Size = 40
    end
    object tb_paramPESOMIN: TStringField
      FieldName = 'PESOMIN'
      Size = 14
    end
    object tb_paramPESOMEDIO: TStringField
      FieldName = 'PESOMEDIO'
      Size = 14
    end
    object tb_paramPESOMAXIMO: TStringField
      FieldName = 'PESOMAXIMO'
      Size = 14
    end
    object tb_paramNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 100
    end
    object tb_paramDATAEMI: TStringField
      FieldName = 'DATAEMI'
      Size = 10
    end
    object tb_paramDESC_SOBRE: TMemoField
      FieldName = 'DESC_SOBRE'
      BlobType = ftMemo
    end
    object tb_paramObservacao_Prod: TMemoField
      FieldName = 'Observacao_Prod'
      BlobType = ftMemo
    end
    object tb_paramQTDGRML: TFloatField
      FieldName = 'QTDGRML'
    end
    object tb_paramQTDGRML_TOTAL: TFloatField
      FieldName = 'QTDGRML_TOTAL'
    end
    object tb_paramMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
  end
end
