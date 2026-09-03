object Frm_LerSintegra: TFrm_LerSintegra
  Left = 114
  Top = 13
  Width = 755
  Height = 600
  Caption = 'Pagina Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 739
    Height = 562
    ActivePage = tsProc
    Align = alClient
    TabOrder = 0
    object tsProc: TTabSheet
      Caption = 'Processamento'
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 160
        Height = 13
        Caption = 'Nome do Arquivo a Ser Lido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SPB_LER: TSpeedButton
        Left = 699
        Top = 50
        Width = 23
        Height = 22
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
        OnClick = SPB_LERClick
      end
      object Label8: TLabel
        Left = 12
        Top = 75
        Width = 87
        Height = 13
        Caption = 'Nome da Pasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 404
        Top = 75
        Width = 98
        Height = 13
        Caption = 'Nome do Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object NOMEARQ: TEdit
        Left = 10
        Top = 52
        Width = 687
        Height = 21
        TabOrder = 0
      end
      object bbLer: TBitBtn
        Left = 16
        Top = 134
        Width = 193
        Height = 25
        Caption = 'Ler Arquivo'
        TabOrder = 1
        OnClick = bbLerClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
          FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
          990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
          990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
          FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
          00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
          0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
          00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
          03FF3777773337777333333333333333333F3333333333333333}
        NumGlyphs = 2
      end
      object GBREST: TGroupBox
        Left = 3
        Top = 192
        Width = 705
        Height = 135
        Caption = 'Restaurar'
        TabOrder = 2
        object Label2: TLabel
          Left = 16
          Top = 22
          Width = 53
          Height = 13
          Caption = 'Per'#237'odo de'
        end
        object Label3: TLabel
          Left = 243
          Top = 24
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label4: TLabel
          Left = 17
          Top = 41
          Width = 84
          Height = 13
          Caption = 'N'#250'mero NF Inicial'
        end
        object Label5: TLabel
          Left = 204
          Top = 42
          Width = 79
          Height = 13
          Caption = 'N'#250'mero NF Final'
        end
        object Label6: TLabel
          Left = 17
          Top = 59
          Width = 83
          Height = 13
          Caption = 'N'#250'mero CF Inicial'
        end
        object Label7: TLabel
          Left = 204
          Top = 60
          Width = 78
          Height = 13
          Caption = 'N'#250'mero CF Final'
        end
        object MDT1: TMaskEdit
          Left = 113
          Top = 19
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 292
          Top = 19
          Width = 76
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object NUMNFI: TEdit
          Left = 113
          Top = 37
          Width = 76
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = NUMNFIExit
        end
        object NUMNFF: TEdit
          Left = 292
          Top = 37
          Width = 76
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = NUMNFFExit
        end
        object NUMCFI: TEdit
          Left = 113
          Top = 55
          Width = 76
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = NUMCFIExit
        end
        object NUMCFF: TEdit
          Left = 292
          Top = 55
          Width = 76
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = NUMCFFExit
        end
        object RG_TIPDOC: TRadioGroup
          Left = 392
          Top = 15
          Width = 119
          Height = 84
          Caption = 'Tipo de Documentos:'
          ItemIndex = 2
          Items.Strings = (
            'Entrada'
            'Saida'
            'Ambas')
          TabOrder = 6
        end
        object GB_DOCREST: TGroupBox
          Left = 512
          Top = 15
          Width = 190
          Height = 83
          Caption = 'Documentos a Restaurar'
          TabOrder = 7
          object CB_PEDIDOS: TCheckBox
            Left = 5
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Pedidos'
            Checked = True
            State = cbChecked
            TabOrder = 0
            Visible = False
          end
          object CB_NF: TCheckBox
            Left = 5
            Top = 35
            Width = 97
            Height = 17
            Caption = 'Notas Fiscais'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object CB_DUPLIC: TCheckBox
            Left = 5
            Top = 54
            Width = 72
            Height = 17
            Caption = 'Duplicatas'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = CB_DUPLICClick
          end
          object CB_DUPBAI: TCheckBox
            Left = 93
            Top = 54
            Width = 72
            Height = 17
            Caption = 'Ja Baixada'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
        end
        object bbRestAgora: TBitBtn
          Left = 394
          Top = 102
          Width = 303
          Height = 25
          Caption = '&Restaurar Agora'
          TabOrder = 8
          OnClick = bbRestAgoraClick
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
      object NOMEPASTA: TEdit
        Left = 12
        Top = 95
        Width = 373
        Height = 21
        TabStop = False
        Color = 13041587
        ReadOnly = True
        TabOrder = 3
      end
      object ARQUIVO: TEdit
        Left = 404
        Top = 95
        Width = 317
        Height = 21
        TabStop = False
        Color = 13041587
        ReadOnly = True
        TabOrder = 4
      end
      object bbSair: TBitBtn
        Left = 496
        Top = 126
        Width = 193
        Height = 25
        Caption = '&Sair'
        TabOrder = 5
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
      object GroupBox1: TGroupBox
        Left = 24
        Top = 376
        Width = 689
        Height = 105
        Caption = 'Verificar Totais dos Cupons:'
        TabOrder = 6
        object Gauge_60i: TGauge
          Left = 16
          Top = 64
          Width = 609
          Height = 36
          Progress = 0
        end
        object bbVerificar: TBitBtn
          Left = 8
          Top = 16
          Width = 193
          Height = 25
          Caption = 'Verificar Agora'
          TabOrder = 0
          OnClick = bbVerificarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
            FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
            990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
            990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
            FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
            00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
            0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
            00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
            03FF3777773337777333333333333333333F3333333333333333}
          NumGlyphs = 2
        end
      end
    end
    object TsTipo10: TTabSheet
      Caption = 'Tipo 10'
      ImageIndex = 1
      object lbl_tipo10: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO10: TStringGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO10: TDBGrid
        Left = 0
        Top = 206
        Width = 731
        Height = 328
        Align = alClient
        DataSource = Src_Tipo10
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo11: TTabSheet
      Caption = 'Tipo 11'
      ImageIndex = 2
      object lbl_tipo11: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO11: TStringGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO11: TDBGrid
        Left = 0
        Top = 206
        Width = 731
        Height = 328
        Align = alClient
        DataSource = Src_Tipo11
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo51: TTabSheet
      Caption = 'Tipo 51'
      ImageIndex = 3
      object lbl_tipo51: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO51: TStringGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO51: TDBGrid
        Left = 0
        Top = 206
        Width = 731
        Height = 328
        Align = alClient
        DataSource = Src_Tipo51
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo50: TTabSheet
      Caption = 'Tipo 50'
      ImageIndex = 3
      object lbl_tipo50: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO50: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO50: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo50
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo53: TTabSheet
      Caption = 'Tipo 53'
      ImageIndex = 4
      object lbl_tipo53: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO53: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO53: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo53
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo56: TTabSheet
      Caption = 'Tipo 56'
      ImageIndex = 6
      object lbl_tipo56: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO56: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO56: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo55
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo54: TTabSheet
      Caption = 'Tipo 54'
      ImageIndex = 5
      object lbl_tipo54: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO54: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO54: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo54
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo55: TTabSheet
      Caption = 'Tipo 55'
      ImageIndex = 7
      object lbl_tipo55: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO55: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO55: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo55
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo60A: TTabSheet
      Caption = 'Tipo 60A'
      ImageIndex = 6
      object lbl_tipo60A: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO60A: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO60A: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 139
        Align = alClient
        DataSource = Src_Tipo60A
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo60M: TTabSheet
      Caption = 'Tipo 60M'
      ImageIndex = 7
      object lbl_tipo60M: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO60M: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO60M: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 139
        Align = alClient
        DataSource = Src_Tipo60M
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TsTipo60R: TTabSheet
      Caption = 'Tipo 60R'
      ImageIndex = 8
      object lbl_tipo60R: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO60R: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO60R: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo60R
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo60D: TTabSheet
      Caption = 'tsTipo60D'
      ImageIndex = 12
      object lbl_tipo60D: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO60D: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO60D: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo60D
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo60I: TTabSheet
      Caption = 'tsTipo60I'
      ImageIndex = 13
      object lbl_tipo60I: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO60I: TStringGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO60I: TDBGrid
        Left = 0
        Top = 206
        Width = 731
        Height = 328
        Align = alClient
        DataSource = Src_Tipo60I
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo61: TTabSheet
      Caption = 'tsTipo61'
      ImageIndex = 14
      object lbl_tipo61: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO61: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO61: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo61
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo61R: TTabSheet
      Caption = 'tsTipo61R'
      ImageIndex = 15
      object lbl_tipo61R: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO61R: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO61R: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo61R
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo70: TTabSheet
      Caption = 'tsTipo70'
      ImageIndex = 16
      object lbl_tipo70: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO70: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO70: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo70
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo71: TTabSheet
      Caption = 'tsTipo71'
      ImageIndex = 17
      object lbl_tipo71: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO71: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO71: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo71
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo74: TTabSheet
      Caption = 'tsTipo74'
      ImageIndex = 18
      object lbl_tipo74: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO74: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO74: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo74
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo75: TTabSheet
      Caption = 'tsTipo75'
      ImageIndex = 19
      object lbl_tipo75: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO75: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO75: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo75
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo76: TTabSheet
      Caption = 'tsTipo76'
      ImageIndex = 20
      object lbl_tipo76: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO76: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO76: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo76
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo77: TTabSheet
      Caption = 'tsTipo77'
      ImageIndex = 21
      object lbl_tipo77: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO77: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO77: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 107
        Align = alClient
        DataSource = Src_Tipo77
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTipo90: TTabSheet
      Caption = 'tsTipo90'
      ImageIndex = 22
      object lbl_tipo90: TLabel
        Left = 0
        Top = 193
        Width = 45
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'lbl_tipo10'
      end
      object STG_TIPO90: TStringGrid
        Left = 0
        Top = 0
        Width = 739
        Height = 193
        Align = alTop
        ColCount = 9
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
      end
      object DBG_TIPO90: TDBGrid
        Left = 0
        Top = 206
        Width = 739
        Height = 139
        Align = alClient
        DataSource = Src_Tipo90
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object tsTeste: TTabSheet
      Caption = 'tsTeste'
      ImageIndex = 23
      object DBGrid1: TDBGrid
        Left = 56
        Top = 144
        Width = 577
        Height = 120
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Memo1: TMemo
        Left = 160
        Top = 16
        Width = 185
        Height = 89
        Lines.Strings = (
          'Select sum(t50_VLTOTAL) as total '
          'from '
          'tbtipo50')
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 424
        Top = 64
        Width = 75
        Height = 25
        Caption = 'BitBtn1'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object tsResumo: TTabSheet
      Caption = 'Resumo da Avalia'#231#227'o'
      ImageIndex = 24
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 731
        Height = 24
        Align = alTop
        Alignment = taCenter
        Caption = 'Resumo da Avalia'#231#227'o'
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Memo_Evento: TMemo
        Left = 0
        Top = 24
        Width = 731
        Height = 510
        Align = alClient
        Lines.Strings = (
          'Memo_Evento')
        TabOrder = 0
      end
    end
  end
  object Tb_Tipo10: TTable
    TableType = ttDBase
    Left = 40
    Top = 48
  end
  object Src_Tipo10: TDataSource
    DataSet = Tb_Tipo10
    Left = 67
    Top = 49
  end
  object OPD1: TOpenDialog
    Filter = '*.TXT|*.TXT'
    Left = 96
    Top = 56
  end
  object Tb_Tipo11: TTable
    TableType = ttDBase
    Left = 40
    Top = 78
  end
  object Src_Tipo11: TDataSource
    DataSet = Tb_Tipo11
    Left = 67
    Top = 79
  end
  object Tb_Tipo50: TTable
    TableType = ttDBase
    Left = 40
    Top = 107
  end
  object Src_Tipo50: TDataSource
    DataSet = Tb_Tipo50
    Left = 67
    Top = 108
  end
  object Tb_Tipo51: TTable
    TableType = ttDBase
    Left = 40
    Top = 135
  end
  object Src_Tipo51: TDataSource
    DataSet = Tb_Tipo51
    Left = 67
    Top = 136
  end
  object Tb_Tipo53: TTable
    TableType = ttDBase
    Left = 44
    Top = 160
  end
  object Src_Tipo53: TDataSource
    DataSet = Tb_Tipo53
    Left = 71
    Top = 161
  end
  object Tb_Tipo54: TTable
    TableType = ttDBase
    Left = 44
    Top = 196
  end
  object Src_Tipo54: TDataSource
    DataSet = Tb_Tipo54
    Left = 71
    Top = 197
  end
  object Tb_Tipo55: TTable
    TableType = ttDBase
    Left = 100
    Top = 50
  end
  object Src_Tipo55: TDataSource
    DataSet = Tb_Tipo55
    Left = 127
    Top = 51
  end
  object Tb_Tipo60A: TTable
    TableType = ttDBase
    Left = 100
    Top = 107
  end
  object Src_Tipo60A: TDataSource
    DataSet = Tb_Tipo60A
    Left = 127
    Top = 108
  end
  object Tb_Tipo60M: TTable
    TableType = ttDBase
    Left = 100
    Top = 136
  end
  object Src_Tipo60M: TDataSource
    DataSet = Tb_Tipo60M
    Left = 127
    Top = 137
  end
  object Tb_Tipo60R: TTable
    TableType = ttDBase
    Left = 100
    Top = 165
  end
  object Src_Tipo60R: TDataSource
    DataSet = Tb_Tipo60R
    Left = 127
    Top = 166
  end
  object Tb_Tipo60D: TTable
    TableType = ttDBase
    Left = 102
    Top = 192
  end
  object Src_Tipo60D: TDataSource
    DataSet = Tb_Tipo60D
    Left = 129
    Top = 193
  end
  object Tb_Tipo60I: TTable
    TableType = ttDBase
    Left = 158
    Top = 50
  end
  object Src_Tipo60I: TDataSource
    DataSet = Tb_Tipo60I
    Left = 185
    Top = 51
  end
  object Tb_Tipo61R: TTable
    TableType = ttDBase
    Left = 158
    Top = 107
  end
  object Src_Tipo61R: TDataSource
    DataSet = Tb_Tipo61R
    Left = 185
    Top = 108
  end
  object Tb_Tipo70: TTable
    TableType = ttDBase
    Left = 158
    Top = 137
  end
  object Src_Tipo70: TDataSource
    DataSet = Tb_Tipo70
    Left = 185
    Top = 138
  end
  object Tb_Tipo71: TTable
    TableType = ttDBase
    Left = 158
    Top = 167
  end
  object Src_Tipo71: TDataSource
    DataSet = Tb_Tipo71
    Left = 185
    Top = 168
  end
  object Tb_Tipo74: TTable
    TableType = ttDBase
    Left = 158
    Top = 195
  end
  object Src_Tipo74: TDataSource
    DataSet = Tb_Tipo74
    Left = 185
    Top = 196
  end
  object Tb_Tipo75: TTable
    TableType = ttDBase
    Left = 215
    Top = 48
  end
  object Src_Tipo75: TDataSource
    DataSet = Tb_Tipo75
    Left = 250
    Top = 49
  end
  object Tb_Tipo77: TTable
    TableType = ttDBase
    Left = 215
    Top = 111
  end
  object Src_Tipo77: TDataSource
    DataSet = Tb_Tipo77
    Left = 242
    Top = 112
  end
  object Tb_Tipo90: TTable
    TableType = ttDBase
    Left = 215
    Top = 139
  end
  object Src_Tipo90: TDataSource
    DataSet = Tb_Tipo90
    Left = 242
    Top = 140
  end
  object Tb_Tipo56: TTable
    TableType = ttDBase
    Left = 100
    Top = 78
  end
  object Src_Tipo56: TDataSource
    DataSet = Tb_Tipo56
    Left = 127
    Top = 79
  end
  object Tb_Tipo61: TTable
    TableType = ttDBase
    Left = 158
    Top = 77
  end
  object Src_Tipo61: TDataSource
    DataSet = Tb_Tipo61
    Left = 185
    Top = 78
  end
  object Tb_Tipo76: TTable
    TableType = ttDBase
    Left = 215
    Top = 76
  end
  object Src_Tipo76: TDataSource
    DataSet = Tb_Tipo76
    Left = 242
    Top = 77
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 384
    Top = 64
  end
  object Query1: TQuery
    Left = 416
    Top = 48
  end
  object Qr_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P2ITEM,P2CODPRO,P2PRECO,P2TOTDES,P2DESCRAT,P2QTD,'
      'P2ALIQ,P2BASEN,P2ALIQNR,P2BCINR,P2ICMSN,P2ICMSNR,P2SIT '
      'FROM CADP01,CADP02'
      'WHERE P2CODEMP=P1CODEMP'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND P2CHAVE=P1CHAVE'
      'AND P2ORDEM=P1ORDEM'
      'AND P1NUMCF=:NUMCF'
      'and P1CODEMP=:CODEMP'
      'and P1DATACF=:DATACF'
      'ORDER BY P2ITEM')
    Left = 348
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATACF'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_Ped02P2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Qr_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Qr_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Qr_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
    end
    object Qr_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Qr_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Qr_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
    end
    object Qr_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Qr_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
    end
    object Qr_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
    end
    object Qr_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
    end
    object Qr_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
  end
end
