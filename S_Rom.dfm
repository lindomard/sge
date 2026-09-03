object Frm_Rom: TFrm_Rom
  Left = 21
  Top = 13
  Width = 793
  Height = 467
  ActiveControl = CHAVE
  Caption = 'Manuten'#231#227'o em Romaneio de Entregas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 47
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 102
      Height = 13
      Caption = 'Chave do Pedido:'
    end
    object Label2: TLabel
      Left = 8
      Top = 27
      Width = 101
      Height = 13
      Caption = 'Oberva'#231#245'es.......:'
    end
    object CHAVE: TEdit
      Left = 111
      Top = 4
      Width = 79
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CHAVEEnter
      OnExit = CHAVEExit
      OnKeyPress = CHAVEKeyPress
    end
    object NOMCLI: TEdit
      Left = 189
      Top = 4
      Width = 373
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
    object bb_Pesquisar: TBitBtn
      Left = 567
      Top = 3
      Width = 103
      Height = 39
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = bb_PesquisarClick
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
    end
    object bbSair: TBitBtn
      Left = 672
      Top = 3
      Width = 103
      Height = 39
      Caption = '&Sair'
      TabOrder = 0
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
    object POBS01: TEdit
      Left = 111
      Top = 22
      Width = 451
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 47
    Width = 777
    Height = 86
    Align = alTop
    Caption = 'Romaneios Existentes do Pedido Selecionado:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 773
      Height = 69
      Align = alClient
      DataSource = Src_RM01
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'R1_CODIGO'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R1_DATA'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R1_OBS1'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R1_OBS2'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R1_OBS3'
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'R1_TOTAL'
          Title.Caption = 'Valor'
          Width = 67
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 133
    Width = 676
    Height = 296
    Align = alClient
    Caption = 'Sobre o Romaneio:'
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 672
      Height = 70
      Align = alTop
      Caption = 'Manuten'#231#227'o:'
      TabOrder = 0
      object Label3: TLabel
        Left = 10
        Top = 17
        Width = 119
        Height = 13
        Caption = 'Chave do Romaneio:'
      end
      object Label4: TLabel
        Left = 10
        Top = 38
        Width = 120
        Height = 13
        Caption = 'Data......................:'
      end
      object Label5: TLabel
        Left = 228
        Top = 16
        Width = 79
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object CHAVEROM: TEdit
        Left = 134
        Top = 12
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CHAVEROMExit
      end
      object MDATA: TMaskEdit
        Left = 134
        Top = 33
        Width = 80
        Height = 19
        Ctl3D = False
        Enabled = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object MOBS01: TEdit
        Left = 312
        Top = 12
        Width = 339
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object MOBS02: TEdit
        Left = 312
        Top = 30
        Width = 339
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object MOBS03: TEdit
        Left = 312
        Top = 48
        Width = 339
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 262
      Width = 672
      Height = 32
      Align = alBottom
      Caption = 'Totais:'
      TabOrder = 1
      object Label6: TLabel
        Left = 14
        Top = 12
        Width = 33
        Height = 13
        Caption = 'Itens:'
      end
      object Label7: TLabel
        Left = 208
        Top = 12
        Width = 58
        Height = 13
        Caption = 'Unidades:'
      end
      object Label9: TLabel
        Left = 514
        Top = 12
        Width = 45
        Height = 13
        Caption = 'Total $:'
      end
      object TOTAL: TStaticText
        Left = 583
        Top = 12
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 0
      end
      object MTOTUND: TStaticText
        Left = 310
        Top = 12
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 1
      end
      object MTOTITEM: TStaticText
        Left = 51
        Top = 12
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 2
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 85
      Width = 672
      Height = 177
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = '&Mercadorias'
        object GroupBox6: TGroupBox
          Left = 0
          Top = 65
          Width = 664
          Height = 84
          Align = alBottom
          Caption = 'Digita'#231#227'o dos Itens:'
          Enabled = False
          TabOrder = 0
          object Label8: TLabel
            Left = 8
            Top = 16
            Width = 48
            Height = 13
            Caption = 'C'#243'digo.:'
          end
          object Label16: TLabel
            Left = 215
            Top = 16
            Width = 62
            Height = 13
            Caption = 'Descricao:'
          end
          object Label61: TLabel
            Left = 224
            Top = 37
            Width = 56
            Height = 13
            Caption = 'Unidade.:'
          end
          object Label17: TLabel
            Left = 339
            Top = 37
            Width = 75
            Height = 13
            Caption = 'P'#231'o.Unit'#225'rio:'
          end
          object Label24: TLabel
            Left = 8
            Top = 37
            Width = 70
            Height = 13
            Caption = 'Quantidade:'
          end
          object Label23: TLabel
            Left = 505
            Top = 37
            Width = 67
            Height = 13
            Caption = 'Valor Total:'
          end
          object CODPRO: TEdit
            Left = 78
            Top = 16
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = CODPROExit
            OnKeyPress = CODPROKeyPress
          end
          object NOMPRO: TEdit
            Left = 285
            Top = 16
            Width = 382
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
          end
          object UND: TEdit
            Left = 285
            Top = 37
            Width = 48
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object PCOUNI: TEdit
            Left = 413
            Top = 37
            Width = 91
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = PCOUNIExit
          end
          object QTD: TEdit
            Left = 79
            Top = 37
            Width = 91
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnExit = QTDExit
          end
          object TOTALI: TEdit
            Left = 578
            Top = 37
            Width = 91
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 5
          end
          object BitBtn6: TBitBtn
            Left = 304
            Top = 58
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 9
            OnClick = BitBtn6Click
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
          object ITEM_CANCELAR: TBitBtn
            Left = 204
            Top = 58
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 8
            OnClick = ITEM_CANCELARClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            NumGlyphs = 2
          end
          object ITEM_EDITAR: TBitBtn
            Left = 104
            Top = 58
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 7
            OnClick = ITEM_EDITARClick
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
          object ITEM_GRAVAR: TBitBtn
            Left = 3
            Top = 58
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 6
            OnClick = ITEM_GRAVARClick
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
        object STG1: TStringGrid
          Left = 0
          Top = 0
          Width = 664
          Height = 65
          Align = alClient
          ColCount = 6
          DefaultRowHeight = 17
          FixedCols = 0
          RowCount = 6
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 1
          OnDrawCell = STG1DrawCell
          ColWidths = (
            116
            84
            33
            232
            88
            84)
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Complementares:'
        Enabled = False
        ImageIndex = 1
        object Label33: TLabel
          Left = 11
          Top = 6
          Width = 117
          Height = 13
          Caption = 'C'#243'd.Transportadora:'
        end
        object Label39: TLabel
          Left = 502
          Top = 47
          Width = 78
          Height = 13
          Caption = 'Peso Liquido:'
        end
        object Label38: TLabel
          Left = 351
          Top = 46
          Width = 67
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label35: TLabel
          Left = 207
          Top = 27
          Width = 21
          Height = 13
          Caption = 'UF:'
        end
        object Label37: TLabel
          Left = 207
          Top = 46
          Width = 50
          Height = 13
          Caption = 'Especie:'
        end
        object Label34: TLabel
          Left = 11
          Top = 27
          Width = 101
          Height = 13
          Caption = 'Placa do Veiculo:'
        end
        object Label36: TLabel
          Left = 11
          Top = 49
          Width = 98
          Height = 13
          Caption = 'Qtd. de Volumes:'
        end
        object Label70: TLabel
          Left = 11
          Top = 154
          Width = 78
          Height = 13
          Caption = 'Entregue por:'
        end
        object Label32: TLabel
          Left = 11
          Top = 69
          Width = 74
          Height = 13
          Caption = 'Digitado por:'
        end
        object Label41: TLabel
          Left = 11
          Top = 93
          Width = 81
          Height = 13
          Caption = 'Separado por:'
        end
        object Label42: TLabel
          Left = 11
          Top = 113
          Width = 81
          Height = 13
          Caption = 'Conferido por:'
        end
        object Label43: TLabel
          Left = 11
          Top = 134
          Width = 82
          Height = 13
          Caption = 'Embalado por:'
        end
        object CODTRA: TEdit
          Left = 127
          Top = 3
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = CODTRAExit
          OnKeyPress = CODTRAKeyPress
        end
        object NOMTRA: TEdit
          Left = 207
          Top = 4
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
        end
        object RGFRETEPC: TRadioGroup
          Left = 502
          Top = 5
          Width = 147
          Height = 38
          Caption = 'Frete Por Conta do:'
          ItemIndex = 0
          Items.Strings = (
            '&Emitente'
            '&Destinatario')
          TabOrder = 2
        end
        object PESOL: TEdit
          Left = 583
          Top = 45
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = PESOLExit
        end
        object PESOB: TEdit
          Left = 421
          Top = 44
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = PESOBExit
        end
        object ESPECIE: TEdit
          Left = 269
          Top = 44
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = ESPECIEExit
          OnKeyPress = ESPECIEKeyPress
        end
        object UFPV: TEdit
          Left = 243
          Top = 24
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = UFPVExit
          OnKeyPress = UFPVKeyPress
        end
        object QTDVOL: TEdit
          Left = 127
          Top = 43
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = QTDVOLExit
        end
        object PLACAV: TEdit
          Left = 127
          Top = 23
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = PLACAVExit
          OnKeyPress = PLACAVKeyPress
        end
        object CODENT: TEdit
          Left = 127
          Top = 149
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 25
        end
        object CODEMB: TEdit
          Left = 127
          Top = 128
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
          OnExit = CODEMBExit
          OnKeyPress = CODEMBKeyPress
        end
        object CODCON: TEdit
          Left = 127
          Top = 107
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object CODSEP: TEdit
          Left = 127
          Top = 86
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = CODSEPExit
          OnKeyPress = CODSEPKeyPress
        end
        object CODDIG: TEdit
          Left = 127
          Top = 65
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 9
        end
        object NOMENT: TEdit
          Left = 207
          Top = 150
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 26
        end
        object NOMDIG: TEdit
          Left = 207
          Top = 66
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 10
        end
        object NOMSEP: TEdit
          Left = 207
          Top = 87
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 14
        end
        object NOMCON: TEdit
          Left = 207
          Top = 108
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 18
        end
        object NOMEMB: TEdit
          Left = 207
          Top = 129
          Width = 293
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 22
        end
        object DATEMB: TMaskEdit
          Left = 502
          Top = 129
          Width = 77
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 23
          Text = '  /  /    '
        end
        object DATCON: TMaskEdit
          Left = 502
          Top = 108
          Width = 77
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 19
          Text = '  /  /    '
        end
        object DATSEP: TMaskEdit
          Left = 502
          Top = 87
          Width = 77
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 15
          Text = '  /  /    '
        end
        object DATDIG: TMaskEdit
          Left = 502
          Top = 66
          Width = 77
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 11
          Text = '  /  /    '
        end
        object DATENT: TMaskEdit
          Left = 502
          Top = 150
          Width = 77
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 27
          Text = '  /  /    '
        end
        object HORENT: TEdit
          Left = 583
          Top = 149
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 28
        end
        object HORDIG: TEdit
          Left = 583
          Top = 66
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 12
        end
        object HORSEP: TEdit
          Left = 583
          Top = 87
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 16
        end
        object HORCON: TEdit
          Left = 583
          Top = 108
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 20
        end
        object HOREMB: TEdit
          Left = 583
          Top = 129
          Width = 78
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 24
        end
        object CB_ETIVOL: TCheckBox
          Left = 14
          Top = 175
          Width = 186
          Height = 17
          Caption = 'Emitiu Etiqueta de Volumes'
          TabOrder = 29
        end
        object CB_CONF: TCheckBox
          Left = 367
          Top = 176
          Width = 186
          Height = 17
          Caption = 'Conferido Eletronicamente'
          TabOrder = 30
        end
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 676
    Top = 133
    Width = 101
    Height = 296
    Align = alRight
    Caption = 'A'#231#227'o:'
    TabOrder = 3
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 14
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
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
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 1
      Top = 43
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Caption = '&Alterar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 1
      Top = 72
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BBGRAVARClick
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
    object BBLIMPAR: TBitBtn
      Left = 1
      Top = 101
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBLIMPARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BBIMPRIMIR: TBitBtn
      Left = 1
      Top = 130
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Caption = 'Impri&mir  Mod.01'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBIMPRIMIRClick
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
    object bbImprimir02: TBitBtn
      Left = 1
      Top = 159
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Caption = 'Impri&mir  Mod.02'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbImprimir02Click
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
    object BBEXCLUIR: TBitBtn
      Left = 1
      Top = 188
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = 'Excl&uir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBEXCLUIRClick
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
    object BitBtn1: TBitBtn
      Left = 1
      Top = 217
      Width = 100
      Height = 30
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
  object Src_RM01: TDataSource
    DataSet = DM4.Tb_Rm1
    OnDataChange = Src_RM01DataChange
    Left = 304
    Top = 48
  end
  object Qr_RM1: TQuery
    OnCalcFields = Qr_RM1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRM1 where R1_CODEMP is null')
    Left = 648
    Top = 56
    object Qr_RM1R1_CODEMP: TFloatField
      FieldName = 'R1_CODEMP'
      Origin = 'SG_ASSOC.CADRM1.R1_CODEMP'
    end
    object Qr_RM1R1_CHAVE: TFloatField
      FieldName = 'R1_CHAVE'
      Origin = 'SG_ASSOC.CADRM1.R1_CHAVE'
    end
    object Qr_RM1R1_CODIGO: TFloatField
      FieldName = 'R1_CODIGO'
      Origin = 'SG_ASSOC.CADRM1.R1_CODIGO'
    end
    object Qr_RM1R1_DATA: TDateTimeField
      FieldName = 'R1_DATA'
      Origin = 'SG_ASSOC.CADRM1.R1_DATA'
    end
    object Qr_RM1R1_OBS1: TStringField
      FieldName = 'R1_OBS1'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS1'
      Size = 60
    end
    object Qr_RM1R1_OBS2: TStringField
      FieldName = 'R1_OBS2'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS2'
      Size = 60
    end
    object Qr_RM1R1_OBS3: TStringField
      FieldName = 'R1_OBS3'
      Origin = 'SG_ASSOC.CADRM1.R1_OBS3'
      Size = 60
    end
    object Qr_RM1R1_STATUS: TFloatField
      FieldName = 'R1_STATUS'
      Origin = 'SG_ASSOC.CADRM1.R1_STATUS'
    end
    object Qr_RM1R1_TOTAL: TFloatField
      FieldName = 'R1_TOTAL'
      Origin = 'SG_ASSOC.CADRM1.R1_TOTAL'
      DisplayFormat = '0.00'
    end
    object Qr_RM1R1_CODTRA: TFloatField
      FieldName = 'R1_CODTRA'
      Origin = 'SG_ASSOC.CADRM1.R1_CODTRA'
    end
    object Qr_RM1R1_QTDVOL: TFloatField
      FieldName = 'R1_QTDVOL'
      Origin = 'SG_ASSOC.CADRM1.R1_QTDVOL'
    end
    object Qr_RM1R1_PESOL: TFloatField
      FieldName = 'R1_PESOL'
      Origin = 'SG_ASSOC.CADRM1.R1_PESOL'
    end
    object Qr_RM1R1_PESOB: TFloatField
      FieldName = 'R1_PESOB'
      Origin = 'SG_ASSOC.CADRM1.R1_PESOB'
    end
    object Qr_RM1R1_ESPECIE: TStringField
      FieldName = 'R1_ESPECIE'
      Origin = 'SG_ASSOC.CADRM1.R1_ESPECIE'
      Size = 10
    end
    object Qr_RM1R1_FRETEPC: TFloatField
      FieldName = 'R1_FRETEPC'
      Origin = 'SG_ASSOC.CADRM1.R1_FRETEPC'
    end
    object Qr_RM1R1_VALFRE: TFloatField
      FieldName = 'R1_VALFRE'
      Origin = 'SG_ASSOC.CADRM1.R1_VALFRE'
    end
    object Qr_RM1R1_UFPV: TStringField
      FieldName = 'R1_UFPV'
      Origin = 'SG_ASSOC.CADRM1.R1_UFPV'
      Size = 2
    end
    object Qr_RM1R1_PLACAV: TStringField
      FieldName = 'R1_PLACAV'
      Origin = 'SG_ASSOC.CADRM1.R1_PLACAV'
      Size = 8
    end
    object Qr_RM1R1_ETIVOL: TFloatField
      FieldName = 'R1_ETIVOL'
      Origin = 'SG_ASSOC.CADRM1.R1_ETIVOL'
    end
    object Qr_RM1R1_DTMOD: TDateTimeField
      FieldName = 'R1_DTMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_DTMOD'
    end
    object Qr_RM1R1_HRMOD: TStringField
      FieldName = 'R1_HRMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_HRMOD'
      Size = 10
    end
    object Qr_RM1R1_USRMOD: TFloatField
      FieldName = 'R1_USRMOD'
      Origin = 'SG_ASSOC.CADRM1.R1_USRMOD'
    end
    object Qr_RM1R1_CONF: TFloatField
      FieldName = 'R1_CONF'
      Origin = 'SG_ASSOC.CADRM1.R1_CONF'
    end
    object Qr_RM1R1_USRCON: TFloatField
      FieldName = 'R1_USRCON'
      Origin = 'SG_ASSOC.CADRM1.R1_USRCON'
    end
    object Qr_RM1R1_DATCON: TDateTimeField
      FieldName = 'R1_DATCON'
      Origin = 'SG_ASSOC.CADRM1.R1_DATCON'
    end
    object Qr_RM1R1_HRCON: TStringField
      FieldName = 'R1_HRCON'
      Origin = 'SG_ASSOC.CADRM1.R1_HRCON'
      Size = 10
    end
    object Qr_RM1R1_USRENT: TFloatField
      FieldName = 'R1_USRENT'
      Origin = 'SG_ASSOC.CADRM1.R1_USRENT'
    end
    object Qr_RM1R1_DATENT: TDateTimeField
      FieldName = 'R1_DATENT'
      Origin = 'SG_ASSOC.CADRM1.R1_DATENT'
    end
    object Qr_RM1R1_HRENT: TStringField
      FieldName = 'R1_HRENT'
      Origin = 'SG_ASSOC.CADRM1.R1_HRENT'
      Size = 10
    end
    object Qr_RM1R1_USRSEP: TFloatField
      FieldName = 'R1_USRSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_USRSEP'
    end
    object Qr_RM1R1_DATSEP: TDateTimeField
      FieldName = 'R1_DATSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_DATSEP'
    end
    object Qr_RM1R1_HRSEP: TStringField
      FieldName = 'R1_HRSEP'
      Origin = 'SG_ASSOC.CADRM1.R1_HRSEP'
      Size = 10
    end
    object Qr_RM1R1_USREMB: TFloatField
      FieldName = 'R1_USREMB'
      Origin = 'SG_ASSOC.CADRM1.R1_USREMB'
    end
    object Qr_RM1R1_DATEMB: TDateTimeField
      FieldName = 'R1_DATEMB'
      Origin = 'SG_ASSOC.CADRM1.R1_DATEMB'
    end
    object Qr_RM1R1_HREMB: TStringField
      FieldName = 'R1_HREMB'
      Origin = 'SG_ASSOC.CADRM1.R1_HREMB'
      Size = 10
    end
    object Qr_RM1R1_HRDIG: TStringField
      FieldName = 'R1_HRDIG'
      Origin = 'SG_ASSOC.CADRM1.R1_HRDIG'
      Size = 10
    end
    object Qr_RM1R1_USRDIG: TFloatField
      FieldName = 'R1_USRDIG'
      Origin = 'SG_ASSOC.CADRM1.R1_USRDIG'
    end
    object Qr_RM1codcli: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codcli'
      Calculated = True
    end
    object Qr_RM1razaosocial: TStringField
      FieldKind = fkCalculated
      FieldName = 'razaosocial'
      Size = 40
      Calculated = True
    end
    object Qr_RM1denominacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'denominacao'
      Size = 40
      Calculated = True
    end
    object Qr_RM1endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 40
      Calculated = True
    end
    object Qr_RM1bairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'bairro'
      Size = 30
      Calculated = True
    end
    object Qr_RM1cidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 30
      Calculated = True
    end
    object Qr_RM1cep: TStringField
      FieldKind = fkCalculated
      FieldName = 'cep'
      Size = 9
      Calculated = True
    end
    object Qr_RM1total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_RM1R1_LOTSEQ: TFloatField
      FieldName = 'R1_LOTSEQ'
      Origin = 'SG_ASSOC.CADRM1.R1_LOTSEQ'
    end
  end
  object Qr_RM2: TQuery
    OnCalcFields = Qr_RM2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRM2 where R2_CODEMP is null')
    Left = 688
    Top = 24
    object Qr_RM2R2_CODEMP: TFloatField
      FieldName = 'R2_CODEMP'
      Origin = 'SG_ASSOC.CADRM2.R2_CODEMP'
    end
    object Qr_RM2R2_CHAVE: TFloatField
      FieldName = 'R2_CHAVE'
      Origin = 'SG_ASSOC.CADRM2.R2_CHAVE'
    end
    object Qr_RM2R2_CODIGO: TFloatField
      FieldName = 'R2_CODIGO'
      Origin = 'SG_ASSOC.CADRM2.R2_CODIGO'
    end
    object Qr_RM2R2_ITEM: TFloatField
      FieldName = 'R2_ITEM'
      Origin = 'SG_ASSOC.CADRM2.R2_ITEM'
    end
    object Qr_RM2R2_CODPRO: TFloatField
      FieldName = 'R2_CODPRO'
      Origin = 'SG_ASSOC.CADRM2.R2_CODPRO'
    end
    object Qr_RM2R2_QTD: TFloatField
      FieldName = 'R2_QTD'
      Origin = 'SG_ASSOC.CADRM2.R2_QTD'
    end
    object Qr_RM2R2_PRECO: TFloatField
      FieldName = 'R2_PRECO'
      Origin = 'SG_ASSOC.CADRM2.R2_PRECO'
    end
    object Qr_RM2nome: TStringField
      DisplayWidth = 53
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 53
      Calculated = True
    end
    object Qr_RM2und: TStringField
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Qr_RM2valortotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valortotal'
      Calculated = True
    end
    object Qr_RM2R2_LOTSEQ: TFloatField
      FieldName = 'R2_LOTSEQ'
      Origin = 'SG_ASSOC.CADRM2.R2_LOTSEQ'
    end
  end
  object Src_RM1: TDataSource
    DataSet = Qr_RM1
    Left = 592
    Top = 32
  end
  object Src_RM2: TDataSource
    DataSet = Qr_RM2
    Left = 624
    Top = 16
  end
  object Tb_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P2PRECO,P2CODPRO,sum(P2QTD) AS QTD from CADP02'
      'where P2CHAVE=3540'
      'group by P2PRECO,P2CODPRO')
    Left = 560
    Top = 48
    object Tb_PedP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_PedQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_PedP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
  end
  object Tb_Rom: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select R2_LOTSEQ,R2_CHAVE,R2_CODPRO,sum(R2_QTD) AS QTD from CADR' +
        'M2'
      'where R2_CHAVE=3540'
      'group by R2_LOTSEQ,R2_CHAVE,R2_CODPRO')
    Left = 496
    Top = 16
    object Tb_RomR2_CHAVE: TFloatField
      FieldName = 'R2_CHAVE'
      Origin = 'SG_ASSOC.CADRM2.R2_CHAVE'
    end
    object Tb_RomR2_CODPRO: TFloatField
      FieldName = 'R2_CODPRO'
      Origin = 'SG_ASSOC.CADRM2.R2_CODPRO'
    end
    object Tb_RomQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADRM2.R2_QTD'
    end
    object Tb_RomR2_LOTSEQ: TFloatField
      FieldName = 'R2_LOTSEQ'
      Origin = 'SG_ASSOC.CADRM2.R2_LOTSEQ'
    end
  end
  object Tb_Ped02D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2DCODEMP,'
      '       P2DTIPO,'
      '       P2DCHAVE,'
      '       P2DORDEM,'
      '       P2DITEM,'
      '       P2DCODPRO,'
      '       P2DLINHA,'
      '       P2DESC,'
      '       P2DLOTSEQ'
      ' from CADP02D'
      'where P2DCHAVE is null')
    Left = 424
    Top = 24
    object Tb_Ped02DP2DCODEMP: TFloatField
      FieldName = 'P2DCODEMP'
      Origin = 'SG_ASSOC.CADP02D.P2DCODEMP'
    end
    object Tb_Ped02DP2DTIPO: TFloatField
      FieldName = 'P2DTIPO'
      Origin = 'SG_ASSOC.CADP02D.P2DTIPO'
    end
    object Tb_Ped02DP2DCHAVE: TFloatField
      FieldName = 'P2DCHAVE'
      Origin = 'SG_ASSOC.CADP02D.P2DCHAVE'
    end
    object Tb_Ped02DP2DORDEM: TFloatField
      FieldName = 'P2DORDEM'
      Origin = 'SG_ASSOC.CADP02D.P2DORDEM'
    end
    object Tb_Ped02DP2DITEM: TFloatField
      FieldName = 'P2DITEM'
      Origin = 'SG_ASSOC.CADP02D.P2DITEM'
    end
    object Tb_Ped02DP2DCODPRO: TFloatField
      FieldName = 'P2DCODPRO'
      Origin = 'SG_ASSOC.CADP02D.P2DCODPRO'
    end
    object Tb_Ped02DP2DLINHA: TFloatField
      FieldName = 'P2DLINHA'
      Origin = 'SG_ASSOC.CADP02D.P2DLINHA'
    end
    object Tb_Ped02DP2DESC: TStringField
      FieldName = 'P2DESC'
      Origin = 'SG_ASSOC.CADP02D.P2DESC'
      Size = 60
    end
    object Tb_Ped02DP2DLOTSEQ: TFloatField
      FieldName = 'P2DLOTSEQ'
      Origin = 'SG_ASSOC.CADP02D.P2DLOTSEQ'
    end
  end
end
