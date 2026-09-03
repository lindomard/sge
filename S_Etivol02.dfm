object Frm_Etivol02: TFrm_Etivol02
  Left = 86
  Top = 20
  Width = 931
  Height = 611
  Caption = 'Etiqueta de Volume dos Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 8
      Width = 85
      Height = 13
      Caption = 'Chave do &Pedido:'
      FocusControl = CHAVE
    end
    object SB1: TSpeedButton
      Left = 186
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
      Left = 265
      Top = 9
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 58
      Top = 77
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object lbl_datanf: TLabel
      Left = 39
      Top = 94
      Width = 67
      Height = 13
      Caption = 'Data da Nota:'
    end
    object Label6: TLabel
      Left = 202
      Top = 92
      Width = 81
      Height = 13
      Caption = 'N'#250'mero da Nota:'
    end
    object Label7: TLabel
      Left = 382
      Top = 92
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object Label8: TLabel
      Left = 510
      Top = 93
      Width = 53
      Height = 13
      Caption = 'Valor Nota:'
    end
    object Label11: TLabel
      Left = 112
      Top = 25
      Width = 95
      Height = 46
      Alignment = taCenter
      AutoSize = False
      Caption = 'Outros Pedidos do dia sem Etiquetas (SEM ETIQUETA)'
      Color = 16776176
      ParentColor = False
      WordWrap = True
    end
    object Label19: TLabel
      Left = 1
      Top = 111
      Width = 109
      Height = 13
      Caption = 'Tipo de Impress'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_porta: TLabel
      Left = 308
      Top = 110
      Width = 35
      Height = 13
      Caption = 'Porta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbnSalvaPadrao: TSpeedButton
      Left = 632
      Top = 107
      Width = 23
      Height = 20
      Hint = 'Salvar as Configura'#231#245'es como Padr'#227'o'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnSalvaPadraoClick
    end
    object CHAVE: TEdit
      Left = 113
      Top = 6
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CHAVEExit
    end
    object NOMCLI: TEdit
      Left = 304
      Top = 6
      Width = 351
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object ENDERECO: TEdit
      Left = 112
      Top = 71
      Width = 294
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object NOMCID: TEdit
      Left = 404
      Top = 71
      Width = 251
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object DATANF: TEdit
      Left = 112
      Top = 89
      Width = 86
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object NUMNF: TEdit
      Left = 286
      Top = 89
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object VALFRE: TEdit
      Left = 415
      Top = 89
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object TOTALNF: TEdit
      Left = 565
      Top = 89
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object CB_EXTRA: TCheckBox
      Left = 212
      Top = 7
      Width = 47
      Height = 17
      Caption = 'Extra'
      TabOrder = 1
      Visible = False
    end
    object CLB_OUTROSPED: TCheckListBox
      Left = 206
      Top = 24
      Width = 449
      Height = 48
      Color = 16776176
      Columns = 4
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 9
    end
    object CB_TERMICA: TComboBox
      Left = 112
      Top = 107
      Width = 193
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'Impressora Termica(Zebra)'
        'Laser/Jato Modelo 01'
        'Laser/Jato Modelo 02'
        'Matricial Fixa'
        'Personalizada Matricial')
    end
    object CB_Porta: TComboBox
      Left = 347
      Top = 107
      Width = 284
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 11
      Text = 'LPT1'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'LPT1'
        'LPT2')
    end
    object CB_CODBAR_VOL: TCheckBox
      Left = 671
      Top = 110
      Width = 146
      Height = 17
      TabStop = False
      Caption = 'Emitir C'#243'digo de Barras'
      TabOrder = 12
      Visible = False
      OnClick = CB_CODBAR_VOLClick
    end
    object edt_codcli: TEdit
      Left = 660
      Top = 6
      Width = 183
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
    end
  end
  object panel_rod: TPanel
    Left = 0
    Top = 482
    Width = 923
    Height = 98
    Align = alBottom
    TabOrder = 1
    object Label30: TLabel
      Left = 288
      Top = 18
      Width = 169
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Criterito da Etiqueta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbSair: TBitBtn
      Left = 720
      Top = 64
      Width = 120
      Height = 25
      Hint = 'Click aqui'#13#10'para fechar'#13#10'esta janela'
      Caption = '&Sair do Programa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object bbGravar: TBitBtn
      Left = 380
      Top = 64
      Width = 120
      Height = 25
      Hint = 'click aqui para Salvar as altera'#231'oes'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
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
    object bbEmitir: TBitBtn
      Left = 279
      Top = 64
      Width = 120
      Height = 25
      Hint = 'Click aqui para Alterar'#13#10'os dados acima'
      Caption = '&Emitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbEmitirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbCancelar: TBitBtn
      Left = 505
      Top = 64
      Width = 120
      Height = 25
      Hint = 'Click aqui para Cancelar'#13#10'os '#237'tens alterados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbCancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 1
      Width = 272
      Height = 96
      Align = alLeft
      Caption = 'Impressao Termica:'
      TabOrder = 4
      object Label27: TLabel
        Left = 8
        Top = 18
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 8
        Top = 37
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Impressora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 4
        Top = 61
        Width = 143
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.Caracteres por Linha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cb_modelo: TComboBox
        Left = 86
        Top = 15
        Width = 180
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cb_impressora: TComboBox
        Left = 86
        Top = 35
        Width = 180
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = 'cb_modelo'
      end
      object edt_qtdcarporlinha: TSpinEdit
        Left = 199
        Top = 56
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
    end
    object cb_criterito: TComboBox
      Left = 462
      Top = 15
      Width = 180
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Volumes Apos Embalar'
      OnClick = cb_criteritoClick
      OnEnter = cb_criteritoEnter
      Items.Strings = (
        'Volumes Apos Embalar'
        'Por Item')
    end
    object cb_salvar_sql: TCheckBox
      Left = 685
      Top = 25
      Width = 109
      Height = 17
      TabStop = False
      Caption = 'Salvar Sql'
      TabOrder = 6
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 129
    Width = 923
    Height = 353
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Dados do Pedido'
      object Panel_corpo: TPanel
        Left = 0
        Top = 0
        Width = 915
        Height = 325
        Align = alClient
        TabOrder = 0
        object Label33: TLabel
          Left = 15
          Top = 57
          Width = 97
          Height = 13
          Caption = 'C'#243'd.Transportadora:'
        end
        object Label35: TLabel
          Left = 202
          Top = 73
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label34: TLabel
          Left = 29
          Top = 77
          Width = 83
          Height = 13
          Caption = 'Placa do Veiculo:'
        end
        object Label36: TLabel
          Left = 31
          Top = 20
          Width = 81
          Height = 13
          Caption = 'Qtd. de Volumes:'
        end
        object Label37: TLabel
          Left = 202
          Top = 17
          Width = 41
          Height = 13
          Caption = 'Especie:'
        end
        object Label38: TLabel
          Left = 345
          Top = 17
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label39: TLabel
          Left = 491
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Peso Liquido:'
        end
        object Label32: TLabel
          Left = 52
          Top = 111
          Width = 60
          Height = 13
          Caption = 'Digitado por:'
        end
        object Label70: TLabel
          Left = 48
          Top = 93
          Width = 64
          Height = 13
          Caption = 'Entregue por:'
        end
        object Label41: TLabel
          Left = 45
          Top = 130
          Width = 67
          Height = 13
          Caption = 'Separado por:'
        end
        object Label42: TLabel
          Left = 46
          Top = 150
          Width = 66
          Height = 13
          Caption = 'Conferido por:'
        end
        object Label43: TLabel
          Left = 44
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Embalado por:'
        end
        object Label5: TLabel
          Left = 24
          Top = 39
          Width = 154
          Height = 13
          Caption = 'Data da Sa'#237'da das Mercadorias:'
        end
        object Label9: TLabel
          Left = 296
          Top = 38
          Width = 31
          Height = 13
          Caption = 'Horas:'
        end
        object Label14: TLabel
          Left = 420
          Top = 166
          Width = 59
          Height = 13
          Caption = 'Autoriza'#231#227'o:'
        end
        object Label15: TLabel
          Left = 62
          Top = 166
          Width = 48
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Label16: TLabel
          Left = 44
          Top = 183
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object lbl_etiqpers: TLabel
          Left = 475
          Top = 199
          Width = 180
          Height = 13
          Caption = 'Etiqueta Personalizada: [Etiqueta Vol.]'
          WordWrap = True
        end
        object CODTRA: TEdit
          Left = 116
          Top = 54
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnChange = CODTRAChange
          OnExit = CODTRAExit
          OnKeyPress = CODTRAKeyPress
        end
        object NOMTRA: TEdit
          Left = 195
          Top = 54
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
        end
        object UFPV: TEdit
          Left = 257
          Top = 72
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnChange = UFPVChange
          OnExit = UFPVExit
          OnKeyPress = UFPVKeyPress
        end
        object PLACAV: TEdit
          Left = 116
          Top = 72
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          OnChange = PLACAVChange
          OnExit = PLACAVExit
          OnKeyPress = PLACAVKeyPress
        end
        object QTDVOL: TEdit
          Left = 116
          Top = 18
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnChange = QTDVOLChange
          OnEnter = QTDVOLEnter
          OnExit = QTDVOLExit
        end
        object ESPECIE: TEdit
          Left = 261
          Top = 18
          Width = 74
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnChange = ESPECIEChange
          OnExit = ESPECIEExit
          OnKeyPress = ESPECIEKeyPress
        end
        object PESOB: TEdit
          Left = 407
          Top = 18
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnChange = PESOBChange
          OnEnter = PESOBEnter
          OnExit = PESOBExit
        end
        object PESOL: TEdit
          Left = 572
          Top = 18
          Width = 76
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnChange = PESOLChange
          OnEnter = PESOLEnter
          OnExit = PESOLExit
        end
        object RGFRETEPC: TRadioGroup
          Left = 492
          Top = 44
          Width = 156
          Height = 45
          Caption = 'Frete Por Conta do:'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Emitente (CIF)'
            'Destinatario (FOB)')
          ParentCtl3D = False
          TabOrder = 14
          OnClick = RGFRETEPCClick
        end
        object DATENT: TMaskEdit
          Left = 490
          Top = 90
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 16
          Text = '  /  /    '
          OnChange = DATENTChange
          OnExit = DATENTExit
        end
        object NOMDIG: TEdit
          Left = 195
          Top = 108
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 19
        end
        object NOMENT: TEdit
          Left = 195
          Top = 90
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 20
        end
        object CODENT: TEdit
          Left = 116
          Top = 90
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 15
          OnChange = CODENTChange
          OnExit = CODENTExit
          OnKeyPress = CODENTKeyPress
        end
        object CODDIG: TEdit
          Left = 116
          Top = 108
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 18
          OnChange = CODDIGChange
          OnExit = CODDIGExit
          OnKeyPress = CODDIGKeyPress
        end
        object CODEMB: TEdit
          Left = 116
          Top = 0
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = CODEMBChange
          OnExit = CODEMBExit
          OnKeyPress = CODEMBKeyPress
        end
        object CODSEP: TEdit
          Left = 116
          Top = 126
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
          OnChange = CODSEPChange
          OnExit = CODSEPExit
          OnKeyPress = CODSEPKeyPress
        end
        object CODCON: TEdit
          Left = 116
          Top = 144
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 26
          OnChange = CODCONChange
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object NOMSEP: TEdit
          Left = 195
          Top = 126
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 29
        end
        object NOMCON: TEdit
          Left = 195
          Top = 144
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 31
        end
        object NOMEMB: TEdit
          Left = 195
          Top = 0
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object DATEMB: TMaskEdit
          Left = 490
          Top = 0
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnChange = DATEMBChange
          OnExit = DATEMBExit
        end
        object DATCON: TMaskEdit
          Left = 490
          Top = 144
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 27
          Text = '  /  /    '
          OnChange = DATCONChange
          OnExit = DATCONExit
        end
        object DATSEP: TMaskEdit
          Left = 490
          Top = 126
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 24
          Text = '  /  /    '
          OnChange = DATSEPChange
          OnExit = DATSEPExit
        end
        object HORENT: TMaskEdit
          Left = 572
          Top = 90
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 17
          Text = '  :  :  '
          OnChange = HORENTChange
          OnExit = HORENTExit
        end
        object HORSEP: TMaskEdit
          Left = 572
          Top = 126
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 25
          Text = '  :  :  '
          OnChange = HORSEPChange
          OnExit = HORSEPExit
        end
        object HORCON: TMaskEdit
          Left = 572
          Top = 144
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 28
          Text = '  :  :  '
          OnChange = HORCONChange
          OnExit = HORCONExit
        end
        object HOREMB: TMaskEdit
          Left = 572
          Top = 0
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 2
          Text = '  :  :  '
          OnChange = HOREMBChange
          OnExit = HOREMBExit
        end
        object DATDIG: TMaskEdit
          Left = 490
          Top = 108
          Width = 78
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 22
          Text = '  /  /    '
        end
        object HORDIG: TMaskEdit
          Left = 572
          Top = 108
          Width = 76
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 23
          Text = '  :  :  '
        end
        object PREVENT: TMaskEdit
          Left = 184
          Top = 36
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 8
          Text = '  /  /    '
          OnExit = PREVENTExit
        end
        object HPREVENT: TMaskEdit
          Left = 344
          Top = 36
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 9
          Text = '  :  :  '
          OnExit = HPREVENTExit
        end
        object NAUT: TEdit
          Left = 490
          Top = 162
          Width = 158
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 32
          OnChange = NAUTChange
          OnExit = NAUTExit
          OnKeyPress = NAUTKeyPress
        end
        object CODCV: TEdit
          Left = 116
          Top = 162
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 30
          OnChange = CODCVChange
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object NOMCV: TEdit
          Left = 195
          Top = 162
          Width = 218
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 33
        end
        object OBS1: TEdit
          Left = 116
          Top = 180
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 34
          OnChange = OBS1Change
          OnExit = OBS1Exit
          OnKeyPress = OBS1KeyPress
        end
        object OBS2: TEdit
          Left = 116
          Top = 198
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 35
          OnChange = OBS2Change
          OnExit = OBS2Exit
          OnKeyPress = OBS2KeyPress
        end
        object CB_CANHOTO: TCheckBox
          Left = 472
          Top = 181
          Width = 110
          Height = 17
          TabStop = False
          Caption = 'Canhoto Entregue'
          TabOrder = 37
          OnClick = CB_CANHOTOClick
        end
        object OBS3: TEdit
          Left = 116
          Top = 216
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 36
          OnChange = OBS3Change
          OnExit = OBS3Exit
          OnKeyPress = OBS3KeyPress
        end
        object CB_SEMCOMP: TCheckBox
          Left = 485
          Top = 221
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'S&em Compromisso'
          TabOrder = 38
          Visible = False
          OnClick = CB_CANHOTOClick
        end
        object GroupBox7: TGroupBox
          Left = 664
          Top = 1
          Width = 250
          Height = 323
          Align = alRight
          Caption = 'Peso por Volume:'
          TabOrder = 39
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 246
            Height = 265
            Align = alClient
            DataSource = src_etiqueta
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'volume'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESOLIQUIDOVOL'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESOBRUTOVOL'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 2
            Top = 280
            Width = 246
            Height = 41
            Align = alBottom
            TabOrder = 1
            object edt_peso_liquido: TEdit
              Left = 88
              Top = 2
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = edt_peso_liquidoExit
            end
            object edt_peso_bruto: TEdit
              Left = 160
              Top = 3
              Width = 73
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnExit = edt_peso_brutoExit
            end
            object bbAplicarEmTodos: TBitBtn
              Left = 22
              Top = 22
              Width = 171
              Height = 20
              Hint = 'Click aqui para Alterar'#13#10'os dados acima'
              Caption = 'Aplicar em todos'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = bbAplicarEmTodosClick
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
          end
        end
      end
    end
    object tsConfigTermica: TTabSheet
      Caption = 'Pre-Configura'#231#227'o Impressora termica'
      ImageIndex = 1
      object Label10: TLabel
        Left = 13
        Top = 7
        Width = 107
        Height = 13
        Caption = 'Nome de Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 39
        Top = 28
        Width = 80
        Height = 13
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 2
        Top = 46
        Width = 118
        Height = 13
        Caption = 'Observa'#231#227'o/Slogan:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbSalvarPadrao: TSpeedButton
        Left = 163
        Top = 98
        Width = 150
        Height = 22
        Caption = '&Salvar Padr'#227'o'
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
        OnClick = sbSalvarPadraoClick
      end
      object NOMFAN: TEdit
        Left = 123
        Top = 4
        Width = 342
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object RAZSOC: TEdit
        Left = 123
        Top = 22
        Width = 342
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object OBS_SLOGAN: TEdit
        Left = 123
        Top = 40
        Width = 342
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object tsConfigLaser: TTabSheet
      Caption = 'Configura'#231#227'o Relatorio Laser'
      ImageIndex = 2
      object Label17: TLabel
        Left = 2
        Top = 269
        Width = 57
        Height = 13
        Caption = 'Alt.Etiqueta:'
      end
      object Label18: TLabel
        Left = 115
        Top = 269
        Width = 52
        Height = 13
        Caption = 'Qtd.Lados:'
      end
      object sbConfigMaster_Salvar: TSpeedButton
        Left = 489
        Top = 271
        Width = 153
        Height = 23
        Caption = 'Salvar Configura'#231#245'es'
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
        OnClick = sbConfigMaster_SalvarClick
      end
      object Label4: TLabel
        Left = 98
        Top = 245
        Width = 64
        Height = 13
        Caption = 'Largura Pag.:'
      end
      object Label20: TLabel
        Left = 5
        Top = 245
        Width = 57
        Height = 13
        Caption = 'Alt.Pagina..:'
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 915
        Height = 242
        Align = alTop
        Caption = 'Campos a Serem Impressos:'
        TabOrder = 0
        object StaticText1: TStaticText
          Left = 2
          Top = 16
          Width = 216
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Nome do Campo'
          TabOrder = 0
        end
        object StaticText2: TStaticText
          Left = 246
          Top = 16
          Width = 38
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Linha'
          TabOrder = 1
        end
        object StaticText3: TStaticText
          Left = 283
          Top = 16
          Width = 38
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Coluna'
          TabOrder = 2
        end
        object StaticText4: TStaticText
          Left = 217
          Top = 16
          Width = 30
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Tam'
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 320
          Top = 16
          Width = 77
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Fonte'
          TabOrder = 4
        end
        object StaticText6: TStaticText
          Left = 396
          Top = 16
          Width = 79
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Alinhamento'
          TabOrder = 5
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 32
          Width = 911
          Height = 208
          Align = alBottom
          Ctl3D = False
          DataSource = src_config
          Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'IMPRIME'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CAMPO'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAMANHO_WIDTH'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LINHA'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLUNA'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONTE'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALINHAMENTO'
              PickList.Strings = (
                'Centralizado'
                'Direita'
                'Esquerda')
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALTURA_HEIGHT'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 144
              Visible = True
            end>
        end
        object StaticText7: TStaticText
          Left = 474
          Top = 16
          Width = 35
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Altura'
          TabOrder = 7
        end
        object StaticText8: TStaticText
          Left = 508
          Top = 16
          Width = 146
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o'
          TabOrder = 8
        end
      end
      object edt_rl_AltEtiq: TCurrencyEdit
        Left = 59
        Top = 266
        Width = 39
        Height = 19
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 1
        Value = 205.000000000000000000
        OnExit = edt_rl_AltEtiqExit
      end
      object edt_rl_QtdLado: TCurrencyEdit
        Left = 168
        Top = 266
        Width = 49
        Height = 19
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 2
        Value = 1.000000000000000000
        OnExit = edt_rl_QtdLadoExit
      end
      object BitBtn1: TBitBtn
        Left = 489
        Top = 247
        Width = 153
        Height = 23
        Caption = 'Restaurar Valores Padr'#245'es'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
          0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
          00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
          00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
          00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
          D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
          FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object cb_rl_bordas: TCheckBox
        Left = 5
        Top = 286
        Width = 97
        Height = 17
        Caption = 'Imprimir Bordas'
        TabOrder = 4
        OnClick = cb_rl_bordasClick
        OnExit = cb_rl_bordasExit
      end
      object cb_chavenf: TCheckBox
        Left = 99
        Top = 286
        Width = 122
        Height = 17
        Caption = 'Trocar Chave por NF'
        TabOrder = 5
        OnClick = cb_rl_bordasClick
        OnExit = cb_rl_bordasExit
      end
      object alt_page: TCurrencyEdit
        Left = 59
        Top = 242
        Width = 39
        Height = 19
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 6
        Value = 56.000000000000000000
        OnExit = edt_rl_AltEtiqExit
      end
      object larg_page: TCurrencyEdit
        Left = 167
        Top = 242
        Width = 49
        Height = 19
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 7
        Value = 107.000000000000000000
        OnExit = edt_rl_AltEtiqExit
      end
      object GroupBox2: TGroupBox
        Left = 253
        Top = 240
        Width = 221
        Height = 59
        Caption = 'Margens'
        TabOrder = 8
        object Label21: TLabel
          Left = 6
          Top = 14
          Width = 48
          Height = 13
          Caption = 'Superior..:'
        end
        object Label22: TLabel
          Left = 12
          Top = 38
          Width = 41
          Height = 13
          Caption = 'Inferior..:'
        end
        object Label23: TLabel
          Left = 110
          Top = 14
          Width = 54
          Height = 13
          Caption = 'Esquerda..:'
        end
        object Label24: TLabel
          Left = 124
          Top = 37
          Width = 39
          Height = 13
          Caption = 'Direita..:'
        end
        object edt_marsup: TCurrencyEdit
          Left = 55
          Top = 11
          Width = 49
          Height = 19
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 0
          Value = 1.000000000000000000
          OnExit = edt_rl_AltEtiqExit
        end
        object edt_marinf: TCurrencyEdit
          Left = 55
          Top = 32
          Width = 49
          Height = 19
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 1
          Value = 1.000000000000000000
          OnExit = edt_rl_AltEtiqExit
        end
        object edt_maresq: TCurrencyEdit
          Left = 165
          Top = 11
          Width = 49
          Height = 19
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 2
          Value = 1.000000000000000000
          OnExit = edt_rl_AltEtiqExit
        end
        object edt_mardir: TCurrencyEdit
          Left = 165
          Top = 34
          Width = 49
          Height = 19
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 3
          Value = 1.000000000000000000
          OnExit = edt_rl_AltEtiqExit
        end
      end
    end
    object tsReport_modelo01: TTabSheet
      Caption = 'Report'
      ImageIndex = 3
      object RLReport_modelo01: TRLReport
        Left = 121
        Top = 3
        Width = 1134
        Height = 197
        DataSource = src_etiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        InsideMargins.LeftMargin = 5.000000000000000000
        InsideMargins.TopMargin = 8.000000000000000000
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 300.000000000000000000
        PageSetup.PaperHeight = 52.000000000000000000
        object RLDetailGrid1: TRLDetailGrid
          Left = 19
          Top = 30
          Width = 1115
          Height = 163
          object dbrl_volume: TRLDBText
            Left = 90
            Top = 117
            Width = 107
            Height = 10
            AutoSize = False
            DataField = 'volume'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_rota: TRLDBText
            Left = 1
            Top = 153
            Width = 90
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'ROTA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_razaosoc: TRLDBText
            Left = 90
            Top = 39
            Width = 272
            Height = 10
            AutoSize = False
            DataField = 'RAZAOSOC'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_fantasia: TRLDBText
            Left = 90
            Top = 52
            Width = 272
            Height = 10
            AutoSize = False
            DataField = 'FANTASIA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_endereco: TRLDBText
            Left = 90
            Top = 66
            Width = 272
            Height = 10
            AutoSize = False
            DataField = 'ENDERECO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_bairro: TRLDBText
            Left = 90
            Top = 77
            Width = 272
            Height = 10
            AutoSize = False
            DataField = 'BAIRRO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_cidade: TRLDBText
            Left = 90
            Top = 91
            Width = 151
            Height = 10
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_uf: TRLDBText
            Left = 292
            Top = 91
            Width = 21
            Height = 10
            AutoSize = False
            DataField = 'UF'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_codbar: TRLDBBarcode
            Left = 90
            Top = 129
            Width = 132
            Height = 31
            Alignment = taCenter
            AutoSize = False
            DataField = 'CODBAR'
            DataSource = src_etiqueta
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object dbrl_emi_nomfan: TRLDBText
            Left = 90
            Top = 4
            Width = 272
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMI_NOMFAN'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_emi_razsoc: TRLDBText
            Left = 90
            Top = 21
            Width = 272
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMI_RAZSOC'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_volume: TRLDBText
            Left = 1
            Top = 117
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_NUMVOL'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_rota: TRLDBText
            Left = 1
            Top = 140
            Width = 90
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'OBS_ROTA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_fantasia: TRLDBText
            Left = 1
            Top = 52
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_FANTASIA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_endereco: TRLDBText
            Left = 1
            Top = 65
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_ENDERECO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_bairro: TRLDBText
            Left = 1
            Top = 77
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_BAIRRO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_cidade: TRLDBText
            Left = 1
            Top = 90
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_CIDADE'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_uf: TRLDBText
            Left = 265
            Top = 91
            Width = 23
            Height = 10
            AutoSize = False
            DataField = 'OBS_UF'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object dbrl_obs_codbar: TRLDBText
            Left = 1
            Top = 128
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_CODBAR'
            DataSource = src_etiqueta
            Layout = tlCenter
            Visible = False
          end
          object dbrl_obs_emi_nomtra: TRLDBText
            Left = 1
            Top = 105
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_EMI_NOMTRA'
            DataSource = src_etiqueta
            Layout = tlCenter
            Visible = False
          end
          object dbrl_emi_nomtra: TRLDBText
            Left = 90
            Top = 105
            Width = 272
            Height = 10
            AutoSize = False
            DataField = 'EMI_NOMTRA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object logo_emit: TRLImage
            Left = 1
            Top = 5
            Width = 89
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Picture.Data = {
              0A544A504547496D616765756C0000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC000110800D7029503012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A2B27C47E23D3FC2DA4FF00696A7214B7F3638B23AE5D80CF
              E0324FB035AA0865041041E411DE9D9DAE02D145148028A2B2BC49AEDAF867C3
              B7DAC5D91E55AC45F6E705DBA2A8F72703F1A6936EC80D5A2B9FB7F17E9B2F83
              AD3C4D2B32594F1248C514B942DC1071E8DC7D6B37FE169784FF00E7FA5FFC07
              7FF0ACE75214DF2CDD99D5430389AF1E7A34DC97749B3B2A2B8DFF0085A5E13F
              F9FE97FF0001DFFC28FF0085A5E13FF9FE97FF0001DFFC2A7DBD2FE65F79B7F6
              4E3FFE7CCBFF000167654571BFF0B4BC27FF003FD2FF00E03BFF00851FF0B4BC
              27FF003FD2FF00E03BFF00851EDE97F32FBC3FB271FF00F3E65FF80B3B2A2B8D
              FF0085A5E13FF9FE97FF0001DFFC28FF0085A5E13FF9FE97FF0001DFFC28F6F4
              BF997DE1FD938FFF009F32FF00C059D9515574DD46D756D3E1BFB293CCB79977
              236319E71D3EA2AD5689A6AE8E1945C64E32566828A28A648514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514557BEBD834ED
              3EE6FAE9F65BDBC4D2C8DE8AA324FE4285A81F3FFED0BE25FB4EB161E1C85F31
              DA2FDA2E003FF2D187CA0FD179FF0081D779F053C61FF091F83D74EB99337FA5
              0585F27978BF81BF21B4FF00BB9EF5F356BFAC4FE20F105FEAD73FEB6EE66948
              CE7682785FA0181F856CFC39F16BF837C6369A8B13F647FDC5DA8EF131193F50
              70DF857BD53097C32A6B75F999296B73EC8A29A8E92C6B246C19180656539041
              EE29D5E09A857CEDF1FBC63F6DD520F0BDA49982CC89AE8A9FBD291F2AFF00C0
              54E7EADED5ED7E32F1341E11F0ADF6B136D6685310C64FFAC90F0ABF9F5F604D
              7C6179773DFDECF79752192E2791A591DBAB331C93F99AF4F2EA1CD2F68F65F9
              9137D0F77F813AC43ADF86B57F06DFB6E44569615279F29F8703E8D83F57AE37
              54D3A7D2755BAD3EE0625B790C6DEF8E847B11CFE35CC780BC48DE14F1A69BAA
              9622049365C01DE26E1BF2073F502BDBFE2FE86A26B4F105B00D1CC043332F20
              9C651BF1191F80AF333FC2DA5ED57F5DCFACE11C7FB2C43C349E93DBD57F9AFD
              0F2CA28A2BE64FD2028A28A0028A28A00F66F839ACF9FA55E691237CF6CFE6C4
              0FF71BA81F4233FF0002AF4DAF9CBC03AC7F62F8C6C6666DB0CCDF6797FDD6E3
              3F81C1FC2BE8DAF6B05539E95BB1F98713E0FD8639CD6D3D7E7D7FCFE6145145
              761F3A1451450014514500145145001919C679F4A2BC0AFBE29FD8BE3B3CAD3E
              345887F65CBCFCA003F349F8499E7FBA2BDF410464722B6AB4654ADCDD55C49D
              C28A28AC461451515D5CC3656935D5CC8B1C10A34923B745503249FC050027DA
              EDFEDBF63F393ED223F37CACFCDB338DD8F4CF15357CB9A2FC4D9A6F8D09E24B
              9768AC6EE4FB2346C788EDCF0B9FA1DAC7DC1AFA8EBA31187951693EA849DC28
              A28AE7185145140051451400514514005155AF352B1D3903DF5EDBDAA3701A79
              5501FCCD5587C47A1DC4823835AD3A573D152E918FE40D3516F5B01A74514520
              0A28A2800A28A2800A6BBAC68CEC70AA0927D053A8A00E77FE13BF0BFF00D06E
              D7F33FE147FC277E17FF00A0DDAFE67FC2BC3BC6BA2FF60F8B2FACD576C0CFE6
              C3E9B1B9007D391F8573F5E54B1D52327169687DF50E15C156A51AB0A92B4927
              D3AFC8FAB6D2EEDEFAD23BAB595658251B91D4F0C2A6AF37F83FACFDAB42B8D2
              A46FDE59C9BE31FEC3F3FA367F315E915E8D2A9ED20A47C6E6184783C4CE83E8
              FF000E9F80514515A1C621200249C01D49A6C52C73C492C4EAF1BA86565390C0
              F208AE2FE27F88BFB17C32D690BE2EEFF312E0F2A9FC67F238FC6A97C25F117F
              6868926913BE6E2C798F3D5A23D3F23C7D08AC1D78FB5F647A91CAAABC03C774
              4EDF2EFF007E87A2514515B9E58557BDBEB5D36CE4BBBC9D21B78F1BE4738032
              703F53562BCBFE326B3E4D85968D1B7CD3B79F281FDD5E147E273FF7CD655AA7
              B38391DD96E0DE37150A0BAEFE9D4EAE5F881E158632EDACC040FEE2B31FC802
              6ABFFC2CCF087FD05FFF0025A5FF00E22BE79A2BCDFED0A9D91F6EB83F05D672
              FBD7F91F437FC2CCF087FD05FF00F25A5FFE228FF8599E10FF00A0BFFE4B4BFF
              00C457CF3452FED0ABD97F5F32BFD50C0FF3CFEF5FFC89F437FC2CCF087FD05F
              FF0025A5FF00E228FF008599E10FFA0BFF00E4B4BFFC457CF3451FDA157B2FEB
              E61FEA8607F9E7F7AFFE44FA1BFE1667843FE82FFF0092D2FF00F1147FC2CCF0
              87FD05FF00F25A5FFE22BE79A28FED0ABD97F5F30FF54303FCF3FBD7FF00227D
              0EDF12FC22A70756C1C03FF1ED2F7FF80D27FC2CCF087FD05FFF0025A5FF00E2
              2BE7D9FF00D60FF717FF0041151D1FDA157B2FEBE625C21816AFCF3FBD7FF227
              D0DFF0B33C21FF00417FFC9697FF0088A55F897E11760ABAB649381FE8D2FF00
              F135F3C5496FFF001F317FBE3F9D1FDA157B2FEBE60F8430295F9E7F7AFF00E4
              4FA0BFE1667843FE82FF00F92D2FFF001147FC2CCF087FD05FFF0025A5FF00E2
              2BE79A28FED0ABD97F5F31FF00AA181FE79FDEBFF913E86FF8599E10FF00A0BF
              FE4B4BFF00C455DD2BC6FE1DD6AFD2C74FD47CEB9704AA79322E40193C9503A5
              7CD95D97C2DFF91F6CFF00EB9CBFFA01ABA58EA929A8B4B53971DC2D83A186A9
              5A3295E29BDD745E87D03451457AA7C105145140057947C7AF12FF006578323D
              2217C5C6A926D600F2224C16FCCED1F426BD5EBE47F8BDE25FF8493E20DEB44F
              BAD6C7FD120C1E0ED2771FC58B7E18AEDC052F695937B2D4993B2384A28A2BE8
              0C8FA7FE06F8C3FB7BC28746BA9337BA5011AE4F2F09FB87F0FBBF40BEB5EA95
              F18F80BC552F837C5F67AAAEE3003E55CA0FE389BEF7E23823DC0AFA8BC79E32
              B7F0AF8227D6A0963925990259739123B8F948F50065BE82BC2C6619C6B7BABE
              2358BD0F13F8EFE31FED9F12A6816B266CF4C27CD2A7879C8E7FEF91F2FD4B57
              9253A591E695E595D9E4762CCCC72589EA4D36BD9A349528282E866DDC2BEA5F
              863A8DA78F7E16C7A5EA7995ED316938CE1B0B831B67FDDDBCFA835F2D57A7FC
              0CF137F6278E469D33EDB5D553C820F4128E633FCD7FE055CF8FA2AAD17E45D2
              A92A73528BB347B67FC2A7F0BFFCF2BAFF00BFE68FF854FE17FF009E575FF7FC
              D79F78C756F13787BC517962BAD5F883779907EF9B98DB91F974FC2B07FE132F
              12FF00D072FF00FEFF00B57C4CABD08B7174F63F40A39666B5A9C6AC315A495D
              6AFA9EBFFF000A9FC2FF00F3CAEBFEFF009A3FE153F85FFE795D7FDFF35E41FF
              000997897FE8397FFF007FDA8FF84CBC4BFF0041CBFF00FBFED4BEB187FE434F
              EC6CE3FE82BF167AFF00FC2A7F0BFF00CF2BAFFBFE68FF00854FE17FF9E575FF
              007FCD7907FC265E25FF00A0E5FF00FDFF006A3FE132F12FFD072FFF00EFFB51
              F58C3FF207F63671FF00415F8B3D7FFE153F85C1C88AEBFEFF009AED917622AE
              4B60632C724FD6BE6AFF0084CBC4BFF41CBFFF00BFED5EBFF0BB5EB9D6BC3932
              DEDCC93DD5B4E559E46CB152015C9FAEE1F857461ABD294B9611B5CF233ACA71
              F4682AF89ABCE93F3D2FEBF23B8A28A2BB8F950A28A2800A28A2800AE73C79E2
              35F0AF82F52D5430134716CB707BCADF2AFD704E7E80D7475F3E7ED0FE25F3AF
              F4EF0DC2F95817ED57001FE36C841F50371FF810AE8C2D2F6B5547A0A4EC8F10
              666762CC4B3139249C926BEABF831E301E26F064767712EED434C0B04B93CB47
              FF002CDBF218FAA9F5AF94EBAFF869E2E3E0DF19DADF4AC458CDFB8BB03FE79B
              7F17FC04E0FE0477AF6F1943DAD2696EB6328BB33EC4A291595D432B06561904
              1C82296BE70D82BC63E3EF8C3FB3F4783C3168F8B8BE025B920F2B083C0FF813
              0FC94FAD7AE6A9A95B68FA5DD6A378FB2DAD6269646F6033C7BD7C5BE26D7EE7
              C51E24BED66EF892EA42C133908BD1547D0003F0AF432FA1CF539DECBF3266EC
              8C9AFB03E16789BFE128F00D85CC8FBAEEDC7D96E727277A00013EE5769FC6BE
              3FAF5CF803E26FECCF164FA1CEF8B7D4E3CC793C0990123F35DC3EA057A18FA5
              ED295D6EB5222ECCFA5EB13C63FF00223EBFFF0060DB8FFD16D5B7589E31FF00
              911F5FFF00B06DC7FE8B6AF061F12353E27A28AF5CF853F0B343F1CF872EF51D
              4EEB5086686ECC0AB6D222A9508ADCEE43CE58D7D3D5AB1A51E696C6295CF23A
              D3F0E7FC8CFA4FFD7EC3FF00A18AFA17FE19DFC25FF411D6FF00EFFC5FFC6EA7
              B2F805E15B0BFB7BC8B50D64C904AB2A869A2C12A4119FDDF4E2B925985169A1
              F233D52BC37E2CFC5FB9D36FA6F0EF86E6F2A784EDBBBD5E4A37744F423B9FC0
              74CD7A6F8FFC42DE16F03EA9AB4440B88E2D9067FE7A310AA7DF04E7F0AF8CE4
              77964692462EEC4B3331C924F526B8F2FC32A8DD49EC8A9BB68497375717B70D
              71753CB3CCE72D24AE598FD49A86BD5BE167C238FC6564FAC6B13CF069A1F642
              90E03CE47DE3920E1474E9C9CF4C575DE36F80FA5268B737DE197B886EE04327
              D9647F31250072AA4F21B8E393E9F4F4658CA309FB36C8E576B9E57E07F88DAD
              7822F90DB4CD71A733666B291BE461DCAFF75BDC7E39AFAE34BD4AD758D2AD75
              2B290496D7312CB1B7B119E7DFD457C4FA6E83ABEB2E174CD2EF2F0E71FB8819
              C0FA9038AFA7BE0D695E20D0FC1CFA66BD60D69E54ECF6A1DD4928DC90402718
              6CF5C75AE3CC69D3B73ADCA8367A2D78A7ED15AD791A2E95A246DF35CCCD7120
              1FDD41800FD4B7FE3B5ED75F277C69D6FF00B63E255F468DBA1B055B44E7BAF2
              DFF8F330FC2B972FA7CF593EDA9527A1E7B5F417ECE9AD799A7EB1A1BB73148B
              75103E8C36B7E4557F3AF03FB2CE2CC5DF967ECE64316FEDBB19C7E46BB6F839
              AD7F62FC4BD37736D86F7759C9EFBFEEFF00E3E12BD7C5C3DA5192FEB4338BB3
              3EB7A28A2BE6CD8F31F8C7A2F9FA65A6B31A7CF6EDE4CA47F71BA13F46E3FE05
              5E355F52EB3A647ACE8D79A74B8D971114C9FE13D8FE0707F0AF97AE2092D6E6
              5B7994ACB1394753D981C115E3E3E9F2CF99753F46E13C67B5C2BA12DE0FF07F
              F06E74BF0F759FEC5F18D9C8EDB60B83F6797D30DD0FE0DB4FE15F4557C98090
              41070457D33E13D606BDE18B1BF27323C7B65FF7D786FD467F1ADB2FA9A383F5
              3CFE30C1DA50C547AFBAFF0035FA9B548CC154B310140C927B52D70BF147C49F
              D8FE1D36103E2EEFC18C60F2B1FF0011FC738FC4FA577D49AA71727D0F92C1E1
              678BAF1A10DE4FFE1DFC8F28F1AF885BC49E25B8BB5626DA33E55B8F441DFF00
              1393F8D57F0A6BCFE1CF11DAEA009F295B64CA3F8A33F787F5FA8158B457CFBA
              92E7E7EA7EBCB074961FEAD6F72D6F91F58C5224D124B1B078DD432B03C107A1
              A75701F0A7C45FDA9E1F3A64EF9B9B0C2AE7AB447EEFE5C8FC0577F5EFD2A8AA
              4149753F22C6E12784C44E84F78BFC3A3F9A0AF9B3C6DACFF6EF8B6FAED5B742
              AFE543E9B178047D793F8D7B8F8E359FEC3F08DF5D2B6D99D3C987D77B7191F4
              193F857CDD5C19854DA0BD4FAFE0FC1FC78A97F857E6FF0040A2B63C2FA1B788
              BC4569A686644918991D7AAA01927FCF722BD4BFE14CE8DFF412BFFF00C73FF8
              9AE3A587A9555E28FA3C767384C0D454EBCACDABED73C568AF6AFF008533A37F
              D04AFF00FF001CFF00E268FF008533A37FD04AFF00FF001CFF00E26B4FA8D6EC
              717FAD1977F33FB99E2B457B57FC299D1BFE8257FF00F8E7FF001347FC299D1B
              FE8257FF00F8E7FF001347D46B760FF5A32EFE67F733C568AF6AFF008533A37F
              D04AFF00FF001CFF00E268FF008533A37FD04AFF00FF001CFF00E268FA8D6EC1
              FEB465DFCCFEE678CCFF00EB07FB8BFF00A08A8EBDB1FE0DE8EE72751BEE807F
              07618FEED37FE14CE8DFF412BFFF00C73FF89A3EA55BB0971465C97C4FEE678A
              D496FF00F1F317FBE3F9D7B37FC299D1BFE8257FFF008E7FF134E4F837A3A3AB
              8D46FB2A4119D9FF00C4D1F52ADD81F1465CD7C4FEE6789D15ED5FF0A6746FFA
              095FFF00E39FFC4D1FF0A6746FFA095FFF00E39FFC4D1F51ADD87FEB465DFCCF
              EE678AD765F0B7FE47DB3FFAE72FFE806BB8FF008533A37FD04AFF00FF001CFF
              00E26B57C3DF0DB4DF0E6B316A76D7B772CB1AB00B26DDA7208EC3DEB4A583AB
              19A935B33931FC4780AD85A94A1277945A5A3EA8ED28A28AF5CFCEC28A28A00E
              63E20F8907857C11A96A6AE16E047E55BFBCADC2FE59CFD01AF8D092C4924927
              924D7B67ED0DE25FB46AB61E1B85F296ABF69B800FFCB4618507DC2E4FFC0EBC
              4ABDFCBE97252E67BB329BD4EB3E1EF82E5F1CF8865D396430C515B4933CB8E1
              4E309FF8F95E3D01AE6AF6CEE34EBE9ECAEE268AE2DE468A58DBAAB03822BE95
              F809E1BFECAF0649ABCC98B8D524DCA48E444990BF99DC7E845719F1FF00C1E6
              CB5683C516917EE2F310DD6D1F76503E563FEF28C7D57DE8862EF8874FA74F50
              E5D2E78B56CEABE27D4F59D1749D2AF26DF6BA5C6D1C03BE09CF3EB81851E805
              63515DAE29B4DF4242B7BC1BE19B8F17F8A6CB478372ACAF99A4033E5C63966F
              CBA7B902B06BE9BF817E0DFEC3F0CB6BB7716DBED51418F70E520FE11FF02FBD
              F4DB5862ABFB1A6E5D7A0E2AECF9F3C55A14BE19F14EA3A3CB9CDACC5518FF00
              121E55BF1520FE35976F3CB6B7315C40E52689C3A38EAAC0E41FCEBDC7F687F0
              D6CB8D3BC4B027120FB25C903B8CB21FCB70FC057855561EAFB5A4A40D599F48
              F8D0C5E32F87BA378C6D50798B1817017F8413B587FC05C11F89AF2EAECFE036
              B30EA5A6EB3E0CBF3BA29A369E104FF09016403FF1D23F1355E7F871E298AE25
              8E3D2DE54472AB22BA61C03D464F7AF8ACDB072A7887CAB467E87C2D9B525857
              42BCD4795E9776D1FAF67F99CA515D3FFC2BBF167FD01A5FFBF89FFC551FF0AE
              FC59FF0040697FEFE27FF155E5FB1A9FCAFEE3EA3FB4707FF3F63FF812FF0033
              98A2BA7FF8577E2CFF00A034BFF7F13FF8AA3FE15DF8B3FE80D2FF00DFC4FF00
              E2A8F6353F95FDC1FDA383FF009FB1FF00C097F99CC57A2FC1ED4BECDE25B9B0
              6384BB83207ABA1C8FD0B560FF00C2BBF167FD01A5FF00BF89FF00C556AF86BC
              1DE2BD1BC4BA76A0DA44C1219D4C84489F70F0DFC5E84D6B461521514B95FDC7
              066788C1E2707528FB58DDA76F796FBAEBDCF77A28A2BDD3F290A28A2800A28A
              28021BBBA86C6CE7BBB8711C1046D2C8E7A2AA8C93F90AF89FC4BADCDE24F12E
              A1AC4F9DF77334814FF0AF455FC1401F857D19F1DBC4BFD8DE081A642F8B9D56
              4F2B83C889705CFF00E82BFF000235F2F57B59652B45D47D4CE6FA0514515E99
              07D47F043C61FF00090F84469573266FB4A0B11C9E5E1FE03F8636FE03D6BD42
              BE34F87DE2C93C1BE30B3D5324DB13E4DD20FE289BAFE23861EEA2BEB6D735FB
              2D0BC3775AE4F22B5AC1079C0AB7FACC8F9403FED1200FAD7818DC3B855F7569
              2358BD0F1EFDA07C63B22B7F09DA49CBEDB8BD20F6FE043F8FCC7E8B5E0557B5
              9D5AEB5DD6AF355BD6DD71752B4AFE833D87B01C0F61546BD9C3D15469A819B7
              7615674FBFB8D2F52B5BFB57D9716D2ACD1B7A329C8FE555A8AD9ABE823EE2D0
              757B7D7F41B1D5AD4FEE6EE15940FEE923907DC1C8FC2AAF8C7FE447D7FF00EC
              1B71FF00A2DABCBFF67AF137DAB47BEF0DCEF992D1BED16E09FF00966C7E603D
              8373FF0003AF50F18FFC88FAFF00FD836E3FF45B57CD54A5ECABF2799B27747C
              4F5DE781FE2A6ABE04D227D3AC6C6CEE239A733969F76412AAB8E08E3E515C1D
              75DE14F86DE21F19E9D35FE911DBB4114C61632CC10EE001E9F4615F41595371
              FDE6C64AFD0ED7FE1A2BC45FF407D2FF00293FF8AAE9BE1FFC66D67C5DE33B2D
              16EF4EB0860B812167877EE1B5198632C47515C17FC287F1BFFCF0B2FF00C091
              FE15D67C35F84FE28F0BF8F2C357D4A2B55B481650E639C31F9A3651C7D48AE0
              AB1C27B3972DAF629735CDBFDA22F0C5E0CD3AD1723CFBE0C4FB2A371F9B0FCA
              BE6CAFA27F68D859BC3DA2CF83B52EDD09CF1964C8FF00D04D7CED5BE5EBF70B
              E629EE7DABE08B18F4DF036856B1285096311201CFCC54331FC4926A96A5F12B
              C1DA4EA13E9F7FADC30DD40DB258DA37254FA70B8AD7F0DCC2E3C2DA44C31892
              CA171818EA80D7C9BF143FE4A6F883FEBE8FF215E6E1A82AF564A6CB6EC8FA3D
              3E2CF80634089E20B75503000864000FFBE6B73C3FE2ED07C55F68FEC4D452F3
              ECDB7CED88CBB37676FDE03AED3F957C4F5EF5FB367FCCCFFF006EBFFB5AB7C4
              E069D2A4E69BBA12936EC7B76A97F1695A4DE6A339C436B0BCCFF45524FF002A
              F87AF6EE5BFBEB8BCB86DD35C4AD2C87D598E4FEA6BEA3F8E5ADFF00657C399E
              D91F136A3325B2E0F3B7EF37E185C7FC0ABE56552EC1546493802B5CB29DA0E7
              DC537A9EBB2784F1FB36C7A8ECFDF8BFFED03C73B4B793F9630D5E4D6D712DA5
              D45730B15962712230ECC0E41AFAEE5B4D15BE1CB78606A7A79FF8967D8C1FB4
              263708F686EBEBCD7C7E410483D456D83AAEA73DFBFE6292B1F72E8BA9C5AD68
              761A9C38F2EEEDD2603D372838FC338ABD5E61F01F5AFED3F87AB64ED9974E9D
              E1C77D8DF3A9FF00C788FF0080D7A7D7875A1ECEA38F6344EE82BC1FE2B68BFD
              9BE2BFB6C6B886FD3CC18E9BC70C3F91FF008157BC5719F13B45FED6F084D346
              B99EC4FDA131D768E1C7E5CFE02B8B174F9E93F2D4F7387F19F55C745BDA5EEB
              F9EDF8D8F9FEBD63E0D6B387BED1646E08FB4C20FAF0AC3FF41FC8D793D6B786
              3573A17892C751C90914A3CCC7743C37E84D79187A9ECEA291FA2E6D83FADE0E
              7456F6BAF55AA3E9C7758D19DD82AA8C924E0015F3678CBC40DE24F12DCDF027
              ECE0F976E0F68C74FCF93F8D7AA7C54F122E9BE1C5D3ADA41E7EA2304A9E917F
              11FC781F426BC32BAF1F5AED5347CEF0965DC90962E6B57A2F4EAFEFD3E41451
              4579C7D99BDE0ED7CF873C4D6B7C49F209F2E703BC6DD7F2E0FE15F4A2B2BA2B
              A3065619041C822BE4DAF76F865E268EFF00C26D6F752859B4C5DAECC7FE5960
              956FC0023F0AF47015ACDD367C6716E5FCF08E2E0B55A3F4E9F8E9F3398F8C7A
              CF9DA8D9E8F1B7C96EBE74A07F7DB8507E839FF8157985686BBAA3EB5AEDEEA5
              26737129700FF0AFF08FC0607E154511A4754452CCC7000EA4D71D6A9ED2A391
              F499661160F090A3D52D7D5EAFF13D73E0D68DB20BED6A45E5CFD9E127D060B1
              FCF6FE46BB6D5FC6DE1AD06F8D96A9ACDADADC850E62918E403D0D5AF0E692BA
              17876C74E18CC3101211DDCF2C7F326BE43F1E6BBFF09278E357D5036E8A5B82
              B09FFA66BF2A7FE3A01AFA6CB304A71E47A597E27E599BE37EB58B9D65B37A7A
              2D11F51FFC2D0F047FD0C965FF007D1FF0AE934ED46CF56B086FF4FB84B8B598
              663963390C338FE60D7C2D5F497ECF7AEFDB3C297BA348D992C27DE83FE99C9C
              FF00E841BF3AEDC560634A9F3C59E6C65767AC6A1A85A6956135F5FCE905AC23
              7492BF451D39AE6BFE1687823FE864B2FF00BE8FF8533E2B7FC92FD7BFEBDC7F
              E86B5F1ED4E13071AF07293094AC7D8BFF000B43C11FF432597FDF47FC28FF00
              85A1E08FFA192CBFEFA3FE15F1D515D7FD994FBB173B3EC5FF0085A1E08FFA19
              2CBFEFA3FE14F8FE26782E591238FC4564CEE42A80C7927F0AF8DEADE95FF218
              B2FF00AF88FF00F42149E594EDBB0E767D8DAA78F3C2DA2EA32E9FA96B76B6D7
              7163CC8A4272B901876F420FE354FF00E1687823FE864B2FFBE8FF00857CEFF1
              A3FE4AD6B7FF006C3FF44475C154D2CBA9CE0A4DBD5039BB9F62FF00C2D0F047
              FD0C965FF7D1FF000A3FE1687823FE864B2FFBE8FF00857C75455FF6653EEC39
              D9F62FFC2D0F047FD0C965FF007D1FF0ADCD175FD2BC456AF75A45F4579046FE
              5B3C47203601C7E4457C3D5F4A7ECEDFF2246A5FF6126FFD171D73E2B050A34F
              9D3638CAECF5FA28A2BCC2C2A0BDBC834FB0B8BDB97096F6F1B4B239FE155192
              7F2153D794FC7AF12FF64F82E3D2617C5C6A926C383C889305BF33B47D09AD28
              D37526A0BA89BB23E74F10EB33F887C437FABDC67CCBB99A4C67EE82785FA018
              1F853742D267D7B5EB1D2AD87EF6EE65881C7DDC9E49F60327F0ACFAF67FD9EF
              C37F6CD7EF7C4334798AC63F260247FCB571C91F45C8FF0081D7D1D69AA349C9
              74324AECFA12C2CA0D374EB6B1B54D96F6D12C31AFA2A8C0FD0550F13E816DE2
              7F0DDF68D75811DCC4543633B1FAAB7E0403F856BD15F32A4D3E65B9B1F0B6A5
              A75D691A9DCE9D7B198EE6DA468A44F46071F88F7AAB5EE3FB40F83CC3796FE2
              BB48BF773E2DEF303A381F231FA81B7FE023D6BC3ABE9E8555569A9A316ACCEB
              BE1B7841FC67E31B5B17526CA1FDFDDB7FD33047CB9F56381F8E7B57D8688914
              6B1C6A15140555518000EC2BCFFE0F7837FE114F074735CC7B752D476CF7191C
              A2E3E44FC01C9F7635E855E1E36BFB5A965B2348AB2303C6DE1D5F15783B52D2
              080649A226127F8655F990FE607E19AF8B64478A468E452AEA4AB2918208ED5F
              78D7C9FF0019FC35FF0008FF00C40B99A24DB6BA90FB5C781C0627E71FF7D64F
              D18574E5956CDD37EA29AEA723E1AF105E785BC4169ACD86C3716CC4857CED60
              41041C76209AF4EFF868AF117FD01F4BFCA4FF00E2ABC728AF4EA50A751DE6AE
              426D1EC7FF000D15E22FFA03E97F949FFC551FF0D15E22FF00A03E97F949FF00
              C5578E5159FD4E87F287333D8FFE1A2BC45FF407D2FF00293FF8AA3FE1A2BC45
              FF00407D2FF293FF008AAF1CA28FA9D0FE50E667B1FF00C345788BFE80FA5FE5
              27FF001547FC345788BFE80FA5FE527FF155E39451F53A1FCA1CCCFB17E1BF8C
              9BC71E134D5268A286E92678678E2CED561C8C679FBA57F5AEBABE77FD9DB5CF
              235AD574391BE5B9845C440FF790E081EE4303FF0001AFA22BC3C5D254AAB8AD
              8D62EE828A28AE718514573BE3BF110F0AF82F52D58301347115801EF2B7CABF
              5E4E7E80D5462E52515D40F9BBE31F897FE122F88376913EEB4D3C7D922C1E09
              52779FFBE8919F402BCFE95999D8B33166639249C926A5B5B59AF6F20B4B7432
              4F3C8B1C683AB331C01F99AFA8A7054E0A2BA183D4DE1E0CD40FC3FF00F84B80
              26D05DFD9D931C85C01E67D377CBF5AE6EBED4D3BC276169E0787C2D2A092CC5
              A7D9A5C71BC91F337B12493F5AF8FF00C47A15CF86BC457DA3DD8FDEDACA5376
              31BD7AAB0F62083F8D7361714AB392EDB7A1528D8CBAEB356F1F6A7ABF8174AF
              0B4E7F716121264DDCCAA062353FEE82C3FEF9F4AE4E8AEA9423269B5B121451
              5BBE0FF0D5C78B7C5365A3DBE544CF99641FF2CE31CB37E5D3DF029CA4A29B60
              599BC15A8C1F0FE0F173822D66BA302A639D983893E85815FF00F5D7335F6A6B
              7E15B2D4FC1173E198A248AD5AD3ECF02F68CA8F90FE0429FC2BE2FB8B796D2E
              65B69D0A4D1398DD0F55607047E75C984C4FB752BF47F8152563A1F007890F85
              3C6BA6EA85888164F2EE00EF1370DF9039FA815F59F8C183781B5E652083A6DC
              10477FDD357C4F5F4CF83BC4DFF091FC08D51657DD77A7E9D7169364F242C476
              1FC548E7D41AC31F4AEE3517A0E0FA1F3357D1FF00B3D5CC10F8275159668D09
              D458E1980FF9671D7CE14576E228FB68725EC4A7667DD7F6EB4FF9FA83FEFE0A
              5FB75A7FCFD41FF7F057C275241FF1F11FFBE3F9D79FFD96BF9BF0FF00825739
              F54FC6ED15F57F86F732C49BA4B0952EC007F84655BF25627F0AF94ABEEEB9B6
              8AF2D66B59D03C332347221E8CA4608FC8D7C75E3DF04DEF81FC45258CE1DED2
              425ED2E48E254FFE287423FA114F2DACACE9B09AEA7BF7C17F195AEBDE0FB6D2
              65B851A9E9A821689DBE678C7DC651DC01807D31EE2BB4D4747F0DA2CFA86A7A
              6E94147CF35CDCC11FE6CCC3F9D7C5104F35ACE93DBCB2432A1CAC91B15653EC
              474AB77DADEADA9C6B1EA1AA5EDDA29C85B8B879003D3A126AAA65DCD51CA32B
              260A7A1A5E3ABBD32FBC6FAB5C68FE57F67BCDFB8F2536260003818181906BD6
              7F66CFF999FF00EDD7FF006B578322348EA88A5998E0281924FA57D37F03FC15
              AB785748D46FB578C5BC9A9792D1DBB7DF4540FCB7A13BFA7518E7D2B5C6B8C3
              0EE17EC28EE70FFB43EB5F6AF1469DA3A3652CADCCAE076790F43FF01553FF00
              02AF1BADEF1B6B5FF090F8D757D5436E8E7B96F28FFD335F953FF1D02BA8F845
              E02B0F1CEABA8A6A8D70B6969029CC0E14EF66E32483C615AB5A7CB87A0B9BA2
              13D59E73457D41FF000CFF00E0DFF9EBAA7FE042FF00F115E47F173C0761E06D
              634F8F4B6B86B3BAB72D99DC31F315BE6E401C60AD2A58CA5565C91DC6E2D1B5
              FB3DEB5F62F185E692ED88F50B6DCA3D648F91FF008E97FCABE95AF897C25AC9
              F0F78B74AD581216DAE51E4C774CE187E2A48AFB6410CA082083C823BD79B995
              3E5AAA5DCA83D05A6C91A4B1B4722864705594F420F514EA2BCE2F63E60F1169
              2FA17882F74D6CE20948427BA1E54FE208ACBAF56F8C9A2ED96CB5B8D7871F67
              9881DC64A9FCB70FC05794D7CF57A7ECEA389FB06558CFAE60E15BAB5AFAAD19
              6F50D4EEF549217BB94C86185208F3D914600FEBF535528A2B26DBD59DF18C60
              B962AC8D5F0D68B27883C4169A6A642CAFFBC61FC283963F97EB8AB9E35F0F1F
              0DF89AE2CD148B67FDEDB93CFC87A0CFB1C8FC2BD23E117877EC7A54BADCE989
              AEFE4872391183C9FC48FF00C7455FF8A9E1E3AB786FEDF0A66E74F264E072D1
              9FBC3F0C03F81AEF585BE1F9FAEFF23E5679F28E6EB0F7FDDFC2FF00C5DFEFD3
              EF3C1EAD596A375A7ADCADB4A505CC2D04A07F121EA3F4AAB457026D6C7D54A3
              192B495D05761F0D346FED7F18DBBBAE60B31F687F4C8FBA3FEFA20FE06B8FAF
              73F849A2FD83C3326A322E25BF9370CFFCF35C81FAEE3F88AE8C253E7AABCB53
              C7CFF19F55C0CDADE5EEAF9FFC0B9AFF0011F5DFF8477C01ABDFABED9BC930C2
              73CEF7F9411F4CE7F0AF8D6BDFBF68BD776DB691A046FCBB35E4CBEC32A9FA97
              FCABC26C6CE5D4350B6B280666B8956241EACC401FA9AFBCCBA9F251E67D4FC8
              E6F527D5348BAD23EC5F695DBF6BB54BB8BDD1F383FA5771F0475DFEC7F88D6D
              6EED883518DAD5B3D371F993F1DCA07FC0ABACF8FF00E1B8B4FD33C397D6C988
              ADA33A793FECA80631FA3D789D95E4DA7DFDBDEDBB6D9EDE559636F4652083F9
              8ADA12589A1EB716CCFB63C47A1C1E25F0FDE68F732C9143749B19E3C6E0320F
              19E3B57987FC33AF877FE831AA7E71FF00F135EAFA4EA30EB1A3D96A56E7F737
              7024C9EC18038FD6AE57830AF5695E317635B267CB3F157E1AE9BE01B6D325B0
              BDBBB8376F22B89F6F1B42E31803D6BCCABE81FDA43FE41FE1EFFAEB3FF24AF9
              FABDEC1CE53A2A527766525667B8F823E09E89E27F0769DACDD6A7A84535D233
              3245B368C315E32B9ED5D25B7ECF7E1FB6BA8A75D5F532D13870098F04839FEE
              D753F08FFE496685FF005C9FFF00463576B5E456C556552494B4BB3451563CD7
              C55F05F46F167896EF5BBBD4AFE19EE766E48B66D1B5150632A4F45158571FB3
              CF87A1B69651ABEA84A2160098FB0FF76BD9EABDF7FC83EE7FEB937F2359C715
              5925152D07CA8F852BAFF86DE12B4F1AF8B06937B713C10F90F2EF871BB2B8F5
              07D6B90AF50F807FF25247FD794BFF00B2D7BD88938D29496F6325B9E81FF0CE
              BE1DFF00A0C6A9F9C7FF00C4D779E07F04D97813489F4EB1B9B8B88E69CCE5A7
              DB904AAAE38038F94574F457CF4F1156A2E593BA354920A28A2B11857C93F183
              C4BFF091FC41BDF2A4DD6961FE890E0F07693B8FE2C5B9F402BEB6AE48FC30F0
              4B124F872C893C9241E7F5AEBC2578519B9495C992B9F1CD7D8BF0CFC37FF08B
              F80B4DB174D973227DA2E7239F31F920FB8185FF0080D3A3F865E0A8A45913C3
              962194860769E08FC6BACAD3178C55E2A315608C6C145145701466F88344B5F1
              1E817BA45E0FDCDD446327192A7B30F707047D2BE6EF86DF0E2EEFFE24CF63AB
              5BE2DF44977DD83F75DC1F917DC3119F7507D6BEA3A8A3B68219A69A2851259D
              834AEAB82E400A093DF00015D347132A5094575135725A28A2B98615E61F1D3C
              37FDB5E053A8C31EEB9D29FCE040E7CA3C38FF00D05BFE035E9F51DC4115D5B4
              B6F3C6B2432A149118643291820FE15A52A8E9CD4D74135747C21457D8127C27
              F02CADB9BC3B6C0F4F95DD47E41A9BFF000A8FC09FF42EC1FF007F64FF00E2AB
              D7FED3A5D991C8CF9068AFB17FE157F823FE85BB2FFBE4FF008D1FF0ABFC11FF
              0042DD97FDF27FC68FED3A7D987233E3AA2BEC5FF855FE08FF00A16ECBFEF93F
              E347FC2AFF00047FD0B765FF007C9FF1A3FB4E9F661C8CF8EA8AFB17FE157F82
              3FE85BB2FF00BE4FF8D1FF000ABFC11FF42DD97FDF27FC68FED3A7D987233E5C
              F01EB9FF0008EF8E748D4D9B6C51DC2ACC7FE99B7CAFFF008EB1AFB46B91FF00
              855FE08FFA16ECBFEF93FE35D6222C68A8A30AA0003DAB8319888579294558A8
              AB0EA28A2B8CA0AF9F7F687F12F9D7DA7F86A07CAC03ED57001FE339080FB81B
              8FFC0857BEDD5CC3656935D5C388E0823692473D1554649FC857C4DE26D726F1
              2789750D627C87BA999C29FE15E8ABF82803F0AF472EA5CD539DF4226F432ABD
              47E04F86FF00B67C71FDA52A6EB6D2A3F3B91C195B2107FE84DFF01AF2EAFAC3
              E0C786FF00E11FF87F6B34A9B6EB523F6B932390A47C83FEF900FD58D7A18EAB
              ECE8BB6EF4262AECF43AF12FDA03C202EB4DB7F14DA45FBDB5C4177B47DE8C9F
              958FD18E3FE043D2BDB6AB6A1616DAA69D7361791896DAE6368A543DD48C1AF0
              E85574AA29A346AE8F8568AD9F15F87AE3C2BE27BFD1AE325ADE4211C8FBE879
              56FC4106B1ABE9E32525746215F4CFC0AF06FF0062F86DB5EBB8F17BA98062C8
              E5201CAFFDF47E6FA6DAF12F873E117F19F8C2D74F656FB1C7FBEBB71DA35EA3
              3EA4E17F1CF6AFB1638D228D238D1523401555460003A002BCCCCABD97B25D77
              2E0BA8EAF967E39786FF00B13C78F7F126DB6D553ED0B81C0907120FAE70DFF0
              2AFA9ABCE3E36786FF00B7BC013DCC49BAEB4C6FB5260725070E3E9B7E6FF808
              AE1C155F67595F67A1525747CA75E8BF07F578E2F10DE7872EE668AC7C416AF6
              4ECA465642A42119EFCB28F7615E7552DB5C4B69750DCDBB98E685C491B8EAAC
              0E41FCEBDFAB0E7838992763E8BFF8675F0EFF00D06354FCE3FF00E268FF0086
              75F0EFFD06354FCE3FFE26B362FDA3EDC42825F0DCA64DA3795BB0013DF1F2F4
              A7FF00C3485A7FD0B53FFE058FFE22BC9E5C7FF5634F74BFFF000CEBE1DFFA0C
              6A9F9C7FFC4D393F677F0F23AB0D5F54CA9CF58FFF0089ACEFF8690B4FFA16A7
              FF00C0B1FF00C451FF000D2169FF0042D4FF00F8163FF88A3971FE7F807BA7B9
              5666BDE1ED2BC4DA5BE9DABDA25CDB37201E0A9ECCA4720FB8AF20FF008690B4
              FF00A16A7FFC0B1FFC451FF0D2169FF42D4FFF008163FF0088AE7583C427751F
              C50F9916355FD9D34A9896D275CBBB5EFB2E635987D323691FAD53B3FD9BE21C
              DEF891DB9FBB05A81C7D4B1FE5527FC3485A7FD0B53FFE058FFE228FF8690B4F
              FA16A7FF00C0B1FF00C4574AFAFA56FF00217BA7A07843E18786BC18FE7D8DB3
              DC5EFF00CFDDD10F22FF00BB8002FE033EF5D5DF5B1BDD3EE6D44AF099A268FC
              C4C6E4C823233DC6735E29FF000D2169FF0042D4FF00F8163FF88A3FE1A42D3F
              E85A9FFF0002C7FF00115CF2C2E2A72E692BBF543E6897FF00E19D7C3BFF0041
              8D53F38FFF0089AEDBC0BF0FF4DF015B5E43A7DC5C5C1BB75691E7DB9F941000
              C01C727F3AF3AFF8690B4FFA16A7FF00C0B1FF00C451FF000D2169FF0042D4FF
              00F8163FF88AD274B1B38F2CB55F215E28F72AE47C75F0FB4DF1F5BD945A85CD
              C5B9B46668DE0DB93B80C83907D07E55E77FF0D2169FF42D4FFF008163FF0088
              A3FE1A42D3FE85A9FF00F02C7FF1159C3098984B9A2B5F90F9917FFE19D7C3BF
              F418D53F38FF00F89AF59D36CBFB3B4BB4B1133CC2DA14844B26373ED0064E3B
              9C578BFF00C3485A7FD0B53FFE058FFE22A5B5FDA26D2E6EE1B71E1B994CB22A
              67ED638C9C7F76AAA50C5D45EFABFDC09C51EDB4514570146378AF461AF7866F
              B4FC0323C7BA2F671CAFEA31F8D7CCC41562AC0820E083DABEB2AF9E7E23E8BF
              D8DE31BAD89B60BBFF00488FD3E6FBC3FEFACFE95E6E614F45347DAF08632D39
              E165D755F93FD3EE392AD4F0EE8D2EBFAFDA69916479CFF3B0FE141CB1FC81AC
              BAF66F843E1DFB2E9D36BB3A625B9CC7064748C1E4FE247FE3BEF5C387A5ED6A
              28F43EA738C7AC0E12557ED6CBD5FF0096FF0023D22DADE2B4B58ADA04090C48
              1114740A0600A91D164464750CAC3041E8452D15F407E44DB6EEF73E68F17E80
              FE1BF125D5860F939F32063FC519E9F9723EA0D61D7B8FC58F0F0D47415D5A14
              CDC58FDFC75688F5FC8E0FE75E1D5E062697B2A8D743F5AC931FF5DC1C6A37EF
              2D1FAAFF003DCB3A758CBA9EA56D6300CCB712AC6BEC49C66BEA3B2B48B4FB0B
              7B38062282358D07B01815E31F08746FB678867D5245CC7651E109FF009E8F90
              3F21BBF315EA9E2ED6D7C39E11D53572406B6B7668F3DDCF083F162057A39751
              7CB7EACF91E2EC67B4C4470EB682BBF57FF02DF79F2CFC55D77FB7FE236AD708
              DBA0824FB2C5E9B63F94E3D8B6E3F8D3FE12DBD94BF11F4C9F50B982DED6D0B5
              C33CF2045CA83B793DF715FCAB8A666762CC4B331C927A93495F6DECBF75ECD7
              6B1F197D6E7D4BF16EF741D7FE1CEA5041ACE9B2DCC1B6E6144BA8D98B29E400
              0F276961F8D7CB54515387A1EC23CA9DC1BB9F51FC07D77FB53C002C247CCDA6
              CCD0E09E7637CCA7F561FF0001AF50AF98FE00EBBFD9DE389B4B91F116A50150
              3FE9A26597FF001DDE3F1AFA72BC4C6D3E4ACFCF5348BBA3C37F690FF907F87B
              FEBACFFC92BE7EAFA07F690FF907F87BFEBACFFC92BE7EAF5B01FEEF1F9FE644
              B73EBEF847FF0024B342FF00AE4FFF00A31ABB5AE2BE11FF00C92CD0BFEB93FF
              00E8C6AED6BC3AFF00C597AB345B0557BEFF00907DCFFD726FE46AC557BEFF00
              907DCFFD726FE46B35B8CF852BD43E01FF00C9491FF5E52FFECB5E5F5EA1F00F
              FE4A48FF00AF297FF65AFA5C57F065E8631DCFA8E8A28AF99360A28A2800AF0A
              F8933EADA3F8CAE160D4AF62B7B8459E3449D80008C1C007FBC0D7BAD797FC66
              D2FCDD334FD5117E686430B91FDD6191F9153F9D72E322DD26D743DFE1AAD1A7
              8F8C26AEA49AFD57E563CB7FB7F59FFA0BDFFF00E04BFF008D1FDBFACFFD05EF
              FF00F025FF00C6B3A8AF179A5DCFD37D852FE55F72347FB7F59FFA0BDFFF00E0
              4BFF008D1FDBFACFFD05EFFF00F025FF00C6B3A8A39A5DC3D852FE55F72347FB
              7F59FF00A0BDFF00FE04BFF8D1FDBFACFF00D05EFF00FF00025FFC6B3A8A39A5
              DC3D852FE55F722E9D6754624B6A57849EE676FF001A06B1AA29046A57808E84
              4EDFE354A8A5CCFB8FD8D3FE55F71EE3F09FC452EABA35CE9F773BCD7368FB95
              A462CCD1B7B9E4E0E7F315E855F3978075BFEC2F17D9CEEDB6098F9137A6D6EF
              F81C1FC2BE8DAF6B05579E9D9EE8FCCF89702B0D8D728AF767AAF5EBFE7F30A2
              8A82F6EE1B0B29EF2E5C24302191DBD0019AEB7A1F3F14E4ECB7387F899E319B
              C3F6D6B65A7CA12FE6712B11FC11A9CF3FEF118FA035D7685ABC3AEE8969A941
              F72740C573F75BA32FE0722BE70F106B53F8835CBAD4A7C8333FC8BFDC41C2AF
              E02BBBF845E2436D7F2E8370FF00BAB9CCB067B480723F103F4F7AF36962F9AB
              B4F67B1F6B9870FAA395C6515FBC86B2F3BEFF0077E8FB9ECB451457A47C48D7
              758A3691D82A282CCC7A003BD7CDFAE78B754D4F5CBCBC8351BC8619652638D2
              6650A9D14601F402BD7FE276B7FD93E109A18DB13DF1FB3A60F3B4FDF3F971F8
              8AF9FEBCBC7D57CCA08FBCE12C047D94F13515EFA2F45BFE3F91AD6BAB6BD7B7
              70DAC1AA5FB4D3388D17ED2FCB1381DEBE93D3AD0D869B6D6865794C31AA191D
              89672072493EA79AF16F84BA27F687895F5195330D826E19E8646C85FC86E3F8
              0AF73AD70107CAE6FA9E7F166220EBC70D4D25CAAEFD5FFC0FCC28A28AEF3E4C
              F2EF8EDE25FEC6F03FF6642F8B9D55FCAE0F2225C173FF00A0AFFC08D7CBB5E8
              1F193C4BFF000917C40BB8E29375A69C3EC9160F04A9F9CFFDF5919F402BCFEB
              E8F054BD9D157DDEA6527766FF0082BC3CFE29F1869BA4007CB9E606623F8635
              F99CFF00DF20FE38AFB4A3448A358E350A8A02AA818000E82BC2BF677F0DED8F
              52F12CE9CB7FA25B123B70CE7FF4119F635EEF5E6663579EAF2AD91705A05145
              15E79478CFC7DF078D434687C4F6B1E6E2C408AE401F7A12783FF0163F931F4A
              F9CABEECBCB482FECA7B3BA8C496F3C6D1488DD1958608FC8D7CE1E12F85138F
              8B773A4EA119934CD25C5C3C8CBC4E879887FC0BB8FF0065857AF81C528D2719
              FD93394753D47E0E7837FE115F07A5CDCC5B752D4B13CDB8619131F227E00E4F
              BB1F4AF45A28AF2EA547526E72EA5A560A64B1473C2F0CA81E3914ABA9E841E0
              8A7D15033E27F186812785FC5BA968EE0EDB7988889FE28CF287F1522B12BDE3
              F688F0DE1B4DF12C29D7FD12E481F5643FFA10CFD2BC1EBE9B0D57DAD252316A
              CC28A28ADC4145145001451450014514500145145001451450014514500156F4
              AFF90C597FD7C47FFA10AA956F4AFF0090C597FD7C47FF00A10A4F603EE8A28A
              2BE4CDC2BCF7E2E68BF6EF0DC7A946B996C5F2C47FCF36C03FAED3F9D7A15417
              B6915FD8DC59CEBBA29E368DC7B118359D587B4838F73AF018A784C4C2BAFB2F
              F0EBF81F32E81A3CDAF6BB69A6C390677C337F75472C7F000D7D37696B0D95A4
              36B6E8121850468A3B00302BCFFE19F83A5D0E6D42FEFA3C5C79AD6D0E47F02B
              61987D48E3D87BD7A357360A8FB38733DD9ED713664B158954A9BBC21F8B7BFF
              0097DE145145769F34326863B882486540F1C8A51D4F4604608AF99BC51A23F8
              7BC4577A6B64A46F9898FF00121E54FE5FA835F4E5719E36F05A789AFB49BA45
              1BE19D63B83D37404E4FE23B7FBC6B931941D585E3BA3E87877348E0B10E351F
              B925AFAADBFCBE658F875A2FF63783AD03AED9EEBFD264F5F9BEE8FF00BE76FE
              B5C37ED0DAEFD93C33A7E8B1BE24BE9CCB201FF3CE3EC7EACCA7FE035EC60050
              000001C003B579E78E7E13DAF8EB5B8F52BCD62EADFCA844291471A95500939E
              7B924FE95E860BD9D29C79B647898BAF3C4D59D596F2773E50AF7FF03FC13F0F
              6B7E0BD3354D59EFD6F2EE2F398452AAA8524EDC02A7F876D5AFF8672D23FE83
              F7BFF7E92BD8AC2CE2D3B4EB5B180621B689214FF754003F415E8E2F1CA514A8
              B39A31EE79A7FC33FF00837FE7AEA9FF00810BFF00C45787FC4DF09DBF833C67
              36976665366D1473406560CC548C1C9007F106AFB0EB82F1EFC2DD3FC7BA85A5
              EDCDFCF692DBC462CC48ADBD73919CFA127F3AC70D8D946A7EF65A0DC74D0F96
              741D565D0B5FD3F55873BED2E126007F1007247E2323F1AFB7EDE78AEADA2B88
              583C52A07461DD48C835E33FF0CE5A47FD07EF7FEFD257ABF87B48FEC1F0FD8E
              93F697B95B48842B2C80062A385C81E8303F0A78EAD4AB59C1EA8514D1E41FB4
              87FC83FC3DFF005D67FE495F3F57D83E3FF87B69E3F82C62BABE9AD05A33B298
              9036EDC075CFD2B87FF8672D23FE83F7BFF7E92B7C262E953A4A327A8A516D9D
              AFC23FF9259A17FD727FFD18D5DAD64785F408BC2FE1BB2D1619DE78ED54AAC8
              E002D962DCE3EB5AF5E5D59294E525D596B60AAF7DFF0020FB9FFAE4DFC8D58A
              64D189A09222701D4AE7D322A16E33E0FAF50F807FF25247FD794BFF00B2D773
              FF000CE5A47FD07EF7FEFD25745E09F84161E09F100D5EDB55B9B993C968BCB9
              235030D8E78FA57B55F1B4674A514F568CD45DCF48A28A2BC4340A28A2800AC4
              F1769275BF0A6A3608BBA5788B443D5D7E651F89007E35B74529454934FA9A51
              AB2A3523523BC5A7F71F36FF00C209E28FFA025D7E43FC68FF008413C51FF404
              BAFC87F8D779E39F8CB2F827C51368D27873ED4AA892473FDB76798AC3AEDF2C
              E30723AF6AE73FE1A4FF00EA53FF00CA8FFF006AACA3914E494A37B3F347D47F
              AE589FE48FE3FE6637FC209E28FF00A025D7E43FC68FF8413C51FF00404BAFC8
              7F8D6CFF00C349FF00D4A7FF00951FFED547FC349FFD4A7FF951FF00ED555FD8
              153B3FBD07FAE789FE48FE3FE6637FC209E28FFA025D7E43FC68FF008413C51F
              F404BAFC87F8D6CFFC349FFD4A7FF951FF00ED547FC349FF00D4A7FF00951FFE
              D547F6054ECFEF41FEB9E27F923F8FF998DFF08278A3FE80975F90FF001AC9D4
              74CBDD26E8DADFDB496F3ED0DB1C60E0F435D7FF00C349FF00D4A7FF00951FFE
              D55B5F1096DBC53E0DD1FC6360BF2346A2419C9556EC4FFB2F95FA935CB8CCA6
              787A7CEFF43D1CAB8A6A62B151A15A292969757DFA7F91E575F4978235BFEDEF
              09D95DBB6E9D17C99FD77AF049FA8C1FC6BE6DAF4BF83DADFD9B58B9D1E56C25
              DA799103FDF5EA3F15CFFDF35C782A9C952CFA9E8F13E0BEB1827522B586BF2E
              BFE7F23DA2BCABE2F7897CB8A2F0FDB3FCCF896EB1E9FC2BF9F3F80AF47D6755
              B7D1348BAD46E4E22810B11FDE3D80F72703F1AF99352D42E356D4AE2FEE9B74
              F3B9763D867B0F61D2BB31D5B961C8B77F91F37C2D977B7C47D666BDD86DEBFF
              00037FB8AB535A5D4D65770DD5BB949A1712230EC41C8A868AF1CFD19A4D599F
              4FF8775A8BC41A0DA6A516079A9F3A0FE071C30FCEB52BC57E127893EC3AAC9A
              25C3E20BC3BE1C9FBB281D3F103F302BD6F5BD523D1744BCD465C6DB788B807F
              89BB0FC4E07E35EF50ACAA53E77D373F25CD72D9E131AF0F05A37EEFA3DBFC8F
              15F8ADAD7F69F8ACD9C6D982C13CA1E9BCF2C7F90FF80D70B524F3C973712DC4
              CC5E595CBBB1EE49C935B1E0FD14EBFE28B2B12B984BEF9BFEB9AF27F3E9F8D7
              8D26EAD4BF56CFD36853A797E0D45FC305AFCB57F79ED7F0EB44FEC4F07DA875
              C5C5D7FA44BEBF37DD1F82E3F1CD75940000000C01457BF08284545743F23C4E
              22588AD2AD3DE4EE145145518192DE17F0FBB166D0B4C6627249B48C927F2A4F
              F8457C3BFF00400D2FFF0000E3FF000AD7A2AB9E5DC086D6CEDAC6DD6DECEDE1
              B78572563850228CF2781C54D451520145145001481143970A3710016C7240E9
              FCCFE74B450014514500145145004177676B7F6E6DEF2DA1B884904C73207524
              74E0F158D73E06F0A5DB869FC39A5B951807ECA83F90AE828AA52947660733FF
              000AEFC1BFF42CE97FF80CBFE147FC2BBF06FF00D0B3A5FF00E032FF008574D4
              557B59FF0033FBC564733FF0AEFC1BFF0042CE97FF0080CBFE147FC2BBF06FFD
              0B3A5FFE032FF8574D451ED67FCCFEF0B2399FF8577E0DFF00A1674BFF00C065
              FF000A3FE15DF837FE859D2FFF000197FC2BA6A28F6B3FE67F78591CCFFC2BBF
              06FF00D0B3A5FF00E032FF00851FF0AEFC1BFF0042CE97FF0080CBFE15D35147
              B59FF33FBC2C8E67FE15DF837FE859D2FF00F0197FC28FF8577E0DFF00A1674B
              FF00C065FF000AE9A8A3DACFF99FDE164733FF000AEFC1BFF42CE97FF80CBFE1
              47FC2BBF06FF00D0B3A5FF00E032FF008574D451ED67FCCFEF0B2399FF008577
              E0DFFA1674BFFC065FF0A3FE15DF837FE859D2FF00F0197FC2BA6A28F6B3FE67
              F78591CCFF00C2BBF06FFD0B3A5FFE032FF85393E1F783E391644F0D698AEA41
              5616EB9047E15D2514BDACFF00998590514515030A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2803C17F68DD1BFE40DAE22FF007ED256FF
              00C7D07FE8CAF06AFAF3E2DE8BFDB7F0D7568D5774B6C82EE3F6319C9FFC7770
              FC6BE43AF7F2EA9CD46DD8CA6B50A28A2BB890A28A2800AF77F81DABC5AE7873
              59F04DFBE54C6D35BE79C2370F8FA31561EEC6BC22B77C1BE2293C2BE2DD3B58
              4C948251E6A8FE28CF0E3F227F1C573E2A8AAD49C0BA73709A945D9A3AABDB49
              AC2FA7B3B85DB3412346E3DC1C1A934CD425D2B54B5BF80FEF6DE55917DF07A7
              E3D2BB7F8AFA4C716B36BADDA157B5D4A20DBD7905C01CFE2A54FE75E7B5F9CD
              583A551C7B1FB3E0B130C7612357A496BF9347A3FC4FF1845ACFD8F4DD3E5DD6
              8116E25607EF330CAA9FA03F99F6AF38A28A556A3A927265E07054F05423429E
              CBF11D1C6F2B6D8D19DB04E1464E00C93F90269B5EB5F08FC30AD14FAF5DC419
              5C182D830C823A3B7FECBF9D70BE34F0F3786BC4B7164A0FD99FF7B6EC7BA1E8
              3F0391F8554A84A34D547D4E6A19AD1AD8D9E0E3BC57DFDD7CB4FC7B18704F2D
              ADC45710B9496270E8C3AAB03906BD1BC79E378F5DF08E936F6EC165BAFDEDDC
              6A7EE14E36FD0B648FA0AF35A2A6156518B8AEA74623034ABD6A75A6B583BAFE
              BD75F9057B27C1DD13C9D3EEF5A957E7B86F26127FB8BF78FE278FF80D7905AD
              B4B7B770DAC0BBA699C468BEAC4E057D43A3E9B168FA3DA69D0FDCB788267D4F
              73F89C9FC6BAB014F9A7CEFA1E0716637D961561E3BCDFE0BFE0DBF12ED14515
              EC1F9C8514514005212141248007249A5AE0FE20F9DAC6B3E1CF08A4F2C36BAB
              4D2C97C616C3341126E2848E406240ABA70E795819D7DAEB1A5DF5C35BDA6A56
              77132E774714EAEC31EA01CD5A9668E089E59A448E341B99DD800A3D493D2B86
              D6FE18692D6304BE17B5B5D1B59B49925B6BC8908C608DC1F1CB02B91835535E
              B28FC6DF12A3F0E5F977D1B49B35BCB9B60C55679DDB081B1D405E6B454E12D5
              3D3A8AECEF2CB54D3F520E6C2FAD6E8270C60995F6FD706A53776C2E85A9B888
              5C11B8445C6F23D71D6BCCFC75E18D33C15A7DBF8C7C39691E9B75A54F19B88E
              DBE44B9819C2B46C071DC1CFB7D318DE3591AC3E315B788E37223D321B269C8E
              9E44B249139FFC7C55C68467AC5E9AFDFDBF115EC7B3CF3C36D0B4D3CA9144BD
              5E460A076EA6A1B9D4AC6D115E7BB8230EBB937CAABBC7B64F35E73F1BA57B9F
              0BC7A444C4798935ECF8FF009E50A6467EB234759FADC1A05CEBBE048FC4AD64
              34EFEC694B1BC90247BB6458E490334A1414A2A4DEF7FC06D9DE78535AB9D434
              F57D62EF4F5D42E24778ED2DE552628FF850E18EE6039247F4AD79359D2E291A
              39352B347525595A750411D4119AE53C3DA4FC358F5A825F0F1D09F538F7345F
              64BA47907041200627A135C8785B47F046A1A978BA5F12A694D7A3C4778A86F2
              6547F2F2A4601238C96FD69BA71936F55F215CF62B7B982EA2F36DE68E68F38D
              F1B8619FA8A82F756D374D655BED42D2D59FEE89E654CFD326BCCBC273691A17
              8DBC5ADE1B78DBC3B6BA7A5C4EB1485A14B850490872472A0E79EBF4ABBE08F0
              5697E20F0DC3E22F145843A9EAFABAFDA6596E46F088DF71507450171D2A6546
              31BB93D34F5D4773D20CF0ADBFDA1A58C43B77F98586DDBEB9E98A72BA3C6245
              65642370607208F5CD79AEA5E19B8F0A7C30F18E9FF6CF3B4C30CF2E9F1124B5
              BC4CBFEAF27B039C555D4965D7ADBC09E0E32CD1585FE9EB737ED136D678A389
              7099F42C79FC285453D53D3F4B5C2E7A45A6B3A5EA1334365A959DCCAA325219
              D5D87E00D5EAF38F17FC3BD12C7C3173A9F876C62D2B57D3233776B736AA55F2
              83254E3EF6E008E7D6BB5F0F6A9FDB7E1CD3354C2A9BBB58E62ABD14B28247E0
              722A2708F2F345E804D2EAFA6412B4536A3691C8A70C8F32820FB826ACC52C73
              C4B2C322491B0CABA36411EC45799787BC1FE1EF11789BC6171ABE956F79347A
              B1447941242F96871F99353F86ECA3F05FC50B9F0C69ED22E8DA8D87DBE0B62E
              5960943ED60B9E40239EBE9572A51D527AA570B9DD1D6F490483AA59023B7DA1
              3FC6AD5BDCC177179B6D3C73479C6E8DC30CFD4578C782B4DF8653F84ED25D7A
              4D006A8CF379E2EAED124CF9AF8DC0B023E5C7E15EABE1BB3D0ACB468D7C38B6
              834D9199D1AD1C3C6CD9C3104120F231F852AB4E30BA57FB813B9A2F756F1DC2
              5BBDC44B3B8CA465C0661EC3A9E94F9668E089A59A448E35196776000FA935E3
              3F13CCB69F1374DD6E22D9D1B4D8EF9D57AB20BA5471FF007CC8D5D27C62B86B
              8F04BE976F27CD7CB2CAC57FE7941134EC73E84A20FF008153542FC9AFC5F805
              CF43491258D648DD5D180656539041E841A892F2D65B63731DCC2F6EA0932AC8
              0A803AF3D2B80BBD61F44F80B6173067ED5268D6B6F6E17A99248D1171EE3767
              F0AABE01D1A1D0351F10FC3FBE5F3ECDA08AF21590E44B1C881251F4DE31F8D2
              F63EEB95F6FE9FE6173D07FB7348FF00A0AD8FFE0427F8D48DAAE9CB024CD7F6
              A227242B99976B11D4039E6BCAF5AF01F85ADFE28F85F4D8B44B54B3BAB7BB69
              E100ED72AA0A93CF6A7FC42D0FC39A45F78274D96D6CED344FED094CD1C8DB22
              00A824924F033EF56A8C1B8A4DEBAEDEBE7E42BB3D39359D2E49151352B36762
              02AACEA4927B0E69F3EABA75B4CD0CF7F6B14ABD52499548EFD09AE274CD17E1
              4B6A96BFD987C3B25FACAAD6EB05DA33EF0723680D92722B0574CF09EA3F16BC
              6FFF00094269CDE5FD83ECFF006C9427583E6DB9233D173F85254A2DBDF457DB
              CD21DCF59B6BCB5BC566B5B9867553826270C01FC29D14F0CFBFC99524F2DCA3
              EC6076B0EA0E3A1F6AF2CD06DB40D37E2FDB5B7839A0FB1C9A6487528ECE4DF0
              A90C3CB270480D9FD3EBCECFC3160ABE34662028F145F1249E00F92A67454536
              9F60B9DD2DC42F3BC09346D2C60178C302CB9E991DA95E68A396389E545924CE
              C52C016C0C9C0EFC578D7856EA683C53A778DA566FB2F89F50BAB27DC3EEA702
              D87E7091FF0002AECFC51FF252BC07FF005D6FBFF49CD3950E5972DFA3FC2FFE
              4173AABDD574ED3367DBEFED6D37E7679F32C7BBE993CD588A68E78925864492
              371B95D1810C3D411D6BC8B77841BE24F8921F1CA5BFDBE49A3FB01D487EE4DB
              6C1B7613F28E739F7F7CD76DE0BF0D2F86CEA6B637D1CFA1DDCCB71A7C084B08
              011F380D920A938231FD694E94631BDF5FC1FA02674973776D6681EEAE218149
              C0695C2827D39AAE9ACE97248A89A959B3B101556752493D8735C57C548F4C9A
              5F0AC7AC9B71A736AC05C1B870B1EDF2DFEF1380053B4CD17E14B6A96BFD987C
              3B25FACAAD6EB05DA33EF0723680D92722854A3C8A4EFF00705CEF5278649A48
              52546962C7988181299E46476CD25C5CC16B179B713470C79C6F91C28CFD4D70
              FE14FF0092B5F10BFEE1BFFA21A97E2DADB3F84ECD2F7CBFB236AB6826F30E17
              6799F364F618CD2F65FBC50BEF6FC55C2FA1A9A7788A5B8F10EA66EEFB4D8349
              8B64566BE7219666C02F2121B85CF006327935B936ADA75B4AD14FA85AC522FD
              E4799548FA826B828744F83F24D1C70B7865E56601152F6324B13C0037F2697E
              29F847C3F278475FD75F4AB76D505BEFFB51077E46003F9002AF92129A8EAAFE
              5FF042ECEF23D5B4D98B08B50B472AA5885994E00EA7AF4A67F6E691FF00415B
              1FFC084FF1AE224F06F87748F879A86A761A45BDBDEB68736E9901DC774073F9
              D62784340F8673F82B489F548F43FB6B59A35C19AE555F76DE770DDC1A152834
              DDDF6DBFE085D9EB925CC115BFDA249A348700F98CE02E0F439E94F791238CC8
              EEAA8A32589C003D735E12ECC7F679F1324524B26991EA0E9A63C99CB5A89E3D
              879F7DD5D8F8A211E29F1C687E0FB99641A5AD8B6A57D0A395FB400C1234623F
              8770248FFEB1A1E1ECF57D5FE16FF30B9DDD96AFA6EA4EE963A85A5D320CB082
              6572BF5C1E2A7B9B9B7B381A7BA9E28214E5A495C2AAFD49E2B8BD43E1BE9F6F
              A8E93A9F85E0B6D1EFACAE95E47894AACD07F1C6C17AE462B39F4AB7F1EFC49D
              620D691E7D234010C56F66CC4472CD22EE67603AE380054AA707AA7A2DFB85CF
              41B3D42CB5188CB63796F7518382D04AAE01FA83497BA95869A8AF7F7B6D6AAC
              70A6795501FA64D79DF88B40B0F02788342F12787EDD2C2196F63D3F50B7806D
              8A5864380C40E015383F9550D524F0C0F8AFABC5E3B4836BC300D21AF87FA3F9
              5B7E7C13F283BF3CB7A55468C65AA6ED6F9FF5FA05CF58B7B882EE049EDA68E6
              85C65648D832B0F623AD2CB3C301412CA919918226F603731E807A9F6AE57C1D
              E1AB6D0750D56E746BD85F40BF31CB6D6B0BEF486400872A72461B8E9E9ED543
              E25FFC7DF82BFEC63B5FE4D59AA69CF953D02FA1DCCF3C36D1196E258E28D7AB
              C8C140FC4D54FEDCD23FE82B63FF008109FE34FD534AB0D6F4F92C352B58EE6D
              24C178A4E8D8208FD40AF2CD3BC07E1697E2C6B7A649A25AB5941A7C12C70907
              6AB1272473DE9D384249B937A033D524D574E8563696FED51645DC85A650187A
              8E79152DB5E5ADE2B35ADCC33AA9C13138600FE15E71A9F85342BEF8A1A4E8D7
              5A6412E9D6FA14861B76076A1132818FC09FCEA1D7BC3FA77C3DF12F8775DF0F
              C3F6182F2FD34DBFB68D8F9732480ED6DBEAA4678F6AA54A0EC93D585CF4F9EE
              21B688CB3CB1C518EAF230503F1352579EFC46B2FF0084A754D13C1AAE563BC3
              35DDD30FE08E342109F62EEBFF007CD6DFC3ED664D6FC13A75C5CF1790A1B5BA
              53D44B19D8D9F738CFE350E9DA9A9FF5FD68C2FA9D3D1451590C28A28A0028A2
              8A006C91A4D1BC7222BC6E0AB2B0C8607A823D2B9C6F09F81D58AB787FC3C083
              820D9C3C7E95D2D7CA7F1B7C3BFD87F1067BA8936DB6A6A2E931D379E1C7D770
              DDFF000215D584A5ED67C9CD6264EC7D0DFF0008AF81BFE801E1DFFC0383FC28
              FF008457C0DFF400F0EFFE01C1FE15F19515E87F67CBFE7E3FEBE64F3F91F66F
              FC22BE06FF00A007877FF00E0FF0A3FE115F037FD003C3BFF80707F857C65451
              FD9F2FF9F8FF00AF9873F91F66FF00C22BE06FFA007877FF0000E0FF000A3FE1
              15F037FD003C3BFF0080707F857C65451FD9F2FF009F8FFAF9873F91F63F8C74
              1B5D67C113D969F1C205AA092D638000AA5070AA0703E5C8C7BD7CF15D27ECFF
              00E2BFB06BD73E1CB893106A03CD832785994723FE04A3FF001D1478EF43FEC1
              F16DE5BA26DB794F9F07A6C6E703E8723F0AF99CE308E8D44CFBCE0FC75D4F0B
              2F55F93FD3F139BAD0D13499F5CD66D74DB61FBC9DC2E71F757A963F419359F5
              ECDF08FC37F65B0975DB98F135CE63B7CF68C1E4FE247E43DEBCBC3D2F6B5144
              FA6CDB1EB0385956EBB2F57FD5CF44D3EC60D334FB7B1B54D904081107B0FEB5
              C8FC4FF0E0D6BC36D790A66F2C332AE3AB27F1AFE5CFE1EF5DBD046460D7BB3A
              6A70707B1F95E1717530F888E222FDE4EFEBDFEF3E4CA2BA7F1E7870F873C4D3
              C31A6DB49FF7D6E7B053D57F0391F4C7AD7315F3D38B849C5F43F61C3D786229
              46B53DA4AE7A07C25D0FFB43C4AFA8CAB986C1370CF4323642FE4371FC057B9D
              729F0EB44FEC4F07DAABAE2E2EBFD225CF5CB741F82E3F1CD7575EE6169FB3A4
              97567E5B9F637EB78E9C93F763A2F97F9BB8514515D078C1451450015E7DE3E9
              D740F16784FC553656C6DA696CEF64C1211265C2B1F4018649F7AF41A8AE6D6D
              EF6DA4B6BA8239E0906D78A550CAC3D083C1ABA73E595D899CB78BFC7367A0F8
              7D6EB4D9ED6FF51BA648EC2D63903FDA1D980180A724739C8AC5B8BD5F0AFC57
              4D475731DBD96BBA7C701B966C4715CC7FC058F0011D3279AE9349F00785342D
              47EDFA6E876B05D0CED97058A67FBB9276FE18AD8D4F4AD3F5AB17B2D4ECE1BB
              B67E4C7320619F5F63EF5AA9D38E8968F7FEBC82CCE1BE28EA969AB6851F846C
              278EE755D6668A28E285C318D03ABB48D8E8A029EBFD0D41AB68C9AE78F3C51A
              3919FB4F87228909ECDBDF69FC0E0FE15D8685E0DF0EF865DE4D1F48B6B595F8
              69554B3E3D371C9C71D338AD45B0B44D424BF5B78C5E491889E60BF3B20390A4
              FA024D0AB462B961FD3D3FC82C78A9D525F157823C51AECEAD9B2D0A1D3013DE
              6DA249FF00F1E283FE035AFA9DBE8B75E22F01C7AFAD93587F634A48BC2A23DD
              B22C7DEE335E949A0E931E9F75609A75B2D9DD3B3CF088C04959BEF161DC9A87
              51F0AE81ABC76D1EA3A459DD25B26C816688308D78E067A0E07E557F588DF456
              5AFE56158C9D16C7C0163AA452E8ABA0457E72919B578BCC39EA060E6B92F077
              837C3DE263E347D634AB7BA98F892F611332E2455CA90158723924FE35DDD9F8
              23C2DA75E457967A069F05CC4DBA3963814329F506B5ACF4EB2D3BED1F63B58A
              0FB4CCD713796A0799237DE73EA4E07351EDAC9F2B7763B1E73E07B75B5B0F10
              7C37BF8E18EEAD23758A448C462EADA55C2C876F5619018FB8EA735A3F0CFC49
              60DE0CB6D2EF6EE1B6D4B474369796F3B8468FCB3B7241C7CB8039FAD764FA56
              9F26AB16A8F670B5FC519892E4A0DEA873F2E7AE393C7BD646B5E02F0B7886F4
              5E6A9A2DB5C5CE3065C1466FA95233F8D375613BF375D7E7FF00042C729ABF8A
              65F157813C773C30C5FD916D0C96F637299CDC6D4F9DB3D08DDD08AAD7732F87
              AE7E1FF8A6E32BA6A69CB617B363884491A98D8FA0DDD4FF008D7A50D234E5D2
              4E92B636EBA718CC5F6558C08F61EA36F4C548FA7594BA77F67C9690BD979623
              FB3BA029B0701769E31C0A1568AD12D3F4B5BEF0B1CA78FF00C59A6E9DE0BBE1
              05E4371797F6ED6F650C1207799E41B54A807903766B77C2DA49D0BC29A5696D
              8DF6B6B1C4FB7A170A371FCF354F48F01785741BF37DA66876905D7389429664
              FF007724EDEBDB15D1D67394797960079E784759D2F4DF1178CA3BFD4ACED646
              D60B2ACF3AA123CB4E4027A547A45E5B78AFE30DC6B1A5CCB71A6E93A67D8DAE
              62394926772C42B74202FA7F5AEA2F3C11E16D46F25BCBCD034F9EE656DD24B2
              40A598FA935ABA7E9B63A4D9ADA69D6705A5B2F22282308A0FAE077AB95586AD
              5EED582C794F8134BF87F71E0EB3975987406D419E6F38DD34424FF5CF8DD939
              E98FC2BD3B425D1A2D2D20D04D9FD82166545B36531A127711F2F00E5B3F8D66
              37C3DF073B166F0D696598E4936CBC9FCAB5F4AD1F4DD0ED4DAE9763059DBB39
              731C08154B1001381DF81F9515AA467769B04AC719ACE9D16AFF0015E7D367FF
              005577E159E16E3A069D467F5AE434FBE9FC43E15D6E5BA53BFC3DE16B8D3640
              DD7ED2CAE243F5DB0A7FDF55ED1F60B43A88D47ECF1FDB4426013EDF9FCB2776
              DCFA64038A81344D2E282FA18F4FB658B50676BB41180272E30C5FD723AD38D7
              495ADDBFE08AC7935EC17BE25D33E1BF8534DBD1673269B06AB35C1884BE508E
              2511928480C0B923078E9D6AEEA3A5F887C23E32F0EF8975BF128D66192E3FB3
              266FB025B7951CA0ED24A1E40700F3D3F1AF4CB4D174CB1B94B9B5B0B78674B7
              5B559123019615FBA80FF746071536A1A7596AB66D697F6B15CDBB104C72A865
              241C838F62053FAC6B64B4D7B5F50B1C5F883FE4B1F83BFEBD6F7FF401543E29
              C5A7CDE22F0547AA8B76B16BF904C2E0811EDD83EF678C57A1CBA7594FA85BDF
              CB6B13DDDBAB2C333282D186E1803DB355F56D0348D7A38A3D5B4EB6BD488931
              ACF1870A4F5C66A61552945F656FCFFCC7639CD3F4EF86F67A84171A7A78722B
              C471E4BC32441C37418C1CE6B0B4EF0D68BE22F8AFE3D5D634CB6BD110D3C47E
              7264A6E80E707B6703F2AEBA2F007846099268BC39A62491B06465B750548E41
              15B5069D656D7D757B05AC51DD5DECFB44CAA034BB061771EF81C0A3DB257E56
              EED5BF14C2C79DF81EDE0F02F8CF51F05BC5125BDD8FB769771B4079539DD13B
              75665E719C9C03ED5851EAD2693E01F88AD6F937777E26BCB3B755EAD24A5106
              3DC024FE15EBD75A569F7D796B7975670CD7368C5ADE57405A227AED3DB38150
              7FC23BA37FD032D7FE3F3EDFFEA87FC7C7FCF5FF007FDFAD52AF1BF3496AED7F
              97F98AC797EB1F0E7C5F65E063669E335B9B7D32159EDEC574A8D3E7886E50B2
              03BB391D7BF7EB5B93EAF16BFE28F867AB438D976B772E07F0936C723F0391F8
              57A3F5ACDB6F0FE9164B64B6DA6DB422C4B9B509181E497CEFDBE99C9CFD697D
              63997BDBEBD96EAC3B1CA5AEB5A078BF51D5FC3FE29B1D356FF4EBC78E2B6BA0
              0978B194913773C8E4E3A7E354BE1B5BD95878ABC55A7F87EE3CEF0E42D01802
              CA648E39CA9322A31CE474CF27B575BAF7837C3BE279239359D26DEEE58C6164
              6055C0F4DCA41C7B74AD0D2F48D3F44B15B2D32CE1B4B653911C281467B93EA7
              DE93AB1E4718DF5E9D02C717F13E2D3E6BAF09C7AA8B76B16D5C0985C1023DBE
              53FDECF18ABBA7E9DF0DECF5082E34F4F0E45788E3C9786488386E831839CD74
              BAB687A5EBB0241AAE9F6F7B1236F449E30E15B18C8CF7C1359717803C2304C9
              345E1CD31248D83232DBA82A47208A1548F228B6D7A058E6B42D574ED33E2D78
              FBEDF7F6B69E67F676CFB44CB1EEC40738C9E7191F9D49F12EFF0049D57C2566
              D1DE59DDD97F6BDA24EC92ABC617CC1B831070063AE7B5751A87833C33AB5F49
              7BA86856175752E37CD2C0ACCD8000C93EC00FC2953C1DE1B8F4C934C4D0EC16
              C65904AF6E211B19C70188F5A7ED61CCA7ADD5BF0560B33022D2BE17C1324D14
              5E18492360C8CB2420A91C8239AB9F13C86F863AF904106D090477E4558FF857
              7E0DFF00A1674BFF00C065FF000ADEBAB0B4BEB192C6EADE39AD645D8F0BAE55
              97D08F4A97523CD195DBB770B1CEEABFF249EF7FEC0727FE8835C569BF0CF43F
              117C28D2A6B5D3AD20D69AC639E1BA118CB4C1411BFB3293C1041EB5EB0F676D
              258B593C08D6AD1989A12BF294231B71E98E296D2D2DEC6D22B4B48521B78542
              471A0C2AA8E800F4A235DC17BBBDEE163C97C47E218BC47FB3E6A730823B6BAB
              658AD6EED51428825499032851D07703D0D6C6BF3C5E1AF89FE1FF0011DF308F
              4EBDD39B4A96E1CE1207DDE62163DB3C8CFB1F4AECDFC35A24B15FC4FA55A347
              A83892ED0C4313B0390587739E6ADDFE9B63AA58BD95FDA43736AE30D14A8194
              FE06ABDB4568969AFE29058E6FC53E348F4B7D36C3467B5BFD6351B98E382DB7
              EEFDD93F3C8769E14283CFF3C1AC9D3B50B7F0B7C54D7AC753956DADF5D586EE
              C26970A8EEABB244DDD3767071FE233D2685E07F0CF86AE5EE748D1EDEDAE186
              D328CB381E80B1240F5C75ABFACE83A57886CFEC9ABD841790750B2AE4A9F507
              A83EE2929D35EEA5A3DFB86A715E3DD4AD35FD5F40F09584C977753EA315CDDA
              42C18456F11DCC5FD33C6077FE7746BFA2F883C45ACF853C5167A7096CE6536B
              15D6089E265043AEEFE2F5C5745A1785B42F0CC4E9A36976F67E67DF68D7E66F
              AB1C923EA69BAF784F41F13AC6359D2EDEF0C7C23B821947A061838F6CD1ED21
              A475B2EBD6FDC2CCE2FC0F67A6E91F12B5DD37C313EFD096CE396E22490C9141
              765C8DAA727AA8248FC3B605DF8A33456F2F83A69E448A28FC456CCEEEC15540
              0F9249E82BB0D1B42D2FC3D622CB48B186CEDF3B8A44B8DC7D49EA4FB9A5D574
              4D2F5DB64B7D56C2DEF6147DEA93A0701B046707BE09FCE87593AAA6FF00E085
              B41B6DE20D16F6E12DED757B09E77FBB1C5728CCDC67800E4F15C9E93FF25B7C
              43FF0060BB6FE66BA0B0F05F8674ABE8EF6C342B0B6BA8B25258A05565C820E0
              FD0915A69A75945A8CBA825AC4B793208E49C28DECA3A027D05473423751EA80
              E3355BFB3D3BE32584D7D7705AC47429543CF204527CE4E324F5E0D50F196ADA
              778B7C45E17F0DE917905ECC9A947A85D35B481D618A2049DC464027381F87A8
              AEDB56F0C685AECD1CDAB693677B246BB51E7883951D70334FD27C3BA368224F
              EC9D2ACEC8C9F7CC10AA16F4C9039AB5560ACF5BA4163CF63D335FF16F8FBC41
              ADE87E241A3C560E3488DFEC2972640803C83E7236E1DBB75FC2A5F012DE784F
              C73E22F0C6AFA8ADDB5D20D622BA30880485B895B68385E71D3FBA4D7A358E9D
              65A642F158DAC56F1BC8D2B2C6A1433B7258FB9A64FA469D757F1DFCF6504977
              1C6D124CC80B046EAB9F4393C5375EE9C5AD2DE57D02C4F69776D7F6B1DD59DC
              45716F20CA4B0B87461EA08E0D4D55ECAC6D74DB28ACECADE3B7B6886238A35D
              AAA3D8558AE776BE830A28A2900514514005796FC77F0EFF006BF8186A71266E
              34B97CDC81CF94D8571FFA0B7FC06BD4AA0BEB38351B0B8B2B94DF05C44D148B
              EAAC3047E46B4A351D39A9AE826AE8F84E8AF6B6FD9CB55DC76EBF65B73C6616
              CE293FE19CB57FFA0F58FF00DFA7AF7FEBB43F98CB959E2B457B57FC3396AFFF
              0041EB1FFBF4F47FC3396AFF00F41EB1FF00BF4F47D7687F3072B3C568AF6AFF
              008672D5FF00E83D63FF007E9E8FF8672D5FFE83D63FF7E9E8FAED0FE60E5678
              ED85F5C699A8DB5FDAB94B8B695658DBD194E47F2AFA43C706DFC65F0F74AF17
              58A8CA20328072555B8653EBB5C63F3AE47FE19CB57FFA0F58FF00DFA7AF48F0
              07C3FD43C2DE1BD4B40D56FEDEFAC2EC931AC6854C7B970E39EC7823D0E7D6BC
              DCD1D0C4D1B465A9DF96E2A583C542BAE8F5F4EBF81E47E19D0E5F116BF6BA6C
              590B2366571FC083EF1FCBF5C57D316D6F15A5AC56D02048624088A3A0503005
              717F0E7C1D2786ADEF2E2F547DB6695A207D2253818FF788CFD36D7735E160E8
              FB385DEECF678933358CC4F253778436F37D5FE8145145761F3A71FF0011FC37
              FF000907865DE14CDE59E668B039618F997F11FA815E33E0ED10EBFE29B2B165
              CC3BFCC9BFEB9AF27F3E9F8D7D2D5CB7873C1B6DE1ED7F57D461DBB2ED808107
              FCB243CB0FFBEBF402B8ABE1BDA558CBEF3E9B2ACF1E130556837ADBDDF57A3F
              BB7FBCEA4000607028A28AED3E6428A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2B8CF89379AAE8BE1
              5BCD734BD5EE2D65B658C080450BC6DBA40A49DC85B386EC71C0E3AD5463CCD2
              2652E5573B3A2BCFFC1B71ABEBFE09B0D6B51F165F5B4F72CC876456AB1EEF35
              A35037424E490A319E49AD3D3F55BFF0DE87AE5D78AF507B98EC2ED84372D02C
              5E6C4638CA050A00277315FAE476AA74DA6D5F512A89A4EC75B45707E12D5F5E
              F1CD8CFABBDE3E8FA734C52D22B58E3795D578259A4561D78E1474FCE2D57C67
              7DE0AF14D9E9BAFCC977A4DF2FEE6FB6049626070DE6018523907200EBD28F64
              EFCBD45ED15B9BA1E8345719E3D7F12430D8C9E19D56586EEE6530ADB98A178D
              F6C32CBC1642771F2C0FBD8F6EF55FE1EF8D1BC5FA24D617933DB6B96A863B82
              1155CF6122A91B739EA3180474C1028F66F97987ED173729DDD15CA68D69AC4F
              A9EB315CF89AFE58ACEE7ECD12F916CBC3411B862445C9064E3B7CA3208C8AE3
              06BFE25FF85C5FF0881F11DD9D3FFE7A8B7B6F37FE3DFCDEBE563AF1D3A538D2
              72BD9ECAE27512B5D6FA1EBD4571BA9DAF886D2EECA6D2FC4D777D143A8410DF
              DAC96F6EEC23664DDCA460AE15831FF64E722BB2A871B75293B8514560F89BC4
              91E829696F0C62E353BF9441676D9237B1C659880708B9049A4936EC86DA4AEC
              DEA2B1359D7ADFC29E1FFB76B17066753B008D0069A439C222FF009E0649EA6A
              2D2A3F11EA0915E6A973169AAC5641616B1ABB28EA5249181CE7A1DAAB8E707B
              D3E576B8B9B5B1D0515E71E32D4BE20436977ABE8CB6765A5D91673148A1AE26
              44277390C0A8520120021B1EFC56CF827C4D75E34F06ADF8DB697CAED0BB04DC
              9BD707201EAA411919EE4678CD53A4D4798955139729D751585E1AF1247AF457
              504B18B7D4EC25305E5B673B1C71B973C9438241ADB762B1B32A172012146327
              DB9A869A7665A69ABA1D45798F8FB5DF18F8523B0D621D42D24B69AE440DA6A5
              A83CB29201724B37DD3C8DBCF6AECF50D43587D0ED5F4AD3D46A7768B84B9388
              ED895DC4C84761D3033938ED9356E9B493BEE4A9A6DAEC6DD15E49A678CFC5FA
              07C41B6F0DF8ACDB5DA5F32F952DBA01B439C295C004AEE041DC33D4E78E773C
              77E39B9D03C41A2E8363E5C32EA12279D772A6E10C6CFB32A3A13D4F3D31D39A
              A7465CC97727DAC6CD9DFD15C46A7AF6A3E16F15F87F4B9EF25D4ED3567788B4
              D12096270570C0C6AA0AFCDCE4700139AC2F145D7C51B9F12DEFFC231195D262
              611C476DB8DC428DC7F79C9F9B70F4E2946937D521BAA97467AA515E7BF0DAFB
              C637D7DAC278A6EF7FD8DD2058424236C846E6E631CE015EFDEBD0AA271E5762
              A12E6570A2BCCBE2778FF5DF089B682C6C2DE25BADFE5DD4CFE631DB8CE10703
              EF290493D7A57A5C8CCB1B32A1760090A08058FA734E50714A4FA829A6DA5D07
              515E696FE3DD72E3E2DDBF8567B2B6B3B542FE6AAB798EFF00B96914EEE001F7
              4E00FC4D7A15FCD7505A3BD95A0BAB8C1D911944609C77639C0EDD0F5A254DC6
              C9F51466A57B742CD15E77F0C7C73A9F8DAEB5B92FA382186DBC9F222854FCA1
              BCCCE49E49F947E5D055FF00164BE3ABAFB4A78592D2D21B61CC970019AE1B00
              E230415C7F0E5B1939EDCD3749A9723D04AA271E6476B4570BF0C3C6F75E32D1
              EE8DFC4897966EAAEF1A90922B0241F63C1C8FA7AD7755338384B959519292BA
              0A28A2A4A0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00AE2BE2DFFC930D63FED8FF00E8E8EBB5AE4FC7BA2EB5E25F0FDCE89A6C560B
              0DCAC65AE2E6E5D594AB86C0458C823E51CEEEE78E2AE96934D915358348E0FC
              316DAE3FC38F08CD15EDAFF6526AF019ADC4044BB7ED98197DC430DE41C055ED
              C9C73D1FC6B8AE64F87CCD036238EEA269C7AA7207FE3C52B67C05A2EB5E1AF0
              FDB689A94560D0DB2C856E2DAE5D998B396C1468C003E63CEEEC38E6BA6BCB4B
              7BFB39AD2EA2596DE64292230C8607A8AD6556D539BB3338D3BD3B791C77C232
              A7E196938C6419B3F5F39FFF00AD5C57ED00577F87871B80B8CFD3F778FEB5DD
              787FC2DAA78320BAB3D1A7B7BFD3A597CD86DAF65689A027A8122ABE4719FBA3
              F5A53E0A9358F15C1E21F114D14CF6A8AB69610EE30C2C392C58E379CF7DABD0
              71C538CE31AAEA5F4D45284A54D43A9388AE60B6F04457ADBAED275599BD5C59
              4E1BF5CD71FF00117C3B7BE1BD6E2F1E78755C4D13837F0AFDD65E8588F42386
              FC0FA9AEDB5CB5F115D6AFA7CDA7DA696D6D63726753717922BCB989E3208111
              0BFEB0F73D07D2B7D55A7B454BB8A30EF1E258D5B7A648E40240C8EBC9033E82
              A14DC5A916E0A49A396F00EB96FE24B6D6757B55658AE6FD4ED61CA916B02B0F
              C0822BCEEF12E9FF0069375B29A186E4E36493446441FE87CE543293C67B8FC7
              A57A77863C2EBE11D3B54B5D3B64B1CF7725D5B4523140BB910046600E0654F3
              83C63826B92FF8423C55FF000B3BFE133D9A3673FF001E9F6C97A793E57DFF00
              27D39E95A425152935B5AC8CE71938C53DEE745E058B51B44F11AEB3711CB78B
              ABBB492A0DAA54C309520761B4AF1DBDEAEEAFE14FED5F14E93ADFF69DD41FD9
              F9FF00478CFC92739E7D3D0FA8A83528BC63A9082DE38747B1B66993ED4EB792
              4D2344186E55CC4A012323F1EDD6A7D5F48D76F3C53A4DFD86B3F65D36DB3F6A
              B4C1FDF73F91C8E39E9D456777CD7BD8D2DA5AD73A2AF21D42F9AFFF0068ED32
              D1CB79765098D549E3260793207FC087E55EBD5E65E2AD31F48F8B5E1DF14907
              EC331FB1CEE06447232B2293EC77819EDB68A2D5DAF261593B2F54677C4FBB92
              E3E24F83B497F305A8B88656C12158BCC17F3017F0DDEF56352D7B50F087C5DD
              3F488EFAEEE749D54465ADEE6533794D2318C1466390032838CF73C74AEAFC67
              E0C4F141D3EF2DEE45AEA7A74C25B6999772F041DAC32323207D2A28BC233EA5
              E34B5F14EB5F674B9B4B710416B6D23488A4163BCBB2A927E7381B78F535A46A
              439527D990E12E66D7745DF1B4D2BF872E349B48CCB7FAAA359DBC607F786199
              8F65552493F4EE4558F0A6836DE17F0F5AE8D04A24781374ADD0BB3124B63B02
              738FA7B5703E24F04FC43D6FC493EA96BAFD9D8211E5411DBDE4D1EC8B39C12A
              83249E4FBFD0575DE03F0F6B3E1FD26E63D7F52FED0BF9A7DFE779CF2E10280A
              BB9C03D771FC6A2492A76522A2DB9DDA38CD3EFDAC3F68ED4ECD0B7977D088D9
              41E322049327FEF93F9D7AF5799785B4B6D5FE2D788BC52A0FD8613F6381CAF1
              248AAA8C47B0D847BEEAEF35DB0BAD5343BBB2B2BF96C2E664DB1DCC5F7A339E
              DFCB8E79E39A2B59CA2BC9052BA4DF9B3CFF00E2C596BBA6C30F8AB4BD6A744B
              091736ACAA522DD84DCA31CF27F8B3F7B823A576BE0ED6E6F11784B4ED5AE21F
              266B88F322E30370254903D0E323D88AE666F0A78C7C41A3BE85E25D634C3A73
              326F9ACE2737132AB6E0096C2A9C81D01ADAF13689AC4BE134D0FC2B25A58FC8
              20324D232F971018C2ED53C91C67FAD3938B8A836AFDFC8514D49CADA76F3326
              DB478FC43F10DFC5F3909A6E9907D96CD9FE5F3994B6E97FDC059803DF19E839
              AFF1374CD23C4577A4E812231D76ECB7D8E453810A0E5D9FD570A78EE4751D6B
              0F47F86FE3DB6D46C05FF8A164D321963335B2DFCEC1A25232814A8046063078
              AEF35CF0AB5F789F4AF1258CB1C7A8E9E1A3D928F9268D830DA48E548DC7079E
              A78AA6D4669A96C249CA2D35B9E65E17BABFF0B7C51B5D17C578BE9BCB5B7B0B
              B95CB7921B214A67FBDF74F7ED5ED77F790E9DA7DCDECEC161B789A5724F40A3
              27F95724DE0A9B59F1B59F8A35C36F1CB6512A41676CE6540559886676552482
              D9185182056EF8974AB8D6F48FECE8648D229A68C5C9727984302EA3039240C7
              6EA6A2ACA3392FC4AA719462FF00033FC2A8342F040D47543E54B2A4BA95F36D
              3F2B3E647E064F00E3B9E28D23E2278575DD521D374DD57CFBB9B77971FD9E55
              CE14B1E5940E80F7AEA0000000600E805159B92776D6A5A4D5923C57F681FF00
              9977FEDE7FF6957B55798FC46F03F893C737366211A4DAC164D288D9EEA46690
              395C12045853851C64F5EA6BD02D24D59B4F91AF2D2C92F541F2E386E9DE3738
              E32C63057273FC2D81EBD2B49B4E9C52E972209AA927DEC791FF00CDCEFF009F
              F9F2AF6AAF2DFF008423C57FF0B37FE133D9A2EECFFC7A7DB25E9E57958DFE57
              5C73D2BD12EE5D5574F8DACED2CA4BD207991CD74C91A1C73861192D838FE15C
              8E78E94566A5CB67D120A49AE6BF73C8FF0067EFF998BFEDDBFF006AD7ACEB9A
              A0D23499AE56379673F25BC2832D2CA785503DCFE4327A0AE0BE1CF81FC4BE07
              B9BC130D26EADEF4C42464BA915A3085B900C5863863C64741C8A778DBC23E39
              F11EBF1DD699AC59E9F676C0ADB2C7752C6E09186662A9D4F4EBC0FA9CDD4E59
              D66EFA114F9A1492B6A741F0FBC269E0DF0EC7A7CB2A3DFCE4CF7054F05B8181
              ECA3033F8F7AEB2B87F00785BC47A04D7D3F89358FED296554480FDA249BCB51
              92DCB818C9DBD3D2BB8AC6AEB36EF736A7F0AD2C145145665851451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140054179676FA859CB69770A4D6F2A959237190C2
              8A28016D6DC5ADB2402492454180D236E6C76C9EFE9CF353514500150DD5B8BA
              B6780C9246AE305A26DAD8EF83DBD38E68A28012CECEDF4FB38AD2D21486DE25
              0B1C68301454F451400514514005145140051451400514514005145140051451
              4005145140051451400514514005145140051451400514514005145140051451
              4005145140051451400514514005145140051451400514514005145140051451
              401FFFD9}
            Stretch = True
          end
          object dbrl_obs_razaosoc: TRLDBText
            Left = 1
            Top = 38
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OBS_RAZAOSOC'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBMemo1: TRLDBMemo
            Left = 232
            Top = 120
            Width = 130
            Height = 40
            Alignment = taCenter
            AutoSize = False
            DataField = 'notas_fiscais'
            DataSource = src_etiqueta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
    object tsConfiguracao_termica: TTabSheet
      Caption = 'Configura'#231#227'o Impressora Termica'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 284
        Width = 915
        Height = 41
        Align = alBottom
        TabOrder = 0
        object bbincluir: TBitBtn
          Left = 4
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbincluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbalterar: TBitBtn
          Left = 67
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbalterarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbexcluir: TBitBtn
          Left = 130
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbexcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
            993337777F777F3377F3393999707333993337F77737333337FF993399933333
            399377F3777FF333377F993339903333399377F33737FF33377F993333707333
            399377F333377FF3377F993333101933399377F333777FFF377F993333000993
            399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
            99333773FF777F777733339993707339933333773FF7FFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbgravar_confg: TBitBtn
          Left = 193
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Grava o registro atual'
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
          TabOrder = 3
          OnClick = bbgravar_confgClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbcancelar_conf: TBitBtn
          Left = 256
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bbcancelar_confClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object DBNavigator1: TDBNavigator
          Left = 320
          Top = 3
          Width = 248
          Height = 37
          Hint = 'Navega entre os registros selecionados'
          DataSource = src_config_etiqueta
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Proximo Registro'
            #218'ltimo Registro')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object bbfechar: TBitBtn
          Left = 569
          Top = 4
          Width = 64
          Height = 36
          Hint = 'Fecha Esta Janela'
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = bbfecharClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 33
        Width = 185
        Height = 251
        Align = alLeft
        Caption = 'Modelos Configurados:'
        TabOrder = 1
        object DBGrid_config: TDBGrid
          Left = 2
          Top = 15
          Width = 181
          Height = 234
          Align = alClient
          DataSource = src_config_etiqueta
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CE_NOME'
              Title.Alignment = taCenter
              Width = 143
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 915
        Height = 33
        Align = alTop
        TabOrder = 2
        object Label25: TLabel
          Left = 196
          Top = 11
          Width = 37
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 396
          Top = 11
          Width = 99
          Height = 13
          Caption = 'Qtde de Colunas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_CE_NOME: TDBEdit
          Left = 240
          Top = 8
          Width = 113
          Height = 19
          Ctl3D = False
          DataField = 'CE_NOME'
          DataSource = src_config_etiqueta
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_CE_QTDCOL: TDBEdit
          Left = 511
          Top = 8
          Width = 57
          Height = 19
          Ctl3D = False
          DataField = 'CE_QTDCOL'
          DataSource = src_config_etiqueta
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 185
        Top = 33
        Width = 337
        Height = 251
        Align = alLeft
        TabOrder = 3
        object GroupBox4: TGroupBox
          Left = 1
          Top = 71
          Width = 335
          Height = 70
          Align = alTop
          Caption = 'Configura'#231#227'o:'
          TabOrder = 0
          object DBMemo_CE_CONFIG_CAB: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 53
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_CAB'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox11: TGroupBox
          Left = 1
          Top = 1
          Width = 335
          Height = 70
          Align = alTop
          Caption = 'Etiqueta Coluna 01'
          TabOrder = 1
          object DBMemo_CE_CONFIG_ETIQ01: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 53
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ01'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox12: TGroupBox
          Left = 1
          Top = 141
          Width = 335
          Height = 109
          Align = alClient
          Caption = 'Etiqueta Coluna 02'
          TabOrder = 2
          object DBMemo_CE_CONFIG_ETIQ02: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 92
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ02'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
      object Panel4: TPanel
        Left = 522
        Top = 33
        Width = 393
        Height = 251
        Align = alClient
        TabOrder = 4
        object GroupBox13: TGroupBox
          Left = 1
          Top = 71
          Width = 391
          Height = 70
          Align = alTop
          Caption = 'Etiqueta Coluna 03'
          TabOrder = 0
          object DBMemo_CE_CONFIG_ETIQ03: TDBMemo
            Left = 2
            Top = 15
            Width = 387
            Height = 53
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ03'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox14: TGroupBox
          Left = 1
          Top = 1
          Width = 391
          Height = 70
          Align = alTop
          Caption = 'Etiqueta Coluna 04'
          TabOrder = 1
          object DBMemo_CE_CONFIG_ETIQ04: TDBMemo
            Left = 2
            Top = 15
            Width = 387
            Height = 53
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ04'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox15: TGroupBox
          Left = 1
          Top = 141
          Width = 391
          Height = 109
          Align = alClient
          Caption = 'Etiqueta Coluna 05'
          TabOrder = 2
          object DBMemo_CE_CONFIG_ETIQ05: TDBMemo
            Left = 2
            Top = 15
            Width = 387
            Height = 92
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ05'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Legenda das Tags'
      ImageIndex = 5
      object GroupBox6: TGroupBox
        Left = 542
        Top = 0
        Width = 373
        Height = 325
        Align = alRight
        Caption = 'Legenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object memo_legenda: TMemo
          Left = 2
          Top = 15
          Width = 369
          Height = 308
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Lines.Strings = (
            'Dados do Emitente:'
            '[EMI_NOMFAN]                    - nome de fantasia da empresa'
            '[EMI_RAZSOC]                    - Raz'#227'o social da Empresa'
            ''
            'Dados do Pedido;'
            '[PEDIDOS]                       - Chaves dos Pedidos'
            '[DATAPED]                       - Data do Pedidos'
            '[CODEMB]                        - C'#243'digo do Embalador'
            '[HORAEMB]                       - Hora que embalou o pedido'
            '[NUM_VOLUME]                    - Numero do Volume da Embalagem'
            '[QTDTOT_VOLUME]                 - Quantidade total de volumes'
            '[VOLUME]                        - Numero do Volume de x'
            '[PESOBRUTOVOL]                  - peso bruto do volume'
            '[PESOLIQUIDOVOL]                - peso liquido do volume'
            '[NUMERO_NF]                     - Numero da Nota Fiscal'
            '[CODBAR]                        - codigo de barras'
            ''
            ''
            'Dados do Cliente(destinatario);'
            '[RAZAOSOC]                      - Razao Social'
            '[FANTASIA]                      - Nome de Fantasia'
            '[ENDERECO]                      - Endereco do Cliente'
            '[CLI_ENDER_COMPL]               - Endereco com o bairro junto'
            '[BAIRRO]                        - Bairro do Cliente'
            '[FONE01]                        - Numero do Telefone do Cliente'
            '[CIDADE]                        - Cidade do Cliente'
            '[CIDADE_UF]                     - Cidade do Cliente com a UF'
            '[UF]                            - UF do Cliente'
            '[CEP]                           - CEP do Cliente'
            ''
            ''
            'Dados da Transportadora'
            '[TRA_NOMTRA]                    - Nome da transportador'
            '[TRA_FANTASIA]                  - Nome de Fantasia'
            '[TRA_CIDADE]                    - Nome da cidade'
            '[TRA_UF]                        - UF da cidade'
            ''
            ''
            ''
            'Mensagens'
            '[MENS_LINHA01]                  - Mensagem Linha 01'
            ''
            ''
            'Se por Produto'
            ''
            '[PRO_CODPRO] - codigo do produto'
            '[PRO_CODBAR] - codigo de barras'
            '[PRO_NOME] - Nome do Produto'
            '[PRO_UND] - Unidade do Produto'
            '[PRO_MARCA] - Marca do Produto'
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object tsPreConfigurado: TTabSheet
      Caption = 'Etiqueta Pre_Configurada'
      ImageIndex = 7
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 915
        Height = 325
        ActivePage = tsEtiq_volumes_88por95
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object tsEtiq_volumes_88por95: TTabSheet
          Caption = 'Etiqueta Gondolas'
          ImageIndex = 2
          object GroupBox24: TGroupBox
            Left = 0
            Top = 5
            Width = 313
            Height = 103
            Caption = 'Cabecalho'
            TabOrder = 0
            object memo_volumes_cab_88por95: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 86
              Align = alClient
              Lines.Strings = (
                ''
                'R0,0'
                'ZB'
                'I8,0,001'
                'q704'
                #2'JY0000'#2'Kf00'
                'D8'
                'S3'
                'O'
                'JB'
                'JF')
              TabOrder = 0
            end
          end
          object GroupBox25: TGroupBox
            Left = 0
            Top = 117
            Width = 313
            Height = 104
            Caption = 'Etiqueta 01'
            TabOrder = 1
            object memo_volumes_det_88por95: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 87
              Align = alClient
              Lines.Strings = (
                'A050,130,0,2,1,2,N,"CLIENTE  [CLI_CODCLI] "'
                'A050,170,0,2,1,2,N,"[RAZAOSOC]"'
                'A050,210,0,2,1,2,N,"[CLI_ENDER_COMPL]"'
                
                  'A050,250,0,2,1,2,N,"    Cidade                                  ' +
                  'CEP"'
                'A050,290,0,2,1,2,N,"[CIDADE]";'
                'A540,290,0,2,1,2,N," [CEP]";'
                ''
                'A050,350,0,2,1,2,N,"               TRANSPORTADORA           "'
                'A050,390,0,2,1,2,N,"[TRA_NOMTRA]"'
                ''
                'A050,450,0,2,1,2,N,"Volume: [VOLUME] "'
                'A050,490,0,2,1,2,N,"numero do pedido: [PEDIDOS]"'
                'A050,530,0,2,1,2,N,"Peso Liquido: [PESOLIQUIDOVOL]"'
                'A050,570,0,2,1,2,N,"Peso Bruto: [PESOBRUTOVOL]"'
                ''
                'B200,610,0,E30,3,8,100,N,"[CODBAR]"'
                'A320,710,0,2,1,1,N,"[CODBAR]"'
                ''
                'X15,110,5,680,330'
                'X15,330,5,680,430'
                'X15,430,5,680,750'
                ''
                'P1')
              TabOrder = 0
            end
          end
        end
      end
    end
    object tsModelo02: TTabSheet
      Caption = 'tsModelo02'
      ImageIndex = 7
      object RLReport_modelo02: TRLReport
        Left = 109
        Top = -77
        Width = 1134
        Height = 302
        DataSource = src_etiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        InsideMargins.LeftMargin = 5.000000000000000000
        InsideMargins.TopMargin = 8.000000000000000000
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 300.000000000000000000
        PageSetup.PaperHeight = 80.000000000000000000
        object RLDetailGrid_mod02: TRLDetailGrid
          Left = 19
          Top = 30
          Width = 1115
          Height = 292
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText4: TRLDBText
            Left = 1
            Top = 52
            Width = 376
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMP_FANTASIA'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBText5: TRLDBText
            Left = 1
            Top = 66
            Width = 376
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMP_ENDER_COMPL'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBText7: TRLDBText
            Left = 1
            Top = 79
            Width = 376
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMP_CIDADE_UF_CEP'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBText10: TRLDBText
            Left = 0
            Top = 38
            Width = 376
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMP_RAZSOC'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBText11: TRLDBText
            Left = 1
            Top = 92
            Width = 376
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMP_FONES'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLImage1: TRLImage
            Left = 1
            Top = 5
            Width = 89
            Height = 26
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Picture.Data = {
              0A544A504547496D616765756C0000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC000110800D7029503012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A2B27C47E23D3FC2DA4FF00696A7214B7F3638B23AE5D80CF
              E0324FB035AA0865041041E411DE9D9DAE02D145148028A2B2BC49AEDAF867C3
              B7DAC5D91E55AC45F6E705DBA2A8F72703F1A6936EC80D5A2B9FB7F17E9B2F83
              AD3C4D2B32594F1248C514B942DC1071E8DC7D6B37FE169784FF00E7FA5FFC07
              7FF0ACE75214DF2CDD99D5430389AF1E7A34DC97749B3B2A2B8DFF0085A5E13F
              F9FE97FF0001DFFC28FF0085A5E13FF9FE97FF0001DFFC2A7DBD2FE65F79B7F6
              4E3FFE7CCBFF000167654571BFF0B4BC27FF003FD2FF00E03BFF00851FF0B4BC
              27FF003FD2FF00E03BFF00851EDE97F32FBC3FB271FF00F3E65FF80B3B2A2B8D
              FF0085A5E13FF9FE97FF0001DFFC28FF0085A5E13FF9FE97FF0001DFFC28F6F4
              BF997DE1FD938FFF009F32FF00C059D9515574DD46D756D3E1BFB293CCB79977
              236319E71D3EA2AD5689A6AE8E1945C64E32566828A28A648514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514514005145140
              0514514005145140051451400514514005145140051451400514557BEBD834ED
              3EE6FAE9F65BDBC4D2C8DE8AA324FE4285A81F3FFED0BE25FB4EB161E1C85F31
              DA2FDA2E003FF2D187CA0FD179FF0081D779F053C61FF091F83D74EB99337FA5
              0585F27978BF81BF21B4FF00BB9EF5F356BFAC4FE20F105FEAD73FEB6EE66948
              CE7682785FA0181F856CFC39F16BF837C6369A8B13F647FDC5DA8EF131193F50
              70DF857BD53097C32A6B75F999296B73EC8A29A8E92C6B246C19180656539041
              EE29D5E09A857CEDF1FBC63F6DD520F0BDA49982CC89AE8A9FBD291F2AFF00C0
              54E7EADED5ED7E32F1341E11F0ADF6B136D6685310C64FFAC90F0ABF9F5F604D
              7C6179773DFDECF79752192E2791A591DBAB331C93F99AF4F2EA1CD2F68F65F9
              9137D0F77F813AC43ADF86B57F06DFB6E44569615279F29F8703E8D83F57AE37
              54D3A7D2755BAD3EE0625B790C6DEF8E847B11CFE35CC780BC48DE14F1A69BAA
              9622049365C01DE26E1BF2073F502BDBFE2FE86A26B4F105B00D1CC043332F20
              9C651BF1191F80AF333FC2DA5ED57F5DCFACE11C7FB2C43C349E93DBD57F9AFD
              0F2CA28A2BE64FD2028A28A0028A28A00F66F839ACF9FA55E691237CF6CFE6C4
              0FF71BA81F4233FF0002AF4DAF9CBC03AC7F62F8C6C6666DB0CCDF6797FDD6E3
              3F81C1FC2BE8DAF6B05539E95BB1F98713E0FD8639CD6D3D7E7D7FCFE6145145
              761F3A1451450014514500145145001919C679F4A2BC0AFBE29FD8BE3B3CAD3E
              345887F65CBCFCA003F349F8499E7FBA2BDF410464722B6AB4654ADCDD55C49D
              C28A28AC461451515D5CC3656935D5CC8B1C10A34923B745503249FC050027DA
              EDFEDBF63F393ED223F37CACFCDB338DD8F4CF15357CB9A2FC4D9A6F8D09E24B
              9768AC6EE4FB2346C788EDCF0B9FA1DAC7DC1AFA8EBA31187951693EA849DC28
              A28AE7185145140051451400514514005155AF352B1D3903DF5EDBDAA3701A79
              5501FCCD5587C47A1DC4823835AD3A573D152E918FE40D3516F5B01A74514520
              0A28A2800A28A2800A6BBAC68CEC70AA0927D053A8A00E77FE13BF0BFF00D06E
              D7F33FE147FC277E17FF00A0DDAFE67FC2BC3BC6BA2FF60F8B2FACD576C0CFE6
              C3E9B1B9007D391F8573F5E54B1D52327169687DF50E15C156A51AB0A92B4927
              D3AFC8FAB6D2EEDEFAD23BAB595658251B91D4F0C2A6AF37F83FACFDAB42B8D2
              A46FDE59C9BE31FEC3F3FA367F315E915E8D2A9ED20A47C6E6184783C4CE83E8
              FF000E9F80514515A1C621200249C01D49A6C52C73C492C4EAF1BA86565390C0
              F208AE2FE27F88BFB17C32D690BE2EEFF312E0F2A9FC67F238FC6A97C25F117F
              6868926913BE6E2C798F3D5A23D3F23C7D08AC1D78FB5F647A91CAAABC03C774
              4EDF2EFF007E87A2514515B9E58557BDBEB5D36CE4BBBC9D21B78F1BE4738032
              703F53562BCBFE326B3E4D85968D1B7CD3B79F281FDD5E147E273FF7CD655AA7
              B38391DD96E0DE37150A0BAEFE9D4EAE5F881E158632EDACC040FEE2B31FC802
              6ABFFC2CCF087FD05FFF0025A5FF00E22BE79A2BCDFED0A9D91F6EB83F05D672
              FBD7F91F437FC2CCF087FD05FF00F25A5FFE228FF8599E10FF00A0BFFE4B4BFF
              00C457CF3452FED0ABD97F5F32BFD50C0FF3CFEF5FFC89F437FC2CCF087FD05F
              FF0025A5FF00E228FF008599E10FFA0BFF00E4B4BFFC457CF3451FDA157B2FEB
              E61FEA8607F9E7F7AFFE44FA1BFE1667843FE82FFF0092D2FF00F1147FC2CCF0
              87FD05FF00F25A5FFE22BE79A28FED0ABD97F5F30FF54303FCF3FBD7FF00227D
              0EDF12FC22A70756C1C03FF1ED2F7FF80D27FC2CCF087FD05FFF0025A5FF00E2
              2BE7D9FF00D60FF717FF0041151D1FDA157B2FEBE625C21816AFCF3FBD7FF227
              D0DFF0B33C21FF00417FFC9697FF0088A55F897E11760ABAB649381FE8D2FF00
              F135F3C5496FFF001F317FBE3F9D1FDA157B2FEBE60F8430295F9E7F7AFF00E4
              4FA0BFE1667843FE82FF00F92D2FFF001147FC2CCF087FD05FFF0025A5FF00E2
              2BE79A28FED0ABD97F5F31FF00AA181FE79FDEBFF913E86FF8599E10FF00A0BF
              FE4B4BFF00C455DD2BC6FE1DD6AFD2C74FD47CEB9704AA79322E40193C9503A5
              7CD95D97C2DFF91F6CFF00EB9CBFFA01ABA58EA929A8B4B53971DC2D83A186A9
              5A3295E29BDD745E87D03451457AA7C105145140057947C7AF12FF006578323D
              2217C5C6A926D600F2224C16FCCED1F426BD5EBE47F8BDE25FF8493E20DEB44F
              BAD6C7FD120C1E0ED2771FC58B7E18AEDC052F695937B2D4993B2384A28A2BE8
              0C8FA7FE06F8C3FB7BC28746BA9337BA5011AE4F2F09FB87F0FBBF40BEB5EA95
              F18F80BC552F837C5F67AAAEE3003E55CA0FE389BEF7E23823DC0AFA8BC79E32
              B7F0AF8227D6A0963925990259739123B8F948F50065BE82BC2C6619C6B7BABE
              2358BD0F13F8EFE31FED9F12A6816B266CF4C27CD2A7879C8E7FEF91F2FD4B57
              9253A591E695E595D9E4762CCCC72589EA4D36BD9A349528282E866DDC2BEA5F
              863A8DA78F7E16C7A5EA7995ED316938CE1B0B831B67FDDDBCFA835F2D57A7FC
              0CF137F6278E469D33EDB5D553C820F4128E633FCD7FE055CF8FA2AAD17E45D2
              A92A73528BB347B67FC2A7F0BFFCF2BAFF00BFE68FF854FE17FF009E575FF7FC
              D79F78C756F13787BC517962BAD5F883779907EF9B98DB91F974FC2B07FE132F
              12FF00D072FF00FEFF00B57C4CABD08B7174F63F40A39666B5A9C6AC315A495D
              6AFA9EBFFF000A9FC2FF00F3CAEBFEFF009A3FE153F85FFE795D7FDFF35E41FF
              000997897FE8397FFF007FDA8FF84CBC4BFF0041CBFF00FBFED4BEB187FE434F
              EC6CE3FE82BF167AFF00FC2A7F0BFF00CF2BAFFBFE68FF00854FE17FF9E575FF
              007FCD7907FC265E25FF00A0E5FF00FDFF006A3FE132F12FFD072FFF00EFFB51
              F58C3FF207F63671FF00415F8B3D7FFE153F85C1C88AEBFEFF009AED917622AE
              4B60632C724FD6BE6AFF0084CBC4BFF41CBFFF00BFED5EBFF0BB5EB9D6BC3932
              DEDCC93DD5B4E559E46CB152015C9FAEE1F857461ABD294B9611B5CF233ACA71
              F4682AF89ABCE93F3D2FEBF23B8A28A2BB8F950A28A2800A28A2800AE73C79E2
              35F0AF82F52D5430134716CB707BCADF2AFD704E7E80D7475F3E7ED0FE25F3AF
              F4EF0DC2F95817ED57001FE36C841F50371FF810AE8C2D2F6B5547A0A4EC8F10
              666762CC4B3139249C926BEABF831E301E26F064767712EED434C0B04B93CB47
              FF002CDBF218FAA9F5AF94EBAFF869E2E3E0DF19DADF4AC458CDFB8BB03FE79B
              7F17FC04E0FE0477AF6F1943DAD2696EB6328BB33EC4A291595D432B06561904
              1C82296BE70D82BC63E3EF8C3FB3F4783C3168F8B8BE025B920F2B083C0FF813
              0FC94FAD7AE6A9A95B68FA5DD6A378FB2DAD6269646F6033C7BD7C5BE26D7EE7
              C51E24BED66EF892EA42C133908BD1547D0003F0AF432FA1CF539DECBF3266EC
              8C9AFB03E16789BFE128F00D85CC8FBAEEDC7D96E727277A00013EE5769FC6BE
              3FAF5CF803E26FECCF164FA1CEF8B7D4E3CC793C0990123F35DC3EA057A18FA5
              ED295D6EB5222ECCFA5EB13C63FF00223EBFFF0060DB8FFD16D5B7589E31FF00
              911F5FFF00B06DC7FE8B6AF061F12353E27A28AF5CF853F0B343F1CF872EF51D
              4EEB5086686ECC0AB6D222A9508ADCEE43CE58D7D3D5AB1A51E696C6295CF23A
              D3F0E7FC8CFA4FFD7EC3FF00A18AFA17FE19DFC25FF411D6FF00EFFC5FFC6EA7
              B2F805E15B0BFB7BC8B50D64C904AB2A869A2C12A4119FDDF4E2B925985169A1
              F233D52BC37E2CFC5FB9D36FA6F0EF86E6F2A784EDBBBD5E4A37744F423B9FC0
              74CD7A6F8FFC42DE16F03EA9AB4440B88E2D9067FE7A310AA7DF04E7F0AF8CE4
              77964692462EEC4B3331C924F526B8F2FC32A8DD49EC8A9BB68497375717B70D
              71753CB3CCE72D24AE598FD49A86BD5BE167C238FC6564FAC6B13CF069A1F642
              90E03CE47DE3920E1474E9C9CF4C575DE36F80FA5268B737DE197B886EE04327
              D9647F31250072AA4F21B8E393E9F4F4658CA309FB36C8E576B9E57E07F88DAD
              7822F90DB4CD71A733666B291BE461DCAFF75BDC7E39AFAE34BD4AD758D2AD75
              2B290496D7312CB1B7B119E7DFD457C4FA6E83ABEB2E174CD2EF2F0E71FB8819
              C0FA9038AFA7BE0D695E20D0FC1CFA66BD60D69E54ECF6A1DD4928DC90402718
              6CF5C75AE3CC69D3B73ADCA8367A2D78A7ED15AD791A2E95A246DF35CCCD7120
              1FDD41800FD4B7FE3B5ED75F277C69D6FF00B63E255F468DBA1B055B44E7BAF2
              DFF8F330FC2B972FA7CF593EDA9527A1E7B5F417ECE9AD799A7EB1A1BB73148B
              75103E8C36B7E4557F3AF03FB2CE2CC5DF967ECE64316FEDBB19C7E46BB6F839
              AD7F62FC4BD37736D86F7759C9EFBFEEFF00E3E12BD7C5C3DA5192FEB4338BB3
              3EB7A28A2BE6CD8F31F8C7A2F9FA65A6B31A7CF6EDE4CA47F71BA13F46E3FE05
              5E355F52EB3A647ACE8D79A74B8D971114C9FE13D8FE0707F0AF97AE2092D6E6
              5B7994ACB1394753D981C115E3E3E9F2CF99753F46E13C67B5C2BA12DE0FF07F
              F06E74BF0F759FEC5F18D9C8EDB60B83F6797D30DD0FE0DB4FE15F4557C98090
              41070457D33E13D606BDE18B1BF27323C7B65FF7D786FD467F1ADB2FA9A383F5
              3CFE30C1DA50C547AFBAFF0035FA9B548CC154B310140C927B52D70BF147C49F
              D8FE1D36103E2EEFC18C60F2B1FF0011FC738FC4FA577D49AA71727D0F92C1E1
              678BAF1A10DE4FFE1DFC8F28F1AF885BC49E25B8BB5626DA33E55B8F441DFF00
              1393F8D57F0A6BCFE1CF11DAEA009F295B64CA3F8A33F787F5FA8158B457CFBA
              92E7E7EA7EBCB074961FEAD6F72D6F91F58C5224D124B1B078DD432B03C107A1
              A75701F0A7C45FDA9E1F3A64EF9B9B0C2AE7AB447EEFE5C8FC0577F5EFD2A8AA
              4149753F22C6E12784C44E84F78BFC3A3F9A0AF9B3C6DACFF6EF8B6FAED5B742
              AFE543E9B178047D793F8D7B8F8E359FEC3F08DF5D2B6D99D3C987D77B7191F4
              193F857CDD5C19854DA0BD4FAFE0FC1FC78A97F857E6FF0040A2B63C2FA1B788
              BC4569A686644918991D7AAA01927FCF722BD4BFE14CE8DFF412BFFF00C73FF8
              9AE3A587A9555E28FA3C767384C0D454EBCACDABED73C568AF6AFF008533A37F
              D04AFF00FF001CFF00E268FF008533A37FD04AFF00FF001CFF00E26B4FA8D6EC
              717FAD1977F33FB99E2B457B57FC299D1BFE8257FF00F8E7FF001347FC299D1B
              FE8257FF00F8E7FF001347D46B760FF5A32EFE67F733C568AF6AFF008533A37F
              D04AFF00FF001CFF00E268FF008533A37FD04AFF00FF001CFF00E268FA8D6EC1
              FEB465DFCCFEE678CCFF00EB07FB8BFF00A08A8EBDB1FE0DE8EE72751BEE807F
              07618FEED37FE14CE8DFF412BFFF00C73FF89A3EA55BB0971465C97C4FEE678A
              D496FF00F1F317FBE3F9D7B37FC299D1BFE8257FFF008E7FF134E4F837A3A3AB
              8D46FB2A4119D9FF00C4D1F52ADD81F1465CD7C4FEE6789D15ED5FF0A6746FFA
              095FFF00E39FFC4D1FF0A6746FFA095FFF00E39FFC4D1F51ADD87FEB465DFCCF
              EE678AD765F0B7FE47DB3FFAE72FFE806BB8FF008533A37FD04AFF00FF001CFF
              00E26B57C3DF0DB4DF0E6B316A76D7B772CB1AB00B26DDA7208EC3DEB4A583AB
              19A935B33931FC4780AD85A94A1277945A5A3EA8ED28A28AF5CFCEC28A28A00E
              63E20F8907857C11A96A6AE16E047E55BFBCADC2FE59CFD01AF8D092C4924927
              924D7B67ED0DE25FB46AB61E1B85F296ABF69B800FFCB4618507DC2E4FFC0EBC
              4ABDFCBE97252E67BB329BD4EB3E1EF82E5F1CF8865D396430C515B4933CB8E1
              4E309FF8F95E3D01AE6AF6CEE34EBE9ECAEE268AE2DE468A58DBAAB03822BE95
              F809E1BFECAF0649ABCC98B8D524DCA48E444990BF99DC7E845719F1FF00C1E6
              CB5683C516917EE2F310DD6D1F76503E563FEF28C7D57DE8862EF8874FA74F50
              E5D2E78B56CEABE27D4F59D1749D2AF26DF6BA5C6D1C03BE09CF3EB81851E805
              63515DAE29B4DF4242B7BC1BE19B8F17F8A6CB478372ACAF99A4033E5C63966F
              CBA7B902B06BE9BF817E0DFEC3F0CB6BB7716DBED51418F70E520FE11FF02FBD
              F4DB5862ABFB1A6E5D7A0E2AECF9F3C55A14BE19F14EA3A3CB9CDACC5518FF00
              121E55BF1520FE35976F3CB6B7315C40E52689C3A38EAAC0E41FCEBDC7F687F0
              D6CB8D3BC4B027120FB25C903B8CB21FCB70FC057855561EAFB5A4A40D599F48
              F8D0C5E32F87BA378C6D50798B1817017F8413B587FC05C11F89AF2EAECFE036
              B30EA5A6EB3E0CBF3BA29A369E104FF09016403FF1D23F1355E7F871E298AE25
              8E3D2DE54472AB22BA61C03D464F7AF8ACDB072A7887CAB467E87C2D9B525857
              42BCD4795E9776D1FAF67F99CA515D3FFC2BBF167FD01A5FFBF89FFC551FF0AE
              FC59FF0040697FEFE27FF155E5FB1A9FCAFEE3EA3FB4707FF3F63FF812FF0033
              98A2BA7FF8577E2CFF00A034BFF7F13FF8AA3FE15DF8B3FE80D2FF00DFC4FF00
              E2A8F6353F95FDC1FDA383FF009FB1FF00C097F99CC57A2FC1ED4BECDE25B9B0
              6384BB83207ABA1C8FD0B560FF00C2BBF167FD01A5FF00BF89FF00C556AF86BC
              1DE2BD1BC4BA76A0DA44C1219D4C84489F70F0DFC5E84D6B461521514B95FDC7
              066788C1E2707528FB58DDA76F796FBAEBDCF77A28A2BDD3F290A28A2800A28A
              28021BBBA86C6CE7BBB8711C1046D2C8E7A2AA8C93F90AF89FC4BADCDE24F12E
              A1AC4F9DF77334814FF0AF455FC1401F857D19F1DBC4BFD8DE081A642F8B9D56
              4F2B83C889705CFF00E82BFF000235F2F57B59652B45D47D4CE6FA0514515E99
              07D47F043C61FF00090F84469573266FB4A0B11C9E5E1FE03F8636FE03D6BD42
              BE34F87DE2C93C1BE30B3D5324DB13E4DD20FE289BAFE23861EEA2BEB6D735FB
              2D0BC3775AE4F22B5AC1079C0AB7FACC8F9403FED1200FAD7818DC3B855F7569
              2358BD0F1EFDA07C63B22B7F09DA49CBEDB8BD20F6FE043F8FCC7E8B5E0557B5
              9D5AEB5DD6AF355BD6DD71752B4AFE833D87B01C0F61546BD9C3D15469A819B7
              7615674FBFB8D2F52B5BFB57D9716D2ACD1B7A329C8FE555A8AD9ABE823EE2D0
              757B7D7F41B1D5AD4FEE6EE15940FEE923907DC1C8FC2AAF8C7FE447D7FF00EC
              1B71FF00A2DABCBFF67AF137DAB47BEF0DCEF992D1BED16E09FF00966C7E603D
              8373FF0003AF50F18FFC88FAFF00FD836E3FF45B57CD54A5ECABF2799B27747C
              4F5DE781FE2A6ABE04D227D3AC6C6CEE239A733969F76412AAB8E08E3E515C1D
              75DE14F86DE21F19E9D35FE911DBB4114C61632CC10EE001E9F4615F41595371
              FDE6C64AFD0ED7FE1A2BC45FF407D2FF00293FF8AAE9BE1FFC66D67C5DE33B2D
              16EF4EB0860B812167877EE1B5198632C47515C17FC287F1BFFCF0B2FF00C091
              FE15D67C35F84FE28F0BF8F2C357D4A2B55B481650E639C31F9A3651C7D48AE0
              AB1C27B3972DAF629735CDBFDA22F0C5E0CD3AD1723CFBE0C4FB2A371F9B0FCA
              BE6CAFA27F68D859BC3DA2CF83B52EDD09CF1964C8FF00D04D7CED5BE5EBF70B
              E629EE7DABE08B18F4DF036856B1285096311201CFCC54331FC4926A96A5F12B
              C1DA4EA13E9F7FADC30DD40DB258DA37254FA70B8AD7F0DCC2E3C2DA44C31892
              CA171818EA80D7C9BF143FE4A6F883FEBE8FF215E6E1A82AF564A6CB6EC8FA3D
              3E2CF80634089E20B75503000864000FFBE6B73C3FE2ED07C55F68FEC4D452F3
              ECDB7CED88CBB37676FDE03AED3F957C4F5EF5FB367FCCCFFF006EBFFB5AB7C4
              E069D2A4E69BBA12936EC7B76A97F1695A4DE6A339C436B0BCCFF45524FF002A
              F87AF6EE5BFBEB8BCB86DD35C4AD2C87D598E4FEA6BEA3F8E5ADFF00657C399E
              D91F136A3325B2E0F3B7EF37E185C7FC0ABE56552EC1546493802B5CB29DA0E7
              DC537A9EBB2784F1FB36C7A8ECFDF8BFFED03C73B4B793F9630D5E4D6D712DA5
              D45730B15962712230ECC0E41AFAEE5B4D15BE1CB78606A7A79FF8967D8C1FB4
              263708F686EBEBCD7C7E410483D456D83AAEA73DFBFE6292B1F72E8BA9C5AD68
              761A9C38F2EEEDD2603D372838FC338ABD5E61F01F5AFED3F87AB64ED9974E9D
              E1C77D8DF3A9FF00C788FF0080D7A7D7875A1ECEA38F6344EE82BC1FE2B68BFD
              9BE2BFB6C6B886FD3CC18E9BC70C3F91FF008157BC5719F13B45FED6F084D346
              B99EC4FDA131D768E1C7E5CFE02B8B174F9E93F2D4F7387F19F55C745BDA5EEB
              F9EDF8D8F9FEBD63E0D6B387BED1646E08FB4C20FAF0AC3FF41FC8D793D6B786
              3573A17892C751C90914A3CCC7743C37E84D79187A9ECEA291FA2E6D83FADE0E
              7456F6BAF55AA3E9C7758D19DD82AA8C924E0015F3678CBC40DE24F12DCDF027
              ECE0F976E0F68C74FCF93F8D7AA7C54F122E9BE1C5D3ADA41E7EA2304A9E917F
              11FC781F426BC32BAF1F5AED5347CEF0965DC90962E6B57A2F4EAFEFD3E41451
              4579C7D99BDE0ED7CF873C4D6B7C49F209F2E703BC6DD7F2E0FE15F4A2B2BA2B
              A3065619041C822BE4DAF76F865E268EFF00C26D6F752859B4C5DAECC7FE5960
              956FC0023F0AF47015ACDD367C6716E5FCF08E2E0B55A3F4E9F8E9F3398F8C7A
              CF9DA8D9E8F1B7C96EBE74A07F7DB8507E839FF8157985686BBAA3EB5AEDEEA5
              26737129700FF0AFF08FC0607E154511A4754452CCC7000EA4D71D6A9ED2A391
              F499661160F090A3D52D7D5EAFF13D73E0D68DB20BED6A45E5CFD9E127D060B1
              FCF6FE46BB6D5FC6DE1AD06F8D96A9ACDADADC850E62918E403D0D5AF0E692BA
              17876C74E18CC3101211DDCF2C7F326BE43F1E6BBFF09278E357D5036E8A5B82
              B09FFA66BF2A7FE3A01AFA6CB304A71E47A597E27E599BE37EB58B9D65B37A7A
              2D11F51FFC2D0F047FD0C965FF007D1FF0AE934ED46CF56B086FF4FB84B8B598
              663963390C338FE60D7C2D5F497ECF7AEFDB3C297BA348D992C27DE83FE99C9C
              FF00E841BF3AEDC560634A9F3C59E6C65767AC6A1A85A6956135F5FCE905AC23
              7492BF451D39AE6BFE1687823FE864B2FF00BE8FF8533E2B7FC92FD7BFEBDC7F
              E86B5F1ED4E13071AF07293094AC7D8BFF000B43C11FF432597FDF47FC28FF00
              85A1E08FFA192CBFEFA3FE15F1D515D7FD994FBB173B3EC5FF0085A1E08FFA19
              2CBFEFA3FE14F8FE26782E591238FC4564CEE42A80C7927F0AF8DEADE95FF218
              B2FF00AF88FF00F42149E594EDBB0E767D8DAA78F3C2DA2EA32E9FA96B76B6D7
              7163CC8A4272B901876F420FE354FF00E1687823FE864B2FFBE8FF00857CEFF1
              A3FE4AD6B7FF006C3FF44475C154D2CBA9CE0A4DBD5039BB9F62FF00C2D0F047
              FD0C965FF7D1FF000A3FE1687823FE864B2FFBE8FF00857C75455FF6653EEC39
              D9F62FFC2D0F047FD0C965FF007D1FF0ADCD175FD2BC456AF75A45F4579046FE
              5B3C47203601C7E4457C3D5F4A7ECEDFF2246A5FF6126FFD171D73E2B050A34F
              9D3638CAECF5FA28A2BCC2C2A0BDBC834FB0B8BDB97096F6F1B4B239FE155192
              7F2153D794FC7AF12FF64F82E3D2617C5C6A926C383C889305BF33B47D09AD28
              D37526A0BA89BB23E74F10EB33F887C437FABDC67CCBB99A4C67EE82785FA018
              1F853742D267D7B5EB1D2AD87EF6EE65881C7DDC9E49F60327F0ACFAF67FD9EF
              C37F6CD7EF7C4334798AC63F260247FCB571C91F45C8FF0081D7D1D69AA349C9
              74324AECFA12C2CA0D374EB6B1B54D96F6D12C31AFA2A8C0FD0550F13E816DE2
              7F0DDF68D75811DCC4543633B1FAAB7E0403F856BD15F32A4D3E65B9B1F0B6A5
              A75D691A9DCE9D7B198EE6DA468A44F46071F88F7AAB5EE3FB40F83CC3796FE2
              BB48BF773E2DEF303A381F231FA81B7FE023D6BC3ABE9E8555569A9A316ACCEB
              BE1B7841FC67E31B5B17526CA1FDFDDB7FD33047CB9F56381F8E7B57D8688914
              6B1C6A15140555518000EC2BCFFE0F7837FE114F074735CC7B752D476CF7191C
              A2E3E44FC01C9F7635E855E1E36BFB5A965B2348AB2303C6DE1D5F15783B52D2
              080649A226127F8655F990FE607E19AF8B64478A468E452AEA4AB2918208ED5F
              78D7C9FF0019FC35FF0008FF00C40B99A24DB6BA90FB5C781C0627E71FF7D64F
              D18574E5956CDD37EA29AEA723E1AF105E785BC4169ACD86C3716CC4857CED60
              41041C76209AF4EFF868AF117FD01F4BFCA4FF00E2ABC728AF4EA50A751DE6AE
              426D1EC7FF000D15E22FFA03E97F949FFC551FF0D15E22FF00A03E97F949FF00
              C5578E5159FD4E87F287333D8FFE1A2BC45FF407D2FF00293FF8AA3FE1A2BC45
              FF00407D2FF293FF008AAF1CA28FA9D0FE50E667B1FF00C345788BFE80FA5FE5
              27FF001547FC345788BFE80FA5FE527FF155E39451F53A1FCA1CCCFB17E1BF8C
              9BC71E134D5268A286E92678678E2CED561C8C679FBA57F5AEBABE77FD9DB5CF
              235AD574391BE5B9845C440FF790E081EE4303FF0001AFA22BC3C5D254AAB8AD
              8D62EE828A28AE718514573BE3BF110F0AF82F52D58301347115801EF2B7CABF
              5E4E7E80D5462E52515D40F9BBE31F897FE122F88376913EEB4D3C7D922C1E09
              52779FFBE8919F402BCFE95999D8B33166639249C926A5B5B59AF6F20B4B7432
              4F3C8B1C683AB331C01F99AFA8A7054E0A2BA183D4DE1E0CD40FC3FF00F84B80
              26D05DFD9D931C85C01E67D377CBF5AE6EBED4D3BC276169E0787C2D2A092CC5
              A7D9A5C71BC91F337B12493F5AF8FF00C47A15CF86BC457DA3DD8FDEDACA5376
              31BD7AAB0F62083F8D7361714AB392EDB7A1528D8CBAEB356F1F6A7ABF8174AF
              0B4E7F716121264DDCCAA062353FEE82C3FEF9F4AE4E8AEA9423269B5B121451
              5BBE0FF0D5C78B7C5365A3DBE544CF99641FF2CE31CB37E5D3DF029CA4A29B60
              599BC15A8C1F0FE0F173822D66BA302A639D983893E85815FF00F5D7335F6A6B
              7E15B2D4FC1173E198A248AD5AD3ECF02F68CA8F90FE0429FC2BE2FB8B796D2E
              65B69D0A4D1398DD0F55607047E75C984C4FB752BF47F8152563A1F007890F85
              3C6BA6EA85888164F2EE00EF1370DF9039FA815F59F8C183781B5E652083A6DC
              10477FDD357C4F5F4CF83BC4DFF091FC08D51657DD77A7E9D7169364F242C476
              1FC548E7D41AC31F4AEE3517A0E0FA1F3357D1FF00B3D5CC10F8275159668D09
              D458E1980FF9671D7CE14576E228FB68725EC4A7667DD7F6EB4FF9FA83FEFE0A
              5FB75A7FCFD41FF7F057C275241FF1F11FFBE3F9D79FFD96BF9BF0FF00825739
              F54FC6ED15F57F86F732C49BA4B0952EC007F84655BF25627F0AF94ABEEEB9B6
              8AF2D66B59D03C332347221E8CA4608FC8D7C75E3DF04DEF81FC45258CE1DED2
              425ED2E48E254FFE287423FA114F2DACACE9B09AEA7BF7C17F195AEBDE0FB6D2
              65B851A9E9A821689DBE678C7DC651DC01807D31EE2BB4D4747F0DA2CFA86A7A
              6E94147CF35CDCC11FE6CCC3F9D7C5104F35ACE93DBCB2432A1CAC91B15653EC
              474AB77DADEADA9C6B1EA1AA5EDDA29C85B8B879003D3A126AAA65DCD51CA32B
              260A7A1A5E3ABBD32FBC6FAB5C68FE57F67BCDFB8F2536260003818181906BD6
              7F66CFF999FF00EDD7FF006B578322348EA88A5998E0281924FA57D37F03FC15
              AB785748D46FB578C5BC9A9792D1DBB7DF4540FCB7A13BFA7518E7D2B5C6B8C3
              0EE17EC28EE70FFB43EB5F6AF1469DA3A3652CADCCAE076790F43FF01553FF00
              02AF1BADEF1B6B5FF090F8D757D5436E8E7B96F28FFD335F953FF1D02BA8F845
              E02B0F1CEABA8A6A8D70B6969029CC0E14EF66E32483C615AB5A7CB87A0B9BA2
              13D59E73457D41FF000CFF00E0DFF9EBAA7FE042FF00F115E47F173C0761E06D
              634F8F4B6B86B3BAB72D99DC31F315BE6E401C60AD2A58CA5565C91DC6E2D1B5
              FB3DEB5F62F185E692ED88F50B6DCA3D648F91FF008E97FCABE95AF897C25AC9
              F0F78B74AD581216DAE51E4C774CE187E2A48AFB6410CA082083C823BD79B995
              3E5AAA5DCA83D05A6C91A4B1B4722864705594F420F514EA2BCE2F63E60F1169
              2FA17882F74D6CE20948427BA1E54FE208ACBAF56F8C9A2ED96CB5B8D7871F67
              9881DC64A9FCB70FC05794D7CF57A7ECEA389FB06558CFAE60E15BAB5AFAAD19
              6F50D4EEF549217BB94C86185208F3D914600FEBF535528A2B26DBD59DF18C60
              B962AC8D5F0D68B27883C4169A6A642CAFFBC61FC283963F97EB8AB9E35F0F1F
              0DF89AE2CD148B67FDEDB93CFC87A0CFB1C8FC2BD23E117877EC7A54BADCE989
              AEFE4872391183C9FC48FF00C7455FF8A9E1E3AB786FEDF0A66E74F264E072D1
              9FBC3F0C03F81AEF585BE1F9FAEFF23E5679F28E6EB0F7FDDFC2FF00C5DFEFD3
              EF3C1EAD596A375A7ADCADB4A505CC2D04A07F121EA3F4AAB457026D6C7D54A3
              192B495D05761F0D346FED7F18DBBBAE60B31F687F4C8FBA3FEFA20FE06B8FAF
              73F849A2FD83C3326A322E25BF9370CFFCF35C81FAEE3F88AE8C253E7AABCB53
              C7CFF19F55C0CDADE5EEAF9FFC0B9AFF0011F5DFF8477C01ABDFABED9BC930C2
              73CEF7F9411F4CE7F0AF8D6BDFBF68BD776DB691A046FCBB35E4CBEC32A9FA97
              FCABC26C6CE5D4350B6B280666B8956241EACC401FA9AFBCCBA9F251E67D4FC8
              E6F527D5348BAD23EC5F695DBF6BB54BB8BDD1F383FA5771F0475DFEC7F88D6D
              6EED883518DAD5B3D371F993F1DCA07FC0ABACF8FF00E1B8B4FD33C397D6C988
              ADA33A793FECA80631FA3D789D95E4DA7DFDBDEDBB6D9EDE559636F4652083F9
              8ADA12589A1EB716CCFB63C47A1C1E25F0FDE68F732C9143749B19E3C6E0320F
              19E3B57987FC33AF877FE831AA7E71FF00F135EAFA4EA30EB1A3D96A56E7F737
              7024C9EC18038FD6AE57830AF5695E317635B267CB3F157E1AE9BE01B6D325B0
              BDBBB8376F22B89F6F1B42E31803D6BCCABE81FDA43FE41FE1EFFAEB3FF24AF9
              FABDEC1CE53A2A527766525667B8F823E09E89E27F0769DACDD6A7A84535D233
              3245B368C315E32B9ED5D25B7ECF7E1FB6BA8A75D5F532D13870098F04839FEE
              D753F08FFE496685FF005C9FFF00463576B5E456C556552494B4BB3451563CD7
              C55F05F46F167896EF5BBBD4AFE19EE766E48B66D1B5150632A4F45158571FB3
              CF87A1B69651ABEA84A2160098FB0FF76BD9EABDF7FC83EE7FEB937F2359C715
              5925152D07CA8F852BAFF86DE12B4F1AF8B06937B713C10F90F2EF871BB2B8F5
              07D6B90AF50F807FF25247FD794BFF00B2D7BD88938D29496F6325B9E81FF0CE
              BE1DFF00A0C6A9F9C7FF00C4D779E07F04D97813489F4EB1B9B8B88E69CCE5A7
              DB904AAAE38038F94574F457CF4F1156A2E593BA354920A28A2B11857C93F183
              C4BFF091FC41BDF2A4DD6961FE890E0F07693B8FE2C5B9F402BEB6AE48FC30F0
              4B124F872C893C9241E7F5AEBC2578519B9495C992B9F1CD7D8BF0CFC37FF08B
              F80B4DB174D973227DA2E7239F31F920FB8185FF0080D3A3F865E0A8A45913C3
              962194860769E08FC6BACAD3178C55E2A315608C6C145145701466F88344B5F1
              1E817BA45E0FDCDD446327192A7B30F707047D2BE6EF86DF0E2EEFFE24CF63AB
              5BE2DF44977DD83F75DC1F917DC3119F7507D6BEA3A8A3B68219A69A2851259D
              834AEAB82E400A093DF00015D347132A5094575135725A28A2B98615E61F1D3C
              37FDB5E053A8C31EEB9D29FCE040E7CA3C38FF00D05BFE035E9F51DC4115D5B4
              B6F3C6B2432A149118643291820FE15A52A8E9CD4D74135747C21457D8127C27
              F02CADB9BC3B6C0F4F95DD47E41A9BFF000A8FC09FF42EC1FF007F64FF00E2AB
              D7FED3A5D991C8CF9068AFB17FE157F823FE85BB2FFBE4FF008D1FF0ABFC11FF
              0042DD97FDF27FC68FED3A7D987233E3AA2BEC5FF855FE08FF00A16ECBFEF93F
              E347FC2AFF00047FD0B765FF007C9FF1A3FB4E9F661C8CF8EA8AFB17FE157F82
              3FE85BB2FF00BE4FF8D1FF000ABFC11FF42DD97FDF27FC68FED3A7D987233E5C
              F01EB9FF0008EF8E748D4D9B6C51DC2ACC7FE99B7CAFFF008EB1AFB46B91FF00
              855FE08FFA16ECBFEF93FE35D6222C68A8A30AA0003DAB8319888579294558A8
              AB0EA28A2B8CA0AF9F7F687F12F9D7DA7F86A07CAC03ED57001FE339080FB81B
              8FFC0857BEDD5CC3656935D5C388E0823692473D1554649FC857C4DE26D726F1
              2789750D627C87BA999C29FE15E8ABF82803F0AF472EA5CD539DF4226F432ABD
              47E04F86FF00B67C71FDA52A6EB6D2A3F3B91C195B2107FE84DFF01AF2EAFAC3
              E0C786FF00E11FF87F6B34A9B6EB523F6B932390A47C83FEF900FD58D7A18EAB
              ECE8BB6EF4262AECF43AF12FDA03C202EB4DB7F14DA45FBDB5C4177B47DE8C9F
              958FD18E3FE043D2BDB6AB6A1616DAA69D7361791896DAE6368A543DD48C1AF0
              E85574AA29A346AE8F8568AD9F15F87AE3C2BE27BFD1AE325ADE4211C8FBE879
              56FC4106B1ABE9E32525746215F4CFC0AF06FF0062F86DB5EBB8F17BA98062C8
              E5201CAFFDF47E6FA6DAF12F873E117F19F8C2D74F656FB1C7FBEBB71DA35EA3
              3EA4E17F1CF6AFB1638D228D238D1523401555460003A002BCCCCABD97B25D77
              2E0BA8EAF967E39786FF00B13C78F7F126DB6D553ED0B81C0907120FAE70DFF0
              2AFA9ABCE3E36786FF00B7BC013DCC49BAEB4C6FB5260725070E3E9B7E6FF808
              AE1C155F67595F67A1525747CA75E8BF07F578E2F10DE7872EE668AC7C416AF6
              4ECA465642A42119EFCB28F7615E7552DB5C4B69750DCDBB98E685C491B8EAAC
              0E41FCEBDFAB0E7838992763E8BFF8675F0EFF00D06354FCE3FF00E268FF0086
              75F0EFFD06354FCE3FFE26B362FDA3EDC42825F0DCA64DA3795BB0013DF1F2F4
              A7FF00C3485A7FD0B53FFE058FFE22BC9E5C7FF5634F74BFFF000CEBE1DFFA0C
              6A9F9C7FFC4D393F677F0F23AB0D5F54CA9CF58FFF0089ACEFF8690B4FFA16A7
              FF00C0B1FF00C451FF000D2169FF0042D4FF00F8163FF88A3971FE7F807BA7B9
              5666BDE1ED2BC4DA5BE9DABDA25CDB37201E0A9ECCA4720FB8AF20FF008690B4
              FF00A16A7FFC0B1FFC451FF0D2169FF42D4FFF008163FF0088AE7583C427751F
              C50F9916355FD9D34A9896D275CBBB5EFB2E635987D323691FAD53B3FD9BE21C
              DEF891DB9FBB05A81C7D4B1FE5527FC3485A7FD0B53FFE058FFE228FF8690B4F
              FA16A7FF00C0B1FF00C4574AFAFA56FF00217BA7A07843E18786BC18FE7D8DB3
              DC5EFF00CFDDD10F22FF00BB8002FE033EF5D5DF5B1BDD3EE6D44AF099A268FC
              C4C6E4C823233DC6735E29FF000D2169FF0042D4FF00F8163FF88A3FE1A42D3F
              E85A9FFF0002C7FF00115CF2C2E2A72E692BBF543E6897FF00E19D7C3BFF0041
              8D53F38FFF0089AEDBC0BF0FF4DF015B5E43A7DC5C5C1BB75691E7DB9F941000
              C01C727F3AF3AFF8690B4FFA16A7FF00C0B1FF00C451FF000D2169FF0042D4FF
              00F8163FF88AD274B1B38F2CB55F215E28F72AE47C75F0FB4DF1F5BD945A85CD
              C5B9B46668DE0DB93B80C83907D07E55E77FF0D2169FF42D4FFF008163FF0088
              A3FE1A42D3FE85A9FF00F02C7FF1159C3098984B9A2B5F90F9917FFE19D7C3BF
              F418D53F38FF00F89AF59D36CBFB3B4BB4B1133CC2DA14844B26373ED0064E3B
              9C578BFF00C3485A7FD0B53FFE058FFE22A5B5FDA26D2E6EE1B71E1B994CB22A
              67ED638C9C7F76AAA50C5D45EFABFDC09C51EDB4514570146378AF461AF7866F
              B4FC0323C7BA2F671CAFEA31F8D7CCC41562AC0820E083DABEB2AF9E7E23E8BF
              D8DE31BAD89B60BBFF00488FD3E6FBC3FEFACFE95E6E614F45347DAF08632D39
              E165D755F93FD3EE392AD4F0EE8D2EBFAFDA69916479CFF3B0FE141CB1FC81AC
              BAF66F843E1DFB2E9D36BB3A625B9CC7064748C1E4FE247FE3BEF5C387A5ED6A
              28F43EA738C7AC0E12557ED6CBD5FF0096FF0023D22DADE2B4B58ADA04090C48
              1114740A0600A91D164464750CAC3041E8452D15F407E44DB6EEF73E68F17E80
              FE1BF125D5860F939F32063FC519E9F9723EA0D61D7B8FC58F0F0D47415D5A14
              CDC58FDFC75688F5FC8E0FE75E1D5E062697B2A8D743F5AC931FF5DC1C6A37EF
              2D1FAAFF003DCB3A758CBA9EA56D6300CCB712AC6BEC49C66BEA3B2B48B4FB0B
              7B38062282358D07B01815E31F08746FB678867D5245CC7651E109FF009E8F90
              3F21BBF315EA9E2ED6D7C39E11D53572406B6B7668F3DDCF083F162057A39751
              7CB7EACF91E2EC67B4C4470EB682BBF57FF02DF79F2CFC55D77FB7FE236AD708
              DBA0824FB2C5E9B63F94E3D8B6E3F8D3FE12DBD94BF11F4C9F50B982DED6D0B5
              C33CF2045CA83B793DF715FCAB8A666762CC4B331C927A93495F6DECBF75ECD7
              6B1F197D6E7D4BF16EF741D7FE1CEA5041ACE9B2DCC1B6E6144BA8D98B29E400
              0F276961F8D7CB54515387A1EC23CA9DC1BB9F51FC07D77FB53C002C247CCDA6
              CCD0E09E7637CCA7F561FF0001AF50AF98FE00EBBFD9DE389B4B91F116A50150
              3FE9A26597FF001DDE3F1AFA72BC4C6D3E4ACFCF5348BBA3C37F690FF907F87B
              FEBACFFC92BE7EAFA07F690FF907F87BFEBACFFC92BE7EAF5B01FEEF1F9FE644
              B73EBEF847FF0024B342FF00AE4FFF00A31ABB5AE2BE11FF00C92CD0BFEB93FF
              00E8C6AED6BC3AFF00C597AB345B0557BEFF00907DCFFD726FE46AC557BEFF00
              907DCFFD726FE46B35B8CF852BD43E01FF00C9491FF5E52FFECB5E5F5EA1F00F
              FE4A48FF00AF297FF65AFA5C57F065E8631DCFA8E8A28AF99360A28A2800AF0A
              F8933EADA3F8CAE160D4AF62B7B8459E3449D80008C1C007FBC0D7BAD797FC66
              D2FCDD334FD5117E686430B91FDD6191F9153F9D72E322DD26D743DFE1AAD1A7
              8F8C26AEA49AFD57E563CB7FB7F59FFA0BDFFF00E04BFF008D1FDBFACFFD05EF
              FF00F025FF00C6B3A8AF179A5DCFD37D852FE55F72347FB7F59FFA0BDFFF00E0
              4BFF008D1FDBFACFFD05EFFF00F025FF00C6B3A8A39A5DC3D852FE55F72347FB
              7F59FF00A0BDFF00FE04BFF8D1FDBFACFF00D05EFF00FF00025FFC6B3A8A39A5
              DC3D852FE55F722E9D6754624B6A57849EE676FF001A06B1AA29046A57808E84
              4EDFE354A8A5CCFB8FD8D3FE55F71EE3F09FC452EABA35CE9F773BCD7368FB95
              A462CCD1B7B9E4E0E7F315E855F3978075BFEC2F17D9CEEDB6098F9137A6D6EF
              F81C1FC2BE8DAF6B05579E9D9EE8FCCF89702B0D8D728AF767AAF5EBFE7F30A2
              8A82F6EE1B0B29EF2E5C24302191DBD0019AEB7A1F3F14E4ECB7387F899E319B
              C3F6D6B65A7CA12FE6712B11FC11A9CF3FEF118FA035D7685ABC3AEE8969A941
              F72740C573F75BA32FE0722BE70F106B53F8835CBAD4A7C8333FC8BFDC41C2AF
              E02BBBF845E2436D7F2E8370FF00BAB9CCB067B480723F103F4F7AF36962F9AB
              B4F67B1F6B9870FAA395C6515FBC86B2F3BEFF0077E8FB9ECB451457A47C48D7
              758A3691D82A282CCC7A003BD7CDFAE78B754D4F5CBCBC8351BC8619652638D2
              6650A9D14601F402BD7FE276B7FD93E109A18DB13DF1FB3A60F3B4FDF3F971F8
              8AF9FEBCBC7D57CCA08FBCE12C047D94F13515EFA2F45BFE3F91AD6BAB6BD7B7
              70DAC1AA5FB4D3388D17ED2FCB1381DEBE93D3AD0D869B6D6865794C31AA191D
              89672072493EA79AF16F84BA27F687895F5195330D826E19E8646C85FC86E3F8
              0AF73AD70107CAE6FA9E7F166220EBC70D4D25CAAEFD5FFC0FCC28A28AEF3E4C
              F2EF8EDE25FEC6F03FF6642F8B9D55FCAE0F2225C173FF00A0AFFC08D7CBB5E8
              1F193C4BFF000917C40BB8E29375A69C3EC9160F04A9F9CFFDF5919F402BCFEB
              E8F054BD9D157DDEA6527766FF0082BC3CFE29F1869BA4007CB9E606623F8635
              F99CFF00DF20FE38AFB4A3448A358E350A8A02AA818000E82BC2BF677F0DED8F
              52F12CE9CB7FA25B123B70CE7FF4119F635EEF5E6663579EAF2AD91705A05145
              15E79478CFC7DF078D434687C4F6B1E6E2C408AE401F7A12783FF0163F931F4A
              F9CABEECBCB482FECA7B3BA8C496F3C6D1488DD1958608FC8D7CE1E12F85138F
              8B773A4EA119934CD25C5C3C8CBC4E879887FC0BB8FF0065857AF81C528D2719
              FD93394753D47E0E7837FE115F07A5CDCC5B752D4B13CDB8619131F227E00E4F
              BB1F4AF45A28AF2EA547526E72EA5A560A64B1473C2F0CA81E3914ABA9E841E0
              8A7D15033E27F186812785FC5BA968EE0EDB7988889FE28CF287F1522B12BDE3
              F688F0DE1B4DF12C29D7FD12E481F5643FFA10CFD2BC1EBE9B0D57DAD252316A
              CC28A28ADC4145145001451450014514500145145001451450014514500156F4
              AFF90C597FD7C47FFA10AA956F4AFF0090C597FD7C47FF00A10A4F603EE8A28A
              2BE4CDC2BCF7E2E68BF6EF0DC7A946B996C5F2C47FCF36C03FAED3F9D7A15417
              B6915FD8DC59CEBBA29E368DC7B118359D587B4838F73AF018A784C4C2BAFB2F
              F0EBF81F32E81A3CDAF6BB69A6C390677C337F75472C7F000D7D37696B0D95A4
              36B6E8121850468A3B00302BCFFE19F83A5D0E6D42FEFA3C5C79AD6D0E47F02B
              61987D48E3D87BD7A357360A8FB38733DD9ED713664B158954A9BBC21F8B7BFF
              0097DE145145769F34326863B882486540F1C8A51D4F4604608AF99BC51A23F8
              7BC4577A6B64A46F9898FF00121E54FE5FA835F4E5719E36F05A789AFB49BA45
              1BE19D63B83D37404E4FE23B7FBC6B931941D585E3BA3E87877348E0B10E351F
              B925AFAADBFCBE658F875A2FF63783AD03AED9EEBFD264F5F9BEE8FF00BE76FE
              B5C37ED0DAEFD93C33A7E8B1BE24BE9CCB201FF3CE3EC7EACCA7FE035EC60050
              000001C003B579E78E7E13DAF8EB5B8F52BCD62EADFCA844291471A95500939E
              7B924FE95E860BD9D29C79B647898BAF3C4D59D596F2773E50AF7FF03FC13F0F
              6B7E0BD3354D59EFD6F2EE2F398452AAA8524EDC02A7F876D5AFF8672D23FE83
              F7BFF7E92BD8AC2CE2D3B4EB5B180621B689214FF754003F415E8E2F1CA514A8
              B39A31EE79A7FC33FF00837FE7AEA9FF00810BFF00C45787FC4DF09DBF833C67
              36976665366D1473406560CC548C1C9007F106AFB0EB82F1EFC2DD3FC7BA85A5
              EDCDFCF692DBC462CC48ADBD73919CFA127F3AC70D8D946A7EF65A0DC74D0F96
              741D565D0B5FD3F55873BED2E126007F1007247E2323F1AFB7EDE78AEADA2B88
              583C52A07461DD48C835E33FF0CE5A47FD07EF7FEFD257ABF87B48FEC1F0FD8E
              93F697B95B48842B2C80062A385C81E8303F0A78EAD4AB59C1EA8514D1E41FB4
              87FC83FC3DFF005D67FE495F3F57D83E3FF87B69E3F82C62BABE9AD05A33B298
              9036EDC075CFD2B87FF8672D23FE83F7BFF7E92B7C262E953A4A327A8A516D9D
              AFC23FF9259A17FD727FFD18D5DAD64785F408BC2FE1BB2D1619DE78ED54AAC8
              E002D962DCE3EB5AF5E5D59294E525D596B60AAF7DFF0020FB9FFAE4DFC8D58A
              64D189A09222701D4AE7D322A16E33E0FAF50F807FF25247FD794BFF00B2D773
              FF000CE5A47FD07EF7FEFD25745E09F84161E09F100D5EDB55B9B993C968BCB9
              235030D8E78FA57B55F1B4674A514F568CD45DCF48A28A2BC4340A28A2800AC4
              F1769275BF0A6A3608BBA5788B443D5D7E651F89007E35B74529454934FA9A51
              AB2A3523523BC5A7F71F36FF00C209E28FFA025D7E43FC68FF008413C51FF404
              BAFC87F8D779E39F8CB2F827C51368D27873ED4AA892473FDB76798AC3AEDF2C
              E30723AF6AE73FE1A4FF00EA53FF00CA8FFF006AACA3914E494A37B3F347D47F
              AE589FE48FE3FE6637FC209E28FF00A025D7E43FC68FF8413C51FF00404BAFC8
              7F8D6CFF00C349FF00D4A7FF00951FFED547FC349FFD4A7FF951FF00ED555FD8
              153B3FBD07FAE789FE48FE3FE6637FC209E28FFA025D7E43FC68FF008413C51F
              F404BAFC87F8D6CFFC349FFD4A7FF951FF00ED547FC349FF00D4A7FF00951FFE
              D547F6054ECFEF41FEB9E27F923F8FF998DFF08278A3FE80975F90FF001AC9D4
              74CBDD26E8DADFDB496F3ED0DB1C60E0F435D7FF00C349FF00D4A7FF00951FFE
              D55B5F1096DBC53E0DD1FC6360BF2346A2419C9556EC4FFB2F95FA935CB8CCA6
              787A7CEFF43D1CAB8A6A62B151A15A292969757DFA7F91E575F4978235BFEDEF
              09D95DBB6E9D17C99FD77AF049FA8C1FC6BE6DAF4BF83DADFD9B58B9D1E56C25
              DA799103FDF5EA3F15CFFDF35C782A9C952CFA9E8F13E0BEB1827522B586BF2E
              BFE7F23DA2BCABE2F7897CB8A2F0FDB3FCCF896EB1E9FC2BF9F3F80AF47D6755
              B7D1348BAD46E4E22810B11FDE3D80F72703F1AF99352D42E356D4AE2FEE9B74
              F3B9763D867B0F61D2BB31D5B961C8B77F91F37C2D977B7C47D666BDD86DEBFF
              00037FB8AB535A5D4D65770DD5BB949A1712230EC41C8A868AF1CFD19A4D599F
              4FF8775A8BC41A0DA6A516079A9F3A0FE071C30FCEB52BC57E127893EC3AAC9A
              25C3E20BC3BE1C9FBB281D3F103F302BD6F5BD523D1744BCD465C6DB788B807F
              89BB0FC4E07E35EF50ACAA53E77D373F25CD72D9E131AF0F05A37EEFA3DBFC8F
              15F8ADAD7F69F8ACD9C6D982C13CA1E9BCF2C7F90FF80D70B524F3C973712DC4
              CC5E595CBBB1EE49C935B1E0FD14EBFE28B2B12B984BEF9BFEB9AF27F3E9F8D7
              8D26EAD4BF56CFD36853A797E0D45FC305AFCB57F79ED7F0EB44FEC4F07DA875
              C5C5D7FA44BEBF37DD1F82E3F1CD75940000000C01457BF08284545743F23C4E
              22588AD2AD3DE4EE145145518192DE17F0FBB166D0B4C6627249B48C927F2A4F
              F8457C3BFF00400D2FFF0000E3FF000AD7A2AB9E5DC086D6CEDAC6DD6DECEDE1
              B78572563850228CF2781C54D451520145145001481143970A3710016C7240E9
              FCCFE74B450014514500145145004177676B7F6E6DEF2DA1B884904C73207524
              74E0F158D73E06F0A5DB869FC39A5B951807ECA83F90AE828AA52947660733FF
              000AEFC1BFF42CE97FF80CBFE147FC2BBF06FF00D0B3A5FF00E032FF008574D4
              557B59FF0033FBC564733FF0AEFC1BFF0042CE97FF0080CBFE147FC2BBF06FFD
              0B3A5FFE032FF8574D451ED67FCCFEF0B2399FF8577E0DFF00A1674BFF00C065
              FF000A3FE15DF837FE859D2FFF000197FC2BA6A28F6B3FE67F78591CCFFC2BBF
              06FF00D0B3A5FF00E032FF00851FF0AEFC1BFF0042CE97FF0080CBFE15D35147
              B59FF33FBC2C8E67FE15DF837FE859D2FF00F0197FC28FF8577E0DFF00A1674B
              FF00C065FF000AE9A8A3DACFF99FDE164733FF000AEFC1BFF42CE97FF80CBFE1
              47FC2BBF06FF00D0B3A5FF00E032FF008574D451ED67FCCFEF0B2399FF008577
              E0DFFA1674BFFC065FF0A3FE15DF837FE859D2FF00F0197FC2BA6A28F6B3FE67
              F78591CCFF00C2BBF06FFD0B3A5FFE032FF85393E1F783E391644F0D698AEA41
              5616EB9047E15D2514BDACFF00998590514515030A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2803C17F68DD1BFE40DAE22FF007ED256FF
              00C7D07FE8CAF06AFAF3E2DE8BFDB7F0D7568D5774B6C82EE3F6319C9FFC7770
              FC6BE43AF7F2EA9CD46DD8CA6B50A28A2BB890A28A2800AF77F81DABC5AE7873
              59F04DFBE54C6D35BE79C2370F8FA31561EEC6BC22B77C1BE2293C2BE2DD3B58
              4C948251E6A8FE28CF0E3F227F1C573E2A8AAD49C0BA73709A945D9A3AABDB49
              AC2FA7B3B85DB3412346E3DC1C1A934CD425D2B54B5BF80FEF6DE55917DF07A7
              E3D2BB7F8AFA4C716B36BADDA157B5D4A20DBD7905C01CFE2A54FE75E7B5F9CD
              583A551C7B1FB3E0B130C7612357A496BF9347A3FC4FF1845ACFD8F4DD3E5DD6
              8116E25607EF330CAA9FA03F99F6AF38A28A556A3A927265E07054F05423429E
              CBF11D1C6F2B6D8D19DB04E1464E00C93F90269B5EB5F08FC30AD14FAF5DC419
              5C182D830C823A3B7FECBF9D70BE34F0F3786BC4B7164A0FD99FF7B6EC7BA1E8
              3F0391F8554A84A34D547D4E6A19AD1AD8D9E0E3BC57DFDD7CB4FC7B18704F2D
              ADC45710B9496270E8C3AAB03906BD1BC79E378F5DF08E936F6EC165BAFDEDDC
              6A7EE14E36FD0B648FA0AF35A2A6156518B8AEA74623034ABD6A75A6B583BAFE
              BD75F9057B27C1DD13C9D3EEF5A957E7B86F26127FB8BF78FE278FF80D7905AD
              B4B7B770DAC0BBA699C468BEAC4E057D43A3E9B168FA3DA69D0FDCB788267D4F
              73F89C9FC6BAB014F9A7CEFA1E0716637D961561E3BCDFE0BFE0DBF12ED14515
              EC1F9C8514514005212141248007249A5AE0FE20F9DAC6B3E1CF08A4F2C36BAB
              4D2C97C616C3341126E2848E406240ABA70E795819D7DAEB1A5DF5C35BDA6A56
              77132E774714EAEC31EA01CD5A9668E089E59A448E341B99DD800A3D493D2B86
              D6FE18692D6304BE17B5B5D1B59B49925B6BC8908C608DC1F1CB02B91835535E
              B28FC6DF12A3F0E5F977D1B49B35BCB9B60C55679DDB081B1D405E6B454E12D5
              3D3A8AECEF2CB54D3F520E6C2FAD6E8270C60995F6FD706A53776C2E85A9B888
              5C11B8445C6F23D71D6BCCFC75E18D33C15A7DBF8C7C39691E9B75A54F19B88E
              DBE44B9819C2B46C071DC1CFB7D318DE3591AC3E315B788E37223D321B269C8E
              9E44B249139FFC7C55C68467AC5E9AFDFDBF115EC7B3CF3C36D0B4D3CA9144BD
              5E460A076EA6A1B9D4AC6D115E7BB8230EBB937CAABBC7B64F35E73F1BA57B9F
              0BC7A444C4798935ECF8FF009E50A6467EB234759FADC1A05CEBBE048FC4AD64
              34EFEC694B1BC90247BB6458E490334A1414A2A4DEF7FC06D9DE78535AB9D434
              F57D62EF4F5D42E24778ED2DE552628FF850E18EE6039247F4AD79359D2E291A
              39352B347525595A750411D4119AE53C3DA4FC358F5A825F0F1D09F538F7345F
              64BA47907041200627A135C8785B47F046A1A978BA5F12A694D7A3C4778A86F2
              6547F2F2A4601238C96FD69BA71936F55F215CF62B7B982EA2F36DE68E68F38D
              F1B8619FA8A82F756D374D655BED42D2D59FEE89E654CFD326BCCBC273691A17
              8DBC5ADE1B78DBC3B6BA7A5C4EB1485A14B850490872472A0E79EBF4ABBE08F0
              5697E20F0DC3E22F145843A9EAFABAFDA6596E46F088DF71507450171D2A6546
              31BB93D34F5D4773D20CF0ADBFDA1A58C43B77F98586DDBEB9E98A72BA3C6245
              65642370607208F5CD79AEA5E19B8F0A7C30F18E9FF6CF3B4C30CF2E9F1124B5
              BC4CBFEAF27B039C555D4965D7ADBC09E0E32CD1585FE9EB737ED136D678A389
              7099F42C79FC285453D53D3F4B5C2E7A45A6B3A5EA1334365A959DCCAA325219
              D5D87E00D5EAF38F17FC3BD12C7C3173A9F876C62D2B57D3233776B736AA55F2
              83254E3EF6E008E7D6BB5F0F6A9FDB7E1CD3354C2A9BBB58E62ABD14B28247E0
              722A2708F2F345E804D2EAFA6412B4536A3691C8A70C8F32820FB826ACC52C73
              C4B2C322491B0CABA36411EC45799787BC1FE1EF11789BC6171ABE956F79347A
              B1447941242F96871F99353F86ECA3F05FC50B9F0C69ED22E8DA8D87DBE0B62E
              5960943ED60B9E40239EBE9572A51D527AA570B9DD1D6F490483AA59023B7DA1
              3FC6AD5BDCC177179B6D3C73479C6E8DC30CFD4578C782B4DF8653F84ED25D7A
              4D006A8CF379E2EAED124CF9AF8DC0B023E5C7E15EABE1BB3D0ACB468D7C38B6
              834D9199D1AD1C3C6CD9C3104120F231F852AB4E30BA57FB813B9A2F756F1DC2
              5BBDC44B3B8CA465C0661EC3A9E94F9668E089A59A448E35196776000FA935E3
              3F13CCB69F1374DD6E22D9D1B4D8EF9D57AB20BA5471FF007CC8D5D27C62B86B
              8F04BE976F27CD7CB2CAC57FE7941134EC73E84A20FF008153542FC9AFC5F805
              CF43491258D648DD5D180656539041E841A892F2D65B63731DCC2F6EA0932AC8
              0A803AF3D2B80BBD61F44F80B6173067ED5268D6B6F6E17A99248D1171EE3767
              F0AABE01D1A1D0351F10FC3FBE5F3ECDA08AF21590E44B1C881251F4DE31F8D2
              F63EEB95F6FE9FE6173D07FB7348FF00A0AD8FFE0427F8D48DAAE9CB024CD7F6
              A227242B99976B11D4039E6BCAF5AF01F85ADFE28F85F4D8B44B54B3BAB7BB69
              E100ED72AA0A93CF6A7FC42D0FC39A45F78274D96D6CED344FED094CD1C8DB22
              00A824924F033EF56A8C1B8A4DEBAEDEBE7E42BB3D39359D2E49151352B36762
              02AACEA4927B0E69F3EABA75B4CD0CF7F6B14ABD52499548EFD09AE274CD17E1
              4B6A96BFD987C3B25FACAAD6EB05DA33EF0723680D92722B0574CF09EA3F16BC
              6FFF00094269CDE5FD83ECFF006C9427583E6DB9233D173F85254A2DBDF457DB
              CD21DCF59B6BCB5BC566B5B9867553826270C01FC29D14F0CFBFC99524F2DCA3
              EC6076B0EA0E3A1F6AF2CD06DB40D37E2FDB5B7839A0FB1C9A6487528ECE4DF0
              A90C3CB270480D9FD3EBCECFC3160ABE34662028F145F1249E00F92A67454536
              9F60B9DD2DC42F3BC09346D2C60178C302CB9E991DA95E68A396389E545924CE
              C52C016C0C9C0EFC578D7856EA683C53A778DA566FB2F89F50BAB27DC3EEA702
              D87E7091FF0002AECFC51FF252BC07FF005D6FBFF49CD3950E5972DFA3FC2FFE
              4173AABDD574ED3367DBEFED6D37E7679F32C7BBE993CD588A68E78925864492
              371B95D1810C3D411D6BC8B77841BE24F8921F1CA5BFDBE49A3FB01D487EE4DB
              6C1B7613F28E739F7F7CD76DE0BF0D2F86CEA6B637D1CFA1DDCCB71A7C084B08
              011F380D920A938231FD694E94631BDF5FC1FA02674973776D6681EEAE218149
              C0695C2827D39AAE9ACE97248A89A959B3B101556752493D8735C57C548F4C9A
              5F0AC7AC9B71A736AC05C1B870B1EDF2DFEF1380053B4CD17E14B6A96BFD987C
              3B25FACAAD6EB05DA33EF0723680D92722854A3C8A4EFF00705CEF5278649A48
              52546962C7988181299E46476CD25C5CC16B179B713470C79C6F91C28CFD4D70
              FE14FF0092B5F10BFEE1BFFA21A97E2DADB3F84ECD2F7CBFB236AB6826F30E17
              6799F364F618CD2F65FBC50BEF6FC55C2FA1A9A7788A5B8F10EA66EEFB4D8349
              8B64566BE7219666C02F2121B85CF006327935B936ADA75B4AD14FA85AC522FD
              E4799548FA826B828744F83F24D1C70B7865E56601152F6324B13C0037F2697E
              29F847C3F278475FD75F4AB76D505BEFFB51077E46003F9002AF92129A8EAAFE
              5FF042ECEF23D5B4D98B08B50B472AA5885994E00EA7AF4A67F6E691FF00415B
              1FFC084FF1AE224F06F87748F879A86A761A45BDBDEB68736E9901DC774073F9
              D62784340F8673F82B489F548F43FB6B59A35C19AE555F76DE770DDC1A152834
              DDDF6DBFE085D9EB925CC115BFDA249A348700F98CE02E0F439E94F791238CC8
              EEAA8A32589C003D735E12ECC7F679F1324524B26991EA0E9A63C99CB5A89E3D
              879F7DD5D8F8A211E29F1C687E0FB99641A5AD8B6A57D0A395FB400C1234623F
              8770248FFEB1A1E1ECF57D5FE16FF30B9DDD96AFA6EA4EE963A85A5D320CB082
              6572BF5C1E2A7B9B9B7B381A7BA9E28214E5A495C2AAFD49E2B8BD43E1BE9F6F
              A8E93A9F85E0B6D1EFACAE95E47894AACD07F1C6C17AE462B39F4AB7F1EFC49D
              620D691E7D234010C56F66CC4472CD22EE67603AE380054AA707AA7A2DFB85CF
              41B3D42CB5188CB63796F7518382D04AAE01FA83497BA95869A8AF7F7B6D6AAC
              70A6795501FA64D79DF88B40B0F02788342F12787EDD2C2196F63D3F50B7806D
              8A5864380C40E015383F9550D524F0C0F8AFABC5E3B4836BC300D21AF87FA3F9
              5B7E7C13F283BF3CB7A55468C65AA6ED6F9FF5FA05CF58B7B882EE049EDA68E6
              85C65648D832B0F623AD2CB3C301412CA919918226F603731E807A9F6AE57C1D
              E1AB6D0750D56E746BD85F40BF31CB6D6B0BEF486400872A72461B8E9E9ED543
              E25FFC7DF82BFEC63B5FE4D59AA69CF953D02FA1DCCF3C36D1196E258E28D7AB
              C8C140FC4D54FEDCD23FE82B63FF008109FE34FD534AB0D6F4F92C352B58EE6D
              24C178A4E8D8208FD40AF2CD3BC07E1697E2C6B7A649A25AB5941A7C12C70907
              6AB1272473DE9D384249B937A033D524D574E8563696FED51645DC85A650187A
              8E79152DB5E5ADE2B35ADCC33AA9C13138600FE15E71A9F85342BEF8A1A4E8D7
              5A6412E9D6FA14861B76076A1132818FC09FCEA1D7BC3FA77C3DF12F8775DF0F
              C3F6182F2FD34DBFB68D8F9732480ED6DBEAA4678F6AA54A0EC93D585CF4F9EE
              21B688CB3CB1C518EAF230503F1352579EFC46B2FF0084A754D13C1AAE563BC3
              35DDD30FE08E342109F62EEBFF007CD6DFC3ED664D6FC13A75C5CF1790A1B5BA
              53D44B19D8D9F738CFE350E9DA9A9FF5FD68C2FA9D3D1451590C28A28A0028A2
              8A006C91A4D1BC7222BC6E0AB2B0C8607A823D2B9C6F09F81D58AB787FC3C083
              820D9C3C7E95D2D7CA7F1B7C3BFD87F1067BA8936DB6A6A2E931D379E1C7D770
              DDFF000215D584A5ED67C9CD6264EC7D0DFF0008AF81BFE801E1DFFC0383FC28
              FF008457C0DFF400F0EFFE01C1FE15F19515E87F67CBFE7E3FEBE64F3F91F66F
              FC22BE06FF00A007877FF00E0FF0A3FE115F037FD003C3BFF80707F857C65451
              FD9F2FF9F8FF00AF9873F91F66FF00C22BE06FFA007877FF0000E0FF000A3FE1
              15F037FD003C3BFF0080707F857C65451FD9F2FF009F8FFAF9873F91F63F8C74
              1B5D67C113D969F1C205AA092D638000AA5070AA0703E5C8C7BD7CF15D27ECFF
              00E2BFB06BD73E1CB893106A03CD832785994723FE04A3FF001D1478EF43FEC1
              F16DE5BA26DB794F9F07A6C6E703E8723F0AF99CE308E8D44CFBCE0FC75D4F0B
              2F55F93FD3F139BAD0D13499F5CD66D74DB61FBC9DC2E71F757A963F419359F5
              ECDF08FC37F65B0975DB98F135CE63B7CF68C1E4FE247E43DEBCBC3D2F6B5144
              FA6CDB1EB0385956EBB2F57FD5CF44D3EC60D334FB7B1B54D904081107B0FEB5
              C8FC4FF0E0D6BC36D790A66F2C332AE3AB27F1AFE5CFE1EF5DBD046460D7BB3A
              6A70707B1F95E1717530F888E222FDE4EFEBDFEF3E4CA2BA7F1E7870F873C4D3
              C31A6DB49FF7D6E7B053D57F0391F4C7AD7315F3D38B849C5F43F61C3D786229
              46B53DA4AE7A07C25D0FFB43C4AFA8CAB986C1370CF4323642FE4371FC057B9D
              729F0EB44FEC4F07DAABAE2E2EBFD225CF5CB741F82E3F1CD7575EE6169FB3A4
              97567E5B9F637EB78E9C93F763A2F97F9BB8514515D078C1451450015E7DE3E9
              D740F16784FC553656C6DA696CEF64C1211265C2B1F4018649F7AF41A8AE6D6D
              EF6DA4B6BA8239E0906D78A550CAC3D083C1ABA73E595D899CB78BFC7367A0F8
              7D6EB4D9ED6FF51BA648EC2D63903FDA1D980180A724739C8AC5B8BD5F0AFC57
              4D475731DBD96BBA7C701B966C4715CC7FC058F0011D3279AE9349F00785342D
              47EDFA6E876B05D0CED97058A67FBB9276FE18AD8D4F4AD3F5AB17B2D4ECE1BB
              B67E4C7320619F5F63EF5AA9D38E8968F7FEBC82CCE1BE28EA969AB6851F846C
              278EE755D6668A28E285C318D03ABB48D8E8A029EBFD0D41AB68C9AE78F3C51A
              3919FB4F87228909ECDBDF69FC0E0FE15D8685E0DF0EF865DE4D1F48B6B595F8
              69554B3E3D371C9C71D338AD45B0B44D424BF5B78C5E491889E60BF3B20390A4
              FA024D0AB462B961FD3D3FC82C78A9D525F157823C51AECEAD9B2D0A1D3013DE
              6DA249FF00F1E283FE035AFA9DBE8B75E22F01C7AFAD93587F634A48BC2A23DD
              B22C7DEE335E949A0E931E9F75609A75B2D9DD3B3CF088C04959BEF161DC9A87
              51F0AE81ABC76D1EA3A459DD25B26C816688308D78E067A0E07E557F588DF456
              5AFE56158C9D16C7C0163AA452E8ABA0457E72919B578BCC39EA060E6B92F077
              837C3DE263E347D634AB7BA98F892F611332E2455CA90158723924FE35DDD9F8
              23C2DA75E457967A069F05CC4DBA3963814329F506B5ACF4EB2D3BED1F63B58A
              0FB4CCD713796A0799237DE73EA4E07351EDAC9F2B7763B1E73E07B75B5B0F10
              7C37BF8E18EEAD23758A448C462EADA55C2C876F5619018FB8EA735A3F0CFC49
              60DE0CB6D2EF6EE1B6D4B474369796F3B8468FCB3B7241C7CB8039FAD764FA56
              9F26AB16A8F670B5FC519892E4A0DEA873F2E7AE393C7BD646B5E02F0B7886F4
              5E6A9A2DB5C5CE3065C1466FA95233F8D375613BF375D7E7FF00042C729ABF8A
              65F157813C773C30C5FD916D0C96F637299CDC6D4F9DB3D08DDD08AAD7732F87
              AE7E1FF8A6E32BA6A69CB617B363884491A98D8FA0DDD4FF008D7A50D234E5D2
              4E92B636EBA718CC5F6558C08F61EA36F4C548FA7594BA77F67C9690BD979623
              FB3BA029B0701769E31C0A1568AD12D3F4B5BEF0B1CA78FF00C59A6E9DE0BBE1
              05E4371797F6ED6F650C1207799E41B54A807903766B77C2DA49D0BC29A5696D
              8DF6B6B1C4FB7A170A371FCF354F48F01785741BF37DA66876905D7389429664
              FF007724EDEBDB15D1D67394797960079E784759D2F4DF1178CA3BFD4ACED646
              D60B2ACF3AA123CB4E4027A547A45E5B78AFE30DC6B1A5CCB71A6E93A67D8DAE
              62394926772C42B74202FA7F5AEA2F3C11E16D46F25BCBCD034F9EE656DD24B2
              40A598FA935ABA7E9B63A4D9ADA69D6705A5B2F22282308A0FAE077AB95586AD
              5EED582C794F8134BF87F71E0EB3975987406D419E6F38DD34424FF5CF8DD939
              E98FC2BD3B425D1A2D2D20D04D9FD82166545B36531A127711F2F00E5B3F8D66
              37C3DF073B166F0D696598E4936CBC9FCAB5F4AD1F4DD0ED4DAE9763059DBB39
              731C08154B1001381DF81F9515AA467769B04AC719ACE9D16AFF0015E7D367FF
              005577E159E16E3A069D467F5AE434FBE9FC43E15D6E5BA53BFC3DE16B8D3640
              DD7ED2CAE243F5DB0A7FDF55ED1F60B43A88D47ECF1FDB4426013EDF9FCB2776
              DCFA64038A81344D2E282FA18F4FB658B50676BB41180272E30C5FD723AD38D7
              495ADDBFE08AC7935EC17BE25D33E1BF8534DBD1673269B06AB35C1884BE508E
              2511928480C0B923078E9D6AEEA3A5F887C23E32F0EF8975BF128D66192E3FB3
              266FB025B7951CA0ED24A1E40700F3D3F1AF4CB4D174CB1B94B9B5B0B78674B7
              5B559123019615FBA80FF746071536A1A7596AB66D697F6B15CDBB104C72A865
              241C838F62053FAC6B64B4D7B5F50B1C5F883FE4B1F83BFEBD6F7FF401543E29
              C5A7CDE22F0547AA8B76B16BF904C2E0811EDD83EF678C57A1CBA7594FA85BDF
              CB6B13DDDBAB2C333282D186E1803DB355F56D0348D7A38A3D5B4EB6BD488931
              ACF1870A4F5C66A61552945F656FCFFCC7639CD3F4EF86F67A84171A7A78722B
              C471E4BC32441C37418C1CE6B0B4EF0D68BE22F8AFE3D5D634CB6BD110D3C47E
              7264A6E80E707B6703F2AEBA2F007846099268BC39A62491B06465B750548E41
              15B5069D656D7D757B05AC51DD5DECFB44CAA034BB061771EF81C0A3DB257E56
              EED5BF14C2C79DF81EDE0F02F8CF51F05BC5125BDD8FB769771B4079539DD13B
              75665E719C9C03ED5851EAD2693E01F88AD6F937777E26BCB3B755EAD24A5106
              3DC024FE15EBD75A569F7D796B7975670CD7368C5ADE57405A227AED3DB38150
              7FC23BA37FD032D7FE3F3EDFFEA87FC7C7FCF5FF007FDFAD52AF1BF3496AED7F
              97F98AC797EB1F0E7C5F65E063669E335B9B7D32159EDEC574A8D3E7886E50B2
              03BB391D7BF7EB5B93EAF16BFE28F867AB438D976B772E07F0936C723F0391F8
              57A3F5ACDB6F0FE9164B64B6DA6DB422C4B9B509181E497CEFDBE99C9CFD697D
              63997BDBEBD96EAC3B1CA5AEB5A078BF51D5FC3FE29B1D356FF4EBC78E2B6BA0
              0978B194913773C8E4E3A7E354BE1B5BD95878ABC55A7F87EE3CEF0E42D01802
              CA648E39CA9322A31CE474CF27B575BAF7837C3BE279239359D26DEEE58C6164
              6055C0F4DCA41C7B74AD0D2F48D3F44B15B2D32CE1B4B653911C281467B93EA7
              DE93AB1E4718DF5E9D02C717F13E2D3E6BAF09C7AA8B76B16D5C0985C1023DBE
              53FDECF18ABBA7E9DF0DECF5082E34F4F0E45788E3C9786488386E831839CD74
              BAB687A5EBB0241AAE9F6F7B1236F449E30E15B18C8CF7C1359717803C2304C9
              345E1CD31248D83232DBA82A47208A1548F228B6D7A058E6B42D574ED33E2D78
              FBEDF7F6B69E67F676CFB44CB1EEC40738C9E7191F9D49F12EFF0049D57C2566
              D1DE59DDD97F6BDA24EC92ABC617CC1B831070063AE7B5751A87833C33AB5F49
              7BA86856175752E37CD2C0ACCD8000C93EC00FC2953C1DE1B8F4C934C4D0EC16
              C65904AF6E211B19C70188F5A7ED61CCA7ADD5BF0560B33022D2BE17C1324D14
              5E18492360C8CB2420A91C8239AB9F13C86F863AF904106D090477E4558FF857
              7E0DFF00A1674BFF00C065FF000ADEBAB0B4BEB192C6EADE39AD645D8F0BAE55
              97D08F4A97523CD195DBB770B1CEEABFF249EF7FEC0727FE8835C569BF0CF43F
              117C28D2A6B5D3AD20D69AC639E1BA118CB4C1411BFB3293C1041EB5EB0F676D
              258B593C08D6AD1989A12BF294231B71E98E296D2D2DEC6D22B4B48521B78542
              471A0C2AA8E800F4A235DC17BBBDEE163C97C47E218BC47FB3E6A730823B6BAB
              658AD6EED51428825499032851D07703D0D6C6BF3C5E1AF89FE1FF0011DF308F
              4EBDD39B4A96E1CE1207DDE62163DB3C8CFB1F4AECDFC35A24B15FC4FA55A347
              A83892ED0C4313B0390587739E6ADDFE9B63AA58BD95FDA43736AE30D14A8194
              FE06ABDB4568969AFE29058E6FC53E348F4B7D36C3467B5BFD6351B98E382DB7
              EEFDD93F3C8769E14283CFF3C1AC9D3B50B7F0B7C54D7AC753956DADF5D586EE
              C26970A8EEABB244DDD3767071FE233D2685E07F0CF86AE5EE748D1EDEDAE186
              D328CB381E80B1240F5C75ABFACE83A57886CFEC9ABD841790750B2AE4A9F507
              A83EE2929D35EEA5A3DFB86A715E3DD4AD35FD5F40F09584C977753EA315CDDA
              42C18456F11DCC5FD33C6077FE7746BFA2F883C45ACF853C5167A7096CE6536B
              15D6089E265043AEEFE2F5C5745A1785B42F0CC4E9A36976F67E67DF68D7E66F
              AB1C923EA69BAF784F41F13AC6359D2EDEF0C7C23B821947A061838F6CD1ED21
              A475B2EBD6FDC2CCE2FC0F67A6E91F12B5DD37C313EFD096CE396E22490C9141
              765C8DAA727AA8248FC3B605DF8A33456F2F83A69E448A28FC456CCEEEC15540
              0F9249E82BB0D1B42D2FC3D622CB48B186CEDF3B8A44B8DC7D49EA4FB9A5D574
              4D2F5DB64B7D56C2DEF6147DEA93A0701B046707BE09FCE87593AAA6FF00E085
              B41B6DE20D16F6E12DED757B09E77FBB1C5728CCDC67800E4F15C9E93FF25B7C
              43FF0060BB6FE66BA0B0F05F8674ABE8EF6C342B0B6BA8B25258A05565C820E0
              FD0915A69A75945A8CBA825AC4B793208E49C28DECA3A027D05473423751EA80
              E3355BFB3D3BE32584D7D7705AC47429543CF204527CE4E324F5E0D50F196ADA
              778B7C45E17F0DE917905ECC9A947A85D35B481D618A2049DC464027381F87A8
              AEDB56F0C685AECD1CDAB693677B246BB51E7883951D70334FD27C3BA368224F
              EC9D2ACEC8C9F7CC10AA16F4C9039AB5560ACF5BA4163CF63D335FF16F8FBC41
              ADE87E241A3C560E3488DFEC2972640803C83E7236E1DBB75FC2A5F012DE784F
              C73E22F0C6AFA8ADDB5D20D622BA30880485B895B68385E71D3FBA4D7A358E9D
              65A642F158DAC56F1BC8D2B2C6A1433B7258FB9A64FA469D757F1DFCF6504977
              1C6D124CC80B046EAB9F4393C5375EE9C5AD2DE57D02C4F69776D7F6B1DD59DC
              45716F20CA4B0B87461EA08E0D4D55ECAC6D74DB28ACECADE3B7B6886238A35D
              AAA3D8558AE776BE830A28A2900514514005796FC77F0EFF006BF8186A71266E
              34B97CDC81CF94D8571FFA0B7FC06BD4AA0BEB38351B0B8B2B94DF05C44D148B
              EAAC3047E46B4A351D39A9AE826AE8F84E8AF6B6FD9CB55DC76EBF65B73C6616
              CE293FE19CB57FFA0F58FF00DFA7AF7FEBB43F98CB959E2B457B57FC3396AFFF
              0041EB1FFBF4F47FC3396AFF00F41EB1FF00BF4F47D7687F3072B3C568AF6AFF
              008672D5FF00E83D63FF007E9E8FF8672D5FFE83D63FF7E9E8FAED0FE60E5678
              ED85F5C699A8DB5FDAB94B8B695658DBD194E47F2AFA43C706DFC65F0F74AF17
              58A8CA20328072555B8653EBB5C63F3AE47FE19CB57FFA0F58FF00DFA7AF48F0
              07C3FD43C2DE1BD4B40D56FEDEFAC2EC931AC6854C7B970E39EC7823D0E7D6BC
              DCD1D0C4D1B465A9DF96E2A583C542BAE8F5F4EBF81E47E19D0E5F116BF6BA6C
              590B2366571FC083EF1FCBF5C57D316D6F15A5AC56D02048624088A3A0503005
              717F0E7C1D2786ADEF2E2F547DB6695A207D2253818FF788CFD36D7735E160E8
              FB385DEECF678933358CC4F253778436F37D5FE8145145761F3A71FF0011FC37
              FF000907865DE14CDE59E668B039618F997F11FA815E33E0ED10EBFE29B2B165
              CC3BFCC9BFEB9AF27F3E9F8D7D2D5CB7873C1B6DE1ED7F57D461DBB2ED808107
              FCB243CB0FFBEBF402B8ABE1BDA558CBEF3E9B2ACF1E130556837ADBDDF57A3F
              BB7FBCEA4000607028A28AED3E6428A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2B8CF89379AAE8BE1
              5BCD734BD5EE2D65B658C080450BC6DBA40A49DC85B386EC71C0E3AD5463CCD2
              2652E5573B3A2BCFFC1B71ABEBFE09B0D6B51F165F5B4F72CC876456AB1EEF35
              A35037424E490A319E49AD3D3F55BFF0DE87AE5D78AF507B98EC2ED84372D02C
              5E6C4638CA050A00277315FAE476AA74DA6D5F512A89A4EC75B45707E12D5F5E
              F1CD8CFABBDE3E8FA734C52D22B58E3795D578259A4561D78E1474FCE2D57C67
              7DE0AF14D9E9BAFCC977A4DF2FEE6FB6049626070DE6018523907200EBD28F64
              EFCBD45ED15B9BA1E8345719E3D7F12430D8C9E19D56586EEE6530ADB98A178D
              F6C32CBC1642771F2C0FBD8F6EF55FE1EF8D1BC5FA24D617933DB6B96A863B82
              1155CF6122A91B739EA3180474C1028F66F97987ED173729DDD15CA68D69AC4F
              A9EB315CF89AFE58ACEE7ECD12F916CBC3411B862445C9064E3B7CA3208C8AE3
              06BFE25FF85C5FF0881F11DD9D3FFE7A8B7B6F37FE3DFCDEBE563AF1D3A538D2
              72BD9ECAE27512B5D6FA1EBD4571BA9DAF886D2EECA6D2FC4D777D143A8410DF
              DAC96F6EEC23664DDCA460AE15831FF64E722BB2A871B75293B8514560F89BC4
              91E829696F0C62E353BF9441676D9237B1C659880708B9049A4936EC86DA4AEC
              DEA2B1359D7ADFC29E1FFB76B17066753B008D0069A439C222FF009E0649EA6A
              2D2A3F11EA0915E6A973169AAC5641616B1ABB28EA5249181CE7A1DAAB8E707B
              D3E576B8B9B5B1D0515E71E32D4BE20436977ABE8CB6765A5D91673148A1AE26
              44277390C0A8520120021B1EFC56CF827C4D75E34F06ADF8DB697CAED0BB04DC
              9BD707201EAA411919EE4678CD53A4D4798955139729D751585E1AF1247AF457
              504B18B7D4EC25305E5B673B1C71B973C9438241ADB762B1B32A172012146327
              DB9A869A7665A69ABA1D45798F8FB5DF18F8523B0D621D42D24B69AE440DA6A5
              A83CB29201724B37DD3C8DBCF6AECF50D43587D0ED5F4AD3D46A7768B84B9388
              ED895DC4C84761D3033938ED9356E9B493BEE4A9A6DAEC6DD15E49A678CFC5FA
              07C41B6F0DF8ACDB5DA5F32F952DBA01B439C295C004AEE041DC33D4E78E773C
              77E39B9D03C41A2E8363E5C32EA12279D772A6E10C6CFB32A3A13D4F3D31D39A
              A7465CC97727DAC6CD9DFD15C46A7AF6A3E16F15F87F4B9EF25D4ED3567788B4
              D12096270570C0C6AA0AFCDCE4700139AC2F145D7C51B9F12DEFFC231195D262
              611C476DB8DC428DC7F79C9F9B70F4E2946937D521BAA97467AA515E7BF0DAFB
              C637D7DAC278A6EF7FD8DD2058424236C846E6E631CE015EFDEBD0AA271E5762
              A12E6570A2BCCBE2778FF5DF089B682C6C2DE25BADFE5DD4CFE631DB8CE10703
              EF290493D7A57A5C8CCB1B32A1760090A08058FA734E50714A4FA829A6DA5D07
              515E696FE3DD72E3E2DDBF8567B2B6B3B542FE6AAB798EFF00B96914EEE001F7
              4E00FC4D7A15FCD7505A3BD95A0BAB8C1D911944609C77639C0EDD0F5A254DC6
              C9F51466A57B742CD15E77F0C7C73A9F8DAEB5B92FA382186DBC9F222854FCA1
              BCCCE49E49F947E5D055FF00164BE3ABAFB4A78592D2D21B61CC970019AE1B00
              E230415C7F0E5B1939EDCD3749A9723D04AA271E6476B4570BF0C3C6F75E32D1
              EE8DFC4897966EAAEF1A90922B0241F63C1C8FA7AD7755338384B959519292BA
              0A28A2A4A0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00AE2BE2DFFC930D63FED8FF00E8E8EBB5AE4FC7BA2EB5E25F0FDCE89A6C560B
              0DCAC65AE2E6E5D594AB86C0458C823E51CEEEE78E2AE96934D915358348E0FC
              316DAE3FC38F08CD15EDAFF6526AF019ADC4044BB7ED98197DC430DE41C055ED
              C9C73D1FC6B8AE64F87CCD036238EEA269C7AA7207FE3C52B67C05A2EB5E1AF0
              FDB689A94560D0DB2C856E2DAE5D998B396C1468C003E63CEEEC38E6BA6BCB4B
              7BFB39AD2EA2596DE64292230C8607A8AD6556D539BB3338D3BD3B791C77C232
              A7E196938C6419B3F5F39FFF00AD5C57ED00577F87871B80B8CFD3F778FEB5DD
              787FC2DAA78320BAB3D1A7B7BFD3A597CD86DAF65689A027A8122ABE4719FBA3
              F5A53E0A9358F15C1E21F114D14CF6A8AB69610EE30C2C392C58E379CF7DABD0
              71C538CE31AAEA5F4D45284A54D43A9388AE60B6F04457ADBAED275599BD5C59
              4E1BF5CD71FF00117C3B7BE1BD6E2F1E78755C4D13837F0AFDD65E8588F42386
              FC0FA9AEDB5CB5F115D6AFA7CDA7DA696D6D63726753717922BCB989E3208111
              0BFEB0F73D07D2B7D55A7B454BB8A30EF1E258D5B7A648E40240C8EBC9033E82
              A14DC5A916E0A49A396F00EB96FE24B6D6757B55658AE6FD4ED61CA916B02B0F
              C0822BCEEF12E9FF0069375B29A186E4E36493446441FE87CE543293C67B8FC7
              A57A77863C2EBE11D3B54B5D3B64B1CF7725D5B4523140BB910046600E0654F3
              83C63826B92FF8423C55FF000B3BFE133D9A3673FF001E9F6C97A793E57DFF00
              27D39E95A425152935B5AC8CE71938C53DEE745E058B51B44F11AEB3711CB78B
              ABBB492A0DAA54C309520761B4AF1DBDEAEEAFE14FED5F14E93ADFF69DD41FD9
              F9FF00478CFC92739E7D3D0FA8A83528BC63A9082DE38747B1B66993ED4EB792
              4D2344186E55CC4A012323F1EDD6A7D5F48D76F3C53A4DFD86B3F65D36DB3F6A
              B4C1FDF73F91C8E39E9D456777CD7BD8D2DA5AD73A2AF21D42F9AFFF0068ED32
              D1CB79765098D549E3260793207FC087E55EBD5E65E2AD31F48F8B5E1DF14907
              EC331FB1CEE06447232B2293EC77819EDB68A2D5DAF261593B2F54677C4FBB92
              E3E24F83B497F305A8B88656C12158BCC17F3017F0DDEF56352D7B50F087C5DD
              3F488EFAEEE749D54465ADEE6533794D2318C1466390032838CF73C74AEAFC67
              E0C4F141D3EF2DEE45AEA7A74C25B6999772F041DAC32323207D2A28BC233EA5
              E34B5F14EB5F674B9B4B710416B6D23488A4163BCBB2A927E7381B78F535A46A
              439527D990E12E66D7745DF1B4D2BF872E349B48CCB7FAAA359DBC607F786199
              8F65552493F4EE4558F0A6836DE17F0F5AE8D04A24781374ADD0BB3124B63B02
              738FA7B5703E24F04FC43D6FC493EA96BAFD9D8211E5411DBDE4D1EC8B39C12A
              83249E4FBFD0575DE03F0F6B3E1FD26E63D7F52FED0BF9A7DFE779CF2E10280A
              BB9C03D771FC6A2492A76522A2DB9DDA38CD3EFDAC3F68ED4ECD0B7977D088D9
              41E322049327FEF93F9D7AF5799785B4B6D5FE2D788BC52A0FD8613F6381CAF1
              248AAA8C47B0D847BEEAEF35DB0BAD5343BBB2B2BF96C2E664DB1DCC5F7A339E
              DFCB8E79E39A2B59CA2BC9052BA4DF9B3CFF00E2C596BBA6C30F8AB4BD6A744B
              091736ACAA522DD84DCA31CF27F8B3F7B823A576BE0ED6E6F11784B4ED5AE21F
              266B88F322E30370254903D0E323D88AE666F0A78C7C41A3BE85E25D634C3A73
              326F9ACE2737132AB6E0096C2A9C81D01ADAF13689AC4BE134D0FC2B25A58FC8
              20324D232F971018C2ED53C91C67FAD3938B8A836AFDFC8514D49CADA76F3326
              DB478FC43F10DFC5F3909A6E9907D96CD9FE5F3994B6E97FDC059803DF19E839
              AFF1374CD23C4577A4E812231D76ECB7D8E453810A0E5D9FD570A78EE4751D6B
              0F47F86FE3DB6D46C05FF8A164D321963335B2DFCEC1A25232814A8046063078
              AEF35CF0AB5F789F4AF1258CB1C7A8E9E1A3D928F9268D830DA48E548DC7079E
              A78AA6D4669A96C249CA2D35B9E65E17BABFF0B7C51B5D17C578BE9BCB5B7B0B
              B95CB7921B214A67FBDF74F7ED5ED77F790E9DA7DCDECEC161B789A5724F40A3
              27F95724DE0A9B59F1B59F8A35C36F1CB6512A41676CE6540559886676552482
              D9185182056EF8974AB8D6F48FECE8648D229A68C5C9727984302EA3039240C7
              6EA6A2ACA3392FC4AA719462FF00033FC2A8342F040D47543E54B2A4BA95F36D
              3F2B3E647E064F00E3B9E28D23E2278575DD521D374DD57CFBB9B77971FD9E55
              CE14B1E5940E80F7AEA0000000600E805159B92776D6A5A4D5923C57F681FF00
              9977FEDE7FF6957B55798FC46F03F893C737366211A4DAC164D288D9EEA46690
              395C12045853851C64F5EA6BD02D24D59B4F91AF2D2C92F541F2E386E9DE3738
              E32C63057273FC2D81EBD2B49B4E9C52E972209AA927DEC791FF00CDCEFF009F
              F9F2AF6AAF2DFF008423C57FF0B37FE133D9A2EECFFC7A7DB25E9E57958DFE57
              5C73D2BD12EE5D5574F8DACED2CA4BD207991CD74C91A1C73861192D838FE15C
              8E78E94566A5CB67D120A49AE6BF73C8FF0067EFF998BFEDDBFF006AD7ACEB9A
              A0D23499AE56379673F25BC2832D2CA785503DCFE4327A0AE0BE1CF81FC4BE07
              B9BC130D26EADEF4C42464BA915A3085B900C5863863C64741C8A778DBC23E39
              F11EBF1DD699AC59E9F676C0ADB2C7752C6E09186662A9D4F4EBC0FA9CDD4E59
              D66EFA114F9A1492B6A741F0FBC269E0DF0EC7A7CB2A3DFCE4CF7054F05B8181
              ECA3033F8F7AEB2B87F00785BC47A04D7D3F89358FED296554480FDA249BCB51
              92DCB818C9DBD3D2BB8AC6AEB36EF736A7F0AD2C145145665851451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400514514005145140054179676FA859CB69770A4D6F2A959237190C2
              8A28016D6DC5ADB2402492454180D236E6C76C9EFE9CF353514500150DD5B8BA
              B6780C9246AE305A26DAD8EF83DBD38E68A28012CECEDF4FB38AD2D21486DE25
              0B1C68301454F451400514514005145140051451400514514005145140051451
              4005145140051451400514514005145140051451400514514005145140051451
              4005145140051451400514514005145140051451400514514005145140051451
              401FFFD9}
            Stretch = True
          end
          object RLDBText21: TRLDBText
            Left = 172
            Top = 21
            Width = 89
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CHAVEPED'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLLabel1: TRLLabel
            Left = 96
            Top = 8
            Width = 56
            Height = 13
            Caption = 'Pedido No.'
          end
          object RLDraw1: TRLDraw
            Left = 2
            Top = 36
            Width = 376
            Height = 1
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 108
            Width = 40
            Height = 13
            Caption = 'Cliente:'
          end
          object RLDraw2: TRLDraw
            Left = 3
            Top = 108
            Width = 376
            Height = 1
          end
          object RLDraw3: TRLDraw
            Left = 189
            Top = 110
            Width = 1
            Height = 96
          end
          object RLLabel3: TRLLabel
            Left = 193
            Top = 111
            Width = 23
            Height = 13
            Caption = 'Qtd:'
          end
          object RLDBText2: TRLDBText
            Left = 266
            Top = 137
            Width = 107
            Height = 10
            AutoSize = False
            DataField = 'volume'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDraw4: TRLDraw
            Left = 92
            Top = 3
            Width = 1
            Height = 34
          end
          object RLDraw5: TRLDraw
            Left = 2
            Top = 155
            Width = 376
            Height = 1
          end
          object RLLabel4: TRLLabel
            Left = 6
            Top = 157
            Width = 62
            Height = 13
            Caption = 'C'#243'd.Produto'
          end
          object RLLabel5: TRLLabel
            Left = 193
            Top = 158
            Width = 45
            Height = 13
            Caption = 'Material:'
          end
          object RLDBText3: TRLDBText
            Left = 1
            Top = 168
            Width = 184
            Height = 34
            Alignment = taCenter
            AutoSize = False
            DataField = 'CODPRO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBMemo2: TRLDBMemo
            Left = 192
            Top = 168
            Width = 184
            Height = 36
            Alignment = taCenter
            AutoSize = False
            DataField = 'NOMPRO'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLDBMemo3: TRLDBMemo
            Left = 2
            Top = 126
            Width = 184
            Height = 24
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAOSOC'
            DataSource = src_etiqueta
            Layout = tlCenter
          end
          object RLLabel6: TRLLabel
            Left = 0
            Top = 208
            Width = 376
            Height = 13
            AutoSize = False
            Caption = '.'
          end
        end
      end
    end
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CODCLI,P1LOTSEQ,P1CHAVE,P1DATAP,P1NUMNF,P1CODEMP,'
      '           P1QTDVOL,P1ETIVOL,P1CODEMB,CRAZAO,CLOG,CBAIRRO,'
      '           CCIDADE,CUF,CDENOM,CCEP,CFONE01, P1CODTRA, TRRAZTRA '
      'from CADP01,CADCLI, CADTRA where '
      'P1CODEMP is null'
      'and CCODCLI=P1CODCLI')
    Left = 408
    Top = 16
    object Qr_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1NUMNF: TFloatField
      DisplayLabel = 'Numero Nf'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_PedP1QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_PedCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedCLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_PedCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_PedCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_PedCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedP1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_PedCDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_PedCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_PedCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_PedP1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Qr_PedP1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_PedTRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
    object Qr_PedP1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
    end
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 576
    Top = 8
  end
  object mem_etiqueta: TRxMemoryData
    FieldDefs = <
      item
        Name = 'volume'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS_VOLUME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODCLI'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'OBS_CODCLI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RAZAOSOC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_RAZAOSOC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_ENDERECO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBS_BAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBS_CIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'OBS_UF'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CHAVEPED'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OBS_CHAVEPED'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NUMNF'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'OBS_NUMNF'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODBAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS_CODBAR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ROTA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_ROTA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMI_NOMFAN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_EMI_NOMFAN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMI_RAZSOC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_EMI_RAZSOC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMI_SLOGAN'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OBS_EMI_SLOGAN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'QTDVOL'
        DataType = ftInteger
      end
      item
        Name = 'OBS_QTDVOL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NUMVOL'
        DataType = ftInteger
      end
      item
        Name = 'OBS_NUMVOL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FONE01'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS_FONE01'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DATAPED'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OBS_DATAPED'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODEMB'
        DataType = ftFloat
      end
      item
        Name = 'OBS_CODEMB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOMEMB'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBS_NOMEMB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'HOREMB'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'OBS_HOREMB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PEDIDOS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OBS_PEDIDOS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBS_EMI_NOMTRA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMI_NOMTRA'
        DataType = ftString
        Size = 60
      end>
    BeforeInsert = mem_etiquetaBeforeInsert
    Left = 508
    Top = 84
    object mem_etiquetavolume: TStringField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
    end
    object mem_etiquetaOBS_VOLUME: TStringField
      FieldName = 'OBS_VOLUME'
      Size = 60
    end
    object mem_etiquetaCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 14
    end
    object mem_etiquetaOBS_CODCLI: TStringField
      FieldName = 'OBS_CODCLI'
      Size = 60
    end
    object mem_etiquetaRAZAOSOC: TStringField
      FieldName = 'RAZAOSOC'
      Size = 60
    end
    object mem_etiquetaOBS_RAZAOSOC: TStringField
      FieldName = 'OBS_RAZAOSOC'
      Size = 60
    end
    object mem_etiquetaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object mem_etiquetaOBS_FANTASIA: TStringField
      FieldName = 'OBS_FANTASIA'
      Size = 60
    end
    object mem_etiquetaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object mem_etiquetaOBS_ENDERECO: TStringField
      FieldName = 'OBS_ENDERECO'
      Size = 60
    end
    object mem_etiquetaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object mem_etiquetaOBS_BAIRRO: TStringField
      FieldName = 'OBS_BAIRRO'
      Size = 60
    end
    object mem_etiquetaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object mem_etiquetaOBS_CIDADE: TStringField
      FieldName = 'OBS_CIDADE'
      Size = 60
    end
    object mem_etiquetaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mem_etiquetaOBS_UF: TStringField
      FieldName = 'OBS_UF'
      Size = 60
    end
    object mem_etiquetaCHAVEPED: TStringField
      FieldName = 'CHAVEPED'
      Size = 10
    end
    object mem_etiquetaOBS_CHAVEPED: TStringField
      FieldName = 'OBS_CHAVEPED'
      Size = 60
    end
    object mem_etiquetaNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 9
    end
    object mem_etiquetaOBS_NUMNF: TStringField
      FieldName = 'OBS_NUMNF'
      Size = 60
    end
    object mem_etiquetaCODBAR: TStringField
      FieldName = 'CODBAR'
    end
    object mem_etiquetaOBS_CODBAR: TStringField
      FieldName = 'OBS_CODBAR'
      Size = 60
    end
    object mem_etiquetaROTA: TStringField
      FieldName = 'ROTA'
      Size = 60
    end
    object mem_etiquetaOBS_ROTA: TStringField
      FieldName = 'OBS_ROTA'
      Size = 60
    end
    object mem_etiquetaEMI_NOMFAN: TStringField
      FieldName = 'EMI_NOMFAN'
      Size = 60
    end
    object mem_etiquetaOBS_EMI_NOMFAN: TStringField
      FieldName = 'OBS_EMI_NOMFAN'
      Size = 60
    end
    object mem_etiquetaEMI_RAZSOC: TStringField
      FieldName = 'EMI_RAZSOC'
      Size = 60
    end
    object mem_etiquetaOBS_EMI_RAZSOC: TStringField
      FieldName = 'OBS_EMI_RAZSOC'
    end
    object mem_etiquetaEMI_SLOGAN: TStringField
      FieldName = 'EMI_SLOGAN'
      Size = 200
    end
    object mem_etiquetaOBS_EMI_SLOGAN: TStringField
      FieldName = 'OBS_EMI_SLOGAN'
      Size = 60
    end
    object mem_etiquetaQTDVOL: TIntegerField
      FieldName = 'QTDVOL'
    end
    object mem_etiquetaOBS_QTDVOL: TStringField
      FieldName = 'OBS_QTDVOL'
      Size = 60
    end
    object mem_etiquetaNUMVOL: TIntegerField
      FieldName = 'NUMVOL'
    end
    object mem_etiquetaOBS_NUMVOL: TStringField
      FieldName = 'OBS_NUMVOL'
      Size = 60
    end
    object mem_etiquetaFONE01: TStringField
      FieldName = 'FONE01'
    end
    object mem_etiquetaOBS_FONE01: TStringField
      FieldName = 'OBS_FONE01'
      Size = 60
    end
    object mem_etiquetaDATAPED: TStringField
      FieldName = 'DATAPED'
      Size = 10
    end
    object mem_etiquetaOBS_DATAPED: TStringField
      FieldName = 'OBS_DATAPED'
      Size = 60
    end
    object mem_etiquetaCODEMB: TFloatField
      FieldName = 'CODEMB'
    end
    object mem_etiquetaOBS_CODEMB: TStringField
      FieldName = 'OBS_CODEMB'
      Size = 60
    end
    object mem_etiquetaNOMEMB: TStringField
      FieldName = 'NOMEMB'
      Size = 40
    end
    object mem_etiquetaOBS_NOMEMB: TStringField
      FieldName = 'OBS_NOMEMB'
      Size = 60
    end
    object mem_etiquetaHOREMB: TStringField
      FieldName = 'HOREMB'
      Size = 6
    end
    object mem_etiquetaOBS_HOREMB: TStringField
      FieldName = 'OBS_HOREMB'
    end
    object mem_etiquetaPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 200
    end
    object mem_etiquetaOBS_PEDIDOS: TStringField
      FieldName = 'OBS_PEDIDOS'
      Size = 60
    end
    object mem_etiquetaOBS_EMI_NOMTRA: TStringField
      FieldName = 'OBS_EMI_NOMTRA'
      Size = 60
    end
    object mem_etiquetaEMI_NOMTRA: TStringField
      FieldName = 'EMI_NOMTRA'
      Size = 60
    end
    object mem_etiquetanotas_fiscais: TStringField
      FieldName = 'notas_fiscais'
      Size = 3000
    end
    object mem_etiquetaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object mem_etiquetaTRA_FANTASIA: TStringField
      FieldName = 'TRA_FANTASIA'
      Size = 100
    end
    object mem_etiquetaTRA_CIDADE: TStringField
      FieldName = 'TRA_CIDADE'
      Size = 100
    end
    object mem_etiquetaTRA_UF: TStringField
      FieldName = 'TRA_UF'
      Size = 2
    end
    object mem_etiquetaENDER_COMPL: TStringField
      FieldName = 'ENDER_COMPL'
      Size = 200
    end
    object mem_etiquetaCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Size = 200
    end
    object mem_etiquetaPESOLIQUIDOVOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'PESOLIQUIDOVOL'
    end
    object mem_etiquetaPESOBRUTOVOL: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOBRUTOVOL'
    end
    object mem_etiquetaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Size = 10
    end
    object mem_etiquetaEMP_FONES: TStringField
      FieldName = 'EMP_FONES'
      Size = 100
    end
    object mem_etiquetaEMP_RAZSOC: TStringField
      FieldName = 'EMP_RAZSOC'
      Size = 100
    end
    object mem_etiquetaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 100
    end
    object mem_etiquetaEMP_ENDER_COMPL: TStringField
      FieldName = 'EMP_ENDER_COMPL'
      Size = 200
    end
    object mem_etiquetaEMP_CIDADE_UF: TStringField
      FieldName = 'EMP_CIDADE_UF'
      Size = 100
    end
    object mem_etiquetaEMP_CIDADE_UF_CEP: TStringField
      FieldName = 'EMP_CIDADE_UF_CEP'
      Size = 200
    end
    object mem_etiquetaPRO_CODPRO: TStringField
      FieldName = 'PRO_CODPRO'
    end
    object mem_etiquetaPRO_CODBAR: TStringField
      FieldName = 'PRO_CODBAR'
    end
    object mem_etiquetaPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 100
    end
    object mem_etiquetaPRO_UND: TStringField
      FieldName = 'PRO_UND'
      Size = 3
    end
    object mem_etiquetaPRO_MARCA: TStringField
      FieldName = 'PRO_MARCA'
      Size = 60
    end
  end
  object src_etiqueta: TDataSource
    DataSet = mem_etiqueta
    Left = 548
    Top = 76
  end
  object mem_config: TRxMemoryData
    FieldDefs = <
      item
        Name = 'IMPRIME'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_CAMPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TAMANHO_WIDTH'
        DataType = ftInteger
      end
      item
        Name = 'LINHA'
        DataType = ftInteger
      end
      item
        Name = 'COLUNA'
        DataType = ftInteger
      end
      item
        Name = 'ALINHAMENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FONTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FONTE_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'FONTE_TAMANHO'
        DataType = ftFloat
      end
      item
        Name = 'FONTE_NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FONTE_BOLD'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FONTE_ITALIC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FONTE_UNDERLINE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FONTE_STRICK'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPONENTE_NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COMPONENTE_TIPO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ALTURA_HEIGHT'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end>
    AfterPost = mem_configAfterPost
    Left = 356
    Top = 24
    object mem_configIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 1
    end
    object mem_configNOME_CAMPO: TStringField
      FieldName = 'NOME_CAMPO'
      Size = 30
    end
    object mem_configTAMANHO_WIDTH: TIntegerField
      FieldName = 'TAMANHO_WIDTH'
    end
    object mem_configLINHA: TIntegerField
      FieldName = 'LINHA'
    end
    object mem_configCOLUNA: TIntegerField
      FieldName = 'COLUNA'
    end
    object mem_configALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      Size = 40
    end
    object mem_configFONTE: TStringField
      FieldName = 'FONTE'
    end
    object mem_configFONTE_TAMANHO: TFloatField
      FieldName = 'FONTE_TAMANHO'
    end
    object mem_configFONTE_NAME: TStringField
      FieldName = 'FONTE_NAME'
      Size = 40
    end
    object mem_configFONTE_BOLD: TStringField
      FieldName = 'FONTE_BOLD'
      Size = 1
    end
    object mem_configFONTE_ITALIC: TStringField
      FieldName = 'FONTE_ITALIC'
      Size = 1
    end
    object mem_configFONTE_UNDERLINE: TStringField
      FieldName = 'FONTE_UNDERLINE'
      Size = 1
    end
    object mem_configFONTE_STRICK: TStringField
      FieldName = 'FONTE_STRICK'
      Size = 1
    end
    object mem_configFONTE_COLOR: TFloatField
      FieldName = 'FONTE_COLOR'
    end
    object mem_configCOMPONENTE_NAME: TStringField
      FieldName = 'COMPONENTE_NAME'
      Size = 60
    end
    object mem_configCOMPONENTE_TIPO: TStringField
      FieldName = 'COMPONENTE_TIPO'
      Size = 40
    end
    object mem_configALTURA_HEIGHT: TIntegerField
      FieldName = 'ALTURA_HEIGHT'
    end
    object mem_configDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object src_config: TDataSource
    DataSet = mem_config
    Left = 428
    Top = 52
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 308
    Top = 28
  end
  object src_config_etiqueta: TDataSource
    DataSet = cds_config_etiqueta
    Left = 708
    Top = 62
  end
  object cds_config_etiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_config_etiquetaAfterInsert
    AfterEdit = cds_config_etiquetaAfterEdit
    BeforePost = cds_config_etiquetaBeforePost
    AfterPost = cds_config_etiquetaAfterPost
    AfterDelete = cds_config_etiquetaAfterDelete
    Left = 740
    Top = 62
    object cds_config_etiquetaCE_LOCAL: TStringField
      FieldName = 'CE_LOCAL'
    end
    object cds_config_etiquetaCE_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CE_NOME'
      Size = 100
    end
    object cds_config_etiquetaCE_CONFIG_CAB: TStringField
      FieldName = 'CE_CONFIG_CAB'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ01: TStringField
      FieldName = 'CE_CONFIG_ETIQ01'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ02: TStringField
      FieldName = 'CE_CONFIG_ETIQ02'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ03: TStringField
      FieldName = 'CE_CONFIG_ETIQ03'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ04: TStringField
      FieldName = 'CE_CONFIG_ETIQ04'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ05: TStringField
      FieldName = 'CE_CONFIG_ETIQ05'
      Size = 3000
    end
    object cds_config_etiquetaCE_QTDCOL: TIntegerField
      FieldName = 'CE_QTDCOL'
    end
  end
end
