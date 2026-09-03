object Frm_PedPart_Pend: TFrm_PedPart_Pend
  Left = 32
  Top = 114
  Width = 704
  Height = 457
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Produtos Pendentes (A Serem Faturados)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 696
    Height = 423
    ActivePage = tsPrincipal
    Align = alClient
    TabOrder = 0
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 688
        Height = 42
        Align = alTop
        Caption = 'Dados do Pedido:'
        TabOrder = 0
        object StaticText2: TStaticText
          Left = 4
          Top = 15
          Width = 148
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Chave do Pedido Origem:'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object CHAVE: TEdit
          Left = 153
          Top = 13
          Width = 69
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object NOMCLI: TEdit
          Left = 224
          Top = 12
          Width = 386
          Height = 21
          TabStop = False
          ParentColor = True
          ReadOnly = True
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 42
        Width = 688
        Height = 312
        Align = alClient
        Caption = 'Mercadorias:'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 684
          Height = 295
          Align = alClient
          DataSource = Frm_PedPart.Src_Ped
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'P2CODPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2LOTE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtdrom'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'saldo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'und'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2PRECO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2DESC1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2DESC2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2DESC3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2VALDES'
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 354
        Width = 688
        Height = 41
        Align = alBottom
        TabOrder = 2
        object bbSair: TBitBtn
          Left = 382
          Top = 1
          Width = 203
          Height = 38
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbImprimir: TBitBtn
          Left = 75
          Top = 1
          Width = 203
          Height = 38
          Caption = 'Imprimir'
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 14
        Top = 40
        Width = 794
        Height = 1123
        DataSource = Src_Query5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 67
          BandType = btHeader
          object RLImage_cab: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 67
            Align = faLeft
            Stretch = True
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 105
            Top = 0
            Width = 94
            Height = 16
            AutoSize = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 606
            Top = 0
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itHour
          end
          object lbl_cabempresa: TRLLabel
            Left = 364
            Top = 0
            Width = 95
            Height = 16
            Align = faCenterTop
            Alignment = taCenter
          end
          object lbl_titulo: TRLLabel
            Left = 105
            Top = 51
            Width = 52
            Height = 16
            Align = faLeftBottom
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 671
            Top = 51
            Width = 47
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 594
            Top = 51
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
        end
        object RLSubDet_Resumo: TRLSubDetail
          Left = 38
          Top = 105
          Width = 718
          Height = 64
          DataSource = Frm_PedPart.Src_Ped
          object RLBand_cabres01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLLabel1: TRLLabel
              Left = 5
              Top = 1
              Width = 48
              Height = 16
              Caption = 'Pedido:'
            end
            object lbl_resumo_pedido: TRLLabel
              Left = 56
              Top = 1
              Width = 112
              Height = 16
            end
          end
          object RLBand_cabres02: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_res_codpro: TRLLabel
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              Caption = 'C'#243'digo'
            end
            object lbl_res_descricao: TRLLabel
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              Caption = 'Descri'#231#227'o'
            end
            object lbl_res_und: TRLLabel
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              Caption = 'Und'
            end
            object lbl_res_qtdped: TRLLabel
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Pedida'
            end
            object lbl_res_qtdfab: TRLLabel
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Faturada'
            end
            object lbl_res_qtdres: TRLLabel
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Restante'
            end
          end
          object RLBand_res_det: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand_res_detAfterPrint
            object edt_res_codpro: TRLDBText
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_codpro
            end
            object edt_res_descricao: TRLDBText
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              DataField = 'nompro'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_descricao
            end
            object edt_res_und: TRLDBText
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              DataField = 'und'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_und
            end
            object edt_res_qtdped: TRLDBText
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_qtdped
            end
            object edt_res_qtdfab: TRLDBText
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'qtdrom'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_qtdfab
            end
            object edt_res_qtdres: TRLDBText
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'saldo'
              DataSource = Frm_PedPart.Src_Ped
              Holder = lbl_res_qtdres
            end
          end
          object RLBand_resumo_total: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand_resumo_totalBeforePrint
            object tot_res_codpro: TRLLabel
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              Holder = lbl_res_codpro
            end
            object tot_res_descricao: TRLLabel
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              Caption = 
                '- Totais........................................................' +
                '.........................'
              Holder = lbl_res_descricao
            end
            object tot_res_und: TRLLabel
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              Holder = lbl_res_und
            end
            object tot_res_qtdped: TRLLabel
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdped
            end
            object tot_res_qtdfab: TRLLabel
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdfab
            end
            object tot_res_qtdres: TRLLabel
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdres
            end
          end
        end
      end
    end
  end
  object Src_Query5: TDataSource
    DataSet = DM1.Query5
    Left = 260
    Top = 32
  end
end
