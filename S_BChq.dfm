object Frm_BChq: TFrm_BChq
  Left = 40
  Top = 171
  Width = 800
  Height = 412
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Baixa de Cheques Por Lote'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 688
    Top = 0
    Width = 104
    Height = 381
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 1
      Width = 100
      Height = 43
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
      Left = 0
      Top = 43
      Width = 100
      Height = 42
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
      Top = 84
      Width = 100
      Height = 42
      Cursor = crHandPoint
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
    object BBEXCLUIR: TBitBtn
      Left = 2
      Top = 125
      Width = 100
      Height = 42
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
    object BBGRAVAR: TBitBtn
      Left = 2
      Top = 166
      Width = 100
      Height = 42
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
    object BBLIMPAR: TBitBtn
      Left = 2
      Top = 208
      Width = 100
      Height = 42
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
      Left = 2
      Top = 250
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Caption = 'Im&primir'
      Enabled = False
      TabOrder = 6
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
    object BBSAIR: TBitBtn
      Left = 1
      Top = 334
      Width = 101
      Height = 42
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
    object bbExportar: TBitBtn
      Left = 1
      Top = 292
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Caption = '&Exportar'
      Enabled = False
      TabOrder = 8
      OnClick = bbExportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 381
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 353
      Width = 686
      Height = 27
      Align = alBottom
      TabOrder = 0
      object Label11: TLabel
        Left = 8
        Top = 9
        Width = 200
        Height = 13
        Caption = 'N'#250'mero de cheques selecionados.:'
      end
      object Label12: TLabel
        Left = 319
        Top = 9
        Width = 114
        Height = 13
        Caption = 'Total dos cheques.:'
      end
      object QTDCHQ: TEdit
        Left = 213
        Top = 2
        Width = 93
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 0
      end
      object TOTCHQ: TEdit
        Left = 444
        Top = 2
        Width = 131
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 686
      Height = 102
      Align = alTop
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 143
        Height = 13
        Caption = 'N'#250'mero do lote de baixa:'
      end
      object Label2: TLabel
        Left = 256
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Data:'
      end
      object Label3: TLabel
        Left = 82
        Top = 26
        Width = 66
        Height = 13
        Caption = 'Descri'#231#227'o.:'
      end
      object NUMLOT: TEdit
        Left = 155
        Top = 5
        Width = 88
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object MDATA: TMaskEdit
        Left = 290
        Top = 6
        Width = 97
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDATAExit
      end
      object OBS1: TEdit
        Left = 155
        Top = 23
        Width = 333
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object OBS2: TEdit
        Left = 155
        Top = 41
        Width = 333
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object OBS3: TEdit
        Left = 155
        Top = 59
        Width = 333
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object DTBRANCA: TMaskEdit
        Left = 496
        Top = 8
        Width = 118
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 5
        Text = '30/12/1899'
        Visible = False
      end
      object panel_caixa: TPanel
        Left = 1
        Top = 78
        Width = 684
        Height = 23
        Align = alBottom
        TabOrder = 6
        object Label18: TLabel
          Left = 61
          Top = 6
          Width = 88
          Height = 13
          Caption = 'Caixa Padr'#227'o..:'
          FocusControl = MCODCAI_PAD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 496
          Top = 6
          Width = 117
          Height = 13
          Caption = 'Lote de Movimento: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MCODCAI_PAD: TEdit
          Left = 154
          Top = 4
          Width = 61
          Height = 19
          Hint = 'Pressione <F3>-Para Consultar Pedidos'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = MCODCAI_PADExit
          OnKeyPress = MCODCAI_PADKeyPress
        end
        object MNOMCAI_PAD: TEdit
          Left = 214
          Top = 4
          Width = 274
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
        end
        object MLOTMOV: TEdit
          Left = 618
          Top = 3
          Width = 58
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = MLOTMOVExit
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 103
      Width = 686
      Height = 250
      Align = alClient
      Caption = 'Cheques Selecionados Para Baixa:'
      Enabled = False
      TabOrder = 2
      object Panel5: TPanel
        Left = 2
        Top = 183
        Width = 682
        Height = 65
        Align = alBottom
        TabOrder = 0
        object Label4: TLabel
          Left = 193
          Top = 5
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object lbl_banco: TLabel
          Left = 309
          Top = 7
          Width = 27
          Height = 13
          Caption = 'Bco:'
        end
        object Label6: TLabel
          Left = 380
          Top = 6
          Width = 34
          Height = 13
          Caption = 'Serie:'
        end
        object Label13: TLabel
          Left = 467
          Top = 5
          Width = 51
          Height = 13
          Caption = 'Agencia:'
        end
        object Label10: TLabel
          Left = 577
          Top = 6
          Width = 38
          Height = 13
          Caption = 'Conta:'
        end
        object Label7: TLabel
          Left = 2
          Top = 24
          Width = 48
          Height = 13
          Caption = 'Sacado:'
        end
        object Label8: TLabel
          Left = 308
          Top = 27
          Width = 38
          Height = 13
          Caption = 'Valor.:'
        end
        object Label9: TLabel
          Left = 456
          Top = 28
          Width = 49
          Height = 13
          Caption = 'Dt.Dep.:'
        end
        object Label14: TLabel
          Left = 99
          Top = 5
          Width = 41
          Height = 13
          Caption = 'Chave:'
        end
        object lbl_empresa: TLabel
          Left = 0
          Top = 5
          Width = 53
          Height = 13
          Caption = 'Empresa:'
        end
        object NUMCHQ: TEdit
          Left = 242
          Top = 3
          Width = 64
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = NUMCHQExit
        end
        object BANCO: TEdit
          Left = 333
          Top = 3
          Width = 44
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = BANCOExit
        end
        object SERIE: TEdit
          Left = 413
          Top = 3
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = SERIEExit
        end
        object AGENCIA: TEdit
          Left = 521
          Top = 3
          Width = 53
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = AGENCIAExit
        end
        object CONTA: TEdit
          Left = 620
          Top = 3
          Width = 71
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = CONTAExit
        end
        object ITEM_GRAVAR: TBitBtn
          Left = 4
          Top = 42
          Width = 100
          Height = 21
          Cursor = crHandPoint
          Caption = 'Grava&r'
          TabOrder = 10
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
        object ITEM_CANCELAR: TBitBtn
          Left = 152
          Top = 43
          Width = 100
          Height = 21
          Cursor = crHandPoint
          Caption = '&Cancelar'
          TabOrder = 11
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
        object bbItem_Excluir: TBitBtn
          Left = 304
          Top = 43
          Width = 100
          Height = 21
          Cursor = crHandPoint
          Caption = '&Excluir'
          TabOrder = 12
          OnClick = bbItem_ExcluirClick
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
        object NOMCLI: TEdit
          Left = 52
          Top = 23
          Width = 241
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 7
        end
        object VALOR: TEdit
          Left = 350
          Top = 24
          Width = 99
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 8
        end
        object DTDEP: TMaskEdit
          Left = 510
          Top = 24
          Width = 93
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 9
          Text = '  /  /    '
        end
        object bbItem_pesquisar: TBitBtn
          Left = 442
          Top = 44
          Width = 100
          Height = 21
          Cursor = crHandPoint
          Caption = '&Pesquisar'
          TabOrder = 13
          OnClick = bbItem_pesquisarClick
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
        object MSEQ: TEdit
          Left = 140
          Top = 3
          Width = 51
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = MSEQExit
        end
        object MCODEMP: TEdit
          Left = 52
          Top = 3
          Width = 45
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = MCODEMPExit
        end
      end
      object STG1: TStringGrid
        Left = 2
        Top = 15
        Width = 682
        Height = 168
        Align = alClient
        ColCount = 12
        DefaultRowHeight = 15
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnDrawCell = STG1DrawCell
        ColWidths = (
          64
          33
          50
          53
          64
          176
          79
          76
          64
          64
          64
          64)
      end
    end
  end
  object Qr_BCL01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBCL01 where BL1CODEMP is null')
    Left = 544
    Top = 32
    object Qr_BCL01BL1CODEMP: TFloatField
      FieldName = 'BL1CODEMP'
      Origin = 'SG_ASSOC.CADBCL01.BL1CODEMP'
    end
    object Qr_BCL01BL1CHAVE: TFloatField
      FieldName = 'BL1CHAVE'
      Origin = 'SG_ASSOC.CADBCL01.BL1CHAVE'
    end
    object Qr_BCL01BL1DATA: TDateTimeField
      FieldName = 'BL1DATA'
      Origin = 'SG_ASSOC.CADBCL01.BL1DATA'
    end
    object Qr_BCL01BL1OBS01: TStringField
      FieldName = 'BL1OBS01'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS01'
      Size = 60
    end
    object Qr_BCL01BL1OBS02: TStringField
      FieldName = 'BL1OBS02'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS02'
      Size = 60
    end
    object Qr_BCL01BL1OBS03: TStringField
      FieldName = 'BL1OBS03'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS03'
      Size = 60
    end
    object Qr_BCL01BL1CAIXAPAD: TFloatField
      FieldName = 'BL1CAIXAPAD'
      Origin = 'SG_ASSOC.CADBCL01.BL1CAIXAPAD'
    end
  end
  object Qr_BCL02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBCL02 where BL2CODEMP is null')
    Left = 584
    Top = 32
    object Qr_BCL02BL2CODEMP: TFloatField
      FieldName = 'BL2CODEMP'
      Origin = 'SG_ASSOC.CADBCL02.BL2CODEMP'
    end
    object Qr_BCL02BL2CHAVE: TFloatField
      FieldName = 'BL2CHAVE'
      Origin = 'SG_ASSOC.CADBCL02.BL2CHAVE'
    end
    object Qr_BCL02BL2SEQ: TFloatField
      FieldName = 'BL2SEQ'
      Origin = 'SG_ASSOC.CADBCL02.BL2SEQ'
    end
    object Qr_BCL02BL2CODCHQ: TFloatField
      FieldName = 'BL2CODCHQ'
      Origin = 'SG_ASSOC.CADBCL02.BL2CODCHQ'
    end
    object Qr_BCL02BL2LOTSEQ_CH: TFloatField
      FieldName = 'BL2LOTSEQ_CH'
      Origin = 'SG_ASSOC.CADBCL02.BL2LOTSEQ_CH'
    end
    object Qr_BCL02BL2CODEMP_CH: TFloatField
      FieldName = 'BL2CODEMP_CH'
      Origin = 'SG_ASSOC.CADBCL02.BL2CODEMP_CH'
    end
  end
end
