object frm_demonstrativo: Tfrm_demonstrativo
  Left = 65
  Top = 91
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Demonstrativo de Comiss'#227'o por Vendedor'
  ClientHeight = 558
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 804
    Height = 553
    ActivePage = ts_filtros
    Align = alTop
    TabOrder = 0
    object ts_filtros: TTabSheet
      Caption = 'Filtros'
      object pnl_demonstrativo: TPanel
        Left = -8
        Top = -3
        Width = 788
        Height = 515
        BevelInner = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 10
          Top = 72
          Width = 109
          Height = 14
          Caption = 'Per'#237'odo Final.......'
        end
        object Label2: TLabel
          Left = 10
          Top = 51
          Width = 109
          Height = 14
          Caption = 'Per'#237'odo Incial......'
        end
        object Label1: TLabel
          Left = 10
          Top = 31
          Width = 106
          Height = 14
          Caption = 'Vendedor............'
        end
        object btn_relcomissao: TBitBtn
          Left = 634
          Top = 420
          Width = 134
          Height = 28
          Cursor = crHandPoint
          Caption = 'Gerar Comiss'#227'o'
          TabOrder = 4
          OnClick = btn_relcomissaoClick
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
        object BtnSair: TBitBtn
          Left = 634
          Top = 477
          Width = 134
          Height = 25
          Cursor = crHandPoint
          Caption = '&Sair'
          TabOrder = 2
          OnClick = BtnSairClick
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
        object BtnImprimir: TBitBtn
          Left = 634
          Top = 450
          Width = 134
          Height = 25
          Cursor = crHandPoint
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = BtnImprimirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object GroupBox2: TGroupBox
          Left = 5
          Top = 373
          Width = 556
          Height = 140
          Caption = 'Totaliza'#231#227'o Geral'
          TabOrder = 3
          object StaticText1: TStaticText
            Left = 5
            Top = 15
            Width = 94
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor Total'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 5
            Top = 32
            Width = 94
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Vlr. Entrada'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object StaticText3: TStaticText
            Left = 5
            Top = 49
            Width = 94
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Vlr. Parcelado'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object StaticText4: TStaticText
            Left = 5
            Top = 66
            Width = 94
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Comiss'#227'o Ent.'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object parc1: TStaticText
            Left = 269
            Top = 15
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 1 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object parc2: TStaticText
            Left = 269
            Top = 32
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 2 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 5
          end
          object parc3: TStaticText
            Left = 269
            Top = 49
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 3 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object parc4: TStaticText
            Left = 269
            Top = 66
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 4 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object parc5: TStaticText
            Left = 269
            Top = 83
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 5 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object parc6: TStaticText
            Left = 269
            Top = 100
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela 6 Dia:'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
          object StaticText11: TStaticText
            Left = 269
            Top = 117
            Width = 165
            Height = 18
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Comiss'#227'o         '
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object st_vlrtotal: TStaticText
            Left = 98
            Top = 15
            Width = 104
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 11
          end
          object st_vlrentrada: TStaticText
            Left = 98
            Top = 32
            Width = 104
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 12
          end
          object st_vlrparcelado: TStaticText
            Left = 98
            Top = 49
            Width = 104
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 13
          end
          object st_vlrcomissao: TStaticText
            Left = 98
            Top = 66
            Width = 104
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 14
          end
          object st_vlrparcela1: TStaticText
            Left = 433
            Top = 15
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 15
          end
          object st_vlrparcela2: TStaticText
            Left = 433
            Top = 32
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 16
          end
          object st_vlrparcela3: TStaticText
            Left = 433
            Top = 49
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 17
          end
          object st_vlrparcela4: TStaticText
            Left = 433
            Top = 66
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 18
          end
          object st_vlrparcela5: TStaticText
            Left = 433
            Top = 83
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 19
          end
          object st_vlrparcela6: TStaticText
            Left = 433
            Top = 100
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 20
          end
          object st_vlrtotalcomissao: TStaticText
            Left = 433
            Top = 117
            Width = 94
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '0,00'
            Color = clMoneyGreen
            ParentColor = False
            TabOrder = 21
          end
        end
        object DBGrid1: TDBGrid
          Left = -12
          Top = 120
          Width = 781
          Height = 251
          DataSource = Src_Comis
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CHAVEPED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODCLI'
              Title.Caption = 'C'#243'digo Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CRAZAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALTIT'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ENTRADA'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlrparcelado'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'perc_comis'
              Title.Alignment = taCenter
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_ENT'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'totalpacela'
              Title.Alignment = taCenter
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P01'
              Title.Alignment = taCenter
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P02'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P03'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P04'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P05'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMIS_P06'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTCOM'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object NOMEVEN: TEdit
          Left = 198
          Top = 23
          Width = 353
          Height = 22
          Color = 10930928
          ReadOnly = True
          TabOrder = 5
          Text = 'NOMEVEN'
        end
        object DATAIN: TDateEdit
          Left = 125
          Top = 45
          Width = 110
          Height = 21
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 6
          OnExit = DATAINExit
        end
        object chk_comissao: TCheckBox
          Left = 240
          Top = 50
          Width = 215
          Height = 17
          Caption = 'Manipular Comiss'#227'o Vendedor'
          TabOrder = 7
          OnClick = chk_comissaoClick
        end
        object DATAFIN: TDateEdit
          Left = 125
          Top = 65
          Width = 110
          Height = 21
          NumGlyphs = 2
          TabOrder = 8
          OnExit = DATAFINExit
        end
        object edtComissao: TCurrencyEdit
          Left = 456
          Top = 47
          Width = 96
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          TabOrder = 9
        end
        object bbCalcular: TBitBtn
          Left = 315
          Top = 85
          Width = 151
          Height = 25
          Cursor = crHandPoint
          Caption = 'Calcular Comiss'#227'o'
          TabOrder = 10
          OnClick = bbCalcularClick
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
        object CODVEN: TEdit
          Left = 126
          Top = 23
          Width = 72
          Height = 22
          TabOrder = 11
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
      end
    end
    object ts_relatorio: TTabSheet
      Caption = 'Layout'
      ImageIndex = 1
      object rl_comissao: TRLReport
        Left = 1
        Top = 6
        Width = 1123
        Height = 794
        DataSource = Src_Comis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        Title = 'Demonstrativo de Comiss'#227'o por Vendedor'
        BeforePrint = rl_comissaoBeforePrint
        object RLBand2: TRLBand
          Left = 19
          Top = 85
          Width = 1085
          Height = 17
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          object lbl_total: TRLLabel
            Left = 334
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_entrada: TRLLabel
            Left = 409
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Vlr. Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcelamento: TRLLabel
            Left = 481
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Vlr. Parcelado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_perc: TRLLabel
            Left = 555
            Top = 0
            Width = 40
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '% Com.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_comissaoent: TRLLabel
            Left = 594
            Top = 0
            Width = 66
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Comiss'#227'o Ent.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_qtde: TRLLabel
            Left = 659
            Top = 0
            Width = 26
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'QTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela1: TRLLabel
            Left = 684
            Top = 0
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela2: TRLLabel
            Left = 730
            Top = 0
            Width = 52
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela3: TRLLabel
            Left = 780
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela6: TRLLabel
            Left = 947
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela5: TRLLabel
            Left = 893
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_parcela4: TRLLabel
            Left = 838
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_comissao: TRLLabel
            Left = 1001
            Top = 0
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Comis'#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_codigo: TRLLabel
            Left = 74
            Top = 0
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Cod.Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_nome: TRLLabel
            Left = 127
            Top = 0
            Width = 208
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Raz'#227'o Social'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_pedido: TRLLabel
            Left = 1
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Chave Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 19
          Top = 102
          Width = 1085
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AfterPrint = RLBand3AfterPrint
          BeforePrint = RLBand3BeforePrint
          object RLDBText1: TRLDBText
            Left = 334
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'VALTIT'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_total
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 409
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'VLR_ENTRADA'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_entrada
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 481
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'vlrparcelado'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcelamento
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 555
            Top = 0
            Width = 40
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'perc_comis'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_perc
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 594
            Top = 0
            Width = 66
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_ENT'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissaoent
            ParentFont = False
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText6: TRLDBText
            Left = 659
            Top = 0
            Width = 26
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'totalpacela'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_qtde
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 684
            Top = 0
            Width = 48
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P01'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela1
            ParentFont = False
            BeforePrint = RLDBText7BeforePrint
          end
          object RLDBText8: TRLDBText
            Left = 730
            Top = 0
            Width = 52
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P02'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela2
            ParentFont = False
            BeforePrint = RLDBText8BeforePrint
          end
          object RLDBText9: TRLDBText
            Left = 780
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P03'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela3
            ParentFont = False
            BeforePrint = RLDBText9BeforePrint
          end
          object RLDBText10: TRLDBText
            Left = 838
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P04'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela4
            ParentFont = False
            BeforePrint = RLDBText10BeforePrint
          end
          object RLDBText11: TRLDBText
            Left = 893
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P05'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela5
            ParentFont = False
            BeforePrint = RLDBText11BeforePrint
          end
          object RLDBText12: TRLDBText
            Left = 947
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'COMIS_P06'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela6
            ParentFont = False
            BeforePrint = RLDBText12BeforePrint
          end
          object RLDBText13: TRLDBText
            Left = 1001
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'TOTCOM'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissao
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 127
            Top = 0
            Width = 208
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'CRAZAO'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_nome
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 74
            Top = 0
            Width = 54
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'CODCLI'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_codigo
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 1
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'CHAVEPED'
            DataSource = Src_Comis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_pedido
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 19
          Top = 146
          Width = 1085
          Height = 19
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          object RLLabel6: TRLLabel
            Left = 334
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_total
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 409
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Vlr. Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_entrada
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 481
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Vlr. Parcelado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcelamento
            ParentFont = False
          end
          object tot_perc: TRLLabel
            Left = 555
            Top = 0
            Width = 40
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_perc
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 594
            Top = 0
            Width = 66
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Comiss'#227'o Ent.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissaoent
            ParentFont = False
          end
          object tot_qtde: TRLLabel
            Left = 659
            Top = 0
            Width = 26
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_qtde
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 684
            Top = 0
            Width = 48
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela1
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 730
            Top = 0
            Width = 52
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela2
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 780
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela3
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 838
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela4
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 893
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela5
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 947
            Top = 0
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Parcela 6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela6
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 1001
            Top = 0
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Comis'#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissao
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = -1
            Top = 0
            Width = 336
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 19
          Top = 165
          Width = 1085
          Height = 18
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          BeforePrint = RLBand5BeforePrint
          object st_totalizacao: TRLLabel
            Left = 334
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_total
            ParentFont = False
          end
          object st_entrada: TRLLabel
            Left = 409
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'st_totalizacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_entrada
            ParentFont = False
          end
          object st_parcelado: TRLLabel
            Left = 481
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'st_totalizacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcelamento
            ParentFont = False
          end
          object st_comissaoent: TRLLabel
            Left = 594
            Top = 0
            Width = 66
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissaoent
            ParentFont = False
          end
          object st_parcela1: TRLLabel
            Left = 684
            Top = 0
            Width = 48
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela1
            ParentFont = False
          end
          object st_parcela2: TRLLabel
            Left = 730
            Top = 0
            Width = 52
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela2
            ParentFont = False
          end
          object st_parcela3: TRLLabel
            Left = 780
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela3
            ParentFont = False
          end
          object st_parcela4: TRLLabel
            Left = 838
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela4
            ParentFont = False
          end
          object st_parcela5: TRLLabel
            Left = 893
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela5
            ParentFont = False
          end
          object st_parcela6: TRLLabel
            Left = 947
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_parcela6
            ParentFont = False
          end
          object st_totalcomissao: TRLLabel
            Left = 1001
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_comissao
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 19
          Top = 119
          Width = 1085
          Height = 27
          BandType = btSummary
          object RLLabel5: TRLLabel
            Left = 480
            Top = 5
            Width = 94
            Height = 16
            Caption = 'Totaliza'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand1: TRLBand
          Left = 19
          Top = 19
          Width = 1085
          Height = 66
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 0
            Top = 1
            Width = 502
            Height = 24
            Caption = 'DEMONSTRATIVO DE COMISS'#195'O POR VENDEDOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 0
            Top = 25
            Width = 59
            Height = 16
            Caption = 'Vendedor'
          end
          object RLLabel3: TRLLabel
            Left = 0
            Top = 45
            Width = 48
            Height = 16
            Caption = 'Periodo'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 997
            Top = 45
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLLabel4: TRLLabel
            Left = 972
            Top = 45
            Width = 44
            Height = 16
            Caption = 'Pagina'
          end
          object rl_vendedor: TRLLabel
            Left = 62
            Top = 25
            Width = 69
            Height = 16
          end
          object rl_periodo: TRLLabel
            Left = 64
            Top = 45
            Width = 60
            Height = 16
          end
        end
        object rlb_recibo: TRLBand
          Left = 19
          Top = 183
          Width = 1085
          Height = 354
          BandType = btSummary
          BeforePrint = rlb_reciboBeforePrint
          object rl_recebi: TRLLabel
            Left = 74
            Top = 29
            Width = 958
            Height = 24
            Caption = 
              'Recebi de Climatizadores BOMAR os valores especificados acima, r' +
              'eferentes a Comissoes de Vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 339
            Top = 69
            Width = 406
            Height = 16
            AutoSize = False
            Caption = '_________________________________________________________'
          end
          object lbl_nomevendedor: TRLLabel
            Left = 340
            Top = 86
            Width = 406
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '_________________________________________________________'
          end
          object rl_valorparc6: TRLLabel
            Left = 171
            Top = 248
            Width = 132
            Height = 19
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
          end
          object rl_parcela6: TRLLabel
            Left = 10
            Top = 248
            Width = 162
            Height = 19
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
          end
          object rl_parcela5: TRLLabel
            Left = 10
            Top = 230
            Width = 162
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
          object rl_valorparc5: TRLLabel
            Left = 171
            Top = 230
            Width = 132
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object rl_valorparc4: TRLLabel
            Left = 171
            Top = 212
            Width = 132
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object rl_parcela4: TRLLabel
            Left = 10
            Top = 212
            Width = 162
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
          object rl_parcela3: TRLLabel
            Left = 10
            Top = 194
            Width = 162
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
          object rl_valorparc3: TRLLabel
            Left = 171
            Top = 194
            Width = 132
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object rl_valorparc2: TRLLabel
            Left = 171
            Top = 176
            Width = 132
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object rl_parcela2: TRLLabel
            Left = 10
            Top = 176
            Width = 162
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
          object rl_parcela1: TRLLabel
            Left = 10
            Top = 158
            Width = 162
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
          object rl_valorparc1: TRLLabel
            Left = 171
            Top = 158
            Width = 132
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object rank_nome: TRLMemo
            Left = 335
            Top = 144
            Width = 307
            Height = 192
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Lines.Strings = (
              '')
          end
          object rank_valor: TRLMemo
            Left = 647
            Top = 144
            Width = 109
            Height = 192
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Lines.Strings = (
              '')
          end
          object rank_Perc: TRLMemo
            Left = 758
            Top = 144
            Width = 68
            Height = 192
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Lines.Strings = (
              '')
          end
          object RLLabel11: TRLLabel
            Left = 334
            Top = 127
            Width = 492
            Height = 16
            AutoSize = False
            Caption = 
              'Vendedor                                                        ' +
              '              Valor Total           %%%'
          end
        end
      end
    end
  end
  object Qr_Comis: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_ComisCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(VALTIT) AS VALTIT'
      '       ,sum(TOTCOM) AS TOTCOM'
      '       ,max(CRQTDPARC) AS TOTPARC'
      '       ,min(CRCODEMP) AS CODEMP'
      '       ,sum(ENTRADA) AS VLR_ENTRADA'
      '       ,sum(PARCELA01) AS VLR_PARC01'
      '       ,sum(PARCELA02) AS VLR_PARC02'
      '       ,sum(PARCELA03) AS VLR_PARC03'
      '       ,sum(PARCELA04) AS VLR_PARC04'
      '       ,sum(PARCELA05) AS VLR_PARC05'
      '       ,sum(PARCELA06) AS VLR_PARC06'
      '       ,sum(PARCELA07) AS VLR_PARC07'
      '       ,sum(PARCELA08) AS VLR_PARC08'
      '       ,sum(PARCELA09) AS VLR_PARC09'
      '       ,sum(PARCELA10) AS VLR_PARC10'
      '       ,sum(PARCELA11) AS VLR_PARC11'
      ''
      '       ,sum(COMIS_ENT) AS COMIS_ENT'
      '       ,sum(COMIS_P01) AS COMIS_P01'
      '       ,sum(COMIS_P02) AS COMIS_P02'
      '       ,sum(COMIS_P03) AS COMIS_P03'
      '       ,sum(COMIS_P04) AS COMIS_P04'
      '       ,sum(COMIS_P05) AS COMIS_P05'
      '       ,sum(COMIS_P06) AS COMIS_P06'
      '       ,sum(COMIS_P07) AS COMIS_P07'
      '       ,sum(COMIS_P08) AS COMIS_P08'
      '       ,sum(COMIS_P09) AS COMIS_P09'
      '       ,sum(COMIS_P10) AS COMIS_P10'
      '       ,sum(COMIS_P11) AS COMIS_P11'
      ''
      '       ,max(LOTCOM_ENT) AS LOTCOM_ENT'
      '       ,max(LOTCOM_P01) AS LOTCOM_P01'
      '       ,max(LOTCOM_P02) AS LOTCOM_P02'
      '       ,max(LOTCOM_P03) AS LOTCOM_P03'
      '       ,max(LOTCOM_P04) AS LOTCOM_P04'
      '       ,max(LOTCOM_P05) AS LOTCOM_P05'
      '       ,max(LOTCOM_P06) AS LOTCOM_P06'
      '       ,max(LOTCOM_P07) AS LOTCOM_P07'
      '       ,max(LOTCOM_P08) AS LOTCOM_P08'
      '       ,max(LOTCOM_P09) AS LOTCOM_P09'
      '       ,max(LOTCOM_P10) AS LOTCOM_P10'
      '       ,max(LOTCOM_P11) AS LOTCOM_P11'
      '       ,CRCODCLI AS CODCLI'
      '       ,CRCODVEN AS CODVEN'
      '       ,CRNUMERO AS NUMNF'
      '       ,CRDTEMIS AS DATANF'
      '       ,CRNPED AS CHAVEPED'
      '       ,CRORDEM AS ORDEMPED'
      '       ,CRAZAO'
      '       ,CCIDADE,CUF'
      '       FROM LDC,CADCLI'
      '       where CCODCLI=CRCODCLI'
      '       group by CRCODCLI'
      '       ,CRCODVEN'
      '       ,CRNUMERO'
      '       ,CRDTEMIS'
      '       ,CRNPED'
      '       ,CRORDEM'
      '       ,CRAZAO'
      '       ,CCIDADE,CUF'
      '')
    UpdateObject = U_Comis
    Left = 485
    Top = 80
    object Qr_ComisVALTIT: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALTIT'
      Origin = 'SG_ASSOC.LDC.VALTIT'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisTOTCOM: TFloatField
      DisplayLabel = 'Comiss'#245'es'
      FieldName = 'TOTCOM'
      Origin = 'SG_ASSOC.LDC.TOTCOM'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisTOTPARC: TFloatField
      DisplayLabel = 'QTD'
      FieldName = 'TOTPARC'
      Origin = 'SG_ASSOC.LDC.CRQTDPARC'
    end
    object Qr_ComisCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.LDC.CRCODEMP'
    end
    object Qr_ComisVLR_ENTRADA: TFloatField
      DisplayLabel = 'Vlr. Entrada'
      FieldName = 'VLR_ENTRADA'
      Origin = 'SG_ASSOC.LDC.ENTRADA'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisVLR_PARC01: TFloatField
      DisplayLabel = 'Vlr. Parcela 1'
      FieldName = 'VLR_PARC01'
      Origin = 'SG_ASSOC.LDC.PARCELA01'
    end
    object Qr_ComisVLR_PARC02: TFloatField
      DisplayLabel = 'Vlr. Parcela 2'
      FieldName = 'VLR_PARC02'
      Origin = 'SG_ASSOC.LDC.PARCELA02'
    end
    object Qr_ComisVLR_PARC03: TFloatField
      DisplayLabel = 'Vlr. Parcela 3'
      FieldName = 'VLR_PARC03'
      Origin = 'SG_ASSOC.LDC.PARCELA03'
    end
    object Qr_ComisVLR_PARC04: TFloatField
      DisplayLabel = 'Vlr. Parcela 4'
      FieldName = 'VLR_PARC04'
      Origin = 'SG_ASSOC.LDC.PARCELA04'
    end
    object Qr_ComisVLR_PARC05: TFloatField
      DisplayLabel = 'Vlr. Parcela 5'
      FieldName = 'VLR_PARC05'
      Origin = 'SG_ASSOC.LDC.PARCELA05'
    end
    object Qr_ComisVLR_PARC06: TFloatField
      DisplayLabel = 'Vlr. Parcela 6'
      FieldName = 'VLR_PARC06'
      Origin = 'SG_ASSOC.LDC.PARCELA06'
    end
    object Qr_ComisVLR_PARC07: TFloatField
      FieldName = 'VLR_PARC07'
      Origin = 'SG_ASSOC.LDC.PARCELA07'
    end
    object Qr_ComisVLR_PARC08: TFloatField
      FieldName = 'VLR_PARC08'
      Origin = 'SG_ASSOC.LDC.PARCELA08'
    end
    object Qr_ComisVLR_PARC09: TFloatField
      FieldName = 'VLR_PARC09'
      Origin = 'SG_ASSOC.LDC.PARCELA09'
    end
    object Qr_ComisVLR_PARC10: TFloatField
      FieldName = 'VLR_PARC10'
      Origin = 'SG_ASSOC.LDC.PARCELA10'
    end
    object Qr_ComisVLR_PARC11: TFloatField
      FieldName = 'VLR_PARC11'
      Origin = 'SG_ASSOC.LDC.PARCELA11'
    end
    object Qr_ComisCOMIS_ENT: TFloatField
      DisplayLabel = 'Comiss'#227'o Ent.'
      FieldName = 'COMIS_ENT'
      Origin = 'SG_ASSOC.LDC.COMIS_ENT'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P01: TFloatField
      DisplayLabel = 'Parcela 1'
      FieldName = 'COMIS_P01'
      Origin = 'SG_ASSOC.LDC.COMIS_P01'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P02: TFloatField
      DisplayLabel = 'Parcela 2'
      FieldName = 'COMIS_P02'
      Origin = 'SG_ASSOC.LDC.COMIS_P02'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P03: TFloatField
      DisplayLabel = 'Parcela 3'
      FieldName = 'COMIS_P03'
      Origin = 'SG_ASSOC.LDC.COMIS_P03'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P04: TFloatField
      DisplayLabel = 'Parcela 4'
      FieldName = 'COMIS_P04'
      Origin = 'SG_ASSOC.LDC.COMIS_P04'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P05: TFloatField
      DisplayLabel = 'Parcela 5'
      FieldName = 'COMIS_P05'
      Origin = 'SG_ASSOC.LDC.COMIS_P05'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P06: TFloatField
      DisplayLabel = 'Parcela 6'
      FieldName = 'COMIS_P06'
      Origin = 'SG_ASSOC.LDC.COMIS_P06'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_ComisCOMIS_P07: TFloatField
      FieldName = 'COMIS_P07'
      Origin = 'SG_ASSOC.LDC.COMIS_P07'
    end
    object Qr_ComisCOMIS_P08: TFloatField
      FieldName = 'COMIS_P08'
      Origin = 'SG_ASSOC.LDC.COMIS_P08'
    end
    object Qr_ComisCOMIS_P09: TFloatField
      FieldName = 'COMIS_P09'
      Origin = 'SG_ASSOC.LDC.COMIS_P09'
    end
    object Qr_ComisCOMIS_P10: TFloatField
      FieldName = 'COMIS_P10'
      Origin = 'SG_ASSOC.LDC.COMIS_P10'
    end
    object Qr_ComisCOMIS_P11: TFloatField
      FieldName = 'COMIS_P11'
      Origin = 'SG_ASSOC.LDC.COMIS_P11'
    end
    object Qr_ComisLOTCOM_ENT: TFloatField
      FieldName = 'LOTCOM_ENT'
      Origin = 'SG_ASSOC.LDC.LOTCOM_ENT'
    end
    object Qr_ComisLOTCOM_P01: TFloatField
      FieldName = 'LOTCOM_P01'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P01'
    end
    object Qr_ComisLOTCOM_P02: TFloatField
      FieldName = 'LOTCOM_P02'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P02'
    end
    object Qr_ComisLOTCOM_P03: TFloatField
      FieldName = 'LOTCOM_P03'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P03'
    end
    object Qr_ComisLOTCOM_P04: TFloatField
      FieldName = 'LOTCOM_P04'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P04'
    end
    object Qr_ComisLOTCOM_P05: TFloatField
      FieldName = 'LOTCOM_P05'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P05'
    end
    object Qr_ComisLOTCOM_P06: TFloatField
      FieldName = 'LOTCOM_P06'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P06'
    end
    object Qr_ComisLOTCOM_P07: TFloatField
      FieldName = 'LOTCOM_P07'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P07'
    end
    object Qr_ComisLOTCOM_P08: TFloatField
      FieldName = 'LOTCOM_P08'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P08'
    end
    object Qr_ComisLOTCOM_P09: TFloatField
      FieldName = 'LOTCOM_P09'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P09'
    end
    object Qr_ComisLOTCOM_P10: TFloatField
      FieldName = 'LOTCOM_P10'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P10'
    end
    object Qr_ComisLOTCOM_P11: TFloatField
      FieldName = 'LOTCOM_P11'
      Origin = 'SG_ASSOC.LDC.LOTCOM_P11'
    end
    object Qr_ComisCODCLI: TFloatField
      FieldName = 'CODCLI'
      Origin = 'SG_ASSOC.LDC.CRCODCLI'
    end
    object Qr_ComisCODVEN: TFloatField
      FieldName = 'CODVEN'
      Origin = 'SG_ASSOC.LDC.CRCODVEN'
    end
    object Qr_ComisNUMNF: TFloatField
      FieldName = 'NUMNF'
      Origin = 'SG_ASSOC.LDC.CRNUMERO'
    end
    object Qr_ComisDATANF: TDateTimeField
      FieldName = 'DATANF'
      Origin = 'SG_ASSOC.LDC.CRDTEMIS'
    end
    object Qr_ComisCHAVEPED: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CHAVEPED'
      Origin = 'SG_ASSOC.LDC.CRNPED'
    end
    object Qr_ComisORDEMPED: TFloatField
      FieldName = 'ORDEMPED'
      Origin = 'SG_ASSOC.LDC.CRORDEM'
    end
    object Qr_ComisCRAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_ComisCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_ComisCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_Comisperc_comis: TFloatField
      DisplayLabel = '% Com.'
      FieldKind = fkCalculated
      FieldName = 'perc_comis'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Qr_Comisvlrparcelado: TFloatField
      DisplayLabel = 'Vlr. Parcelado'
      FieldKind = fkCalculated
      FieldName = 'vlrparcelado'
      Calculated = True
    end
    object Qr_ComisSEL_ENT: TStringField
      FieldName = 'SEL_ENT'
      Size = 1
    end
    object Qr_ComisSEL_P01: TStringField
      FieldName = 'SEL_P01'
      Size = 1
    end
    object Qr_ComisSEL_P02: TStringField
      FieldName = 'SEL_P02'
      Size = 1
    end
    object Qr_ComisSEL_P03: TStringField
      FieldName = 'SEL_P03'
      Size = 1
    end
    object Qr_ComisSEL_P04: TStringField
      FieldName = 'SEL_P04'
      Size = 1
    end
    object Qr_ComisSEL_P05: TStringField
      FieldName = 'SEL_P05'
      Size = 1
    end
    object Qr_ComisSEL_P06: TStringField
      FieldName = 'SEL_P06'
      Size = 1
    end
    object Qr_ComisSEL_P07: TStringField
      FieldName = 'SEL_P07'
      Size = 1
    end
    object Qr_ComisSEL_P08: TStringField
      FieldName = 'SEL_P08'
      Size = 1
    end
    object Qr_ComisSEL_P09: TStringField
      FieldName = 'SEL_P09'
      Size = 1
    end
    object Qr_ComisSEL_P10: TStringField
      FieldName = 'SEL_P10'
      Size = 1
    end
    object Qr_ComisSEL_P11: TStringField
      FieldName = 'SEL_P11'
      Size = 1
    end
    object Qr_Comistotalpacela: TIntegerField
      DisplayLabel = 'QTDE'
      FieldKind = fkCalculated
      FieldName = 'totalpacela'
      Calculated = True
    end
  end
  object Src_Comis: TDataSource
    DataSet = Qr_Comis
    Left = 520
    Top = 80
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 550
    Top = 80
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 579
    Top = 80
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 609
    Top = 80
  end
  object U_Comis: TUpdateSQL
    Left = 654
    Top = 85
  end
end
