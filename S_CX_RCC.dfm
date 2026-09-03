object Frm_CX_RCC: TFrm_CX_RCC
  Left = 134
  Top = 121
  Width = 807
  Height = 511
  Caption = 'Relat'#243'rio resumido por departamento e centro de custo'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 799
    Height = 133
    Align = alBottom
    TabOrder = 0
    object Label6: TLabel
      Left = 12
      Top = 12
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label7: TLabel
      Left = 220
      Top = 12
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 16
      Top = 113
      Width = 119
      Height = 13
      Caption = 'Modelo do Relatorio:'
    end
    object MDT1: TMaskEdit
      Left = 125
      Top = 10
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 247
      Top = 10
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object RG_NAT: TRadioGroup
      Left = 15
      Top = 30
      Width = 289
      Height = 30
      Caption = 'Natureza:'
      Columns = 3
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '&Todas'
        '&D'#233'bitos'
        '&Cr'#233'ditos')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnClick = RG_NATClick
    end
    object RG_ESTADO: TRadioGroup
      Left = 16
      Top = 60
      Width = 289
      Height = 29
      Caption = 'Estado dos lan'#231'amentos:'
      Columns = 3
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '&Realizados'
        '&Previstos'
        '&Todos')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnClick = RG_ESTADOClick
    end
    object RG_ORIGEMINFO: TRadioGroup
      Left = 352
      Top = 4
      Width = 287
      Height = 30
      Caption = 'Origem das informacoes:'
      Columns = 2
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Fluxo de Caixa'
        'Contas a Receber/Pagar')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnClick = RG_ORIGEMINFOClick
    end
    object memo_obs: TMemo
      Left = 352
      Top = 39
      Width = 287
      Height = 51
      Color = 9671679
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Vc Selecionou do Contas a Receber/Pagar,  neste caso a '
        'pesquisa sera feita da seguinte maneira se realizados '#233' feita '
        'por data de Pagamento se Previsto sera por data de '
        'Vencimento')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object CB_DATAREF: TCheckBox
      Left = 17
      Top = 90
      Width = 230
      Height = 17
      Caption = 'Pesquisar Na Data de Referencia'
      TabOrder = 6
      OnClick = CB_DATAREFClick
    end
    object CB_NOTACREDITO: TCheckBox
      Left = 352
      Top = 91
      Width = 289
      Height = 17
      Caption = 'Permitir Nota de Credito'
      TabOrder = 7
      Visible = False
      OnClick = CB_NOTACREDITOClick
    end
    object CB_MODREL: TComboBox
      Left = 139
      Top = 109
      Width = 168
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Modelo 01(matricial)'
      OnClick = CB_MODRELClick
      Items.Strings = (
        'Modelo 01(matricial)'
        'Modelo 02(laser) sem saldo')
    end
    object CB_BORDAS: TCheckBox
      Left = 310
      Top = 110
      Width = 131
      Height = 17
      Caption = 'Eliminar Bordas'
      TabOrder = 9
      Visible = False
      OnClick = CB_BORDASClick
    end
    object cb_emitir_nulos: TCheckBox
      Left = 425
      Top = 109
      Width = 131
      Height = 17
      Caption = 'Emitir Nulos'
      TabOrder = 10
      OnClick = CB_BORDASClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 799
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lbl_dtconsis: TLabel
      Left = 270
      Top = 4
      Width = 172
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Data p/Consistencia'
      Color = 8454143
      ParentColor = False
    end
    object lbl_agrupar: TLabel
      Left = 444
      Top = 4
      Width = 71
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Agrupar'
      Color = 8454143
      ParentColor = False
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 108
      Height = 38
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 1
      Width = 108
      Height = 40
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbConsiste: TBitBtn
      Left = 117
      Top = 1
      Width = 150
      Height = 40
      Caption = 'Consistencia Fin x Fluxo'
      TabOrder = 2
      OnClick = bbConsisteClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CB_DTCONS: TComboBox
      Left = 270
      Top = 20
      Width = 172
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Data Emiss'#227'o/Referencia'
      Items.Strings = (
        'Data Emiss'#227'o/Referencia'
        'Data Vencto/Prevista'
        'Data Pgto/Real')
    end
    object CB_AGRUPAR: TComboBox
      Left = 444
      Top = 20
      Width = 75
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Dia'
      Items.Strings = (
        'Dia'
        'Mes'
        'Ano'
        'Geral')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 799
    Height = 306
    ActivePage = TabSheet1
    Align = alClient
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
        Caption = 'Banco/Caixa:'
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
      object MCODUSR: TEdit
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
        OnExit = MCODUSRExit
        OnKeyPress = MCODUSRKeyPress
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
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -8
        Top = 0
        Width = 794
        Height = 1123
        DataSource = Src_LDR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 39
          BandType = btColumnHeader
          object RLSystemInfo1: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object txt_nomemp: TRLDBText
            Left = 79
            Top = 1
            Width = 564
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_titulo: TRLLabel
            Left = 2
            Top = 20
            Width = 276
            Height = 16
            Caption = 'Relatorio de Departamento e Centro de custos.'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 576
            Top = 20
            Width = 103
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 679
            Top = 20
            Width = 35
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLGroup_dep: TRLGroup
          Left = 38
          Top = 114
          Width = 718
          Height = 55
          DataFields = 'NOMDEP'
          object RLBand_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object RLDBText1: TRLDBText
              Left = 80
              Top = -1
              Width = 636
              Height = 16
              AutoSize = False
              DataField = 'NOMDEP'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txt_coddep: TRLDBText
              Left = 10
              Top = -1
              Width = 65
              Height = 16
              AutoSize = False
              DataField = 'CODDEP'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand_cab02: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 4
            BandType = btColumnHeader
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 20
            Width = 718
            Height = 16
            AfterPrint = RLBand1AfterPrint
            object txt_codccu: TRLDBText
              Left = 1
              Top = 0
              Width = 79
              Height = 16
              AutoSize = False
              DataField = 'CODCC'
              DataSource = Src_LDR
            end
            object txt_nomccu: TRLDBText
              Left = 80
              Top = 0
              Width = 293
              Height = 16
              AutoSize = False
              DataField = 'NOMCCU'
              DataSource = Src_LDR
            end
            object txt_cred: TRLDBText
              Left = 375
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRED'
              DataSource = Src_LDR
            end
            object txt_deb: TRLDBText
              Left = 545
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'DEB'
              DataSource = Src_LDR
            end
          end
          object RLBand_totgru: TRLBand
            Left = 0
            Top = 36
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand_totgruBeforePrint
            object lblgru_codccu: TRLLabel
              Left = 1
              Top = 0
              Width = 79
              Height = 16
              AutoSize = False
            end
            object lblgru_nomccu: TRLLabel
              Left = 80
              Top = 0
              Width = 293
              Height = 16
              AutoSize = False
              Caption = 'Total do Grupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblgru_cred: TRLLabel
              Left = 375
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblgru_deb: TRLLabel
              Left = 545
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLBand_filtros: TRLBand
          Left = 38
          Top = 77
          Width = 718
          Height = 21
          BandType = btColumnHeader
          object rlfiltros: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object RLBand_total: TRLBand
          Left = 38
          Top = 169
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand_totalBeforePrint
          object lblger_codccu: TRLLabel
            Left = 1
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
          end
          object lblger_nomccu: TRLLabel
            Left = 80
            Top = 0
            Width = 293
            Height = 17
            AutoSize = False
            Caption = 'Total do Geral:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblger_cred: TRLLabel
            Left = 375
            Top = 0
            Width = 170
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblger_deb: TRLLabel
            Left = 545
            Top = 0
            Width = 170
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand_rodape: TRLBand
          Left = 38
          Top = 185
          Width = 718
          Height = 16
          BandType = btFooter
          object lbl_obs: TRLLabel
            Left = 0
            Top = 0
            Width = 26
            Height = 7
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 38
          Top = 98
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object lbl_codccu: TRLLabel
            Left = 1
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo'
          end
          object lbl_nomccu: TRLLabel
            Left = 80
            Top = 0
            Width = 293
            Height = 16
            AutoSize = False
            Caption = 'Descri'#231#227'o Centro de Custo'
          end
          object lbl_cred: TRLLabel
            Left = 375
            Top = 0
            Width = 170
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Cr'#233'dito'
          end
          object lbl_deb: TRLLabel
            Left = 545
            Top = 0
            Width = 170
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'D'#233'bito'
          end
        end
      end
    end
    object tsRelDiver: TTabSheet
      Caption = 'Rel.Divergencia'
      ImageIndex = 3
      object RLReport2: TRLReport
        Left = -35
        Top = -20
        Width = 794
        Height = 1123
        DataSource = Src_Total
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand2: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 39
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLSystemInfo5: TRLSystemInfo
            Left = 1
            Top = 1
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 678
            Top = 1
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLDBText2: TRLDBText
            Left = 87
            Top = 0
            Width = 564
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 2
            Top = 20
            Width = 411
            Height = 16
            Caption = 
              'Relatorio das Digervencias Entre o Fluxo e o Contas a Pagar/Rece' +
              'ber.'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 576
            Top = 20
            Width = 103
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 679
            Top = 20
            Width = 35
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 99
          Width = 718
          Height = 83
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'GRUPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand3: TRLBand
            Left = 1
            Top = 1
            Width = 716
            Height = 16
            BandType = btColumnHeader
            object RLDBText3: TRLDBText
              Left = 80
              Top = -1
              Width = 636
              Height = 16
              AutoSize = False
              DataField = 'GRUPO'
              DataSource = Src_Total
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 1
            Top = 17
            Width = 716
            Height = 33
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object lbl_rdCabCRCre: TRLLabel
              Left = 79
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Cr'#233'dito'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabCRDeb: TRLLabel
              Left = 143
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'D'#233'bito'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabCPCre: TRLLabel
              Left = 334
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Cr'#233'dito'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFPCPCre: TRLLabel
              Left = 461
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Cr'#233'dito'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object RLLabel2: TRLLabel
              Left = 77
              Top = 0
              Width = 130
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CONTAS A RECEBER'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object RLLabel3: TRLLabel
              Left = 207
              Top = 0
              Width = 128
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'FLUXO DE CAIXA'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFCCRCre: TRLLabel
              Left = 207
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Cr'#233'dito'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFCCRDeb: TRLLabel
              Left = 271
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'D'#233'bito'
              Color = 11206570
              ParentColor = False
              Transparent = False
            end
            object RLLabel6: TRLLabel
              Left = 335
              Top = 0
              Width = 126
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CONTAS A PAGAR'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabCPDeb: TRLLabel
              Left = 397
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'D'#233'bito'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object RLLabel4: TRLLabel
              Left = 461
              Top = 0
              Width = 128
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'FLUXO DE CAIXA'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFCCPDeb: TRLLabel
              Left = 525
              Top = 16
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'D'#233'bito'
              Color = 8454143
              ParentColor = False
              Transparent = False
            end
            object lbl_grupo: TRLMemo
              Left = 0
              Top = 0
              Width = 78
              Height = 35
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
            end
            object RLLabel5: TRLLabel
              Left = 589
              Top = 0
              Width = 128
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'FLUXO DE CAIXA'
              Color = 16764831
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFCCre: TRLLabel
              Left = 589
              Top = 17
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Cr'#233'dito'
              Color = 16764831
              ParentColor = False
              Transparent = False
            end
            object lbl_rdCabFCDeb: TRLLabel
              Left = 652
              Top = 17
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'D'#233'bito'
              Color = 16764831
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand5: TRLBand
            Left = 1
            Top = 50
            Width = 716
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            AfterPrint = RLBand1AfterPrint
            object txt_rdCabCRCre: TRLDBText
              Left = 79
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              DataField = 'CR_CRED'
              DataSource = Src_Total
              Holder = lbl_rdCabCRCre
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabCRDeb: TRLDBText
              Left = 143
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              DataField = 'CR_DEB'
              DataSource = Src_Total
              Holder = lbl_rdCabCRDeb
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabCPCre: TRLDBText
              Left = 334
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              DataField = 'CP_CRED'
              DataSource = Src_Total
              Holder = lbl_rdCabCPCre
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabFPCPCre: TRLDBText
              Left = 461
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              DataField = 'FCCP_CRED'
              DataSource = Src_Total
              Holder = lbl_rdCabFPCPCre
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabFCCRCre: TRLDBText
              Left = 207
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              DataField = 'FCCR_CRED'
              DataSource = Src_Total
              Holder = lbl_rdCabFCCRCre
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabFCCRDeb: TRLDBText
              Left = 271
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              DataField = 'FCCR_DEB'
              DataSource = Src_Total
              Holder = lbl_rdCabFCCRDeb
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabCPDeb: TRLDBText
              Left = 397
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              DataField = 'CP_DEB'
              DataSource = Src_Total
              Holder = lbl_rdCabCPDeb
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabFCCPDeb: TRLDBText
              Left = 525
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              DataField = 'FPCP_DEB'
              DataSource = Src_Total
              Holder = lbl_rdCabFCCPDeb
              ParentColor = False
              Transparent = False
            end
            object txt_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CAMPO_GRUPO'
              DataSource = Src_Total
              Holder = lbl_grupo
            end
            object txt_rdCabFCCre: TRLDBText
              Left = 589
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 16764831
              DataField = 'FC_CRED'
              DataSource = Src_Total
              Holder = lbl_rdCabFCCre
              ParentColor = False
              Transparent = False
            end
            object txt_rdCabFCDeb: TRLDBText
              Left = 652
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = 16764831
              DataField = 'FC_DEB'
              DataSource = Src_Total
              Holder = lbl_rdCabFCDeb
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand6: TRLBand
            Left = 1
            Top = 66
            Width = 716
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand_totgruBeforePrint
            object TotGru_rdCabCRCre: TRLLabel
              Left = 79
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              Holder = lbl_rdCabCRCre
              ParentColor = False
              Transparent = False
            end
            object totgru_rdCabFCCRDeb: TRLLabel
              Left = 271
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total do Grupo:'
              Color = 11206570
              Holder = lbl_rdCabFCCRDeb
              ParentColor = False
              Transparent = False
            end
            object TotGru_rdCabCPCre: TRLLabel
              Left = 334
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              Holder = lbl_rdCabCPCre
              ParentColor = False
              Transparent = False
            end
            object totgrul_rdCabFCCPDeb: TRLLabel
              Left = 461
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              Holder = lbl_rdCabFPCPCre
              ParentColor = False
              Transparent = False
            end
            object totgru_rdCabFCCRCre: TRLLabel
              Left = 207
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              Holder = lbl_rdCabFCCRCre
              ParentColor = False
              Transparent = False
            end
            object totgru_rdCabCRDeb: TRLLabel
              Left = 143
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 11206570
              Holder = lbl_rdCabCRDeb
              ParentColor = False
              Transparent = False
            end
            object totgrul_rdCabCPDeb: TRLLabel
              Left = 397
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              Holder = lbl_rdCabCPDeb
              ParentColor = False
              Transparent = False
            end
            object totgru_rdCabFCCPDeb: TRLLabel
              Left = 525
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 8454143
              Holder = lbl_rdCabFCCPDeb
              ParentColor = False
              Transparent = False
            end
            object totgru_grupo: TRLLabel
              Left = 0
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Holder = lbl_grupo
            end
            object totgru_rdCabFCDeb: TRLLabel
              Left = 652
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = 16764831
              Holder = lbl_rdCabFCDeb
              ParentColor = False
              Transparent = False
            end
            object totgru_rdCabFCCre: TRLLabel
              Left = 589
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Color = 16764831
              Holder = lbl_rdCabFCCre
              ParentColor = False
              Transparent = False
            end
          end
        end
        object RLBand7: TRLBand
          Left = 38
          Top = 77
          Width = 718
          Height = 22
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLMemo1: TRLMemo
            Left = 1
            Top = 1
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object RLBand8: TRLBand
          Left = 38
          Top = 182
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand_totalBeforePrint
          object totger_rdCabCRCre: TRLLabel
            Left = 80
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 11206570
            Holder = lbl_rdCabCRCre
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabCRDeb: TRLLabel
            Left = 144
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total do Geral:'
            Color = 11206570
            Holder = lbl_rdCabCRDeb
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabCPCre: TRLLabel
            Left = 335
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 8454143
            Holder = lbl_rdCabCPCre
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabFPCPCre: TRLLabel
            Left = 462
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 8454143
            Holder = lbl_rdCabFPCPCre
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabFCCRCre: TRLLabel
            Left = 208
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 11206570
            Holder = lbl_rdCabFCCRCre
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabFCCRDeb: TRLLabel
            Left = 272
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total do Geral:'
            Color = 11206570
            Holder = lbl_rdCabFCCRDeb
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabCPDeb: TRLLabel
            Left = 398
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 8454143
            Holder = lbl_rdCabCPDeb
            ParentColor = False
            Transparent = False
          end
          object totgerl_rdCabFCCPDeb: TRLLabel
            Left = 526
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 8454143
            Holder = lbl_rdCabFCCPDeb
            ParentColor = False
            Transparent = False
          end
          object totger_grupo: TRLLabel
            Left = 1
            Top = 0
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Holder = lbl_grupo
          end
          object totrgru_rdCabFCDeb: TRLLabel
            Left = 653
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = 16764831
            Holder = lbl_rdCabFCDeb
            ParentColor = False
            Transparent = False
          end
          object totger_rdCabFCCre: TRLLabel
            Left = 590
            Top = 0
            Width = 64
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 16764831
            Holder = lbl_rdCabFCCre
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand9: TRLBand
          Left = 38
          Top = 198
          Width = 718
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel14: TRLLabel
            Left = 0
            Top = 1
            Width = 37
            Height = 7
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object rel_layser_02: TTabSheet
      Caption = 'Relaorio Layser 02'
      ImageIndex = 4
      object RLReport3: TRLReport
        Left = -1
        Top = -2
        Width = 794
        Height = 1123
        DataSource = Src_LDR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand11: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 39
          BandType = btColumnHeader
          object RLSystemInfo9: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo10: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLDBText4: TRLDBText
            Left = 79
            Top = 1
            Width = 564
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 2
            Top = 20
            Width = 276
            Height = 16
            Caption = 'Relatorio de Departamento e Centro de custos.'
          end
          object RLSystemInfo11: TRLSystemInfo
            Left = 576
            Top = 20
            Width = 103
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo12: TRLSystemInfo
            Left = 679
            Top = 20
            Width = 35
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLGroup2: TRLGroup
          Left = 38
          Top = 114
          Width = 718
          Height = 55
          DataFields = 'NOMDEP'
          object RLBand12: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object RLDBText5: TRLDBText
              Left = 80
              Top = -1
              Width = 636
              Height = 16
              AutoSize = False
              DataField = 'NOMDEP'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 10
              Top = -1
              Width = 65
              Height = 16
              AutoSize = False
              DataField = 'CODDEP'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand13: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 4
            BandType = btColumnHeader
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 20
            Width = 718
            Height = 16
            AfterPrint = RLBand1AfterPrint
            object RLDBText7: TRLDBText
              Left = 1
              Top = 0
              Width = 79
              Height = 16
              AutoSize = False
              DataField = 'CODCC'
              DataSource = Src_LDR
            end
            object RLDBText8: TRLDBText
              Left = 80
              Top = 0
              Width = 293
              Height = 16
              AutoSize = False
              DataField = 'NOMCCU'
              DataSource = Src_LDR
            end
            object RLDBText9: TRLDBText
              Left = 375
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRED'
              DataSource = Src_LDR
            end
            object RLDBText10: TRLDBText
              Left = 545
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'DEB'
              DataSource = Src_LDR
            end
          end
          object RLBand15: TRLBand
            Left = 0
            Top = 36
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand_totgruBeforePrint
            object RLLabel8: TRLLabel
              Left = 1
              Top = 0
              Width = 79
              Height = 16
              AutoSize = False
            end
            object RLLabel9: TRLLabel
              Left = 80
              Top = 0
              Width = 293
              Height = 16
              AutoSize = False
              Caption = 'Total do Grupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel10: TRLLabel
              Left = 375
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel11: TRLLabel
              Left = 545
              Top = 0
              Width = 170
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLBand16: TRLBand
          Left = 38
          Top = 77
          Width = 718
          Height = 21
          BandType = btColumnHeader
          object RLMemo2: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object RLBand17: TRLBand
          Left = 38
          Top = 169
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand_totalBeforePrint
          object RLLabel12: TRLLabel
            Left = 1
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
          end
          object RLLabel13: TRLLabel
            Left = 80
            Top = 0
            Width = 293
            Height = 17
            AutoSize = False
            Caption = 'Total do Geral:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 375
            Top = 0
            Width = 170
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 545
            Top = 0
            Width = 170
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand18: TRLBand
          Left = 38
          Top = 185
          Width = 718
          Height = 16
          BandType = btFooter
          object RLLabel17: TRLLabel
            Left = 0
            Top = 0
            Width = 37
            Height = 7
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand19: TRLBand
          Left = 38
          Top = 98
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object RLLabel18: TRLLabel
            Left = 1
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo'
          end
          object RLLabel19: TRLLabel
            Left = 80
            Top = 0
            Width = 293
            Height = 16
            AutoSize = False
            Caption = 'Descri'#231#227'o Centro de Custo'
          end
          object RLLabel20: TRLLabel
            Left = 375
            Top = 0
            Width = 170
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Cr'#233'dito'
          end
          object RLLabel21: TRLLabel
            Left = 545
            Top = 0
            Width = 170
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'D'#233'bito'
          end
        end
      end
    end
  end
  object Qr_LDR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CODDEP as CODDEP, '#39'A '#39'  AS NOMDEP, CODCC, '#39'A '#39'  as NOMCCU' +
        ', VALORR as CRED, VALORP as DEB'
      'from CADLDR'
      'where CODEMP is null')
    Left = 200
    Top = 8
    object Qr_LDRCRED: TFloatField
      FieldName = 'CRED'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Qr_LDRDEB: TFloatField
      FieldName = 'DEB'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LDRNOMDEP: TStringField
      FieldName = 'NOMDEP'
      FixedChar = True
      Size = 2
    end
    object Qr_LDRCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object Qr_LDRCODCC: TStringField
      FieldName = 'CODCC'
      Size = 6
    end
    object Qr_LDRNOMCCU: TStringField
      FieldName = 'NOMCCU'
      FixedChar = True
      Size = 2
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 228
    Top = 7
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF(Acrobat reader)'
    Left = 658
    Top = 52
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 674
    Top = 300
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 680
    Top = 328
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento Word(Richtext)'
    Left = 666
    Top = 372
  end
  object Qr_Total: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select CAMPO_GRUPO as GRUPO,  CAMPO_GRUPO,CAMPO_ORDEM,sum(CR_CRE' +
        'D) as CR_CRED,'
      'sum(CR_DEB) AS CR_DEB, sum(FCCR_CRED) as FCCR_CRED,'
      'sum(FCCR_DEB) as FCCR_DEB,'
      'sum(CP_CRED) AS CP_CRED, sum(CP_DEB) as CP_DEB,'
      'sum(FCCP_CRED) as FCCP_CRED, sum(FCCP_DEB) as FPCP_DEB'
      ',sum(FC_CRED) as FC_CRED'
      ',sum(FC_DEB) as FC_DEB from TTT00000 '
      'group by CAMPO_GRUPO,CAMPO_ORDEM')
    Left = 274
    Top = 12
    object Qr_TotalCAMPO_GRUPO: TStringField
      FieldName = 'CAMPO_GRUPO'
      Origin = 'SG_ASSOC.TTT00000.CAMPO_GRUPO'
      Size = 10
    end
    object Qr_TotalCAMPO_ORDEM: TStringField
      FieldName = 'CAMPO_ORDEM'
      Origin = 'SG_ASSOC.TTT00000.CAMPO_ORDEM'
      Size = 8
    end
    object Qr_TotalCR_CRED: TFloatField
      FieldName = 'CR_CRED'
      Origin = 'SG_ASSOC.TTT00000.CR_CRED'
    end
    object Qr_TotalCR_DEB: TFloatField
      FieldName = 'CR_DEB'
      Origin = 'SG_ASSOC.TTT00000.CR_DEB'
    end
    object Qr_TotalFCCR_CRED: TFloatField
      FieldName = 'FCCR_CRED'
      Origin = 'SG_ASSOC.TTT00000.FCCR_CRED'
    end
    object Qr_TotalCP_CRED: TFloatField
      FieldName = 'CP_CRED'
      Origin = 'SG_ASSOC.TTT00000.CP_CRED'
    end
    object Qr_TotalCP_DEB: TFloatField
      FieldName = 'CP_DEB'
      Origin = 'SG_ASSOC.TTT00000.CP_DEB'
    end
    object Qr_TotalFCCP_CRED: TFloatField
      FieldName = 'FCCP_CRED'
      Origin = 'SG_ASSOC.TTT00000.FCCP_CRED'
    end
    object Qr_TotalFPCP_DEB: TFloatField
      FieldName = 'FPCP_DEB'
      Origin = 'SG_ASSOC.TTT00000.FCCP_DEB'
    end
    object Qr_TotalFC_CRED: TFloatField
      FieldName = 'FC_CRED'
      Origin = 'SG_ASSOC.TTT00000.FC_CRED'
    end
    object Qr_TotalFC_DEB: TFloatField
      FieldName = 'FC_DEB'
      Origin = 'SG_ASSOC.TTT00000.FC_DEB'
    end
    object Qr_TotalGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.TTT00000.CAMPO_GRUPO'
      Size = 10
    end
    object Qr_TotalFCCR_DEB: TFloatField
      FieldName = 'FCCR_DEB'
      Origin = 'SG_ASSOC.TTT00000.FCCR_DEB'
    end
  end
  object Src_Total: TDataSource
    DataSet = Qr_Total
    Left = 300
    Top = 15
  end
  object ds_mod_layser_02: TDataSource
    DataSet = rel_mod_layser_02
    Left = 724
    Top = 367
  end
  object rel_mod_layser_02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CODDEP as CODDEP, '#39'A '#39'  AS NOMDEP, CODCC, '#39'A '#39'  as NOMCCU' +
        ', VALORR as CRED, VALORP as DEB'
      'from CADLDR'
      'where CODEMP is null')
    Left = 696
    Top = 368
    object FloatField1: TFloatField
      FieldName = 'CRED'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object FloatField2: TFloatField
      FieldName = 'DEB'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object StringField1: TStringField
      FieldName = 'NOMDEP'
      FixedChar = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'CODCC'
      Size = 6
    end
    object StringField4: TStringField
      FieldName = 'NOMCCU'
      FixedChar = True
      Size = 2
    end
  end
end
