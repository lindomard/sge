object Frm_Tab_Loc: TFrm_Tab_Loc
  Left = 52
  Top = 24
  Width = 649
  Height = 392
  Caption = 'Impress'#227'o de Relat'#243'rios Personalizados de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 284
    Width = 641
    Height = 47
    Align = alClient
    TabOrder = 0
    OnDblClick = BitBtn1Click
    object Label1: TLabel
      Left = 7
      Top = 359
      Width = 98
      Height = 13
      Caption = 'Refer'#234'ncia: M'#234's:'
      Visible = False
    end
    object Label2: TLabel
      Left = 161
      Top = 359
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 7
      Width = 639
      Height = 39
      Align = alBottom
      Caption = 'Progresso da Montagem do Relatorio:'
      TabOrder = 0
      Visible = False
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 635
        Height = 22
        Align = alClient
        Progress = 0
      end
    end
    object RG_PERIODO: TGroupBox
      Left = 5
      Top = 312
      Width = 626
      Height = 38
      Caption = 'Per'#237'odo:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      object Label11: TLabel
        Left = 11
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Periodo de:'
      end
      object Label10: TLabel
        Left = 196
        Top = 16
        Width = 8
        Height = 13
        Caption = 'a'
      end
      object MDT1: TMaskEdit
        Left = 84
        Top = 12
        Width = 95
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 222
        Top = 12
        Width = 98
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
    end
    object MES: TEdit
      Left = 111
      Top = 356
      Width = 45
      Height = 21
      BevelKind = bkSoft
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      OnExit = MESExit
      OnKeyPress = INTCOLKeyPress
    end
    object ANO: TEdit
      Left = 191
      Top = 356
      Width = 45
      Height = 21
      BevelKind = bkSoft
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnKeyPress = INTCOLKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 331
    Width = 641
    Height = 30
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 28
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 475
      Top = 2
      Width = 157
      Height = 28
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object PageControl1: TPageControl
    Left = 0
    Top = 17
    Width = 641
    Height = 267
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 2
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object sbn_coduf: TSpeedButton
        Left = 173
        Top = 16
        Width = 25
        Height = 19
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
        OnClick = sbn_codufClick
      end
      object StaticText9: TStaticText
        Left = 65
        Top = 15
        Width = 71
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estado:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CODUF: TEdit
        Left = 143
        Top = 16
        Width = 32
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object lbx_coduf: TListBox
        Left = 197
        Top = 16
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 143
        Top = 37
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lbl_cidade: TStaticText
        Left = 63
        Top = 54
        Width = 73
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object CODLOC: TEdit
        Left = 143
        Top = 54
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 197
        Top = 54
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 143
        Top = 74
        Width = 54
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object StaticText3: TStaticText
        Left = -6
        Top = 94
        Width = 146
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'come'#231'ado com:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object PALAVRA: TEdit
        Left = 143
        Top = 92
        Width = 103
        Height = 19
        Hint = 'Digite a Palavra Desejada'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = PALAVRAExit
      end
    end
    object TsOutrosFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 2
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 614
        Height = 127
        Align = alTop
        Caption = 'Formato do Relat'#243'rio:'
        TabOrder = 0
        object Label6: TLabel
          Left = 25
          Top = 15
          Width = 114
          Height = 13
          Caption = 'Quantidade de Colunas:'
        end
        object Label7: TLabel
          Left = 228
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Pular'
        end
        object Label8: TLabel
          Left = 311
          Top = 15
          Width = 140
          Height = 13
          Caption = 'Caracteres de uma para outra'
        end
        object Bevel1: TBevel
          Left = 0
          Top = 64
          Width = 629
          Height = 2
        end
        object Bevel2: TBevel
          Left = 0
          Top = 84
          Width = 631
          Height = 2
        end
        object Bevel3: TBevel
          Left = 0
          Top = 104
          Width = 631
          Height = 2
        end
        object Bevel4: TBevel
          Left = 319
          Top = 66
          Width = 2
          Height = 58
        end
        object NUMCOL: TEdit
          Left = 164
          Top = 9
          Width = 60
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = INTCOLKeyPress
        end
        object INTCOL: TEdit
          Left = 262
          Top = 9
          Width = 45
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = INTCOLKeyPress
        end
        object RG_TPCOL: TRadioGroup
          Left = 26
          Top = 30
          Width = 465
          Height = 31
          Caption = 'Tipo de Coluna'
          Columns = 2
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            '&Sequencial '
            '&Lado a Lado Mesmo Valor')
          ParentCtl3D = False
          TabOrder = 2
        end
        object CB_AVPTPI: TCheckBox
          Left = 21
          Top = 87
          Width = 270
          Height = 17
          Caption = 'Avan'#231'ar Pagina apos imprimir pagina inicial'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
        end
        object CB_MPAGGR: TCheckBox
          Left = 20
          Top = 108
          Width = 245
          Height = 17
          Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
        end
        object CB_GRUPO: TCheckBox
          Left = 21
          Top = 66
          Width = 205
          Height = 17
          Caption = 'Imprimir &Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object CB_AVPIPF: TCheckBox
          Left = 340
          Top = 86
          Width = 281
          Height = 17
          Caption = 'Avan'#231'ar pagina antes de imprimir pagina final'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object CB_MPAGSG: TCheckBox
          Left = 340
          Top = 108
          Width = 266
          Height = 17
          Caption = 'Avan'#231'ar P'#225'gina ao trocar Sub_Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object CB_SGRUPO: TCheckBox
          Left = 340
          Top = 66
          Width = 161
          Height = 17
          Caption = 'Imprimir &Sub-Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
      end
    end
  end
  object St_NomRel: TStaticText
    Left = 0
    Top = 0
    Width = 641
    Height = 17
    Align = alTop
    Alignment = taCenter
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = sbsSunken
    Caption = '.'
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 3
  end
end
