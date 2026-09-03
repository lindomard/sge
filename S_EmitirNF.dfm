object Frm_EmitirNF: TFrm_EmitirNF
  Left = 91
  Top = 61
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Notas Fiscais por Intervalo'
  ClientHeight = 543
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 502
    Width = 959
    Height = 41
    Align = alBottom
    TabOrder = 0
    object sb_VendasVend: TSpeedButton
      Left = 316
      Top = 3
      Width = 140
      Height = 35
      Hint = 'Mostrar a Venda de Um Determinado Vendedor'
      Caption = '&Totaliza'#231#227'o das Vendas '
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
      Visible = False
      OnClick = sb_VendasVendClick
    end
    object bbImprimir: TBitBtn
      Left = 147
      Top = 3
      Width = 140
      Height = 35
      Caption = 'Emitir Notas Fiscais'
      TabOrder = 0
      OnClick = bbImprimirClick
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
    object bbSair: TBitBtn
      Left = 621
      Top = 4
      Width = 140
      Height = 35
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
    object bbCusMer: TBitBtn
      Left = 7
      Top = 3
      Width = 140
      Height = 35
      Caption = '&Custo da Mercadoria'
      TabOrder = 2
      OnClick = bbCusMerClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
        0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
        F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
        005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
        0555557575757575755555505050505055555557575757575555}
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 132
    Width = 959
    Height = 205
    Align = alClient
    DataSource = Src_Ped
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 2'
        Font.Style = []
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODEMP'
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CHAVE'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razsoc'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1DATAP'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datdoc'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTALL'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valpag'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desc'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juros'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apagar'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODCLI'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODVEN'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datanf'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1NUMNF'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1STATUS'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTALB'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTDES'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1NUMCF'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1ORDEM'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 337
    Width = 959
    Height = 25
    DataSource = Src_Ped
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      #218'ltimo Registro'
      'Inserir Registro'
      'Deletar Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar Edi'#231#227'o'
      'Renovar as Informa'#231#245'es')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 362
    Width = 959
    Height = 140
    ActivePage = TabSheet1
    Align = alBottom
    Style = tsButtons
    TabOrder = 3
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Processos do Pedido'
      object DBEdit13: TDBEdit
        Left = 341
        Top = 89
        Width = 81
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1CODEMB'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 341
        Top = 71
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'P1CODCON'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 341
        Top = 53
        Width = 81
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1CODSEP'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 341
        Top = 35
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'P1USRMOD'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 341
        Top = 17
        Width = 81
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1CODUSR'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit14: TDBEdit
        Left = 247
        Top = 89
        Width = 95
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1HOREMB'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit11: TDBEdit
        Left = 247
        Top = 71
        Width = 95
        Height = 19
        Ctl3D = False
        DataField = 'P1HORCON'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 247
        Top = 53
        Width = 95
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1HRMOD'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 247
        Top = 35
        Width = 95
        Height = 19
        Ctl3D = False
        DataField = 'P1HRMOD'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 247
        Top = 17
        Width = 95
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1HORADIG'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 154
        Top = 17
        Width = 94
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1DATAP'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit4: TDBEdit
        Left = 154
        Top = 35
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'datalt'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 154
        Top = 53
        Width = 94
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'datsep'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit10: TDBEdit
        Left = 154
        Top = 71
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'datcon'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 154
        Top = 89
        Width = 94
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'datemb'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit30: TDBEdit
        Left = 421
        Top = 17
        Width = 323
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'nomdig'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBEdit31: TDBEdit
        Left = 421
        Top = 35
        Width = 323
        Height = 19
        Ctl3D = False
        DataField = 'nomalt'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit32: TDBEdit
        Left = 421
        Top = 53
        Width = 323
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'nomsep'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit33: TDBEdit
        Left = 421
        Top = 71
        Width = 323
        Height = 19
        Ctl3D = False
        DataField = 'nomcon'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit34: TDBEdit
        Left = 421
        Top = 89
        Width = 323
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'nomemb'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 19
      end
      object StaticText1: TStaticText
        Left = 3
        Top = 0
        Width = 151
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Estado do Registro'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
      end
      object StaticText2: TStaticText
        Left = 154
        Top = 0
        Width = 94
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
      end
      object StaticText3: TStaticText
        Left = 248
        Top = 0
        Width = 94
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Horas'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object StaticText4: TStaticText
        Left = 342
        Top = 0
        Width = 402
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Dados do Usu'#225'rio'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object StaticText5: TStaticText
        Left = 3
        Top = 17
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Digitado'
        Color = 14680031
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 24
      end
      object StaticText6: TStaticText
        Left = 3
        Top = 35
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Alterado'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 25
      end
      object StaticText7: TStaticText
        Left = 3
        Top = 53
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Separado'
        Color = 14680031
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object StaticText8: TStaticText
        Left = 3
        Top = 71
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Conferido'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 27
      end
      object StaticText9: TStaticText
        Left = 3
        Top = 90
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Embalado'
        Color = 14680031
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 28
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sobre Entrega'
      ImageIndex = 1
      object DBEdit16: TDBEdit
        Left = 154
        Top = 17
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'P1PREVENT'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit17: TDBEdit
        Left = 247
        Top = 17
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'P1HPREVENT'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit18: TDBEdit
        Left = 154
        Top = 35
        Width = 94
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1DATENT'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit19: TDBEdit
        Left = 247
        Top = 35
        Width = 94
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'P1HORENT'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit20: TDBEdit
        Left = 346
        Top = 17
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'P1CODTRA'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit21: TDBEdit
        Left = 3
        Top = 81
        Width = 86
        Height = 19
        Ctl3D = False
        DataField = 'P1QTDVOL'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit22: TDBEdit
        Left = 88
        Top = 81
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'P1ESPECIE'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit23: TDBEdit
        Left = 169
        Top = 81
        Width = 86
        Height = 19
        Ctl3D = False
        DataField = 'P1PESOB'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit24: TDBEdit
        Left = 254
        Top = 81
        Width = 86
        Height = 19
        Ctl3D = False
        DataField = 'P1PESOL'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit35: TDBEdit
        Left = 426
        Top = 17
        Width = 326
        Height = 19
        Ctl3D = False
        DataField = 'nomtra'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object StaticText10: TStaticText
        Left = 3
        Top = 16
        Width = 151
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Previs'#227'o de Entrega'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object StaticText11: TStaticText
        Left = 2
        Top = 35
        Width = 152
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data da Entrega'
        Color = 14680031
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object StaticText12: TStaticText
        Left = 3
        Top = 0
        Width = 151
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Estado do Registro'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object StaticText13: TStaticText
        Left = 154
        Top = 0
        Width = 94
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
      end
      object StaticText14: TStaticText
        Left = 248
        Top = 0
        Width = 94
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Horas'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
      end
      object StaticText15: TStaticText
        Left = 346
        Top = 0
        Width = 407
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Transportador/Entregador'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
      object StaticText16: TStaticText
        Left = 3
        Top = 64
        Width = 86
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Qtd.Volumes'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
      end
      object StaticText17: TStaticText
        Left = 89
        Top = 64
        Width = 81
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Esp'#233'cie'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
      end
      object StaticText18: TStaticText
        Left = 170
        Top = 64
        Width = 84
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Peso Bruto'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object StaticText19: TStaticText
        Left = 255
        Top = 64
        Width = 85
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Peso L'#237'quido'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Emiss'#245'es Diversas'
      ImageIndex = 2
      object DBEdit25: TDBEdit
        Left = 3
        Top = 37
        Width = 67
        Height = 19
        Ctl3D = False
        DataField = 'P1NUMNF'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit26: TDBEdit
        Left = 69
        Top = 37
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'datanf'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit27: TDBEdit
        Left = 143
        Top = 37
        Width = 73
        Height = 19
        Color = 13565951
        Ctl3D = False
        DataField = 'P1NUMCF'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit28: TDBEdit
        Left = 215
        Top = 37
        Width = 72
        Height = 19
        Color = 13565951
        Ctl3D = False
        DataField = 'datacf'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 245
        Top = 2
        Width = 128
        Height = 17
        Caption = 'Etiqueta de Volumes'
        DataField = 'P1ETIVOL'
        DataSource = Src_Ped
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit29: TDBEdit
        Left = 286
        Top = 37
        Width = 88
        Height = 19
        Ctl3D = False
        DataField = 'P1MINUTA'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBCheckBox2: TDBCheckBox
        Left = 3
        Top = 2
        Width = 218
        Height = 17
        Caption = 'Emitiu Lista de Separa'#231#227'o'
        DataField = 'emitiuls'
        DataSource = Src_Ped
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit36: TDBEdit
        Left = 378
        Top = 19
        Width = 373
        Height = 19
        Ctl3D = False
        DataField = 'P1OBS1'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit37: TDBEdit
        Left = 378
        Top = 37
        Width = 373
        Height = 19
        Ctl3D = False
        DataField = 'P1OBS2'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit38: TDBEdit
        Left = 378
        Top = 55
        Width = 373
        Height = 19
        Ctl3D = False
        DataField = 'P1OBS3'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object StaticText20: TStaticText
        Left = 3
        Top = 20
        Width = 67
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero NF'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object StaticText21: TStaticText
        Left = 70
        Top = 20
        Width = 74
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data NF'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object StaticText22: TStaticText
        Left = 144
        Top = 20
        Width = 71
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero CF'
        Color = 13565951
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object StaticText23: TStaticText
        Left = 216
        Top = 20
        Width = 70
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data CF'
        Color = 13565951
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
      end
      object StaticText24: TStaticText
        Left = 287
        Top = 20
        Width = 89
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero Minuta'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
      end
      object StaticText25: TStaticText
        Left = 377
        Top = 2
        Width = 373
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Obeserva'#231#245'es'
        Color = 16760799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
    end
    object Tab_Mer: TTabSheet
      Caption = 'Mercadorias'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 109
        Align = alClient
        Color = 11468799
        DataSource = Src_Ped02
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'P2ITEM'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTD'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PRECO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2TOTLIQ'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTD_ENTREGANDO'
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTD_ENTREGUE'
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTDDEV'
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2LOTE'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvcto'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC1'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2VALDES'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC2'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SIT'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2BASEN'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ICMSN'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2BASER'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ICMSR'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2LISTA'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2TOTDES'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ALIQ'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2VCOMIS'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CFO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ACRECONV'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ACREGER'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Tab_Ser: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 4
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 109
        Align = alClient
        Color = 16768477
        DataSource = Src_Ped02S
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'P2SITEM'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SCODPRO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SQTD'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SPRECO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SDESC1'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SDESC2'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SVALDES'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SSIT'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SBCISSQN'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SVISSQN'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SLISTA'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2STOTDES'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SALIQ'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SVCOMIS'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SCFO'
            Title.Alignment = taCenter
            Title.Color = 16776176
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object ts_conhecimento: TTabSheet
      Caption = 'Conhecimento'
      ImageIndex = 5
      object dbg_conhec: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 109
        Align = alClient
        Color = 11468799
        DataSource = DM6.Src_Con03
        FixedColor = 13369273
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'C03CODCON'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03CODPRO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Width = 227
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03QTDVEND'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03QTDPEND'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03QTDENT'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03PESOB'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03QTDM3'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03VALFRE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C03VALFRE_DIG'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 959
    Height = 105
    ActivePage = ts_filtros
    Align = alTop
    Style = tsButtons
    TabOrder = 4
    object ts_filtros: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 147
        Top = 25
        Width = 89
        Height = 13
        Caption = 'C'#243'digo do Cliente.:'
      end
      object Label2: TLabel
        Left = 180
        Top = 41
        Width = 57
        Height = 13
        Caption = 'Periodo de :'
      end
      object Label3: TLabel
        Left = 345
        Top = 42
        Width = 6
        Height = 13
        Caption = #224
      end
      object chavedopedido: TLabel
        Left = 176
        Top = 5
        Width = 64
        Height = 13
        Caption = 'Chave Inicial:'
      end
      object Label39: TLabel
        Left = 185
        Top = 59
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label4: TLabel
        Left = 329
        Top = 4
        Width = 59
        Height = 13
        Caption = 'Chave Final:'
      end
      object CODCLI: TEdit
        Left = 243
        Top = 19
        Width = 66
        Height = 19
        Hint = 'Pressione <F2> para Consultar Pedidos'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object NOMCLI: TEdit
        Left = 308
        Top = 19
        Width = 297
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 3
        Text = 'Todos...'
      end
      object MDT1: TMaskEdit
        Left = 243
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 392
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object CHAVEI: TEdit
        Left = 243
        Top = 1
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CHAVEIExit
      end
      object CODVEN: TEdit
        Left = 243
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 309
        Top = 55
        Width = 297
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 7
        Text = 'Todos...'
      end
      object CHAVEF: TEdit
        Left = 391
        Top = 1
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CHAVEFExit
      end
    end
    object ts_outros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label35: TLabel
        Left = 285
        Top = 7
        Width = 50
        Height = 13
        Caption = 'Processo.:'
      end
      object Label34: TLabel
        Left = 225
        Top = 25
        Width = 110
        Height = 13
        Caption = 'Observa'#231#245'es Linha 01:'
      end
      object lbl_lotseq: TLabel
        Left = 2
        Top = 4
        Width = 112
        Height = 13
        Caption = 'Lote de Sequencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object obs_lotseq: TLabel
        Left = 15
        Top = 35
        Width = 146
        Height = 13
        Caption = 'Em Branco Busca Todos'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label40: TLabel
        Left = 276
        Top = 41
        Width = 60
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object sgTipoPed: TSpeedButton
        Left = 408
        Top = 39
        Width = 22
        Height = 20
        Hint = 'Click aqui para ver os '#13#10'tipos de pedidos '#13#10'existentes'
        Caption = '...'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = sgTipoPedClick
      end
      object Label38: TLabel
        Left = 261
        Top = 60
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
      end
      object PROCESSO: TEdit
        Left = 342
        Top = 1
        Width = 123
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object OBS1: TEdit
        Left = 342
        Top = 19
        Width = 362
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = OBS1Exit
      end
      object MLOTSEQ: TEdit
        Left = 121
        Top = 1
        Width = 87
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
        OnExit = MLOTSEQExit
      end
      object TipoPed: TEdit
        Left = 342
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = TipoPedExit
      end
      object NomTipoPed: TEdit
        Left = 428
        Top = 37
        Width = 276
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 4
        Text = 'Todos...'
      end
      object CODTRA: TEdit
        Left = 342
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object NOMTRA: TEdit
        Left = 407
        Top = 55
        Width = 297
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 6
        Text = 'Todos...'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 959
    Height = 27
    Align = alTop
    TabOrder = 5
    object bbAtualizar: TBitBtn
      Left = 235
      Top = 1
      Width = 231
      Height = 25
      Caption = '&Atualizar as Informa'#231#245'es'
      TabOrder = 0
      OnClick = bbAtualizarClick
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
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    OnDataChange = Src_PedDataChange
    Left = 528
    Top = 32
  end
  object Tb_Ped: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39'  OK, P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATAP,'
      '           P1DATDOC,P1CODCLI,'
      '           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF,'
      '           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL,'
      '           P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD,'
      '           P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC,'
      '           P1TIPENT,P1PREVENT,P1HPREVENT,'
      '           P1CODENT,P1DATENT,P1HORENT,'
      '           P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB,'
      '           P1BANCO,P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF,'
      '           P1CODSEP,P1DATASEP,P1HORSEP,'
      '           P1CODEMB,P1DATAEMB,P1HOREMB,'
      
        '           P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER,P1ESPECIE' +
        ',P1MINUTA,'
      
        '           P1FORMACE,P1OBS1,P1OBS2,P1OBS3,P1BLOQPEND,P1CODBLOQ,P' +
        '1CODBLOQ_LIB,'
      '           P1EMITENTE,'
      '           CRAZAO from CADP01,CADCLI'
      'where P1CODEMP is null'
      'and CCODCLI=P1CODCLI'
      '')
    UpdateObject = U_Ped
    Left = 560
    Top = 32
    object Tb_PedP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_PedP1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedP1DATDOC: TDateTimeField
      DisplayLabel = 'Data Documento'
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Tb_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_PedP1ORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Tb_PedP1CODTRA: TFloatField
      DisplayLabel = 'Cod.Transp'
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Tb_PedP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_PedP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_PedP1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_PedP1TOTALB: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_PedP1TOTALL: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_PedP1CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Tb_PedP1HORADIG: TStringField
      DisplayLabel = 'Hora Dig.'
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Tb_PedP1DTMOD: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Tb_PedP1HRMOD: TStringField
      DisplayLabel = 'Hora Altera'#231#227'o'
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Tb_PedP1USRMOD: TFloatField
      DisplayLabel = 'Usu'#225'rio Alterou'
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Tb_PedP1CONF: TStringField
      DisplayLabel = 'Conferido'
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Tb_PedP1CODCON: TFloatField
      DisplayLabel = 'C'#243'digo Conferidor'
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Tb_PedP1DATCON: TDateTimeField
      DisplayLabel = 'Data Conferencia'
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Tb_PedP1HORCON: TStringField
      DisplayLabel = 'Hora Conferencia'
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Tb_PedP1EMIDOC: TFloatField
      DisplayLabel = 'Emitiu'
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Tb_PedP1TIPENT: TFloatField
      DisplayLabel = 'Tipo Entrega'
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Tb_PedP1PREVENT: TDateTimeField
      DisplayLabel = 'Data Prev.Entrega'
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Tb_PedP1HPREVENT: TStringField
      DisplayLabel = 'Hora Prev.Entrega'
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Tb_PedP1CODENT: TFloatField
      DisplayLabel = 'C'#243'd.Entregador'
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Tb_PedP1DATENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Tb_PedP1HORENT: TStringField
      DisplayLabel = 'Hora Entrega'
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Tb_PedP1CUPOM: TFloatField
      DisplayLabel = 'Emitiu Cupom'
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Tb_PedP1TOTDES: TFloatField
      DisplayLabel = 'Total desconto'
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_PedP1QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Tb_PedP1PESOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Tb_PedP1PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Tb_PedP1BANCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Tb_PedP1CODTLV: TFloatField
      DisplayLabel = 'C'#243'd.Telev'
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Tb_PedP1ETIVOL: TFloatField
      DisplayLabel = 'Etiq.Vol.'
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Tb_PedP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero CF'
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Tb_PedP1CODECF: TFloatField
      DisplayLabel = 'C'#243'd.ECF'
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Tb_PedP1DATACF: TDateTimeField
      DisplayLabel = 'Data CF'
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_PedP1CODSEP: TFloatField
      DisplayLabel = 'C'#243'd.Separador'
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Tb_PedP1DATASEP: TDateTimeField
      DisplayLabel = 'Data Sep.'
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Tb_PedP1HORSEP: TStringField
      DisplayLabel = 'Hor.Sep'
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Tb_PedP1CODEMB: TFloatField
      DisplayLabel = 'C'#243'd.Emb'
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Tb_PedP1DATAEMB: TDateTimeField
      DisplayLabel = 'Data Emb.'
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Tb_PedP1HOREMB: TStringField
      DisplayLabel = 'Hora Emb'
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Tb_PedP1ACRECONV: TFloatField
      DisplayLabel = 'Acresc.Conv.'
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Tb_PedP1ACREGER: TFloatField
      DisplayLabel = 'Acresc.Geral'
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Tb_PedP1PACRECONV: TFloatField
      DisplayLabel = 'Perc.Acre.Conv.'
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_PedP1PACREGER: TFloatField
      DisplayLabel = 'Perc. Acresc.Geral'
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_PedCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_PedP1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
      Size = 10
    end
    object Tb_PedP1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Tb_Pednomdig: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomdig'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomalt'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsep'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcon'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemb'
      Size = 40
      Calculated = True
    end
    object Tb_Peddatalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'datalt'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'datsep'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'datemb'
      Size = 15
      Calculated = True
    end
    object Tb_Pednomtra: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtra'
      Size = 40
      Calculated = True
    end
    object Tb_Peddatanf: TStringField
      DisplayLabel = 'Data NF'
      FieldKind = fkCalculated
      FieldName = 'datanf'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatacf: TStringField
      FieldKind = fkCalculated
      FieldName = 'datacf'
      Size = 15
      Calculated = True
    end
    object Tb_Pedemitiuls: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'emitiuls'
      Calculated = True
    end
    object Tb_Peddatpent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datpent'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datent'
      Size = 15
      Calculated = True
    end
    object Tb_Pedtipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 30
      Calculated = True
    end
    object Tb_Peddatdoc: TStringField
      DisplayLabel = 'Data Doc'
      FieldKind = fkCalculated
      FieldName = 'datdoc'
      Size = 15
      Calculated = True
    end
    object Tb_Pednomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_PedP1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Tb_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_Pedvalpag: TFloatField
      DisplayLabel = 'Valor Rec.'
      FieldKind = fkCalculated
      FieldName = 'valpag'
      Calculated = True
    end
    object Tb_Peddesc: TFloatField
      DisplayLabel = 'Desc.Conc.'
      FieldKind = fkCalculated
      FieldName = 'desc'
      Calculated = True
    end
    object Tb_Pedjuros: TFloatField
      DisplayLabel = 'Juros Cob'
      FieldKind = fkCalculated
      FieldName = 'juros'
      Calculated = True
    end
    object Tb_Pedapagar: TFloatField
      DisplayLabel = 'A Receber'
      FieldKind = fkCalculated
      FieldName = 'apagar'
      Calculated = True
    end
    object Tb_PedOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Tb_Pedrazsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razsoc'
      Size = 40
      Calculated = True
    end
    object Tb_PedP1BLOQPEND: TFloatField
      DisplayLabel = 'Blq.Pend'
      FieldName = 'P1BLOQPEND'
    end
    object Tb_PedP1CODBLOQ: TStringField
      DisplayLabel = 'C'#243'd.Bloq'
      FieldName = 'P1CODBLOQ'
    end
    object Tb_PedP1CODBLOQ_LIB: TStringField
      DisplayLabel = 'C'#243'd.Bloq.Lib'
      FieldName = 'P1CODBLOQ_LIB'
    end
    object Tb_PedP1EMITENTE: TStringField
      FieldName = 'P1EMITENTE'
      Size = 1
    end
    object Tb_PedP1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_PedP1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_PedP1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_PedP1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
    end
  end
  object Tb_Ped02: TQuery
    OnCalcFields = Tb_Ped02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODEMP,P2CHAVE,P2ORDEM,P2LOTSEQ,'
      '       P2ITEM,P2CODPRO,P2QTD,'
      '       P2LOTE,P2DTVCTO,'
      '       P2DESC1,P2DESC2,P2VALDES,'
      '       P2PRECO,P2SIT,P2BASEN,P2ICMSN,'
      '       P2BASER,P2ICMSR,P2LISTA,'
      '       P2TOTDES,P2ALIQ,P2QTD_ENTREGUE,P2QTD_ENTREGANDO,P2QTDDEV,'
      '       P2VCOMIS,P2CFO,P2TOTLIQ,P2ACRECONV,P2ACREGER,'
      '       PDNOME,PDMARCA,PDUND'
      'from CADP02,CADPRO'
      'where P2CODEMP is null'
      '  and PDCODEMP=P2CODEMP'
      '  and PDCODPRO=P2CODPRO'
      'order by P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM'
      '')
    Left = 56
    Top = 32
    object Tb_Ped02P2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2CODEMP'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CHAVE'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P2ORDEM'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'P2CODPRO'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2LOTE'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'P2DTVCTO'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      DisplayLabel = '% desc 01'
      FieldName = 'P2DESC1'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      DisplayLabel = '% desc 02'
      FieldName = 'P2DESC2'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      DisplayLabel = 'Vlr.Desconto'
      FieldName = 'P2VALDES'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2PRECO: TFloatField
      DisplayLabel = 'P'#231'o Unit.'
      FieldName = 'P2PRECO'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2SIT: TStringField
      DisplayLabel = 'Sit.Trib'
      FieldName = 'P2SIT'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2BASEN: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'P2BASEN'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      DisplayLabel = 'Icms'
      FieldName = 'P2ICMSN'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2BASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'P2BASER'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      DisplayLabel = 'Icms ST'
      FieldName = 'P2ICMSR'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'P2LISTA'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      DisplayLabel = 'Tot.Descontos'
      FieldName = 'P2TOTDES'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'P2ALIQ'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o'
      FieldName = 'P2VCOMIS'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2CFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'P2CFO'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P2TOTLIQ'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      DisplayLabel = 'Acresc.Conv.'
      FieldName = 'P2ACRECONV'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      DisplayLabel = 'Acresc.Geral'
      FieldName = 'P2ACREGER'
      LookupDataSet = Tb_Ped
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02dtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      LookupDataSet = Tb_Ped
      Size = 15
      Calculated = True
    end
    object Tb_Ped02PDNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_Ped02PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Ped02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02P2QTD_ENTREGUE: TFloatField
      DisplayLabel = 'Entregue'
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02P2QTD_ENTREGANDO: TFloatField
      DisplayLabel = 'Entregando'
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02P2QTDDEV: TFloatField
      DisplayLabel = 'Qtd.Dev'
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02P2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object Tb_Ped02P2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
  end
  object Src_Ped02: TDataSource
    DataSet = Tb_Ped02
    Left = 85
    Top = 34
  end
  object Tb_Ped02S: TQuery
    OnCalcFields = Tb_Ped02SCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2SCODEMP,P2SCHAVE,P2SORDEM,P2SLOTSEQ,'
      '       P2SITEM,P2SCODPRO,P2SQTD,'
      '       P2SDESC1,P2SDESC2,P2SVALDES,'
      '       P2SPRECO,P2SSIT,P2SBCISSQN,P2SVISSQN,'
      '       P2SLISTA,'
      '       P2STOTDES,P2SALIQ,'
      '       P2SVCOMIS,P2SCFO,'
      '       PDNOME,PDMARCA,PDUND'
      'from CADP02S,CADPRO'
      'where P2SCODEMP is null'
      '  and PDCODEMP=P2SCODEMP'
      '  and PDCODPRO=P2SCODPRO'
      'order by P2SCODEMP,P2SCHAVE,P2SORDEM,P2SITEM')
    Left = 568
    Top = 72
    object Tb_Ped02SP2SCODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'P2SCODEMP'
      Origin = 'SG_ASSOC.CADP02S.P2SCODEMP'
    end
    object Tb_Ped02SP2SCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2SCHAVE'
      Origin = 'SG_ASSOC.CADP02S.P2SCHAVE'
    end
    object Tb_Ped02SP2SORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P2SORDEM'
      Origin = 'SG_ASSOC.CADP02S.P2SORDEM'
    end
    object Tb_Ped02SP2SITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2SITEM'
      Origin = 'SG_ASSOC.CADP02S.P2SITEM'
    end
    object Tb_Ped02SP2SCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Tb_Ped02SP2SQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Tb_Ped02SP2SDESC1: TFloatField
      DisplayLabel = 'Desc.01'
      FieldName = 'P2SDESC1'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC1'
    end
    object Tb_Ped02SP2SDESC2: TFloatField
      DisplayLabel = 'Desc.02'
      FieldName = 'P2SDESC2'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC2'
    end
    object Tb_Ped02SP2SVALDES: TFloatField
      DisplayLabel = 'Desc.Valor'
      FieldName = 'P2SVALDES'
      Origin = 'SG_ASSOC.CADP02S.P2SVALDES'
    end
    object Tb_Ped02SP2SPRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Tb_Ped02SP2SSIT: TStringField
      DisplayLabel = 'Sit.Trib.'
      FieldName = 'P2SSIT'
      Origin = 'SG_ASSOC.CADP02S.P2SSIT'
      Size = 3
    end
    object Tb_Ped02SP2SBCISSQN: TFloatField
      DisplayLabel = 'Bc.ISSQN'
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Tb_Ped02SP2SVISSQN: TFloatField
      DisplayLabel = 'Vlr.ISSQN'
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Tb_Ped02SP2SLISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'P2SLISTA'
      Origin = 'SG_ASSOC.CADP02S.P2SLISTA'
    end
    object Tb_Ped02SP2STOTDES: TFloatField
      DisplayLabel = 'Total Desc'
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Tb_Ped02SP2SALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'P2SALIQ'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQ'
    end
    object Tb_Ped02SP2SVCOMIS: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o'
      FieldName = 'P2SVCOMIS'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOMIS'
    end
    object Tb_Ped02SP2SCFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'P2SCFO'
      Origin = 'SG_ASSOC.CADP02S.P2SCFO'
    end
    object Tb_Ped02SPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o Servi'#231'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_Ped02SPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Ped02SPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Ped02Stotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Ped02SP2SLOTSEQ: TFloatField
      FieldName = 'P2SLOTSEQ'
      Origin = 'SG_ASSOC.CADP02S.P2SLOTSEQ'
    end
    object Tb_Ped02SP2SID_NEW: TFloatField
      FieldName = 'P2SID_NEW'
    end
    object Tb_Ped02SP2SID_PED01_NEW: TFloatField
      FieldName = 'P2SID_PED01_NEW'
    end
  end
  object Src_Ped02S: TDataSource
    DataSet = Tb_Ped02S
    Left = 531
    Top = 64
  end
  object U_Ped: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01'
      'set'
      '  P1CODEMP = :P1CODEMP'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP01'
      '  (P1CODEMP)'
      'values'
      '  (:P1CODEMP)')
    DeleteSQL.Strings = (
      'delete from CADP01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    Left = 592
    Top = 32
  end
end
