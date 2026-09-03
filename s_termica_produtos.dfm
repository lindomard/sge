object frm_termica_produtos: Tfrm_termica_produtos
  Left = 216
  Top = 103
  Width = 984
  Height = 548
  Caption = 'Etiquetas de Produtos para Impressora Termica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 976
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Etiquetas para Produtos Impressora Termica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 46
    Width = 976
    Height = 471
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Impressao'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 968
        Height = 396
        Align = alClient
        Caption = 'Digita'#231#227'o'
        TabOrder = 0
        object DBGrid_etiqueta: TDBGrid
          Left = 2
          Top = 15
          Width = 964
          Height = 288
          Align = alClient
          DataSource = src_etiquetas
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = DBGrid_etiquetaColExit
          OnKeyDown = DBGrid_etiquetaKeyDown
          OnKeyPress = DBGrid_etiquetaKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'et_codpro'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_codbar'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_qtd'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_nome'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_und'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_marca'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_lote'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_dtvcto'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_preco'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'et_obs'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 123
              Visible = True
            end>
        end
        object GroupBox28: TGroupBox
          Left = 2
          Top = 303
          Width = 964
          Height = 91
          Align = alBottom
          Caption = 'Linha Particionada:'
          TabOrder = 1
          object DBEdit1: TDBEdit
            Left = 250
            Top = 7
            Width = 441
            Height = 19
            Ctl3D = False
            DataField = 'et_nome_l01'
            DataSource = src_etiquetas
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 250
            Top = 25
            Width = 441
            Height = 19
            Ctl3D = False
            DataField = 'et_nome_l02'
            DataSource = src_etiquetas
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 250
            Top = 43
            Width = 441
            Height = 19
            Ctl3D = False
            DataField = 'et_nome_l03'
            DataSource = src_etiquetas
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 250
            Top = 61
            Width = 441
            Height = 19
            Ctl3D = False
            DataField = 'et_nome_l04'
            DataSource = src_etiquetas
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object BitBtn1: TBitBtn
            Left = 792
            Top = 24
            Width = 75
            Height = 25
            Caption = 'BitBtn1'
            TabOrder = 4
            Visible = False
            OnClick = BitBtn1Click
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 396
        Width = 968
        Height = 47
        Align = alBottom
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 26
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Impressora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 386
          Top = 6
          Width = 143
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd.Caracteres por Linha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbImprimir: TBitBtn
          Left = 608
          Top = 4
          Width = 113
          Height = 40
          Caption = '&Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
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
        object bbSair: TBitBtn
          Left = 789
          Top = 2
          Width = 113
          Height = 40
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
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
        object cb_modelo: TComboBox
          Left = 79
          Top = 3
          Width = 250
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = 'cb_modelo'
        end
        object cb_impressora: TComboBox
          Left = 79
          Top = 23
          Width = 250
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Text = 'cb_modelo'
        end
        object edt_qtdcarporlinha: TSpinEdit
          Left = 412
          Top = 22
          Width = 65
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
          OnClick = edt_qtdcarporlinhaClick
          OnExit = edt_qtdcarporlinhaExit
        end
      end
    end
    object tsConfig: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      OnExit = tsConfigExit
      object Panel2: TPanel
        Left = 0
        Top = 408
        Width = 960
        Height = 41
        Align = alBottom
        TabOrder = 0
        object bbincluir: TBitBtn
          Left = 4
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbincluirClick
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
        object bbalterar: TBitBtn
          Left = 67
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbalterarClick
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
        object bbexcluir: TBitBtn
          Left = 130
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbexcluirClick
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
        object bbgravar: TBitBtn
          Left = 193
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bbgravarClick
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
        object bbcancelar: TBitBtn
          Left = 256
          Top = 4
          Width = 64
          Height = 37
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bbcancelarClick
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
        object DBNavigator1: TDBNavigator
          Left = 320
          Top = 3
          Width = 248
          Height = 37
          Hint = 'Navega entre os registros selecionados'
          DataSource = src_config_etiqueta
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
        object bbfechar: TBitBtn
          Left = 569
          Top = 4
          Width = 64
          Height = 36
          Hint = 'Fecha Esta Janela'
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = bbfecharClick
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
      object GroupBox2: TGroupBox
        Left = 0
        Top = 33
        Width = 185
        Height = 375
        Align = alLeft
        Caption = 'Modelos Configurados:'
        TabOrder = 1
        object DBGrid_config: TDBGrid
          Left = 2
          Top = 15
          Width = 181
          Height = 358
          Align = alClient
          DataSource = src_config_etiqueta
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CE_NOME'
              Title.Alignment = taCenter
              Width = 143
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 185
        Top = 33
        Width = 337
        Height = 375
        Align = alLeft
        TabOrder = 2
        object GroupBox3: TGroupBox
          Left = 1
          Top = 131
          Width = 335
          Height = 130
          Align = alTop
          Caption = 'Configura'#231#227'o:'
          TabOrder = 0
          object DBMemo_CE_CONFIG_CAB: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 113
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_CAB'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox11: TGroupBox
          Left = 1
          Top = 1
          Width = 335
          Height = 130
          Align = alTop
          Caption = 'Etiqueta Coluna 01'
          TabOrder = 1
          object DBMemo_CE_CONFIG_ETIQ01: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 113
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ01'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox12: TGroupBox
          Left = 1
          Top = 261
          Width = 335
          Height = 113
          Align = alClient
          Caption = 'Etiqueta Coluna 02'
          TabOrder = 2
          object DBMemo_CE_CONFIG_ETIQ02: TDBMemo
            Left = 2
            Top = 15
            Width = 331
            Height = 96
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ02'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
      object Panel4: TPanel
        Left = 522
        Top = 33
        Width = 438
        Height = 375
        Align = alClient
        TabOrder = 3
        object GroupBox13: TGroupBox
          Left = 1
          Top = 135
          Width = 436
          Height = 130
          Align = alTop
          Caption = 'Etiqueta Coluna 03'
          TabOrder = 0
          object DBMemo_CE_CONFIG_ETIQ03: TDBMemo
            Left = 2
            Top = 15
            Width = 432
            Height = 113
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ03'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox14: TGroupBox
          Left = 1
          Top = 1
          Width = 436
          Height = 134
          Align = alTop
          Caption = 'Etiqueta Coluna 04'
          TabOrder = 1
          object DBMemo_CE_CONFIG_ETIQ04: TDBMemo
            Left = 2
            Top = 15
            Width = 432
            Height = 117
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ04'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox15: TGroupBox
          Left = 1
          Top = 265
          Width = 436
          Height = 109
          Align = alClient
          Caption = 'Etiqueta Coluna 05'
          TabOrder = 2
          object DBMemo_CE_CONFIG_ETIQ05: TDBMemo
            Left = 2
            Top = 15
            Width = 432
            Height = 92
            Align = alClient
            Ctl3D = False
            DataField = 'CE_CONFIG_ETIQ05'
            DataSource = src_config_etiqueta
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 960
        Height = 33
        Align = alTop
        TabOrder = 4
        object Label4: TLabel
          Left = 196
          Top = 11
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
        object Label5: TLabel
          Left = 396
          Top = 11
          Width = 99
          Height = 13
          Caption = 'Qtde de Colunas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_CE_NOME: TDBEdit
          Left = 240
          Top = 8
          Width = 113
          Height = 19
          Ctl3D = False
          DataField = 'CE_NOME'
          DataSource = src_config_etiqueta
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_CE_QTDCOL: TDBEdit
          Left = 511
          Top = 8
          Width = 57
          Height = 19
          Ctl3D = False
          DataField = 'CE_QTDCOL'
          DataSource = src_config_etiqueta
          ParentCtl3D = False
          TabOrder = 1
        end
      end
    end
    object tsPreDefinida: TTabSheet
      Caption = 'Pre-Definidas'
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 968
        Height = 443
        ActivePage = ts_30x18_3_colunas
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object ts_30x18_3_colunas: TTabSheet
          Caption = 'Etiqueta 1 coluna 30x18'
          object GroupBox5: TGroupBox
            Left = 0
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Cabecalho'
            TabOrder = 0
            object Memo_30x18_3_colunas_cabec: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'I8,A,001'
                ''
                ''
                'Q759,024'
                'q831'
                'rN'
                'S4'
                'D10'
                'ZT'
                'JF'
                'OD'
                'R327,0'
                ''
                ''
                ''
                '')
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 01'
            TabOrder = 1
            object Memo_30x18_3_colunas_etiq01: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'f100'
                'N'
                'B125,39,1,E30,2,4,63,B,"{CODBAR}"'
                'A153,32,1,1,2,1,N,"{NOME}"'
                'A46,60,1,1,2,2,N,"{PRECO}"')
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 320
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Etiqueta 02'
            TabOrder = 2
            object Memo_30x18_3_colunas_etiq02: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'B125,279,1,E30,2,4,63,B,"{CODBAR}"'
                'A153,272,1,1,2,1,N,"{NOME}"'
                'A46,300,1,1,2,2,N,"{PRECO}"')
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            Left = 320
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 03'
            TabOrder = 3
            object Memo_30x18_3_colunas_etiq03: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'B125,519,1,E30,2,4,63,B,"{CODBAR}"'
                'A153,512,1,1,2,1,N,"{NOME}"'
                'A46,540,1,1,2,2,N,"{PRECO}"'
                'P1')
              TabOrder = 0
            end
          end
          object GroupBox9: TGroupBox
            Left = 634
            Top = 6
            Width = 313
            Height = 160
            Caption = 'Etiqueta 04'
            TabOrder = 4
            object Memo_30x18_3_colunas_etiq04: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              TabOrder = 0
            end
          end
          object GroupBox10: TGroupBox
            Left = 634
            Top = 174
            Width = 313
            Height = 160
            Caption = 'Etiqueta 05'
            TabOrder = 5
            object Memo_30x18_3_colunas_etiq05: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object tsEtiq40x302col: TTabSheet
          Caption = 'Etiqueta 40x30 2 colunas'
          ImageIndex = 1
          object GroupBox16: TGroupBox
            Left = 0
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Cabecalho'
            TabOrder = 0
            object Memo_40x302col_cab: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'I8,A,001'
                ''
                ''
                'Q759,024'
                'q831'
                'rN'
                'S4'
                'D10'
                'ZT'
                'JF'
                'OD'
                'R279,0'
                '')
              TabOrder = 0
            end
          end
          object GroupBox17: TGroupBox
            Left = 320
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Etiqueta 02'
            TabOrder = 1
            object Memo_40x302col_etiq02: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'B208,405,1,E30,3,6,121,B,"{CODBAR}"'
                'A240,405,1,1,2,1,N,"{NOME}"'
                'A63,480,1,1,3,2,N,"{PRECO}"'
                'P1')
              TabOrder = 0
            end
          end
          object GroupBox18: TGroupBox
            Left = 634
            Top = 6
            Width = 313
            Height = 160
            Caption = 'Etiqueta 04'
            TabOrder = 2
            object Memo_40x302col_etiq04: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              TabOrder = 0
            end
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 01'
            TabOrder = 3
            object Memo_40x302col_etiq01: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'f100'
                'N'
                'B208,45,1,E30,3,6,121,B,"{CODBAR}"'
                'A240,45,1,1,2,1,N,"{NOME}"'
                'A63,120,1,1,3,2,N,"{PRECO}"'
                '')
              TabOrder = 0
            end
          end
          object GroupBox20: TGroupBox
            Left = 320
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 03'
            TabOrder = 4
            object Memo_40x302col_etiq03: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              TabOrder = 0
            end
          end
          object GroupBox21: TGroupBox
            Left = 634
            Top = 174
            Width = 313
            Height = 160
            Caption = 'Etiqueta 05'
            TabOrder = 5
            object Memo_40x302col_etiq05: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object tsEtiq_gondolas: TTabSheet
          Caption = 'Etiqueta Gondolas'
          ImageIndex = 2
          object GroupBox22: TGroupBox
            Left = 0
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Cabecalho'
            TabOrder = 0
            object Memo_Gondolas_Cab: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'I8,A,001'
                ''
                ''
                'Q240,024'
                'q831'
                'rN'
                'S4'
                'D10'
                'ZT'
                'JF'
                'OD'
                'R0,0'
                '')
              TabOrder = 0
            end
          end
          object GroupBox23: TGroupBox
            Left = 0
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 01'
            TabOrder = 1
            object Memo_Gondolas_Etiq01: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'f100'
                'N'
                'B749,183,2,E30,3,6,127,B,"{CODBAR}"'
                'A748,217,2,2,2,2,N,"{NOME}"'
                'A398,160,2,1,4,6,N,"{PRECO}"'
                'A418,65,2,3,1,1,N,"{NOME}"'
                'P1'
                '')
              TabOrder = 0
            end
          end
        end
        object tsEtiq3x1emeio: TTabSheet
          Caption = 'Etiqueta pequena 3 colunas'
          ImageIndex = 3
          object GroupBox24: TGroupBox
            Left = 0
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Cabecalho'
            TabOrder = 0
            object Memo_3x1emeio_cab: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'I8,A,001'
                ''
                ''
                'Q120,024'
                'q831'
                'rN'
                'S3'
                'D10'
                'ZT'
                'JF'
                'OD'
                'R0,0'
                '')
              TabOrder = 0
            end
          end
          object GroupBox25: TGroupBox
            Left = 0
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 01'
            TabOrder = 1
            object Memo_3x1emeio_etiq01: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'f100'
                'N'
                'B815,83,2,E30,2,4,38,B,"{CODBAR}"'
                'A815,110,2,3,1,1,N,"{NOME}"'
                'A767,27,2,4,1,1,N,"{PRECO}"')
              TabOrder = 0
            end
          end
          object GroupBox26: TGroupBox
            Left = 320
            Top = 5
            Width = 313
            Height = 160
            Caption = 'Etiqueta 02'
            TabOrder = 2
            object Memo_3x1emeio_etiq02: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'B535,83,2,E30,2,4,38,B,"{CODBAR}"'
                'A535,110,2,3,1,1,N,"{NOME}"'
                'A487,27,2,4,1,1,N,"{PRECO}"')
              TabOrder = 0
            end
          end
          object GroupBox27: TGroupBox
            Left = 320
            Top = 173
            Width = 313
            Height = 160
            Caption = 'Etiqueta 03'
            TabOrder = 3
            object Memo_3x1emeio_etiq03: TMemo
              Left = 2
              Top = 15
              Width = 309
              Height = 143
              Align = alClient
              Lines.Strings = (
                'B256,83,2,E30,2,4,38,B,"{CODBAR}"'
                'A256,110,2,3,1,1,N,"{NOME}"'
                'A208,27,2,4,1,1,N,"{PRECO}"'
                'P1')
              TabOrder = 0
            end
          end
        end
      end
    end
    object tsLegenda: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 595
        Top = 0
        Width = 373
        Height = 443
        Align = alRight
        Caption = 'Legenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object memo_legenda: TMemo
          Left = 2
          Top = 15
          Width = 369
          Height = 426
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Lines.Strings = (
            '{CODPRO}           - C'#243'digo do Produto'
            '{CODBAR}           - C'#243'digo de Barras'
            '{NOME}             - Nome do Produto'
            
              '{NOME_L01}         - Nome do Produto dividido em varias linhas l' +
              'inha 01 16 caracteres'
            
              '{NOME_L02}         - Nome do Produto dividido em varias linhas l' +
              'inha 02 16 caracteres'
            
              '{NOME_L03}         - Nome do Produto dividido em varias linhas l' +
              'inha 03 16 caracteres'
            
              '{NOME_L04}         - Nome do Produto dividido em varias linhas l' +
              'inha 04 restante'
            '{UND}              - Unidade do Produto'
            '{MARCA}            - Marca do Produto'
            '{LOTE}             - Numero do lote informado'
            '{DTVCTO}           - Data de vencimento'
            '{PRECO}            - Pre'#231'o do Produto'
            '{OBSERVACAO}       - Observa'#231'oes'
            '{EMPRESA_RAZAO}    - Raz'#227'o Social da Empresa'
            '{EMPRESA_FANTASIA} - Nome de Fantasia da Empresa'
            '{EMPRESA_ENDERECO} - Endere'#231'o da Empresa'
            '{EMPRESA_BAIRRO}   - Bairro da Empresa'
            '{EMPRESA_CIDADE}   - Cidade da Empresa'
            '{EMPRESA_UF}       - Estado(UF) da Empresa'
            '{EMPRESA_FONE}     - Telefone da Empresa'
            '{EMPRESA_EMAIL}    - E-Mail da Empresa'
            '{EMPRESA_HOME}     - Home page da Empresa'
            '{EMPRESA_CNPJ}     - CNPJ da Empresa'
            '{EMPRESA_IE}       - Inscri'#231#227'o Estadual da Empresa'
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object tsTexto: TTabSheet
      Caption = 'Texto da Etiqueta'
      ImageIndex = 4
      object Memo_texto_etiqueta: TMemo
        Left = 0
        Top = 0
        Width = 968
        Height = 443
        Align = alClient
        Lines.Strings = (
          'Memo_texto_etiqueta')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object cds_etiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cds_etiquetasBeforePost
    Left = 316
    Top = 150
    object cds_etiquetaset_codpro: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'et_codpro'
    end
    object cds_etiquetaset_nome: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'et_nome'
      Size = 100
    end
    object cds_etiquetaset_und: TStringField
      DisplayLabel = 'Und'
      FieldName = 'et_und'
      Size = 100
    end
    object cds_etiquetaset_marca: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'et_marca'
      Size = 100
    end
    object cds_etiquetaset_lote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'et_lote'
    end
    object cds_etiquetaset_dtvcto: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'et_dtvcto'
    end
    object cds_etiquetaset_qtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'et_qtd'
    end
    object cds_etiquetaset_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'et_preco'
    end
    object cds_etiquetaset_obs: TStringField
      DisplayLabel = 'Oberva'#231#245'es'
      FieldName = 'et_obs'
      Size = 100
    end
    object cds_etiquetaset_codbar: TStringField
      DisplayLabel = 'C'#243'd Barras'
      FieldName = 'et_codbar'
    end
    object cds_etiquetaset_nome_l01: TStringField
      FieldName = 'et_nome_l01'
      Size = 50
    end
    object cds_etiquetaset_nome_l02: TStringField
      FieldName = 'et_nome_l02'
      Size = 50
    end
    object cds_etiquetaset_nome_l03: TStringField
      FieldName = 'et_nome_l03'
      Size = 50
    end
    object cds_etiquetaset_nome_l04: TStringField
      FieldName = 'et_nome_l04'
      Size = 50
    end
  end
  object src_etiquetas: TDataSource
    DataSet = cds_etiquetas
    Left = 420
    Top = 158
  end
  object cds_config_etiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_config_etiquetaAfterInsert
    AfterEdit = cds_config_etiquetaAfterEdit
    BeforePost = cds_config_etiquetaBeforePost
    AfterPost = cds_config_etiquetaAfterPost
    AfterDelete = cds_config_etiquetaAfterDelete
    Left = 548
    Top = 30
    object cds_config_etiquetaCE_LOCAL: TStringField
      FieldName = 'CE_LOCAL'
    end
    object cds_config_etiquetaCE_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CE_NOME'
      Size = 100
    end
    object cds_config_etiquetaCE_CONFIG_CAB: TStringField
      FieldName = 'CE_CONFIG_CAB'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ01: TStringField
      FieldName = 'CE_CONFIG_ETIQ01'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ02: TStringField
      FieldName = 'CE_CONFIG_ETIQ02'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ03: TStringField
      FieldName = 'CE_CONFIG_ETIQ03'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ04: TStringField
      FieldName = 'CE_CONFIG_ETIQ04'
      Size = 3000
    end
    object cds_config_etiquetaCE_CONFIG_ETIQ05: TStringField
      FieldName = 'CE_CONFIG_ETIQ05'
      Size = 3000
    end
    object cds_config_etiquetaCE_QTDCOL: TIntegerField
      FieldName = 'CE_QTDCOL'
    end
  end
  object src_config_etiqueta: TDataSource
    DataSet = cds_config_etiqueta
    Left = 516
    Top = 30
  end
end
