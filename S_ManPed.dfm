object Frm_ManPed: TFrm_ManPed
  Left = 305
  Top = 152
  Width = 709
  Height = 555
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manipula Volumes dos Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_rod: TPanel
    Left = 0
    Top = 497
    Width = 701
    Height = 27
    Align = alBottom
    TabOrder = 0
    object bbSair: TBitBtn
      Left = 534
      Top = 3
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
      Left = 141
      Top = 3
      Width = 120
      Height = 25
      Hint = 'Click aqui para gravar'#13#10'os '#237'tens alterados'
      Caption = '&Gravar'
      Enabled = False
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
    object bbAlterar: TBitBtn
      Left = 5
      Top = 3
      Width = 120
      Height = 25
      Hint = 'Click aqui para Alterar'#13#10'os dados acima'
      Caption = '&Alterar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbAlterarClick
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
      NumGlyphs = 2
    end
    object bbCancelar: TBitBtn
      Left = 416
      Top = 3
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
    object bbCestNCM: TBitBtn
      Left = 280
      Top = 3
      Width = 120
      Height = 25
      Hint = 'Click aqui para gravar'#13#10'os '#237'tens alterados'
      Caption = 'Ajustar Cest do NCM'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 701
    Height = 497
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 1
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Panel_cab: TPanel
        Left = 0
        Top = 0
        Width = 693
        Height = 70
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 85
          Height = 13
          Caption = 'Chave do &Pedido:'
          FocusControl = CHAVE
        end
        object SB1: TSpeedButton
          Left = 222
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
          Left = 357
          Top = 9
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label3: TLabel
          Left = 52
          Top = 27
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object lbl_datanf: TLabel
          Left = 34
          Top = 43
          Width = 67
          Height = 13
          Caption = 'Data da Nota:'
        end
        object Label6: TLabel
          Left = 202
          Top = 46
          Width = 81
          Height = 13
          Caption = 'N'#250'mero da Nota:'
        end
        object Label7: TLabel
          Left = 382
          Top = 46
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label8: TLabel
          Left = 510
          Top = 46
          Width = 53
          Height = 13
          Caption = 'Valor Nota:'
        end
        object Label18: TLabel
          Left = 256
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
        object Label4: TLabel
          Left = 177
          Top = 8
          Width = 7
          Height = 13
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CHAVE: TEdit
          Left = 107
          Top = 6
          Width = 69
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = CHAVEExit
        end
        object NOMCLI: TEdit
          Left = 393
          Top = 6
          Width = 283
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object ENDERECO: TEdit
          Left = 107
          Top = 24
          Width = 306
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object NOMCID: TEdit
          Left = 412
          Top = 24
          Width = 265
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DATANF: TEdit
          Left = 107
          Top = 42
          Width = 90
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
          Top = 42
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
          Top = 42
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
          Top = 42
          Width = 90
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object LOTSEQ: TEdit
          Left = 314
          Top = 6
          Width = 38
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnExit = CHAVEExit
        end
        object edt_codemp: TEdit
          Left = 189
          Top = 6
          Width = 29
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CHAVEExit
        end
      end
      object Panel_corpo: TPanel
        Left = 0
        Top = 70
        Width = 693
        Height = 399
        Align = alClient
        Enabled = False
        TabOrder = 1
        object Label33: TLabel
          Left = 15
          Top = 117
          Width = 97
          Height = 13
          Caption = 'C'#243'd.Transportadora:'
        end
        object Label35: TLabel
          Left = 202
          Top = 133
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label34: TLabel
          Left = 29
          Top = 134
          Width = 83
          Height = 13
          Caption = 'Placa do Veiculo:'
        end
        object Label36: TLabel
          Left = 31
          Top = 152
          Width = 81
          Height = 13
          Caption = 'Qtd. de Volumes:'
        end
        object Label37: TLabel
          Left = 202
          Top = 149
          Width = 41
          Height = 13
          Caption = 'Especie:'
        end
        object Label38: TLabel
          Left = 339
          Top = 150
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label39: TLabel
          Left = 491
          Top = 153
          Width = 64
          Height = 13
          Caption = 'Peso Liquido:'
        end
        object Label32: TLabel
          Left = 52
          Top = 207
          Width = 60
          Height = 13
          Caption = 'Digitado por:'
        end
        object Label70: TLabel
          Left = 48
          Top = 191
          Width = 64
          Height = 13
          Caption = 'Entregue por:'
        end
        object Label41: TLabel
          Left = 45
          Top = 226
          Width = 67
          Height = 13
          Caption = 'Separado por:'
        end
        object Label42: TLabel
          Left = 46
          Top = 243
          Width = 66
          Height = 13
          Caption = 'Conferido por:'
        end
        object Label43: TLabel
          Left = 44
          Top = 261
          Width = 68
          Height = 13
          Caption = 'Embalado por:'
        end
        object Label5: TLabel
          Left = 25
          Top = 171
          Width = 154
          Height = 13
          Caption = 'Data da Sa'#237'da das Mercadorias:'
        end
        object Label9: TLabel
          Left = 297
          Top = 170
          Width = 31
          Height = 13
          Caption = 'Horas:'
        end
        object Label10: TLabel
          Left = 23
          Top = 26
          Width = 89
          Height = 13
          Caption = 'C'#243'd. Vendedor 01:'
        end
        object Label11: TLabel
          Left = 23
          Top = 45
          Width = 89
          Height = 13
          Caption = 'C'#243'd. Vendedor 02:'
        end
        object Label12: TLabel
          Left = 23
          Top = 65
          Width = 89
          Height = 13
          Caption = 'C'#243'd. Vendedor 03:'
        end
        object Label13: TLabel
          Left = 8
          Top = 99
          Width = 104
          Height = 13
          Caption = 'Forma de Pagamento:'
        end
        object Label14: TLabel
          Left = 420
          Top = 280
          Width = 59
          Height = 13
          Caption = 'Autoriza'#231#227'o:'
        end
        object Label15: TLabel
          Left = 62
          Top = 278
          Width = 48
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Label16: TLabel
          Left = 45
          Top = 297
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label17: TLabel
          Left = 50
          Top = 83
          Width = 59
          Height = 13
          Caption = 'Televendas:'
        end
        object Label19: TLabel
          Left = 53
          Top = 8
          Width = 57
          Height = 13
          Caption = 'C'#243'd.Cliente:'
        end
        object Label20: TLabel
          Left = 492
          Top = 94
          Width = 63
          Height = 13
          Caption = 'Tipo do Frete'
        end
        object CODTRA: TEdit
          Left = 116
          Top = 114
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnExit = CODTRAExit
          OnKeyPress = CODTRAKeyPress
        end
        object NOMTRA: TEdit
          Left = 195
          Top = 114
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object UFPV: TEdit
          Left = 257
          Top = 132
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 14
          OnExit = UFPVExit
          OnKeyPress = UFPVKeyPress
        end
        object PLACAV: TEdit
          Left = 116
          Top = 132
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = PLACAVExit
          OnKeyPress = PLACAVKeyPress
        end
        object QTDVOL: TEdit
          Left = 116
          Top = 150
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 15
          OnExit = QTDVOLExit
        end
        object ESPECIE: TEdit
          Left = 257
          Top = 150
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          OnExit = ESPECIEExit
          OnKeyPress = ESPECIEKeyPress
        end
        object PESOB: TEdit
          Left = 407
          Top = 150
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          OnExit = PESOBExit
        end
        object PESOL: TEdit
          Left = 571
          Top = 152
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 18
          OnExit = PESOLExit
        end
        object DATENT: TMaskEdit
          Left = 490
          Top = 186
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 23
          Text = '  /  /    '
          OnExit = DATENTExit
        end
        object NOMDIG: TEdit
          Left = 195
          Top = 204
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 24
        end
        object NOMENT: TEdit
          Left = 195
          Top = 186
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 25
        end
        object CODENT: TEdit
          Left = 116
          Top = 186
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 22
          OnExit = CODENTExit
          OnKeyPress = CODENTKeyPress
        end
        object CODDIG: TEdit
          Left = 116
          Top = 204
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 27
          OnExit = CODDIGExit
          OnKeyPress = CODDIGKeyPress
        end
        object CODEMB: TEdit
          Left = 116
          Top = 258
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 37
          OnExit = CODEMBExit
          OnKeyPress = CODEMBKeyPress
        end
        object CODSEP: TEdit
          Left = 116
          Top = 222
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 30
          OnExit = CODSEPExit
          OnKeyPress = CODSEPKeyPress
        end
        object CODCON: TEdit
          Left = 116
          Top = 240
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 33
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object NOMSEP: TEdit
          Left = 195
          Top = 222
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 36
        end
        object NOMCON: TEdit
          Left = 195
          Top = 240
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 39
        end
        object NOMEMB: TEdit
          Left = 195
          Top = 258
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 40
        end
        object DATEMB: TMaskEdit
          Left = 490
          Top = 258
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 41
          Text = '  /  /    '
          OnExit = DATEMBExit
        end
        object DATCON: TMaskEdit
          Left = 490
          Top = 240
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 34
          Text = '  /  /    '
          OnExit = DATCONExit
        end
        object DATSEP: TMaskEdit
          Left = 490
          Top = 222
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 31
          Text = '  /  /    '
          OnExit = DATSEPExit
        end
        object HORENT: TMaskEdit
          Left = 572
          Top = 186
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 26
          Text = '  :  :  '
          OnExit = HORENTExit
        end
        object HORSEP: TMaskEdit
          Left = 572
          Top = 222
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 32
          Text = '  :  :  '
          OnExit = HORSEPExit
        end
        object HORCON: TMaskEdit
          Left = 572
          Top = 240
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 35
          Text = '  :  :  '
          OnExit = HORCONExit
        end
        object HOREMB: TMaskEdit
          Left = 572
          Top = 258
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 42
          Text = '  :  :  '
          OnExit = HOREMBExit
        end
        object DATDIG: TMaskEdit
          Left = 490
          Top = 204
          Width = 78
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 28
          Text = '  /  /    '
        end
        object HORDIG: TMaskEdit
          Left = 572
          Top = 204
          Width = 76
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 29
          Text = '  :  :  '
        end
        object PREVENT: TMaskEdit
          Left = 185
          Top = 168
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 19
          Text = '  /  /    '
          OnExit = PREVENTExit
        end
        object HPREVENT: TMaskEdit
          Left = 345
          Top = 168
          Width = 74
          Height = 19
          Ctl3D = False
          EditMask = '!00:00;1; '
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 20
          Text = '  :  '
          OnExit = HPREVENTExit
        end
        object CODVEN: TEdit
          Left = 116
          Top = 24
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnChange = CODVENChange
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object NOMVEN: TEdit
          Left = 195
          Top = 24
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object CODV02: TEdit
          Left = 116
          Top = 42
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnChange = CODV02Change
          OnExit = CODV02Exit
          OnKeyPress = CODV02KeyPress
        end
        object NOMV02: TEdit
          Left = 195
          Top = 42
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object CODV03: TEdit
          Left = 116
          Top = 60
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnChange = CODV03Change
          OnExit = CODV03Exit
          OnKeyPress = CODV03KeyPress
        end
        object NOMV03: TEdit
          Left = 195
          Top = 60
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object CODBCO: TEdit
          Left = 116
          Top = 96
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnChange = CODBCOChange
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object NOMBCO: TEdit
          Left = 195
          Top = 96
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
          Text = 'Carteira'
        end
        object NAUT: TEdit
          Left = 490
          Top = 256
          Width = 158
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 43
          OnExit = NAUTExit
          OnKeyPress = NAUTKeyPress
        end
        object GB_VISTO: TGroupBox
          Left = 491
          Top = 296
          Width = 157
          Height = 56
          Caption = 'Visto da Vigil'#226'ncia Sant.'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 44
          object Label74: TLabel
            Left = 4
            Top = 19
            Width = 35
            Height = 13
            Caption = 'Data...:'
          end
          object Label75: TLabel
            Left = 3
            Top = 37
            Width = 40
            Height = 13
            Caption = 'N'#250'mero:'
          end
          object DATVIS: TMaskEdit
            Left = 58
            Top = 15
            Width = 75
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 0
            Text = '  /  /    '
            OnExit = DATVISExit
          end
          object NUMVIS: TEdit
            Left = 58
            Top = 33
            Width = 96
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = NUMVISExit
            OnKeyPress = NUMVISKeyPress
          end
        end
        object CODCV: TEdit
          Left = 116
          Top = 276
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 38
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object NOMCV: TEdit
          Left = 195
          Top = 276
          Width = 218
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 45
        end
        object OBS1: TEdit
          Left = 116
          Top = 294
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 46
          OnExit = OBS1Exit
          OnKeyPress = OBS1KeyPress
        end
        object OBS2: TEdit
          Left = 116
          Top = 312
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 47
          OnExit = OBS2Exit
          OnKeyPress = OBS2KeyPress
        end
        object CODTLV: TEdit
          Left = 116
          Top = 78
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnChange = CODTLVChange
          OnExit = CODTLVExit
          OnKeyPress = CODTLVKeyPress
        end
        object NOMTLV: TEdit
          Left = 195
          Top = 78
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 48
        end
        object CB_CANHOTO: TCheckBox
          Left = 433
          Top = 169
          Width = 134
          Height = 17
          Caption = 'Canhoto Entregue'
          TabOrder = 21
        end
        object OBS3: TEdit
          Left = 116
          Top = 330
          Width = 355
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 49
          OnExit = OBS3Exit
          OnKeyPress = OBS3KeyPress
        end
        object CB_SEMCOMP: TCheckBox
          Left = 503
          Top = 25
          Width = 134
          Height = 17
          TabStop = False
          Caption = 'S&em Compromisso'
          TabOrder = 50
        end
        object CB_LEMAT: TCheckBox
          Left = 504
          Top = 50
          Width = 97
          Height = 17
          Caption = 'Bloquear Envio'
          TabOrder = 51
        end
        object edt_codcli: TEdit
          Left = 116
          Top = 6
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = edt_codcliChange
          OnExit = edt_codcliExit
          OnKeyPress = edt_codcliKeyPress
        end
        object edt_nomcli: TEdit
          Left = 195
          Top = 6
          Width = 293
          Height = 19
          TabStop = False
          Color = 16754899
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object CB_FRETEPC: TComboBox
          Left = 493
          Top = 113
          Width = 183
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 52
          Text = '9-Sem Ocorr'#234'ncia de Transporte'
          Items.Strings = (
            '0 - CIF  - Emitente'
            '1 - FOB - Destinatario'
            '2 - por conta de terceiros'
            '3 -Transporte Pr'#243'prio por conta do Remetente;'
            '4 - Transporte Pr'#243'prio por conta do Destinat'#225'rio;'
            '9 - Sem Ocorr'#234'ncia de Transporte')
        end
        object gb_conf_itens: TGroupBox
          Left = 1
          Top = 363
          Width = 691
          Height = 35
          Align = alBottom
          Caption = 'Conferencia por peso(kg):'
          TabOrder = 53
          object Label21: TLabel
            Left = 4
            Top = 16
            Width = 155
            Height = 13
            Caption = 'Total das Quantidades dos itens:'
          end
          object Label22: TLabel
            Left = 248
            Top = 15
            Width = 66
            Height = 13
            Caption = 'Valores Lidos:'
          end
          object Label23: TLabel
            Left = 427
            Top = 14
            Width = 60
            Height = 13
            Caption = '% Diferen'#231'a:'
          end
          object sbnOk: TSpeedButton
            Left = 400
            Top = 12
            Width = 23
            Height = 22
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
          object sbn_error: TSpeedButton
            Left = 401
            Top = 12
            Width = 23
            Height = 22
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
            NumGlyphs = 2
          end
          object edt_qtd_pedido: TEdit
            Left = 162
            Top = 12
            Width = 78
            Height = 19
            TabStop = False
            Color = 16754899
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_qtdlida: TEdit
            Left = 317
            Top = 12
            Width = 78
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = edt_qtdlidaExit
            OnKeyPress = edt_qtdlidaKeyPress
          end
          object edt_qtd_difer: TEdit
            Left = 501
            Top = 10
            Width = 78
            Height = 19
            TabStop = False
            Color = 16754899
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object bbValidar: TBitBtn
            Left = 581
            Top = 7
            Width = 89
            Height = 25
            Hint = 'Click aqui para gravar'#13#10'os '#237'tens alterados'
            Caption = 'Validar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = bbValidarClick
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
    end
    object tsConfiguracoes: TTabSheet
      Caption = 'Configura'#231#245'es Master'
      ImageIndex = 1
      object Label24: TLabel
        Left = 1
        Top = 19
        Width = 244
        Height = 13
        Caption = 'Considerar valido varia'#231#245'es das quantidades de at'#233
      end
      object Label25: TLabel
        Left = 301
        Top = 19
        Width = 140
        Height = 13
        Caption = '% a menor. Unidades Validas:'
      end
      object Label26: TLabel
        Left = 539
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
      object Label27: TLabel
        Left = 420
        Top = 39
        Width = 121
        Height = 65
        Alignment = taCenter
        Caption = 
          '* Para inserir varias unidades separe com ; (ponto e virgula). P' +
          'ara validar todas (*) asterisco'
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
        Left = 248
        Top = 16
        Width = 49
        Height = 19
        Ctl3D = False
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_var_menor_unid: TEdit
        Left = 444
        Top = 16
        Width = 93
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 549
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
  object Timer1: TTimer
    Interval = 100000
    OnTimer = Timer1Timer
    Left = 600
    Top = 126
  end
end
