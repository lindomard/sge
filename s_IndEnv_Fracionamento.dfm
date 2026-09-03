object Frm_IndEnv_Fracionamento: TFrm_IndEnv_Fracionamento
  Left = 1
  Top = 49
  Width = 1233
  Height = 625
  Caption = 'Fracionamento de Produtos Acabados'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1225
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Fracionamento de Produtos'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 96
    Width = 1225
    Height = 461
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Panel2: TPanel
        Left = 0
        Top = 26
        Width = 1217
        Height = 175
        Align = alTop
        TabOrder = 0
        object gbprodfracionar: TGroupBox
          Left = 1
          Top = 1
          Width = 616
          Height = 173
          Align = alLeft
          Caption = 'Produto a Ser Fracionado:'
          Color = 13816575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label10: TLabel
            Left = 237
            Top = 96
            Width = 237
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade de Kilograma/Litros Faltando:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 237
            Top = 112
            Width = 237
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Percentual de Perdas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 237
            Top = 79
            Width = 237
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Estqoue do Produto Selecionado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object StaticText1: TStaticText
            Left = 2
            Top = 18
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 213
            Top = 18
            Width = 309
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object StaticText3: TStaticText
            Left = 520
            Top = 18
            Width = 93
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object StaticText4: TStaticText
            Left = 81
            Top = 18
            Width = 50
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object StaticText5: TStaticText
            Left = 179
            Top = 18
            Width = 35
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DB_CF_CODPRO: TDBEdit
            Left = 2
            Top = 34
            Width = 80
            Height = 19
            Ctl3D = False
            DataField = 'CF_CODPRO'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = DB_CF_CODPROEnter
            OnExit = DB_CF_CODPROExit
            OnKeyDown = DB_CF_CODPROKeyDown
            OnKeyPress = DB_CF_CODPROKeyPress
          end
          object DB_CF_QTD: TDBEdit
            Left = 81
            Top = 34
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'CF_QTD'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            TabOrder = 6
            OnExit = DB_CF_QTDExit
          end
          object DB_undpro: TDBEdit
            Left = 178
            Top = 34
            Width = 36
            Height = 19
            Color = 16765650
            Ctl3D = False
            DataField = 'undpro'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object DB_nompro: TDBEdit
            Left = 213
            Top = 34
            Width = 309
            Height = 19
            Color = 16765650
            Ctl3D = False
            DataField = 'nompro'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object DB_marcapro: TDBEdit
            Left = 520
            Top = 34
            Width = 93
            Height = 19
            Color = 16765650
            Ctl3D = False
            DataField = 'marcapro'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
          object lbl_qtdfalta: TStaticText
            Left = 481
            Top = 95
            Width = 55
            Height = 17
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0'
            TabOrder = 11
          end
          object StaticText6: TStaticText
            Left = 130
            Top = 18
            Width = 50
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Perdas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object DBE_CF_QTD_PERDAS: TDBEdit
            Left = 130
            Top = 34
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'CF_QTD_PERDAS'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            TabOrder = 7
            OnExit = DBE_CF_QTD_PERDASExit
          end
          object lbl_percperdas: TStaticText
            Left = 481
            Top = 111
            Width = 55
            Height = 17
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0'
            TabOrder = 13
          end
          object StaticText7: TStaticText
            Left = 3
            Top = 52
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object DBE_CF_DTVCTO: TDBEdit
            Left = 458
            Top = 52
            Width = 80
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'CF_DTVCTO'
            DataSource = src_Frac01_Fracionar
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 15
            OnEnter = DB_CF_CODPROEnter
            OnExit = DB_CF_CODPROExit
            OnKeyDown = DB_CF_CODPROKeyDown
            OnKeyPress = DB_CF_CODPROKeyPress
          end
          object StaticText8: TStaticText
            Left = 308
            Top = 52
            Width = 141
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
          object DBCb_CF_LOTE: TDBComboBox
            Left = 82
            Top = 51
            Width = 223
            Height = 21
            DataField = 'CF_LOTE'
            DataSource = src_Frac01_Fracionar
            ItemHeight = 13
            TabOrder = 17
            OnClick = DBCb_CF_LOTEClick
          end
          object BitBtn1: TBitBtn
            Left = 538
            Top = 53
            Width = 75
            Height = 25
            TabOrder = 18
            OnClick = BitBtn1Click
            Kind = bkOK
          end
          object lbl_estoque: TStaticText
            Left = 481
            Top = 79
            Width = 55
            Height = 17
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0'
            TabOrder = 19
          end
          object GroupBox3: TGroupBox
            Left = 5
            Top = 70
            Width = 236
            Height = 101
            Caption = 'Lotes Existentes:'
            TabOrder = 20
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 232
              Height = 84
              Align = alClient
              DataSource = src_lotes
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CLNUMERO'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLDTVCTO'
                  Title.Alignment = taCenter
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLQTD'
                  Title.Alignment = taCenter
                  Width = 50
                  Visible = True
                end>
            end
          end
        end
        object gb_frac_embalagem: TGroupBox
          Left = 617
          Top = 1
          Width = 599
          Height = 173
          Align = alClient
          Caption = 'Embalagens:'
          Color = 13816575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object DBGrid_CADFRAC02_EMB: TDBGrid
            Left = 2
            Top = 15
            Width = 595
            Height = 156
            Align = alClient
            Color = 13816575
            DataSource = src_frac_embalagem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid_CADFRAC02_EMBDblClick
            OnExit = DBGrid_CADFRAC02_EMBExit
            Columns = <
              item
                Expanded = False
                FieldName = 'CFE_CODMP'
                Title.Alignment = taCenter
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MP_QTD'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'undpro'
                Title.Alignment = taCenter
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nompro'
                Title.Alignment = taCenter
                Width = 192
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'marcapro'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MP_UTILIZA'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tipo'
                Title.Alignment = taCenter
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFE_LOTE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFE_DTVCTO'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      object Panel_novos: TPanel
        Left = 0
        Top = 201
        Width = 1217
        Height = 232
        Align = alClient
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 616
          Height = 230
          Align = alLeft
          Caption = 'Produto Novo:'
          Color = 13434828
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object DBGrid_CADFRAC03_PN: TDBGrid
            Left = 2
            Top = 15
            Width = 612
            Height = 184
            Align = alClient
            Color = 13434828
            DataSource = src_CADFRAC03_PN
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnColEnter = DBGrid_CADFRAC03_PNColEnter
            OnColExit = DBGrid_CADFRAC03_PNColExit
            OnKeyDown = DBGrid_CADFRAC03_PNKeyDown
            OnKeyPress = DBGrid_CADFRAC03_PNKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'PN_CODPRO'
                Title.Alignment = taCenter
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PN_QTD'
                Title.Alignment = taCenter
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PN_QTD_PERDAS'
                Title.Alignment = taCenter
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'undpro'
                Title.Alignment = taCenter
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nompro'
                Title.Alignment = taCenter
                Width = 198
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'marcapro'
                Title.Alignment = taCenter
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PN_LOTE'
                Title.Alignment = taCenter
                Width = 42
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PN_DTVCTO'
                Title.Alignment = taCenter
                Width = 79
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 2
            Top = 199
            Width = 612
            Height = 29
            Align = alBottom
            TabOrder = 1
            object bbexcluir_CADFRAC03_PN: TBitBtn
              Left = 236
              Top = 3
              Width = 90
              Height = 26
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = bbexcluir_CADFRAC03_PNClick
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
        object GroupBox2: TGroupBox
          Left = 617
          Top = 1
          Width = 599
          Height = 230
          Align = alClient
          Caption = 'Embalagens:'
          Color = 13434828
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object DBGrid_CADFRAC04_PNE: TDBGrid
            Left = 2
            Top = 15
            Width = 595
            Height = 213
            Align = alClient
            Color = 13434828
            DataSource = src_CADFRAC04_PNE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnColEnter = DBGrid_CADFRAC04_PNEColEnter
            Columns = <
              item
                Expanded = False
                FieldName = 'PNE_CODMP'
                Title.Alignment = taCenter
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PNE_QTD'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nompro'
                Title.Alignment = taCenter
                Width = 168
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'undpro'
                Title.Alignment = taCenter
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'marcapro'
                Title.Alignment = taCenter
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tipo'
                Title.Alignment = taCenter
                Width = 114
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PNE_LOTE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PNE_DTVCTO'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1217
        Height = 26
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 9
          Top = 4
          Width = 41
          Height = 13
          Caption = 'Chave:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 119
          Top = 4
          Width = 74
          Height = 13
          Caption = 'Data e Hora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 337
          Top = 4
          Width = 49
          Height = 13
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 461
          Top = 4
          Width = 62
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 827
          Top = 4
          Width = 40
          Height = 13
          Caption = 'Marca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 963
          Top = 4
          Width = 32
          Height = 13
          Caption = 'Qtde:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 1075
          Top = 4
          Width = 52
          Height = 13
          Caption = 'Unidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_CF_CODPRO: TDBEdit
          Left = 392
          Top = 1
          Width = 63
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'CF_CODPRO'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBE_CF_CHAVE_OP: TDBEdit
          Left = 53
          Top = 1
          Width = 63
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'CF_CHAVE'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBE_CF_DATHOR: TDBEdit
          Left = 201
          Top = 1
          Width = 130
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'CF_DATHOR'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBE_nompro: TDBEdit
          Left = 522
          Top = 1
          Width = 300
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'nompro'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBE_marcapro: TDBEdit
          Left = 872
          Top = 1
          Width = 79
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'marcapro'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object dbe_CF_QTD: TDBEdit
          Left = 997
          Top = 1
          Width = 70
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'CF_QTD'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBE_undpro: TDBEdit
          Left = 1128
          Top = 1
          Width = 70
          Height = 19
          Color = 16772313
          Ctl3D = False
          DataField = 'undpro'
          DataSource = src_Frac01_Fracionar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object tsLista: TTabSheet
      Caption = 'Lista'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1209
        Height = 426
        Align = alClient
        DataSource = src_Frac01_Fracionar
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CF_CHAVE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF_DATHOR'
            Title.Alignment = taCenter
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF_CODPRO'
            Title.Alignment = taCenter
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nompro'
            Title.Alignment = taCenter
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'marcapro'
            Title.Alignment = taCenter
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'undpro'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF_QTD'
            Title.Alignment = taCenter
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CF_CHAVE_OP'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end>
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 40
        Top = -16
        Width = 794
        Height = 1123
        DataSource = src_rel_frac01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 91
          BandType = btHeader
          object RLImage_logo: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 91
            Align = faLeft
            Stretch = True
          end
          object lblcab_empresa: TRLLabel
            Left = 112
            Top = 3
            Width = 603
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lblcab_obsrel: TRLLabel
            Left = 112
            Top = 44
            Width = 361
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Relatorio de Fracionamento de Produtos'
          end
          object lblcab_dathor_emi: TRLLabel
            Left = 485
            Top = 66
            Width = 230
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 599
            Top = 46
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 681
            Top = 46
            Width = 32
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lblcab_fantasia: TRLLabel
            Left = 112
            Top = 22
            Width = 603
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlcab_obs: TRLLabel
            Left = 112
            Top = 65
            Width = 361
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Relatorio de Fracionamento de Produtos'
          end
        end
        object RLBand_detfrac01: TRLBand
          Left = 38
          Top = 129
          Width = 718
          Height = 16
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 145
          Width = 718
          Height = 75
          DataSource = src_rel_frac01_fracionar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLcabsubdet_frac01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 34
            BandType = btColumnHeader
            object rlcab_frac01_codigo: TRLLabel
              Left = 2
              Top = 17
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object rlcab_frac01_nome: TRLLabel
              Left = 49
              Top = 17
              Width = 182
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_frac01_marca: TRLLabel
              Left = 230
              Top = 17
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object rlcab_frac01_qtde: TRLLabel
              Left = 289
              Top = 17
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Layout = tlCenter
            end
            object rlcab_sep01_det: TRLLabel
              Left = 367
              Top = 2
              Width = 12
              Height = 33
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Layout = tlCenter
            end
            object rlcab_frac01_und: TRLLabel
              Left = 328
              Top = 17
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object rlcab_frac02_codigo: TRLLabel
              Left = 384
              Top = 17
              Width = 44
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac02_nompro: TRLLabel
              Left = 428
              Top = 16
              Width = 164
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac02_marcapro: TRLLabel
              Left = 591
              Top = 17
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac02_qtde: TRLLabel
              Left = 647
              Top = 17
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac02_und: TRLLabel
              Left = 687
              Top = 17
              Width = 26
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object lblcab_frac01: TRLLabel
              Left = 5
              Top = 1
              Width = 362
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Produto a Ser Fracionado'
              Layout = tlCenter
            end
            object lblcab_frac02: TRLLabel
              Left = 384
              Top = 1
              Width = 330
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Embalagens que podem ser Reutilizadas'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 34
            Width = 718
            Height = 17
            object rldet_frac01_codigo: TRLDBText
              Left = 2
              Top = -1
              Width = 46
              Height = 16
              AutoSize = False
              DataField = 'frac01_codigo'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac01_codigo
              Layout = tlCenter
            end
            object rldet_frac01_nome: TRLDBText
              Left = 49
              Top = -1
              Width = 182
              Height = 16
              AutoSize = False
              DataField = 'frac01_nome'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac01_nome
              Layout = tlCenter
            end
            object rldet_frac01_marca: TRLDBText
              Left = 230
              Top = -1
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'frac01_marca'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac01_marca
              Layout = tlCenter
            end
            object rldet_frac01_qtde: TRLDBText
              Left = 289
              Top = -1
              Width = 38
              Height = 16
              AutoSize = False
              DataField = 'frac01_qtde'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac01_qtde
              Layout = tlCenter
            end
            object rldet_frac01_und: TRLDBText
              Left = 328
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              DataField = 'frac01_und'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac01_und
              Layout = tlCenter
            end
            object rldet_sep01_det: TRLLabel
              Left = 367
              Top = 1
              Width = 12
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcab_sep01_det
              Layout = tlCenter
            end
            object rldet_frac02_codigo: TRLDBText
              Left = 384
              Top = -1
              Width = 44
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac02_codigo'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac02_codigo
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac02_nompro: TRLDBText
              Left = 428
              Top = -1
              Width = 164
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac02_nompro'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac02_nompro
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac02_marcapro: TRLDBText
              Left = 591
              Top = -1
              Width = 56
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac02_marcapro'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac02_marcapro
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac02_qtde: TRLDBText
              Left = 647
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac02_qtde'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac02_qtde
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac02_und: TRLDBText
              Left = 687
              Top = -1
              Width = 26
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac02_und'
              DataSource = src_rel_frac01_fracionar
              Holder = rlcab_frac02_und
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 38
          Top = 220
          Width = 718
          Height = 64
          DataSource = src_rel_CADFRAC03_PN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 33
            BandType = btColumnHeader
            object rlcab_frac03_codpro: TRLLabel
              Left = 2
              Top = 16
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object rlcab_frac03_nompro: TRLLabel
              Left = 47
              Top = 16
              Width = 182
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_frac03_marca: TRLLabel
              Left = 230
              Top = 16
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object rlcab_frac03_qtde: TRLLabel
              Left = 289
              Top = 16
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Layout = tlCenter
            end
            object rlcab_frac03_und: TRLLabel
              Left = 327
              Top = 16
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object rlcab_frac04_codpro: TRLLabel
              Left = 384
              Top = 16
              Width = 44
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_sep03: TRLLabel
              Left = 367
              Top = 1
              Width = 12
              Height = 31
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Layout = tlCenter
            end
            object rlcab_frac04_nompro: TRLLabel
              Left = 428
              Top = 16
              Width = 164
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac04_marcapro: TRLLabel
              Left = 591
              Top = 16
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac04_qtde: TRLLabel
              Left = 647
              Top = 16
              Width = 38
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rlcab_frac04_und: TRLLabel
              Left = 687
              Top = 16
              Width = 26
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object lblcab_frac03: TRLLabel
              Left = 5
              Top = 1
              Width = 362
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Produto a Ser Envasado'
              Layout = tlCenter
            end
            object lblcab_frac04: TRLLabel
              Left = 384
              Top = 1
              Width = 330
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Embalagens Utilizadas'
              Color = 14680031
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 33
            Width = 718
            Height = 16
            object rldet_frac03_codpro: TRLDBText
              Left = 2
              Top = -1
              Width = 46
              Height = 16
              AutoSize = False
              DataField = 'frac03_codpro'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac03_codpro
              Layout = tlCenter
            end
            object rldet_frac03_nompro: TRLDBText
              Left = 47
              Top = -1
              Width = 182
              Height = 16
              AutoSize = False
              DataField = 'frac03_nompro'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac03_nompro
              Layout = tlCenter
            end
            object rldet_frac03_marca: TRLDBText
              Left = 230
              Top = -1
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'frac03_marca'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac03_marca
              Layout = tlCenter
            end
            object rldet_frac03_qtde: TRLDBText
              Left = 289
              Top = -1
              Width = 38
              Height = 16
              AutoSize = False
              DataField = 'frac03_qtde'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac03_qtde
              Layout = tlCenter
            end
            object rldet_frac03_und: TRLDBText
              Left = 327
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              DataField = 'frac03_und'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac03_und
              Layout = tlCenter
            end
            object rldet_sep03: TRLLabel
              Left = 367
              Top = 0
              Width = 12
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = rlcab_sep03
              Layout = tlCenter
            end
            object rldet_frac04_codpro: TRLDBText
              Left = 384
              Top = -1
              Width = 44
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac04_codpro'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac04_codpro
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac04_nompro: TRLDBText
              Left = 428
              Top = -1
              Width = 164
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac04_nompro'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac04_nompro
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac04_marcapro: TRLDBText
              Left = 591
              Top = -1
              Width = 56
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac04_marcapro'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac04_marcapro
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac04_qtde: TRLDBText
              Left = 647
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac04_qtde'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rldet_frac04_qtde
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
            object rldet_frac04_und: TRLDBText
              Left = 687
              Top = -1
              Width = 26
              Height = 16
              AutoSize = False
              Color = 14680031
              DataField = 'frac04_und'
              DataSource = src_rel_CADFRAC03_PN
              Holder = rlcab_frac04_und
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 45
    Width = 1225
    Height = 51
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 5
      Width = 105
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pesquisar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label62: TLabel
      Left = 1
      Top = 30
      Width = 105
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label63: TLabel
      Left = 241
      Top = 29
      Width = 6
      Height = 13
      Caption = #224
    end
    object cb_tppesq: TComboBox
      Left = 109
      Top = 6
      Width = 252
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      Sorted = True
      TabOrder = 0
      Text = 'Nome do Produto Fracionado'
      Items.Strings = (
        'Codigo do Produto Fracionado'
        'Nome do Produto Fracionado')
    end
    object edt_nomepesq: TEdit
      Left = 362
      Top = 6
      Width = 447
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object bbAtualizar: TBitBtn
      Left = 813
      Top = 6
      Width = 150
      Height = 20
      Caption = 'Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
    object edt_datini: TDateEdit
      Left = 110
      Top = 26
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object edt_datfin: TDateEdit
      Left = 265
      Top = 24
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 557
    Width = 1225
    Height = 37
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 950
      Top = 3
      Width = 90
      Height = 26
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
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
    object bbIncluir: TBitBtn
      Left = 5
      Top = 5
      Width = 90
      Height = 26
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbIncluirClick
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
    object bbCancelar: TBitBtn
      Left = 714
      Top = 4
      Width = 90
      Height = 26
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
    object bbExcluir: TBitBtn
      Left = 804
      Top = 4
      Width = 90
      Height = 26
      Caption = 'Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbExcluirClick
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
    object bbGravar: TBitBtn
      Left = 94
      Top = 5
      Width = 90
      Height = 26
      Caption = 'Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
    object bbImprimir: TBitBtn
      Left = 504
      Top = 5
      Width = 90
      Height = 26
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object DBNavigator2: TDBNavigator
      Left = 184
      Top = 5
      Width = 320
      Height = 26
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = src_Frac01_Fracionar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
  end
  object src_frac_embalagem: TDataSource
    DataSet = Tb_CADFRAC02_EMB
    Left = 272
    Top = 177
  end
  object src_CADFRAC03_PN: TDataSource
    DataSet = tb_CADFRAC03_PN
    OnDataChange = src_CADFRAC03_PNDataChange
    Left = 384
    Top = 137
  end
  object src_CADFRAC04_PNE: TDataSource
    DataSet = Tb_CADFRAC04_PNE
    Left = 688
    Top = 329
  end
  object Tb_CADFRAC04_PNE: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CADFRAC04_PNE
    Left = 712
    Top = 328
    object Tb_CADFRAC04_PNEPNE_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PNE_CODPRO'
    end
    object Tb_CADFRAC04_PNEPNE_QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PNE_QTD'
    end
    object Tb_CADFRAC04_PNEtipo: TStringField
      FieldName = 'tipo'
    end
    object Tb_CADFRAC04_PNEPNE_CHAVE: TFloatField
      FieldName = 'PNE_CHAVE'
    end
    object Tb_CADFRAC04_PNEPNE_CHAVE_ANO: TFloatField
      FieldName = 'PNE_CHAVE_ANO'
    end
    object Tb_CADFRAC04_PNEPNE_CODMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PNE_CODMP'
    end
    object Tb_CADFRAC04_PNEundpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 3
    end
    object Tb_CADFRAC04_PNEnompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 100
    end
    object Tb_CADFRAC04_PNEmarcapro: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'marcapro'
      Size = 100
    end
    object Tb_CADFRAC04_PNEPNE_TIPO: TFloatField
      FieldName = 'PNE_TIPO'
    end
    object Tb_CADFRAC04_PNEPNE_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PNE_LOTE'
    end
    object Tb_CADFRAC04_PNEPNE_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'PNE_DTVCTO'
    end
  end
  object Tb_CADFRAC02_EMB: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_CADFRAC02_EMB
    Left = 208
    Top = 176
    object Tb_CADFRAC02_EMBMP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MP_CODPRO'
    end
    object Tb_CADFRAC02_EMBMP_QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'MP_QTD'
    end
    object Tb_CADFRAC02_EMBundpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 3
    end
    object Tb_CADFRAC02_EMBnompro: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nompro'
      Size = 100
    end
    object Tb_CADFRAC02_EMBmarcapro: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'marcapro'
      Size = 100
    end
    object Tb_CADFRAC02_EMBMP_UTILIZA: TStringField
      DisplayLabel = 'Reutilizar'
      FieldName = 'MP_UTILIZA'
      Size = 5
    end
    object Tb_CADFRAC02_EMBCPTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CPTIPO'
    end
    object Tb_CADFRAC02_EMBtipo: TStringField
      FieldName = 'tipo'
      Size = 40
    end
    object Tb_CADFRAC02_EMBCFE_CHAVE: TFloatField
      FieldName = 'CFE_CHAVE'
    end
    object Tb_CADFRAC02_EMBCFE_CHAVE_ANO: TFloatField
      FieldName = 'CFE_CHAVE_ANO'
    end
    object Tb_CADFRAC02_EMBCFE_CODMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFE_CODMP'
    end
    object Tb_CADFRAC02_EMBCFE_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CFE_LOTE'
    end
    object Tb_CADFRAC02_EMBCFE_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CFE_DTVCTO'
    end
  end
  object u_CADFRAC02_EMB: TUpdateSQL
    Left = 249
    Top = 183
  end
  object Tb_Frac01_Fracionar: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Frac01_FracionarAfterInsert
    AfterEdit = Tb_Frac01_FracionarAfterEdit
    BeforePost = Tb_Frac01_FracionarBeforePost
    AfterPost = Tb_Frac01_FracionarAfterPost
    AfterCancel = Tb_Frac01_FracionarAfterCancel
    AfterDelete = Tb_Frac01_FracionarAfterDelete
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_Frac01_Fracionar
    Left = 56
    Top = 120
    object Tb_Frac01_FracionarCF_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CF_CHAVE'
    end
    object Tb_Frac01_FracionarCF_CHAVE_ANO: TFloatField
      FieldName = 'CF_CHAVE_ANO'
    end
    object Tb_Frac01_FracionarCF_DATHOR: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'CF_DATHOR'
    end
    object Tb_Frac01_FracionarCF_CODUSR: TFloatField
      FieldName = 'CF_CODUSR'
    end
    object Tb_Frac01_FracionarCF_NOMUSR: TStringField
      FieldName = 'CF_NOMUSR'
      Size = 100
    end
    object Tb_Frac01_FracionarCF_NOMCOMPUTADOR: TStringField
      FieldName = 'CF_NOMCOMPUTADOR'
      Size = 100
    end
    object Tb_Frac01_FracionarCF_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'CF_CODPRO'
    end
    object Tb_Frac01_FracionarCF_QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'CF_QTD'
    end
    object Tb_Frac01_FracionarCF_CHAVE_OP: TFloatField
      DisplayLabel = 'Chave OP'
      FieldName = 'CF_CHAVE_OP'
    end
    object Tb_Frac01_FracionarCF_CHAVE_OP_ANO: TFloatField
      FieldName = 'CF_CHAVE_OP_ANO'
    end
    object Tb_Frac01_Fracionarnompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'nompro'
      Size = 100
    end
    object Tb_Frac01_Fracionarundpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 3
    end
    object Tb_Frac01_Fracionarmarcapro: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'marcapro'
      Size = 100
    end
    object Tb_Frac01_Fracionarqtdgrml: TFloatField
      FieldName = 'qtdgrml'
    end
    object Tb_Frac01_Fracionarqtdgrml_total: TFloatField
      FieldName = 'qtdgrml_total'
    end
    object Tb_Frac01_FracionarCF_QTD_PERDAS: TFloatField
      FieldName = 'CF_QTD_PERDAS'
    end
    object Tb_Frac01_Fracionarprazoval_mes: TFloatField
      FieldName = 'prazoval_mes'
    end
    object Tb_Frac01_FracionarCF_DTVCTO: TDateTimeField
      FieldName = 'CF_DTVCTO'
    end
    object Tb_Frac01_FracionarCF_LOTE: TStringField
      FieldName = 'CF_LOTE'
    end
  end
  object src_Frac01_Fracionar: TDataSource
    DataSet = Tb_Frac01_Fracionar
    OnDataChange = src_Frac01_FracionarDataChange
    Left = 248
    Top = 121
  end
  object tb_CADFRAC03_PN: TQuery
    CachedUpdates = True
    AfterInsert = tb_CADFRAC03_PNAfterInsert
    AfterEdit = tb_CADFRAC03_PNAfterEdit
    BeforePost = tb_CADFRAC03_PNBeforePost
    AfterPost = tb_CADFRAC03_PNAfterPost
    BeforeDelete = tb_CADFRAC03_PNBeforeDelete
    AfterDelete = tb_CADFRAC03_PNAfterDelete
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CADFRAC03_PN
    Left = 421
    Top = 120
    object tb_CADFRAC03_PNPN_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PN_CODPRO'
    end
    object tb_CADFRAC03_PNPN_QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PN_QTD'
    end
    object tb_CADFRAC03_PNnompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'nompro'
      Size = 100
    end
    object tb_CADFRAC03_PNundpro: TStringField
      DisplayLabel = 'Und'
      FieldName = 'undpro'
      Size = 3
    end
    object tb_CADFRAC03_PNmarcapro: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'marcapro'
      Size = 100
    end
    object tb_CADFRAC03_PNPN_CHAVE: TFloatField
      FieldName = 'PN_CHAVE'
    end
    object tb_CADFRAC03_PNPN_CHAVE_ANO: TFloatField
      FieldName = 'PN_CHAVE_ANO'
    end
    object tb_CADFRAC03_PNqtdgrml: TFloatField
      FieldName = 'qtdgrml'
    end
    object tb_CADFRAC03_PNqtdgrml_total: TFloatField
      FieldName = 'qtdgrml_total'
    end
    object tb_CADFRAC03_PNPN_QTDUND_MASTER: TFloatField
      FieldName = 'PN_QTDUND_MASTER'
    end
    object tb_CADFRAC03_PNPN_QTD_PERDAS: TFloatField
      DisplayLabel = 'Perdas'
      FieldName = 'PN_QTD_PERDAS'
    end
    object tb_CADFRAC03_PNPN_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PN_LOTE'
    end
    object tb_CADFRAC03_PNPN_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'PN_DTVCTO'
    end
  end
  object U_Frac01_Fracionar: TUpdateSQL
    Left = 125
    Top = 123
  end
  object U_CADFRAC03_PN: TUpdateSQL
    Left = 469
    Top = 117
  end
  object cds_rel_frac01_fracionar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 884
    Top = 192
    object cds_rel_frac01_fracionarfrac01_codigo: TStringField
      FieldName = 'frac01_codigo'
    end
    object cds_rel_frac01_fracionarfrac01_qtde: TStringField
      FieldName = 'frac01_qtde'
    end
    object cds_rel_frac01_fracionarfrac01_und: TStringField
      FieldName = 'frac01_und'
      Size = 3
    end
    object cds_rel_frac01_fracionarfrac01_nome: TStringField
      FieldName = 'frac01_nome'
      Size = 100
    end
    object cds_rel_frac01_fracionarfrac01_marca: TStringField
      FieldName = 'frac01_marca'
      Size = 100
    end
    object cds_rel_frac01_fracionarfrac02_codigo: TStringField
      FieldName = 'frac02_codigo'
    end
    object cds_rel_frac01_fracionarfrac02_qtde: TStringField
      FieldName = 'frac02_qtde'
    end
    object cds_rel_frac01_fracionarfrac02_und: TStringField
      FieldName = 'frac02_und'
      Size = 3
    end
    object cds_rel_frac01_fracionarfrac02_nompro: TStringField
      FieldName = 'frac02_nompro'
      Size = 100
    end
    object cds_rel_frac01_fracionarfrac02_marcapro: TStringField
      FieldName = 'frac02_marcapro'
      Size = 100
    end
    object cds_rel_frac01_fracionarfrac02_reutilizar: TStringField
      FieldName = 'frac02_reutilizar'
      Size = 10
    end
  end
  object src_rel_frac01_fracionar: TDataSource
    DataSet = cds_rel_frac01_fracionar
    Left = 916
    Top = 192
  end
  object cds_rel_CADFRAC03_PN: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 884
    Top = 264
    object cds_rel_CADFRAC03_PNfrac03_codpro: TStringField
      FieldName = 'frac03_codpro'
    end
    object cds_rel_CADFRAC03_PNfrac03_qtde: TStringField
      FieldName = 'frac03_qtde'
    end
    object cds_rel_CADFRAC03_PNfrac03_und: TStringField
      FieldName = 'frac03_und'
      Size = 3
    end
    object cds_rel_CADFRAC03_PNfrac03_nompro: TStringField
      FieldName = 'frac03_nompro'
      Size = 100
    end
    object cds_rel_CADFRAC03_PNfrac03_marca: TStringField
      FieldName = 'frac03_marca'
      Size = 50
    end
    object cds_rel_CADFRAC03_PNfrac04_codpro: TStringField
      FieldName = 'frac04_codpro'
    end
    object cds_rel_CADFRAC03_PNfrac04_und: TStringField
      FieldName = 'frac04_und'
      Size = 3
    end
    object cds_rel_CADFRAC03_PNfrac04_nompro: TStringField
      FieldName = 'frac04_nompro'
      Size = 100
    end
    object cds_rel_CADFRAC03_PNfrac04_marcapro: TStringField
      FieldName = 'frac04_marcapro'
      Size = 50
    end
    object cds_rel_CADFRAC03_PNfrac04_qtde: TStringField
      FieldName = 'frac04_qtde'
    end
    object cds_rel_CADFRAC03_PNfrac03_qtde_perdas: TStringField
      FieldName = 'frac03_qtde_perdas'
    end
  end
  object src_rel_CADFRAC03_PN: TDataSource
    DataSet = cds_rel_CADFRAC03_PN
    Left = 916
    Top = 264
  end
  object cds_rel_frac01: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 892
    Top = 144
    object cds_rel_frac01nompro: TStringField
      FieldName = 'nompro'
      Size = 100
    end
    object cds_rel_frac01codpro: TStringField
      FieldName = 'codpro'
    end
  end
  object src_rel_frac01: TDataSource
    DataSet = cds_rel_frac01
    Left = 924
    Top = 144
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 581
    Top = 123
  end
  object RLWord: TRLRichFilter
    DisplayName = 'Formato (word)RichText'
    Left = 709
    Top = 163
  end
  object mant_tb_CADFRAC03_PN: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 468
    Top = 248
    object mant_tb_CADFRAC03_PNcodpro: TFloatField
      FieldName = 'codpro'
    end
  end
  object Query_lotes: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    Left = 248
    Top = 224
    object Query_lotesCLNUMERO: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CLNUMERO'
    end
    object Query_lotesCLDTVCTO: TDateTimeField
      DisplayLabel = 'Vcto'
      FieldName = 'CLDTVCTO'
    end
    object Query_lotesCLQTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'CLQTD'
    end
  end
  object src_lotes: TDataSource
    DataSet = Query_lotes
    Left = 312
    Top = 225
  end
  object U_CADFRAC04_PNE: TUpdateSQL
    Left = 749
    Top = 330
  end
end
