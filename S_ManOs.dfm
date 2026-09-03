object Frm_ManOs: TFrm_ManOs
  Left = 312
  Top = 80
  Width = 820
  Height = 564
  Caption = 'Manuten'#231#227'o no Cadastro de OS'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 710
    Top = 0
    Width = 102
    Height = 533
    Align = alRight
    TabOrder = 0
    object Label52: TLabel
      Left = 2
      Top = 193
      Width = 97
      Height = 13
      Caption = 'Modelo Relatorio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 100
      Height = 38
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBLOCALIZAR: TBitBtn
      Left = 2
      Top = 39
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Caption = 'Locali&zar'
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
      Left = 2
      Top = 77
      Width = 100
      Height = 38
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 2
      Top = 115
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object BBLIMPAR: TBitBtn
      Left = 2
      Top = 153
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object BBFATURAR: TBitBtn
      Left = 1
      Top = 265
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Transformar o Or'#231'amento em Pedido'
      Caption = '&Faturar e Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBFATURARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBIMPRIMIR: TBitBtn
      Left = 0
      Top = 226
      Width = 100
      Height = 39
      Cursor = crHandPoint
      Caption = '&Imprimir'
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbBaixar: TBitBtn
      Left = 1
      Top = 302
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Baixar a OS'
      Caption = 'Baixar OS'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbImportaPed: TBitBtn
      Left = 1
      Top = 339
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Incluir a Partir de um Pedido Existente'
      Caption = 'Importar Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bbImportaPedClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 1
      Top = 376
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = 'Excl&uir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object BBSAIR: TBitBtn
      Left = 0
      Top = 413
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object CB_MODELO: TComboBox
      Left = 0
      Top = 208
      Width = 103
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 11
      Text = 'Laser Sem Brancos'
      OnClick = CB_MODELOClick
      Items.Strings = (
        'Matricial'
        'Laser Total'
        'Laser Sem Brancos')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 533
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 491
      Width = 708
      Height = 41
      Align = alBottom
      TabOrder = 2
      object Label34: TLabel
        Left = 5
        Top = 4
        Width = 90
        Height = 13
        Caption = 'Qtd.Equipamentos:'
      end
      object Label35: TLabel
        Left = 147
        Top = 3
        Width = 64
        Height = 13
        Caption = 'Qtd.Servi'#231'os:'
      end
      object Label36: TLabel
        Left = 266
        Top = 4
        Width = 101
        Height = 13
        Caption = 'Qtd.Pe'#231'as Utilizadas:'
      end
      object Label38: TLabel
        Left = 421
        Top = 5
        Width = 74
        Height = 13
        Caption = 'Qtd.Acess'#243'rios:'
      end
      object Label39: TLabel
        Left = 153
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Tot.Pe'#231'as:'
      end
      object Label40: TLabel
        Left = 429
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Vlr.Serv:'
      end
      object Label41: TLabel
        Left = 551
        Top = 25
        Width = 55
        Height = 13
        Caption = 'Total Geral:'
      end
      object Label42: TLabel
        Left = 6
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Desc.Pe'#231'as:'
      end
      object Label43: TLabel
        Left = 288
        Top = 25
        Width = 56
        Height = 13
        Caption = 'Desc.Serv.:'
      end
      object Label44: TLabel
        Left = 552
        Top = 6
        Width = 55
        Height = 13
        Caption = 'Total Bruto:'
      end
      object QTDEQUI: TStaticText
        Left = 98
        Top = 3
        Width = 40
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 0
      end
      object QTDSERV: TStaticText
        Left = 215
        Top = 3
        Width = 40
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 1
      end
      object QTDPEC: TStaticText
        Left = 374
        Top = 3
        Width = 40
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 2
      end
      object QTDACES: TStaticText
        Left = 504
        Top = 3
        Width = 40
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 3
      end
      object VLPECAS: TStaticText
        Left = 212
        Top = 21
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 4
      end
      object VLSERV: TStaticText
        Left = 478
        Top = 22
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 5
      end
      object TOTAL: TStaticText
        Left = 613
        Top = 22
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 6
      end
      object DESCPEC: TStaticText
        Left = 72
        Top = 22
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 7
      end
      object DESCSERV: TStaticText
        Left = 350
        Top = 23
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 8
      end
      object TOTBRU: TStaticText
        Left = 612
        Top = 2
        Width = 68
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 9
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 239
      Width = 708
      Height = 252
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 1
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'Equipamentos Entregues'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 112
          Width = 700
          Height = 112
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          Enabled = False
          TabOrder = 0
          object Label14: TLabel
            Left = 13
            Top = 13
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Label15: TLabel
            Left = 7
            Top = 31
            Width = 38
            Height = 13
            Caption = 'Modelo:'
          end
          object Label16: TLabel
            Left = 162
            Top = 31
            Width = 33
            Height = 13
            Caption = 'Marca:'
          end
          object Label17: TLabel
            Left = 320
            Top = 32
            Width = 52
            Height = 13
            Caption = 'N'#250'm.S'#233'rie:'
          end
          object Label18: TLabel
            Left = 501
            Top = 32
            Width = 44
            Height = 13
            Caption = 'N'#250'm.Pat.'
          end
          object Label19: TLabel
            Left = 502
            Top = 12
            Width = 43
            Height = 13
            Caption = 'Unidade:'
          end
          object Label46: TLabel
            Left = 9
            Top = 47
            Width = 66
            Height = 13
            Caption = 'Observa'#231#245'es:'
          end
          object OS2CODPRO: TEdit
            Left = 50
            Top = 11
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = OS2CODPROExit
            OnKeyPress = OS2CODPROKeyPress
          end
          object OS2NOMPRO: TEdit
            Left = 160
            Top = 11
            Width = 325
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
          end
          object OS2MODELO: TEdit
            Left = 50
            Top = 29
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = OS2MODELOEnter
            OnExit = OS2MODELOExit
            OnKeyPress = OS2MODELOKeyPress
          end
          object OS2MARCA: TEdit
            Left = 205
            Top = 29
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = OS2MARCAExit
            OnKeyPress = OS2MARCAKeyPress
          end
          object OS2SERIE: TEdit
            Left = 378
            Top = 29
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = OS2SERIEExit
            OnKeyPress = OS2SERIEKeyPress
          end
          object OS2NUMPAT: TEdit
            Left = 559
            Top = 29
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnExit = OS2NUMPATExit
            OnKeyPress = OS2NUMPATKeyPress
          end
          object OS2_GRAVAR: TBitBtn
            Left = 3
            Top = 87
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 9
            OnClick = OS2_GRAVARClick
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
          object OS2_EDITAR: TBitBtn
            Left = 104
            Top = 87
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 10
            OnClick = OS2_EDITARClick
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
          object OS2_CANCELAR: TBitBtn
            Left = 204
            Top = 87
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 11
            OnClick = OS2_CANCELARClick
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
          object OS2_EXCLUIR: TBitBtn
            Left = 304
            Top = 87
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 12
            OnClick = OS2_EXCLUIRClick
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
          object OS2UND: TEdit
            Left = 559
            Top = 11
            Width = 42
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object OS2OBS01: TEdit
            Left = 76
            Top = 47
            Width = 591
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            OnExit = OS2OBS01Exit
            OnKeyPress = OS2OBS01KeyPress
          end
          object OS2OBS02: TEdit
            Left = 76
            Top = 65
            Width = 591
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 8
            OnExit = OS2OBS02Exit
            OnKeyPress = OS2OBS02KeyPress
          end
        end
        object dbg_os02: TDBGrid
          Left = 0
          Top = 0
          Width = 700
          Height = 112
          Align = alClient
          DataSource = src_os02
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OS2ITEM'
              Title.Alignment = taCenter
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2CODPRO'
              Title.Alignment = taCenter
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompro'
              Title.Alignment = taCenter
              Width = 191
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'undpro'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2MODELO'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2MARCA'
              Title.Alignment = taCenter
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2SERIE'
              Title.Alignment = taCenter
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2NUMPAT'
              Title.Alignment = taCenter
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2OBS01'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2OBS02'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2ID_NEW'
              Title.Alignment = taCenter
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS2ID_OS1_NEW'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Servi'#231'os a Serem Executados'
        ImageIndex = 1
        object GroupBox2: TGroupBox
          Left = 0
          Top = 144
          Width = 700
          Height = 80
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          Enabled = False
          TabOrder = 0
          object Label20: TLabel
            Left = 13
            Top = 16
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Label21: TLabel
            Left = 7
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Quantidade:'
          end
          object Label22: TLabel
            Left = 185
            Top = 37
            Width = 47
            Height = 13
            Caption = 'P'#231'o.Unit.:'
          end
          object Label23: TLabel
            Left = 348
            Top = 38
            Width = 60
            Height = 13
            Caption = '% Desconto:'
          end
          object Label24: TLabel
            Left = 511
            Top = 38
            Width = 54
            Height = 13
            Caption = 'Valor Total:'
          end
          object Label25: TLabel
            Left = 595
            Top = 15
            Width = 43
            Height = 13
            Caption = 'Unidade:'
          end
          object OS5CODSER: TEdit
            Left = 66
            Top = 14
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = OS5CODSEREnter
            OnExit = OS5CODSERExit
            OnKeyPress = OS5CODSERKeyPress
          end
          object OS5NOMSER: TEdit
            Left = 175
            Top = 14
            Width = 313
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object OS5QTD: TEdit
            Left = 66
            Top = 35
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = OS5QTDEnter
            OnExit = OS5QTDExit
          end
          object OS5PCOUNIT: TEdit
            Left = 233
            Top = 35
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = OS5PCOUNITExit
          end
          object OS5DESC01: TEdit
            Left = 412
            Top = 36
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = OS5DESC01Exit
          end
          object OS5_GRAVAR: TBitBtn
            Left = 3
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 6
            OnClick = OS5_GRAVARClick
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
          object OS5_EDITAR: TBitBtn
            Left = 104
            Top = 56
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 7
            OnClick = OS5_EDITARClick
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
          object OS5_CANCELAR: TBitBtn
            Left = 204
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 8
            OnClick = OS5_CANCELARClick
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
          object OS5_EXCLUIR: TBitBtn
            Left = 304
            Top = 56
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 9
            OnClick = OS5_EXCLUIRClick
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
          object OS5UND: TEdit
            Left = 639
            Top = 14
            Width = 34
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object OS5VT: TEdit
            Left = 573
            Top = 35
            Width = 100
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 10
          end
          object bbAltDesSer: TBitBtn
            Left = 488
            Top = 12
            Width = 105
            Height = 21
            Caption = '&Alterar Descri'#231#227'o'
            TabOrder = 11
            OnClick = bbAltDesSerClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
              FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
              FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
              007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
              7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
              99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
              99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
              99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
              93337FFFF7737777733300000033333333337777773333333333}
            NumGlyphs = 2
          end
          object OS5DESCVLR: TEdit
            Left = 444
            Top = 36
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
            OnExit = OS5DESCVLRExit
          end
        end
        object _ID: TDBGrid
          Left = 0
          Top = 0
          Width = 700
          Height = 144
          Align = alClient
          DataSource = src_os05
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5ITEM'
              Title.Alignment = taCenter
              Width = 38
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5CODPRO'
              Title.Alignment = taCenter
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompro'
              Title.Alignment = taCenter
              Width = 230
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5QTD'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'und'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5PU'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5DESC01'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'OS5TOTDES'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'valor_total'
              Title.Alignment = taCenter
              Width = 78
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Pe'#231'as Utilizadas'
        ImageIndex = 2
        object GroupBox3: TGroupBox
          Left = 0
          Top = 144
          Width = 700
          Height = 80
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          Enabled = False
          TabOrder = 0
          object Label26: TLabel
            Left = 13
            Top = 16
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Label27: TLabel
            Left = 7
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Quantidade:'
          end
          object Label28: TLabel
            Left = 185
            Top = 37
            Width = 47
            Height = 13
            Caption = 'P'#231'o.Unit.:'
          end
          object Label29: TLabel
            Left = 348
            Top = 38
            Width = 60
            Height = 13
            Caption = '% Desconto:'
          end
          object Label30: TLabel
            Left = 498
            Top = 38
            Width = 54
            Height = 13
            Caption = 'Valor Total:'
          end
          object Label31: TLabel
            Left = 508
            Top = 15
            Width = 43
            Height = 13
            Caption = 'Unidade:'
          end
          object OS4CODPRO: TEdit
            Left = 66
            Top = 14
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = OS4CODPROEnter
            OnExit = OS4CODPROExit
            OnKeyPress = OS4CODPROKeyPress
          end
          object OS4NOMPRO: TEdit
            Left = 175
            Top = 14
            Width = 313
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
          end
          object OS4QTD: TEdit
            Left = 66
            Top = 35
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = OS4QTDEnter
            OnExit = OS4QTDExit
          end
          object OS4PCOUNIT: TEdit
            Left = 233
            Top = 35
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = OS4PCOUNITExit
          end
          object OS4DESC01: TEdit
            Left = 412
            Top = 36
            Width = 37
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = OS4DESC01Exit
          end
          object OS4_GRAVAR: TBitBtn
            Left = 3
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 7
            OnClick = OS4_GRAVARClick
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
          object OS4_EDITAR: TBitBtn
            Left = 104
            Top = 56
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 8
            OnClick = OS4_EDITARClick
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
          object OS4_CANCELAR: TBitBtn
            Left = 204
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 9
            OnClick = OS4_CANCELARClick
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
          object OS4_EXCLUIR: TBitBtn
            Left = 304
            Top = 56
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 10
            OnClick = OS4_EXCLUIRClick
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
          object OS4UND: TEdit
            Left = 559
            Top = 14
            Width = 42
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object OS4VT: TEdit
            Left = 560
            Top = 35
            Width = 100
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 11
          end
          object OS4DESCVLR: TEdit
            Left = 444
            Top = 36
            Width = 33
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnExit = OS4DESCVLRExit
          end
        end
        object dbg_os04: TDBGrid
          Left = 0
          Top = 0
          Width = 700
          Height = 144
          Align = alClient
          DataSource = src_os04
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OS4ITEM'
              Title.Alignment = taCenter
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS4CODPRO'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompro'
              Title.Alignment = taCenter
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS4QTD'
              Title.Alignment = taCenter
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'undpro'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS4PU'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS4TOTDES'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS4DESC01'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_total'
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Acess'#243'rios de Acompanhamento'
        ImageIndex = 3
        object GroupBox4: TGroupBox
          Left = 0
          Top = 144
          Width = 700
          Height = 80
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          Enabled = False
          TabOrder = 0
          object Label32: TLabel
            Left = 13
            Top = 16
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Label33: TLabel
            Left = 7
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Quantidade:'
          end
          object Label37: TLabel
            Left = 508
            Top = 15
            Width = 43
            Height = 13
            Caption = 'Unidade:'
          end
          object OS3CODPRO: TEdit
            Left = 66
            Top = 14
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = OS3CODPROExit
            OnKeyPress = OS3CODPROKeyPress
          end
          object OS3NOMPRO: TEdit
            Left = 175
            Top = 14
            Width = 313
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
          end
          object OS3QTD: TEdit
            Left = 66
            Top = 35
            Width = 107
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = OS3QTDEnter
            OnExit = OS3QTDExit
          end
          object OS3_GRAVAR: TBitBtn
            Left = 3
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 4
            OnClick = OS3_GRAVARClick
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
          object OS3_EDITAR: TBitBtn
            Left = 104
            Top = 56
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 5
            OnClick = OS3_EDITARClick
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
          object OS3_CANCELAR: TBitBtn
            Left = 204
            Top = 56
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 6
            OnClick = OS3_CANCELARClick
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
          object OS3_EXCLUIR: TBitBtn
            Left = 304
            Top = 56
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 7
            OnClick = OS3_EXCLUIRClick
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
          object OS3UND: TEdit
            Left = 559
            Top = 14
            Width = 42
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
        end
        object DBG_OS03: TDBGrid
          Left = 0
          Top = 0
          Width = 700
          Height = 144
          Align = alClient
          DataSource = src_os03
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OS3ITEM'
              Title.Alignment = taCenter
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS3CODPRO'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OS3QTD'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompro'
              Title.Alignment = taCenter
              Width = 406
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'undpro'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 708
      Height = 238
      ActivePage = TabSheet5
      Align = alTop
      TabOrder = 0
      object TabSheet5: TTabSheet
        Caption = 'Dados do Cliente'
        Enabled = False
        object Label11: TLabel
          Left = 270
          Top = 149
          Width = 59
          Height = 13
          Caption = 'Saida: Data:'
        end
        object Label10: TLabel
          Left = 46
          Top = 148
          Width = 64
          Height = 13
          Caption = 'Entrada data:'
        end
        object Label8: TLabel
          Left = 5
          Top = 105
          Width = 110
          Height = 13
          Caption = 'Servi'#231'o Autorizado por:'
        end
        object Label12: TLabel
          Left = 9
          Top = 85
          Width = 103
          Height = 13
          Caption = 'Atendente/Vendedor:'
        end
        object Label6: TLabel
          Left = 77
          Top = 64
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label4: TLabel
          Left = 63
          Top = 43
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label1: TLabel
          Left = 72
          Top = 23
          Width = 38
          Height = 13
          Caption = 'Cliente.:'
        end
        object Label3: TLabel
          Left = 72
          Top = 3
          Width = 40
          Height = 13
          Caption = 'Chave..:'
        end
        object Label9: TLabel
          Left = 481
          Top = 108
          Width = 85
          Height = 13
          Caption = 'Data Autoriza'#231#227'o:'
        end
        object Label7: TLabel
          Left = 459
          Top = 69
          Width = 27
          Height = 13
          Caption = 'CEP.:'
        end
        object Label5: TLabel
          Left = 456
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label2: TLabel
          Left = 535
          Top = 5
          Width = 26
          Height = 13
          Caption = 'Data:'
        end
        object Label45: TLabel
          Left = 14
          Top = 126
          Width = 98
          Height = 13
          Caption = 'Nome do Solicitante:'
        end
        object Label47: TLabel
          Left = 68
          Top = 170
          Width = 42
          Height = 13
          Caption = 'T'#233'cnico:'
        end
        object Label48: TLabel
          Left = 190
          Top = 151
          Width = 26
          Height = 13
          Caption = 'Hora:'
        end
        object Label49: TLabel
          Left = 404
          Top = 152
          Width = 26
          Height = 13
          Caption = 'Hora:'
        end
        object Label50: TLabel
          Left = 523
          Top = 172
          Width = 70
          Height = 13
          Caption = 'Chave Pedido:'
        end
        object Label51: TLabel
          Left = 73
          Top = 192
          Width = 33
          Height = 13
          Caption = 'Status:'
        end
        object Label53: TLabel
          Left = 528
          Top = 193
          Width = 65
          Height = 13
          Caption = 'Numero RAT:'
        end
        object DATASAI: TMaskEdit
          Left = 331
          Top = 148
          Width = 69
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 15
          Text = '  /  /    '
          OnExit = DATASAIExit
        end
        object DATAENT: TMaskEdit
          Left = 115
          Top = 147
          Width = 71
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 13
          Text = '  /  /    '
          OnExit = DATAENTExit
        end
        object NOMAUT: TEdit
          Left = 115
          Top = 105
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = NOMAUTExit
          OnKeyPress = NOMAUTKeyPress
        end
        object CHAVE: TEdit
          Left = 115
          Top = 1
          Width = 71
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
        end
        object CODCLI: TEdit
          Left = 115
          Top = 22
          Width = 71
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object NOMCLI: TEdit
          Left = 187
          Top = 22
          Width = 325
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
        end
        object ENDERECO: TEdit
          Left = 115
          Top = 43
          Width = 325
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
        end
        object CIDADE: TEdit
          Left = 115
          Top = 64
          Width = 325
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
        end
        object NOMVEN: TEdit
          Left = 188
          Top = 84
          Width = 311
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 9
        end
        object CODVEN: TEdit
          Left = 115
          Top = 84
          Width = 71
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object DATAAUT: TMaskEdit
          Left = 575
          Top = 105
          Width = 85
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 11
          Text = '  /  /    '
          OnExit = DATAAUTExit
        end
        object RG_OPER: TRadioGroup
          Left = 483
          Top = 124
          Width = 197
          Height = 31
          Caption = 'Opera'#231#227'o:'
          Columns = 3
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'A Pagar'
            'Garantia'
            'Contrato')
          ParentCtl3D = False
          TabOrder = 17
        end
        object CEP: TEdit
          Left = 496
          Top = 64
          Width = 88
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 7
        end
        object BAIRRO: TEdit
          Left = 491
          Top = 42
          Width = 185
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 5
        end
        object MDATA: TMaskEdit
          Left = 573
          Top = 1
          Width = 85
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDATAExit
        end
        object NOMSOL: TEdit
          Left = 116
          Top = 126
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          OnExit = NOMSOLExit
          OnKeyPress = NOMSOLKeyPress
        end
        object CODTEC: TEdit
          Left = 115
          Top = 168
          Width = 71
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 18
          OnExit = CODTECExit
          OnKeyPress = CODTECKeyPress
        end
        object NOMTEC: TEdit
          Left = 188
          Top = 169
          Width = 325
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 19
        end
        object HORAENT: TMaskEdit
          Left = 219
          Top = 147
          Width = 49
          Height = 19
          Ctl3D = False
          EditMask = '!90:00;1; '
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 14
          Text = '  :  '
          OnExit = HORAENTExit
        end
        object HORASAI: TMaskEdit
          Left = 432
          Top = 148
          Width = 52
          Height = 19
          Ctl3D = False
          EditMask = '!90:00;1; '
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 16
          Text = '  :  '
          OnExit = HORASAIExit
        end
        object CHAVEPED: TEdit
          Left = 602
          Top = 169
          Width = 71
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 20
          OnExit = CHAVEPEDExit
        end
        object cb_status: TComboBox
          Left = 114
          Top = 189
          Width = 245
          Height = 21
          BevelKind = bkSoft
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 21
          Text = 'Pendente'
          Items.Strings = (
            'Pendente'
            'Em Andamento'
            'Concluido'
            'Cancelada')
        end
        object edt_numrat: TEdit
          Left = 602
          Top = 189
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 40
          ParentCtl3D = False
          TabOrder = 22
          OnExit = NOMAUTExit
          OnKeyPress = NOMAUTKeyPress
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Defeito Reclamado'
        Enabled = False
        ImageIndex = 1
        object DEFRECL: TMemo
          Left = 0
          Top = 0
          Width = 566
          Height = 210
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            
              '1234567890123456789012345678901234567890123456789012345678901234' +
              '567890123456789'
            '0')
          ParentFont = False
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 566
          Top = 0
          Width = 134
          Height = 210
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label13: TLabel
            Left = 1
            Top = 1
            Width = 157
            Height = 39
            Align = alClient
            Alignment = taCenter
            Caption = 
              'Para Sair do Campo ao lado pressione a tecla [TAB] ou utilize o ' +
              'mouse'
            WordWrap = True
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Observa'#231#245'es'
        Enabled = False
        ImageIndex = 2
        object OBSL01: TEdit
          Left = 115
          Top = 24
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = OBSL01Exit
        end
        object OBSL02: TEdit
          Left = 115
          Top = 44
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = OBSL02Exit
        end
        object OBSL03: TEdit
          Left = 115
          Top = 65
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = OBSL03Exit
        end
        object OBSL04: TEdit
          Left = 115
          Top = 86
          Width = 324
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = OBSL04Exit
        end
      end
      object tsMaisInfo: TTabSheet
        Caption = 'Mais Informa'#231#245'es'
        ImageIndex = 3
        object gb_maisinfo: TGroupBox
          Left = 24
          Top = 0
          Width = 625
          Height = 199
          Caption = 'Mais Informa'#231'oes'
          TabOrder = 0
          object Label54: TLabel
            Left = 1
            Top = 15
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Portaria de Aprova'#231#227'o de Modelo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 1
            Top = 33
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o do IMMETRO (inventario)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 1
            Top = 51
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o das marcas de selagem retiradas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label57: TLabel
            Left = 1
            Top = 105
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o da marca de reparro afixada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 1
            Top = 87
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o das marcas de selagem afixada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 1
            Top = 69
            Width = 260
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o da marca de reparo retirada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edt_OS1PORTPAROVMOD: TEdit
            Left = 263
            Top = 11
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 0
          end
          object edt_OS1NUMIMMETRO: TEdit
            Left = 263
            Top = 29
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 1
          end
          object edt_OS1NUMMARCSELRET: TEdit
            Left = 263
            Top = 47
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 2
          end
          object edt_OS1NUMMARCREPAFIX: TEdit
            Left = 263
            Top = 101
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 5
          end
          object edt_OS1NUMMARCSELAFIX: TEdit
            Left = 263
            Top = 83
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 4
          end
          object edt_OS1NUMMARCREPRET: TEdit
            Left = 263
            Top = 65
            Width = 234
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 3
          end
        end
      end
    end
  end
  object Qr_Os01: TQuery
    OnCalcFields = Qr_Os01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS1CODEMP,'
      '       OS1LOTSEQ,'
      '       OS1CHAVE,'
      '       OS1DATA,'
      '       OS1DATAAUT,'
      '       OS1NOMEAUT,'
      '       OS1DATADEV,'
      '       OS1HORADEV,'
      '       OS1DATAENT,'
      '       OS1HORAENT,'
      '       OS1CODCLI,'
      '       OS1CODVEN,'
      '       OS1OPER,'
      '       OS1DEFREC,'
      '       OS1OBS01,'
      '       OS1OBS02,'
      '       OS1OBS03,'
      '       OS1OBS04,'
      '       OS1STATUS,'
      '       OS1LOTSEQ_CP,'
      '       OS1CHAVEPED,'
      '       OS1TOTAL,'
      '       OS1TOTSER,'
      '       OS1DESCSER,'
      '       OS1TOTPEC,'
      '       OS1DESCPEC,'
      '       OS1ESTREG,'
      '       OS1DATALT,'
      '       OS1CODUSR,'
      '       OS1NOMSOL,'
      '       OS1CODTEC,'
      '       OS1DESCBAIXA,'
      '       CRAZAO,CLOG,'
      '       CBAIRRO,CCIDADE,CUF,'
      '       CCEP, CFONE01,CFAX,CCPF,CCNPJ,CIE,CRG'
      '       ,CDENOM'
      '       from CADOS01,CADCLI where OS1CODEMP is null'
      '       and CCODEMP=OS1CODEMP'
      '       and CCODCLI=OS1CODCLI')
    Left = 520
    Top = 144
    object Qr_Os01OS1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS1CODEMP'
      Origin = 'SG_ASSOC.CADOS01.OS1CODEMP'
    end
    object Qr_Os01OS1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS1LOTSEQ'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ'
    end
    object Qr_Os01OS1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS1CHAVE'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVE'
    end
    object Qr_Os01OS1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OS1DATA'
      Origin = 'SG_ASSOC.CADOS01.OS1DATA'
    end
    object Qr_Os01OS1DATAAUT: TDateTimeField
      DisplayLabel = 'Dt.Aut.'
      FieldName = 'OS1DATAAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAAUT'
    end
    object Qr_Os01OS1DATADEV: TDateTimeField
      DisplayLabel = 'Data Prev.Ent'
      FieldName = 'OS1DATADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1DATADEV'
    end
    object Qr_Os01OS1DATAENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'OS1DATAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAENT'
    end
    object Qr_Os01OS1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'OS1CODCLI'
      Origin = 'SG_ASSOC.CADOS01.OS1CODCLI'
    end
    object Qr_Os01OS1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'OS1CODVEN'
      Origin = 'SG_ASSOC.CADOS01.OS1CODVEN'
    end
    object Qr_Os01OS1OPER: TFloatField
      DisplayLabel = 'Oper'
      FieldName = 'OS1OPER'
      Origin = 'SG_ASSOC.CADOS01.OS1OPER'
    end
    object Qr_Os01OS1DEFREC: TBlobField
      DisplayLabel = 'Defeito Reclamado'
      FieldName = 'OS1DEFREC'
      Origin = 'SG_ASSOC.CADOS01.OS1DEFREC'
      Size = 1
    end
    object Qr_Os01OS1OBS01: TStringField
      DisplayLabel = 'Oberva'#231#245'es Linha 01'
      FieldName = 'OS1OBS01'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS01'
      Size = 60
    end
    object Qr_Os01OS1OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'OS1OBS02'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS02'
      Size = 60
    end
    object Qr_Os01OS1OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'OS1OBS03'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS03'
      Size = 60
    end
    object Qr_Os01OS1OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'OS1OBS04'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS04'
      Size = 60
    end
    object Qr_Os01OS1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OS1STATUS'
      Origin = 'SG_ASSOC.CADOS01.OS1STATUS'
    end
    object Qr_Os01OS1LOTSEQ_CP: TFloatField
      DisplayLabel = 'Lote Seq.Chave Ped'
      FieldName = 'OS1LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ_CP'
    end
    object Qr_Os01OS1CHAVEPED: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'OS1CHAVEPED'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVEPED'
    end
    object Qr_Os01CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Os01CLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_Os01CBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_Os01CCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_Os01CUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_Os01CCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_Os01OS1TOTAL: TFloatField
      DisplayLabel = 'Total da OS'
      FieldName = 'OS1TOTAL'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTAL'
    end
    object Qr_Os01nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Qr_Os01OS1TOTSER: TFloatField
      FieldName = 'OS1TOTSER'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTSER'
    end
    object Qr_Os01OS1DESCSER: TFloatField
      FieldName = 'OS1DESCSER'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCSER'
    end
    object Qr_Os01OS1TOTPEC: TFloatField
      FieldName = 'OS1TOTPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTPEC'
    end
    object Qr_Os01OS1DESCPEC: TFloatField
      FieldName = 'OS1DESCPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCPEC'
    end
    object Qr_Os01OS1ESTREG: TFloatField
      FieldName = 'OS1ESTREG'
      Origin = 'SG_ASSOC.CADOS01.OS1ESTREG'
    end
    object Qr_Os01OS1DATALT: TDateTimeField
      FieldName = 'OS1DATALT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATALT'
    end
    object Qr_Os01OS1CODUSR: TFloatField
      FieldName = 'OS1CODUSR'
      Origin = 'SG_ASSOC.CADOS01.OS1CODUSR'
    end
    object Qr_Os01OS1NOMEAUT: TStringField
      FieldName = 'OS1NOMEAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMEAUT'
      Size = 40
    end
    object Qr_Os01OS1NOMSOL: TStringField
      FieldName = 'OS1NOMSOL'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMSOL'
      Size = 40
    end
    object Qr_Os01CFAX: TStringField
      FieldName = 'CFAX'
      Origin = 'SG_ASSOC.CADCLI.CFAX'
      Size = 16
    end
    object Qr_Os01CCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_Os01CCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_Os01CIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_Os01CRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_Os01OS1CODTEC: TFloatField
      FieldName = 'OS1CODTEC'
      Origin = 'SG_ASSOC.CADOS01.OS1CODTEC'
    end
    object Qr_Os01nomtec: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtec'
      Size = 40
      Calculated = True
    end
    object Qr_Os01OS1HORADEV: TStringField
      FieldName = 'OS1HORADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1HORADEV'
      Size = 10
    end
    object Qr_Os01OS1HORAENT: TStringField
      FieldName = 'OS1HORAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1HORAENT'
      Size = 10
    end
    object Qr_Os01CFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_Os01CDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 60
    end
    object Qr_Os01OS1DESCBAIXA: TMemoField
      FieldName = 'OS1DESCBAIXA'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCBAIXA'
      BlobType = ftMemo
      Size = 3000
    end
    object Qr_Os01OS1NUMRAT: TStringField
      FieldName = 'OS1NUMRAT'
      Size = 40
    end
    object Qr_Os01OS1PORTPAROVMOD: TStringField
      FieldName = 'OS1PORTPAROVMOD'
      Size = 40
    end
    object Qr_Os01OS1NUMIMMETRO: TStringField
      FieldName = 'OS1NUMIMMETRO'
      Size = 40
    end
    object Qr_Os01OS1NUMMARCSELRET: TStringField
      FieldName = 'OS1NUMMARCSELRET'
      Size = 40
    end
    object Qr_Os01OS1NUMMARCREPRET: TStringField
      FieldName = 'OS1NUMMARCREPRET'
      Size = 0
    end
    object Qr_Os01OS1NUMMARCSELAFIX: TStringField
      FieldName = 'OS1NUMMARCSELAFIX'
      Size = 40
    end
    object Qr_Os01OS1NUMMARCREPAFIX: TStringField
      FieldName = 'OS1NUMMARCREPAFIX'
      Size = 40
    end
    object Qr_Os01OS1ID_NEW: TFloatField
      FieldName = 'OS1ID_NEW'
    end
  end
  object Qr_Os02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS2CODEMP,'
      '       OS2LOTSEQ,'
      '       OS2CHAVE,'
      '       OS2ITEM,'
      '       OS2CODPRO,'
      '       OS2MODELO,'
      '       OS2MARCA,'
      '       OS2SERIE,'
      '       OS2NUMPAT,'
      '       OS2OBS01,'
      '       OS2OBS02,'
      '       PDNOME,PDUND from CADOS02,CADPRO'
      'where OS2CODEMP is null'
      'and PDCODEMP=OS2CODEMP'
      'and PDCODPRO=OS2CODPRO'
      '')
    Left = 588
    Top = 96
    object Qr_Os02OS2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS2CODEMP'
      Origin = 'SG_ASSOC.CADOS02.OS2CODEMP'
    end
    object Qr_Os02OS2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'OS2LOTSEQ'
      Origin = 'SG_ASSOC.CADOS02.OS2LOTSEQ'
    end
    object Qr_Os02OS2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS2CHAVE'
      Origin = 'SG_ASSOC.CADOS02.OS2CHAVE'
    end
    object Qr_Os02OS2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS2ITEM'
      Origin = 'SG_ASSOC.CADOS02.OS2ITEM'
    end
    object Qr_Os02OS2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS2CODPRO'
      Origin = 'SG_ASSOC.CADOS02.OS2CODPRO'
    end
    object Qr_Os02OS2MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'OS2MODELO'
      Origin = 'SG_ASSOC.CADOS02.OS2MODELO'
    end
    object Qr_Os02OS2MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'OS2MARCA'
      Origin = 'SG_ASSOC.CADOS02.OS2MARCA'
    end
    object Qr_Os02OS2SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'OS2SERIE'
      Origin = 'SG_ASSOC.CADOS02.OS2SERIE'
    end
    object Qr_Os02OS2NUMPAT: TStringField
      DisplayLabel = 'N'#250'mero Patrimonial'
      FieldName = 'OS2NUMPAT'
      Origin = 'SG_ASSOC.CADOS02.OS2NUMPAT'
    end
    object Qr_Os02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os02OS2OBS01: TStringField
      FieldName = 'OS2OBS01'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS01'
      Size = 130
    end
    object Qr_Os02OS2OBS02: TStringField
      FieldName = 'OS2OBS02'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS02'
      Size = 130
    end
    object Qr_Os02OS2ID_NEW: TFloatField
      FieldName = 'OS2ID_NEW'
    end
    object Qr_Os02OS2ID_OS1_NEW: TFloatField
      FieldName = 'OS2ID_OS1_NEW'
    end
  end
  object Qr_Os05: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS5CODEMP,'
      '       OS5LOTSEQ,'
      '       OS5CHAVE,'
      '       OS5ITEM,'
      '       OS5CODPRO,'
      '       OS5QTD,'
      '       OS5PU,'
      '       OS5DESC01,'
      '       OS5TOTDES,'
      '      PDNOME,PDUND from CADOS05,CADPRO'
      'where OS5CODEMP is null'
      'and PDCODEMP=OS5CODEMP'
      'and PDCODPRO=OS5CODPRO'
      '')
    Left = 472
    Top = 328
    object Qr_Os05OS5CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS5CODEMP'
      Origin = 'SG_ASSOC.CADOS05.OS5CODEMP'
    end
    object Qr_Os05OS5LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS5LOTSEQ'
      Origin = 'SG_ASSOC.CADOS05.OS5LOTSEQ'
    end
    object Qr_Os05OS5CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS5CHAVE'
      Origin = 'SG_ASSOC.CADOS05.OS5CHAVE'
    end
    object Qr_Os05OS5ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS5ITEM'
      Origin = 'SG_ASSOC.CADOS05.OS5ITEM'
    end
    object Qr_Os05OS5CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS5CODPRO'
      Origin = 'SG_ASSOC.CADOS05.OS5CODPRO'
    end
    object Qr_Os05OS5QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'OS5QTD'
      Origin = 'SG_ASSOC.CADOS05.OS5QTD'
    end
    object Qr_Os05OS5PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS5PU'
      Origin = 'SG_ASSOC.CADOS05.OS5PU'
    end
    object Qr_Os05OS5DESC01: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'OS5DESC01'
      Origin = 'SG_ASSOC.CADOS05.OS5DESC01'
    end
    object Qr_Os05OS5TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS5TOTDES'
      Origin = 'SG_ASSOC.CADOS05.OS5TOTDES'
    end
    object Qr_Os05PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os05PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os05OS5ID_NEW: TFloatField
      FieldName = 'OS5ID_NEW'
    end
    object Qr_Os05OS5ID_OS1_NEW: TFloatField
      FieldName = 'OS5ID_OS1_NEW'
    end
  end
  object Qr_Os04: TQuery
    OnCalcFields = Qr_Os04CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS4CODEMP,'
      '       OS4LOTSEQ,'
      '       OS4CHAVE,'
      '       OS4ITEM,'
      '       OS4CODPRO,'
      '       OS4QTD,'
      '       OS4PU,'
      '       OS4DESC01,'
      '       OS4TOTDES,'
      '      PDNOME,PDUND from CADOS04,CADPRO'
      'where OS4CODEMP is null'
      'and PDCODEMP=OS4CODEMP'
      'and PDCODPRO=OS4CODPRO')
    Left = 516
    Top = 328
    object Qr_Os04OS4CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS4CODEMP'
      Origin = 'SG_ASSOC.CADOS04.OS4CODEMP'
    end
    object Qr_Os04OS4LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS4LOTSEQ'
      Origin = 'SG_ASSOC.CADOS04.OS4LOTSEQ'
    end
    object Qr_Os04OS4CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS4CHAVE'
      Origin = 'SG_ASSOC.CADOS04.OS4CHAVE'
    end
    object Qr_Os04OS4ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS4ITEM'
      Origin = 'SG_ASSOC.CADOS04.OS4ITEM'
    end
    object Qr_Os04OS4CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS4CODPRO'
      Origin = 'SG_ASSOC.CADOS04.OS4CODPRO'
    end
    object Qr_Os04OS4QTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'OS4QTD'
      Origin = 'SG_ASSOC.CADOS04.OS4QTD'
    end
    object Qr_Os04OS4PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS4PU'
      Origin = 'SG_ASSOC.CADOS04.OS4PU'
    end
    object Qr_Os04OS4DESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'OS4DESC01'
      Origin = 'SG_ASSOC.CADOS04.OS4DESC01'
    end
    object Qr_Os04OS4TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS4TOTDES'
      Origin = 'SG_ASSOC.CADOS04.OS4TOTDES'
    end
    object Qr_Os04PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os04PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os04total_liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_liquido'
      Calculated = True
    end
    object Qr_Os04OS4ID_NEW: TFloatField
      FieldName = 'OS4ID_NEW'
    end
    object Qr_Os04OS4ID_OS1_NEW: TFloatField
      FieldName = 'OS4ID_OS1_NEW'
    end
  end
  object Qr_Os03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  OS3CODEMP,'
      '        OS3LOTSEQ,'
      '        OS3CHAVE,'
      '        OS3ITEM,'
      '        OS3CODPRO,'
      '        OS3QTD,'
      '      PDNOME,PDUND from CADOS03,CADPRO'
      'where OS3CODEMP is null'
      'and PDCODEMP=OS3CODEMP'
      'and PDCODPRO=OS3CODPRO')
    Left = 566
    Top = 328
    object Qr_Os03OS3CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS3CODEMP'
      Origin = 'SG_ASSOC.CADOS03.OS3CODEMP'
    end
    object Qr_Os03OS3LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS3LOTSEQ'
      Origin = 'SG_ASSOC.CADOS03.OS3LOTSEQ'
    end
    object Qr_Os03OS3CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS3CHAVE'
      Origin = 'SG_ASSOC.CADOS03.OS3CHAVE'
    end
    object Qr_Os03OS3ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS3ITEM'
      Origin = 'SG_ASSOC.CADOS03.OS3ITEM'
    end
    object Qr_Os03OS3CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS3CODPRO'
      Origin = 'SG_ASSOC.CADOS03.OS3CODPRO'
    end
    object Qr_Os03OS3QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'OS3QTD'
      Origin = 'SG_ASSOC.CADOS03.OS3QTD'
    end
    object Qr_Os03PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os03PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os03OS3ID_OS1_NEW: TFloatField
      FieldName = 'OS3ID_OS1_NEW'
    end
    object Qr_Os03OS3ID_NEW: TFloatField
      FieldName = 'OS3ID_NEW'
    end
  end
  object Qr_Os05D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS5DCODEMP,'
      '       OS5DLOTSEQ,'
      '       OS5DCHAVE,'
      '       OS5DITEM,'
      '       OS5DCODPRO,'
      '       OS5DLINHA,'
      '       OS5DDESC'
      '       from CADOS05D'
      'where OS5DCODEMP is null')
    Left = 430
    Top = 328
    object Qr_Os05DOS5DCODEMP: TFloatField
      FieldName = 'OS5DCODEMP'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCODEMP'
    end
    object Qr_Os05DOS5DLOTSEQ: TFloatField
      FieldName = 'OS5DLOTSEQ'
      Origin = 'SG_ASSOC.CADOS05D.OS5DLOTSEQ'
    end
    object Qr_Os05DOS5DCHAVE: TFloatField
      FieldName = 'OS5DCHAVE'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCHAVE'
    end
    object Qr_Os05DOS5DITEM: TFloatField
      FieldName = 'OS5DITEM'
      Origin = 'SG_ASSOC.CADOS05D.OS5DITEM'
    end
    object Qr_Os05DOS5DCODPRO: TFloatField
      FieldName = 'OS5DCODPRO'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCODPRO'
    end
    object Qr_Os05DOS5DLINHA: TFloatField
      FieldName = 'OS5DLINHA'
      Origin = 'SG_ASSOC.CADOS05D.OS5DLINHA'
    end
    object Qr_Os05DOS5DDESC: TStringField
      FieldName = 'OS5DDESC'
      Origin = 'SG_ASSOC.CADOS05D.OS5DDESC'
      Size = 60
    end
    object Qr_Os05DOS5DID_NEW: TFloatField
      FieldName = 'OS5DID_NEW'
    end
    object Qr_Os05DOS5DID_OS5_NEW: TFloatField
      FieldName = 'OS5DID_OS5_NEW'
    end
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = tb_ped02_preAfterInsert
    Left = 304
    Top = 336
    object tb_ped02_preP2ICMS_PERC: TFloatField
      FieldName = 'P2ICMS_PERC'
    end
    object tb_ped02_preP2ICMS_PPRED: TFloatField
      FieldName = 'P2ICMS_PPRED'
    end
    object tb_ped02_preP2ICMSSN_PERC: TFloatField
      FieldName = 'P2ICMSSN_PERC'
    end
    object tb_ped02_preP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object tb_ped02_preP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object tb_ped02_preP2ST_ICMSCRED: TFloatField
      FieldName = 'P2ST_ICMSCRED'
    end
    object tb_ped02_preP2ST_ICMSDEB: TFloatField
      FieldName = 'P2ST_ICMSDEB'
    end
    object tb_ped02_preP2MODBCST: TIntegerField
      FieldName = 'P2MODBCST'
    end
    object tb_ped02_preP2IPI_PERC: TFloatField
      FieldName = 'P2IPI_PERC'
    end
    object tb_ped02_preP2CST: TStringField
      FieldName = 'P2CST'
      Size = 3
    end
    object tb_ped02_preP2CSOSN_ORI: TIntegerField
      FieldName = 'P2CSOSN_ORI'
    end
    object tb_ped02_preP2CSOSN: TIntegerField
      FieldName = 'P2CSOSN'
    end
    object tb_ped02_preP2PIS_PERC: TFloatField
      FieldName = 'P2PIS_PERC'
    end
    object tb_ped02_preP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 4
    end
    object tb_ped02_preP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 4
    end
    object tb_ped02_preP2COFINS_PERC: TFloatField
      FieldName = 'P2COFINS_PERC'
    end
    object tb_ped02_preP2CONTESP: TIntegerField
      FieldName = 'P2CONTESP'
    end
    object tb_ped02_preP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object tb_ped02_preP2ICMS_PPRED_101: TFloatField
      FieldName = 'P2ICMS_PPRED_101'
    end
    object tb_ped02_preP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object tb_ped02_preP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object tb_ped02_preP2ST_ICMSCRED_101: TFloatField
      FieldName = 'P2ST_ICMSCRED_101'
    end
    object tb_ped02_preP2ST_ICMSDEB_101: TFloatField
      FieldName = 'P2ST_ICMSDEB_101'
    end
    object tb_ped02_preP2MODBCST_101: TFloatField
      FieldName = 'P2MODBCST_101'
    end
    object tb_ped02_preP2CFOP_ECF: TIntegerField
      FieldName = 'P2CFOP_ECF'
    end
    object tb_ped02_preP2CFOP_NF: TIntegerField
      FieldName = 'P2CFOP_NF'
    end
    object tb_ped02_preP2PRECO_MAXCONS: TFloatField
      FieldName = 'P2PRECO_MAXCONS'
    end
    object tb_ped02_preP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object tb_ped02_preP2CODEMP: TIntegerField
      FieldName = 'P2CODEMP'
    end
    object tb_ped02_preP2LOTSEQ: TIntegerField
      FieldName = 'P2LOTSEQ'
    end
    object tb_ped02_preP2CHAVE: TIntegerField
      FieldName = 'P2CHAVE'
    end
    object tb_ped02_preP2ORDEM: TIntegerField
      FieldName = 'P2ORDEM'
    end
    object tb_ped02_preP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object tb_ped02_preP2ITEM: TIntegerField
      FieldName = 'P2ITEM'
    end
    object tb_ped02_preP2CONS_PROPRIO: TIntegerField
      FieldName = 'P2CONS_PROPRIO'
    end
    object tb_ped02_prePDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02_preP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object tb_ped02_preP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object tb_ped02_preP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object tb_ped02_preP2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object tb_ped02_preP2DESCFIN_PERC: TFloatField
      FieldName = 'P2DESCFIN_PERC'
    end
    object tb_ped02_preP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object tb_ped02_preP2DESC_COMP: TStringField
      FieldName = 'P2DESC_COMP'
      Size = 10
    end
    object tb_ped02_preP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object tb_ped02_preP2DESC_PERC01: TFloatField
      FieldName = 'P2DESC_PERC01'
    end
    object tb_ped02_preP2DESC_PERC02: TFloatField
      FieldName = 'P2DESC_PERC02'
    end
    object tb_ped02_preP2DESC_PERC03: TFloatField
      FieldName = 'P2DESC_PERC03'
    end
    object tb_ped02_preP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object tb_ped02_preP2TIPO_PCO: TIntegerField
      FieldName = 'P2TIPO_PCO'
    end
    object tb_ped02_preP2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
    end
    object tb_ped02_preP2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
    end
    object tb_ped02_preP2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
      Size = 15
    end
    object tb_ped02_preP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object tb_ped02_preP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object tb_ped02_preP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object tb_ped02_preP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object tb_ped02_preP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 10
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
    end
    object tb_ped02_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02_preP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object tb_ped02_preP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object tb_ped02_preP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object tb_ped02_preP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object tb_ped02_preP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object tb_ped02_preP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object tb_ped02_preP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
      Size = 0
    end
  end
  object tb_ped02s_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = tb_ped02s_preAfterInsert
    Left = 344
    Top = 336
    object tb_ped02s_preP2SCODEMP: TIntegerField
      FieldName = 'P2SCODEMP'
    end
    object tb_ped02s_preP2SCHAVE: TIntegerField
      FieldName = 'P2SCHAVE'
    end
    object tb_ped02s_preP2SCHAVE_ANO: TIntegerField
      FieldName = 'P2SCHAVE_ANO'
    end
    object tb_ped02s_preP2SITEM: TIntegerField
      FieldName = 'P2SITEM'
    end
    object tb_ped02s_preP2SCODSER: TFloatField
      FieldName = 'P2SCODSER'
    end
    object tb_ped02s_preP2SQTD: TFloatField
      FieldName = 'P2SQTD'
    end
    object tb_ped02s_preP2SPDESC01: TFloatField
      FieldName = 'P2SPDESC01'
    end
    object tb_ped02s_preP2SPDESC02: TFloatField
      FieldName = 'P2SPDESC02'
    end
    object tb_ped02s_preP2SPDESC03: TFloatField
      FieldName = 'P2SPDESC03'
    end
    object tb_ped02s_preP2SPRECO: TStringField
      FieldName = 'P2SPRECO'
    end
    object tb_ped02s_preP2SDESC_COMP: TStringField
      FieldName = 'P2SDESC_COMP'
      Size = 500
    end
    object tb_ped02s_preP2SCST: TStringField
      FieldName = 'P2SCST'
      Size = 3
    end
    object tb_ped02s_preP2SCSOSN: TFloatField
      FieldName = 'P2SCSOSN'
    end
    object tb_ped02s_preP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
    end
    object tb_ped02s_preP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
    end
    object tb_ped02s_preP2SALIQISSQN: TFloatField
      FieldName = 'P2SALIQISSQN'
    end
    object tb_ped02s_preP2SSITUACAO: TFloatField
      FieldName = 'P2SSITUACAO'
    end
    object tb_ped02s_preP2SPCOTAB: TFloatField
      FieldName = 'P2SPCOTAB'
    end
    object tb_ped02s_preP2SPCOCUS: TFloatField
      FieldName = 'P2SPCOCUS'
    end
    object tb_ped02s_preP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
    end
    object tb_ped02s_preP2SDESCRAT: TFloatField
      FieldName = 'P2SDESCRAT'
    end
    object tb_ped02s_preP2SDESCFIN_PERC: TFloatField
      FieldName = 'P2SDESCFIN_PERC'
    end
    object tb_ped02s_preP2SDESCFIN_VALOR: TFloatField
      FieldName = 'P2SDESCFIN_VALOR'
    end
    object tb_ped02s_preP2SBCINSS: TFloatField
      FieldName = 'P2SBCINSS'
    end
    object tb_ped02s_preP2SPREDINSS: TFloatField
      FieldName = 'P2SPREDINSS'
    end
    object tb_ped02s_preP2SVREDINSS: TFloatField
      FieldName = 'P2SVREDINSS'
    end
    object tb_ped02s_preP2SPREDIRRF: TFloatField
      FieldName = 'P2SPREDIRRF'
    end
    object tb_ped02s_preP2SVREDIRRF: TFloatField
      FieldName = 'P2SVREDIRRF'
    end
    object tb_ped02s_preP2SALIQIRRF: TFloatField
      FieldName = 'P2SALIQIRRF'
    end
    object tb_ped02s_preP2SCFOP_NF: TFloatField
      FieldName = 'P2SCFOP_NF'
    end
    object tb_ped02s_preP2SCFOP_ECF: TFloatField
      FieldName = 'P2SCFOP_ECF'
    end
    object tb_ped02s_preP2SCODVEN: TFloatField
      FieldName = 'P2SCODVEN'
    end
    object tb_ped02s_prePDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02s_prePDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object tb_ped02s_preP2SCSOSN_ORI2: TFloatField
      FieldName = 'P2SCSOSN_ORI'
    end
    object tb_ped02s_preVALOR_TOTAL2: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object tb_ped02s_preP2SALIQINSS: TFloatField
      FieldName = 'P2SALIQINSS'
    end
    object tb_ped02s_preP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
    end
    object tb_ped02s_preP2SID_NEW: TFloatField
      FieldName = 'P2SID_NEW'
    end
    object tb_ped02s_preP2SID_PED01_NEW: TFloatField
      FieldName = 'P2SID_PED01_NEW'
    end
    object tb_ped02s_preP2SID_NEW_101: TFloatField
      FieldName = 'P2SID_NEW_101'
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 637
    Top = 113
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldName = 'requer_pedori'
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldName = 'al_IcmsTribDesonera'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
  end
  object cds_os02: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_os02AfterInsert
    Left = 197
    Top = 79
    object cds_os02OS2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS2CODEMP'
    end
    object cds_os02OS2LOTSEQ: TFloatField
      DisplayLabel = 'LotSeq'
      FieldName = 'OS2LOTSEQ'
    end
    object cds_os02OS2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS2CHAVE'
    end
    object cds_os02OS2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS2ITEM'
    end
    object cds_os02OS2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Prod'
      FieldName = 'OS2CODPRO'
    end
    object cds_os02OS2MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'OS2MODELO'
    end
    object cds_os02OS2MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'OS2MARCA'
    end
    object cds_os02OS2SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'OS2SERIE'
    end
    object cds_os02OS2NUMPAT: TStringField
      DisplayLabel = 'Num. Patrimonio'
      FieldName = 'OS2NUMPAT'
    end
    object cds_os02OS2OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es 01'
      FieldName = 'OS2OBS01'
      Size = 130
    end
    object cds_os02OS2OBS02: TStringField
      DisplayLabel = 'Observa'#245'es 02'
      FieldName = 'OS2OBS02'
      Size = 130
    end
    object cds_os02nompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 130
    end
    object cds_os02OS2ID_NEW: TFloatField
      DisplayLabel = 'Id New'
      FieldName = 'OS2ID_NEW'
    end
    object cds_os02OS2ID_OS1_NEW: TFloatField
      DisplayLabel = 'Id Os New'
      FieldName = 'OS2ID_OS1_NEW'
    end
    object cds_os02undpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 6
    end
  end
  object src_os02: TDataSource
    DataSet = cds_os02
    Left = 157
    Top = 303
  end
  object cds_os05: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_os05AfterInsert
    Left = 229
    Top = 79
    object cds_os05OS5CODEMP: TFloatField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'OS5CODEMP'
    end
    object cds_os05OS5LOTSEQ: TFloatField
      Alignment = taCenter
      DisplayLabel = 'LotSeq'
      FieldName = 'OS5LOTSEQ'
    end
    object cds_os05OS5CHAVE: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Chave'
      FieldName = 'OS5CHAVE'
    end
    object cds_os05OS5ITEM: TFloatField
      Alignment = taCenter
      DisplayLabel = #205'tem'
      FieldName = 'OS5ITEM'
    end
    object cds_os05OS5CODPRO: TFloatField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'OS5CODPRO'
    end
    object cds_os05OS5QTD: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde'
      FieldName = 'OS5QTD'
    end
    object cds_os05OS5PU: TFloatField
      Alignment = taCenter
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS5PU'
    end
    object cds_os05OS5DESC01: TFloatField
      Alignment = taCenter
      DisplayLabel = '%Desc'
      FieldName = 'OS5DESC01'
    end
    object cds_os05OS5TOTDES: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS5TOTDES'
    end
    object cds_os05und: TStringField
      Alignment = taCenter
      DisplayLabel = 'Und'
      FieldName = 'und'
      Size = 6
    end
    object cds_os05valor_total: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
    end
    object cds_os05OS5ID_NEW: TFloatField
      FieldName = 'OS5ID_NEW'
    end
    object cds_os05nompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 254
    end
    object cds_os05desc_alter: TStringField
      FieldName = 'desc_alter'
      Size = 3000
    end
    object cds_os05OS5ID_OS1_NEW: TFloatField
      FieldName = 'OS5ID_OS1_NEW'
    end
  end
  object src_os05: TDataSource
    DataSet = cds_os05
    Left = 365
    Top = 287
  end
  object cds_os04: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_os04AfterInsert
    Left = 269
    Top = 79
    object cds_os04OS4CODEMP: TFloatField
      DisplayLabel = 'C'#243'd Empresa'
      FieldName = 'OS4CODEMP'
    end
    object cds_os04OS4LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS4LOTSEQ'
    end
    object cds_os04OS4CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS4CHAVE'
    end
    object cds_os04OS4ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS4ITEM'
    end
    object cds_os04OS4CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Prod'
      FieldName = 'OS4CODPRO'
    end
    object cds_os04OS4QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'OS4QTD'
    end
    object cds_os04OS4PU: TFloatField
      DisplayLabel = 'P'#231'o Unit'
      FieldName = 'OS4PU'
    end
    object cds_os04OS4TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS4TOTDES'
    end
    object cds_os04OS4DESC01: TFloatField
      DisplayLabel = '% Desc 01'
      FieldName = 'OS4DESC01'
    end
    object cds_os04nompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 130
    end
    object cds_os04undpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 6
    end
    object cds_os04desc_alter: TStringField
      FieldName = 'desc_alter'
      Size = 3000
    end
    object cds_os04valor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
    end
    object cds_os04OS4ID_NEW: TFloatField
      FieldName = 'OS4ID_NEW'
    end
    object cds_os04OS4ID_OS1_NEW: TFloatField
      FieldName = 'OS4ID_OS1_NEW'
    end
  end
  object src_os04: TDataSource
    DataSet = cds_os04
    Left = 469
    Top = 279
  end
  object cds_os03: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_os03AfterInsert
    Left = 301
    Top = 81
    object cds_os03OS3CODEMP: TFloatField
      DisplayLabel = 'C'#243'd Empresa'
      FieldName = 'OS3CODEMP'
    end
    object cds_os03OS3LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS3LOTSEQ'
    end
    object cds_os03OS3CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS3CHAVE'
    end
    object cds_os03OS3ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS3ITEM'
    end
    object cds_os03OS3CODPRO: TFloatField
      DisplayLabel = 'C'#243'd. Prod'
      FieldName = 'OS3CODPRO'
    end
    object cds_os03OS3QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'OS3QTD'
    end
    object cds_os03nompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 130
    end
    object cds_os03undpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 6
    end
    object cds_os03OS3ID_NEW: TFloatField
      FieldName = 'OS3ID_NEW'
    end
    object cds_os03OS3ID_OS1_NEW: TFloatField
      FieldName = 'OS3ID_OS1_NEW'
    end
  end
  object src_os03: TDataSource
    DataSet = cds_os03
    Left = 333
    Top = 89
  end
  object cds_os05d: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_os05dAfterInsert
    Left = 421
    Top = 81
    object cds_os05dOS5DID_OS5_NEW: TFloatField
      FieldName = 'OS5DID_OS5_NEW'
    end
    object cds_os05dOS5DID_NEW: TFloatField
      FieldName = 'OS5DID_NEW'
    end
    object cds_os05dOS5DCODEMP: TFloatField
      FieldName = 'OS5DCODEMP'
    end
    object cds_os05dOS5DLOTSEQ: TFloatField
      FieldName = 'OS5DLOTSEQ'
    end
    object cds_os05dOS5DCHAVE: TFloatField
      FieldName = 'OS5DCHAVE'
    end
    object cds_os05dOS5DITEM: TFloatField
      FieldName = 'OS5DITEM'
    end
    object cds_os05dOS5DCODPRO: TFloatField
      FieldName = 'OS5DCODPRO'
    end
    object cds_os05dOS5DLINHA: TFloatField
      FieldName = 'OS5DLINHA'
    end
    object cds_os05dOS5DDESC: TStringField
      FieldName = 'OS5DDESC'
      Size = 60
    end
  end
end
