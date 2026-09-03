object frm_orcproducao: Tfrm_orcproducao
  Left = 128
  Top = 120
  Width = 800
  Height = 562
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frm_orcproducao'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel3: TBevel
    Left = 0
    Top = 25
    Width = 792
    Height = 503
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
  end
  object tlb_orcproducao: TToolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 25
    ButtonHeight = 21
    Caption = 'tlb_orcproducao'
    TabOrder = 0
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Incluir'
      TabOrder = 0
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
      Left = 99
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Localizar'
      TabOrder = 1
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
      Left = 198
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 2
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
    object btn_cancelar: TBitBtn
      Left = 297
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = 'Ca&ncelar'
      TabOrder = 3
      TabStop = False
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
    object btn_excluir: TBitBtn
      Left = 396
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 4
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
    object btn_gravar: TBitBtn
      Left = 495
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 5
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
    object btn_imprimir: TBitBtn
      Left = 594
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Imprimir'
      TabOrder = 7
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
    object btn_sair: TBitBtn
      Left = 693
      Top = 2
      Width = 99
      Height = 21
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
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
  object pnl_orcproducao: TPanel
    Left = 0
    Top = 25
    Width = 792
    Height = 503
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object grp_totais: TGroupBox
      Left = 2
      Top = 441
      Width = 788
      Height = 60
      Align = alBottom
      Caption = 'Totais'
      TabOrder = 0
      object StaticText10: TStaticText
        Left = 8
        Top = 17
        Width = 97
        Height = 20
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = sbsSingle
        Caption = 'Total de Itens'
        Color = 10930928
        ParentColor = False
        TabOrder = 0
      end
      object StaticText11: TStaticText
        Left = 420
        Top = 17
        Width = 97
        Height = 20
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = sbsSingle
        Caption = 'Quantidade'
        Color = 10930928
        ParentColor = False
        TabOrder = 1
      end
      object StaticText13: TStaticText
        Left = 516
        Top = 17
        Width = 76
        Height = 20
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = sbsSingle
        Caption = 'Qtd. Sobra'
        Color = 10930928
        ParentColor = False
        TabOrder = 2
      end
      object StaticText14: TStaticText
        Left = 591
        Top = 17
        Width = 86
        Height = 20
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = sbsSingle
        Caption = 'Qtd. Quebra'
        Color = 10930928
        ParentColor = False
        TabOrder = 3
      end
      object StaticText15: TStaticText
        Left = 676
        Top = 17
        Width = 107
        Height = 20
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = sbsSingle
        Caption = 'Valor Total'
        Color = 10930928
        ParentColor = False
        TabOrder = 4
      end
      object edt_qtdeitens: TComboEdit
        Left = 8
        Top = 36
        Width = 97
        Height = 21
        Alignment = taRightJustify
        Ctl3D = False
        ButtonWidth = 0
        NumGlyphs = 1
        ParentCtl3D = False
        TabOrder = 5
        Text = 'edt_qtdeitens'
      end
      object edt_totutilizadas: TCurrencyEdit
        Left = 420
        Top = 36
        Width = 97
        Height = 21
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 6
      end
      object edt_totsobra: TCurrencyEdit
        Left = 516
        Top = 36
        Width = 76
        Height = 21
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 7
      end
      object edt_totquebra: TCurrencyEdit
        Left = 591
        Top = 36
        Width = 86
        Height = 21
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 8
      end
      object edt_tottotal: TCurrencyEdit
        Left = 676
        Top = 36
        Width = 107
        Height = 21
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ',0.00;-,0.00'
        ParentCtl3D = False
        TabOrder = 9
      end
    end
    object pgc_cabecalho: TPageControl
      Left = 2
      Top = 2
      Width = 788
      Height = 76
      Cursor = crHandPoint
      ActivePage = tbs_dados
      Align = alTop
      Style = tsFlatButtons
      TabOrder = 1
      object tbs_dados: TTabSheet
        Caption = 'Dados Principais'
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 780
          Height = 44
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object StaticText2: TStaticText
          Left = 2
          Top = 1
          Width = 55
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Chave'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object StaticText7: TStaticText
          Left = 57
          Top = 1
          Width = 87
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object StaticText12: TStaticText
          Left = 144
          Top = 1
          Width = 403
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cliente'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object ST_NOMPV: TStaticText
          Left = 547
          Top = 1
          Width = 232
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Plano de Vendas'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object edt_chave: TEdit
          Left = 2
          Top = 18
          Width = 55
          Height = 22
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_datapedido: TMaskEdit
          Left = 57
          Top = 18
          Width = 87
          Height = 22
          Ctl3D = True
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          Text = '  /  /    '
          OnEnter = edt_datapedidoEnter
          OnExit = edt_datapedidoExit
        end
        object edt_codcliente: TEdit
          Left = 144
          Top = 18
          Width = 55
          Height = 22
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = edt_codclienteEnter
          OnExit = edt_codclienteExit
          OnKeyPress = edt_codclienteKeyPress
        end
        object edt_nomecliente: TEdit
          Left = 198
          Top = 18
          Width = 349
          Height = 22
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object cb_tabelavenda: TComboBox
          Left = 547
          Top = 18
          Width = 42
          Height = 22
          Ctl3D = True
          ItemHeight = 14
          ParentCtl3D = False
          TabOrder = 8
          Text = 'AP'
          OnExit = cb_tabelavendaExit
          Items.Strings = (
            'AV'
            'AP'
            'PP'
            'CV'
            'PO')
        end
        object edt_codvenda: TEdit
          Left = 588
          Top = 19
          Width = 36
          Height = 22
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 9
          OnEnter = edt_codvendaEnter
          OnExit = edt_codvendaExit
          OnKeyDown = edt_codvendaKeyDown
          OnKeyPress = edt_codvendaKeyPress
        end
        object edt_nomevenda: TEdit
          Left = 623
          Top = 19
          Width = 156
          Height = 22
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 10
        end
      end
    end
    object pgc_pedidos: TPageControl
      Left = 2
      Top = 78
      Width = 788
      Height = 363
      ActivePage = tbs_mercadorias
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 2
      object tbs_mercadorias: TTabSheet
        Caption = 'Digita'#231#227'o de Produtos/Mercadorias'
        object Bevel2: TBevel
          Left = 0
          Top = 0
          Width = 780
          Height = 331
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object lbl_codpro: TStaticText
          Left = 1
          Top = 1
          Width = 50
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
          TabOrder = 9
        end
        object edt_codproduto: TComboEdit
          Left = 1
          Top = 30
          Width = 50
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          GlyphKind = gkEllipsis
          ButtonWidth = 0
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 0
          Text = 'edt_codproduto'
          OnDblClick = edt_codprodutoDblClick
          OnEnter = edt_codprodutoEnter
          OnExit = edt_codprodutoExit
          OnKeyDown = edt_codprodutoKeyDown
          OnKeyPress = edt_codprodutoKeyPress
        end
        object lbl_descricao: TStaticText
          Left = 50
          Top = 1
          Width = 145
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
          TabOrder = 10
        end
        object edt_descricao: TEdit
          Left = 50
          Top = 30
          Width = 145
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = 'edt_descricao'
        end
        object StaticText3: TStaticText
          Left = 227
          Top = 1
          Width = 119
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o Complementar'
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
        object edt_descricaocomplemento: TEdit
          Left = 227
          Top = 30
          Width = 119
          Height = 19
          TabStop = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = 'edt_descricaocomplemento'
        end
        object Grid: TDBGrid
          Left = 1
          Top = 48
          Width = 778
          Height = 289
          Ctl3D = False
          DataSource = Ds_Itens
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 12
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDblClick = GridDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PRO'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeProduto'
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Unidade'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_COMPL'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_REMES'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNIT'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_UTILIZ'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_SOBRA'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_QUEBRA'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLTOT'
              Width = 72
              Visible = True
            end>
        end
        object lbl_quantidade: TStaticText
          Left = 503
          Top = 1
          Width = 64
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade '
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object edt_quantidade: TCurrencyEdit
          Left = 503
          Top = 30
          Width = 64
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 5
          OnExit = edt_quantidadeExit
        end
        object StaticText1: TStaticText
          Left = 566
          Top = 1
          Width = 64
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade Sobra'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object edt_sobra: TCurrencyEdit
          Left = 566
          Top = 30
          Width = 64
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 6
        end
        object StaticText4: TStaticText
          Left = 629
          Top = 1
          Width = 60
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade Quebra'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object edt_quebra: TCurrencyEdit
          Left = 629
          Top = 30
          Width = 60
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 7
          OnExit = edt_quebraExit
        end
        object StaticText8: TStaticText
          Left = 688
          Top = 1
          Width = 91
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
          TabOrder = 16
        end
        object edt_total: TCurrencyEdit
          Left = 688
          Top = 30
          Width = 91
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Color = clInfoBk
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object StaticText6: TStaticText
          Left = 442
          Top = 1
          Width = 62
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor Unit'#225'rio'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object edt_vlrunitario: TCurrencyEdit
          Left = 442
          Top = 30
          Width = 62
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 4
        end
        object StaticText9: TStaticText
          Left = 345
          Top = 1
          Width = 98
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o da Remessa'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object edt_remessa: TEdit
          Left = 345
          Top = 30
          Width = 98
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = 'edt_remessa'
        end
        object StaticText5: TStaticText
          Left = 194
          Top = 1
          Width = 34
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Unid.'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object edt_unid: TEdit
          Left = 194
          Top = 30
          Width = 34
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
          Text = 'edt'
        end
      end
    end
  end
  object QryItem_Producao: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'PRO'
        DataType = ftFloat
      end
      item
        Name = 'DESC_COMPL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QTD_UTILIZ'
        DataType = ftFloat
      end
      item
        Name = 'QTD_SOBRA'
        DataType = ftFloat
      end
      item
        Name = 'QTD_QUEBRA'
        DataType = ftFloat
      end
      item
        Name = 'QTD_OUTROS'
        DataType = ftFloat
      end
      item
        Name = 'VLR_UNIT'
        DataType = ftFloat
      end
      item
        Name = 'VLTOT'
        DataType = ftFloat
      end
      item
        Name = 'DESC_REMES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 20
      end>
    BeforePost = QryItem_ProducaoBeforePost
    Left = 91
    Top = 256
    object QryItem_ProducaoCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object QryItem_ProducaoCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object QryItem_ProducaoPRO: TFloatField
      FieldName = 'PRO'
    end
    object QryItem_ProducaoDESC_COMPL: TStringField
      FieldName = 'DESC_COMPL'
      Size = 30
    end
    object QryItem_ProducaoQTD_UTILIZ: TFloatField
      FieldName = 'QTD_UTILIZ'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_ProducaoQTD_SOBRA: TFloatField
      FieldName = 'QTD_SOBRA'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_ProducaoQTD_QUEBRA: TFloatField
      FieldName = 'QTD_QUEBRA'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_ProducaoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_ProducaoVLTOT: TFloatField
      FieldName = 'VLTOT'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_ProducaoDESC_REMES: TStringField
      FieldName = 'DESC_REMES'
    end
    object QryItem_ProducaoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 50
    end
    object QryItem_ProducaoUnidade: TStringField
      FieldName = 'Unidade'
    end
  end
  object Ds_Itens: TDataSource
    DataSet = QryItem_Producao
    Left = 121
    Top = 256
  end
  object Qr_PF02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADPF2 where PF2CHAVE is null')
    Left = 327
    Top = 105
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
      Size = 3
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
    object Qr_PF02nompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
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
  end
  object Qr_Pf01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1 where PF1CHAVE is null')
    Left = 298
    Top = 105
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
end
