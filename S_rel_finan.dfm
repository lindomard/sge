object Frm_Rel_Finan: TFrm_Rel_Finan
  Left = 262
  Top = 185
  Width = 327
  Height = 309
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatorio de Vendas, Compras, Entrada e Saida'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Tag = 10
    Left = 0
    Top = 0
    Width = 319
    Height = 278
    ActivePage = TabSheet1
    Align = alClient
    TabHeight = 15
    TabOrder = 0
    TabWidth = 50
    object TabSheet1: TTabSheet
      Tag = 3
      Caption = 'Relatorio de Creditos e Debitos'
      object Panel2: TPanel
        Left = 0
        Top = 210
        Width = 311
        Height = 43
        Align = alBottom
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 2
          Top = 1
          Width = 150
          Height = 40
          Cursor = crHandPoint
          Caption = '&Imprimir'
          TabOrder = 0
          OnClick = BitBtn1Click
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn2: TBitBtn
          Left = 154
          Top = 1
          Width = 153
          Height = 40
          Cursor = crHandPoint
          Caption = '&Sair'
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 311
        Height = 210
        Align = alClient
        TabOrder = 1
        object Label6: TLabel
          Left = 9
          Top = 68
          Width = 56
          Height = 13
          Caption = 'Per'#237'odo de:'
        end
        object Label7: TLabel
          Left = 172
          Top = 67
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label1: TLabel
          Left = 3
          Top = 4
          Width = 50
          Height = 13
          Caption = 'Empresa..:'
        end
        object Label2: TLabel
          Left = 5
          Top = 33
          Width = 71
          Height = 13
          Caption = 'Tipo de Data..:'
        end
        object RGTD: TRadioGroup
          Left = 1
          Top = 90
          Width = 122
          Height = 79
          Hint = 'Filtra duplicatas Pagas, em aberta '#13#10'ou lista todas'
          Caption = 'Listar duplicatas:'
          Color = clBtnFace
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            '&Todas'
            '&Pagas'
            '&N'#227'o Pagas')
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = RGTDClick
        end
        object RG_TIPORES: TRadioGroup
          Left = 179
          Top = 90
          Width = 124
          Height = 79
          Hint = 'Qual a modalidade '#13#10'do resumo'
          Caption = 'Tipo de Resumo:'
          Color = clBtnFace
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Diario'
            'Mensal'
            'Anual')
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object cb_pgpar: TCheckBox
          Left = 2
          Top = 174
          Width = 121
          Height = 17
          Caption = 'Incluir Baixa Parcial'
          Enabled = False
          TabOrder = 5
        end
        object MDT1: TDateEdit
          Left = 69
          Top = 62
          Width = 93
          Height = 21
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 1
          OnExit = MDT1Exit
        end
        object MDT2: TDateEdit
          Left = 189
          Top = 62
          Width = 93
          Height = 21
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 2
          OnExit = MDT2Exit
        end
        object cb_empresas: TComboBox
          Left = 56
          Top = 1
          Width = 225
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'cb_empresas'
        end
        object cb_modelo: TComboBox
          Left = 161
          Top = 172
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 6
          Text = 'Modelo 01'
          OnSelect = cb_modeloSelect
          Items.Strings = (
            'Modelo 01'
            'Modelo 02'
            'Modelo 03')
        end
        object cb_data: TComboBox
          Left = 80
          Top = 28
          Width = 201
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 7
          Text = 'Data de Emiss'#227'o'
          Items.Strings = (
            'Data de Baixa'
            'Data de Emiss'#227'o'
            'Data de Pagamento'
            'Data de Vencimento')
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      object modelo01: TRLReport
        Left = 8
        Top = 8
        Width = 794
        Height = 1123
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 121
          Width = 718
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLDBText1: TRLDBText
            Left = 8
            Top = 0
            Width = 51
            Height = 16
            DataField = 'GRUPO'
            DataSource = DataSource1
          end
          object RLDBText2: TRLDBText
            Left = 107
            Top = 1
            Width = 82
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTVENDAS'
            DataSource = DataSource1
            Holder = RLLabel2
          end
          object RLDBText3: TRLDBText
            Left = 246
            Top = 2
            Width = 94
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTCOMPRAS'
            DataSource = DataSource1
          end
          object RLDBText4: TRLDBText
            Left = 450
            Top = 2
            Width = 91
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTRECEBER'
            DataSource = DataSource1
          end
          object RLDBText5: TRLDBText
            Left = 598
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTPAGAR'
            DataSource = DataSource1
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 83
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object TP_REL01: TRLLabel
            Left = 11
            Top = 66
            Width = 33
            Height = 16
            Caption = 'MES'
          end
          object RLLabel2: TRLLabel
            Left = 131
            Top = 64
            Width = 58
            Height = 16
            Alignment = taCenter
            Caption = 'VENDAS'
          end
          object RLLabel1: TRLLabel
            Left = 270
            Top = 64
            Width = 70
            Height = 16
            Alignment = taCenter
            Caption = 'COMPRAS'
          end
          object RLLabel3: TRLLabel
            Left = 418
            Top = 64
            Width = 124
            Height = 16
            Alignment = taCenter
            Caption = 'CONTAS RECEBER'
          end
          object RLLabel4: TRLLabel
            Left = 565
            Top = 64
            Width = 108
            Height = 16
            Alignment = taCenter
            Caption = 'CONTAS PAGAR'
          end
          object RL_EMPRESA01: TRLLabel
            Left = 1
            Top = 10
            Width = 716
            Height = 16
            Align = faWidth
            Alignment = taCenter
            Caption = 'EMPRESA..: Todas as Empresas'
          end
          object RL_PERIODO01: TRLLabel
            Left = 1
            Top = 35
            Width = 716
            Height = 16
            Align = faWidth
            Alignment = taCenter
            Caption = 'PERIODO'
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 139
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object TOTALV: TRLLabel
            Left = 104
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
          end
          object TOTALE: TRLLabel
            Left = 240
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
          end
          object TOTALR: TRLLabel
            Left = 445
            Top = 0
            Width = 96
            Height = 16
            Alignment = taRightJustify
          end
          object TOTALP: TRLLabel
            Left = 597
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
          end
          object TOTAL: TRLLabel
            Left = 8
            Top = 0
            Width = 64
            Height = 16
            Caption = 'TOTAL....:'
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      object modelo02: TRLReport
        Left = 12
        Top = -1
        Width = 794
        Height = 1123
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid2: TRLDetailGrid
          Left = 38
          Top = 121
          Width = 718
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLDBText6: TRLDBText
            Left = 8
            Top = 0
            Width = 51
            Height = 16
            DataField = 'GRUPO'
            DataSource = DataSource1
          end
          object RLDBText7: TRLDBText
            Left = 112
            Top = 1
            Width = 82
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTVENDAS'
            DataSource = DataSource1
            Holder = RLLabel6
          end
          object RLDBText8: TRLDBText
            Left = 246
            Top = 2
            Width = 94
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTCOMPRAS'
            DataSource = DataSource1
          end
          object RLDBText9: TRLDBText
            Left = 422
            Top = 2
            Width = 91
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTRECEBER'
            DataSource = DataSource1
          end
          object RLDBText10: TRLDBText
            Left = 571
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'TOTPAGAR'
            DataSource = DataSource1
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 83
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object TP_REL02: TRLLabel
            Left = 11
            Top = 66
            Width = 25
            Height = 16
            Caption = 'DIA'
          end
          object RLLabel6: TRLLabel
            Left = 126
            Top = 64
            Width = 68
            Height = 16
            Alignment = taCenter
            Caption = 'RECEBER'
          end
          object RLLabel7: TRLLabel
            Left = 280
            Top = 64
            Width = 50
            Height = 16
            Alignment = taCenter
            Caption = 'PAGAR'
          end
          object RLLabel8: TRLLabel
            Left = 432
            Top = 64
            Width = 80
            Height = 16
            Alignment = taCenter
            Caption = 'RECEBIDAS'
          end
          object RLLabel9: TRLLabel
            Left = 594
            Top = 64
            Width = 50
            Height = 16
            Alignment = taCenter
            Caption = 'PAGAS'
          end
          object RL_EMPRESA02: TRLLabel
            Left = 1
            Top = 10
            Width = 716
            Height = 16
            Align = faWidth
            Alignment = taCenter
            Caption = 'EMPRESA..: Todas as Empresas'
          end
          object RL_PERIODO02: TRLLabel
            Left = 1
            Top = 35
            Width = 716
            Height = 16
            Align = faWidth
            Alignment = taCenter
            Caption = 'PERIODO'
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 139
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object TOTAREC: TRLLabel
            Left = 136
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
          end
          object TOTAPAG: TRLLabel
            Left = 275
            Top = 0
            Width = 65
            Height = 16
            Alignment = taRightJustify
          end
          object TOTREC: TRLLabel
            Left = 457
            Top = 0
            Width = 55
            Height = 16
            Alignment = taRightJustify
          end
          object TOTPAG: TRLLabel
            Left = 589
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
          end
          object RLLabel16: TRLLabel
            Left = 8
            Top = 0
            Width = 64
            Height = 16
            Caption = 'TOTAL....:'
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      TabVisible = False
      object modelo03: TRLReport
        Left = 69
        Top = 15
        Width = 794
        Height = 1123
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLDetailGrid3: TRLDetailGrid
          Left = 38
          Top = 129
          Width = 718
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RDB_MES: TRLDBText
            Left = 11
            Top = 0
            Width = 39
            Height = 14
            DataField = 'GRUPO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RDB_TOTAL_R: TRLDBText
            Left = 76
            Top = 2
            Width = 43
            Height = 12
            Alignment = taRightJustify
            DataField = 'TOTAL_R'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_TOTAL_R
            ParentFont = False
          end
          object RDB_PAGO_R: TRLDBText
            Left = 153
            Top = 2
            Width = 41
            Height = 12
            Alignment = taRightJustify
            DataField = 'PAGO_R'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_PAGO_R
            ParentFont = False
          end
          object RDB_ABERTO_R: TRLDBText
            Left = 203
            Top = 2
            Width = 52
            Height = 12
            Alignment = taRightJustify
            DataField = 'ABERTO_R'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_ABERTO_R
            ParentFont = False
          end
          object RDB_DESC_R: TRLDBText
            Left = 256
            Top = 2
            Width = 73
            Height = 12
            Alignment = taRightJustify
            DataField = 'DESCONTOS_R'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_DESC_R
            ParentFont = False
          end
          object RDB_JUROS_R: TRLDBText
            Left = 341
            Top = 2
            Width = 47
            Height = 12
            Alignment = taRightJustify
            DataField = 'JUROS_R'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_JUROS_R
            ParentFont = False
          end
          object RDB_TOTAL_P: TRLDBText
            Left = 418
            Top = 2
            Width = 42
            Height = 12
            Alignment = taRightJustify
            DataField = 'TOTAL_P'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_TOTAL_P
            ParentFont = False
          end
          object RDB_DESC_P: TRLDBText
            Left = 578
            Top = 2
            Width = 72
            Height = 12
            Alignment = taRightJustify
            DataField = 'DESCONTOS_P'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_DESC_P
            ParentFont = False
          end
          object RDB_ABERTO_P: TRLDBText
            Left = 541
            Top = 2
            Width = 51
            Height = 12
            Alignment = taRightJustify
            DataField = 'ABERTO_P'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_ABERTO_P
            ParentFont = False
          end
          object RDB_PAGO_P: TRLDBText
            Left = 480
            Top = 2
            Width = 40
            Height = 12
            Alignment = taRightJustify
            DataField = 'PAGO_P'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_PAGO_P
            ParentFont = False
          end
          object RDB_JUROS_P: TRLDBText
            Left = 667
            Top = 3
            Width = 46
            Height = 12
            Alignment = taRightJustify
            DataField = 'JUROS_P'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RL_JUROS_P
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 38
          Top = 145
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object T_TOTAL_R: TRLLabel
            Left = 66
            Top = 2
            Width = 53
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_TOTAL_R
            ParentFont = False
          end
          object T_PAGO_R: TRLLabel
            Left = 143
            Top = 2
            Width = 51
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_PAGO_R
            ParentFont = False
          end
          object T_ABERTO_R: TRLLabel
            Left = 193
            Top = 2
            Width = 62
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_ABERTO_R
            ParentFont = False
          end
          object T_DESC_R: TRLLabel
            Left = 278
            Top = 2
            Width = 51
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_DESC_R
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 8
            Top = 0
            Width = 52
            Height = 14
            Caption = 'TOTAL....:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object T_JUROS_R: TRLLabel
            Left = 331
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_JUROS_R
            ParentFont = False
          end
          object T_TOTAL_P: TRLLabel
            Left = 408
            Top = 1
            Width = 52
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_TOTAL_P
            ParentFont = False
          end
          object T_PAGO_P: TRLLabel
            Left = 470
            Top = 1
            Width = 50
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_PAGO_P
            ParentFont = False
          end
          object T_ABERTO_P: TRLLabel
            Left = 531
            Top = 1
            Width = 61
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_ABERTO_P
            ParentFont = False
          end
          object T_DESC_P: TRLLabel
            Left = 600
            Top = 1
            Width = 50
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_DESC_P
            ParentFont = False
          end
          object T_JUROS_P: TRLLabel
            Left = 657
            Top = 1
            Width = 56
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RDB_JUROS_P
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 91
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clSilver
          object TP_REL03: TRLLabel
            Left = 11
            Top = 75
            Width = 24
            Height = 14
            Caption = 'MES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_TOTAL_R: TRLLabel
            Left = 87
            Top = 76
            Width = 32
            Height = 12
            Alignment = taCenter
            Caption = 'TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_PAGO_R: TRLLabel
            Left = 142
            Top = 77
            Width = 52
            Height = 12
            Alignment = taCenter
            Caption = 'RECEBIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_ABERTO_R: TRLLabel
            Left = 215
            Top = 77
            Width = 40
            Height = 12
            Alignment = taCenter
            Caption = 'ABERTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_DESC_R: TRLLabel
            Left = 299
            Top = 77
            Width = 30
            Height = 12
            Alignment = taCenter
            Caption = 'DESC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_EMPRESA03: TRLLabel
            Left = 1
            Top = 10
            Width = 716
            Height = 14
            Align = faWidth
            Alignment = taCenter
            Caption = 'EMPRESA..: Todas as Empresas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_PERIODO03: TRLLabel
            Left = 1
            Top = 35
            Width = 716
            Height = 14
            Align = faWidth
            Alignment = taCenter
            Caption = 'PERIODO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_JUROS_R: TRLLabel
            Left = 352
            Top = 77
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'JUROS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_JUROS_P: TRLLabel
            Left = 677
            Top = 77
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'JUROS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_DESC_P: TRLLabel
            Left = 620
            Top = 77
            Width = 30
            Height = 12
            Alignment = taCenter
            Caption = 'DESC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_ABERTO_P: TRLLabel
            Left = 552
            Top = 77
            Width = 40
            Height = 12
            Alignment = taCenter
            Caption = 'ABERTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_PAGO_P: TRLLabel
            Left = 490
            Top = 77
            Width = 30
            Height = 12
            Alignment = taCenter
            Caption = 'PAGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_TOTAL_P: TRLLabel
            Left = 428
            Top = 77
            Width = 32
            Height = 12
            Alignment = taCenter
            Caption = 'TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 72
            Top = 59
            Width = 318
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'FINANCEIRO DE CONTAS A RECEBER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 400
            Top = 59
            Width = 314
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'FINANCEIRO DE CONTAS A PAGAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 350
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select GRUPO, '
      ' sum(TOTVENDAS) as TOTVENDAS,   '
      ' sum(TOTCOMPRAS) as TOTCOMPRAS, '
      ' sum(TOTRECEBER) as TOTRECEBER, '
      ' sum(TOTPAGAR) as TOTPAGAR      '
      ' from TEMP                      '
      ' group by GRUPO                 '
      ' order by GRUPO                 ')
    Left = 318
  end
  object Query2: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADEMP WHERE BLOQ=0')
    Left = 320
    Top = 35
  end
end
