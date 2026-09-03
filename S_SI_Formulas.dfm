object Frm_SI_Formulas: TFrm_SI_Formulas
  Left = 8
  Top = 0
  Width = 746
  Height = 571
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manipula'#231#245'es das Formulas dos Produtos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 27
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 7
      Width = 92
      Height = 13
      Caption = 'C'#243'digo Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODPRO: TEdit
      Left = 119
      Top = 4
      Width = 101
      Height = 19
      Hint = 
        'C'#243'digo do Produto Interm'#233'diario/Em Produ'#231#227'o'#13#10'ou seja o Codigo do' +
        ' Produto Bruto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object NOMPRO: TEdit
      Left = 219
      Top = 4
      Width = 301
      Height = 19
      Color = 12582911
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object bbatualizar: TBitBtn
      Left = 531
      Top = 3
      Width = 70
      Height = 21
      Hint = 'Click aqui para atualizar as informa'#231#245'es'
      Caption = 'M'#233'todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object bbFechar: TBitBtn
      Left = 654
      Top = 4
      Width = 70
      Height = 21
      Hint = 'Click aqui para Sair desta Op'#231#227'o'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 738
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Formula'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 730
        Height = 233
        Align = alTop
        Caption = 'Formula Centesimal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 62
          Width = 726
          Height = 149
          Align = alClient
          Ctl3D = False
          DataSource = Src_Comp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Width = 85
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDUND'
              Width = 36
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDNOME'
              Width = 361
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPPERCENT'
              Width = 62
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'observacao'
              Width = 181
              Visible = True
            end>
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 211
          Width = 726
          Height = 20
          DataSource = Src_Comp
          Align = alBottom
          TabOrder = 1
        end
        object panel_cabitens: TPanel
          Left = 2
          Top = 15
          Width = 726
          Height = 47
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object MIN02_PED_CODEMP: TEdit
            Left = 0
            Top = 29
            Width = 32
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
            TabOrder = 4
            Visible = False
          end
          object st_codemp: TStaticText
            Left = 0
            Top = 0
            Width = 32
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'd Emp'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object st_chave: TStaticText
            Left = 0
            Top = 0
            Width = 87
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo da mat'#233'ria Prima'
            Color = 16769505
            FocusControl = CODMAT
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object st_razao: TStaticText
            Left = 123
            Top = 0
            Width = 363
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o do Produto'
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
          object st_vlrtot: TStaticText
            Left = 548
            Top = 0
            Width = 183
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Oberva'#231#245'es'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object CODMAT: TEdit
            Left = 0
            Top = 29
            Width = 87
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
            TabOrder = 5
          end
          object NOMMAT: TEdit
            Left = 123
            Top = 29
            Width = 363
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object PERC: TEdit
            Left = 485
            Top = 29
            Width = 64
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object OBSERV: TEdit
            Left = 548
            Top = 29
            Width = 183
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object st_qtdvol: TStaticText
            Left = 485
            Top = 0
            Width = 64
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '%'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
          object UND: TEdit
            Left = 86
            Top = 29
            Width = 38
            Height = 19
            Color = 13816530
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
          object StaticText2: TStaticText
            Left = 86
            Top = 0
            Width = 38
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
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 233
        Width = 730
        Height = 182
        Align = alTop
        Caption = 'Produtos Envasado por esta Formula:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 63
          Width = 726
          Height = 97
          Align = alClient
          Ctl3D = False
          DataSource = Src_Comp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Width = 85
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDUND'
              Width = 36
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDNOME'
              Width = 361
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPPERCENT'
              Width = 62
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'observacao'
              Width = 181
              Visible = True
            end>
        end
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 160
          Width = 726
          Height = 20
          DataSource = Src_Comp
          Align = alBottom
          TabOrder = 1
        end
        object Panel1: TPanel
          Left = 2
          Top = 15
          Width = 726
          Height = 48
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Edit1: TEdit
            Left = 0
            Top = 29
            Width = 32
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
            TabOrder = 3
            Visible = False
          end
          object StaticText1: TStaticText
            Left = 0
            Top = 0
            Width = 32
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'd Emp'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object StaticText3: TStaticText
            Left = 0
            Top = 0
            Width = 87
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo do Produto'
            Color = 16769505
            FocusControl = CODPRO_ACAB
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText4: TStaticText
            Left = 123
            Top = 0
            Width = 363
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o do Produto'
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
          object CODPRO_ACAB: TEdit
            Left = 0
            Top = 29
            Width = 87
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
            TabOrder = 4
          end
          object NOMPRO_ACAB: TEdit
            Left = 123
            Top = 29
            Width = 363
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object Edit4: TEdit
            Left = 485
            Top = 29
            Width = 64
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object StaticText6: TStaticText
            Left = 485
            Top = 0
            Width = 64
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Quantidade KG/Litros'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object UND_ACAB: TEdit
            Left = 86
            Top = 29
            Width = 38
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object StaticText7: TStaticText
            Left = 86
            Top = 0
            Width = 38
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
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos Envasados por Esta F'#243'rmula'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 335
        Width = 730
        Height = 138
        Caption = 'Embalagem de Embarque:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 63
          Width = 726
          Height = 53
          Align = alClient
          Ctl3D = False
          DataSource = Src_Comp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Width = 85
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDUND'
              Width = 36
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDNOME'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPPERCENT'
              Width = 62
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'observacao'
              Width = 181
              Visible = True
            end>
        end
        object DBNavigator3: TDBNavigator
          Left = 2
          Top = 116
          Width = 726
          Height = 20
          DataSource = Src_Comp
          Align = alBottom
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 726
          Height = 48
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Edit2: TEdit
            Left = 0
            Top = 29
            Width = 32
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
            TabOrder = 3
            Visible = False
          end
          object StaticText5: TStaticText
            Left = 0
            Top = 0
            Width = 32
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'd Emp'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object StaticText8: TStaticText
            Left = 0
            Top = 0
            Width = 87
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo do Produto'
            Color = 16769505
            FocusControl = Edit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText9: TStaticText
            Left = 123
            Top = 0
            Width = 363
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o do Produto'
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
          object Edit3: TEdit
            Left = 0
            Top = 29
            Width = 87
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
            TabOrder = 4
          end
          object Edit5: TEdit
            Left = 123
            Top = 29
            Width = 363
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object Edit6: TEdit
            Left = 485
            Top = 29
            Width = 64
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object StaticText10: TStaticText
            Left = 485
            Top = 0
            Width = 64
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Quantidade KG/Litros'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object Edit7: TEdit
            Left = 86
            Top = 29
            Width = 38
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object StaticText11: TStaticText
            Left = 86
            Top = 0
            Width = 38
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
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 730
        Height = 149
        Align = alTop
        Caption = 'Materias Primas Utilizadas por Unidade:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 2
          Top = 63
          Width = 726
          Height = 64
          Align = alClient
          Ctl3D = False
          DataSource = Src_Comp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CPCODMAT'
              Width = 85
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDUND'
              Width = 36
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'PDNOME'
              Width = 361
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPPERCENT'
              Width = 62
              Visible = True
            end
            item
              Color = 13816530
              Expanded = False
              FieldName = 'observacao'
              Width = 181
              Visible = True
            end>
        end
        object DBNavigator4: TDBNavigator
          Left = 2
          Top = 127
          Width = 726
          Height = 20
          DataSource = Src_Comp
          Align = alBottom
          TabOrder = 1
        end
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 726
          Height = 48
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Edit8: TEdit
            Left = 0
            Top = 29
            Width = 32
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
            TabOrder = 3
            Visible = False
          end
          object StaticText12: TStaticText
            Left = 0
            Top = 0
            Width = 32
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'd Emp'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object StaticText13: TStaticText
            Left = 0
            Top = 0
            Width = 87
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo do Produto'
            Color = 16769505
            FocusControl = Edit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText14: TStaticText
            Left = 123
            Top = 0
            Width = 363
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o do Produto'
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
          object Edit9: TEdit
            Left = 0
            Top = 29
            Width = 87
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
            TabOrder = 4
          end
          object Edit10: TEdit
            Left = 123
            Top = 29
            Width = 363
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object Edit11: TEdit
            Left = 485
            Top = 29
            Width = 64
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object StaticText15: TStaticText
            Left = 485
            Top = 0
            Width = 64
            Height = 30
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Quantidade KG/Litros'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object Edit12: TEdit
            Left = 86
            Top = 29
            Width = 38
            Height = 19
            Color = 13816530
            Ctl3D = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
          end
          object StaticText16: TStaticText
            Left = 86
            Top = 0
            Width = 38
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
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
        end
      end
    end
  end
  object Tb_Comp: TQuery
    CachedUpdates = True
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
    UpdateObject = U_Comp
    Left = 616
    Top = 160
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
    object Tb_CompCPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_CompCPORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_CompCPCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produzir'
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_CompCPCODMAT: TFloatField
      DisplayLabel = 'Cod.M'#225't.Prima'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_CompCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_CompCPPU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_CompCPNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_CompCPMPNUM: TStringField
      DisplayLabel = 'N'#250'mero MP'
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_CompCPCODPRO_ACAB: TFloatField
      DisplayLabel = 'C'#243'd.Acabado'
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_CompCPALICMSCRED: TFloatField
      DisplayLabel = 'Aliq.Icms'
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_CompCPICMSCRED: TFloatField
      DisplayLabel = 'Icms Credito'
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_CompCPVLRINC: TFloatField
      DisplayLabel = 'Vlr.Inc.'
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_CompCPALIQORI: TFloatField
      DisplayLabel = 'Aliq.Origem'
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comptotal: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comptotalliq: TFloatField
      DisplayLabel = 'Total Liq'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Tb_CompCPPERCENT: TFloatField
      DisplayLabel = '%'
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_CompCPPERCENT_REST: TFloatField
      DisplayLabel = '% Restante'
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_CompCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_CompCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_CompPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_CompPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Compobservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacao'
      Calculated = True
    end
  end
  object Src_Comp: TDataSource
    DataSet = Tb_Comp
    Left = 645
    Top = 161
  end
  object U_Comp: TUpdateSQL
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
      '  CPCODMAT = :OLD_CPCODMAT')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      
        '  (CPCODEMP, CPORDEM, CPCODPRO, CPNUMERO, CPCODMAT, CPCODPRO_ACA' +
        'B, CPMPNUM, '
      
        '   CPQUANT, CPPU, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      
        '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPNUMERO, :CPCODMAT, :CPCODP' +
        'RO_ACAB, '
      
        '   :CPMPNUM, :CPQUANT, :CPPU, :CPVLRINC, :CPALIQORI, :CPALICMSCR' +
        'ED, :CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    Left = 675
    Top = 161
  end
end
