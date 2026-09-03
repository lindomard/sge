object Frm_CobEle_Remessa: TFrm_CobEle_Remessa
  Left = 259
  Top = 38
  Width = 792
  Height = 664
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Lote de Remessa de Envio'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 39
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Registros'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBLOCALIZAR: TBitBtn
      Left = 88
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Localizar Lotes Existentes'
      Caption = 'Locali&zar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBLOCALIZARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 174
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Altera Registros do Lote Selecionado'
      Caption = '&Alterar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BBALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 260
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BBGRAVARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 346
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = '&Excluir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBEXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBLIMPAR: TBitBtn
      Left = 432
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBLIMPARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBIMPRIMIR: TBitBtn
      Left = 518
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Emitir Relat'#243'rio dos Registros do Lote'
      Caption = 'Im&primir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
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
    object bbGerar: TBitBtn
      Left = 604
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Gerar o Arquivo de Remssa'
      Caption = 'Ge&rar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3F70FFF70EEEE07F9F07F3F7733337737F70F707FFFFFF7
        97F07F7733333FFF7737007EEEE3000EE70977FFFFFF777FFF37077777307080
        77907777777737377773307EE307088809033773FF7F7FF37733337030070088
        07333337777F77377FFF33337008080809993333377F7F737777333330080088
        03333333377F77337FF333333308088809333333337373F3773F333333308080
        33933333333737F7337333333333000333393333333377733337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 690
      Top = 0
      Width = 87
      Height = 40
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBSAIRClick
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 607
    Width = 784
    Height = 26
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 2
    object Label11: TLabel
      Left = 8
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Quant. doc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 585
      Top = 2
      Width = 81
      Height = 13
      Caption = 'Total L'#237'quido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLegenda: TLabel
      Left = 288
      Top = 4
      Width = 209
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Existem em outras Remessas'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object QTDDOC: TStaticText
      Left = 86
      Top = 2
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16761313
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object TOTLIQ: TStaticText
      Left = 684
      Top = 2
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16761313
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object panel_editcab: TPanel
    Left = 0
    Top = 76
    Width = 784
    Height = 63
    Align = alTop
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 8
      Width = 164
      Height = 13
      Caption = 'N'#250'mero do lote de Remessa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 268
      Top = 8
      Width = 105
      Height = 13
      Caption = 'Data da Remessa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_nome: TLabel
      Left = 67
      Top = 28
      Width = 102
      Height = 13
      Caption = 'C'#243'digo do Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 460
      Top = 8
      Width = 105
      Height = 13
      Caption = 'Hora da Remessa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NUMLOT: TEdit
      Left = 173
      Top = 5
      Width = 85
      Height = 19
      Hint = 'N'#250'mero do Lote de Remessa'
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object MDATA: TMaskEdit
      Left = 374
      Top = 5
      Width = 85
      Height = 19
      Hint = 'Data da Remessa'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDATAExit
    end
    object CODBCO: TEdit
      Left = 173
      Top = 26
      Width = 85
      Height = 19
      Hint = 'C'#243'digo do Banco no SGE'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = CODBCOEnter
      OnExit = CODBCOExit
      OnKeyPress = CODBCOKeyPress
    end
    object NOMBCO: TEdit
      Left = 257
      Top = 26
      Width = 256
      Height = 19
      TabStop = False
      Color = 16769008
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object RG_LAYOUT: TRadioGroup
      Left = 687
      Top = 1
      Width = 88
      Height = 46
      Hint = 'LayOut Padr'#227'o'
      Caption = 'Layout:'
      ItemIndex = 0
      Items.Strings = (
        'CNAB400'
        'CNAB240')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = RG_LAYOUTClick
    end
    object MHORA: TEdit
      Left = 565
      Top = 5
      Width = 85
      Height = 19
      Hint = 'Hora do Lote de Remessa'
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cb_homologacao: TCheckBox
      Left = 528
      Top = 28
      Width = 158
      Height = 17
      Caption = 'Envio Para Homogacao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object gb_pasta: TGroupBox
    Left = 0
    Top = 39
    Width = 784
    Height = 37
    Align = alTop
    Caption = 'Informe a Pasta de Destino:'
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 416
      Top = 17
      Width = 132
      Height = 13
      Caption = 'Inserir ao Lote de Remessa:'
    end
    object MPASTA: TEdit
      Left = 4
      Top = 14
      Width = 402
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'C:\SGE'
      OnExit = MPASTAExit
    end
    object bbProcurar: TBitBtn
      Left = 615
      Top = 8
      Width = 79
      Height = 25
      Caption = '&Procurar'
      TabOrder = 2
      OnClick = bbProcurarClick
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
    object bbNGerar: TBitBtn
      Left = 697
      Top = 8
      Width = 79
      Height = 25
      Caption = '&Gerar Agora'
      TabOrder = 3
      OnClick = bbNGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3F70FFF70EEEE07F9F07F3F7733337737F70F707FFFFFF7
        97F07F7733333FFF7737007EEEE3000EE70977FFFFFF777FFF37077777307080
        77907777777737377773307EE307088809033773FF7F7FF37733337030070088
        07333337777F77377FFF33337008080809993333377F7F737777333330080088
        03333333377F77337FF333333308088809333333337373F3773F333333308080
        33933333333737F7337333333333000333393333333377733337}
      NumGlyphs = 2
    end
    object MINSERLREM: TEdit
      Left = 551
      Top = 13
      Width = 50
      Height = 19
      Ctl3D = False
      MaxLength = 7
      ParentCtl3D = False
      TabOrder = 1
      Text = '2000000'
      OnExit = MINSERLREMExit
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 139
    Width = 784
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 776
        Height = 440
        Align = alClient
        Caption = 'Duplicatas Selecionadas:'
        TabOrder = 0
        object Panel5: TPanel
          Left = 2
          Top = 15
          Width = 772
          Height = 72
          Align = alTop
          BorderStyle = bsSingle
          Enabled = False
          TabOrder = 0
          object Label3: TLabel
            Left = 11
            Top = 5
            Width = 118
            Height = 13
            Caption = 'C'#243'digo do Comando:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 3
            Top = 27
            Width = 129
            Height = 13
            Caption = 'Protesto/Instru'#231#227'o 01:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cheio: TLabel
            Left = 736
            Top = 7
            Width = 20
            Height = 13
            Caption = '*****'
          end
          object Label16: TLabel
            Left = 3
            Top = 47
            Width = 129
            Height = 13
            Caption = 'Protesto/Instru'#231#227'o 02:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_CODPROT_QTDD: TLabel
            Left = 616
            Top = 29
            Width = 52
            Height = 13
            Caption = 'Qtd.dias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object lbl_codcar_c006: TLabel
            Left = 392
            Top = 49
            Width = 129
            Height = 13
            Caption = 'C'#243'digo Carteira(C006):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object item_pesquisar: TBitBtn
            Left = 619
            Top = 2
            Width = 100
            Height = 21
            Hint = 'Consulta Titulos do Banco'
            Caption = '&Pesquisar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = item_pesquisarClick
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C000000000000000000001F7C1F7C1F7C1F7C1F7C000000000000
              000000001F7C0000FF7F0000000000001F7C1F7C1F7C1F7C1F7C0000FF7F0000
              000000001F7C0000FF7F0000000000001F7C1F7C1F7C1F7C1F7C0000FF7F0000
              000000001F7C00000000000000000000000000001F7C00000000000000000000
              000000001F7C00000000FF7F000000000000000000000000FF7F000000000000
              000000001F7C00000000FF7F000000000000186300000000FF7F000000000000
              000000001F7C00000000FF7F000000000000186300000000FF7F000000000000
              000000001F7C1F7C000000000000000000000000000000000000000000000000
              00001F7C1F7C1F7C1F7C0000FF7F0000000000001F7C0000FF7F000000000000
              1F7C1F7C1F7C1F7C1F7C000000000000000000001F7C00000000000000000000
              1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C0000000000001F7C
              1F7C1F7C1F7C1F7C1F7C1F7C0000FF7F00001F7C1F7C1F7C0000FF7F00001F7C
              1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C0000000000001F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
          end
          object CB_CODCON: TComboBox
            Left = 134
            Top = 1
            Width = 474
            Height = 21
            Hint = 'C'#243'digo do Comando'
            AutoDropDown = True
            BevelKind = bkSoft
            Style = csDropDownList
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnEnter = CB_CODCONEnter
            OnExit = CB_CODCONExit
            Items.Strings = (
              '01 - Registro de Titulos      '
              '02 - Solicitacao de Baixa     '
              '03 - Pedido de Debito em Conta'
              '04 - Concessao de Abatimento  '
              '05 - Cancel. de Abatimento    '
              '06 - Alteracao de Vcto.Titulo '
              '07 - Alteracao No.Titulo p/Ced'
              '09 - Instrucao p/Protestar    '
              '10 - Instrucao p/Sustar Protes'
              '11 - Instrucao p/Dispensar Jur'
              '12 - Alter.Nome/Endereco Sacad')
          end
          object CB_CODPROT: TComboBox
            Left = 134
            Top = 23
            Width = 474
            Height = 21
            Hint = 'C'#243'digo para Protesto'
            AutoDropDown = True
            BevelKind = bkSoft
            Style = csDropDownList
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = CB_CODPROTClick
          end
          object CB_CODPROT02: TComboBox
            Left = 134
            Top = 43
            Width = 251
            Height = 21
            Hint = 'C'#243'digo para Protesto'
            AutoDropDown = True
            BevelKind = bkSoft
            Style = csDropDownList
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = CB_CODPROT02Click
          end
          object ED_CODPROT_QTDD: TEdit
            Left = 670
            Top = 25
            Width = 52
            Height = 19
            Hint = 'N'#250'mero do Lote de Remessa'
            TabStop = False
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Visible = False
            OnExit = ED_CODPROT_QTDDExit
          end
          object cb_codcar_c006: TComboBox
            Left = 526
            Top = 46
            Width = 223
            Height = 21
            Hint = 'C'#243'digo para Protesto'
            AutoDropDown = True
            BevelKind = bkSoft
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = '1 = Cobran'#231'a Simples'
            Visible = False
            OnClick = cb_codcar_c006Click
            Items.Strings = (
              '1 = Cobran'#231'a Simples'
              '2 = Cobran'#231'a Vinculada'
              '3 = Cobran'#231'a Caucionada'
              '4 = Cobran'#231'a Descontada'
              '5 = Cobran'#231'a Vendor')
          end
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 87
          Width = 772
          Height = 206
          Align = alClient
          Color = clWhite
          Ctl3D = True
          DataSource = Src_CadRemBco
          FixedColor = 16764622
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid1ColExit
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnExit = DBGrid1Exit
          Columns = <
            item
              Expanded = False
              FieldName = 'RECODEMP_DUP'
              Title.Alignment = taCenter
              Title.Caption = 'Empresa'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RENUMDUP'
              Title.Alignment = taCenter
              Title.Caption = 'Numero Dup'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REDESD'
              Title.Alignment = taCenter
              Title.Caption = 'Desd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RETIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RERAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Razao Social'
              Width = 221
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REVALDUP'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Titulo'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RENOSNUM'
              Title.Alignment = taCenter
              Title.Caption = 'Nosso Numero'
              Visible = True
            end>
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 293
          Width = 772
          Height = 124
          Align = alBottom
          Caption = 'Outros Campos:'
          TabOrder = 2
          object Label6: TLabel
            Left = 7
            Top = 31
            Width = 118
            Height = 13
            Caption = 'C'#243'digo do Comando:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 5
            Top = 15
            Width = 120
            Height = 13
            Caption = 'C'#243'digo da Cobran'#231'a:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 4
            Top = 49
            Width = 122
            Height = 13
            Caption = 'Protesto/Instru'#231#227'o 1:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 222
            Top = 89
            Width = 76
            Height = 13
            Caption = 'Desc.Financ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 382
            Top = 88
            Width = 66
            Height = 13
            Caption = 'p/Pgto at'#233':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 549
            Top = 87
            Width = 143
            Height = 13
            Caption = 'Desc.p/dia Antecipa'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 23
            Top = 106
            Width = 98
            Height = 13
            Caption = 'Multa por Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 3
            Top = 88
            Width = 120
            Height = 13
            Caption = 'Data de Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 208
            Top = 108
            Width = 109
            Height = 13
            Caption = 'Juros p/dia Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 4
            Top = 70
            Width = 122
            Height = 13
            Caption = 'Protesto/Instru'#231#227'o 2:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 659
            Top = 50
            Width = 112
            Height = 13
            Caption = 'Qtd dias p/Protesto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_RECODCAR: TDBEdit
            Left = 127
            Top = 9
            Width = 54
            Height = 19
            Ctl3D = False
            DataField = 'RECODCAR'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBE_nomcob: TDBEdit
            Left = 180
            Top = 10
            Width = 594
            Height = 19
            TabStop = False
            Color = 16769008
            Ctl3D = False
            DataField = 'nomcob'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBE_REDESCF: TDBEdit
            Left = 304
            Top = 87
            Width = 76
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'REDESCF'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBE_REDESCD: TDBEdit
            Left = 698
            Top = 84
            Width = 76
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'REDESCD'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            TabOrder = 9
          end
          object DBE_REMULTA: TDBEdit
            Left = 127
            Top = 105
            Width = 76
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'REMULTA'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
          object DBE_REJURD: TDBEdit
            Left = 318
            Top = 105
            Width = 76
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'REJURD'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 11
          end
          object DBE_REPROTESTO_QTDD: TDBEdit
            Left = 698
            Top = 66
            Width = 54
            Height = 19
            Ctl3D = False
            DataField = 'REPROTESTO_QTDD'
            DataSource = Src_CadRemBco
            ParentCtl3D = False
            TabOrder = 5
            OnExit = DBE_REPROTESTO_QTDDExit
          end
          object RxDB_CODCON: TRxDBComboBox
            Left = 126
            Top = 27
            Width = 648
            Height = 21
            Style = csDropDownList
            DataField = 'RECODCOM'
            DataSource = Src_CadRemBco
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '01 - Registro de Titulos      '
              '02 - Solicitacao de Baixa     '
              '03 - Pedido de Debito em Conta'
              '04 - Concessao de Abatimento  '
              '05 - Cancel. de Abatimento    '
              '06 - Alteracao de Vcto.Titulo '
              '07 - Alteracao No.Titulo p/Ced'
              '09 - Instrucao p/Protestar    '
              '10 - Instrucao p/Sustar Protes'
              '11 - Instrucao p/Dispensar Jur'
              '12 - Alter.Nome/Endereco Sacad')
            TabOrder = 2
            Values.Strings = (
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '09'
              '10'
              '11'
              '12')
          end
          object RxDB_CODPROT: TRxDBComboBox
            Left = 126
            Top = 47
            Width = 533
            Height = 21
            Style = csDropDownList
            DataField = 'RECODPROT'
            DataSource = Src_CadRemBco
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '01 - Registro de Titulos      '
              '02 - Solicitacao de Baixa     '
              '03 - Pedido de Debito em Conta'
              '04 - Concessao de Abatimento  '
              '05 - Cancel. de Abatimento    '
              '06 - Alteracao de Vcto.Titulo '
              '07 - Alteracao No.Titulo p/Ced'
              '09 - Instrucao p/Protestar    '
              '10 - Instrucao p/Sustar Protes'
              '11 - Instrucao p/Dispensar Jur'
              '12 - Alter.Nome/Endereco Sacad')
            TabOrder = 3
            Values.Strings = (
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '09'
              '10'
              '11'
              '12')
          end
          object RxDB_CODPROT02: TRxDBComboBox
            Left = 126
            Top = 67
            Width = 533
            Height = 21
            Style = csDropDownList
            Ctl3D = True
            DataField = 'RECODPROT02'
            DataSource = Src_CadRemBco
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              '01 - Registro de Titulos      '
              '02 - Solicitacao de Baixa     '
              '03 - Pedido de Debito em Conta'
              '04 - Concessao de Abatimento  '
              '05 - Cancel. de Abatimento    '
              '06 - Alteracao de Vcto.Titulo '
              '07 - Alteracao No.Titulo p/Ced'
              '09 - Instrucao p/Protestar    '
              '10 - Instrucao p/Sustar Protes'
              '11 - Instrucao p/Dispensar Jur'
              '12 - Alter.Nome/Endereco Sacad')
            ParentCtl3D = False
            TabOrder = 4
            Values.Strings = (
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '09'
              '10'
              '11'
              '12')
          end
          object DBE_REDTDESCF: TDBDateEdit
            Left = 452
            Top = 86
            Width = 91
            Height = 19
            DataField = 'REDTDESCF'
            DataSource = Src_CadRemBco
            Ctl3D = False
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 8
          end
          object rxdb_REDTVCTO: TDBDateEdit
            Left = 127
            Top = 87
            Width = 91
            Height = 19
            DataField = 'REDTVCTO'
            DataSource = Src_CadRemBco
            Ctl3D = False
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 6
          end
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 417
          Width = 772
          Height = 21
          DataSource = Src_CadRemBco
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          Enabled = False
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Proximo Registro'
            #218'ltimo Registro')
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 72
        Top = 0
        Width = 521
        Height = 297
        Caption = 'Banco do Brasil CNAB 240'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = GroupBox3Exit
        object Label46: TLabel
          Left = 6
          Top = 53
          Width = 250
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '14 -N'#250'mero do Aviso de Lan'#231'amento'
          Color = clSilver
          ParentColor = False
        end
        object Label47: TLabel
          Left = 7
          Top = 214
          Width = 250
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Digito Verificador da Agencia e Conta'
          Color = clSilver
          ParentColor = False
        end
        object gb_header_lote: TGroupBox
          Left = 2
          Top = 95
          Width = 517
          Height = 42
          Align = alTop
          Caption = 'Header de Lote'
          TabOrder = 0
          object Label26: TLabel
            Left = 260
            Top = 16
            Width = 65
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '014 a 016'
            Color = clSilver
            ParentColor = False
          end
          object Label30: TLabel
            Left = 3
            Top = 16
            Width = 250
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '20-Vers'#227'o do Layout'
            Color = clSilver
            ParentColor = False
          end
          object edt_header_lote_versao_layout: TEdit
            Left = 329
            Top = 11
            Width = 180
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            Text = '000'
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 517
          Height = 18
          Align = alTop
          TabOrder = 1
          object Label20: TLabel
            Left = 3
            Top = 2
            Width = 250
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Campo'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 329
            Top = 2
            Width = 180
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label24: TLabel
            Left = 260
            Top = 1
            Width = 65
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Posi'#231#227'o'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object gb_header_arquivo: TGroupBox
          Left = 2
          Top = 33
          Width = 517
          Height = 62
          Align = alTop
          Caption = 'Header de Arquivo:'
          TabOrder = 2
          object Label25: TLabel
            Left = 260
            Top = 16
            Width = 65
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '164 a 166'
            Color = clSilver
            ParentColor = False
          end
          object Label44: TLabel
            Left = 3
            Top = 32
            Width = 250
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '21 - Densidade de grava'#231#227'o do Arquivo'
            Color = clSilver
            ParentColor = False
          end
          object Label45: TLabel
            Left = 260
            Top = 34
            Width = 65
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '167 a 171'
            Color = clSilver
            ParentColor = False
          end
          object Label23: TLabel
            Left = 5
            Top = 12
            Width = 250
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '20-Vers'#227'o do Layout'
            Color = clSilver
            ParentColor = False
          end
          object edt_header_20_versao_layout: TEdit
            Left = 329
            Top = 11
            Width = 180
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            Text = '000'
          end
          object edt_cnab240_ha_densidade: TEdit
            Left = 328
            Top = 29
            Width = 180
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 137
          Width = 517
          Height = 60
          Align = alTop
          Caption = 'Header de Lote'
          TabOrder = 3
          object Label22: TLabel
            Left = 6
            Top = 36
            Width = 250
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '38 - codigo da baixa devolu'#231#227'o'
            Color = clSilver
            ParentColor = False
          end
          object Label29: TLabel
            Left = 260
            Top = 37
            Width = 65
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '224 a 224'
            Color = clSilver
            ParentColor = False
          end
          object cb_codigo_baixa_para_devolucao: TComboBox
            Left = 329
            Top = 35
            Width = 180
            Height = 21
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 0
            Text = '2 N'#227'o Baixar / N'#227'o  Devolver'
            Items.Strings = (
              ''
              '1 Baixar / Devolver'
              '2 N'#227'o Baixar / N'#227'o  Devolver'
              
                '3 Cancelar Prazo para Baixa / Devolu'#231#227'o  (somente v'#225'lido p/ C'#243'di' +
                'goMovimento Remessa = '#39'31'#39'  - Descri'#231#227'o C004)')
          end
        end
        object edt_cnab240_dig_agencia_conta: TEdit
          Left = 329
          Top = 209
          Width = 180
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
      end
    end
  end
  object Src_CadRemBco: TDataSource
    DataSet = Tb_CadRemBco
    Left = 480
    Top = 360
  end
  object Tb_CadRemBco: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = Tb_CadRemBcoAfterInsert
    AfterEdit = Tb_CadRemBcoAfterEdit
    BeforePost = Tb_CadRemBcoBeforePost
    AfterPost = Tb_CadRemBcoAfterPost
    AfterCancel = Tb_CadRemBcoAfterCancel
    BeforeDelete = Tb_CadRemBcoBeforeDelete
    OnCalcFields = Tb_CadRemBcoCalcFields
    Left = 376
    Top = 357
    object Tb_CadRemBcoRECODEMP: TFloatField
      FieldName = 'RECODEMP'
    end
    object Tb_CadRemBcoRELOTSEQ: TFloatField
      FieldName = 'RELOTSEQ'
    end
    object Tb_CadRemBcoRECHAVE: TFloatField
      FieldName = 'RECHAVE'
    end
    object Tb_CadRemBcoRECODBCO: TFloatField
      FieldName = 'RECODBCO'
    end
    object Tb_CadRemBcoRELAYOUT: TFloatField
      FieldName = 'RELAYOUT'
    end
    object Tb_CadRemBcoRECODEMP_DUP: TFloatField
      FieldName = 'RECODEMP_DUP'
    end
    object Tb_CadRemBcoRENUMDUP: TFloatField
      FieldName = 'RENUMDUP'
    end
    object Tb_CadRemBcoREDESD: TStringField
      FieldName = 'REDESD'
      Size = 4
    end
    object Tb_CadRemBcoRETIPO: TFloatField
      FieldName = 'RETIPO'
    end
    object Tb_CadRemBcoREVALDUP: TFloatField
      FieldName = 'REVALDUP'
    end
    object Tb_CadRemBcoRENOSNUM: TStringField
      FieldName = 'RENOSNUM'
    end
    object Tb_CadRemBcoREHORREM: TTimeField
      FieldName = 'REHORREM'
    end
    object Tb_CadRemBcoRECODRET: TFloatField
      FieldName = 'RECODRET'
    end
    object Tb_CadRemBcoRECODCOM: TFloatField
      FieldName = 'RECODCOM'
    end
    object Tb_CadRemBcoRECODPROT: TFloatField
      FieldName = 'RECODPROT'
    end
    object Tb_CadRemBcoREQTDMAN: TFloatField
      FieldName = 'REQTDMAN'
    end
    object Tb_CadRemBcoRESITREG: TFloatField
      FieldName = 'RESITREG'
    end
    object Tb_CadRemBcoRECODCLI: TFloatField
      FieldName = 'RECODCLI'
    end
    object Tb_CadRemBcoRECODECF: TFloatField
      FieldName = 'RECODECF'
    end
    object Tb_CadRemBcoREJURD: TFloatField
      FieldName = 'REJURD'
    end
    object Tb_CadRemBcoREMULTA: TFloatField
      FieldName = 'REMULTA'
    end
    object Tb_CadRemBcoREQTDDM: TFloatField
      FieldName = 'REQTDDM'
    end
    object Tb_CadRemBcoREACEITE: TStringField
      FieldName = 'REACEITE'
      Size = 1
    end
    object Tb_CadRemBcoREESPECIE: TStringField
      FieldName = 'REESPECIE'
      Size = 2
    end
    object Tb_CadRemBcoRECODBAR: TStringField
      FieldName = 'RECODBAR'
      Size = 60
    end
    object Tb_CadRemBcoRECODDIG: TStringField
      FieldName = 'RECODDIG'
      Size = 60
    end
    object Tb_CadRemBcoRECUSBCO: TFloatField
      FieldName = 'RECUSBCO'
    end
    object Tb_CadRemBcoRETIPCOB: TFloatField
      FieldName = 'RETIPCOB'
    end
    object Tb_CadRemBconomcom: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcom'
      Size = 100
      Calculated = True
    end
    object Tb_CadRemBconomcob: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcob'
      Size = 100
      Calculated = True
    end
    object Tb_CadRemBconomprot: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomprot'
      Size = 100
      Calculated = True
    end
    object Tb_CadRemBcoRESTATUS: TFloatField
      FieldName = 'RESTATUS'
    end
    object Tb_CadRemBcoREORDEM: TFloatField
      FieldName = 'REORDEM'
    end
    object Tb_CadRemBcoRECODCAR: TFloatField
      FieldName = 'RECODCAR'
    end
    object Tb_CadRemBcoRECODVARCAR: TFloatField
      FieldName = 'RECODVARCAR'
    end
    object Tb_CadRemBcoREOBS: TStringField
      FieldName = 'REOBS'
      Size = 40
    end
    object Tb_CadRemBcoREDNOSNUM: TStringField
      FieldName = 'REDNOSNUM'
      Size = 1
    end
    object Tb_CadRemBcoRERAZAO: TStringField
      FieldName = 'RERAZAO'
      Size = 40
    end
    object Tb_CadRemBcoRECODPROT02: TFloatField
      FieldName = 'RECODPROT02'
    end
    object Tb_CadRemBcoRECODPROT03: TFloatField
      FieldName = 'RECODPROT03'
    end
    object Tb_CadRemBconomprot02: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomprot02'
      Size = 100
      Calculated = True
    end
    object Tb_CadRemBcoREPROTESTO_QTDD: TFloatField
      FieldName = 'REPROTESTO_QTDD'
    end
    object Tb_CadRemBcoREDESCD: TFloatField
      FieldName = 'REDESCD'
    end
    object Tb_CadRemBcoREDATREM: TDateTimeField
      FieldName = 'REDATREM'
    end
    object Tb_CadRemBcoREDTVCTO: TDateTimeField
      FieldName = 'REDTVCTO'
    end
    object Tb_CadRemBcoREDTDESCF: TDateTimeField
      FieldName = 'REDTDESCF'
    end
    object Tb_CadRemBcoREDTEMIS: TDateTimeField
      FieldName = 'REDTEMIS'
    end
    object Tb_CadRemBcoREDATRET: TDateTimeField
      FieldName = 'REDATRET'
    end
    object Tb_CadRemBcoREDESCF: TFloatField
      FieldName = 'REDESCF'
    end
    object Tb_CadRemBcoRETIT_CHAVE_ID_ANO: TIntegerField
      FieldName = 'RETIT_CHAVE_ID_ANO'
    end
    object Tb_CadRemBcoRETIT_CHAVE_ID: TIntegerField
      FieldName = 'RETIT_CHAVE_ID'
    end
    object Tb_CadRemBcoqtdrem: TIntegerField
      FieldName = 'qtdrem'
    end
  end
end
