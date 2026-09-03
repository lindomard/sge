object Frm_AjuInvGra: TFrm_AjuInvGra
  Left = 204
  Top = 235
  Width = 789
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manipula Invent'#225'rio'
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 773
    Height = 105
    Align = alTop
    Caption = 'Invent'#225'rios Gravados no Arquivo:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 769
      Height = 88
      Align = alClient
      DataSource = Src_InvGra01
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IGNOMEINV'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGDATAEMI'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TRANSP'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo_Inventario'
          Width = 113
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 105
    Width = 773
    Height = 58
    Align = alTop
    Caption = 'Opera'#231#245'es:'
    TabOrder = 1
    object ALTERAR: TBitBtn
      Left = 255
      Top = 14
      Width = 65
      Height = 40
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 0
      OnClick = ALTERARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 319
      Top = 14
      Width = 65
      Height = 40
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = GRAVARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CANCELAR: TBitBtn
      Left = 383
      Top = 14
      Width = 65
      Height = 40
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = CANCELARClick
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
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 14
      Width = 252
      Height = 40
      DataSource = Src_InvGra01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 3
    end
    object EXCLUIR: TBitBtn
      Left = 447
      Top = 14
      Width = 65
      Height = 40
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 4
      OnClick = EXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 639
      Top = 14
      Width = 65
      Height = 40
      Caption = '&Sair'
      TabOrder = 5
      OnClick = bbSairClick
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
    object bbGerarNovo: TBitBtn
      Left = 511
      Top = 14
      Width = 65
      Height = 40
      Caption = 'Gerar Novo'
      TabOrder = 6
      OnClick = bbGerarNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEstIgualInv: TBitBtn
      Left = 704
      Top = 15
      Width = 65
      Height = 40
      Caption = 'Estoque = Inv'
      TabOrder = 7
      OnClick = bbEstIgualInvClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbRefres: TBitBtn
      Left = 575
      Top = 14
      Width = 65
      Height = 40
      Caption = 'Refresh'
      TabOrder = 8
      OnClick = bbRefresClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object gb_detalhes: TGroupBox
    Left = 0
    Top = 163
    Width = 773
    Height = 118
    Align = alTop
    Caption = 'Detalhes:'
    Enabled = False
    TabOrder = 2
    object Label3: TLabel
      Left = 44
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 401
      Top = 12
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
    object Label1: TLabel
      Left = 14
      Top = 30
      Width = 67
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 571
      Top = 14
      Width = 80
      Height = 13
      Caption = 'N'#250'mero '#205'tens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 266
      Top = 32
      Width = 116
      Height = 13
      Caption = 'Saldo Transportado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 554
      Top = 32
      Width = 98
      Height = 13
      Caption = 'Saldo Invent'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 246
      Top = 12
      Width = 81
      Height = 13
      Caption = 'Dt.p/Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 579
      Top = 50
      Width = 70
      Height = 13
      Caption = 'Saldo Atual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object label_info: TLabel
      Left = 240
      Top = 48
      Width = 45
      Height = 13
      Caption = 'label_info'
    end
    object NOMEINV: TEdit
      Left = 90
      Top = 9
      Width = 151
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object QTD: TEdit
      Left = 474
      Top = 10
      Width = 90
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object VALOR: TEdit
      Left = 90
      Top = 27
      Width = 104
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object NUMITENS: TEdit
      Left = 662
      Top = 11
      Width = 104
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object gb_acao: TGroupBox
      Left = 2
      Top = 63
      Width = 769
      Height = 53
      Align = alBottom
      Caption = 'A'#231#245'es a Serem Executadas:'
      TabOrder = 7
      object Label7: TLabel
        Left = 14
        Top = 34
        Width = 84
        Height = 13
        Caption = '% em quantidade:'
      end
      object Label5: TLabel
        Left = 14
        Top = 15
        Width = 89
        Height = 13
        Caption = 'Pesquisar Produto:'
      end
      object Label6: TLabel
        Left = 396
        Top = 38
        Width = 105
        Height = 13
        Caption = '% em pre'#231'os unit'#225'rios:'
      end
      object PERQTD: TEdit
        Left = 120
        Top = 30
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = PERQTDChange
        OnExit = PERQTDExit
      end
      object cb_dimqtd: TCheckBox
        Left = 211
        Top = 33
        Width = 85
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 1
      end
      object NOMEPRO: TEdit
        Left = 120
        Top = 12
        Width = 268
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnChange = NOMEPROChange
      end
      object AplicQtd: TBitBtn
        Left = 300
        Top = 32
        Width = 89
        Height = 20
        Caption = '&Aplicar'
        Enabled = False
        TabOrder = 3
        OnClick = AplicQtdClick
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
      object PERPU: TEdit
        Left = 504
        Top = 32
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnChange = PERPUChange
        OnExit = PERPUExit
      end
      object cb_dimPU: TCheckBox
        Left = 591
        Top = 34
        Width = 85
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 5
      end
      object AplicPU: TBitBtn
        Left = 673
        Top = 31
        Width = 89
        Height = 20
        Caption = '&Aplicar'
        Enabled = False
        TabOrder = 6
        OnClick = AplicPUClick
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
      object cb_filpro: TCheckBox
        Left = 391
        Top = 12
        Width = 121
        Height = 17
        Caption = 'Pesquisar por Codigo'
        TabOrder = 7
      end
    end
    object SALDO_TRANSP: TEdit
      Left = 385
      Top = 28
      Width = 90
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = SALDO_TRANSPExit
    end
    object SALDO_INVENTARIO: TEdit
      Left = 662
      Top = 29
      Width = 104
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object DTEMIS: TMaskEdit
      Left = 328
      Top = 10
      Width = 69
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = DTEMISExit
    end
    object SALDO_ATUAL: TEdit
      Left = 662
      Top = 47
      Width = 104
      Height = 19
      Color = 16768959
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
    end
  end
  object gb_produtos: TGroupBox
    Left = 0
    Top = 281
    Width = 773
    Height = 148
    Align = alClient
    Caption = 'Produtos:'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 769
      Height = 84
      Align = alClient
      DataSource = Src_InvGra02
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid2ColExit
      OnColumnMoved = DBGrid2ColumnMoved
      OnExit = DBGrid2Exit
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'IGCODPRO'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGQTD'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'und'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomepro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGPRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGSIT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGCODTIP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 99
      Width = 769
      Height = 47
      Align = alBottom
      TabOrder = 1
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 3
        Width = 513
        Height = 42
        DataSource = Src_InvGra02
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Enabled = False
        Hints.Strings = (
          'Primeiro registro'
          'Registro anterior'
          'Pr'#243'ximo registro'
          #218'ltimo registro'
          'Inserir registro'
          'Excluir registro'
          'Editar registro'
          'Gravar edi'#231#227'o'
          'Cancelar edi'#231#227'o'
          'Atualizar da rede')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object Qr_InvGra01: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_InvGra01CalcFields
    DatabaseName = 'SG_ASSOC'
    Filtered = True
    SQL.Strings = (
      'Select  IGNOMEINV,sum(IGQTD) AS QUANT'
      '        ,sum(IGQTD*IGPRECO) AS VALOR'
      '        ,max(IGVALOR_TRANSP) AS VALOR_TRANSP'
      '        ,max(IGDATAEMI) as IGDATAEMI'
      '        ,count(*) as ITEM'
      '         from INVGRA where IGCODEMP is null'
      'group by IGNOMEINV')
    Left = 195
    Top = 62
    object Qr_InvGra01IGNOMEINV: TStringField
      DisplayLabel = 'Nome do Invent'#225'rio'
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Qr_InvGra01QUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANT'
    end
    object Qr_InvGra01VALOR: TFloatField
      DisplayLabel = 'Valor do Inventario'
      FieldName = 'VALOR'
    end
    object Qr_InvGra01ITEM: TFloatField
      DisplayLabel = 'No.'#205'tens'
      FieldName = 'ITEM'
    end
    object Qr_InvGra01VALOR_TRANSP: TFloatField
      DisplayLabel = 'Transportado'
      FieldName = 'VALOR_TRANSP'
    end
    object Qr_InvGra01Saldo_Inventario: TFloatField
      DisplayLabel = 'Saldo Inventario'
      FieldKind = fkCalculated
      FieldName = 'Saldo_Inventario'
      Calculated = True
    end
    object Qr_InvGra01IGDATAEMI: TDateTimeField
      DisplayLabel = 'Data p/Emiss'#227'o'
      FieldName = 'IGDATAEMI'
    end
  end
  object Qr_InvGra02: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_InvGra02BeforeInsert
    AfterInsert = Qr_InvGra02AfterInsert
    BeforeEdit = Qr_InvGra02BeforeEdit
    AfterEdit = Qr_InvGra02AfterEdit
    BeforePost = Qr_InvGra02BeforePost
    AfterPost = Qr_InvGra02AfterPost
    AfterCancel = Qr_InvGra02AfterCancel
    AfterDelete = Qr_InvGra02AfterDelete
    OnCalcFields = Qr_InvGra02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select IGCODEMP,       '
      '           IGNOMEINV,      '
      '           IGCODPRO,'
      '           IGPRECO,     '
      '           IGQTD,          '
      '           IGSIT'
      '           IGCODTIP,'
      '           IGVALOR_TRANSP,'
      '           IGDATAEMI,'
      '           PDNOME,'
      '            PDUND        '
      'from INVGRA,CADPRO where IGCODEMP is null'
      'and PDCODEMP=IGCODEMP'
      'and PDCODPRO=IGCODPRO')
    UpdateObject = U_InvGra02
    Left = 286
    Top = 65
    object Qr_InvGra02IGCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'IGCODEMP'
      Origin = 'SG_ASSOC.INVGRA.IGCODEMP'
    end
    object Qr_InvGra02IGNOMEINV: TStringField
      DisplayLabel = 'Nome do Invent'#225'rio'
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Qr_InvGra02IGCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'IGCODPRO'
      Origin = 'SG_ASSOC.INVGRA.IGCODPRO'
    end
    object Qr_InvGra02IGPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit.'
      FieldName = 'IGPRECO'
      Origin = 'SG_ASSOC.INVGRA.IGPRECO'
    end
    object Qr_InvGra02IGQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IGQTD'
      Origin = 'SG_ASSOC.INVGRA.IGQTD'
    end
    object Qr_InvGra02IGSIT: TStringField
      DisplayLabel = 'Sit.Trib.'
      FieldName = 'IGSIT'
      Origin = 'SG_ASSOC.INVGRA.IGSIT'
      Size = 3
    end
    object Qr_InvGra02IGCODTIP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'IGCODTIP'
      Origin = 'SG_ASSOC.INVGRA.IGCODTIP'
    end
    object Qr_InvGra02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_InvGra02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_InvGra02total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_InvGra02nomepro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldKind = fkCalculated
      FieldName = 'nomepro'
      Size = 40
      Calculated = True
    end
    object Qr_InvGra02und: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Qr_InvGra02IGVALOR_TRANSP: TFloatField
      FieldName = 'IGVALOR_TRANSP'
      Origin = 'SG_ASSOC.INVGRA.IGVALOR_TRANSP'
    end
    object Qr_InvGra02IGDATAEMI: TDateTimeField
      FieldName = 'IGDATAEMI'
      Origin = 'SG_ASSOC.INVGRA.IGDATAEMI'
    end
  end
  object Src_InvGra01: TDataSource
    DataSet = Qr_InvGra01
    OnDataChange = Src_InvGra01DataChange
    Left = 223
    Top = 62
  end
  object Src_InvGra02: TDataSource
    DataSet = Qr_InvGra02
    Left = 314
    Top = 65
  end
  object U_InvGra02: TUpdateSQL
    ModifySQL.Strings = (
      'update INVGRA'
      'set'
      '  IGCODEMP = :IGCODEMP,'
      '  IGNOMEINV = :IGNOMEINV,'
      '  IGCODPRO = :IGCODPRO,'
      '  IGPRECO = :IGPRECO,'
      '  IGQTD = :IGQTD,'
      '  IGCODTIP = :IGCODTIP,'
      '  IGVALOR_TRANSP = :IGVALOR_TRANSP,'
      '  IGDATAEMI = :IGDATAEMI'
      'where'
      '  IGCODEMP = :OLD_IGCODEMP and'
      '  IGNOMEINV = :OLD_IGNOMEINV and'
      '  IGCODPRO = :OLD_IGCODPRO')
    InsertSQL.Strings = (
      'insert into INVGRA'
      
        '  (IGCODEMP, IGNOMEINV, IGCODPRO, IGPRECO, IGQTD, IGCODTIP, IGVA' +
        'LOR_TRANSP, '
      '   IGDATAEMI)'
      'values'
      
        '  (:IGCODEMP, :IGNOMEINV, :IGCODPRO, :IGPRECO, :IGQTD, :IGCODTIP' +
        ', :IGVALOR_TRANSP, '
      '   :IGDATAEMI)')
    DeleteSQL.Strings = (
      'delete from INVGRA'
      'where'
      '  IGCODEMP = :OLD_IGCODEMP and'
      '  IGNOMEINV = :OLD_IGNOMEINV and'
      '  IGCODPRO = :OLD_IGCODPRO')
    Left = 342
    Top = 66
  end
end
