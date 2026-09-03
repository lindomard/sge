object Frm_NF_CompImp: TFrm_NF_CompImp
  Left = 317
  Top = 100
  Width = 791
  Height = 657
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o em Notas Fiscais de Complementos de Impostos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 677
    Top = 0
    Width = 106
    Height = 626
    Align = alRight
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      Left = 1
      Top = 45
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Caption = 'Locali&zar'
      TabOrder = 2
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
      Top = 88
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 3
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
      Top = 131
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Top = 174
      Width = 100
      Height = 44
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
    object BBEMITENF: TBitBtn
      Left = 1
      Top = 217
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Caption = 'Emitir &Nota '
      Enabled = False
      TabOrder = 5
      OnClick = BBEMITENFClick
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
    object BBEXCLUIR: TBitBtn
      Left = 1
      Top = 261
      Width = 100
      Height = 44
      Cursor = crHandPoint
      Hint = 'Excluir Pedidos ja existentes'
      Caption = 'Excl&uir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
      Top = 305
      Width = 100
      Height = 44
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
    Width = 677
    Height = 626
    Align = alClient
    Enabled = False
    TabOrder = 1
    object gb_cabecalho: TGroupBox
      Left = 1
      Top = 1
      Width = 675
      Height = 172
      Align = alTop
      Caption = 'Dados do Cabe'#231'alho:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 18
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label2: TLabel
        Left = 184
        Top = 16
        Width = 111
        Height = 13
        Caption = 'N'#250'mero da Nota Fiscal:'
      end
      object Label3: TLabel
        Left = 13
        Top = 54
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
      end
      object Label8: TLabel
        Left = 22
        Top = 35
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label9: TLabel
        Left = 1
        Top = 71
        Width = 100
        Height = 13
        Caption = 'C'#243'digo do Vendedor:'
      end
      object Label10: TLabel
        Left = 67
        Top = 88
        Width = 34
        Height = 13
        Caption = 'CFOP.:'
      end
      object CHAVE: TEdit
        Left = 103
        Top = 13
        Width = 77
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object NUMNF: TEdit
        Left = 300
        Top = 14
        Width = 77
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object CODCLI: TEdit
        Left = 103
        Top = 49
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object NOMCLI: TEdit
        Left = 179
        Top = 49
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 5
      end
      object RGTIPO: TRadioGroup
        Left = 1
        Top = 104
        Width = 673
        Height = 67
        Align = alBottom
        Caption = 'Tipo de Nota Fiscal:'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Transferencia de Cr'#233'dito de ICMS Acumulado'
          
            'Transferencia do saldo credor de ICMS para outro estabelecimento' +
            ' da mesma Empresa'
          
            'Ressarcimento de ICMS retido por Substitui'#231#227'o Tributaria(INTERES' +
            'TADUAL)'
          'Nota Fiscal de Transferencia de Credito de ICMS')
        ParentCtl3D = False
        TabOrder = 9
        OnClick = RGTIPOClick
        OnEnter = RGTIPOEnter
        OnExit = RGTIPOExit
      end
      object DATAP: TMaskEdit
        Left = 103
        Top = 31
        Width = 77
        Height = 19
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
        OnExit = DATAPExit
      end
      object NOMVEN: TEdit
        Left = 179
        Top = 67
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 6
      end
      object CODVEN: TEdit
        Left = 103
        Top = 67
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object CFOP: TEdit
        Left = 103
        Top = 85
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = CFOPExit
        OnKeyPress = CFOPKeyPress
      end
      object NOMCFO: TEdit
        Left = 179
        Top = 85
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    object gb_obsnf: TGroupBox
      Left = 1
      Top = 273
      Width = 675
      Height = 151
      Align = alClient
      Caption = 'Oberva'#231#245'es a Serem Impressas no Corpo da Nota:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Memo1: TMemo
        Left = 1
        Top = 14
        Width = 496
        Height = 136
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 497
        Top = 14
        Width = 177
        Height = 136
        Align = alRight
        TabOrder = 1
        object Label15: TLabel
          Left = 1
          Top = 1
          Width = 175
          Height = 134
          Align = alClient
          Alignment = taCenter
          Caption = 'As Linhas digitadas poder'#227'o ter no m'#225'ximo 60 caracteres'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label17: TLabel
          Left = 16
          Top = 56
          Width = 122
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Pre'#231'o Unit'#225'rio'
          Color = 8454016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edt_pcouni: TCurrencyEdit
          Left = 17
          Top = 70
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 0
        end
      end
    end
    object gb_nfref: TGroupBox
      Left = 1
      Top = 173
      Width = 675
      Height = 59
      Align = alTop
      Caption = 'Nota de Referencia:'
      Color = 12910591
      Ctl3D = False
      Enabled = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 1
      object Label16: TLabel
        Left = 4
        Top = 15
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object SB1: TSpeedButton
        Left = 100
        Top = 15
        Width = 20
        Height = 18
        Hint = 'Pesquisa Pedidos'
        Flat = True
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
        OnClick = SB1Click
      end
      object Label18: TLabel
        Left = 22
        Top = 39
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
      object edt_chaveref: TEdit
        Left = 43
        Top = 13
        Width = 55
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_chaverefExit
      end
      object nf_refer: TMemo
        Left = 119
        Top = 12
        Width = 554
        Height = 44
        TabStop = False
        Color = 15466455
        ReadOnly = True
        TabOrder = 1
      end
      object edt_LOTSEQ: TEdit
        Left = 80
        Top = 35
        Width = 38
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
    end
    object Panel_cst: TPanel
      Left = 1
      Top = 424
      Width = 675
      Height = 53
      Align = alBottom
      TabOrder = 3
      object lbl_cst_csosn: TLabel
        Left = 6
        Top = 27
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CST Icms:'
      end
      object lbl_cod_benef: TLabel
        Left = 487
        Top = 26
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'd Beneficio:'
      end
      object Label19: TLabel
        Left = 7
        Top = 6
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Origem Produto:'
      end
      object CB_CST_ICMS: TComboBox
        Left = 90
        Top = 24
        Width = 393
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = 'CB_CST_ICMS'
        OnClick = CB_CST_ICMSClick
      end
      object cb_cod_benef: TComboBox
        Left = 562
        Top = 24
        Width = 110
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnClick = cb_cod_benefClick
      end
      object cb_origem: TComboBox
        Left = 90
        Top = 3
        Width = 393
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '0 - Nacional'
        OnClick = CB_CST_ICMSClick
        Items.Strings = (
          '0 - Nacional'
          '1 - Estrang. - Imp. direta'
          '2 - Estrang. - Merc. Interno'
          '3 - Nacional - Merc. com conteudo de Importa'#231#227'o superior a 40%'
          '4 - Nacional - com processos produtivos Basicos'
          '5 - Nacional - Merc. com conteudo importa'#231#227'o inferior a 40%'
          '6 - Estrangeira - Importa'#231#227'o direta CAMEX'
          '7 - Estrangeira - Merc. Interno CAMEX'
          
            '8 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
            'ior a 70% (setenta por cento)')
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 477
      Width = 675
      Height = 148
      ActivePage = tsIcmsNormal
      Align = alBottom
      TabOrder = 4
      object tsIcmsNormal: TTabSheet
        Caption = 'Icms Normal'
        object Label5: TLabel
          Left = 182
          Top = 18
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do ICMS:'
        end
        object Label34: TLabel
          Left = 2
          Top = 18
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base Calc. do Icms:'
        end
        object ICMS: TEdit
          Left = 301
          Top = 17
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = ICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object BCICMS: TEdit
          Left = 119
          Top = 16
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Icms Substitui'#231#227'o Tributaria'
        ImageIndex = 1
        object Label7: TLabel
          Left = 9
          Top = 45
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base C'#225'lc.Subst.Trib.:'
        end
        object Label6: TLabel
          Left = 269
          Top = 47
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Retido:'
        end
        object Label28: TLabel
          Left = 2
          Top = 2
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mod.BC Icms ST:'
          Visible = False
        end
        object Label29: TLabel
          Left = 271
          Top = 3
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% IVA:'
          Visible = False
        end
        object Label30: TLabel
          Left = 470
          Top = 5
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PMC ou Vlr.Pauta:'
          Visible = False
        end
        object Label31: TLabel
          Left = 5
          Top = 22
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Redu'#231#227'o Icms ST:'
          Visible = False
        end
        object Label32: TLabel
          Left = 269
          Top = 22
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Icms Cred:'
          Visible = False
        end
        object Label33: TLabel
          Left = 469
          Top = 24
          Width = 110
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Icms Deb'
          Visible = False
        end
        object edt_BCICMSST: TEdit
          Left = 119
          Top = 44
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_ICMSST: TEdit
          Left = 384
          Top = 44
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_ICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object cb_mod_bc_st: TComboBox
          Left = 119
          Top = -1
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = 'cb_mod_bc_st'
          Visible = False
          Items.Strings = (
            'P'#231'o.M'#225'x.Consumidor'
            'Lista Negativa'
            'ListaPositiva'
            'Lista neutra'
            'Iva'
            'Pauta')
        end
        object edt_iva: TEdit
          Left = 383
          Top = 1
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pmc_pauta: TEdit
          Left = 583
          Top = 3
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pRedutIcmsSt: TEdit
          Left = 119
          Top = 22
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_icms_cred: TEdit
          Left = 383
          Top = 22
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          Visible = False
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_icms_deb: TEdit
          Left = 583
          Top = 24
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
          OnExit = edt_BCICMSSTExit
          OnKeyPress = BCICMSKeyPress
        end
      end
      object tsDifal: TTabSheet
        Caption = 'Difal/FCP'
        ImageIndex = 2
        object Label4: TLabel
          Left = 1
          Top = 6
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base C'#225'lc. UF Dest:'
          Visible = False
        end
        object Label20: TLabel
          Left = 223
          Top = 6
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base C'#225'lc. FCP UF Dest:'
          Visible = False
        end
        object Label21: TLabel
          Left = 439
          Top = 6
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% FCP UF Dest:'
          Visible = False
        end
        object Label22: TLabel
          Left = 0
          Top = 29
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Icms Uf Dest:'
          Visible = False
        end
        object Label23: TLabel
          Left = 222
          Top = 29
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Icms Inter:'
          Visible = False
        end
        object Label24: TLabel
          Left = 443
          Top = 29
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Icms Inter Partilha:'
          Visible = False
        end
        object Label25: TLabel
          Left = 1
          Top = 53
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor FCP UF Destino:'
        end
        object Label26: TLabel
          Left = 222
          Top = 52
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor ICMS UF Destino: '
        end
        object Label27: TLabel
          Left = 444
          Top = 51
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor ICMS UF Remetente:'
        end
        object edt_vBCUFDest: TEdit
          Left = 136
          Top = 4
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_vBCFCPUFDest: TEdit
          Left = 356
          Top = 4
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pFCPUFDest: TEdit
          Left = 578
          Top = 4
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pICMSUFDest: TEdit
          Left = 136
          Top = 27
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pICMSInter: TEdit
          Left = 357
          Top = 27
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_pICMSInterPart: TEdit
          Left = 578
          Top = 27
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_vFCPUFDest: TEdit
          Left = 136
          Top = 51
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_vICMSUFDest: TEdit
          Left = 357
          Top = 50
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
        object edt_vICMSUFRemet: TEdit
          Left = 579
          Top = 49
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = BCICMSExit
          OnKeyPress = BCICMSKeyPress
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Outros'
        ImageIndex = 3
        object Label11: TLabel
          Left = 6
          Top = 41
          Width = 69
          Height = 13
          Caption = 'Valor do Frete:'
        end
        object Label12: TLabel
          Left = 170
          Top = 41
          Width = 64
          Height = 13
          Caption = 'Vlr.doSeguro:'
        end
        object Label13: TLabel
          Left = 329
          Top = 41
          Width = 94
          Height = 13
          Caption = 'Outras Desp/Aces.:'
        end
        object Label14: TLabel
          Left = 534
          Top = 39
          Width = 46
          Height = 13
          Caption = 'Valor IPI.:'
        end
        object VALFRE: TEdit
          Left = 83
          Top = 38
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = VALFREExit
          OnKeyPress = BCICMSKeyPress
        end
        object VALSEG: TEdit
          Left = 242
          Top = 39
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = VALSEGExit
          OnKeyPress = BCICMSKeyPress
        end
        object TARBAN: TEdit
          Left = 434
          Top = 36
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = TARBANExit
          OnKeyPress = BCICMSKeyPress
        end
        object IPIINA: TEdit
          Left = 587
          Top = 36
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = IPIINAExit
          OnKeyPress = BCICMSKeyPress
        end
      end
    end
    object gb_descProd: TGroupBox
      Left = 1
      Top = 232
      Width = 675
      Height = 41
      Align = alTop
      Caption = 'Descri'#231#227'o do Produto:'
      TabOrder = 5
      object edt_nome_prod: TEdit
        Left = 8
        Top = 16
        Width = 665
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
  object Qr_Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01')
    Left = 368
    Top = 48
    object Qr_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_Ped01P1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Qr_Ped01P1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_Ped01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_Ped01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_Ped01P1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Qr_Ped01P1SUBSER: TStringField
      FieldName = 'P1SUBSER'
      Origin = 'SG_ASSOC.CADP01.P1SUBSER'
      Size = 3
    end
    object Qr_Ped01P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object Qr_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Qr_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Qr_Ped01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_Ped01P1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Ped01P1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_Ped01P1HORADIG: TStringField
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Qr_Ped01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Qr_Ped01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Qr_Ped01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Qr_Ped01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Qr_Ped01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Qr_Ped01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Qr_Ped01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Qr_Ped01P1TIPENT: TFloatField
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Qr_Ped01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Qr_Ped01P1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Qr_Ped01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Qr_Ped01P1PRAZO: TFloatField
      FieldName = 'P1PRAZO'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO'
    end
    object Qr_Ped01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Qr_Ped01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Qr_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_Ped01P1CUPOM: TFloatField
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Qr_Ped01P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Qr_Ped01P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Qr_Ped01P1REPAS: TFloatField
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Qr_Ped01P1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Qr_Ped01P1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_Ped01P1BASENP: TFloatField
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Qr_Ped01P1BASENN: TFloatField
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Qr_Ped01P1BASENI: TFloatField
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Qr_Ped01P1ICMSNP: TFloatField
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Qr_Ped01P1ICMSNN: TFloatField
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Qr_Ped01P1ICMSNI: TFloatField
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Qr_Ped01P1BASERP: TFloatField
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Qr_Ped01P1BASERN: TFloatField
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Qr_Ped01P1BASERI: TFloatField
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Qr_Ped01P1ICMSRP: TFloatField
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Qr_Ped01P1ICMSRN: TFloatField
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Qr_Ped01P1ICMSRI: TFloatField
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Qr_Ped01P1BASENRI: TFloatField
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Qr_Ped01P1ICMSNRI: TFloatField
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Qr_Ped01P1BASENRP: TFloatField
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Qr_Ped01P1ICMSNRP: TFloatField
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Qr_Ped01P1BASENRN: TFloatField
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Qr_Ped01P1ICMSNRN: TFloatField
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Qr_Ped01P1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_Ped01P1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Qr_Ped01P1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Qr_Ped01P1TOTTRI: TFloatField
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Qr_Ped01P1TOTRET: TFloatField
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Qr_Ped01P1TOTISE: TFloatField
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Qr_Ped01P1TOTPOS: TFloatField
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Qr_Ped01P1TOTNEG: TFloatField
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Qr_Ped01P1TOTINA: TFloatField
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Qr_Ped01P1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Qr_Ped01P1TOTUCPR: TFloatField
      FieldName = 'P1TOTUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTUCPR'
    end
    object Qr_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Qr_Ped01P1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Qr_Ped01P1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Qr_Ped01P1PAVDES: TFloatField
      FieldName = 'P1PAVDES'
      Origin = 'SG_ASSOC.CADP01.P1PAVDES'
    end
    object Qr_Ped01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_Ped01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_Ped01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_Ped01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_Ped01P1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
      Size = 10
    end
    object Qr_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_Ped01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_Ped01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_Ped01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Qr_Ped01P1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Qr_Ped01P1CODLDR: TFloatField
      FieldName = 'P1CODLDR'
      Origin = 'SG_ASSOC.CADP01.P1CODLDR'
    end
    object Qr_Ped01P1PCOMIS: TFloatField
      FieldName = 'P1PCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PCOMIS'
    end
    object Qr_Ped01P1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Qr_Ped01P1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Qr_Ped01P1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Qr_Ped01P1ORIGEM: TFloatField
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Qr_Ped01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Qr_Ped01P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Qr_Ped01P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Qr_Ped01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_Ped01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Qr_Ped01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Qr_Ped01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Qr_Ped01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Qr_Ped01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Qr_Ped01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Qr_Ped01P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_Ped01P1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Qr_Ped01P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Qr_Ped01P1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Qr_Ped01P1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_Ped01P1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Qr_Ped01P1LOTCV: TFloatField
      FieldName = 'P1LOTCV'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV'
    end
    object Qr_Ped01P1LOTCS: TFloatField
      FieldName = 'P1LOTCS'
      Origin = 'SG_ASSOC.CADP01.P1LOTCS'
    end
    object Qr_Ped01P1LOTCT: TFloatField
      FieldName = 'P1LOTCT'
      Origin = 'SG_ASSOC.CADP01.P1LOTCT'
    end
    object Qr_Ped01P1PVTC: TFloatField
      FieldName = 'P1PVTC'
      Origin = 'SG_ASSOC.CADP01.P1PVTC'
    end
    object Qr_Ped01P1PVCOM: TFloatField
      FieldName = 'P1PVCOM'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM'
    end
    object Qr_Ped01P1PVACTD: TFloatField
      FieldName = 'P1PVACTD'
      Origin = 'SG_ASSOC.CADP01.P1PVACTD'
    end
    object Qr_Ped01P1PVACT00: TFloatField
      FieldName = 'P1PVACT00'
      Origin = 'SG_ASSOC.CADP01.P1PVACT00'
    end
    object Qr_Ped01P1PVACT01: TFloatField
      FieldName = 'P1PVACT01'
      Origin = 'SG_ASSOC.CADP01.P1PVACT01'
    end
    object Qr_Ped01P1PVACT99: TFloatField
      FieldName = 'P1PVACT99'
      Origin = 'SG_ASSOC.CADP01.P1PVACT99'
    end
    object Qr_Ped01P1PVTDC: TFloatField
      FieldName = 'P1PVTDC'
      Origin = 'SG_ASSOC.CADP01.P1PVTDC'
    end
    object Qr_Ped01P1PVDES: TFloatField
      FieldName = 'P1PVDES'
      Origin = 'SG_ASSOC.CADP01.P1PVDES'
    end
    object Qr_Ped01P1PVTPD1: TFloatField
      FieldName = 'P1PVTPD1'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD1'
    end
    object Qr_Ped01P1PVDES1: TFloatField
      FieldName = 'P1PVDES1'
      Origin = 'SG_ASSOC.CADP01.P1PVDES1'
    end
    object Qr_Ped01P1PVTPD2: TFloatField
      FieldName = 'P1PVTPD2'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD2'
    end
    object Qr_Ped01P1PVDES2: TFloatField
      FieldName = 'P1PVDES2'
      Origin = 'SG_ASSOC.CADP01.P1PVDES2'
    end
    object Qr_Ped01P1PVTPDESF: TFloatField
      FieldName = 'P1PVTPDESF'
      Origin = 'SG_ASSOC.CADP01.P1PVTPDESF'
    end
    object Qr_Ped01P1PVDESCF: TFloatField
      FieldName = 'P1PVDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDESCF'
    end
    object Qr_Ped01P1PVDIASDESCF: TFloatField
      FieldName = 'P1PVDIASDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDIASDESCF'
    end
    object Qr_Ped01P1PVDDESCF: TFloatField
      FieldName = 'P1PVDDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDDESCF'
    end
    object Qr_Ped01P1TPP: TFloatField
      FieldName = 'P1TPP'
      Origin = 'SG_ASSOC.CADP01.P1TPP'
    end
    object Qr_Ped01P1SITAC: TFloatField
      FieldName = 'P1SITAC'
      Origin = 'SG_ASSOC.CADP01.P1SITAC'
    end
    object Qr_Ped01P1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Qr_Ped01P1PEDORI1: TStringField
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Qr_Ped01P1PEDORI2: TStringField
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Qr_Ped01P1MOTIVO: TStringField
      FieldName = 'P1MOTIVO'
      Origin = 'SG_ASSOC.CADP01.P1MOTIVO'
      Size = 60
    end
    object Qr_Ped01P1NUMVIS: TStringField
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Qr_Ped01P1DATVIS: TDateTimeField
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Qr_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Qr_Ped01P1TOTDI01: TFloatField
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Qr_Ped01P1TOTDI02: TFloatField
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Qr_Ped01P1TOTDIVL: TFloatField
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Qr_Ped01P1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Qr_Ped01P1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_Ped01P1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_Ped01P1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Qr_Ped01P1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Qr_Ped01P1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_Ped01P1CODDEP: TFloatField
      FieldName = 'P1CODDEP'
      Origin = 'SG_ASSOC.CADP01.P1CODDEP'
    end
    object Qr_Ped01P1TOTOUT: TFloatField
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Qr_Ped01P1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_Ped01P1LOTEDM: TFloatField
      FieldName = 'P1LOTEDM'
      Origin = 'SG_ASSOC.CADP01.P1LOTEDM'
    end
    object Qr_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_Ped01P1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Qr_Ped01P1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Qr_Ped01P1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Qr_Ped01P1PVCOM02: TFloatField
      FieldName = 'P1PVCOM02'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM02'
    end
    object Qr_Ped01P1PVCOM03: TFloatField
      FieldName = 'P1PVCOM03'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM03'
    end
    object Qr_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_Ped01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Qr_Ped01P1LOTCV02: TFloatField
      FieldName = 'P1LOTCV02'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV02'
    end
    object Qr_Ped01P1LOTCV03: TFloatField
      FieldName = 'P1LOTCV03'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV03'
    end
    object Qr_Ped01P1SITCPR: TFloatField
      FieldName = 'P1SITCPR'
      Origin = 'SG_ASSOC.CADP01.P1SITCPR'
    end
    object Qr_Ped01P1CFO1: TStringField
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Qr_Ped01P1CFO2: TStringField
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Qr_Ped01P1BLQPRM: TFloatField
      FieldName = 'P1BLQPRM'
      Origin = 'SG_ASSOC.CADP01.P1BLQPRM'
    end
    object Qr_Ped01P1PEDORI: TFloatField
      FieldName = 'P1PEDORI'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI'
    end
    object Qr_Ped01P1TOTDI03: TFloatField
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Qr_Ped01P1VALDES01: TFloatField
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Qr_Ped01P1VALDES02: TFloatField
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Qr_Ped01P1TARBAN: TFloatField
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Qr_Ped01P1PVTPD3: TFloatField
      FieldName = 'P1PVTPD3'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD3'
    end
    object Qr_Ped01P1PVDES3: TFloatField
      FieldName = 'P1PVDES3'
      Origin = 'SG_ASSOC.CADP01.P1PVDES3'
    end
    object Qr_Ped01P1CFOSER: TStringField
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Qr_Ped01P1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Qr_Ped01P1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Qr_Ped01P1DATHOR_ULTEVE: TDateTimeField
      FieldName = 'P1DATHOR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_ULTEVE'
    end
    object Qr_Ped01P1CODUSR_ULTEVE: TFloatField
      FieldName = 'P1CODUSR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_ULTEVE'
    end
    object Qr_Ped01P1COMP_ULTEVE: TStringField
      FieldName = 'P1COMP_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1COMP_ULTEVE'
      Size = 30
    end
    object Qr_Ped01P1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOMP'
    end
    object Qr_Ped01P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_Ped01P1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
    end
    object Qr_Ped01P1NOME_PROD: TStringField
      FieldName = 'P1NOME_PROD'
      Size = 100
    end
  end
  object Qr_PedNF: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPNF')
    Left = 440
    Top = 98
    object Qr_PedNFPNCODEMP: TFloatField
      FieldName = 'PNCODEMP'
      Origin = 'SG_ASSOC.CADPNF.PNCODEMP'
    end
    object Qr_PedNFPNCHAVE: TFloatField
      FieldName = 'PNCHAVE'
      Origin = 'SG_ASSOC.CADPNF.PNCHAVE'
    end
    object Qr_PedNFPNORDEM: TFloatField
      FieldName = 'PNORDEM'
      Origin = 'SG_ASSOC.CADPNF.PNORDEM'
    end
    object Qr_PedNFPNLINHA: TFloatField
      FieldName = 'PNLINHA'
      Origin = 'SG_ASSOC.CADPNF.PNLINHA'
    end
    object Qr_PedNFPNOBS: TStringField
      FieldName = 'PNOBS'
      Origin = 'SG_ASSOC.CADPNF.PNOBS'
      Size = 60
    end
    object Qr_PedNFPNLOTSEQ: TFloatField
      FieldName = 'PNLOTSEQ'
      Origin = 'SG_ASSOC.CADPNF.PNLOTSEQ'
    end
    object Qr_PedNFPNCODEMP_PEDORI: TFloatField
      FieldName = 'PNCODEMP_PEDORI'
      Origin = 'SG_ASSOC.CADPNF.PNCODEMP_PEDORI'
    end
    object Qr_PedNFPNLOTSEQ_PEDORI: TFloatField
      FieldName = 'PNLOTSEQ_PEDORI'
      Origin = 'SG_ASSOC.CADPNF.PNLOTSEQ_PEDORI'
    end
    object Qr_PedNFPNCHAVE_PEDORI: TFloatField
      FieldName = 'PNCHAVE_PEDORI'
      Origin = 'SG_ASSOC.CADPNF.PNCHAVE_PEDORI'
    end
    object Qr_PedNFPNORDEM_PEDORI: TFloatField
      FieldName = 'PNORDEM_PEDORI'
      Origin = 'SG_ASSOC.CADPNF.PNORDEM_PEDORI'
    end
    object Qr_PedNFPNPCOUNIT: TFloatField
      FieldName = 'PNPCOUNIT'
      Origin = 'SG_ASSOC.CADPNF.PNPCOUNIT'
    end
  end
  object Timer1: TTimer
    Interval = 100000
    OnTimer = Timer1Timer
    Left = 600
    Top = 126
  end
end
