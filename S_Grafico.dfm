object Frm_Grafico: TFrm_Grafico
  Left = 0
  Top = 97
  Width = 812
  Height = 406
  Caption = 'Comparativo de Compras por Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 329
    Width = 804
    Height = 43
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object ESTILO: TBitBtn
      Left = 5
      Top = 4
      Width = 130
      Height = 25
      Caption = '&Est.Gr'#225'fico'
      TabOrder = 0
      OnClick = ESTILOClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object IMPRIMIR: TBitBtn
      Left = 148
      Top = 5
      Width = 130
      Height = 25
      Caption = '&Imprimir Grafico'
      TabOrder = 1
      OnClick = IMPRIMIRClick
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
    object SAIR: TBitBtn
      Left = 567
      Top = 5
      Width = 130
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
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
      NumGlyphs = 2
    end
    object cbxfundo: TCheckBox
      Left = 463
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Cor de Fundo'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = cbxfundoClick
    end
    object bbImpGra: TBitBtn
      Left = 284
      Top = 5
      Width = 130
      Height = 25
      Caption = 'Imprimir &Relat'#243'rio'
      TabOrder = 4
      OnClick = bbImpGraClick
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
    Top = 0
    Width = 804
    Height = 329
    ActivePage = tsGrafico
    Align = alClient
    TabOrder = 1
    object tsGrafico: TTabSheet
      Caption = 'Grafico'
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 796
        Height = 301
        BackWall.Brush.Color = clWhite
        Gradient.EndColor = clSilver
        Gradient.Visible = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Comparativo de Vendas por Empresa')
        BottomAxis.LabelStyle = talText
        LeftAxis.LabelsOnAxis = False
        Legend.TextStyle = ltsRightPercent
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        TabOrder = 0
        Locked = True
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Tb_VPro
          SeriesColor = clRed
          XLabelsSource = 'nome'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'TMVALOR'
        end
        object Series2: THorizBarSeries
          Active = False
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Tb_VPro
          SeriesColor = clGreen
          XLabelsSource = 'nome'
          XValues.DateTime = False
          XValues.Name = 'Bar'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loNone
          XValues.ValueSource = 'TMVALOR'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Active = False
          Marks.ArrowLength = 0
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = Tb_VPro
          SeriesColor = clYellow
          XLabelsSource = 'nome'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'TMVALOR'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'TMVALOR'
        end
        object Series4: TFastLineSeries
          Active = False
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Tb_VPro
          SeriesColor = clBlue
          LinePen.Color = clNavy
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'TMVALOR'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'TMVALOR'
        end
        object Series5: TAreaSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = Tb_VPro
          SeriesColor = clWhite
          XLabelsSource = 'nome'
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'TMVALOR'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'TMVALOR'
        end
        object Series6: TPointSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = Tb_VPro
          SeriesColor = clWhite
          XLabelsSource = 'nome'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'TMVALOR'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'TMVALOR'
        end
        object Series7: TPieSeries
          Active = False
          Marks.ArrowLength = 0
          Marks.Style = smsLabelPercentTotal
          Marks.Visible = False
          DataSource = Tb_VPro
          SeriesColor = clGray
          XLabelsSource = 'nome'
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loAscending
          PieValues.ValueSource = 'TMVALOR'
        end
      end
    end
    object tsRel: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 20
        Top = 52
        Width = 794
        Height = 945
        DataSource = Src_VPro
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        object RLBand1: TRLBand
          Left = 38
          Top = 11
          Width = 718
          Height = 36
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 100
            Height = 16
            Caption = 'Estistica Grafica'
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 47
          Width = 718
          Height = 29
          BandType = btColumnHeader
          object rlTitulo: TRLMemo
            Left = 8
            Top = 8
            Width = 745
            Height = 16
            Alignment = taCenter
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 76
          Width = 718
          Height = 19
          BandType = btColumnHeader
          object lblcab_periodo: TRLLabel
            Left = 2
            Top = 2
            Width = 366
            Height = 16
            AutoSize = False
            Caption = 'Periodo'
          end
          object lblcab_qtd: TRLLabel
            Left = 368
            Top = 1
            Width = 86
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade'
          end
          object lbl_cabpqtd: TRLLabel
            Left = 454
            Top = 2
            Width = 86
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '%'#168
          end
          object lbl_cabvalp: TRLLabel
            Left = 630
            Top = 2
            Width = 86
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '%'#168
          end
          object lbl_cabval: TRLLabel
            Left = 541
            Top = 1
            Width = 86
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valores'
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 95
          Width = 718
          Height = 16
          object lbl_periodo: TRLDBText
            Left = 2
            Top = 0
            Width = 366
            Height = 16
            AutoSize = False
            DataField = 'nome'
            DataSource = Src_VPro
            Holder = lblcab_periodo
          end
          object lbl_qtd: TRLDBText
            Left = 368
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TMTOTQTD'
            DataSource = Src_VPro
            Holder = lblcab_qtd
          end
          object lbl_pqtd: TRLDBText
            Left = 454
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'percentqtd'
            DataSource = Src_VPro
            Holder = lbl_cabpqtd
          end
          object lbl_val: TRLDBText
            Left = 541
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TMTOTVAL'
            DataSource = Src_VPro
            Holder = lbl_cabval
          end
          object lbl_valp: TRLDBText
            Left = 630
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'percentvlr'
            DataSource = Src_VPro
            Holder = lbl_cabvalp
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 111
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object lbltot_periodo: TRLLabel
            Left = 2
            Top = 0
            Width = 366
            Height = 16
            AutoSize = False
            Caption = 'Total Geral.................'
            Holder = lblcab_periodo
          end
          object lbl_totpqtd: TRLLabel
            Left = 454
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabpqtd
          end
          object lbltot_qtd: TRLLabel
            Left = 368
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lblcab_qtd
          end
          object lbl_totval: TRLLabel
            Left = 541
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabval
          end
          object lbl_totvalp: TRLLabel
            Left = 630
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabvalp
          end
        end
      end
    end
  end
  object Tb_VPro: TQuery
    OnCalcFields = Tb_VProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select TO_CHAR(DATADP, '#39'YYYYMM'#39') AS TMANOMES, '
      '          VALORR as TMVALOR,'
      '          VALORR as TMTOTQTD,'
      '          VALORR as TMTOTVAL,'
      '          DESCMV as NOME'
      'from CADLDR')
    Left = 8
    Top = 16
    object Tb_VProTMANOMES: TStringField
      FieldName = 'TMANOMES'
      Size = 6
    end
    object Tb_VProTMVALOR: TFloatField
      FieldName = 'TMVALOR'
    end
    object Tb_VPronome: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 50
      Calculated = True
    end
    object Tb_VPropercentvlr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentvlr'
      Calculated = True
    end
    object Tb_VPropercentqtd: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentqtd'
      Calculated = True
    end
    object Tb_VProTMTOTQTD: TFloatField
      FieldName = 'TMTOTQTD'
    end
    object Tb_VProTMTOTVAL: TFloatField
      FieldName = 'TMTOTVAL'
    end
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 48
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 56
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 680
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
    Top = 40
  end
  object Src_VPro: TDataSource
    DataSet = Tb_VPro
    Left = 48
    Top = 8
  end
end
