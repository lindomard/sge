object frm_pesqprod: Tfrm_pesqprod
  Left = 115
  Top = 142
  Width = 787
  Height = 563
  HorzScrollBar.Increment = 69
  BorderIcons = []
  Caption = 'Pesquisa de Produtos - Mercadorias'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_pesquisar: TPanel
    Left = 0
    Top = 127
    Width = 771
    Height = 36
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Pesquisapor: TLabel
      Left = 4
      Top = 10
      Width = 67
      Height = 13
      Caption = '&Pesquisar por:'
      FocusControl = CAMPO
    end
    object lbl_emp: TLabel
      Left = 733
      Top = 2
      Width = 36
      Height = 32
      Align = alRight
      Alignment = taCenter
      Caption = 'lbl_emp'
    end
    object BBnAtu: TBitBtn
      Left = 494
      Top = 8
      Width = 96
      Height = 22
      Caption = 'Atuali&zar'
      TabOrder = 2
      OnClick = BBnAtuClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CAMPO: TComboBox
      Left = 99
      Top = 7
      Width = 136
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'Nome Generico'
        'C'#243'digo Barras'
        'Fornecedor'
        'Marca/Referencia')
    end
    object Edit1: TMaskEdit
      Left = 237
      Top = 8
      Width = 240
      Height = 19
      AutoSelect = False
      Color = 15269887
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = Edit1Change
    end
    object btn_cadastro: TBitBtn
      Left = 603
      Top = 9
      Width = 103
      Height = 21
      Cursor = crHandPoint
      Caption = 'ir p/Cadastro'
      TabOrder = 3
      TabStop = False
      OnClick = btn_cadastroClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
  end
  object Panel_filtros: TPanel
    Left = 0
    Top = 83
    Width = 771
    Height = 44
    Align = alTop
    BevelInner = bvLowered
    Color = 13828050
    TabOrder = 0
    object Label86: TLabel
      Left = 310
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Somente da Marca:'
      FocusControl = CAMPO
    end
    object sbConfigMaster: TSpeedButton
      Left = 655
      Top = 4
      Width = 108
      Height = 37
      Caption = 'Configua'#231#245'es Master'
      OnClick = sbConfigMasterClick
    end
    object RG_ESTOQUE: TRadioGroup
      Left = 4
      Top = 3
      Width = 303
      Height = 36
      Caption = 'Listar Somente os Produtos:'
      Columns = 3
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        'Com Estoque'
        'Sem Estoque'
        'Todos')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RG_ESTOQUEClick
    end
    object MARCA: TMaskEdit
      Left = 405
      Top = 6
      Width = 240
      Height = 19
      TabStop = False
      AutoSelect = False
      Color = 15269887
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object pgc_localizar: TPageControl
    Left = 0
    Top = 163
    Width = 771
    Height = 362
    ActivePage = tbs_lista
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    object tbs_lista: TTabSheet
      Caption = '&Lista'
      object gb_estoque: TGroupBox
        Left = 0
        Top = 278
        Width = 763
        Height = 53
        Align = alBottom
        Caption = 'Estoque:'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label12: TLabel
          Left = 259
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Atual'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label21: TLabel
          Left = 342
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'de Terceiros'
          Color = 4227327
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label22: TLabel
          Left = 421
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Em Revenda:'
          Color = 4194432
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label23: TLabel
          Left = 502
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Consig'
          Color = 4194432
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label80: TLabel
          Left = 588
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ent.Pend'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label81: TLabel
          Left = 2
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Deposito'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label82: TLabel
          Left = 84
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Prateleira'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label83: TLabel
          Left = 248
          Top = 17
          Width = 8
          Height = 13
          Caption = '='
          Visible = False
        end
        object Label84: TLabel
          Left = 248
          Top = 33
          Width = 8
          Height = 13
          Caption = '='
          Visible = False
        end
        object Label85: TLabel
          Left = 165
          Top = 16
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Em Reparo'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object db_estoque: TDBEdit
          Left = 259
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoque'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object db_estoquet: TDBEdit
          Left = 342
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoquet'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
        object db_estoquer: TDBEdit
          Left = 421
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoquer'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Visible = False
        end
        object db_estoquec: TDBEdit
          Left = 502
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoquec'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
        object db_entpen: TDBEdit
          Left = 588
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'entpen'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBE_estoque_dep: TDBEdit
          Left = 2
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoque_dep'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Visible = False
        end
        object DBE_PRAT: TDBEdit
          Left = 84
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoque_prat'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Visible = False
        end
        object DBE_REP: TDBEdit
          Left = 165
          Top = 30
          Width = 80
          Height = 19
          TabStop = False
          Color = 16762081
          Ctl3D = False
          DataField = 'estoque_rep'
          DataSource = Src_Pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Visible = False
        end
        object bbEstFilial: TBitBtn
          Left = 670
          Top = 13
          Width = 89
          Height = 38
          Cursor = crHandPoint
          Caption = 'Estoque Filial'
          TabOrder = 8
          OnClick = bbEstFilialClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
            FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
            FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
            FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
            FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
            FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
            C880733777777777733700000000000000007777777777777777333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 108
        Align = alClient
        Color = clWhite
        DataSource = Src_Pro
        FixedColor = 11075496
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColumnMoved = DBGrid1ColumnMoved
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Width = 253
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Title.Caption = 'Und'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPMC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pcoven'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDDESC1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saldo_filial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estoque'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCLAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPESOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDEMBPAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME2'
            Width = 263
            Visible = True
          end>
      end
      object gb_promocao: TGroupBox
        Left = 0
        Top = 186
        Width = 763
        Height = 92
        Align = alBottom
        Caption = 'Promo'#231#245'es'
        TabOrder = 2
        Visible = False
        object dbg_promocao: TDBGrid
          Left = 2
          Top = 15
          Width = 759
          Height = 75
          Align = alClient
          DataSource = Src_PPR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'PPPROMOCAO'
              Title.Alignment = taCenter
              Width = 104
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'PPPVTIP'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'PPPVTAB'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPCODRED'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'dataini'
              Title.Alignment = taCenter
              Width = 83
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'datafin'
              Title.Alignment = taCenter
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPCODGRU'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPPCOVDA'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPDESC_1'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPDESC_2'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPDESC_3'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPDESC_F'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'PPCONFVDA'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPCOMIS'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPQTDMIN'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PPVALMIN'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'PPOBS'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
      end
      object gb_configMaster: TGroupBox
        Left = 0
        Top = 108
        Width = 763
        Height = 78
        Align = alBottom
        Caption = 'Configura'#231#245'es Master:'
        TabOrder = 3
        Visible = False
        object Label2: TLabel
          Left = 358
          Top = 14
          Width = 77
          Height = 13
          Caption = 'Nova Descri'#231#227'o'
        end
        object sb_configMaster_Restaurar: TSpeedButton
          Left = 630
          Top = 27
          Width = 123
          Height = 23
          Caption = 'Configua'#231#245'es Original'
          OnClick = sb_configMaster_RestaurarClick
        end
        object sbConfigMaster_Salvar: TSpeedButton
          Left = 629
          Top = 6
          Width = 123
          Height = 23
          Caption = 'Salvar Configura'#231#245'es'
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
          OnClick = sbConfigMaster_SalvarClick
        end
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 351
          Height = 61
          Align = alLeft
          DataSource = Src_ConfigMaster
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CM_CAPTION'
              Width = 277
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CM_VISIVEL'
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 352
          Top = 30
          Width = 278
          Height = 21
          DataField = 'CM_CAPTION'
          DataSource = Src_ConfigMaster
          TabOrder = 1
          OnExit = DBEdit1Exit
        end
      end
    end
    object tbs_filtros: TTabSheet
      Caption = '&Filtros'
      ImageIndex = 1
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 763
        Height = 331
        Align = alClient
        Shape = bsFrame
        Style = bsRaised
      end
      object Label89: TLabel
        Left = 8
        Top = 2
        Width = 76
        Height = 13
        Caption = 'Tipo de Produto'
      end
      object bbSalvarPadrao: TBitBtn
        Left = 596
        Top = 19
        Width = 126
        Height = 23
        Caption = 'Salvar Padr'#227'o'
        TabOrder = 0
        OnClick = bbSalvarPadraoClick
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
      object CB_INIBIRBLOQ: TCheckBox
        Left = 8
        Top = 200
        Width = 106
        Height = 17
        Caption = 'Inibir Bloqueados'
        TabOrder = 1
      end
      object CLFNivel: TCheckListBox
        Left = 8
        Top = 17
        Width = 377
        Height = 174
        TabStop = False
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Acabado'
          'Servi'#231'o'
          'Mat'#233'ria Prima Revenda'
          'Produto em Produ'#231'ao'
          'Mat'#233'ria Prima'
          'Insumos'
          'Acessorios'
          'Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 2
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 771
    Height = 83
    Align = alTop
    Caption = 'Pre'#231'o Especifico para um determinado Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 20
      Width = 44
      Height = 13
      Caption = '&Cliente:'
      FocusControl = CODCLI
    end
    object CODCLI: TEdit
      Left = 59
      Top = 18
      Width = 78
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object bbSair: TBitBtn
      Left = 683
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Sair'
      TabOrder = 1
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
    object txt_nomcli: TMemo
      Left = 136
      Top = 18
      Width = 544
      Height = 42
      Color = 16756398
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object panel_preco_cli: TPanel
      Left = 2
      Top = 61
      Width = 767
      Height = 20
      Align = alBottom
      Color = 9699219
      TabOrder = 3
      Visible = False
      object Label3: TLabel
        Left = 498
        Top = 3
        Width = 77
        Height = 13
        Caption = 'Desc.Cliente:'
      end
      object Label4: TLabel
        Left = 365
        Top = 3
        Width = 53
        Height = 13
        Caption = 'P'#231'o Vda:'
      end
      object Label5: TLabel
        Left = 647
        Top = 3
        Width = 48
        Height = 13
        Caption = 'P'#231'o.Liq:'
      end
      object DBText1: TDBText
        Left = 4
        Top = 3
        Width = 352
        Height = 17
        Color = 9699219
        DataField = 'codnommarca'
        DataSource = Src_Pro
        ParentColor = False
      end
      object DBText2: TDBText
        Left = 427
        Top = 3
        Width = 65
        Height = 17
        DataField = 'pcoven'
        DataSource = Src_Pro
      end
      object DBText4: TDBText
        Left = 711
        Top = 3
        Width = 65
        Height = 17
        DataField = 'pcocomdesc'
        DataSource = Src_Pro
      end
      object lbl_desccli: TLabel
        Left = 579
        Top = 3
        Width = 61
        Height = 13
        Caption = 'lbl_desccli'
      end
    end
  end
  object Qr_LGC: TQuery
    OnCalcFields = Qr_LGCCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADLGC where CLCODEMP is null')
    Left = 578
    Top = 242
    object Qr_LGCCLCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
    end
    object Qr_LGCCLCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
    object Qr_LGCCLDTVCTO: TDateTimeField
      DisplayLabel = 'Data Vcto'
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Qr_LGCCLNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Qr_LGCCLQTD: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
      DisplayFormat = '#,##0.000'
    end
    object Qr_LGCCLQTDR: TFloatField
      DisplayLabel = 'Em Revenda'
      FieldName = 'CLQTDR'
      Origin = 'SG_ASSOC.CADLGC.CLQTDR'
      DisplayFormat = '#,##0.000'
    end
    object Qr_LGCCLQTDC: TFloatField
      DisplayLabel = 'Consignados'
      FieldName = 'CLQTDC'
      Origin = 'SG_ASSOC.CADLGC.CLQTDC'
      DisplayFormat = '#,##0.000'
    end
    object Qr_LGCCLQTDT: TFloatField
      DisplayLabel = 'Terceiros'
      FieldName = 'CLQTDT'
      Origin = 'SG_ASSOC.CADLGC.CLQTDT'
      DisplayFormat = '#,##0.000'
    end
    object Qr_LGCdtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      Size = 10
      Calculated = True
    end
    object Qr_LGCCLQTD_PRAT: TFloatField
      DisplayLabel = 'Prateleira'
      FieldName = 'CLQTD_PRAT'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_PRAT'
    end
    object Qr_LGCCLQTD_DEP: TFloatField
      DisplayLabel = 'Deposito'
      FieldName = 'CLQTD_DEP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_DEP'
    end
    object Qr_LGCCLQTD_REP: TFloatField
      DisplayLabel = 'Em Reparo'
      FieldName = 'CLQTD_REP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_REP'
    end
  end
  object Tb_PPR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PPCODEMP,'
      '  PPPROMOCAO,'
      '  PPPVTIP,'
      '  PPPVTAB,'
      '  PPCODRED,'
      '  PPFLAG,'
      '  PPCODPRO,'
      '  PPDATINI,'
      '  PPDATFIN,'
      '  PPCODGRU,'
      '  PPPCOVDA,'
      '  PPDESC_1,'
      '  PPDESC_2,'
      '  PPDESC_3,'
      '  PPCONFVDA,'
      '  PPCOMIS,'
      '  PPQTDMIN,'
      '  PPVALMIN,'
      '  PPOBS,'
      '  PPKIT,'
      '  PPDESC_F'
      ' from CADPPR')
    Left = 608
    Top = 241
    object Tb_PPRPPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PPCODEMP'
      Origin = 'SG_ASSOC.CADPPR.PPCODEMP'
    end
    object Tb_PPRPPPROMOCAO: TStringField
      DisplayLabel = 'Promo'#231'ao'
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 10
    end
    object Tb_PPRPPPVTIP: TStringField
      DisplayLabel = 'Tipo PV'
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Tb_PPRPPPVTAB: TStringField
      DisplayLabel = 'Tab.Pv'
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 2
    end
    object Tb_PPRPPCODRED: TFloatField
      DisplayLabel = 'C'#243'd.Red'
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Tb_PPRPPFLAG: TStringField
      FieldName = 'PPFLAG'
      Origin = 'SG_ASSOC.CADPPR.PPFLAG'
      Size = 1
    end
    object Tb_PPRPPCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Tb_PPRPPDATINI: TDateTimeField
      DisplayLabel = 'Data Inicial'
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Tb_PPRPPDATFIN: TDateTimeField
      DisplayLabel = 'Data Final'
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Tb_PPRPPCODGRU: TFloatField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'PPCODGRU'
      Origin = 'SG_ASSOC.CADPPR.PPCODGRU'
    end
    object Tb_PPRPPPCOVDA: TFloatField
      DisplayLabel = 'P'#231'o.Venda'
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Tb_PPRPPDESC_1: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Tb_PPRPPDESC_2: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Tb_PPRPPDESC_3: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Tb_PPRPPCONFVDA: TStringField
      DisplayLabel = 'Conf.Vda'
      FieldName = 'PPCONFVDA'
      Origin = 'SG_ASSOC.CADPPR.PPCONFVDA'
      Size = 1
    end
    object Tb_PPRPPCOMIS: TFloatField
      DisplayLabel = '%Comiss'#227'o'
      FieldName = 'PPCOMIS'
      Origin = 'SG_ASSOC.CADPPR.PPCOMIS'
    end
    object Tb_PPRPPQTDMIN: TFloatField
      DisplayLabel = 'Qtd.M'#237'nima'
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Tb_PPRPPVALMIN: TFloatField
      DisplayLabel = 'Vlr.M'#237'nimo'
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Tb_PPRPPOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PPOBS'
      Origin = 'SG_ASSOC.CADPPR.PPOBS'
      Size = 50
    end
    object Tb_PPRPPKIT: TStringField
      FieldName = 'PPKIT'
      Origin = 'SG_ASSOC.CADPPR.PPKIT'
      Size = 1
    end
    object Tb_PPRPPDESC_F: TFloatField
      DisplayLabel = '%Desc.Fin'
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Tb_PPRdataini: TStringField
      DisplayLabel = 'Data Inicial'
      FieldKind = fkCalculated
      FieldName = 'dataini'
      Size = 10
      Calculated = True
    end
    object Tb_PPRdatafin: TStringField
      DisplayLabel = 'Data Final'
      FieldKind = fkCalculated
      FieldName = 'datafin'
      Size = 10
      Calculated = True
    end
  end
  object Src_PPR: TDataSource
    DataSet = Tb_PPR
    Left = 641
    Top = 242
  end
  object Src_Pro: TDataSource
    DataSet = Qr_Pro
    OnDataChange = Src_ProDataChange
    Left = 673
    Top = 241
  end
  object Src_LGC: TDataSource
    DataSet = Qr_LGC
    Left = 704
    Top = 242
  end
  object Qr_Pro: TQuery
    OnCalcFields = Qr_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * from CADPRO')
    Left = 602
    Top = 170
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Qr_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_ProPDNOME2: TStringField
      DisplayLabel = 'Descri'#231#227'o 2(Nome Gen'#233'rico)'
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_ProPDMARCA: TStringField
      DisplayLabel = 'Marca/Fabricante'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 2'
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Qr_ProPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 3'
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Qr_ProPDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Qr_ProPDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Qr_ProPDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Qr_ProPDDESC1: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Qr_ProPDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Qr_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Qr_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Qr_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Qr_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Qr_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Qr_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Qr_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Qr_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Qr_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Qr_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Qr_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Qr_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Qr_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Qr_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Qr_ProPDUND: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Qr_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Qr_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Qr_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Qr_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Qr_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Qr_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Qr_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Qr_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Qr_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Qr_ProPDPMC: TFloatField
      DisplayLabel = 'Pre'#231'o M'#225'ximo'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_ProPDCUSFAB: TFloatField
      FieldName = 'PDCUSFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFAB'
    end
    object Qr_ProPDCUSENV: TFloatField
      FieldName = 'PDCUSENV'
      Origin = 'SG_ASSOC.CADPRO.PDCUSENV'
    end
    object Qr_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Qr_ProPDCUSFIN: TFloatField
      FieldName = 'PDCUSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFIN'
    end
    object Qr_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Qr_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Qr_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
    object Qr_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Qr_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Qr_ProPDCLAS: TStringField
      DisplayLabel = 'Classifica'#231#227'o Fiscal'
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_ProPDEMBPAD: TFloatField
      DisplayLabel = 'Qtd.p/Caixa'
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Qr_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 12
    end
    object Qr_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Qr_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Qr_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Qr_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Qr_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Qr_ProPDPESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Qr_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
    end
    object Qr_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Qr_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Qr_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Qr_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Qr_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Qr_ProPDBAIXOR: TFloatField
      FieldName = 'PDBAIXOR'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOR'
    end
    object Qr_ProPDALTOR: TFloatField
      FieldName = 'PDALTOR'
      Origin = 'SG_ASSOC.CADPRO.PDALTOR'
    end
    object Qr_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Qr_ProPDBAIXOC: TFloatField
      FieldName = 'PDBAIXOC'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOC'
    end
    object Qr_ProPDALTOC: TFloatField
      FieldName = 'PDALTOC'
      Origin = 'SG_ASSOC.CADPRO.PDALTOC'
    end
    object Qr_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Qr_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Qr_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Qr_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Qr_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Qr_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Qr_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Qr_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Qr_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Qr_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Qr_ProPDUCODFOR: TFloatField
      FieldName = 'PDUCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUCODFOR'
    end
    object Qr_ProPDUNOMFOR: TStringField
      FieldName = 'PDUNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUNOMFOR'
      Size = 40
    end
    object Qr_ProPDCODFAB: TStringField
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Qr_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
    object Qr_ProPDALTOT: TFloatField
      FieldName = 'PDALTOT'
      Origin = 'SG_ASSOC.CADPRO.PDALTOT'
    end
    object Qr_ProPDBAIXOT: TFloatField
      FieldName = 'PDBAIXOT'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOT'
    end
    object Qr_ProPDPMC02: TFloatField
      FieldName = 'PDPMC02'
      Origin = 'SG_ASSOC.CADPRO.PDPMC02'
    end
    object Qr_ProPDPMC03: TFloatField
      FieldName = 'PDPMC03'
      Origin = 'SG_ASSOC.CADPRO.PDPMC03'
    end
    object Qr_ProPDCX_PVDA: TFloatField
      FieldName = 'PDCX_PVDA'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PVDA'
    end
    object Qr_ProPDCX_PFAB: TFloatField
      FieldName = 'PDCX_PFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PFAB'
    end
    object Qr_ProPDCX_PMAX: TFloatField
      FieldName = 'PDCX_PMAX'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PMAX'
    end
    object Qr_ProPDICMSCRED: TFloatField
      FieldName = 'PDICMSCRED'
      Origin = 'SG_ASSOC.CADPRO.PDICMSCRED'
    end
    object Qr_ProPDICMSDEB: TFloatField
      FieldName = 'PDICMSDEB'
      Origin = 'SG_ASSOC.CADPRO.PDICMSDEB'
    end
    object Qr_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
    object Qr_ProPDPRAT: TStringField
      FieldName = 'PDPRAT'
      Origin = 'SG_ASSOC.CADPRO.PDPRAT'
      Size = 10
    end
    object Qr_ProPDLADO: TStringField
      FieldName = 'PDLADO'
      Origin = 'SG_ASSOC.CADPRO.PDLADO'
      Size = 10
    end
    object Qr_ProPDRUA: TStringField
      FieldName = 'PDRUA'
      Origin = 'SG_ASSOC.CADPRO.PDRUA'
      Size = 10
    end
    object Qr_ProPDAPLIC: TStringField
      FieldName = 'PDAPLIC'
      Origin = 'SG_ASSOC.CADPRO.PDAPLIC'
      Size = 100
    end
    object Qr_ProPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object Qr_ProPDSITCF: TStringField
      FieldName = 'PDSITCF'
      Origin = 'SG_ASSOC.CADPRO.PDSITCF'
      Size = 3
    end
    object Qr_ProPDQTDM3: TFloatField
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Qr_ProPDUNDVDA: TFloatField
      FieldName = 'PDUNDVDA'
      Origin = 'SG_ASSOC.CADPRO.PDUNDVDA'
    end
    object Qr_ProPDCOMIS_EXTRA: TFloatField
      FieldName = 'PDCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS_EXTRA'
    end
    object Qr_ProPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
      Origin = 'SG_ASSOC.CADPRO.PDRESTFOR'
    end
    object Qr_ProPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
      Origin = 'SG_ASSOC.CADPRO.PDRESTCON'
    end
    object Qr_ProPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Qr_ProPDBLDESCAV: TFloatField
      FieldName = 'PDBLDESCAV'
      Origin = 'SG_ASSOC.CADPRO.PDBLDESCAV'
    end
    object Qr_ProPDCODBAR_EMBPAD: TStringField
      FieldName = 'PDCODBAR_EMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_EMBPAD'
      Size = 50
    end
    object Qr_ProPDTEMPOFAB: TFloatField
      FieldName = 'PDTEMPOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDTEMPOFAB'
    end
    object Qr_ProPDSALDO_PRAT: TFloatField
      FieldName = 'PDSALDO_PRAT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_PRAT'
    end
    object Qr_ProPDSALDO_DEP: TFloatField
      FieldName = 'PDSALDO_DEP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_DEP'
    end
    object Qr_ProPDSALDO_REP: TFloatField
      FieldName = 'PDSALDO_REP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_REP'
    end
    object Qr_ProPDENTPEN: TFloatField
      FieldName = 'PDENTPEN'
      Origin = 'SG_ASSOC.CADPRO.PDENTPEN'
    end
    object Qr_ProPDUSRALT: TFloatField
      FieldName = 'PDUSRALT'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT'
    end
    object Qr_ProPDUSRINC: TFloatField
      FieldName = 'PDUSRINC'
      Origin = 'SG_ASSOC.CADPRO.PDUSRINC'
    end
    object Qr_ProPDPRZVAL_ANOS: TFloatField
      FieldName = 'PDPRZVAL_ANOS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_ANOS'
    end
    object Qr_ProPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_DIAS'
    end
    object Qr_ProPDCODDEP: TFloatField
      FieldName = 'PDCODDEP'
      Origin = 'SG_ASSOC.CADPRO.PDCODDEP'
    end
    object Qr_ProPDNOMDEP: TStringField
      FieldName = 'PDNOMDEP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMDEP'
      Size = 40
    end
    object Qr_Prodtvenc: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtvenc'
      Calculated = True
    end
    object Qr_Proestoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Qr_Proestoque_prat: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_prat'
      Calculated = True
    end
    object Qr_Proestoque_dep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_dep'
      Calculated = True
    end
    object Qr_Proestoquer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquer'
      Calculated = True
    end
    object Qr_Proestoquet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquet'
      Calculated = True
    end
    object Qr_Proestoquec: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquec'
      Calculated = True
    end
    object Qr_Proentpen: TFloatField
      FieldKind = fkCalculated
      FieldName = 'entpen'
      Calculated = True
    end
    object Qr_Prodtuent: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtuent'
      Calculated = True
    end
    object Qr_Prodtusai: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtusai'
      Calculated = True
    end
    object Qr_Propcoven: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldKind = fkCalculated
      FieldName = 'pcoven'
      Calculated = True
    end
    object Qr_Prodiferenca: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      Calculated = True
    end
    object Qr_Proestoque_rep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque_rep'
      Calculated = True
    end
    object Qr_Propco_custo: TStringField
      FieldKind = fkCalculated
      FieldName = 'pco_custo'
      Size = 15
      Calculated = True
    end
    object Qr_Procodnommarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'codnommarca'
      Size = 80
      Calculated = True
    end
    object Qr_Propcocomdesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pcocomdesc'
      Calculated = True
    end
    object Qr_ProPDREFER: TStringField
      FieldName = 'PDREFER'
      Origin = 'SG_ASSOC.CADPRO.PDREFER'
    end
    object Qr_ProPDDATA_REPLICA: TDateTimeField
      FieldName = 'PDDATA_REPLICA'
      Origin = 'SG_ASSOC.CADPRO.PDDATA_REPLICA'
    end
    object Qr_ProPDDESCMAX: TFloatField
      FieldName = 'PDDESCMAX'
      Origin = 'SG_ASSOC.CADPRO.PDDESCMAX'
    end
    object Qr_ProPDTEMFORMULA: TFloatField
      FieldName = 'PDTEMFORMULA'
      Origin = 'SG_ASSOC.CADPRO.PDTEMFORMULA'
    end
    object Qr_ProPDBALANCA: TFloatField
      FieldName = 'PDBALANCA'
      Origin = 'SG_ASSOC.CADPRO.PDBALANCA'
    end
    object Qr_ProPDVALREGMS: TDateTimeField
      FieldName = 'PDVALREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDVALREGMS'
    end
    object Qr_ProPDKIT: TStringField
      FieldName = 'PDKIT'
      Origin = 'SG_ASSOC.CADPRO.PDKIT'
      Size = 1
    end
    object Qr_ProPDFIS_PRED_ICMS_EST: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_EST'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_EST'
    end
    object Qr_ProPDFIS_ORIGEM: TStringField
      FieldName = 'PDFIS_ORIGEM'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_ORIGEM'
      Size = 1
    end
    object Qr_ProPDFIS_CST_ICMS_EST_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_CF'
      Size = 2
    end
    object Qr_ProPDFIS_CSOSN_EST_REV: TStringField
      FieldName = 'PDFIS_CSOSN_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_REV'
      Size = 3
    end
    object Qr_ProPDFIS_CSOSN_EST_CF: TStringField
      FieldName = 'PDFIS_CSOSN_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_CF'
      Size = 3
    end
    object Qr_ProPDFIS_CSOSN_INT_REV: TStringField
      FieldName = 'PDFIS_CSOSN_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_REV'
      Size = 3
    end
    object Qr_ProPDFIS_CSOSN_INT_CF: TStringField
      FieldName = 'PDFIS_CSOSN_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_CF'
      Size = 3
    end
    object Qr_ProPDFIS_CST_PISCOF_ENTRADA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_ENTRADA'
      Size = 2
    end
    object Qr_ProPDFIS_CST_PISCOF_SAIDA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_SAIDA'
      Size = 2
    end
    object Qr_ProPDCODEXT: TFloatField
      FieldName = 'PDCODEXT'
      Origin = 'SG_ASSOC.CADPRO.PDCODEXT'
    end
    object Qr_ProPDFIS_CST_ICMS_EST_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_REV'
      Size = 2
    end
    object Qr_ProPDFIS_CST_ICMS_INT_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_CF'
      Size = 2
    end
    object Qr_ProPDFIS_CST_ICMS_INT_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_REV'
      Size = 2
    end
    object Qr_ProPDFIS_PRED_ICMS_INT: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_INT'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_INT'
    end
    object Qr_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_ENTRADA'
    end
    object Qr_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_ENTRADA'
    end
    object Qr_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_SAIDA'
    end
    object Qr_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_SAIDA'
    end
    object Qr_ProPDDESICMS: TFloatField
      FieldName = 'PDDESICMS'
      Origin = 'SG_ASSOC.CADPRO.PDDESICMS'
    end
    object Qr_ProPDCONTESP: TFloatField
      FieldName = 'PDCONTESP'
      Origin = 'SG_ASSOC.CADPRO.PDCONTESP'
    end
    object Qr_ProPDCMET_CONSTANTE: TFloatField
      FieldName = 'PDCMET_CONSTANTE'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_CONSTANTE'
    end
    object Qr_Prosaldo_filial: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo_filial'
      Calculated = True
    end
    object Qr_Prosaldo_filial_disponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo_filial_disponivel'
      Calculated = True
    end
    object Qr_Proqtd_analise: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtd_analise'
      Calculated = True
    end
    object Qr_ProPDCMET_BITOLA: TFloatField
      FieldName = 'PDCMET_BITOLA'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_BITOLA'
    end
  end
  object Src_ConfigMaster: TDataSource
    DataSet = mem_configMaster
    Left = 532
    Top = 306
  end
  object mem_configMaster: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CM_CHAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CM_ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'CM_TAMANHO'
        DataType = ftInteger
      end
      item
        Name = 'CM_CAPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CM_VISIVEL'
        DataType = ftString
        Size = 1
      end>
    Left = 580
    Top = 306
    object mem_configMasterCM_CHAVE: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'CM_CHAVE'
      Size = 50
    end
    object mem_configMasterCM_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'CM_ORDEM'
    end
    object mem_configMasterCM_TAMANHO: TIntegerField
      DisplayLabel = 'Tamanho'
      FieldName = 'CM_TAMANHO'
    end
    object mem_configMasterCM_CAPTION: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CM_CAPTION'
      Size = 100
    end
    object mem_configMasterCM_VISIVEL: TStringField
      DisplayLabel = 'Visivel'
      FieldName = 'CM_VISIVEL'
      Size = 1
    end
  end
end
