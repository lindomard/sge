object Frm_Trocas: TFrm_Trocas
  Left = 91
  Top = 149
  Width = 790
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Troca Simplificada de Mercadorias'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 678
    Top = 0
    Width = 104
    Height = 436
    Align = alRight
    TabOrder = 0
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
    object BBEXCLUIR: TBitBtn
      Left = 2
      Top = 194
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = 'Excluir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Top = 359
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
    object BBIMPRIMIR: TBitBtn
      Left = 2
      Top = 239
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
    object bbEfetivar: TBitBtn
      Left = 3
      Top = 280
      Width = 100
      Height = 39
      Cursor = crHandPoint
      Caption = '&Efetivar Trocas'
      TabOrder = 8
      OnClick = bbEfetivarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEmitirNF: TBitBtn
      Left = 3
      Top = 321
      Width = 100
      Height = 39
      Cursor = crHandPoint
      Caption = 'Emitir &Notas'
      TabOrder = 9
      Visible = False
      OnClick = bbEmitirNFClick
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 436
    Align = alClient
    TabOrder = 1
    object Panel_cab: TPanel
      Left = 1
      Top = 1
      Width = 676
      Height = 99
      Align = alTop
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 71
        Top = 5
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object Label2: TLabel
        Left = 199
        Top = 5
        Width = 26
        Height = 13
        Caption = 'Data:'
      end
      object Label3: TLabel
        Left = 33
        Top = 24
        Width = 71
        Height = 13
        Caption = 'C'#243'digo Cliente:'
      end
      object Label4: TLabel
        Left = 6
        Top = 42
        Width = 100
        Height = 13
        Caption = 'C'#243'digo do Vendedor:'
      end
      object Label5: TLabel
        Left = 36
        Top = 59
        Width = 66
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object CHAVE: TEdit
        Left = 107
        Top = 2
        Width = 78
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DATA: TMaskEdit
        Left = 227
        Top = 2
        Width = 91
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = DATAExit
      end
      object CODCLI: TEdit
        Left = 107
        Top = 20
        Width = 78
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object NOMCLI: TEdit
        Left = 184
        Top = 20
        Width = 333
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object CODVEN: TEdit
        Left = 107
        Top = 38
        Width = 78
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 184
        Top = 38
        Width = 333
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object OBS01: TEdit
        Left = 107
        Top = 56
        Width = 410
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = OBS01Exit
        OnKeyPress = OBS01KeyPress
      end
      object OBS02: TEdit
        Left = 107
        Top = 74
        Width = 410
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = OBS02Exit
        OnKeyPress = OBS02KeyPress
      end
      object CB_CHEGARORI: TCheckBox
        Left = 523
        Top = 73
        Width = 154
        Height = 17
        Caption = 'N'#227'o Verificar Venda Origem'
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 8
      end
      object GB_CAIXA: TGroupBox
        Left = 521
        Top = 3
        Width = 151
        Height = 62
        Caption = 'Caixa Padr'#227'o'
        TabOrder = 9
        Visible = False
        object MCODCAI: TEdit
          Left = 10
          Top = 15
          Width = 72
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = MCODCAIExit
        end
        object CB_USUARIO_MAN: TCheckBox
          Left = 8
          Top = 38
          Width = 121
          Height = 17
          Caption = 'Usuario Manipula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = CB_USUARIO_MANClick
        end
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 100
      Width = 676
      Height = 335
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = '&Venda de Origem'
        object gb_origemdev: TGroupBox
          Left = 0
          Top = 0
          Width = 668
          Height = 137
          Align = alTop
          Caption = '&Venda de Origem'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object SB_PADRAO: TSpeedButton
            Left = 577
            Top = 116
            Width = 96
            Height = 19
            Caption = '&Manter Padr'#227'o'
            Flat = True
            OnClick = SB_PADRAOClick
          end
          object STG_ORI: TStringGrid
            Left = 1
            Top = 14
            Width = 666
            Height = 82
            Align = alTop
            ColCount = 6
            DefaultRowHeight = 15
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 0
            OnDrawCell = STG_ORIDrawCell
            ColWidths = (
              59
              76
              94
              321
              85
              64)
          end
          object ORI_CODEMP: TEdit
            Left = 1
            Top = 95
            Width = 61
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = ORI_CODEMPEnter
          end
          object ORI_CHAVE: TEdit
            Left = 61
            Top = 95
            Width = 77
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = ORI_CHAVEEnter
            OnExit = ORI_CHAVEExit
          end
          object ORI_DATA: TEdit
            Left = 137
            Top = 95
            Width = 97
            Height = 19
            TabStop = False
            Ctl3D = False
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object ORI_CLIENTE: TEdit
            Left = 233
            Top = 95
            Width = 323
            Height = 19
            TabStop = False
            Ctl3D = False
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object ORI_VALOR: TEdit
            Left = 555
            Top = 95
            Width = 87
            Height = 19
            TabStop = False
            Ctl3D = False
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object ORI_GRAVAR: TBitBtn
            Left = 3
            Top = 114
            Width = 100
            Height = 21
            Caption = 'Gravar'
            Enabled = False
            TabOrder = 6
            OnClick = ORI_GRAVARClick
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
          object ORI_EDITAR: TBitBtn
            Left = 104
            Top = 114
            Width = 100
            Height = 21
            Caption = 'Editar'
            Enabled = False
            TabOrder = 7
            OnClick = ORI_EDITARClick
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
          object ORI_CANCELAR: TBitBtn
            Left = 204
            Top = 114
            Width = 100
            Height = 21
            Caption = 'Cancelar'
            Enabled = False
            TabOrder = 8
            OnClick = ORI_CANCELARClick
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
          object ORI_EXCLUIR: TBitBtn
            Left = 304
            Top = 114
            Width = 100
            Height = 21
            Caption = 'Excluir'
            Enabled = False
            TabOrder = 9
            OnClick = ORI_EXCLUIRClick
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
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 137
          Width = 668
          Height = 170
          Align = alClient
          Caption = 'Mercadorias Vendidas:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object STG_VEN: TStringGrid
            Left = 1
            Top = 14
            Width = 666
            Height = 155
            Align = alClient
            ColCount = 14
            DefaultRowHeight = 15
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 0
            OnDrawCell = STG_VENDrawCell
            ColWidths = (
              45
              29
              66
              61
              75
              69
              72
              64
              64
              64
              64
              64
              64
              64)
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&Trocas'
        ImageIndex = 1
        object gb_mercdev: TGroupBox
          Left = 0
          Top = 0
          Width = 668
          Height = 104
          Align = alTop
          Caption = 'Mercadorias &Devolvidas:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label6: TLabel
            Left = 416
            Top = 85
            Width = 83
            Height = 13
            Caption = 'Total Devolvidas:'
          end
          object STG_DEV: TStringGrid
            Left = 1
            Top = 14
            Width = 666
            Height = 50
            Align = alTop
            ColCount = 7
            DefaultRowHeight = 15
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            ScrollBars = ssVertical
            TabOrder = 0
            OnDrawCell = STG_DEVDrawCell
            ColWidths = (
              82
              62
              83
              61
              214
              69
              72)
          end
          object DEV_CODPRO: TEdit
            Left = 1
            Top = 62
            Width = 84
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = DEV_CODPROEnter
            OnExit = DEV_CODPROExit
            OnKeyDown = DEV_CODPROKeyDown
            OnKeyPress = DEV_CODPROKeyPress
          end
          object DEV_LOTE: TEdit
            Left = 84
            Top = 62
            Width = 63
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = DEV_LOTEEnter
            OnExit = DEV_LOTEExit
            OnKeyDown = DEV_LOTEKeyDown
          end
          object DEV_DTVCTO: TMaskEdit
            Left = 146
            Top = 62
            Width = 74
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            Text = '  /  /    '
            OnEnter = DEV_DTVCTOEnter
            OnExit = DEV_DTVCTOExit
            OnKeyDown = DEV_LOTEKeyDown
          end
          object DEV_QTD: TEdit
            Left = 219
            Top = 62
            Width = 63
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = DEV_QTDEnter
            OnExit = DEV_QTDExit
          end
          object DEV_NOMPRO: TEdit
            Left = 281
            Top = 62
            Width = 216
            Height = 19
            TabStop = False
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DEV_PU: TEdit
            Left = 496
            Top = 62
            Width = 70
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 6
            OnEnter = DEV_PUEnter
            OnExit = DEV_PUExit
          end
          object DEV_TOTAL: TEdit
            Left = 565
            Top = 62
            Width = 74
            Height = 19
            TabStop = False
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DEV_GRAVAR: TBitBtn
            Left = 3
            Top = 81
            Width = 100
            Height = 21
            Caption = 'Gravar'
            Enabled = False
            TabOrder = 8
            OnClick = DEV_GRAVARClick
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
          object DEV_EDITAR: TBitBtn
            Left = 104
            Top = 81
            Width = 100
            Height = 21
            Caption = 'Editar'
            Enabled = False
            TabOrder = 9
            OnClick = DEV_EDITARClick
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
          object DEV_CANCELAR: TBitBtn
            Left = 204
            Top = 81
            Width = 100
            Height = 21
            Caption = 'Cancelar'
            Enabled = False
            TabOrder = 10
            OnClick = DEV_CANCELARClick
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
          object DEV_EXCLUIR: TBitBtn
            Left = 304
            Top = 81
            Width = 100
            Height = 21
            Caption = 'Excluir'
            Enabled = False
            TabOrder = 11
            OnClick = DEV_EXCLUIRClick
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
          object ST_TOTDEV: TStaticText
            Left = 514
            Top = 84
            Width = 137
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = '0.00'
            TabOrder = 12
          end
        end
        object gb_mercent: TGroupBox
          Left = 0
          Top = 104
          Width = 668
          Height = 106
          Align = alTop
          Caption = 'Mercadorias &Entregues:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object Label7: TLabel
            Left = 416
            Top = 86
            Width = 78
            Height = 13
            Caption = 'Total Entregues:'
          end
          object STG_ENT: TStringGrid
            Left = 1
            Top = 14
            Width = 666
            Height = 50
            Align = alTop
            ColCount = 7
            DefaultRowHeight = 15
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            ScrollBars = ssVertical
            TabOrder = 0
            OnDrawCell = STG_ENTDrawCell
            ColWidths = (
              70
              62
              83
              61
              214
              68
              72)
          end
          object ENT_TOTAL: TEdit
            Left = 565
            Top = 63
            Width = 74
            Height = 19
            TabStop = False
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object ENT_PU: TEdit
            Left = 496
            Top = 63
            Width = 70
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = ENT_PUEnter
            OnExit = ENT_PUExit
          end
          object ENT_NOMPRO: TEdit
            Left = 280
            Top = 63
            Width = 217
            Height = 19
            TabStop = False
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object ENT_QTD: TEdit
            Left = 219
            Top = 63
            Width = 62
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = ENT_QTDEnter
            OnExit = ENT_QTDExit
          end
          object ENT_DTVCTO: TMaskEdit
            Left = 134
            Top = 63
            Width = 86
            Height = 19
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            Text = '  /  /    '
            OnEnter = ENT_DTVCTOEnter
            OnExit = ENT_DTVCTOExit
          end
          object ENT_LOTE: TEdit
            Left = 72
            Top = 63
            Width = 63
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = ENT_LOTEEnter
            OnExit = ENT_LOTEExit
            OnKeyDown = ENT_LOTEKeyDown
          end
          object ENT_CODPRO: TEdit
            Left = 1
            Top = 63
            Width = 72
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = ENT_CODPROEnter
            OnExit = ENT_CODPROExit
            OnKeyDown = ENT_CODPROKeyDown
            OnKeyPress = ENT_CODPROKeyPress
          end
          object ENT_EXCLUIR: TBitBtn
            Left = 304
            Top = 83
            Width = 100
            Height = 21
            Caption = 'Excluir'
            Enabled = False
            TabOrder = 11
            OnClick = ENT_EXCLUIRClick
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
          object ENT_CANCELAR: TBitBtn
            Left = 204
            Top = 83
            Width = 100
            Height = 21
            Caption = 'Cancelar'
            Enabled = False
            TabOrder = 10
            OnClick = ENT_CANCELARClick
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
          object ENT_EDITAR: TBitBtn
            Left = 104
            Top = 83
            Width = 100
            Height = 21
            Caption = 'Editar'
            Enabled = False
            TabOrder = 9
            OnClick = ENT_EDITARClick
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
          object ENT_GRAVAR: TBitBtn
            Left = 3
            Top = 83
            Width = 100
            Height = 21
            Caption = 'Gravar'
            Enabled = False
            TabOrder = 8
            OnClick = ENT_GRAVARClick
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
          object ST_TOTENT: TStaticText
            Left = 514
            Top = 85
            Width = 137
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = '0.00'
            TabOrder = 12
          end
        end
        object gb_totais: TGroupBox
          Left = 0
          Top = 210
          Width = 668
          Height = 97
          Align = alClient
          Caption = 'Totais:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label8: TLabel
            Left = 9
            Top = 24
            Width = 78
            Height = 13
            Caption = 'Total Devolvido:'
          end
          object Label9: TLabel
            Left = 31
            Top = 41
            Width = 54
            Height = 13
            Caption = 'Descontos:'
            Visible = False
          end
          object Label10: TLabel
            Left = 17
            Top = 60
            Width = 66
            Height = 13
            Caption = 'Total L'#237'quido:'
          end
          object Label11: TLabel
            Left = 206
            Top = 24
            Width = 81
            Height = 13
            Caption = 'Total  Entregues:'
          end
          object Label12: TLabel
            Left = 230
            Top = 43
            Width = 54
            Height = 13
            Caption = 'Descontos:'
            Visible = False
          end
          object Label13: TLabel
            Left = 216
            Top = 60
            Width = 66
            Height = 13
            Caption = 'Total L'#237'quido:'
          end
          object Shape1: TShape
            Left = 200
            Top = 6
            Width = 1
            Height = 87
          end
          object Shape2: TShape
            Left = 406
            Top = 6
            Width = 1
            Height = 87
          end
          object Label14: TLabel
            Left = 407
            Top = 6
            Width = 266
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Diferen'#231'a do Acerto'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 420
            Top = 22
            Width = 81
            Height = 13
            Caption = 'Pagar ao Cliente:'
          end
          object Label16: TLabel
            Left = 408
            Top = 44
            Width = 94
            Height = 13
            Caption = 'Receber do Cliente:'
          end
          object Label17: TLabel
            Left = 468
            Top = 65
            Width = 32
            Height = 13
            Caption = 'Forma:'
          end
          object Label18: TLabel
            Left = 202
            Top = 6
            Width = 203
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Resumo das Mercadorias Entregues'
            Color = clBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 41
            Top = 6
            Width = 158
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Mercadorias Devolvidas'
            Color = clBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object TOTALDEV: TEdit
            Left = 92
            Top = 21
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DESCDEV: TEdit
            Left = 92
            Top = 39
            Width = 101
            Height = 19
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
            OnEnter = DESCDEVEnter
            OnExit = DESCDEVExit
          end
          object TOTLIQDEV: TEdit
            Left = 92
            Top = 57
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object TOTALENT: TEdit
            Left = 292
            Top = 23
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DESCENT: TEdit
            Left = 292
            Top = 41
            Width = 101
            Height = 19
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnEnter = DESCENTEnter
            OnExit = DESCENTExit
          end
          object TOTLIQENT: TEdit
            Left = 292
            Top = 59
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object TROCO: TEdit
            Left = 512
            Top = 20
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object RECEBIDO: TEdit
            Left = 512
            Top = 38
            Width = 101
            Height = 19
            TabStop = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object CB_FORMAPAG: TComboBox
            Left = 511
            Top = 57
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 8
            Text = 'CB_FORMAPAG'
          end
        end
      end
      object tsConfigMaster: TTabSheet
        Caption = 'Configura'#231#245'es Master'
        ImageIndex = 2
        object Label20: TLabel
          Left = 17
          Top = 91
          Width = 129
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Forma pgto da Devolu'#231#227'o: '
        end
        object Label21: TLabel
          Left = 18
          Top = 109
          Width = 129
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Forma pgto da Venda::'
          Visible = False
        end
        object cb_baixar_titulo: TCheckBox
          Left = 16
          Top = 32
          Width = 417
          Height = 17
          Caption = 'Efetuar Baixas dos Titulos ao Emitir os Documentos'
          TabOrder = 0
          Visible = False
          OnClick = cb_baixar_tituloClick
        end
        object edt_codfp_dev: TEdit
          Left = 145
          Top = 87
          Width = 63
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_codfp_devExit
          OnKeyPress = edt_codfp_devKeyPress
        end
        object edt_nomfp_dev: TEdit
          Left = 207
          Top = 87
          Width = 274
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object edt_natfp_dev: TEdit
          Left = 483
          Top = 87
          Width = 126
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object cb_fp_dev_evalido: TCheckBox
          Left = 612
          Top = 88
          Width = 97
          Height = 17
          Caption = 'Ok'
          Enabled = False
          TabOrder = 4
        end
        object edt_codfp_vda: TEdit
          Left = 145
          Top = 105
          Width = 63
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          OnExit = edt_codfp_vdaExit
          OnKeyPress = edt_codfp_vdaKeyPress
        end
        object edt_nomfp_vda: TEdit
          Left = 207
          Top = 105
          Width = 274
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          Visible = False
        end
        object edt_natfp_vda: TEdit
          Left = 483
          Top = 105
          Width = 126
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
          Visible = False
        end
        object cb_fp_vda_evalido: TCheckBox
          Left = 611
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Ok'
          Enabled = False
          TabOrder = 8
          Visible = False
        end
        object bbSalvarPadrao: TBitBtn
          Left = 234
          Top = 155
          Width = 191
          Height = 38
          Cursor = crHandPoint
          Hint = 'Gravar pedido que esta sendo editado'
          Caption = 'Salvar Padr'#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = bbSalvarPadraoClick
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
      end
    end
  end
  object TEMP: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 696
    Top = 40
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 344
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
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
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
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
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
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 413
    Top = 201
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
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
  end
end
