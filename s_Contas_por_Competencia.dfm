object Frm_Contas_por_Competencia: TFrm_Contas_por_Competencia
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Contas por Competencia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 442
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 1
        Top = 24
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data de Inicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 312
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1
        Top = 45
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Separado por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 1
        Top = 62
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 92
        Top = 98
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornecedor:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 60
        Top = 140
        Width = 101
        Height = 13
        Alignment = taRightJustify
        Caption = 'Banco/Cobran'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 83
        Top = 175
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Banco/Caixa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbn_coddep: TSpeedButton
        Left = 206
        Top = 208
        Width = 20
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
        Left = 201
        Top = 246
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
      object edt_datini: TDateEdit
        Left = 165
        Top = 21
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_datiniExit
      end
      object edt_datfin: TDateEdit
        Left = 405
        Top = 21
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
        OnExit = edt_datfinExit
      end
      object cb_separado: TComboBox
        Left = 165
        Top = 41
        Width = 194
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        Sorted = True
        TabOrder = 2
        Items.Strings = (
          'Ano'
          'Banco'
          'Cidade'
          'Estado'
          'Sacado'
          'Sem Separar')
      end
      object CODCLI: TEdit
        Left = 165
        Top = 60
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 226
        Top = 60
        Width = 300
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 165
        Top = 81
        Width = 60
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CODFOR: TEdit
        Left = 165
        Top = 97
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 226
        Top = 97
        Width = 300
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 165
        Top = 119
        Width = 60
        Height = 17
        Hint = 'Se Marcado os C'#243'digos digitados'#13#10'n'#227'o Ser'#227'o Impressos'
        Caption = 'Omitir'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object edt_codbco_cob: TEdit
        Left = 165
        Top = 136
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = edt_codbco_cobExit
        OnKeyPress = edt_codbco_cobKeyPress
      end
      object lbx_codbco_cob: TListBox
        Left = 226
        Top = 136
        Width = 300
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codbco_cobKeyDown
      end
      object OMITIR_BCO_COB: TCheckBox
        Left = 165
        Top = 156
        Width = 60
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODBCO: TEdit
        Left = 165
        Top = 171
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object lbx_codbco: TListBox
        Left = 226
        Top = 171
        Width = 300
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codbcoKeyDown
      end
      object OMITIR_BCO: TCheckBox
        Left = 165
        Top = 192
        Width = 60
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object StaticText5: TStaticText
        Left = 1
        Top = 208
        Width = 160
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Departamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
      object edt_coddep: TEdit
        Left = 165
        Top = 208
        Width = 40
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnExit = edt_coddepExit
      end
      object lbx_coddep: TListBox
        Left = 226
        Top = 208
        Width = 300
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_coddepKeyDown
      end
      object OMITIR_DEP: TCheckBox
        Left = 165
        Top = 230
        Width = 60
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object StaticText6: TStaticText
        Left = 1
        Top = 247
        Width = 160
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Centro de Custo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object edt_CODCCU: TEdit
        Left = 165
        Top = 246
        Width = 40
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
        OnExit = edt_CODCCUExit
      end
      object lbx_codccu: TListBox
        Left = 226
        Top = 246
        Width = 300
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnKeyDown = lbx_codccuKeyDown
      end
      object OMITIR_CCU: TCheckBox
        Left = 165
        Top = 268
        Width = 60
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
      end
      object bbImprimir: TBitBtn
        Left = 37
        Top = 313
        Width = 150
        Height = 21
        Cursor = crHandPoint
        Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnClick = bbImprimirClick
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
      object bbSair: TBitBtn
        Left = 389
        Top = 306
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
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
    object tsrelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 16
        Top = 32
        Width = 794
        Height = 1123
        DataSource = srcProc_contas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 123
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSintImage1: TRLImage
            Left = 0
            Top = 0
            Width = 217
            Height = 123
            Align = faLeft
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Stretch = True
          end
          object lblcab_emp: TRLLabel
            Left = 215
            Top = 0
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_endereco: TRLLabel
            Left = 215
            Top = 22
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_cidade_uf_cep: TRLLabel
            Left = 215
            Top = 40
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_dathor: TRLLabel
            Left = 256
            Top = 97
            Width = 338
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 615
            Top = 97
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 673
            Top = 97
            Width = 42
            Height = 14
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object lblcab_fonefax: TRLLabel
            Left = 215
            Top = 60
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_email_home: TRLLabel
            Left = 215
            Top = 79
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 161
          Width = 718
          Height = 64
          DataFields = 'GRUPO'
          object RLBand_nomgrupo: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object txt_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faTop
              Alignment = taCenter
              DataField = 'GRUPO'
              DataSource = srcProc_contas
            end
          end
          object rlcabgru: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object rlcab_DATACOMP: TRLLabel
              Left = 10
              Top = 0
              Width = 82
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Competencia'
              Layout = tlCenter
            end
            object rlcab_NOMSAC: TRLLabel
              Left = 95
              Top = 0
              Width = 294
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nome do Sacado'
              Layout = tlCenter
            end
            object rlcab_CODSAC: TRLLabel
              Left = 397
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object rlcab_NUMDOC: TRLLabel
              Left = 462
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Num.Doc'
              Layout = tlCenter
            end
            object rlcab_desdob: TRLLabel
              Left = 524
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Desd'
              Layout = tlCenter
            end
            object rlcab_VALCRED: TRLLabel
              Left = 557
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Credito'
              Layout = tlCenter
            end
            object rlcab_VALDEB: TRLLabel
              Left = 636
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Debito'
              Layout = tlCenter
            end
          end
          object rldetgru: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object rldet_DATACOMP: TRLDBText
              Left = 10
              Top = 0
              Width = 70
              Height = 16
              AutoSize = False
              DataField = 'DATACOMP'
              DataSource = srcProc_contas
              Holder = rldet_DATACOMP
              Layout = tlCenter
            end
            object rldet_NOMSAC: TRLDBText
              Left = 95
              Top = 0
              Width = 294
              Height = 16
              AutoSize = False
              DataField = 'NOMSAC'
              DataSource = srcProc_contas
              Holder = rlcab_NOMSAC
              Layout = tlCenter
            end
            object rldet_CODSAC: TRLDBText
              Left = 397
              Top = 0
              Width = 64
              Height = 16
              AutoSize = False
              DataField = 'CODSAC'
              DataSource = srcProc_contas
              Holder = rlcab_CODSAC
              Layout = tlCenter
            end
            object rldet_VALCRED: TRLDBText
              Left = 557
              Top = 0
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VALCRED'
              DataSource = srcProc_contas
              Holder = rlcab_VALCRED
              Layout = tlCenter
            end
            object rldet_VALDEB: TRLDBText
              Left = 636
              Top = 0
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VALDEB'
              DataSource = srcProc_contas
              Holder = rlcab_VALDEB
              Layout = tlCenter
            end
            object rldet_NUMDOC: TRLDBText
              Left = 462
              Top = 0
              Width = 64
              Height = 16
              AutoSize = False
              DataField = 'NUMDOC'
              DataSource = srcProc_contas
              Holder = rlcab_NUMDOC
              Layout = tlCenter
            end
            object rldet_DESDOB: TRLDBText
              Left = 524
              Top = 0
              Width = 32
              Height = 16
              AutoSize = False
              DataField = 'DESDOB'
              DataSource = srcProc_contas
              Holder = rlcab_desdob
              Layout = tlCenter
            end
          end
        end
        object RLBand_cabcrit: TRLBand
          Left = 38
          Top = 225
          Width = 718
          Height = 16
          AutoSize = True
          BandType = btSummary
          object RLMemo_criterito: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 708
    Top = 96
  end
  object RLWord: TRLRichFilter
    DisplayName = 'Formato RichText(word)'
    Left = 756
    Top = 56
  end
  object strProc_contas: TADOStoredProc
    Connection = DM1_ADO.ADOConnection1
    ProcedureName = 'titulos_por_competencia'
    Parameters = <
      item
        Name = 'pCondicoes_pagar'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'pCampoGrupo_pagar'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'pCondicoes_receber'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'pCampoGrupo_receber'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'pOrdem'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    Left = 616
    Top = 200
    object strProc_contasDATACOMP: TStringField
      FieldName = 'DATACOMP'
      Size = 7
    end
    object strProc_contasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object strProc_contasPARC: TStringField
      FieldName = 'PARC'
      Size = 10
    end
    object strProc_contasNUMDOC: TFloatField
      FieldName = 'NUMDOC'
    end
    object strProc_contasDTEMIS: TDateTimeField
      FieldName = 'DTEMIS'
    end
    object strProc_contasCODSAC: TFloatField
      FieldName = 'CODSAC'
    end
    object strProc_contasDESDOB: TStringField
      FieldName = 'DESDOB'
      Size = 10
    end
    object strProc_contasTIPOSAC: TStringField
      FieldName = 'TIPOSAC'
      Size = 1
    end
    object strProc_contasDTVCTO: TDateTimeField
      FieldName = 'DTVCTO'
    end
    object strProc_contasVALTIT: TFloatField
      FieldName = 'VALTIT'
    end
    object strProc_contasVALDES: TFloatField
      FieldName = 'VALDES'
    end
    object strProc_contasJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object strProc_contasDTBX: TDateTimeField
      FieldName = 'DTBX'
    end
    object strProc_contasDTPAG: TDateTimeField
      FieldName = 'DTPAG'
    end
    object strProc_contasNOMDEP: TStringField
      FieldName = 'NOMDEP'
      Size = 100
    end
    object strProc_contasCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object strProc_contasDESCMV: TStringField
      FieldName = 'DESCMV'
      Size = 300
    end
    object strProc_contasCODCC: TStringField
      FieldName = 'CODCC'
      Size = 7
    end
    object strProc_contasNOMCC: TStringField
      FieldName = 'NOMCC'
      Size = 200
    end
    object strProc_contasGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 200
    end
    object strProc_contasLINHA: TFloatField
      FieldName = 'LINHA'
    end
    object strProc_contasNOMSAC: TStringField
      FieldName = 'NOMSAC'
      Size = 200
    end
    object strProc_contasVALDEB: TFloatField
      FieldName = 'VALDEB'
    end
    object strProc_contasVALCRED: TFloatField
      FieldName = 'VALCRED'
    end
  end
  object srcProc_contas: TDataSource
    DataSet = strProc_contas
    Left = 648
    Top = 184
  end
end
