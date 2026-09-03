object Frm_PedBloq: TFrm_PedBloq
  Left = 12
  Top = 16
  Width = 775
  Height = 467
  Caption = 'Pedidos Bloqueados/Pendentes '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 767
    Height = 31
    Align = alBottom
    TabOrder = 0
    object sb_VendasVend: TSpeedButton
      Left = 504
      Top = 3
      Width = 137
      Height = 25
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
    end
    object bbCusMer: TBitBtn
      Left = 381
      Top = 3
      Width = 124
      Height = 25
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
    object bbEmitirNF: TBitBtn
      Left = 7
      Top = 3
      Width = 119
      Height = 23
      Caption = 'Emitir Notas Fiscais'
      TabOrder = 0
      Visible = False
      OnClick = bbEmitirNFClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 644
      Top = 4
      Width = 119
      Height = 25
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
    object bbEmitirListaSep: TBitBtn
      Left = 1
      Top = 3
      Width = 137
      Height = 25
      Caption = 'Lista Sep. Selecionada'
      TabOrder = 3
      OnClick = bbEmitirListaSepClick
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
    object bbimprimir: TBitBtn
      Left = 291
      Top = 3
      Width = 92
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = bbimprimirClick
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
    object bbEmitirTodas: TBitBtn
      Left = 137
      Top = 3
      Width = 155
      Height = 25
      Caption = 'Todas as  Lista Separacao'
      TabOrder = 5
      OnClick = bbEmitirTodasClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 128
    Width = 767
    Height = 112
    Align = alClient
    DataSource = DM6.Src_PedBlq
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
        Visible = False
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
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 94
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
        Width = 64
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
        FieldName = 'pendencias'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 64
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
        Width = 64
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
        Width = 64
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
        Width = 64
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
        Width = 64
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
        Width = 64
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
        Width = 64
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
        Width = 64
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
        FieldName = 'P1CODEMP'
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 240
    Width = 767
    Height = 25
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
    Top = 265
    Width = 767
    Height = 140
    ActivePage = tsBloqueios
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataField = 'P1HORSEP'
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataField = 'datpent'
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataField = 'datent'
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        ReadOnly = True
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
        DataSource = DM6.Src_PedBlq
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
        ReadOnly = True
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
        DataSource = DM6.Src_PedBlq
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
      object StaticText27: TStaticText
        Left = 3
        Top = 59
        Width = 67
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Prazo(s):'
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
      object DBEdit40: TDBEdit
        Left = 3
        Top = 76
        Width = 373
        Height = 19
        Ctl3D = False
        DataField = 'prazos'
        DataSource = DM6.Src_PedBlq
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
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
            Width = 64
            Visible = True
          end>
      end
    end
    object tsBloqueios: TTabSheet
      Caption = 'Bloqueios Pendentes'
      ImageIndex = 6
      object Panel3: TPanel
        Left = 0
        Top = 68
        Width = 759
        Height = 41
        Align = alBottom
        TabOrder = 0
        object Label5: TLabel
          Left = 195
          Top = 5
          Width = 48
          Height = 13
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 201
          Top = 26
          Width = 41
          Height = 13
          Caption = 'Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbSitCred: TBitBtn
          Left = 4
          Top = 2
          Width = 190
          Height = 37
          Hint = 
            'Mostra a Situa'#231#227'o de Cr'#233'dito'#13#10'do Cliente Caso Seja Bloqueio'#13#10'de ' +
            'Vendas'
          Caption = 'Situa'#231#227'o de Credito do Cliente '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbSitCredClick
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
        object MCODUSR: TEdit
          Left = 245
          Top = 2
          Width = 61
          Height = 19
          Hint = 
            'Digite o C'#243'digo do Usu'#225'rio que '#13#10'vai liberar o acesso, ou pressi' +
            'one'#13#10'uma tecla para consultar o nome'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = MCODUSRExit
          OnKeyPress = MCODUSRKeyPress
        end
        object NOMUSR: TEdit
          Left = 305
          Top = 2
          Width = 301
          Height = 19
          Color = 16762081
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object SENHA: TEdit
          Left = 245
          Top = 20
          Width = 159
          Height = 19
          Hint = 
            'Digite a Senha do Usu'#225'rio'#13#10'Cadastrada para Liberar '#13#10'esse tipo d' +
            'e Acesso.'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          PasswordChar = '*'
          ShowHint = True
          TabOrder = 3
        end
        object cb_manter_senha: TCheckBox
          Left = 408
          Top = 22
          Width = 97
          Height = 17
          Caption = 'Manter Senha'
          TabOrder = 4
        end
        object bbLiberar: TBitBtn
          Left = 607
          Top = 3
          Width = 147
          Height = 37
          Hint = 
            'Mostra a Situa'#231#227'o de Cr'#233'dito'#13#10'do Cliente Caso Seja Bloqueio'#13#10'de ' +
            'Vendas'
          Caption = 'Liberar Pedido'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = bbLiberarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
            555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
            05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
            FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
            FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
            FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
            05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
            555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
            9055575757575757775505050505055505557575757575557555}
          NumGlyphs = 2
        end
      end
      object memo1: TMemo
        Left = 0
        Top = 0
        Width = 759
        Height = 68
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 767
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
      object sb_SalvarPadrao: TSpeedButton
        Left = 687
        Top = 1
        Width = 73
        Height = 73
        Hint = 'Salva as configura'#231#245'es como padr'#227'o'
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
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_SalvarPadraoClick
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
        Width = 287
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
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
        Left = 308
        Top = 55
        Width = 287
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
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
      object RG_TIPOPED: TRadioGroup
        Left = 597
        Top = -1
        Width = 90
        Height = 75
        Caption = 'Tipo de Pedidos'
        ItemIndex = 0
        Items.Strings = (
          'Bloq.e Pend'
          'Bloquedos'
          'Pendentes'
          'S/Restri'#231#227'o'
          'Todos')
        TabOrder = 8
      end
    end
    object TsOutFil: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 3
      object Label9: TLabel
        Left = 174
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object Label40: TLabel
        Left = 175
        Top = 20
        Width = 60
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object sgTipoPed: TSpeedButton
        Left = 309
        Top = 18
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
        Left = 160
        Top = 39
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
      end
      object CODTLV: TEdit
        Left = 243
        Top = 1
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODTLVExit
        OnKeyPress = CODTLVKeyPress
      end
      object NOMTLV: TEdit
        Left = 308
        Top = 1
        Width = 287
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Todos...'
      end
      object TipoPed: TEdit
        Left = 243
        Top = 19
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = TipoPedExit
      end
      object NomTipoPed: TEdit
        Left = 330
        Top = 19
        Width = 265
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        Text = 'Todos...'
      end
      object CODTRA: TEdit
        Left = 243
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object NOMTRA: TEdit
        Left = 308
        Top = 37
        Width = 287
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        Text = 'Todos...'
      end
      object CB_VALE: TCheckBox
        Left = 241
        Top = 58
        Width = 304
        Height = 17
        Caption = 'Emitir Tambem Vale de Mercadorias(emprestimos)'
        TabOrder = 6
      end
    end
    object ts_outros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label35: TLabel
        Left = 187
        Top = 23
        Width = 50
        Height = 13
        Caption = 'Processo.:'
      end
      object Label34: TLabel
        Left = 127
        Top = 22
        Width = 110
        Height = 13
        Caption = 'Observa'#231#245'es Linha 01:'
      end
      object lbl_lotseq: TLabel
        Left = 124
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
        Left = 372
        Top = 3
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
      object PROCESSO: TEdit
        Left = 243
        Top = 19
        Width = 123
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object OBS1: TEdit
        Left = 243
        Top = 37
        Width = 362
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = OBS1Exit
      end
      object MLOTSEQ: TEdit
        Left = 243
        Top = 1
        Width = 87
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
        OnExit = MLOTSEQExit
      end
    end
    object Ts_BLOQPED_MINAVISO: TTabSheet
      Caption = 'Configuracao'
      ImageIndex = 2
      object Label7: TLabel
        Left = 36
        Top = 9
        Width = 268
        Height = 25
        Caption = 'Sempre Avisar no Intervalo de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 425
        Top = 9
        Width = 87
        Height = 25
        Caption = 'Milesimos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 194
        Top = 39
        Width = 106
        Height = 25
        Caption = 'Representa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 425
        Top = 39
        Width = 90
        Height = 25
        Caption = 'Segundos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BLOQPED_MINAVISO: TEdit
        Left = 304
        Top = 5
        Width = 115
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = BLOQPED_MINAVISOExit
      end
      object edt_qtdmin: TEdit
        Left = 304
        Top = 34
        Width = 115
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = edt_qtdminExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 767
    Height = 23
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
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      DisplayLabel = '% desc 01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      DisplayLabel = '% desc 02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      DisplayLabel = 'Vlr.Desconto'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2PRECO: TFloatField
      DisplayLabel = 'P'#231'o Unit.'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2SIT: TStringField
      DisplayLabel = 'Sit.Trib'
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2BASEN: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      DisplayLabel = 'Icms'
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2BASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      DisplayLabel = 'Icms ST'
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      DisplayLabel = 'Tot.Descontos'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o'
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2CFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      DisplayLabel = 'Acresc.Conv.'
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      DisplayLabel = 'Acresc.Geral'
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02dtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
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
    Top = 64
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
  object Src_PedBlq: TDataSource
    DataSet = DM6.Tb_PedBlq
    OnDataChange = Src_PedBlqDataChange
    Left = 146
    Top = 4
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
    OpcoesPreview.PaginaZebrada = False
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
    Left = 120
    Top = 96
  end
end
