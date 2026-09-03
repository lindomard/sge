object Frm_Pro_Farma: TFrm_Pro_Farma
  Left = 312
  Top = 148
  Width = 812
  Height = 478
  ActiveControl = Edit1
  Caption = 'Frm_Pro_Farma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 796
    Height = 41
    ButtonHeight = 36
    ButtonWidth = 58
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList1
    ShowCaptions = True
    TabOrder = 0
    Transparent = True
    OnClick = ToolBar1Click
    object tb_incluir: TToolButton
      Left = 0
      Top = 0
      Caption = 'Incluir'
      ImageIndex = 0
      OnClick = tb_incluirClick
    end
    object tb_alterar: TToolButton
      Left = 58
      Top = 0
      Caption = 'Alterar'
      ImageIndex = 10
      OnClick = tb_alterarClick
    end
    object tb_cancelar: TToolButton
      Left = 116
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 1
      OnClick = tb_cancelarClick
    end
    object tb_excluir: TToolButton
      Left = 174
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 3
      OnClick = tb_excluirClick
    end
    object tb_Gravar: TToolButton
      Left = 232
      Top = 0
      Caption = 'Gravar'
      ImageIndex = 8
      OnClick = tb_GravarClick
    end
    object tb_Proximo: TToolButton
      Left = 290
      Top = 0
      Caption = 'Proximo'
      ImageIndex = 5
      OnClick = tb_ProximoClick
    end
    object tb_Ultimo: TToolButton
      Left = 348
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 4
      OnClick = tb_UltimoClick
    end
    object tb_anterior: TToolButton
      Left = 406
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 6
      OnClick = tb_anteriorClick
    end
    object tb_Primeiro: TToolButton
      Left = 464
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 11
    end
    object tb_Sair: TToolButton
      Left = 522
      Top = 0
      Caption = 'Sair'
      ImageIndex = 7
      OnClick = tb_SairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 796
    Height = 31
    Align = alTop
    TabOrder = 1
    object Pesquisapor: TLabel
      Left = 8
      Top = 7
      Width = 82
      Height = 13
      Caption = '&Pesquisar por:'
      FocusControl = CAMPO
    end
    object CAMPO: TComboBox
      Left = 93
      Top = 4
      Width = 117
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 0
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'C'#243'digo de Barras'
        'Marca'
        'Nome')
    end
    object Edit1: TMaskEdit
      Left = 212
      Top = 4
      Width = 181
      Height = 21
      AutoSelect = False
      TabOrder = 1
      OnChange = Edit1Change
    end
    object BBnAtu: TBitBtn
      Left = 395
      Top = 0
      Width = 89
      Height = 25
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 72
    Width = 796
    Height = 342
    ActivePage = tsPrinc
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    OnChange = PC1Change
    object tsPrinc: TTabSheet
      Caption = 'Principal'
      object Label1: TLabel
        Left = 16
        Top = 33
        Width = 186
        Height = 13
        Caption = 'Descri'#231#227'o de Venda do Produto:'
      end
      object Label2: TLabel
        Left = 64
        Top = 57
        Width = 138
        Height = 13
        Caption = 'Descri'#231#227'o Para Compra:'
      end
      object Label3: TLabel
        Left = 160
        Top = 79
        Width = 40
        Height = 13
        Caption = 'Marca:'
      end
      object Label4: TLabel
        Left = 455
        Top = 80
        Width = 52
        Height = 13
        Caption = 'Unidade:'
      end
      object Label5: TLabel
        Left = 606
        Top = 80
        Width = 59
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label6: TLabel
        Left = 106
        Top = 101
        Width = 96
        Height = 13
        Caption = 'Estoque M'#237'nimo:'
      end
      object Label7: TLabel
        Left = 487
        Top = 101
        Width = 97
        Height = 13
        Caption = 'Estoque M'#225'ximo:'
      end
      object Label8: TLabel
        Left = 20
        Top = 124
        Width = 180
        Height = 13
        Caption = 'Quantidade por Caixa Fechada:'
      end
      object Label9: TLabel
        Left = 460
        Top = 125
        Width = 119
        Height = 13
        Caption = 'Quantidade Fra'#231#245'es:'
      end
      object Label13: TLabel
        Left = 132
        Top = 227
        Width = 65
        Height = 13
        Caption = 'Fabricante:'
      end
      object Label17: TLabel
        Left = 126
        Top = 252
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Peso Bruto:'
      end
      object Label18: TLabel
        Left = 506
        Top = 251
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Peso Liquido:'
      end
      object Label20: TLabel
        Left = 7
        Top = 276
        Width = 186
        Height = 13
        Alignment = taRightJustify
        Caption = 'Registro no Ministerio da Saude:'
      end
      object Label23: TLabel
        Left = 149
        Top = 10
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
      end
      object Label27: TLabel
        Left = 451
        Top = 10
        Width = 82
        Height = 13
        Caption = 'Nivel Produto:'
      end
      object Label31: TLabel
        Left = 453
        Top = 31
        Width = 83
        Height = 13
        Caption = 'Apresenta'#231#227'o:'
      end
      object DBE_NOME: TDBEdit
        Left = 208
        Top = 29
        Width = 241
        Height = 21
        Color = 16766935
        DataField = 'PDNOME'
        DataSource = src_pro
        TabOrder = 2
      end
      object DBE_NOME_COMPRA: TDBEdit
        Left = 208
        Top = 53
        Width = 539
        Height = 21
        Color = 16766935
        DataField = 'PDNOME_COMPRA'
        DataSource = src_pro
        TabOrder = 5
      end
      object DBE_MARCA: TDBEdit
        Left = 208
        Top = 77
        Width = 193
        Height = 21
        Color = 16766935
        DataField = 'PDMARCA'
        DataSource = src_pro
        TabOrder = 6
      end
      object DBE_UND: TDBEdit
        Left = 504
        Top = 76
        Width = 73
        Height = 21
        Color = 16766935
        DataField = 'PDUND'
        DataSource = src_pro
        TabOrder = 7
      end
      object DBE_SECAO: TDBEdit
        Left = 673
        Top = 76
        Width = 73
        Height = 21
        Color = 16766935
        DataField = 'PDSECAO'
        DataSource = src_pro
        TabOrder = 8
      end
      object DBE_ESTMIN: TDBEdit
        Left = 208
        Top = 99
        Width = 193
        Height = 21
        Color = 16766935
        DataField = 'PDESTMIN'
        DataSource = src_pro
        TabOrder = 9
      end
      object DBE_ESTMAX: TDBEdit
        Left = 593
        Top = 99
        Width = 154
        Height = 21
        Color = 16766935
        DataField = 'PDESTMAX'
        DataSource = src_pro
        TabOrder = 10
      end
      object DBE_EMBPAD: TDBEdit
        Left = 208
        Top = 122
        Width = 193
        Height = 21
        Color = 16766935
        DataField = 'PDEMBPAD'
        DataSource = src_pro
        TabOrder = 11
      end
      object DBE_EMBMUL: TDBEdit
        Left = 593
        Top = 121
        Width = 154
        Height = 21
        Color = 16766935
        DataField = 'PDEMBMUL'
        DataSource = src_pro
        TabOrder = 12
      end
      object GroupBox1: TGroupBox
        Left = 19
        Top = 142
        Width = 731
        Height = 75
        Caption = 'Pre'#231'os:'
        TabOrder = 13
        object Label10: TLabel
          Left = 11
          Top = 15
          Width = 41
          Height = 13
          Caption = 'Venda:'
        end
        object Label11: TLabel
          Left = 200
          Top = 15
          Width = 116
          Height = 13
          Caption = 'M'#225'ximo Consumidor:'
        end
        object Label12: TLabel
          Left = 512
          Top = 15
          Width = 47
          Height = 13
          Caption = 'F'#225'brica:'
        end
        object Label24: TLabel
          Left = 6
          Top = 40
          Width = 47
          Height = 13
          Caption = 'Compra:'
        end
        object Label25: TLabel
          Left = 519
          Top = 39
          Width = 37
          Height = 13
          Caption = 'Custo:'
        end
        object DBE_PRECO1: TDBEdit
          Left = 61
          Top = 12
          Width = 131
          Height = 21
          Color = 16766935
          DataField = 'PDPRECO1'
          DataSource = src_pro
          TabOrder = 0
        end
        object DBE_PMC: TDBEdit
          Left = 323
          Top = 12
          Width = 131
          Height = 21
          Color = 16766935
          DataField = 'PDPMC'
          DataSource = src_pro
          TabOrder = 1
        end
        object DBE_FARMA_PCOFAB: TDBEdit
          Left = 573
          Top = 12
          Width = 154
          Height = 21
          Color = 16766935
          DataField = 'PDFARMA_PCOFAB'
          DataSource = src_pro
          TabOrder = 2
        end
        object DBE_UCPR: TDBEdit
          Left = 60
          Top = 36
          Width = 131
          Height = 21
          Color = 16766935
          DataField = 'PDUCPR'
          DataSource = src_pro
          TabOrder = 3
        end
        object DBE_PRECOC: TDBEdit
          Left = 573
          Top = 35
          Width = 153
          Height = 21
          Color = 16766935
          DataField = 'PDPRECOC'
          DataSource = src_pro
          TabOrder = 4
        end
      end
      object DBE_CODFOR: TDBEdit
        Left = 208
        Top = 225
        Width = 81
        Height = 21
        Color = 16766935
        DataField = 'PDCODFOR'
        DataSource = src_pro
        TabOrder = 14
        OnExit = DBE_CODFORExit
        OnKeyPress = DBE_CODFORKeyPress
      end
      object DBE_NOMFOR: TDBEdit
        Left = 290
        Top = 224
        Width = 455
        Height = 21
        TabStop = False
        Color = 15263744
        DataField = 'PDNOMFOR'
        DataSource = src_pro
        ReadOnly = True
        TabOrder = 15
      end
      object DBE_PESOB: TDBEdit
        Left = 208
        Top = 248
        Width = 193
        Height = 21
        Color = 16766935
        DataField = 'PDPESOB'
        DataSource = src_pro
        TabOrder = 16
      end
      object DBE_PESOL: TDBEdit
        Left = 593
        Top = 247
        Width = 154
        Height = 21
        Color = 16766935
        DataField = 'PDPESOL'
        DataSource = src_pro
        TabOrder = 17
      end
      object DBE_REGMS: TDBEdit
        Left = 208
        Top = 272
        Width = 193
        Height = 21
        Color = 16766935
        DataField = 'PDREGMS'
        DataSource = src_pro
        TabOrder = 18
      end
      object DBE_CODPRO: TDBEdit
        Left = 208
        Top = 6
        Width = 193
        Height = 21
        TabStop = False
        Color = 16766935
        DataField = 'PDCODPRO'
        DataSource = src_pro
        ReadOnly = True
        TabOrder = 0
        OnExit = DBE_CODPROExit
      end
      object RxDBCB_Nivel: TRxDBComboBox
        Left = 552
        Top = 6
        Width = 196
        Height = 21
        Style = csDropDownList
        Color = 16766935
        Ctl3D = True
        DataField = 'PDNIVEL'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '0-Acabado'
          '1-Servicos'
          '2-Materias Primas Revenda'
          '3-Produto em Producao'
          '4-Materia Prima'
          '5-Insumos'
          '6-Acessorios'
          '7-Outros')
        ParentCtl3D = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
      end
      object DBE_PDAPRES_QTD: TDBEdit
        Left = 536
        Top = 29
        Width = 33
        Height = 21
        Color = 16766935
        DataField = 'PDAPRES_QTD'
        DataSource = src_pro
        TabOrder = 3
      end
      object RxDBCB_PDAPRES_NOME: TRxDBComboBox
        Left = 570
        Top = 28
        Width = 178
        Height = 21
        Style = csDropDownList
        Color = 16766935
        Ctl3D = True
        DataField = 'PDAPRES_NOME'
        DataSource = src_pro
        EnableValues = False
        ItemHeight = 13
        Items.Strings = (
          'CAPSULAS'
          'COMPRIMIDOS'
          'DRAGEAS'
          'GRAMAS'
          'ML')
        ParentCtl3D = False
        Sorted = True
        TabOrder = 4
      end
    end
    object tsTab: TTabSheet
      Caption = 'Tabela/Lista'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 788
        Height = 311
        Align = alClient
        DataSource = src_pro
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO1'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDSALDO'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPMC'
            Visible = True
          end>
      end
    end
    object tsCodBar: TTabSheet
      Caption = 'C'#243'digos de Barras'
      ImageIndex = 2
      object Label14: TLabel
        Left = 16
        Top = 13
        Width = 54
        Height = 13
        Caption = 'Principal:'
      end
      object DBE_CODBAR: TDBEdit
        Left = 171
        Top = 8
        Width = 142
        Height = 21
        Color = 16766935
        DataField = 'PDCODBAR'
        DataSource = src_pro
        TabOrder = 1
      end
      object RxDBCB_CODBAR_TIPO: TRxDBComboBox
        Left = 72
        Top = 8
        Width = 97
        Height = 21
        Color = 16766935
        DataField = 'PDCODBAR_TIPO'
        DataSource = src_pro
        EnableValues = False
        ItemHeight = 13
        Items.Strings = (
          'EAN8'
          'EAN13 '
          'EAN14'
          'EAN128'
          'UPCA'
          'ISBN')
        TabOrder = 0
      end
      object gb_outroscodbar: TGroupBox
        Left = 336
        Top = 0
        Width = 409
        Height = 205
        Caption = 'Outros C'#243'digos de Barras'
        TabOrder = 2
        object DBGrid_CODBAR: TDBGrid
          Left = 2
          Top = 15
          Width = 405
          Height = 164
          Align = alClient
          Color = 16766935
          DataSource = Src_Pro_CodBar
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid_CODBARExit
          Columns = <
            item
              Expanded = False
              FieldName = 'CBCODBAR_TIPO'
              PickList.Strings = (
                'EAN8'
                'EAN13 '
                'EAN14'
                'EAN128'
                'UPCA'
                'ISBN'
                '2 int 5')
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CBCODBAR'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CBQTDMULT'
              Width = 132
              Visible = True
            end>
        end
        object Panel_cont_codbar: TPanel
          Left = 2
          Top = 179
          Width = 405
          Height = 24
          Align = alBottom
          TabOrder = 1
          object bbCodBar_Excluir: TBitBtn
            Left = 104
            Top = 0
            Width = 145
            Height = 25
            Caption = 'Excluir'
            TabOrder = 0
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
        end
      end
    end
    object tsCodPFor: TTabSheet
      Caption = 'Outros C'#243'digos'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 788
        Height = 311
        Align = alClient
        Caption = 'C'#243'digo do Produto no Fornecedor:'
        TabOrder = 0
        object DBT_DESCR: TDBText
          Left = 2
          Top = 268
          Width = 784
          Height = 17
          Align = alBottom
          Alignment = taCenter
          DataField = 'DESCR'
          DataSource = Src_CodPFor
        end
        object DBGrid_CODPFOR: TDBGrid
          Left = 2
          Top = 15
          Width = 784
          Height = 253
          Align = alClient
          Color = 16766935
          DataSource = Src_CodPFor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_CODPFORColExit
          OnExit = DBGrid_CODPFORExit
          OnKeyPress = DBGrid_CODPFORKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PFCODFOR'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRAZAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PFCODPFORN'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PFFATOR'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PFUNDFOR'
              Width = 79
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 285
          Width = 784
          Height = 24
          Align = alBottom
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 317
            Top = 0
            Width = 145
            Height = 25
            Caption = 'Excluir'
            TabOrder = 0
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
        end
      end
    end
    object tsFiscais: TTabSheet
      Caption = 'Dados Fiscais'
      ImageIndex = 4
      object Label19: TLabel
        Left = 2
        Top = 3
        Width = 108
        Height = 13
        Caption = 'Classi Fiscal/NCM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 225
        Top = 2
        Width = 34
        Height = 13
        Caption = '% IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 347
        Top = 2
        Width = 92
        Height = 13
        Caption = 'Tabela de Icms:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 520
        Top = 2
        Width = 110
        Height = 13
        Caption = 'Origem do Produto:'
      end
      object Label108: TLabel
        Left = 16
        Top = 23
        Width = 94
        Height = 13
        Caption = 'Lista Pis/Cofins:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object db_clas: TDBEdit
        Left = 113
        Top = 0
        Width = 106
        Height = 21
        Color = 16766935
        Ctl3D = True
        DataField = 'PDCLAS'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object db_ipi: TDBEdit
        Left = 267
        Top = 0
        Width = 70
        Height = 21
        Color = 16766935
        Ctl3D = True
        DataField = 'PDIPI'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBCb_TabIcm: TDBComboBox
        Left = 445
        Top = 0
        Width = 65
        Height = 21
        Hint = 'N'#237'vel do Produto'#13#10'utilizado para distinguir'#13#10'o tipo do produto'
        BevelKind = bkSoft
        Color = 16766935
        Ctl3D = True
        DataField = 'PDTABICM'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'F'
          'G'
          'H'
          'I')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RxDBCB_FIS_ORIGEM: TRxDBComboBox
        Left = 632
        Top = -1
        Width = 125
        Height = 21
        Style = csDropDownList
        Color = 16766935
        Ctl3D = True
        DataField = 'PDFIS_ORIGEM'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '0 - Nacional'
          '1 - Estrang. - Imp. direta'
          '2 - Estrang. - Merc. Interno'
          '3 - Nacional - Merc. com conteudo de Importa'#231#227'o superior a 40%'
          '4 - Nacional - com processos produtivos Basicos'
          '5 - Nacional - Merc. com conteudo importa'#231#227'o inferior a 40%'
          '6 - Estrangeira - Importa'#231#227'o direta CAMEX'
          '7 - Estrangeira - Merc. Interno CAMEX')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object TRxDBCB_LISTA: TRxDBComboBox
        Left = 113
        Top = 21
        Width = 132
        Height = 21
        Style = csDropDownList
        Color = 16766935
        Ctl3D = True
        DataField = 'PDLISTA'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Inalterado'
          'Positiva'
          'Negativa')
        ParentCtl3D = False
        TabOrder = 4
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBCB_ICMSST_LIQ: TDBCheckBox
        Left = 267
        Top = 26
        Width = 198
        Height = 17
        Caption = 'Permite Desonera'#231#227'o de ICMS'
        DataField = 'PDDESICMS'
        DataSource = src_pro
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object btn_SPadrao: TBitBtn
        Left = 518
        Top = 21
        Width = 91
        Height = 25
        Caption = 'Salvar Padr'#227'o'
        TabOrder = 6
        OnClick = btn_SPadraoClick
      end
      object gb_cst_icms: TGroupBox
        Left = 0
        Top = 63
        Width = 788
        Height = 80
        Align = alBottom
        Caption = 'CST ICMS:'
        Color = 16770790
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 7
        object Label88: TLabel
          Left = 5
          Top = 11
          Width = 117
          Height = 13
          Caption = 'Estadual - Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label96: TLabel
          Left = 339
          Top = 7
          Width = 154
          Height = 13
          Caption = 'Estadual Consumidor Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label97: TLabel
          Left = 671
          Top = 6
          Width = 65
          Height = 13
          Caption = '% Redu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label98: TLabel
          Left = 6
          Top = 44
          Width = 154
          Height = 13
          Caption = 'Fora do Estado - Revenda:'
        end
        object Label99: TLabel
          Left = 340
          Top = 43
          Width = 191
          Height = 13
          Caption = 'Fora do Estado Consumidor Final:'
        end
        object Label100: TLabel
          Left = 672
          Top = 42
          Width = 65
          Height = 13
          Caption = '% Redu'#231#227'o'
        end
        object RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox
          Left = 4
          Top = 23
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_ICMS_EST_REV'
          DataSource = src_pro
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '00'
            '10'
            '20'
            '30'
            '40'
            '41'
            '50'
            '51'
            '60'
            '70'
            '90')
        end
        object RxDBCB_CST_ICMS_EST_CF: TRxDBComboBox
          Left = 338
          Top = 22
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_ICMS_EST_CF'
          DataSource = src_pro
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Values.Strings = (
            '00'
            '10'
            '20'
            '30'
            '40'
            '41'
            '50'
            '51'
            '60'
            '70'
            '90')
        end
        object DBE_PRED_ICMS_EST: TDBEdit
          Left = 672
          Top = 20
          Width = 73
          Height = 19
          Ctl3D = False
          DataField = 'PDFIS_PRED_ICMS_EST'
          DataSource = src_pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object RxDBCB_CST_ICMS_INT_REV: TRxDBComboBox
          Left = 5
          Top = 57
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_ICMS_INT_REV'
          DataSource = src_pro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
          ParentCtl3D = False
          TabOrder = 3
          Values.Strings = (
            '00'
            '10'
            '20'
            '30'
            '40'
            '41'
            '50'
            '51'
            '60'
            '70'
            '90')
        end
        object RxDBCB_CST_ICMS_INT_CF: TRxDBComboBox
          Left = 339
          Top = 55
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_ICMS_INT_CF'
          DataSource = src_pro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
          ParentCtl3D = False
          TabOrder = 4
          Values.Strings = (
            '00'
            '10'
            '20'
            '30'
            '40'
            '41'
            '50'
            '51'
            '60'
            '70'
            '90')
        end
        object DBE_PRED_ICMS_INT: TDBEdit
          Left = 673
          Top = 54
          Width = 73
          Height = 19
          Ctl3D = False
          DataField = 'PDFIS_PRED_ICMS_INT'
          DataSource = src_pro
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
      object gb_csosn_sn: TGroupBox
        Left = 0
        Top = 143
        Width = 788
        Height = 87
        Align = alBottom
        Caption = 'CSOSN - Simples Nacional:'
        Color = 16777200
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 8
        object Label101: TLabel
          Left = 5
          Top = 13
          Width = 117
          Height = 13
          Caption = 'Estadual - Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label102: TLabel
          Left = 339
          Top = 12
          Width = 154
          Height = 13
          Caption = 'Estadual Consumidor Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label104: TLabel
          Left = 6
          Top = 47
          Width = 154
          Height = 13
          Caption = 'Fora do Estado - Revenda:'
        end
        object Label105: TLabel
          Left = 340
          Top = 49
          Width = 191
          Height = 13
          Caption = 'Fora do Estado Consumidor Final:'
        end
        object RxDBCB_CSOSN_EST_REV: TRxDBComboBox
          Left = 4
          Top = 26
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CSOSN_EST_REV'
          DataSource = src_pro
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
        end
        object RxDBCB_CSOSN_EST_CF: TRxDBComboBox
          Left = 338
          Top = 26
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CSOSN_EST_CF'
          DataSource = src_pro
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
        end
        object RxDBCB_CSOSN_INT_REV: TRxDBComboBox
          Left = 5
          Top = 62
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CSOSN_INT_REV'
          DataSource = src_pro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros')
          ParentCtl3D = False
          TabOrder = 2
          Values.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
        end
        object RxDBCB_CSOSN_INT_CF: TRxDBComboBox
          Left = 339
          Top = 64
          Width = 330
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CSOSN_INT_CF'
          DataSource = src_pro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros')
          ParentCtl3D = False
          TabOrder = 3
          Values.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
        end
      end
      object gb_cstipi: TGroupBox
        Left = 0
        Top = 230
        Width = 788
        Height = 81
        Align = alBottom
        Caption = 'CST - Pis/Cofins:'
        Color = 16770790
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 9
        object Label103: TLabel
          Left = 5
          Top = 11
          Width = 45
          Height = 13
          Caption = 'Entrada'
        end
        object Label106: TLabel
          Left = 565
          Top = 10
          Width = 71
          Height = 13
          Caption = 'Aliquota PIS'
        end
        object Label107: TLabel
          Left = 6
          Top = 44
          Width = 33
          Height = 13
          Caption = 'Saida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label70: TLabel
          Left = 651
          Top = 10
          Width = 86
          Height = 13
          Caption = 'Aliquota Cofins'
        end
        object Label73: TLabel
          Left = 565
          Top = 42
          Width = 71
          Height = 13
          Caption = 'Aliquota PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 651
          Top = 42
          Width = 86
          Height = 13
          Caption = 'Aliquota Cofins'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBCB_CST_PISCOF_ENTRADA: TRxDBComboBox
          Left = 4
          Top = 24
          Width = 549
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_PISCOF_ENTRADA'
          DataSource = src_pro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es')
          ParentCtl3D = False
          TabOrder = 0
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '98'
            '99')
        end
        object RxDBCB_CST_PISCOF_SAIDA: TRxDBComboBox
          Left = 5
          Top = 57
          Width = 548
          Height = 21
          Style = csDropDownList
          Color = 16766935
          Ctl3D = True
          DataField = 'PDFIS_CST_PISCOF_SAIDA'
          DataSource = src_pro
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '98'
            '99')
        end
        object EDT_PIS_ALIQ_ENTRADA: TDBEdit
          Left = 564
          Top = 24
          Width = 73
          Height = 19
          Color = 16766935
          Ctl3D = False
          DataField = 'PDFIS_PIS_ALIQ_ENTRADA'
          DataSource = src_pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBE_COFINS_ALIQ_ENTRADA: TDBEdit
          Left = 660
          Top = 24
          Width = 73
          Height = 19
          Color = 16766935
          Ctl3D = False
          DataField = 'PDFIS_COFINS_ALIQ_ENTRADA'
          DataSource = src_pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBE_PIS_ALIQ_SAIDA: TDBEdit
          Left = 564
          Top = 57
          Width = 73
          Height = 19
          Color = 16766935
          Ctl3D = False
          DataField = 'PDFIS_PIS_ALIQ_SAIDA'
          DataSource = src_pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBE_COFINS_ALIQ_SAIDA: TDBEdit
          Left = 660
          Top = 57
          Width = 73
          Height = 19
          Color = 16766935
          Ctl3D = False
          DataField = 'PDFIS_COFINS_ALIQ_SAIDA'
          DataSource = src_pro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    object tsOutros: TTabSheet
      Caption = 'Outros'
      ImageIndex = 5
      object lbl_codgru: TLabel
        Left = 63
        Top = 20
        Width = 100
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo do Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 65
        Top = 64
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo de Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codram: TLabel
        Left = 56
        Top = 41
        Width = 105
        Height = 13
        Hint = 
          'Digite aqui o c'#243'digo do Ramo ou Sub-Grupo'#13#10'para.'#13#10' Consultar dig' +
          'ite o Nome.'
        Alignment = taRightJustify
        Caption = 'Ramo(Sub-Grupo):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 67
        Top = 84
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo Controle:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 63
        Top = 108
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo da Receita:'
      end
      object Label26: TLabel
        Left = 45
        Top = 164
        Width = 114
        Height = 13
        Alignment = taRightJustify
        Caption = 'Classe Terapeutica:'
      end
      object Label28: TLabel
        Left = 13
        Top = 186
        Width = 146
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade Farmacotecnica:'
      end
      object Label29: TLabel
        Left = 63
        Top = 208
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade Insumo:'
      end
      object Label30: TLabel
        Left = 34
        Top = 251
        Width = 124
        Height = 13
        Alignment = taRightJustify
        Caption = 'Uso do Medicamento:'
      end
      object db_codgru: TDBEdit
        Left = 166
        Top = 17
        Width = 89
        Height = 21
        Hint = 
          'Digite aqui o C'#243'digo do Grupo do'#13#10'Produto. Para Consultar Digite' +
          ' o '#13#10'Nome'
        Color = 16766935
        Ctl3D = True
        DataField = 'PDCODGRU'
        DataSource = src_pro
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = db_codgruExit
        OnKeyPress = db_codgruKeyPress
      end
      object db_nomgru: TDBEdit
        Left = 252
        Top = 17
        Width = 400
        Height = 21
        TabStop = False
        Color = 15263744
        Ctl3D = True
        DataField = 'PDNOMGRU'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object db_codtip: TDBEdit
        Left = 166
        Top = 60
        Width = 89
        Height = 21
        Hint = 
          'Digite aqui o C'#243'digo do tipo'#13#10'de Produto. Para consultar'#13#10'digite' +
          ' o Nome'
        Color = 16766935
        Ctl3D = True
        DataField = 'PDCODTIP'
        DataSource = src_pro
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = db_codtipExit
        OnKeyPress = db_codtipKeyPress
      end
      object db_nomtip: TDBEdit
        Left = 252
        Top = 60
        Width = 400
        Height = 21
        TabStop = False
        Color = 15263744
        Ctl3D = True
        DataField = 'PDNOMTIP'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object db_codram: TDBEdit
        Left = 166
        Top = 39
        Width = 89
        Height = 21
        Hint = 
          'Digite aqui o C'#243'digo do Ramo  '#13#10'ou Sub-Grupo do Produto.'#13#10'Para C' +
          'onsultar Digite o Nome'
        Color = 16766935
        Ctl3D = True
        DataField = 'PDCODRAM'
        DataSource = src_pro
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = db_codramExit
        OnKeyPress = db_codramKeyPress
      end
      object db_nomram: TDBEdit
        Left = 252
        Top = 39
        Width = 400
        Height = 21
        TabStop = False
        Color = 15263744
        Ctl3D = True
        DataField = 'PDNOMRAM'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object db_codcon: TDBEdit
        Left = 166
        Top = 82
        Width = 89
        Height = 21
        Hint = 
          'Digite aqui o C'#243'digo do Tipo'#13#10'de Controle do Produto.'#13#10'Para Cons' +
          'ultar Digite o Nome'
        Color = 16766935
        Ctl3D = True
        DataField = 'PDCODCON'
        DataSource = src_pro
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = db_codconExit
        OnKeyPress = db_codconKeyPress
      end
      object db_nomcon: TDBEdit
        Left = 252
        Top = 82
        Width = 400
        Height = 21
        TabStop = False
        Color = 15263744
        Ctl3D = True
        DataField = 'PDNOMCON'
        DataSource = src_pro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object RxDBCBTP_RECEITA: TRxDBComboBox
        Left = 166
        Top = 104
        Width = 485
        Height = 21
        Style = csDropDownList
        Color = 16766935
        DataField = 'PDTIPO_RECEITA'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1 Receita de Controle Especial em 2 vias (Receita Branca)'
          '2 Notifica'#231#227'o de Receita B (Notifica'#231#227'o Azul)'
          '3 Notifica'#231#227'o de Receita Especial (Notifica'#231#227'o Branca)'
          '4 Notifica'#231#227'o de Receita A (Notifica'#231#227'o Amarela)'
          '5 Receita Antimicrobiano em 2 vias')
        TabOrder = 8
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object DBCB_REFRI: TDBCheckBox
        Left = 82
        Top = 126
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Refrigerado:'
        DataField = 'PDREFRIGERADO'
        DataSource = src_pro
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCB_SGNPC: TDBCheckBox
        Left = 82
        Top = 143
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'SGNPC'
        DataField = 'PDSGNPC'
        DataSource = src_pro
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 166
        Top = 160
        Width = 387
        Height = 21
        Style = csDropDownList
        Color = 16766935
        DataField = 'PDCLASSE_TERAPEUTICA'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          ''
          'Antimicrobiano'
          'Sujeito a controle Especial')
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object CB_UND_FARMACOTECNICA: TRxDBComboBox
        Left = 166
        Top = 182
        Width = 387
        Height = 21
        Style = csDropDownList
        Color = 16766935
        DataField = 'PDUND_FARMACOTECNICA'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          ''
          '1 Grama'
          '2 C'#225'psula'
          '3 Comprimido'
          '4 Mililitro')
        TabOrder = 12
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object CB_UND_INSUMO: TRxDBComboBox
        Left = 166
        Top = 204
        Width = 387
        Height = 21
        Style = csDropDownList
        Color = 16766935
        DataField = 'PDUND_INSUMO'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          ''
          '1 Grama'
          '2 Mililitro'
          '3 Unidade (U)')
        TabOrder = 13
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object RxDBCB_USO_MEDICAMENTO: TRxDBComboBox
        Left = 165
        Top = 247
        Width = 387
        Height = 21
        Style = csDropDownList
        Color = 16766935
        DataField = 'PDUSO_MEDICAMENTO'
        DataSource = src_pro
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          ''
          '1 Humano'
          '2 Veterinario')
        TabOrder = 14
        Values.Strings = (
          '0'
          '1'
          '2')
      end
    end
  end
  object Panel_estoque: TPanel
    Left = 0
    Top = 414
    Width = 796
    Height = 26
    Align = alBottom
    TabOrder = 3
    object Label22: TLabel
      Left = 618
      Top = 5
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estoque:'
    end
    object DBT_CODPRO: TDBText
      Left = 3
      Top = 4
      Width = 96
      Height = 17
      Alignment = taCenter
      Color = 16766935
      DataField = 'PDCODPRO'
      DataSource = src_pro
      ParentColor = False
    end
    object DBT_NOME: TDBText
      Left = 101
      Top = 4
      Width = 511
      Height = 17
      Alignment = taCenter
      Color = 16766935
      DataField = 'PDNOME'
      DataSource = src_pro
      ParentColor = False
    end
    object DBE_SALDO: TDBEdit
      Left = 678
      Top = 3
      Width = 114
      Height = 21
      TabStop = False
      Color = 16766935
      DataField = 'PDSALDO'
      DataSource = src_pro
      ReadOnly = True
      TabOrder = 0
    end
  end
  object ImageList1: TImageList
    Left = 8
    Top = 40
    Bitmap = {
      494C01010C000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF0000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008040
      0000804000008040000080400000804000008040000080400000804000008040
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF0000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000C0A0
      4000804000000000000000000000000000000000FF000000FF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00804000000000000000000000000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000FFFF
      FF00804000000000000000000000000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00804000000000000000000000000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000000080
      800000808000000000000000000000000000000000000000000080400000FFFF
      FF00C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000C0A04000C0A0
      4000804000000000000000000000000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00804000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00C0A04000C0A04000C0A04000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00804000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080400000804000008040
      0000804000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080400000FFFFFF008040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080400000FFFF
      FF00C0A04000C0A04000C0A04000C0A04000FFFFFF0080400000804000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080400000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080400000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008040
      0000804000008040000080400000804000008040000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      000080800000808000008080800000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000008080800080808000000000000000
      0000808000008080000080808000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000080808000000000008080
      8000000000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF0000000000000000000000FF00000000003333CC000000FF000000
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00000000003333CC000066FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF0000000000000000000000FF00000000003333CC003399FF000066
      FF00000099000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000FF000000FF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000080000000FFFFFF00000000000000000000000000000000000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      00000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000066FF000000990000000000000000000000000000000000000000000000
      0000000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000CC000000
      CC000000FF000000990000000000000000000000000000000000000000000000
      0000000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CC003399FF000066
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CC003399FF000066FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000666699000000CC000000CC006666
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF09FFFFFFFFFFFFFF16FFFF
      FFFFFFFF1F06FFFFE003E00F0F14FFFFC023C0070001FFFFC023C0070000FFFF
      C003C0070007C003C003C0070047E007C003C0070007F00FC7E3C0070007F81F
      C7E3C007C00FFC3FC7E3C007F01FFE7FC7E3C00FF83FFFFFC7EBC01FF9FFFFFF
      FFFFC03FF3FFFFFFFFFFE07FE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1FFFF8FFFC7FFFFF0FFFF0FFFC3FE7FF07FFE0F0001FC3FF03FFC0FFC01
      F81FF01FF80FF801F00FF00FF00FF801E007F007E00F8001C003F00FF00F8001
      FFFFF03FFC0F8001FFFFF03FFC0FF801FFFFF07FFE0FF801FFFFF0FFFF0FFC01
      FFFFFFFFFFFFFC01FFFFFFFFFFFFFFFFFF09DFFFFFFFFFFFFF168FFEFFFF8000
      1F068FFFFFFF80000F1487FDEFFB80000001E3F3C7FF80000000F3F7C3F78000
      0007F1EFF1CF80000047F8CFF89F80000007FC1FFC3F80000007FE3FFE7F8000
      C00FFC1FF89F8000F01FF8CFE1CF8001F83FC3F7C3E78003F9FF87F3C7FB8003
      F3FF0FFDFFFF8007E7FF0FFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Tb_Pro: TQuery
    CachedUpdates = True
    AfterInsert = Tb_ProAfterInsert
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO')
    UpdateObject = U_Pro
    Left = 608
    Top = 16
    object Tb_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Tb_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Tb_ProPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Tb_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Tb_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_ProPDPRECO1: TFloatField
      DisplayLabel = 'Preco Venda'
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_ProPDPMC: TFloatField
      DisplayLabel = 'P'#231'o. M'#225'x. Consumidor'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Tb_ProPDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Tb_ProPDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Tb_ProPDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Tb_ProPDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Tb_ProPDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Tb_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Tb_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Tb_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Tb_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Tb_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Tb_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Tb_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Tb_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Tb_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Tb_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Tb_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Tb_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Tb_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Tb_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Tb_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Tb_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Tb_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Tb_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Tb_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Tb_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Tb_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Tb_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Tb_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Tb_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Tb_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_ProPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Tb_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Tb_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Tb_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Tb_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Tb_ProPDSALDO: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Tb_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Tb_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Tb_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 12
    end
    object Tb_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Tb_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Tb_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Tb_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Tb_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Tb_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Tb_ProPDPESOB: TFloatField
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Tb_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
    end
    object Tb_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Tb_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Tb_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Tb_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Tb_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Tb_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Tb_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Tb_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Tb_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Tb_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
    object Tb_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Tb_ProPDBAIXOR: TFloatField
      FieldName = 'PDBAIXOR'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOR'
    end
    object Tb_ProPDALTOR: TFloatField
      FieldName = 'PDALTOR'
      Origin = 'SG_ASSOC.CADPRO.PDALTOR'
    end
    object Tb_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Tb_ProPDBAIXOC: TFloatField
      FieldName = 'PDBAIXOC'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOC'
    end
    object Tb_ProPDALTOC: TFloatField
      FieldName = 'PDALTOC'
      Origin = 'SG_ASSOC.CADPRO.PDALTOC'
    end
    object Tb_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Tb_ProPDCUSFAB: TFloatField
      FieldName = 'PDCUSFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFAB'
    end
    object Tb_ProPDCUSENV: TFloatField
      FieldName = 'PDCUSENV'
      Origin = 'SG_ASSOC.CADPRO.PDCUSENV'
    end
    object Tb_ProPDCUSFIN: TFloatField
      FieldName = 'PDCUSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFIN'
    end
    object Tb_ProPDUCODFOR: TFloatField
      FieldName = 'PDUCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUCODFOR'
    end
    object Tb_ProPDUNOMFOR: TStringField
      FieldName = 'PDUNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUNOMFOR'
      Size = 40
    end
    object Tb_ProPDCODFAB: TStringField
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Tb_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
    object Tb_ProPDALTOT: TFloatField
      FieldName = 'PDALTOT'
      Origin = 'SG_ASSOC.CADPRO.PDALTOT'
    end
    object Tb_ProPDBAIXOT: TFloatField
      FieldName = 'PDBAIXOT'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOT'
    end
    object Tb_ProPDPMC02: TFloatField
      FieldName = 'PDPMC02'
      Origin = 'SG_ASSOC.CADPRO.PDPMC02'
    end
    object Tb_ProPDPMC03: TFloatField
      FieldName = 'PDPMC03'
      Origin = 'SG_ASSOC.CADPRO.PDPMC03'
    end
    object Tb_ProPDCX_PVDA: TFloatField
      FieldName = 'PDCX_PVDA'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PVDA'
    end
    object Tb_ProPDCX_PFAB: TFloatField
      FieldName = 'PDCX_PFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PFAB'
    end
    object Tb_ProPDCX_PMAX: TFloatField
      FieldName = 'PDCX_PMAX'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PMAX'
    end
    object Tb_ProPDICMSCRED: TFloatField
      FieldName = 'PDICMSCRED'
      Origin = 'SG_ASSOC.CADPRO.PDICMSCRED'
    end
    object Tb_ProPDICMSDEB: TFloatField
      FieldName = 'PDICMSDEB'
      Origin = 'SG_ASSOC.CADPRO.PDICMSDEB'
    end
    object Tb_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
    object Tb_ProPDPRAT: TStringField
      FieldName = 'PDPRAT'
      Origin = 'SG_ASSOC.CADPRO.PDPRAT'
      Size = 10
    end
    object Tb_ProPDLADO: TStringField
      FieldName = 'PDLADO'
      Origin = 'SG_ASSOC.CADPRO.PDLADO'
      Size = 10
    end
    object Tb_ProPDRUA: TStringField
      FieldName = 'PDRUA'
      Origin = 'SG_ASSOC.CADPRO.PDRUA'
      Size = 10
    end
    object Tb_ProPDAPLIC: TStringField
      FieldName = 'PDAPLIC'
      Origin = 'SG_ASSOC.CADPRO.PDAPLIC'
      Size = 100
    end
    object Tb_ProPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object Tb_ProPDQTDM3: TFloatField
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Tb_ProPDCOMIS_EXTRA: TFloatField
      FieldName = 'PDCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS_EXTRA'
    end
    object Tb_ProPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Tb_ProPDUNDVDA: TFloatField
      FieldName = 'PDUNDVDA'
      Origin = 'SG_ASSOC.CADPRO.PDUNDVDA'
    end
    object Tb_ProPDBLDESCAV: TFloatField
      FieldName = 'PDBLDESCAV'
      Origin = 'SG_ASSOC.CADPRO.PDBLDESCAV'
    end
    object Tb_ProPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
      Origin = 'SG_ASSOC.CADPRO.PDRESTFOR'
    end
    object Tb_ProPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
      Origin = 'SG_ASSOC.CADPRO.PDRESTCON'
    end
    object Tb_ProPDSITCF: TStringField
      FieldName = 'PDSITCF'
      Origin = 'SG_ASSOC.CADPRO.PDSITCF'
      Size = 3
    end
    object Tb_ProPDCODBAR_EMBPAD: TStringField
      FieldName = 'PDCODBAR_EMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_EMBPAD'
      Size = 50
    end
    object Tb_ProPDENTPEN: TFloatField
      FieldName = 'PDENTPEN'
      Origin = 'SG_ASSOC.CADPRO.PDENTPEN'
    end
    object Tb_ProPDUSRALT: TFloatField
      FieldName = 'PDUSRALT'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT'
    end
    object Tb_ProPDUSRINC: TFloatField
      FieldName = 'PDUSRINC'
      Origin = 'SG_ASSOC.CADPRO.PDUSRINC'
    end
    object Tb_ProPDSALDO_PRAT: TFloatField
      FieldName = 'PDSALDO_PRAT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_PRAT'
    end
    object Tb_ProPDSALDO_DEP: TFloatField
      FieldName = 'PDSALDO_DEP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_DEP'
    end
    object Tb_ProPDSALDO_REP: TFloatField
      FieldName = 'PDSALDO_REP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_REP'
    end
    object Tb_ProPDTEMPOFAB: TFloatField
      FieldName = 'PDTEMPOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDTEMPOFAB'
    end
    object Tb_ProPDREFER: TStringField
      FieldName = 'PDREFER'
      Origin = 'SG_ASSOC.CADPRO.PDREFER'
    end
    object Tb_ProPDDESCMAX: TFloatField
      FieldName = 'PDDESCMAX'
      Origin = 'SG_ASSOC.CADPRO.PDDESCMAX'
    end
    object Tb_ProPDPRZVAL_ANOS: TFloatField
      FieldName = 'PDPRZVAL_ANOS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_ANOS'
    end
    object Tb_ProPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_DIAS'
    end
    object Tb_ProPDCODDEP: TFloatField
      FieldName = 'PDCODDEP'
      Origin = 'SG_ASSOC.CADPRO.PDCODDEP'
    end
    object Tb_ProPDNOMDEP: TStringField
      FieldName = 'PDNOMDEP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMDEP'
      Size = 40
    end
    object Tb_ProPDDATA_REPLICA: TDateTimeField
      FieldName = 'PDDATA_REPLICA'
      Origin = 'SG_ASSOC.CADPRO.PDDATA_REPLICA'
    end
    object Tb_ProPDTEMFORMULA: TFloatField
      FieldName = 'PDTEMFORMULA'
      Origin = 'SG_ASSOC.CADPRO.PDTEMFORMULA'
    end
    object Tb_ProPDBALANCA: TFloatField
      FieldName = 'PDBALANCA'
      Origin = 'SG_ASSOC.CADPRO.PDBALANCA'
    end
    object Tb_ProPDVALREGMS: TDateTimeField
      FieldName = 'PDVALREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDVALREGMS'
    end
    object Tb_ProPDKIT: TStringField
      FieldName = 'PDKIT'
      Origin = 'SG_ASSOC.CADPRO.PDKIT'
      Size = 1
    end
    object Tb_ProPDCODEXT: TFloatField
      FieldName = 'PDCODEXT'
      Origin = 'SG_ASSOC.CADPRO.PDCODEXT'
    end
    object Tb_ProPDFIS_ORIGEM: TStringField
      FieldName = 'PDFIS_ORIGEM'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_ORIGEM'
      Size = 1
    end
    object Tb_ProPDFIS_CST_ICMS_EST_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_REV'
      Size = 2
    end
    object Tb_ProPDFIS_CST_ICMS_EST_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_CF'
      Size = 2
    end
    object Tb_ProPDFIS_PRED_ICMS_EST: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_EST'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_EST'
    end
    object Tb_ProPDFIS_CST_ICMS_INT_CF: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_CF'
      Size = 2
    end
    object Tb_ProPDFIS_CST_ICMS_INT_REV: TStringField
      FieldName = 'PDFIS_CST_ICMS_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_INT_REV'
      Size = 2
    end
    object Tb_ProPDFIS_PRED_ICMS_INT: TFloatField
      FieldName = 'PDFIS_PRED_ICMS_INT'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PRED_ICMS_INT'
    end
    object Tb_ProPDFIS_CSOSN_EST_REV: TStringField
      FieldName = 'PDFIS_CSOSN_EST_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_REV'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_EST_CF: TStringField
      FieldName = 'PDFIS_CSOSN_EST_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_EST_CF'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_INT_REV: TStringField
      FieldName = 'PDFIS_CSOSN_INT_REV'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_REV'
      Size = 3
    end
    object Tb_ProPDFIS_CSOSN_INT_CF: TStringField
      FieldName = 'PDFIS_CSOSN_INT_CF'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CSOSN_INT_CF'
      Size = 3
    end
    object Tb_ProPDFIS_CST_PISCOF_ENTRADA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_ENTRADA'
      Size = 2
    end
    object Tb_ProPDFIS_CST_PISCOF_SAIDA: TStringField
      FieldName = 'PDFIS_CST_PISCOF_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_PISCOF_SAIDA'
      Size = 2
    end
    object Tb_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_ENTRADA'
    end
    object Tb_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_ENTRADA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_ENTRADA'
    end
    object Tb_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_PIS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_PIS_ALIQ_SAIDA'
    end
    object Tb_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField
      FieldName = 'PDFIS_COFINS_ALIQ_SAIDA'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_COFINS_ALIQ_SAIDA'
    end
    object Tb_ProPDCONTESP: TFloatField
      FieldName = 'PDCONTESP'
      Origin = 'SG_ASSOC.CADPRO.PDCONTESP'
    end
    object Tb_ProPDCMET_CONSTANTE: TFloatField
      FieldName = 'PDCMET_CONSTANTE'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_CONSTANTE'
    end
    object Tb_ProPDCMET_BITOLA: TFloatField
      FieldName = 'PDCMET_BITOLA'
      Origin = 'SG_ASSOC.CADPRO.PDCMET_BITOLA'
    end
    object Tb_ProPDCODGEN: TStringField
      FieldName = 'PDCODGEN'
      Origin = 'SG_ASSOC.CADPRO.PDCODGEN'
      Size = 2
    end
    object Tb_ProPDQTD_ANALISE: TFloatField
      FieldName = 'PDQTD_ANALISE'
      Origin = 'SG_ASSOC.CADPRO.PDQTD_ANALISE'
    end
    object Tb_ProPDDESICMS: TFloatField
      FieldName = 'PDDESICMS'
      Origin = 'SG_ASSOC.CADPRO.PDDESICMS'
    end
    object Tb_ProPDNOME_COMPRA: TStringField
      FieldName = 'PDNOME_COMPRA'
      Origin = 'SG_ASSOC.CADPRO.PDNOME_COMPRA'
      Size = 120
    end
    object Tb_ProPDCODBAR_TIPO: TStringField
      FieldName = 'PDCODBAR_TIPO'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_TIPO'
    end
    object Tb_ProPDFARMA_PCOFAB: TFloatField
      FieldName = 'PDFARMA_PCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDFARMA_PCOFAB'
    end
    object Tb_ProPDREFRIGERADO: TFloatField
      FieldName = 'PDREFRIGERADO'
      Origin = 'SG_ASSOC.CADPRO.PDREFRIGERADO'
    end
    object Tb_ProPDSGNPC: TFloatField
      FieldName = 'PDSGNPC'
      Origin = 'SG_ASSOC.CADPRO.PDSGNPC'
    end
    object Tb_ProPDCLASSE_TERAPEUTICA: TFloatField
      FieldName = 'PDCLASSE_TERAPEUTICA'
      Origin = 'SG_ASSOC.CADPRO.PDCLASSE_TERAPEUTICA'
    end
    object Tb_ProPDUND_INSUMO: TFloatField
      FieldName = 'PDUND_INSUMO'
      Origin = 'SG_ASSOC.CADPRO.PDUND_INSUMO'
    end
    object Tb_ProPDUND_FARMACOTECNICA: TFloatField
      FieldName = 'PDUND_FARMACOTECNICA'
      Origin = 'SG_ASSOC.CADPRO.PDUND_FARMACOTECNICA'
    end
    object Tb_ProPDTIPO_RECEITA: TFloatField
      FieldName = 'PDTIPO_RECEITA'
      Origin = 'SG_ASSOC.CADPRO.PDTIPO_RECEITA'
    end
    object Tb_ProPDUSO_MEDICAMENTO: TFloatField
      FieldName = 'PDUSO_MEDICAMENTO'
      Origin = 'SG_ASSOC.CADPRO.PDUSO_MEDICAMENTO'
    end
    object Tb_ProPDAPRES_QTD: TFloatField
      FieldName = 'PDAPRES_QTD'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES_QTD'
    end
    object Tb_ProPDAPRES_NOME: TStringField
      FieldName = 'PDAPRES_NOME'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES_NOME'
      Size = 30
    end
  end
  object src_pro: TDataSource
    DataSet = Tb_Pro
    OnDataChange = src_proDataChange
    Left = 580
    Top = 16
  end
  object Tb_Pro_CodBar: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Pro_CodBarAfterInsert
    AfterEdit = Tb_Pro_CodBarAfterEdit
    BeforePost = Tb_Pro_CodBarBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_CODBAR')
    UpdateObject = U_Pro_CodBar
    Left = 704
    Top = 8
    object Tb_Pro_CodBarCBCODEMP: TFloatField
      FieldName = 'CBCODEMP'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODEMP'
    end
    object Tb_Pro_CodBarCBCODPRO: TFloatField
      FieldName = 'CBCODPRO'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODPRO'
    end
    object Tb_Pro_CodBarCBCODBAR: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CBCODBAR'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODBAR'
    end
    object Tb_Pro_CodBarCBQTDMULT: TFloatField
      DisplayLabel = 'Fator Multiplicador'
      FieldName = 'CBQTDMULT'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBQTDMULT'
    end
    object Tb_Pro_CodBarCBCODBAR_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CBCODBAR_TIPO'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODBAR_TIPO'
    end
  end
  object Src_Pro_CodBar: TDataSource
    DataSet = Tb_Pro_CodBar
    Left = 740
    Top = 16
  end
  object Tb_CodPFor: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CodPForAfterInsert
    AfterEdit = Tb_CodPForAfterEdit
    BeforePost = Tb_CodPForBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PFCODEMP,PFCODPRO,PFCODFOR,PFCODPFORN,PFFATOR,PFUNDFOR,FR' +
        'AZAO'
      ',RPAD('#39' '#39',80) AS DESCR from CODPFOR,CADFOR'
      'WHERE FCODFOR=PFCODFOR')
    UpdateObject = U_CodpFor
    Left = 704
    Top = 40
    object Tb_CodPForPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
      Origin = 'SG_ASSOC.CODPFOR.PFCODEMP'
    end
    object Tb_CodPForPFCODPRO: TFloatField
      FieldName = 'PFCODPRO'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPRO'
    end
    object Tb_CodPForPFCODFOR: TFloatField
      DisplayLabel = 'C'#243'd. Fornec'
      FieldName = 'PFCODFOR'
      Origin = 'SG_ASSOC.CODPFOR.PFCODFOR'
    end
    object Tb_CodPForPFCODPFORN: TStringField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'PFCODPFORN'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPFORN'
    end
    object Tb_CodPForPFFATOR: TFloatField
      DisplayLabel = 'Fator Conversao'
      FieldName = 'PFFATOR'
      Origin = 'SG_ASSOC.CODPFOR.PFFATOR'
    end
    object Tb_CodPForPFUNDFOR: TStringField
      DisplayLabel = 'Und Fornec'
      FieldName = 'PFUNDFOR'
      Origin = 'SG_ASSOC.CODPFOR.PFUNDFOR'
      Size = 3
    end
    object Tb_CodPForFRAZAO: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Tb_CodPForDESCR: TStringField
      FieldName = 'DESCR'
      Size = 80
    end
  end
  object Src_CodPFor: TDataSource
    DataSet = Tb_CodPFor
    Left = 740
    Top = 48
  end
  object U_CodpFor: TUpdateSQL
    ModifySQL.Strings = (
      'update CODPFOR'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFCODPRO = :PFCODPRO,'
      '  PFCODFOR = :PFCODFOR,'
      '  PFCODPFOR = :PFCODPFOR,'
      '  PFSALDO = :PFSALDO,'
      '  PFCODPFORN = :PFCODPFORN,'
      '  PFFATOR = :PFFATOR,'
      '  PFUNDFOR = :PFUNDFOR,'
      '  PFDATA_EVE = :PFDATA_EVE,'
      '  PFDATA_REP = :PFDATA_REP'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    InsertSQL.Strings = (
      'insert into CODPFOR'
      
        '  (PFCODEMP, PFCODPRO, PFCODFOR, PFCODPFOR, PFSALDO, PFCODPFORN,' +
        ' PFFATOR, '
      '   PFUNDFOR, PFDATA_EVE, PFDATA_REP)'
      'values'
      
        '  (:PFCODEMP, :PFCODPRO, :PFCODFOR, :PFCODPFOR, :PFSALDO, :PFCOD' +
        'PFORN, '
      '   :PFFATOR, :PFUNDFOR, :PFDATA_EVE, :PFDATA_REP)')
    DeleteSQL.Strings = (
      'delete from CODPFOR'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    Left = 672
    Top = 40
  end
  object U_Pro_CodBar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_CODBAR'
      'set'
      '  CBCODEMP = :CBCODEMP,'
      '  CBCODPRO = :CBCODPRO,'
      '  CBCODBAR = :CBCODBAR,'
      '  CBQTDMULT = :CBQTDMULT,'
      '  CBCODBAR_TIPO = :CBCODBAR_TIPO'
      'where'
      '  CBCODEMP = :OLD_CBCODEMP and'
      '  CBCODPRO = :OLD_CBCODPRO and'
      '  CBCODBAR = :OLD_CBCODBAR')
    InsertSQL.Strings = (
      'insert into CADPRO_CODBAR'
      '  (CBCODEMP, CBCODPRO, CBCODBAR, CBQTDMULT, CBCODBAR_TIPO)'
      'values'
      '  (:CBCODEMP, :CBCODPRO, :CBCODBAR, :CBQTDMULT, :CBCODBAR_TIPO)')
    DeleteSQL.Strings = (
      'delete from CADPRO_CODBAR'
      'where'
      '  CBCODEMP = :OLD_CBCODEMP and'
      '  CBCODPRO = :OLD_CBCODPRO and'
      '  CBCODBAR = :OLD_CBCODBAR')
    Left = 680
    Top = 8
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDCODEMP = :PDCODEMP,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDCODBAR = :PDCODBAR,'
      '  PDNOME = :PDNOME,'
      '  PDNOME2 = :PDNOME2,'
      '  PDMARCA = :PDMARCA,'
      '  PDNIVEL = :PDNIVEL,'
      '  PDCODFOR = :PDCODFOR,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDPMC = :PDPMC,'
      '  PDPRECOA1 = :PDPRECOA1,'
      '  PDPRECOA2 = :PDPRECOA2,'
      '  PDPRECOA3 = :PDPRECOA3,'
      '  PDDESC1 = :PDDESC1,'
      '  PDDESC1A = :PDDESC1A,'
      '  PDDESC2 = :PDDESC2,'
      '  PDDESC3 = :PDDESC3,'
      '  PDQTDP = :PDQTDP,'
      '  PDPRAZO = :PDPRAZO,'
      '  PDSIT = :PDSIT,'
      '  PDDTUATP1 = :PDDTUATP1,'
      '  PDUSRALT1 = :PDUSRALT1,'
      '  PDDTUATP2 = :PDDTUATP2,'
      '  PDUSRALT2 = :PDUSRALT2,'
      '  PDDTUATP3 = :PDDTUATP3,'
      '  PDUSRALT3 = :PDUSRALT3,'
      '  PDDATAUA = :PDDATAUA,'
      '  PDUND = :PDUND,'
      '  PDCURVA = :PDCURVA,'
      '  PDCODGRU = :PDCODGRU,'
      '  PDCODCON = :PDCODCON,'
      '  PDCODRAM = :PDCODRAM,'
      '  PDCODTIP = :PDCODTIP,'
      '  PDESTMAX = :PDESTMAX,'
      '  PDESTMIN = :PDESTMIN,'
      '  PDFRACAO = :PDFRACAO,'
      '  PDLISTA = :PDLISTA,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDPCOMC = :PDPCOMC,'
      '  PDPCOFAB = :PDPCOFAB,'
      '  PDSTATUS = :PDSTATUS,'
      '  PDTABICM = :PDTABICM,'
      '  PDIPI = :PDIPI,'
      '  PDREGMS = :PDREGMS,'
      '  PDCLAS = :PDCLAS,'
      '  PDSECAO = :PDSECAO,'
      '  PDEMBPAD = :PDEMBPAD,'
      '  PDEMBMUL = :PDEMBMUL,'
      '  PDCOMIS = :PDCOMIS,'
      '  PDSEMCOM = :PDSEMCOM,'
      '  PDPRZVAL = :PDPRZVAL,'
      '  PDUCPR = :PDUCPR,'
      '  PDCODUSR = :PDCODUSR,'
      '  PDSALDO = :PDSALDO,'
      '  PDDTALT = :PDDTALT,'
      '  PDHRALT = :PDHRALT,'
      '  PDEMBPAD2 = :PDEMBPAD2,'
      '  PDCODPROC = :PDCODPROC,'
      '  PDPROALT = :PDPROALT,'
      '  PDDTULTSAI = :PDDTULTSAI,'
      '  PDDTULTENT = :PDDTULTENT,'
      '  PDVDAMAXM = :PDVDAMAXM,'
      '  PDREST = :PDREST,'
      '  PDPESOB = :PDPESOB,'
      '  PDPESOL = :PDPESOL,'
      '  PDBAIXO = :PDBAIXO,'
      '  PDALTO = :PDALTO,'
      '  PDDATCAD = :PDDATCAD,'
      '  PDNOMFOR = :PDNOMFOR,'
      '  PDNOMPROC = :PDNOMPROC,'
      '  PDNOMGRU = :PDNOMGRU,'
      '  PDNOMCON = :PDNOMCON,'
      '  PDNOMRAM = :PDNOMRAM,'
      '  PDNOMTIP = :PDNOMTIP,'
      '  PDNOMPROALT = :PDNOMPROALT,'
      '  PDSTATUS02 = :PDSTATUS02,'
      '  PDSALDOR = :PDSALDOR,'
      '  PDBAIXOR = :PDBAIXOR,'
      '  PDALTOR = :PDALTOR,'
      '  PDSALDOC = :PDSALDOC,'
      '  PDBAIXOC = :PDBAIXOC,'
      '  PDALTOC = :PDALTOC,'
      '  PDCODNCM = :PDCODNCM,'
      '  PDCUSFAB = :PDCUSFAB,'
      '  PDCUSENV = :PDCUSENV,'
      '  PDCUSFIN = :PDCUSFIN,'
      '  PDUCODFOR = :PDUCODFOR,'
      '  PDUNOMFOR = :PDUNOMFOR,'
      '  PDCODFAB = :PDCODFAB,'
      '  PDSALDOT = :PDSALDOT,'
      '  PDALTOT = :PDALTOT,'
      '  PDBAIXOT = :PDBAIXOT,'
      '  PDPMC02 = :PDPMC02,'
      '  PDPMC03 = :PDPMC03,'
      '  PDCX_PVDA = :PDCX_PVDA,'
      '  PDCX_PFAB = :PDCX_PFAB,'
      '  PDCX_PMAX = :PDCX_PMAX,'
      '  PDICMSCRED = :PDICMSCRED,'
      '  PDICMSDEB = :PDICMSDEB,'
      '  PDVLRINC = :PDVLRINC,'
      '  PDPRAT = :PDPRAT,'
      '  PDLADO = :PDLADO,'
      '  PDRUA = :PDRUA,'
      '  PDAPLIC = :PDAPLIC,'
      '  PDAPRES = :PDAPRES,'
      '  PDQTDM3 = :PDQTDM3,'
      '  PDCOMIS_EXTRA = :PDCOMIS_EXTRA,'
      '  PDQTDGRML = :PDQTDGRML,'
      '  PDUNDVDA = :PDUNDVDA,'
      '  PDBLDESCAV = :PDBLDESCAV,'
      '  PDRESTFOR = :PDRESTFOR,'
      '  PDRESTCON = :PDRESTCON,'
      '  PDSITCF = :PDSITCF,'
      '  PDCODBAR_EMBPAD = :PDCODBAR_EMBPAD,'
      '  PDENTPEN = :PDENTPEN,'
      '  PDUSRALT = :PDUSRALT,'
      '  PDUSRINC = :PDUSRINC,'
      '  PDSALDO_PRAT = :PDSALDO_PRAT,'
      '  PDSALDO_DEP = :PDSALDO_DEP,'
      '  PDSALDO_REP = :PDSALDO_REP,'
      '  PDTEMPOFAB = :PDTEMPOFAB,'
      '  PDREFER = :PDREFER,'
      '  PDPRZVAL_ANOS = :PDPRZVAL_ANOS,'
      '  PDPRZVAL_DIAS = :PDPRZVAL_DIAS,'
      '  PDCODDEP = :PDCODDEP,'
      '  PDNOMDEP = :PDNOMDEP,'
      '  PDDATA_REPLICA = :PDDATA_REPLICA,'
      '  PDDESCMAX = :PDDESCMAX,'
      '  PDCONTESP = :PDCONTESP,'
      '  PDCMET_CONSTANTE = :PDCMET_CONSTANTE,'
      '  PDCMET_BITOLA = :PDCMET_BITOLA,'
      '  PDCODEXT = :PDCODEXT,'
      '  PDBALANCA = :PDBALANCA,'
      '  PDKIT = :PDKIT,'
      '  PDVALREGMS = :PDVALREGMS,'
      '  PDTEMFORMULA = :PDTEMFORMULA,'
      '  PDFIS_ORIGEM = :PDFIS_ORIGEM,'
      '  PDFIS_CST_ICMS_EST_REV = :PDFIS_CST_ICMS_EST_REV,'
      '  PDDESICMS = :PDDESICMS,'
      '  PDFIS_CST_ICMS_EST_CF = :PDFIS_CST_ICMS_EST_CF,'
      '  PDFIS_PRED_ICMS_EST = :PDFIS_PRED_ICMS_EST,'
      '  PDFIS_CST_ICMS_INT_CF = :PDFIS_CST_ICMS_INT_CF,'
      '  PDFIS_CST_ICMS_INT_REV = :PDFIS_CST_ICMS_INT_REV,'
      '  PDFIS_PRED_ICMS_INT = :PDFIS_PRED_ICMS_INT,'
      '  PDFIS_CSOSN_EST_REV = :PDFIS_CSOSN_EST_REV,'
      '  PDFIS_CSOSN_EST_CF = :PDFIS_CSOSN_EST_CF,'
      '  PDFIS_CSOSN_INT_REV = :PDFIS_CSOSN_INT_REV,'
      '  PDFIS_CSOSN_INT_CF = :PDFIS_CSOSN_INT_CF,'
      '  PDFIS_CST_PISCOF_ENTRADA = :PDFIS_CST_PISCOF_ENTRADA,'
      '  PDFIS_CST_PISCOF_SAIDA = :PDFIS_CST_PISCOF_SAIDA,'
      '  PDFIS_PIS_ALIQ_ENTRADA = :PDFIS_PIS_ALIQ_ENTRADA,'
      '  PDFIS_COFINS_ALIQ_ENTRADA = :PDFIS_COFINS_ALIQ_ENTRADA,'
      '  PDFIS_PIS_ALIQ_SAIDA = :PDFIS_PIS_ALIQ_SAIDA,'
      '  PDFIS_COFINS_ALIQ_SAIDA = :PDFIS_COFINS_ALIQ_SAIDA,'
      '  PDCODGEN = :PDCODGEN,'
      '  PDQTD_ANALISE = :PDQTD_ANALISE,'
      '  PDNOME_COMPRA = :PDNOME_COMPRA,'
      '  PDDESFIN = :PDDESFIN,'
      '  PDCODBAR_TIPO = :PDCODBAR_TIPO,'
      '  PDREFRIGERADO = :PDREFRIGERADO,'
      '  PDSGNPC = :PDSGNPC,'
      '  PDFARMA_PCOFAB = :PDFARMA_PCOFAB,'
      '  PDTIPO_RECEITA = :PDTIPO_RECEITA,'
      '  PDUSO_MEDICAMENTO = :PDUSO_MEDICAMENTO,'
      '  PDCLASSE_TERAPEUTICA = :PDCLASSE_TERAPEUTICA,'
      '  PDUND_INSUMO = :PDUND_INSUMO,'
      '  PDUND_FARMACOTECNICA = :PDUND_FARMACOTECNICA,'
      '  PDAPRES_QTD = :PDAPRES_QTD,'
      '  PDAPRES_NOME = :PDAPRES_NOME'
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (PDCODEMP, PDCODPRO, PDCODBAR, PDNOME, PDNOME2, PDMARCA, '
      'PDNIVEL, PDCODFOR, '
      '   PDPRECO1, PDPRECO2, PDPRECO3, PDPMC, PDPRECOA1, PDPRECOA2, '
      'PDPRECOA3, '
      '   PDDESC1, PDDESC1A, PDDESC2, PDDESC3, PDQTDP, PDPRAZO, PDSIT, '
      'PDDTUATP1, '
      '   PDUSRALT1, PDDTUATP2, PDUSRALT2, PDDTUATP3, PDUSRALT3, '
      'PDDATAUA, PDUND, '
      '   PDCURVA, PDCODGRU, PDCODCON, PDCODRAM, PDCODTIP, PDESTMAX, '
      'PDESTMIN, '
      '   PDFRACAO, PDLISTA, PDPRECOC, PDPCOMC, PDPCOFAB, PDSTATUS, '
      'PDTABICM, '
      
        '   PDIPI, PDREGMS, PDCLAS, PDSECAO, PDEMBPAD, PDEMBMUL, PDCOMIS,' +
        ' '
      'PDSEMCOM, '
      '   PDPRZVAL, PDUCPR, PDCODUSR, PDSALDO, PDDTALT, PDHRALT, '
      'PDEMBPAD2, PDCODPROC, '
      
        '   PDPROALT, PDDTULTSAI, PDDTULTENT, PDVDAMAXM, PDREST, PDPESOB,' +
        ' '
      'PDPESOL, '
      '   PDBAIXO, PDALTO, PDDATCAD, PDNOMFOR, PDNOMPROC, PDNOMGRU, '
      'PDNOMCON, '
      '   PDNOMRAM, PDNOMTIP, PDNOMPROALT, PDSTATUS02, PDSALDOR, '
      'PDBAIXOR, PDALTOR, '
      '   PDSALDOC, PDBAIXOC, PDALTOC, PDCODNCM, PDCUSFAB, PDCUSENV, '
      'PDCUSFIN, '
      '   PDUCODFOR, PDUNOMFOR, PDCODFAB, PDSALDOT, PDALTOT, PDBAIXOT, '
      'PDPMC02, '
      '   PDPMC03, PDCX_PVDA, PDCX_PFAB, PDCX_PMAX, PDICMSCRED, '
      'PDICMSDEB, PDVLRINC, '
      '   PDPRAT, PDLADO, PDRUA, PDAPLIC, PDAPRES, PDQTDM3, '
      'PDCOMIS_EXTRA, PDQTDGRML, '
      '   PDUNDVDA, PDBLDESCAV, PDRESTFOR, PDRESTCON, PDSITCF, '
      'PDCODBAR_EMBPAD, '
      '   PDENTPEN, PDUSRALT, PDUSRINC, PDSALDO_PRAT, PDSALDO_DEP, '
      'PDSALDO_REP, '
      '   PDTEMPOFAB, PDREFER, PDPRZVAL_ANOS, PDPRZVAL_DIAS, PDCODDEP, '
      'PDNOMDEP, '
      '   PDDATA_REPLICA, PDDESCMAX, PDCONTESP, PDCMET_CONSTANTE, '
      'PDCMET_BITOLA, '
      '   PDCODEXT, PDBALANCA, PDKIT, PDVALREGMS, PDTEMFORMULA, '
      'PDFIS_ORIGEM, '
      '   PDFIS_CST_ICMS_EST_REV, PDDESICMS, PDFIS_CST_ICMS_EST_CF, '
      'PDFIS_PRED_ICMS_EST, '
      '   PDFIS_CST_ICMS_INT_CF, PDFIS_CST_ICMS_INT_REV, '
      'PDFIS_PRED_ICMS_INT, '
      
        '   PDFIS_CSOSN_EST_REV, PDFIS_CSOSN_EST_CF, PDFIS_CSOSN_INT_REV,' +
        ' '
      'PDFIS_CSOSN_INT_CF, '
      '   PDFIS_CST_PISCOF_ENTRADA, PDFIS_CST_PISCOF_SAIDA, '
      'PDFIS_PIS_ALIQ_ENTRADA, '
      '   PDFIS_COFINS_ALIQ_ENTRADA, PDFIS_PIS_ALIQ_SAIDA, '
      'PDFIS_COFINS_ALIQ_SAIDA, '
      '   PDCODGEN, PDQTD_ANALISE, PDNOME_COMPRA, PDDESFIN, '
      'PDCODBAR_TIPO, PDREFRIGERADO, '
      '   PDSGNPC, PDFARMA_PCOFAB, PDTIPO_RECEITA, PDUSO_MEDICAMENTO, '
      'PDCLASSE_TERAPEUTICA, '
      '   PDUND_INSUMO, PDUND_FARMACOTECNICA, PDAPRES_QTD, '
      'PDAPRES_NOME)'
      'values'
      
        '  (:PDCODEMP, :PDCODPRO, :PDCODBAR, :PDNOME, :PDNOME2, :PDMARCA,' +
        ' '
      ':PDNIVEL, '
      
        '   :PDCODFOR, :PDPRECO1, :PDPRECO2, :PDPRECO3, :PDPMC, :PDPRECOA' +
        '1, '
      ':PDPRECOA2, '
      
        '   :PDPRECOA3, :PDDESC1, :PDDESC1A, :PDDESC2, :PDDESC3, :PDQTDP,' +
        ' '
      ':PDPRAZO, '
      '   :PDSIT, :PDDTUATP1, :PDUSRALT1, :PDDTUATP2, :PDUSRALT2, '
      ':PDDTUATP3, '
      
        '   :PDUSRALT3, :PDDATAUA, :PDUND, :PDCURVA, :PDCODGRU, :PDCODCON' +
        ', '
      ':PDCODRAM, '
      
        '   :PDCODTIP, :PDESTMAX, :PDESTMIN, :PDFRACAO, :PDLISTA, :PDPREC' +
        'OC, '
      ':PDPCOMC, '
      '   :PDPCOFAB, :PDSTATUS, :PDTABICM, :PDIPI, :PDREGMS, :PDCLAS, '
      ':PDSECAO, '
      
        '   :PDEMBPAD, :PDEMBMUL, :PDCOMIS, :PDSEMCOM, :PDPRZVAL, :PDUCPR' +
        ', '
      ':PDCODUSR, '
      
        '   :PDSALDO, :PDDTALT, :PDHRALT, :PDEMBPAD2, :PDCODPROC, :PDPROA' +
        'LT, '
      ':PDDTULTSAI, '
      
        '   :PDDTULTENT, :PDVDAMAXM, :PDREST, :PDPESOB, :PDPESOL, :PDBAIX' +
        'O, '
      ':PDALTO, '
      '   :PDDATCAD, :PDNOMFOR, :PDNOMPROC, :PDNOMGRU, :PDNOMCON, '
      ':PDNOMRAM, :PDNOMTIP, '
      '   :PDNOMPROALT, :PDSTATUS02, :PDSALDOR, :PDBAIXOR, :PDALTOR, '
      ':PDSALDOC, '
      
        '   :PDBAIXOC, :PDALTOC, :PDCODNCM, :PDCUSFAB, :PDCUSENV, :PDCUSF' +
        'IN, '
      ':PDUCODFOR, '
      
        '   :PDUNOMFOR, :PDCODFAB, :PDSALDOT, :PDALTOT, :PDBAIXOT, :PDPMC' +
        '02, '
      ':PDPMC03, '
      '   :PDCX_PVDA, :PDCX_PFAB, :PDCX_PMAX, :PDICMSCRED, :PDICMSDEB, '
      ':PDVLRINC, '
      '   :PDPRAT, :PDLADO, :PDRUA, :PDAPLIC, :PDAPRES, :PDQTDM3, '
      ':PDCOMIS_EXTRA, '
      '   :PDQTDGRML, :PDUNDVDA, :PDBLDESCAV, :PDRESTFOR, :PDRESTCON, '
      ':PDSITCF, '
      '   :PDCODBAR_EMBPAD, :PDENTPEN, :PDUSRALT, :PDUSRINC, '
      ':PDSALDO_PRAT, :PDSALDO_DEP, '
      '   :PDSALDO_REP, :PDTEMPOFAB, :PDREFER, :PDPRZVAL_ANOS, '
      ':PDPRZVAL_DIAS, '
      
        '   :PDCODDEP, :PDNOMDEP, :PDDATA_REPLICA, :PDDESCMAX, :PDCONTESP' +
        ', '
      ':PDCMET_CONSTANTE, '
      '   :PDCMET_BITOLA, :PDCODEXT, :PDBALANCA, :PDKIT, :PDVALREGMS, '
      ':PDTEMFORMULA, '
      '   :PDFIS_ORIGEM, :PDFIS_CST_ICMS_EST_REV, :PDDESICMS, '
      ':PDFIS_CST_ICMS_EST_CF, '
      '   :PDFIS_PRED_ICMS_EST, :PDFIS_CST_ICMS_INT_CF, '
      ':PDFIS_CST_ICMS_INT_REV, '
      
        '   :PDFIS_PRED_ICMS_INT, :PDFIS_CSOSN_EST_REV, :PDFIS_CSOSN_EST_' +
        'CF, '
      ':PDFIS_CSOSN_INT_REV, '
      '   :PDFIS_CSOSN_INT_CF, :PDFIS_CST_PISCOF_ENTRADA, '
      ':PDFIS_CST_PISCOF_SAIDA, '
      '   :PDFIS_PIS_ALIQ_ENTRADA, :PDFIS_COFINS_ALIQ_ENTRADA, '
      ':PDFIS_PIS_ALIQ_SAIDA, '
      '   :PDFIS_COFINS_ALIQ_SAIDA, :PDCODGEN, :PDQTD_ANALISE, '
      ':PDNOME_COMPRA, '
      '   :PDDESFIN, :PDCODBAR_TIPO, :PDREFRIGERADO, :PDSGNPC, '
      ':PDFARMA_PCOFAB, '
      '   :PDTIPO_RECEITA, :PDUSO_MEDICAMENTO, :PDCLASSE_TERAPEUTICA, '
      ':PDUND_INSUMO, '
      '   :PDUND_FARMACOTECNICA, :PDAPRES_QTD, :PDAPRES_NOME)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 632
    Top = 16
  end
end
