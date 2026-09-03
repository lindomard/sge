object Frm_Producao: TFrm_Producao
  Left = 49
  Top = 18
  Width = 792
  Height = 544
  Caption = 'Manuten'#231#227'o em Ordem de Produ'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 675
    Top = 0
    Width = 109
    Height = 513
    Align = alRight
    TabOrder = 0
    object sbSalvar: TSpeedButton
      Left = 40
      Top = 480
      Width = 23
      Height = 22
      Hint = 'Click Aqui Para Salvar as Configura'#231#245'es '#13#10'das colunas alteradas'
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
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sbSalvarClick
    end
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Ordem de Produ'#231#227'o'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
      OnKeyPress = MCODPROKeyPress
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
      Left = 1
      Top = 43
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Localizar Outras Chaves'
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
      Left = 1
      Top = 85
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Alterar o Registro Selecionado'
      Caption = '&Alterar'
      Enabled = False
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
      Left = 1
      Top = 127
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Gravar o registro que esta sendo editado'
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
      Left = 1
      Top = 169
      Width = 105
      Height = 43
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
    object BBIMPRIMIR: TBitBtn
      Left = 1
      Top = 255
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Imprimir o Pedido Selecionado'
      Caption = 'Imprimi&r'
      Enabled = False
      TabOrder = 5
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
    object BBCALCULAR: TBitBtn
      Left = 1
      Top = 297
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Calcular'
      Caption = '&Calcular'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBCONFIRMAR: TBitBtn
      Left = 1
      Top = 339
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Confirmar a Produ'#231#227'o '
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBCONFIRMARClick
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
      Top = 381
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Excluir Ordem de Produ'#231#227'o ja existentes'
      Caption = 'Excl&uir'
      Enabled = False
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
      Left = 1
      Top = 423
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    object bbImportar: TBitBtn
      Left = 1
      Top = 211
      Width = 105
      Height = 43
      Cursor = crHandPoint
      Hint = 'Importar atrav'#233's de pedidos de clientes'
      Caption = 'Im&portar'
      Enabled = False
      TabOrder = 10
      OnClick = bbImportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 513
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 673
      Height = 95
      Align = alTop
      Caption = 'Cabe'#231'alho:'
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 17
        Width = 73
        Height = 13
        Caption = 'Chave........:'
      end
      object Label2: TLabel
        Left = 164
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Data:'
      end
      object Label3: TLabel
        Left = 372
        Top = 17
        Width = 81
        Height = 13
        Caption = 'Previsto Para:'
      end
      object lbl_numdoc: TLabel
        Left = 12
        Top = 58
        Width = 180
        Height = 13
        Caption = 'N'#250'mero do Lote de Fabrica'#231#227'o:'
      end
      object lbl_dtvcto: TLabel
        Left = 333
        Top = 58
        Width = 120
        Height = 13
        Caption = 'Data de Vencimento:'
      end
      object Label6: TLabel
        Left = 9
        Top = 37
        Width = 74
        Height = 13
        Caption = 'Descri'#231#227'o...:'
      end
      object MCHAVE: TEdit
        Left = 86
        Top = 14
        Width = 64
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object MDATA: TMaskEdit
        Left = 198
        Top = 14
        Width = 73
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDATAExit
      end
      object MDATAPREV: TMaskEdit
        Left = 457
        Top = 13
        Width = 73
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 2
        Text = '  /  /    '
        OnExit = MDATAPREVExit
      end
      object MNUMLOT: TEdit
        Left = 198
        Top = 55
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = MNUMLOTExit
      end
      object MDATAVEN: TMaskEdit
        Left = 459
        Top = 54
        Width = 73
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = MDATAVENExit
      end
      object MNOME: TEdit
        Left = 86
        Top = 34
        Width = 359
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = MNOMEExit
      end
      object cb_origem: TCheckBox
        Left = 14
        Top = 74
        Width = 275
        Height = 17
        Caption = 'Materias primas de terceiros'
        TabOrder = 6
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 96
      Width = 673
      Height = 340
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = '&Produtos a Serem Produzidos'
        object GroupBox3: TGroupBox
          Left = 0
          Top = 227
          Width = 665
          Height = 85
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          Enabled = False
          TabOrder = 0
          object Label7: TLabel
            Left = 9
            Top = 17
            Width = 44
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object LGRADE: TLabel
            Left = 187
            Top = 16
            Width = 39
            Height = 13
            Caption = 'Grade:'
          end
          object Label9: TLabel
            Left = 10
            Top = 39
            Width = 52
            Height = 13
            Caption = 'Unidade:'
          end
          object Label10: TLabel
            Left = 122
            Top = 39
            Width = 75
            Height = 13
            Caption = 'Qtd.Prevista:'
          end
          object lbl_PU: TLabel
            Left = 302
            Top = 39
            Width = 86
            Height = 13
            Caption = 'Pre'#231'o Unit'#225'rio:'
          end
          object lbl_TOTAL: TLabel
            Left = 481
            Top = 41
            Width = 67
            Height = 13
            Caption = 'Valor Total:'
          end
          object MCODPRO: TEdit
            Left = 65
            Top = 14
            Width = 118
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = MCODPROExit
            OnKeyPress = MCODPROKeyPress
          end
          object MGRADE: TEdit
            Left = 230
            Top = 14
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = MGRADEExit
          end
          object MNOMPRO: TEdit
            Left = 316
            Top = 13
            Width = 324
            Height = 21
            Enabled = False
            ParentColor = True
            TabOrder = 2
          end
          object MUND: TEdit
            Left = 65
            Top = 35
            Width = 48
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 3
          end
          object MQTDPREV: TEdit
            Left = 206
            Top = 35
            Width = 82
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = MQTDPREVExit
          end
          object MPU: TEdit
            Left = 390
            Top = 37
            Width = 82
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = MPUExit
          end
          object PRO_GRAVAR: TBitBtn
            Left = 3
            Top = 61
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 6
            OnClick = PRO_GRAVARClick
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
          object PRO_EDITAR: TBitBtn
            Left = 104
            Top = 61
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 7
            OnClick = PRO_EDITARClick
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
          object PRO_CANCELAR: TBitBtn
            Left = 204
            Top = 61
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 8
            OnClick = PRO_CANCELARClick
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
          object PRO_EXCLUIR: TBitBtn
            Left = 304
            Top = 61
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 9
            OnClick = PRO_EXCLUIRClick
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
          object MTOTAL: TStaticText
            Left = 552
            Top = 37
            Width = 91
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            TabOrder = 10
          end
        end
        object STG_PP: TStringGrid
          Left = 0
          Top = 0
          Width = 665
          Height = 227
          Align = alClient
          ColCount = 8
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
          ParentFont = False
          TabOrder = 1
          OnDrawCell = STG_PPDrawCell
          OnEnter = STG_PPEnter
          OnExit = STG_PPExit
          OnKeyPress = STG_PPKeyPress
          OnSelectCell = STG_PPSelectCell
          ColWidths = (
            82
            48
            67
            33
            201
            72
            64
            64)
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&Mat'#233'rias Primas Utilizadas'
        ImageIndex = 1
        object STG_MP: TStringGrid
          Left = 0
          Top = 0
          Width = 665
          Height = 309
          Align = alClient
          ColCount = 10
          DefaultRowHeight = 15
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
          ParentFont = False
          TabOrder = 0
          OnDrawCell = STG_MPDrawCell
          OnEnter = STG_MPEnter
          OnExit = STG_MPExit
          OnKeyPress = STG_MPKeyPress
          OnSelectCell = STG_MPSelectCell
          ColWidths = (
            77
            48
            68
            70
            65
            72
            34
            175
            73
            72)
        end
      end
      object TabSheet3: TTabSheet
        Caption = '&Etapas de Produ'#231#227'o'
        ImageIndex = 2
        object GroupBox5: TGroupBox
          Left = 0
          Top = 206
          Width = 665
          Height = 103
          Align = alBottom
          Caption = 'Digita'#231#227'o:'
          TabOrder = 0
          object Label25: TLabel
            Left = 9
            Top = 17
            Width = 117
            Height = 13
            Caption = 'Descri'#231#227'o da Etapa:'
          end
          object Label26: TLabel
            Left = 9
            Top = 37
            Width = 123
            Height = 13
            Caption = 'Pessoa Respons'#225'vel:'
          end
          object Label27: TLabel
            Left = 11
            Top = 58
            Width = 125
            Height = 13
            Caption = 'Processo iniciado em:'
          end
          object Label28: TLabel
            Left = 215
            Top = 58
            Width = 14
            Height = 13
            Caption = #224's'
          end
          object Label29: TLabel
            Left = 320
            Top = 58
            Width = 81
            Height = 13
            Caption = 'Concluido em:'
          end
          object Label30: TLabel
            Left = 482
            Top = 58
            Width = 14
            Height = 13
            Caption = #224's'
          end
          object ET_NOMETA: TEdit
            Left = 138
            Top = 14
            Width = 366
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = ET_NOMETAExit
          end
          object ET_GRAVAR: TBitBtn
            Left = 3
            Top = 78
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 6
            OnClick = ET_GRAVARClick
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
          object ET_EDITAR: TBitBtn
            Left = 104
            Top = 77
            Width = 100
            Height = 22
            Caption = '&Editar'
            TabOrder = 7
            OnClick = ET_EDITARClick
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
          object ET_CANCELAR: TBitBtn
            Left = 204
            Top = 78
            Width = 100
            Height = 21
            Caption = 'Cancela&r'
            TabOrder = 8
            OnClick = ET_CANCELARClick
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
          object ET_EXCLUIR: TBitBtn
            Left = 304
            Top = 78
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 9
            OnClick = ET_EXCLUIRClick
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
          object ET_NOME: TEdit
            Left = 138
            Top = 34
            Width = 366
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = ET_NOMEExit
          end
          object ET_DATAI: TMaskEdit
            Left = 138
            Top = 54
            Width = 73
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnExit = ET_DATAIExit
          end
          object ET_HORAI: TMaskEdit
            Left = 238
            Top = 55
            Width = 75
            Height = 19
            Ctl3D = False
            EditMask = '!99:99:99;1; '
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 3
            Text = '  :  :  '
            OnExit = ET_HORAIExit
          end
          object ET_DATAF: TMaskEdit
            Left = 405
            Top = 54
            Width = 73
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 4
            Text = '  /  /    '
            OnExit = ET_DATAFExit
          end
          object ET_HORAF: TMaskEdit
            Left = 505
            Top = 55
            Width = 75
            Height = 19
            Ctl3D = False
            EditMask = '!99:99:99;1; '
            MaxLength = 8
            ParentCtl3D = False
            TabOrder = 5
            Text = '  :  :  '
            OnExit = ET_HORAFExit
          end
        end
        object STG_ETA: TStringGrid
          Left = 0
          Top = 0
          Width = 665
          Height = 206
          Align = alClient
          ColCount = 6
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          TabOrder = 1
          OnDrawCell = STG_ETADrawCell
          OnExit = STG_ETAExit
          OnGetEditMask = STG_ETAGetEditMask
          OnKeyPress = STG_ETAKeyPress
          OnSelectCell = STG_ETASelectCell
          ColWidths = (
            191
            196
            67
            65
            64
            61)
        end
      end
      object TabSheet4: TTabSheet
        Caption = '&Observa'#231#245'es'
        Enabled = False
        ImageIndex = 3
        object Label31: TLabel
          Left = 9
          Top = 15
          Width = 79
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object MOBS01: TEdit
          Left = 91
          Top = 12
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = MOBS01Exit
        end
        object MOBS02: TEdit
          Left = 91
          Top = 34
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = MOBS02Exit
        end
        object MOBS03: TEdit
          Left = 91
          Top = 56
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = MOBS03Exit
        end
        object MOBS04: TEdit
          Left = 91
          Top = 79
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = MOBS04Exit
        end
        object MOBS05: TEdit
          Left = 91
          Top = 101
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = MOBS05Exit
        end
        object MOBS06: TEdit
          Left = 91
          Top = 123
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = MOBS06Exit
        end
        object MOBS07: TEdit
          Left = 91
          Top = 146
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = MOBS07Exit
        end
        object MOBS08: TEdit
          Left = 91
          Top = 169
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = MOBS08Exit
        end
        object MOBS09: TEdit
          Left = 91
          Top = 191
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = MOBS09Exit
        end
        object MOBS10: TEdit
          Left = 91
          Top = 213
          Width = 359
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnExit = MOBS10Exit
        end
        object Memo1: TRichEdit
          Left = 4
          Top = 284
          Width = 495
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 10
          Visible = False
        end
      end
      object tsConfiguracao: TTabSheet
        Caption = 'Configura'#231#245'es'
        ImageIndex = 4
        object CB_MPGRUPO: TCheckBox
          Left = 3
          Top = 11
          Width = 275
          Height = 17
          TabStop = False
          Caption = 'Ao Imprimir Separar Materia Prima p/Grupo'
          TabOrder = 0
          OnExit = CB_MPGRUPOExit
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 474
      Width = 673
      Height = 38
      Align = alBottom
      Caption = 'Totais Realizados:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label17: TLabel
        Left = 12
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Produtos: Itens:'
      end
      object lbl_TOTPREAL: TLabel
        Left = 219
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label19: TLabel
        Left = 338
        Top = 14
        Width = 84
        Height = 13
        Caption = 'Mat.Primas: Itens:'
      end
      object lbl_TOTMPREAL: TLabel
        Left = 565
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label23: TLabel
        Left = 120
        Top = 15
        Width = 23
        Height = 13
        Caption = 'Qtd.:'
      end
      object Label24: TLabel
        Left = 462
        Top = 15
        Width = 23
        Height = 13
        Caption = 'Qtd.:'
      end
      object MTOTMPREAL: TStaticText
        Left = 595
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 0
      end
      object MQTDMPREAL: TStaticText
        Left = 489
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 1
      end
      object MITENSMPREAL: TStaticText
        Left = 425
        Top = 11
        Width = 30
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 2
      end
      object MQTDPREAL: TStaticText
        Left = 144
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 3
      end
      object MITENSPREAL: TStaticText
        Left = 88
        Top = 11
        Width = 30
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 4
      end
      object MTOTPREAL: TStaticText
        Left = 249
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 436
      Width = 673
      Height = 38
      Align = alBottom
      Caption = 'Totais Previstos:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label13: TLabel
        Left = 12
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Produtos: Itens:'
      end
      object lbl_TOTPPREV: TLabel
        Left = 218
        Top = 14
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label15: TLabel
        Left = 338
        Top = 14
        Width = 84
        Height = 13
        Caption = 'Mat.Primas: Itens:'
      end
      object lbl_TOTMPPREV: TLabel
        Left = 567
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label21: TLabel
        Left = 119
        Top = 15
        Width = 23
        Height = 13
        Caption = 'Qtd.:'
      end
      object Label22: TLabel
        Left = 463
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Qtd.:'
      end
      object MITENSPPREV: TStaticText
        Left = 88
        Top = 11
        Width = 30
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 0
      end
      object MQTDPPREV: TStaticText
        Left = 144
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 1
      end
      object MTOTPPREV: TStaticText
        Left = 249
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 2
      end
      object MITENSMPPREV: TStaticText
        Left = 425
        Top = 11
        Width = 30
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 3
      end
      object MTOTMPPREV: TStaticText
        Left = 595
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 4
      end
      object MQTDMPPREV: TStaticText
        Left = 489
        Top = 11
        Width = 73
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        TabOrder = 5
      end
    end
  end
end
