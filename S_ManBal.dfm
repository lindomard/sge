object Frm_ManBal: TFrm_ManBal
  Left = 90
  Top = 81
  Width = 800
  Height = 611
  Caption = 'Manuten'#231#227'o Balan'#231'o de Mercadorias'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_botoes: TPanel
    Left = 688
    Top = 0
    Width = 104
    Height = 580
    Align = alRight
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 1
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
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
      NumGlyphs = 2
    end
    object BBLOCALIZAR: TBitBtn
      Left = 2
      Top = 36
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Caption = '&Localizar'
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
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 2
      Top = 71
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Caption = '&Alterar'
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
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 2
      Top = 106
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = '&Excluir'
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
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 2
      Top = 141
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
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
      NumGlyphs = 2
    end
    object BBLIMPAR: TBitBtn
      Left = 2
      Top = 176
      Width = 101
      Height = 36
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
      NumGlyphs = 2
    end
    object BBCALCULAR: TBitBtn
      Left = 2
      Top = 211
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Calcula os totais do lote'
      Caption = '&Calcular'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BBCALCULARClick
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
    object BBIMPRIMIR: TBitBtn
      Left = 2
      Top = 246
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Imprime lote selecionado'
      Caption = '&Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBIMPRIMIRClick
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
    object bbAgrupar: TBitBtn
      Left = 2
      Top = 293
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Agrupa Produtos com o mesmo C'#243'digo'
      Caption = '&Agrupar C'#243'digos'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbAgruparClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbAjustar: TBitBtn
      Left = 2
      Top = 328
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Ajusta o Estoque de Acordo com o balan'#231'o'
      Caption = 'Ajustar o Estoque'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bbAjustarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
        0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
        000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
        00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
        00FF3777773333F77733333333333000033F3333333337777333}
      NumGlyphs = 2
    end
    object bbAgruBal: TBitBtn
      Left = 2
      Top = 398
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Agrupar varios balancos em um so'
      Caption = 'Agrupar Balancos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = bbAgruBalClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 2
      Top = 542
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
      NumGlyphs = 2
    end
    object CB_SOERRADO: TCheckBox
      Left = 3
      Top = 280
      Width = 97
      Height = 17
      Hint = 'Se Marcado Ira Imprimir'#13#10'somente os que tiveram'#13#10'diferen'#231'as'
      Caption = 'So Diferente'
      TabOrder = 12
    end
    object btn_coletor: TBitBtn
      Left = 3
      Top = 363
      Width = 101
      Height = 36
      Cursor = crHandPoint
      Hint = 'Adquirir dados do coletor'
      Caption = 'Adquirir de Coletor'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btn_coletorClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
        0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
        000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
        00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
        00FF3777773333F77733333333333000033F3333333337777333}
      NumGlyphs = 2
    end
    object bbGerarInv_normal: TBitBtn
      Left = 3
      Top = 433
      Width = 101
      Height = 38
      Cursor = crHandPoint
      Hint = 'Gerar um inventario no arquivo de inventarios gravados'
      Caption = 'Gerar Inv Norma'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = bbGerarInv_normalClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbGerarInvLote: TBitBtn
      Left = 3
      Top = 508
      Width = 101
      Height = 38
      Cursor = crHandPoint
      Hint = 'Gerar um inventario no arquivo de inventarios gravados'
      Caption = 'Gerar Inv c/Lote'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = bbGerarInvLoteClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object ggGerarNovoAgrupado: TBitBtn
      Left = 1
      Top = 470
      Width = 101
      Height = 38
      Cursor = crHandPoint
      Hint = 'Gerar um inventario no arquivo de inventarios gravados'
      Caption = 'Gerar Novo Agupado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = ggGerarNovoAgrupadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object panel_fundo: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 580
    Align = alClient
    TabOrder = 1
    object Panel_rodape: TPanel
      Left = 1
      Top = 552
      Width = 686
      Height = 27
      Align = alBottom
      TabOrder = 3
      object Label25: TLabel
        Left = 2
        Top = 4
        Width = 109
        Height = 13
        Caption = 'Total de Registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 453
        Top = 8
        Width = 115
        Height = 13
        Caption = 'Total das Unidades:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QTDITEM: TLabel
        Left = 115
        Top = 1
        Width = 106
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Color = 15000777
        ParentColor = False
        Layout = tlCenter
      end
      object TOTQTD: TLabel
        Left = 574
        Top = 3
        Width = 106
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Color = 15000777
        ParentColor = False
        Layout = tlCenter
      end
    end
    object STG1: TStringGrid
      Left = 1
      Top = 208
      Width = 686
      Height = 254
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 2
      TabOrder = 1
      OnDrawCell = STG1DrawCell
      ColWidths = (
        98
        82
        82
        254
        47
        90)
    end
    object Panel_dig: TPanel
      Left = 1
      Top = 462
      Width = 686
      Height = 90
      Align = alBottom
      Enabled = False
      TabOrder = 2
      object Label4: TLabel
        Left = 27
        Top = 5
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_lote: TLabel
        Left = 270
        Top = 7
        Width = 30
        Height = 13
        Caption = 'Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_dtvcto: TLabel
        Left = 392
        Top = 6
        Width = 62
        Height = 13
        Caption = 'Data Vcto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 9
        Top = 26
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 3
        Top = 44
        Width = 70
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 401
        Top = 27
        Width = 52
        Height = 13
        Caption = 'Unidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ITEM_GRAVAR: TBitBtn
        Left = 4
        Top = 65
        Width = 100
        Height = 21
        Cursor = crHandPoint
        Caption = 'Grava&r'
        TabOrder = 6
        OnClick = ITEM_GRAVARClick
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
      object ITEM_EDITAR: TBitBtn
        Left = 104
        Top = 65
        Width = 100
        Height = 21
        Cursor = crHandPoint
        Caption = '&Editar'
        TabOrder = 7
        OnClick = ITEM_EDITARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object ITEM_CANCELAR: TBitBtn
        Left = 204
        Top = 65
        Width = 100
        Height = 21
        Cursor = crHandPoint
        Caption = '&Cancelar'
        TabOrder = 8
        OnClick = ITEM_CANCELARClick
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
        NumGlyphs = 2
      end
      object BitBtn6: TBitBtn
        Left = 304
        Top = 65
        Width = 100
        Height = 21
        Cursor = crHandPoint
        Caption = '&Excluir'
        TabOrder = 9
        OnClick = BitBtn6Click
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
        NumGlyphs = 2
      end
      object CODPRO: TEdit
        Left = 74
        Top = 4
        Width = 122
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODPROExit
        OnKeyDown = CODPROKeyDown
        OnKeyPress = CODPROKeyPress
      end
      object LOTE: TEdit
        Left = 302
        Top = 4
        Width = 84
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = LOTEExit
        OnKeyDown = LOTEKeyDown
      end
      object DTVCTO: TMaskEdit
        Left = 454
        Top = 4
        Width = 73
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 2
        Text = '  /  /    '
        Visible = False
        OnExit = DTVCTOExit
      end
      object NOMPRO: TEdit
        Left = 74
        Top = 22
        Width = 274
        Height = 19
        TabStop = False
        Color = 15000777
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object QTD: TEdit
        Left = 74
        Top = 40
        Width = 122
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = QTDExit
      end
      object UND: TEdit
        Left = 455
        Top = 22
        Width = 50
        Height = 19
        TabStop = False
        Color = 15000777
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object CB_LEITOR: TCheckBox
        Left = 416
        Top = 67
        Width = 225
        Height = 17
        Caption = 'Utilizando Leitor Optico'
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = CB_LEITORClick
        OnEnter = CB_LEITOREnter
        OnExit = CB_LEITORExit
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 686
      Height = 207
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Padroes'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 678
          Height = 179
          Align = alTop
          Enabled = False
          TabOrder = 0
          object Label1: TLabel
            Left = 4
            Top = 4
            Width = 116
            Height = 13
            Caption = '&N'#250'mero do Balan'#231'o:'
            FocusControl = CHAVE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 199
            Top = 6
            Width = 32
            Height = 13
            Caption = '&Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 37
            Top = 29
            Width = 79
            Height = 13
            Caption = 'Observa'#231#245'es:'
            FocusControl = MOT01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 311
            Top = 4
            Width = 89
            Height = 13
            Caption = 'Data do Ajuste:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label81: TLabel
            Left = 10
            Top = 80
            Width = 109
            Height = 13
            Caption = 'Local Mercadorias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object lbl_filtro_teste: TLabel
            Left = 296
            Top = 100
            Width = 52
            Height = 13
            Caption = 'filtro Teste:'
          end
          object CHAVE: TEdit
            Left = 120
            Top = 4
            Width = 73
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object DATA: TMaskEdit
            Left = 232
            Top = 4
            Width = 77
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = DATAExit
          end
          object MOT01: TEdit
            Left = 120
            Top = 22
            Width = 353
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnExit = MOT01Exit
          end
          object MOT02: TEdit
            Left = 120
            Top = 40
            Width = 353
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = MOT02Exit
          end
          object MOT03: TEdit
            Left = 120
            Top = 58
            Width = 353
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = MOT03Exit
          end
          object DATAAJU: TMaskEdit
            Left = 401
            Top = 4
            Width = 72
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnExit = DATAAJUExit
          end
          object RGTPRO: TRadioGroup
            Left = 484
            Top = 1
            Width = 193
            Height = 177
            Align = alRight
            Caption = 'Balan'#231'o para os Produtos:'
            Ctl3D = False
            ItemIndex = 12
            Items.Strings = (
              '00 - Mercadoria para Revenda'
              '01 - Mat'#233'ria-Prima'
              '02 - Embalagem'
              '03 - Produto em Processo'
              '04 - Produto Acabado'
              '05 - Subproduto'
              '06 - Produto Intermedi'#225'rio'
              '07 - Material de Uso e Consumo'
              '08 - Ativo Imobilizado'
              '09 - Servi'#231'os'
              '10 - Outros Insumos'
              'Todos(com exce'#231#227'o do Acabado)'
              'Todos sem exce'#231#227'o')
            ParentCtl3D = False
            TabOrder = 7
          end
          object CODPRO_TESTE: TEdit
            Left = 352
            Top = 96
            Width = 121
            Height = 21
            TabOrder = 8
          end
          object CB_FILIAL: TComboBox
            Left = 119
            Top = 76
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 6
            OnExit = CB_FILIALExit
          end
        end
      end
      object tsFiltros: TTabSheet
        Caption = 'Filtros'
        ImageIndex = 2
        object Label12: TLabel
          Left = 12
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label13: TLabel
          Left = 13
          Top = 58
          Width = 31
          Height = 13
          Caption = 'Ramo:'
        end
        object Label14: TLabel
          Left = 20
          Top = 106
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object lbx_codgru: TListBox
          Left = 108
          Top = 7
          Width = 336
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = lbx_codgruKeyDown
        end
        object OMITIR_GRU: TCheckBox
          Left = 48
          Top = 27
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object CODGRU: TEdit
          Left = 47
          Top = 7
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = CODGRUExit
          OnKeyPress = CODGRUKeyPress
          OnMouseMove = CODGRUMouseMove
        end
        object lbx_codram: TListBox
          Left = 108
          Top = 55
          Width = 336
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codramKeyDown
        end
        object CODRAM: TEdit
          Left = 47
          Top = 55
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnExit = CODRAMExit
          OnKeyPress = CODRAMKeyPress
          OnMouseMove = CODRAMMouseMove
        end
        object OMITIR_RAM: TCheckBox
          Left = 48
          Top = 75
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object lbx_codtip: TListBox
          Left = 108
          Top = 103
          Width = 336
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnKeyDown = lbx_codtipKeyDown
        end
        object CODTIP: TEdit
          Left = 47
          Top = 103
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
          OnMouseMove = CODTIPMouseMove
        end
        object OMITIR_TIP: TCheckBox
          Left = 48
          Top = 123
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
      end
      object TsFiltros2: TTabSheet
        Caption = 'Filtros 2'
        ImageIndex = 2
        object Label15: TLabel
          Left = 12
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Controle..:'
        end
        object Label16: TLabel
          Left = 21
          Top = 57
          Width = 39
          Height = 13
          Caption = 'Marca..:'
        end
        object lbx_codcon: TListBox
          Left = 124
          Top = 7
          Width = 336
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = lbx_codconKeyDown
        end
        object CODCON: TEdit
          Left = 63
          Top = 7
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
          OnMouseMove = CODCONMouseMove
        end
        object OMITIR_CON: TCheckBox
          Left = 64
          Top = 27
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object edt_Marca: TEdit
          Left = 63
          Top = 54
          Width = 397
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Sobre Impress'#227'o'
        ImageIndex = 2
        object Label8: TLabel
          Left = 7
          Top = 4
          Width = 102
          Height = 13
          Caption = 'Ordem Impress'#227'o:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 7
          Top = 52
          Width = 46
          Height = 13
          Caption = 'Quebra:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object CB_ORDEM: TComboBox
          Left = 7
          Top = 21
          Width = 196
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 4
          TabOrder = 0
          Text = 'Padrao'
          Items.Strings = (
            'Fornecedor+descri'#231'ao'
            'Descri'#231#227'o'
            'C'#243'digo'
            'Se'#231'ao+Descri'#231#227'o'
            'Padrao')
        end
        object CB_QUEBRA: TComboBox
          Left = 7
          Top = 68
          Width = 196
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Sem Quebra'
          Items.Strings = (
            'Sem Quebra'
            'Fornecedor'
            'Grupo'
            'Ramo(Sub-Grupo)'
            'Controle'
            'Tipo'
            'Grupo/Ramo(Sub-Grupo)')
        end
        object CB_SEPPAG: TCheckBox
          Left = 206
          Top = 70
          Width = 122
          Height = 17
          Caption = 'Separado por Pagina'
          TabOrder = 2
        end
        object CB_AGRUPARCODIGO: TCheckBox
          Left = 11
          Top = 102
          Width = 238
          Height = 17
          Caption = 'Agrupar por C'#243'digo de Produto'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
      end
    end
    object pnl_Coletor: TPanel
      Left = 128
      Top = 256
      Width = 473
      Height = 73
      TabOrder = 4
      Visible = False
      object Label7: TLabel
        Left = 24
        Top = 11
        Width = 45
        Height = 13
        Caption = 'Arquivo..:'
      end
      object arquivo: TFilenameEdit
        Left = 72
        Top = 8
        Width = 393
        Height = 21
        NumGlyphs = 1
        TabOrder = 0
      end
      object btn_processar: TButton
        Left = 160
        Top = 40
        Width = 75
        Height = 25
        Caption = '&Procesar'
        TabOrder = 1
        OnClick = btn_processarClick
      end
      object btn_cancelar: TButton
        Left = 240
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Ca&ncelar'
        TabOrder = 2
        OnClick = btn_cancelarClick
      end
    end
    object pnl_Divergencias: TPanel
      Left = 128
      Top = 216
      Width = 457
      Height = 233
      TabOrder = 5
      Visible = False
      object m_divergencias: TMemo
        Left = 1
        Top = 46
        Width = 455
        Height = 157
        Align = alClient
        TabOrder = 0
      end
      object pnl_qtddiver: TPanel
        Left = 1
        Top = 1
        Width = 455
        Height = 45
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 1
        Top = 203
        Width = 455
        Height = 29
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 2
        object Button1: TButton
          Left = 184
          Top = 2
          Width = 75
          Height = 25
          Caption = '&Sair'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
  end
  object Qr_Bal01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBAL01 where B1CODEMP is null')
    Left = 528
    Top = 64
    object Qr_Bal01B1CODEMP: TFloatField
      FieldName = 'B1CODEMP'
      Origin = 'SG_ASSOC.CADBAL01.B1CODEMP'
    end
    object Qr_Bal01B1CHAVE: TFloatField
      FieldName = 'B1CHAVE'
      Origin = 'SG_ASSOC.CADBAL01.B1CHAVE'
    end
    object Qr_Bal01B1DATA: TDateTimeField
      FieldName = 'B1DATA'
      Origin = 'SG_ASSOC.CADBAL01.B1DATA'
    end
    object Qr_Bal01B1MOT01: TStringField
      FieldName = 'B1MOT01'
      Origin = 'SG_ASSOC.CADBAL01.B1MOT01'
      Size = 60
    end
    object Qr_Bal01B1MOT02: TStringField
      FieldName = 'B1MOT02'
      Origin = 'SG_ASSOC.CADBAL01.B1MOT02'
      Size = 60
    end
    object Qr_Bal01B1MOT03: TStringField
      FieldName = 'B1MOT03'
      Origin = 'SG_ASSOC.CADBAL01.B1MOT03'
      Size = 60
    end
    object Qr_Bal01B1STATUS: TFloatField
      FieldName = 'B1STATUS'
      Origin = 'SG_ASSOC.CADBAL01.B1STATUS'
    end
    object Qr_Bal01B1DATAAJU: TDateTimeField
      FieldName = 'B1DATAAJU'
      Origin = 'SG_ASSOC.CADBAL01.B1DATAAJU'
    end
    object Qr_Bal01B1LEMAT: TFloatField
      FieldName = 'B1LEMAT'
      Origin = 'SG_ASSOC.CADBAL01.B1LEMAT'
    end
    object Qr_Bal01B1SITUACAO: TFloatField
      FieldName = 'B1SITUACAO'
      Origin = 'SG_ASSOC.CADBAL01.B1SITUACAO'
    end
    object Qr_Bal01B1TIPOPRO: TFloatField
      FieldName = 'B1TIPOPRO'
      Origin = 'SG_ASSOC.CADBAL01.B1TIPOPRO'
    end
    object Qr_Bal01B1LOCAL: TFloatField
      FieldName = 'B1LOCAL'
      Origin = 'SG_ASSOC.CADBAL01.B1LOCAL'
    end
  end
  object Qr_BAL02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  B2CODEMP,'
      '        B2CHAVE,'
      '        B2SEQ,'
      '        B2CODPRO,'
      '        B2NUMERO,'
      '        B2DTVCTO,'
      '        B2QTD,'
      '        B2QTDEST,'
      '        B2DIFER,'
      '        B2STATUS,'
      '        B2TIPOPRO,'
      '        PDNOME,'
      '        PDUND,'
      '        PDNOME AS NOMGRU,'
      '        PDNOME AS SUBGRU'
      '        ,PDNOMFOR'
      '        ,PDCODFOR'
      '        ,PDSECAO'
      '        ,PDNOMRAM'
      '        ,PDCODRAM'
      '        ,PDNOMCON'
      '        ,PDCODCON'
      '        ,PDNOMGRU'
      '        ,PDCODGRU'
      '        ,PDNOMTIP'
      '        ,PDCODTIP'
      'from CADBAL02,CADPRO where B2CODEMP  is null'
      'and PDCODEMP=B2CODEMP'
      'and PDCODPRO=B2CODPRO')
    Left = 526
    Top = 32
    object Qr_BAL02B2CODEMP: TFloatField
      FieldName = 'B2CODEMP'
      Origin = 'SG_ASSOC.CADBAL02.B2CODEMP'
    end
    object Qr_BAL02B2CHAVE: TFloatField
      FieldName = 'B2CHAVE'
      Origin = 'SG_ASSOC.CADBAL02.B2CHAVE'
    end
    object Qr_BAL02B2CODPRO: TFloatField
      FieldName = 'B2CODPRO'
      Origin = 'SG_ASSOC.CADBAL02.B2CODPRO'
    end
    object Qr_BAL02B2NUMERO: TStringField
      FieldName = 'B2NUMERO'
      Origin = 'SG_ASSOC.CADBAL02.B2NUMERO'
    end
    object Qr_BAL02B2DTVCTO: TDateTimeField
      FieldName = 'B2DTVCTO'
      Origin = 'SG_ASSOC.CADBAL02.B2DTVCTO'
    end
    object Qr_BAL02B2QTD: TFloatField
      FieldName = 'B2QTD'
      Origin = 'SG_ASSOC.CADBAL02.B2QTD'
    end
    object Qr_BAL02B2QTDEST: TFloatField
      FieldName = 'B2QTDEST'
      Origin = 'SG_ASSOC.CADBAL02.B2QTDEST'
    end
    object Qr_BAL02B2DIFER: TFloatField
      FieldName = 'B2DIFER'
      Origin = 'SG_ASSOC.CADBAL02.B2DIFER'
    end
    object Qr_BAL02PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_BAL02PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_BAL02B2SEQ: TFloatField
      FieldName = 'B2SEQ'
      Origin = 'SG_ASSOC.CADBAL02.B2SEQ'
    end
    object Qr_BAL02B2STATUS: TFloatField
      FieldName = 'B2STATUS'
      Origin = 'SG_ASSOC.CADBAL02.B2STATUS'
    end
    object Qr_BAL02B2TIPOPRO: TFloatField
      FieldName = 'B2TIPOPRO'
      Origin = 'SG_ASSOC.CADBAL02.B2TIPOPRO'
    end
    object Qr_BAL02NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_BAL02SUBGRU: TStringField
      FieldName = 'SUBGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_BAL02PDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Qr_BAL02PDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_BAL02PDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_BAL02PDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Qr_BAL02PDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_BAL02PDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Qr_BAL02PDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Qr_BAL02PDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_BAL02PDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Qr_BAL02PDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Qr_BAL02PDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
  end
  object Qr_Bal03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBAL03 where B3CODEMP is null')
    Left = 528
    Top = 96
    object Qr_Bal03B3CODEMP: TFloatField
      FieldName = 'B3CODEMP'
      Origin = 'SG_ASSOC.CADBAL03.B3CODEMP'
    end
    object Qr_Bal03B3CHAVE: TFloatField
      FieldName = 'B3CHAVE'
      Origin = 'SG_ASSOC.CADBAL03.B3CHAVE'
    end
    object Qr_Bal03B3SEQ: TFloatField
      FieldName = 'B3SEQ'
      Origin = 'SG_ASSOC.CADBAL03.B3SEQ'
    end
    object Qr_Bal03B3CODIGO: TStringField
      FieldName = 'B3CODIGO'
      Origin = 'SG_ASSOC.CADBAL03.B3CODIGO'
      Size = 15
    end
    object Qr_Bal03B3TIPO: TStringField
      FieldName = 'B3TIPO'
      Origin = 'SG_ASSOC.CADBAL03.B3TIPO'
      Size = 4
    end
    object Qr_Bal03B3OMITIR: TFloatField
      FieldName = 'B3OMITIR'
      Origin = 'SG_ASSOC.CADBAL03.B3OMITIR'
    end
  end
end
