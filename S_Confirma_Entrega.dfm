object Frm_Confirma_Entrega: TFrm_Confirma_Entrega
  Left = 162
  Top = 181
  Width = 689
  Height = 363
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Confirma'#231#227'o de Entrega de Pedido'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 84
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 102
      Height = 13
      Caption = 'Chave do &Pedido:'
      FocusControl = CHAVE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SB1: TSpeedButton
      Left = 188
      Top = 5
      Width = 23
      Height = 20
      Hint = 'Pesquisa Pedidos'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SB1Click
    end
    object Label2: TLabel
      Left = 323
      Top = 9
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 57
      Top = 27
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 71
      Top = 44
      Width = 44
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_datanf: TLabel
      Left = 21
      Top = 62
      Width = 93
      Height = 13
      Caption = 'Data do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 436
      Top = 64
      Width = 128
      Height = 13
      Caption = 'Valor Total do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 222
      Top = 10
      Width = 56
      Height = 13
      Caption = 'Lote Seq:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CHAVE: TEdit
      Left = 119
      Top = 6
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CHAVEExit
    end
    object NOMCLI: TEdit
      Left = 367
      Top = 6
      Width = 300
      Height = 19
      TabStop = False
      Color = 14671805
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object ENDERECO: TEdit
      Left = 119
      Top = 24
      Width = 548
      Height = 19
      TabStop = False
      Color = 14671805
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object NOMCID: TEdit
      Left = 119
      Top = 42
      Width = 548
      Height = 19
      TabStop = False
      Color = 14671805
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DATAPED: TEdit
      Left = 119
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 14671805
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object TOTALNF: TEdit
      Left = 577
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 14671805
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object LOTSEQ: TEdit
      Left = 280
      Top = 6
      Width = 38
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
  end
  object Panel_corpo: TPanel
    Left = 0
    Top = 84
    Width = 681
    Height = 207
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 83
      Height = 13
      Caption = 'Data Entregou'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 115
      Top = 102
      Width = 28
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 176
      Top = 104
      Width = 176
      Height = 13
      Caption = 'Nome da Pessoa que Recebeu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 15
      Top = 4
      Width = 373
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Transportadora'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label11: TLabel
      Left = 389
      Top = 4
      Width = 54
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Placa'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label12: TLabel
      Left = 444
      Top = 4
      Width = 27
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'UF'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label13: TLabel
      Left = 474
      Top = 4
      Width = 77
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Data Saida'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label14: TLabel
      Left = 553
      Top = 4
      Width = 63
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hora'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 17
      Top = 55
      Width = 77
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Qtd.Volumes'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label10: TLabel
      Left = 96
      Top = 55
      Width = 77
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Especie'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label15: TLabel
      Left = 176
      Top = 56
      Width = 77
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Peso Bruto'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label16: TLabel
      Left = 257
      Top = 56
      Width = 77
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Liquido'
      Color = 8437695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object MDATAREC: TMaskEdit
      Left = 17
      Top = 122
      Width = 89
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 10
      Text = '  /  /    '
      OnExit = MDATARECExit
    end
    object HORAREC: TMaskEdit
      Left = 114
      Top = 122
      Width = 59
      Height = 21
      Ctl3D = True
      EditMask = '!90:99;1; '
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 11
      Text = '  :  '
      OnExit = HORARECExit
    end
    object NOMREC: TEdit
      Left = 176
      Top = 122
      Width = 492
      Height = 21
      TabOrder = 12
      OnExit = NOMRECExit
      OnKeyPress = NOMRECKeyPress
    end
    object CODTRA: TEdit
      Left = 17
      Top = 27
      Width = 78
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object NOMTRA: TEdit
      Left = 97
      Top = 27
      Width = 293
      Height = 21
      TabStop = False
      Color = 16754899
      Ctl3D = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object PLACAV: TEdit
      Left = 389
      Top = 27
      Width = 56
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      OnExit = PLACAVExit
      OnKeyPress = PLACAVKeyPress
    end
    object UFPV: TEdit
      Left = 445
      Top = 27
      Width = 26
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      OnExit = UFPVExit
      OnKeyPress = UFPVKeyPress
    end
    object QTDVOL: TEdit
      Left = 17
      Top = 77
      Width = 78
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 6
      OnExit = QTDVOLExit
    end
    object ESPECIE: TEdit
      Left = 95
      Top = 77
      Width = 78
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 7
      OnExit = ESPECIEExit
      OnKeyPress = ESPECIEKeyPress
    end
    object PESOB: TEdit
      Left = 175
      Top = 78
      Width = 78
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 8
      OnExit = PESOBExit
    end
    object PESOL: TEdit
      Left = 256
      Top = 79
      Width = 78
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 9
      OnExit = PESOLExit
    end
    object PREVENT: TMaskEdit
      Left = 474
      Top = 27
      Width = 78
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = PREVENTExit
    end
    object HPREVENT: TMaskEdit
      Left = 553
      Top = 27
      Width = 60
      Height = 21
      Ctl3D = True
      EditMask = '!90:00;1; '
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 5
      Text = '  :  '
      OnExit = HPREVENTExit
    end
  end
  object panel_rodape: TPanel
    Left = 0
    Top = 291
    Width = 681
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbGravar: TBitBtn
      Left = 11
      Top = 3
      Width = 130
      Height = 37
      Hint = 'Click aqui para gravar'#13#10'os '#237'tens alterados'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbGravarClick
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
    object bbSair: TBitBtn
      Left = 534
      Top = 3
      Width = 130
      Height = 37
      Hint = 'Click aqui'#13#10'para fechar'#13#10'esta janela'
      Caption = '&Sair do Programa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
end
