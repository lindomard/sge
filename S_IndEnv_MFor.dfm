object Frm_IndEnv_MFor: TFrm_IndEnv_MFor
  Left = 241
  Top = 138
  Width = 833
  Height = 569
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manutencao no Arquivo de Formulas dos Produtos'
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
  object Label24: TLabel
    Left = 600
    Top = 192
    Width = 38
    Height = 13
    Caption = 'Label24'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 825
    Height = 59
    Align = alTop
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 17
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 34
      Width = 52
      Height = 13
      Caption = 'Unidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 369
      Top = 34
      Width = 134
      Height = 13
      Caption = 'Medida em Litros/Kilos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbnAtuCusto: TSpeedButton
      Left = 656
      Top = 15
      Width = 103
      Height = 41
      Caption = 'Atualizar Custos'
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
      Visible = False
      OnClick = sbnAtuCustoClick
    end
    object CODPRO: TEdit
      Left = 84
      Top = 12
      Width = 115
      Height = 19
      Hint = 'C'#243'digo do Produto a Ser Produzido'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = CODPROEnter
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object bbAtualizar: TBitBtn
      Left = 562
      Top = 12
      Width = 83
      Height = 21
      Cursor = crHandPoint
      Hint = 'Atualizar as Informa'#231#245'es'
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbAtualizarClick
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
    object UNDMED: TEdit
      Left = 506
      Top = 32
      Width = 52
      Height = 19
      Hint = 
        'digite aqui a medida do '#13#10'produto em kilos ou gramas'#13#10'Exemplo p/' +
        '50 gramas 0,050'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnEnter = UNDMEDEnter
      OnExit = UNDMEDExit
    end
    object UND: TEdit
      Left = 84
      Top = 32
      Width = 52
      Height = 19
      Hint = 
        'digite aqui a medida do '#13#10'produto em kilos ou gramas'#13#10'Exemplo p/' +
        '50 gramas 0,050'
      TabStop = False
      Color = 12582911
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object CB_NOMPRO: TComboBox
      Left = 198
      Top = 12
      Width = 360
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Color = 12582911
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      TabStop = False
      Text = 'CB_NOMPRO'
      OnClick = CB_NOMPROClick
    end
    object bbImprimir: TBitBtn
      Left = 559
      Top = 34
      Width = 83
      Height = 21
      Cursor = crHandPoint
      Hint = 'Imprimir Formula'#231#227'o'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbImprimirClick
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 59
    Width = 825
    Height = 438
    ActivePage = TsFormula
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = PageControl1Change
    object TsFormula: TTabSheet
      Caption = 'Formulas'
      object gbMatPrima: TGroupBox
        Left = 0
        Top = 0
        Width = 817
        Height = 151
        Align = alTop
        Caption = 'Materias Primas:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object DBGrid_MP: TDBGrid
          Left = 2
          Top = 15
          Width = 813
          Height = 116
          Align = alClient
          DataSource = Src_Comp_MP
          FixedColor = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_MPColExit
          OnExit = DBGrid_MPExit
          OnKeyDown = DBGrid_MPKeyDown
          OnKeyPress = DBGrid_MPKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPPERCENT'
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'observacao'
              ReadOnly = True
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPU'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              ReadOnly = True
              Title.Caption = 'Valor Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPQTD_PAD'
              ReadOnly = True
              Title.Caption = 'Qtd.Padr'#227'o'
              Visible = True
            end>
        end
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 131
          Width = 813
          Height = 18
          DataSource = Src_Comp_MP
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
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
          TabOrder = 1
        end
      end
      object gb_matEmb: TGroupBox
        Left = 0
        Top = 151
        Width = 817
        Height = 154
        Align = alClient
        Caption = 'Material de Embalagem por Unidade:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 134
          Width = 813
          Height = 18
          DataSource = Src_Comp_Emb
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
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
        object DBGrid_emb: TDBGrid
          Left = 2
          Top = 15
          Width = 813
          Height = 119
          Align = alClient
          DataSource = Src_Comp_Emb
          FixedColor = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_embColExit
          OnExit = DBGrid_embExit
          OnKeyPress = DBGrid_embKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPQUANT'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPU'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              ReadOnly = True
              Title.Caption = 'Valor Total'
              Visible = True
            end>
        end
      end
      object Gb_Embarque: TGroupBox
        Left = 0
        Top = 305
        Width = 817
        Height = 105
        Align = alBottom
        Caption = 'Materiais de Embarque(Caixa Fechada):'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        object DBNavigator3: TDBNavigator
          Left = 2
          Top = 85
          Width = 813
          Height = 18
          DataSource = Src_Comp_Fec
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
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
        object DBGrid_fec: TDBGrid
          Left = 2
          Top = 15
          Width = 813
          Height = 70
          Align = alClient
          DataSource = Src_Comp_Fec
          FixedColor = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_fecColExit
          OnExit = DBGrid_fecExit
          OnKeyPress = DBGrid_fecKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPQUANT'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPU'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              ReadOnly = True
              Title.Caption = 'Valor Total'
              Visible = True
            end>
        end
      end
    end
    object TsCusto: TTabSheet
      Caption = 'Custo'
      ImageIndex = 2
      object gb_custo: TGroupBox
        Left = 32
        Top = 32
        Width = 169
        Height = 81
        Caption = 'Custo:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Edit1: TEdit
          Left = 7
          Top = 18
          Width = 63
          Height = 19
          Color = 15466455
          TabOrder = 0
          Text = 'Impostos:'
        end
        object DBE_PDC_CUS_OUTDESP_PERC: TDBEdit
          Left = 69
          Top = 18
          Width = 48
          Height = 19
          DataField = 'PDC_CUS_OUTDESP_PERC'
          DataSource = src_pro_custo
          TabOrder = 1
          OnChange = DBE_PDC_CUS_OUTDESP_PERCChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 208
        Top = 33
        Width = 169
        Height = 81
        Caption = 'Venda:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Edit2: TEdit
          Left = 7
          Top = 18
          Width = 63
          Height = 19
          Color = 15466455
          TabOrder = 0
          Text = '%Lucro'
        end
        object DBE_PDC_VDA_LUCRO_PERC: TDBEdit
          Left = 69
          Top = 18
          Width = 48
          Height = 19
          DataField = 'PDC_VDA_LUCRO_PERC'
          DataSource = src_pro_custo
          TabOrder = 1
          OnChange = DBE_PDC_VDA_LUCRO_PERCChange
        end
      end
      object bbGravar: TBitBtn
        Left = 120
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Gravar'
        Enabled = False
        TabOrder = 2
        OnClick = bbGravarClick
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
    object tsTexto_Word: TTabSheet
      Caption = 'Sobre o Texto da OP(Documento Word)'
      ImageIndex = 3
      object gb_subst: TGroupBox
        Left = 0
        Top = 135
        Width = 303
        Height = 233
        Caption = 'Legenda de Textos a Serem Substituidos:'
        Color = 12303359
        ParentColor = False
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 18
          Width = 196
          Height = 13
          Caption = '[DATA_FAB] - Data de Fabrica'#231#227'o'
        end
        object Label12: TLabel
          Left = 8
          Top = 33
          Width = 206
          Height = 13
          Caption = '[DATA_VENC] - Data de Fabrica'#231#227'o'
        end
        object Label13: TLabel
          Left = 8
          Top = 48
          Width = 149
          Height = 13
          Caption = '[DATA] - Data de Emiss'#227'o'
        end
        object Label14: TLabel
          Left = 8
          Top = 64
          Width = 163
          Height = 13
          Caption = '[LOTE] - Lote de Fabrica'#231#227'o'
        end
        object Label15: TLabel
          Left = 8
          Top = 80
          Width = 159
          Height = 13
          Caption = '[CHAVE] - Chave do Pedido'
        end
        object Label16: TLabel
          Left = 8
          Top = 95
          Width = 223
          Height = 13
          Caption = '[NOME_PRODUTO] - Nome do Produto'
        end
        object Label17: TLabel
          Left = 8
          Top = 111
          Width = 228
          Height = 13
          Caption = '[QTDE_TEORICA] - Quantidade Te'#243'rica'
        end
        object Label18: TLabel
          Left = 8
          Top = 126
          Width = 187
          Height = 13
          Caption = '[PRODUTO] - C'#243'digo do Produto'
        end
        object Label19: TLabel
          Left = 8
          Top = 141
          Width = 225
          Height = 13
          Caption = '[NOME_EMPRESA] - Nome da Empresa'
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 2
        Width = 729
        Height = 71
        Caption = 'Pasta + Nome do Documento a Ser Preenchido e Impresso:'
        TabOrder = 1
        object MNOMARQDOC2: TEdit
          Left = 6
          Top = 17
          Width = 668
          Height = 21
          MaxLength = 300
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gb_macros: TGroupBox
        Left = 302
        Top = 136
        Width = 445
        Height = 231
        Caption = 'Indicadores a Serem Inseridos no Texto:'
        Color = 16751515
        ParentColor = False
        TabOrder = 2
        object Label7: TLabel
          Left = 6
          Top = 35
          Width = 361
          Height = 13
          Caption = 'MP01_01 ... MP01_10 p/Relacionar Mat'#233'rias Primas Modelo 01'
        end
        object Label9: TLabel
          Left = 6
          Top = 52
          Width = 361
          Height = 13
          Caption = 'MP02_01 ... MP02_10 p/Relacionar Mat'#233'rias Primas Modelo 02'
        end
        object Label10: TLabel
          Left = 6
          Top = 18
          Width = 361
          Height = 13
          Caption = 'MP00_01 ... MP00_10 p/Relacionar Mat'#233'rias Primas Modelo 00'
        end
        object Label11: TLabel
          Left = 4
          Top = 89
          Width = 423
          Height = 13
          Caption = 
            'ENV00_01 ... ENV00_10 p/Relacionar Materiais de Embalagem Modelo' +
            ' 00'
        end
        object Label2: TLabel
          Left = 5
          Top = 69
          Width = 434
          Height = 13
          Caption = 
            'ME01_01 ... ME01_10 Mat'#233'rias Primas e Mat. Embalagem mod 01(pais' +
            'agem)'
        end
      end
    end
    object tbs_configuracao: TTabSheet
      Caption = 'Configura'#231#227'o do Documento Word'
      ImageIndex = 4
    end
    object tsOP_Word: TTabSheet
      Caption = 'Ordem de Produ'#231#227'o'
      ImageIndex = 4
      object gbop_especifica: TGroupBox
        Left = 0
        Top = 0
        Width = 817
        Height = 137
        Align = alTop
        Caption = 'Ordem de Produ'#231#227'o Especifica:'
        TabOrder = 0
        object lbl_nompro_op: TLabel
          Left = 2
          Top = 15
          Width = 242
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Todos os Produtos Sem formula especifica'
          Color = 4259584
          ParentColor = False
        end
        object bbop_esp_visedit: TBitBtn
          Left = 80
          Top = 37
          Width = 600
          Height = 25
          Caption = 'Visualizar'
          TabOrder = 0
          OnClick = bbop_esp_viseditClick
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
        object bbop_esp_adq: TBitBtn
          Left = 80
          Top = 61
          Width = 600
          Height = 25
          Caption = 'Adiquirir de um Arquivo Externo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = bbop_esp_adqClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
        end
        object bbop_esp_excluir: TBitBtn
          Left = 80
          Top = 85
          Width = 600
          Height = 25
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = bbop_esp_excluirClick
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
      object gbop_geral: TGroupBox
        Left = 223
        Top = 256
        Width = 305
        Height = 105
        Caption = 'Ordem de Produ'#231#227'o Geral:'
        TabOrder = 1
        Visible = False
        object bbop_ger_visedit: TBitBtn
          Left = 5
          Top = 16
          Width = 287
          Height = 25
          Caption = 'Visualizar/Editar'
          TabOrder = 0
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
        object bbop_ger_adq: TBitBtn
          Left = 5
          Top = 40
          Width = 287
          Height = 25
          Caption = 'Adiquirir de um Arquivo Externo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
        end
      end
    end
    object tsLegendas: TTabSheet
      Caption = 'Configura'#231#227'o das Grades'
      ImageIndex = 5
      object PageControl2: TPageControl
        Left = 0
        Top = 28
        Width = 817
        Height = 343
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Manuten'#231#227'o'
          object Panel_digtab: TPanel
            Left = 0
            Top = 0
            Width = 809
            Height = 136
            Align = alTop
            Enabled = False
            TabOrder = 0
            OnExit = Panel_digtabExit
            object Label4: TLabel
              Left = 35
              Top = 11
              Width = 110
              Height = 13
              Caption = 'Nome do Relat'#243'rio:'
              FocusControl = DBEdit_nomrel
            end
            object Label8: TLabel
              Left = 12
              Top = 28
              Width = 137
              Height = 13
              Caption = 'Quantidade de Colunas:'
              FocusControl = DBEdit_QTDCOL
            end
            object Label20: TLabel
              Left = 368
              Top = 33
              Width = 210
              Height = 13
              Caption = 'Quantidade de Linhas: p/Cabe'#231'alho:'
              FocusControl = DBEdit_QTDLINCAB
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 24
              Top = 57
              Width = 122
              Height = 13
              Caption = 'Origem dos Detalhes:'
              FocusControl = TRxDBCB_TABELA
            end
            object Label22: TLabel
              Left = 486
              Top = 12
              Width = 167
              Height = 13
              Caption = 'Tamanho Coluna Automatico:'
              FocusControl = RxDBCB_TAMCOLAUT0
            end
            object Label23: TLabel
              Left = 70
              Top = 77
              Width = 73
              Height = 13
              Caption = 'Oberva'#231#245'es:'
              FocusControl = TRxDBCB_TABELA
            end
            object Label32: TLabel
              Left = 622
              Top = 33
              Width = 62
              Height = 13
              Caption = 'p/Rodape:'
              FocusControl = DBE_QTDLINROD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 456
              Top = 55
              Width = 38
              Height = 13
              Caption = 'Etapa:'
              FocusControl = TRxDBCB_TABELA
            end
            object DBEdit_nomrel: TDBEdit
              Left = 151
              Top = 8
              Width = 297
              Height = 19
              Ctl3D = False
              DataField = 'OPT01_NOMREL'
              DataSource = Src_TabOP01
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit_QTDCOL: TDBEdit
              Left = 151
              Top = 29
              Width = 56
              Height = 19
              Ctl3D = False
              DataField = 'OPT01_QTDCOL'
              DataSource = Src_TabOP01
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit_QTDLINCAB: TDBEdit
              Left = 578
              Top = 29
              Width = 42
              Height = 19
              Ctl3D = False
              DataField = 'OPT01_QTDLINCAB'
              DataSource = Src_TabOP01
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object TRxDBCB_TABELA: TRxDBComboBox
              Left = 151
              Top = 52
              Width = 298
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'OPT01_TABELA'
              DataSource = Src_TabOP01
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Materias Primas'
                'Material de Embalagem'
                'Mat.Primas+Mat.de Embalagem')
              ParentCtl3D = False
              TabOrder = 5
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object RxDBCB_TAMCOLAUT0: TRxDBComboBox
              Left = 659
              Top = 8
              Width = 70
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'OPT01_TAMCOLAUT0'
              DataSource = Src_TabOP01
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentCtl3D = False
              TabOrder = 1
              Values.Strings = (
                '0'
                '1')
            end
            object DBMemo_OBS: TDBMemo
              Left = 152
              Top = 75
              Width = 577
              Height = 58
              Ctl3D = False
              DataField = 'OPT01_OBS'
              DataSource = Src_TabOP01
              ParentCtl3D = False
              TabOrder = 7
            end
            object DBE_QTDLINROD: TDBEdit
              Left = 687
              Top = 29
              Width = 40
              Height = 19
              Ctl3D = False
              DataField = 'OPT01_QTDLINROD'
              DataSource = Src_TabOP01
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBCB_ETAPA: TRxDBComboBox
              Left = 503
              Top = 52
              Width = 224
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'OPT01_ETAPA'
              DataSource = Src_TabOP01
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Principal'
                'Etapa 01'
                'Etapa 02'
                'Etapa 03'
                'Etapa 04'
                'Etapa 05'
                'Etapa 06'
                'Etapa 07'
                'Etapa 08'
                'Etapa 09'
                'Etapa 10')
              ParentCtl3D = False
              TabOrder = 6
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
            end
          end
          object Panel_digitens: TPanel
            Left = 0
            Top = 136
            Width = 809
            Height = 158
            Align = alClient
            TabOrder = 1
            object GroupBox2: TGroupBox
              Left = 1
              Top = 1
              Width = 117
              Height = 156
              Align = alLeft
              Caption = 'Itens:'
              TabOrder = 0
              object DBGrid_TabOP02_res: TDBGrid
                Left = 2
                Top = 15
                Width = 113
                Height = 139
                Align = alClient
                DataSource = src_TabOP02_res
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
                    FieldName = 'OPT02_POSICAO'
                    Width = 73
                    Visible = True
                  end>
              end
            end
            object DBCtrlGrid1: TDBCtrlGrid
              Left = 118
              Top = 1
              Width = 690
              Height = 156
              Align = alClient
              DataSource = Src_TabOP02
              PanelHeight = 52
              PanelWidth = 673
              TabOrder = 1
              SelectedColor = 8421440
              OnExit = DBCtrlGrid1Exit
              object Label25: TLabel
                Left = 4
                Top = 8
                Width = 44
                Height = 13
                Caption = 'Coluna:'
                FocusControl = DBE_Coluna
              end
              object Label26: TLabel
                Left = 83
                Top = 8
                Width = 30
                Height = 13
                Caption = 'Tipo:'
                FocusControl = RxDBCB_TIPOCAMPO
              end
              object DBText_campoouvalor: TDBText
                Left = 5
                Top = 30
                Width = 105
                Height = 17
                DataField = 'lbl_campoouvalor'
                DataSource = Src_TabOP02
              end
              object Label27: TLabel
                Left = 477
                Top = 5
                Width = 44
                Height = 13
                Caption = 'Alinhar:'
                FocusControl = RxDBCB_ALINHAMENTO
              end
              object Label28: TLabel
                Left = 266
                Top = 6
                Width = 50
                Height = 13
                Caption = 'Formato:'
              end
              object Label29: TLabel
                Left = 438
                Top = 31
                Width = 81
                Height = 13
                Caption = 'Cor de Fundo:'
                FocusControl = RxDB_FUNDO
              end
              object Label31: TLabel
                Left = 290
                Top = 30
                Width = 57
                Height = 13
                Caption = 'Tamanho:'
              end
              object DBE_Coluna: TDBEdit
                Left = 48
                Top = 5
                Width = 31
                Height = 19
                Ctl3D = False
                DataField = 'OPT02_COLUNA'
                DataSource = Src_TabOP02
                ParentCtl3D = False
                TabOrder = 0
              end
              object RxDBCB_TIPOCAMPO: TRxDBComboBox
                Left = 115
                Top = 4
                Width = 147
                Height = 21
                Style = csDropDownList
                Ctl3D = True
                DataField = 'OPT02_TIPOCAMPO'
                DataSource = Src_TabOP02
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Texto'
                  'Dados Tabela')
                ParentCtl3D = False
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1')
                OnExit = RxDBCB_TIPOCAMPOExit
              end
              object RxDBCB_ALINHAMENTO: TRxDBComboBox
                Left = 530
                Top = 3
                Width = 94
                Height = 21
                Style = csDropDownList
                Ctl3D = True
                DataField = 'OPT02_ALINHAMENTO'
                DataSource = Src_TabOP02
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Esquerda'
                  'Centro'
                  'Direita')
                ParentCtl3D = False
                TabOrder = 3
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object RxDB_FUNDO: TRxDBComboBox
                Left = 529
                Top = 26
                Width = 93
                Height = 21
                Style = csDropDownList
                Ctl3D = True
                DataField = 'OPT02_FUNDO'
                DataSource = Src_TabOP02
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                ParentCtl3D = False
                TabOrder = 6
                Values.Strings = (
                  '0'
                  '1')
              end
              object DBCB_CAMPOOUTEXTO: TDBComboBox
                Left = 115
                Top = 26
                Width = 158
                Height = 21
                DataField = 'OPT02_CAMPOOUTEXTO'
                DataSource = Src_TabOP02
                ItemHeight = 13
                TabOrder = 4
              end
              object DBCB_FORMATO: TDBComboBox
                Left = 317
                Top = 4
                Width = 150
                Height = 21
                DataField = 'OPT02_FORMATO'
                DataSource = Src_TabOP02
                ItemHeight = 13
                Items.Strings = (
                  'DD/MM/YYYY'
                  'DD/MM'
                  'MM/YYYY'
                  '#,##0.00'
                  '#,##0.000')
                TabOrder = 2
              end
              object DBE_tamanho: TDBEdit
                Left = 352
                Top = 26
                Width = 65
                Height = 21
                DataField = 'OPT02_TAMANHO'
                DataSource = Src_TabOP02
                TabOrder = 5
              end
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 294
            Width = 809
            Height = 21
            Align = alBottom
            TabOrder = 2
            object Label34: TLabel
              Left = 96
              Top = 3
              Width = 115
              Height = 13
              Caption = 'Mesclar colunas de '
            end
            object Label35: TLabel
              Left = 369
              Top = 4
              Width = 8
              Height = 13
              Caption = #224
            end
            object edt_mesclar_fin: TEdit
              Left = 424
              Top = 0
              Width = 121
              Height = 21
              TabOrder = 0
              Text = 'edt_mesclar_fin'
              OnExit = edt_mesclar_finExit
            end
            object edt_mesclar_ini: TEdit
              Left = 227
              Top = 0
              Width = 121
              Height = 21
              TabOrder = 1
              Text = 'edt_mesclar_ini'
              OnExit = edt_mesclar_iniExit
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Rela'#231#227'o das Grades'
          ImageIndex = 1
          object dbgrid_TabOP01: TDBGrid
            Left = 0
            Top = 0
            Width = 801
            Height = 308
            Align = alClient
            DataSource = Src_TabOP01
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'OPT01_NOMREL'
                Width = 301
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPT01_QTDCOL'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPT01_QTDLINCAB'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPT01_TABELA'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPT01_FORMAGRADE'
                Width = 136
                Visible = True
              end>
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 371
        Width = 817
        Height = 39
        Align = alBottom
        TabOrder = 1
        object INCLUIR: TBitBtn
          Left = 4
          Top = 1
          Width = 64
          Height = 37
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = INCLUIRClick
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
        object ALTERAR: TBitBtn
          Left = 67
          Top = 1
          Width = 64
          Height = 37
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
        object EXCLUIR: TBitBtn
          Left = 130
          Top = 1
          Width = 64
          Height = 37
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = EXCLUIRClick
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
        object GRAVAR: TBitBtn
          Left = 193
          Top = 1
          Width = 64
          Height = 37
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
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
          Left = 256
          Top = 1
          Width = 64
          Height = 37
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = CANCELARClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object DBNavigator_tabop01: TDBNavigator
          Left = 319
          Top = 2
          Width = 248
          Height = 37
          Hint = 'Navega entre os registros selecionados'
          DataSource = Src_TabOP01
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Proximo Registro'
            #218'ltimo Registro')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object SAIR: TBitBtn
          Left = 662
          Top = 2
          Width = 64
          Height = 36
          Hint = 'Fecha Esta Janela'
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = SAIRClick
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 817
        Height = 28
        Align = alTop
        TabOrder = 2
        object Label30: TLabel
          Left = 12
          Top = 7
          Width = 110
          Height = 13
          Caption = 'Nome do Relat'#243'rio:'
        end
        object edt_nomrel: TEdit
          Left = 127
          Top = 3
          Width = 338
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object bbatutabop: TBitBtn
          Left = 475
          Top = 4
          Width = 83
          Height = 21
          Cursor = crHandPoint
          Hint = 'Atualizar as Informa'#231#245'es'
          Caption = '&Atualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbatutabopClick
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Itens Legenda'
      ImageIndex = 6
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 545
        Height = 410
        Align = alLeft
        Lines.Strings = (
          '%DataEmi% - Data de Emiss'#227'o da op'
          '%datemi% - Data de Emiss'#227'o da op'
          '%NomComPrimLin% - primeira linha do nome completo do produto'
          '%NomComSegLin% - segunda linha do nome completo do produto'
          '%CodproMask% - codigo do produto com maskara 9.999-9'
          '%CodPro% - codigo do produto normal'
          '%Apresent% - apresenta'#231#227'o do produto'
          '%Desc_Sobre% - Descricao do Sobre do Produto'
          '%Observacao_Prod% - Observa'#231#227'o do Cadastro de Produtos'
          '%NumOp% - N'#250'mero da OP'
          '%QtdPrev% - Quantidade prevista'
          '%MesAnoEmi% - mes e ano da emissao'
          '%MesAnoRev% - mes e e ano da revisao'
          '%DatFab% - data de fabrica'#231'ao'
          '%DatVal% - data de validade'
          '%NomPro% - nome do produto'
          '%Marca% - Marca do Produto'
          '%NumLot% - numero do lote'
          '%RespTec% - responsavel tecnico'
          '%GerProd% - gerencia de producao'
          '%GerQual% - gerencia de qualidade'
          '%DatRev% - data da revisao'
          '%DataFab% - data de fabricacao'
          '%HorMinIniFrac% - hora min inicio do fracionamento'
          '%HorMinTerFrac% - hora min termino do fracionamento'
          '%NomFuncFrac% - nome do funcionario do fracionamento'
          
            '%NomFuncConfFrac% - nome do funcionario que conferiu o fracionam' +
            'ento'
          '%HorMinIniMan% - hora inicial da manipula'#231#227'o'
          '%DataIniMan% - data inicial da manipulacao'
          '%HorMinTerMan% - hora termino da manipulacao'
          '%NomFuncMan% - nome funcionario da manipulacao'
          '%NomFunConfMan% - nome do funcionario que conferiu a manipulacao'
          '%NomAnalista% - nome do analista'
          '%NomSupAnalista% - nome do supervisor do analista'
          '%ObsAnalise% - observa'#231#227'o analise'
          '%ResultAnalise% - resultado da analise'
          '%SETOR% - setor'
          '%PesoMin% - Peso Minimo'
          '%PesoMedio% - Peso M'#233'dio'
          '%PesoMaximo% - Peso M'#225'ximo'
          '%QTDGRML% - Quantidade Padrao do Produto gr/ml'
          
            '%QTDGRML_TOTAL% - Quantidade Padrao vezes a quantidade produzida' +
            ' do Produto gr/ml'
          '%PERC_PERDAS% - Percentual de Perdas'
          '%PEDIDO_ORIGEM% - Dados do Pedido de Origem da OP'
          
            '%PRAZO_ENTREGA% - prazo de entrega quando possuir pedido de vend' +
            'as'
          ''
          'GRADE_MESCLADA - grade mesclada (indicador ou bookmark)'
          ''
          ''
          
            'criar indicador ou bookmark chamado etapas para coloca'#231#227'o das et' +
            'apas dos processos')
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TsImprimir: TTabSheet
      Caption = 'Imprimir'
      ImageIndex = 7
      object RLReport1: TRLReport
        Left = 72
        Top = -96
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Comp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintDialog = False
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 86
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand1BeforePrint
          object RLLabel1: TRLLabel
            Left = 152
            Top = 46
            Width = 414
            Height = 16
            Caption = 
              'Levantamento de Mat'#233'rias Primas e Mat'#233'rial de Envase para Produ'#231 +
              #227'o'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 656
            Top = 68
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 589
            Top = 2
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLLabel2: TRLLabel
            Left = 677
            Top = 2
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 687
            Top = 2
            Width = 112
            Height = 16
            Info = itLastPageNumber
          end
          object RLLabel3: TRLLabel
            Left = 598
            Top = 2
            Width = 44
            Height = 16
            Caption = 'Pagina'
          end
        end
        object rlband_detail: TRLBand
          Left = 39
          Top = 125
          Width = 716
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel5: TRLLabel
            Left = 22
            Top = 0
            Width = 43
            Height = 14
            Caption = 'Produto:'
            Layout = tlCenter
          end
          object RLDBText7: TRLDBText
            Left = 67
            Top = 0
            Width = 59
            Height = 14
            DataField = 'PDCODPRO'
            DataSource = Src_Comp
            Layout = tlCenter
          end
          object RLDBText8: TRLDBText
            Left = 662
            Top = 0
            Width = 37
            Height = 14
            DataField = 'PDUND'
            DataSource = Src_Comp
            Layout = tlCenter
          end
          object RLDBText9: TRLDBText
            Left = 131
            Top = 0
            Width = 45
            Height = 14
            DataField = 'PDNOME'
            DataSource = Src_Comp
            Layout = tlCenter
          end
        end
        object RLSubDetail_mp: TRLSubDetail
          Left = 39
          Top = 141
          Width = 716
          Height = 84
          DataSource = Src_Comp_MP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBandmp_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object rlNomGru: TRLLabel
              Left = 0
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'Mat'#233'rias Primas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_mpcabdet: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcab_CPCODMAT: TRLLabel
              Left = 2
              Top = 0
              Width = 50
              Height = 16
              AutoSize = False
              Caption = 'CODIGO'
              Layout = tlCenter
            end
            object rlcab_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 287
              Height = 16
              AutoSize = False
              Caption = 'NOME'
              Layout = tlCenter
            end
            object rlcab_PDUND: TRLLabel
              Left = 340
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'UND'
              Layout = tlCenter
            end
            object rlcab_CPPERCENT_REST: TRLLabel
              Left = 379
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '% PERC'
              Layout = tlCenter
            end
            object rlcab_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'QTD'
              Layout = tlCenter
            end
            object rlcab_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'PRE'#199'O UNIT'#193'RIO'
              Layout = tlCenter
            end
            object rlcab_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'TOTAL'
              Layout = tlCenter
            end
          end
          object RLBand_mp_det: TRLBand
            Left = 0
            Top = 32
            Width = 716
            Height = 16
            AfterPrint = RLBand_mp_detAfterPrint
            object RLDB_CPCODMAT: TRLDBText
              Left = 2
              Top = 0
              Width = 50
              Height = 18
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPCODMAT'
              DataSource = Src_Comp_MP
              Holder = rlcab_CPCODMAT
              Layout = tlCenter
            end
            object rldet_PDNOME: TRLDBText
              Left = 54
              Top = 0
              Width = 287
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Comp_MP
              Holder = rlcab_PDNOME
              Layout = tlCenter
            end
            object rldet_PDUND: TRLDBText
              Left = 340
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Comp_MP
              Holder = rlcab_PDUND
              Layout = tlCenter
            end
            object rldet_CPQUANT: TRLDBText
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPQTD_PAD'
              DataSource = Src_Comp_MP
              Holder = rlcab_CPQUANT
              Layout = tlCenter
            end
            object rldet_CPPU: TRLDBText
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDPU'
              DataSource = Src_Comp_MP
              Holder = rlcab_CPPU
              Layout = tlCenter
            end
            object rldet_total: TRLDBText
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = Src_Comp_MP
              Layout = tlCenter
            end
            object rldet_CPPERCENT_REST: TRLDBText
              Left = 379
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPPERCENT_REST'
              DataSource = Src_Comp_MP
              Layout = tlCenter
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 48
            Width = 716
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand2BeforePrint
            object rlrod_CPCODMAT: TRLLabel
              Left = 2
              Top = 0
              Width = 50
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcab_CPCODMAT
              Layout = tlCenter
            end
            object rlrod_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 287
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcab_PDNOME
              Layout = tlCenter
            end
            object rlrod_PDUND: TRLLabel
              Left = 340
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_PDUND
              Layout = tlCenter
            end
            object rlrod_CPPERCENT_REST: TRLLabel
              Left = 379
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_CPPERCENT_REST
              Layout = tlCenter
            end
            object rlrod_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_CPQUANT
              Layout = tlCenter
            end
            object rlrod_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_CPPU
              Layout = tlCenter
            end
            object rlrod_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Layout = tlCenter
            end
          end
        end
        object RLSubDetail_emb: TRLSubDetail
          Left = 39
          Top = 225
          Width = 716
          Height = 71
          DataSource = Src_Comp_Emb
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcab_nomemb: TRLLabel
              Left = 0
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'Mat'#233'rias Embalagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcabemb_CPCODMAT: TRLLabel
              Left = 10
              Top = 0
              Width = 47
              Height = 16
              AutoSize = False
              Caption = 'CODIGO'
              Layout = tlCenter
            end
            object rlcabemb_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 342
              Height = 16
              AutoSize = False
              Caption = 'NOME'
              Layout = tlCenter
            end
            object rlcabemb_PDUND: TRLLabel
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'UND'
              Layout = tlCenter
            end
            object rlcabemb_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'QTD'
              Layout = tlCenter
            end
            object rlcabemb_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'PRE'#199'O UNIT'#193'RIO'
              Layout = tlCenter
            end
            object rlcabemb_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'TOTAL'
              Layout = tlCenter
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 32
            Width = 716
            Height = 16
            AfterPrint = RLBand5AfterPrint
            object rldetemb_CPCODMAT: TRLDBText
              Left = 10
              Top = 0
              Width = 47
              Height = 18
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPCODMAT'
              DataSource = Src_Comp_Emb
              Holder = rlcabemb_CPCODMAT
              Layout = tlCenter
            end
            object rldetemb_PDNOME: TRLDBText
              Left = 54
              Top = 0
              Width = 342
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Comp_Emb
              Holder = rlcabemb_PDNOME
              Layout = tlCenter
            end
            object rldetemb_PDUND: TRLDBText
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Comp_Emb
              Holder = rlcabemb_PDUND
              Layout = tlCenter
            end
            object rldetemb_CPQUANT: TRLDBText
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPQUANT'
              DataSource = Src_Comp_Emb
              Holder = rlcabemb_CPQUANT
              Layout = tlCenter
            end
            object rldetemb_CPPU: TRLDBText
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDPU'
              DataSource = Src_Comp_Emb
              Holder = rlcabemb_CPPU
              Layout = tlCenter
            end
            object rldetemb_total: TRLDBText
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = Src_Comp_Emb
              Layout = tlCenter
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 48
            Width = 716
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand6BeforePrint
            object rlrodemb_CPCODMAT: TRLLabel
              Left = 10
              Top = 0
              Width = 47
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcabemb_CPCODMAT
              Layout = tlCenter
            end
            object rlrodemb_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 342
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcabemb_PDNOME
              Layout = tlCenter
            end
            object rlrodemb_PDUND: TRLLabel
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcabemb_PDUND
              Layout = tlCenter
            end
            object rlrodemb_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabemb_CPQUANT
              Layout = tlCenter
            end
            object rlrodemb_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabemb_CPPU
              Layout = tlCenter
            end
            object rlrodemb_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Layout = tlCenter
            end
          end
        end
        object RLSubDetail_fec: TRLSubDetail
          Left = 39
          Top = 296
          Width = 716
          Height = 71
          DataSource = Src_Comp_Fec
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand7: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcab_nomfec: TRLLabel
              Left = 0
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'Caixa de Embargue'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand8: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcabfec_CPCODMAT: TRLLabel
              Left = 10
              Top = 0
              Width = 47
              Height = 16
              AutoSize = False
              Caption = 'CODIGO'
              Layout = tlCenter
            end
            object rlcabfec_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 343
              Height = 16
              AutoSize = False
              Caption = 'NOME'
              Layout = tlCenter
            end
            object rlcabfec_PDUND: TRLLabel
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'UND'
              Layout = tlCenter
            end
            object rlcabfec_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'QTD'
              Layout = tlCenter
            end
            object rlcabfec_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'PRE'#199'O UNIT'#193'RIO'
              Layout = tlCenter
            end
            object rlcabfec_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'TOTAL'
              Layout = tlCenter
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 32
            Width = 716
            Height = 16
            AfterPrint = RLBand9AfterPrint
            object rldetfec_CPCODMAT: TRLDBText
              Left = 10
              Top = 0
              Width = 47
              Height = 18
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPCODMAT'
              DataSource = Src_Comp_Fec
              Holder = rlcabfec_CPCODMAT
              Layout = tlCenter
            end
            object rldetfec_PDNOME: TRLDBText
              Left = 54
              Top = 0
              Width = 343
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Comp_Fec
              Holder = rlcabfec_PDNOME
              Layout = tlCenter
            end
            object rldetfec_PDUND: TRLDBText
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Comp_Fec
              Holder = rlcabfec_PDUND
              Layout = tlCenter
            end
            object rldetfec_CPQUANT: TRLDBText
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'CPQUANT'
              DataSource = Src_Comp_Fec
              Holder = rlcabfec_CPQUANT
              Layout = tlCenter
            end
            object rldetfec_CPPU: TRLDBText
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDPU'
              DataSource = Src_Comp_Fec
              Holder = rlcabfec_CPPU
              Layout = tlCenter
            end
            object rldetfec_total: TRLDBText
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = Src_Comp_Fec
              Layout = tlCenter
            end
          end
          object RLBand10: TRLBand
            Left = 0
            Top = 48
            Width = 716
            Height = 16
            BandType = btSummary
            BeforePrint = RLBand10BeforePrint
            object rlrodfec_CPCODMAT: TRLLabel
              Left = 10
              Top = 0
              Width = 47
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcabfec_CPCODMAT
              Layout = tlCenter
            end
            object rlrodfec_PDNOME: TRLLabel
              Left = 54
              Top = 0
              Width = 343
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcabfec_PDNOME
              Layout = tlCenter
            end
            object rlrodfec_PDUND: TRLLabel
              Left = 398
              Top = 0
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcabfec_PDUND
              Layout = tlCenter
            end
            object rlrodfec_CPQUANT: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabfec_CPQUANT
              Layout = tlCenter
            end
            object rlrodfec_CPPU: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabfec_CPPU
              Layout = tlCenter
            end
            object rlrodfec_total: TRLLabel
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Layout = tlCenter
            end
          end
        end
        object RLSubDetail_apur_preco: TRLSubDetail
          Left = 39
          Top = 367
          Width = 716
          Height = 99
          DataSource = src_precos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand11: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcab_nomapur: TRLLabel
              Left = 0
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'Apura'#231#227'o do Pre'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 32
            Width = 716
            Height = 16
            BandType = btHeader
            object rlcabapur_nome: TRLLabel
              Left = 54
              Top = 0
              Width = 324
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcabapur_perc: TRLLabel
              Left = 380
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '% PERC'
              Layout = tlCenter
            end
            object rlcabapur_valor: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor'
              Layout = tlCenter
            end
            object rlcabapur_valor_acumulado: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Acumulado'
              Layout = tlCenter
            end
          end
          object RLBand13: TRLBand
            Left = 0
            Top = 48
            Width = 716
            Height = 16
            AfterPrint = RLBand13AfterPrint
            object rldetapur_nome: TRLDBText
              Left = 54
              Top = 0
              Width = 324
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nome'
              DataSource = src_precos
              Holder = rlcabapur_nome
              Layout = tlCenter
            end
            object rldetapur_valor: TRLDBText
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor'
              DataSource = src_precos
              Holder = rlcabapur_valor
              Layout = tlCenter
            end
            object rldetapur_valor_acumulado: TRLDBText
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_acumulado'
              DataSource = src_precos
              Holder = rlcabapur_valor_acumulado
              Layout = tlCenter
            end
            object rldetapur_perc: TRLDBText
              Left = 379
              Top = 0
              Width = 54
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'perc'
              DataSource = src_precos
              Layout = tlCenter
            end
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 64
            Width = 716
            Height = 16
            BandType = btSummary
            object rlrodapur_nome: TRLLabel
              Left = 54
              Top = 0
              Width = 324
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcabapur_nome
              Layout = tlCenter
            end
            object rlrodapur_perc: TRLLabel
              Left = 380
              Top = -1
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabapur_perc
              Layout = tlCenter
            end
            object rlrodapur_valor: TRLLabel
              Left = 436
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabapur_valor
              Layout = tlCenter
            end
            object rlrodapur_valor_acumulado: TRLLabel
              Left = 493
              Top = 0
              Width = 124
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcabapur_valor_acumulado
              Layout = tlCenter
            end
          end
          object RLBand15: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            BeforePrint = RLBand15BeforePrint
            object lbl_totalmp: TRLLabel
              Left = 0
              Top = 1
              Width = 716
              Height = 15
              Align = faClient
              Alignment = taRightJustify
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 497
    Width = 825
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbFechar: TBitBtn
      Left = 532
      Top = 6
      Width = 219
      Height = 30
      Cursor = crHandPoint
      Hint = 'Click aqui para Sair desta Op'#231#227'o'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbFecharClick
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
    object bbSalvarPadrao: TBitBtn
      Left = 3
      Top = 6
      Width = 219
      Height = 30
      Cursor = crHandPoint
      Hint = 'Click aqui para Salvar Este Texto como Padr'#227'o da Formula'
      Caption = '&Salvar texto Padr'#227'o da Formula'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = bbSalvarPadraoClick
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
  object Tb_Comp_MP: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Comp_MPAfterInsert
    BeforeEdit = Tb_Comp_MPBeforeEdit
    AfterEdit = Tb_Comp_MPAfterEdit
    BeforePost = Tb_Comp_MPBeforePost
    AfterPost = c
    AfterCancel = Tb_Comp_MPAfterCancel
    BeforeDelete = Tb_Comp_MPBeforeDelete
    AfterDelete = c
    OnCalcFields = Tb_Comp_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       PDNOME,'
      '       PDUND'
      ' from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPCODPRO like :CODPRO'
      'AND PDCODPRO=CPCODPRO')
    UpdateObject = U_Comp_MP
    Left = 516
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Comp_MPCPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_Comp_MPCPORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Comp_MPCPCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produzir'
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Comp_MPCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Comp_MPCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Comp_MPCPPU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Comp_MPCPNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Comp_MPCPMPNUM: TStringField
      DisplayLabel = 'N'#250'mero MP'
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Comp_MPCPCODPRO_ACAB: TFloatField
      DisplayLabel = 'C'#243'd.Acabado'
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Comp_MPCPALICMSCRED: TFloatField
      DisplayLabel = 'Aliq.Icms'
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Comp_MPCPICMSCRED: TFloatField
      DisplayLabel = 'Icms Credito'
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comp_MPCPVLRINC: TFloatField
      DisplayLabel = 'Vlr.Inc.'
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Comp_MPCPALIQORI: TFloatField
      DisplayLabel = 'Aliq.Origem'
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comp_MPtotal: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comp_MPtotalliq: TFloatField
      DisplayLabel = 'Total Liq'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Tb_Comp_MPCPPERCENT: TFloatField
      DisplayLabel = '%'
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Comp_MPCPPERCENT_REST: TFloatField
      DisplayLabel = '% Restante'
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Comp_MPCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Comp_MPCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_MPPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Comp_MPPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Comp_MPobservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacao'
      Calculated = True
    end
    object Tb_Comp_MPprodenvase: TStringField
      FieldKind = fkCalculated
      FieldName = 'prodenvase'
      Size = 53
      Calculated = True
    end
    object Tb_Comp_MPPDPU: TFloatField
      DisplayLabel = 'P'#231'o.Unitario'
      FieldName = 'PDPU'
    end
  end
  object Src_Comp_MP: TDataSource
    DataSet = Tb_Comp_MP
    Left = 473
    Top = 153
  end
  object U_Comp_MP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      '  (CPCODEMP, CPORDEM, CPCODPRO, CPNUMERO, CPCODMAT, '
      'CPCODPRO_ACAB, CPMPNUM, '
      
        '   CPQUANT, CPPU, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' '
      'CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPNUMERO, :CPCODMAT, '
      ':CPCODPRO_ACAB, '
      
        '   :CPMPNUM, :CPQUANT, :CPPU, :CPVLRINC, :CPALIQORI, :CPALICMSCR' +
        'ED, '
      ':CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    Left = 511
    Top = 129
  end
  object Tb_Comp_Emb: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Comp_EmbAfterInsert
    BeforeEdit = Tb_Comp_EmbBeforeEdit
    AfterEdit = Tb_Comp_EmbAfterEdit
    BeforePost = Tb_Comp_EmbBeforePost
    AfterPost = c
    AfterCancel = Tb_Comp_EmbAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Comp_EmbCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       PDNOME,'
      '       PDUND'
      ' from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPCODPRO like :CODPRO'
      'AND PDCODPRO=CPCODPRO')
    UpdateObject = U_Comp_Emb
    Left = 507
    Top = 308
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Comp_EmbCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_Comp_EmbCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Comp_EmbCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Comp_EmbCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Comp_EmbCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Comp_EmbCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Comp_EmbCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Comp_EmbCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Comp_EmbCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Comp_EmbCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Comp_EmbCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comp_EmbCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Comp_EmbCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comp_EmbCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Comp_EmbCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_EmbCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Comp_EmbCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Comp_EmbPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Comp_EmbPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Comp_Embtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comp_EmbPDPU: TFloatField
      DisplayLabel = 'P'#231'o.Unitario'
      FieldName = 'PDPU'
    end
  end
  object Src_Comp_Emb: TDataSource
    DataSet = Tb_Comp_Emb
    Left = 512
    Top = 141
  end
  object U_Comp_Emb: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      '  (CPCODEMP, CPORDEM, CPCODPRO, CPNUMERO, CPCODMAT, '
      'CPCODPRO_ACAB, CPMPNUM, '
      
        '   CPQUANT, CPPU, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' '
      'CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPNUMERO, :CPCODMAT, '
      ':CPCODPRO_ACAB, '
      
        '   :CPMPNUM, :CPQUANT, :CPPU, :CPVLRINC, :CPALIQORI, :CPALICMSCR' +
        'ED, '
      ':CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    Left = 558
    Top = 301
  end
  object Tb_Comp_Fec: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Comp_FecAfterInsert
    BeforeEdit = Tb_Comp_FecBeforeEdit
    AfterEdit = Tb_Comp_FecAfterEdit
    BeforePost = Tb_Comp_FecBeforePost
    AfterPost = c
    AfterCancel = Tb_Comp_FecAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Comp_FecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       PDNOME,'
      '       PDUND'
      ' from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPCODPRO like :CODPRO'
      'AND PDCODPRO=CPCODPRO')
    UpdateObject = U_Comp_Fec
    Left = 715
    Top = 197
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Comp_FecCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_Comp_FecCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Comp_FecCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Comp_FecCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Comp_FecCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Comp_FecCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Comp_FecCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Comp_FecCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Comp_FecCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Comp_FecCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Comp_FecCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comp_FecCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Comp_FecCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comp_FecCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Comp_FecCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_FecCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Comp_FecCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Comp_FecPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Comp_FecPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Comp_Fectotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comp_FecPDPU: TFloatField
      DisplayLabel = 'P'#231'o.Unitario'
      FieldName = 'PDPU'
    end
  end
  object Src_Comp_Fec: TDataSource
    DataSet = Tb_Comp_Fec
    Left = 744
    Top = 198
  end
  object U_Comp_Fec: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      '  (CPCODEMP, CPORDEM, CPCODPRO, CPNUMERO, CPCODMAT, '
      'CPCODPRO_ACAB, CPMPNUM, '
      
        '   CPQUANT, CPPU, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' '
      'CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPNUMERO, :CPCODMAT, '
      ':CPCODPRO_ACAB, '
      
        '   :CPMPNUM, :CPQUANT, :CPPU, :CPVLRINC, :CPALIQORI, :CPALICMSCR' +
        'ED, '
      ':CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    Left = 774
    Top = 198
  end
  object Opd1: TOpenDialog
    Filter = 'Arquivos .DOC (word)|*.DOC'
    Left = 500
    Top = 235
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
  object Tb_TabOP01: TQuery
    CachedUpdates = True
    AfterInsert = Tb_TabOP01AfterInsert
    BeforeEdit = Tb_TabOP01BeforeEdit
    BeforePost = Tb_TabOP01BeforePost
    AfterPost = Tb_TabOP01AfterPost
    BeforeDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * FROM CADOP_TAB01')
    UpdateObject = U_TabOP01
    Left = 595
    Top = 125
    object Tb_TabOP01OPT01_CODEMP: TFloatField
      FieldName = 'OPT01_CODEMP'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_CODEMP'
    end
    object Tb_TabOP01OPT01_NOMREL: TStringField
      DisplayLabel = 'Nome do Relat'#243'rio'
      FieldName = 'OPT01_NOMREL'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_NOMREL'
      Size = 50
    end
    object Tb_TabOP01OPT01_OBS: TMemoField
      FieldName = 'OPT01_OBS'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_TabOP01OPT01_QTDCOL: TFloatField
      DisplayLabel = 'Qtd.Colunas'
      FieldName = 'OPT01_QTDCOL'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_QTDCOL'
    end
    object Tb_TabOP01OPT01_QTDLINCAB: TFloatField
      DisplayLabel = 'Qtd.Linhas Cab'
      FieldName = 'OPT01_QTDLINCAB'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_QTDLINCAB'
    end
    object Tb_TabOP01OPT01_TABELA: TFloatField
      DisplayLabel = 'Tabela de Origem'
      FieldName = 'OPT01_TABELA'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_TABELA'
    end
    object Tb_TabOP01OPT01_FORMAGRADE: TFloatField
      DisplayLabel = 'Formato'
      FieldName = 'OPT01_FORMAGRADE'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_FORMAGRADE'
    end
    object Tb_TabOP01OPT01_TAMANHO: TFloatField
      FieldName = 'OPT01_TAMANHO'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_TAMANHO'
    end
    object Tb_TabOP01OPT01_ALINHAMENTO: TFloatField
      FieldName = 'OPT01_ALINHAMENTO'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_ALINHAMENTO'
    end
    object Tb_TabOP01OPT01_QTDLINROD: TFloatField
      FieldName = 'OPT01_QTDLINROD'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_QTDLINROD'
    end
    object Tb_TabOP01OPT01_TAMCOLAUT0: TFloatField
      FieldName = 'OPT01_TAMCOLAUT0'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_TAMCOLAUT0'
    end
    object Tb_TabOP01OPT01_ETAPA: TFloatField
      FieldName = 'OPT01_ETAPA'
      Origin = 'SG_ASSOC.CADOP_TAB01.OPT01_ETAPA'
    end
  end
  object Src_TabOP01: TDataSource
    DataSet = Tb_TabOP01
    OnDataChange = Src_TabOP01DataChange
    Left = 552
    Top = 126
  end
  object U_TabOP01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP_TAB01'
      'set'
      '  OPT01_CODEMP = :OPT01_CODEMP,'
      '  OPT01_NOMREL = :OPT01_NOMREL,'
      '  OPT01_OBS = :OPT01_OBS,'
      '  OPT01_QTDCOL = :OPT01_QTDCOL,'
      '  OPT01_QTDLINCAB = :OPT01_QTDLINCAB,'
      '  OPT01_TABELA = :OPT01_TABELA,'
      '  OPT01_FORMAGRADE = :OPT01_FORMAGRADE,'
      '  OPT01_TAMANHO = :OPT01_TAMANHO,'
      '  OPT01_ALINHAMENTO = :OPT01_ALINHAMENTO,'
      '  OPT01_QTDLINROD = :OPT01_QTDLINROD,'
      '  OPT01_TAMCOLAUT0 = :OPT01_TAMCOLAUT0,'
      '  OPT01_ETAPA = :OPT01_ETAPA'
      'where'
      '  OPT01_CODEMP = :OLD_OPT01_CODEMP and'
      '  OPT01_NOMREL = :OLD_OPT01_NOMREL')
    InsertSQL.Strings = (
      'insert into CADOP_TAB01'
      
        '  (OPT01_CODEMP, OPT01_NOMREL, OPT01_OBS, OPT01_QTDCOL, OPT01_QT' +
        'DLINCAB, '
      
        '   OPT01_TABELA, OPT01_FORMAGRADE, OPT01_TAMANHO, OPT01_ALINHAME' +
        'NTO, OPT01_QTDLINROD, '
      '   OPT01_TAMCOLAUT0, OPT01_ETAPA)'
      'values'
      
        '  (:OPT01_CODEMP, :OPT01_NOMREL, :OPT01_OBS, :OPT01_QTDCOL, :OPT' +
        '01_QTDLINCAB, '
      
        '   :OPT01_TABELA, :OPT01_FORMAGRADE, :OPT01_TAMANHO, :OPT01_ALIN' +
        'HAMENTO, '
      '   :OPT01_QTDLINROD, :OPT01_TAMCOLAUT0, :OPT01_ETAPA)')
    DeleteSQL.Strings = (
      'delete from CADOP_TAB01'
      'where'
      '  OPT01_CODEMP = :OLD_OPT01_CODEMP and'
      '  OPT01_NOMREL = :OLD_OPT01_NOMREL')
    Left = 654
    Top = 102
  end
  object Tb_TabOP02: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_TabOP02BeforeInsert
    BeforeEdit = Tb_TabOP02BeforeEdit
    BeforePost = Tb_TabOP02BeforePost
    AfterPost = c
    BeforeDelete = c
    OnCalcFields = Tb_TabOP02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * FROM CADOP_TAB02')
    UpdateObject = U_TabOP02
    Left = 699
    Top = 149
    object Tb_TabOP02OPT02_CODEMP: TFloatField
      FieldName = 'OPT02_CODEMP'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_CODEMP'
    end
    object Tb_TabOP02OPT02_NOMREL: TStringField
      FieldName = 'OPT02_NOMREL'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_NOMREL'
      Size = 50
    end
    object Tb_TabOP02OPT02_POSICAO: TStringField
      FieldName = 'OPT02_POSICAO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_POSICAO'
      Size = 10
    end
    object Tb_TabOP02OPT02_COLUNA: TFloatField
      FieldName = 'OPT02_COLUNA'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_COLUNA'
    end
    object Tb_TabOP02OPT02_TIPOCAMPO: TFloatField
      FieldName = 'OPT02_TIPOCAMPO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_TIPOCAMPO'
    end
    object Tb_TabOP02OPT02_CAMPOOUTEXTO: TStringField
      FieldName = 'OPT02_CAMPOOUTEXTO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_CAMPOOUTEXTO'
      Size = 200
    end
    object Tb_TabOP02OPT02_TAMANHO: TFloatField
      FieldName = 'OPT02_TAMANHO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_TAMANHO'
    end
    object Tb_TabOP02OPT02_ALINHAMENTO: TFloatField
      FieldName = 'OPT02_ALINHAMENTO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_ALINHAMENTO'
    end
    object Tb_TabOP02OPT02_FORMATO: TStringField
      FieldName = 'OPT02_FORMATO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_FORMATO'
      Size = 50
    end
    object Tb_TabOP02OPT02_FUNDO: TFloatField
      FieldName = 'OPT02_FUNDO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_FUNDO'
    end
    object Tb_TabOP02lbl_campoouvalor: TStringField
      FieldKind = fkCalculated
      FieldName = 'lbl_campoouvalor'
      Calculated = True
    end
    object Tb_TabOP02OPT02_DATATYPE: TFloatField
      FieldName = 'OPT02_DATATYPE'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_DATATYPE'
    end
    object Tb_TabOP02OPT02_MESCLAR_INI: TFloatField
      FieldName = 'OPT02_MESCLAR_INI'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_MESCLAR_INI'
    end
    object Tb_TabOP02OPT02_MESCLAR_FIN: TFloatField
      FieldName = 'OPT02_MESCLAR_FIN'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_MESCLAR_FIN'
    end
  end
  object Src_TabOP02: TDataSource
    DataSet = Tb_TabOP02
    OnDataChange = Src_TabOP02DataChange
    Left = 736
    Top = 158
  end
  object U_TabOP02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP_TAB02'
      'set'
      '  OPT02_CODEMP = :OPT02_CODEMP,'
      '  OPT02_NOMREL = :OPT02_NOMREL,'
      '  OPT02_POSICAO = :OPT02_POSICAO,'
      '  OPT02_COLUNA = :OPT02_COLUNA,'
      '  OPT02_TIPOCAMPO = :OPT02_TIPOCAMPO,'
      '  OPT02_CAMPOOUTEXTO = :OPT02_CAMPOOUTEXTO,'
      '  OPT02_TAMANHO = :OPT02_TAMANHO,'
      '  OPT02_ALINHAMENTO = :OPT02_ALINHAMENTO,'
      '  OPT02_FORMATO = :OPT02_FORMATO,'
      '  OPT02_FUNDO = :OPT02_FUNDO,'
      '  OPT02_DATATYPE = :OPT02_DATATYPE'
      'where'
      '  OPT02_CODEMP = :OLD_OPT02_CODEMP and'
      '  OPT02_NOMREL = :OLD_OPT02_NOMREL and'
      '  OPT02_POSICAO = :OLD_OPT02_POSICAO and'
      '  OPT02_COLUNA = :OLD_OPT02_COLUNA')
    InsertSQL.Strings = (
      'insert into CADOP_TAB02'
      '  (OPT02_CODEMP, OPT02_NOMREL, OPT02_POSICAO, OPT02_COLUNA, '
      'OPT02_TIPOCAMPO, '
      '   OPT02_CAMPOOUTEXTO, OPT02_TAMANHO, OPT02_ALINHAMENTO, '
      'OPT02_FORMATO, '
      '   OPT02_FUNDO, OPT02_DATATYPE)'
      'values'
      '  (:OPT02_CODEMP, :OPT02_NOMREL, :OPT02_POSICAO, :OPT02_COLUNA, '
      ':OPT02_TIPOCAMPO, '
      '   :OPT02_CAMPOOUTEXTO, :OPT02_TAMANHO, :OPT02_ALINHAMENTO, '
      ':OPT02_FORMATO, '
      '   :OPT02_FUNDO, :OPT02_DATATYPE)')
    DeleteSQL.Strings = (
      'delete from CADOP_TAB02'
      'where'
      '  OPT02_CODEMP = :OLD_OPT02_CODEMP and'
      '  OPT02_NOMREL = :OLD_OPT02_NOMREL and'
      '  OPT02_POSICAO = :OLD_OPT02_POSICAO and'
      '  OPT02_COLUNA = :OLD_OPT02_COLUNA')
    Left = 750
    Top = 142
  end
  object Tb_TabOP02_res: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select max(OPT02_MESCLAR_INI) as OPT02_MESCLAR_INI'
      '       ,max(OPT02_MESCLAR_FIN) as OPT02_MESCLAR_FIN'
      '       ,max(OPT02_POSICAO) as OPT02_POSICAO'
      'FROM CADOP_TAB02')
    Left = 776
    Top = 277
    object Tb_TabOP02_resOPT02_POSICAO: TStringField
      DisplayLabel = 'Local'
      FieldName = 'OPT02_POSICAO'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_POSICAO'
      Size = 10
    end
    object Tb_TabOP02_resOPT02_MESCLAR_INI: TFloatField
      FieldName = 'OPT02_MESCLAR_INI'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_MESCLAR_INI'
    end
    object Tb_TabOP02_resOPT02_MESCLAR_FIN: TFloatField
      FieldName = 'OPT02_MESCLAR_FIN'
      Origin = 'SG_ASSOC.CADOP_TAB02.OPT02_MESCLAR_FIN'
    end
  end
  object src_TabOP02_res: TDataSource
    DataSet = Tb_TabOP02_res
    OnDataChange = src_TabOP02_resDataChange
    Left = 768
    Top = 238
  end
  object Tb_Comp: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  PDNOME,'
      '       PDUND,'
      '       PDCODPRO'
      ' from CADPRO'
      'where PDCODPRO=:CODPRO'
      '')
    Left = 532
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CompPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Tb_CompPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_CompPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
  end
  object Src_Comp: TDataSource
    DataSet = Tb_Comp
    Left = 548
    Top = 147
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 724
    Top = 147
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 756
    Top = 131
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = '(WORD) Formato RichText'
    Left = 524
    Top = 107
  end
  object src_precos: TDataSource
    DataSet = tb_precos
    OnDataChange = src_TabOP02_resDataChange
    Left = 736
    Top = 438
  end
  object tb_precos: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Comp_EmbAfterInsert
    BeforeEdit = Tb_Comp_EmbBeforeEdit
    AfterEdit = Tb_Comp_EmbAfterEdit
    BeforePost = Tb_Comp_EmbBeforePost
    AfterPost = c
    AfterCancel = Tb_Comp_EmbAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Comp_EmbCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select'
      '01 as ordem'
      ', rpad('#39'lindomar divino cordeiro'#39',50,'#39'0'#39') as nome'
      ',0.00 as perc'
      ',0.00 as valor_inicial'
      ',0.00 as valor'
      ',0.00 as valor_acumulado'
      'from dual')
    Left = 651
    Top = 444
    object tb_precosPERC: TFloatField
      FieldName = 'PERC'
    end
    object tb_precosVALOR_INICIAL: TFloatField
      FieldName = 'VALOR_INICIAL'
    end
    object tb_precosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object tb_precosVALOR_ACUMULADO: TFloatField
      FieldName = 'VALOR_ACUMULADO'
    end
    object tb_precosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object src_pro_custo: TDataSource
    DataSet = tb_pro_custo
    Left = 185
    Top = 305
  end
  object tb_pro_custo: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterCancel = Tb_Comp_MPAfterCancel
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PDNOME,PDUND,PDPRECO2,PDPRECO1,PDPRECO3'
      ',PDPCOFAB,PDPCOMC'
      ',PDPMC,PDUCPR'
      ',PDPRECOC'
      ',custo.*'
      ',PDPRECOC AS preco_compra_origem'
      ''
      'from  CADPRO_CUSTO custo,CADPRO'
      'WHERE (PDC_CODEMP=PDCODEMP and PDC_CODPRO=PDCODPRO)'
      'and PDC_CODPRO=:CODPRO'
      '')
    UpdateObject = u_pro_custo
    Left = 236
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object tb_pro_custoPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CODEMP'
      Size = 120
    end
    object tb_pro_custoPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CODPRO'
      Size = 3
    end
    object tb_pro_custoPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_MARKETING_PERC'
    end
    object tb_pro_custoPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_MARKETING_VALOR'
    end
    object tb_pro_custoPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_VALOR_INI'
    end
    object tb_pro_custoPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_VALOR_FINAL'
    end
    object tb_pro_custoPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_COMISSOES_PERC'
    end
    object tb_pro_custoPDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_COMISSOES_VALOR'
    end
    object tb_pro_custoPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_FRETEVDA_PERC'
    end
    object tb_pro_custoPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_FRETEVDA_VALOR'
    end
    object tb_pro_custoPDC_CODEMP: TFloatField
      FieldName = 'PDC_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ST_VENDA_PERC'
    end
    object tb_pro_custoPDC_CODPRO: TFloatField
      FieldName = 'PDC_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ST_VENDA_VALOR'
    end
    object tb_pro_custoPDC_CUS_MARKETING_PERC: TFloatField
      FieldName = 'PDC_CUS_MARKETING_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_IPI_VENDA_PERC'
    end
    object tb_pro_custoPDC_CUS_MARKETING_VALOR: TFloatField
      FieldName = 'PDC_CUS_MARKETING_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_IPI_VENDA_VALOR'
    end
    object tb_pro_custoPDC_CUS_VALOR_INI: TFloatField
      FieldName = 'PDC_CUS_VALOR_INI'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ICMS_VENDA_PERC'
    end
    object tb_pro_custoPDC_CUS_VALOR_FINAL: TFloatField
      FieldName = 'PDC_CUS_VALOR_FINAL'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ICMS_VENDA_VALOR'
    end
    object tb_pro_custoPDC_CUS_COMISSOES_PERC: TFloatField
      FieldName = 'PDC_CUS_COMISSOES_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_EMBALAGEM_PERC'
    end
    object tb_pro_custoPDC_CUS_COMISSOES_VALOR: TFloatField
      FieldName = 'PDC_CUS_COMISSOES_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_EMBALAGEM_VALOR'
    end
    object tb_pro_custoPDC_CUS_FRETEVDA_PERC: TFloatField
      FieldName = 'PDC_CUS_FRETEVDA_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_DESPOPER_PERC'
    end
    object tb_pro_custoPDC_CUS_FRETEVDA_VALOR: TFloatField
      FieldName = 'PDC_CUS_FRETEVDA_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_DESPOPER_VALOR'
    end
    object tb_pro_custoPDC_CUS_ST_VENDA_PERC: TFloatField
      FieldName = 'PDC_CUS_ST_VENDA_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTDESP_PERC'
    end
    object tb_pro_custoPDC_CUS_ST_VENDA_VALOR: TFloatField
      FieldName = 'PDC_CUS_ST_VENDA_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTDESP_VALOR'
    end
    object tb_pro_custoPDC_CUS_IPI_VENDA_PERC: TFloatField
      FieldName = 'PDC_CUS_IPI_VENDA_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTCRED_VALOR'
    end
    object tb_pro_custoPDC_CUS_IPI_VENDA_VALOR: TFloatField
      FieldName = 'PDC_CUS_IPI_VENDA_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTCRED_PERC'
    end
    object tb_pro_custoPDC_CUS_ICMS_VENDA_PERC: TFloatField
      FieldName = 'PDC_CUS_ICMS_VENDA_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_VALOR_INI'
    end
    object tb_pro_custoPDC_CUS_ICMS_VENDA_VALOR: TFloatField
      FieldName = 'PDC_CUS_ICMS_VENDA_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_VALOR_FINAL'
    end
    object tb_pro_custoPDC_CUS_EMBALAGEM_PERC: TFloatField
      FieldName = 'PDC_CUS_EMBALAGEM_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_LUCRO_VALOR'
    end
    object tb_pro_custoPDC_CUS_EMBALAGEM_VALOR: TFloatField
      FieldName = 'PDC_CUS_EMBALAGEM_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_LUCRO_PERC'
    end
    object tb_pro_custoPDC_CUS_DESPOPER_PERC: TFloatField
      FieldName = 'PDC_CUS_DESPOPER_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_RISCOPERDAS_PERC'
    end
    object tb_pro_custoPDC_CUS_DESPOPER_VALOR: TFloatField
      FieldName = 'PDC_CUS_DESPOPER_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_RISCOPERDAS_VALOR'
    end
    object tb_pro_custoPDC_CUS_OUTDESP_PERC: TFloatField
      FieldName = 'PDC_CUS_OUTDESP_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTDESP_PERC'
    end
    object tb_pro_custoPDC_CUS_OUTDESP_VALOR: TFloatField
      FieldName = 'PDC_CUS_OUTDESP_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTDESP_VALOR'
    end
    object tb_pro_custoPDC_CUS_OUTCRED_VALOR: TFloatField
      FieldName = 'PDC_CUS_OUTCRED_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTCRED_PERC'
    end
    object tb_pro_custoPDC_CUS_OUTCRED_PERC: TFloatField
      FieldName = 'PDC_CUS_OUTCRED_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTCRED_VALOR'
    end
    object tb_pro_custoPDC_VDA_VALOR_INI: TFloatField
      FieldName = 'PDC_VDA_VALOR_INI'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOMIN_PERC'
    end
    object tb_pro_custoPDC_VDA_VALOR_FINAL: TFloatField
      FieldName = 'PDC_VDA_VALOR_FINAL'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOMIN_VALOR'
    end
    object tb_pro_custoPDC_VDA_LUCRO_VALOR: TFloatField
      FieldName = 'PDC_VDA_LUCRO_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOATACADO_PERC'
    end
    object tb_pro_custoPDC_VDA_LUCRO_PERC: TFloatField
      FieldName = 'PDC_VDA_LUCRO_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOATACADO_VALOR'
    end
    object tb_pro_custoPDC_VDA_RISCOPERDAS_PERC: TFloatField
      FieldName = 'PDC_VDA_RISCOPERDAS_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOVAREJO_PERC'
    end
    object tb_pro_custoPDC_VDA_RISCOPERDAS_VALOR: TFloatField
      FieldName = 'PDC_VDA_RISCOPERDAS_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOVAREJO_VALOR'
    end
    object tb_pro_custoPDC_VDA_OUTDESP_PERC: TFloatField
      FieldName = 'PDC_VDA_OUTDESP_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOINTERNET_PERC'
    end
    object tb_pro_custoPDC_VDA_OUTDESP_VALOR: TFloatField
      FieldName = 'PDC_VDA_OUTDESP_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_FIN_PCOINTERNET_VALOR'
    end
    object tb_pro_custoPDC_VDA_OUTCRED_PERC: TFloatField
      FieldName = 'PDC_VDA_OUTCRED_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_NOTA_ATUALIZAR'
    end
    object tb_pro_custoPDC_VDA_OUTCRED_VALOR: TFloatField
      FieldName = 'PDC_VDA_OUTCRED_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_COMPRA_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOMIN_PERC: TFloatField
      FieldName = 'PDC_FIN_PCOMIN_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_CUSTO_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOMIN_VALOR: TFloatField
      FieldName = 'PDC_FIN_PCOMIN_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_MINIMO_VDA_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOATACADO_PERC: TFloatField
      FieldName = 'PDC_FIN_PCOATACADO_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_ATACADO_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOATACADO_VALOR: TFloatField
      FieldName = 'PDC_FIN_PCOATACADO_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_VAREJO_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOVAREJO_PERC: TFloatField
      FieldName = 'PDC_FIN_PCOVAREJO_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_INTERNET_ATUALIZAR'
    end
    object tb_pro_custoPDC_FIN_PCOVAREJO_VALOR: TFloatField
      FieldName = 'PDC_FIN_PCOVAREJO_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_MARKETING_ACUM'
    end
    object tb_pro_custoPDC_FIN_PCOINTERNET_PERC: TFloatField
      FieldName = 'PDC_FIN_PCOINTERNET_PERC'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_COMISSOES_ACUM'
    end
    object tb_pro_custoPDC_FIN_PCOINTERNET_VALOR: TFloatField
      FieldName = 'PDC_FIN_PCOINTERNET_VALOR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_FRETEVDA_ACUM'
    end
    object tb_pro_custoPDC_PRECO_NOTA_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_NOTA_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ST_VENDA_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_COMPRA_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_COMPRA_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_IPI_VENDA_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_CUSTO_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_CUSTO_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_ICMS_VENDA_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_MINIMO_VDA_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_MINIMO_VDA_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_EMBALAGEM_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_ATACADO_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_ATACADO_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_DESPOPER_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_VAREJO_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_VAREJO_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTDESP_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_PRECO_INTERNET_ATUALIZAR: TStringField
      FieldName = 'PDC_PRECO_INTERNET_ATUALIZAR'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_CUS_OUTCRED_ACUM'
      Size = 1
    end
    object tb_pro_custoPDC_CUS_MARKETING_ACUM: TFloatField
      FieldName = 'PDC_CUS_MARKETING_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_RISCOPERDAS_ACUM'
    end
    object tb_pro_custoPDC_CUS_COMISSOES_ACUM: TFloatField
      FieldName = 'PDC_CUS_COMISSOES_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_LUCRO_ACUM'
    end
    object tb_pro_custoPDC_CUS_FRETEVDA_ACUM: TFloatField
      FieldName = 'PDC_CUS_FRETEVDA_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTDESP_ACUM'
    end
    object tb_pro_custoPDC_CUS_ST_VENDA_ACUM: TFloatField
      FieldName = 'PDC_CUS_ST_VENDA_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_VDA_OUTCRED_ACUM'
    end
    object tb_pro_custoPDC_CUS_IPI_VENDA_ACUM: TFloatField
      FieldName = 'PDC_CUS_IPI_VENDA_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_NOTA_NOV'
    end
    object tb_pro_custoPDC_CUS_ICMS_VENDA_ACUM: TFloatField
      FieldName = 'PDC_CUS_ICMS_VENDA_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_NOTA_DIG'
    end
    object tb_pro_custoPDC_CUS_EMBALAGEM_ACUM: TFloatField
      FieldName = 'PDC_CUS_EMBALAGEM_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_COMPRA_NOV'
    end
    object tb_pro_custoPDC_CUS_DESPOPER_ACUM: TFloatField
      FieldName = 'PDC_CUS_DESPOPER_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_COMPRA_DIG'
    end
    object tb_pro_custoPDC_CUS_OUTDESP_ACUM: TFloatField
      FieldName = 'PDC_CUS_OUTDESP_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_CUSTO_NOV'
    end
    object tb_pro_custoPDC_CUS_OUTCRED_ACUM: TFloatField
      FieldName = 'PDC_CUS_OUTCRED_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_CUSTO_DIG'
    end
    object tb_pro_custoPDC_VDA_RISCOPERDAS_ACUM: TFloatField
      FieldName = 'PDC_VDA_RISCOPERDAS_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_MINIMO_VDA_NOV'
    end
    object tb_pro_custoPDC_VDA_LUCRO_ACUM: TFloatField
      FieldName = 'PDC_VDA_LUCRO_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_ATACADO_NOV'
    end
    object tb_pro_custoPDC_VDA_OUTDESP_ACUM: TFloatField
      FieldName = 'PDC_VDA_OUTDESP_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_VAREJO_NOV'
    end
    object tb_pro_custoPDC_VDA_OUTCRED_ACUM: TFloatField
      FieldName = 'PDC_VDA_OUTCRED_ACUM'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_INTERNET_NOV'
    end
    object tb_pro_custoPDC_PRECO_NOTA_NOV: TFloatField
      FieldName = 'PDC_PRECO_NOTA_NOV'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_MINIMO_VDA_DIG'
    end
    object tb_pro_custoPDC_PRECO_NOTA_DIG: TFloatField
      FieldName = 'PDC_PRECO_NOTA_DIG'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_ATACADO_DIG'
    end
    object tb_pro_custoPDC_PRECO_COMPRA_NOV: TFloatField
      FieldName = 'PDC_PRECO_COMPRA_NOV'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_VAREJO_DIG'
    end
    object tb_pro_custoPDC_PRECO_COMPRA_DIG: TFloatField
      FieldName = 'PDC_PRECO_COMPRA_DIG'
      Origin = 'SG_ASSOC.CADPRO_CUSTO.PDC_PRECO_INTERNET_DIG'
    end
    object tb_pro_custoPDC_PRECO_CUSTO_NOV: TFloatField
      FieldName = 'PDC_PRECO_CUSTO_NOV'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
    end
    object tb_pro_custoPDC_PRECO_CUSTO_DIG: TFloatField
      FieldName = 'PDC_PRECO_CUSTO_DIG'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
    end
    object tb_pro_custoPDC_PRECO_MINIMO_VDA_NOV: TFloatField
      FieldName = 'PDC_PRECO_MINIMO_VDA_NOV'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object tb_pro_custoPDC_PRECO_ATACADO_NOV: TFloatField
      FieldName = 'PDC_PRECO_ATACADO_NOV'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object tb_pro_custoPDC_PRECO_VAREJO_NOV: TFloatField
      FieldName = 'PDC_PRECO_VAREJO_NOV'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object tb_pro_custoPDC_PRECO_INTERNET_NOV: TFloatField
      FieldName = 'PDC_PRECO_INTERNET_NOV'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object tb_pro_custoPDC_PRECO_MINIMO_VDA_DIG: TFloatField
      FieldName = 'PDC_PRECO_MINIMO_VDA_DIG'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object tb_pro_custoPDC_PRECO_ATACADO_DIG: TFloatField
      FieldName = 'PDC_PRECO_ATACADO_DIG'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object tb_pro_custoPDC_PRECO_VAREJO_DIG: TFloatField
      FieldName = 'PDC_PRECO_VAREJO_DIG'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object tb_pro_custoPDC_PRECO_INTERNET_DIG: TFloatField
      FieldName = 'PDC_PRECO_INTERNET_DIG'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object tb_pro_custoPRECO_COMPRA_ORIGEM: TFloatField
      FieldName = 'PRECO_COMPRA_ORIGEM'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
  end
  object u_pro_custo: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_CUSTO'
      'set'
      '  PDC_CODEMP = :PDC_CODEMP,'
      '  PDC_CODPRO = :PDC_CODPRO,'
      '  PDC_CUS_MARKETING_PERC = :PDC_CUS_MARKETING_PERC,'
      '  PDC_CUS_MARKETING_VALOR = :PDC_CUS_MARKETING_VALOR,'
      '  PDC_CUS_VALOR_INI = :PDC_CUS_VALOR_INI,'
      '  PDC_CUS_VALOR_FINAL = :PDC_CUS_VALOR_FINAL,'
      '  PDC_CUS_COMISSOES_PERC = :PDC_CUS_COMISSOES_PERC,'
      '  PDC_CUS_COMISSOES_VALOR = :PDC_CUS_COMISSOES_VALOR,'
      '  PDC_CUS_FRETEVDA_PERC = :PDC_CUS_FRETEVDA_PERC,'
      '  PDC_CUS_FRETEVDA_VALOR = :PDC_CUS_FRETEVDA_VALOR,'
      '  PDC_CUS_ST_VENDA_PERC = :PDC_CUS_ST_VENDA_PERC,'
      '  PDC_CUS_ST_VENDA_VALOR = :PDC_CUS_ST_VENDA_VALOR,'
      '  PDC_CUS_IPI_VENDA_PERC = :PDC_CUS_IPI_VENDA_PERC,'
      '  PDC_CUS_IPI_VENDA_VALOR = :PDC_CUS_IPI_VENDA_VALOR,'
      '  PDC_CUS_ICMS_VENDA_PERC = :PDC_CUS_ICMS_VENDA_PERC,'
      '  PDC_CUS_ICMS_VENDA_VALOR = :PDC_CUS_ICMS_VENDA_VALOR,'
      '  PDC_CUS_EMBALAGEM_PERC = :PDC_CUS_EMBALAGEM_PERC,'
      '  PDC_CUS_EMBALAGEM_VALOR = :PDC_CUS_EMBALAGEM_VALOR,'
      '  PDC_CUS_DESPOPER_PERC = :PDC_CUS_DESPOPER_PERC,'
      '  PDC_CUS_DESPOPER_VALOR = :PDC_CUS_DESPOPER_VALOR,'
      '  PDC_CUS_OUTDESP_PERC = :PDC_CUS_OUTDESP_PERC,'
      '  PDC_CUS_OUTDESP_VALOR = :PDC_CUS_OUTDESP_VALOR,'
      '  PDC_CUS_OUTCRED_VALOR = :PDC_CUS_OUTCRED_VALOR,'
      '  PDC_CUS_OUTCRED_PERC = :PDC_CUS_OUTCRED_PERC,'
      '  PDC_VDA_VALOR_INI = :PDC_VDA_VALOR_INI,'
      '  PDC_VDA_VALOR_FINAL = :PDC_VDA_VALOR_FINAL,'
      '  PDC_VDA_LUCRO_VALOR = :PDC_VDA_LUCRO_VALOR,'
      '  PDC_VDA_LUCRO_PERC = :PDC_VDA_LUCRO_PERC,'
      '  PDC_VDA_RISCOPERDAS_PERC = :PDC_VDA_RISCOPERDAS_PERC,'
      '  PDC_VDA_RISCOPERDAS_VALOR = :PDC_VDA_RISCOPERDAS_VALOR,'
      '  PDC_VDA_OUTDESP_PERC = :PDC_VDA_OUTDESP_PERC,'
      '  PDC_VDA_OUTDESP_VALOR = :PDC_VDA_OUTDESP_VALOR,'
      '  PDC_VDA_OUTCRED_PERC = :PDC_VDA_OUTCRED_PERC,'
      '  PDC_VDA_OUTCRED_VALOR = :PDC_VDA_OUTCRED_VALOR,'
      '  PDC_FIN_PCOMIN_PERC = :PDC_FIN_PCOMIN_PERC,'
      '  PDC_FIN_PCOMIN_VALOR = :PDC_FIN_PCOMIN_VALOR,'
      '  PDC_FIN_PCOATACADO_PERC = :PDC_FIN_PCOATACADO_PERC,'
      '  PDC_FIN_PCOATACADO_VALOR = :PDC_FIN_PCOATACADO_VALOR,'
      '  PDC_FIN_PCOVAREJO_PERC = :PDC_FIN_PCOVAREJO_PERC,'
      '  PDC_FIN_PCOVAREJO_VALOR = :PDC_FIN_PCOVAREJO_VALOR,'
      '  PDC_FIN_PCOINTERNET_PERC = :PDC_FIN_PCOINTERNET_PERC,'
      '  PDC_FIN_PCOINTERNET_VALOR = :PDC_FIN_PCOINTERNET_VALOR,'
      '  PDC_PRECO_NOTA_ATUALIZAR = :PDC_PRECO_NOTA_ATUALIZAR,'
      '  PDC_PRECO_COMPRA_ATUALIZAR = :PDC_PRECO_COMPRA_ATUALIZAR,'
      '  PDC_PRECO_CUSTO_ATUALIZAR = :PDC_PRECO_CUSTO_ATUALIZAR,'
      '  PDC_PRECO_MINIMO_VDA_ATUALIZAR = '
      ':PDC_PRECO_MINIMO_VDA_ATUALIZAR,'
      '  PDC_PRECO_ATACADO_ATUALIZAR = :PDC_PRECO_ATACADO_ATUALIZAR,'
      '  PDC_PRECO_VAREJO_ATUALIZAR = :PDC_PRECO_VAREJO_ATUALIZAR,'
      '  PDC_PRECO_INTERNET_ATUALIZAR = :PDC_PRECO_INTERNET_ATUALIZAR,'
      '  PDC_CUS_MARKETING_ACUM = :PDC_CUS_MARKETING_ACUM,'
      '  PDC_CUS_COMISSOES_ACUM = :PDC_CUS_COMISSOES_ACUM,'
      '  PDC_CUS_FRETEVDA_ACUM = :PDC_CUS_FRETEVDA_ACUM,'
      '  PDC_CUS_ST_VENDA_ACUM = :PDC_CUS_ST_VENDA_ACUM,'
      '  PDC_CUS_IPI_VENDA_ACUM = :PDC_CUS_IPI_VENDA_ACUM,'
      '  PDC_CUS_ICMS_VENDA_ACUM = :PDC_CUS_ICMS_VENDA_ACUM,'
      '  PDC_CUS_EMBALAGEM_ACUM = :PDC_CUS_EMBALAGEM_ACUM,'
      '  PDC_CUS_DESPOPER_ACUM = :PDC_CUS_DESPOPER_ACUM,'
      '  PDC_CUS_OUTDESP_ACUM = :PDC_CUS_OUTDESP_ACUM,'
      '  PDC_CUS_OUTCRED_ACUM = :PDC_CUS_OUTCRED_ACUM,'
      '  PDC_VDA_RISCOPERDAS_ACUM = :PDC_VDA_RISCOPERDAS_ACUM,'
      '  PDC_VDA_LUCRO_ACUM = :PDC_VDA_LUCRO_ACUM,'
      '  PDC_VDA_OUTDESP_ACUM = :PDC_VDA_OUTDESP_ACUM,'
      '  PDC_VDA_OUTCRED_ACUM = :PDC_VDA_OUTCRED_ACUM,'
      '  PDC_PRECO_NOTA_NOV = :PDC_PRECO_NOTA_NOV,'
      '  PDC_PRECO_NOTA_DIG = :PDC_PRECO_NOTA_DIG,'
      '  PDC_PRECO_COMPRA_NOV = :PDC_PRECO_COMPRA_NOV,'
      '  PDC_PRECO_COMPRA_DIG = :PDC_PRECO_COMPRA_DIG,'
      '  PDC_PRECO_CUSTO_NOV = :PDC_PRECO_CUSTO_NOV,'
      '  PDC_PRECO_CUSTO_DIG = :PDC_PRECO_CUSTO_DIG,'
      '  PDC_PRECO_MINIMO_VDA_NOV = :PDC_PRECO_MINIMO_VDA_NOV,'
      '  PDC_PRECO_ATACADO_NOV = :PDC_PRECO_ATACADO_NOV,'
      '  PDC_PRECO_VAREJO_NOV = :PDC_PRECO_VAREJO_NOV,'
      '  PDC_PRECO_INTERNET_NOV = :PDC_PRECO_INTERNET_NOV,'
      '  PDC_PRECO_MINIMO_VDA_DIG = :PDC_PRECO_MINIMO_VDA_DIG,'
      '  PDC_PRECO_ATACADO_DIG = :PDC_PRECO_ATACADO_DIG,'
      '  PDC_PRECO_VAREJO_DIG = :PDC_PRECO_VAREJO_DIG,'
      '  PDC_PRECO_INTERNET_DIG = :PDC_PRECO_INTERNET_DIG'
      'where'
      '  PDC_CODEMP = :OLD_PDC_CODEMP and'
      '  PDC_CODPRO = :OLD_PDC_CODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO_CUSTO'
      '  (PDC_CODEMP, PDC_CODPRO, PDC_CUS_MARKETING_PERC, '
      'PDC_CUS_MARKETING_VALOR, '
      '   PDC_CUS_VALOR_INI, PDC_CUS_VALOR_FINAL, '
      'PDC_CUS_COMISSOES_PERC, PDC_CUS_COMISSOES_VALOR, '
      '   PDC_CUS_FRETEVDA_PERC, PDC_CUS_FRETEVDA_VALOR, '
      'PDC_CUS_ST_VENDA_PERC, '
      '   PDC_CUS_ST_VENDA_VALOR, PDC_CUS_IPI_VENDA_PERC, '
      'PDC_CUS_IPI_VENDA_VALOR, '
      '   PDC_CUS_ICMS_VENDA_PERC, PDC_CUS_ICMS_VENDA_VALOR, '
      'PDC_CUS_EMBALAGEM_PERC, '
      '   PDC_CUS_EMBALAGEM_VALOR, PDC_CUS_DESPOPER_PERC, '
      'PDC_CUS_DESPOPER_VALOR, '
      '   PDC_CUS_OUTDESP_PERC, PDC_CUS_OUTDESP_VALOR, '
      'PDC_CUS_OUTCRED_VALOR, '
      
        '   PDC_CUS_OUTCRED_PERC, PDC_VDA_VALOR_INI, PDC_VDA_VALOR_FINAL,' +
        ' '
      'PDC_VDA_LUCRO_VALOR, '
      '   PDC_VDA_LUCRO_PERC, PDC_VDA_RISCOPERDAS_PERC, '
      'PDC_VDA_RISCOPERDAS_VALOR, '
      '   PDC_VDA_OUTDESP_PERC, PDC_VDA_OUTDESP_VALOR, '
      'PDC_VDA_OUTCRED_PERC, PDC_VDA_OUTCRED_VALOR, '
      '   PDC_FIN_PCOMIN_PERC, PDC_FIN_PCOMIN_VALOR, '
      'PDC_FIN_PCOATACADO_PERC, '
      '   PDC_FIN_PCOATACADO_VALOR, PDC_FIN_PCOVAREJO_PERC, '
      'PDC_FIN_PCOVAREJO_VALOR, '
      '   PDC_FIN_PCOINTERNET_PERC, PDC_FIN_PCOINTERNET_VALOR, '
      'PDC_PRECO_NOTA_ATUALIZAR, '
      '   PDC_PRECO_COMPRA_ATUALIZAR, PDC_PRECO_CUSTO_ATUALIZAR, '
      'PDC_PRECO_MINIMO_VDA_ATUALIZAR, '
      '   PDC_PRECO_ATACADO_ATUALIZAR, PDC_PRECO_VAREJO_ATUALIZAR, '
      'PDC_PRECO_INTERNET_ATUALIZAR, '
      '   PDC_CUS_MARKETING_ACUM, PDC_CUS_COMISSOES_ACUM, '
      'PDC_CUS_FRETEVDA_ACUM, '
      '   PDC_CUS_ST_VENDA_ACUM, PDC_CUS_IPI_VENDA_ACUM, '
      'PDC_CUS_ICMS_VENDA_ACUM, '
      '   PDC_CUS_EMBALAGEM_ACUM, PDC_CUS_DESPOPER_ACUM, '
      'PDC_CUS_OUTDESP_ACUM, '
      '   PDC_CUS_OUTCRED_ACUM, PDC_VDA_RISCOPERDAS_ACUM, '
      'PDC_VDA_LUCRO_ACUM, '
      '   PDC_VDA_OUTDESP_ACUM, PDC_VDA_OUTCRED_ACUM, '
      'PDC_PRECO_NOTA_NOV, PDC_PRECO_NOTA_DIG, '
      '   PDC_PRECO_COMPRA_NOV, PDC_PRECO_COMPRA_DIG, '
      'PDC_PRECO_CUSTO_NOV, PDC_PRECO_CUSTO_DIG, '
      '   PDC_PRECO_MINIMO_VDA_NOV, PDC_PRECO_ATACADO_NOV, '
      'PDC_PRECO_VAREJO_NOV, '
      '   PDC_PRECO_INTERNET_NOV, PDC_PRECO_MINIMO_VDA_DIG, '
      'PDC_PRECO_ATACADO_DIG, '
      '   PDC_PRECO_VAREJO_DIG, PDC_PRECO_INTERNET_DIG)'
      'values'
      '  (:PDC_CODEMP, :PDC_CODPRO, :PDC_CUS_MARKETING_PERC, '
      ':PDC_CUS_MARKETING_VALOR, '
      '   :PDC_CUS_VALOR_INI, :PDC_CUS_VALOR_FINAL, '
      ':PDC_CUS_COMISSOES_PERC, :PDC_CUS_COMISSOES_VALOR, '
      '   :PDC_CUS_FRETEVDA_PERC, :PDC_CUS_FRETEVDA_VALOR, '
      ':PDC_CUS_ST_VENDA_PERC, '
      '   :PDC_CUS_ST_VENDA_VALOR, :PDC_CUS_IPI_VENDA_PERC, '
      ':PDC_CUS_IPI_VENDA_VALOR, '
      '   :PDC_CUS_ICMS_VENDA_PERC, :PDC_CUS_ICMS_VENDA_VALOR, '
      ':PDC_CUS_EMBALAGEM_PERC, '
      '   :PDC_CUS_EMBALAGEM_VALOR, :PDC_CUS_DESPOPER_PERC, '
      ':PDC_CUS_DESPOPER_VALOR, '
      '   :PDC_CUS_OUTDESP_PERC, :PDC_CUS_OUTDESP_VALOR, '
      ':PDC_CUS_OUTCRED_VALOR, '
      '   :PDC_CUS_OUTCRED_PERC, :PDC_VDA_VALOR_INI, '
      ':PDC_VDA_VALOR_FINAL, :PDC_VDA_LUCRO_VALOR, '
      '   :PDC_VDA_LUCRO_PERC, :PDC_VDA_RISCOPERDAS_PERC, '
      ':PDC_VDA_RISCOPERDAS_VALOR, '
      '   :PDC_VDA_OUTDESP_PERC, :PDC_VDA_OUTDESP_VALOR, '
      ':PDC_VDA_OUTCRED_PERC, '
      '   :PDC_VDA_OUTCRED_VALOR, :PDC_FIN_PCOMIN_PERC, '
      ':PDC_FIN_PCOMIN_VALOR, '
      '   :PDC_FIN_PCOATACADO_PERC, :PDC_FIN_PCOATACADO_VALOR, '
      ':PDC_FIN_PCOVAREJO_PERC, '
      '   :PDC_FIN_PCOVAREJO_VALOR, :PDC_FIN_PCOINTERNET_PERC, '
      ':PDC_FIN_PCOINTERNET_VALOR, '
      '   :PDC_PRECO_NOTA_ATUALIZAR, :PDC_PRECO_COMPRA_ATUALIZAR, '
      ':PDC_PRECO_CUSTO_ATUALIZAR, '
      '   :PDC_PRECO_MINIMO_VDA_ATUALIZAR, '
      ':PDC_PRECO_ATACADO_ATUALIZAR, :PDC_PRECO_VAREJO_ATUALIZAR, '
      '   :PDC_PRECO_INTERNET_ATUALIZAR, :PDC_CUS_MARKETING_ACUM, '
      ':PDC_CUS_COMISSOES_ACUM, '
      '   :PDC_CUS_FRETEVDA_ACUM, :PDC_CUS_ST_VENDA_ACUM, '
      ':PDC_CUS_IPI_VENDA_ACUM, '
      '   :PDC_CUS_ICMS_VENDA_ACUM, :PDC_CUS_EMBALAGEM_ACUM, '
      ':PDC_CUS_DESPOPER_ACUM, '
      '   :PDC_CUS_OUTDESP_ACUM, :PDC_CUS_OUTCRED_ACUM, '
      ':PDC_VDA_RISCOPERDAS_ACUM, '
      '   :PDC_VDA_LUCRO_ACUM, :PDC_VDA_OUTDESP_ACUM, '
      ':PDC_VDA_OUTCRED_ACUM, :PDC_PRECO_NOTA_NOV, '
      '   :PDC_PRECO_NOTA_DIG, :PDC_PRECO_COMPRA_NOV, '
      ':PDC_PRECO_COMPRA_DIG, :PDC_PRECO_CUSTO_NOV, '
      '   :PDC_PRECO_CUSTO_DIG, :PDC_PRECO_MINIMO_VDA_NOV, '
      ':PDC_PRECO_ATACADO_NOV, '
      '   :PDC_PRECO_VAREJO_NOV, :PDC_PRECO_INTERNET_NOV, '
      ':PDC_PRECO_MINIMO_VDA_DIG, '
      '   :PDC_PRECO_ATACADO_DIG, :PDC_PRECO_VAREJO_DIG, '
      ':PDC_PRECO_INTERNET_DIG)')
    DeleteSQL.Strings = (
      'delete from CADPRO_CUSTO'
      'where'
      '  PDC_CODEMP = :OLD_PDC_CODEMP and'
      '  PDC_CODPRO = :OLD_PDC_CODPRO')
    Left = 279
    Top = 289
  end
end
