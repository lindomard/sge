object Frm_Conh_Mercad: TFrm_Conh_Mercad
  Left = 99
  Top = 52
  Width = 811
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Conhecimento de Mercadorias'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 803
    Height = 58
    Align = alTop
    TabOrder = 0
    object lbl_cod_conh: TLabel
      Left = 5
      Top = 36
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object sbConsultar: TSpeedButton
      Left = 126
      Top = 10
      Width = 80
      Height = 40
      Hint = 'Pesquisar '#13#10'Conhecimentos'#13#10'Existentes'
      Caption = '&Pesquisar'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbConsultarClick
    end
    object CODCON: TEdit
      Left = 52
      Top = 31
      Width = 73
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = CODCONExit
    end
    object BBINCLUIR: TBitBtn
      Left = 205
      Top = 10
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object BBALTERAR: TBitBtn
      Left = 284
      Top = 10
      Width = 80
      Height = 40
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
    object BBGRAVAR: TBitBtn
      Left = 363
      Top = 10
      Width = 80
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
      Left = 442
      Top = 10
      Width = 80
      Height = 40
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
    object bbCancelar: TBitBtn
      Left = 521
      Top = 10
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbCancelarClick
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
      Left = 600
      Top = 10
      Width = 80
      Height = 40
      Cursor = crHandPoint
      Caption = 'Imprimi&r'
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
      Left = 679
      Top = 10
      Width = 80
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
  object gb_dados_conhec: TGroupBox
    Left = 0
    Top = 58
    Width = 803
    Height = 116
    Align = alTop
    Caption = 'Dados do Conhecimento'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 81
      Top = 20
      Width = 32
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 210
      Top = 20
      Width = 123
      Height = 13
      Caption = 'Data do Fechamento:'
    end
    object Label3: TLabel
      Left = 16
      Top = 36
      Width = 99
      Height = 13
      Caption = 'Transportador(a):'
    end
    object Label11: TLabel
      Left = 543
      Top = 20
      Width = 48
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 61
      Width = 799
      Height = 53
      Align = alBottom
      Caption = 'Totais:'
      Color = 16769505
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Qtd.Pedidos:'
      end
      object Label5: TLabel
        Left = 171
        Top = 15
        Width = 57
        Height = 13
        Caption = 'Qtd.'#205'tens:'
      end
      object Label6: TLabel
        Left = 605
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Qtd.M3:'
      end
      object Label7: TLabel
        Left = 356
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Peso Bruto:'
      end
      object Label8: TLabel
        Left = 11
        Top = 32
        Width = 67
        Height = 13
        Caption = 'Valor Total:'
      end
      object Label9: TLabel
        Left = 275
        Top = 35
        Width = 145
        Height = 13
        Caption = 'Valor do Frete Calculado:'
      end
      object Label10: TLabel
        Left = 518
        Top = 34
        Width = 134
        Height = 13
        Caption = 'Valor do Frete digitado:'
      end
      object db_QTDPED: TDBEdit
        Left = 83
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDPED'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object db_QTDITENS: TDBEdit
        Left = 228
        Top = 10
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDITENS'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object db_PESOB: TDBEdit
        Left = 424
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01PESOB'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object db_QTDM3: TDBEdit
        Left = 656
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDM3'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object db_VLRTOT: TDBEdit
        Left = 83
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VLRTOT'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object db_VALFRE: TDBEdit
        Left = 424
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VALFRE'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object db_VALFRE_DIG: TDBEdit
        Left = 656
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VALFRE_DIG'
        DataSource = Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object db_DATCON: TDBEdit
      Left = 116
      Top = 16
      Width = 78
      Height = 19
      Ctl3D = False
      DataField = 'C01DATCON'
      DataSource = Src_Con01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = db_DATCONExit
    end
    object db_DATFEC: TDBEdit
      Left = 336
      Top = 16
      Width = 78
      Height = 19
      Color = 16769505
      Ctl3D = False
      DataField = 'C01DATFEC'
      DataSource = Src_Con01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object db_CODTRA: TDBEdit
      Left = 116
      Top = 34
      Width = 78
      Height = 19
      Ctl3D = False
      DataField = 'C01CODTRA'
      DataSource = DM6.Src_Con01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnEnter = db_CODTRAEnter
      OnExit = db_CODTRAExit
      OnKeyPress = db_CODTRAKeyPress
    end
    object db_NOMTRA: TDBEdit
      Left = 193
      Top = 34
      Width = 479
      Height = 19
      Color = 16769505
      Ctl3D = False
      DataField = 'TRRAZTRA'
      DataSource = Src_Con01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 594
      Top = 16
      Width = 78
      Height = 19
      Color = 16769505
      Ctl3D = False
      DataField = 'C01CODUSR_INC'
      DataSource = Src_Con01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object GB_PEDIDOS: TGroupBox
    Left = 0
    Top = 174
    Width = 803
    Height = 127
    Align = alTop
    Caption = 'Pedidos do Conhecimento:'
    TabOrder = 2
    OnExit = GB_PEDIDOSExit
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 799
      Height = 49
      Align = alTop
      TabOrder = 0
      object st_chave: TStaticText
        Left = 0
        Top = 2
        Width = 71
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '&Pedido'
        Color = 16769505
        FocusControl = C02_CHAVE
        ParentColor = False
        TabOrder = 0
      end
      object st_razao: TStaticText
        Left = 70
        Top = 2
        Width = 268
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Raz'#227'o Social'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object st_pesob: TStaticText
        Left = 337
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '            Peso Bruto'
        Color = 16769505
        ParentColor = False
        TabOrder = 2
      end
      object st_qtdm3: TStaticText
        Left = 410
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Qtd.Metros 3(cubicos)'
        Color = 16769505
        ParentColor = False
        TabOrder = 3
      end
      object st_vlrtot: TStaticText
        Left = 484
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '            Valor Total'
        Color = 16769505
        ParentColor = False
        TabOrder = 4
      end
      object st_fretecalc: TStaticText
        Left = 558
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Calculado'
        Color = 16769505
        ParentColor = False
        TabOrder = 5
      end
      object st_fretedig: TStaticText
        Left = 632
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Digitado'
        Color = 16769505
        ParentColor = False
        TabOrder = 6
      end
      object st_tipoent: TStaticText
        Left = 706
        Top = 2
        Width = 57
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipo Entrega'
        Color = 16769505
        ParentColor = False
        TabOrder = 7
      end
      object C02_CHAVE: TEdit
        Left = 0
        Top = 31
        Width = 71
        Height = 19
        Hint = 'Digite a Chave do Pedido. Para Consultar Pressione <F3>'
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnEnter = C02_CHAVEEnter
        OnExit = C02_CHAVEExit
        OnKeyDown = C02_CHAVEKeyDown
      end
      object C02_RAZSOC: TEdit
        Left = 70
        Top = 31
        Width = 268
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object C02_PESOB: TEdit
        Left = 337
        Top = 31
        Width = 74
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object C02_QTDM3: TEdit
        Left = 410
        Top = 31
        Width = 75
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object C02_VLRTOT: TEdit
        Left = 484
        Top = 31
        Width = 75
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object C02_FRETECALC: TEdit
        Left = 558
        Top = 31
        Width = 75
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object C02_FRETEDIG: TEdit
        Left = 632
        Top = 31
        Width = 75
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
      end
      object C02_TIPO_ENT: TEdit
        Left = 706
        Top = 31
        Width = 57
        Height = 19
        Hint = 'Tipo da Entrega'#13#10'P-Parcial T-Total'
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        OnEnter = C02_TIPO_ENTEnter
        OnExit = C02_TIPO_ENTExit
      end
    end
    object dbg_pedidos: TDBGrid
      Left = 2
      Top = 64
      Width = 799
      Height = 61
      Hint = 'Para excluir um item'#13#10'pressione  [CTRL DEL]'
      Align = alClient
      Color = 14811105
      Ctl3D = False
      DataSource = Src_Con02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyDown = dbg_pedidosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'C02CHAVE_PED'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02PESOB'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02QTDM3'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VLRTOT'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VALFRE'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VALFRE_DIG'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_entrega'
          Width = 55
          Visible = True
        end>
    end
  end
  object GB_ITENS: TGroupBox
    Left = 0
    Top = 301
    Width = 803
    Height = 135
    Align = alClient
    Caption = 'Mercadorias do Pedido:'
    TabOrder = 3
    OnExit = GB_ITENSExit
    object dbg_prod: TDBGrid
      Left = 2
      Top = 46
      Width = 799
      Height = 87
      Hint = 'Para excluir um item'#13#10'pressione  [CTRL DEL]'
      Align = alClient
      Color = 14811105
      Ctl3D = False
      DataSource = Src_Con03
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = dbg_prodColExit
      OnKeyDown = dbg_prodKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'C03CODPRO'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03LOTE'
          ReadOnly = True
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDENT'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDPEND'
          ReadOnly = True
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          ReadOnly = True
          Width = 297
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          ReadOnly = True
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE'
          ReadOnly = True
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE_DIG'
          Width = 56
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 799
      Height = 31
      Align = alTop
      TabOrder = 1
      object st_codpro: TStaticText
        Left = 0
        Top = 2
        Width = 96
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo do Produto'
        Color = 16769505
        ParentColor = False
        TabOrder = 0
      end
      object st_nompro: TStaticText
        Left = 298
        Top = 2
        Width = 299
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descri'#231#227'o das Mercadorias'
        Color = 16769505
        ParentColor = False
        TabOrder = 1
      end
      object st_qtdent: TStaticText
        Left = 147
        Top = 2
        Width = 80
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade a Entregar'
        Color = 16769505
        ParentColor = False
        TabOrder = 2
      end
      object st_qtdpen: TStaticText
        Left = 226
        Top = 2
        Width = 73
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade Pendente'
        Color = 16769505
        ParentColor = False
        TabOrder = 3
      end
      object st_valfre_calc: TStaticText
        Left = 629
        Top = 2
        Width = 80
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Calculado'
        Color = 16769505
        ParentColor = False
        TabOrder = 4
      end
      object st_valfre_dig: TStaticText
        Left = 708
        Top = 2
        Width = 58
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Digitado'
        Color = 16769505
        ParentColor = False
        TabOrder = 5
      end
      object st_und: TStaticText
        Left = 596
        Top = 2
        Width = 34
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'UND'
        Color = 16769505
        ParentColor = False
        TabOrder = 6
      end
      object st_lote: TStaticText
        Left = 95
        Top = 2
        Width = 53
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Lote Detalhe'
        Color = 16769505
        ParentColor = False
        TabOrder = 7
      end
    end
  end
  object Src_Con01: TDataSource
    DataSet = DM6.Tb_Con01
    OnDataChange = Src_Con01DataChange
    Left = 424
    Top = 8
  end
  object Src_Con02: TDataSource
    DataSet = DM6.Tb_Con02
    OnDataChange = Src_Con02DataChange
    Left = 536
    Top = 16
  end
  object Tb_Con03: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Con03BeforeInsert
    AfterInsert = Tb_Con03AfterInsert
    BeforeEdit = Tb_Con03BeforeEdit
    BeforePost = Tb_Con03BeforePost
    AfterPost = c
    BeforeDelete = Tb_Con03BeforeDelete
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select C03CODEMP,'
      '       C03CODCON,'
      '       C03CODEMP_PED,'
      '       C03LOTSEQ_PED,'
      '       C03CHAVE_PED,'
      '       C03CODPRO,'
      '       C03LOTE,'
      '       C03QTDVEND,'
      '       C03QTDENT,'
      '       C03QTDPEND,'
      '       C03PESOB,'
      '       C03QTDM3,'
      '       C03VLRTOT,'
      '       C03VALFRE,'
      '       C03VALFRE_DIG,'
      '       C03SITENT,'
      '       C03CODUSR_INC,'
      '       C03CODUSR_ALT,'
      '       C03DTHR_ALT,'
      '       C03QTDMAN,'
      '       C03ESTADO,'
      '       C03ITEM,'
      '       PDNOME,'
      '       PDMARCA,'
      '       PDUND,'
      '       PDPESOB,'
      '       PDQTDM3,'
      '       GRPERCFRE'
      'from CADCON03,CADPRO,CADGRU where'
      '     PDCODPRO=C03CODPRO'
      '     and GRCODGRU=PDCODGRU')
    UpdateObject = U_Con03
    Left = 672
    Top = 69
    object Tb_Con03C03CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'C03CODEMP'
      Origin = 'SG_ASSOC.CADCON03.C03CODEMP'
    end
    object Tb_Con03C03CODCON: TFloatField
      DisplayLabel = 'C'#243'd.Conhec'
      FieldName = 'C03CODCON'
      Origin = 'SG_ASSOC.CADCON03.C03CODCON'
    end
    object Tb_Con03C03CODEMP_PED: TFloatField
      DisplayLabel = 'C'#243'd.Emp.Ped'
      FieldName = 'C03CODEMP_PED'
      Origin = 'SG_ASSOC.CADCON03.C03CODEMP_PED'
    end
    object Tb_Con03C03LOTSEQ_PED: TFloatField
      DisplayLabel = 'Lote Seq.Ped'
      FieldName = 'C03LOTSEQ_PED'
      Origin = 'SG_ASSOC.CADCON03.C03LOTSEQ_PED'
    end
    object Tb_Con03C03CHAVE_PED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'C03CHAVE_PED'
      Origin = 'SG_ASSOC.CADCON03.C03CHAVE_PED'
    end
    object Tb_Con03C03CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod.'
      FieldName = 'C03CODPRO'
      Origin = 'SG_ASSOC.CADCON03.C03CODPRO'
    end
    object Tb_Con03C03QTDVEND: TFloatField
      DisplayLabel = 'Qtd.Vendida'
      FieldName = 'C03QTDVEND'
      Origin = 'SG_ASSOC.CADCON03.C03QTDVEND'
    end
    object Tb_Con03C03QTDPEND: TFloatField
      DisplayLabel = 'Qtd.Pend.'
      FieldName = 'C03QTDPEND'
      Origin = 'SG_ASSOC.CADCON03.C03QTDPEND'
    end
    object Tb_Con03C03QTDENT: TFloatField
      DisplayLabel = 'Qtd.Entregue'
      FieldName = 'C03QTDENT'
      Origin = 'SG_ASSOC.CADCON03.C03QTDENT'
    end
    object Tb_Con03C03PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'C03PESOB'
      Origin = 'SG_ASSOC.CADCON03.C03PESOB'
    end
    object Tb_Con03C03QTDM3: TFloatField
      DisplayLabel = 'Quant.M3'
      FieldName = 'C03QTDM3'
      Origin = 'SG_ASSOC.CADCON03.C03QTDM3'
    end
    object Tb_Con03C03VLRTOT: TFloatField
      DisplayLabel = 'Valor total'
      FieldName = 'C03VLRTOT'
      Origin = 'SG_ASSOC.CADCON03.C03VLRTOT'
    end
    object Tb_Con03C03VALFRE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'C03VALFRE'
      Origin = 'SG_ASSOC.CADCON03.C03VALFRE'
    end
    object Tb_Con03C03VALFRE_DIG: TFloatField
      DisplayLabel = 'Valor Frete Dig'
      FieldName = 'C03VALFRE_DIG'
      Origin = 'SG_ASSOC.CADCON03.C03VALFRE_DIG'
    end
    object Tb_Con03C03SITENT: TFloatField
      DisplayLabel = 'Sit.Entrega'
      FieldName = 'C03SITENT'
      Origin = 'SG_ASSOC.CADCON03.C03SITENT'
    end
    object Tb_Con03C03CODUSR_INC: TFloatField
      DisplayLabel = 'Cod.Usuario Inc'
      FieldName = 'C03CODUSR_INC'
      Origin = 'SG_ASSOC.CADCON03.C03CODUSR_INC'
    end
    object Tb_Con03C03CODUSR_ALT: TFloatField
      DisplayLabel = 'C'#243'd.Usuario Alt'
      FieldName = 'C03CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON03.C03CODUSR_ALT'
    end
    object Tb_Con03C03DTHR_ALT: TDateTimeField
      DisplayLabel = 'Dt.Hora Alt'
      FieldName = 'C03DTHR_ALT'
      Origin = 'SG_ASSOC.CADCON03.C03DTHR_ALT'
    end
    object Tb_Con03C03ESTADO: TFloatField
      FieldName = 'C03ESTADO'
      Origin = 'SG_ASSOC.CADCON03.C03ESTADO'
    end
    object Tb_Con03C03ITEM: TFloatField
      FieldName = 'C03ITEM'
      Origin = 'SG_ASSOC.CADCON03.C03ITEM'
    end
    object Tb_Con03PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Con03PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Con03PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Con03PDPESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Tb_Con03PDQTDM3: TFloatField
      DisplayLabel = 'Qtd.M3'
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Tb_Con03C03QTDMAN: TFloatField
      DisplayLabel = 'Qtd.Manuten'#231#227'o'
      FieldName = 'C03QTDMAN'
      Origin = 'SG_ASSOC.CADCON03.C03QTDMAN'
    end
    object Tb_Con03GRPERCFRE: TFloatField
      FieldName = 'GRPERCFRE'
      Origin = 'SG_ASSOC.CADGRU.GRPERCFRE'
    end
    object Tb_Con03C03LOTE: TStringField
      DisplayLabel = 'Lote/Detalhe'
      FieldName = 'C03LOTE'
      Origin = 'SG_ASSOC.CADCON03.C03LOTE'
    end
  end
  object U_Con03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON03'
      'set'
      '  C03CODEMP = :C03CODEMP,'
      '  C03CODCON = :C03CODCON,'
      '  C03CODEMP_PED = :C03CODEMP_PED,'
      '  C03LOTSEQ_PED = :C03LOTSEQ_PED,'
      '  C03CHAVE_PED = :C03CHAVE_PED,'
      '  C03CODPRO = :C03CODPRO,'
      '  C03LOTE = :C03LOTE,'
      '  C03QTDVEND = :C03QTDVEND,'
      '  C03QTDENT = :C03QTDENT,'
      '  C03QTDPEND = :C03QTDPEND,'
      '  C03PESOB = :C03PESOB,'
      '  C03QTDM3 = :C03QTDM3,'
      '  C03VLRTOT = :C03VLRTOT,'
      '  C03VALFRE = :C03VALFRE,'
      '  C03VALFRE_DIG = :C03VALFRE_DIG,'
      '  C03SITENT = :C03SITENT,'
      '  C03CODUSR_INC = :C03CODUSR_INC,'
      '  C03CODUSR_ALT = :C03CODUSR_ALT,'
      '  C03DTHR_ALT = :C03DTHR_ALT,'
      '  C03QTDMAN = :C03QTDMAN,'
      '  C03ESTADO = :C03ESTADO,'
      '  C03ITEM = :C03ITEM'
      'where'
      '  C03CODEMP = :OLD_C03CODEMP and'
      '  C03CODCON = :OLD_C03CODCON and'
      '  C03CODEMP_PED = :OLD_C03CODEMP_PED and'
      '  C03LOTSEQ_PED = :OLD_C03LOTSEQ_PED and'
      '  C03CHAVE_PED = :OLD_C03CHAVE_PED and'
      '  C03CODPRO = :OLD_C03CODPRO')
    InsertSQL.Strings = (
      'insert into CADCON03'
      '  (C03CODEMP, C03CODCON, C03CODEMP_PED, C03LOTSEQ_PED, '
      'C03CHAVE_PED, C03CODPRO, '
      
        '   C03LOTE, C03QTDVEND, C03QTDENT, C03QTDPEND, C03PESOB, C03QTDM' +
        '3, '
      'C03VLRTOT, '
      '   C03VALFRE, C03VALFRE_DIG, C03SITENT, C03CODUSR_INC, '
      'C03CODUSR_ALT, C03DTHR_ALT, '
      '   C03QTDMAN, C03ESTADO, C03ITEM)'
      'values'
      '  (:C03CODEMP, :C03CODCON, :C03CODEMP_PED, :C03LOTSEQ_PED, '
      ':C03CHAVE_PED, '
      '   :C03CODPRO, :C03LOTE, :C03QTDVEND, :C03QTDENT, :C03QTDPEND, '
      ':C03PESOB, '
      
        '   :C03QTDM3, :C03VLRTOT, :C03VALFRE, :C03VALFRE_DIG, :C03SITENT' +
        ', '
      ':C03CODUSR_INC, '
      
        '   :C03CODUSR_ALT, :C03DTHR_ALT, :C03QTDMAN, :C03ESTADO, :C03ITE' +
        'M)')
    DeleteSQL.Strings = (
      'delete from CADCON03'
      'where'
      '  C03CODEMP = :OLD_C03CODEMP and'
      '  C03CODCON = :OLD_C03CODCON and'
      '  C03CODEMP_PED = :OLD_C03CODEMP_PED and'
      '  C03LOTSEQ_PED = :OLD_C03LOTSEQ_PED and'
      '  C03CHAVE_PED = :OLD_C03CHAVE_PED and'
      '  C03CODPRO = :OLD_C03CODPRO')
    Left = 700
    Top = 69
  end
  object Src_Con03: TDataSource
    DataSet = Tb_Con03
    Left = 728
    Top = 69
  end
end
