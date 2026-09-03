object frm_comp_comiss: Tfrm_comp_comiss
  Left = 162
  Top = 130
  Width = 747
  Height = 478
  Caption = 'Relat'#243'rio Comparativo de Comiss'#245'es de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 731
    Height = 124
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 15
      Width = 91
      Height = 13
      Caption = 'C'#243'digo do Produto:'
    end
    object Label2: TLabel
      Left = 79
      Top = 57
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 221
      Top = 57
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label4: TLabel
      Left = 30
      Top = 36
      Width = 92
      Height = 13
      Caption = 'C'#243'digo do Cliente..:'
    end
    object CODPRO: TEdit
      Left = 123
      Top = 12
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = CODPROEnter
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 246
      Top = 10
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object MDT1: TMaskEdit
      Left = 123
      Top = 54
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnEnter = CODPROEnter
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 245
      Top = 54
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 5
      Text = '  /  /    '
      OnEnter = CODPROEnter
      OnExit = MDT2Exit
    end
    object bbAplicar: TBitBtn
      Left = 76
      Top = 80
      Width = 148
      Height = 36
      Caption = '&Aplicar'
      TabOrder = 6
      OnClick = bbAplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 564
      Top = 79
      Width = 148
      Height = 36
      Caption = '&Sair'
      TabOrder = 7
      OnClick = bbSairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object CODCLI: TEdit
      Left = 123
      Top = 33
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CODPROEnter
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object nomcli: TEdit
      Left = 246
      Top = 31
      Width = 339
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
    end
    object UND: TEdit
      Left = 545
      Top = 10
      Width = 39
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 8
    end
    object CB_CONFIRMADAS: TCheckBox
      Left = 344
      Top = 56
      Width = 169
      Height = 17
      Caption = 'Somente Vendas Confirmadas'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object bb_imprel: TBitBtn
      Left = 336
      Top = 79
      Width = 148
      Height = 36
      Caption = '&Imprimir Relatorio'
      TabOrder = 10
      OnClick = bb_imprelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 124
    Width = 731
    Height = 316
    Align = alClient
    Caption = 'Compras Anteriores:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 727
      Height = 299
      Align = alClient
      DataSource = src_comp_comiss
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2VCOMIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PCOTAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTDES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DESCRAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DESCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTLIQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VCOMIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Visible = True
        end>
    end
    object rl_prod_comp: TRLReport
      Left = -18
      Top = 323
      Width = 794
      Height = 1123
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ShowProgress = False
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 100
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 246
          Top = 24
          Width = 206
          Height = 16
          Caption = 'Relatorio de Vendas dos Produtos '
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 675
          Top = 5
          Width = 39
          Height = 16
          Alignment = taRightJustify
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 675
          Top = 25
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Info = itHour
        end
        object rl_emp: TRLLabel
          Left = 5
          Top = 5
          Width = 626
          Height = 16
          AutoSize = False
          Caption = 'Empresa do Sistema'
        end
        object rl_data: TRLLabel
          Left = 175
          Top = 43
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Sem Filtro de Data'
        end
        object rl_fornecedores: TRLLabel
          Left = 175
          Top = 59
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Todos os Fornecedores'
        end
        object rl_produtos: TRLLabel
          Left = 175
          Top = 75
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Todos os Produtos'
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 630
          Top = 80
          Width = 87
          Height = 16
          Alignment = taRightJustify
          Info = itPageNumber
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 138
        Width = 718
        Height = 96
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataFields = 'PF2CODPRO'
        object RLBand2: TRLBand
          Left = 1
          Top = 1
          Width = 716
          Height = 36
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          object rl_nomepro: TRLLabel
            Left = 2
            Top = 2
            Width = 61
            Height = 16
            Caption = 'Produto..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_dataped: TRLLabel
            Left = 0
            Top = 20
            Width = 70
            Height = 16
            AutoSize = False
            Caption = 'Data Ped.'
          end
          object rl_codfor: TRLLabel
            Left = 141
            Top = 20
            Width = 61
            Height = 16
            AutoSize = False
            Caption = 'C'#243'd.Forn.'
          end
          object rl_razaofor: TRLLabel
            Left = 202
            Top = 20
            Width = 260
            Height = 16
            AutoSize = False
            Caption = 'Raz'#227'o Social'
          end
          object rl_precouni: TRLLabel
            Left = 462
            Top = 20
            Width = 93
            Height = 16
            AutoSize = False
            Caption = 'Pre'#231'o Unit'#225'rio'
          end
          object rl_qtd: TRLLabel
            Left = 556
            Top = 20
            Width = 77
            Height = 16
            AutoSize = False
            Caption = 'Quantidade'
          end
          object rl_valtot: TRLLabel
            Left = 634
            Top = 20
            Width = 68
            Height = 16
            AutoSize = False
            Caption = 'Valor Total'
          end
          object rl_chaveped: TRLLabel
            Left = 71
            Top = 20
            Width = 70
            Height = 16
            AutoSize = False
            Caption = 'Chave Ped.'
          end
        end
        object RLBand3: TRLBand
          Left = 1
          Top = 37
          Width = 716
          Height = 38
          object RLDBText1: TRLDBText
            Left = 0
            Top = 1
            Width = 70
            Height = 16
            AutoSize = False
            DataField = 'PF1DATA'
            Holder = rl_dataped
          end
          object RLDBText2: TRLDBText
            Left = 202
            Top = 1
            Width = 260
            Height = 16
            AutoSize = False
            DataField = 'FRAZAO'
            Holder = rl_razaofor
          end
          object RLDBText3: TRLDBText
            Left = 462
            Top = 1
            Width = 93
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pco_unit'
            Holder = rl_precouni
          end
          object RLDBText4: TRLDBText
            Left = 556
            Top = 1
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2QTDP'
            Holder = rl_qtd
          end
          object RLDBText5: TRLDBText
            Left = 634
            Top = 1
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valor_total'
            Holder = rl_valtot
          end
          object RLDBText6: TRLDBText
            Left = 141
            Top = 1
            Width = 61
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PF1CODFOR'
            Holder = rl_codfor
          end
          object RLDBText7: TRLDBText
            Left = 71
            Top = 1
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PF2CHAVE'
            Holder = rl_chaveped
          end
          object RLDBText10: TRLDBText
            Left = 462
            Top = 18
            Width = 93
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PDPRECO1'
            DataSource = src_comp_comiss
            Holder = rl_precouni
          end
          object RLDBText12: TRLDBText
            Left = 634
            Top = 19
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valor_total'
            Holder = rl_valtot
          end
          object RLDBText11: TRLDBText
            Left = 556
            Top = 18
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2QTDP'
            Holder = rl_qtd
          end
        end
      end
    end
  end
  object qr_comp_comiss: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      '    P1CHAVE, P1CODCLI, P1CODVEN, P1DATAP,  '
      
        '    P2VCOMIS, P2CODPRO, P2QTD, P2PRECO, P2PCOTAB, P2TOTDES, P2DE' +
        'SCRAT, P2DESCM, P2TOTLIQ,'
      '    PDNOME, PDPRECO1'
      'FROM '
      '    CADP01, CADP02, CADPRO'
      'WHERE '
      '    P1CHAVE=P2CHAVE '
      'AND P2CODPRO=PDCODPRO  '
      'AND P1STATUS<>9 '
      'AND P1TIPO=1')
    Left = 261
    Top = 88
    object qr_comp_comissvalor_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object qr_comp_comissP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object qr_comp_comissP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object qr_comp_comissP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object qr_comp_comissP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object qr_comp_comissP2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object qr_comp_comissP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object qr_comp_comissP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object qr_comp_comissP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object qr_comp_comissP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object qr_comp_comissP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object qr_comp_comissP2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object qr_comp_comissP2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object qr_comp_comissP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object qr_comp_comissPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object qr_comp_comissPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
  end
  object src_comp_comiss: TDataSource
    DataSet = qr_comp_comiss
    Left = 289
    Top = 88
  end
end
