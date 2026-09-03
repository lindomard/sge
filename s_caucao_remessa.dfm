object Frm_caucao_remessa: TFrm_caucao_remessa
  Left = 396
  Top = 95
  Width = 1055
  Height = 513
  Caption = 'Remessa de Titulos para Cau'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 943
    Top = 0
    Width = 104
    Height = 482
    Align = alRight
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 1
      Width = 100
      Height = 43
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos'#13#10'Lotes de Comiss'#245'es'
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
      Top = 43
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Hint = 'Localiza Lotes'#13#10'Existentes'
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
      Left = 2
      Top = 84
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Hint = 'Altera Lote'#13#10'Selecionado'
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
    object BBEXCLUIR: TBitBtn
      Left = 2
      Top = 125
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Hint = 'Exclui Lote Existente'
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
      Hint = 'Gravar o Lote que esta sendo editado'
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
    object BBSAIR: TBitBtn
      Left = 1
      Top = 292
      Width = 101
      Height = 42
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
    object bbConfirma: TBitBtn
      Left = 4
      Top = 251
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Hint = 'Confirma a remessa'
      Caption = 'Confirma a Remessa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbConfirmaClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 482
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 177
      Width = 941
      Height = 304
      Align = alClient
      Caption = 'Pedidos Selecionados:'
      TabOrder = 0
      object Panel5: TPanel
        Left = 2
        Top = 257
        Width = 937
        Height = 45
        Align = alBottom
        TabOrder = 0
        object edt_desd: TEdit
          Left = 77
          Top = 2
          Width = 38
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_desdExit
        end
        object edt_dup: TEdit
          Left = 115
          Top = 2
          Width = 26
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = edt_dupExit
        end
        object ITEM_GRAVAR: TBitBtn
          Left = 3
          Top = 24
          Width = 100
          Height = 21
          Caption = 'Grava&r'
          TabOrder = 7
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
          Top = 22
          Width = 100
          Height = 21
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
        object bbitem_excluir: TBitBtn
          Left = 304
          Top = 22
          Width = 100
          Height = 21
          Caption = '&Excluir'
          TabOrder = 9
          OnClick = bbitem_excluirClick
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
        object edt_nomcli: TEdit
          Left = 250
          Top = 2
          Width = 412
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object edt_parcela: TEdit
          Left = 661
          Top = 2
          Width = 50
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object bbitem_pesq: TBitBtn
          Left = 442
          Top = 24
          Width = 100
          Height = 19
          Caption = '&Pesquisar'
          TabOrder = 10
          OnClick = bbitem_pesqClick
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
        object edt_dtvcto: TMaskEdit
          Left = 806
          Top = 2
          Width = 84
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          Text = '  /  /    '
        end
        object edt_numtit: TEdit
          Left = 14
          Top = 2
          Width = 64
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_numtitExit
        end
        object edt_valor: TEdit
          Left = 710
          Top = 2
          Width = 97
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 11
        end
        object edt_dtemis: TDateEdit
          Left = 140
          Top = 2
          Width = 110
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
          OnExit = edt_dtemisExit
        end
      end
      object DBGrid_caucao_det: TDBGrid
        Left = 2
        Top = 15
        Width = 937
        Height = 242
        Align = alClient
        DataSource = src_caucao_det
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
            FieldName = 'numero'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desd'
            Title.Alignment = taCenter
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dup'
            Title.Alignment = taCenter
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_emissao'
            Title.Alignment = taCenter
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_cliente'
            Title.Alignment = taCenter
            Width = 409
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'parcela'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Alignment = taCenter
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_vcto'
            Title.Alignment = taCenter
            Width = 84
            Visible = True
          end>
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 941
      Height = 176
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Dados Gerais'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 933
          Height = 134
          Align = alTop
          Enabled = False
          TabOrder = 0
          object Label1: TLabel
            Left = 7
            Top = 6
            Width = 160
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'N'#250'mero do lote:'
          end
          object Label2: TLabel
            Left = 268
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Data:'
          end
          object lbl_nome: TLabel
            Left = 7
            Top = 26
            Width = 160
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'digo da Conta Para Cr'#233'dito:'
          end
          object Label18: TLabel
            Left = 7
            Top = 63
            Width = 160
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Observa'#231#245'es:'
          end
          object Label4: TLabel
            Left = 588
            Top = 25
            Width = 38
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor.:'
          end
          object Label5: TLabel
            Left = 760
            Top = 25
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Id Caixa:'
          end
          object Label6: TLabel
            Left = 7
            Top = 44
            Width = 160
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'digo da Conta Para Debito:'
          end
          object Label7: TLabel
            Left = 588
            Top = 44
            Width = 38
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor.:'
          end
          object Label8: TLabel
            Left = 760
            Top = 44
            Width = 50
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Id Caixa:'
          end
          object Label3: TLabel
            Left = 612
            Top = 6
            Width = 160
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Situa'#231#227'o:'
          end
          object NUMLOT: TEdit
            Left = 173
            Top = 5
            Width = 85
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = NUMLOTExit
          end
          object edt_codcai_credito: TEdit
            Left = 173
            Top = 23
            Width = 85
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnExit = edt_codcai_creditoExit
            OnKeyPress = edt_codcai_creditoKeyPress
          end
          object edt_nomcai_credito: TEdit
            Left = 257
            Top = 23
            Width = 240
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_valor_credito: TCurrencyEdit
            Left = 632
            Top = 20
            Width = 107
            Height = 21
            TabStop = False
            AutoSize = False
            Ctl3D = False
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object edt_id_ldr_credito: TEdit
            Left = 812
            Top = 23
            Width = 120
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object edt_codcai_debito: TEdit
            Left = 173
            Top = 41
            Width = 85
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnExit = edt_codcai_debitoExit
            OnKeyPress = edt_codcai_debitoKeyPress
          end
          object edt_nomcai_debito: TEdit
            Left = 257
            Top = 41
            Width = 240
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object edt_valor_debito: TCurrencyEdit
            Left = 632
            Top = 39
            Width = 107
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 12040191
            Ctl3D = False
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object edt_id_ldr_debito: TEdit
            Left = 812
            Top = 41
            Width = 120
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object edt_memo_obs: TMemo
            Left = 173
            Top = 59
            Width = 760
            Height = 62
            Ctl3D = False
            Lines.Strings = (
              'edt_memo_obs')
            ParentCtl3D = False
            TabOrder = 10
          end
          object MDATA: TDateEdit
            Left = 305
            Top = 3
            Width = 121
            Height = 21
            Ctl3D = False
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 1
          end
          object cb_status: TComboBox
            Left = 788
            Top = 3
            Width = 145
            Height = 21
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 11
            Text = 'Pendente'
            Items.Strings = (
              'Pendente'
              'Confrmado')
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Configura'#231#245'es do Caixa'
        ImageIndex = 1
        object sbt_salva_conf: TSpeedButton
          Left = 375
          Top = 122
          Width = 194
          Height = 22
          Hint = 'Salvar Configura'#231#227'o'
          Caption = 'Salvar Padr'#227'o'
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
          OnClick = sbt_salva_confClick
        end
        object GroupBox_cred: TGroupBox
          Left = 0
          Top = 60
          Width = 933
          Height = 58
          Align = alTop
          Caption = 'Dados Para Cr'#233'dito:'
          TabOrder = 0
          object Label9: TLabel
            Left = 13
            Top = 18
            Width = 70
            Height = 13
            Caption = 'Departamento:'
          end
          object Label10: TLabel
            Left = 483
            Top = 18
            Width = 79
            Height = 13
            Caption = 'Centro de Custo:'
          end
          object Label14: TLabel
            Left = 12
            Top = 37
            Width = 121
            Height = 13
            Caption = 'Descri'#231#227'o do Movimento:'
          end
          object edt_coddep_cred: TEdit
            Left = 87
            Top = 16
            Width = 59
            Height = 19
            Hint = 'Pressione F3 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = edt_coddep_credExit
            OnKeyDown = edt_coddep_credKeyDown
          end
          object edt_nomdep_cred: TEdit
            Left = 145
            Top = 16
            Width = 300
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_codccu_cred: TEdit
            Left = 569
            Top = 16
            Width = 59
            Height = 19
            Hint = 'Pressione F3 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnExit = edt_codccu_credExit
            OnKeyDown = edt_codccu_credKeyDown
          end
          object edt_nomccu_cred: TEdit
            Left = 627
            Top = 16
            Width = 270
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_natdc_cred: TEdit
            Left = 896
            Top = 16
            Width = 23
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object edt_descmv_cred: TEdit
            Left = 145
            Top = 34
            Width = 774
            Height = 19
            Hint = 'Pressione F2 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnExit = edt_coddep_debExit
            OnKeyDown = edt_coddep_debKeyDown
          end
        end
        object GroupBox_deb: TGroupBox
          Left = 0
          Top = 0
          Width = 933
          Height = 60
          Align = alTop
          Caption = 'Dados Para D'#233'bitos:'
          TabOrder = 1
          object Label11: TLabel
            Left = 13
            Top = 18
            Width = 70
            Height = 13
            Caption = 'Departamento:'
          end
          object Label12: TLabel
            Left = 483
            Top = 18
            Width = 79
            Height = 13
            Caption = 'Centro de Custo:'
          end
          object Label13: TLabel
            Left = 12
            Top = 37
            Width = 121
            Height = 13
            Caption = 'Descri'#231#227'o do Movimento:'
          end
          object edt_coddep_deb: TEdit
            Left = 87
            Top = 16
            Width = 59
            Height = 19
            Hint = 'Pressione F3 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = edt_coddep_debExit
            OnKeyDown = edt_coddep_debKeyDown
          end
          object edt_nomdep_deb: TEdit
            Left = 145
            Top = 16
            Width = 300
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_codccu_deb: TEdit
            Left = 569
            Top = 16
            Width = 59
            Height = 19
            Hint = 'Pressione F3 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnExit = edt_codccu_debExit
            OnKeyDown = edt_codccu_debKeyDown
          end
          object edt_nomccu_deb: TEdit
            Left = 627
            Top = 16
            Width = 270
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_natdc_deb: TEdit
            Left = 896
            Top = 16
            Width = 23
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object edt_descmv_deb: TEdit
            Left = 145
            Top = 34
            Width = 774
            Height = 19
            Hint = 'Pressione F2 para consultar'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnExit = edt_coddep_debExit
            OnKeyDown = edt_coddep_debKeyDown
          end
        end
      end
    end
  end
  object Qr_tit_caucao_cab: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCL01 where CL1CODEMP is null')
    Left = 576
    Top = 72
    object Qr_tit_caucao_cabTC_CHAVE_ID: TFloatField
      FieldName = 'TC_CHAVE_ID'
    end
    object Qr_tit_caucao_cabTC_ID_LDR_CREDITO: TFloatField
      FieldName = 'TC_ID_LDR_CREDITO'
    end
    object Qr_tit_caucao_cabTC_VALOR_CREDITO: TFloatField
      FieldName = 'TC_VALOR_CREDITO'
    end
    object Qr_tit_caucao_cabTC_ID_LDR_DEBITO: TFloatField
      FieldName = 'TC_ID_LDR_DEBITO'
    end
    object Qr_tit_caucao_cabTC_VALOR_DEBITO: TFloatField
      FieldName = 'TC_VALOR_DEBITO'
    end
    object Qr_tit_caucao_cabTC_OBSERVACOES: TMemoField
      FieldName = 'TC_OBSERVACOES'
      BlobType = ftMemo
    end
    object Qr_tit_caucao_cabTC_CODBCO_DEBITO: TFloatField
      FieldName = 'TC_CODBCO_DEBITO'
    end
    object Qr_tit_caucao_cabnombco_credito: TStringField
      FieldName = 'nombco_credito'
      Size = 100
    end
    object Qr_tit_caucao_cabnombco_debito: TStringField
      FieldName = 'nombco_debito'
      Size = 100
    end
    object Qr_tit_caucao_cabTC_CODBCO_CREDITO: TFloatField
      FieldName = 'TC_CODBCO_CREDITO'
    end
    object Qr_tit_caucao_cabTC_DATA: TDateTimeField
      FieldName = 'TC_DATA'
    end
    object Qr_tit_caucao_cabTC_DATHOR_CONF: TDateTimeField
      FieldName = 'TC_DATHOR_CONF'
    end
  end
  object Qr_tit_caucao_det: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CL2CODEMP,CL2CHAVE,CL2SEQ'
      '       ,CL2DOC,CL2NUMERO,CL2DESD'
      '       ,CL2DUP,CL2CHAVEP,CL2ORDEMP,CL2CODEMPD'
      '       ,CL2VALCOM,CL2VALDOC,CL2VALFRE'
      '       ,CL2VALICMSR,CL2SEMCOM,CL2VALACRE'
      '       ,CL2VALCTL,CL2LOTSEQ,CL2LOTSEQ_DC'
      '       ,CL2DTEMIS,CL2CODECF,CL2DTVCTO'
      '       ,CL2VALDESC'
      '       ,CL2DTBX,CL2CODCLI,CRAZAO'
      ' from CADCL02,CADCLI where CL2CODEMP=0'
      ' and CCODCLI=CL2CODCLI'
      '')
    Left = 664
    Top = 72
    object Qr_tit_caucao_detTCD_CHAVE_ID: TFloatField
      FieldName = 'TCD_CHAVE_ID'
    end
    object Qr_tit_caucao_detTCD_CHAVE_ID_CAB: TFloatField
      FieldName = 'TCD_CHAVE_ID_CAB'
    end
    object Qr_tit_caucao_detTCD_ID_TIT: TFloatField
      FieldName = 'TCD_ID_TIT'
    end
    object Qr_tit_caucao_detnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 100
    end
    object Qr_tit_caucao_detparcela: TStringField
      FieldName = 'parcela'
      Size = 10
    end
    object Qr_tit_caucao_detvalor: TFloatField
      FieldName = 'valor'
    end
    object Qr_tit_caucao_detdt_vcto: TDateTimeField
      FieldName = 'dt_vcto'
    end
    object Qr_tit_caucao_detnumero: TFloatField
      FieldName = 'numero'
    end
    object Qr_tit_caucao_detdesd: TStringField
      FieldName = 'desd'
      Size = 2
    end
    object Qr_tit_caucao_detdup: TFloatField
      FieldName = 'dup'
    end
    object Qr_tit_caucao_detTCD_ID_LDR: TFloatField
      FieldName = 'TCD_ID_LDR'
    end
    object Qr_tit_caucao_detTCD_CODCAI_ANTES: TFloatField
      FieldName = 'TCD_CODCAI_ANTES'
    end
  end
  object cds_caucao_det: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 117
    object cds_caucao_detTCD_CHAVE_ID: TFloatField
      DisplayLabel = 'Chave id'
      FieldName = 'TCD_CHAVE_ID'
    end
    object cds_caucao_detTCD_CHAVE_ID_CAB: TFloatField
      DisplayLabel = 'Id do Cabecalho'
      FieldName = 'TCD_CHAVE_ID_CAB'
    end
    object cds_caucao_detnumero: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'numero'
    end
    object cds_caucao_detdesd: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'desd'
      Size = 2
    end
    object cds_caucao_detdup: TIntegerField
      DisplayLabel = 'Dup'
      FieldName = 'dup'
    end
    object cds_caucao_detdt_emissao: TDateTimeField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'dt_emissao'
    end
    object cds_caucao_detnome_cliente: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'nome_cliente'
      Size = 100
    end
    object cds_caucao_detparcela: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Size = 10
    end
    object cds_caucao_detvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object cds_caucao_detdt_vcto: TDateTimeField
      DisplayLabel = 'Dt Vcto'
      FieldName = 'dt_vcto'
    end
    object cds_caucao_detTCD_CODCAI_ANTES: TFloatField
      FieldName = 'TCD_CODCAI_ANTES'
    end
    object cds_caucao_detTCD_ID_LDR: TFloatField
      FieldName = 'TCD_ID_LDR'
    end
    object cds_caucao_detTCD_ID_TIT: TFloatField
      DisplayLabel = 'Chave Id do Titulo'
      FieldName = 'TCD_ID_TIT'
    end
  end
  object src_caucao_det: TDataSource
    DataSet = cds_caucao_det
    Left = 640
    Top = 131
  end
end
