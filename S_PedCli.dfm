object Frm_PedCli: TFrm_PedCli
  Left = 222
  Top = 116
  Width = 993
  Height = 572
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Rela'#231#227'o de Pedidos de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 479
    Width = 985
    Height = 62
    Align = alBottom
    TabOrder = 5
    object sb_VendasVend: TSpeedButton
      Left = 358
      Top = 13
      Width = 92
      Height = 40
      Hint = 'Mostrar a Venda de Um Determinado Vendedor'
      Caption = '&Totaliza'#231#227'o Vendas '
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sb_VendasVendClick
    end
    object bbImprimir: TBitBtn
      Left = 86
      Top = 13
      Width = 92
      Height = 40
      Caption = 'Espelho Laser'
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 884
      Top = 13
      Width = 92
      Height = 40
      Caption = '&Sair'
      TabOrder = 2
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbCusMer: TBitBtn
      Left = 177
      Top = 13
      Width = 92
      Height = 40
      Caption = '&Custo Mercadoria'
      TabOrder = 3
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CB_DETPED: TCheckBox
      Left = 4
      Top = 13
      Width = 67
      Height = 17
      Hint = 'Click aqui para Exibir informacoes sobre Impostos'
      Caption = 'Impostos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object CB_DETCOMIS: TCheckBox
      Left = 123
      Top = 1
      Width = 67
      Height = 17
      Hint = 'Exibir Informacoes Sobre comissoes'
      Caption = 'Comiss'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object CB_VLTOTALLIQ: TCheckBox
      Left = 4
      Top = 28
      Width = 63
      Height = 14
      Hint = 'Total do Produto Liquido'
      Caption = 'Vl.Tot.Liq'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = CB_VLTOTALLIQClick
    end
    object bbReeNFE: TBitBtn
      Left = 449
      Top = 13
      Width = 92
      Height = 40
      Caption = '&Reemitir NFE'
      TabOrder = 6
      OnClick = bbReeNFEClick
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
    object bbImprimirTimbrado: TBitBtn
      Left = 268
      Top = 13
      Width = 92
      Height = 40
      Caption = 'Imprimir Timbrado'
      TabOrder = 7
      OnClick = bbImprimirTimbradoClick
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
    object cb_custoModelo2: TCheckBox
      Left = 4
      Top = 1
      Width = 101
      Height = 15
      Hint = 'Click aqui para Exibir informacoes sobre Impostos'
      Caption = 'Custos Modelo 2'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object cb_bordasPro: TCheckBox
      Left = 205
      Top = 1
      Width = 153
      Height = 12
      Caption = 'Imprimir Bordas no produto'
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = cb_bordasProClick
    end
    object bbImprimirRelCusto: TBitBtn
      Left = 633
      Top = 15
      Width = 92
      Height = 40
      Caption = 'Imprimir Custo'
      TabOrder = 10
      OnClick = bbImprimirRelCustoClick
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
    object DBCheckBox2: TDBCheckBox
      Left = 363
      Top = 1
      Width = 218
      Height = 17
      Caption = 'Emitiu Lista de Separa'#231#227'o'
      DataField = 'emitiuls'
      DataSource = Src_Ped
      ReadOnly = True
      TabOrder = 11
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 525
      Top = 1
      Width = 128
      Height = 17
      Caption = 'Etiqueta de Volumes'
      DataField = 'P1ETIVOL'
      DataSource = Src_Ped
      ReadOnly = True
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object BitBtn3: TBitBtn
      Left = 541
      Top = 14
      Width = 92
      Height = 40
      Caption = '&Reemitir NFCE'
      TabOrder = 13
      OnClick = BitBtn3Click
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
    object bbFormasXTitulos: TBitBtn
      Left = 737
      Top = 14
      Width = 128
      Height = 40
      Caption = 'Forma Pgto x Titulos'
      TabOrder = 14
      OnClick = bbFormasXTitulosClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 151
    Width = 985
    Height = 137
    Align = alClient
    DataSource = Src_Ped
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
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
        Width = 66
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
        Width = 114
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
        FieldName = 'CCIDADE'
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
        FieldName = 'CUF'
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
      end
      item
        Color = 8454143
        Expanded = False
        FieldName = 'P1SEMCOMP'
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
        FieldName = 'P1CODEMP'
        Title.Alignment = taCenter
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
        FieldName = 'p1pedori1'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 314
    Width = 985
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
    TabOrder = 3
  end
  object pc_rodape: TPageControl
    Left = 0
    Top = 339
    Width = 985
    Height = 140
    ActivePage = ts_conhecimento
    Align = alBottom
    Style = tsButtons
    TabOrder = 4
    OnChange = pc_rodapeChange
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
        DataField = 'P1HORSEP'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 247
        Top = 17
        Width = 95
        Height = 19
        Color = 14680031
        Ctl3D = False
        DataField = 'horadig'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
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
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 155
        Top = 35
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'datalt'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
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
        TabOrder = 11
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
        TabOrder = 12
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
        TabOrder = 13
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
        TabOrder = 14
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
        TabOrder = 15
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
        TabOrder = 16
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
        TabOrder = 17
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
        TabOrder = 18
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
        TabOrder = 19
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
        TabOrder = 20
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
        TabOrder = 21
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
        TabOrder = 22
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
        TabOrder = 23
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
        TabOrder = 24
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
        TabOrder = 25
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
        TabOrder = 26
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
        TabOrder = 27
      end
      object DBEdit5: TDBEdit
        Left = 247
        Top = 35
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'horalt'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
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
        DataField = 'datent'
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
      object StaticText26: TStaticText
        Left = 343
        Top = 64
        Width = 66
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Minuta'
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
      object DBEdit39: TDBEdit
        Left = 343
        Top = 81
        Width = 66
        Height = 19
        Ctl3D = False
        DataField = 'P1MINUTA'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 21
      end
      object bbInfoMin: TBitBtn
        Left = 409
        Top = 63
        Width = 31
        Height = 38
        Hint = 
          'Click aqui para ver '#13#10'mais informa'#231'oes '#13#10'sobre a minuta de entre' +
          'ga'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnClick = bbInfoMinClick
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
      object StaticText28: TStaticText
        Left = 441
        Top = 63
        Width = 312
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Mercadoria Recebida'
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
      object DBEdit41: TDBEdit
        Left = 442
        Top = 81
        Width = 310
        Height = 19
        Ctl3D = False
        DataField = 'dadosrec'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 24
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Emiss'#245'es Diversas'
      ImageIndex = 2
      object DBEdit25: TDBEdit
        Left = 3
        Top = 18
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
        Top = 18
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
        Top = 18
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
        Top = 18
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
      object DBEdit29: TDBEdit
        Left = 555
        Top = 59
        Width = 88
        Height = 19
        Ctl3D = False
        DataField = 'P1MINUTA'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object StaticText20: TStaticText
        Left = 3
        Top = 1
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
        TabOrder = 5
      end
      object StaticText21: TStaticText
        Left = 70
        Top = 1
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
        TabOrder = 6
      end
      object StaticText22: TStaticText
        Left = 144
        Top = 1
        Width = 71
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero CF'
        Color = 12713921
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object StaticText23: TStaticText
        Left = 216
        Top = 1
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
        TabOrder = 8
      end
      object StaticText24: TStaticText
        Left = 463
        Top = 60
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
        TabOrder = 9
      end
      object StaticText25: TStaticText
        Left = 439
        Top = 2
        Width = 312
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Observa'#231#245'es'
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
      object StaticText27: TStaticText
        Left = 439
        Top = 74
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
        TabOrder = 11
      end
      object DBEdit40: TDBEdit
        Left = 439
        Top = 90
        Width = 310
        Height = 19
        Ctl3D = False
        DataField = 'prazos'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
      end
      object StaticText29: TStaticText
        Left = 3
        Top = 38
        Width = 430
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Chave de Acesso NFE'
        Color = 12713921
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit42: TDBEdit
        Left = 3
        Top = 56
        Width = 430
        Height = 19
        Ctl3D = False
        DataField = 'chave_acesso'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBMemo2: TDBMemo
        Left = 440
        Top = 20
        Width = 309
        Height = 19
        Ctl3D = False
        DataField = 'P1OBS1'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBMemo3: TDBMemo
        Left = 440
        Top = 38
        Width = 309
        Height = 19
        Ctl3D = False
        DataField = 'P1OBS2'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object gb_motivo_naoatendimento: TGroupBox
        Left = 773
        Top = 0
        Width = 204
        Height = 109
        Align = alRight
        Caption = 'Motivo N'#227'o Atendimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnExit = gb_motivo_naoatendimentoExit
        object DBMemo4: TDBMemo
          Left = 2
          Top = 15
          Width = 200
          Height = 72
          Align = alClient
          Ctl3D = False
          DataField = 'P1OBS3'
          DataSource = Src_Ped
          ParentCtl3D = False
          TabOrder = 0
          OnChange = DBMemo4Change
        end
        object Panel1: TPanel
          Left = 2
          Top = 87
          Width = 200
          Height = 20
          Align = alBottom
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 4
            Top = -1
            Width = 75
            Height = 22
            Caption = 'Gravar '
            TabOrder = 0
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
          object bbCancelar: TBitBtn
            Left = 120
            Top = -1
            Width = 75
            Height = 22
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = bbCancelarClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000033
              33333333377777F33333333330BBB0333333333337FFF7F33333333330000033
              33333333377777F33333333330BBB0333333333337FFF7FF3333333300000003
              333333337777777FF33333300BBBBB003333333773333377F3333330BBFFFBB0
              33333337F3333337FF333300BFFFFFB003333377F333FFF773F33300BFF077B0
              30333377F3377737F7333300BFF7FFB003333377F337F33773333330BBF7FBB0
              33333337FF37F337F33333300BB7BB00333333377FF7FF773333333300000003
              33333333777777733333333330BBB0333333333337FFF7F33333333330000033
              33333333377777F33333333330BBB03333333333373337333333}
            NumGlyphs = 2
          end
        end
      end
      object StaticText30: TStaticText
        Left = 289
        Top = 1
        Width = 71
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'N'#250'm NFCE'
        Color = 12713921
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object StaticText31: TStaticText
        Left = 361
        Top = 1
        Width = 70
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data NFCE'
        Color = 13565951
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object DBE_P1NFCE_NUMERO: TDBEdit
        Left = 288
        Top = 18
        Width = 73
        Height = 19
        Color = 13565951
        Ctl3D = False
        DataField = 'P1NFCE_NUMERO'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 20
      end
      object DBE_P1NFCE_DATA: TDBEdit
        Left = 360
        Top = 18
        Width = 72
        Height = 19
        Color = 13565951
        Ctl3D = False
        DataField = 'P1NFCE_DATA'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 21
      end
      object StaticText32: TStaticText
        Left = 3
        Top = 75
        Width = 430
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Chave de Acesso NFCE'
        Color = 12713921
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit36: TDBEdit
        Left = 3
        Top = 93
        Width = 430
        Height = 19
        Ctl3D = False
        DataField = 'P1NFCE_CHV_ACESSO'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 23
      end
    end
    object Tab_Mer: TTabSheet
      Caption = 'Mercadorias'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 911
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
        Width = 911
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
        Width = 977
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
    object tsBloqLib: TTabSheet
      Caption = 'Bloqueios/Libera'#231#245'es'
      ImageIndex = 6
      object Label6: TLabel
        Left = 20
        Top = 0
        Width = 96
        Height = 13
        Caption = #205'tens Bloquedos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 39
        Width = 106
        Height = 13
        Caption = #205'tens ja Liberados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8453888
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object memo_bloqdiv: TMemo
        Left = 119
        Top = 1
        Width = 626
        Height = 37
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'memo_bloqdiv')
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object memo_bloqlib: TMemo
        Left = 119
        Top = 37
        Width = 519
        Height = 37
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8453888
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'memo_bloqdiv')
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object PDESCL_USR: TDBEdit
        Left = 119
        Top = 73
        Width = 330
        Height = 19
        Ctl3D = False
        DataField = 'desclib'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object PZOLIB_USR: TDBEdit
        Left = 448
        Top = 73
        Width = 297
        Height = 19
        Ctl3D = False
        DataField = 'prazolib'
        DataSource = Src_Ped
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 637
        Top = 37
        Width = 108
        Height = 37
        Ctl3D = False
        DataField = 'bloqlib'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object tsFpgto: TTabSheet
      Caption = 'Forma de Pagamento'
      ImageIndex = 7
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 109
        Align = alClient
        Color = 11468799
        DataSource = Src_Fpgto
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
            FieldName = 'PFPCODFP'
            Title.Alignment = taCenter
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPVALOR'
            Title.Alignment = taCenter
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPNOMFP'
            Title.Alignment = taCenter
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPDATA'
            Title.Alignment = taCenter
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVNOME'
            Title.Alignment = taCenter
            Width = 199
            Visible = True
          end>
      end
    end
  end
  object pc_cabecalho: TPageControl
    Left = 0
    Top = 0
    Width = 985
    Height = 129
    ActivePage = tsOutFiltros
    Align = alTop
    MultiLine = True
    ScrollOpposite = True
    TabOrder = 1
    TabStop = False
    OnChange = pc_cabecalhoChange
    object ts_filtros: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 98
        Top = 25
        Width = 89
        Height = 13
        Caption = 'C'#243'digo do Cliente.:'
      end
      object Label2: TLabel
        Left = 131
        Top = 41
        Width = 57
        Height = 13
        Caption = 'Periodo de :'
      end
      object Label3: TLabel
        Left = 265
        Top = 42
        Width = 6
        Height = 13
        Caption = #224
      end
      object chavedopedido: TLabel
        Left = 103
        Top = 5
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object ordempedido: TLabel
        Left = 328
        Top = 2
        Width = 87
        Height = 13
        Caption = 'Pedido de Origem:'
      end
      object Label36: TLabel
        Left = 137
        Top = 76
        Width = 57
        Height = 13
        Caption = 'N'#250'mero NF:'
      end
      object Label37: TLabel
        Left = 241
        Top = 76
        Width = 56
        Height = 13
        Caption = 'N'#250'mero CF:'
      end
      object Label39: TLabel
        Left = 136
        Top = 59
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object sbInfo: TSpeedButton
        Left = 504
        Top = 0
        Width = 106
        Height = 22
        Hint = 'Informacoes Sobre o Pedido'
        Caption = 'Informacoes'
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
        OnClick = sbInfoClick
      end
      object lbl_lotseq: TLabel
        Left = 1
        Top = 2
        Width = 56
        Height = 13
        Caption = 'Lote Seq:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object obs_lotseq: TLabel
        Left = -1
        Top = 21
        Width = 86
        Height = 13
        Caption = 'Branco Todos'
        Color = 8454143
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
        Left = 500
        Top = 57
        Width = 60
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object sgTipoPed: TSpeedButton
        Left = 633
        Top = 51
        Width = 22
        Height = 21
        Hint = 'Click aqui para ver os '#13#10'tipos de pedidos '#13#10'existentes'
        Caption = '...'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = sgTipoPedClick
      end
      object Label14: TLabel
        Left = 340
        Top = 75
        Width = 70
        Height = 13
        Caption = 'N'#250'mero NFCe:'
      end
      object CODCLI: TEdit
        Left = 194
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
        Left = 259
        Top = 19
        Width = 222
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
        Left = 194
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 279
        Top = 37
        Width = 64
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 6
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object RG_FILTRO: TRadioGroup
        Left = 674
        Top = -4
        Width = 83
        Height = 58
        Caption = 'Filtrar:'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Pendentes'
          '&Emitidos'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 7
      end
      object CHAVE: TEdit
        Left = 194
        Top = 1
        Width = 87
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CHAVEExit
      end
      object edt_npedori: TEdit
        Left = 424
        Top = 1
        Width = 73
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = edt_npedoriExit
      end
      object NUMNF: TEdit
        Left = 194
        Top = 73
        Width = 42
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnExit = NUMNFExit
      end
      object NUMCF: TEdit
        Left = 299
        Top = 73
        Width = 44
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        OnExit = NUMCFExit
      end
      object CODVEN: TEdit
        Left = 194
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 259
        Top = 55
        Width = 238
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
        Text = 'Todos...'
      end
      object MLOTSEQ: TEdit
        Left = 58
        Top = 1
        Width = 28
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        Visible = False
        OnExit = MLOTSEQExit
      end
      object cb_dtnf: TCheckBox
        Left = 343
        Top = 38
        Width = 76
        Height = 17
        Caption = 'Data da NF.'
        TabOrder = 11
      end
      object TipoPed: TEdit
        Left = 568
        Top = 53
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = TipoPedExit
      end
      object NomTipoPed: TEdit
        Left = 655
        Top = 53
        Width = 139
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
        Text = 'Todos...'
      end
      object edt_nomcsf: TEdit
        Left = 480
        Top = 19
        Width = 193
        Height = 19
        Hint = 'Pressione <F2> para Consultar Pedidos'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = False
      end
      object edt_numnfce: TEdit
        Left = 409
        Top = 71
        Width = 48
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        OnExit = edt_numnfceExit
      end
      object StaticText33: TStaticText
        Left = 817
        Top = -2
        Width = 151
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'NFCE'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
      end
      object CLB_NFCE: TCheckListBox
        Left = 816
        Top = 16
        Width = 153
        Height = 73
        Color = 16776176
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Contigencia(nao Enviado)'
          'Com erros'
          'so OK'
          'Todos')
        ParentCtl3D = False
        TabOrder = 15
        OnClick = CLB_NFCEClick
      end
    end
    object tsOutFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label4: TLabel
        Left = 125
        Top = 9
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object lbl_semcomp: TLabel
        Left = 98
        Top = 46
        Width = 88
        Height = 13
        Caption = 'N'#250'mero Comanda:'
      end
      object CODTLV: TEdit
        Left = 194
        Top = 5
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODTLVExit
        OnKeyPress = CODTLVKeyPress
      end
      object SEMCOMP: TEdit
        Left = 194
        Top = 41
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = SEMCOMPExit
      end
      object bbGerarXML: TBitBtn
        Left = 281
        Top = 41
        Width = 336
        Height = 25
        Caption = '&Gerar Arquivo Xml/Produtos do Pedido Selcionado(MASTER)'
        TabOrder = 2
        TabStop = False
        OnClick = bbGerarXMLClick
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
      object NOMTLV: TEdit
        Left = 259
        Top = 5
        Width = 298
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        Text = 'Todos...'
      end
      object BitBtn4: TBitBtn
        Left = 283
        Top = 65
        Width = 336
        Height = 25
        Caption = 'Gerar Arquivo Xml/Servicos do Pedido Selcionado(MASTER)'
        TabOrder = 4
        TabStop = False
        OnClick = BitBtn4Click
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
        Top = 4
        Width = 110
        Height = 13
        Caption = 'Observa'#231#245'es Linha 01:'
      end
      object Label38: TLabel
        Left = 160
        Top = 41
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
      end
      object Label5: TLabel
        Left = 150
        Top = 59
        Width = 87
        Height = 13
        Caption = 'Origem do Pedido:'
      end
      object PROCESSO: TEdit
        Left = 243
        Top = 1
        Width = 123
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object OBS1: TEdit
        Left = 243
        Top = 19
        Width = 362
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = OBS1Exit
      end
      object NOMTRA: TEdit
        Left = 308
        Top = 37
        Width = 297
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Todos...'
      end
      object CODTRA: TEdit
        Left = 243
        Top = 37
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object MCODORI: TEdit
        Left = 243
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = MCODORIExit
        OnKeyPress = MCODORIKeyPress
      end
      object MNOMORI: TEdit
        Left = 308
        Top = 55
        Width = 297
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        Text = 'Todos...'
      end
      object RG_ENTREGUES: TRadioGroup
        Left = 612
        Top = 15
        Width = 93
        Height = 50
        Caption = 'Tipo de Entrega:'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Pendentes'
          '&Entregue'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 6
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 13
        Top = -324
        Width = 794
        Height = 945
        DataSource = DM2.Src_Cab
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        PreviewOptions.Position = poDefault
        ShowProgress = False
        object RLcabemp: TRLBand
          Left = 38
          Top = 38
          Width = 737
          Height = 147
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLcabempBeforePrint
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 737
            Height = 35
            Align = faTop
            Alignment = taCenter
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 0
            Top = 35
            Width = 737
            Height = 23
            Align = faTop
            Alignment = taCenter
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 0
            Top = 58
            Width = 737
            Height = 19
            Align = faTop
            Alignment = taCenter
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlobs: TRLMemo
            Left = 0
            Top = 77
            Width = 737
            Height = 21
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 185
          Width = 737
          Height = 42
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel12: TRLLabel
            Left = 0
            Top = 0
            Width = 737
            Height = 35
            Align = faTop
            Alignment = taCenter
            Caption = 'Espelho do Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLcabcli: TRLBand
          Left = 38
          Top = 227
          Width = 737
          Height = 126
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLcabcliBeforePrint
          object RLLabel1: TRLLabel
            Left = 1
            Top = 3
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Cliente.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 127
            Top = 3
            Width = 288
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 80
            Top = 3
            Width = 46
            Height = 16
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 57
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLcnpjcpf: TRLDBText
            Left = 84
            Top = 57
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 437
            Top = 3
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Fantasia...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 505
            Top = 2
            Width = 250
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 1
            Top = 21
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 82
            Top = 21
            Width = 333
            Height = 16
            AutoSize = False
            DataField = 'ecf_ender'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 437
            Top = 19
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 505
            Top = 19
            Width = 250
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 1
            Top = 36
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Cidade..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 82
            Top = 38
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 378
            Top = 39
            Width = 32
            Height = 16
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 406
            Top = 39
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 437
            Top = 37
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 505
            Top = 37
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 505
            Top = 57
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 437
            Top = 57
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 83
            Top = 76
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 1
            Top = 76
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Contato.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 284
            Top = 76
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLDBText14: TRLDBText
            Left = 337
            Top = 76
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 505
            Top = 76
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE02'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 1
            Top = 93
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 84
            Top = 93
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 354
            Top = 94
            Width = 51
            Height = 16
            AutoSize = False
            Caption = 'Chave:'
          end
          object RLDBText23: TRLDBText
            Left = 406
            Top = 94
            Width = 74
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 485
            Top = 93
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 524
            Top = 93
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 625
            Top = 93
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 677
            Top = 93
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 658
            Top = 93
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 685
            Top = 93
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 1
            Top = 109
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Sequencia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDB_numnf: TRLDBText
            Left = 84
            Top = 109
            Width = 56
            Height = 16
            AutoSize = False
            DataField = 'P1NUMNF'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 173
            Top = 109
            Width = 108
            Height = 16
            AutoSize = False
            Caption = 'Plano de Vendas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 288
            Top = 109
            Width = 34
            Height = 16
            AutoSize = False
            DataField = 'P1TABPV'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 327
            Top = 109
            Width = 34
            Height = 16
            AutoSize = False
            DataField = 'P1CODPV'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 353
          Width = 737
          Height = 63
          DataSource = DM2.Src_Cor
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 737
            Height = 17
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLcabCodpro: TRLLabel
              Left = 0
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object RLCabQtd: TRLLabel
              Left = 32
              Top = 0
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Layout = tlCenter
            end
            object RLCabUnd: TRLLabel
              Left = 81
              Top = 0
              Width = 22
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object RLCabNome: TRLLabel
              Left = 104
              Top = 0
              Width = 226
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Produtos'
              Layout = tlCenter
            end
            object RLCabMarca: TRLLabel
              Left = 333
              Top = 0
              Width = 82
              Height = 16
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object RLCabPU: TRLLabel
              Left = 568
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit'#225'rio'
              Layout = tlCenter
            end
            object rlcablote: TRLLabel
              Left = 417
              Top = 0
              Width = 118
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lote'
              Layout = tlCenter
            end
            object rlcabdtvcto: TRLLabel
              Left = 536
              Top = 0
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dt.Vcto'
              Layout = tlCenter
            end
            object RLCabTotal: TRLLabel
              Left = 682
              Top = 0
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object RLCabdesc: TRLLabel
              Left = 626
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Layout = tlCenter
            end
          end
          object RLdet_itens: TRLBand
            Left = 0
            Top = 17
            Width = 737
            Height = 12
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLdet_itensBeforePrint
            object RLdetCodpro: TRLDBText
              Left = 0
              Top = 0
              Width = 32
              Height = 12
              Align = faLeft
              AutoSize = False
              DataField = 'P2CODPRO_ORI'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLcabCodpro
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetQtd: TRLDBText
              Left = 32
              Top = 0
              Width = 46
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTD'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabQtd
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetUnd: TRLDBText
              Left = 81
              Top = 0
              Width = 22
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'P2UND'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabUnd
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetNome: TRLDBText
              Left = 104
              Top = 0
              Width = 226
              Height = 12
              AutoSize = False
              DataField = 'P2NOMPRO_ORI'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabNome
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetMarca: TRLDBText
              Left = 333
              Top = 0
              Width = 82
              Height = 12
              AutoSize = False
              DataField = 'PDMARCA'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabMarca
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetPU: TRLDBText
              Left = 568
              Top = 0
              Width = 58
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2PRECO'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabPU
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetTotal: TRLDBText
              Left = 682
              Top = 0
              Width = 52
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabTotal
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object RLdetdesc: TRLLabel
              Left = 626
              Top = 0
              Width = 58
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLCabdesc
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
            object rlDetlote: TRLDBMemo
              Left = 417
              Top = 0
              Width = 118
              Height = 12
              DataField = 'lote2'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcablote
              ParentFont = False
            end
            object rlDETdtvcto: TRLDBMemo
              Left = 536
              Top = 0
              Width = 34
              Height = 12
              DataField = 'dtvcto_lote'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdtvcto
              ParentFont = False
              SecondHolder = rlDetlote
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLdet_impostos: TRLBand
            Left = 0
            Top = 29
            Width = 737
            Height = 19
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            object rl_dadosimp: TRLMemo
              Left = 0
              Top = 0
              Width = 737
              Height = 16
              Align = faTop
              Alignment = taCenter
            end
          end
          object RLdet_comissoes: TRLBand
            Left = 0
            Top = 48
            Width = 737
            Height = 16
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            object rl_dados_comissoes: TRLLabel
              Left = 0
              Top = 0
              Width = 737
              Height = 16
              Align = faClient
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail2_servicos: TRLSubDetail
          Left = 38
          Top = 416
          Width = 737
          Height = 79
          DataSource = DM2.Src_Ser
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 737
            Height = 35
            BandType = btColumnHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLLabel25: TRLLabel
              Left = 0
              Top = 0
              Width = 737
              Height = 18
              Align = faTop
              Alignment = taCenter
              Caption = 'Servi'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLcabSerCodpro: TRLLabel
              Left = 3
              Top = 18
              Width = 42
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object RLCabSerQtd: TRLLabel
              Left = 46
              Top = 18
              Width = 36
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Layout = tlCenter
            end
            object RLCabSerNome: TRLLabel
              Left = 83
              Top = 19
              Width = 378
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Produtos'
              Layout = tlCenter
            end
            object rlcabSercfo: TRLLabel
              Left = 464
              Top = 19
              Width = 28
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CFOP'
              Layout = tlCenter
            end
            object RLCabSerPU: TRLLabel
              Left = 494
              Top = 18
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit'#225'rio'
              Layout = tlCenter
            end
            object RLCabSerdesc: TRLLabel
              Left = 553
              Top = 18
              Width = 74
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Layout = tlCenter
            end
            object RLCabSerTotal: TRLLabel
              Left = 629
              Top = 19
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object cabSer_inss: TRLLabel
              Left = 681
              Top = 20
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%INSS'
              Layout = tlCenter
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 35
            Width = 737
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand5BeforePrint
            object RLdetSerNome: TRLDBText
              Left = 83
              Top = 0
              Width = 378
              Height = 10
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = DM2.Src_Ser
              Holder = RLCabSerNome
            end
            object RLdetSerCodpro: TRLDBText
              Left = 3
              Top = 0
              Width = 42
              Height = 10
              AutoSize = False
              DataField = 'P2SCODPRO'
              DataSource = DM2.Src_Ser
              Holder = RLcabSerCodpro
            end
            object RLdetSerQtd: TRLDBText
              Left = 46
              Top = 2
              Width = 36
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SQTD'
              DataSource = DM2.Src_Ser
              Holder = RLCabSerQtd
            end
            object rldetSercfo: TRLDBText
              Left = 464
              Top = 0
              Width = 28
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SCFO'
              DataSource = DM2.Src_Ser
              Holder = rlcabSercfo
            end
            object RLdetSerPU: TRLDBText
              Left = 494
              Top = 0
              Width = 58
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SPRECO'
              DataSource = DM2.Src_Ser
              Holder = RLCabSerPU
            end
            object RLdetSerdesc: TRLLabel
              Left = 553
              Top = 0
              Width = 74
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Holder = RLCabSerdesc
              Layout = tlCenter
            end
            object RLdetSerTotal: TRLDBText
              Left = 629
              Top = 0
              Width = 52
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM2.Src_Ser
              Holder = RLCabSerTotal
            end
            object RLDBText20: TRLDBText
              Left = 681
              Top = 1
              Width = 34
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SALIQ'
              DataSource = DM2.Src_Ser
              Holder = cabSer_inss
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 495
          Width = 737
          Height = 144
          BandType = btSummary
          object lbl_baseicms: TRLLabel
            Left = 3
            Top = 1
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ICMS'
          end
          object lbl_icms: TRLLabel
            Left = 142
            Top = 1
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do ICMS'
          end
          object lbl_baseicmsst: TRLLabel
            Left = 283
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
          end
          object lbl_icmsst: TRLLabel
            Left = 430
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Icms ST.'
          end
          object lbl_totbru: TRLLabel
            Left = 587
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total dos Produtos'
          end
          object lbl_nomfre: TRLLabel
            Left = 3
            Top = 48
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Frete'
            Holder = lbl_baseicms
          end
          object lbl_valfre: TRLLabel
            Left = 142
            Top = 48
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Seguro'
            Holder = lbl_icms
          end
          object lbl_outdes: TRLLabel
            Left = 283
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Outras Despesas'
            Holder = lbl_baseicmsst
          end
          object lbl_totipi: TRLLabel
            Left = 430
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do IPI'
            Holder = lbl_icmsst
          end
          object lbl_totnot: TRLLabel
            Left = 587
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total da Nota'
            Holder = lbl_totbru
          end
          object RLLabel20: TRLLabel
            Left = 2
            Top = 90
            Width = 280
            Height = 16
            Caption = 'Total dos Produtos c/Substitui'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 2
            Top = 107
            Width = 280
            Height = 16
            Caption = 'Total dos Produtos s/Substitui'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 2
            Top = 124
            Width = 280
            Height = 16
            Caption = 'Total dos Descontos..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object lbl_codbco: TRLLabel
            Left = 430
            Top = 90
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Banco:'
          end
          object RLDBText22: TRLDBText
            Left = 488
            Top = 90
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1BANCO'
            DataSource = DM2.Src_Cab
          end
          object RLLabel23: TRLLabel
            Left = 430
            Top = 107
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Transp:'
          end
          object RLDBText26: TRLDBText
            Left = 488
            Top = 107
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODTRA'
            DataSource = DM2.Src_Cab
          end
          object lbl_totnor: TRLLabel
            Left = 283
            Top = 107
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Holder = lbl_baseicmsst
          end
          object RLLabel24: TRLLabel
            Left = 430
            Top = 124
            Width = 97
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Al'#237'quota D'#233'bito:'
          end
          object edt_baseicms: TRLLabel
            Left = 3
            Top = 22
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ICMS'
            Holder = lbl_baseicms
          end
          object edt_icms: TRLLabel
            Left = 142
            Top = 22
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do ICMS'
            Holder = lbl_icms
          end
          object edt_baseicmsst: TRLLabel
            Left = 283
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
            Holder = lbl_baseicmsst
          end
          object edt_icmsst: TRLLabel
            Left = 430
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Icms ST.'
            Holder = lbl_icmsst
          end
          object edt_totbru: TRLLabel
            Left = 587
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total dos Produtos'
            Holder = lbl_totbru
          end
          object edt_nomfre: TRLLabel
            Left = 3
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Frete'
            Holder = lbl_baseicms
          end
          object edt_valfre: TRLLabel
            Left = 142
            Top = 67
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Seguro'
            Holder = lbl_icms
          end
          object edt_outdes: TRLLabel
            Left = 283
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Outras Despesas'
            Holder = lbl_outdes
          end
          object edt_totipi: TRLLabel
            Left = 430
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do IPI'
            Holder = lbl_icmsst
          end
          object edt_totnot: TRLLabel
            Left = 587
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total da Nota'
            Holder = lbl_totbru
          end
          object edt_totret: TRLLabel
            Left = 283
            Top = 90
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Holder = lbl_baseicmsst
          end
          object edt_totdes: TRLLabel
            Left = 283
            Top = 124
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Holder = lbl_baseicmsst
          end
          object edt_forma: TRLLabel
            Left = 530
            Top = 90
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
          object edt_transp: TRLLabel
            Left = 530
            Top = 107
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
          object edt_aliqdeb: TRLLabel
            Left = 530
            Top = 124
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
        end
        object rlobsped: TRLBand
          Left = 38
          Top = 639
          Width = 737
          Height = 32
          AutoSize = True
          BandType = btSummary
          object RLLabel48: TRLLabel
            Left = 0
            Top = 0
            Width = 737
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Observacoes do Pedido'
          end
          object RLMemo_obsped: TRLMemo
            Left = 0
            Top = 16
            Width = 737
            Height = 16
            Align = faTop
          end
        end
        object rlobsnf: TRLBand
          Left = 38
          Top = 671
          Width = 737
          Height = 32
          AutoSize = True
          BandType = btSummary
          object RLLabel49: TRLLabel
            Left = 0
            Top = 0
            Width = 737
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Observacoes da Nota Fiscal'
          end
          object RLMemo_obsnf: TRLMemo
            Left = 0
            Top = 16
            Width = 737
            Height = 16
            Align = faTop
          end
        end
        object rldadostransp: TRLBand
          Left = 38
          Top = 703
          Width = 737
          Height = 82
          BandType = btSummary
          object RLLabel52: TRLLabel
            Left = 0
            Top = 0
            Width = 737
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Dados da Entrega:'
          end
          object RLLabel53: TRLLabel
            Left = 4
            Top = 20
            Width = 63
            Height = 16
            Caption = 'Qtde Vol:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel87: TRLLabel
            Left = 115
            Top = 20
            Width = 57
            Height = 16
            Caption = 'Especie:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel89: TRLLabel
            Left = 221
            Top = 20
            Width = 77
            Height = 16
            Caption = 'Peso Bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel90: TRLLabel
            Left = 358
            Top = 20
            Width = 91
            Height = 16
            Caption = 'Peso Liquido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlrod_qtdvol: TRLLabel
            Left = 71
            Top = 21
            Width = 37
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_especie: TRLLabel
            Left = 175
            Top = 21
            Width = 42
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_pesob: TRLLabel
            Left = 301
            Top = 21
            Width = 51
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_pesol: TRLLabel
            Left = 454
            Top = 21
            Width = 51
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object RLLabel91: TRLLabel
            Left = 511
            Top = 20
            Width = 110
            Height = 16
            Caption = 'Saida data/hora:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlrod_dathorsai: TRLLabel
            Left = 625
            Top = 21
            Width = 112
            Height = 16
            AutoSize = False
            Caption = ' 10/09/1093 15:30'
          end
        end
      end
    end
    object tbs_timbrado: TTabSheet
      Caption = 'Relatorio Timbrado'
      ImageIndex = 3
      object RLReport2: TRLReport
        Left = 38
        Top = -568
        Width = 794
        Height = 945
        DataSource = DM2.Src_Cab
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 17.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        ShowProgress = False
        BeforePrint = RLReport2BeforePrint
        object RLBand6: TRLBand
          Left = 64
          Top = 38
          Width = 711
          Height = 147
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLcabempBeforePrint
          object RLDBText19: TRLDBText
            Left = 0
            Top = 0
            Width = 711
            Height = 35
            Align = faTop
            Alignment = taCenter
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object RLDBText21: TRLDBText
            Left = 0
            Top = 35
            Width = 711
            Height = 23
            Align = faTop
            Alignment = taCenter
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object RLDBText25: TRLDBText
            Left = 0
            Top = 58
            Width = 711
            Height = 19
            Align = faTop
            Alignment = taCenter
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object RLMemo1: TRLMemo
            Left = 0
            Top = 77
            Width = 711
            Height = 21
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
        end
        object RLBand7: TRLBand
          Left = 64
          Top = 185
          Width = 711
          Height = 42
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel26: TRLLabel
            Left = 0
            Top = 0
            Width = 711
            Height = 35
            Align = faTop
            Alignment = taCenter
            Caption = 'Espelho do Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 64
          Top = 227
          Width = 711
          Height = 126
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel27: TRLLabel
            Left = 1
            Top = 3
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Cliente.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 127
            Top = 3
            Width = 288
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 80
            Top = 3
            Width = 46
            Height = 16
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 1
            Top = 57
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 84
            Top = 57
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 437
            Top = 3
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Fantasia...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 505
            Top = 2
            Width = 250
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 1
            Top = 21
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 82
            Top = 21
            Width = 333
            Height = 16
            AutoSize = False
            DataField = 'ecf_ender'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 437
            Top = 19
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 505
            Top = 19
            Width = 250
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 1
            Top = 36
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Cidade..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 82
            Top = 38
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 378
            Top = 39
            Width = 32
            Height = 16
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 406
            Top = 39
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 437
            Top = 37
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 505
            Top = 37
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 505
            Top = 57
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 437
            Top = 57
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText37: TRLDBText
            Left = 83
            Top = 76
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 1
            Top = 76
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Contato.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 284
            Top = 76
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLDBText38: TRLDBText
            Left = 337
            Top = 76
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 505
            Top = 76
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE02'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 1
            Top = 93
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText40: TRLDBText
            Left = 84
            Top = 93
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 354
            Top = 94
            Width = 51
            Height = 16
            AutoSize = False
            Caption = 'Chave:'
          end
          object RLDBText41: TRLDBText
            Left = 406
            Top = 94
            Width = 74
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 485
            Top = 93
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText42: TRLDBText
            Left = 524
            Top = 93
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 625
            Top = 93
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel42: TRLLabel
            Left = 677
            Top = 93
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 658
            Top = 93
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 685
            Top = 93
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 1
            Top = 109
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Sequencia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText43: TRLDBText
            Left = 84
            Top = 109
            Width = 56
            Height = 16
            AutoSize = False
            DataField = 'P1NUMNF'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel44: TRLLabel
            Left = 173
            Top = 109
            Width = 108
            Height = 16
            AutoSize = False
            Caption = 'Plano de Vendas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText44: TRLDBText
            Left = 288
            Top = 109
            Width = 34
            Height = 16
            AutoSize = False
            DataField = 'P1TABPV'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText45: TRLDBText
            Left = 327
            Top = 109
            Width = 34
            Height = 16
            AutoSize = False
            DataField = 'P1CODPV'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 64
          Top = 353
          Width = 711
          Height = 107
          DataSource = DM2.Src_Cor
          object RLBand9: TRLBand
            Left = 0
            Top = 0
            Width = 711
            Height = 17
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLLabel45: TRLLabel
              Left = 0
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object RLLabel46: TRLLabel
              Left = 34
              Top = 0
              Width = 30
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Layout = tlCenter
            end
            object RLLabel47: TRLLabel
              Left = 66
              Top = 0
              Width = 22
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object rlCabNome2: TRLLabel
              Left = 89
              Top = 0
              Width = 156
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Produtos'
              Layout = tlCenter
            end
            object rlCabMarca2: TRLLabel
              Left = 245
              Top = 0
              Width = 58
              Height = 16
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object RLLabel50: TRLLabel
              Left = 456
              Top = 0
              Width = 62
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit'#225'rio'
              Layout = tlCenter
            end
            object RLLabel51: TRLLabel
              Left = 686
              Top = 0
              Width = 24
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%IPI'
              Layout = tlCenter
            end
            object RLLabel54: TRLLabel
              Left = 393
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CST'
              Layout = tlCenter
            end
            object RLLabel55: TRLLabel
              Left = 425
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CFOP'
              Layout = tlCenter
            end
            object RLLabel56: TRLLabel
              Left = 594
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object RLLabel57: TRLLabel
              Left = 649
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%ICMS'
              Layout = tlCenter
            end
            object RLLabel58: TRLLabel
              Left = 517
              Top = 0
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Layout = tlCenter
            end
            object rlCabLote2: TRLLabel
              Left = 303
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lote'
              Layout = tlCenter
            end
            object rlCabDtVcto2: TRLLabel
              Left = 361
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dt.Vcto'
              Layout = tlCenter
            end
          end
          object RLBand10: TRLBand
            Left = 0
            Top = 17
            Width = 711
            Height = 11
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLdet_itensBeforePrint
            object RLDBText46: TRLDBText
              Left = 0
              Top = 0
              Width = 32
              Height = 10
              AutoSize = False
              DataField = 'P2CODPRO_ORI'
              DataSource = DM2.Src_Cor
              Holder = RLLabel45
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText47: TRLDBText
              Left = 34
              Top = 0
              Width = 30
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTD'
              DataSource = DM2.Src_Cor
              Holder = RLLabel46
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText48: TRLDBText
              Left = 66
              Top = 0
              Width = 22
              Height = 10
              Alignment = taCenter
              AutoSize = False
              DataField = 'P2UND'
              DataSource = DM2.Src_Cor
              Holder = RLLabel47
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object rlDetNome2: TRLDBText
              Left = 89
              Top = 0
              Width = 156
              Height = 10
              AutoSize = False
              DataField = 'P2NOMPRO_ORI'
              DataSource = DM2.Src_Cor
              Holder = rlCabNome2
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object rlDetMarca2: TRLDBText
              Left = 245
              Top = 0
              Width = 58
              Height = 10
              AutoSize = False
              DataField = 'PDMARCA'
              DataSource = DM2.Src_Cor
              Holder = rlCabMarca2
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText53: TRLDBText
              Left = 393
              Top = 0
              Width = 32
              Height = 10
              Alignment = taCenter
              AutoSize = False
              DataField = 'P2SIT'
              DataSource = DM2.Src_Cor
              Holder = RLLabel54
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText54: TRLDBText
              Left = 425
              Top = 0
              Width = 32
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2CFO'
              DataSource = DM2.Src_Cor
              Holder = RLLabel55
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText55: TRLDBText
              Left = 456
              Top = 0
              Width = 62
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2PRECO'
              DataSource = DM2.Src_Cor
              Holder = RLLabel50
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText56: TRLDBText
              Left = 594
              Top = 0
              Width = 56
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM2.Src_Cor
              Holder = RLLabel56
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText57: TRLDBText
              Left = 649
              Top = 0
              Width = 38
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2ALIQ'
              DataSource = DM2.Src_Cor
              Holder = RLLabel57
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText58: TRLDBText
              Left = 686
              Top = 0
              Width = 24
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2ALIPI'
              DataSource = DM2.Src_Cor
              Holder = RLLabel51
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object RLLabel59: TRLLabel
              Left = 517
              Top = 0
              Width = 78
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Holder = RLLabel58
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
            object rlDetlote2: TRLDBMemo
              Left = 303
              Top = 0
              Width = 58
              Height = 10
              DataField = 'lote2'
              DataSource = DM2.Src_Cor
              Holder = rlCabLote2
            end
            object rldetdtvcto2: TRLDBMemo
              Left = 361
              Top = 0
              Width = 32
              Height = 10
              DataField = 'dtvcto_lote'
              DataSource = DM2.Src_Cor
              Holder = rlCabDtVcto2
              SecondHolder = rlDetlote2
              SecondHoldStyle = hsCopyHeight
            end
          end
          object rldet_impostos2: TRLBand
            Left = 0
            Top = 28
            Width = 711
            Height = 16
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            object RLLabel60: TRLLabel
              Left = 0
              Top = 0
              Width = 711
              Height = 16
              Align = faClient
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object rldet_comissoes2: TRLBand
            Left = 0
            Top = 44
            Width = 711
            Height = 16
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            object RLLabel61: TRLLabel
              Left = 0
              Top = 0
              Width = 711
              Height = 16
              Align = faClient
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 64
          Top = 460
          Width = 711
          Height = 79
          DataSource = DM2.Src_Ser
          object RLBand13: TRLBand
            Left = 0
            Top = 0
            Width = 711
            Height = 35
            BandType = btColumnHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLLabel62: TRLLabel
              Left = 0
              Top = 0
              Width = 711
              Height = 18
              Align = faTop
              Alignment = taCenter
              Caption = 'Servi'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel63: TRLLabel
              Left = 3
              Top = 18
              Width = 42
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object RLLabel64: TRLLabel
              Left = 46
              Top = 18
              Width = 36
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Layout = tlCenter
            end
            object RLLabel65: TRLLabel
              Left = 83
              Top = 19
              Width = 368
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Produtos'
              Layout = tlCenter
            end
            object RLLabel66: TRLLabel
              Left = 457
              Top = 19
              Width = 28
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CFOP'
              Layout = tlCenter
            end
            object RLLabel67: TRLLabel
              Left = 487
              Top = 18
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit'#225'rio'
              Layout = tlCenter
            end
            object RLLabel68: TRLLabel
              Left = 546
              Top = 18
              Width = 74
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Layout = tlCenter
            end
            object RLLabel69: TRLLabel
              Left = 622
              Top = 19
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object RLLabel70: TRLLabel
              Left = 674
              Top = 20
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%INSS'
              Layout = tlCenter
            end
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 35
            Width = 711
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand5BeforePrint
            object RLDBText59: TRLDBText
              Left = 83
              Top = 0
              Width = 368
              Height = 10
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = DM2.Src_Ser
              Holder = RLLabel65
            end
            object RLDBText60: TRLDBText
              Left = 3
              Top = 0
              Width = 42
              Height = 10
              AutoSize = False
              DataField = 'P2SCODPRO'
              DataSource = DM2.Src_Ser
              Holder = RLLabel63
            end
            object RLDBText61: TRLDBText
              Left = 46
              Top = 2
              Width = 36
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SQTD'
              DataSource = DM2.Src_Ser
              Holder = RLLabel64
            end
            object RLDBText62: TRLDBText
              Left = 457
              Top = 0
              Width = 28
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SCFO'
              DataSource = DM2.Src_Ser
              Holder = RLLabel66
            end
            object RLDBText63: TRLDBText
              Left = 487
              Top = 0
              Width = 58
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SPRECO'
              DataSource = DM2.Src_Ser
              Holder = RLLabel67
            end
            object RLLabel71: TRLLabel
              Left = 546
              Top = 0
              Width = 74
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Holder = RLLabel68
              Layout = tlCenter
            end
            object RLDBText64: TRLDBText
              Left = 622
              Top = 0
              Width = 52
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM2.Src_Ser
              Holder = RLLabel69
            end
            object RLDBText65: TRLDBText
              Left = 674
              Top = 1
              Width = 34
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SALIQ'
              DataSource = DM2.Src_Ser
              Holder = RLLabel70
            end
          end
        end
        object RLBand15: TRLBand
          Left = 64
          Top = 539
          Width = 711
          Height = 139
          BandType = btSummary
          object RLLabel72: TRLLabel
            Left = 3
            Top = 1
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ICMS'
          end
          object RLLabel73: TRLLabel
            Left = 142
            Top = 1
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do ICMS'
          end
          object RLLabel74: TRLLabel
            Left = 283
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
          end
          object RLLabel75: TRLLabel
            Left = 422
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Icms ST.'
          end
          object RLLabel76: TRLLabel
            Left = 579
            Top = 2
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total dos Produtos'
          end
          object RLLabel77: TRLLabel
            Left = 3
            Top = 48
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Frete'
            Holder = RLLabel72
          end
          object RLLabel78: TRLLabel
            Left = 142
            Top = 48
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Seguro'
            Holder = RLLabel73
          end
          object RLLabel79: TRLLabel
            Left = 283
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Redu'#231#227'o do Icms'
            Holder = RLLabel74
          end
          object RLLabel80: TRLLabel
            Left = 422
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do IPI'
            Holder = RLLabel75
          end
          object RLLabel81: TRLLabel
            Left = 579
            Top = 49
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total da Nota'
            Holder = RLLabel76
          end
          object RLLabel82: TRLLabel
            Left = 2
            Top = 88
            Width = 280
            Height = 16
            Caption = 'Total dos Produtos c/Substitui'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel83: TRLLabel
            Left = 2
            Top = 106
            Width = 280
            Height = 16
            Caption = 'Total dos Produtos s/Substitui'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel84: TRLLabel
            Left = 2
            Top = 124
            Width = 280
            Height = 16
            Caption = 'Total dos Descontos..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel85: TRLLabel
            Left = 421
            Top = 89
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Banco:'
          end
          object RLDBText66: TRLDBText
            Left = 472
            Top = 89
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1BANCO'
            DataSource = DM2.Src_Cab
          end
          object RLLabel86: TRLLabel
            Left = 421
            Top = 105
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Transp:'
          end
          object RLDBText67: TRLDBText
            Left = 473
            Top = 105
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODTRA'
            DataSource = DM2.Src_Cab
          end
          object lbl_totnor2: TRLLabel
            Left = 283
            Top = 105
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
            Holder = RLLabel74
          end
          object RLLabel88: TRLLabel
            Left = 420
            Top = 121
            Width = 97
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Al'#237'quota D'#233'bito:'
          end
          object edt_baseicms2: TRLLabel
            Left = 3
            Top = 22
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ICMS'
            Holder = RLLabel72
          end
          object edt_icms2: TRLLabel
            Left = 142
            Top = 22
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do ICMS'
            Holder = RLLabel73
          end
          object edt_baseicmsst2: TRLLabel
            Left = 283
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
            Holder = RLLabel74
          end
          object edt_icmsst2: TRLLabel
            Left = 422
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Icms ST.'
            Holder = RLLabel75
          end
          object edt_totbru2: TRLLabel
            Left = 579
            Top = 21
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total dos Produtos'
            Holder = RLLabel76
          end
          object edt_nomfre2: TRLLabel
            Left = 3
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Frete'
            Holder = RLLabel72
          end
          object edt_valfre2: TRLLabel
            Left = 142
            Top = 67
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor do Seguro'
            Holder = RLLabel73
          end
          object edt_outdes2: TRLLabel
            Left = 283
            Top = 67
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Redu'#231#227'o do Icms'
            Holder = RLLabel74
          end
          object edt_totipi2: TRLLabel
            Left = 422
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do IPI'
            Holder = RLLabel75
          end
          object edt_totnot2: TRLLabel
            Left = 579
            Top = 68
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total da Nota'
            Holder = RLLabel76
          end
          object edt_totret2: TRLLabel
            Left = 283
            Top = 87
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
            Holder = RLLabel74
          end
          object edt_totdes2: TRLLabel
            Left = 283
            Top = 121
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Base Calc.ST'
            Holder = RLLabel74
          end
          object edt_forma2: TRLLabel
            Left = 515
            Top = 90
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
          object edt_transp2: TRLLabel
            Left = 517
            Top = 107
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
          object edt_aliqdeb2: TRLLabel
            Left = 519
            Top = 120
            Width = 113
            Height = 16
            Caption = 'Total dos Produtos'
          end
        end
        object rlobsped_timbrado: TRLBand
          Left = 64
          Top = 678
          Width = 711
          Height = 32
          AutoSize = True
          BandType = btSummary
          object RLLabel92: TRLLabel
            Left = 0
            Top = 0
            Width = 711
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Observacoes do Pedido'
          end
          object RLMemo_obsped_timbrado: TRLMemo
            Left = 0
            Top = 16
            Width = 711
            Height = 16
            Align = faTop
          end
        end
        object rlobsnf_timbrado: TRLBand
          Left = 64
          Top = 710
          Width = 711
          Height = 32
          AutoSize = True
          BandType = btSummary
          object RLLabel93: TRLLabel
            Left = 0
            Top = 0
            Width = 711
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Observacoes da Nota Fiscal'
          end
          object RLMemo_obsnf_timbrado: TRLMemo
            Left = 0
            Top = 16
            Width = 711
            Height = 16
            Align = faTop
          end
        end
        object RLBand16: TRLBand
          Left = 64
          Top = 742
          Width = 711
          Height = 82
          BandType = btSummary
          object RLLabel94: TRLLabel
            Left = 0
            Top = 0
            Width = 711
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Dados da Entrega:'
          end
          object RLLabel95: TRLLabel
            Left = 4
            Top = 20
            Width = 63
            Height = 16
            Caption = 'Qtde Vol:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel96: TRLLabel
            Left = 115
            Top = 20
            Width = 57
            Height = 16
            Caption = 'Especie:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel97: TRLLabel
            Left = 221
            Top = 20
            Width = 77
            Height = 16
            Caption = 'Peso Bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel98: TRLLabel
            Left = 358
            Top = 20
            Width = 63
            Height = 16
            Caption = 'Peso Liq:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlrod_qtdvol_timbrado: TRLLabel
            Left = 71
            Top = 21
            Width = 37
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_especie_timbrado: TRLLabel
            Left = 175
            Top = 21
            Width = 42
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_pesob_timbrado: TRLLabel
            Left = 301
            Top = 21
            Width = 51
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object rlrod_pesol_timbrado: TRLLabel
            Left = 423
            Top = 21
            Width = 51
            Height = 16
            AutoSize = False
            Caption = ' '
          end
          object RLLabel103: TRLLabel
            Left = 478
            Top = 20
            Width = 110
            Height = 16
            Caption = 'Saida data/hora:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlrod_dathorsai_timbrado: TRLLabel
            Left = 590
            Top = 20
            Width = 112
            Height = 16
            AutoSize = False
            Caption = ' 10/09/1093 15:30'
          end
        end
      end
    end
    object tsConfig: TTabSheet
      Caption = 'Configura'#231#227'o Master'
      ImageIndex = 5
      object cb_ultchave: TCheckBox
        Left = 0
        Top = 0
        Width = 281
        Height = 17
        Caption = 'Ao Iniciar Trazer '#250'ltima chave'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cb_ultchaveClick
      end
    end
    object Ts_RelatorioCusto: TTabSheet
      Caption = 'Relat'#243'rio de Custo'
      ImageIndex = 6
      object RLReport3: TRLReport
        Left = 0
        Top = 2
        Width = 794
        Height = 1123
        DataSource = Frm_LucroPed.Ds_LucroPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object Rl_Cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 19
          BandType = btHeader
          object Lbl_NomeEmpresa: TRLLabel
            Left = 0
            Top = 0
            Width = 112
            Height = 16
            Caption = 'Nome da Empresa'
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 680
            Top = 0
            Width = 116
            Height = 16
            Info = itLastPageNumber
            Text = '/'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 672
            Top = 0
            Width = 87
            Height = 16
            Info = itPageNumber
          end
        end
        object Rl_Header: TRLBand
          Left = 38
          Top = 57
          Width = 718
          Height = 17
          BandType = btHeader
          object Lbl_Codigo: TRLLabel
            Left = 0
            Top = 0
            Width = 50
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_Descricao: TRLLabel
            Left = 61
            Top = 0
            Width = 188
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_Qtd: TRLLabel
            Left = 264
            Top = 0
            Width = 42
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_PrecoUnitario: TRLLabel
            Left = 312
            Top = 0
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'P'#231'o Unit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_ValorTotal: TRLLabel
            Left = 376
            Top = 0
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_PercentDesc: TRLLabel
            Left = 435
            Top = 0
            Width = 50
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_Custo: TRLLabel
            Left = 490
            Top = 0
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Lbl_TotalCusto: TRLLabel
            Left = 536
            Top = 0
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tot Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_ValorLucro: TRLLabel
            Left = 594
            Top = 0
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Lucro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object Lbl_PercentLucro: TRLLabel
            Left = 666
            Top = 0
            Width = 48
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '% Lucro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object Rl_Det: TRLBand
          Left = 38
          Top = 74
          Width = 718
          Height = 15
          object Ldb_Codigo: TRLDBText
            Left = 0
            Top = 0
            Width = 50
            Height = 14
            AutoSize = False
            DataField = 'P2CODPRO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_Codigo
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_Descricao: TRLDBText
            Left = 61
            Top = 0
            Width = 188
            Height = 14
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_Descricao
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_Qtd: TRLDBText
            Left = 264
            Top = 0
            Width = 42
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P2QTD'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_Qtd
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_PrecoUnitario: TRLDBText
            Left = 312
            Top = 0
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P2PRECO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_PrecoUnitario
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_ValorTotal: TRLDBText
            Left = 376
            Top = 0
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALORTOT'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_ValorTotal
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_PercentDesc: TRLDBText
            Left = 435
            Top = 0
            Width = 50
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P_DESC'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_PercentDesc
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_Custo: TRLDBText
            Left = 490
            Top = 0
            Width = 38
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_Custo
            ParentFont = False
          end
          object Ldb_TotalCusto: TRLDBText
            Left = 536
            Top = 0
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTCUSTO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_TotalCusto
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_ValorLucro: TRLDBText
            Left = 594
            Top = 0
            Width = 72
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'LUCRO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_ValorLucro
            Layout = tlCenter
            ParentFont = False
          end
          object Ldb_PercentLucro: TRLDBText
            Left = 666
            Top = 0
            Width = 48
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERCLUCRO'
            DataSource = Frm_LucroPed.Ds_LucroPed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = Lbl_PercentLucro
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
    object tsJava: TTabSheet
      Caption = 'Teste Impressao Java'
      ImageIndex = 7
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 110
        Height = 13
        Caption = 'Impressora Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 164
        Top = 8
        Width = 116
        Height = 13
        Caption = 'Ordem de Impressao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 488
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 328
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Agrupamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Height = 101
      end
      object Splitter2: TSplitter
        Left = 3
        Top = 0
        Height = 101
      end
      object Label12: TLabel
        Left = 648
        Top = 16
        Width = 112
        Height = 13
        Caption = 'Quantidade de Vias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 784
        Top = 40
        Width = 47
        Height = 13
        Caption = 'id retorno:'
      end
      object bbimprel: TBitBtn
        Left = 6
        Top = 52
        Width = 239
        Height = 29
        Caption = 'Requisitar Relatorio Impresso'
        TabOrder = 0
        OnClick = bbimprelClick
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
      object cb_impressora: TComboBox
        Left = 8
        Top = 24
        Width = 150
        Height = 21
        ItemHeight = 0
        TabOrder = 1
      end
      object bbcampoblob: TBitBtn
        Left = 262
        Top = 54
        Width = 239
        Height = 29
        Caption = 'Requisitar Relatorio em campo blob'
        TabOrder = 2
        OnClick = bbcampoblobClick
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
      object bbImpvis: TBitBtn
        Left = 526
        Top = 54
        Width = 239
        Height = 29
        Caption = 'Requisitar Relatorio em tela'
        TabOrder = 3
        OnClick = bbImpvisClick
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
      object cb_ordem_impressao: TComboBox
        Left = 164
        Top = 24
        Width = 150
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'N'#250'mero do item'
        Items.Strings = (
          'N'#250'mero do item'
          'Descricao do produto'
          'codigo do produto'
          'grupo + sub-grupo + descricao'
          'grupo + sub-grupo + codigo'
          'grupo + codigo'
          'grupo + descricao'
          'Secao')
      end
      object cb_modelo: TComboBox
        Left = 483
        Top = 32
        Width = 150
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'Modelo 01 (pagina inteira)'
        Items.Strings = (
          'Modelo 01 (pagina inteira)'
          'Modelo 02 (meia pagina)'
          'Modelo 03 (mini impressora)')
      end
      object cb_agrupamento: TComboBox
        Left = 328
        Top = 32
        Width = 150
        Height = 21
        ItemHeight = 13
        ItemIndex = 3
        TabOrder = 6
        Text = 'Sem Agrupamento'
        Items.Strings = (
          'Grupo'
          'Grupo + sub-grupo'
          'Ambiente'
          'Sem Agrupamento')
      end
      object edt_qtdvias: TSpinEdit
        Left = 648
        Top = 32
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 1
      end
    end
  end
  object Panel_cab: TPanel
    Left = 0
    Top = 129
    Width = 985
    Height = 22
    Align = alTop
    TabOrder = 0
    object bbAtualizar: TBitBtn
      Left = 243
      Top = 1
      Width = 231
      Height = 20
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
  object BitBtn2: TBitBtn
    Left = 704
    Top = 96
    Width = 75
    Height = 25
    Caption = 'buscar retorno'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object edt_idretorno: TEdit
    Left = 656
    Top = 81
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '365'
  end
  object Panel3: TPanel
    Left = 0
    Top = 288
    Width = 985
    Height = 26
    Align = alBottom
    TabOrder = 8
    object st_emprestimo: TStaticText
      Left = 8
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Emprestimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object st_orcamento: TStaticText
      Left = 107
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Orcamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object st_pendente: TStaticText
      Left = 207
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object st_selecionado: TStaticText
      Left = 306
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Selecionado'
      Color = 14680031
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object st_NFCE_contigencia: TStaticText
      Left = 405
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NFCE - Contigencia'
      Color = 16768477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object ST_NFCE_com_erros: TStaticText
      Left = 503
      Top = 2
      Width = 100
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NFCE - Com Erros'
      Color = 13553407
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object bbEnviarNFCE: TBitBtn
      Left = 783
      Top = 1
      Width = 175
      Height = 20
      Caption = 'Enviar NFCE'
      TabOrder = 6
      OnClick = bbEnviarNFCEClick
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
    object bbImprimirNFCE: TBitBtn
      Left = 605
      Top = 1
      Width = 175
      Height = 20
      Caption = 'Imprimir NFCE'
      TabOrder = 7
      OnClick = bbImprimirNFCEClick
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
  end
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    OnDataChange = Src_PedDataChange
    Left = 920
    Top = 128
  end
  object Tb_Ped: TQuery
    CachedUpdates = True
    AfterPost = Tb_PedAfterPost
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
      '           P1FORMACE,P1OBS1,P1OBS2,P1OBS3,'
      '           CRAZAO,CCIDADE,CUF,P1NOMEREC,P1DATHORREC,'
      
        '           P1CODBLOQ,P1CODBLOQ_LIB,P1PZOLIB,P1PZOLIB_USR,P1PDESC' +
        'LIB,P1PDESCL_USR'
      '           ,P1CODUSR_LBLOQ,P1SEMCOMP'
      '           ,P1NFE_ENVXML, P1ANALISE'
      ''
      '           from CADP01,CADCLI'
      'where P1CODEMP is null'
      'and CCODCLI=P1CODCLI'
      '')
    UpdateObject = U_Ped
    Left = 832
    Top = 96
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
    object Tb_Pedprazos: TStringField
      FieldKind = fkCalculated
      FieldName = 'prazos'
      Size = 60
      Calculated = True
    end
    object Tb_PedCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Size = 30
    end
    object Tb_PedCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Size = 2
    end
    object Tb_Peddadosrec: TStringField
      FieldKind = fkCalculated
      FieldName = 'dadosrec'
      Size = 100
      Calculated = True
    end
    object Tb_PedP1NOMEREC: TStringField
      FieldName = 'P1NOMEREC'
      Size = 40
    end
    object Tb_PedP1DATHORREC: TDateTimeField
      FieldName = 'P1DATHORREC'
    end
    object Tb_PedP1CODBLOQ: TStringField
      FieldName = 'P1CODBLOQ'
      Size = 30
    end
    object Tb_PedP1CODBLOQ_LIB: TStringField
      FieldName = 'P1CODBLOQ_LIB'
      Size = 30
    end
    object Tb_PedP1PZOLIB: TFloatField
      FieldName = 'P1PZOLIB'
    end
    object Tb_PedP1PZOLIB_USR: TFloatField
      FieldName = 'P1PZOLIB_USR'
    end
    object Tb_PedP1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
    end
    object Tb_PedP1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
    end
    object Tb_Peddesclib: TStringField
      FieldKind = fkCalculated
      FieldName = 'desclib'
      Size = 60
      Calculated = True
    end
    object Tb_Pedprazolib: TStringField
      FieldKind = fkCalculated
      FieldName = 'prazolib'
      Size = 60
      Calculated = True
    end
    object Tb_Pedbloqlib: TStringField
      FieldKind = fkCalculated
      FieldName = 'bloqlib'
      Size = 60
      Calculated = True
    end
    object Tb_PedP1CODUSR_LBLOQ: TFloatField
      FieldName = 'P1CODUSR_LBLOQ'
    end
    object Tb_Pedchave_acesso: TStringField
      FieldKind = fkCalculated
      FieldName = 'chave_acesso'
      Size = 50
      Calculated = True
    end
    object Tb_PedP1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
    end
    object Tb_PedP1ANALISE: TFloatField
      FieldName = 'P1ANALISE'
    end
    object Tb_PedP1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
    end
    object Tb_Pedhoralt: TStringField
      FieldKind = fkCalculated
      FieldName = 'horalt'
      Size = 10
      Calculated = True
    end
    object Tb_Pedhoradig: TStringField
      FieldKind = fkCalculated
      FieldName = 'horadig'
      Size = 10
      Calculated = True
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
    object Tb_PedP1NFCE_DATA: TDateTimeField
      FieldName = 'P1NFCE_DATA'
    end
    object Tb_PedP1NFCE_NUMERO: TFloatField
      FieldName = 'P1NFCE_NUMERO'
    end
    object Tb_PedP1NFCE_CHV_ACESSO: TStringField
      FieldName = 'P1NFCE_CHV_ACESSO'
      Size = 50
    end
    object Tb_Pedp1pedori1: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'p1pedori1'
      Size = 60
    end
    object Tb_PedP1NFCE_TPEMIS: TFloatField
      FieldName = 'P1NFCE_TPEMIS'
    end
    object Tb_PedP1NFCE_NPROT: TStringField
      FieldName = 'P1NFCE_NPROT'
    end
    object Tb_PedP1NFCE_SERIE: TStringField
      FieldName = 'P1NFCE_SERIE'
      Size = 3
    end
    object Tb_PedP1NFCE_MODELO: TStringField
      FieldName = 'P1NFCE_MODELO'
      Size = 3
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
      '       P2DESC3,P2CODAGRU,P2CONSIG,P2AMBIENTE,'
      '       P2PRECO,P2SIT,P2CSOSN,P2BASEN,P2ICMSN,'
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
    Left = 160
    Top = 200
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
    object Tb_Ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02dtvcto_lote: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtvcto_lote'
      Size = 1000
      Calculated = True
    end
    object Tb_Ped02lote: TStringField
      FieldKind = fkCalculated
      FieldName = 'lote'
      Size = 1000
      Calculated = True
    end
    object Tb_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2CSOSN: TFloatField
      FieldName = 'P2CSOSN'
      Origin = 'SG_ASSOC.CADP02.P2CSOSN'
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
    Left = 93
    Top = 186
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
    Left = 944
    Top = 128
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
  end
  object Src_Ped02S: TDataSource
    DataSet = Tb_Ped02S
    Left = 811
    Top = 112
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
    Left = 888
    Top = 144
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 648
    Top = 232
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 712
    Top = 224
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 744
    Top = 208
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 856
    Top = 120
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 736
    Top = 184
  end
  object mem_chavesel: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CHAVE_PED'
        DataType = ftInteger
      end
      item
        Name = 'ORDEM_PED'
        DataType = ftInteger
      end
      item
        Name = 'LOTSEQ'
        DataType = ftInteger
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
      end>
    Left = 536
    Top = 232
    object mem_chaveselCHAVE_PED: TIntegerField
      FieldName = 'CHAVE_PED'
    end
    object mem_chaveselORDEM_PED: TIntegerField
      FieldName = 'ORDEM_PED'
    end
    object mem_chaveselLOTSEQ: TIntegerField
      FieldName = 'LOTSEQ'
    end
    object mem_chaveselCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
  end
  object Qr_Fpgto: TQuery
    CachedUpdates = True
    AfterPost = Tb_PedAfterPost
    OnCalcFields = Tb_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT PFPCODEMP,PFPCHAVE,PFPLOTSEQ AS PFPCHAVE_ANO,PFPFORMA AS ' +
        'PFPCODFP'
      '                 ,PFPVALOR'
      '                 ,PFPNOMFOR AS PFPNOMFP'
      '                 ,PFPDATA'
      '                 FROM CADPFP'
      '')
    Left = 216
    Top = 88
    object Qr_FpgtoPFPCODFP: TFloatField
      DisplayLabel = 'C'#243'digo FP'
      FieldName = 'PFPCODFP'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Qr_FpgtoPFPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Qr_FpgtoPFPNOMFP: TStringField
      DisplayLabel = 'Nome da Forma'
      FieldName = 'PFPNOMFP'
      Origin = 'SG_ASSOC.CADPFP.PFPNOMFOR'
    end
    object Qr_FpgtoPFPDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Qr_FpgtoPFPCODEMP: TFloatField
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Qr_FpgtoPFPCHAVE: TFloatField
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Qr_FpgtoPFPCHAVE_ANO: TFloatField
      FieldName = 'PFPCHAVE_ANO'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Qr_FpgtoP1TABPV: TStringField
      DisplayLabel = 'Tab Pv'
      FieldName = 'P1TABPV'
      Size = 2
    end
    object Qr_FpgtoP1CODPV: TFloatField
      DisplayLabel = 'C'#243'd PV'
      FieldName = 'P1CODPV'
    end
    object Qr_FpgtoPVNOME: TStringField
      DisplayLabel = 'Nome do Plano de Vendas'
      FieldName = 'PVNOME'
      Size = 100
    end
  end
  object Src_Fpgto: TDataSource
    DataSet = Qr_Fpgto
    OnDataChange = Src_PedDataChange
    Left = 48
    Top = 80
  end
  object Timer_visualizar: TTimer
    OnTimer = Timer_visualizarTimer
    Left = 468
    Top = 112
  end
end
