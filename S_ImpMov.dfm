object Frm_ImpMov: TFrm_ImpMov
  Left = 84
  Top = 40
  Width = 618
  Height = 510
  Caption = 'Importa'#231#227'o dos Movimentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_pasta: TLabel
    Left = 7
    Top = 171
    Width = 112
    Height = 13
    Caption = 'Arquivo a ser Importado'
  end
  object SB01: TSpeedButton
    Left = 509
    Top = 184
    Width = 23
    Height = 22
    Hint = 'Pesquisa Pasta Destino'
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
    OnClick = SB01Click
  end
  object lbl_lote: TLabel
    Left = 10
    Top = 209
    Width = 151
    Height = 13
    Caption = 'N'#250'mero do Lote de Exporta'#231#227'o:'
  end
  object lbl_endip: TLabel
    Left = 184
    Top = 275
    Width = 106
    Height = 13
    Caption = 'Endere'#231'o do Servidor:'
    Visible = False
  end
  object bbImportar: TBitBtn
    Left = 1
    Top = 322
    Width = 150
    Height = 35
    Caption = '&Importar'
    TabOrder = 5
    OnClick = bbImportarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
      33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
      D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
      BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
      EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
      BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
      D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 452
    Top = 322
    Width = 150
    Height = 35
    Caption = '&Sair'
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
  object NOMARQ: TEdit
    Left = 8
    Top = 187
    Width = 499
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'C:\SGE'
    OnExit = NOMARQExit
  end
  object Panel1: TPanel
    Left = 0
    Top = 339
    Width = 610
    Height = 116
    Align = alBottom
    TabOrder = 7
    Visible = False
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 185
      Height = 114
      Align = alLeft
      Caption = 'Tabela Atual:'
      TabOrder = 0
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 181
        Height = 97
        Align = alClient
        ForeColor = clBlue
        Kind = gkPie
        Progress = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 424
      Top = 1
      Width = 185
      Height = 114
      Align = alRight
      Caption = 'Todas Tabelas:'
      TabOrder = 1
      object Gauge2: TGauge
        Left = 2
        Top = 15
        Width = 181
        Height = 97
        Align = alClient
        Kind = gkPie
        Progress = 0
      end
    end
  end
  object LOTE: TEdit
    Left = 167
    Top = 208
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 610
    Height = 170
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Importar Movimentos'
      object cb_ajuste: TCheckBox
        Left = 11
        Top = 12
        Width = 250
        Height = 17
        Caption = 'Tabela de Ajuste de Estoque'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cb_balanco: TCheckBox
        Left = 11
        Top = 26
        Width = 250
        Height = 17
        Caption = 'Tabela de Balan'#231'o'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object cb_cadchq: TCheckBox
        Left = 11
        Top = 42
        Width = 250
        Height = 17
        Caption = 'Tabela de Cheques de Clientes'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object cb_cheques_cp: TCheckBox
        Left = 11
        Top = 57
        Width = 250
        Height = 17
        Caption = 'Tabela de Cheques Emitidos'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object cb_CadCli: TCheckBox
        Left = 11
        Top = 72
        Width = 250
        Height = 17
        Caption = 'Tabela de Clientes'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object cb_dupRec: TCheckBox
        Left = 11
        Top = 88
        Width = 250
        Height = 17
        Caption = 'Tabela de Duplicatas a Receber'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object cb_dupPag: TCheckBox
        Left = 11
        Top = 104
        Width = 250
        Height = 17
        Caption = 'Tabela de Duplicatas a Pagar'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object CB_CADEST: TCheckBox
        Left = 245
        Top = 9
        Width = 260
        Height = 17
        Caption = 'Tabela de Estoque'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object cb_caixa: TCheckBox
        Left = 245
        Top = 24
        Width = 260
        Height = 17
        Caption = 'Tabela de Movimento do Caixa(Fluxo de Caixa)'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object CB_CADNE: TCheckBox
        Left = 245
        Top = 39
        Width = 260
        Height = 17
        Caption = 'Tabela de Notas Fiscais de Entradas'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object CB_CADNS: TCheckBox
        Left = 245
        Top = 54
        Width = 260
        Height = 17
        Caption = 'Tabela de Notas Fiscais de Saidas'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object cb_PedCompras: TCheckBox
        Left = 245
        Top = 70
        Width = 260
        Height = 17
        Caption = 'Tabela de Pedidos de Compras'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object cb_pedVendas: TCheckBox
        Left = 245
        Top = 87
        Width = 260
        Height = 17
        Caption = 'Tabela de Pedidos de Vendas'
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
      object cb_cadmi01: TCheckBox
        Left = 229
        Top = 142
        Width = 260
        Height = 17
        Caption = 'Tabela de Redu'#231#227'o Z'
        Checked = True
        State = cbChecked
        TabOrder = 13
      end
      object CB_ACREM: TCheckBox
        Left = 245
        Top = 103
        Width = 260
        Height = 17
        Caption = 'Tabela de Acertos de Remessa'
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Importar Dados'
      ImageIndex = 1
      object cb_Cadpro: TCheckBox
        Left = 11
        Top = 12
        Width = 250
        Height = 17
        Caption = 'Tabela de Produtos'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cb_cadfor: TCheckBox
        Left = 12
        Top = 28
        Width = 250
        Height = 17
        Caption = 'Tabela de Fornecedores'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object cb_cadgru: TCheckBox
        Left = 13
        Top = 44
        Width = 250
        Height = 17
        Caption = 'Tabela de Grupos de Produtos'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Importar &Pedidos'
      ImageIndex = 2
      object STG_PED: TStringGrid
        Left = 0
        Top = 0
        Width = 602
        Height = 142
        Align = alClient
        DefaultRowHeight = 15
        FixedCols = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
        TabOrder = 0
        Visible = False
        ColWidths = (
          94
          87
          312
          82
          73)
      end
    end
  end
  object Rg_Destino: TRadioGroup
    Left = 5
    Top = 236
    Width = 172
    Height = 74
    Caption = 'Importar de:'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      '&Disquete A: 3/5 polegada'
      'Disco &Local'
      '&Servidor Remoto')
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    OnClick = Rg_DestinoClick
  end
  object ENDIP: TEdit
    Left = 182
    Top = 291
    Width = 326
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    Text = '201.34.18.25'
    Visible = False
  end
  object bbImpExistente: TBitBtn
    Left = 151
    Top = 322
    Width = 150
    Height = 35
    Caption = '&Importa'#231#245'es Existentes'
    TabOrder = 8
    OnClick = bbImpExistenteClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
      FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
      07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
      777077777777777777773333000000033333333377777773FF3F333087777780
      03003337F33F3F377F77333087A7978000803337F37373377737333077777780
      08803337F3FFFF377FF733308000078000803337F77773377737333088888780
      330033373FFFFFF7337733330000000333333333777777733333}
    NumGlyphs = 2
  end
  object bbExpExistentes: TBitBtn
    Left = 302
    Top = 322
    Width = 150
    Height = 35
    Caption = '&Exporta'#231#245'es Existentes'
    TabOrder = 9
    OnClick = bbExpExistentesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
      3333333333777F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
      3333333777737777F333333099999990333333373F3333373333333309999903
      333333337F33337F33333333099999033333333373F333733333333330999033
      3333333337F337F3333333333099903333333333373F37333333333333090333
      33333333337F7F33333333333309033333333333337373333333333333303333
      333333333337F333333333333330333333333333333733333333}
    NumGlyphs = 2
  end
  object Tab_Origem: TTable
    DatabaseName = 'C:\SGE\TEMP'
    Exclusive = True
    Left = 206
    Top = 242
  end
  object OpenDialog1: TOpenDialog
    Left = 368
    Top = 32
  end
  object BatchMove1: TBatchMove
    AbortOnKeyViol = False
    Destination = tab_destino
    Source = Tab_Origem
    Left = 234
    Top = 242
  end
  object tab_destino: TTable
    DatabaseName = 'SG_ASSOC'
    Left = 262
    Top = 242
  end
  object Tb_DadExp: TTable
    DatabaseName = 'C:\SGE\TEMP'
    Left = 178
    Top = 242
  end
  object Qr_TestaChave: TQuery
    DatabaseName = 'C:\SGE\TEMP'
    Left = 290
    Top = 242
  end
  object BM_Inclui_Altera: TBatchMove
    AbortOnKeyViol = False
    Destination = tab_destino
    Mode = batAppendUpdate
    Source = Tab_Origem
    Left = 319
    Top = 242
  end
end
