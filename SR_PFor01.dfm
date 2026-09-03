object Qr_PFor01: TQr_PFor01
  Left = 62
  Top = 30
  Width = 859
  Height = 708
  Caption = 'Qr_PFor01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 851
    Height = 677
    ActivePage = tsmodelo03
    Align = alClient
    TabOrder = 0
    object tsmodelo01: TTabSheet
      Caption = 'Modelo01'
      object modelo01: TRLReport
        Left = 0
        Top = -55
        Width = 794
        Height = 1123
        DataSource = Src_PFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        BeforePrint = modelo01BeforePrint
        object RLBand1: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 472
          BandType = btHeader
          object RLDraw19: TRLDraw
            Left = 382
            Top = 337
            Width = 369
            Height = 120
          end
          object QR_IMGLOGO: TRLImage
            Left = 4
            Top = 6
            Width = 137
            Height = 155
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
          object FANTASIA: TRLDBText
            Left = 145
            Top = 5
            Width = 606
            Height = 51
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RAZAO: TRLDBText
            Left = 145
            Top = 56
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object endereco: TRLDBText
            Left = 145
            Top = 73
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ENDERECO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cidade: TRLDBText
            Left = 145
            Top = 90
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Telefone: TRLDBText
            Left = 145
            Top = 106
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'telefone'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object E_MAIL: TRLDBText
            Left = 145
            Top = 122
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cnpj: TRLDBText
            Left = 145
            Top = 138
            Width = 606
            Height = 18
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 3
            Top = 162
            Width = 751
            Height = 2
            Pen.Style = psInsideFrame
          end
          object RLLabel1: TRLLabel
            Left = 4
            Top = 165
            Width = 87
            Height = 18
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 5
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel2: TRLLabel
            Left = 10
            Top = 190
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 10
            Top = 203
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Nome...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 10
            Top = 217
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Endere'#231'o...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 10
            Top = 230
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Bairro.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 10
            Top = 243
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cidade.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 10
            Top = 256
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cnpj...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 10
            Top = 269
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Inscri'#231#227'o Estadual.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 10
            Top = 283
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Representante......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 10
            Top = 297
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Telefone...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 222
            Top = 190
            Width = 60
            Height = 12
            AutoSize = False
            Caption = 'Telefone..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 293
            Top = 243
            Width = 35
            Height = 12
            AutoSize = False
            Caption = 'U.F..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 222
            Top = 256
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Cep.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 222
            Top = 297
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Fax.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 383
            Top = 165
            Width = 133
            Height = 18
            Caption = 'Ordem de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw3: TRLDraw
            Left = 382
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel16: TRLLabel
            Left = 386
            Top = 189
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Pedido No....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 386
            Top = 202
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Valor Total do Pedido (R$)...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 386
            Top = 216
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Faturamento.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 386
            Top = 229
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Entrega.....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 386
            Top = 242
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Frete (CIF/FOB)..............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 386
            Top = 255
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Cond. Pgto...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 386
            Top = 268
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Observa'#231#227'o...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 386
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Comprador....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 5
            Top = 316
            Width = 160
            Height = 18
            Caption = 'Parcelas/Vencimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 5
            Top = 336
            Width = 369
            Height = 120
          end
          object RLLabel25: TRLLabel
            Left = 8
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw5: TRLDraw
            Left = 103
            Top = 338
            Width = 1
            Height = 118
          end
          object RLDraw6: TRLDraw
            Left = 5
            Top = 353
            Width = 369
            Height = 1
          end
          object tipov01: TRLLabel
            Left = 8
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw7: TRLDraw
            Left = 5
            Top = 371
            Width = 369
            Height = 1
          end
          object RLLabel26: TRLLabel
            Left = 107
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 166
            Top = 338
            Width = 1
            Height = 118
          end
          object prazo01: TRLLabel
            Left = 107
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 172
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw10: TRLDraw
            Left = 232
            Top = 338
            Width = 1
            Height = 118
          end
          object RLDraw11: TRLDraw
            Left = 296
            Top = 338
            Width = 1
            Height = 118
          end
          object RLLabel28: TRLLabel
            Left = 236
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 306
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav01: TRLLabel
            Left = 169
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc01: TRLLabel
            Left = 234
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc01: TRLLabel
            Left = 301
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 385
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw13: TRLDraw
            Left = 479
            Top = 339
            Width = 1
            Height = 118
          end
          object RLDraw14: TRLDraw
            Left = 543
            Top = 338
            Width = 1
            Height = 118
          end
          object RLDraw15: TRLDraw
            Left = 608
            Top = 338
            Width = 1
            Height = 118
          end
          object RLDraw16: TRLDraw
            Left = 673
            Top = 338
            Width = 1
            Height = 118
          end
          object RLDraw12: TRLDraw
            Left = 382
            Top = 354
            Width = 369
            Height = 1
          end
          object tipov02: TRLLabel
            Left = 385
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo02: TRLLabel
            Left = 484
            Top = 357
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 484
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 549
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav02: TRLLabel
            Left = 546
            Top = 357
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc02: TRLLabel
            Left = 611
            Top = 357
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 613
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 683
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc02: TRLLabel
            Left = 678
            Top = 357
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object FRETE: TRLLabel
            Left = 544
            Top = 242
            Width = 196
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object QROBS: TRLMemo
            Left = 545
            Top = 268
            Width = 197
            Height = 25
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object NOMUSR: TRLLabel
            Left = 587
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CHAVE: TRLLabel
            Left = 544
            Top = 189
            Width = 204
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 119
            Top = 190
            Width = 54
            Height = 12
            AutoSize = False
            DataField = 'PF1CODFOR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 282
            Top = 190
            Width = 88
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 119
            Top = 203
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FRAZAO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 119
            Top = 217
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FNLOG'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 119
            Top = 230
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FBAIRRO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 119
            Top = 243
            Width = 171
            Height = 12
            AutoSize = False
            DataField = 'FCIDADE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 331
            Top = 243
            Width = 38
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FUF'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 119
            Top = 256
            Width = 99
            Height = 12
            AutoSize = False
            DataField = 'FCGC'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 281
            Top = 256
            Width = 89
            Height = 12
            AutoSize = False
            DataField = 'FCEP'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 119
            Top = 270
            Width = 172
            Height = 12
            AutoSize = False
            DataField = 'FIE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 119
            Top = 284
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FCONT01'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 119
            Top = 298
            Width = 99
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 281
            Top = 297
            Width = 89
            Height = 12
            AutoSize = False
            DataField = 'FFAX'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 544
            Top = 203
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1TOTLIQ'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 544
            Top = 217
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpfat'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 544
            Top = 230
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpent'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 544
            Top = 255
            Width = 197
            Height = 12
            AutoSize = False
            DataField = 'NOMFP'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 546
            Top = 297
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1CODUSR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object enc03: TRLLabel
            Left = 301
            Top = 374
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc03: TRLLabel
            Left = 234
            Top = 374
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav03: TRLLabel
            Left = 169
            Top = 374
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo03: TRLLabel
            Left = 107
            Top = 374
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov03: TRLLabel
            Left = 8
            Top = 374
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw8: TRLDraw
            Left = 6
            Top = 389
            Width = 368
            Height = 1
          end
          object enc05: TRLLabel
            Left = 301
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc05: TRLLabel
            Left = 234
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav05: TRLLabel
            Left = 169
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo05: TRLLabel
            Left = 107
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov05: TRLLabel
            Left = 8
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc07: TRLLabel
            Left = 301
            Top = 408
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc07: TRLLabel
            Left = 234
            Top = 408
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav07: TRLLabel
            Left = 169
            Top = 408
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo07: TRLLabel
            Left = 107
            Top = 408
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov07: TRLLabel
            Left = 8
            Top = 408
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw18: TRLDraw
            Left = 6
            Top = 406
            Width = 367
            Height = 1
          end
          object RLDraw59: TRLDraw
            Left = 6
            Top = 423
            Width = 367
            Height = 1
          end
          object enc09: TRLLabel
            Left = 301
            Top = 425
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc09: TRLLabel
            Left = 234
            Top = 425
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav09: TRLLabel
            Left = 169
            Top = 425
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo09: TRLLabel
            Left = 107
            Top = 425
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov09: TRLLabel
            Left = 8
            Top = 425
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc04: TRLLabel
            Left = 678
            Top = 374
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc04: TRLLabel
            Left = 611
            Top = 374
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav04: TRLLabel
            Left = 546
            Top = 374
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo04: TRLLabel
            Left = 484
            Top = 374
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov04: TRLLabel
            Left = 385
            Top = 374
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov06: TRLLabel
            Left = 385
            Top = 391
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov08: TRLLabel
            Left = 385
            Top = 408
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov10: TRLLabel
            Left = 385
            Top = 425
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo10: TRLLabel
            Left = 484
            Top = 425
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo08: TRLLabel
            Left = 484
            Top = 408
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo06: TRLLabel
            Left = 484
            Top = 391
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav06: TRLLabel
            Left = 546
            Top = 391
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav08: TRLLabel
            Left = 546
            Top = 408
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav10: TRLLabel
            Left = 546
            Top = 425
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc10: TRLLabel
            Left = 611
            Top = 425
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc06: TRLLabel
            Left = 611
            Top = 391
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc08: TRLLabel
            Left = 611
            Top = 408
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc08: TRLLabel
            Left = 678
            Top = 408
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc06: TRLLabel
            Left = 678
            Top = 391
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc10: TRLLabel
            Left = 678
            Top = 425
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw17: TRLDraw
            Left = 383
            Top = 372
            Width = 368
            Height = 1
          end
          object RLDraw60: TRLDraw
            Left = 383
            Top = 388
            Width = 368
            Height = 1
          end
          object RLDraw61: TRLDraw
            Left = 383
            Top = 405
            Width = 368
            Height = 1
          end
          object RLDraw62: TRLDraw
            Left = 383
            Top = 422
            Width = 368
            Height = 1
          end
          object RLDraw63: TRLDraw
            Left = 6
            Top = 439
            Width = 367
            Height = 1
          end
          object RLDraw64: TRLDraw
            Left = 383
            Top = 439
            Width = 367
            Height = 1
          end
          object enc11: TRLLabel
            Left = 302
            Top = 441
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc11: TRLLabel
            Left = 235
            Top = 441
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav11: TRLLabel
            Left = 170
            Top = 441
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo11: TRLLabel
            Left = 108
            Top = 441
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov11: TRLLabel
            Left = 9
            Top = 441
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov12: TRLLabel
            Left = 385
            Top = 441
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo12: TRLLabel
            Left = 484
            Top = 441
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav12: TRLLabel
            Left = 546
            Top = 441
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc12: TRLLabel
            Left = 611
            Top = 441
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc12: TRLLabel
            Left = 678
            Top = 441
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 19
          Top = 491
          Width = 756
          Height = 33
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object rlcab_nompro: TRLLabel
            Left = 5
            Top = 18
            Width = 247
            Height = 12
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_PF2CODPRO: TRLLabel
            Left = 258
            Top = 18
            Width = 62
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Interno'
            Color = 15987689
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlcab_undpro: TRLLabel
            Left = 395
            Top = 18
            Width = 15
            Height = 12
            AutoSize = False
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_PF2QTDP: TRLMemo
            Left = 413
            Top = 5
            Width = 36
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Qtde.'
              'Pedida')
            ParentFont = False
          end
          object rlcab_pcoimp: TRLMemo
            Left = 452
            Top = 5
            Width = 60
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor'
              'Unit'#225'rio')
            ParentFont = False
          end
          object rlcab_PF2ICMSR: TRLMemo
            Left = 544
            Top = 5
            Width = 40
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'ICMS   '
              'Retido  ')
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 589
            Top = 5
            Width = 162
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '---------------VALOR TOTAL---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_totbru: TRLLabel
            Left = 588
            Top = 18
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_totdes: TRLLabel
            Left = 645
            Top = 18
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descontos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_totliq: TRLLabel
            Left = 690
            Top = 18
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlcab_PF2IPI: TRLMemo
            Left = 513
            Top = 17
            Width = 30
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'IPI')
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 257
            Top = 5
            Width = 136
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo do Produto'
            Color = 15987689
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel32: TRLLabel
            Left = 322
            Top = 18
            Width = 70
            Height = 12
            AutoSize = False
            Caption = 'do Fornecedor'
            Color = 14478829
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand3: TRLBand
          Left = 19
          Top = 524
          Width = 756
          Height = 14
          AutoSize = True
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          AfterPrint = RLBand3AfterPrint
          object rldet_PF2CODPRO: TRLDBText
            Left = 258
            Top = 1
            Width = 62
            Height = 12
            AutoSize = False
            Color = 15987689
            DataField = 'PF2CODPRO'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_PF2CODPRO
            ParentColor = False
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
            Transparent = False
          end
          object rldet_undpro: TRLDBText
            Left = 395
            Top = 1
            Width = 15
            Height = 12
            AutoSize = False
            DataField = 'undpro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_undpro
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_PF2QTDP: TRLDBText
            Left = 413
            Top = -1
            Width = 36
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2QTDP'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_PF2QTDP
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_pcoimp: TRLDBText
            Left = 452
            Top = 1
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pcoimp'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_pcoimp
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_PF2ICMSR: TRLDBText
            Left = 544
            Top = 1
            Width = 40
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2ICMSR'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_PF2ICMSR
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_totbru: TRLDBText
            Left = 588
            Top = 1
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totbru'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_totbru
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_totdes: TRLDBText
            Left = 645
            Top = 1
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totdes'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_totdes
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_totliq: TRLDBText
            Left = 690
            Top = 1
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totliq'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_totliq
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object rldet_PF2IPI: TRLDBText
            Left = 513
            Top = 0
            Width = 30
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2IPI'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_PF2IPI
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
          end
          object RLDBText1: TRLDBText
            Left = 322
            Top = 0
            Width = 70
            Height = 12
            AutoSize = False
            Color = 14478829
            DataField = 'codio_no_fornecedor'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel32
            ParentColor = False
            ParentFont = False
            SecondHolder = RLDB_NOMPRO
            SecondHoldStyle = hsCopyHeight
            Transparent = False
          end
          object RLDB_NOMPRO: TRLDBMemo
            Left = 5
            Top = 1
            Width = 247
            Height = 12
            DataField = 'NOMPRO'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcab_nompro
            IntegralHeight = True
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 19
          Top = 538
          Width = 756
          Height = 81
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand4BeforePrint
          object RLLabel43: TRLLabel
            Left = 5
            Top = 10
            Width = 246
            Height = 12
            AutoSize = False
            Caption = 
              'Total do Pedido.................................................' +
              '.........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totdes: TRLLabel
            Left = 645
            Top = 9
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = rlcab_totdes
            ParentFont = False
          end
          object totbru: TRLLabel
            Left = 588
            Top = 9
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = rlcab_totbru
            ParentFont = False
          end
          object totqtd: TRLLabel
            Left = 305
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totliq: TRLLabel
            Left = 690
            Top = 9
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = rlcab_totliq
            ParentFont = False
          end
          object RLLabel50: TRLLabel
            Left = 100
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel51: TRLLabel
            Left = 100
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel52: TRLLabel
            Left = 365
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Comprador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 365
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 19
          Top = 619
          Width = 756
          Height = 17
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
          object emitido: TRLLabel
            Left = 3
            Top = 1
            Width = 38
            Height = 12
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel55: TRLLabel
            Left = 669
            Top = 1
            Width = 39
            Height = 12
            AutoSize = False
            Caption = 'P'#225'gina.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 691
            Top = 1
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
          end
          object banner01: TRLLabel
            Left = 154
            Top = 2
            Width = 431
            Height = 14
            AutoSize = False
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
    object tsmodelo02: TTabSheet
      Caption = 'Modelo02'
      ImageIndex = 1
      object modelo02: TRLReport
        Left = -16
        Top = -23
        Width = 794
        Height = 1123
        DataSource = Src_PFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        BeforePrint = modelo02BeforePrint
        object RLBand6: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 420
          BandType = btHeader
          object RLDraw20: TRLDraw
            Left = 382
            Top = 337
            Width = 369
            Height = 70
          end
          object qr_imglogom02: TRLImage
            Left = 4
            Top = 6
            Width = 137
            Height = 155
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
          object RLDBText31: TRLDBText
            Left = 145
            Top = 5
            Width = 606
            Height = 51
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 145
            Top = 56
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object enderecom02: TRLDBText
            Left = 145
            Top = 73
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ENDERECO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cidadem02: TRLDBText
            Left = 145
            Top = 90
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object telefonem02: TRLDBText
            Left = 145
            Top = 106
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'telefone'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object emailm02: TRLDBText
            Left = 145
            Top = 122
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cnpjm02: TRLDBText
            Left = 145
            Top = 138
            Width = 606
            Height = 18
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw21: TRLDraw
            Left = 3
            Top = 162
            Width = 751
            Height = 2
            Pen.Style = psInsideFrame
          end
          object RLLabel44: TRLLabel
            Left = 4
            Top = 165
            Width = 87
            Height = 18
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw22: TRLDraw
            Left = 5
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel47: TRLLabel
            Left = 10
            Top = 190
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel48: TRLLabel
            Left = 10
            Top = 203
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Nome...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel49: TRLLabel
            Left = 10
            Top = 217
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Endere'#231'o...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 10
            Top = 230
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Bairro.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel56: TRLLabel
            Left = 10
            Top = 243
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cidade.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 10
            Top = 256
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cnpj...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 10
            Top = 269
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Inscri'#231#227'o Estadual.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel59: TRLLabel
            Left = 10
            Top = 283
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Representante......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 10
            Top = 297
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Telefone...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel61: TRLLabel
            Left = 230
            Top = 190
            Width = 60
            Height = 12
            AutoSize = False
            Caption = 'Telefone..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel62: TRLLabel
            Left = 293
            Top = 243
            Width = 35
            Height = 12
            AutoSize = False
            Caption = 'U.F..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel63: TRLLabel
            Left = 230
            Top = 256
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Cep.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel64: TRLLabel
            Left = 230
            Top = 297
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Fax.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel65: TRLLabel
            Left = 383
            Top = 165
            Width = 133
            Height = 18
            Caption = 'Ordem de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw23: TRLDraw
            Left = 382
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel66: TRLLabel
            Left = 386
            Top = 189
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Pedido No....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel67: TRLLabel
            Left = 386
            Top = 202
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Valor Total do Pedido (R$)...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel68: TRLLabel
            Left = 386
            Top = 216
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Faturamento.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel69: TRLLabel
            Left = 386
            Top = 229
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Entrega.....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel70: TRLLabel
            Left = 386
            Top = 242
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Frete (CIF/FOB)..............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel71: TRLLabel
            Left = 386
            Top = 255
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Cond. Pgto...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel72: TRLLabel
            Left = 386
            Top = 268
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Observa'#231#227'o...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel73: TRLLabel
            Left = 386
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Comprador....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel74: TRLLabel
            Left = 5
            Top = 316
            Width = 160
            Height = 18
            Caption = 'Parcelas/Vencimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw24: TRLDraw
            Left = 5
            Top = 337
            Width = 369
            Height = 70
          end
          object RLLabel75: TRLLabel
            Left = 8
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw25: TRLDraw
            Left = 102
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw26: TRLDraw
            Left = 5
            Top = 353
            Width = 369
            Height = 1
          end
          object tipov01m02: TRLLabel
            Left = 8
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw27: TRLDraw
            Left = 5
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw28: TRLDraw
            Left = 5
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov02m02: TRLLabel
            Left = 8
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov03m02: TRLLabel
            Left = 8
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel79: TRLLabel
            Left = 107
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw29: TRLDraw
            Left = 166
            Top = 338
            Width = 1
            Height = 69
          end
          object prazo01m02: TRLLabel
            Left = 107
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo02m02: TRLLabel
            Left = 107
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo03m02: TRLLabel
            Left = 107
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel83: TRLLabel
            Left = 172
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw30: TRLDraw
            Left = 231
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw31: TRLDraw
            Left = 296
            Top = 338
            Width = 1
            Height = 69
          end
          object RLLabel84: TRLLabel
            Left = 236
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel85: TRLLabel
            Left = 306
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav01m02: TRLLabel
            Left = 169
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav02m02: TRLLabel
            Left = 169
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav03m02: TRLLabel
            Left = 169
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc03m02: TRLLabel
            Left = 234
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc01m02: TRLLabel
            Left = 234
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc02m02: TRLLabel
            Left = 234
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc03m02: TRLLabel
            Left = 301
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc01m02: TRLLabel
            Left = 301
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc02m02: TRLLabel
            Left = 301
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel95: TRLLabel
            Left = 385
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw32: TRLDraw
            Left = 479
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw33: TRLDraw
            Left = 543
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw34: TRLDraw
            Left = 608
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw35: TRLDraw
            Left = 673
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw36: TRLDraw
            Left = 382
            Top = 353
            Width = 369
            Height = 1
          end
          object RLDraw37: TRLDraw
            Left = 382
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw38: TRLDraw
            Left = 382
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov04m02: TRLLabel
            Left = 385
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov05m02: TRLLabel
            Left = 385
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov06m02: TRLLabel
            Left = 385
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo06m02: TRLLabel
            Left = 484
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo05m02: TRLLabel
            Left = 484
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo04m02: TRLLabel
            Left = 484
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel102: TRLLabel
            Left = 484
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel103: TRLLabel
            Left = 549
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav04m02: TRLLabel
            Left = 546
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav05m02: TRLLabel
            Left = 546
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav06m02: TRLLabel
            Left = 546
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc06m02: TRLLabel
            Left = 611
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc05m02: TRLLabel
            Left = 611
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc04m02: TRLLabel
            Left = 611
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel110: TRLLabel
            Left = 613
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel111: TRLLabel
            Left = 683
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc04m02: TRLLabel
            Left = 678
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc05m02: TRLLabel
            Left = 678
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc06m02: TRLLabel
            Left = 678
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object fretem02: TRLLabel
            Left = 544
            Top = 242
            Width = 196
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object qrobsm02: TRLMemo
            Left = 545
            Top = 268
            Width = 197
            Height = 25
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object nomusrm02: TRLLabel
            Left = 587
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chavem02: TRLLabel
            Left = 544
            Top = 189
            Width = 202
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 119
            Top = 190
            Width = 54
            Height = 12
            AutoSize = False
            DataField = 'PF1CODFOR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 294
            Top = 190
            Width = 74
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText40: TRLDBText
            Left = 119
            Top = 203
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FRAZAO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText41: TRLDBText
            Left = 119
            Top = 217
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FNLOG'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText42: TRLDBText
            Left = 119
            Top = 230
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FBAIRRO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText43: TRLDBText
            Left = 119
            Top = 243
            Width = 171
            Height = 12
            AutoSize = False
            DataField = 'FCIDADE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText44: TRLDBText
            Left = 331
            Top = 243
            Width = 38
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FUF'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText45: TRLDBText
            Left = 119
            Top = 256
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FCGC'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText46: TRLDBText
            Left = 293
            Top = 256
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FCEP'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 119
            Top = 270
            Width = 172
            Height = 12
            AutoSize = False
            DataField = 'FIE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText48: TRLDBText
            Left = 119
            Top = 284
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FCONT01'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText49: TRLDBText
            Left = 119
            Top = 298
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText50: TRLDBText
            Left = 293
            Top = 297
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FFAX'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText51: TRLDBText
            Left = 544
            Top = 203
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1TOTLIQ'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText52: TRLDBText
            Left = 544
            Top = 217
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpfat'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText53: TRLDBText
            Left = 544
            Top = 230
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpent'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText54: TRLDBText
            Left = 544
            Top = 255
            Width = 197
            Height = 12
            AutoSize = False
            DataField = 'NOMFP'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 546
            Top = 297
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1CODUSR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand7: TRLBand
          Left = 19
          Top = 439
          Width = 756
          Height = 33
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel118: TRLLabel
            Left = 5
            Top = 18
            Width = 106
            Height = 12
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel119: TRLLabel
            Left = 249
            Top = 18
            Width = 32
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel120: TRLLabel
            Left = 283
            Top = 18
            Width = 20
            Height = 12
            AutoSize = False
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo5: TRLMemo
            Left = 305
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Qtde.'
              'Pedida')
            ParentFont = False
          end
          object RLMemo6: TRLMemo
            Left = 352
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor'
              'Unit'#225'rio')
            ParentFont = False
          end
          object RLLabel121: TRLLabel
            Left = 402
            Top = 5
            Width = 142
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '.--------------Descontos---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel122: TRLLabel
            Left = 402
            Top = 18
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Fixo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel123: TRLLabel
            Left = 450
            Top = 18
            Width = 94
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Adicionais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo7: TRLMemo
            Left = 548
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Repasse'
              'de ICMS')
            ParentFont = False
          end
          object RLLabel124: TRLLabel
            Left = 596
            Top = 5
            Width = 142
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '---------------VALOR TOTAL---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel125: TRLLabel
            Left = 597
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel126: TRLLabel
            Left = 644
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descontos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel127: TRLLabel
            Left = 692
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 19
          Top = 472
          Width = 756
          Height = 14
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          AfterPrint = RLBand3AfterPrint
          object RLDBText56: TRLDBText
            Left = 5
            Top = 1
            Width = 240
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'nompro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText57: TRLDBText
            Left = 249
            Top = 1
            Width = 32
            Height = 12
            AutoSize = False
            DataField = 'PF2CODPRO'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel119
            ParentFont = False
          end
          object RLDBText58: TRLDBText
            Left = 283
            Top = 1
            Width = 20
            Height = 12
            AutoSize = False
            DataField = 'undpro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel120
            ParentFont = False
          end
          object RLDBText59: TRLDBText
            Left = 305
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2QTDP'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo5
            ParentFont = False
          end
          object RLDBText60: TRLDBText
            Left = 352
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pcoimp'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo6
            ParentFont = False
          end
          object RLDBText61: TRLDBText
            Left = 402
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1DESC01'
            DataSource = src_pfor01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel122
            ParentFont = False
          end
          object RLDBText62: TRLDBText
            Left = 451
            Top = 1
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1DESC02'
            DataSource = src_pfor01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText63: TRLDBText
            Left = 548
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2DESC02'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo7
            ParentFont = False
          end
          object RLDBText64: TRLDBText
            Left = 597
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totbru'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel125
            ParentFont = False
          end
          object RLDBText65: TRLDBText
            Left = 644
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totdes'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel126
            ParentFont = False
          end
          object RLDBText66: TRLDBText
            Left = 692
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totliq'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel127
            ParentFont = False
          end
          object RLDBText67: TRLDBText
            Left = 506
            Top = 2
            Width = 37
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2DESC01'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand9: TRLBand
          Left = 19
          Top = 486
          Width = 756
          Height = 81
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand9BeforePrint
          object RLLabel128: TRLLabel
            Left = 5
            Top = 10
            Width = 246
            Height = 12
            AutoSize = False
            Caption = 
              'Total do Pedido.................................................' +
              '.........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totdesm02: TRLLabel
            Left = 644
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'totqtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object totbrum02: TRLLabel
            Left = 597
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'totqtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object totqtdm02: TRLLabel
            Left = 305
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totliqm02: TRLLabel
            Left = 692
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'totqtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel133: TRLLabel
            Left = 100
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel134: TRLLabel
            Left = 100
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel135: TRLLabel
            Left = 365
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Comprador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel136: TRLLabel
            Left = 365
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 19
          Top = 567
          Width = 756
          Height = 17
          BandType = btFooter
          BeforePrint = RLBand10BeforePrint
          object emitidom02: TRLLabel
            Left = 3
            Top = 2
            Width = 38
            Height = 12
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel138: TRLLabel
            Left = 669
            Top = 2
            Width = 39
            Height = 12
            AutoSize = False
            Caption = 'P'#225'gina.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 691
            Top = 2
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
          end
          object banner02: TRLLabel
            Left = 134
            Top = 2
            Width = 469
            Height = 14
            AutoSize = False
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
    object tsmodelo03: TTabSheet
      Caption = 'Modelo03'
      ImageIndex = 2
      object modelo03: TRLReport
        Left = 24
        Top = -216
        Width = 794
        Height = 1123
        DataSource = Src_PFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        BeforePrint = modelo03BeforePrint
        object RLBand11: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 648
          BandType = btHeader
          object RLDraw39: TRLDraw
            Left = 382
            Top = 337
            Width = 369
            Height = 70
          end
          object qr_imglogom03: TRLImage
            Left = 4
            Top = 6
            Width = 137
            Height = 155
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
          object RLDBText68: TRLDBText
            Left = 145
            Top = 5
            Width = 606
            Height = 51
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText69: TRLDBText
            Left = 145
            Top = 56
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object enderecom03: TRLDBText
            Left = 145
            Top = 73
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ENDERECO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cidadem03: TRLDBText
            Left = 145
            Top = 90
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object telefonem03: TRLDBText
            Left = 145
            Top = 106
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'telefone'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object emailm03: TRLDBText
            Left = 145
            Top = 122
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cnpjm03: TRLDBText
            Left = 145
            Top = 138
            Width = 606
            Height = 18
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw40: TRLDraw
            Left = 3
            Top = 162
            Width = 751
            Height = 2
            Pen.Style = psInsideFrame
          end
          object RLLabel139: TRLLabel
            Left = 4
            Top = 165
            Width = 87
            Height = 18
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw41: TRLDraw
            Left = 5
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel140: TRLLabel
            Left = 10
            Top = 190
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel141: TRLLabel
            Left = 10
            Top = 203
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Nome...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel142: TRLLabel
            Left = 10
            Top = 217
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Endere'#231'o...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel143: TRLLabel
            Left = 10
            Top = 230
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Bairro.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel144: TRLLabel
            Left = 10
            Top = 243
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cidade.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel145: TRLLabel
            Left = 10
            Top = 256
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cnpj...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel146: TRLLabel
            Left = 10
            Top = 269
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Inscri'#231#227'o Estadual.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel147: TRLLabel
            Left = 10
            Top = 283
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Representante......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel148: TRLLabel
            Left = 10
            Top = 297
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Telefone...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel149: TRLLabel
            Left = 230
            Top = 190
            Width = 60
            Height = 12
            AutoSize = False
            Caption = 'Telefone..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel150: TRLLabel
            Left = 293
            Top = 243
            Width = 35
            Height = 12
            AutoSize = False
            Caption = 'U.F..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel151: TRLLabel
            Left = 230
            Top = 256
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Cep.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel152: TRLLabel
            Left = 230
            Top = 297
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Fax.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel153: TRLLabel
            Left = 383
            Top = 165
            Width = 133
            Height = 18
            Caption = 'Ordem de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw42: TRLDraw
            Left = 382
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel154: TRLLabel
            Left = 386
            Top = 189
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Pedido No....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel155: TRLLabel
            Left = 386
            Top = 202
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Valor Total do Pedido (R$)...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel156: TRLLabel
            Left = 386
            Top = 216
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Faturamento.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel157: TRLLabel
            Left = 386
            Top = 229
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Entrega.....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel158: TRLLabel
            Left = 386
            Top = 242
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Frete (CIF/FOB)..............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel159: TRLLabel
            Left = 386
            Top = 255
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Cond. Pgto...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel160: TRLLabel
            Left = 386
            Top = 268
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Observa'#231#227'o...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel161: TRLLabel
            Left = 386
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Comprador....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel162: TRLLabel
            Left = 5
            Top = 316
            Width = 160
            Height = 18
            Caption = 'Parcelas/Vencimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw43: TRLDraw
            Left = 5
            Top = 337
            Width = 369
            Height = 70
          end
          object RLLabel163: TRLLabel
            Left = 8
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw44: TRLDraw
            Left = 102
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw45: TRLDraw
            Left = 5
            Top = 353
            Width = 369
            Height = 1
          end
          object tipov01m03: TRLLabel
            Left = 8
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw46: TRLDraw
            Left = 5
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw47: TRLDraw
            Left = 5
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov02m03: TRLLabel
            Left = 8
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov03m03: TRLLabel
            Left = 8
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel167: TRLLabel
            Left = 107
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw48: TRLDraw
            Left = 166
            Top = 338
            Width = 1
            Height = 69
          end
          object prazo01m03: TRLLabel
            Left = 107
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo02m03: TRLLabel
            Left = 107
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo03m03: TRLLabel
            Left = 107
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel171: TRLLabel
            Left = 172
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw49: TRLDraw
            Left = 231
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw50: TRLDraw
            Left = 296
            Top = 338
            Width = 1
            Height = 69
          end
          object RLLabel172: TRLLabel
            Left = 236
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel173: TRLLabel
            Left = 306
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav01m03: TRLLabel
            Left = 169
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav02m03: TRLLabel
            Left = 169
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav03m03: TRLLabel
            Left = 169
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc03m03: TRLLabel
            Left = 234
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc01m03: TRLLabel
            Left = 234
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc02m03: TRLLabel
            Left = 234
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc03m03: TRLLabel
            Left = 301
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc01m03: TRLLabel
            Left = 301
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc02m03: TRLLabel
            Left = 301
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel183: TRLLabel
            Left = 385
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw51: TRLDraw
            Left = 479
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw52: TRLDraw
            Left = 543
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw53: TRLDraw
            Left = 608
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw54: TRLDraw
            Left = 673
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw55: TRLDraw
            Left = 382
            Top = 353
            Width = 369
            Height = 1
          end
          object RLDraw56: TRLDraw
            Left = 382
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw57: TRLDraw
            Left = 382
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov04m03: TRLLabel
            Left = 385
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov05m03: TRLLabel
            Left = 385
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov06m03: TRLLabel
            Left = 385
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo06m03: TRLLabel
            Left = 484
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo05m03: TRLLabel
            Left = 484
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo04m03: TRLLabel
            Left = 484
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel190: TRLLabel
            Left = 484
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel191: TRLLabel
            Left = 549
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav04m03: TRLLabel
            Left = 546
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav05m03: TRLLabel
            Left = 546
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav06m03: TRLLabel
            Left = 546
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc06m03: TRLLabel
            Left = 611
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc05m03: TRLLabel
            Left = 611
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc04m03: TRLLabel
            Left = 611
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel198: TRLLabel
            Left = 613
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel199: TRLLabel
            Left = 683
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc04m03: TRLLabel
            Left = 678
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc05m03: TRLLabel
            Left = 678
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc06m03: TRLLabel
            Left = 678
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object fretem03: TRLLabel
            Left = 544
            Top = 242
            Width = 196
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object qrobsm03: TRLMemo
            Left = 545
            Top = 268
            Width = 197
            Height = 25
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object nomusrm03: TRLLabel
            Left = 587
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chavem03: TRLLabel
            Left = 544
            Top = 189
            Width = 201
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText75: TRLDBText
            Left = 119
            Top = 190
            Width = 54
            Height = 12
            AutoSize = False
            DataField = 'PF1CODFOR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText76: TRLDBText
            Left = 294
            Top = 190
            Width = 74
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText77: TRLDBText
            Left = 119
            Top = 203
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FRAZAO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText78: TRLDBText
            Left = 119
            Top = 217
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FNLOG'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText79: TRLDBText
            Left = 119
            Top = 230
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FBAIRRO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText80: TRLDBText
            Left = 119
            Top = 243
            Width = 171
            Height = 12
            AutoSize = False
            DataField = 'FCIDADE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText81: TRLDBText
            Left = 331
            Top = 243
            Width = 38
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FUF'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText82: TRLDBText
            Left = 119
            Top = 256
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FCGC'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText83: TRLDBText
            Left = 293
            Top = 256
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FCEP'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 119
            Top = 270
            Width = 172
            Height = 12
            AutoSize = False
            DataField = 'FIE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText85: TRLDBText
            Left = 119
            Top = 284
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FCONT01'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText86: TRLDBText
            Left = 119
            Top = 298
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText87: TRLDBText
            Left = 293
            Top = 297
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FFAX'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText88: TRLDBText
            Left = 544
            Top = 203
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1TOTLIQ'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText89: TRLDBText
            Left = 544
            Top = 217
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpfat'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText90: TRLDBText
            Left = 544
            Top = 230
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpent'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText91: TRLDBText
            Left = 544
            Top = 255
            Width = 197
            Height = 12
            AutoSize = False
            DataField = 'NOMFP'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText92: TRLDBText
            Left = 546
            Top = 297
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1CODUSR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw58: TRLDraw
            Left = 6
            Top = 416
            Width = 744
            Height = 225
          end
          object RLLabel227: TRLLabel
            Left = 7
            Top = 452
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PRAZO ESTABELECIDO PARA ENTREGA?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel228: TRLLabel
            Left = 7
            Top = 467
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'QUANTIDADE DE MATERIAL CONFERE NFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel235: TRLLabel
            Left = 7
            Top = 557
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'ESPECIFICA'#199#195'O DO MATERIAL?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel237: TRLLabel
            Left = 7
            Top = 587
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'POSSUI LAUDO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel238: TRLLabel
            Left = 7
            Top = 602
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'OBS..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel239: TRLLabel
            Left = 7
            Top = 618
            Width = 442
            Height = 22
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'VERIFICADO POR...:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RL_EMP: TRLLabel
            Left = 7
            Top = 417
            Width = 744
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EXCLUSIVO DA EMPRESA ..:'
          end
          object RLLabel230: TRLLabel
            Left = 7
            Top = 435
            Width = 744
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'AVALIA'#199#195'O DO DESEMPENHO DO FORNECEDOR'
          end
          object RLLabel231: TRLLabel
            Left = 266
            Top = 452
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel232: TRLLabel
            Left = 266
            Top = 467
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel233: TRLLabel
            Left = 266
            Top = 557
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel234: TRLLabel
            Left = 266
            Top = 587
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel236: TRLLabel
            Left = 266
            Top = 602
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel240: TRLLabel
            Left = 529
            Top = 452
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel241: TRLLabel
            Left = 529
            Top = 467
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel242: TRLLabel
            Left = 529
            Top = 557
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel243: TRLLabel
            Left = 529
            Top = 587
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel244: TRLLabel
            Left = 529
            Top = 602
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel245: TRLLabel
            Left = 449
            Top = 618
            Width = 302
            Height = 22
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'DATA DO RECEBIMENTO..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel77: TRLLabel
            Left = 529
            Top = 482
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel78: TRLLabel
            Left = 265
            Top = 482
            Width = 266
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel80: TRLLabel
            Left = 7
            Top = 482
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'LOTE DO MATERIAL CONFERE NFE?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel81: TRLLabel
            Left = 529
            Top = 497
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel115: TRLLabel
            Left = 265
            Top = 497
            Width = 266
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel116: TRLLabel
            Left = 7
            Top = 497
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'VALIDADE SUPERIOR A 12 MESES?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel117: TRLLabel
            Left = 7
            Top = 512
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EMBALAGEM N'#195'O POSSUI DANO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel130: TRLLabel
            Left = 265
            Top = 512
            Width = 266
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel131: TRLLabel
            Left = 529
            Top = 512
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel132: TRLLabel
            Left = 7
            Top = 527
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EMPILAMENTO MAXIMO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel166: TRLLabel
            Left = 265
            Top = 527
            Width = 266
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel168: TRLLabel
            Left = 529
            Top = 527
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel169: TRLLabel
            Left = 7
            Top = 542
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PRODUTO DE GELADEIRA? T.'#176'C ADEQUADA?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel170: TRLLabel
            Left = 265
            Top = 542
            Width = 266
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel174: TRLLabel
            Left = 529
            Top = 542
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel175: TRLLabel
            Left = 7
            Top = 572
            Width = 260
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'TEM CONDICAO DE INTEGRAR O ESTOQUE? '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel176: TRLLabel
            Left = 266
            Top = 572
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel177: TRLLabel
            Left = 529
            Top = 572
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand12: TRLBand
          Left = 19
          Top = 667
          Width = 756
          Height = 33
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel206: TRLLabel
            Left = 5
            Top = 18
            Width = 106
            Height = 12
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel207: TRLLabel
            Left = 249
            Top = 18
            Width = 32
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel208: TRLLabel
            Left = 283
            Top = 18
            Width = 20
            Height = 12
            AutoSize = False
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo9: TRLMemo
            Left = 305
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Qtde.'
              'Pedida')
            ParentFont = False
          end
          object RLMemo10: TRLMemo
            Left = 352
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor'
              'Unit'#225'rio')
            ParentFont = False
          end
          object RLLabel209: TRLLabel
            Left = 402
            Top = 5
            Width = 142
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '.--------------Descontos---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel210: TRLLabel
            Left = 402
            Top = 18
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Fixo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel211: TRLLabel
            Left = 450
            Top = 18
            Width = 94
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Adicionais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo11: TRLMemo
            Left = 548
            Top = 5
            Width = 46
            Height = 25
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Repasse'
              'de ICMS')
            ParentFont = False
          end
          object RLLabel212: TRLLabel
            Left = 596
            Top = 5
            Width = 142
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = '---------------VALOR TOTAL---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel213: TRLLabel
            Left = 597
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel214: TRLLabel
            Left = 644
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descontos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel215: TRLLabel
            Left = 692
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand13: TRLBand
          Left = 19
          Top = 700
          Width = 756
          Height = 14
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          AfterPrint = RLBand3AfterPrint
          object RLDBText93: TRLDBText
            Left = 5
            Top = 1
            Width = 240
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'nompro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText94: TRLDBText
            Left = 249
            Top = 1
            Width = 32
            Height = 12
            AutoSize = False
            DataField = 'PF2CODPRO'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel207
            ParentFont = False
          end
          object RLDBText95: TRLDBText
            Left = 283
            Top = 1
            Width = 20
            Height = 12
            AutoSize = False
            DataField = 'undpro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel208
            ParentFont = False
          end
          object RLDBText96: TRLDBText
            Left = 305
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2QTDP'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo9
            ParentFont = False
          end
          object RLDBText97: TRLDBText
            Left = 352
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pcoimp'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo10
            ParentFont = False
          end
          object RLDBText99: TRLDBText
            Left = 451
            Top = 1
            Width = 53
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1DESC02'
            DataSource = src_pfor01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText100: TRLDBText
            Left = 548
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2DESC02'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo11
            ParentFont = False
          end
          object RLDBText101: TRLDBText
            Left = 597
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totbru'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel213
            ParentFont = False
          end
          object RLDBText102: TRLDBText
            Left = 644
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totdes'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel214
            ParentFont = False
          end
          object RLDBText103: TRLDBText
            Left = 692
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totliq'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel215
            ParentFont = False
          end
          object RLDBText104: TRLDBText
            Left = 506
            Top = 2
            Width = 37
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF2DESC01'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText98: TRLDBText
            Left = 402
            Top = 1
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'PF1DESC01'
            DataSource = src_pfor01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel210
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 402
            Top = 1
            Width = 46
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'lotes'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLLabel210
            ParentFont = False
            Visible = False
          end
        end
        object RLBand14: TRLBand
          Left = 19
          Top = 714
          Width = 756
          Height = 81
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand14BeforePrint
          object RLLabel216: TRLLabel
            Left = 5
            Top = 10
            Width = 246
            Height = 12
            AutoSize = False
            Caption = 
              'Total do Pedido.................................................' +
              '.........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totdesm03: TRLLabel
            Left = 644
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object totbrum03: TRLLabel
            Left = 597
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object totqtdm03: TRLLabel
            Left = 305
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object totliqm03: TRLLabel
            Left = 692
            Top = 10
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel221: TRLLabel
            Left = 100
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel222: TRLLabel
            Left = 100
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel223: TRLLabel
            Left = 365
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Comprador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel224: TRLLabel
            Left = 365
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand15: TRLBand
          Left = 19
          Top = 795
          Width = 756
          Height = 21
          BandType = btFooter
          BeforePrint = RLBand15BeforePrint
          object RLLabel225: TRLLabel
            Left = 3
            Top = 5
            Width = 38
            Height = 12
            AutoSize = False
            Caption = 'emitidom03'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel226: TRLLabel
            Left = 669
            Top = 5
            Width = 39
            Height = 12
            AutoSize = False
            Caption = 'P'#225'gina.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 691
            Top = 5
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
          end
          object banner03: TRLLabel
            Left = 134
            Top = 2
            Width = 435
            Height = 14
            AutoSize = False
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
    object Ts_Mod04: TTabSheet
      Caption = 'Ts_Mod04'
      ImageIndex = 3
      object modelo04: TRLReport
        Left = 48
        Top = 75
        Width = 794
        Height = 1123
        DataSource = Src_PFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        BeforePrint = modelo01BeforePrint
        object RLBand18: TRLBand
          Left = 19
          Top = 129
          Width = 756
          Height = 20
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          AfterPrint = RLBand3AfterPrint
          object RLDBText120: TRLDBText
            Left = 58
            Top = 1
            Width = 300
            Height = 17
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'nompro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText121: TRLDBText
            Left = 2
            Top = 1
            Width = 55
            Height = 17
            AutoSize = False
            DataField = 'PF2CODPRO'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText122: TRLDBText
            Left = 360
            Top = 1
            Width = 25
            Height = 17
            AutoSize = False
            DataField = 'undpro'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText124: TRLDBText
            Left = 393
            Top = 1
            Width = 177
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pcoimp'
            DataSource = Src_PFor02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand20: TRLBand
          Left = 19
          Top = 149
          Width = 756
          Height = 17
          BandType = btFooter
          BeforePrint = RLBand5BeforePrint
          object RLLabel286: TRLLabel
            Left = 3
            Top = 1
            Width = 38
            Height = 12
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel287: TRLLabel
            Left = 669
            Top = 1
            Width = 39
            Height = 12
            AutoSize = False
            Caption = 'P'#225'gina.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 691
            Top = 1
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
          end
          object RLLabel288: TRLLabel
            Left = 154
            Top = 2
            Width = 431
            Height = 14
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand17: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 110
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel267: TRLLabel
            Left = 58
            Top = 90
            Width = 300
            Height = 17
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel268: TRLLabel
            Left = 1
            Top = 90
            Width = 56
            Height = 17
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel269: TRLLabel
            Left = 360
            Top = 90
            Width = 25
            Height = 17
            AutoSize = False
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo12: TRLMemo
            Left = 393
            Top = 90
            Width = 177
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor Unit'#225'rio')
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 1
            Top = 5
            Width = 752
            Height = 51
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 552
            Top = 72
            Width = 60
            Height = 16
            Info = itFullDate
          end
        end
      end
    end
    object Ts_Mod05: TTabSheet
      Caption = 'Ts_Mod05'
      ImageIndex = 4
      object modelo05: TRLReport
        Left = 24
        Top = 48
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = src_lucro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        ShowProgress = False
        Visible = False
        BeforePrint = modelo05BeforePrint
        object RLBand19: TRLBand
          Left = 20
          Top = 600
          Width = 754
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand19BeforePrint
          object RLDBText71: TRLDBText
            Left = 1
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PF2CODPRO'
            DataSource = src_lucro
          end
          object RLDBText72: TRLDBText
            Left = 77
            Top = 0
            Width = 362
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PF2NOMPRO'
            DataSource = src_lucro
          end
          object RLDBText73: TRLDBText
            Left = 439
            Top = 0
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD'
            DataSource = src_lucro
          end
          object RLDBText74: TRLDBText
            Left = 493
            Top = 0
            Width = 113
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'COMPRA'
            DataSource = src_lucro
            Holder = RLLabel264
          end
          object RLDBText105: TRLDBText
            Left = 606
            Top = 0
            Width = 99
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO'
            DataSource = src_lucro
            Holder = RLLabel265
          end
          object RLDBText106: TRLDBText
            Left = 705
            Top = 0
            Width = 48
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'LUCRO'
            DataSource = src_lucro
            Holder = RLLabel266
          end
        end
        object RLBand21: TRLBand
          Left = 20
          Top = 20
          Width = 754
          Height = 580
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          object RLDraw65: TRLDraw
            Left = 382
            Top = 337
            Width = 369
            Height = 70
          end
          object RLImage1: TRLImage
            Left = 4
            Top = 6
            Width = 137
            Height = 155
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
          object RLDBText107: TRLDBText
            Left = 145
            Top = 5
            Width = 606
            Height = 51
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText108: TRLDBText
            Left = 145
            Top = 56
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText109: TRLDBText
            Left = 145
            Top = 73
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ENDERECO'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText110: TRLDBText
            Left = 145
            Top = 90
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText111: TRLDBText
            Left = 145
            Top = 106
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'telefone'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText112: TRLDBText
            Left = 145
            Top = 122
            Width = 606
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText113: TRLDBText
            Left = 145
            Top = 138
            Width = 606
            Height = 18
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw66: TRLDraw
            Left = 3
            Top = 162
            Width = 751
            Height = 2
            Pen.Style = psInsideFrame
          end
          object RLLabel82: TRLLabel
            Left = 4
            Top = 165
            Width = 87
            Height = 18
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw67: TRLDraw
            Left = 5
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel86: TRLLabel
            Left = 10
            Top = 190
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel87: TRLLabel
            Left = 10
            Top = 203
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Nome...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel88: TRLLabel
            Left = 10
            Top = 217
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Endere'#231'o...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel89: TRLLabel
            Left = 10
            Top = 230
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Bairro.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel90: TRLLabel
            Left = 10
            Top = 243
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cidade.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel91: TRLLabel
            Left = 10
            Top = 256
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Cnpj...............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel92: TRLLabel
            Left = 10
            Top = 269
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Inscri'#231#227'o Estadual.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel93: TRLLabel
            Left = 10
            Top = 283
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Representante......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel94: TRLLabel
            Left = 10
            Top = 297
            Width = 105
            Height = 12
            AutoSize = False
            Caption = 'Telefone...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel96: TRLLabel
            Left = 230
            Top = 190
            Width = 60
            Height = 12
            AutoSize = False
            Caption = 'Telefone..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel97: TRLLabel
            Left = 293
            Top = 243
            Width = 35
            Height = 12
            AutoSize = False
            Caption = 'U.F..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel98: TRLLabel
            Left = 230
            Top = 256
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Cep.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel99: TRLLabel
            Left = 230
            Top = 297
            Width = 61
            Height = 12
            AutoSize = False
            Caption = 'Fax.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel100: TRLLabel
            Left = 383
            Top = 165
            Width = 133
            Height = 18
            Caption = 'Ordem de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw68: TRLDraw
            Left = 382
            Top = 185
            Width = 369
            Height = 129
          end
          object RLLabel101: TRLLabel
            Left = 386
            Top = 189
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Pedido No....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel104: TRLLabel
            Left = 386
            Top = 202
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Valor Total do Pedido (R$)...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel105: TRLLabel
            Left = 386
            Top = 216
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Faturamento.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel106: TRLLabel
            Left = 386
            Top = 229
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Data Prevista de Entrega.....:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel107: TRLLabel
            Left = 386
            Top = 242
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Frete (CIF/FOB)..............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel108: TRLLabel
            Left = 386
            Top = 255
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Cond. Pgto...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel109: TRLLabel
            Left = 386
            Top = 268
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Observa'#231#227'o...................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel112: TRLLabel
            Left = 386
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Caption = 'Comprador....................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel113: TRLLabel
            Left = 5
            Top = 316
            Width = 160
            Height = 18
            Caption = 'Parcelas/Vencimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw69: TRLDraw
            Left = 5
            Top = 337
            Width = 369
            Height = 70
          end
          object RLLabel114: TRLLabel
            Left = 8
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw70: TRLDraw
            Left = 102
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw71: TRLDraw
            Left = 5
            Top = 353
            Width = 369
            Height = 1
          end
          object tipov01m05: TRLLabel
            Left = 8
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw72: TRLDraw
            Left = 5
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw73: TRLDraw
            Left = 5
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov02m05: TRLLabel
            Left = 8
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov03m05: TRLLabel
            Left = 8
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel129: TRLLabel
            Left = 107
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw74: TRLDraw
            Left = 166
            Top = 338
            Width = 1
            Height = 69
          end
          object prazo01m05: TRLLabel
            Left = 107
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo02m05: TRLLabel
            Left = 107
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo03m05: TRLLabel
            Left = 107
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel137: TRLLabel
            Left = 172
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw75: TRLDraw
            Left = 231
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw76: TRLDraw
            Left = 296
            Top = 338
            Width = 1
            Height = 69
          end
          object RLLabel164: TRLLabel
            Left = 236
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel165: TRLLabel
            Left = 306
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav01m05: TRLLabel
            Left = 169
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav02m05: TRLLabel
            Left = 169
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav03m05: TRLLabel
            Left = 169
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc03m05: TRLLabel
            Left = 234
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc01m05: TRLLabel
            Left = 234
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc02m05: TRLLabel
            Left = 234
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc03m05: TRLLabel
            Left = 301
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc01m05: TRLLabel
            Left = 301
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc02m05: TRLLabel
            Left = 301
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel179: TRLLabel
            Left = 385
            Top = 340
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw77: TRLDraw
            Left = 479
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw78: TRLDraw
            Left = 543
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw79: TRLDraw
            Left = 608
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw80: TRLDraw
            Left = 673
            Top = 338
            Width = 1
            Height = 69
          end
          object RLDraw81: TRLDraw
            Left = 382
            Top = 353
            Width = 369
            Height = 1
          end
          object RLDraw82: TRLDraw
            Left = 382
            Top = 371
            Width = 369
            Height = 1
          end
          object RLDraw83: TRLDraw
            Left = 382
            Top = 388
            Width = 369
            Height = 1
          end
          object tipov04m05: TRLLabel
            Left = 385
            Top = 356
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov05m05: TRLLabel
            Left = 385
            Top = 375
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tipov06m05: TRLLabel
            Left = 385
            Top = 392
            Width = 92
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo06m05: TRLLabel
            Left = 484
            Top = 392
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo05m05: TRLLabel
            Left = 484
            Top = 375
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object prazo04m05: TRLLabel
            Left = 484
            Top = 356
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel187: TRLLabel
            Left = 484
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Prazo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel188: TRLLabel
            Left = 549
            Top = 340
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav04m05: TRLLabel
            Left = 546
            Top = 356
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav05m05: TRLLabel
            Left = 546
            Top = 375
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object datav06m05: TRLLabel
            Left = 546
            Top = 392
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc06m05: TRLLabel
            Left = 611
            Top = 392
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc05m05: TRLLabel
            Left = 611
            Top = 375
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc04m05: TRLLabel
            Left = 611
            Top = 356
            Width = 60
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel197: TRLLabel
            Left = 613
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '% Desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel200: TRLLabel
            Left = 683
            Top = 340
            Width = 56
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Parc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc04m05: TRLLabel
            Left = 678
            Top = 356
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc05m05: TRLLabel
            Left = 678
            Top = 375
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object enc06m05: TRLLabel
            Left = 678
            Top = 392
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel204: TRLLabel
            Left = 544
            Top = 242
            Width = 196
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo4: TRLMemo
            Left = 545
            Top = 268
            Width = 197
            Height = 25
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel205: TRLLabel
            Left = 587
            Top = 297
            Width = 155
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlchavem5: TRLLabel
            Left = 544
            Top = 189
            Width = 201
            Height = 12
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText114: TRLDBText
            Left = 119
            Top = 190
            Width = 54
            Height = 12
            AutoSize = False
            DataField = 'PF1CODFOR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText115: TRLDBText
            Left = 294
            Top = 190
            Width = 74
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText116: TRLDBText
            Left = 119
            Top = 203
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FRAZAO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText117: TRLDBText
            Left = 119
            Top = 217
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FNLOG'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText118: TRLDBText
            Left = 119
            Top = 230
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FBAIRRO'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText119: TRLDBText
            Left = 119
            Top = 243
            Width = 171
            Height = 12
            AutoSize = False
            DataField = 'FCIDADE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText123: TRLDBText
            Left = 331
            Top = 243
            Width = 38
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'FUF'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText125: TRLDBText
            Left = 119
            Top = 256
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FCGC'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText126: TRLDBText
            Left = 293
            Top = 256
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FCEP'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText127: TRLDBText
            Left = 119
            Top = 270
            Width = 172
            Height = 12
            AutoSize = False
            DataField = 'FIE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText128: TRLDBText
            Left = 119
            Top = 284
            Width = 249
            Height = 12
            AutoSize = False
            DataField = 'FCONT01'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText129: TRLDBText
            Left = 119
            Top = 298
            Width = 107
            Height = 12
            AutoSize = False
            DataField = 'FFONE'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText130: TRLDBText
            Left = 293
            Top = 297
            Width = 75
            Height = 12
            AutoSize = False
            DataField = 'FFAX'
            DataSource = src_for
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText131: TRLDBText
            Left = 544
            Top = 203
            Width = 96
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1TOTLIQ'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText132: TRLDBText
            Left = 544
            Top = 217
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpfat'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText133: TRLDBText
            Left = 544
            Top = 230
            Width = 64
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'dtpent'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText134: TRLDBText
            Left = 544
            Top = 255
            Width = 197
            Height = 12
            AutoSize = False
            DataField = 'NOMFP'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText135: TRLDBText
            Left = 546
            Top = 297
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PF1CODUSR'
            DataSource = src_pfor01
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw84: TRLDraw
            Left = 6
            Top = 416
            Width = 744
            Height = 134
          end
          object RLLabel218: TRLLabel
            Left = 7
            Top = 452
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PRAZO ESTABELECIDO PARA ENTREGA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel219: TRLLabel
            Left = 7
            Top = 467
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'QUANTIDADE DE MATERIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel220: TRLLabel
            Left = 7
            Top = 482
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'ESPECIFICA'#199#195'O DO MATERIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel229: TRLLabel
            Left = 7
            Top = 497
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'LAUDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel246: TRLLabel
            Left = 7
            Top = 512
            Width = 259
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'OBS..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel247: TRLLabel
            Left = 7
            Top = 527
            Width = 442
            Height = 22
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'VERIFICADO POR...:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel248: TRLLabel
            Left = 7
            Top = 417
            Width = 744
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EXCLUSIVO DA EMPRESA ..:'
          end
          object RLLabel249: TRLLabel
            Left = 7
            Top = 435
            Width = 744
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'AVALIA'#199#195'O DO DESEMPENHO DO FORNECEDOR'
          end
          object RLLabel250: TRLLabel
            Left = 266
            Top = 452
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel251: TRLLabel
            Left = 266
            Top = 467
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel252: TRLLabel
            Left = 266
            Top = 482
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel253: TRLLabel
            Left = 266
            Top = 497
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel254: TRLLabel
            Left = 266
            Top = 512
            Width = 264
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel255: TRLLabel
            Left = 529
            Top = 452
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel256: TRLLabel
            Left = 529
            Top = 467
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel257: TRLLabel
            Left = 529
            Top = 482
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel258: TRLLabel
            Left = 529
            Top = 497
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel259: TRLLabel
            Left = 529
            Top = 512
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFORME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel260: TRLLabel
            Left = 448
            Top = 527
            Width = 303
            Height = 22
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'DATA DO RECEBIMENTO..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel261: TRLLabel
            Left = 1
            Top = 563
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CODIGO'
          end
          object RLLabel262: TRLLabel
            Left = 77
            Top = 563
            Width = 362
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'NOME'
          end
          object RLLabel263: TRLLabel
            Left = 439
            Top = 563
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'QTD'
          end
          object RLLabel264: TRLLabel
            Left = 493
            Top = 563
            Width = 113
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'PRE'#199'O CPR'
          end
          object RLLabel265: TRLLabel
            Left = 606
            Top = 563
            Width = 99
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'PRE'#199'O VND'
          end
          object RLLabel266: TRLLabel
            Left = 705
            Top = 563
            Width = 48
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '%%'
          end
        end
        object RLBand16: TRLBand
          Left = 20
          Top = 617
          Width = 754
          Height = 81
          HelpType = htKeyword
          HelpKeyword = #39
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand16BeforePrint
          object RLLabel76: TRLLabel
            Left = 197
            Top = 0
            Width = 242
            Height = 16
            AutoSize = False
            Caption = 
              'Total do Pedido.................................................' +
              '.........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object PRECO_CO: TRLLabel
            Left = 493
            Top = 0
            Width = 113
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLLabel264
            ParentFont = False
          end
          object QTD_T: TRLLabel
            Left = 439
            Top = 0
            Width = 53
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
          object PRECO_VE: TRLLabel
            Left = 606
            Top = 0
            Width = 99
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLLabel265
            ParentFont = False
          end
          object RLLabel270: TRLLabel
            Left = 100
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel271: TRLLabel
            Left = 100
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel272: TRLLabel
            Left = 365
            Top = 60
            Width = 218
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Comprador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel273: TRLLabel
            Left = 365
            Top = 48
            Width = 218
            Height = 12
            AutoSize = False
            Caption = '___________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object Src_PFor02: TDataSource
    DataSet = Qr_PF02
    Left = 38
    Top = 55
  end
  object src_pfor01: TDataSource
    DataSet = Query_Pf01
    Left = 30
    Top = 90
  end
  object src_emp: TDataSource
    DataSet = DM1.Tb_Emp
    Left = 69
    Top = 76
  end
  object src_for: TDataSource
    DataSet = DM1.Tb_For
    Left = 69
    Top = 100
  end
  object src_lucro: TDataSource
    DataSet = Tb_Lucro
    Left = 53
    Top = 188
  end
  object Qr_PF02: TQuery
    OnCalcFields = Qr_PF02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADPF2 where PF2CHAVE is null')
    Left = 152
    Top = 64
    object Qr_PF02PF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_PF02PF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_PF02PF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_PF02PF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_PF02PF2LOTE: TStringField
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_PF02PF2DATAV: TDateTimeField
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Qr_PF02PF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_PF02PF2PU: TFloatField
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PF02PF2DESC01: TFloatField
      FieldName = 'PF2DESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Qr_PF02PF2DESC02: TFloatField
      FieldName = 'PF2DESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Qr_PF02PF2DESC03: TFloatField
      FieldName = 'PF2DESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Qr_PF02PF2SIT: TStringField
      FieldName = 'PF2SIT'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 4
    end
    object Qr_PF02PF2ALIQ: TFloatField
      FieldName = 'PF2ALIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Qr_PF02PF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQNR'
    end
    object Qr_PF02PF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_PF02PF2ICMSN: TFloatField
      FieldName = 'PF2ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Qr_PF02PF2BASER: TFloatField
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_PF02PF2ICMSR: TFloatField
      FieldName = 'PF2ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Qr_PF02PF2STATUS: TFloatField
      FieldName = 'PF2STATUS'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS'
    end
    object Qr_PF02PF2TAB: TStringField
      FieldName = 'PF2TAB'
      Origin = 'SG_ASSOC.CADPF2.PF2TAB'
      Size = 1
    end
    object Qr_PF02PF2LISTA: TFloatField
      FieldName = 'PF2LISTA'
      Origin = 'SG_ASSOC.CADPF2.PF2LISTA'
    end
    object Qr_PF02PF2PCOTAB: TFloatField
      FieldName = 'PF2PCOTAB'
      Origin = 'SG_ASSOC.CADPF2.PF2PCOTAB'
    end
    object Qr_PF02PF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_PF02PF2BASENR: TFloatField
      FieldName = 'PF2BASENR'
      Origin = 'SG_ASSOC.CADPF2.PF2BASENR'
    end
    object Qr_PF02PF2ICMSNR: TFloatField
      FieldName = 'PF2ICMSNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSNR'
    end
    object Qr_PF02PF2ISENTAS: TFloatField
      FieldName = 'PF2ISENTAS'
      Origin = 'SG_ASSOC.CADPF2.PF2ISENTAS'
    end
    object Qr_PF02PF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Qr_PF02PF2IPI: TFloatField
      FieldName = 'PF2IPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
      DisplayFormat = '#,##0.00'
    end
    object Qr_PF02PF2CFO: TFloatField
      FieldName = 'PF2CFO'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Qr_PF02PF2DESCRAT: TFloatField
      FieldName = 'PF2DESCRAT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRAT'
    end
    object Qr_PF02undpro: TStringField
      FieldKind = fkCalculated
      FieldName = 'undpro'
      Size = 3
      Calculated = True
    end
    object Qr_PF02totdes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totdes'
      Calculated = True
    end
    object Qr_PF02totliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totliq'
      Calculated = True
    end
    object Qr_PF02totbru: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totbru'
      Calculated = True
    end
    object Qr_PF02PF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_PF02PF2PMC: TFloatField
      FieldName = 'PF2PMC'
      Origin = 'SG_ASSOC.CADPF2.PF2PMC'
    end
    object Qr_PF02PF2VALDES: TFloatField
      FieldName = 'PF2VALDES'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDES'
    end
    object Qr_PF02PF2OUTRAS: TFloatField
      FieldName = 'PF2OUTRAS'
      Origin = 'SG_ASSOC.CADPF2.PF2OUTRAS'
    end
    object Qr_PF02PF2ORIGEM: TFloatField
      FieldName = 'PF2ORIGEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ORIGEM'
    end
    object Qr_PF02PF2STATUS_PF1: TFloatField
      FieldName = 'PF2STATUS_PF1'
      Origin = 'SG_ASSOC.CADPF2.PF2STATUS_PF1'
    end
    object Qr_PF02PF2PUOUT: TFloatField
      FieldName = 'PF2PUOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2PUOUT'
    end
    object Qr_PF02PF2PBT: TFloatField
      FieldName = 'PF2PBT'
      Origin = 'SG_ASSOC.CADPF2.PF2PBT'
    end
    object Qr_PF02PF2FRERAT: TFloatField
      FieldName = 'PF2FRERAT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERAT'
    end
    object Qr_PF02PF2QTDREC: TFloatField
      FieldName = 'PF2QTDREC'
      Origin = 'SG_ASSOC.CADPF2.PF2VALDESOUT'
    end
    object Qr_PF02PF2VALDESOUT: TFloatField
      FieldName = 'PF2VALDESOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2FRERATOUT'
    end
    object Qr_PF02PF2FRERATOUT: TFloatField
      FieldName = 'PF2FRERATOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRATOUT'
    end
    object Qr_PF02PF2DESCRATOUT: TFloatField
      FieldName = 'PF2DESCRATOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDESOUT'
    end
    object Qr_PF02PF2TOTDESOUT: TFloatField
      FieldName = 'PF2TOTDESOUT'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_PF02PF2SIV_OUTROS: TFloatField
      FieldName = 'PF2SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF2.PF2SIV_OUTROS'
    end
    object Qr_PF02PF2PREDICMNOR: TFloatField
      FieldName = 'PF2PREDICMNOR'
      Origin = 'SG_ASSOC.CADPF2.PF2PREDICMNOR'
    end
    object Qr_PF02PF2CFOP_COMP: TStringField
      FieldName = 'PF2CFOP_COMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CFOP_COMP'
      Size = 10
    end
    object Qr_PF02PF2LOTE_RE: TStringField
      FieldName = 'PF2LOTE_RE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE_RE'
    end
    object Qr_PF02PF2DTENTRADA: TDateTimeField
      FieldName = 'PF2DTENTRADA'
      Origin = 'SG_ASSOC.CADPF2.PF2DTENTRADA'
    end
    object Qr_PF02PF2OBS: TStringField
      FieldName = 'PF2OBS'
      Origin = 'SG_ASSOC.CADPF2.PF2OBS'
      Size = 200
    end
    object Qr_PF02pcoimp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pcoimp'
      Calculated = True
    end
    object Qr_PF02PF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2NOMPRO'
      Size = 120
    end
    object Qr_PF02NOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 120
      Calculated = True
    end
    object Qr_PF02PF2TOTLIQ: TFloatField
      FieldName = 'PF2TOTLIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTLIQ'
    end
    object Qr_PF02codio_no_fornecedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'codio_no_fornecedor'
      Calculated = True
    end
    object Qr_PF02lotes: TStringField
      FieldKind = fkCalculated
      FieldName = 'lotes'
      Size = 254
      Calculated = True
    end
  end
  object Query_Pf01: TQuery
    OnCalcFields = Query_Pf01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1 where PF1CHAVE is null')
    Left = 216
    Top = 64
    object Query_Pf01PF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Query_Pf01PF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Query_Pf01PF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Query_Pf01PF1DATA: TDateTimeField
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Query_Pf01PF1OBS: TMemoField
      FieldName = 'PF1OBS'
      Origin = 'SG_ASSOC.CADPF1.PF1OBS'
      BlobType = ftMemo
      Size = 300
    end
    object Query_Pf01PF1DESC01: TFloatField
      FieldName = 'PF1DESC01'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC01'
    end
    object Query_Pf01PF1DESC02: TFloatField
      FieldName = 'PF1DESC02'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC02'
    end
    object Query_Pf01PF1DESC03: TFloatField
      FieldName = 'PF1DESC03'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC03'
    end
    object Query_Pf01PF1TOTDES: TFloatField
      FieldName = 'PF1TOTDES'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDES'
    end
    object Query_Pf01PF1TOTBRU: TFloatField
      FieldName = 'PF1TOTBRU'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRU'
    end
    object Query_Pf01PF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Query_Pf01PF1STATUS: TFloatField
      FieldName = 'PF1STATUS'
      Origin = 'SG_ASSOC.CADPF1.PF1STATUS'
    end
    object Query_Pf01PF1CODUSR: TFloatField
      FieldName = 'PF1CODUSR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODUSR'
    end
    object Query_Pf01PF1HORDIG: TStringField
      FieldName = 'PF1HORDIG'
      Origin = 'SG_ASSOC.CADPF1.PF1HORDIG'
      Size = 8
    end
    object Query_Pf01PF1USRMOD: TFloatField
      FieldName = 'PF1USRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1USRMOD'
    end
    object Query_Pf01PF1DTMOD: TDateTimeField
      FieldName = 'PF1DTMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1DTMOD'
    end
    object Query_Pf01PF1HRMOD: TStringField
      FieldName = 'PF1HRMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1HRMOD'
      Size = 8
    end
    object Query_Pf01PF1TOTMER: TFloatField
      FieldName = 'PF1TOTMER'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTMER'
    end
    object Query_Pf01PF1TOTPOS: TFloatField
      FieldName = 'PF1TOTPOS'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPOS'
    end
    object Query_Pf01PF1TOTNEG: TFloatField
      FieldName = 'PF1TOTNEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTNEG'
    end
    object Query_Pf01PF1TOTINA: TFloatField
      FieldName = 'PF1TOTINA'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTINA'
    end
    object Query_Pf01PF1TOTFRE: TFloatField
      FieldName = 'PF1TOTFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFRE'
    end
    object Query_Pf01PF1TOTSEG: TFloatField
      FieldName = 'PF1TOTSEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTSEG'
    end
    object Query_Pf01PF1BASEN: TFloatField
      FieldName = 'PF1BASEN'
      Origin = 'SG_ASSOC.CADPF1.PF1BASEN'
    end
    object Query_Pf01PF1BASER: TFloatField
      FieldName = 'PF1BASER'
      Origin = 'SG_ASSOC.CADPF1.PF1BASER'
    end
    object Query_Pf01PF1ICMSN: TFloatField
      FieldName = 'PF1ICMSN'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSN'
    end
    object Query_Pf01PF1ICMSR: TFloatField
      FieldName = 'PF1ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
    object Query_Pf01PF1CODLDR: TFloatField
      FieldName = 'PF1CODLDR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODLDR'
    end
    object Query_Pf01PF1BASENR: TFloatField
      FieldName = 'PF1BASENR'
      Origin = 'SG_ASSOC.CADPF1.PF1BASENR'
    end
    object Query_Pf01PF1ICMSNR: TFloatField
      FieldName = 'PF1ICMSNR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSNR'
    end
    object Query_Pf01PF1ISENTAS: TFloatField
      FieldName = 'PF1ISENTAS'
      Origin = 'SG_ASSOC.CADPF1.PF1ISENTAS'
    end
    object Query_Pf01PF1TOTOUT: TFloatField
      FieldName = 'PF1TOTOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT'
    end
    object Query_Pf01PF1TOTIPI: TFloatField
      FieldName = 'PF1TOTIPI'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTIPI'
    end
    object Query_Pf01PF1DATANF: TDateTimeField
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Query_Pf01PF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Query_Pf01PF1SERIE: TStringField
      FieldName = 'PF1SERIE'
      Origin = 'SG_ASSOC.CADPF1.PF1SERIE'
      Size = 3
    end
    object Query_Pf01PF1SUBSER: TStringField
      FieldName = 'PF1SUBSER'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBSER'
      Size = 3
    end
    object Query_Pf01PF1CODPV: TFloatField
      FieldName = 'PF1CODPV'
      Origin = 'SG_ASSOC.CADPF1.PF1CODPV'
    end
    object Query_Pf01PF1CODBCO: TFloatField
      FieldName = 'PF1CODBCO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODBCO'
    end
    object Query_Pf01PF1CODTRA: TFloatField
      FieldName = 'PF1CODTRA'
      Origin = 'SG_ASSOC.CADPF1.PF1CODTRA'
    end
    object Query_Pf01PF1MODELO: TStringField
      FieldName = 'PF1MODELO'
      Origin = 'SG_ASSOC.CADPF1.PF1MODELO'
      Size = 3
    end
    object Query_Pf01PF1NUMDUP: TFloatField
      FieldName = 'PF1NUMDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUP'
    end
    object Query_Pf01PF1DESD: TStringField
      FieldName = 'PF1DESD'
      Origin = 'SG_ASSOC.CADPF1.PF1DESD'
      Size = 2
    end
    object Query_Pf01PF1GRAVNF: TFloatField
      FieldName = 'PF1GRAVNF'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVNF'
    end
    object Query_Pf01PF1GRAVDP: TFloatField
      FieldName = 'PF1GRAVDP'
      Origin = 'SG_ASSOC.CADPF1.PF1GRAVDP'
    end
    object Query_Pf01PF1CASASD: TFloatField
      FieldName = 'PF1CASASD'
      Origin = 'SG_ASSOC.CADPF1.PF1CASASD'
    end
    object Query_Pf01PF1TABPV: TStringField
      FieldName = 'PF1TABPV'
      Origin = 'SG_ASSOC.CADPF1.PF1TABPV'
      Size = 2
    end
    object Query_Pf01PF1DATAENT: TDateTimeField
      FieldName = 'PF1DATAENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DATAENT'
    end
    object Query_Pf01PF1DTPFAT: TDateTimeField
      FieldName = 'PF1DTPFAT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPFAT'
    end
    object Query_Pf01PF1DTPENT: TDateTimeField
      FieldName = 'PF1DTPENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DTPENT'
    end
    object Query_Pf01PF1PERCFRE: TFloatField
      FieldName = 'PF1PERCFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1PERCFRE'
    end
    object Query_Pf01PF1FRETEPC: TFloatField
      FieldName = 'PF1FRETEPC'
      Origin = 'SG_ASSOC.CADPF1.PF1FRETEPC'
    end
    object Query_Pf01PF1CONDPAG: TStringField
      FieldName = 'PF1CONDPAG'
      Origin = 'SG_ASSOC.CADPF1.PF1CONDPAG'
      Size = 30
    end
    object Query_Pf01PF1PIPIFRETE: TFloatField
      FieldName = 'PF1PIPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1PIPIFRETE'
    end
    object Query_Pf01PF1IPIFRETE: TFloatField
      FieldName = 'PF1IPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1IPIFRETE'
    end
    object Query_Pf01PF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Query_Pf01PF1TEMBOL: TFloatField
      FieldName = 'PF1TEMBOL'
      Origin = 'SG_ASSOC.CADPF1.PF1TEMBOL'
    end
    object Query_Pf01PF1LEMAT: TFloatField
      FieldName = 'PF1LEMAT'
      Origin = 'SG_ASSOC.CADPF1.PF1LEMAT'
    end
    object Query_Pf01PF1CODEMP_ORI: TFloatField
      FieldName = 'PF1CODEMP_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP_ORI'
    end
    object Query_Pf01PF1NUMPED_ORI: TFloatField
      FieldName = 'PF1NUMPED_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMPED_ORI'
    end
    object Query_Pf01PF1PAG_ORI: TFloatField
      FieldName = 'PF1PAG_ORI'
      Origin = 'SG_ASSOC.CADPF1.PF1PAG_ORI'
    end
    object Query_Pf01PF1ORIGEM: TFloatField
      FieldName = 'PF1ORIGEM'
      Origin = 'SG_ASSOC.CADPF1.PF1ORIGEM'
    end
    object Query_Pf01PF1OUTNINC: TFloatField
      FieldName = 'PF1OUTNINC'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTNINC'
    end
    object Query_Pf01PF1OUTDESP: TFloatField
      FieldName = 'PF1OUTDESP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTDESP'
    end
    object Query_Pf01PF1NFCF: TFloatField
      FieldName = 'PF1NFCF'
      Origin = 'SGE.CADPF1.PF1NFCF'
    end
    object Query_Pf01PF1TOTLIQOUT: TFloatField
      FieldName = 'PF1TOTLIQOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQOUT'
    end
    object Query_Pf01PF1TOTPBT: TFloatField
      FieldName = 'PF1TOTPBT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPBT'
    end
    object Query_Pf01PF1FORMACE: TFloatField
      FieldName = 'PF1FORMACE'
      Origin = 'SG_ASSOC.CADPF1.PF1FORMACE'
    end
    object Query_Pf01PF1SITPED: TFloatField
      FieldName = 'PF1SITPED'
      Origin = 'SG_ASSOC.CADPF1.PF1SITPED'
    end
    object Query_Pf01PF1QTDMAN: TFloatField
      FieldName = 'PF1QTDMAN'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDMAN'
    end
    object Query_Pf01PF1TOTDESOUT: TFloatField
      FieldName = 'PF1TOTDESOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDESOUT'
    end
    object Query_Pf01PF1TOTBRUOUT: TFloatField
      FieldName = 'PF1TOTBRUOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRUOUT'
    end
    object Query_Pf01PF1TOTFREOUT: TFloatField
      FieldName = 'PF1TOTFREOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFREOUT'
    end
    object Query_Pf01PF1OUTROS: TFloatField
      FieldName = 'PF1OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTROS'
    end
    object Query_Pf01PF1NUMDUPOUT: TFloatField
      FieldName = 'PF1NUMDUPOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMDUPOUT'
    end
    object Query_Pf01PF1TIPO: TFloatField
      FieldName = 'PF1TIPO'
      Origin = 'SG_ASSOC.CADPF1.PF1TIPO'
    end
    object Query_Pf01PF1SIV_FRETE: TFloatField
      FieldName = 'PF1SIV_FRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_FRETE'
    end
    object Query_Pf01PF1SIV_DARE: TFloatField
      FieldName = 'PF1SIV_DARE'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_DARE'
    end
    object Query_Pf01PF1SIV_OUTROS: TFloatField
      FieldName = 'PF1SIV_OUTROS'
      Origin = 'SG_ASSOC.CADPF1.PF1SIV_OUTROS'
    end
    object Query_Pf01PF1OUTVDUP: TFloatField
      FieldName = 'PF1OUTVDUP'
      Origin = 'SG_ASSOC.CADPF1.PF1OUTVDUP'
    end
    object Query_Pf01dtpfat: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpfat'
      Size = 10
      Calculated = True
    end
    object Query_Pf01dtpent: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpent'
      Size = 10
      Calculated = True
    end
    object Query_Pf01PF1PRAZO: TFloatField
      FieldName = 'PF1PRAZO'
      Origin = 'SG_ASSOC.CADPF1.PF1PRAZO'
    end
    object Query_Pf01PF1INT: TFloatField
      FieldName = 'PF1INT'
      Origin = 'SG_ASSOC.CADPF1.PF1INT'
    end
    object Query_Pf01PF1QTDP: TFloatField
      FieldName = 'PF1QTDP'
      Origin = 'SG_ASSOC.CADPF1.PF1QTDP'
    end
    object Query_Pf01PF1LOCAL: TFloatField
      FieldName = 'PF1LOCAL'
      Origin = 'SG_ASSOC.CADPF1.PF1LOCAL'
    end
    object Query_Pf01PF1SUBMOD: TStringField
      FieldName = 'PF1SUBMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBMOD'
      Size = 3
    end
    object Query_Pf01PF1TOTOUT_ALIQ: TFloatField
      FieldName = 'PF1TOTOUT_ALIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_ALIQ'
    end
    object Query_Pf01PF1TOTOUT_IMP: TFloatField
      FieldName = 'PF1TOTOUT_IMP'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT_IMP'
    end
    object Query_Pf01PF1LOTE_ENTRADA: TStringField
      FieldName = 'PF1LOTE_ENTRADA'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTE_ENTRADA'
    end
    object Query_Pf01PF1REGENT: TStringField
      FieldName = 'PF1REGENT'
      Origin = 'SG_ASSOC.CADPF1.PF1REGENT'
    end
    object Query_Pf01PF1SITPROD: TFloatField
      FieldName = 'PF1SITPROD'
      Origin = 'SG_ASSOC.CADPF1.PF1SITPROD'
    end
    object Query_Pf01PF1ALIQ_FRETE: TFloatField
      FieldName = 'PF1ALIQ_FRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1ALIQ_FRETE'
    end
    object Query_Pf01PF1ICMS_FRETE: TFloatField
      FieldName = 'PF1ICMS_FRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMS_FRETE'
    end
    object Query_Pf01PF1_NFE_CHAVE: TStringField
      FieldName = 'PF1_NFE_CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1_NFE_CHAVE'
      Size = 44
    end
    object Query_Pf01PF1INCFRE: TFloatField
      FieldName = 'PF1INCFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1INCFRE'
    end
    object Query_Pf01NOMFP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMFP'
      Size = 40
      Calculated = True
    end
  end
  object Tb_Lucro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select pf2codpro, decode(PF2NOMPRO,NULL,PDNOME,PF2NOMPRO)  as pf' +
        '2nompro, round(pf2qtdp,2) as QTD, round(pf2pu,2) as Compra, roun' +
        'd(pdpreco1,2) as Preco , '
      'round((pdpreco1-pf2pu)*100/pf2pu+0.01,2) as lucro'
      'from cadpf2, cadpro '
      'where pf2codpro=pdcodpro and pf2chave=100')
    Left = 208
    Top = 160
    object Tb_LucroPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
    end
    object Tb_LucroQTD: TFloatField
      FieldName = 'QTD'
    end
    object Tb_LucroCOMPRA: TFloatField
      DisplayWidth = 10
      FieldName = 'COMPRA'
    end
    object Tb_LucroPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object Tb_LucroLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object Tb_LucroPF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Size = 120
    end
  end
  object Qr_Pf01V: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPF1V where PF1VCHAVE is null')
    Left = 256
    Top = 35
    object Qr_Pf01VPF1VCODEMP: TFloatField
      FieldName = 'PF1VCODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODEMP'
    end
    object Qr_Pf01VPF1VCHAVE: TFloatField
      FieldName = 'PF1VCHAVE'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCHAVE'
    end
    object Qr_Pf01VPF1VCODIGO: TFloatField
      FieldName = 'PF1VCODIGO'
      Origin = 'SG_ASSOC.CADPF1V.PF1VCODIGO'
    end
    object Qr_Pf01VPF1VDATAV: TDateTimeField
      FieldName = 'PF1VDATAV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDATAV'
    end
    object Qr_Pf01VPF1VVALOR: TFloatField
      FieldName = 'PF1VVALOR'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOR'
    end
    object Qr_Pf01VPF1VTABPV: TStringField
      FieldName = 'PF1VTABPV'
      Origin = 'SG_ASSOC.CADPF1V.PF1VTABPV'
      Size = 2
    end
    object Qr_Pf01VPF1VDESCF: TFloatField
      FieldName = 'PF1VDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCF'
    end
    object Qr_Pf01VPF1VDTDESCF: TDateTimeField
      FieldName = 'PF1VDTDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDTDESCF'
    end
    object Qr_Pf01VPF1VLOTSEQ: TFloatField
      FieldName = 'PF1VLOTSEQ'
      Origin = 'SG_ASSOC.CADPF1V.PF1VLOTSEQ'
    end
    object Qr_Pf01VPF1VVALOUT: TFloatField
      FieldName = 'PF1VVALOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOUT'
    end
    object Qr_Pf01VPF1VDESCFOUT: TFloatField
      FieldName = 'PF1VDESCFOUT'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCFOUT'
    end
    object Qr_Pf01VPF1VDES_CODEMP: TFloatField
      FieldName = 'PF1VDES_CODEMP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDES_CODEMP'
    end
    object Qr_Pf01VPF1VDUP: TFloatField
      FieldName = 'PF1VDUP'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDUP'
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 207
    Top = 99
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 247
    Top = 99
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 287
    Top = 99
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 335
    Top = 99
  end
end
