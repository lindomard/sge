object Frm_RCob: TFrm_RCob
  Left = 40
  Top = 109
  Width = 744
  Height = 374
  Caption = 'Relat'#243'rio Para Cobran'#231'a '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 624
    Top = 0
    Width = 104
    Height = 336
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
      Left = 2
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
      Top = 292
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 336
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 308
      Width = 622
      Height = 27
      Align = alBottom
      TabOrder = 0
      object Label11: TLabel
        Left = 8
        Top = 4
        Width = 72
        Height = 13
        Caption = 'Quant. doc.:'
      end
      object Label12: TLabel
        Left = 181
        Top = 6
        Width = 110
        Height = 13
        Caption = 'Total documentos.:'
      end
      object Label17: TLabel
        Left = 415
        Top = 7
        Width = 96
        Height = 13
        Caption = 'Total dos Juros.:'
      end
      object QTDDOC: TEdit
        Left = 87
        Top = 2
        Width = 93
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 0
      end
      object TOTDOC: TEdit
        Left = 293
        Top = 2
        Width = 93
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object TOTJUR: TEdit
        Left = 520
        Top = 3
        Width = 107
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 622
      Height = 116
      Align = alTop
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 149
        Height = 13
        Caption = 'N'#250'mero do lote Cobranca:'
      end
      object Label2: TLabel
        Left = 268
        Top = 8
        Width = 140
        Height = 13
        Caption = 'Data Para Recebimento:'
      end
      object Label3: TLabel
        Left = 12
        Top = 66
        Width = 66
        Height = 13
        Caption = 'Descri'#231#227'o.:'
      end
      object Label14: TLabel
        Left = 10
        Top = 28
        Width = 160
        Height = 13
        Caption = 'C'#243'digo do Vendedor..........:'
      end
      object Label9: TLabel
        Left = 13
        Top = 48
        Width = 154
        Height = 13
        Caption = 'Juros mensal...................:'
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
      end
      object MDATA: TMaskEdit
        Left = 418
        Top = 4
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
      object OBS1: TEdit
        Left = 172
        Top = 70
        Width = 333
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object OBS2: TEdit
        Left = 172
        Top = 91
        Width = 333
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object CODVEN: TEdit
        Left = 173
        Top = 26
        Width = 85
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 264
        Top = 25
        Width = 240
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 6
        Text = 'Todos...'
      end
      object JURMEN: TEdit
        Left = 173
        Top = 47
        Width = 85
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = JURMENExit
        OnKeyPress = JURMENKeyPress
      end
      object Edit2: TEdit
        Left = 264
        Top = 46
        Width = 240
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 7
        Text = 'Valor 0 considera o juros da Emiss'#227'o'
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 117
      Width = 622
      Height = 191
      Align = alClient
      Caption = 'Duplicatas Selecionadas:'
      Enabled = False
      TabOrder = 2
      object Panel5: TPanel
        Left = 2
        Top = 117
        Width = 618
        Height = 72
        Align = alBottom
        TabOrder = 0
        object Label4: TLabel
          Left = 5
          Top = 5
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label5: TLabel
          Left = 131
          Top = 7
          Width = 34
          Height = 13
          Caption = 'Desd:'
        end
        object Label6: TLabel
          Left = 214
          Top = 6
          Width = 30
          Height = 13
          Caption = 'Tipo:'
        end
        object Label10: TLabel
          Left = 484
          Top = 6
          Width = 48
          Height = 13
          Caption = 'Dt.Vcto:'
        end
        object Label7: TLabel
          Left = 5
          Top = 25
          Width = 48
          Height = 13
          Caption = 'Sacado:'
        end
        object Label8: TLabel
          Left = 345
          Top = 4
          Width = 38
          Height = 13
          Caption = 'Valor.:'
        end
        object Label15: TLabel
          Left = 506
          Top = 29
          Width = 34
          Height = 13
          Caption = 'Total:'
        end
        object Label13: TLabel
          Left = 264
          Top = 27
          Width = 32
          Height = 13
          Caption = 'J.dia:'
        end
        object Label16: TLabel
          Left = 386
          Top = 30
          Width = 41
          Height = 13
          Caption = 'Atraso:'
        end
        object NUMDUP: TEdit
          Left = 55
          Top = 3
          Width = 73
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = NUMDUPKeyPress
        end
        object DESD: TEdit
          Left = 167
          Top = 3
          Width = 44
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object ITEM_GRAVAR: TBitBtn
          Left = 3
          Top = 49
          Width = 100
          Height = 21
          Caption = 'Grava&r'
          TabOrder = 3
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
          Top = 49
          Width = 100
          Height = 21
          Caption = '&Cancelar'
          TabOrder = 4
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
          Top = 49
          Width = 100
          Height = 21
          Caption = '&Excluir'
          TabOrder = 5
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
        object NOMCLI: TEdit
          Left = 55
          Top = 23
          Width = 202
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 6
        end
        object VALOR: TEdit
          Left = 385
          Top = 3
          Width = 92
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 7
        end
        object BitBtn1: TBitBtn
          Left = 442
          Top = 50
          Width = 100
          Height = 21
          Caption = '&Pesquisar'
          TabOrder = 8
          OnClick = BitBtn1Click
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
        object DTVCTO: TMaskEdit
          Left = 541
          Top = 2
          Width = 84
          Height = 21
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentColor = True
          TabOrder = 9
          Text = '  /  /    '
        end
        object DUP: TComboBox
          Left = 246
          Top = 2
          Width = 95
          Height = 21
          AutoDropDown = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          OnExit = DUPExit
        end
        object JURDUP: TEdit
          Left = 549
          Top = 28
          Width = 72
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 10
        end
        object JURD: TEdit
          Left = 301
          Top = 25
          Width = 78
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 11
        end
        object ATRASO: TEdit
          Left = 427
          Top = 26
          Width = 72
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 12
        end
      end
      object STG1: TStringGrid
        Left = 2
        Top = 15
        Width = 618
        Height = 102
        Align = alClient
        ColCount = 10
        DefaultRowHeight = 15
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ColWidths = (
          64
          27
          74
          75
          203
          77
          79
          85
          79
          82)
      end
    end
  end
  object Qr_CL01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCB01 where '
      'CB1CODEMP like :CODEMP and'
      'CB1CHAVE    like :CHAVE')
    Left = 544
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_CL01CB1CODEMP: TFloatField
      FieldName = 'CB1CODEMP'
      Origin = 'SG_ASSOC.CADCB01.CB1CODEMP'
    end
    object Qr_CL01CB1CHAVE: TFloatField
      FieldName = 'CB1CHAVE'
      Origin = 'SG_ASSOC.CADCB01.CB1CHAVE'
    end
    object Qr_CL01CB1DATA: TDateTimeField
      FieldName = 'CB1DATA'
      Origin = 'SG_ASSOC.CADCB01.CB1DATA'
    end
    object Qr_CL01CB1JURM: TFloatField
      FieldName = 'CB1JURM'
      Origin = 'SG_ASSOC.CADCB01.CB1JURM'
    end
    object Qr_CL01CB1OBS01: TStringField
      FieldName = 'CB1OBS01'
      Origin = 'SG_ASSOC.CADCB01.CB1OBS01'
      Size = 60
    end
    object Qr_CL01CB1OBS02: TStringField
      FieldName = 'CB1OBS02'
      Origin = 'SG_ASSOC.CADCB01.CB1OBS02'
      Size = 60
    end
    object Qr_CL01CB1CODVEN: TFloatField
      FieldName = 'CB1CODVEN'
      Origin = 'SG_ASSOC.CADCB01.CB1CODVEN'
    end
  end
  object Qr_CL02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCB02 where '
      'CB2CODEMP like :CODEMP and'
      'CB2CHAVE    like :CHAVE and'
      'CB2SEQ         like :SEQ')
    Left = 584
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_CL02CB2CODEMP: TFloatField
      FieldName = 'CB2CODEMP'
      Origin = 'SG_ASSOC.CADCB02.CB2CODEMP'
    end
    object Qr_CL02CB2CHAVE: TFloatField
      FieldName = 'CB2CHAVE'
      Origin = 'SG_ASSOC.CADCB02.CB2CHAVE'
    end
    object Qr_CL02CB2SEQ: TFloatField
      FieldName = 'CB2SEQ'
      Origin = 'SG_ASSOC.CADCB02.CB2SEQ'
    end
    object Qr_CL02CB2NUMERO: TFloatField
      FieldName = 'CB2NUMERO'
      Origin = 'SG_ASSOC.CADCB02.CB2NUMERO'
    end
    object Qr_CL02CB2DESD: TStringField
      FieldName = 'CB2DESD'
      Origin = 'SG_ASSOC.CADCB02.CB2DESD'
      Size = 2
    end
    object Qr_CL02CB2DUP: TFloatField
      FieldName = 'CB2DUP'
      Origin = 'SG_ASSOC.CADCB02.CB2DUP'
    end
    object Qr_CL02CB2VALDUP: TFloatField
      FieldName = 'CB2VALDUP'
      Origin = 'SG_ASSOC.CADCB02.CB2VALDUP'
    end
    object Qr_CL02CB2ATRASO: TFloatField
      FieldName = 'CB2ATRASO'
      Origin = 'SG_ASSOC.CADCB02.CB2ATRASO'
    end
    object Qr_CL02CB2JURD: TFloatField
      FieldName = 'CB2JURD'
      Origin = 'SG_ASSOC.CADCB02.CB2JURD'
    end
  end
end
