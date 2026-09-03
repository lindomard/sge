object Frm_Pro_AjPcoInd: TFrm_Pro_AjPcoInd
  Left = 396
  Top = 122
  Width = 737
  Height = 587
  Caption = 'Altera'#231#227'o de Pre'#231'os por '#205'ndices'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 294
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros(01/02)'
      object Label4: TLabel
        Left = 36
        Top = 42
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object Label8: TLabel
        Left = 25
        Top = 79
        Width = 77
        Height = 13
        Caption = 'Grupo Produtos:'
      end
      object Label7: TLabel
        Left = 31
        Top = 124
        Width = 66
        Height = 13
        Caption = 'Tipo Controle:'
      end
      object Label3: TLabel
        Left = 61
        Top = 167
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label11: TLabel
        Left = 534
        Top = 25
        Width = 74
        Height = 13
        Caption = 'Tipo Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 64
        Top = 205
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object Label12: TLabel
        Left = 79
        Top = 231
        Width = 262
        Height = 13
        Alignment = taRightJustify
        Caption = 'Somente Produtos  que nao foram Feito Entradas entre:'
      end
      object sbnVerResumo: TSpeedButton
        Left = 544
        Top = 176
        Width = 121
        Height = 46
        Caption = 'Ver Resumo dos Itens '
        OnClick = sbnVerResumoClick
      end
      object Label13: TLabel
        Left = 469
        Top = 234
        Width = 15
        Height = 13
        Caption = 'at'#233
      end
      object Label14: TLabel
        Left = 16
        Top = 256
        Width = 325
        Height = 13
        Alignment = taRightJustify
        Caption = 
          'Somente Produtos  que nao foram Feito Altera'#231#245'es no Preco 1 entr' +
          'e:'
      end
      object Label15: TLabel
        Left = 469
        Top = 259
        Width = 15
        Height = 13
        Caption = 'at'#233
      end
      object StaticText10: TStaticText
        Left = 6
        Top = 4
        Width = 97
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CODFOR: TEdit
        Left = 109
        Top = 4
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 164
        Top = 4
        Width = 365
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 110
        Top = 25
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object CODTIP: TEdit
        Left = 109
        Top = 42
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object lbx_codtip: TListBox
        Left = 164
        Top = 42
        Width = 365
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 110
        Top = 67
        Width = 50
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODGRU: TEdit
        Left = 109
        Top = 83
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 164
        Top = 83
        Width = 365
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 110
        Top = 107
        Width = 50
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object CODCON: TEdit
        Left = 109
        Top = 124
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object lbx_codcon: TListBox
        Left = 164
        Top = 124
        Width = 365
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 110
        Top = 149
        Width = 50
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object CODPRO: TEdit
        Left = 109
        Top = 165
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 164
        Top = 165
        Width = 365
        Height = 37
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 110
        Top = 187
        Width = 50
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object CLBNivel: TCheckListBox
        Left = 532
        Top = 40
        Width = 138
        Height = 132
        Color = 16776176
        Columns = 1
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
        TabOrder = 16
        OnClick = CLBNivelClick
      end
      object cb_marca: TComboBox
        Left = 110
        Top = 201
        Width = 419
        Height = 21
        ItemHeight = 13
        TabOrder = 17
        Text = 'cb_marca'
      end
      object edt_dataEntrada_ini: TDateEdit
        Left = 345
        Top = 229
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 18
      end
      object edt_dataEntrada_fin: TDateEdit
        Left = 489
        Top = 230
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 19
      end
      object edt_data_ajuste_ini: TDateEdit
        Left = 345
        Top = 254
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 20
      end
      object edt_data_ajuste_fin: TDateEdit
        Left = 489
        Top = 255
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 21
      end
    end
    object tsConfigArredondamento: TTabSheet
      Caption = 'Configura'#231#227'o dos arredondamentos'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 305
        Height = 286
        Align = alLeft
        Caption = 'Arredondamentos:'
        TabOrder = 0
        object dbgrid_arred: TDBGrid
          Left = 2
          Top = 15
          Width = 301
          Height = 236
          Align = alClient
          DataSource = src_arred
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'arredondamento'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'arredondamento_novo'
              Title.Alignment = taCenter
              Width = 133
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 251
          Width = 301
          Height = 33
          Align = alBottom
          TabOrder = 1
          object bbSalvarPadrao: TBitBtn
            Left = 48
            Top = 5
            Width = 193
            Height = 25
            Caption = 'Salvar Valores como padrao'
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
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros(continua'#231#227'o) 02/02'
      ImageIndex = 2
      object Label9: TLabel
        Left = 31
        Top = 7
        Width = 76
        Height = 13
        Caption = 'Ramo Produtos:'
      end
      object CODRAM: TEdit
        Left = 117
        Top = 5
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object lbx_codram: TListBox
        Left = 172
        Top = 5
        Width = 365
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 118
        Top = 29
        Width = 50
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 294
    Width = 729
    Height = 229
    Align = alClient
    Caption = 'Pre'#231'os a Serem Alterados:'
    TabOrder = 1
    object lbl_ind01: TLabel
      Left = 223
      Top = 23
      Width = 53
      Height = 13
      Caption = 'Indice(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbl_ind02: TLabel
      Left = 221
      Top = 77
      Width = 53
      Height = 13
      Caption = 'Indice(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbl_ind03: TLabel
      Left = 224
      Top = 126
      Width = 53
      Height = 13
      Caption = 'Indice(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbl_indcusto: TLabel
      Left = 232
      Top = 175
      Width = 53
      Height = 13
      Caption = 'Indice(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object CB_PCO01: TCheckBox
      Left = 11
      Top = 22
      Width = 97
      Height = 17
      Caption = 'Pre'#231'o Tabela 01'
      TabOrder = 0
      OnClick = CB_PCO01Click
    end
    object CB_FORMPCO01: TCheckBox
      Left = 116
      Top = 22
      Width = 97
      Height = 17
      Caption = 'Utilizar Formula'
      TabOrder = 1
      Visible = False
      OnClick = CB_FORMPCO01Click
    end
    object PERC01: TEdit
      Left = 281
      Top = 20
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnExit = PERC01Exit
    end
    object CB_DIMPCO01: TCheckBox
      Left = 356
      Top = 21
      Width = 63
      Height = 17
      Caption = 'Diminuir'
      TabOrder = 3
      Visible = False
    end
    object panel_pco01: TPanel
      Left = 2
      Top = 41
      Width = 678
      Height = 27
      TabOrder = 4
      Visible = False
      object Label5: TLabel
        Left = 3
        Top = 8
        Width = 106
        Height = 13
        Caption = 'Preco Tabela 01 ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_ITEM01PCO01: TComboBox
        Left = 114
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT01PCO01: TComboBox
        Left = 237
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM02PCO01: TComboBox
        Left = 276
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT02PCO01: TComboBox
        Left = 400
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM03PCO01: TComboBox
        Left = 439
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT03PCO01: TComboBox
        Left = 563
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object PERC01_FOR: TEdit
        Left = 603
        Top = 5
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = PERC01_FORExit
      end
    end
    object CB_PCO02: TCheckBox
      Left = 9
      Top = 76
      Width = 97
      Height = 17
      Caption = 'Pre'#231'o Tabela 02'
      TabOrder = 5
      OnClick = CB_PCO02Click
    end
    object CB_FORMPCO02: TCheckBox
      Left = 114
      Top = 76
      Width = 97
      Height = 17
      Caption = 'Utilizar Formula'
      TabOrder = 6
      Visible = False
      OnClick = CB_FORMPCO02Click
    end
    object PERC02: TEdit
      Left = 279
      Top = 74
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Visible = False
      OnExit = PERC02Exit
    end
    object CB_DIMPCO02: TCheckBox
      Left = 354
      Top = 75
      Width = 63
      Height = 17
      Caption = 'Diminuir'
      TabOrder = 8
      Visible = False
    end
    object panel_pco02: TPanel
      Left = 2
      Top = 94
      Width = 678
      Height = 27
      TabOrder = 9
      Visible = False
      object Label1: TLabel
        Left = 3
        Top = 8
        Width = 106
        Height = 13
        Caption = 'Preco Tabela 02 ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_ITEM01PCO02: TComboBox
        Left = 114
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT01PCO02: TComboBox
        Left = 237
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM02PCO02: TComboBox
        Left = 276
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT02PCO02: TComboBox
        Left = 400
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM03PCO02: TComboBox
        Left = 439
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT03PCO02: TComboBox
        Left = 563
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object PERC02_FOR: TEdit
        Left = 603
        Top = 5
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = PERC02_FORExit
      end
    end
    object CB_PCO03: TCheckBox
      Left = 10
      Top = 124
      Width = 97
      Height = 17
      Caption = 'Pre'#231'o Tabela 03'
      TabOrder = 10
      OnClick = CB_PCO03Click
    end
    object CB_FORMPCO03: TCheckBox
      Left = 115
      Top = 122
      Width = 97
      Height = 17
      Caption = 'Utilizar Formula'
      TabOrder = 11
      Visible = False
      OnClick = CB_FORMPCO03Click
    end
    object PERC03: TEdit
      Left = 278
      Top = 121
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      Visible = False
      OnExit = PERC03Exit
    end
    object CB_DIMPCO03: TCheckBox
      Left = 355
      Top = 123
      Width = 63
      Height = 17
      Caption = 'Diminuir'
      TabOrder = 13
      Visible = False
    end
    object panel_pco03: TPanel
      Left = 6
      Top = 142
      Width = 678
      Height = 27
      TabOrder = 14
      Visible = False
      object Label6: TLabel
        Left = 3
        Top = 8
        Width = 106
        Height = 13
        Caption = 'Preco Tabela 03 ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_ITEM01PCO03: TComboBox
        Left = 114
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT01PCO03: TComboBox
        Left = 237
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM02PCO03: TComboBox
        Left = 276
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT02PCO03: TComboBox
        Left = 400
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM03PCO03: TComboBox
        Left = 439
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT03PCO03: TComboBox
        Left = 563
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object PERCO3_FOR: TEdit
        Left = 603
        Top = 5
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = PERCO3_FORExit
      end
    end
    object Tipo_Formula: TRadioGroup
      Left = 496
      Top = 6
      Width = 185
      Height = 34
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor Real')
      TabOrder = 15
      OnClick = Tipo_FormulaClick
    end
    object CB_PCO_CUSTO: TCheckBox
      Left = 18
      Top = 173
      Width = 97
      Height = 17
      Caption = 'Preco de Custo'
      TabOrder = 16
      OnClick = CB_PCO_CUSTOClick
    end
    object CB_FORMCUSTO: TCheckBox
      Left = 123
      Top = 171
      Width = 97
      Height = 17
      Caption = 'Utilizar Formula'
      TabOrder = 17
      Visible = False
      OnClick = CB_FORMCUSTOClick
    end
    object PERC_CUSTO: TEdit
      Left = 286
      Top = 170
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      Visible = False
      OnExit = PERC_CUSTOExit
    end
    object CB_DIM_CUSTO: TCheckBox
      Left = 363
      Top = 172
      Width = 63
      Height = 17
      Caption = 'Diminuir'
      TabOrder = 19
      Visible = False
    end
    object panel_custo: TPanel
      Left = 6
      Top = 189
      Width = 678
      Height = 27
      TabOrder = 20
      Visible = False
      object Label10: TLabel
        Left = 3
        Top = 8
        Width = 99
        Height = 13
        Caption = 'Preco de Custo ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_ITEM01_CUSTO: TComboBox
        Left = 114
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT01_CUSTO: TComboBox
        Left = 237
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM02_CUSTO: TComboBox
        Left = 276
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT02_CUSTO: TComboBox
        Left = 400
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object CB_ITEM03_CUSTO: TComboBox
        Left = 439
        Top = 5
        Width = 123
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Preco 01'
          'Preco 02'
          'Preco 03'
          'Preco de Custo')
      end
      object CB_FAT03CUSTO: TComboBox
        Left = 563
        Top = 5
        Width = 40
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Items.Strings = (
          ''
          '+'
          '-')
      end
      object PERC_CUSTO_FOR: TEdit
        Left = 603
        Top = 5
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = PERC_CUSTO_FORExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 523
    Width = 729
    Height = 33
    Align = alBottom
    TabOrder = 2
    object sbSalvarPadrao: TSpeedButton
      Left = 265
      Top = 11
      Width = 150
      Height = 22
      Caption = '&Salvar Padr'#227'o'
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
      OnClick = sbSalvarPadraoClick
    end
    object bbAjustar: TBitBtn
      Left = 9
      Top = 5
      Width = 142
      Height = 25
      Caption = 'Ajustar Agora'
      TabOrder = 0
      OnClick = bbAjustarClick
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
    object bbSair: TBitBtn
      Left = 537
      Top = 7
      Width = 142
      Height = 25
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
  end
  object src_arred: TDataSource
    DataSet = cds_arred
    Left = 407
    Top = 84
  end
  object cds_arred: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 415
    Top = 132
    object cds_arredarredondamento: TFloatField
      DisplayLabel = 'Final'
      FieldName = 'arredondamento'
    end
    object cds_arredarredondamento_novo: TFloatField
      DisplayLabel = 'Novo Valor'
      FieldName = 'arredondamento_novo'
    end
  end
end
