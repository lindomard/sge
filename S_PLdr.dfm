object Frm_PLDR: TFrm_PLDR
  Left = 50
  Top = 21
  Width = 684
  Height = 436
  Caption = 'Pesquisa de Lancamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 373
    Width = 676
    Height = 32
    Align = alBottom
    TabOrder = 0
    object bbSair: TBitBtn
      Left = 507
      Top = 2
      Width = 150
      Height = 29
      Caption = '&Sair'
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
    object bbPesq: TBitBtn
      Left = 3
      Top = 2
      Width = 150
      Height = 29
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = bbPesqClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 676
    Height = 255
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object sbn_coddep: TSpeedButton
        Left = 77
        Top = 58
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
        OnClick = sbn_coddepClick
      end
      object sbn_codccu: TSpeedButton
        Left = 75
        Top = 97
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
        OnClick = sbn_codccuClick
      end
      object StaticText2: TStaticText
        Left = 18
        Top = 5
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Banco'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CODBCO: TEdit
        Left = 103
        Top = 3
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object OMITIR_BCO: TCheckBox
        Left = 105
        Top = 23
        Width = 51
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codbco: TListBox
        Left = 158
        Top = 4
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codbcoKeyDown
      end
      object StaticText1: TStaticText
        Left = 17
        Top = 44
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Departamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object CODDEP: TEdit
        Left = 103
        Top = 41
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = CODDEPExit
      end
      object OMITIR_DEP: TCheckBox
        Left = 105
        Top = 61
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object lbx_coddep: TListBox
        Left = 158
        Top = 42
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_coddepKeyDown
      end
      object StaticText3: TStaticText
        Left = 4
        Top = 82
        Width = 96
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Centro de Custo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object CODCCU: TEdit
        Left = 103
        Top = 79
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = CODCCUExit
      end
      object OMITIR_CCU: TCheckBox
        Left = 104
        Top = 101
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object lbx_codccu: TListBox
        Left = 158
        Top = 80
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codccuKeyDown
      end
      object StaticText4: TStaticText
        Left = 18
        Top = 122
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object CODCLI: TEdit
        Left = 103
        Top = 117
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 105
        Top = 137
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codcli: TListBox
        Left = 158
        Top = 118
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codcliKeyDown
      end
      object CODFOR: TEdit
        Left = 103
        Top = 155
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object StaticText6: TStaticText
        Left = 20
        Top = 156
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 17
      end
      object OMITIR_FOR: TCheckBox
        Left = 107
        Top = 175
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object lbx_codfor: TListBox
        Left = 158
        Top = 156
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyDown = lbx_codforKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object StaticText5: TStaticText
        Left = 18
        Top = 6
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
      end
      object CODVEN: TEdit
        Left = 103
        Top = 4
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 105
        Top = 24
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codven: TListBox
        Left = 158
        Top = 5
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codvenKeyDown
      end
      object StaticText7: TStaticText
        Left = 18
        Top = 45
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Transportadora'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
      end
      object OMITIR_TRA: TCheckBox
        Left = 105
        Top = 62
        Width = 52
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODUSR: TEdit
        Left = 103
        Top = 80
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = CODUSRExit
        OnKeyPress = CODUSRKeyPress
      end
      object OMITIR_USR: TCheckBox
        Left = 105
        Top = 101
        Width = 49
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object StaticText8: TStaticText
        Left = 18
        Top = 84
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Usu'#225'rio'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 10
      end
      object lbx_codusr: TListBox
        Left = 158
        Top = 81
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codusrKeyDown
      end
      object CODTRA: TEdit
        Left = 103
        Top = 42
        Width = 57
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object lbx_codtra: TListBox
        Left = 158
        Top = 43
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codtraKeyDown
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 255
    Width = 676
    Height = 118
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label4: TLabel
      Left = 19
      Top = 22
      Width = 51
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo:'
    end
    object Label5: TLabel
      Left = 160
      Top = 22
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 36
      Top = 42
      Width = 34
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 172
      Top = 44
      Width = 134
      Height = 13
      Caption = 'N'#250'mero do Documento:'
    end
    object Label8: TLabel
      Left = 402
      Top = 45
      Width = 113
      Height = 13
      Caption = 'N'#250'mero do Cheque:'
    end
    object Label9: TLabel
      Left = 1
      Top = 63
      Width = 145
      Height = 13
      Caption = 'Descri'#231#227'o do Movimento:'
    end
    object Label10: TLabel
      Left = 12
      Top = 86
      Width = 135
      Height = 13
      Caption = 'C'#243'digo do Lan'#231'amento:'
    end
    object Label11: TLabel
      Left = 274
      Top = 85
      Width = 114
      Height = 13
      Caption = 'Listar em Ordem de:'
    end
    object MDT1: TMaskEdit
      Left = 75
      Top = 18
      Width = 81
      Height = 21
      Hint = 
        'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
        #13#10'digite a mesma.'
      BevelOuter = bvNone
      BevelKind = bkSoft
      Ctl3D = True
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 172
      Top = 18
      Width = 81
      Height = 21
      Hint = 
        'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
        '.'
      BevelOuter = bvNone
      BevelKind = bkSoft
      Ctl3D = True
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_TPPESQ: TRadioGroup
      Left = 256
      Top = 11
      Width = 352
      Height = 28
      Caption = 'Tipo da Pesquisa'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Data Real'
        'Data Prevista'
        'Data Referencia')
      ParentCtl3D = False
      TabOrder = 2
    end
    object VALOR: TEdit
      Left = 75
      Top = 38
      Width = 82
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 3
      OnExit = VALORExit
    end
    object NUMDOC: TEdit
      Left = 307
      Top = 40
      Width = 81
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 4
    end
    object NUMCHQ: TEdit
      Left = 529
      Top = 40
      Width = 81
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 5
    end
    object DESCMV: TEdit
      Left = 154
      Top = 60
      Width = 456
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 6
    end
    object MCODLDR: TEdit
      Left = 154
      Top = 82
      Width = 81
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 7
      OnExit = MCODLDRExit
    end
    object CB_ORDEM: TComboBox
      Left = 395
      Top = 82
      Width = 214
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 8
      OnExit = CB_ORDEMExit
      Items.Strings = (
        'Descricao do Movimento'
        'Data Realizada'
        'Data Prevista'
        'Codigo(FR,CL,VL)'
        'Valor'
        'C'#243'digo Centro Custo'
        'C'#243'digo Banco'
        'C'#243'digo Departamento'
        'Numero Documento'
        'Numero Cheque'
        'Sequencia do lancamento'
        'Data Referencia')
    end
  end
end
