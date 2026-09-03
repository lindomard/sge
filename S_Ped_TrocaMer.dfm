object Frm_Ped_TrocaMer: TFrm_Ped_TrocaMer
  Left = 6
  Top = 56
  Width = 784
  Height = 488
  Caption = 'Troca de Mercadorias de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 768
    Height = 135
    Align = alTop
    Caption = 'Dados do Pedido:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 52
      Top = 18
      Width = 41
      Height = 13
      Caption = 'Chave:'
    end
    object sbn_pesqped: TSpeedButton
      Left = 143
      Top = 14
      Width = 23
      Height = 20
      Caption = '...'
      OnClick = sbn_pesqpedClick
    end
    object Label2: TLabel
      Left = 178
      Top = 18
      Width = 93
      Height = 13
      Caption = 'Data do Pedido:'
    end
    object Label3: TLabel
      Left = 362
      Top = 18
      Width = 95
      Height = 13
      Caption = 'Valor do Pedido:'
    end
    object Label4: TLabel
      Left = 13
      Top = 37
      Width = 80
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label5: TLabel
      Left = 32
      Top = 57
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object edt_chaveped: TEdit
      Left = 94
      Top = 15
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = edt_chavepedEnter
      OnExit = edt_chavepedExit
    end
    object edt_datap: TEdit
      Left = 273
      Top = 15
      Width = 80
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_totall: TEdit
      Left = 457
      Top = 15
      Width = 80
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_razao: TEdit
      Left = 94
      Top = 33
      Width = 443
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object memo_endereco: TMemo
      Left = 94
      Top = 51
      Width = 443
      Height = 61
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object bbAplicar: TBitBtn
      Left = 541
      Top = 54
      Width = 155
      Height = 36
      Caption = 'Atualizar Dados'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbAplicarClick
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
  object gb_mercadorias: TGroupBox
    Left = 0
    Top = 135
    Width = 768
    Height = 126
    Align = alClient
    Caption = 'Mercadorias do Pedido:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object DBGrid_ped_ori: TDBGrid
      Left = 1
      Top = 14
      Width = 766
      Height = 111
      Align = alClient
      DataSource = Src_Ped_Ori
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2LOTE'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 297
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DESC1'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DESC2'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DESC3'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PDESCF'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTLIQ'
          Width = 70
          Visible = True
        end>
    end
  end
  object gb_substituicoes: TGroupBox
    Left = 0
    Top = 261
    Width = 768
    Height = 138
    Align = alBottom
    Caption = 'Substitui'#231#245'es:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object DBGrid_sub: TDBGrid
      Left = 1
      Top = 61
      Width = 766
      Height = 76
      Align = alClient
      DataSource = Src_Ped_Sub
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pop_grid
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid_subDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SUB_CODPRO'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_LOTE'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_NOMPRO'
          Width = 295
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_UNDPRO'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_QTD'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_DESC01'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_DESC02'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_DESC03'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_DESCFIN'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_PRECO_UNI'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUB_TOTAL'
          Width = 71
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 14
      Width = 766
      Height = 47
      Align = alTop
      TabOrder = 1
      object lbl_dtvcto: TStaticText
        Left = 58
        Top = 0
        Width = 56
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Dt.Vcto'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object lbl_codpro: TStaticText
        Left = 0
        Top = 0
        Width = 58
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo Produto'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object lbl_lote: TStaticText
        Left = 57
        Top = 0
        Width = 57
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Lote'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object lbl_descricao: TStaticText
        Left = 113
        Top = 0
        Width = 298
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descri'#231#227'o'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object lbl_quantidade: TStaticText
        Left = 437
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object lbl_desc1: TStaticText
        Left = 496
        Top = 0
        Width = 32
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desc 01'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object lbl_desc2: TStaticText
        Left = 527
        Top = 0
        Width = 32
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desc 02'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object lbl_desc3: TStaticText
        Left = 558
        Top = 0
        Width = 32
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desc 03'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object lbl_descfin: TStaticText
        Left = 589
        Top = 0
        Width = 32
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desc Fin.'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object lbl_precounitario: TStaticText
        Left = 620
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Pre'#231'o Unit'#225'rio'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object lbl_total: TStaticText
        Left = 679
        Top = 0
        Width = 74
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor Total'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object lbl_und: TStaticText
        Left = 410
        Top = 0
        Width = 28
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Und'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object edt_codproduto: TComboEdit
        Left = 0
        Top = 29
        Width = 58
        Height = 19
        Alignment = taRightJustify
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 0
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = 'edt_codpro'
        OnExit = edt_codprodutoExit
        OnKeyDown = edt_codprodutoKeyDown
        OnKeyPress = edt_codprodutoKeyPress
      end
      object edt_lote: TComboEdit
        Left = 57
        Top = 29
        Width = 57
        Height = 19
        Hint = 'Digite o Valor ou Pressione [F3]- p/Consultar'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 0
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        Text = 'edt_lote'
        OnExit = edt_loteExit
        OnKeyDown = edt_loteKeyDown
      end
      object edt_descricao: TEdit
        Left = 113
        Top = 29
        Width = 298
        Height = 19
        TabStop = False
        Color = 12189695
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
        Text = 'edt_descricao'
      end
      object edt_und: TEdit
        Left = 410
        Top = 29
        Width = 28
        Height = 19
        TabStop = False
        Color = 12189695
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        Text = 'edt_nomeproduto'
      end
      object edt_quantidade: TCurrencyEdit
        Left = 437
        Top = 29
        Width = 60
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        OnExit = edt_quantidadeExit
        OnKeyDown = edt_quantidadeKeyDown
      end
      object edt_desc1: TCurrencyEdit
        Left = 496
        Top = 29
        Width = 32
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        OnExit = edt_desc1Exit
      end
      object edt_desc2: TCurrencyEdit
        Left = 527
        Top = 29
        Width = 32
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        OnExit = edt_desc1Exit
      end
      object edt_desc3: TCurrencyEdit
        Left = 558
        Top = 29
        Width = 32
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
        OnExit = edt_desc1Exit
      end
      object edt_descfin: TCurrencyEdit
        Left = 589
        Top = 29
        Width = 32
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object edt_precounitario: TCurrencyEdit
        Left = 620
        Top = 29
        Width = 60
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
        ZeroEmpty = False
        OnExit = edt_precounitarioExit
      end
      object edt_total: TCurrencyEdit
        Left = 679
        Top = 29
        Width = 74
        Height = 19
        AutoSize = False
        CheckOnExit = True
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        OnEnter = edt_totalEnter
      end
      object edt_dtvcto: TMaskEdit
        Left = 81
        Top = 29
        Width = 52
        Height = 19
        TabStop = False
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 23
        Text = '  /  /    '
        Visible = False
      end
    end
    object bbGravarItem: TBitBtn
      Left = 608
      Top = 113
      Width = 75
      Height = 25
      Caption = 'bbGravarItem'
      TabOrder = 2
      Visible = False
      OnClick = bbGravarItemClick
    end
  end
  object Panel_rodape: TPanel
    Left = 0
    Top = 399
    Width = 768
    Height = 51
    Align = alBottom
    TabOrder = 3
    object bbEfetuar: TBitBtn
      Left = 5
      Top = 6
      Width = 155
      Height = 36
      Caption = 'Efetuar Trocas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbEfetuarClick
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
    object bbTrocasAnt: TBitBtn
      Left = 394
      Top = 8
      Width = 155
      Height = 36
      Caption = 'Trocas Anteriores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbTrocasAntClick
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
    object bbSair: TBitBtn
      Left = 611
      Top = 11
      Width = 155
      Height = 36
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
      NumGlyphs = 2
    end
    object bbCancelar: TBitBtn
      Left = 195
      Top = 8
      Width = 155
      Height = 36
      Caption = 'Cancelar Trocas Atuais'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbCancelarClick
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
  object Qr_Ped_Ori: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P2LOTSEQ,P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM,P2CODPRO,P2LOTE,' +
        'P2DTVCTO,P2PRECO,P2QTD,P2DESC1'
      ',P2DESC2,P2DESC3,P2PDESCF,P2TOTLIQ,PDNOME,PDMARCA,PDUND'
      ' from CADP02,CADPRO'
      ' where P2CHAVE is null'
      ' and PDCODPRO=P2CODPRO')
    Left = 632
    Top = 16
    object Qr_Ped_OriP2ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_Ped_OriP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped_OriP2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_Ped_OriP2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_Ped_OriP2PRECO: TFloatField
      DisplayLabel = 'P'#231'o Unit.'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_Ped_OriP2QTD: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped_OriP2DESC1: TFloatField
      DisplayLabel = '%D.01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_Ped_OriP2DESC2: TFloatField
      DisplayLabel = '%D.02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_Ped_OriP2DESC3: TFloatField
      DisplayLabel = '%D.03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Qr_Ped_OriP2PDESCF: TFloatField
      DisplayLabel = '%D.Fin'
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Qr_Ped_OriP2TOTLIQ: TFloatField
      DisplayLabel = 'Tot.Liq'
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_Ped_OriPDNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped_OriPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Qr_Ped_OriPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped_OriP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Qr_Ped_OriP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_Ped_OriP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Ped_OriP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
  end
  object Src_Ped_Ori: TDataSource
    DataSet = Qr_Ped_Ori
    OnDataChange = Src_Ped_OriDataChange
    Left = 672
    Top = 18
  end
  object mem_ped_sub: TRxMemoryData
    FieldDefs = <
      item
        Name = 'SUB_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'SUB_CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'SUB_LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SUB_DTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'SUB_PRECO_UNI'
        DataType = ftFloat
      end
      item
        Name = 'SUB_DESC01'
        DataType = ftFloat
      end
      item
        Name = 'SUB_DESC02'
        DataType = ftFloat
      end
      item
        Name = 'SUB_DESC03'
        DataType = ftFloat
      end
      item
        Name = 'SUB_DESCFIN'
        DataType = ftFloat
      end
      item
        Name = 'SUB_NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'SUB_MARCAPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SUB_UNDPRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUB_QTD'
        DataType = ftFloat
      end
      item
        Name = 'SUB_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'SUB_CODPRO_ORI'
        DataType = ftFloat
      end
      item
        Name = 'SUB_LOTE_ORI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SUB_DTVCTO_ORI'
        DataType = ftDateTime
      end
      item
        Name = 'SUB_PRECO_ORI'
        DataType = ftFloat
      end
      item
        Name = 'SUB_QTD_ORI'
        DataType = ftFloat
      end>
    OnFilterRecord = mem_ped_subFilterRecord
    Left = 552
    Top = 16
    object mem_ped_subSUB_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SUB_ITEM'
    end
    object mem_ped_subSUB_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SUB_CODPRO'
    end
    object mem_ped_subSUB_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'SUB_LOTE'
    end
    object mem_ped_subSUB_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'SUB_DTVCTO'
    end
    object mem_ped_subSUB_PRECO_UNI: TFloatField
      DisplayLabel = 'P'#231'o Unit.'
      FieldName = 'SUB_PRECO_UNI'
    end
    object mem_ped_subSUB_DESC01: TFloatField
      DisplayLabel = '%D.01'
      FieldName = 'SUB_DESC01'
    end
    object mem_ped_subSUB_DESC02: TFloatField
      DisplayLabel = '%D.02'
      FieldName = 'SUB_DESC02'
    end
    object mem_ped_subSUB_DESC03: TFloatField
      DisplayLabel = '%D.03'
      FieldName = 'SUB_DESC03'
    end
    object mem_ped_subSUB_DESCFIN: TFloatField
      DisplayLabel = '%D.Fin'
      FieldName = 'SUB_DESCFIN'
    end
    object mem_ped_subSUB_QTD: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'SUB_QTD'
    end
    object mem_ped_subSUB_TOTAL: TFloatField
      DisplayLabel = 'Tot.Liq.'
      FieldName = 'SUB_TOTAL'
    end
    object mem_ped_subSUB_NOMPRO: TStringField
      FieldName = 'SUB_NOMPRO'
      Size = 53
    end
    object mem_ped_subSUB_MARCAPRO: TStringField
      FieldName = 'SUB_MARCAPRO'
    end
    object mem_ped_subSUB_UNDPRO: TStringField
      FieldName = 'SUB_UNDPRO'
      Size = 3
    end
    object mem_ped_subSUB_CODPRO_ORI: TFloatField
      FieldName = 'SUB_CODPRO_ORI'
    end
    object mem_ped_subSUB_LOTE_ORI: TStringField
      FieldName = 'SUB_LOTE_ORI'
    end
    object mem_ped_subSUB_DTVCTO_ORI: TDateTimeField
      FieldName = 'SUB_DTVCTO_ORI'
    end
    object mem_ped_subSUB_PRECO_ORI: TFloatField
      FieldName = 'SUB_PRECO_ORI'
    end
    object mem_ped_subSUB_QTD_ORI: TFloatField
      FieldName = 'SUB_QTD_ORI'
    end
  end
  object Src_Ped_Sub: TDataSource
    DataSet = mem_ped_sub
    Left = 584
    Top = 16
  end
  object Qr_Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(P1TOTALL) as TOTLIQ'
      ',P1CODCLI,P1CODVEN,P1DATAP'
      ',P1CHAVE,P1LOTSEQ,P1SITPED,P1STATUS'
      ',CRAZAO,CDENOM,CLOG,CBAIRRO,CCIDADE,CUF,P1EMIDOC'
      'from CADP01,CADCLI'
      ' where P1STATUS=999'
      ' AND CCODCLI=P1CODCLI'
      'group by P1CODCLI,P1CODVEN,P1DATAP'
      ',P1CHAVE,P1LOTSEQ'
      
        ',CRAZAO,CDENOM,CLOG,CBAIRRO,CCIDADE,CUF,P1SITPED,P1STATUS,P1EMID' +
        'OC')
    Left = 712
    Top = 40
    object Qr_Ped01TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_Ped01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Ped01CDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_Ped01CLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_Ped01CBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_Ped01CCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_Ped01CUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Qr_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Qr_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
  end
  object pop_grid: TPopupMenu
    Left = 527
    Top = 344
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
end
