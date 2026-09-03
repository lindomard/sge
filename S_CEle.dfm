object Frm_CEle: TFrm_CEle
  Left = 297
  Top = 141
  Width = 784
  Height = 500
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Confer'#234'ncia Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_rod: TPanel
    Left = 0
    Top = 428
    Width = 776
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbApurar: TBitBtn
      Left = 4
      Top = 2
      Width = 150
      Height = 38
      Caption = '&Apurar Conferencia'
      TabOrder = 0
      OnClick = bbApurarClick
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
    object bbSair2: TBitBtn
      Left = 600
      Top = 2
      Width = 150
      Height = 38
      Caption = '&Sair do Programa'
      TabOrder = 1
      OnClick = bbSair2Click
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
  end
  object panel_navgator: TPanel
    Left = 0
    Top = 395
    Width = 776
    Height = 33
    Align = alBottom
    Caption = 'panel_navgator'
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 774
      Height = 31
      DataSource = Src_EleLei
      Align = alClient
      TabOrder = 0
    end
  end
  object dbg_mercad: TDBGrid
    Left = 0
    Top = 225
    Width = 776
    Height = 170
    Align = alClient
    DataSource = Src_EleLei
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = dbg_mercadColEnter
    OnColExit = dbg_mercadColExit
    OnExit = dbg_mercadExit
    OnKeyDown = dbg_mercadKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CECODBARN'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQTD'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CECODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELOTE'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEDTVCTO'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEITEM'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 776
    Height = 225
    ActivePage = tsConfiguracoes
    Align = alTop
    TabOrder = 3
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Panel_cab: TPanel
        Left = 0
        Top = 0
        Width = 768
        Height = 190
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 51
          Width = 94
          Height = 13
          Caption = 'N'#250'mero do Pedido.:'
        end
        object Label2: TLabel
          Left = 211
          Top = 50
          Width = 77
          Height = 13
          Caption = 'Data do Pedido:'
        end
        object Label3: TLabel
          Left = 377
          Top = 49
          Width = 56
          Height = 13
          Caption = 'Data Saida:'
        end
        object Label4: TLabel
          Left = 622
          Top = 52
          Width = 63
          Height = 13
          Caption = 'Valor Pedido:'
        end
        object SBn_Pesq: TSpeedButton
          Left = 171
          Top = 48
          Width = 23
          Height = 18
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          OnClick = SBn_PesqClick
        end
        object Label5: TLabel
          Left = 1
          Top = 1
          Width = 766
          Height = 46
          Align = alTop
          Alignment = taCenter
          Caption = 'Confer'#234'ncia Eletronica de Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -40
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 38
          Top = 71
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
        end
        object Label7: TLabel
          Left = 400
          Top = 68
          Width = 43
          Height = 13
          Caption = 'Fantasia:'
        end
        object Label8: TLabel
          Left = 52
          Top = 89
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label9: TLabel
          Left = 412
          Top = 88
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label10: TLabel
          Left = 50
          Top = 124
          Width = 51
          Height = 13
          Caption = 'Conferidor:'
        end
        object Label11: TLabel
          Left = 50
          Top = 106
          Width = 52
          Height = 13
          Caption = 'Separador:'
        end
        object Label12: TLabel
          Left = 309
          Top = 166
          Width = 175
          Height = 13
          Caption = 'C'#243'digo de barras * Quantidade'
          Color = 4227072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 517
          Top = 51
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object CHAVE: TEdit
          Left = 106
          Top = 48
          Width = 66
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object bbConferir: TBitBtn
          Left = 56
          Top = 159
          Width = 147
          Height = 25
          Caption = '&Inicializar a Confer'#234'ncia'
          TabOrder = 12
          OnClick = bbConferirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333FFFFFFFFF333333300000000
            0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
            0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
            03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
            03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
            03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
            03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
            0333333777777777333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 596
          Top = 150
          Width = 147
          Height = 25
          Caption = '&Sair'
          TabOrder = 13
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
        object DATAP: TEdit
          Left = 300
          Top = 48
          Width = 66
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object VALOR: TEdit
          Left = 692
          Top = 48
          Width = 69
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DATAE: TEdit
          Left = 446
          Top = 48
          Width = 66
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object razsoc: TEdit
          Left = 106
          Top = 66
          Width = 260
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object fantasia: TEdit
          Left = 446
          Top = 66
          Width = 315
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object endereco: TEdit
          Left = 106
          Top = 84
          Width = 260
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object bairro: TEdit
          Left = 446
          Top = 84
          Width = 315
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object CODCON: TEdit
          Left = 106
          Top = 120
          Width = 69
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object NOMCON: TEdit
          Left = 174
          Top = 120
          Width = 192
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object cb_barrar: TCheckBox
          Left = 447
          Top = 118
          Width = 258
          Height = 17
          Caption = 'Barras Inexistentes ou Quantidade Superior'
          Checked = True
          State = cbChecked
          TabOrder = 14
        end
        object CB_REEIMPRESSAO: TCheckBox
          Left = 447
          Top = 134
          Width = 258
          Height = 17
          Caption = 'Permitir Reimprimir'
          TabOrder = 15
          Visible = False
        end
        object CODSEP: TEdit
          Left = 106
          Top = 102
          Width = 69
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = CODSEPExit
          OnKeyPress = CODSEPKeyPress
        end
        object NOMSEP: TEdit
          Left = 174
          Top = 102
          Width = 192
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
          OnExit = CHAVEExit
          OnKeyPress = CHAVEKeyPress
        end
        object edt_valor_frete: TEdit
          Left = 551
          Top = 48
          Width = 69
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
      end
    end
    object tsConfiguracoes: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      object Label14: TLabel
        Left = 22
        Top = 19
        Width = 244
        Height = 13
        Caption = 'Considerar valido varia'#231#245'es das quantidades de at'#233
      end
      object Label15: TLabel
        Left = 342
        Top = 19
        Width = 140
        Height = 13
        Caption = '% a menor. Unidades Validas:'
      end
      object Label16: TLabel
        Left = 611
        Top = 20
        Width = 6
        Height = 13
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 487
        Top = 37
        Width = 121
        Height = 39
        Alignment = taCenter
        Caption = '* Para inserir varias unidades separe com ; (ponto e virgula).'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object edt_var_perc_menor: TEdit
        Left = 272
        Top = 16
        Width = 65
        Height = 19
        Ctl3D = False
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_var_perc_menorExit
      end
      object edt_var_menor_unid: TEdit
        Left = 488
        Top = 16
        Width = 121
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 648
        Top = 14
        Width = 121
        Height = 25
        Caption = 'Salvar Padr'#227'o'
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
    end
  end
  object Tb_CEleLei: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CEleLeiBeforeInsert
    AfterInsert = Tb_CEleLeiAfterInsert
    BeforeEdit = Tb_CEleLeiBeforeEdit
    BeforePost = Tb_CEleLeiBeforePost
    AfterPost = Tb_CEleLeiAfterPost
    AfterCancel = Tb_CEleLeiAfterCancel
    AfterDelete = Tb_CEleLeiAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CEITEM,CECODPRO,CECODBARN,CEQTD,CELOTE,CEDTVCTO,'
      
        #39'                                                               ' +
        '                                  '#39
      'AS PDNOME  from CELELEI where CEITEM is null')
    UpdateObject = U_EleLei
    Left = 232
    Top = 176
    object Tb_CEleLeiCEITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'CEITEM'
      Origin = 'SG_ASSOC.CELELEI.CEITEM'
    end
    object Tb_CEleLeiCECODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'CECODPRO'
      Origin = 'SG_ASSOC.CELELEI.CECODPRO'
    end
    object Tb_CEleLeiCEQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CEQTD'
      Origin = 'SG_ASSOC.CELELEI.CEQTD'
    end
    object Tb_CEleLeiPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      FixedChar = True
      Size = 97
    end
    object Tb_CEleLeiCECODBARN: TStringField
      DisplayLabel = 'Codigo de Barras'
      FieldName = 'CECODBARN'
      Size = 50
    end
    object Tb_CEleLeiCELOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CELOTE'
    end
    object Tb_CEleLeiCEDTVCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'CEDTVCTO'
    end
  end
  object U_EleLei: TUpdateSQL
    ModifySQL.Strings = (
      'update CELELEI'
      'set'
      '  CEITEM = :CEITEM,'
      '  CECODPRO = :CECODPRO,'
      '  CECODBAR = :CECODBAR,'
      '  CEQTD = :CEQTD,'
      '  PDNOME = :PDNOME'
      'where'
      '  CEITEM = :OLD_CEITEM')
    InsertSQL.Strings = (
      'insert into CELELEI'
      '  (CEITEM, CECODPRO, CECODBAR, CEQTD, PDNOME)'
      'values'
      '  (:CEITEM, :CECODPRO, :CECODBAR, :CEQTD, :PDNOME)')
    DeleteSQL.Strings = (
      'delete from CELELEI'
      'where'
      '  CEITEM = :OLD_CEITEM')
    Left = 276
    Top = 152
  end
  object Src_EleLei: TDataSource
    DataSet = Tb_CEleLei
    Left = 314
    Top = 112
  end
  object Tb_CeleRes: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CECODPRO,CECODBARN, CEQTDL,CEQTDP,'
      'CEDIFER, CELOTE,CEDTVCTO,'
      'PDNOME,PDUND'
      ',0 AS VAR_MENOR_ACEITA'
      ',0 AS VAR_PERC_CALCULADA'
      ',1 as OK'
      'From CELERES,CADPRO where CECODBARN is null'
      'AND CECODPRO=PDCODPRO')
    UpdateObject = U_CeleRes
    Left = 238
    Top = 128
    object Tb_CeleResCEQTDL: TFloatField
      DisplayLabel = 'Lidos'
      FieldName = 'CEQTDL'
      Origin = 'SG_ASSOC.CELERES.CEQTDL'
    end
    object Tb_CeleResCEQTDP: TFloatField
      DisplayLabel = 'Pedido'
      FieldName = 'CEQTDP'
      Origin = 'SG_ASSOC.CELERES.CEQTDP'
    end
    object Tb_CeleResPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      FixedChar = True
      Size = 100
    end
    object Tb_CeleResCECODPRO: TFloatField
      FieldName = 'CECODPRO'
    end
    object Tb_CeleResCECODBARN: TStringField
      DisplayLabel = 'Codigo de Barras'
      FieldName = 'CECODBARN'
      Size = 50
    end
    object Tb_CeleResCEDIFER: TFloatField
      FieldName = 'CEDIFER'
    end
    object Tb_CeleResCELOTE: TStringField
      FieldName = 'CELOTE'
    end
    object Tb_CeleResCEDTVCTO: TDateTimeField
      FieldName = 'CEDTVCTO'
    end
    object Tb_CeleResVAR_MENOR_ACEITA: TFloatField
      DisplayLabel = 'Qtde Aceita Maior or igual'
      FieldName = 'VAR_MENOR_ACEITA'
    end
    object Tb_CeleResVAR_PERC_CALCULADA: TFloatField
      DisplayLabel = '% diferen'#231'a'
      FieldName = 'VAR_PERC_CALCULADA'
    end
    object Tb_CeleResPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
  end
  object U_CeleRes: TUpdateSQL
    ModifySQL.Strings = (
      'update CELERES'
      'set'
      '  CECODPRO = :CECODPRO,'
      '  CECODBAR = :CECODBAR,'
      '  CEQTDL = :CEQTDL,'
      '  CEQTDP = :CEQTDP,'
      '  CEDIFER = :CEDIFER,'
      '  PDNOME = :PDNOME,'
      ' PDUND =  :PDUND'
      'where'
      '  CECODBAR = :OLD_CECODBAR')
    InsertSQL.Strings = (
      'insert into CELERES'
      '  (CECODPRO, CECODBAR, CEQTDL, CEQTDP, CEDIFER, PDNOME, PDUND)'
      'values'
      
        '  (:CECODPRO, :CECODBAR, :CEQTDL, :CEQTDP, :CEDIFER, :PDNOME, :P' +
        'DUND)')
    DeleteSQL.Strings = (
      'delete from CELERES'
      'where'
      '  CECODBAR = :OLD_CECODBAR')
    Left = 280
    Top = 126
  end
  object Src_CeleRes: TDataSource
    DataSet = Tb_CeleRes
    Left = 320
    Top = 120
  end
end
