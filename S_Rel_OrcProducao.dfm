object frm_RelOrcProducao: Tfrm_RelOrcProducao
  Left = 132
  Top = 99
  Width = 881
  Height = 633
  Caption = 'frm_RelOrcProducao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object rlp_orcproducao: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = Ds_Grupo
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Serif'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    NextReport = rlp_finalizacao
    ShowProgress = False
    Title = 'Listagem do Pedido para Expedi'#231#227'o'
    BeforePrint = rlp_orcproducaoBeforePrint
    object RLGroup1: TRLGroup
      Left = 19
      Top = 19
      Width = 756
      Height = 222
      DataFields = 'NOMEGRUPO'
      AfterPrint = RLGroup1AfterPrint
      object RLBand2: TRLBand
        Left = 0
        Top = 136
        Width = 756
        Height = 49
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel1: TRLLabel
          Left = 0
          Top = 20
          Width = 268
          Height = 16
          Caption = 'LISTAGEM DO PEDIDO PARA EXPEDICAO '
        end
        object RLDBText1: TRLDBText
          Left = 273
          Top = 20
          Width = 89
          Height = 16
          DataField = 'NOMEGRUPO'
          DataSource = Ds_Grupo
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 136
        BandType = btTitle
        object rlm_descricao: TRLMemo
          Left = 0
          Top = 117
          Width = 456
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Lines.Strings = (
            'DESCRICAO')
        end
        object rlm_qtde: TRLMemo
          Left = 456
          Top = 117
          Width = 106
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Lines.Strings = (
            'QTDE')
        end
        object rlm_retorno: TRLMemo
          Left = 560
          Top = 117
          Width = 106
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Lines.Strings = (
            'RETORNO')
        end
        object rlm_quebra: TRLMemo
          Left = 666
          Top = 117
          Width = 90
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.FixedRight = True
          Holder = rlm_quebra
          Lines.Strings = (
            'QUEBRA')
        end
        object RLLabel2: TRLLabel
          Left = 0
          Top = 18
          Width = 115
          Height = 16
          Caption = 'PEDIDO NUMERO'
        end
        object RLLabel3: TRLLabel
          Left = 271
          Top = 18
          Width = 70
          Height = 16
          Caption = 'DATA.........:'
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 39
          Width = 111
          Height = 16
          Caption = 'RAZAO SOCIAL...:'
        end
        object RLLabel5: TRLLabel
          Left = 412
          Top = 39
          Width = 116
          Height = 16
          Caption = 'NOME FANTASIA.:'
        end
        object RLLabel6: TRLLabel
          Left = 0
          Top = 56
          Width = 117
          Height = 16
          Caption = 'ENDERECO..............'
        end
        object RLLabel7: TRLLabel
          Left = 427
          Top = 56
          Width = 30
          Height = 16
          Caption = 'Nr...:'
        end
        object RLLabel8: TRLLabel
          Left = 531
          Top = 56
          Width = 111
          Height = 16
          Caption = 'COMPLEMENTO :'
        end
        object RLLabel9: TRLLabel
          Left = 0
          Top = 73
          Width = 123
          Height = 16
          Caption = 'BAIRRO.......................'
        end
        object RLLabel10: TRLLabel
          Left = 322
          Top = 74
          Width = 63
          Height = 16
          Caption = 'CIDADE...'
        end
        object RLLabel11: TRLLabel
          Left = 560
          Top = 74
          Width = 29
          Height = 16
          Caption = 'UF..:'
        end
        object RLLabel12: TRLLabel
          Left = 644
          Top = 74
          Width = 34
          Height = 16
          Caption = 'CEP.:'
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 92
          Width = 116
          Height = 16
          Caption = 'FONE/FAX................'
        end
        object lbl_chave: TRLLabel
          Left = 117
          Top = 18
          Width = 95
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
        end
        object lbl_data: TRLLabel
          Left = 347
          Top = 18
          Width = 94
          Height = 16
          Alignment = taCenter
          AutoSize = False
        end
        object lbl_razao: TRLLabel
          Left = 117
          Top = 38
          Width = 53
          Height = 16
        end
        object lbl_fantasia: TRLLabel
          Left = 532
          Top = 39
          Width = 62
          Height = 16
        end
        object lbl_endereco: TRLLabel
          Left = 117
          Top = 56
          Width = 75
          Height = 16
        end
        object lbl_numero: TRLLabel
          Left = 460
          Top = 56
          Width = 64
          Height = 16
        end
        object lbl_complemento: TRLLabel
          Left = 645
          Top = 56
          Width = 94
          Height = 16
        end
        object lbl_bairro: TRLLabel
          Left = 117
          Top = 74
          Width = 55
          Height = 16
        end
        object lbl_cidade: TRLLabel
          Left = 388
          Top = 74
          Width = 58
          Height = 16
        end
        object lbl_ufed: TRLLabel
          Left = 592
          Top = 74
          Width = 47
          Height = 16
        end
        object lbl_cep: TRLLabel
          Left = 681
          Top = 74
          Width = 42
          Height = 16
        end
        object lbl_fonefax: TRLLabel
          Left = 117
          Top = 92
          Width = 64
          Height = 16
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 185
        Width = 756
        Height = 19
        object RLDBText2: TRLDBText
          Left = 0
          Top = 1
          Width = 456
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'NOMEPRODUTO'
          DataSource = Ds_Grupo
          Holder = rlm_descricao
        end
        object dblbl_qtde: TRLDBText
          Left = 456
          Top = 1
          Width = 106
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'QTDE'
          DataSource = Ds_Grupo
          Holder = rlm_qtde
        end
        object RLDBText17: TRLDBText
          Left = 560
          Top = 1
          Width = 106
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'OUTROS'
          DataSource = Ds_Grupo
          Holder = rlm_retorno
        end
        object RLDBText18: TRLDBText
          Left = 666
          Top = 1
          Width = 90
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.FixedRight = True
          DataField = 'QUEBRA'
          DataSource = Ds_Grupo
          Holder = rlm_quebra
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 204
        Width = 756
        Height = 17
        BandType = btSummary
        object RLLabel15: TRLLabel
          Left = 0
          Top = 0
          Width = 456
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          Caption = 'TOTAL'
          Holder = rlm_descricao
        end
        object RLDBResult1: TRLDBResult
          Left = 456
          Top = 1
          Width = 106
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          DataField = 'QTDE'
          DataSource = Ds_Grupo
          Holder = rlm_qtde
          Info = riSum
        end
        object RLDBResult2: TRLDBResult
          Left = 560
          Top = 1
          Width = 106
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          DataField = 'OUTROS'
          DataSource = Ds_Grupo
          Holder = rlm_retorno
          Info = riSum
        end
        object RLDBResult3: TRLDBResult
          Left = 666
          Top = 1
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.FixedRight = True
          Borders.FixedBottom = True
          DataField = 'QUEBRA'
          DataSource = Ds_Grupo
          Holder = rlm_quebra
          Info = riSum
        end
      end
    end
  end
  object rlp_finalizacao: TRLReport
    Left = 76
    Top = 165
    Width = 794
    Height = 1123
    DataSource = Ds_Cliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    ShowProgress = False
    object RLBand6: TRLBand
      Left = 19
      Top = 58
      Width = 756
      Height = 244
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel16: TRLLabel
        Left = 0
        Top = 18
        Width = 117
        Height = 16
        Caption = 'PEDIDO NUMERO'
      end
      object RLLabel17: TRLLabel
        Left = 271
        Top = 18
        Width = 70
        Height = 16
        Caption = 'DATA.........:'
      end
      object RLLabel18: TRLLabel
        Left = 0
        Top = 39
        Width = 111
        Height = 16
        Caption = 'RAZAO SOCIAL...:'
      end
      object RLLabel19: TRLLabel
        Left = 412
        Top = 39
        Width = 118
        Height = 16
        Caption = 'NOME FANTASIA.:'
      end
      object RLLabel20: TRLLabel
        Left = 0
        Top = 56
        Width = 121
        Height = 16
        Caption = 'ENDERECO..............'
      end
      object RLLabel21: TRLLabel
        Left = 427
        Top = 56
        Width = 29
        Height = 16
        Caption = 'Nr...:'
      end
      object RLLabel22: TRLLabel
        Left = 531
        Top = 56
        Width = 113
        Height = 16
        Caption = 'COMPLEMENTO :'
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 73
        Width = 123
        Height = 16
        Caption = 'BAIRRO.......................'
      end
      object RLLabel24: TRLLabel
        Left = 322
        Top = 74
        Width = 62
        Height = 16
        Caption = 'CIDADE...'
      end
      object RLLabel25: TRLLabel
        Left = 560
        Top = 74
        Width = 30
        Height = 16
        Caption = 'UF..:'
      end
      object RLLabel26: TRLLabel
        Left = 644
        Top = 74
        Width = 36
        Height = 16
        Caption = 'CEP.:'
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 92
        Width = 117
        Height = 16
        Caption = 'FONE/FAX................'
      end
      object lbl_chave2: TRLLabel
        Left = 117
        Top = 18
        Width = 95
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
      object lbl_data2: TRLLabel
        Left = 347
        Top = 18
        Width = 94
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object lbl_razao2: TRLLabel
        Left = 117
        Top = 38
        Width = 65
        Height = 16
      end
      object lbl_fantasia2: TRLLabel
        Left = 532
        Top = 39
        Width = 78
        Height = 16
      end
      object lbl_endereco2: TRLLabel
        Left = 117
        Top = 56
        Width = 89
        Height = 16
      end
      object lbl_numero2: TRLLabel
        Left = 460
        Top = 56
        Width = 76
        Height = 16
      end
      object lbl_complemento2: TRLLabel
        Left = 645
        Top = 56
        Width = 113
        Height = 16
      end
      object lbl_bairro2: TRLLabel
        Left = 117
        Top = 74
        Width = 66
        Height = 16
      end
      object lbl_cidade2: TRLLabel
        Left = 388
        Top = 74
        Width = 73
        Height = 16
      end
      object lbl_ufed2: TRLLabel
        Left = 592
        Top = 74
        Width = 57
        Height = 16
      end
      object lbl_cep2: TRLLabel
        Left = 681
        Top = 74
        Width = 54
        Height = 16
      end
      object lbl_fonefax2: TRLLabel
        Left = 117
        Top = 92
        Width = 74
        Height = 16
      end
      object RL_TIPO: TRLMemo
        Left = 0
        Top = 125
        Width = 131
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Lines.Strings = (
          'TIPO')
      end
      object RL_DESCRICAO: TRLMemo
        Left = 131
        Top = 125
        Width = 329
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Lines.Strings = (
          'DESCRICAO')
      end
      object rl_qtde: TRLMemo
        Left = 459
        Top = 125
        Width = 131
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Lines.Strings = (
          'QTDE')
      end
      object tl_valor: TRLMemo
        Left = 588
        Top = 125
        Width = 130
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedRight = True
        Lines.Strings = (
          'VALOR')
      end
      object RLLabel28: TRLLabel
        Left = 60
        Top = 170
        Width = 113
        Height = 16
        Caption = 'Total de Produtos '
      end
      object RLLabel29: TRLLabel
        Left = 0
        Top = 205
        Width = 77
        Height = 16
        Caption = 'TOTAIS DE '
      end
      object RLDBText3: TRLDBText
        Left = 83
        Top = 205
        Width = 92
        Height = 16
        DataField = 'NOMEGRUPO'
        DataSource = Ds_Grupo
      end
      object rl_tipo2: TRLMemo
        Left = 0
        Top = 227
        Width = 131
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'TIPO')
      end
      object rl_saida: TRLMemo
        Left = 131
        Top = 227
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'SAIDA')
      end
      object rl_retorno: TRLMemo
        Left = 210
        Top = 227
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'RETORNO')
      end
      object rl_usado: TRLMemo
        Left = 302
        Top = 227
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'USADO')
      end
      object rl_sbra: TRLMemo
        Left = 394
        Top = 227
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'SOBRA')
      end
      object rl_quebra: TRLMemo
        Left = 485
        Top = 227
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'QUEBRA')
      end
      object rl_outros: TRLMemo
        Left = 575
        Top = 227
        Width = 143
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        Lines.Strings = (
          'OUTROS RETORNOS')
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 39
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel14: TRLLabel
        Left = 0
        Top = 20
        Width = 147
        Height = 16
        Caption = 'LISTAGEM DO PEDIDO'
      end
    end
  end
  object Qry_Grupo: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT                         '
      ' PDNOME NOMEPRODUTO,           '
      ' PROD2QTD_UTILIZ AS QTDE,      '
      ' PROD2QTD_SOBRA AS SOBRA,      '
      ' PROD2QTD_QUEBRA AS QUEBRA,    '
      ' PROD2QTD_OUTROS AS OUTROS,    '
      ' GRNOME AS NOMEGRUPO,          '
      ' SUM(PROD2VLTOT) AS TOTAL,     '
      ' 0 AS RETORNO,                 '
      ' 0 AS USADO                    '
      'FROM                           '
      ' CADPROD_02,                   '
      ' CADPRO,                       '
      ' CADGRU                        '
      'GROUP BY                       '
      ' PROD2QTD_UTILIZ,              '
      ' PROD2QTD_SOBRA,               '
      ' PROD2QTD_QUEBRA,              '
      ' PROD2QTD_OUTROS,              '
      ' PDNOME,                       '
      ' PDCODGRU,                     '
      ' GRNOME                        '
      'ORDER BY                       '
      ' GRNOME                        ')
    Left = 269
    Top = 322
    object Qry_GrupoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 53
    end
    object Qry_GrupoQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoSOBRA: TFloatField
      FieldName = 'SOBRA'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoQUEBRA: TFloatField
      FieldName = 'QUEBRA'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoOUTROS: TFloatField
      FieldName = 'OUTROS'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 30
    end
    object Qry_GrupoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoRETORNO: TFloatField
      FieldName = 'RETORNO'
      DisplayFormat = '##0.00'
    end
    object Qry_GrupoUSADO: TFloatField
      FieldName = 'USADO'
      DisplayFormat = '##0.00'
    end
  end
  object Ds_Grupo: TDataSource
    DataSet = Qry_Grupo
    Left = 299
    Top = 322
  end
  object Qry_Cliente: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 29
    Top = 250
  end
  object Ds_Cliente: TDataSource
    Left = 60
    Top = 250
  end
end
