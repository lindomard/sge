object frm_Pfor01_02: Tfrm_Pfor01_02
  Left = 0
  Top = 8
  ActiveControl = btn_incluir
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o em Pedidos de Fornecedores'
  ClientHeight = 530
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 26
    Align = alTop
    TabOrder = 0
    object btn_incluir: TBitBtn
      Left = 0
      Top = 1
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = btn_incluirClick
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
    object btn_localizar: TBitBtn
      Left = 86
      Top = 1
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = btn_localizarClick
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
      NumGlyphs = 2
    end
    object btn_alterar: TBitBtn
      Left = 172
      Top = 1
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 3
      OnClick = btn_alterarClick
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
    object btn_gravar: TBitBtn
      Left = 258
      Top = 1
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 4
      OnClick = btn_gravarClick
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
    object btn_confirmar: TBitBtn
      Left = 348
      Top = 1
      Width = 96
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = btn_confirmarClick
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
    object btn_calcular: TBitBtn
      Left = 443
      Top = 1
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = '&Calcular'
      TabOrder = 6
      OnClick = btn_calcularClick
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
      NumGlyphs = 2
    end
    object btn_excluir: TBitBtn
      Left = 533
      Top = 1
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 7
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_cancelar: TBitBtn
      Left = 621
      Top = 1
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ca&ncelar'
      TabOrder = 0
      OnClick = btn_cancelarClick
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
    object btn_sair: TBitBtn
      Left = 712
      Top = 1
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 8
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object pnl_pedidocompra: TPanel
    Left = 0
    Top = 26
    Width = 792
    Height = 504
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Bevel1: TBevel
      Left = 2
      Top = 2
      Width = 788
      Height = 129
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 9
      Width = 68
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Chave'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object CHAVE: TComboEdit
      Left = 9
      Top = 26
      Width = 69
      Height = 21
      Alignment = taRightJustify
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 1
      Text = 'CHAVE'
    end
    object StaticText2: TStaticText
      Left = 76
      Top = 9
      Width = 106
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Data Pedido'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object DATAP: TDateEdit
      Left = 76
      Top = 26
      Width = 108
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      OnExit = DATAPExit
    end
    object StaticText3: TStaticText
      Left = 181
      Top = 9
      Width = 340
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Fornecedor'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object CODFOR: TComboEdit
      Left = 182
      Top = 26
      Width = 64
      Height = 21
      Alignment = taRightJustify
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 5
      Text = 'CODFOR'
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 244
      Top = 25
      Width = 277
      Height = 22
      Color = 13828095
      ReadOnly = True
      TabOrder = 31
      Text = 'NOMFOR'
    end
    object stc_desconto: TStaticText
      Left = 547
      Top = 9
      Width = 213
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Descontos'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object DESC01: TComboEdit
      Left = 546
      Top = 25
      Width = 56
      Height = 22
      Alignment = taRightJustify
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 6
      Text = 'ComboEdit2'
      OnExit = DESC01Exit
      OnKeyPress = DESC01KeyPress
    end
    object DESC02: TComboEdit
      Left = 601
      Top = 25
      Width = 55
      Height = 22
      Alignment = taRightJustify
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 7
      Text = 'ComboEdit2'
      OnExit = DESC02Exit
      OnKeyPress = DESC02KeyPress
    end
    object VALDES: TCurrencyEdit
      Left = 654
      Top = 26
      Width = 107
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 8
      OnExit = VALDESExit
      OnKeyPress = VALDESKeyPress
    end
    object cb_origem: TCheckBox
      Left = 9
      Top = 70
      Width = 375
      Height = 17
      Hint = 'Se Marcado Movimentara o estoque'#13#10'de mercadorias consignadas.'
      Caption = 'Mercadoria adquirida de Consigna'#231#245'es/Emprestimos, outros...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object StaticText5: TStaticText
      Left = 382
      Top = 46
      Width = 152
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Qtde. Casas Decimais'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object CB_CASASD: TComboBox
      Left = 382
      Top = 63
      Width = 154
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 14
      ItemIndex = 0
      ParentFont = False
      TabOrder = 12
      Text = 'Padrao'
      OnClick = CB_CASASDClick
      Items.Strings = (
        'Padrao'
        '2 duas'
        '3 tres'
        '4 quatro'
        '5 cinco'
        '6 seis'
        '7 sete'
        '8 oito')
    end
    object StaticText6: TStaticText
      Left = 533
      Top = 46
      Width = 132
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Local Mercadorias'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object CB_LOCAL: TComboBox
      Left = 533
      Top = 63
      Width = 134
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 14
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Text = 'Prateleira'
      OnEnter = CB_LOCALEnter
      OnExit = CB_LOCALExit
      Items.Strings = (
        'Prateleira'
        'Deposito'
        'Em Reparo')
    end
    object StaticText7: TStaticText
      Left = 664
      Top = 46
      Width = 96
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Tp. Pedido'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 15
    end
    object CB_TIPO: TComboBox
      Left = 664
      Top = 62
      Width = 98
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 14
      ItemIndex = 0
      ParentFont = False
      TabOrder = 16
      Text = 'Normal'
      OnEnter = CB_TIPOEnter
      OnExit = CB_TIPOExit
      Items.Strings = (
        'Normal'
        'Bonificacao'
        'Complementar')
    end
    object StaticText8: TStaticText
      Left = 9
      Top = 87
      Width = 167
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Modo'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 18
    end
    object txt_modo: TEdit
      Left = 9
      Top = 104
      Width = 168
      Height = 22
      Color = 13828095
      ReadOnly = True
      TabOrder = 19
      Text = 'Edit1'
    end
    object StaticText9: TStaticText
      Left = 175
      Top = 87
      Width = 209
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Fase'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object txt_fase: TEdit
      Left = 174
      Top = 104
      Width = 210
      Height = 22
      Color = 13828095
      ReadOnly = True
      TabOrder = 21
      Text = 'Edit1'
    end
    object StaticText10: TStaticText
      Left = 383
      Top = 87
      Width = 283
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'Situa'#231#227'o do Pedido'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 22
    end
    object txt_situacao: TEdit
      Left = 383
      Top = 104
      Width = 284
      Height = 22
      Color = 13828095
      ReadOnly = True
      TabOrder = 23
      Text = 'Edit1'
    end
    object pnl_itens: TPanel
      Left = 2
      Top = 131
      Width = 788
      Height = 292
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 17
      object pgc_detalhes: TPageControl
        Left = 2
        Top = 2
        Width = 784
        Height = 287
        Cursor = crHandPoint
        ActivePage = tbs_mercadorias
        Align = alTop
        TabOrder = 0
        object tbs_mercadorias: TTabSheet
          Caption = 'Mercadorias'
          object Label1: TLabel
            Left = 646
            Top = 33
            Width = 9
            Height = 14
            Caption = '+'
          end
          object Label2: TLabel
            Left = 677
            Top = 33
            Width = 9
            Height = 14
            Caption = '+'
          end
          object lbl_dtvcto: TStaticText
            Left = 88
            Top = 2
            Width = 58
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Dt.Vcto'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object lbl_codpro: TStaticText
            Left = 0
            Top = 2
            Width = 53
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo Produto'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object lbl_lote: TStaticText
            Left = 52
            Top = 2
            Width = 37
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lote'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object lbl_descricao: TStaticText
            Left = 145
            Top = 2
            Width = 164
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object CODPRO: TComboEdit
            Left = 0
            Top = 31
            Width = 53
            Height = 19
            Alignment = taRightJustify
            Ctl3D = False
            GlyphKind = gkEllipsis
            ButtonWidth = 0
            NumGlyphs = 1
            ParentCtl3D = False
            TabOrder = 4
            Text = 'CODPRO'
            OnEnter = CODPROEnter
            OnExit = CODPROExit
            OnKeyDown = CODPROKeyDown
            OnKeyPress = CODPROKeyPress
          end
          object LOTE: TComboEdit
            Left = 52
            Top = 31
            Width = 37
            Height = 19
            Hint = 'Digite o Valor ou Pressione [F3]- p/Consultar'
            Ctl3D = False
            GlyphKind = gkEllipsis
            ButtonWidth = 0
            NumGlyphs = 1
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = 'LOTE'
            OnExit = LOTEExit
            OnKeyDown = LOTEKeyDown
            OnKeyPress = LOTEKeyPress
          end
          object DATAV: TMaskEdit
            Left = 88
            Top = 31
            Width = 58
            Height = 20
            TabStop = False
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 6
            Text = '  /  /    '
            OnExit = DATAVExit
            OnKeyDown = DATAVKeyDown
          end
          object NOMPRO: TEdit
            Left = 145
            Top = 31
            Width = 164
            Height = 19
            TabStop = False
            Color = cl3DLight
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            Text = 'NOMPRO'
          end
          object lbl_und: TStaticText
            Left = 308
            Top = 2
            Width = 27
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Und'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 20
          end
          object UND: TEdit
            Left = 308
            Top = 31
            Width = 27
            Height = 19
            TabStop = False
            Color = cl3DLight
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Text = 'edt_nomeproduto'
          end
          object lbl_quantidade: TStaticText
            Left = 334
            Top = 2
            Width = 41
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtde.'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 21
          end
          object lbl_precounitario: TStaticText
            Left = 374
            Top = 2
            Width = 51
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Pre'#231'o Unit'#225'rio'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 22
          end
          object Grid: TDBGrid
            Left = -1
            Top = 49
            Width = 781
            Height = 179
            DataSource = Ds_Itens
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 23
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDblClick = GridDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CODPRO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOTE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAV'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMPRO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 162
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UND'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOUNI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 49
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SITTRI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 23
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CFOP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALICMS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMSR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIPI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 36
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'LISTA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESC01'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESC02'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESC03'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTALI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Serif'
                Font.Style = []
                Width = 53
                Visible = True
              end>
          end
          object StaticText11: TStaticText
            Left = 448
            Top = 2
            Width = 39
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'CFOP'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 24
          end
          object CFOP: TComboEdit
            Left = 448
            Top = 31
            Width = 39
            Height = 19
            Alignment = taCenter
            Ctl3D = False
            GlyphKind = gkEllipsis
            ButtonWidth = 0
            MaxLength = 5
            NumGlyphs = 1
            ParentCtl3D = False
            TabOrder = 12
            Text = '5405'
            OnExit = CFOPExit
            OnKeyPress = CFOPKeyPress
          end
          object StaticText12: TStaticText
            Left = 486
            Top = 2
            Width = 37
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Al'#237'q. Icms'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 25
          end
          object StaticText13: TStaticText
            Left = 522
            Top = 2
            Width = 36
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '%Red. Icms'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 26
          end
          object StaticText14: TStaticText
            Left = 557
            Top = 2
            Width = 38
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Al'#237'q. IPI'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 27
          end
          object StaticText15: TStaticText
            Left = 593
            Top = 2
            Width = 30
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lista'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 28
          end
          object StaticText17: TStaticText
            Left = 707
            Top = 2
            Width = 73
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Vlr. Total'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 29
          end
          object LISTA: TComboEdit
            Left = 593
            Top = 31
            Width = 30
            Height = 19
            Alignment = taCenter
            Ctl3D = False
            GlyphKind = gkEllipsis
            ButtonWidth = 0
            NumGlyphs = 1
            ParentCtl3D = False
            TabOrder = 16
            Text = 'edt_codproduto'
          end
          object CB_BARRAS: TCheckBox
            Left = 0
            Top = 237
            Width = 238
            Height = 17
            Caption = '&Utilizar C'#243'digos de Barras'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 31
          end
          object bbSugestao: TBitBtn
            Left = 568
            Top = 230
            Width = 212
            Height = 25
            Cursor = crHandPoint
            Hint = 
              'Click aqui para formar um pedido de acordo com as estatisticas a' +
              'nteriores'
            Caption = 'Sugest'#227'o Pedido de Compra'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 32
            OnClick = bbSugestaoClick
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
            NumGlyphs = 2
          end
          object StaticText18: TStaticText
            Left = 622
            Top = 2
            Width = 86
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descontos'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 33
          end
          object StaticText27: TStaticText
            Left = 424
            Top = 2
            Width = 25
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'CST'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 34
          end
          object SITTRI: TEdit
            Left = 424
            Top = 31
            Width = 25
            Height = 19
            Color = 12189695
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnExit = SITTRIExit
            OnKeyPress = SITTRIKeyPress
          end
          object PCOUNI: TEdit
            Left = 374
            Top = 31
            Width = 51
            Height = 19
            Hint = 
              'Digite aqui o Pre'#231'o Unit'#225'rio do Produto.'#13#10'Pressione a tecla [F2]' +
              ' para ver compras anteriores'
            Color = 16754386
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnExit = PCOUNIExit
            OnKeyDown = PCOUNIKeyDown
            OnKeyPress = PCOUNIKeyPress
          end
          object ALICMS: TEdit
            Left = 486
            Top = 31
            Width = 37
            Height = 19
            Color = 12189695
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnExit = ALICMSExit
          end
          object PREDICMNOR: TEdit
            Left = 522
            Top = 31
            Width = 36
            Height = 19
            Color = 12189695
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnExit = PREDICMNORExit
          end
          object ALIPI: TEdit
            Left = 557
            Top = 31
            Width = 38
            Height = 19
            Color = 12189695
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnExit = ALIPIExit
          end
          object MDESCI01: TEdit
            Left = 622
            Top = 31
            Width = 25
            Height = 19
            Hint = 'Digite aqui o percentual'#13#10'de desconto'
            Color = 13553407
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnExit = MDESCI01Exit
            OnKeyPress = MDESCI01KeyPress
          end
          object MDESCI02: TEdit
            Left = 654
            Top = 31
            Width = 24
            Height = 19
            Hint = 'Digite aqui o percentual'#13#10'de desconto'
            Color = 13553407
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
            OnExit = MDESCI02Exit
            OnKeyPress = MDESCI02KeyPress
          end
          object MDESCI03: TEdit
            Left = 685
            Top = 31
            Width = 23
            Height = 19
            Hint = 'Digite aqui o percentual'
            Color = 13553407
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnExit = MDESCI03Exit
            OnKeyPress = MDESCI03KeyPress
          end
          object QTD: TEdit
            Left = 334
            Top = 31
            Width = 41
            Height = 19
            Hint = 'Digite a quantidade '#13#10'do Produto'
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnExit = QTDExit
            OnKeyDown = QTDKeyDown
            OnKeyPress = QTDKeyPress
          end
          object TOTALI: TEdit
            Left = 707
            Top = 31
            Width = 73
            Height = 19
            Hint = 'Digite a quantidade '#13#10'do Produto'
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 30
          end
        end
        object tbs_complementares: TTabSheet
          Caption = 'Complementares'
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 776
            Height = 258
            Align = alClient
            Caption = 'Dados da Nota Fiscal de Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label14: TLabel
              Left = 5
              Top = 30
              Width = 52
              Height = 14
              Caption = 'N'#250'mero'
            end
            object Label66: TLabel
              Left = 5
              Top = 50
              Width = 106
              Height = 14
              Caption = 'Data da Entrada'
            end
            object Label36: TLabel
              Left = 5
              Top = 68
              Width = 120
              Height = 14
              Caption = 'Base Icms Normal'
            end
            object Label44: TLabel
              Left = 5
              Top = 86
              Width = 138
              Height = 14
              Caption = 'Outras D/Aces c/Inc'
            end
            object Label86: TLabel
              Left = 5
              Top = 105
              Width = 108
              Height = 13
              Caption = 'Total Base Calculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 5
              Top = 123
              Width = 114
              Height = 14
              Caption = 'Base Icms Retido'
            end
            object Label41: TLabel
              Left = 5
              Top = 140
              Width = 35
              Height = 14
              Caption = 'Frete'
            end
            object Label43: TLabel
              Left = 5
              Top = 157
              Width = 133
              Height = 14
              Caption = 'IPI das Mercadorias'
            end
            object Label48: TLabel
              Left = 5
              Top = 177
              Width = 106
              Height = 14
              Caption = 'Total Inalterado'
            end
            object Label49: TLabel
              Left = 5
              Top = 197
              Width = 88
              Height = 14
              Caption = 'Total da Nota'
            end
            object Label53: TLabel
              Left = 5
              Top = 215
              Width = 102
              Height = 14
              Caption = 'Transportadora'
            end
            object Label85: TLabel
              Left = 241
              Top = 86
              Width = 14
              Height = 13
              Caption = '%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 168
              Top = 231
              Width = 163
              Height = 14
              Caption = 'Chave do Pedido Origem'
            end
            object Label32: TLabel
              Left = 247
              Top = 30
              Width = 35
              Height = 14
              Caption = 'S'#233'rie'
            end
            object Label33: TLabel
              Left = 338
              Top = 29
              Width = 66
              Height = 14
              Caption = 'Sub-S'#233'rie'
            end
            object Label35: TLabel
              Left = 300
              Top = 50
              Width = 94
              Height = 14
              Caption = 'Data Emiss'#227'o:'
            end
            object Label38: TLabel
              Left = 305
              Top = 66
              Width = 89
              Height = 14
              Caption = 'Icms Normal:'
            end
            object Label87: TLabel
              Left = 274
              Top = 101
              Width = 119
              Height = 13
              Caption = 'Valor Total do ICMS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 310
              Top = 120
              Width = 83
              Height = 14
              Caption = 'Icms Retido:'
            end
            object Label73: TLabel
              Left = 293
              Top = 140
              Width = 101
              Height = 14
              Caption = '% IPI S/Frete:'
            end
            object Label42: TLabel
              Left = 342
              Top = 156
              Width = 52
              Height = 14
              Caption = 'Seguro:'
            end
            object Label47: TLabel
              Left = 299
              Top = 175
              Width = 95
              Height = 14
              Caption = 'Total Positivo:'
            end
            object Label60: TLabel
              Left = 278
              Top = 194
              Width = 116
              Height = 14
              Caption = 'Status do Pedido:'
            end
            object Label21: TLabel
              Left = 416
              Top = 230
              Width = 8
              Height = 14
              Caption = '/'
            end
            object Label34: TLabel
              Left = 499
              Top = 33
              Width = 56
              Height = 14
              Caption = 'Modelo.:'
            end
            object Label82: TLabel
              Left = 629
              Top = 33
              Width = 63
              Height = 14
              Caption = 'Sub-Mod:'
            end
            object Label46: TLabel
              Left = 531
              Top = 51
              Width = 123
              Height = 14
              Caption = 'Total Mercadorias:'
            end
            object Label22: TLabel
              Left = 497
              Top = 68
              Width = 159
              Height = 14
              Caption = 'Outras(Redu'#231#227'o ICMS):'
            end
            object Label75: TLabel
              Left = 510
              Top = 88
              Width = 143
              Height = 14
              Caption = 'Outras D/Aces s/Inc:'
            end
            object Label50: TLabel
              Left = 550
              Top = 185
              Width = 101
              Height = 14
              Caption = 'Total Negativo:'
            end
            object Label52: TLabel
              Left = 599
              Top = 165
              Width = 54
              Height = 14
              Caption = 'Isentas:'
            end
            object Label45: TLabel
              Left = 551
              Top = 148
              Width = 103
              Height = 14
              Caption = 'Total Desconto:'
            end
            object Label74: TLabel
              Left = 569
              Top = 131
              Width = 85
              Height = 14
              Caption = 'IPI do Frete:'
            end
            object NUMNF: TEdit
              Left = 152
              Top = 27
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnExit = NUMNFExit
              OnKeyPress = NUMNFKeyPress
            end
            object DATAENT: TMaskEdit
              Left = 152
              Top = 45
              Width = 87
              Height = 20
              Ctl3D = False
              EditMask = '!99/99/9999;1; '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Text = '  /  /    '
              OnExit = DATAENTExit
            end
            object MBASEN: TEdit
              Left = 152
              Top = 63
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              OnEnter = MBASENEnter
              OnExit = MBASENExit
              OnKeyPress = MBASENKeyPress
            end
            object OUTRAS: TEdit
              Left = 152
              Top = 81
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Color = 5636010
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnExit = OUTRASExit
              OnKeyPress = OUTRASKeyPress
            end
            object OUTRAS_PERC: TEdit
              Left = 259
              Top = 81
              Width = 45
              Height = 20
              BiDiMode = bdRightToLeft
              Color = 5636010
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
              OnExit = OUTRAS_PERCExit
              OnKeyPress = OUTRAS_PERCKeyPress
            end
            object TOTAL_BC: TEdit
              Left = 152
              Top = 99
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Color = 16744576
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 15
              OnExit = TOTAL_BCExit
              OnKeyPress = TOTAL_BCKeyPress
            end
            object MBASER: TEdit
              Left = 152
              Top = 117
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 17
              OnEnter = MBASEREnter
              OnExit = MBASERExit
              OnKeyPress = MBASERKeyPress
            end
            object VALFRE: TEdit
              Left = 152
              Top = 135
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 19
              OnExit = VALFREExit
              OnKeyPress = VALFREKeyPress
            end
            object IPI: TEdit
              Left = 152
              Top = 153
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 22
              OnEnter = IPIEnter
              OnExit = IPIExit
              OnKeyPress = IPIKeyPress
            end
            object TOTINA: TEdit
              Left = 152
              Top = 171
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 25
              OnEnter = TOTINAEnter
              OnExit = TOTINAExit
              OnKeyPress = TOTINAKeyPress
            end
            object TOTNOT: TEdit
              Left = 152
              Top = 189
              Width = 87
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 28
              OnExit = TOTNOTExit
              OnKeyPress = TOTNOTKeyPress
            end
            object CODTRA: TEdit
              Left = 152
              Top = 208
              Width = 48
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 31
              OnExit = CODTRAExit
              OnKeyPress = CODTRAKeyPress
            end
            object NOMTRA: TEdit
              Left = 198
              Top = 208
              Width = 280
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 33
            end
            object SERIE: TEdit
              Left = 286
              Top = 26
              Width = 49
              Height = 20
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = SERIEExit
              OnKeyPress = SERIEKeyPress
            end
            object SUBSERIE: TEdit
              Left = 412
              Top = 26
              Width = 66
              Height = 20
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnExit = SUBSERIEExit
              OnKeyPress = SUBSERIEKeyPress
            end
            object DATAE: TMaskEdit
              Left = 395
              Top = 44
              Width = 83
              Height = 20
              Ctl3D = False
              EditMask = '!99/99/9999;1; '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Text = '  /  /    '
              OnExit = DATAEExit
            end
            object ICMSN: TEdit
              Left = 395
              Top = 62
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnEnter = ICMSNEnter
              OnExit = ICMSNExit
              OnKeyPress = ICMSNKeyPress
            end
            object OUTRAS_IMP: TEdit
              Left = 395
              Top = 80
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Color = 5636010
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              OnExit = OUTRAS_IMPExit
              OnKeyPress = OUTRAS_IMPKeyPress
            end
            object TOTAL_ICMS: TEdit
              Left = 395
              Top = 98
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Color = 16744576
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 16
              OnExit = TOTAL_ICMSExit
              OnKeyPress = TOTAL_ICMSKeyPress
            end
            object MICMSR: TEdit
              Left = 395
              Top = 116
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 18
              OnEnter = MICMSREnter
              OnExit = MICMSRExit
              OnKeyPress = MICMSRKeyPress
            end
            object PIPIFRETE: TEdit
              Left = 395
              Top = 134
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 20
              OnExit = PIPIFRETEExit
              OnKeyPress = PIPIFRETEKeyPress
            end
            object SEGURO: TEdit
              Left = 395
              Top = 152
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 23
              OnExit = SEGUROExit
              OnKeyPress = SEGUROKeyPress
            end
            object TOTPOS: TEdit
              Left = 395
              Top = 170
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 26
              OnEnter = TOTPOSEnter
              OnExit = TOTPOSExit
              OnKeyPress = TOTPOSKeyPress
            end
            object STATUS: TEdit
              Left = 395
              Top = 189
              Width = 83
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 29
            end
            object NUMPED_ORI: TEdit
              Left = 338
              Top = 227
              Width = 73
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 34
              OnExit = NUMPED_ORIExit
              OnKeyPress = NUMPED_ORIKeyPress
            end
            object PAG_ORI: TEdit
              Left = 427
              Top = 227
              Width = 51
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 35
              OnExit = PAG_ORIExit
              OnKeyPress = PAG_ORIKeyPress
            end
            object MODELO: TEdit
              Left = 558
              Top = 29
              Width = 60
              Height = 20
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnExit = MODELOExit
              OnKeyPress = MODELOKeyPress
            end
            object SUBMOD: TEdit
              Left = 697
              Top = 29
              Width = 38
              Height = 20
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnExit = SUBMODExit
              OnKeyPress = SUBMODKeyPress
            end
            object TOTMER: TEdit
              Left = 658
              Top = 47
              Width = 77
              Height = 20
              TabStop = False
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object OUTNINC: TEdit
              Left = 658
              Top = 65
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
              OnExit = OUTNINCExit
              OnKeyPress = OUTNINCKeyPress
            end
            object OUTDESP: TEdit
              Left = 658
              Top = 83
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
              OnExit = OUTDESPExit
              OnKeyPress = OUTDESPKeyPress
            end
            object TOTNEG: TEdit
              Left = 658
              Top = 180
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 30
              OnEnter = TOTNEGEnter
              OnExit = TOTNEGExit
              OnKeyPress = TOTNEGKeyPress
            end
            object ISENTAS: TEdit
              Left = 658
              Top = 162
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 27
              OnEnter = ISENTASEnter
              OnExit = ISENTASExit
              OnKeyPress = ISENTASKeyPress
            end
            object DESC: TEdit
              Left = 658
              Top = 144
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 24
              OnEnter = DESCEnter
              OnExit = DESCExit
              OnKeyPress = DESCKeyPress
            end
            object IPIFRETE: TEdit
              Left = 658
              Top = 126
              Width = 77
              Height = 20
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 21
              OnExit = IPIFRETEExit
              OnKeyPress = IPIFRETEKeyPress
            end
            object GB_SIV: TGroupBox
              Left = 478
              Top = 201
              Width = 289
              Height = 57
              Caption = 'Outros s/Incidencia'
              TabOrder = 32
              object Label23: TLabel
                Left = 4
                Top = 18
                Width = 78
                Height = 14
                Caption = 'Vlr do Frete'
              end
              object Label27: TLabel
                Left = 154
                Top = 16
                Width = 69
                Height = 14
                Caption = 'Dare/Darf'
              end
              object Label28: TLabel
                Left = 7
                Top = 39
                Width = 75
                Height = 14
                Caption = 'Outros Vlrs'
              end
              object SIV_FRETE: TEdit
                Left = 83
                Top = 14
                Width = 64
                Height = 20
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = SIV_FRETEExit
                OnKeyPress = SIV_FRETEKeyPress
              end
              object SIV_DARE: TEdit
                Left = 227
                Top = 12
                Width = 58
                Height = 20
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                OnExit = SIV_DAREExit
                OnKeyPress = SIV_DAREKeyPress
              end
              object SIV_OUTROS: TEdit
                Left = 83
                Top = 33
                Width = 64
                Height = 20
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                OnExit = SIV_OUTROSExit
                OnKeyPress = SIV_OUTROSKeyPress
              end
            end
            object CB_NFCF: TCheckBox
              Left = 276
              Top = 11
              Width = 113
              Height = 13
              Caption = 'Cupom Fiscal'
              TabOrder = 36
            end
            object CB_GNF: TCheckBox
              Left = 6
              Top = 237
              Width = 140
              Height = 16
              Caption = 'Gravar nota fiscal'
              TabOrder = 37
            end
          end
        end
        object tbs_duplicatas: TTabSheet
          Caption = 'Duplicatas'
          ImageIndex = 2
          object Bevel3: TBevel
            Left = 0
            Top = 0
            Width = 776
            Height = 258
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label72: TLabel
            Left = 3
            Top = 6
            Width = 73
            Height = 13
            Caption = 'Cond.Pgto.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 3
            Top = 25
            Width = 43
            Height = 13
            Caption = 'Banco:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 3
            Top = 44
            Width = 140
            Height = 13
            Caption = 'N'#250'mero da Duplicata:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label65: TLabel
            Left = 320
            Top = 45
            Width = 263
            Height = 13
            Caption = 'Parcelas Come'#231'ando com letra/n'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label76: TLabel
            Left = 320
            Top = 62
            Width = 307
            Height = 13
            Caption = 'Outros Valores a Serem Incluidos na Duplicata:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 8
            Top = 194
            Width = 137
            Height = 14
            Caption = 'Data de Vencimento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label70: TLabel
            Left = 7
            Top = 214
            Width = 149
            Height = 14
            Caption = 'Valor Desc.Financeiro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label71: TLabel
            Left = 316
            Top = 214
            Width = 85
            Height = 14
            Caption = 'P/Pgto. at'#233'.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label57: TLabel
            Left = 274
            Top = 194
            Width = 126
            Height = 14
            Caption = 'Valor da Duplicata:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CONDPAG: TEdit
            Left = 80
            Top = 2
            Width = 309
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = CONDPAGExit
            OnKeyPress = CONDPAGKeyPress
          end
          object CODBCO: TEdit
            Left = 80
            Top = 21
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = CODBCOExit
            OnKeyPress = CODBCOKeyPress
          end
          object NOMBCO: TEdit
            Left = 152
            Top = 21
            Width = 237
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = 'Carteira'
          end
          object CB_BOLETO: TCheckBox
            Left = 554
            Top = 2
            Width = 97
            Height = 17
            Caption = 'Com Boleto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object NUMDUP: TEdit
            Left = 144
            Top = 40
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = NUMDUPExit
            OnKeyPress = NUMDUPKeyPress
          end
          object DESD: TEdit
            Left = 629
            Top = 39
            Width = 22
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = DESDExit
            OnKeyPress = DESDKeyPress
          end
          object CB_GDP: TCheckBox
            Left = 3
            Top = 62
            Width = 149
            Height = 17
            Caption = 'Gravar duplicatas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object OUTVDUP: TEdit
            Left = 629
            Top = 57
            Width = 96
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 7
            OnExit = OUTVDUPExit
            OnKeyPress = OUTVDUPKeyPress
          end
          object panel_prazo: TPanel
            Left = 3
            Top = 80
            Width = 763
            Height = 26
            BevelOuter = bvLowered
            TabOrder = 8
            object Label77: TLabel
              Left = 5
              Top = 10
              Width = 75
              Height = 13
              Caption = 'Prazo Inicial:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label78: TLabel
              Left = 160
              Top = 10
              Width = 141
              Height = 13
              Caption = 'Quantidade de Parcelas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label79: TLabel
              Left = 396
              Top = 10
              Width = 55
              Height = 13
              Caption = 'Intervalo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object PRAZO: TEdit
              Left = 82
              Top = 4
              Width = 50
              Height = 20
              Hint = 'Digite aqui o prazo'#13#10'inicial para vencimento'#13#10'da(s) duplicata(s)'
              BiDiMode = bdRightToLeft
              Ctl3D = False
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnExit = PRAZOExit
              OnKeyPress = PRAZOKeyPress
            end
            object QTDP: TEdit
              Left = 305
              Top = 4
              Width = 50
              Height = 20
              Hint = 'digite aqui a quantidade de parcelas'#13#10'das duplicatas'
              BiDiMode = bdRightToLeft
              Ctl3D = False
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnExit = QTDPExit
              OnKeyPress = QTDPKeyPress
            end
            object INT: TEdit
              Left = 455
              Top = 4
              Width = 50
              Height = 20
              Hint = 
                'digite arqui o intervalo'#13#10'para vencimento entre uma'#13#10'duplicata e' +
                ' outra'
              BiDiMode = bdRightToLeft
              Ctl3D = False
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnExit = INTExit
              OnKeyPress = INTKeyPress
            end
            object bbGerarDuplic: TBitBtn
              Left = 532
              Top = 2
              Width = 137
              Height = 21
              Cursor = crHandPoint
              Caption = 'Gerar Duplicatas'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bbGerarDuplicClick
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
          end
          object DTVENC: TMaskEdit
            Left = 158
            Top = 191
            Width = 80
            Height = 20
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 9
            Text = '  /  /    '
            OnExit = DTVENCExit
          end
          object VALDESCFOUT: TEdit
            Left = 157
            Top = 210
            Width = 80
            Height = 20
            Color = 16754386
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 13
            Visible = False
            OnExit = VALDESCFOUTExit
          end
          object bbDupGravar: TBitBtn
            Left = 4
            Top = 233
            Width = 100
            Height = 21
            Cursor = crHandPoint
            Caption = 'Grava&r'
            TabOrder = 14
            OnClick = bbDupGravarClick
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
          object bbdup_editar: TBitBtn
            Left = 104
            Top = 233
            Width = 100
            Height = 21
            Cursor = crHandPoint
            Caption = '&Editar'
            TabOrder = 15
            OnClick = bbdup_editarClick
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
          object bbdup_cancelar: TBitBtn
            Left = 204
            Top = 233
            Width = 100
            Height = 21
            Cursor = crHandPoint
            Caption = '&Cancelar'
            TabOrder = 16
            OnClick = bbdup_cancelarClick
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
          object bbdup_excluir: TBitBtn
            Left = 304
            Top = 233
            Width = 100
            Height = 21
            Cursor = crHandPoint
            Caption = '&Excluir'
            TabOrder = 17
            OnClick = bbdup_excluirClick
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
          object DTDESCF: TMaskEdit
            Left = 403
            Top = 210
            Width = 90
            Height = 20
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 12
            Text = '  /  /    '
            OnExit = DTDESCFExit
          end
          object VALDUP: TEdit
            Left = 403
            Top = 191
            Width = 90
            Height = 20
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
            OnExit = VALDUPExit
          end
          object CB_VDES_CODEMP: TCheckBox
            Left = 547
            Top = 213
            Width = 97
            Height = 17
            Caption = 'T'#237'tulo Extra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
          end
          object memo_totdup: TMemo
            Left = 666
            Top = 189
            Width = 102
            Height = 66
            TabStop = False
            Alignment = taCenter
            Ctl3D = False
            Lines.Strings = (
              'Total das'
              'Duplicatas')
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 19
          end
          object Grid_Duplicata: TDBGrid
            Left = 2
            Top = 106
            Width = 765
            Height = 83
            DataSource = Ds_Duplicata
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 20
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTVCTO'
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Title.Color = cl3DLight
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Color = cl3DLight
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCFIN'
                Title.Alignment = taCenter
                Title.Caption = 'Desc. Financeiro'
                Title.Color = cl3DLight
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 121
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PGTODT'
                Title.Alignment = taCenter
                Title.Caption = 'Pagto. At'#233
                Title.Color = cl3DLight
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUT'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Valor Outros'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCFINOUT'
                Title.Alignment = taCenter
                Title.Caption = 'Desc. Financ. Outros'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 144
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'EXTRA'
                Title.Alignment = taCenter
                Title.Caption = 'Extra'
                Title.Color = cl3DLight
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 106
                Visible = True
              end>
          end
          object CB_TABPV: TComboBox
            Left = 80
            Top = 1
            Width = 48
            Height = 22
            BevelKind = bkSoft
            ItemHeight = 14
            TabOrder = 21
            Text = 'PO'
            Visible = False
            Items.Strings = (
              'AV'
              'AP '
              'PP'
              'PO')
          end
          object CODPV: TEdit
            Left = 128
            Top = 3
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 22
            Text = '99'
            Visible = False
          end
          object VALDESCF: TEdit
            Left = 158
            Top = 210
            Width = 80
            Height = 20
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            OnExit = VALDESCFExit
          end
        end
        object tbs_previsao: TTabSheet
          Caption = 'Previs'#245'es/Outras'
          ImageIndex = 3
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 776
            Height = 258
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label67: TLabel
            Left = 4
            Top = 12
            Width = 213
            Height = 14
            Caption = 'Data da Emiss'#227'o da Nota...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label68: TLabel
            Left = 4
            Top = 33
            Width = 223
            Height = 14
            Caption = 'Data da Entrega das Mercadorias:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label69: TLabel
            Left = 4
            Top = 53
            Width = 211
            Height = 14
            Caption = 'Percentual de Frete...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 2
            Top = 79
            Width = 114
            Height = 14
            Caption = 'Observa'#231#245'es.......'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 4
            Top = 138
            Width = 110
            Height = 14
            Caption = 'Empresa Origem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 3
            Top = 156
            Width = 163
            Height = 14
            Caption = 'Chave do Pedido Origem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 246
            Top = 157
            Width = 5
            Height = 14
            Caption = '/'
          end
          object Label63: TLabel
            Left = 4
            Top = 118
            Width = 110
            Height = 14
            Caption = 'Alterado por.......'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label62: TLabel
            Left = 4
            Top = 98
            Width = 110
            Height = 14
            Caption = 'Digitado Por.......'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PERCFRE: TEdit
            Left = 228
            Top = 48
            Width = 80
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = PERCFREExit
            OnKeyPress = PERCFREKeyPress
          end
          object DTPENT: TMaskEdit
            Left = 228
            Top = 29
            Width = 80
            Height = 20
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = DTPENTExit
          end
          object DTPFAT: TMaskEdit
            Left = 228
            Top = 10
            Width = 80
            Height = 20
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 2
            Text = '  /  /    '
            OnExit = DTPFATExit
          end
          object RGFRETEPC: TRadioGroup
            Left = 311
            Top = 5
            Width = 166
            Height = 47
            Caption = 'Frete Por Conta do:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              '&Emitente (CIF)'
              '&Destinatario (FOB)')
            ParentFont = False
            TabOrder = 3
          end
          object OBSERVACAO: TEdit
            Left = 118
            Top = 74
            Width = 360
            Height = 20
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
          end
          object CODEMP_ORI: TEdit
            Left = 118
            Top = 131
            Width = 75
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 5
            OnKeyPress = MBASENKeyPress
          end
          object Edit1: TEdit
            Left = 168
            Top = 150
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 6
            OnExit = NUMPED_ORIExit
            OnKeyPress = MBASENKeyPress
          end
          object Edit2: TEdit
            Left = 257
            Top = 150
            Width = 43
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 7
            OnExit = PAG_ORIExit
            OnKeyPress = MBASENKeyPress
          end
          object CODDIG: TEdit
            Left = 118
            Top = 93
            Width = 47
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 8
          end
          object NOMDIG: TEdit
            Left = 164
            Top = 93
            Width = 181
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 9
          end
          object USRMOD: TEdit
            Left = 118
            Top = 112
            Width = 47
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 10
          end
          object NOMUSRM: TEdit
            Left = 164
            Top = 112
            Width = 106
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 11
          end
          object DTMOD: TMaskEdit
            Left = 269
            Top = 112
            Width = 75
            Height = 20
            Ctl3D = False
            Enabled = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 12
            Text = '  /  /    '
          end
          object HRMOD: TEdit
            Left = 343
            Top = 112
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 13
          end
          object HORDIG: TEdit
            Left = 343
            Top = 93
            Width = 73
            Height = 20
            BiDiMode = bdRightToLeft
            Ctl3D = False
            Enabled = False
            ParentBiDiMode = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 14
          end
          object RG_TIPOIMPRES: TRadioGroup
            Left = 4
            Top = 197
            Width = 101
            Height = 58
            Caption = 'Tipo Impessao:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Normal'
              'Complement'
              'Total')
            ParentFont = False
            TabOrder = 15
          end
          object RG_IMP: TRadioGroup
            Left = 108
            Top = 198
            Width = 100
            Height = 43
            Caption = 'Tipo Impessao:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Matricial'
              'Laser')
            ParentFont = False
            TabOrder = 16
          end
        end
        object tbs_configuracao: TTabSheet
          Caption = 'Configura'#231#245'es'
          ImageIndex = 4
          TabVisible = False
          object Bevel5: TBevel
            Left = 0
            Top = 0
            Width = 776
            Height = 258
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 423
      Width = 727
      Height = 50
      TabOrder = 24
      object StaticText16: TStaticText
        Left = 3
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Total de Itens'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object StaticText19: TStaticText
        Left = 89
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descontos'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object StaticText20: TStaticText
        Left = 175
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor IPI'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object StaticText21: TStaticText
        Left = 261
        Top = 11
        Width = 119
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Total das Unidades'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object StaticText22: TStaticText
        Left = 379
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object StaticText23: TStaticText
        Left = 465
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Total Bruto'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object StaticText24: TStaticText
        Left = 551
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Icms Retido'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object StaticText25: TStaticText
        Left = 637
        Top = 11
        Width = 87
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Total L'#237'quido'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object QTDITEM: TStaticText
        Left = 3
        Top = 28
        Width = 86
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00 '
        Color = 16744576
        ParentColor = False
        TabOrder = 8
      end
      object TOTDES: TCurrencyEdit
        Left = 89
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 9
      end
      object VALIPI: TCurrencyEdit
        Left = 175
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 10
      end
      object TOTITEM: TStaticText
        Left = 262
        Top = 28
        Width = 118
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0,00 '
        Color = 16744576
        ParentColor = False
        TabOrder = 11
      end
      object TOTFRE: TCurrencyEdit
        Left = 379
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 12
      end
      object TOTAL: TCurrencyEdit
        Left = 465
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Color = 16744576
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 13
      end
      object TOTLIQ: TCurrencyEdit
        Left = 637
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Color = 16744576
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 14
      end
      object ICMSR: TCurrencyEdit
        Left = 551
        Top = 27
        Width = 87
        Height = 19
        AutoSize = False
        Color = 13238163
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 15
      end
    end
    object btn_imprimir: TBitBtn
      Left = 4
      Top = 475
      Width = 135
      Height = 25
      Cursor = crHandPoint
      Caption = 'Im&primir Pedido'
      Enabled = False
      TabOrder = 25
      OnClick = btn_imprimirClick
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
    object btn_exportar: TBitBtn
      Left = 138
      Top = 475
      Width = 151
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exportar p/Fazer Pedido Eletronico'
      Caption = 'Exportar (Ped Ele)'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 26
      OnClick = btn_exportarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C20E0000C20E00000000000000000000512727512727
        512727512727512727512727512727512727512727512727512727FF00FFFF00
        FFFF00FFFF00FFFF00FF512727FCF5EDFBF0E4FBE9D8FCE4CEFCDDC0FCD7B5FB
        D1A9FBCB9EFBC695512727FF00FFFF00FFFF00FFFF00FFFF00FF512727FBF7F2
        FCF2E8FCEDDFFCE7D2FBE1C6FCDBBCFCD4AEFCCFA5FBC999512727FF00FFFF00
        FFFF00FFFF00FFFF00FF51272751272751272751272751272751272751272751
        2727512727512727512727FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF512727512727
        5127275127275127275127275127275127275127275127270A510AFF00FFFF00
        FFFF00FFFF00FFFF00FF512727FCF5EDFBF0E4FBE9D8FCE4CEFCDDC0FCD7B5FB
        D1A9FBCB9E0A510A139B190A510AFF00FFFF00FFFF00FFFF00FF512727FBF7F2
        FCF2E8FCEDDFFCE7D2FBE1C6FCDBBCFCD4AE0A510A1AA92717A320149C1A0A51
        0AFF00FFFF00FFFF00FF5127275127275127275127275127275127275127270A
        510A25B9361FB2301BAC2818A522159E1C0A510AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0A510A2FCA482AC24026BC3921B3311CAD2A18A7
        2316A01E0A510AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A510A0A510A0A
        510A0A510A2BC54327BE3C21B6330A510A0A510A0A510A0A510A0A51840A5184
        0A51840A51840A51840A51840A51840A51840A510A30CE4D2CC54528BF3C0A51
        0AFF00FFFF00FFFF00FF0A5184C2F0FCB1ECFB9FE8FB8CE4FC7BE0FC69DBFC58
        D8FB0A510A37D65732CF4F2DC9470A510AFF00FFFF00FFFF00FF0A5184D0F4FC
        C0F0FCADEBFB9BE7FC89E4FB77E0FC65DCFB0A510A3CDF6239D85934D1500A51
        0AFF00FFFF00FFFF00FF0A51840A51840A51840A51840A51840A51840A51840A
        51840A510A0A510A0A510A0A510A0A510AFF00FFFF00FFFF00FF}
    end
    object btn_importar: TBitBtn
      Left = 288
      Top = 475
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Caption = 'Importar'
      TabOrder = 27
      OnClick = btn_importarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C20E0000C20E000000000000000000000A51840A5184
        0A51840A51840A51840A51840A51840A51840A510A0A510A0A510A0A510A0A51
        0AFF00FFFF00FFFF00FF0A5184C2F0FCB1ECFB9FE8FB8CE4FC7BE0FC69DBFC58
        D8FB0A510A1FB02D1BAB2817A5210A510AFF00FFFF00FFFF00FF0A5184D0F4FC
        C0F0FCADEBFB9BE7FC89E4FB77E0FC65DCFB0A510A23B8351FB12E1BAB280A51
        0AFF00FFFF00FFFF00FF0A51840A51840A51840A51840A51840A51840A51840A
        51840A510A28BF3C24B8351FB22F0A510AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0A510A0A510A0A510A0A510A2CC64628C03D25B9370A51
        0A0A510A0A510A0A510AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A510A3B
        DB5D35D45532CE4E2DC74729C03E25B93721B3300A510AFF00FF512727512727
        5127275127275127275127275127270A510A3CDC5E36D65632CF4F2DC74729C1
        3F0A510AFF00FFFF00FF512727FCF5EDFBF0E4FBE9D8FCE4CEFCDDC0FCD7B5FB
        D1A90A510A3CDC5E37D75732D04F0A510AFF00FFFF00FFFF00FF512727FBF7F2
        FCF2E8FCEDDFFCE7D2FBE1C6FCDBBCFCD4AEFCCFA50A510A3CDD5F0A510AFF00
        FFFF00FFFF00FFFF00FF51272751272751272751272751272751272751272751
        27275127275127270A510AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF512727512727
        512727512727512727512727512727512727512727512727512727FF00FFFF00
        FFFF00FFFF00FFFF00FF512727FCF5EDFBF0E4FBE9D8FCE4CEFCDDC0FCD7B5FB
        D1A9FBCB9EFBC695512727FF00FFFF00FFFF00FFFF00FFFF00FF512727FBF7F2
        FCF2E8FCEDDFFCE7D2FBE1C6FCDBBCFCD4AEFCCFA5FBC999512727FF00FFFF00
        FFFF00FFFF00FFFF00FF51272751272751272751272751272751272751272751
        2727512727512727512727FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btn_vernota: TBitBtn
      Left = 410
      Top = 475
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Hint = 'Visualizar Em Forma de Nota Fiscal'
      Caption = '&Ver Nota'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 28
      OnClick = btn_vernotaClick
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
      NumGlyphs = 2
    end
    object UFFOR: TEdit
      Left = 520
      Top = 26
      Width = 28
      Height = 20
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 29
    end
    object StaticText26: TStaticText
      Left = 520
      Top = 9
      Width = 28
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BorderStyle = sbsSingle
      Caption = 'U.F'
      Color = 7105536
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 30
    end
    object CB_CALCPU: TCheckBox
      Left = 519
      Top = 481
      Width = 175
      Height = 17
      Hint = 
        'Se Marcado permite digitar o '#13#10'valor total, e e'#39' calculado o pre' +
        'co unitario'
      Caption = 'C'#225'lcular Pre'#231'o Unit'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 32
      OnClick = CB_CALCPUClick
    end
    object BitBtn1: TBitBtn
      Left = 735
      Top = 430
      Width = 56
      Height = 25
      Caption = 'Queda'
      TabOrder = 33
      OnClick = BitBtn1Click
    end
  end
  object Qr_Pf01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1 where PF1CHAVE is null')
    Left = 283
    Top = 70
    object Qr_Pf01PF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Qr_Pf01PF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Qr_Pf01PF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_Pf01PF1DATA: TDateTimeField
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Qr_Pf01PF1OBS: TMemoField
      FieldName = 'PF1OBS'
      Origin = 'SG_ASSOC.CADPF1.PF1OBS'
      BlobType = ftMemo
      Size = 300
    end
    object Qr_Pf01PF1DESC01: TFloatField
      FieldName = 'PF1DESC01'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC01'
    end
    object Qr_Pf01PF1DESC02: TFloatField
      FieldName = 'PF1DESC02'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC02'
    end
    object Qr_Pf01PF1DESC03: TFloatField
      FieldName = 'PF1DESC03'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC03'
    end
    object Qr_Pf01PF1TOTDES: TFloatField
      FieldName = 'PF1TOTDES'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDES'
    end
    object Qr_Pf01PF1TOTBRU: TFloatField
      FieldName = 'PF1TOTBRU'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRU'
    end
    object Qr_Pf01PF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_Pf01PF1STATUS: TFloatField
      FieldName = 'PF1STATUS'
      Origin = 'SG_ASSOC.CADPF1.PF1STATUS'
    end
    object Qr_Pf01PF1CODUSR: TFloatField
      FieldName = 'PF1CODUSR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODUSR'
    end
    object Qr_Pf01PF1HORDIG: TStringField
      FieldName = 'PF1HORDIG'
      Origin = 'SG_ASSOC.CADPF1.PF1HORDIG'
      Size = 8
    end
    object Qr_Pf01PF1USRMOD: TFloatField
      FieldName = 'PF1USRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1USRMOD'
    end
    object Qr_Pf01PF1DTMOD: TDateTimeField
      FieldName = 'PF1DTMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1DTMOD'
    end
    object Qr_Pf01PF1HRMOD: TStringField
      FieldName = 'PF1HRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1HRMOD'
      Size = 8
    end
    object Qr_Pf01PF1TOTMER: TFloatField
      FieldName = 'PF1TOTMER'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTMER'
    end
    object Qr_Pf01PF1TOTPOS: TFloatField
      FieldName = 'PF1TOTPOS'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPOS'
    end
    object Qr_Pf01PF1TOTNEG: TFloatField
      FieldName = 'PF1TOTNEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTNEG'
    end
    object Qr_Pf01PF1TOTINA: TFloatField
      FieldName = 'PF1TOTINA'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTINA'
    end
    object Qr_Pf01PF1TOTFRE: TFloatField
      FieldName = 'PF1TOTFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFRE'
    end
    object Qr_Pf01PF1TOTSEG: TFloatField
      FieldName = 'PF1TOTSEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTSEG'
    end
    object Qr_Pf01PF1BASEN: TFloatField
      FieldName = 'PF1BASEN'
      Origin = 'SG_ASSOC.CADPF1.PF1BASEN'
    end
    object Qr_Pf01PF1BASER: TFloatField
      FieldName = 'PF1BASER'
      Origin = 'SG_ASSOC.CADPF1.PF1BASER'
    end
    object Qr_Pf01PF1ICMSN: TFloatField
      FieldName = 'PF1ICMSN'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSN'
    end
    object Qr_Pf01PF1ICMSR: TFloatField
      FieldName = 'PF1ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
    object Qr_Pf01PF1CODLDR: TFloatField
      FieldName = 'PF1CODLDR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODLDR'
    end
    object Qr_Pf01PF1BASENR: TFloatField
      FieldName = 'PF1BASENR'
      Origin = 'SG_ASSOC.CADPF1.PF1BASENR'
    end
    object Qr_Pf01PF1ICMSNR: TFloatField
      FieldName = 'PF1ICMSNR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSNR'
    end
    object Qr_Pf01PF1ISENTAS: TFloatField
      FieldName = 'PF1ISENTAS'
      Origin = 'SG_ASSOC.CADPF1.PF1ISENTAS'
    end
    object Qr_Pf01PF1TOTOUT: TFloatField
      FieldName = 'PF1TOTOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT'
    end
    object Qr_Pf01PF1TOTIPI: TFloatField
      FieldName = 'PF1TOTIPI'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTIPI'
    end
    object Qr_Pf01PF1DATANF: TDateTimeField
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Qr_Pf01PF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_Pf01PF1SERIE: TStringField
      FieldName = 'PF1SERIE'
      Origin = 'SG_ASSOC.CADPF1.PF1SERIE'
      Size = 3
    end
    object Qr_Pf01PF1SUBSER: TStringField
      FieldName = 'PF1SUBSER'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBSER'
      Size = 3
    end
    object Qr_Pf01PF1CODPV: TFloatField
      FieldName = 'PF1CODPV'
      Origin = 'SG_ASSOC.CADPF1.PF1CODPV'
    end
    object Qr_Pf01PF1CODBCO: TFloatField
      FieldName = 'PF1CODBCO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODBCO'
    end
    object Qr_Pf01PF1CODTRA: TFloatField
      FieldName = 'PF1CODTRA'
      Origin = 'SG_ASSOC.CADPF1.PF1CODTRA'
    end
    object Qr_Pf01PF1MODELO: TStringField
      FieldName = 'PF1MODELO'
      Origin = 'SG_ASSOC.CADPF1.PF1MODELO'
      Size = 3
    end
    object Qr_Pf01PF1NUMDUP: TFloatField
      FieldName = 'PF1NUMDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUP'
    end
    object Qr_Pf01PF1DESD: TStringField
      FieldName = 'PF1DESD'
      Origin = 'SG_ASSOC.CADPF1.PF1DESD'
      Size = 2
    end
    object Qr_Pf01PF1GRAVNF: TFloatField
      FieldName = 'PF1GRAVNF'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVNF'
    end
    object Qr_Pf01PF1GRAVDP: TFloatField
      FieldName = 'PF1GRAVDP'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVDP'
    end
    object Qr_Pf01PF1CASASD: TFloatField
      FieldName = 'PF1CASASD'
      Origin = 'SG_ASSOC.CADPF1.PF1CASASD'
    end
    object Qr_Pf01PF1TABPV: TStringField
      FieldName = 'PF1TABPV'
      Origin = 'SG_ASSOC.CADPF1.PF1TABPV'
      Size = 2
    end
    object Qr_Pf01PF1DATAENT: TDateTimeField
      FieldName = 'PF1DATAENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DATAENT'
    end
    object Qr_Pf01PF1DTPFAT: TDateTimeField
      FieldName = 'PF1DTPFAT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPFAT'
    end
    object Qr_Pf01PF1DTPENT: TDateTimeField
      FieldName = 'PF1DTPENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPENT'
    end
    object Qr_Pf01PF1PERCFRE: TFloatField
      FieldName = 'PF1PERCFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1PERCFRE'
    end
    object Qr_Pf01PF1FRETEPC: TFloatField
      FieldName = 'PF1FRETEPC'
      Origin = 'SG_ASSOC.CADPF1.PF1FRETEPC'
    end
    object Qr_Pf01PF1CONDPAG: TStringField
      FieldName = 'PF1CONDPAG'
      Origin = 'SG_ASSOC.CADPF1.PF1CONDPAG'
      Size = 30
    end
    object Qr_Pf01PF1PIPIFRETE: TFloatField
      FieldName = 'PF1PIPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1PIPIFRETE'
    end
    object Qr_Pf01PF1IPIFRETE: TFloatField
      FieldName = 'PF1IPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1IPIFRETE'
    end
    object Qr_Pf01PF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Qr_Pf01PF1TEMBOL: TFloatField
      FieldName = 'PF1TEMBOL'
      Origin = 'SG_ASSOC.CADPF1.PF1TEMBOL'
    end
    object Qr_Pf01PF1LEMAT: TFloatField
      FieldName = 'PF1LEMAT'
      Origin = 'SG_ASSOC.CADPF1.PF1LEMAT'
    end
    object Qr_Pf01PF1CODEMP_ORI: TFloatField
      FieldName = 'PF1CODEMP_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP_ORI'
    end
    object Qr_Pf01PF1NUMPED_ORI: TFloatField
      FieldName = 'PF1NUMPED_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMPED_ORI'
    end
    object Qr_Pf01PF1PAG_ORI: TFloatField
      FieldName = 'PF1PAG_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1PAG_ORI'
    end
    object Qr_Pf01PF1ORIGEM: TFloatField
      FieldName = 'PF1ORIGEM'
      Origin = 'SG_ASSOC.CADPF1.PF1ORIGEM'
    end
    object Qr_Pf01PF1OUTNINC: TFloatField
      FieldName = 'PF1OUTNINC'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTNINC'
    end
    object Qr_Pf01PF1OUTDESP: TFloatField
      FieldName = 'PF1OUTDESP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTDESP'
    end
    object Qr_Pf01PF1NFCF: TFloatField
      FieldName = 'PF1NFCF'
      Origin = 'SGE.CADPF1.PF1NFCF'
    end
    object Qr_Pf01PF1TOTLIQOUT: TFloatField
      FieldName = 'PF1TOTLIQOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQOUT'
    end
    object Qr_Pf01PF1TOTPBT: TFloatField
      FieldName = 'PF1TOTPBT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPBT'
    end
    object Qr_Pf01PF1FORMACE: TFloatField
      FieldName = 'PF1FORMACE'
      Origin = 'SG_ASSOC.CADPF1.PF1FORMACE'
    end
    object Qr_Pf01PF1SITPED: TFloatField
      FieldName = 'PF1SITPED'
      Origin = 'SG_ASSOC.CADPF1.PF1SITPED'
    end
    object Qr_Pf01PF1QTDMAN: TFloatField
      FieldName = 'PF1QTDMAN'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDMAN'
    end
    object Qr_Pf01PF1TOTDESOUT: TFloatField
      FieldName = 'PF1TOTDESOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDESOUT'
    end
    object Qr_Pf01PF1TOTBRUOUT: TFloatField
      FieldName = 'PF1TOTBRUOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRUOUT'
    end
    object Qr_Pf01PF1TOTFREOUT: TFloatField
      FieldName = 'PF1TOTFREOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFREOUT'
    end
    object Qr_Pf01PF1OUTROS: TFloatField
      FieldName = 'PF1OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTROS'
    end
    object Qr_Pf01PF1NUMDUPOUT: TFloatField
      FieldName = 'PF1NUMDUPOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUPOUT'
    end
    object Qr_Pf01PF1TIPO: TFloatField
      FieldName = 'PF1TIPO'
      Origin = 'SG_ASSOC.CADPF1.PF1TIPO'
    end
    object Qr_Pf01PF1SIV_FRETE: TFloatField
      FieldName = 'PF1SIV_FRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_FRETE'
    end
    object Qr_Pf01PF1SIV_DARE: TFloatField
      FieldName = 'PF1SIV_DARE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_DARE'
    end
    object Qr_Pf01PF1SIV_OUTROS: TFloatField
      FieldName = 'PF1SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_OUTROS'
    end
    object Qr_Pf01PF1OUTVDUP: TFloatField
      FieldName = 'PF1OUTVDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTVDUP'
    end
    object Qr_Pf01dtpfat: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpfat'
      Size = 10
      Calculated = True
    end
    object Qr_Pf01dtpent: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpent'
      Size = 10
      Calculated = True
    end
    object Qr_Pf01PF1PRAZO: TFloatField
      FieldName = 'PF1PRAZO'
      Origin = 'SG_ASSOC.CADPF1.PF1PRAZO'
    end
    object Qr_Pf01PF1INT: TFloatField
      FieldName = 'PF1INT'
      Origin = 'SG_ASSOC.CADPF1.PF1INT'
    end
    object Qr_Pf01PF1QTDP: TFloatField
      FieldName = 'PF1QTDP'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDP'
    end
    object Qr_Pf01PF1LOCAL: TFloatField
      FieldName = 'PF1LOCAL'
      Origin = 'SG_ASSOC.CADPF1.PF1LOCAL'
    end
    object Qr_Pf01PF1SUBMOD: TStringField
      FieldName = 'PF1SUBMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBMOD'
      Size = 3
    end
    object Qr_Pf01PF1TOTOUT_ALIQ: TFloatField
      FieldName = 'PF1TOTOUT_ALIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_ALIQ'
    end
    object Qr_Pf01PF1TOTOUT_IMP: TFloatField
      FieldName = 'PF1TOTOUT_IMP'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_IMP'
    end
    object Qr_Pf01PF1LOTE_ENTRADA: TStringField
      FieldName = 'PF1LOTE_ENTRADA'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTE_ENTRADA'
    end
    object Qr_Pf01PF1REGENT: TStringField
      FieldName = 'PF1REGENT'
      Origin = 'SG_ASSOC.CADPF1.PF1REGENT'
    end
    object Qr_Pf01PF1SITPROD: TFloatField
      FieldName = 'PF1SITPROD'
      Origin = 'SG_ASSOC.CADPF1.PF1SITPROD'
    end
  end
  object Qr_PF02: TQuery
    OnCalcFields = Qr_PF02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADPF2 where PF2CHAVE is null')
    Left = 312
    Top = 70
    object Qr_PF02PF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_PF02PF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_PF02PF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_PF02PF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_PF02PF2LOTE: TStringField
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_PF02PF2DATAV: TDateTimeField
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Qr_PF02PF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_PF02PF2PU: TFloatField
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PF02PF2DESC01: TFloatField
      FieldName = 'PF2DESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Qr_PF02PF2DESC02: TFloatField
      FieldName = 'PF2DESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Qr_PF02PF2DESC03: TFloatField
      FieldName = 'PF2DESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Qr_PF02PF2SIT: TStringField
      FieldName = 'PF2SIT'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 4
    end
    object Qr_PF02PF2ALIQ: TFloatField
      FieldName = 'PF2ALIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Qr_PF02PF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQNR'
    end
    object Qr_PF02PF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_PF02PF2ICMSN: TFloatField
      FieldName = 'PF2ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Qr_PF02PF2BASER: TFloatField
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_PF02PF2ICMSR: TFloatField
      FieldName = 'PF2ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Qr_PF02PF2STATUS: TFloatField
      FieldName = 'PF2STATUS'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS'
    end
    object Qr_PF02PF2TAB: TStringField
      FieldName = 'PF2TAB'
      Origin = 'SG_ASSOC.CADPF2.PF2TAB'
      Size = 1
    end
    object Qr_PF02PF2LISTA: TFloatField
      FieldName = 'PF2LISTA'
      Origin = 'SG_ASSOC.CADPF2.PF2LISTA'
    end
    object Qr_PF02PF2PCOTAB: TFloatField
      FieldName = 'PF2PCOTAB'
      Origin = 'SG_ASSOC.CADPF2.PF2PCOTAB'
    end
    object Qr_PF02PF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_PF02PF2BASENR: TFloatField
      FieldName = 'PF2BASENR'
      Origin = 'SG_ASSOC.CADPF2.PF2BASENR'
    end
    object Qr_PF02PF2ICMSNR: TFloatField
      FieldName = 'PF2ICMSNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSNR'
    end
    object Qr_PF02PF2ISENTAS: TFloatField
      FieldName = 'PF2ISENTAS'
      Origin = 'SG_ASSOC.CADPF2.PF2ISENTAS'
    end
    object Qr_PF02PF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Qr_PF02PF2IPI: TFloatField
      FieldName = 'PF2IPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Qr_PF02PF2CFO: TFloatField
      FieldName = 'PF2CFO'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Qr_PF02PF2DESCRAT: TFloatField
      FieldName = 'PF2DESCRAT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRAT'
    end
    object Qr_PF02undpro: TStringField
      FieldKind = fkCalculated
      FieldName = 'undpro'
      Size = 3
      Calculated = True
    end
    object Qr_PF02totdes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totdes'
      Calculated = True
    end
    object Qr_PF02totliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totliq'
      Calculated = True
    end
    object Qr_PF02totbru: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totbru'
      Calculated = True
    end
    object Qr_PF02PF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_PF02PF2PMC: TFloatField
      FieldName = 'PF2PMC'
      Origin = 'SG_ASSOC.CADPF2.PF2PMC'
    end
    object Qr_PF02PF2VALDES: TFloatField
      FieldName = 'PF2VALDES'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDES'
    end
    object Qr_PF02PF2OUTRAS: TFloatField
      FieldName = 'PF2OUTRAS'
      Origin = 'SG_ASSOC.CADPF2.PF2OUTRAS'
    end
    object Qr_PF02PF2ORIGEM: TFloatField
      FieldName = 'PF2ORIGEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ORIGEM'
    end
    object Qr_PF02PF2STATUS_PF1: TFloatField
      FieldName = 'PF2STATUS_PF1'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS_PF1'
    end
    object Qr_PF02PF2PUOUT: TFloatField
      FieldName = 'PF2PUOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2PUOUT'
    end
    object Qr_PF02PF2PBT: TFloatField
      FieldName = 'PF2PBT'
      Origin = 'SG_ASSOC.CADPF2.PF2PBT'
    end
    object Qr_PF02PF2FRERAT: TFloatField
      FieldName = 'PF2FRERAT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERAT'
    end
    object Qr_PF02PF2QTDREC: TFloatField
      FieldName = 'PF2QTDREC'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDESOUT'
    end
    object Qr_PF02PF2VALDESOUT: TFloatField
      FieldName = 'PF2VALDESOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERATOUT'
    end
    object Qr_PF02PF2FRERATOUT: TFloatField
      FieldName = 'PF2FRERATOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRATOUT'
    end
    object Qr_PF02PF2DESCRATOUT: TFloatField
      FieldName = 'PF2DESCRATOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDESOUT'
    end
    object Qr_PF02PF2TOTDESOUT: TFloatField
      FieldName = 'PF2TOTDESOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_PF02PF2SIV_OUTROS: TFloatField
      FieldName = 'PF2SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF2.PF2SIV_OUTROS'
    end
    object Qr_PF02PF2PREDICMNOR: TFloatField
      FieldName = 'PF2PREDICMNOR'
      Origin = 'SG_ASSOC.CADPF2.PF2PREDICMNOR'
    end
    object Qr_PF02PF2CFOP_COMP: TStringField
      FieldName = 'PF2CFOP_COMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CFOP_COMP'
      Size = 10
    end
    object Qr_PF02PF2LOTE_RE: TStringField
      FieldName = 'PF2LOTE_RE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE_RE'
    end
    object Qr_PF02PF2DTENTRADA: TDateTimeField
      FieldName = 'PF2DTENTRADA'
      Origin = 'SG_ASSOC.CADPF2.PF2DTENTRADA'
    end
    object Qr_PF02PF2OBS: TStringField
      FieldName = 'PF2OBS'
      Origin = 'SG_ASSOC.CADPF2.PF2OBS'
      Size = 200
    end
    object Qr_PF02PF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2NOMPRO'
      Size = 120
    end
  end
  object Qr_Pf01V: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1V where PF1VCHAVE is null')
    Left = 344
    Top = 70
    object Qr_Pf01VPF1VCODEMP: TFloatField
      FieldName = 'PF1VCODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODEMP'
    end
    object Qr_Pf01VPF1VCHAVE: TFloatField
      FieldName = 'PF1VCHAVE'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCHAVE'
    end
    object Qr_Pf01VPF1VCODIGO: TFloatField
      FieldName = 'PF1VCODIGO'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODIGO'
    end
    object Qr_Pf01VPF1VDATAV: TDateTimeField
      FieldName = 'PF1VDATAV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDATAV'
    end
    object Qr_Pf01VPF1VVALOR: TFloatField
      FieldName = 'PF1VVALOR'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOR'
    end
    object Qr_Pf01VPF1VTABPV: TStringField
      FieldName = 'PF1VTABPV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VTABPV'
      Size = 2
    end
    object Qr_Pf01VPF1VDESCF: TFloatField
      FieldName = 'PF1VDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCF'
    end
    object Qr_Pf01VPF1VDTDESCF: TDateTimeField
      FieldName = 'PF1VDTDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDTDESCF'
    end
    object Qr_Pf01VPF1VLOTSEQ: TFloatField
      FieldName = 'PF1VLOTSEQ'
      Origin = 'SG_ASSOC.CADPF1V.PF1VLOTSEQ'
    end
    object Qr_Pf01VPF1VVALOUT: TFloatField
      FieldName = 'PF1VVALOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOUT'
    end
    object Qr_Pf01VPF1VDESCFOUT: TFloatField
      FieldName = 'PF1VDESCFOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCFOUT'
    end
    object Qr_Pf01VPF1VDES_CODEMP: TFloatField
      FieldName = 'PF1VDES_CODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDES_CODEMP'
    end
  end
  object Qr_Itens: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BASER'
        DataType = ftFloat
      end
      item
        Name = 'ICMSR'
        DataType = ftFloat
      end
      item
        Name = 'TOTDES'
        DataType = ftFloat
      end
      item
        Name = 'TOTALI_COMP'
        DataType = ftFloat
      end
      item
        Name = 'OUT_TOTDES'
        DataType = ftFloat
      end
      item
        Name = 'ICMSN'
        DataType = ftFloat
      end
      item
        Name = 'VALIPI'
        DataType = ftFloat
      end
      item
        Name = 'TOTALI'
        DataType = ftFloat
      end
      item
        Name = 'ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'LISTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRAT'
        DataType = ftFloat
      end
      item
        Name = 'BASEN'
        DataType = ftFloat
      end
      item
        Name = 'PCOUNI'
        DataType = ftFloat
      end
      item
        Name = 'DESC01'
        DataType = ftFloat
      end
      item
        Name = 'DESC02'
        DataType = ftFloat
      end
      item
        Name = 'DESC03'
        DataType = ftFloat
      end
      item
        Name = 'VALDESI'
        DataType = ftFloat
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATAV'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SITTRI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TABICM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CFOP_COMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ALIPI'
        DataType = ftFloat
      end
      item
        Name = 'ALICMS'
        DataType = ftFloat
      end
      item
        Name = 'PRECO1'
        DataType = ftFloat
      end
      item
        Name = 'CODFOR'
        DataType = ftFloat
      end
      item
        Name = 'BASENR'
        DataType = ftFloat
      end
      item
        Name = 'ICMSNR'
        DataType = ftFloat
      end
      item
        Name = 'PMC'
        DataType = ftFloat
      end
      item
        Name = 'FRERAT'
        DataType = ftFloat
      end
      item
        Name = 'VALPBT'
        DataType = ftFloat
      end
      item
        Name = 'PCOUNI_COMP'
        DataType = ftFloat
      end
      item
        Name = 'VALDESI_COMP'
        DataType = ftFloat
      end
      item
        Name = 'OUT_FRETERAT'
        DataType = ftFloat
      end
      item
        Name = 'OUT_DESCRAT'
        DataType = ftFloat
      end
      item
        Name = 'PREDICMNOR'
        DataType = ftFloat
      end
      item
        Name = 'LOTE_RE'
        DataType = ftString
        Size = 20
      end>
    Left = 433
    Top = 409
    object Qr_ItensCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_ItensUND: TStringField
      FieldName = 'UND'
    end
    object Qr_ItensNOMPRO: TStringField
      FieldName = 'NOMPRO'
    end
    object Qr_ItensBASER: TFloatField
      FieldName = 'BASER'
    end
    object Qr_ItensICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_ItensTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object Qr_ItensTOTALI_COMP: TFloatField
      FieldName = 'TOTALI_COMP'
    end
    object Qr_ItensOUT_TOTDES: TFloatField
      FieldName = 'OUT_TOTDES'
    end
    object Qr_ItensICMSN: TFloatField
      FieldName = 'ICMSN'
    end
    object Qr_ItensVALIPI: TFloatField
      FieldName = 'VALIPI'
    end
    object Qr_ItensTOTALI: TFloatField
      FieldName = 'TOTALI'
    end
    object Qr_ItensOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object Qr_ItensDESCRAT: TFloatField
      FieldName = 'DESCRAT'
    end
    object Qr_ItensBASEN: TFloatField
      FieldName = 'BASEN'
    end
    object Qr_ItensPCOUNI: TFloatField
      FieldName = 'PCOUNI'
    end
    object Qr_ItensDESC01: TFloatField
      FieldName = 'DESC01'
    end
    object Qr_ItensDESC02: TFloatField
      FieldName = 'DESC02'
    end
    object Qr_ItensDESC03: TFloatField
      FieldName = 'DESC03'
    end
    object Qr_ItensVALDESI: TFloatField
      FieldName = 'VALDESI'
    end
    object Qr_ItensLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_ItensDATAV: TStringField
      FieldName = 'DATAV'
      Size = 10
    end
    object Qr_ItensSITTRI: TStringField
      FieldName = 'SITTRI'
    end
    object Qr_ItensTABICM: TStringField
      FieldName = 'TABICM'
      Size = 10
    end
    object Qr_ItensCFOP: TStringField
      FieldName = 'CFOP'
    end
    object Qr_ItensCFOP_COMP: TStringField
      FieldName = 'CFOP_COMP'
    end
    object Qr_ItensALIPI: TFloatField
      FieldName = 'ALIPI'
    end
    object Qr_ItensALICMS: TFloatField
      FieldName = 'ALICMS'
    end
    object Qr_ItensPRECO1: TFloatField
      FieldName = 'PRECO1'
    end
    object Qr_ItensCODFOR: TFloatField
      FieldName = 'CODFOR'
    end
    object Qr_ItensBASENR: TFloatField
      FieldName = 'BASENR'
    end
    object Qr_ItensICMSNR: TFloatField
      FieldName = 'ICMSNR'
    end
    object Qr_ItensPMC: TFloatField
      FieldName = 'PMC'
    end
    object Qr_ItensFRERAT: TFloatField
      FieldName = 'FRERAT'
    end
    object Qr_ItensVALPBT: TFloatField
      FieldName = 'VALPBT'
    end
    object Qr_ItensPCOUNI_COMP: TFloatField
      FieldName = 'PCOUNI_COMP'
    end
    object Qr_ItensVALDESI_COMP: TFloatField
      FieldName = 'VALDESI_COMP'
    end
    object Qr_ItensOUT_FRETERAT: TFloatField
      FieldName = 'OUT_FRETERAT'
    end
    object Qr_ItensOUT_DESCRAT: TFloatField
      FieldName = 'OUT_DESCRAT'
    end
    object Qr_ItensPREDICMNOR: TFloatField
      FieldName = 'PREDICMNOR'
    end
    object Qr_ItensLOTE_RE: TStringField
      FieldName = 'LOTE_RE'
    end
    object Qr_ItensLISTA: TStringField
      FieldName = 'LISTA'
    end
    object Qr_ItensISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 401
    Top = 409
  end
  object Ds_Itens: TDataSource
    DataSet = Qr_Itens
    Left = 463
    Top = 409
  end
  object Qr_Capa: TRxMemoryData
    FieldDefs = <>
    Left = 253
    Top = 70
  end
  object Qr_Duplicatas: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DTVCTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'DESCFIN'
        DataType = ftFloat
      end
      item
        Name = 'PGTODT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VLROUT'
        DataType = ftFloat
      end
      item
        Name = 'DESCFINOUT'
        DataType = ftFloat
      end
      item
        Name = 'EXTRA'
        DataType = ftString
        Size = 20
      end>
    Left = 348
    Top = 334
    object Qr_DuplicatasDTVCTO: TStringField
      FieldName = 'DTVCTO'
    end
    object Qr_DuplicatasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Qr_DuplicatasDESCFIN: TFloatField
      FieldName = 'DESCFIN'
    end
    object Qr_DuplicatasPGTODT: TStringField
      FieldName = 'PGTODT'
    end
    object Qr_DuplicatasVLROUT: TFloatField
      FieldName = 'VLROUT'
    end
    object Qr_DuplicatasDESCFINOUT: TFloatField
      FieldName = 'DESCFINOUT'
    end
    object Qr_DuplicatasEXTRA: TStringField
      FieldName = 'EXTRA'
    end
  end
  object Ds_Duplicata: TDataSource
    DataSet = Qr_Duplicatas
    Left = 378
    Top = 334
  end
  object QR_Dup: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DTVCTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'DESCFIN'
        DataType = ftFloat
      end
      item
        Name = 'PGTODT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VLROUT'
        DataType = ftFloat
      end
      item
        Name = 'DESCFINOUT'
        DataType = ftFloat
      end
      item
        Name = 'EXTRA'
        DataType = ftString
        Size = 20
      end>
    Left = 433
    Top = 334
    object QR_DupDTVCTO: TStringField
      FieldName = 'DTVCTO'
    end
    object QR_DupVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QR_DupDESCFIN: TFloatField
      FieldName = 'DESCFIN'
    end
    object QR_DupPGTODT: TStringField
      FieldName = 'PGTODT'
    end
    object QR_DupVLROUT: TFloatField
      FieldName = 'VLROUT'
    end
    object QR_DupDESCFINOUT: TFloatField
      FieldName = 'DESCFINOUT'
    end
    object QR_DupEXTRA: TStringField
      FieldName = 'EXTRA'
    end
  end
end
