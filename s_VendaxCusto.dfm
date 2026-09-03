object Frm_VendaxCusto: TFrm_VendaxCusto
  Left = 386
  Top = 173
  Width = 938
  Height = 480
  Caption = 'Frm_VendaxCusto'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 922
    Height = 442
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 22
        Top = 4
        Width = 66
        Height = 13
        Caption = 'Periodo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 199
        Top = 3
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 326
        Top = 4
        Width = 103
        Height = 13
        Caption = 'Pesquisar Pedido por:'
      end
      object Label3: TLabel
        Left = 550
        Top = 3
        Width = 130
        Height = 13
        Caption = 'Pesquisar Dados Caixa por:'
      end
      object Label12: TLabel
        Left = 82
        Top = 114
        Width = 21
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 65
        Top = 150
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
      object sbn_coddep: TSpeedButton
        Left = 145
        Top = 226
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
      object SpeedButton1: TSpeedButton
        Left = 143
        Top = 263
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
        OnClick = SpeedButton1Click
      end
      object CB_TIPOPESQ: TComboBox
        Left = 435
        Top = 1
        Width = 99
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Data da Nota'
        Items.Strings = (
          'Data da Nota'
          'Data do Pedido')
      end
      object edt_datini: TDateEdit
        Left = 88
        Top = 1
        Width = 103
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object edt_datfin: TDateEdit
        Left = 217
        Top = 1
        Width = 103
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 2
      end
      object CB_TPPESQ_CAIXA: TComboBox
        Left = 707
        Top = 0
        Width = 142
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'Data Real(Pagamento)'
        Items.Strings = (
          'Data Real(Pagamento)'
          'Data Prevista(vencimento)'
          'Data Referencia(emissao)')
      end
      object StaticText4: TStaticText
        Left = 31
        Top = 39
        Width = 70
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
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
      object edt_codcli: TEdit
        Left = 105
        Top = 36
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = edt_codcliExit
        OnKeyPress = edt_codcliKeyPress
      end
      object lbx_codcli: TListBox
        Left = 170
        Top = 36
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
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 110
        Top = 58
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object StaticText5: TStaticText
        Left = 3
        Top = 77
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor:'
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
      object edt_codven: TEdit
        Left = 105
        Top = 74
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = edt_codvenExit
        OnKeyPress = edt_codvenKeyPress
      end
      object lbx_codven: TListBox
        Left = 170
        Top = 74
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 110
        Top = 96
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODUF: TEdit
        Left = 105
        Top = 112
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object lbx_coduf: TListBox
        Left = 170
        Top = 112
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 105
        Top = 131
        Width = 57
        Height = 20
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object CODLOC: TEdit
        Left = 105
        Top = 149
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 170
        Top = 150
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 106
        Top = 169
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object StaticText1: TStaticText
        Left = 3
        Top = 191
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Banco:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object edt_codbco_cx: TEdit
        Left = 105
        Top = 188
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        OnExit = edt_codbco_cxExit
        OnKeyPress = edt_codbco_cxKeyPress
      end
      object lbx_codbco_cx: TListBox
        Left = 170
        Top = 188
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_codbco_cxKeyDown
      end
      object OMITIR_BCO_CX: TCheckBox
        Left = 110
        Top = 210
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object StaticText2: TStaticText
        Left = 4
        Top = 229
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Departamento:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object edt_coddep_cx: TEdit
        Left = 105
        Top = 226
        Width = 38
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
        OnExit = edt_coddep_cxExit
      end
      object lbx_coddep_cx: TListBox
        Left = 170
        Top = 226
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnKeyDown = lbx_coddep_cxKeyDown
      end
      object OMITIR_DEP_CX: TCheckBox
        Left = 111
        Top = 248
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
      end
      object StaticText3: TStaticText
        Left = 4
        Top = 267
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Centro de Custo:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object edt_codccu_cx: TEdit
        Left = 105
        Top = 264
        Width = 38
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 27
        OnExit = edt_codccu_cxExit
      end
      object lbx_codccu_cx: TListBox
        Left = 170
        Top = 264
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
        OnKeyDown = lbx_codccu_cxKeyDown
      end
      object CB_CODCCU_CX: TCheckBox
        Left = 111
        Top = 286
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
      end
      object StaticText6: TStaticText
        Left = 5
        Top = 305
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
      end
      object edt_codfor: TEdit
        Left = 105
        Top = 302
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 31
        OnExit = edt_codforExit
        OnKeyPress = edt_codforKeyPress
      end
      object lbx_codfor: TListBox
        Left = 170
        Top = 302
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 32
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 112
        Top = 324
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
      end
      object bbImprimir: TBitBtn
        Left = 5
        Top = 378
        Width = 148
        Height = 36
        Cursor = crHandPoint
        Caption = '&Imprimir'
        TabOrder = 34
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
        Left = 465
        Top = 378
        Width = 148
        Height = 36
        Cursor = crHandPoint
        Caption = '&Sair'
        TabOrder = 35
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
      object gb_CLIENTES: TGroupBox
        Left = 516
        Top = 31
        Width = 105
        Height = 42
        Caption = 'Filtrar Tabela:'
        TabOrder = 36
        object CB_CLIENTES_PED: TCheckBox
          Left = 8
          Top = 12
          Width = 80
          Height = 17
          Caption = 'Pedidos'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CB_CLIENTES_CONTAS: TCheckBox
          Left = 8
          Top = 26
          Width = 80
          Height = 17
          Caption = 'Contas'
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 516
        Top = 70
        Width = 105
        Height = 42
        Caption = 'Filtrar Tabela:'
        TabOrder = 37
        object CB_VEND_PED: TCheckBox
          Left = 8
          Top = 11
          Width = 80
          Height = 17
          Caption = 'Pedidos'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CB_VEND_CONTAS: TCheckBox
          Left = 8
          Top = 23
          Width = 80
          Height = 17
          Caption = 'Contas'
          TabOrder = 1
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 0
        Top = 16
        Width = 1123
        Height = 794
        DataSource = src_cadbal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 91
          BandType = btHeader
          object RLImage_logo: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 91
            Align = faLeft
            Stretch = True
          end
          object lblcab_empresa: TRLLabel
            Left = 112
            Top = 3
            Width = 929
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lblcab_obsrel: TRLLabel
            Left = 112
            Top = 44
            Width = 689
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Balancete de Vendas x Produ'#231#227'o'
          end
          object lblcab_periodo: TRLLabel
            Left = 112
            Top = 66
            Width = 689
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Extrato de Produtos'
          end
          object lblcab_dathor_emi: TRLLabel
            Left = 805
            Top = 66
            Width = 241
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 931
            Top = 46
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 1013
            Top = 46
            Width = 32
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lblcab_fantasia: TRLLabel
            Left = 112
            Top = 22
            Width = 929
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 129
          Width = 1047
          Height = 112
          object rlcab_cabdet: TRLBand
            Left = 0
            Top = 16
            Width = 1047
            Height = 16
            BandType = btHeader
            object rlcab_ped_chave: TRLLabel
              Left = 7
              Top = 0
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chave'
              Layout = tlCenter
            end
            object rlcab_ped_nomcli: TRLLabel
              Left = 39
              Top = 0
              Width = 208
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Raz'#227'o Social'
              Layout = tlCenter
            end
            object rlcab_ped_cidade: TRLLabel
              Left = 248
              Top = 0
              Width = 108
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Cidade/UF'
              Layout = tlCenter
            end
            object rlcab_ped_data: TRLLabel
              Left = 357
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data'
              Layout = tlCenter
            end
            object rlcab_ped_valor_liq: TRLLabel
              Left = 416
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Pedido'
              Layout = tlCenter
            end
            object rlcab_ped_valor_cus: TRLLabel
              Left = 477
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vlr Custo'
              Layout = tlCenter
            end
            object rlcab_ped_perc_luc: TRLLabel
              Left = 539
              Top = 0
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%Lucro'
              Layout = tlCenter
            end
            object rlcab_cx_data: TRLLabel
              Left = 581
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_descmv: TRLLabel
              Left = 636
              Top = 0
              Width = 152
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o do Movimento'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_numdoc: TRLLabel
              Left = 788
              Top = 0
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'N'#250'm Doc'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_valdeb: TRLLabel
              Left = 838
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Deb'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_valcred: TRLLabel
              Left = 896
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Cred'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_saldo: TRLLabel
              Left = 954
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Saldo'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_cx_perc_fat: TRLLabel
              Left = 1012
              Top = 0
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 32
            Width = 1047
            Height = 15
            object rltext_ped_chave: TRLDBText
              Left = 7
              Top = -1
              Width = 34
              Height = 16
              AutoSize = False
              DataField = 'ped_chave'
              DataSource = src_cadbal
              Holder = rlcab_ped_chave
              Layout = tlCenter
            end
            object rldet_ped_nomcli: TRLDBText
              Left = 39
              Top = -1
              Width = 208
              Height = 16
              AutoSize = False
              DataField = 'ped_nomcli'
              DataSource = src_cadbal
              Holder = rlcab_ped_nomcli
              Layout = tlCenter
            end
            object rldet_ped_cidade: TRLDBText
              Left = 248
              Top = -2
              Width = 108
              Height = 16
              AutoSize = False
              DataField = 'ped_cidade'
              DataSource = src_cadbal
              Holder = rlcab_ped_cidade
              Layout = tlCenter
            end
            object rldet_ped_data: TRLDBText
              Left = 357
              Top = -1
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'ped_data'
              DataSource = src_cadbal
              Holder = rlcab_ped_data
              Layout = tlCenter
            end
            object rldet_ped_valor_liq: TRLDBText
              Left = 416
              Top = -1
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ped_valor_liq'
              DataSource = src_cadbal
              Holder = rlcab_ped_valor_liq
              Layout = tlCenter
            end
            object rldet_ped_valor_cus: TRLDBText
              Left = 477
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ped_valor_cus'
              DataSource = src_cadbal
              Holder = rlcab_ped_valor_cus
              Layout = tlCenter
            end
            object rldet_ped_perc_luc: TRLDBText
              Left = 539
              Top = -2
              Width = 40
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ped_perc_luc'
              DataSource = src_cadbal
              Holder = rlcab_ped_perc_luc
              Layout = tlCenter
            end
            object rldet_cx_data: TRLDBText
              Left = 581
              Top = 0
              Width = 56
              Height = 16
              AutoSize = False
              Color = 14540287
              DataField = 'cx_data'
              DataSource = src_cadbal
              Holder = rlcab_cx_data
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_descmv: TRLDBText
              Left = 636
              Top = 0
              Width = 152
              Height = 16
              AutoSize = False
              Color = 14540287
              DataField = 'cx_descmv'
              DataSource = src_cadbal
              Holder = rlcab_cx_descmv
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_numdoc: TRLDBText
              Left = 788
              Top = 0
              Width = 50
              Height = 16
              AutoSize = False
              Color = 14540287
              DataField = 'cx_numdoc'
              DataSource = src_cadbal
              Holder = rlcab_cx_numdoc
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_valdeb: TRLDBText
              Left = 838
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = 14540287
              DataField = 'cx_valdeb'
              DataSource = src_cadbal
              Holder = rlcab_cx_valdeb
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_valcred: TRLDBText
              Left = 896
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = 14540287
              DataField = 'cx_valcred'
              DataSource = src_cadbal
              Holder = rlcab_cx_valcred
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_saldo: TRLDBText
              Left = 954
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = 14540287
              DataField = 'cx_saldo'
              DataSource = src_cadbal
              Holder = rlcab_cx_saldo
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_cx_perc_fat: TRLDBText
              Left = 1012
              Top = 0
              Width = 34
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = 14540287
              DataField = 'cx_perc_fat'
              DataSource = src_cadbal
              Holder = rlcab_cx_perc_fat
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
          object RLcab_ini: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            BandType = btHeader
            object RLLabel1: TRLLabel
              Left = 6
              Top = 0
              Width = 568
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedidos do Periodo'
              Layout = tlCenter
            end
            object rlcab_cabcx: TRLLabel
              Left = 581
              Top = 0
              Width = 464
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Movimento do Caixa'
              Color = 14540287
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand_rod: TRLBand
            Left = 0
            Top = 47
            Width = 1047
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand_rodBeforePrint
            object rlrod_ped_chave: TRLLabel
              Left = 7
              Top = 0
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_chave
              Layout = tlCenter
            end
            object rlrod_ped_nomcli: TRLLabel
              Left = 39
              Top = 0
              Width = 208
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '- Total Geral'
              Holder = rlcab_ped_nomcli
              Layout = tlCenter
            end
            object rlrod_ped_cidade: TRLLabel
              Left = 248
              Top = 0
              Width = 108
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_cidade
              Layout = tlCenter
            end
            object rlrod_ped_data: TRLLabel
              Left = 357
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_data
              Layout = tlCenter
            end
            object rlrod_ped_valor_liq: TRLLabel
              Left = 416
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_valor_liq
              Layout = tlCenter
            end
            object rlrod_ped_valor_cus: TRLLabel
              Left = 477
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_valor_cus
              Layout = tlCenter
            end
            object rlrod_ped_perc_luc: TRLLabel
              Left = 539
              Top = 0
              Width = 40
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_perc_luc
              Layout = tlCenter
            end
            object rlrod_cx_data: TRLLabel
              Left = 581
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_data
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_descmv: TRLLabel
              Left = 636
              Top = 0
              Width = 152
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_descmv
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_numdoc: TRLLabel
              Left = 788
              Top = 0
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_numdoc
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_valdeb: TRLLabel
              Left = 838
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_valdeb
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_valcred: TRLLabel
              Left = 896
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_valcred
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_saldo: TRLLabel
              Left = 954
              Top = 1
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_saldo
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlrod_cx_perc_fat: TRLLabel
              Left = 1012
              Top = 1
              Width = 34
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Color = 14540287
              Holder = rlcab_cx_perc_fat
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
        end
        object rlsumario: TRLBand
          Left = 38
          Top = 241
          Width = 1047
          Height = 16
          BandType = btSummary
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 914
        Height = 217
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alTop
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
    end
  end
  object mem_cadbal: TRxMemoryData
    FieldDefs = <>
    Left = 372
    Top = 120
    object mem_cadbalped_chave: TIntegerField
      FieldName = 'ped_chave'
    end
    object mem_cadbalped_data: TDateField
      FieldName = 'ped_data'
    end
    object mem_cadbalped_nomcli: TStringField
      FieldName = 'ped_nomcli'
      Size = 100
    end
    object mem_cadbalped_cidade: TStringField
      FieldName = 'ped_cidade'
      Size = 60
    end
    object mem_cadbalped_valor_liq: TFloatField
      FieldName = 'ped_valor_liq'
    end
    object mem_cadbalped_valor_cus: TFloatField
      FieldName = 'ped_valor_cus'
    end
    object mem_cadbalped_perc_luc: TFloatField
      FieldName = 'ped_perc_luc'
    end
    object mem_cadbalcx_data: TDateField
      FieldName = 'cx_data'
    end
    object mem_cadbalcx_sacado: TStringField
      FieldName = 'cx_sacado'
      Size = 100
    end
    object mem_cadbalcx_coddep: TStringField
      FieldName = 'cx_coddep'
      Size = 6
    end
    object mem_cadbalcx_nomdep: TStringField
      FieldName = 'cx_nomdep'
      Size = 40
    end
    object mem_cadbalcx_codccu: TStringField
      FieldName = 'cx_codccu'
      Size = 6
    end
    object mem_cadbalcx_nomccu: TStringField
      FieldName = 'cx_nomccu'
      Size = 40
    end
    object mem_cadbalcx_codbco: TIntegerField
      FieldName = 'cx_codbco'
    end
    object mem_cadbalcx_nombco: TStringField
      FieldName = 'cx_nombco'
      Size = 40
    end
    object mem_cadbalcx_descmv: TStringField
      FieldName = 'cx_descmv'
      Size = 100
    end
    object mem_cadbalcx_natdc: TStringField
      FieldName = 'cx_natdc'
      Size = 1
    end
    object mem_cadbalcx_valdeb: TFloatField
      FieldName = 'cx_valdeb'
    end
    object mem_cadbalcx_valcred: TFloatField
      FieldName = 'cx_valcred'
    end
    object mem_cadbalcx_saldo: TFloatField
      FieldName = 'cx_saldo'
    end
    object mem_cadbalcx_numdoc: TStringField
      FieldName = 'cx_numdoc'
    end
    object mem_cadbalcx_perc_fat: TFloatField
      FieldName = 'cx_perc_fat'
    end
  end
  object src_cadbal: TDataSource
    DataSet = mem_cadbal
    Left = 432
    Top = 128
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 660
    Top = 352
  end
end
