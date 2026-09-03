object frm_NFE: Tfrm_NFE
  Left = 145
  Top = 31
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de Nota eletronica'
  ClientHeight = 624
  ClientWidth = 1236
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object btn_visualizar: TBitBtn
    Left = 70
    Top = 195
    Width = 96
    Height = 25
    Cursor = crHandPoint
    Caption = '&Visualizar'
    TabOrder = 0
    OnClick = btn_visualizarClick
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
  object btn_imprimir: TBitBtn
    Left = 167
    Top = 195
    Width = 96
    Height = 25
    Cursor = crHandPoint
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = btn_imprimirClick
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
  object btn_sair: TBitBtn
    Left = 361
    Top = 198
    Width = 175
    Height = 24
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 2
    OnClick = btn_sairClick
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1236
    Height = 624
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 3
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Retrato'
      object rl_retrato: TRLReport
        Left = 112
        Top = -464
        Width = 794
        Height = 1123
        Background.Align = faBottom
        Background.Arrange = baCenter
        Background.Height = 100
        Background.Stretch = True
        Background.Width = 472
        DataSource = Src_Cabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 8.000000000000000000
        Margins.BottomMargin = 12.000000000000000000
        PrintDialog = False
        ShowProgress = False
        object RLBand_canhoto: TRLBand
          Left = 38
          Top = 30
          Width = 718
          Height = 52
          BandType = btHeader
          AfterPrint = RLBand_canhotoAfterPrint
          object RLDraw2: TRLDraw
            Left = 619
            Top = 0
            Width = 97
            Height = 49
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 19
            Width = 91
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel1: TRLLabel
            Left = 656
            Top = 5
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'NF-e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 7
            Top = 21
            Width = 75
            Height = 10
            Caption = 'Data de Recebimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 92
            Top = 19
            Width = 526
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel4: TRLLabel
            Left = 96
            Top = 20
            Width = 136
            Height = 10
            Caption = 'Certifica'#231#227'o e Assinatura do Recebedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText101: TRLDBText
            Left = 649
            Top = 19
            Width = 38
            Height = 14
            DataField = 'IDENNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel137: TRLLabel
            Left = 625
            Top = 19
            Width = 21
            Height = 14
            Caption = 'N'#186'. '
          end
          object RLLabel191: TRLLabel
            Left = 637
            Top = 34
            Width = 31
            Height = 12
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText102: TRLDBText
            Left = 670
            Top = 32
            Width = 46
            Height = 14
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
          end
          object RLDb_Ret_RazSoc_Can: TRLDBText
            Left = 97
            Top = 32
            Width = 71
            Height = 14
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
          end
          object RLDBText10: TRLDBText
            Left = 532
            Top = 21
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'emissao_texto'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 532
            Top = 30
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'valor_texto'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText269: TRLDBText
            Left = 0
            Top = 0
            Width = 618
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'recebemos'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 634
          Width = 718
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 635
          Width = 718
          Height = 280
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = Src_Detalhe
          object RLBand6: TRLBand
            Left = 0
            Top = 42
            Width = 718
            Height = 11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand6BeforePrint
            object ldb_codpro: TRLDBText
              Left = 0
              Top = 0
              Width = 42
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = Src_Detalhe
              Holder = lbl_codpro
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText7: TRLDBText
              Left = 346
              Top = 0
              Width = 42
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = Src_Detalhe
              Holder = lbl_ncmsh
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText118: TRLDBText
              Left = 388
              Top = 0
              Width = 26
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'cst'
              DataSource = Src_Detalhe
              Holder = lbl_cst
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText8: TRLDBText
              Left = 413
              Top = 0
              Width = 24
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODCFOP'
              DataSource = Src_Detalhe
              Holder = lbl_prodcfop
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText117: TRLDBText
              Left = 437
              Top = 0
              Width = 22
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = Src_Detalhe
              Holder = lbl_unidade
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText12: TRLDBText
              Left = 664
              Top = 0
              Width = 28
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = Src_Detalhe
              Holder = lbl_aliqipi
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText121: TRLDBText
              Left = 617
              Top = 0
              Width = 22
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = Src_Detalhe
              Holder = lbl_aliqicms
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_total: TRLLabel
              Left = 536
              Top = 0
              Width = 50
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = lbl_total
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object txt_lote: TRLDBText
              Left = 270
              Top = 0
              Width = 36
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODMEDNLOTE'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_lote
              ParentFont = False
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText72: TRLDBText
              Left = 304
              Top = 0
              Width = 42
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODMEDDVAL'
              DataSource = Src_Detalhe
              Holder = lbl_datavenc
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_unitario: TRLLabel
              Left = 497
              Top = 0
              Width = 40
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = lbl_unitario
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_qtd: TRLLabel
              Left = 457
              Top = 0
              Width = 40
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = lbl_qtd
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object rlRetratoNome: TRLDBMemo
              Left = 42
              Top = 0
              Width = 184
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomepro'
              DataSource = Src_Detalhe
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_nompro
              ParentFont = False
            end
            object det_marca2: TRLDBText
              Left = 226
              Top = 0
              Width = 44
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'marcapro'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_marca2
              ParentFont = False
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText17: TRLDBText
              Left = 637
              Top = 1
              Width = 28
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = Src_Detalhe
              Holder = lbl_valor_icms
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText66: TRLDBText
              Left = 637
              Top = 1
              Width = 28
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = Src_Detalhe
              Holder = lbl_valor_icms
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object lbldet_valor_ipi: TRLDBText
              Left = 690
              Top = 1
              Width = 26
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_ipi'
              DataSource = Src_Detalhe
              Holder = lbl_valor_ipi
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText103: TRLDBText
              Left = 586
              Top = 1
              Width = 32
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = Src_Detalhe
              Holder = lbl_base_calc
              SecondHolder = rlRetratoNome
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_rodape: TRLBand
            Left = 0
            Top = 71
            Width = 718
            Height = 203
            BandType = btFooter
            AfterPrint = RLBand_rodapeAfterPrint
            object RLLabel92: TRLLabel
              Left = 1
              Top = 0
              Width = 717
              Height = 13
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'C'#193'LCULO DO ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw71: TRLDraw
              Left = 0
              Top = 14
              Width = 165
              Height = 29
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Pen.Style = psInsideFrame
            end
            object RLLabel93: TRLLabel
              Left = 2
              Top = 17
              Width = 82
              Height = 11
              HelpType = htKeyword
              Caption = 'Inscri'#231#227'o Municipal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw72: TRLDraw
              Left = 165
              Top = 14
              Width = 165
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel94: TRLLabel
              Left = 169
              Top = 16
              Width = 98
              Height = 11
              HelpType = htKeyword
              Caption = 'Valor Total dos Servi'#231'os'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw73: TRLDraw
              Left = 332
              Top = 14
              Width = 197
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel95: TRLLabel
              Left = 334
              Top = 17
              Width = 107
              Height = 11
              HelpType = htKeyword
              Caption = 'Base de C'#225'culo do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw74: TRLDraw
              Left = 530
              Top = 14
              Width = 186
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel96: TRLLabel
              Left = 532
              Top = 16
              Width = 66
              Height = 11
              HelpType = htKeyword
              Caption = 'Valor do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText46: TRLDBText
              Left = 416
              Top = 28
              Width = 110
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVBC'
              DataSource = Src_Cabecalho
            end
            object RLDBText95: TRLDBText
              Left = 126
              Top = 28
              Width = 35
              Height = 14
              Alignment = taRightJustify
              DataField = 'EMITIM'
              DataSource = Src_Cabecalho
            end
            object RLDBText98: TRLDBText
              Left = 202
              Top = 27
              Width = 124
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVSERV'
              DataSource = Src_Cabecalho
            end
            object RLDBText45: TRLDBText
              Left = 599
              Top = 27
              Width = 112
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVISS'
              DataSource = Src_Cabecalho
            end
            object RLDBMemo2: TRLDBMemo
              Left = 332
              Top = 60
              Width = 384
              Height = 144
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'INFADICINFADFISCO'
              DataSource = Src_Cabecalho
            end
            object RLDraw125: TRLDraw
              Left = 0
              Top = 60
              Width = 330
              Height = 144
            end
            object RLDBMemo1: TRLDBMemo
              Left = 2
              Top = 62
              Width = 326
              Height = 10
              Alignment = taCenter
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = Src_Cabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel174: TRLLabel
              Left = 335
              Top = 47
              Width = 207
              Height = 12
              Caption = 'OBSERVA'#199#213'ES RESERVADAS AO FISCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel184: TRLLabel
              Left = 4
              Top = 47
              Width = 101
              Height = 12
              Caption = 'DADOS ADICIONAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 42
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_codpro: TRLMemo
              Left = 0
              Top = 15
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'C'#243'digo'
                'Produto')
            end
            object lbl_nompro: TRLMemo
              Left = 42
              Top = 15
              Width = 184
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Descri'#231#227'o do Produto/Servi'#231'o')
            end
            object lbl_ncmsh: TRLMemo
              Left = 346
              Top = 15
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'NCMSH')
            end
            object lbl_cst: TRLMemo
              Left = 388
              Top = 15
              Width = 26
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'CST')
            end
            object lbl_prodcfop: TRLMemo
              Left = 413
              Top = 15
              Width = 24
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'CFOP')
            end
            object lbl_unidade: TRLMemo
              Left = 437
              Top = 15
              Width = 22
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Und')
            end
            object RLLabel51: TRLLabel
              Left = 1
              Top = 3
              Width = 717
              Height = 12
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'DADOS DO PRODUTO/SERVI'#199'OS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_total: TRLMemo
              Left = 536
              Top = 15
              Width = 50
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor'
                'Total')
            end
            object lbl_unitario: TRLMemo
              Left = 497
              Top = 15
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor'
                'Unit'#225'rio')
            end
            object lbl_aliqicms: TRLMemo
              Left = 617
              Top = 15
              Width = 22
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Aliq'
                'Icms')
            end
            object lbl_aliqipi: TRLMemo
              Left = 664
              Top = 15
              Width = 28
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Aliq'
                'IPI')
            end
            object lbl_lote: TRLMemo
              Left = 270
              Top = 15
              Width = 36
              Height = 27
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'LOTE')
              ParentFont = False
            end
            object lbl_datavenc: TRLMemo
              Left = 304
              Top = 15
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'DATA VCTO')
            end
            object lbl_qtd: TRLMemo
              Left = 457
              Top = 15
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsVertical
              Lines.Strings = (
                'Quant')
            end
            object m_marca2: TRLMemo
              Left = 226
              Top = 15
              Width = 44
              Height = 27
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Marca')
              ParentFont = False
            end
            object lbl_base_calc: TRLMemo
              Left = 586
              Top = 15
              Width = 32
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Bc Icms')
            end
            object lbl_valor_icms: TRLMemo
              Left = 637
              Top = 15
              Width = 28
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor Icms')
            end
            object lbl_valor_ipi: TRLMemo
              Left = 690
              Top = 15
              Width = 26
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor IPI')
            end
          end
          object rlDetSimples_Linha02: TRLBand
            Left = 0
            Top = 53
            Width = 718
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object RLDBMemo9: TRLDBMemo
              Left = 1
              Top = 1
              Width = 716
              Height = 16
              Align = faClient
              DataField = 'DETINFADPROD'
              DataSource = Src_Detalhe
            end
          end
        end
        object RLBand_cab01: TRLBand
          Left = 38
          Top = 82
          Width = 718
          Height = 205
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLDraw13: TRLDraw
            Left = 348
            Top = 159
            Width = 368
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw10: TRLDraw
            Left = 0
            Top = 159
            Width = 117
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw6: TRLDraw
            Left = 0
            Top = 11
            Width = 322
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw7: TRLDraw
            Left = 375
            Top = 60
            Width = 16
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw5: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 11
            Align = faClientTop
            DrawKind = dkLine
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Pen.Style = psDot
          end
          object RLLabel5: TRLLabel
            Left = 335
            Top = 10
            Width = 66
            Height = 20
            Alignment = taCenter
            Caption = 'DANFE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 323
            Top = 31
            Width = 96
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Documento Auxiliar de'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 323
            Top = 41
            Width = 92
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Nota Fiscal Eletr'#244'nica'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 323
            Top = 61
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = '1 - Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 323
            Top = 74
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '2 - Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 335
            Top = 110
            Width = 35
            Height = 11
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw8: TRLDraw
            Left = 429
            Top = 10
            Width = 288
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel13: TRLLabel
            Left = 431
            Top = 14
            Width = 72
            Height = 11
            HelpType = htKeyword
            Caption = 'Controle do Fisco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 0
            Top = 128
            Width = 376
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel14: TRLLabel
            Left = 4
            Top = 130
            Width = 93
            Height = 11
            HelpType = htKeyword
            Caption = 'Natureza de Opera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw11: TRLDraw
            Left = 118
            Top = 159
            Width = 119
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw12: TRLDraw
            Left = 238
            Top = 159
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel15: TRLLabel
            Left = 4
            Top = 161
            Width = 77
            Height = 11
            HelpType = htKeyword
            Caption = 'Inscri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 120
            Top = 161
            Width = 111
            Height = 11
            HelpType = htKeyword
            Caption = 'Insc.Est.da Subst.Tributaria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 242
            Top = 161
            Width = 20
            Height = 11
            HelpType = htKeyword
            Caption = 'Cnpj'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 351
            Top = 161
            Width = 345
            Height = 11
            HelpType = htKeyword
            Caption = 
              'Chave de Acesso da NF-e p/Consulta de Autencidade no Site www.nf' +
              'e.fazenda.gov.br'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw38: TRLDraw
            Left = 785
            Top = 391
            Width = 140
            Height = 29
          end
          object RLLabel45: TRLLabel
            Left = 788
            Top = 393
            Width = 102
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de Calculo do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 374
            Top = 109
            Width = 38
            Height = 10
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
          end
          object RLDBText13: TRLDBText
            Left = 352
            Top = 173
            Width = 71
            Height = 10
            DataField = 'chave_acesso_calc'
            DataSource = Src_Cabecalho
          end
          object RLDBBarcode1: TRLDBBarcode
            Left = 431
            Top = 33
            Width = 110
            Height = 85
            BarcodeType = bcCode128C
            DataField = 'CHAVE_ACESSO'
            DataSource = Src_Cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object RLDBText20: TRLDBText
            Left = 4
            Top = 173
            Width = 28
            Height = 10
            DataField = 'EMITIE'
            DataSource = Src_Cabecalho
          end
          object RLDBText21: TRLDBText
            Left = 121
            Top = 173
            Width = 38
            Height = 10
            DataField = 'EMITIEST'
            DataSource = Src_Cabecalho
          end
          object RLDBText94: TRLDBText
            Left = 242
            Top = 173
            Width = 103
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDBText96: TRLDBText
            Left = 378
            Top = 65
            Width = 53
            Height = 10
            DataField = 'saida_entrada'
            DataSource = Src_Cabecalho
          end
          object rlRetratoEmiRazao: TRLDBText
            Left = 86
            Top = 13
            Width = 234
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMITXNOME'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_numero: TRLDBText
            Left = 339
            Top = 91
            Width = 38
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'numeronf'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlLogo_Retrato: TRLImage
            Left = 2
            Top = 22
            Width = 80
            Height = 94
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Picture.Data = {
              0A544A504547496D61676563660000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080183036B03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A28010FAD63DE6B891CC6DECE36B9B81C10A70ABF535475BD5DE6B83A75A49
              B40FF5D28EDFEC8FF3ED55ADE586D2211C2A14773DC9F526BC9C4635B9385376
              EEFF00C8873D6C8BDE4EA777CDD5F8801FF96702F4FC7AFEA68FEC788F26FEF4
              B7A9947F8557FB78F5A3EDE3D6B97F72F596AFCD8B9895AC2FADFE6B3D52427F
              BB2F23F5CFF2A587C433DA4A21D52DF664E04B1F23FCFD3F2A87EDE3D6A39AE6
              39E331CAA190F506973FB377A32B796E839BB1D5452C73C4B244EAE8C32194E7
              34FAE12CF509343BC186692CDCF2BD48FA7BFF003FE5DC452A4D12C91B064600
              823B835EA60F16B111B3D24B72A325224A28A2BB4A0A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A4C52D432DD416F8F3A78E3CF4DEE07F3A16B
              B05EC4D45311D255DC8EAEA7BA9C834FA0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A004ACFD6AFF00FB3B4A9AE0
              7DFC6D4F763D2B42B8FF001DDC158ACEDC74666723E8001FCEB971755D3A3292
              22A4B962D9CD477850139259892C4F524F734FFED03EA6B37751BABE46F2EE70
              FB46697F681F5347F681F5359BBA8DD4F9A5DC39D9A5FDA07D4D1FDA07D4D66E
              EA3751CD2EE1CECD092F04A855B906BA8F06EA2648E5B073CC637C7F42791F99
              1F9D70FBAB57C357260F105A91C072508F5C823F9E2BA7055654F1117DF72E9D
              4F791EA1451457D71DC145145001451450014514500145145002514561788BC5
              7A5786ADFCCBF9FF007AC331C09CBBFD07F53C538C652768A265251576CDC270
              39AE1FC45F13B46D14B41687FB42E875585BE453E85B9FD335E7DE21F17EB9E2
              B2D16E361A69E90213971FED1E0B7D381EDDEB1A1D3EDA000EC0EDEAFCFE9D2B
              D4A3804B5ABF71C35719D205FD5FE20F89F5B2CA972F6B01E91DA02BF9B7DE3F
              9E3DAB9498CCD2169CB990F24B9249FA935D3E401C0000A8E7892788A4801047
              071C83EA2BD18724348C51C52A9293BC999FE1EF126A1E1BD423B9B399C20606
              484B1D922E790474E9DFA8ED5F4AD9DD477D6505DC27314F1AC887D430C8FE75
              F2A32947653D54907F0AFA5BC1AACBE0DD1B7F27EC919FC368C7E95C19A538A5
              19A3BB0736EF13768A28AF20EF0A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A28012B86F1F822E2C5BB15703EBC7F8D7735CB78E
              ACCCFA32DC28F9ADDC31FF0074F07F5C571E360E7424919574DD3763CFB7D1BE
              A0DD46EAF9AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF
              5A1A082FAF58A8EBE729FC0727F95646EAE9BC0F686E75CFB411F25B21627B6E
              20803F226B6C3D2E6AB14BB9A526E53491E99DA8A28AFAB3D60A28A2800A28A2
              800A28A280128240193C555BEBEB6D3AD24BABC9D21823196773802BC7BC59E3
              BBAF10EFB4B167B3D2B90CE789271EFE8A7D3BF7F41BD0C3CEB3B2DBB98D5AD1
              A6B53A5F157C4A8ED9DF4FF0FECB9BA190F72798E23EDFDE3FA7D7A5799CC4BD
              CC97BA85C34F72E72D2CAD9FCB3FA7E95485CB1616F61033B1E00452493EC072
              6ADA783FC5179FBCFEC7BD3EEF1EDFC81C57B74A8D2A0AD74BCD9E6CE752B3BF
              4219356897845673EBD05423586CF308C7B373FCAA0D4349D474A7097F65716C
              C7A79B19507E848C1FC2A9D75463092BAD518B5676674905C25C461D09C7420F
              507D2A4CD63E94E44922E78201FC8FFF005EB4A594451339FE104D6528D9D913
              6311A27BAD40C51296925976A01DC93803F335F5258DB259585BDA47F7218963
              5FA28007F2AF04F869A41D57C676D232E61B3CDC3F1DC70BF8EE20FE06BE83AF
              3333A979C60BA1E9E0E168B977168A28AF2CED0A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A867812E209219543248A5581
              EE0F06A6A29349AB303C635BD2E5D1B5292D6404AE7746E7A3293C7E3D8FB835
              9DBABD8F5AD16D75CB2304EA55D798E403943EA3FC2BCA75AD0EFB4398ADD467
              CA2709328251BF1EC7D8F35E262706E9C9B8ABA3C6C4D09527CCBE1296EA3755
              6F397FBC28F397FBC2B9391F638FDAAEE59DD46EAADE72FF007854F690CD7F70
              B05AC4D34ADD1501FCCFA0F73C50A9B6EC9046A733B2DC91034B22A22B33B101
              540C924F00015EB5E19D1868DA52C6E337121DF291EBE9F41FE27BD67785FC22
              9A4E2EEF36C97847CA07DD8FE9EA7DFF00C9EB2BD7C1E17D9FBF2DCF630B41C1
              734B762D14515E81DA145145001451450025656B9AFD8787B4F6BBBE976AF444
              5E5E46F451DCD55F1278A2DFC3D6E89B1AE7509FE5B7B48B9790FF00419EFF00
              D6B97D3FC11A97883501AC78B6E0976FB96919C045CE76E7F847D3939E4839AD
              A9D38FC551D97E66539BF861B9C9DFDE6BFF0010355012D5DE18CE62B54388A1
              07A33B1C0271DCFB803B5755A3FC28B7CACDAF5D1B961CFD9A025631EC4F53FA
              57A05A59DB58DB2DBDADBC70C4BD1235C0FD2ACD6D3C64ADCB4FDD4671C3ABF3
              4F5651D3B49D3F4987C9B0B386D93BF968067EA7B9F7357A8A5AE36DBD59D092
              5B14751D32D356B192CAF6059A090619587EA3D0FBD7CD9E21D21F42D7AF34C7
              62DE43E158F059480549F720835F50115E05F1555478EA72BD5A18CB7D76E3F9
              015E9E5751FB470E9638F1915CBCC731A58C348FEC00A97529B1108C1E58E4FD
              053ACD3CBB619E0B727FCFD2A6D0B4997C4FE26B7B08F3E5BB65D87F0C63963F
              9671EE40AF5E5251BCDEC8F3A29C9A4BA9EB1F0A3423A6F86DB5095713DFB071
              91FF002CC642FE7927F115E8151430C76D04704481238D42A28E800E00A92BE6
              2AD47526E6FA9EDD382845450B45145416145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001514B0C73C6D1CB1ABA30C
              1560083F854B45026AFA3391D43E1D6837CC5E3864B473C936EF81F91040FC05
              6337C27B52D95D5270BE8D1827F3AF46A2B374A0DEA8E49E070F37771386B2F8
              5FA3C0C1AE66B9B9C7552FB54FE433FAD759A7E9763A5C3E5595AC7021EA1171
              9FA9EF5768C5546118EC8D6961A952F8236168A28AA370A28A2800A28A2800AC
              FBEB9B81982C23592E987593223887F7988EBECA393EC3246852000741421331
              B4AF0F5B69D7125ECACD77A94DFEB6EE51973ECA3A2A8EC07EB5B5494B4DB6F7
              04AC1451452185145140086BE75F1E5C8D4BC7DA91539449445C76D8A14FEA0D
              7BFEA57B1E9DA65D5ECBFEAEDE2691BDC019AF9A12479E79AF273992676763EA
              49249FCCD7A99641F34A7D8E1C6CB45116EE511C3B1782DC0F615EB9F09FC367
              4ED1DF58B84C5C5F0022C8E5620720FF00C08F3F4C579AF84F4193C57E2686D4
              86FB321F32761FC3183C8CFA93803EB9ED5F46451A4512471A85440155474007
              18AD331AFCB15497CC8C252BBE76494514578E7A214514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145004171710DA5BC971712AC70C6A59DD8E
              0281D49AF28D67E304D25D3DBE81651B46A71F68B9C9DC3D428238FA9CFB0AD0
              F8CBA94B6BA0D969F1B955BB9899307EF2A60E0FB6581FC2BC8EC5710961FC47
              F957AB81C242A479E7A9E46618D9D27C90D0F4DB1F17F896E62135D6A4910619
              0915BA0C8F5C906AE7FC251AB7FD05E7FF00BF50FF00F115C08D4C8000C80060
              0A3FB50FA9AEE7838748A3CD58E9ADE477DFF0946ADFF4179FFEFD43FF00C451
              FF000946ADFF004179FF00EFD43FFC45703FDA87D4D1FDA87D4D1F5487F2A1FD
              7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE128D5BFE82F3FFDFA87FF00
              88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF0084A356FF00A0BCFF
              00F7EA1FFE228FF84A356FFA0BCFFF007EA1FF00E22B81FED43EA68FED43EA68
              FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FFDFA87FF0088A3FE128D5BFE82F3
              FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF84A356F
              FA0BCFFF007EA1FF00E228FF0084A356FF00A0BCFF00F7EA1FFE22B81FED43EA
              68FED43EA68FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE1
              28D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333
              BC93C51ADEC3E56B0E1FB79904447E38506B263F8ABE20D2AE8C7A95ADA5DC20
              E1B6031BFE7923F4FCAB99FED46F5354AF25FB531279057068583A4D35288BEB
              F5134D48FA07C37E25D3FC4FA6FDB2C2424A9DB2C4DC346D8E847F9CD6D62BE7
              BF859A9CB61E37B6B756222BC568A45CF1C296538F5C8C7E26BE84CD7898AA1E
              C6A72AD8FA0C2D6F6B4F99EE2D14515CE7485145140051451401E7BF16357FB2
              787A1D2E26FDF5F483763A88D4827F5DA3F3AF179DF0A21404938181D7D85749
              E38D786B5E26B9BA46DD6F0FEE20C1E0AA93923EA493F4C7A56AFC2EF0B1D5B5
              73ACDE266D2D1818C11C492F51F82F07EB8F7AF7E82586C3F348F2AA7EFAB591
              E85F0FBC2FFF0008DF87D7CF4C5F5D6249F8E578F953F007F326BAEA5A4AF0A7
              3739394BA9E9C22A315142D14515250514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              14514005145140051451401E67F19B4D7B9F0F5A6A118CFD926C3FB2B8C67F30
              A3F1AF1FB27CC257B83FCEBEA3BAB5B7BDB67B6B98239A171868E450CADDF907
              8359A3C23E1D1F7743D397FDDB741FD2BD1C263951872B573CCC6601D7973459
              F3BEEA339AFA27FE112F0F7FD016C7FEFC2FF8563EB9F0E743D5AD196DEDD6C2
              E71F24D6E3183EEBD08FD7DC575C735A6DA4D3B1C12C9EA2574D1E1DBA8CD497
              F6379A36AB3E99A8204B884F51D1C75041F42391FD0D415E9C66A4934EE99E5C
              E9B84B965B8FCD19A6668CD322C3F3466999A3340587E68CD33346680B0FCD19
              A6668CD016242476A4DD50CB288973D49E00F535EB1E0CF86B0259A6A1E21469
              6E640192D49216207A6E19E5BF41D319AC2BE261415E5F71D587C1CEBBB4763C
              B77535DF6A16EC0135F45FFC225E1E03FE40B63FF7E17FC283E12F0EE30744B0
              23D0DBA9FE95C3FDAB0FE53BD64F3BEB23C5BE14E9AF7DE3882E00FDDD9C6F2B
              9ED920A81F5CB67F035F41551B0D1F4CD28C874FD3ED6D4C98DFE444A9BB1D33
              8033D4D5EC715E5E26BFB69F358F5F0D43D8C3958B45145607485145140095C9
              FC41D7BFB13C33308DF6DCDDFEE22C1E467EF37E033CF6245759D2BE7AF881E2
              53E20F1149E4396B4B7CC500078383CB0FA9FD00AEBC1D0F6B555F65AB39F115
              3921A6ECC6D2349BAF10EB36FA6DA0F9A46E588C8451D58FB01FE1D4D7D21A4E
              976DA36976FA7DA26D8615DA3D49EE4FB93935CB7C38F08FFC23DA4FDAEEE3C6
              A376A0B8239893A84FAF73EFC76AEDEAF1D89F6B3E58EC89C351E48DDEEC5A28
              A2B84EA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2803CCFE2FE82B75A2C5ADC29FE9164C16423BC6C71F
              8E188FCCD7912B8640C3B8CD7D29E23B21A8786F52B42B932DB48ABF5DA71FAE
              2BE64B739840F42457B9965472A6E2FA1E066B4929A92EA4F9A334DCD19AF4EE
              79161D9A334DCD19A2E161D9A334DCD19A2E161D9A334DCD213804FA5170B1D6
              FC35D0D75CF1789E64DD6DA7A89482320BF4507F1C9FF80D7BF579A7C17B311F
              876FEF48F9E7BADB9F555518FD59ABD2EBE6F1D51CEB3EC8FA9C0D350A2BCC5A
              28A2B90ED0A28A2800A28A2800A292A2B9B88ACED65B89DD638A252EEE4F0AA0
              649FCA8DDD81E871DF12FC4A343F0F35AC0F8BCBD0634C1E5531F337E5C0F73E
              D5C57C2FF079D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD08ACF482FBE2
              778E2497E78ECD48CB1E90C20F03FDE3CF1EA49E80D7B95959C1A7D9C3696B18
              8E08502220E800AF4AA4BEAD47D947E27B9C718FB5A9CEF65B16A8A28AF34EC0
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A280108C8AF95EF2DBEC1AADF59E31F67B878F1FEEB11
              FD2BEA83D2BE70F1E5AFD8BC7DAC44070F20947BEE50C7F526BD3CB256A8E3DC
              F2F348DE9A7D8C1A29B457B67803A8A6D1400EA29B45003B34D90E118E7B1A29
              929C467DE932A2B547D09F0CAD3ECBE01D341186977CA7F17247E98AEBAB33C3
              F69F60F0E69B68460C36B1A1FA8500D6A57CAD59734DBF33EB69479609051451
              50681451450014514500267DABCC7E25EB571A85D5B784749064BAB9606E029E
              83AAA93D87F11F603B135D9F8ABC430F86B439EFA501A5FB90464FDF90F41FD4
              FB03583E01F0B4F6092EBBAB82FAC5F92EE5C73129E71EC4F53E9C0EC73D342D
              05ED65D36F531A8DCBDC5F336FC29E1AB7F0BE8C9650E1A63F34F363991FB9FA
              7603FF00AF5BD452D73CA4E527296ECD2315156414514522828A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A006FAD783FC5A83C9F1D2C9FF003DAD51F3F42CBFFB2D7BC9AF19F8D3
              6FB357D22E7FE7A42F1FFDF2C0FF00ECD5DB97CAD5D799C39846F419E6B9A334
              99A335F407CE0B9A33499A33400B9A33499A33400B9E29F0406EAF2DAD864996
              55418F7207F5A8F35ADE1583ED5E32D162EBFE971B11FEEB027F406A2A4B960D
              F64694A3CD348FA6D46001DA9681D28AF953EB428A28A0028A28A004A63BAC68
              CEEC155464927000A7D73DAC4526BB7474689992C9706FE4538DCA791083EAC3
              05BD14FF00B429C55DEA26EDB18DA7D9378CBC44BAFDE29FEC8B2629A742C389
              5B3CCC47A6471F41E9CF758E6A28A18E08522894246802AAA8C0007402A5AA9C
              F9BD0518D85A28A2A0A0A28A2800A28A2800A28A2800A28A280128AE575EF12D
              DE99A8FD9A18A12A10365C127273E86B33FE136D43FE785BFE4DFE35C15331A1
              4E4E327AA3375629D99DED15C17FC26DA87FCF0B7FC9BFC6BA6F0FEA936AD60D
              3CCA8AC1CAE1060741F5F5ABA38EA55A5C907A8E352327A1B145145761614514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450015E57F1AE1CE9BA44FF00DC9DD7F3
              5CFF00ECB5EA95E71F19E3DFE11B5907F05EA93F4D8E3F9E2BA308ED5A2CE6C5
              ABD191E279A4CD2515F4A7CC585CD19A4A280B0B9A5CD368A02C3ABA9F86B179
              DF10F4CC8C84F31CFF00DFB6C7EB8AE505771F0962F33C76ADFF003CED647FA6
              703FAD618976A32F43A70ABF7D1F53DF68A28AF993E9C28A28A0028A28A008A5
              1218888F01CF009EDEF4CB5B68ED2111463804924F2589E4927B927249A93CD8
              C1C175E3DE8F3A3FF9E8BFF7D54F3AEE2D0928A8FCE8FF00E7A27FDF429E083D
              3A534D3D862D14555B9BFB5B319B8B88E3F40CC01FC294A4A2AED8AE59A2B15F
              C55A3A1C7DA89FF76363FD284F15690E40FB5633FDE8D87F4AC7EB542F6E642E
              78F736E8AA96DA85A5E7FC7BDC45271D15C123EA2ADD6D19292BA63D028A28AA
              1851484E064F4A679D1FFCF44FFBE8526D2DC0F3FF0018FF00C878FF00D735FE
              B5815BDE2F60DAE920823CB5E41CFAD60D7C7E33F8F2F5382A7C4C2BBEF057FC
              819FFEBB37F215C0D779E0C755D19F7328FDF37523D0574E54D2AFA9743E23A6
              C52E2A3F3A3FF9E89FF7D0A55746E8C09F406BE9B993EA760FA28A2A8028A290
              903AD00145675CEB9A65A644B791647F0A9DC7F21CD67C9E32D2D0E14CCFFEEA
              63F9E2B9E789A317694912E715BB3A1A2B9AFF0084DB4EE9E4DCFF00DF2BFF00
              C554D1F8BF4A7FBCF247FEF464FF002CD4AC6D06FE242E78F737E8AA56BAB58D
              E1020BA89D8FF0EEE7F2EB576B78CE32578BB9774C5A28A2AC028A28A0028A8C
              CB1824175FA668F3A3FF009E8BFF007D54F347B8125151F9D1FF00CF44FF00BE
              853C104641E29A69EC014B514D3C50466496458D075663802B127F176970B615
              E4948EBE5A7F8E2B2A95E9D3F8E4912E496E6FD15CF43E32D365755DB3A16200
              DCA3BFD0D7420E453A75A9D45783B829296C2D14515A9425151CB3450A179645
              451D4B3605664FE26D260241BB5623FB80B7EA38ACE7569C3E29242724B735E8
              AE75BC67A62F41337D13FC4D33FE136D3B38F26E7FEF95FF00E2AB1FAEE1FF00
              9913CF1EE74D4573C9E31D2D8E18CA9EEC9FE15760D7F4BB8384BD881F463B7F
              9E2AA389A32F864BEF1A9C5F53528A6AB061952083D3069D5D0505145359D540
              DCC067D4E28BD8075151F9D1FF00CF44FCC51E747FF3D13F3A9E68F715C928A6
              0963271BD7F3A7D34D3D86145145300A28A2800C518A619114F2E07D4D279B1F
              FCF44FFBE854F32EE0498A3151F9B1FF00CF44FF00BE85289118E15D49F4068E
              65DC07D14515402514671542E359D3AD09135E44AC3AA86C9FC8735129C61AC9
              D84DA45FA2B024F17E929F76491FFDD423F9E2A16F1AE9A3A45707E8A3FC6B07
              8CC3AFB689E78F73A5A2B9C5F1A6987AA5C0FAA8FF001AB3178A7489B03ED5B0
              9ECEA47EB8C538E2E83765240A71EE6D51505BDDDBDD2EE8268E51EA8C0FF2A9
              EB74D3574EE5DC5A28A2A8028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A004AE1BE2D45E67812E1BFE79CD137FE3D8FEB5DCD7
              1DF14973F0F3523E862FFD1AB5B61DDAAC7D4C711AD297A1F3D678A33480F029
              735F4C7CC585CD19A4CD19A05617346693346680B0B9AF45F8331EEF15DF4BFD
              DB32BF9BA9FE95E739AF4EF82AB9D6F546F4817FF42FFEB572E37F80CEBC12FD
              FA3DA68A28AF9D3E8C28A28A00283D0D141E868607936A3FF213BBFF00AECFFF
              00A11AAB56B51FF909DDFF00D767FF00D08D55AF88A8DF3BF53CE7BB0AF4CB3B
              D82C7C3D6735C48111604E4FFBA38FAD799D59BABE9EED21491F31C318445EC3
              03AFD4F735D583C5FD5F99EEDEC694EA725CDAD57C5B75765A3B3CDBC3EA3EFB
              7E3DBF0FCEB9D776772CEC5989C924E493F5A4A2B9EAE22A569734D9129393BB
              61451456248AACC8C1949520E4107045741A4F8B2EECD963BB26E20F53F7C0F5
              CF7FC7F3AE7A8ADA957A945F341951938BBA67AE5B5CC3776E9340E1E37190C2
              A6AE03C23AA35B5FFD8E463E4CDF741FE17FFEBF4FCABBFAFAAC26256229A9F5
              EA76C27CCAE54D57FE41377FF5C5FF0091AF28AF57D57FE41377FF005C5FF91A
              F28AF2F397EF44C6BEE828A28AF0CE60A28A29805749E0AFF90CCBFF005C0FFE
              84B5CDD749E0AFF90CCBFF005C0FFE84B5D7816FEB1034A5F1A3BEA3B515CE78
              9B5EFECE885B5B30FB4C83AF5D83D7EBE95F555AAC68C1CE4763924AEC9F59F1
              25B6980C49FBEB9C7DC0785FF78F6AE26FF5BBFD458F9F3B08CFFCB34385FF00
              EBFE39AA0CCCEC59892C4E4927249F53495F2F89C7D5AEDABD91C73AB293F20A
              28AD0B4D0F52BE50F05AB943FC4D85047A8CE33F85724213A8ED14D90936EC91
              9F456FFF00C21DAAE33887FEFBFF00EB550BCD1351B152F3DAB841D5970C07D7
              19C7E35ACB0B5A0AEE2CA70925768CFAD7D3BC47A869E42890CD1774909381EC
              7A8FE5ED59145453AB3A6EF06C4A4D3D19E9FA4EB56BAB45985B6C8A3E78DBA8
              FF00EB56A5790DB5CCB697093C0E52443C1FE9EE3DABD2B45D5A3D5AC5651859
              57E5913FBA7FC2BE8F018F55D724F4923AE9D4E6D1EE6A507A5141E95E99A9E4
              FAA7FC85EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE26B37ED
              25EA79F2DD857A00D6A0D23C3B64CFF3CAD026C8C1C13C0FC87BD79FD3E49649
              8A991CB1550AB93D0018007B56D86C54A87338EECA84DC6FDCB1A86A775A94C6
              4B9909C1F95070ABF41FD7AD54A28AE79CE536E52776C86DB776496FFF001F31
              7FBE3F98AF5E1D05790DBFFC7CC5FEF8FE62BD787415EE64BB4BE474E1F6631D
              D6342CC40503249E315C7EAFE316DCD0E9A0607067619CFF00BA3FA9FCA97C65
              AB3065D3A26C02374A477F45FEBF9571F539866128C9D2A4FD58AAD569F2A25B
              8B99EEA4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD789
              EF4DF76CE7D5B23A2B7A1F07EAB2AE59618BD9DF27F406A63E0AD4BFE7ADB7FD
              F4DFFC4D74AC1621ABF296A9CBB1CDD15AD77E1BD52D14B35B19147F146437E9
              D7F4AC9AC274E74DDA69A25A6B468B567A9DE583836D70F18CE4A8395FC41E2B
              B3D17C5515F32DBDD810CE7856CFCADEDEC7DAB82A2BA30D8DAB41AB3BA2A152
              517E47B1564788B4DFED1D264445CCB1FCF1FB91DBF119155BC2BAB3EA362D14
              CDBA78300927965EC4FBF07F2F7AE82BE9E3286268DD6CD1D89A944F1DA2B63C
              4BA77F67EAF26D5C4537CE98E9C9E47E79FC08AC7AF91AB09539B84BA1C324D3
              68504AB06524107208EA0D7A9E917A350D320B918DCCB8603B30E0FEB5E575D6
              782AFF0064F3583B70E37A03EA3AFE631F91AEFCAEBF256E47B335A32B4ADDCE
              DE8A28AFA73AC4A6BBAC68CEC400A0924F6A7573BE2ED44DA699F6746C497195
              E3A85EFF00E1F8D635EAAA54DCDF42652E5576717AADF1D47529AE49F959B099
              ECA381FE7D7354E8A2BE367394E4E4FA9C0DB6EEC2BB7F0669BE55B497F22FCD
              2FCA9ECA0FF53FCAB91D3ECDEFEFA1B58F20BB004FA0EA7F21935EAB0C296F04
              70C6BB51142A8F402BD6CA6839CDD596C8DE846EF99925636B3E20B7D257663C
              DB8232B183D3DC9EC2ADEAD7EBA6E9D2DC9C1651F28F563C01F9D797CD349713
              3CD2B967724B31F5AEECC31AE82E487C4CD2AD4E5D16E5DBFD72FF005162269D
              9633FF002CD0ED5C7A7BFE39ACEA28AF9B9D49D47CD26DB391B6DDD8515A967E
              1DD4EF543A5B9443FC521DBF8E3AE3F0AD0FF842B52C67CDB51FF026FF00E26B
              6860EBCD5D44A54E4F64737456F4DE0FD5621955865F647C13F98158D716D3DA
              4A63B889E271D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB23
              0E8CA4823F115D1697E2EBAB5611DEE6E22FEF74751FD7F9FBD737453A388A94
              5DE0C23371D533D6ED2EE0BDB749E0903C6C3208A9EBCE3C33AABE9FA8AC2EC7
              ECF3305607B13C06FCF83EDF4AF471C8AFA8C16296229F36CD6E76D39F3AB8B4
              5145761614514500145145001451450014514500145145001451450014514500
              21EB5C97C4C5DDF0F755FF007633F948A6BAD35CB7C47C7FC2BFD5B3D3CB5FFD
              0D6B4A3FC48FAA32ADFC397A1F3851499E28CD7D41F316168A4CD19A005A2933
              4668016BD53E090CEA1AC37A4510FCCB7F8579566BD63E089FF49D6FFDC87F9B
              D72E37F8123AB05FC747B1514515F3A7D1051451400507A1A283D0D0C0F26D47
              FE42777FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA
              79CF7614F8E379A458E346776202A819C93D8532BB3F06E96A226D4245059895
              8B3D80E091F53FCBDEB5C2D075EA722F99508F33B09A67831762C9A839C9E7CA
              43803D89EFFE7935B91787B4A88002CA33FEF8DDFCF35A9457D3D2C151A6ACA2
              76469C62B4464CDE1CD2A65C359C6BEE9F2FF2AE475FF0E369405C42ED25B31C
              1DDF7909E80E3A8F7FF27D12AA6A36A2F74F9EDCE3E74207B1EC7F3ACF1581A5
              529BB46CC53A7168F28A28A2BE50E11F0CAD04F1CC9F7A360C0FB83915EBCAC1
              94107822BC7ABD6AC1B769D6C7D6253FA0AF732693F7A274E1DEE8925892785E
              290651C1561EC6B23FE113D1FF00E7D5BFEFE37F8D6DD1F8D7B33A34EA7C6AE7
              438A7B9E67E23B1834FD57C8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AF249595CE1A89293482BADF0CE8961A9698D35CC25DC
              48573B88E303D0D7255DF782FF00E40CFF00F5D9BF90AE8CB2119D6B495CAA29
              396A8B3FF089E8FF00F3EA7FEFE37F8D59B1D0EC34D9CCD6B09491976925C9E3
              39EE7DAB4A8AFA38E1E945A718A4CEBE48A7A222B99D2DADA49DCE12352CDF40
              2BCA6F2EA4BDBC96E653F3C8C4F5E83B01EC0607E15DE78C2E0C3A1B463FE5B3
              84E3F3FE9FAD79E578B9C566E6A9AD8E7AF2D520A28A2BC539CEB7C2DA0472C4
              350BA40C09FDD230C8E38DD8FE5FFEAAED6B92B5F1869D6D690C02DEE311A051
              855EC00F5A9BFE137B0FF9F7B9FF00BE57FC6BE9F0B5F0B469A8A92B9D909422
              AC99D4521008E45731FF0009BD87FCFBDCFF00DF2BFF00C552FF00C26FA7FF00
              CFBDCFFDF2BFFC5574FD7B0FFCC8BF690EE6778A7418ED93EDF68A1509C4A806
              00CF008FE447BD7295D9EA1E2DD3EF6C27B6F22E0798854128BC123EBDB8AE32
              BE7B30F63ED39A8BBDCE5ABCB7BC42B63C35A89B0D5E30CDFBA9888DC76E7A1F
              C0FE84D63D00904107047435C946A3A73538F7222DC5A68F62EB476AABA6DC7D
              AF4EB79CF25E3563F5C73568F4AFB48B528A6BA9DF7D0F28D57FE42F7BFF005D
              DFFF00423552ADEA9FF217BDFF00AEEFFF00A11AA95F175BF892F53CF96EC28A
              2BA4F09692B7976D7732E62808DA08E0B75FD3AFE22AA85175AA2844718B9349
              09A57846E2F1166BB63044C32171F391F8F4FE7ED5D0C5E12D263401E1790FAB
              4841FD08ADE1457D3D1C050A692E5BBF33B1528A31D7C2FA3860C2D3041C8FDE
              371FAD6C741C5145754294217E4562D24B63CB35B94CDADDE3B75F3597F01C0F
              D0550AD2D7E036FAEDDA9FE290B8F70DCFF5ACDAF8EC45D55927BDCE09DF99DC
              2BB9F057D9FEC136DDBE7F99F3FAE3B7F9F5CD70D52433CB6F2092191E371FC4
              AC47EA2AF095D50A9CED5C70972CAF63D7A8AF3987C5BAB4230D2A4A3FE9A27F
              518AB91F8DAF00FDEDAC2DFEE923FA9AF7E39AE1DEF74752AD167746B8EF1668
              859D2F2CEDD99DDB6C8B1A924F70D81F4C13F4A13C75FDFB0FC44BFF00D6AB09
              E37B33FEB2D671FEEE0FF5A9AF89C26221C9290A5384D59B391FECBD43FE7C6E
              7FEFCB7F851FD97A87FCF8DCFF00DF96FF000AEEEDFC55A4CE42999A263DA452
              3F5E9FAD6C452C53C6248A45910F46520835CB4F2CA153E0A9721518BD99C578
              46D6F2DB577335B4F1C6D1119742067231C9EFD6BB9A0003B52D7AD86C3AA10E
              44EE6F08F2AB183E29D37EDFA4B48833341F3AE3B8EE3F2FD40AF3AAF6220118
              AF2FD774FF00ECDD56589462263BE3FF0074F6FC0E47E15E4E6F87D5565F330A
              F1FB466D4F6574F657B0DCA7DE8D8363D4771F88C8FC6A0A2BC58C9C5A6B7473
              A767747AF43324F0C7346728EA181F506A4AE6BC1B7FF68D39AD5CE5E03C67BA
              9E47F515D357D961EAAAB4D4D753BE32E64989DABCCBC43A87F68EAF2BAB6624
              F923F42075FD73FA576BE24D47FB3F4890A1C4B27EED31D727A9FCB35E6B5E4E
              6F88DA8AF9985797D90A28AB16568F7D7B15B463E69180CE3A0EE7F0193F8578
              718B93515AB673A5776475BE0BD37642F7F20F99F291E7B283CFEA3F4AEBAA1B
              7812DADE38231848D4281EC2A5AFB1C35154692823BE11E5491CA78E252B676B
              10E8D2163F80FF00EBD7115DCF8DE02FA7413019F2E4C1F607BFE60570D5F3D9
              A27F5977392B5F9C2B4B40F23FB6EDBED3B7CBDC7EF74CE0E3F5C566D15C14E7
              C9352B5EC669D9A67B171DA8AF2FB4D7F53B250B15D3141FC2E037E1CF38FA56
              947E34D45301E2B771FEE907F9D7D153CDA835EF5D1D6ABC4EFAA86ABA5C3AA5
              9BC1228DD8251B1CAB7635CD278EA51F7EC54FD2423FA54E9E3980FDFB3917FD
              D707F9E2B5963F0B523CB296E37560F4B9CA9D2F5004836373C1C71137F851FD
              97A87FCF8DCFFDF96FF0AED22F19E98E70EB3C7EEC99FE44D6B5A6A9637DFF00
              1ED731C8719DA0E08FC3AD79F0CBF0D51FB950CD5283D99E6A34CD401C8B1BA0
              7FEB937F857A8DB9692DA2775219901208EF8A9B028AF4F0983586BDA57B9AC2
              9A8EC2D14515DC68145145001451450014514500145145001451450014514500
              1451450025725F135B6FC3DD54FB463FF222575B5C77C526C7C3CD487AB443FF
              0022AD6B415EAC7D518D77FBA97A1F3B51499A335F4E7CD585A293346680B0B4
              52668CD0161475AF55F824D8D47575F58A33F913FE35E520F35EA1F04DBFE275
              A9AFADBA9FC9BFFAF5C98DFE048EAC1FF1A27B6514515F3C7D0851451400507A
              1A283D0D0C0F26D47FE42777FF005D9FFF00423556AD6A3FF213BBFF00AECFFF
              00A11AAB5F1153E37EA79CF7615EA3A0C622D0ECD40C0312B7E2467FAD79757A
              AE8DFF00205B2FFAE09FFA08AF5B265EFC99BE1F765EA28A2BE84EA0A43D0D2D
              07A1A4C0F21BA509773281801D863E84D45562FBFE3FEE7FEBAB7F3355EBE22A
              2B49AF33CE7B857ABE97FF00209B4FFAE29FC8579457AB695FF209B3FF00AE29
              FC857B1937C723A30FBB2ED14515F40749E77E31FF0090F1FF00AE6BFD6B02B7
              FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7054F8D8577DE0AFF009033FF
              00D766FE42B81AEFBC15FF002067FF00AECDFC8575653FEF1F22E87C474B4514
              57D39D8723E396C5B5A27ABB1FC857155DC78E133636D27A49B7F304FF004AE1
              EBE5734BFD65DCE2ADF1851452AA9760A080490013D066BCE32128AE8FFE10BD
              4FFE7A5B7FDF67FC28FF00842F54FF009E96DFF7D9FF000AEBFA8E23F90D3D9C
              BB1CE515D1FF00C217AA7F7EDBFEFB3FE147FC217AA7FCF4B6FF00BECFF851F5
              1C47F207B397639CA2BA3FF842F54FF9E96DFF007D9FF0A3FE10BD53FE7A5B7F
              DF67FC28FA8E23F903D9CBB1CE515D1FFC217AA7FCF4B6FF00BECFF851FF0008
              5EA9FF003D2DBFEFB3FE147D4711FC81ECE5D8E97C2AFBFC3D6D9EA370FF00C7
              8FF4ADA3D2B2F41B09B4DD2D2DA7285D49394248E4E7D056A76AFA8C3A6A8C54
              B748EC826A3A9E51AA7FC85EF7FEBBBFFE846AA55BD53FE42F7BFF005DDFFF00
              423552BE42B7F125EA704B7615E93E178041A05BF1CBE5C9F5C9FF000C579B57
              A9E8800D12C87FD304FE42BD4C9E29D56FC8DB0EB56CD0A28A2BE8CEB0A28A28
              0397F1668CD7910BDB75DD344BF3A8EACBEDEE3FAD7095EC55CEEAFE14B6BF76
              9EDDBC89CF27032AC7DC763EFF00CEBC5C7E5CEA3F694B7EA8C2AD2E6D56E79F
              D15AD75E1BD56D49CDB34ABFDE88EECFE1D7F4ACF92D6E61CF9904A87B87423F
              98AF0E746A41DA5167338B5BA21A28A2B3B32428A28A40156AC751BAD3A6125B
              4A579E573956FA8AAB455427283BC5D98D369DD1E9BA26B316AF6BBC7CB32604
              899E87FC2B5735E65E1DBD6B2D6A06048495846E3B1C9C0FD71F957A68E95F55
              80C4BAF4AF2DD1DB4A7CD10AE73C5DA69BBD345CA2E64B7CB71D4AF7FF001FC2
              BA3A6BA2BA32B00411820D74D7A4AAD3707D4A94799599E3F455DD5EC1B4DD4A
              6B620ED07299EEA791FE1F506A957C6CE0E127196E8E069A7666A787AFFF00B3
              F5885C9C46E7CB7F4C1FFEBE2BD3BB578ED77D6DAF05F0AFDB59819E35F2883C
              92FD07F435ECE5589508CA127B6A74519A49A673FE2CD47ED9AA9851BF756E0A
              0FF7BF8BFA0FC2B0694B1762CC4924E492792692BC8AF55D5A8E6CC252726DB0
              AECFC17A6ED4935071CB7C91E7D0753F9F1F81AE4ECED64BDBC8ADA21F3C8C17
              E9EA4FB0193F857AADADB47696B14110C246A1457A594E1F9EA3AAD688D6846E
              EEC9E8A28AFA43ACAB7D671DFD9C96D28F924183EDE87F0AF2FBFB19B4EBB7B7
              9D70CBD08E8C3D47D6BD66A8EA5A55B6A90795709923EEB8E194FB1AF3B1F825
              888DE3F1232A94F9D1E57457477DE0EBE818B5A95B88FB0C8561F5CF07F3FC2B
              1A5D32FA0CF9B673A81DCC671F9E315F3B530B5A9BF7A272B84A3BA2AD14ACAC
              A70C083E846292B0B32028A28A002955991832B156072083820FB1A4A28D80EB
              FC3DE2776952CEFDF70380931FE4DEBF5FCFD6BB3C8AF1DAF46D23598E7D26DD
              E79944BB70D93C920E33F8E335EF65D8FBC5C2ABD8EAA552EACCDDA28A2BDC3A
              028A28A0028A28A0028A28A0028A28A0028A86399656709CAA1DA5BB13DC0F5C
              743EFC76A9A800A28A2800A28A2800AE0FE2E4BE5F81655CFF00AC9E34FD73FD
              2BBBAF37F8D32EDF09D9C63ABDEA93F408FF00D715BE195EB47D4C312FF7523C
              2A8A4A335F4A7CED85A293346680B0B452668CD01616BD23E0BCBB7C5B771E78
              7B263F8874FF001AF36CD779F08A5F2FC7512FFCF48245FD01FE95CD8B57A323
              A30DA5589F41D14515F387D0851451400507A1A283D0D0C0F26D47FE42777FF5
              D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA79CF7615EA
              BA3FFC816C7FEB827FE822BCAABD5747FF00902D8FFD704FFD0457AD937C7237
              C3EECBD451457D09D4141E868A0F434303C92FBFE3FEE7FEBAB7F3355EAC5F7F
              C7FDCFFD756FE66ABD7C3D4F8DFA9E73DD857AB695FF00209B3FFAE29FC85794
              D7AB695FF209B3FF00AE29FC857AF937C523A30FBB2ED14515F42749E77E31FF
              0090F1FF00AE6BFD6B02B7FC63FF0021D3EF1AFF005AC0AF8EC6FF00BC4BD4E0
              A9F1B0AEF7C1473A34A3D2623F45AE0ABA3F0CEBD06971CB05C8608EDBD59467
              9C6083DFB0AD72DAB1A75EF2D11546494B53BFA2B1078B347233F6A3FF007E9B
              FC2ACD96B7A7EA53186D67DF205DC41461C671DC7BD7D2C7134A4ED192B9D6A6
              9BD190F89AD4DDE853851968C798BF875FD335E6B5EC2CA194823208AF30D734
              C6D2B5278B1FBA625A33FEC93D3EA3A7FF00AEBC8CDE83BAAABE6615E3F6919B
              40E0E68A2BC3398F55D2AF9750D3A1B80465946EF661C1FD73576BCCF44D725D
              1E623064B773F3C79E87D47F9E7F2C77367AEE9D7AA0C572818FF0390ADF91AF
              AAC1E361560949DA48EDA751491A74B5119A3DBB8C8A07AE6B32FBC47A6D8A9C
              CEB2BFF7223B8FF80FC6BAE7569C15E4D1A3925AB2CEABA9C3A55A7DA2504F21
              42AF5627D3F9FE1587FF0009C5A7FCFACDF98FF1AE5F56D5E7D5EE4492FCB1AE
              76460E76FF00893DCD67D78388CD6A73FEEB639A55DDFDDD8EE3FE138B4FF9F5
              9BF31FE340F1C5A1200B59FF004FF1AE1EB7FC2BA49BFD405C48BFB880E738FB
              CDD40FC3A9FC3D6A6863F1556A28458A352727647A0C6C5E356652A48C953DA9
              E7A5141E95F49D0EB3C9F54FF90BDEFF00D777FF00D08D54AB7AA7FC85EF7FEB
              BBFF00E846AA57C556FE24BD4F3A5BB0AF54D17FE40965FF005C13F90AF2BAF5
              4D17FE40965FF5C13F90AF5326FE248DF0FB97E8A28AFA23A84AAF7D742CACA6
              B9285C46A5B6838CE2AC545730ADCDB4B0B7DD910A9FC462A277E576DC4CE5FF
              00E1398BFE7C9FFEFB147FC27317FCF93FFDF62B8E9E17B79E4864187462ADF5
              07151D7CC3CCB131766CE4F6B33B5FF84E62FF009F293FEFB15D4C5224D124A9
              82AE030FA1AF21AE9B42F14FD8615B4BC5668978575E4A8F423BFF003FAD75E0
              F326E7CB5D974EB5DDA4770F04527DF891BEAB9AACFA469D272F636E4FAF963F
              C2A2875ED2E700A5EC23FDF6DA7F235685FDA1E45D427FE062BD8BD19AE8CDFD
              D65093C33A44BD6CD41FF658AFF23583AEF8560B4B292EECDDC79632D1B1C823
              BF3D78F7CD74F2EB1A7400992F6018EC1C13F9572DAFF8A22BCB57B3B20C51FE
              FCAC31C7B0F7F5AE1C62C22A6EF6B99D450B3B9CA514515F327192DB922EA12B
              D43823EB915EBA3A0AF2ED0AD4DDEB56B181C070EDEC179FFEB7E35EA23D2BE8
              7278B50948EAC3AD05A28A2BDA3A0E5BC65A779F6497A8B978787C752A7FC0FF
              00335C2D7AF4B124F0BC522864752AC0F706BCAB50B37B0BF9AD5F27631009EE
              3A8FCC60D7CEE6F87E59AAA968CE5AF1B3E6456A7F9B2084C3BCF9658315F7C1
              00FD704D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A
              72692DD82573AAF05E9BCC9A848BEA91E47E67FA7E75D9557B3B58ECAD22B788
              61235DBF5AB15F6185A0A8D250477C23CB1B0B451457496737A978AE3D3B5096
              D1AD5DCC78CB06033900FF005AABFF0009CC5FF3E4FF00F7D8AA3E34B331EA31
              5D01F24C9B4FFBC3FF00AD8FC8D7315F398AC76269559413D0E59D49C6563B5F
              F84E62FF009F27FF00BEC56BE8BADC5ACA4A52231B46402A483D7A7F2AF33ABD
              A56A9369378278BE60461D09C6E1E9EC7D0D4D0CD2AFB45ED5DE228D677F7B63
              D48A2B0C15047B8AAEFA7594BF7ED206FF007A307FA566DA78AB4CBA51BA6F21
              CFF0CA318FC7A7EB5A49A958C83297901F712035EEC6AD0A8AE9A674A945EC57
              9340D2A5186B1847FBABB7F9551B9F07E972A9F292485BD55C9FE79AD67D46CA
              3197BB8147BC80565DF78AF4EB4422293ED127658FA7E7D3158D68E1127CF626
              4A16D4E12FECDEC2FA5B573968DB19F518C8FCC1155AA7BCBA92F6F25B997EFC
              8C491E9E807B01815057CAD4E5E67CBB1C4ED776D82AD4324CB100BD39C555AE
              F346D1223A45B34CA7CC65DC7F1248FD2B6C3509D69351E85422E5B1D3D14515
              F64778514514005145140051451400DEF58FA96A124B7C9A3D8B91772AEF9A51
              FF002EF16705BFDE3D147AE4F40418FC4DE218FC3F60AEA9E7DECEDE55ADB0FB
              D2C87803E9C8C9FEA453FC3BA44BA558B4977209F52BA6F3AEE6FEF3FA0F4551
              C01E83DEB451B479990DDDD91AB0431DBC090C4BB5114051E807D6A6A28ACCB0
              A28A2800A28A28010D7947C6F9F6E9DA45BF779247FF00BE428FFD9ABD5FBD78
              9FC6DB9DDACE9B6DFF003CEDDA4C7FBCD8FF00D96BAB02AF5E272635DA8B3CB2
              8A6E68CD7D09E1D87514DCD19A02C3A8A6E68CD0161D9AEBBE194E20F881A5B1
              E8CCE9F9A301FA915C7E6B6FC2371F66F176912E7016F22C9F62C01FD09ACAB2
              E6A725E46949DA717E67D4F451DA8AF993E8C28A28A00283D0D141E94303C9B5
              1FF909DDFF00D767FF00D08D55ADFBDF0D6AD2DF5C4B1DA128F2B329F313A139
              07AD41FF0008B6B5FF003E7FF9153FC6BE3EA61ABB9B6A2F7EC70384AEF431EB
              D5747FF902D8FF00D704FF00D045705FF08BEB43FE5CFF00F22A7F8D77FA6C4F
              6FA65AC32AE244855587A100035E9E534AA53949CD5AE6F422D377562E514515
              EE9D01487A1A5A0F4A181E497DFF001FF73FF5D5BF99AAF5BB75E19D5E5BC9E4
              4B3CA3BB107CC41904E477A8BFE116D6BFE7CFFF0022A7F8D7C754C2D7726D45
              EFD8E07095F631EBD5B4AFF904D9FF00D714FF00D045703FF08BEB3FF3E7FF00
              9153FC6BD074F8DE0D3EDA29061D235561E840AF5729A3529CA4E71B5CDE845A
              BDD16A8A28AF70E8386F1BDB32DE5BDD7F0BA6CFA1049FD73FA572B5EADA969F
              0EA566F6F38F95BA11D54F622B81D43C35A8D8B9DB119E3ECF10CFE63A8FE5EF
              5F399960E6AA3A91574CE5AB4DDEE8C7A29595909560411D41182292BC8B339C
              2BA4F057FC8665FF00AE07FF00425AE6EBA4F057FC8665FF00AE07FF00425AEB
              C0AFF6881A52F8D1DFD66EADA543AB599864E18728E072A7D6B4A92BEB2708CE
              2E32D8ED693566793DFE9F73A75C186E108239561D187B555AF59BCB2B7BF80C
              57312C887D7B7B8F4AE4B50F054A84BD84C1D7A8493861F43DFF001AF9DC4E57
              520DBA5AA396745AD51C9D1572E34ABFB427CEB49540EFB491F98C8FD6A9D799
              284A2F54D33169ADC28A29402C4000927A0032696A02515A36BA16A7787F7769
              205FEF38DA3EBCE33F85747A7782E38C892FE5F30F5F2D3217F13D4FE95D3470
              55EABD2365E65C69C99CF68FA2DC6AD38080AC2A7E7948E07B0F53ED5E8F6767
              0D85AA5BC0BB6341C7A9F7352430C7044238902228C0551802A4AFA2C1E0A187
              57DE5DCEAA74D405A0F4A283D2BB8D0F27D53FE42F7BFF005DDFFF00423552BA
              0BFF000DEAD36A3732C769B91E67656F3146416C8EA7D2ABFF00C22DAD7FCF91
              FF00BFA9FE35F1F570D59CDB517BF6385C2577A18F5EA7A2FF00C812CBFEB827
              F215C27FC22FAC8FF973FF00C8A9FE35DF6970C96FA5DAC32AED91225561D704
              003B57A794D1A94E6DCD58D6845A6EE8BB451457BA74851451401C8F8A7407B8
              26FED133201FBD4039603B8F538EDDEB8AAF62ED585AAF862CF512D2AFEE273C
              9741C13EE3BFE86BC5C765BED1BA94B7EA8E7A94AEEF13CEA8ADCBBF09EA96C7
              291ACE9EB1B73F91C7E99AC99AD6E2DF3E75BCB1FF00BE847F315E254A1569BB
              4E2CE7706B74434514565A8828A2A786CEEAE3FD4DBCB20FF6509FE429A8CA4F
              45760937B1052A2B3B05552CC4800019249EC056F59F84352B920CC12DD3B973
              938F603FA915D6697E1EB2D2F0E80C93E30647E71F41DABBF0F96D6AAEF25646
              91A3293D74455F0CE8874CB733CE07DA650323FB83D3FC7FFAD5D0D14B5F4B46
              94694142275C6292B20A28A2B5282B90F1A69DBA28EFD1794C2498F42783F9FF
              003AEBAA86B6AADA25E86C63C963CFAE2B97174954A328B2271528D99E594514
              57C79C015D7782F4DDCF26A120E17291E7F53FD3F3AE56DE07B9B88E08865E46
              0ABF89AF55B0B44B1B28ADA31F2C6B8CFA9F5AF532AC3FB4A9ED1AD11BD08DDD
              D96A8A28AFA63AC28A28A00A1AAE9D16A962F6F2719E55B1F7587435E677B637
              1A7DCB5BDC21561D0F661D883DC57AD554BED3AD75287CAB98838EA0F707D41E
              D5E763B02B10B9A3A491954A6A6794515D55FF0082AE2325AC6612A7508FC37E
              7D0FE958571A46A36C4896CE618EA42923F31915F3D57095A93B4A272CA9CA3D
              0A54529041208208EA0D2573D99214514E48DE46DA88CC4F65049FD29D9BD006
              D15A76BE1ED52E9BE4B4745FEF49F2E3DF9E7F215D1E9DE0B8A26125FCBE6B7F
              CF34C85FF135D547035AABD159171A52662F877429353B859E65C5A21F989FE3
              3FDD1EDEB5E8C06000053238D224548D55540C0503005495F4984C2C70F0B2DF
              B9D70828AB0514515D6585145140051451400DCF355352D46D749D3A7BFBC904
              7042A599BBFD07A927000F5AB4C40192703BD791EB3A84DF11FC5F0E85A7BB2E
              8F6AC5E6957F8F1C16FE8BF5CF7E36A14BDA3BBD96E67527CAB4DCDBF075B5D7
              8A75B97C61A9C65625262D3A03C88D724161EA7A8CF724FA0AF43A82DADA1B4B
              686DADD0470C4A1111470A00C0153D4D59F3CAEB6E83847956BB8B4514566585
              1451400514514009DEBE7DF8C173E778DDE3FF009E16F1C7F4CE5BFF0066AFA0
              8D7CC7F102EFED9E38D5E5CE76DC18FF00EF8017FF0065AEFCBA37AB7EC8E0C7
              CAD4D2F339ACD2668A2BDC3C80CD19A28A00334668A28016A6B499ADEEA3997A
              C6C1C7D4107FA5414E4386149ABA03EBE8DD5E3565395201069F58DE16BBFB77
              8574AB92725ED632C7FDADA33FAE6B62BE5A4ACDA3E922EE93168A28A4505145
              1400514514005145140051451400514514005145140051451400514514005145
              14011BC51C830F1AB0F4201A80E9B644F36901FF00B66B56A96A1C22F742B153
              FB36C7FE7CE0FF00BF63FC29F159DB40C5A1B78A3623194400D4F4B42A715AA4
              16414514558C28A28A00303D2A292DE197FD6431BFFBCA0D4B454B8A7B815469
              F680E45AC00FFD73153245120F92355FA0C549452508AE82B0514515630A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802
              16B581CFCD0C67EAA0D47FD9F679CFD960CFFD731FE15668A8E48F6159112DB4
              09F7618C63D140A9703D2968A6A296C8614514550051451400D270335C7FFC27
              5FF50FFF00C8DFFD8D7607EE9AF1EAF2733C4D5A1CBECDDAE635A6E36B1D8FFC
              277FF50FFF00C8DFFD8D64EADE26BAD521300458613F7954E4B7B67D3F0AC4A2
              BC6A98FC4548B8CA5A339DD593566C28A2A5B5B692EEEA3B78572EED81FE27D8
              75AE549C9A4B766695F43A7F05E9BBE79350917E54F923CFA9EA7F2E3F135DB5
              55B0B38EC2CA1B68C7CA8B8CFA9EE7F139AB55F5F84A0A85250EA77C23CB1B0B
              4514575161451450014514500146051450046D146E3E6456FA806A16B0B46FBD
              6D09FAC62AD5152E117D0562BAD95B2FDDB7887D1054AA8AA30AA00F614FA285
              18AD900514515430A28A2800A28A2800A28A280128A2B99F1B78A62F0B688D38
              2AD793652DA33CE5BFBC47A0EA7F0F5AA84253928C7764CA4A2AECE53E2878C8
              DAC6FE1FD3A4FDFCAB8BA914F28A7F807B9EFEC71DF8E87E1E785C787340569D
              36DFDD8124F91CA8C7CA9F803F9935E77F0E34093C45E259356D4374B0DB3F9A
              ECFCF9929E467D79C93F400F5AF74AEDC538D282A10F99CF4539C9D497C85A28
              A2B80EA0A28A2800A28A2800A28A28018EC110B31C003249AF92B51B937BA85C
              5D367334AD21CFAB127FAD7D3DE2DBE1A6F84F55BB27694B670A7FDA230BFA91
              5F2C3FDEAF5B2C8E9291E56612D6311B451457AA79C145145001451450014AA7
              0C3EB4945007D1FF000B2EC5CF806C549CB40F2444FD1891FA115D9F7AF2CF82
              77C24D1F52B1CFCD14EB363D9971FCD3F5AF53AF9BC54796B491EFE1A5CD4A2C
              5A28A2B0370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A2A
              96ADA9C3A3E9773A8CEAED0DBA191D6300B103D01207EB4257764265DA2B9CF0
              B78CB4FF0016FDA8D843751FD9B687F3D546776718C31FEE9EB8AE8E9CA2E2ED
              2409A7AA168A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128A81AF2D925F29AE22593A6D2E01CFD2AC50D0051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400D3F74D78F57B1565FF00C23BA4FF00CF9475E6E61839E279795DAC
              65569F3DAC798D15E9DFF08EE91FF3E317EB4E5F0FE94BC8B187F119AF3BFB1A
              AFF3232FABCBB9E696F6D35D4AB15BC6D23B7F0A8FF381EF5DF787B405D2A3F3
              A6C35D38E7D107A0FF001AD982D60B65DB0431C4BE88A07F2A9ABD0C265B0A12
              E793BB3585251D7A8B451457A66A145145001451450014514500145145001451
              4500145145001451450014514500145145001451450055BEBD834EB29AEEEA41
              1C10A17763D0015F3AF8835ABCF17F88DAE76390EC22B68072557385503B924E
              4FA93F4AEB7E29F8ACDFDF7FC23F6527FA3C0D9B9653F7DFB2FD17BFBFD29BF0
              A7C3E2F75893559933059711E4706523AFE0327EA41AF5F0D4D61E8BAD35ABD8
              E0AD37566A9C76EA7A6F857418FC39E1FB7B05C1900DF330FE273D7F0E807B01
              5B74B495E4CA4E4DC9F53B631515642D145148A0A28A280128E954357D5ACF43
              D325D42FE431DBC406E2064F24018039EA4572327C5EF0AC60625BA7CFF7603F
              D6AE14A73D62AE672AB083B499DF52579FFF00C2E3F0B7ADEFFDF9FF00EBD656
              B5F19F4E5B264D1AD6796E98615E740A89EF80727E9C7D6B48E16B376E5644B1
              3492BF3117C63F12A25B43E1FB77CC8C44D7383F740FBAA7EA79C7B0F5AF1827
              2726AC5EDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9556EF5EEE1E8AA50513
              C6AD55D49B930A28A2B7310A28A2800A28A2800A28A2803AEF877E235F0E78A2
              19A77DB6938304E49E15490437E040CFB66BE920DB86460823208AF90012A6BD
              37C17F155F45B34D3B598A6B9B58C622963C1741D94824023D39C81EBC63CCC7
              615CDF3C16A77E0F12A1EE4B63DD28AF3FFF0085C7E16FFA7DFF00BF1FFD7A54
              F8C1E157700BDE2E7B9838FD0D79BF56ABFCACF47EB14BF98EFE96B9EF0F78C7
              46F13CF345A6CEEF242A1995D0AF0491919EBFFD715D0D6528B8BB491A465192
              BC5894D660AA59880075269F5E5FF19357BAB4D36C34D81D923BB2ED31538DC1
              76E17DC12DC8F61574693AB3505D4539A84798E9AFBE2278574F90C72EAD1C92
              0EA204693F55047EB55E0F89FE139D827F693444F00C90381F9E3F9D73DE0AF8
              73E1EBFF000ED9EA37CAD7D2DC26F23CD654439FBA02907231839279CD6D5FFC
              2AF0BDD5BB25BDACB6929E92453331FC431208AE970C2C5B8B6EFDF43252AAD5
              D58EC2CEF6D750B75B8B3B88A785BEEBC4C181FC4558CD78CF81B4AF12785FC6
              A6D1ECAECE9B248D0CD288DBCA6033B5C1C6072060FA123BD7B35615E92A72B4
              5DD1A539392BB56168A28AC4D028A28A004ACCF105BD9DD6817D06A33B4166F1
              1134AA402ABDCE483FCAB4EB9EF1CFFC891AC7FD7B35553579A44CB48B666F80
              B49F0E698B7FFF0008F6A925E890C7E76F915B66376DC61475C9FCABB3EF5E4B
              F047FD5EB7F583FF0067AF5AADB151E5AD257B9145A704C5A28A2B9CD428A28A
              004EF41200C9A2BCEFE2EEB175A7F876DED2DA468FED92149594E328064AFD09
              C67D4023A13574A9BA93505D499CB962E46EEA1F103C2FA64AD0CFAB44D22F05
              61569307D095040FC6AA45F147C252B6D3A8BC79EEF04807E82B96F00FC3ED03
              56F0EC1AA6A1BEF2598B031894AAC786231F29049E33C9EE38EE7A6BBF859E15
              BA85962B292D9CF49229DB23F06247E95D5286160DC257BA3152AB25CCAC7556
              1A8D9EA76C2E2C6EA2B8849FBF13861F4E3BD5BAF13F0CE89E24F08F8F16182C
              EF26D3DE7F22699626F2E48CF01CF618C839ED82338CD7B65615E9469CAD1774
              694E6E4B542D1451589A051451400954353D634ED16149B51BB8ADA376DAAD21
              C02719C55FAC2F13785AC7C55690DB5FBCE91C4FE62985829270473907D6AA0A
              3CCB9B62657B6878B6BFA9D95CFC53FED186E637B3FB640FE703F2ED013273E8
              307F2AF6AB3F17787EFEEE3B5B5D56DA69E43848D5F258F5E2BC2B58F0FDA587
              C41FEC285E536BF6A8A2DCCC37ED60B9E40033C9C715EB7A3FC30D1345D5ADF5
              1B69EF9A681B72AC92295270473851EBEB5E9E3234792176F6D0E5A2E7CCCEDE
              8A28AF28EC0A28A2800A28A28012B1756F16685A1B14D435286293AF9632CE3F
              E02A09AE77E2678BA6F0EE99159D83ECBEBBC8120EB120EAC3DCE700F6E4F615
              C77837E19BF882D1757D6AE668E09C978D10FCF2E7F8998F63DB824F5C8AEBA5
              878F27B4AAECBF3309D57CDCB0DCEE97E297849DF6FF0068C8A3A6E6B7931FCA
              BA4D3759D3B5883CED3AF21B941C131B0254FB8EA3F1AE526F84BE1792128915
              D44D8C798939247E0723F4AF37F10681AB7C37D72DEF6C6F19A190930CE38CE3
              04A38E87B71D0F5E3040D23468567CB49B4FCC9752A43592D0FA0A8AC8F0D6B5
              1F88740B4D4E31B7CE4F9D7FBAE0E187D320E3D460D6C570B4E2DC5EE7427757
              414514521851451400959179E26D174FBFFB0DDEA56F0DD703CA66C373D38FC4
              56BD7807C4E99A0F88B3CCA0168D61600F42428233F957461682AD3E56EC655A
              A7246E7B96A3AB69FA441E76A1790DB467806570371F607927D8573E3E25F844
              C9B06AE33EBE44807E7B715CAE87E02BAF166DD7FC59793BBDC80F15BA1DB843
              C8C9E76839E14631D49C922B7AEBE14F85E7B668E1B69ADA4C7CB2A4CCC41FA3
              123F4AD153C3C5F2CE4DBF2D89E6A8D5E28EBAC351B2D4EDC5C58DD457109E8F
              13861F4E3BD41AA6BDA5689187D46FE0B6C8CAABB7CCDF451C9FC057CFFA7EAB
              AAF813C497D05AC81A58D9EDDD0E76484642B63B9070477EDDCD7A168BF0C0EA
              4A354F15DD5CDCDF5C61DA10F8DB9E70C7A923D0600E8335553090A4F9A72F75
              EDDC98D694B48AD4E8E3F895E12965118D5D413C02D0C8A3F32B81F8D74D6B77
              6F7B6C9716B3C73C2E32AF1B0653F422B87D53E137876E6C9D2C6296CEE369D9
              209598671C64313C7D315C57C2AD56EF4CF17B68D23B791721D5E3272164404E
              47A70A47BE47A0A4E852A94E53A4DDD771FB49C6494FA9EEB45145711D014514
              5001451450025676A9AEE97A24424D4AFE0B607EE876F99BE83A9FC0558BEB83
              67A7DCDC88DA430C4CE11464B601381EFC5786685E18D5BC71E299EE35D17904
              7832CD2346549190022EE181D78EB800D7450A319A729BB2465526E365147A43
              FC53F092B6D17F2B8F55B793FA8AD0D37C79E19D565586DB568BCD6E024A1A32
              4FA0DC064FD2A847F0BBC231A6D7D39E438C6E6B8933FA3015C27C48F03E93E1
              CD3E0BFD35DE2F326F28DBBBEE04609CA93CF18E724F51D3BEF0A785A92E48DE
              E44A5560AEEC7B7515C77C33D527D53C156CD72ED24B03B425D8E490A78CFE04
              0FC2BB1AE2A9070938BE86D19732B8B451454941451450014D2428249C01DE96
              BCD7E306B17563A2D9D85BC8D1ADEBB09594E095503E5CFA12C33EB8F4CD694A
              9BA93505D489C9462E4CE8AFFE21F85B4E95A29B568DE45E0AC2AD27EAA08FD6
              AB43F143C272B05FED178CF63240E3F5C71F8D733E05F879E1FD4FC3B6DA9DF8
              6BD967049412954420918C2907231CE4FE15D0DEFC2BF0ADD40C90D9CB6B21E9
              24533123F06247E95D3286160DC5DEEBA99295592BAB1D6596A169A95BADCD95
              CC3710B74789C30FD2ACE0578BF84346F127853C742D96CEF24D35E6304D2AC4
              DE5BA1CED7CF4183839EDC8CF26BDA6B0AF4D5395A2EE8D29CDCD6A85A28A2B1
              3412B93F1F78A4786741668587DBAE731DBAFA1EEF8F419FCC8AE9EE278AD6DA
              5B899D522894BBB374007249AF9CFC4DAF4BE2AF114D7EFB85BAFC9021FE1407
              8FC4F24FB9F615D982C3FB59DDEC8E7C4D5F671B2DD9931A48ED921A49A56C01
              D4B313C7D4926BE8DF0AE88BE1FF000EDAD8003CD55DD330FE290F2DFE03D80A
              F21F86FA40D63C631CCEB9B7B05F3DB2382F9C28FAE79FF809AF78AE8CCAADDA
              A6BA18E0E9E8E6FA8B451457967705145140051451401E5BF1A6FA48F47D36C5
              4909713348DEFB00C0FA65B3F80AF1173F363D2BDFBE2DE8736A9E1A8EF6D90B
              C9612191940C9319186FCB00FD01AF0190739ED5EEE5ED7B1B2DCF0F1A9AAD76
              328AD282D04B02B8E7239FAD49F60F6AECE639D45995456AFD83DA8FB07B51CC
              8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456
              AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB
              07B51CC83919934BD2B57EC200248C0159840321DBD0938FA534D3D84D58ED7E
              17DF4965E3CB154384B85785C7A8DA48FD403F857D140D782FC24D0E6BEF14AE
              A8C87ECB62AC4B11C1919480A3D70093ED81EA2BDE8578798B4EB687AD97A6A9
              6A2D731E31F08DB78BB4E8E0925305C42C5A1980CED27A8238C83819E47415D3
              57937C5597C41A56A36FA8E9FA8DF416134623610CCCAA92027A81C0C8C63D48
              35CF868CA55172BB33AEAB4A3A98FF00F0AF7C73A03B3691745D49CFFA25D18C
              9FA862A0FEB41F11FC4BD139BA86F1E24EBE6DA0917F16033FAD75DE19F8A5A3
              5E69D047ABDC1B4BD440B2191495908182C08071EA41C633F8D6C5D7C45F0ADA
              C658EAD1CA4745895989F6E05773AB5B9B96A53E6F9182842D78CAC733E13F8B
              0754D4E0D3F58B48E1927611C73C2485DC4E002A4923278C8279238C735EA1C5
              7CF009F197C4913E9768D0C73DCA49B4000A22E373B63804E093EE71C93CFD11
              5CF8DA70A6E3CAAD75AAEC5D094A49DF5168A28AE33A028A28A004AE7BC73FF2
              246B1FF5ECD5D0D73DE39FF912358FFAF66AD28FF123EA899FC2CE1BE08FFABD
              6FEB07FECF5EB75E49F047FD5EB7F583FF0067AF5B15BE3BF8F2FEBA19E1FF00
              86828A28AE4360A28A28012B03C59E18B5F16691F629E4313ABF9914AA325187
              1D3B8C1208ADFAF2FF008AE75DD3DACF54D32FEF60B3DBE54EB04CCAAAD9CAB1
              00F7CE33EC07715B61E329544A2ECCCEA34A3A9CFB7C37F1A6852B49A3DE07C9
              EB697262623DC1207E19341D73E26E8BFF001F10DF491AF5F32D5655FC58027F
              5AE97C23F1434B974AB7B5D6EE1EDEF21508D348A5965C7462464827BE7FAD74
              53FC43F0A5B465DB5885F1CED8D5989FC00AEE9D5AFCDCB529A97C8C1469B578
              CAC721E1BF8BB25CEA10D9EB967144246082E20C80A49C0DCA49E3D483C7A57A
              C66BE73D7271E39F1D13A3DA320B9658D72A031C000BB01C0E393EC2BE8B0300
              7B0AC3194A10E571566D6A8BA1293BA7AA1D45145711D0145145001451450078
              17897FE4B29FFAFF00B7FE495EF95F3F78D66FECEF8AF3DDCCADB22B9826381C
              950A878FC8D7B058F8DBC3BA95CDBDADA6A91CB3CE711C611B24E33D08E381DF
              15E8E3212953A6D2D2C72D192529267454514579C7505145140051451401E11F
              188B9F18C01BEEFD8936FD373D6F59689F12D6C6D85AEB368B6E225F29432F0B
              818FE0F4C569FC53F0A5C6B5A743A9D8C464BAB3043C6A32CF19E4E3D483CE3B
              827BE2B0FC13F13EDAC34E874AD744AAB02848AE5177614700301CF1D0100E46
              38EE7D68CA53C3C7D9A4DADD1C6D2551F3697343FB17E29FFD06ED7FEFA5FF00
              E22A86ADE0CF883AEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB29
              7E25F84E28778D543F190A90B927FF001DE3F1AF3CD77E21EB9E25D720B4F0D1
              BAB68B25238E3C6F9493F79B19000C74CE00C927D2693AF295F912B756AC39FB
              34AD76CF44F87DE1FD43C37E1F96C351688C9F686913CA62C02955EE40E720D7
              5B597A0DA5ED8E8B6B6FA85DBDD5E05CCD331CE58F240F619C0FA56A579D564E
              5372674C1251490B451454141451450025780FC4A8D65F8932C6C3E56F254FD0
              AA8AF7EAF04F88BFF2539BEB07FE82B5DF977F15FA339B13F0A3DE9405501400
              00E829D476A2B80E93C0F558525F8D22375051B5287231C1FBA483F5AF7B15E1
              1A8FFC96F4FF00B08C3FFB2D7BB8AEEC6BD29FA1CF43797A85782785C05F8CD8
              51802FAE4003B0C495EF75E09E19FF0092CDFF006FF73FC9E9E0BE0A9E815FE2
              89EF945145701D0145145001451450053D46FEDF4BB09EF6EA40904285DC9F4F
              F1AF279FE28F88B5ABF6B5F0E69436F55FDD9964C6719383803F023DEBB9F889
              6173A8F81F5082D559E50164D8A32582B06231DF8078F6AF32F863E2ED2FC393
              5EDBEA64C297250ACE14B005723040EDCE41C7AE6BD0C3528BA32A96E692E873
              569B5351BD91B6B6FF0016352FBF37D910F4CB4298FF00BE416FCEB9FF001778
              335DD33473ACEBBAB8BB9FCC58D537B4840393F79B18C63A00457A94DF117C29
              045BCEB11BF7C223313F8015E6FE38F175D78C74E9574CB199747B1759279DC0
              05989DAB9E70072703249CE4E315B61E759D45EE28AF4B115230E5DDB3B3F841
              FF00225BFF00D7DC9FC96BBFAF21F857E2DD334FD34689772B477535DFEE06C2
              43EF0A072338E41EB81CD7AF57162E2E35A5736A2D382B0B45145731B0514514
              005739E2EF0A5AF8B34A5B49A530CB1B6F866519287A10471907B8CFA57455E5
              7F15DF5ED32E6D753D3B50BD82C993CA9560999551F248240E390719F6F715B6
              1E329544A2ECCCEA34A3A9867E1D78DB41919F48BBDE09EB697263247B86201F
              A64D075EF899A2FF00C7CC37B246BD7CCB5122FE2C013FAD751E14F8A3A4DC69
              76F6FACDCB5B5EC4811E4914B2CA471BB201C67BE71CD6F5CFC44F0A5B445DB5
              789FD16356627F002BBA556BA972D4A6A5F2305085AF1958E53C2FF169EFB528
              6C75AB48E133308D678490AAC4E06E524F07D73F87A7AA57CEBA849FF09BFC42
              2FA4DA3C4B732A003182140019DB1C0E0127FA9EBF458E9586329C20E2E2ACDA
              D8BA1294AE9EA828A2A86B1AA5BE8DA4DCEA372711408588CF2C7A003DC9C01F
              5AE249B7646EDD95D9E79F167C4E62B78FC3F6927EF66C3DCE3A85CFCABF8919
              3EC07AD796B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80
              C01EC0552BB72F3045C9038C0EE6BE970D4551828F5DD9E356A8EA4EE7B67C26
              D28597851AF5D7F7B7D297CF7D8A76A8FF00D08FE35DF551D1EC574CD1ACAC57
              1882048CE3B9000CD5EAF9EAD3F695252EECF5A9C7960A22D1451599A0514514
              0094B51B3AC6859980503249ED59969A91D5E42D619FB129C1BAED291DA3F51E
              ADD3B0CF24349B15CD56008C11915E7FAF7C24D13569DEE2CA4934E95CE59625
              0D1E7D429E9F4040F6AF41ED45542A4E9BBC5D88A94E1515A48F1E8BE0CEA168
              C7ECDAEC0CA7F864B7201FC98D4BFF000AAB5CFF00A0969BFF007E9FFC6BD728
              C5747D76B7731584A4BA1E47FF000AAB5BFF00A0969BFF007E9FFC68FF008555
              ADFF00D04B4DFF00BF4FFE35EB9452FAED5EE3FAAD3EC791FF00C2AAD6FF00E8
              25A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD
              3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF
              008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3F
              E1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00
              E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FA
              AD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3
              FF008D7AE5147D76AF70FAAD33C7E4F843ABDCAEC975AB48D4F511C0DCFE66AD
              E9BF04EC60943EA1AACD70A0E4C7145E583EC4E49FCB15EAB45278CACD5AE0B0
              94B7B14B4DD2ECF48B18ECEC6DD208231F2A20EFEA7D4FB9ABD4515CCDDF5674
              2492B20A86E6DA0BCB77B7B9852685C61E391432B0F420D4D451B0CE16F7E13F
              85EEE42F1C3736B939220978FC03038FC2A083E0FF0086A17DCF25FCC07F0BCC
              A07FE3AA0D7A0515BAC4D6FE6667ECA1D8CCD2340D2F4180C3A659456EA7EF15
              1966FAB1E4FE26B529296B06DB7765A496C145145030A28A2800AAB7F636FA9D
              8CD65771F996F32ED913711907A8C820FEB56A8A36D85B98DA1F86347F0E09FF
              00B2AD3ECFE7EDF33F78EFBB6E71F789C753D3D6B628A29B6E4EEC124B442D14
              51486145145001514D0C5710BC5346B246E0AB23A82187A107AD4B450070F7FF
              000AFC2F7B29912DA7B42C727ECF2E07E01B207D00AAD17C1EF0DC6C0B4BA84A
              07679971FA28AF40A2B7589AC9594999FB287632746F0D691A046534DB18E02C
              3E67E59DBD8B1C93F9D6B52D2560E4E4EED96925A2168A28A061451450014514
              500739E22F0668DE276492FEDD84E836ACD136D70339C67A11D7AFA9F5ACDD1B
              E19685A1EA906A16F2DEC93C2DB93CD91480704740A3D6BB4A2B455AA28F2F36
              847246F7B0B451456658514514005145140095CC6B5E01F0EEBB334F736023B8
              6CEE9606D8C49EE71C13EE41AE9E8AA8CE50778BB09C549599E7A9F077C36926
              E33EA0E3FB8D2AE3F45CD757A3786347F0FA15D32C62859B867E59D87BB124E3
              DB35AF47E3573AD526AD29364C69C56A90B451456458514514005145140095CF
              EA3E0AF0FEADAA7F695ED879B7676E64F3A45FBBD380C0718F4AE828A7194A2E
              F176138A7B8B45145219CFC9E0CD066D6C6B3258675012097CEF39FEF0C60E37
              638C0ED8ADFC514537272DD8924B61338AC0B5F05E8167ACFF006BC161B2FBCC
              693CDF3A43F336771C16C7393DBBD7414B4464D6898349EE1451452185145140
              0514514009DAB94D5BE1E786B57B86B89AC3CA99B967B772993EA40E33EF8CD7
              5745542A4A0EF176265152DD1C4DB7C2AF0ADBB876B59A7C769666C7E4315D4C
              5A5D843A79B08ECE04B32A50C22301083D411D39ABB4539D59CFE27708C22B64
              7316BE01F0C59DFC57B6DA5AA5C44E1D184AE42B0390402D8FD2BA7C514B5329
              CA4EF2771A8A5B05145148614514500150CF0457503C33C692C4E30C8EA19587
              A107AD4D45170387BDF855E17BC90BA41716A49C9104B81F806C81F41C55687E
              0F786A270CF2DFCA3FBAF32E3F4507F5AF40A2B7FACD64ADCCCCFD943B195A3F
              87B49D02131E996515B86FBCC012CDF563927F135AB4B4562DB93BB2D24B612B
              C7FE2EF880CF756FE1FB77C88C89AE307F88FDD53F40738F715EA9A9DFC3A5E9
              9737F39C456F1991BDC01D07BD7CDA6E66D5F58B9D46E4EE92573237A024F007
              B0E83E82BD0CBA8F34FDA3D97E67262EA72C7956EC70516F6DFEE8C9F735534A
              025D6AC95C8C35C46189E982C33563516D96E147F1102B36291A195254387460
              C0FA10722BDA49B8B3CD8BB3B9F588E94B59DA36A96FAD6936DA85B3068E640D
              8073B4F707DC1C8FC2B42BE51A69D99EEA69AB8514B597ABEBFA5E871799A8DE
              C70E7954CE5DBE8A393F80A6937A206D2D59A7587E20F15695E1BB7325F4E3CD
              232B0272EDF8761EE702B81F107C50BAB806DF4781EDD5CED591C6E95C9E0055
              190BFA9FA1ABFE11F004B34EBADF89834D72E77C76B212DB7FDA7CF56F63D3BE
              4F4EA58654E3CF5B4F2EACE7759CDF2D3D7CCB9A75B6AFE3875BED695ECB4304
              343A7A121AE0750D21E095E9C719F4C727BC8E348A358E35088A005503000F61
              4E14715CF39F374B236847956BB8EA28A2A0B0A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803CD3E306B3F65D12DB4A8CE1EF2
              4DF201FDC5C7F3623F235E5F6116CB5048E58E4FF4AD8F89FA91D43C6F731839
              8ED55604FC064FFE3CC47E154E34091AA8EC00FD2BE870B0F67422BBEA78F899
              F3547E466EAA0858FD326B32B7EF2DBED3015040607209F5AC66B4B846C185C9
              F6191FA575C24AD63046BF87BC5FABF865D8584E0C2E72F04A37213F4C823F02
              2BAE3F19F54F2F1FD97661FD4B363F2CFF005AF3F8F4EB990F29B47AB1C55D8F
              4E8205DF3B06C7273C0158D4A1426EF28EA6B1AD38E899BD77F10FC57AC0648A
              E92CE16E0FD9936E07B31CB0FC0D63DADA5D6A1A92DBDA24B7FA8CC7924963EE
              493D00EE49FAD6AE81E1CD53C573F97609F67B153892EDD4851EA14773EC3F12
              2BD93C39E17D3BC3163E45947995BFD6CEFCBC87DCF61E83A57256AF4B0EB969
              A5736A74AA56779BD0C6F07FC3FB6D00ADF5FB2DD6A8467791948BD907F53CFD
              39CF6D494B5E3D4A92A92E693D4F46108C15A214514541614514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              45145001451450014514500145145001451450014514500145145007CB9AFCA6
              7F11EA531EAF772B73EEE4D6BC4C24895C1C86008A87C73A44DA378B6FE29108
              8E695A785BB32B12463E8491F5158F6BA84D6CBB570C9E87B7D2BEA2369D38B8
              ED63C39A6A4D3DCE8314100024F00773592355B999D638600D231C2800B127D0
              01D4D759A2FC38F10EBA565D498E9F6A4E7120F9C8F6418C7E38FA1ACE728D35
              79BB0A14E53768A39F6BBF3675B6B489EE6E1CED548D4924FA00393F85777E1B
              F85F3DD3A5F7895C841865B28CF5FF00788E9F41F98E95DD787BC23A478662C5
              85BE66230F3C9F348DF8F6FA0C0ADEAF32BE3DCBDDA7A2FC4F428E114759915B
              DBC36B02416F1245120DA888B85503B003A54D4515E75CED0A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A28032F59D0F4CD6ED0C3A959C7708BCAEEC82A7D88E47E15E7BA7F82BC3
              D3EAE60934FDD1E7A79D20FF00D9A8A2BB309392A72B3392BA5CE8F42D2F42D2
              B481B74FD3EDEDF8C16441B8FD5BA9FCEB528A2B924DB7A9D105A05145148B0A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2803FFFD9}
            Stretch = True
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 379
            Top = 91
            Width = 25
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Fl:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 403
            Top = 91
            Width = 30
            Height = 14
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object rlRetratoEmiEnder: TRLDBMemo
            Left = 87
            Top = 28
            Width = 232
            Height = 42
            Alignment = taCenter
            AutoSize = False
            DataField = 'endereco_comp'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 321
            Top = 92
            Width = 20
            Height = 11
            Caption = 'No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlRetratoEmiFone: TRLDBText
            Left = 87
            Top = 91
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'fone_fax'
            DataSource = Src_Cabecalho
          end
          object rlRetratoEmiCidade: TRLDBText
            Left = 87
            Top = 77
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emicidadeuf'
            DataSource = Src_Cabecalho
          end
          object rlRetratoEmiCep: TRLDBText
            Left = 87
            Top = 104
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'cep_emit'
            DataSource = Src_Cabecalho
          end
          object RLDraw137: TRLDraw
            Left = 383
            Top = 128
            Width = 333
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel86: TRLLabel
            Left = 384
            Top = 130
            Width = 134
            Height = 11
            HelpType = htKeyword
            Caption = 'Protocolo de Autoriza'#231#227'o de Uso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 13
            Top = 141
            Width = 341
            Height = 14
            AutoSize = False
            DataField = 'IDENATOP'
            DataSource = Src_Cabecalho
          end
          object RLDBText9: TRLDBText
            Left = 386
            Top = 142
            Width = 325
            Height = 14
            AutoSize = False
            DataField = 'num_prot'
            DataSource = Src_Cabecalho
          end
        end
        object RLBand1_cab02: TRLBand
          Left = 38
          Top = 287
          Width = 718
          Height = 347
          BandType = btColumnHeader
          AfterPrint = RLBand1_cab02AfterPrint
          object RLDraw40: TRLDraw
            Left = 0
            Top = 250
            Width = 311
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel19: TRLLabel
            Left = -1
            Top = 1
            Width = 132
            Height = 11
            HelpType = htKeyword
            Caption = 'DESTINATARIO REMETENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw14: TRLDraw
            Left = 0
            Top = 13
            Width = 523
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw15: TRLDraw
            Left = 524
            Top = 13
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw16: TRLDraw
            Left = 634
            Top = 14
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel20: TRLLabel
            Left = 4
            Top = 15
            Width = 80
            Height = 11
            HelpType = htKeyword
            Caption = 'Nome Raz'#227'o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 5
            Top = 27
            Width = 71
            Height = 14
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
          end
          object RLLabel21: TRLLabel
            Left = 527
            Top = 15
            Width = 43
            Height = 11
            HelpType = htKeyword
            AutoSize = False
            Caption = 'Cnpj/Cpf'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 527
            Top = 27
            Width = 102
            Height = 14
            AutoSize = False
            DataField = 'dest_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLLabel22: TRLLabel
            Left = 639
            Top = 16
            Width = 70
            Height = 11
            HelpType = htKeyword
            Caption = 'Data de Emiss'#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 643
            Top = 27
            Width = 41
            Height = 14
            DataField = 'IDEDEMI'
            DataSource = Src_Cabecalho
          end
          object RLDraw17: TRLDraw
            Left = 0
            Top = 46
            Width = 355
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw18: TRLDraw
            Left = 356
            Top = 46
            Width = 194
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw19: TRLDraw
            Left = 551
            Top = 46
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw21: TRLDraw
            Left = 634
            Top = 46
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel23: TRLLabel
            Left = 4
            Top = 48
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 358
            Top = 48
            Width = 59
            Height = 11
            HelpType = htKeyword
            Caption = 'Bairro/Distrito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 555
            Top = 48
            Width = 20
            Height = 11
            HelpType = htKeyword
            Caption = 'CEP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 633
            Top = 48
            Width = 81
            Height = 11
            HelpType = htKeyword
            Caption = 'Data Entrada/Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText97: TRLDBText
            Left = 5
            Top = 60
            Width = 116
            Height = 14
            DataField = 'DESTENDERDESTXLGR'
            DataSource = Src_Cabecalho
          end
          object RLDBText14: TRLDBText
            Left = 360
            Top = 60
            Width = 134
            Height = 14
            DataField = 'DESTENDERDESTXBAIRRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText15: TRLDBText
            Left = 555
            Top = 60
            Width = 107
            Height = 14
            DataField = 'DESTENDERDESTCEP'
            DataSource = Src_Cabecalho
          end
          object RLDBText93: TRLDBText
            Left = 643
            Top = 60
            Width = 50
            Height = 14
            DataField = 'datasaida'
            DataSource = Src_Cabecalho
          end
          object RLDraw23: TRLDraw
            Left = 0
            Top = 80
            Width = 285
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw24: TRLDraw
            Left = 286
            Top = 80
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw25: TRLDraw
            Left = 396
            Top = 80
            Width = 49
            Height = 29
          end
          object RLDraw26: TRLDraw
            Left = 446
            Top = 80
            Width = 187
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw22: TRLDraw
            Left = 634
            Top = 80
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel29: TRLLabel
            Left = 3
            Top = 82
            Width = 43
            Height = 11
            HelpType = htKeyword
            Caption = 'Munic'#237'pio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 290
            Top = 82
            Width = 42
            Height = 11
            HelpType = htKeyword
            Caption = 'Fone/Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 400
            Top = 82
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 450
            Top = 82
            Width = 73
            Height = 11
            HelpType = htKeyword
            Caption = 'Incri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 642
            Top = 82
            Width = 58
            Height = 11
            HelpType = htKeyword
            Caption = 'Hora da Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 5
            Top = 94
            Width = 117
            Height = 14
            DataField = 'DESTENDERDESTXMUN'
            DataSource = Src_Cabecalho
          end
          object RLDBText18: TRLDBText
            Left = 399
            Top = 94
            Width = 101
            Height = 14
            DataField = 'DESTENDERDESTUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText19: TRLDBText
            Left = 451
            Top = 94
            Width = 74
            Height = 14
            DataField = 'dest_inscricao'
            DataSource = Src_Cabecalho
          end
          object RLLabel33: TRLLabel
            Left = -1
            Top = 110
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'FATURA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = -1
            Top = 161
            Width = 106
            Height = 11
            HelpType = htKeyword
            Caption = 'C'#193'LCULO DO IMPOSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw28: TRLDraw
            Left = 0
            Top = 173
            Width = 133
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw29: TRLDraw
            Left = 134
            Top = 173
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw30: TRLDraw
            Left = 275
            Top = 173
            Width = 158
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw31: TRLDraw
            Left = 434
            Top = 173
            Width = 141
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw32: TRLDraw
            Left = 576
            Top = 173
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel35: TRLLabel
            Left = 3
            Top = 175
            Width = 102
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de Calculo do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 137
            Top = 175
            Width = 59
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 278
            Top = 175
            Width = 151
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de C'#225'culo do Icms Substitui'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 437
            Top = 175
            Width = 110
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Icms Substitui'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 579
            Top = 175
            Width = 100
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor Total dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 28
            Top = 187
            Width = 103
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBC'
            DataSource = Src_Cabecalho
          end
          object RLDBText42: TRLDBText
            Left = 158
            Top = 187
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = Src_Cabecalho
          end
          object RLDBText43: TRLDBText
            Left = 315
            Top = 187
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = Src_Cabecalho
          end
          object RLDBText110: TRLDBText
            Left = 464
            Top = 187
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = Src_Cabecalho
          end
          object RLDBText44: TRLDBText
            Left = 595
            Top = 187
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = Src_Cabecalho
          end
          object RLDraw34: TRLDraw
            Left = 93
            Top = 206
            Width = 120
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw33: TRLDraw
            Left = 0
            Top = 206
            Width = 92
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw35: TRLDraw
            Left = 214
            Top = 206
            Width = 121
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw36: TRLDraw
            Left = 336
            Top = 206
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw37: TRLDraw
            Left = 477
            Top = 206
            Width = 98
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw39: TRLDraw
            Left = 576
            Top = 206
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel40: TRLLabel
            Left = 3
            Top = 208
            Width = 60
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 96
            Top = 208
            Width = 66
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel42: TRLLabel
            Left = 217
            Top = 208
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 347
            Top = 208
            Width = 114
            Height = 11
            HelpType = htKeyword
            Caption = 'Outras Depesas/Acessorios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel44: TRLLabel
            Left = 480
            Top = 208
            Width = 52
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 579
            Top = 208
            Width = 80
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor Total da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 3
            Top = 220
            Width = 85
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTALICMSTOTVFRETE'
            DataSource = Src_Cabecalho
          end
          object RLDBText37: TRLDBText
            Left = 96
            Top = 220
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = Src_Cabecalho
          end
          object RLDBText38: TRLDBText
            Left = 218
            Top = 220
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = Src_Cabecalho
          end
          object RLDBText39: TRLDBText
            Left = 341
            Top = 220
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText40: TRLDBText
            Left = 472
            Top = 220
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = Src_Cabecalho
          end
          object RLDBText41: TRLDBText
            Left = 614
            Top = 220
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel47: TRLLabel
            Left = 0
            Top = 238
            Width = 217
            Height = 11
            HelpType = htKeyword
            Caption = 'TRANSPORTADOR/VOLUMES TRANSPORTADOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw43: TRLDraw
            Left = 312
            Top = 250
            Width = 76
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw45: TRLDraw
            Left = 389
            Top = 250
            Width = 76
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw46: TRLDraw
            Left = 466
            Top = 250
            Width = 80
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw47: TRLDraw
            Left = 547
            Top = 250
            Width = 29
            Height = 29
          end
          object RLDraw48: TRLDraw
            Left = 577
            Top = 250
            Width = 139
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel48: TRLLabel
            Left = 2
            Top = 251
            Width = 53
            Height = 11
            HelpType = htKeyword
            Caption = 'Raz'#227'o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel52: TRLLabel
            Left = 312
            Top = 251
            Width = 59
            Height = 10
            HelpType = htKeyword
            Caption = 'Frete Por Conta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel55: TRLLabel
            Left = 399
            Top = 251
            Width = 57
            Height = 11
            HelpType = htKeyword
            Caption = 'C'#243'digo ANTT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel56: TRLLabel
            Left = 470
            Top = 251
            Width = 71
            Height = 11
            HelpType = htKeyword
            Caption = 'Placa do Ve'#237'culo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 551
            Top = 251
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 582
            Top = 251
            Width = 47
            Height = 11
            HelpType = htKeyword
            Caption = 'CNPJ/CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 314
            Top = 260
            Width = 43
            Height = 10
            HelpType = htKeyword
            Caption = '1 - Emitente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 313
            Top = 268
            Width = 58
            Height = 10
            HelpType = htKeyword
            Caption = '2 - Destinatario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw44: TRLDraw
            Left = 375
            Top = 262
            Width = 11
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDBText23: TRLDBText
            Left = 4
            Top = 263
            Width = 57
            Height = 14
            DataField = 'TT_XNOME'
            DataSource = Src_Cabecalho
          end
          object RLDBText99: TRLDBText
            Left = 376
            Top = 263
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = Src_Cabecalho
          end
          object RLDBText32: TRLDBText
            Left = 470
            Top = 263
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = Src_Cabecalho
          end
          object RLDBText33: TRLDBText
            Left = 549
            Top = 263
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText28: TRLDBText
            Left = 582
            Top = 263
            Width = 131
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDraw41: TRLDraw
            Left = 0
            Top = 282
            Width = 311
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw49: TRLDraw
            Left = 312
            Top = 282
            Width = 234
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw51: TRLDraw
            Left = 577
            Top = 282
            Width = 139
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw50: TRLDraw
            Left = 547
            Top = 282
            Width = 29
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel49: TRLLabel
            Left = 2
            Top = 283
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel59: TRLLabel
            Left = 314
            Top = 283
            Width = 43
            Height = 11
            HelpType = htKeyword
            Caption = 'Mun'#237'cipio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 552
            Top = 283
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel61: TRLLabel
            Left = 582
            Top = 283
            Width = 77
            Height = 11
            HelpType = htKeyword
            Caption = 'Inscri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 4
            Top = 296
            Width = 61
            Height = 14
            DataField = 'TT_XENDER'
            DataSource = Src_Cabecalho
          end
          object RLDBText25: TRLDBText
            Left = 316
            Top = 296
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = Src_Cabecalho
          end
          object RLDBText27: TRLDBText
            Left = 582
            Top = 296
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = Src_Cabecalho
          end
          object RLDBText26: TRLDBText
            Left = 551
            Top = 296
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = Src_Cabecalho
          end
          object RLDraw42: TRLDraw
            Left = 0
            Top = 315
            Width = 133
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw52: TRLDraw
            Left = 134
            Top = 315
            Width = 120
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw53: TRLDraw
            Left = 255
            Top = 315
            Width = 123
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw54: TRLDraw
            Left = 379
            Top = 315
            Width = 121
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw55: TRLDraw
            Left = 501
            Top = 315
            Width = 107
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw56: TRLDraw
            Left = 609
            Top = 315
            Width = 107
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel50: TRLLabel
            Left = 2
            Top = 318
            Width = 49
            Height = 11
            HelpType = htKeyword
            Caption = 'Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel62: TRLLabel
            Left = 136
            Top = 318
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = 'Esp'#233'cie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel63: TRLLabel
            Left = 257
            Top = 318
            Width = 29
            Height = 11
            HelpType = htKeyword
            Caption = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel64: TRLLabel
            Left = 381
            Top = 318
            Width = 50
            Height = 11
            HelpType = htKeyword
            Caption = 'Numera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel65: TRLLabel
            Left = 503
            Top = 318
            Width = 47
            Height = 11
            HelpType = htKeyword
            Caption = 'Peso Bruto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel66: TRLLabel
            Left = 611
            Top = 318
            Width = 54
            Height = 11
            HelpType = htKeyword
            Caption = 'Peso L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 36
            Top = 330
            Width = 95
            Height = 13
            Alignment = taRightJustify
            DataField = 'TRANSPVOLQVOL'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 166
            Top = 329
            Width = 85
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLESP'
            DataSource = Src_Cabecalho
          end
          object RLDBText31: TRLDBText
            Left = 271
            Top = 329
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = Src_Cabecalho
          end
          object RLDBText34: TRLDBText
            Left = 504
            Top = 329
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = Src_Cabecalho
          end
          object RLDBText35: TRLDBText
            Left = 613
            Top = 329
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = Src_Cabecalho
          end
          object RLDBText6: TRLDBText
            Left = 290
            Top = 94
            Width = 104
            Height = 14
            AutoSize = False
            DataField = 'dest_fone'
            DataSource = Src_Cabecalho
          end
          object RLDBMemo13: TRLDBMemo
            Left = 2
            Top = 124
            Width = 715
            Height = 37
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'data_vencimentos'
            DataSource = Src_Cabecalho
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Paisagem'
      ImageIndex = 1
      object rl_paisagem: TRLReport
        Left = 40
        Top = -296
        Width = 1123
        Height = 794
        Background.Height = 100
        Background.Stretch = True
        Background.Width = 800
        DataSource = Src_Cabecalho
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        InsideMargins.RightMargin = 20.000000000000000000
        InsideMargins.BottomMargin = 5.000000000000000000
        Margins.LeftMargin = 22.000000000000000000
        Margins.TopMargin = 6.000000000000000000
        Margins.RightMargin = -5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        PageSetup.Orientation = poLandscape
        PrintDialog = False
        ShowProgress = False
        BeforePrint = rl_paisagemBeforePrint
        object rl_lat_borda_rec: TRLDraw
          Left = 53
          Top = 33
          Width = 26
          Height = 624
          AfterPrint = rl_lat_borda_recAfterPrint
        end
        object rl_lat_recebemos: TRLAngleLabel
          Left = 64
          Top = 38
          Width = 10
          Height = 564
          Angle = 270.000000000000000000
          Caption = 
            'RECEBEMOS DE (RAZAO SOCIAL DO EMITENTE) OS PRODUTOS CONSTANTES D' +
            'A NOTAS FISCAL INDICADA AO LADO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = rl_lat_recebemosAfterPrint
        end
        object rl_lat_Borda_DtEmis: TRLDraw
          Left = 21
          Top = 33
          Width = 31
          Height = 149
          AfterPrint = rl_lat_Borda_DtEmisAfterPrint
        end
        object rl_lat_Ass: TRLDraw
          Left = 21
          Top = 185
          Width = 31
          Height = 472
          AfterPrint = rl_lat_AssAfterPrint
        end
        object rl_lat_numcan: TRLDraw
          Left = 20
          Top = 659
          Width = 59
          Height = 98
          AfterPrint = rl_lat_numcanAfterPrint
        end
        object rl_lat_ObsNFE: TRLAngleLabel
          Left = 61
          Top = 678
          Width = 14
          Height = 35
          Angle = 270.000000000000000000
          Caption = 'NF-e'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_ObsNFEAfterPrint
        end
        object rl_lat_Ident: TRLAngleLabel
          Left = 35
          Top = 192
          Width = 14
          Height = 287
          Angle = 270.000000000000000000
          Caption = 'Identifica'#231#227'o da Assinatura do Recebedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_IdentAfterPrint
        end
        object rl_lat_DtRec: TRLAngleLabel
          Left = 37
          Top = 39
          Width = 14
          Height = 140
          Angle = 270.000000000000000000
          Caption = 'Data de Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_DtRecAfterPrint
        end
        object rl_lat_traco: TRLAngleLabel
          Left = 79
          Top = 34
          Width = 14
          Height = 807
          Angle = 270.000000000000000000
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------'
          AfterPrint = rl_lat_tracoAfterPrint
        end
        object rl_band_cab01: TRLBand
          Left = 83
          Top = 23
          Width = 983
          Height = 143
          BandType = btHeader
          BeforePrint = rl_band_cab01BeforePrint
          object RLDraw1: TRLDraw
            Left = 7
            Top = 2
            Width = 436
            Height = 110
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw20: TRLDraw
            Left = 522
            Top = 42
            Width = 16
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
          end
          object RLDraw27: TRLDraw
            Left = 598
            Top = 2
            Width = 365
            Height = 110
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object rlLogo_Paisagem: TRLImage
            Left = 8
            Top = 3
            Width = 175
            Height = 108
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Picture.Data = {
              0A544A504547496D6167656A700000FFD8FFE000104A46494600010101006000
              600000FFE1001645786966000049492A0008000000000000000000FFDB004300
              080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
              1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
              FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
              3232323232323232323232323232323232323232323232323232323232323232
              3232323232FFC00011080183036B03012200021101031101FFC4001F00000105
              01010101010100000000000000000102030405060708090A0BFFC400B5100002
              010303020403050504040000017D010203000411051221314106135161072271
              14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
              3435363738393A434445464748494A535455565758595A636465666768696A73
              7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
              AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
              E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
              0000000000000102030405060708090A0BFFC400B51100020102040403040705
              040400010277000102031104052131061241510761711322328108144291A1B1
              C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
              434445464748494A535455565758595A636465666768696A737475767778797A
              82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
              B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
              F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2801A7D6B1AF3
              5B48E636F671B5CDC0E0853855FA9AA1AC6AAF2DC1D3AD24DA07FAE9476FF647
              F9F6A86DE586D2211C2A14773DC9F526BC9C4631B9385376EEFF00C8873D6C8B
              9E46A775CDD5F8841FF9670AF4FC7AFEA69DFD8F11E4DFDE96F5328FF0AAFF00
              6F1EB47DBC7AD72FEE9EB2D5F9B1730F6D3AFADFE6B3D4E427FBB2F23F5CFF00
              2A5875F9ED2510EA76FB3270258F91FE7E9F9547F6F1EB51CD731CF198E550C8
              7A834B9FD9BBD295BCB741CDD8E9E19E39E2592260E8C32194E7353570967A84
              9A1DE0C334966E795EA47D3DFF009FF2ED6295278964460C8C01047706BD3C1E
              2D578D9E925B95192913D14515DC505145140051451400514514005145140051
              4514005145140053714B9A826BA82DF1E74F1C79E9BDC0FE742D760BD8B14544
              8E92AEE475653DD4E41A96800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2801BDEB375ABFF00ECED2E6987DFC6D4F7
              63D2B4EB8DF1CCC563B4B71D1999C8FA0007F3AE5C5D474E8CA488A92E58B673
              91DE1404E496624B13D493DCD3FF00B40FA9ACDDD46EAF91BCBB9C3ED19A5FDA
              07D4D1FDA07D4D66EEA3753E69770E76697F681F5347F681F5359BBA8DD4734B
              B873B3424BC12A156E41AE9BC1FA897496C5CF318DF1FD09E47E647E75C4EEAD
              5F0E5C983C416A4701C9423D7208FE78AE9C155953C445F7DCBA753DE47A8514
              515F5C7705145140051451400514514005145140094506B9FF001178AF4BF0E5
              BF997B71FBD6198E04E5DFE83FA9E29C63293B45132928ABB66F9381CD70BE20
              F89DA468BBA0B53FDA1743AAC2DF229F42DCFE99AF3FF1078B75CF15168B71B0
              D38F48109CB8FF0068F05BE9C0F6EF58F0E9F6D00076076F57E7F4E95E951C02
              5AD5FB8E1AB8CE902F6AFE3FF136B65952E5ED603D23B4057F36FBC7F3C7B572
              B3199A42D397321E4972493F526BA7C8038000151CF124F114900208E0E3907D
              457A508C21A4628E2954949DE4CCFD03C47A87877508EE6CE67081819212C764
              8B9E411D3A77EA3B57D2567751DED9417709CC53C6B221F50C323F9D7CAECA51
              D94F55241FC2BE94F072BAF83B47DFC9FB2467F0DA31FA579F99D38AE59A3BB0
              736EF137E8A28AF28EF0A28A2800A28A2800A28A2800A28A2800A28A2800A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
              2800A28A2800A28A28012B85F1F022E2C5BB15703EBC7F8D7755C9F8E6D0CFA4
              2DC28F9A070C7FDD3C1FD715C78D839D1924655D374DD8E077D1BEA0DD46EAF9
              AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF5A1A182FAE
              D928EBE729FC0727F95646EAE93C13686E75AFB411F25B21627B6E20803F226B
              6C3D2E6AB14BB9A526E53491E9DDA8A28AFAB3D60A28A2800A28A2800A28A280
              12909C0C9E2AA5F5F5B69D6925D5E4E90C118CB3B9C015E3DE2AF1CDD78837DA
              58B3D9E97C8673C4938F7F453E9DFBFA0DA861E759D96DDCC6AD68D35A9D2F8A
              BE24476CEFA7E81B2E6E8643DC9E6388FB7F78FE9F5E95E6B312F7325EEA170D
              3DCB9CB4B2B67F2CFE9FA552172C585BD840CEC780114924FB01C9AB69E10F14
              5E7EF3FB1EF4FBBC7B7F20715ED52A34A82B5D2F3679D39D4ACEFD0864D5A25E
              1159CFAF41508D61B3CC231ECDCFF2A8350D2751D29C25FD95C5B31E9E6C6541
              FA12307F0AA75D918C24AEB5460D59D99D241709711874271D083D41F4A93358
              FA5391248B9E0807F23FFD7AD29651144CE7F8413594A367644D8C4689EEB503
              144A5A4965DA807724E00FCCD7D43636A967616F691FDC86258D7E8A001FCABC
              1BE1B690755F195B48CB986CF370FC771C2FE3B883F81AFA12BCACCEA5E7182E
              87A78385A2E5DC5A28A2BCD3B428A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A0028A28A0028A28A002ABCF047710490C8A192452AC0F707835628A9
              693566078B6B3A6C9A46A325AB82573BA373D1949E3F1EC7DC1AA1BABD835AD1
              6DB5AB3304EA559798E403943EA3FC2BCAB58D16F74598ADD467CA27092A8251
              BF1EC7D8F35E2E2706E126E2AE8F1B134254DF32F84A9BA8DD55BCE5FEF0A3CE
              5FEF0AE4E47D8E3F6ABB967751BAAB79CBFDE153DA4335FDC2C16B134D2B7454
              07F33E83DCF142A6DBB2411A9CCECB72440D2C8A88ACCEC4055032493C00057A
              BF86F481A3698B1BF33C877CA47AFA7D07F89EF59DE18F09269656EAEF6C9764
              7007DD8FE9EA7DFF00C9EBABD7C1E17D9FBF2DCF630B41C1734B763A8A28AF40
              ED0A28A2800A28A2801B593AE6BF61E1EB06BBBE936AF4445E5E46F451DCD53F
              11F896DFC3F02218DAE6FE73B6DED22E5E43FD067BFF005AE634FF00056A5AF6
              A0357F154E4BB7DCB48CE022E73B73FC23E9C9CF241CD694E9C7E29BB2FCCCA7
              37F0C37394BFBCD7BC7BAA0096AEF0C67315AA1C45083D19D8E0138EE7DC01DA
              BAAD1FE155BE566D76E8DCB0E7ECD012B18F627A9FD2BD02D2CADAC6D960B5B7
              8E1897A246B81FA55BAD678A95B969FBA8CE38757E69EACCED3F49B1D260F26C
              6CE1B64EFE5A019FA9EE7DCD68D14B5CCDB7AB3A124B633B53D2ED355B192D2F
              2159A190619587EA3D0FBD7CDFAFE94FA26BB79A63316F21F0AC782CA402A4FB
              9041AFA7C8C8AF02F8A68ABE399CAF568632DF5DB8FE4057A795D47ED1C3A58E
              3C64572F31CCE9630D23FB002A5D4A6C44230796393F414EB34F2ED86782DC9F
              F3F4A9B43D2A5F137896DEC23CF96ED9761FC318E58FE59C7B902BD69C946F37
              B23CE8A72692EA7AAFC2AD08E9BE1D6D4255C4D7EC1C647FCB3190BF9E49FC45
              7A1D578618EDA08E08902471A85451D001C01537AD7CCD5A8EA4DCDF53DBA705
              08A8A1D451454161451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450025412C31CE8D1CB1ABA30C1560083F854F4504B57
              D19C76A1F0F344BD62F1C325AB9E49B77C0FC88207E02B21BE14DB17CAEA5385
              F46404FE75E8F4566E941BD51CB3C1509BBB89C25A7C30D22060D3CD73738EAA
              5F6A9FC867F5AEB34FD2AC74B8BCAB3B58E143D422E33F53DEAF73EB4EC55461
              18EC8D6961E952F8236168A28AA370A28A2800A28A2800ACCBEBAB807ECD6112
              C974C3AC9911C43FBCC475F651C9F619234E9A001D05084CC3D33C3F6FA75C49
              7B2B4977A8CDFEB6EE51973ECA3A2A8EC07EB5BD494B4DB6F704AC1451452185
              1451400D35F3AF8EAE46A5E3CD48A9CA24A22E3B6C50A7F506BDFB52BD8F4ED3
              2EAF65FF00576F1348DEE00CD7CD4923CF3CD7939CC933B3B1F524924FE66BD2
              CB20F9A53EC70E365A288B77288E1D8BC16E07B0AF59F855E1B361A4BEB17098
              9EF40116472B103907FE0479FA62BCDFC29A149E2AF12C36A437D990F993B0FE
              18C1E467D49C01F5CF6AFA2A2892289238C0544015547400718AD731AF68AA4B
              E6461295DF3B27A28A2BC83D10A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2802ADC5CC3696F25C5C48B1C31A96776380A07526BCAB58F8
              BB34974F0681691B46A71F68B9C9DC3D428238FA9CFB0ABFF18F5296D744B2D3
              E372AB77313260FDE54C1C1F6CB03F85793592ED84B0FE23FCABD3C0E121523C
              F3D4F231F8C9D27CB0D0F4BB1F167892E62135D6A49106190915BA0C8F5C906A
              E7FC24DAAFFD05E7FF00BF50FF00F115C10D4C8000C800600A3FB4CFA9AF41E0
              E1D228F3563A6B791DF7FC24FAB7FD05E7FF00BF50FF00F1147FC251AB7FD05E
              7FFBF50FFF00115C0FF6A1F5347F6A1F5347D521FCA87F5E97F333BEFF00849F
              56FF00A0BCFF00F7EA1FFE228FF849F56FFA0BCFFF007EA1FF00E22B81FED43E
              A68FED43EA68FAA43F9507D7A5FCCCEFBFE127D5BFE82F3FFDFA87FF0088A3FE
              128D5BFE82F3FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F33
              3BEFF84A356FFA0BCFFF007EA1FF00E228FF00849F56FF00A0BCFF00F7EA1FFE
              22B81FED43EA68FED43EA68FAA43F9507D7A5FCCCEFBFE127D5BFE82F3FF00DF
              A87FF88A3FE127D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE
              541F5E97F333BEFF00849F56FF00A0BCFF00F7EA1FFE228FF849F56FFA0BCFFF
              007EA1FF00E22B81FED43EA68FED43EA68FAA43F9507D7A5FCCCEEE4F12EB5B0
              F95AC387EDE641111F8E141AC98FE29F8834ABA31EA56B697708386D80C6FF00
              9E48FD3F2AE6BFB51BD4D52BC97ED4C49E415C1A4B0749A6A511FD7EA269A91E
              FBE1DF1269FE27D3BED761213B4ED9636E1A36C7423FCE6B76BE7CF85DA9CB61
              E37B6B756222BC568A45CF1C296538F5C8C7E26BE83AF131547D8D4E55B1EF61
              6B7B58733DC751451581D2145145001451450079D7C56D5FECBA043A644DFBEB
              E906EC7511A904FEBB47E75E353BE1442809270303AFB0AE8FC6FAE8D67C4B73
              748DBADE1FDC4183C15527247D4927E98F4AD4F861E163AB6AE759BC4CDA5A30
              318238925EA3F05E0FD71EF5EE504B0D87E691E5D4FDF56B23D07E1F786BFE11
              CF0F8F3D317D738927E395E3E54FC01FCC9AEC28C519AF1673739394BA9E9422
              A315143A8A28A92828A28A0028A28A0028A28A0028A28A0028A2BC7FF671FF00
              9279A87FD8564FFD1515007B05158FE20D6AE747820FB168D7BAADCDC485121B
              60AA170A496776215178C649EA462B9AF0E7C497D4FC56BE18D6F443A3EAD2C2
              678235BE8AE924519E372746E18EDC745CD0077B45796F873E2D6AFE2BF0FDC6
              A1A2F81EEAEE782631BC4B7F1AC6142A9CF98C012DC9F9554F41EA2B5ED3E2BE
              8373F0F26F18B24F1DB42E6192DC806412E461060E39C839F43938A00EEE8AF9
              EFE34788F55D6BE1F582EABE19BBD18BEA29340D2CC92AC89E5CA392BCA37CC0
              ED603BF5C1AF4BD77E21CD69E2C97C2DA06832EB7ACC300B89A21771DBA229C7
              1B9FA9C329C63A11EF800EE68AE634EF19A4BE1FD4B56D6348D4B455D34B7DA2
              3BC84F21464B4647122F60475FCB3CFDAFC5690369B79AB7862F34CD0B559522
              B1D464B88DF7B38CAEF8D4E501C75E78E6803D1E8AE57C45E29D5F4BBB92D347
              F0ADDEAB2451A4924CF711DA5B8DC4FCA2490FCCC31920038C8CF5AE797E305A
              49E07D735D4D25FEDDA24D1C177A7B5CAF0EF204CAC8A1815C96C1C73B4FD680
              3D2E8AF3493E2C5CDA68FA76BD7FE11BFB7F0FDD47134BA879E8DE533E3A463E
              6280923710338181C8AE83C4DE378B44B8D334FD3AC25D5F57D50335959C322C
              61D557716676E1571DFF004E2803ABA2B96F0A78CD7C437DA86957BA6CDA56B5
              A6ECFB5D94B22C9B43AE41575E187BFD3D6B88FDA3BFE49E69FF00F6158FFF00
              454B401EC14579F5CFC4CB88FE226A9E0FB4F0DDCDF5CD9C0B2C6F05C283292B
              1B608601500121F98B1E838E69BA67C4AD4B539758D213C292C7E2AD311246D2
              5EFE30B2A33282566C638560C78EE00CE6803D0E8AF9EFE0D5FEE4D6FC6BE21B
              096636C276975E92F0B30C08D8C020CFA3160D8EFB4576DFF0B6EF2DEC21D775
              1F075FDA7862729E5EA5F698DDC06200668472179EB93DB19CD007A7515C16BD
              F128E8FE3BD2FC336BA24BA91D46CBED514D04EA1893E66D50AC00C1F2C7CC58
              000E7B7352CBE29DEDE6ABA8F87FFE10FBD5F135A2EF1A70BA88AB2900863364
              2A8C32E7AFDE18CD007A454097D6925EC964975035DC481E4816405D14F4257A
              807D6B90F0DFC46835FD1F5AB87D1EFA0D4B45768AF34D8409E5DE33F2A6DFBD
              92AC0703907B735CEB78F57C1FAECD75ADF8325D1ED757BA412DF36A70CF2B49
              B4052F1862514283D0E063A64D007AC515E4567E3CF17DD7C70BFF000EAE8E92
              E9F689E5B5B2DCA218A1678BFD2998FDF3B581118C101F1D41356BC1BE24F0DD
              96B9F116F22D17FB2BFB36ECB6A3742E9E737443CDF38423E4390C76AFF7B1D8
              5007A9D15E716BF15A40DA6DE6ADE18BCD3342D56548AC75192E237DECE32BBE
              35394071D79E39ADDF1178A757D2EEE4B4D1FC2B77AAC9146924933DC47696E3
              713F289243F330C64800E3233D6803AAA2B94F03F8EAD3C6B6D7C12D5ECEFB4F
              9BC8BBB669564D8FCF2AEBC32E430078CED35C57ED1DFF0024F34FFF00B0AC7F
              FA2A5A00F60A28AF22F875E3CF17F897C7DAF58EA5A3A0B2B69C4132A5CA01A6
              95F370B8EB316650A5871F2E781C5007AED15C15BFC499B53D66FA0D17C337FA
              9695A74CD05E6A114A8BB5D7AEC8D8832639E873D300E45717F033547D1FE156
              A375169D79A84BFDB0D1C76D691EE77668E103AE02A8CE4B120002803DC68AF3
              BB4F89D73078AAC742F127871B47935190C56722EA10DC86607187087E4C92A0
              75C93ED5E8940051451400514514005145140051451400514514005145140051
              4514005145140051451400514514005145140051451400514514005145140051
              4514005145140051451401E63F1974D7B9D02D3508C67EC9361FD95C633F9851
              F8D7915A3E612BDC1FE75F4FDD5ADBDEDB3DBDCC11CD0B8C347228656EFC83C1
              ACE1E11F0EAFDDD134E5FF0076D907F4AF43098E5461CAD5CF33198175E5CD16
              7CF3BA8CE6BE87FF00844BC3FF00F406B1FF00BF0BFE158DADFC3AD1755B6658
              2DD6C2E71F24D6E3183EEBD08FD7DC5764735A6DA4D3B1C12CA6A2574D1E23BA
              8CD497B6779A46AB3E99A8204B884F51D1C75041F42391FD0D40462BD38CD492
              69DD33CC9D270972CB71F9A334CCD19A66761F9A334CCD19A02C3F3466999A33
              40587E68CD33346680B12120F4A4DD8A8659444B9EA4F007A9AF55F06FC38812
              D63BFD7D1A5B990064B52485881E9B86796FD074C66B9EBE261415E5F71D787C
              1CEBBB4763CC370A6BBED42DD8026BE89FF844B4003FE40D63FF007E17FC28FF
              00844BC3D8C1D16C08F436EA7FA5717F6AC7F94EE5944AFAC8F18F859A73DF78
              E20B803F77671BCAE7B6482A07D72D9FC0D7D038ACEB0D1F4ED2CC86C34FB5B5
              32637F9112A6EC74CE00CF535A58AF2B135BDB4F9AC7AF86A1EC61CAC5A28A2B
              13A428A28A006715C97C40D77FB13C33308DF6DCDD7EE22C1E467EF37E033CF6
              24575BD2BE7CF1FF00890EBFE2193C872D696F98A000F0707961F53FA015D583
              A1ED6A2BECB5673E22A72434DD98DA469375E21D66DF4DB41F348DCB11908A3A
              B1F603FC3A9AFA3747D36DB46D2EDF4FB54DB142BB47A93DC9F72726B96F871E
              13FF00847F49FB5DDC78D46E94170473127509F5EE7DF8ED5DCE6AB1989F6B3E
              58EC89C351E48DDEEC7514515C67505145140051451400514514005145140051
              45140057CE1F0E3C4BE30F87FE1EB8D27FE15BEB97FE75DB5CF9BE54D163288B
              B71E537F7339CF7AFA3E8A00F1FF001B49E28F18F82BC3BA98D0353B6B3378CF
              ACE891338B97815CAEDFE0660555BE5C7F1A9ED9ACAD2B42997E32785F5FD33C
              177DA1E87F6796128D681595BCB93E795533B3264551B8E4EDF6AF75A2803CAF
              E01693A968DE05BEB7D534FBBB19DB5391D63BA85A262BE5443203007190467D
              8D707A0FC3AD7B59F817A8E94FA75DDA6A906B46FADEDAEA330B4C0428980180
              EA0B63B6475AFA428A00F07F8AD7FE22F1CF81ECADED3C15AEDBC905FA3CEB2D
              B6E6DE23907C8AA4B32727E7200FBBEB5D37C45D22C6E3C4505FEA1E09D5B508
              E38408B55D0A726E91B3C29886DE064E1B271F9D7A951401E3BA4F857C5FE24F
              865E26D0B5B9AF122B8907F63AEA4CA6E422307512B0CF52A80E4647CDDB157F
              C3FAFF008C62D1FC3FE19D3BC2577697B60905AEA177A9C3FE8AB0A26D2D1B2B
              8DEDC03C67D2BD4E8A00F1EF19E97A81F8A49A86BBE1DD4FC47E1A36AB1D95A5
              947E6A4371C0DD246580FEFF00CC78C32FA57097DA16A5A17833E288BED126D2
              E1BC9AC67B68FCAC44A86E376C560361DA2455214F183E95F4E563F8A7C3767E
              2EF0E5DE877F24F1DADD6CDEF0300E36BAB8C1208EAA3B500792DFDC6BFE26F8
              45A3F832CBC2FA8FDA6F2C2C82DF9DBF64112F96E1CC9BB20E14654807AE338A
              9FC75F0D447A97857527D26EF5FD234AD3934EBEB2B77C4CF1C6ADB1D42952C7
              2C4900F61C726BD7F49D361D1B46B1D2EDDA4682CADE3B78DA420B15450A09C0
              03381E82AE5007977C30F0A41A7EBDAA6B769E13FEC0B092216F64974F31BB74
              3B59CC8AD2B2A8DCA30300FF00567C7DD2752D67C0B636FA5E9F777D3AEA71BB
              476B0B4AC17CA94648504E3240CFB8AF54A2803CAF42D275287F68DF13EA92E9
              F769A7CDA6224576D0B089DB6DBF0AF8C13F2B700F63E94685A4EA50FED1BE27
              D525D3EED34F9B4C448AEDA16113B6DB7E15F1827E56E01EC7D2BD528A00F0AF
              879E0AD5EFFE07788FC3D796575A7DF5DDE48F047771BC0588484A9E4676964C
              67EB4FD4E5F136BFF0CEDBE1E45E0ED5EDF54482DAD66BBB8455B4558990EF12
              E486CED1C0F53D715EE5450078EB785F50D33E37781FECF65793E99A66862CDE
              F442C635291CEA03381B41395E3FDA1EB57B42D275287F68DF13EA92E9F769A7
              CDA6224576D0B089DB6DBF0AF8C13F2B700F63E95EA94500786687E1FF001524
              DF16869B6979637B7F77BB4F9A58DA2138F36727CB73804953C303C1606B96F1
              17856EF52F877696BA57C3FD5ADB58B29524D4AFAE2DB335CC982AFE59C99240
              CEFBB818017DABE9CA2803C9ACF4FD4F48FDA0EFB5C9749BF9B4CD6AC12082E6
              080B242C161CF9A78D9FEA8F5F51EF8C1D2BC0DAB6B87E2CE993595D59FF0069
              DF2C96335C44D1A4E5279A452AC460A9217246786AF77A2803CB3C3FAFF8C62D
              1FC3FE19D3BC2577697B60905AEA177A9C3FE8AB0A26D2D1B2B8DEDC03C67D2A
              8F8CF4BD40FC524D435DF0EEA7E23F0D1B558ECAD2CA3F3521B8E06E9232C07F
              7FE63C6197D2BD868A00F23F841A16A5A178AFC682FB449B4B86F26867B68FCA
              C44A84CADB1580D87689154853C60FA558F8FBA4EA5ACF816C6DF4BD3EEEFA75
              D4E3768ED6169582F9528C90A09C64819F715EA94500795E93F14FC55A8EB363
              6571F0C759B382E2E238A4B990CBB6156600B9CC2060039EA3A7514CF87DA66A
              9E1CF8A3E35B7BFD2AF441AC5D7DB2D6F5212D6FB03CAD867ECD89071EC7DB3E
              AF450078F780EDB5DF86DFDA9E15FF00846752D4567BE7B8B0BEB70A60652A8A
              3CD7246CC6D19E33D700E2B95F0D7867C6917C09D5B4ED36CB50B0D51F58F35A
              09236826960F2E30766EDA7A8FC42B0AFA2E8A00F9E6FF00C3DF69D77C13A9F8
              77C01AA68DA769DA9422E9A6B4C4F27CE87732A9672AA236F99B1F7BDEBE86A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A00F30F8BBA1ADD68F16B50A7FA459305908EF1
              B1C7E38623F335E4AAE19030EE335F497892CFFB43C37A95A6DC996DA455FAED
              38FD715F335B9CC207A122BDBCB2A3941C5F43C0CD29253525D49F34669B9A33
              5EA5CF22C3B34669B9A3345C2C3B34669B9A3345C2C3B34669B9A427009F4A2E
              163ACF86FA1AEB9E2E13CC9BADB4F5129046417E8A0FE393FF0001AF7EED5E67
              F062CC47E1FBFBD23E79EEB6E7D555463F566AF4CEF8AF9AC6D473ACFB23EA70
              34D428AF31D45145729DA145145001451450014534541737315ADACB7133AC71
              44A5DDC9E1540C93F951BBB03D0E3BE24F894687A035AC0F8BCBD0634C1E5531
              F337E5C0F73ED5C5FC31F081D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD
              08AA0905F7C4CF1BC92FCF1D9A91963D21841E07FBC79E3D493D01AF71B2B383
              4FB386D2DA311C10A04441D0015DF397B0A5ECE3F13DCE38C7DAD4E77B2D8B94
              5145701D81451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              014514500145145001451450014514500318656BE59BCB6FB06AB7D678C7D9EE
              1E3C7FBAC47F4AFA9CF4AF9C7C756BF63F1F6AF101C3C8251EFB9431FD49AF47
              2C95AA38F73CBCCE37A69F63068A6D15EE9E00EA29B45003A8A6D1400ECD3643
              84639EC68A64A7119F7A522E2B547D03F0CED3ECBE04D381186937CA7F17247E
              98AEC3BD65F87ED3EC1E1ED36D08C186D6343F50A01AD5EF5F29565CD36FCCFA
              CA51E58242D145152681451450014514500333ED5E63F1275AB8D42EADBC25A4
              8325D5CB037014F41D5549EC3F88FB01D89AECBC55AFC3E1BD0E6BE701A5FB90
              464FDF90F41FD4FB03583E03F0B4F611CBAEEAD96D5EF89772E39894F38F627A
              9F4E07639DE95A1FBC974DBD4C66DCBDD5F3367C2DE1B83C31A3C7650E1E63F3
              4F363991FB9FA7603FFAF5D1D14563293949CA5BB348C545590B4514522828A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
              8A0028A28A0028A28A0065783FC5783C9F1D2C9FF3DAD51F3F42CBFF00B2D7BD
              1AF18F8D16FB357D26E7FE7A42F1FF00DF2C0FFECD5D78095ABAF3387308DE8B
              3CDB3466933466BE88F9C1734669334668017346693346680173C53E080DD5E5
              B5B0C932CAA831EE40FEB51E6B5BC2D07DABC65A34439FF4B8D88FF75813FA03
              51565CB06FB236A31E69A47D34A30A076A5A074A2BE54FAA5B0B45145030A28A
              28012A27758919DD82AA8C924E00152D737AC452EB9727468D996CD706FE4538
              DCA791083EAC305BD14FFB429C55DEA26EDB18DA7D9378C3C44BAF5E29FEC9B2
              629A742C3895B3CCC47A6471F41E9CF780605431431C10A4512848D005555180
              00E8054F44A57F414636168A28A4505145140051451400514514005145140094
              5727AF788EEB4DD47ECD0C5095081B2E093939F4359BFF0009AEA1FF003C2DFF
              0026FF001AE0A98FA34E4E327AA3375629D99DF75A2B81FF0084D750FF009E16
              FF00937F8D749A0EA736AB60D34AA8AE1CAE1060741F5F5ABA38DA55A5C907A8
              E352327A1B745145761614514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145002579
              5FC6B873A76933FF0072775FCD73FF00B2D7AA579BFC658F7F84ED641FC17AA4
              FD3638FE78ADF0AED5A2CE6C5ABD191E2B9A4CD2515F4C7CC585CD19A4A280B0
              B9A5CD368A02C3BF86BA9F86F179DF1074CC8C84F31CFF00DFB6C7EB8AE5074A
              EE3E13C5E678E95BFE79DAC8FF004CE07F5AC314ED465E874E157EFA3EA7BED1
              4515F327D38514514005145140104A2431111E039E013DBDEA2B5B68ED221146
              3E504924F2589E4927B927249A9FCD8C1C165E3DE8F3A3FEF2FF00DF551ED23D
              C5A12D15179D1FFCF44FFBE854808238E94D493D861466933552E6FED6D0667B
              88E3F40CC01FC294A4A2AED8AE5CA2B11FC55A421C7DA49FF76363FD2913C55A
              43903ED58CFF007A361FD2B2FAD51BDB990B9E3DCDCA2A95B6A16B79FEA2E229
              38E8AE091F5157335AC64A4AE98F41D4514558C28A4270327A547E747FF3D13F
              EFA152E496E079FF008C3FE43A7FEB9AFF005AC1ADDF17306D7090411E5AF20E
              7D6B0ABE4319FC797A9C153E2615DE782BFE410FFF005D9BF90AE0EBBAF06BAA
              E92FB9947EF9BA91E82BA72B6956D4BA1F11D4628A8FCE8FFE7A27FDF42955D1
              BA3027D01AFA5E64FA9D849451455805145212075A004A5ACCB9D734EB4044B7
              91647F0A9DC7F21CD67C9E31D2D0E14CCFFEEA63F9E2B9E589A517694912E715
              BB3A3A2B99FF0084DB4FE9E4DCFF00DF2BFF00C554D1F8BF4B71F33C91FF00BD
              193FCB352B1745BF890B9E3DCDFA5ACFB6D5AC6F3020BA89D8FF00086E7F2EB5
              7C62B78CE32578BB9774C7514515601451450014544658C120BAFD33479D1FF7
              D7FEFAA8E78F7025A2A2F3A3FF009E89FF007D0A90104641E29A927B005150CD
              3C56F1992575441D598E00AC49FC5DA6C270AF24A475F2D3FC7159D4AF4E9FC7
              2489724B73A1A2B9B87C61A7CACAA56642C401B9477FA1AE8C1C8A74EB42A2BC
              1DC1494B61D451456A50945432CD14285E591514752CD815973F8974B8188376
              AC47F7016FD47158CEB5387C52484E496E6D515CDB78C74D5E8266FA27F89A6F
              FC26DA7E71E4DCFF00DF2BFF00C5567F5CA3FCC89E78F73A6A2B9D8FC5FA5B1C
              334A9EEC9FE15761D7F4BB8E12F6207D18EDFE78AA8E2694BE192FBC6A717D4D
              6A298AC18654820F4C1A7D74141494B51B3AA81B980CFA9C526EC0494543E747
              FF003D17F314BE727F7D7F3A8F691EE2B92D15189509C6F5FCEA4AA524F61851
              451540145145002514C32229E580FA9A4F3A3FF9E8BFF7D0ACF9E3DC0928A8FC
              E8FF00E7A2FF00DF4294488C70AEA4FA034F9977024A28A2AC04A290902B3AEB
              59B0B5244D7712B0EAA1B27F21CD6729C61AC9D84DA469515CFC9E2FD2907CB2
              48FF00EEA11FCF151378D74D1D22B83F451FE358BC6505F6913CF1EE7494B5CD
              AF8D34D3D5271F551FE35622F14E953003ED5B09FEFA91FAE314E38BA2DD9490
              29C7B9B74B55ADEEEDEE577413C728F54607F9559ADA2D3574EE5DC5A28A2AC0
              28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
              6F7AE17E2D45E67816E1BFE79CD137FE3D8FEB5DD571BF14573F0FB523E862FF
              00D1AB5AE1DDAAC7D4C711AD297A1F3E678A33480F029735F4E7CC585CD19A4C
              D19A05617346693346680B0A0D7A2FC1B8F778AEFA5FEED995FCDD4FF4AF39CD
              7A6FC175CEB7AA37A40BFF00A17FF5AB931BFC0675E097EF91ED5451457CF1F4
              6145145001487A1A5A43D0D4BD80F27D47FE42777FF5D9FF00F423556AD6A3FF
              00213BBFFAECFF00FA11AAB5F19566F9DFA9E73DD857A559DEC163E1FB49AE24
              088B02727FDD1C7D6BCD6ACDD5E4F7490A48F98E18C222F6181D7EA7B9AE8C2E
              2FD8733DDBD8D29D4E4B9B1AAF8AEEAECB47699821F51F7DBF1EDF87E75CFBBB
              3B96762CC4E4927249FAD25158D5C454AD2E693225272776C28A28AC49155991
              83292A41C820E08ADFD27C577766CB1DD937107A9FBE07AE7BFE3F9D73F456D4
              ABD4A2F9A0CA8C9C5DD33D6AD6E61BBB749A070F1B8C861562BCFBC27AA35B5F
              FD8E463E4CDF741FE17FFEBF4FCABD03B57D461310ABD353EBD4ED84F995CA7A
              A7FC826EFF00EB93FF00235E555EABAA7FC826EFFEB93FF235E555E5E6EDF344
              C6BEE828A28AF10E60A28A2800AE93C17FF21993FEB81FFD096B9BAE8FC17FF2
              1993FEB81FFD096BB702E5EDE2694BE3477F49DA815CDF89B5CFECF885B5BB0F
              B4C83AF5D83D7EBE95F4F5AAC68C1CE4763924AEC9F58F125B6980C49FBDB8C7
              DC0785FF0078F6AE2EFF005ABFD458F9F3B08CFF00CB34385FFEBFE39AA0CCCE
              C59892C4E4927249F53495F3189C7D5ACDABD91C73AB293F20A28ABF69A2EA57
              CA1E0B57287F89B0A08F519C67F0AE4842751DA29B2126DD9228515BFF00F087
              6AB8CE21FF00BEFF00FAD59F77A36A164A5E7B57083AB2E180FAE338FC6B5961
              6B415DC594E124AED142B5B4FF0010DFD810A243345DD2424E07B1EA3F97B564
              D1534EACE9BBC5B12934F467A6E93ACDAEAD16626DB228F9E36EA3FF00AD5A95
              E476D732DA5C24F0394910F07FA7B8F6AF48D17568F55B212801655F9644FEE9
              FF000AFA2C0E3D575C93D248EBA7539B47B9AD41E94521E95E99A9E51AA7FC85
              EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE2EB4E5ED25EA704
              B7615DE8D6A0D2BC3F66CFF3CAD026C8C1C13C0FC87BD7054F9259262A6472C5
              542AE4F4006001ED5A61B152A3CCE3BB1C26E37EE58D4353BAD4A6325CC84E0F
              CA83855FA0FEBD6AA514573CE729B7293BB6436DBBB24B7FF8F98BFDF1FCC57A
              E2FDD15E476FFF001F317FBE3F98AF5C5FBA2BDCC9F697C8E9C3ECC63BAC6859
              880A06493C62B8FD5BC60C59A1D380C0E0CCC339FF00747F53F953BC63AAB065
              D3A26C02374A477F45FEBF95721539866128C9D2A4FD58AAD569F2A25B8B99EE
              A4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD78DEF4DF7
              6CE7D5B23A2B761F08EAB2AE59618BD9DF27F406A63E0CD4BFE7ADB7FDF4DFFC
              4D6EB05886AFCA5AA72EC739456B5DF86F54B452CD6C6451FC5190DFA75FD2B2
              6B09D39D3769A68969AD1A2D59EA77960E0DB5C3C63392A0E57F1078AEC745F1
              4C57ACB6F76A219CF0AD9F95BDBD8FB57094574E1B1B568B5ADD150A928BF23D
              801AC8F1169DFDA3A54888B9963F9E3F723B7E2322AAF85F567BFB3314CDBA68
              300927965EC4FBF07F2F7AE848E0D7D2C651C451BAD9A3B135289E3F456B788F
              4FFB06AD26D5C4537CE98E9C9E47E79FC08AC9AF94AAA54E6E12E870C934DA14
              12AC1949041C823A835EA1A45E8D434C82718DCCB8603B30E0FEB5E5D5D57832
              FB64F2D8BB70E37A03EA3AFE631F91AEECB2BF255E47B335A32B4ADDCEE68A28
              AFA63AC4A8DDD634676200504927B5495CD78B75136BA77D9D1B125C6578EA17
              BFF87E358D7AAA953737D0994B955D9C76AB7C751D4A6B927E566C267B28E07F
              9F5CD53A28AF8F9D594E4E4FA9C0DB6EEC2BB5F0769FE54125F48BF34BF2A7B2
              83FD4FF2AE4EC6D5EF6F61B58F20BB004FA0EA7F21935EA56F025BC090C6BB51
              142A8F402BD5CAA94A737525B237A11BBE664F589ACEBF6FA4AECC79B7046563
              07A7B93D855AD5AFD74ED3E5B9382CA3E51EAC7803F3AF329A692E2679A572CE
              E49663EB5DB98635D05C90F899A55A9CBA2DCBB7FAE5FEA2C44D3B2C67FE59A1
              DAB8F4F7FC7359D4515F393A93A8EF26DB391B6DDD8515A769E1ED4AF143A5B9
              443FC521DBF8E3AE3F0AD0FF00843352C67CCB51FF00026FFE26B5860EBCD5D4
              4A54E4F64739456ECDE11D5621955865F647C13F98158F716D3DA4A63B889E27
              1D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB230E8CA4823F1
              15D069BE2BBAB6223BCCCF17F7BA3A8FEBFCFDEB9DA29D1C454A2EF06119B8EA
              99EB5697705EDBA4F03878D8641153E6BCDFC37AA3E9F7EB0BB1FB3CCC1581EC
              4F01BF3E0FB7D2BD1F35F4F83C4FD629DD68D6E76D39F3AB8FA28A2BB4B0A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280186B92F898BBB
              E1FEABFEEC67F2914D75A6B96F88F8FF00840356CF4F2D7FF435AD28FF00123E
              A8CAB7F0E5E87CE5452678A335F507CC585A293346680168A4CD19A00515EA7F
              0506750D61BD22887E65BFC2BCB01AF56F8267FD2B59FF00721FE6F5C98DFE04
              8EBC17F191EC7451457CF1F42145145001487A1A5A43D0D4BD80F27D47FE4277
              7FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F175BE37EA79CF76
              14F8E379A458E346776202A819C93D8532BB1F07E98A226BF9141662562CF603
              8247D4FF002F7AD30B41D7A9C8BE65423CCEC269BE0E5D8B25FB9C9E7CA43803
              D89EFF00E7935B71787B4C894016519FF7C6EFE79AD6E9457D3D2C151A6ACA27
              6469C62B44644DE1DD2E65C35A46BEE836FF002AE435DF0F369605C44CD25B31
              C1DDF7909E80E3A8F7FF0027D1AA96A56A2F2C27B738F9D081EC7B1FCEB2C4E0
              A954A6ED1B314E9C5A3CAE8A28AF963847C32B413C7327DE8D8303EE0E457AE2
              90CA083C115E415EAFA7B6ED3ED8FAC6A7F415EDE4D27EF44E9C3BDD12CD124F
              0BC520CA382AC3D8D63FFC227A47FCFB1FFBF8DFE35BD47E35ECCE8C2A7C6AE7
              438A7B9E67E21B1834FD4FC8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AD249595CE1A89293482BACF0D68961A969CD35CC25DC
              48573B88E303D0D7275DE7833FE412FF00F5D9BF90AE8CB6119D5B495CAA2939
              6A8B3FF08AE8FF00F3EA7FEFE37F8D58B2D12C34D9CCD6D09491976925C9E339
              EE7DAB528AFA38E1E945A718A4CEBE48A7A220B99D2DADA49DCE12352CDF402B
              CAEEEE24BBBB96E243F3C8C4F5E83B01EC0607E15DD78BEE0C3A2B463FE5B384
              E3F3FE9FAD79FD78B9BD66E4A9AD8E7AF2D520A28A2BC639CEABC2FA1C72A0BE
              BA40C09FDD230C8E38DD8FE5FF00EAAEDF18AE46D7C5DA75B5AC300B7B8C4681
              46157B003D6A7FF84DAC3FE7DEE7FEF95FF1AFA6C2D7C352A6A2A4AE7642508A
              B26751484023915CC7FC26F61FF3EF73FF007CAFFF00154BFF0009BD87FCFBDC
              FF00DF2BFF00C55747D730FF00CC8BF691EE66789B434B71F6FB550A84E25403
              00678047F223DEB97AEC2FFC556179653DB791703CC42A0945E091F5EDC571F5
              F3F8FF0063ED39A93BDCE5ABCB7BC42B5FC39A89B0D5A30CDFBA9888DC76E7A1
              FC0FE84D64500904107047435C946A3A73538F7222DC5A68F61EA290FDDAA9A6
              DC7DAB4EB79CF25E3563F5C7356CD7D945A94535D4EFBE87956ABFF215BDFF00
              AEEFFF00A11AA956F54FF90B5EFF00D777FF00D08D54AF8FAFFC497A9E7CB761
              4515D178534A5BCBB6BB997314046D04705BAFE9D7F11450A2EB545088E31726
              92134CF0A5C5DA2CD764C3130C85C7CE47E3D3F9FB57411F84B4B8D00785E43E
              AD2107F422BA01D28AFA6A381A34D25CB77E6762A51462AF85F490C185AE0839
              1F3B71FAD6D745E28A5AE9852842FC8AC5A496C7966B7299B5BBC76EBE6B2FE0
              381FA0AA15A3AEC06DF5BBB53FC52171EE1B9FEB59D5F2188BAAB24F7B9C13BF
              33B8576FE0CFB3FD866DBB7CEF33E7F5C76FF3EB9AE22A486796DE4124323C6E
              3F89588FD455E12BAA1539DAB8E12E595EC7AF515E710F8AF558461A54947FD3
              44FEA315723F1A5E01FBDB785BFDD247F535EF4733A0F7BA3A9568B3B935C6F8
              AB4566952EAD6DD99DDB6C8B1A924F70D81F4C13F4A7278E7FBF63F8897FFAD5
              613C6D687FD65B4E3FDDC1FEB4ABE230B888724A4294E13566CE4BFB2F50FF00
              9F1B9FFBF2DFE147F665FF00FCF8DCFF00DF96FF000AEE60F156953E14CA6263
              DA4523F5E9FAD6BC52C57118789D5D0F46520835CB4F2EA153E09DC85462F667
              19E13B5BCB6D55CCD6D3C71B44465D0819C8C727BF5AEEA90003B52D7AD86A0A
              843913B9BC23CAAC73FE27D3BEDFA5B48833343F3AE3B8EE3F2FD40AF3DAF612
              015C5797EB763FD9FAA4B128C44C77C7FEE9EDF81C8FC2BC9CDB0FAAAABE6615
              E3F68CEA9ECAE9ECAF61B94FBD1B06C7A8EE3F1191F8D414578B0938B4D6E8E7
              4ECEE8F5B8664B88639A3394750C0FA83535731E10BEFB469CD6AE72F01E33DD
              4F23FA8AEA3D6BECB0F5555A6A6BA9DF197324C42702BCCFC43A87F68EAF2BAB
              6624F923F42075FD73FA5765E24BFF00B069321438924F9131D727A9FCB35E71
              5E4E6D88DA92F9985797D90A28AB16768F797B15B463E69180CE3A0EE7F0193F
              8578718B93515AB673A57764757E0CD3B642F7F20F99F291E7B283CFEA3F4AEB
              EABDBC096D6F1C318C2228503D854FEB5F6386A2A8D251477C23CA92393F1BCA
              56D6DA21D1A42C7F01FF00D7AE2ABB7F1AC05EC21980CF97260FB03DFF00302B
              88AF9ECD13F6EEE7256BF38568E85E4FF6D5B7DA36F97B8FDEE99C1C7EB8ACEA
              2B829CF926A56BD8CD3B34CF605C638A75797DAEBDA9D9A858AE98A0FE1701BF
              0E79C7D2B463F19EA2980F1DBB8FF7483FCEBE8A9E6941AF7AE8EB55E277F59B
              AB69916A966F0C8A338251B1CAB7635CE2F8E25FE3B153F4908FE953C7E3984F
              FACB4907FBAE0FF3C56B2C6E1AA479652DC6EAC1E973963A5EA00906C6E7838E
              226FF0A3FB2F50FF009F1B9FFBF2DFE15D945E32D35CE1D678FDD933FC89AD5B
              5D52C6F87FA3DCC721C67683823F0EB5E7C70386A8FDC999AA507B33CE0699A8
              039163740FFD726FF0AF4CB75F36DE37742199413F9559017B53ABD1C2E0D61E
              F695EE6B1A6A3B0B451457A06814514500145145001451450014514500145145
              00145145001451450032B91F89ADB7E1F6AA7DA3FF00D1895D79E95C6FC516C7
              C3ED4BDDA21FF9156B5A0AF563EA8C6BBFDD4BD0F9E28A4CD19AFA73E6AC2D14
              99A3340585A293346680B0A3AD7AA7C146C6A3AB2FAC519FC89FF1AF2A079AF5
              0F828DFF0013AD4D7D6DD4FE4DFF00D7AE4C6FF02475613F8D13DB28A28AF9E3
              E8428A28A00290F434B487A1A97B01E4FA8FFC84EEFF00EBB3FF00E846AAD5AD
              47FE42777FF5D9FF00F423556BE2EB7C6FD4F39EEC2BD3F418C47A2D9A818062
              56FC48CFF5AF30AF53D17FE40B65FF005C13FF004115EAE4EBDF9337C3EECD0A
              28A2BE84EA0A6B7DD34EA6B743532D80F23BA509773281801D863E84D45562FB
              FE3FEE7FEBAB7F3355EBE26AAB49AF33CE7B857AAE97FF00209B4FFAE49FC857
              9557AA695FF209B3FF00AE29FC857B193FC723A30FBB2FD14515F40749E77E31
              FF0090F1FF00AE6BFD6B02B7FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7
              054F8D8577BE0AFF009043FF00D766FE42B82AEF7C15FF002077FF00AECDFC85
              75653FC7F91743E23A6A28A2BE9CEC38FF001C37EE2D13D5D8FE42B8CAEDBC6E
              99B2B793D24DBF9827FA57135F2B99DFDBBB9C55BE30A28A5552EC1410092002
              7A0CD79E642515D0FF00C21BA9FF00CF4B7FFBECFF00852FFC21BAA7FCF4B7FF
              00BE8FF85757D46BFF0021A7B397639DA2BA2FF843753FEFDBFF00DF67FC28FF
              00843754FF009E96DFF7D1FF000A3EA388FE40F672EC73B45745FF00086EA9FF
              003D2DBFEFA3FE147FC21BAA7FCF4B7FFBE8FF00851F51C47F207B397639DA2B
              A2FF00843754FF009E96DFF7D1FF000A3FE10DD53FE7A5BFFDF47FC28FA8E23F
              903D9CBB1D1F859F7E836D9EA370FF00C78FF4ADC3D0D64E8561369BA625B4E5
              0BA92728491C9CFA0AD53F74D7D4504D518A96E91D904D4753CAB54FF90BDEFF
              00D777FF00D08D54AB7AA7FC85AF7FEBBBFF00E846AA57C857FE24BD4E096EC2
              BD1FC2F008342B7E397CB93EB93FE18AF38AF51D1401A2588FFA609FC857A994
              453AADF91B61D6AD9A5451457D19D61451450072BE2BD21AF231796E9BA6897E
              751D597DBDC7F5AE1ABD82B9CD5BC2F6F7F234D6E7C89CF27032AC7DC763EFFC
              EBC5C7E5EEA3F694B7EA8C2AD2E6D56E705456B5D786F55B52736CD2AFF7A23B
              B3F875FD2B3E4B5B9873E6412A1EE1D08FE62BC39D0A90769459CCE2D6E8868A
              28A8E5912145145200AB563A8DD69D3092DA52BCF2B9CAB7D4555A29C27283BC
              5D98D369DD1E95A26B116AD6BB87CB32604899E87FC2B5F35E67E1EBC6B3D660
              6048495846E3B1C9C0FD71F957A60FBB5F5580C4BAF4AF2DD1DB4A7CD116B9AF
              16E9C6EB4FFB422E64B7CB71D4AF7FF1FC2BA5A63A2BA32B00411820D74D7A4A
              AD3707D4A94799599E41455DD5AC5B4ED4A6B620ED07299EEA791FE1F506A957
              C6CE0E127196E8E069A7666A787EFBEC1ABC2E4E2373E5BFA60FFF005F15E99D
              ABC7EBBB835E0BE17FB5B3033C6BE5907925FA0FE86BD9CB312A119424F6D4E8
              A334934CC1F156A3F6CD54C48DFBAB70507FBDFC5FD07E15854A58BB16624927
              2493C93495E4D7AAEAD473661293936D85763E0DD376A497CE396F923CFA0EA7
              F3E3F035CA5ADB49777715BC43E79182FD3D49F60327F0AF53B3B68ED2D63823
              1848D428AF472AC3F3D4755AD11AD08DDDD96A8A28AFA43ACA57F671DED9C96F
              2AFC920C1F6F43F857995FD8CD6176F6F3AE197A11D187A8FAD7ACD676A5A55B
              6A91797709923EEB8E194FB1AF3B1F825888DE3F1232A94F9D1E5D457457DE10
              BE818B5A95B88FB0C8561F5CF07F3FC2B1E5D32FA0CF9B673A81DCC671F9E315
              F3D530B5A9BF7A272B84A3BA2AD14ACACA70C083E846292B1E49101451454805
              2AB32306562AC0E4107041F6349451CD603ADD03C4AE644B3BE7DC0E024C7F93
              7AFD7F3F5AED0104578F57A1693AAA4FA5DBC934E165DB86E7A90719FC719FC6
              BDDC063EF1719BD8EAA556EB53A1A28A2BDD3A028A28A0028A28A0028A28A002
              8A28A0028AA914C269650ABF2A1DA5BB13DC0F5C743EFC76AB74005145140051
              451400DAE0FE2E4BE5F81A55CFFAC9E34FD73FD2BBCEF5E6DF1A25DBE15B38C7
              57BD527E811FFAE2B6C32BD68FA98625FEEA47865149466BE98F9DB0B452668C
              D016168A4CD19A02C29AF48F8312EDF16DDC79E1EC98FE21D3FC6BCDB35DE7C2
              497CBF1CC4BFF3D20917F407FA572E2D5E8C8E9C3695627D07451457CE9F4014
              5145001487A1A5A43D0D4BD80F27D47FE42777FF005D9FFF00423556AD6A3FF2
              13BBFF00AECFFF00A11AAB5F1757E37EA79CF7615EA9A37FC81ACBFEB827FE82
              2BCAEBD4F46FF903597FD704FF00D0457AB93FC7237C3EECD0A28A2BE84EA0A6
              B7434EA46E86A5EC0792DF7FC7FDCFFD756FE66ABD58BEFF008FFB9FFAEADFCC
              D57AF89ADF1BF53CE7BB0AF55D2BFE41367FF5C53F90AF2AAF55D2BFE41367FF
              005C53F90AF5F27F8A47461F765EA28A2BE84E93CEFC63FF0021E3FF005CD7FA
              D6056FF8C7FE43A7DE35FEB5815F1D8DFF007897A9C153E3615DDF82CE748907
              A4C47E8B5C25743E1BD760D323960B90C11DB7AB28CF38C107BF615AE5B5634E
              B5E5A22A8C9296A7A0D34E2B1478B348233F693FF7EDBFC2A7B2D6F4FD4A630D
              ACDBE40BB8828C38CE3B8F7AFA58E22949DA32573AD4937A322F135A1BAD167D
              A32D18DEBF875FD335E6F5EBECA194823208AF31D6B4D6D2F5078B1FBA625A33
              FEC93D3EA3A7FF00AEBC8CD683BAA8BE6615E3F6919D40E0E68A2BC3398F52D2
              AF16FB4E86E3232CA377B30E0FEB9ABF5E65A36B52E913118325BB9F9E3CF43E
              A3FCF3F963B9B3D774FBD4062B940C7F818856FC8D7D460F170AB04A4ED2476D
              3A8A48D4A3A546668F6EE32281EB9ACABEF1169F66A733AC8FFDC88EE3FE03F1
              AEB9D6A705793468E496ACB3AA6A50E9967F689413C850ABD589F4FE7F8562FF
              00C26F69FF003ED37E63FC6B97D53559B54B80F27CB1AE76460E76FF00893DCD
              50AF0F119A54E7FDD6C734ABBBFBBB1DBFFC26D6BFF3EF37E63FC69078DED090
              05BCFF00A7F8D7135BBE17D2CDF6A02E245FDC40739C7DE6EA07E1D4FE1EB534
              31D88AB51413146A4E4EC8F418D8BC6ACCA549192A7B5487A1A074A0F435F47F
              64EB3CA354FF0090BDEFFD777FFD08D54AB7AA7FC85EF7FEBBBFFE846AA57C65
              7FE24BD4F3A5BB0AF51D17FE40D65FF5C13F90AF2EAF51D17FE40D65FF005C13
              F90AF4F26FE248DF0FB9A5451457D11D42555BEBA1676535C942C2352DB41C67
              156AABDCC2B716D2C4DF76442A7F118A89DF95DB713399FF0084E23FF9F37FFB
              EC51FF0009C45FF3E6FF00F7D8AE3E785EDE79219061D18AB7D41C5475F332CC
              2BC5D9B397DACCED3FE1388BFE7CA4FF00BEC574F148934492A60AB00C3E86BC
              92BA4D0FC4FF0061896D6F159A25E15D792A3D08EFFCFEB5D583CC1B9F2D6655
              3AD77691DC3C1149F7E346FAAE6AABE91A7C872F656E4FAF963FC2A3875ED367
              00ADE423FDE6DA7F235685FDA1E45CC47FE062BD6BD19AE8CDFDD667C9E19D2A
              5EB68A0FFB2C57F91AC1D6FC2F05A5A497566EE3CB1968D8E411DF9EBC7BE6BA
              79F58D3E0077DDC031D83827F2AE5F5DF1345796CF6B6418A3FDF958638F61EF
              EB5C58C58554DED733A8A1677396A28A2BE68E325B7245D4257A87047D722BD6
              E3FBA2BCBF43B6375ACDAC60701C3B7B05E7FF00ADF8D7A80E98AFA1CA22D425
              23AB0EB41F451457B4741C9F8C34FF003ED12F5172F0F0F8EA54FF0081FE66B8
              8AF5B9E149E178A450C8EA5483DC1AF2DBEB47B2BE9AD5F27631009EE3A8FCC6
              0D7CEE6B87E59AA8968CE5AF1B3E6456A7F99208CC5BCF9658315F7C100FD704
              D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A72692DD
              82573A8F06E9BCC97F22FAA4791F99FE9F9D769556CAD23B2B48A08861235DA3
              DEAD57D86168AA349451DF08F2C6C2D14515D259CCEA3E2A8F4FBF96D0DB3B98
              F1960C067201FEB55BFE1378BFE7C9FF00EFB1543C656663D462B903E499369F
              F787FF005B1F91AE6ABE73158DAF4AACA29E872CEA4E32B1DA7FC26F17FCF93F
              FDF62B5746D662D65252B118DA32015241EBD3F9579B55DD33539B4BBB1345F3
              0230E84E370F4F63E86A686653F68BDABBC451ACEFEF6C7A898D1860A823DC55
              77D3ACE4FBF69037FBD183FD2B36D3C55A6DD28DD3790E7F86518C7E3D3F5AD2
              4D4ACA4194BA80FB8901AF6E356854574D33A54A2F62BC9A069928C359423FDD
              5DBFCAA85CF8434C954F949244DEAAE4FF003CD6BBEA36518CBDD42A3DE402B2
              AFBC53A75A211149F6893B2C7D3F3E98AC6B470A93E6B13250B6A70F7D6AF657
              D2DAB9CB46D8CFA8C647E608AAD53DDDCC979772DC4BF7E46248F4F403D80C0A
              82BE5EA72F33E5D8E276BBB6C153A19820DBD3B5415DDE8BA344748B769E31E6
              32963F89247E98AD68509D66D47A1508B96C751451457D99DE14514500145145
              001451450037BD616A57B2CBA8269563291772AEF9A51FF2EF16705BFDE3D147
              AE4F40416789B5E8FC3F60ACA9E7DE4CDE55ADB0FBD2C87803E9C8C9FEA453FC
              3FA54BA5D8B4977209F52BA7F3AEE6FEF3FA0F4551C01E83DEA92B2BB21BBBB2
              35E1863B781218976A2280A3D00FAD58A28A92C28A28A0028A28A00435E4DF1B
              67DBA7E936FDDE491FFEF90A3FF66AF59EF5E27F1B2E776B3A6DB7FCF3B76931
              FEF363FF0065AEAC1ABD789CB8C76A4CF2CA29B9A335F4278561D4537346680B
              0EA29B9A334058766BAEF8673883C7DA5B1FBACCE9F9A301FA915C866B6BC277
              1F66F166912E7016F22C9F62C01FD09AC6BAE6A725E46B49DA717E67D4F451DA
              8AF9A3E8828A28A00290F434B487A1A97B01E4FA8FFC84EEFF00EBB3FF00E846
              AAD6F5EF8775596FAE258ED094795994F989D09C83D6A0FF00846359FF009F33
              FF007F53FC6BE4EAE1ABB9B6A2F7EC70384AEF4322BD4F46FF00902D8FFD704F
              FD045707FF0008C6B23FE5CFFF0022A7F8D77BA6C4F6FA65AC328C4890AAB0F4
              20006BD1CAA954A72939AB5CDE845A6EEAC5FA28A2BDD3A0291BA1A5A43D0D4B
              D80F25BEFF008FFB9FFAEADFCCD57ADCBAF0DEAD2DE4F2259E51DD883E620C82
              723BD45FF08C6B3FF3E67FEFEA7F8D7C954C2D7726D45EFD8E17095F6322BD53
              4AFF00904D9FFD714FFD045705FF0008CEB3FF003E7FF9153FC6BBFD3E3682C2
              DE29061D235561E840AF4F2AA3529CA4E71B5CDA845ABDD1768A28AF70E8384F
              1ADB32DE4173FC2C9B3E84127F5CFE95CBD7AA6A5A7C3A959BDBCC3E56E84755
              3D88AE0750F0E6A362E76C4678FB3C433F98EA3F97BD7CE661839AA8EA455D33
              96AD377BA3268A5656425581047504608A4AF2B9247385747E0BFF0090CC9FF5
              C0FF00E84B5CE5749E0BFF0090CC9FF5C0FF00E84B5D7814FDBC4D297C68EFAB
              3356D2A2D56D4C5270C394703953EB5A7495F533846717196C76B49AB33CA2FF
              004FB9D3AE0C3708411CAB0E8C3DAAAD7AB5E58DBDF4062B8895D0FAF6F71E95
              C9EA1E0C95097B1983AF509270C3E87BFE35F3D89CB2A41B74B5472CE8B5AA39
              5A2AE5C6957F684F9D692A81DF6923F3191FAD53AF3A54E717AA6998B4D6E145
              14A0162000493D001934BDF0128AD1B5D0B53BC3FBBB4902FF0079C6D1F5E719
              FC2BA1D3FC191C64497D2F987AF96990BF89EA7F4ADE8E0ABD57A46CBCCB8D39
              339FD27479F549C04056153F3CA4703D87A9F6AF45B2B386C2D92DE15DA8838F
              53EE6A58618E08C47120445180AA30054D5F4584C1430EAFBCBB9D54E9A80B48
              7A1A5A43D2BB8D0F28D53FE42D7BFF005DDFFF00423552B7AFFC3BAACBA8DCCB
              1DA6E4799D95BCC51905B23A9F4A83FE118D67FE7C8FFDFD4FF1AF91AD86ACE6
              DA8BDFB1C2E12BBD0C8AF51D17FE40D65FF5C13F90AE17FE119D607FCB9FFE44
              4FF1AEF34C864B6D2ED619576C8912AB0EB82001DABD1CAE8D4A726E6AC6B422
              D377468514515EE9D21451450071FE27D01EE09BEB44CC807EF500E580EE3D4E
              3B77AE32BD838C62B0753F0DDAEA25A551E44E792E83827DC77FD0D78B8ECBBD
              A375296FD51CF5295DDE279ED15B777E15D52D8E52359D3D636E7F238FD33595
              35ADC5BE7CEB7963FF007D08FE62BC4A987AB4DDA51673B835BA21A28A2A3DF1
              051454F0D9DD5C7FA9B79641FECA13FC853509C9E8AEC126F620A5456760AAA5
              989000032493D80ADCB4F096A570419825BA772E7271EC07F522BACD2FC3D67A
              661D01926C60C8FCE3E83B576E1F2DAB55DE4AC8D2346527AE88A9E1BD14E9B6
              E679C0FB44A0647F707A7F8FFF005ABA4A4A5AFA4A34A34A0A113AE3149590B4
              51456C5095C7F8CB4EDD1477C8BCA6124C7A13C1FCFF009D76159BADAAB68D76
              1B18F258F3EB8AE5C5D35528C932271528D99E5F451457C79C015D6F8374DDCF
              26A120E17291E7F53FD3F3AE5ADE07B9B88E08865E460ABF89AF52B0B34B2B38
              EDE31F2A2E33EA7D6BD4CAF0FED2A7B46B446F42377765DA28A2BE98EB0A28A2
              8033B55D3A3D4EC5EDE418CF2AD8FBAC3A1AF35BCB2B8B1B8682742AC3A1ECC3
              B107B8AF59AA57DA75B6A30F95731071D41EE0FA83DABCEC6E05621734749232
              A94D4CF2BA2BA8BFF065C464B594C254EA11F86FCFA1FD2B12E349D46D8912D9
              CC31D485247E6322BE7AAE12B52767139654E51E852A294820904104750692B1
              E599214514E48DE46DA88CC4F65049FD29DA6F401B4569DAF87F53BA6F92D1D1
              7FBD27CB8F7E79FC85743A77836288892FE5F35BFE79A642FF0089AE8A381AD5
              5E8AC8B8D293317C3DA249A9DC2CD32E2D10FCC4FF0019FEE8F6F5AF450800C6
              29B1C690A2A46A1540C050300549B457D1617090A30B753AE1051561D4514576
              961451450014514500333CD50D5351B5D26C67BFBA709042A599BBFD07A92700
              0F5ABAC40192703BD791EB3A84DF11BC5D0E8760ECBA45AB179A55FE3C705BFA
              2FD73DF8D2953E7777B2DCCEA4F9569B9B5E0F82E7C4FAD4BE2ED4D36C4A4C5A
              7407911AE482C3D4F519EE49F415E883155EDADA1B2B686DADD0470C4A111147
              0A00C015678A99CB9A575B741C23CAB5DC75145152585145140051451400CEF5
              F3FF00C5FB9F3BC6EF1FFCF0B78E3FA672DFFB357D026BE64F1F5DFDB3C6DABC
              B9CEDB831FFDF002FF00ECB5DD9746F56FD91C18F95A9A5E67359A4CD1457BA7
              9019A33451400668CD145002D4D69335BDD4732F58D838FA820FF4A83B5390E1
              854CD5D0E3B9F5E46EAF1AB29CA90083525637856EFEDDE16D2EE49C97B58CB1
              FF006B68CFEB9AD9AF9792B368FA28BBA4C5A28A291614514500145145001451
              450014514500145145001451450014514500145145001498A5A2802178A39061
              E3561E8403501D36CC9E6D203FF6CD6AE52D66E9C5EE85628FF66D9FFCFA41FF
              007EC7F85491595B40C5A18228D88C6510035668A1538AD520B2168A28AD0614
              5145003703D2A292DE197FD6428FFEF28353D150E09EE0531A7DA03916D003FF
              005CC54C90C483E4455FA0C54B8A5A4A9C5741584C52D1456830A28A2800A28A
              2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802BB5AC0F
              F7A18CFD541A8FFB3ECF39FB2C19FF00AE63FC2ADD151ECE3D856440B6D027DD
              86318F4502A7DA3D29692928456C862D14515A0051451400C270335C77FC2707
              FE7C3FF22FFF00635D83FDC6AF20AF2732C4D4A3CBECDDAE635A6E36B1D7FF00
              C2727FE7C07FDFDFFEC6B2F56F125D6A9098022C309FBCAA725BDB3E9F856251
              5E354C7D79C5C652D19CEEAC9AB36145152DADB4977751DBC2B9776C0FF13EC3
              AD72A4E4D25BB334AFA1D2F83B4DDF3BDF48BF2A7C91E7D4F53F971F89AEE2A9
              69D671D8D9456D18F951719F53DCFE273576BEBF094150A4A1D4EF8479636168
              A28AEA2C28A28A0028A28A0029303D2968A0085A28DC7CC8ADF500D42D616ADF
              7ADA13F58C55CA2B3708BE82B1596CAD97EEDBC43E882A554551855007B0A7D1
              42A715B200C0A5A28AD061451450014514500145145002514572BE34F14C7E17
              D15E61B5AEE6CA5B4679CB7F788F41D4FE1EB4E1094E4A31DD932928ABB396F8
              9FE3036F1BE81A749FBE957173229E514FF00F73DFD8E3BF1D07C3DF0C0F0EE8
              0AD3A6DBEBB0249F239518F953F007F326BCF3E1D6812788BC4726A97DBA586D
              9FCD767E7CC94F233EBCE49FA007AD7BA015D78871A5154A3F339E8A73939CBE
              43E8A28AE33A828A28A0028A28A0028A28A0089D8246598E001924D7C99A8DC9
              BDD42E2E9B399A5690E7D5893FD6BE9BF16DF0D37C27AADD93B4A5B3853FED11
              85FD48AF971EBD5CB23F148F2F3096B188CA28A2BD63CD0A28A2800A28A2800A
              553861F5A4A2803E8CF859762E7C0564A4E5A0792227E8C48FD08AED7BD795FC
              15BE12693A958FF1453ACD8F665C7F34FD6BD56BE67111E5AD247BF87973528B
              168A28AC8DC28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0029B4B
              59DAB6A71E8FA5DCEA33A3B436E864758C02C40F40481FAD095DD9099A3D68AE
              67C31E33D3FC57F6A3610DD47F66DA1FCF5519DD9C630C7FBA7AE2BA6A249C5D
              9A04D3D50B45145030A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128AACD796C92F94D7112C9D369700E7E956A868028A28A0028A28A
              0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
              0028A28A008DFEEB579057B0D65FFC23BA57FCF9C7F9579B8FC1CF13CBCAED63
              2AB4F9ED63CCA8AF4CFF00847749FF009F18FF005A72F87F4A5E458C3F88CD79
              DFD8D57F99197D5E5DCF36B7B69AEA558ADE3691DBF8547F9C0F7AEF3C3DA02E
              971F9D361AE5C73E883D07F8D6CDBDAC16CBB6085225F44503F954FDABD0C265
              B0A12E793BB3585251D7A8EA28A2BD3350A28A2800A28A2800A28A2800A28A28
              00A28A2800A28A2800A28A2800A28A2800A28A2800A28A28029DF5EC1A7594D7
              775208E0850BBB1E800AF9D75ED62EFC5BE226B9D8E43B08ADA01C955CE1540E
              E49393EA4FD2BADF8A3E2B6BFBDFF847ECE4FF004781B372CA7EFBF65FA2F7F7
              FA537E15F87C5EEB126AB32E60B2E23C8E0CA475FC064FD4835EAE1E9AC3D175
              A6B57B1C15A6EACD538EDD4F4BF0AE851F87B41B7B15C1900DF330FE273D7F0E
              807B015BF4515E5CA4E4DC9F53B631515642D145148A0A28A2801B467159DABE
              AD67A269B2DFDFC863B7880DC42E4F24018039EA4572527C5CF0BC60625BA7CF
              F7603FD6AE14A73D62AE672AB083B499DF5266B80FF85C3E16F5BCFF00BF3FFD
              7AC9D63E32E9EB64C9A35ACF2DD30C2BCE81513DF00E4FD38FAD691C2D56EDCA
              C896269257E622F8C1E2445B68741B77CC8C44D7383F740FBAA7EA79C7B0F5AF
              1A272726ACDDDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9555EF5EDE1A8AA5
              0513C6AD55D49B930A28A2BA4C428A28A0028A28A0028A28A00EBBE1EF88D7C3
              DE288669DF6DA4E0C139278552410DF81033ED9AFA415C3AE460823208AF90C1
              2A6BD27C1FF14A4D16CD34FD5E29AE6D63188A58F05D0765209008F4E7207AF1
              8F2B1D85737CF05A9DF84C4A87B92D8F76A2BCFF00FE170F85FF00E9F7FEFC7F
              F5E84F8BDE16760BBEF173DCC3C7E86BCFFAB55FE567A3F58A5FCC7A0D15CE68
              1E31D1BC4D34D169D3BBC90A8665742BC1246467AFFF005C57442B2945C5DA48
              D2328C95E2C3A535982A9662001D49A7F515E5DF18B57BAB4D3AC34D819923BB
              2ED31538DC176E17DC12DC8F6157469BA93505D4539A846E74D7DF113C2DA7C8
              6397558E49075102349FAA823F5AAD07C4DF0A4EE13FB49A227806481C0FCF1F
              CEB9EF05FC3AF0F5FF0087AD350BE56BD96E13791E6B2A21CFDD01483918C1C9
              3CE6B6AFFE15F862EA064B7B596D243D248A6663F88624115BB861E2DC5B77EE
              64A551ABAB1D859DEDAEA16EB71697114F0B7DD7898303F88AB79AF16F04693E
              23F0CF8D3EC8F657674E92468659446DE53019DAE0E30390307D091DEBDA3B56
              1560A12B45DD1A539392BB561D4514566681451450036B2BC416F6975A05EC1A
              84ED059BC444D2A900AAF73920FF002AD6AE73C73FF2246AFF00F5ECD550579A
              44CB48B666780B4AF0F699F6FF00F847F5392F56431F9DBE456D98DDB71851D7
              27F2AED7BD792FC12FB9AD7D60FF00D9EBD6EAEBC796A357B9149A704C5A28A2
              B2350A28A2801B484803269D5E71F17356BAB0F0F5BDADB48D1FDB24292B29C6
              500C95FA138CFA8047426AE9537526A0BA933972C5C8DDD47E2078634D95A19F
              5689A45E0AC2AD260FA12A081F8D554F89FE1294ED3A8BC79EEF04807E82B94F
              01780741D5BC3F16A5A807BC9652C0C6252AB1E188C7CA41278CF27B8E3B9E9E
              EFE16F856E61658ECA4B673D248A66C8FC1891FA56F2850837095EE8C54AA497
              32B1D5586A367A95B0B8B1BA8AE2127EFC4E187D38EF572BC4FC35A2F88FC23E
              3A58A1B3BC9B4F79FC89A6589BCB9233C073D86320E7B608CE335EDA2B1AB08C
              2568BBA34A73725AA1D451456668145145002566EA7ACE9FA342936A37715B46
              EDB55A43804E338AD2AC0F12F85ACBC53690DB5FBCE91C4FE629858292704739
              07D69C54799736C4CAF6D0F18D7B53B2B9F8A5FDA30DCC6F67F6C81FCE07E5DA
              0264E7D060FE55ED167E2CD02FEEA3B5B5D56DA69E43848D5F258F5E2BC2F57F
              0FDAD878FF00FB0A2794DB7DAA28B7330DFB582E79000CF271C57ACE8FF0CB45
              D1755B7D46DA7BE69A06DCAB248A549C11CE147AFAD7A58B8D1E485DBDB439A8
              B9F333BAA28A2BCC3AC28A28A0028A28A006D61EADE2CD1343729A86A30C5275
              F2C659C7FC054135CE7C4BF16CDA069D1D9D8394BDBBC8120EB120EAC3DCE700
              F6E4F615C7F83FE1B3EBF6E9AAEB3733241392F1A21F9E5CFF001331EC7B7049
              EB915D34B0F1E4F6951D97E6613AAF9B963B9DDAFC52F09BBEDFED191474DCD6
              F263F95747A66B3A76B1119B4FBC86E50704C6C0953EE3A8FC6B949BE1478624
              84A2457313631E624E491F81C8FD2BCE3C41A16ADF0E75C82F2C6F19A190930C
              E38CE304A38E87B71D0F5E3040B5468557CB49B4FCC9752A43592D0FA1292B17
              C35AD47E21D0ACF5241B4CC9F3AFF75C1C30FA641C7A8C1ADAEB5C6D38B717B9
              D09DD5D0EA28A281851451400958D79E26D1AC2FBEC375A95BC375C0F299B0DC
              F4E3F115B35F3FFC4C99A0F8873CCA0168D61600F42428233F956D86A2AB4F95
              BB1956A9C91B9EDDA8EAD61A4C026BFBD86DA33C032B81B8FB03C93EC2B087C4
              BF0917D835719F5F22403F3DB8AE5345F025D78A426BDE2ABA9DDAE4078ADD0E
              DC21E464F3B41CF0A318EA4E4915BF77F0AFC313DB3470DB4D6D263E59526662
              0FD1891FA568A9E1E2F96726DF96C4F3546AF1475B61A959EA56E2E2CAEA2B88
              4F4789C30FA71DEA0D535ED2B448836A37F05BE46555DBE66FA28E4FE02BC06C
              355D57C0DE22BE82D640D2233DBBA1CEC908C856C7720E08EFDBB9AF40D1BE19
              9D447F6A78AEE6E6E6F67C3B421F1B73CE18F5247A0C01D066AAA61614DF34A5
              EEBDBB931AD296915A9D1C7F127C292C8234D5D549E01686451F995C0FC6BA6B
              4BBB7BDB74B8B59E39E1719578D8329FA115C46A7F0A3C3B7364E96314B6771B
              4EC904ACC338E32189E3E98AE2FE166AB77A678B9B4691DBC8B90EAF19390B22
              02723D38523DF23D054BA14E7094A93775DC7ED2719253EA7BB514515CA74051
              45140051451400CE9C0ACDD4B5DD33458849A95FC16C0FDD0EDF337D0753F80A
              B17F706CEC2E2E046D218626708A325B009C0F7E2BC3743F0CEADE36F144F3EB
              A2F208C832CD2346549190022EE181D78EB800D6D4694669CA6EC919549B8D94
              51E90DF14BC26ADB45FCAFEEB6F27F5157F4DF1E786B559561B6D562F35B8092
              068C93E8370193F4AA09F0BBC271C7B5B4E790E31B9AE24CFE8C05709F11BC13
              A4F876CA0BDD36478BCC97CA36EEFB8118272A4F3C639C93D474EFB429E1EA4B
              9237B91295482BBB1EE14B5C5FC34D527D53C1B6CD7323492C0ED0976392429E
              33F8103F0AED2B96A41C24E2FA1B465CCAE2D1451525051451400DA692154927
              0077A7D7997C5DD62EAC745B3B0B791E35BD7612B29C12AA07CB9F425867D71E
              99ABA507526A0BA913928C5C99D15FFC43F0BE9F298A6D563791782B0AB49FAA
              823F5AAD0FC4EF0A4AC17FB45A33D8C9038FD71C7E35CC781FE1FE81A9F87EDB
              51BE0D7B2CE0928252A88412318520E4639C9FC2BA3BDF859E16BA85921B396D
              5CF492299891F83123F4AE89430F06E2EF75D4C94AA495D58EB2CB50B4D4ADD6
              E2CAE62B885BA3C4E187E956F02BC57C25A3F88BC29E38FB32D9DE49A6BCC609
              A5589BCB7439DAF9E8307073DB919E4D7B4E3DEB0AD05095A2EE8D213725AA1F
              45145666825721E3DF138F0CE84CD0B0FB75CE63817D0F77C7A0CFE64574F733
              C56B6D2CF33AA451297766E800E4935F3AF8975D97C53E219AF9F70B75F92043
              FC280F1F89E49F73EC2BAB0787F6B3D76473E26AFB38D96ECCA8D2476C90D24D
              2B600EA5989E3EA4935F457857455F0FF876D6C001E6AAEE9987F148796FF01E
              C057917C39D206B1E318E675CDBD82F9ED91C17CE147D73CFF00C04D7BD57466
              356F254D7431C1D3D1CDF5168A28AF34EE0A28A2800A28A2803CABE335F491E9
              1A758A9C25C4CD237BEC0303E996CFE02BC51CFCD8F4AF7BF8B3A1CDA978723B
              DB642F258C864650324C6461BF2C03F406BC1241CE7B57B797B5ECACB73C4C6A
              6AADD8CA2B4A0B412C0AE39C8E7EB527D83DABBB98E651665515ABF60F6A3EC1
              ED47320E4665515ABF60F6A3EC1ED47320E4665515ABF60F6A3EC1ED47320E46
              65515ABF60F6A3EC1ED47320E4665515ABF60F6A3EC1ED47320E4665515ABF60
              F6A3EC1ED47320E4664D2F4AD5FB080092300566100C876F424E3E94D34F6135
              63B5F8657B259F8F2C510E12E15E171EA36923F500FE15F45035E09F09F459AF
              BC52BAA321FB2D8AB12C47064652028F5C024FB607A8AF7B15E0E3DA75B43D7C
              0A6A9EA15CAF8C7C236FE2BB08E0925304F092D0CC173B49EA08E320E06791D0
              57555E47F1525D7F4AD46DF50D3F51BE82C658C46C21999552404F50381918C7
              A906B9E8293A8B95D99D555A51D4C9FF00857DE37D05D9B48BA2EA4E7FD12E8C
              64FD431507F5A0F88FE24E89CDD4378F1275F36D048BF8B019FD6BACF0DFC4FD
              1EF34E823D56E0DA5EA20590C8A4AC840C1604038F520E319FC6B66EBE227856
              DA32C7568E523A2C4ACC4FB702BB1D4ABCDCB3A7CDF2305085AF1958E63C29F1
              59B53D460D3F57B58E1967611C73C2485DC4E002A4923278C8279238C735EA3D
              4FB57CF2A4F8C7E2409F4BB468639EE524DA00051171B9DB1C027049F738E49E
              7E86C7BD658BA70838F2AB5D6ABB17425269DF524A28A2B90E80A28A28012B9D
              F1CFFC891ABFFD7B357455CEF8E7FE448D5FFEBD9AAE8FF123EA899FC2CE1BE0
              97DCD6BEB07FECF5EB75E49F04BEE6B5F583FF0067AF5BADB1BFC697F5D0CF0F
              F02168A28AE6360A28A28012B9BF167866D7C57A47D8A790C4EAFE6452A8C946
              1C74EE304822BA4AF2CF8AADAE58359EA9A65FDEC167B7CA9D60999555B39562
              01EF9C67D80EE2B4A2A52A8945D999D469475301BE1CF8CF4395A4D1EF03E4F5
              B5B931311EE0903F0C9A53ADFC4BD17FE3E21BE9235EBE65AACABF8B004FEB5D
              1F84FE2769B2E9505AEB570F6F790A8469A452CB2E3A31232413DF3FD6BA39FE
              217852DA32EDAC42F8E76C6ACC4FE00576CAAD5E6E59D352F91828C1ABC65639
              0F0EFC5B96E2FE2B3D6ACE28C48C105C4190149381B9493C7A9078F4AF57FE46
              BE74D6A61E37F1BFFC49ED1905CB2C6B95018E0005D80E071C9F615F4528DA00
              F415962E9421CAE2ACDAD5174252774F544B45145719D0145145001451450078
              17893FE4B21FFAFF00B7FE495EF43D2BC03C6B37F677C579EEE656D915CC131C
              0E4A8543C7E46BD72C7C69E1ED4AE6DED6D3528E59E7388E308D92719E8471C0
              EF8AEFC5C652A74DA5A58E5A324A524CE9A8A28AE03A828A28A0028A28A00F06
              F8C05CF8BE00DF77EC49B7E9B9EB76CB45F890B636E2D759B45B7112F94A0AF0
              B818FE0F4C569FC50F0A5C6B3A743A958C5E65D59821E3519678CF271EA41E71
              DC13DF1589E0BF89B6F61A743A56B62455814245728BBB0A380180E78E808072
              31C773E9A94A7423ECD26D6E8E4692A8F9B4B9A3FD8BF147FE8356BFF7D2FF00
              F1159FAB7837C7FAEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB19
              7E24785618B7AEAA1F2321521727FF0041E3F1AF3DD6FE20EB9E25D6ADAD3C38
              6EAD9325238E3C6F9493F79B19000C74CE00C927D269BACDDF912B756AC13E44
              AD76CF43F87FE1FBFF000DE812D8EA2D1193ED0D22794C58052ABDC81CE41AEC
              2B2341B4BDB2D16DADF50BA7BABC0B99A6639CB1E481EC3381F4AD7AE09C9CA6
              E4CE9824A292168A28A92828A28A004AF00F8911ACBF12258D87CADE4A9FA155
              15EFFDABC0FE21FF00C94D6FAC1FFA0AD76E03F88FD19CF5FE147BD280AA0280
              001D053E8ED45711D07816AB0A4BF19C46EA0A36A50E46383F74907EB5EF62BC
              1F51FF0092DA9FF61187FF0065AF7815D98B7A43D0E7A3BCBD443D0D78378600
              5F8CB851802FAE4003B0C495EF27A1AF06F0CFFC966FFB7FB9FE4F4F09F054F4
              1D6F8A27BE514515C46E145145001451450050D46FEDF4CB09EF6E9C2410A177
              27D3FC6BCA67F8A1E21D6AFDAD7C39A50DBD57F76659319C64E0E00FC08F7AED
              FE2258DC6A3E08D420B5567940590228C960AC188C77E01E3DABCCFE19F8B34B
              F0F4D7B6FA9930A5C942B3852C015C8C103B739071EB9AEEC3528BA529DB9A4B
              A1CD5A6D4D46F646E2DBFC57D4BEFCDF6443D32D0A63FEF905BF3AE7BC5BE0ED
              774CD24EAFAEEAA2EA7F316354DED2100E4FDE6C6318E80115EA337C44F0AC11
              6F3ABC4FDF088CC4FE00579BF8DBC5975E2FD3E55D3ACE65D1EC5D649E770016
              6276AE79C01C9C0C9273938C56B46751D45EEA8AF4B115230E5DDB3B5F841FF2
              26BFFD7DC9FC96BD02BC7FE1678AF4CD3F4F1A2DDCCD1DD4D77FB81B090FBC28
              1C8CE3907AE0735EC15C7898B8D595CDA8B4E0AC2D1451581B05145140095CC7
              8B3C2D6DE2CD345A4D298658DB7C3328C943D08238C83DC67D2BA7AF28F8A926
              BDA75C5AEA7A76A17B059327952AC1332AA3E490481C720E33EDEE2B4A3194AA
              2517666751A51D4C43F0F3C69A148CFA45DEF04F5B4B931923DC3100FD32694E
              BDF12B45FF008F986F648D7AF996A245FC58027F5AE9BC2BF13F4AB8D36DEDF5
              9B96B6BD89023C922965948E3764038CF7CE39ADFB9F889E14B688BB6AF13FA2
              C6ACC4FE005774AAD552E59D352F9182842D78CAC727E19F8B0F7DA94363AD5A
              470999846B3424855627037292783EB9FC3D3D56BE75BE7FF84D7E2017D26D1E
              25B9950018C10A000CED8E070093FD4F5FA280E3AD73E2E10838B5A5D6C5D19C
              9DFA8FA28ACDD6354B7D1B4AB9D46E4E22810B119E58F4007B93803EB5CA936E
              C8DDBB2BB3CF7E2BF894C5047A05A3FEF66C3DCE3A85CFCABF89193EC07AD797
              B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80C01EC0552B
              B72F3045C9038C0EE6BE8F0D4551825D77678F5AA3A93B9ED3F0A34AFB17859A
              F597F7B7D297CF7D8A76A8FF00D08FE35DFD50D1EC574CD1ECAC971882048CE3
              B9000CD5FAF02B4FDA5494BBB3D5A71E58288FA28A2B3340A28A2801296A2675
              8D0B3300A06493DAB2ED3523ABC85ACB3F62538375DA523B47EA3D5BA7619E48
              1262B9AAC01182322BCFB5DF84BA36A93BDC5949269F2B9CB2C4A1A3CFA853D3
              E8081ED5E87DA96AE15274DDE2EC454A70A8AD2478EC5F07350B4626DB5C8594
              FF000C96E403F931A9BFE155EB9FF411D37FEFD3FF008D7AE518ADFEB75BB98A
              C2525D0F22FF008557ADFF00D0474EFF00BF4FFE347FC2ABD6FF00E823A77FDF
              A7FF001AF5DA297D6EAF71FD569F63C8BFE155EB7FF411D3BFEFD3FF008D1FF0
              AAF5BFFA08E9DFF7E9FF00C6BD768A3EB757B87D569F63C8BFE155EB7FF411D3
              BFEFD3FF008D1FF0AAF5BFFA08E9DFF7E9FF00C6BD768A3EB757B87D569F63C8
              BFE155EB7FF411D3BFEFD3FF008D1FF0AAF5BFFA08E9DFF7E9FF00C6BD768A3E
              B757B87D569F63C8BFE155EB7FF411D3BFEFD3FF008D1FF0AAF5BFFA08E9DFF7
              E9FF00C6BD768A3EB757B87D569F63C8BFE155EB7FF411D3BFEFD3FF008D1FF0
              AAF5BFFA08E9DFF7E9FF00C6BD768A3EB757B87D5699E3F27C22D5EE5764BAD5
              A46A7A88E06E7F335674DF82B6504A1F50D526B85072638A3F2C1F62724FE58A
              F5614B49E2EB356B82C2D2DEC67E9BA4D9E91651DA595BA410C63E5441DFD4FA
              9F735A14515CEDDF56742492B216AB5CDB41796EF6F710A4D0B8C3C72286561E
              841AB3451B0CE0AF7E147866EE42F1C3736B939220978FC03038FC2A183E10F8
              6E17DCF25FCC07F0BCCA07FE3AA0D7A1515AAC455FE6667ECA1D8C9D2740D2F4
              180C3A659456EA7EF151966FAB1E4FE26B5BB514B5936DBBB2D24B60A28A2818
              5145140062A8DFD841A969F3595D46648265DB226E2320F519041FD6AED2D1B6
              C2DCC3D0FC31A4F8704FFD9569F67F3F6F99FBC77DDB738FBC4E3A9E9EB5B745
              1436DBBB0492D10B45145030A28A2800AAF34315C42F14D1AC91B82AC8EA0861
              E841EB5628A00E12FF00E16F866F253225B4D6858E4FD9E5C0FC03640FA0155E
              2F83FE1C8D8169750940ECF32E3F4515E85456AB11552B29333F650EC6368DE1
              BD2740429A6D8C70161F33F2CEDEC58E49FCEB6693A52D64E4E4EED96925A216
              8A28A061451450014514500731E22F06691E252925FDBB09D176ACD136D70339
              C67A11D7AFA9F5ACFD1BE19687A1EA906A16F2DE493C2DB93CD91480704740A3
              D6BB6A2A955A8A3CBCDA11C91BDEC2D14515258514514005145140095CAEB5E0
              2F0FEBB334F716023B86CEE9603B1893DCE3827DC835D552629C67283BC5D84E
              2A4ACCF3B4F83FE1C493719B5071FDC69571FA2E6BAAD1BC33A4E828574DB08A
              166E19F9676FAB124E3DB35B5467DEAA75AA4D5A526C98D38AD521D451454161
              45145001451450021AE6F51F06787F56D53FB4AF6C3CDBB3B73279D22FDDE9C0
              6038C7A5749494294A2EF176138A7B8EA28A2819CDC9E0ED066D706B32D866FC
              4825F3BCE7FBC31838DD8E303B62BA3C51450DB7BB12496C26715CF5AF82F42B
              3D67FB5E0B0D97DE6349E6F9D21F99B3B8E0B639C9EDDEBA2A4A2326B44C1A4F
              71D45145030A28A2800A28A28019D4722B94D5BE1EF87357B86B89AC3CA99B96
              7B772993EA40E33EF8CD7594B5519CA0EF176265152DD1C3DB7C2AF0B5BB876B
              59A7C769666C7E4315D447A5D841A79B04B3812D0A943088C0420F50474E6B42
              8CD39559CFE27708C22B6472B6BE01F0D59DFC57B6FA5AA4F13874612B90AC0E
              4100B63F4AEA80A4A5A894A527793B8D452D85A28A2818514514005579E08AEA
              078678D2589C6191D432B0F420F5AB145170384BDF859E1ABC62E96D3DA92724
              412E07E01B207D07155E1F83FE1C89C33CB7D28FEEBCCB8FD141FD6BD0A8AD7E
              B1552B73333F650EC63E8FE1ED2B4088C7A658C5006FBCC012CDF563927F135B
              18A296B16DC9DD96925B0CC578FF00C5BD7CCF756FA05BBE44644D7183FC47EE
              A9FA039C7B8AF53D4EFE1D2B4DB9BE9CE22B78CC8DEE00E83DEBE7037336AFAC
              5CEA37277492B991BD0127803D8741F415E865F479A7CEF65F99C98BA9CB1E55
              BB1C145BDB7FBA327DCD54D280975AB257230D7118627A60B0CD58D45B65B851
              FC440ACD8A468654950E1D18303E841C8AF6DA6E2CF362ECEE7D623A51599A2E
              A96FAD6956DA85B3068E640D8073B4F707DC1C8FC2B4EBE55A69D99EEA69AB85
              14B591AAEBFA66871799A8DEC70E7954CE5DBE8A393F80A6937A206D2D59A7DB
              A561EBDE2AD2FC396E5EFA71E69195813976FC3B0F73815C0EBFF136EAE01B7D
              2207B7573B56471BA572780154642FEA7E86AFF84BC072CD3AEB7E24066B973B
              E3B59096DBFED3E7AB7B1E9DF27A742C3AA71E7A9A7975673BACE6F969EBE65C
              D3EDF57F1BBADEEB28F65A2021A1B042435C0EA1A43C12BD38E33E98E4F79146
              9146B1C6A115400AA06001EC29EA00EF4EE2B9E53E6E9646D08F2AD771D45145
              22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A00F32F8BDACFD9746B6D2A3387BC937C807F7171FCD88FC8D798D845B2D4123
              96393FD2B63E276A4750F1BDCC60E63B555813F0193FF8F311F85538D0246AA3
              B003F4AFA0C2C3D9D08AEFA9E3E267CD51F919BAA82163F4C9ACCADFBCB6FB4C
              05410181C827D6B19AD2E11B061727D8647E95D9092B58C11AFE1FF176AFE1A7
              61613830B9CBC128DC84FD3208FC08AEB4FC66D53CBC7F665987F52CD8FCB3FD
              6B808F4EB990F29B47AB1C55D8F4E8205DF3B06C7273C015854C3D09BBCA3A9A
              C6B4E3A266E5DFC41F156B01922BA4B385B83F664DB81ECC72C3F035936B6B75
              7DA92DBDA24B7FA8CC7924963EE493D00EE49FAD6A683E1DD53C553F97609F67
              B153892EDD4851EA14773EC3F122BD83C39E19D3BC3367E45947995BFD6CEFCB
              C87DCF61E83A571D6AF4B0EB969A573A29D2A955DE6F4323C21E01B7D08ADF5F
              32DD6A647DF232917B20FEA79FA739EDFB514B5E4D4A92A92E693D4EF8423056
              88B4514541614514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              50014514500145145007CB9AFCA67F11EA531EAF772B73EEE4D6BC4C24895C1C
              86008A87C73A44DA378B6FE291088E695A785BB32B12463E8491F5158F6BA84D
              6CBB570C9E87B7D2BE9E369D38B8ED63C39A6A4D3DCE8314100024F007735923
              55B999D638600D231C2800B127D001D4D757A2FC39F10EBA565D498E9F6A4E71
              20F9C8F6418C7E38FA1ACE75214D5E6EC285394DDA28C06BBF3675B6B489EE6E
              1CED548D4924FA00393F85773E1DF8633DD4A97DE2472106196CA33D7FDE23A7
              D07E63A5773A0784749F0D438B0B6CCC461E790EE91BF1EDF41815D062BCCAF8
              F72F769E8BF13D0A38451D64416F6F0DAC0905BC49144836A222E1540EC00E95
              668A2BCFB9DA1451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              4500145145001451450014514500145145001451450014514500145145001451
              45001451450014514500145145001451450063EBBA269BACD908B50B38EE1179
              5DD9054FB11C8FC2B82B4F04F879EF8A369F95CF4F3A4FFE2A8A2BD0C2B7C923
              8AB7C68EF34BD134BD24C6961616F6FB9796441B8FD5BA9FCEB628A2B867B9D3
              0D85A28A2A4D028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
              28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9}
            Stretch = True
          end
          object RLLabel67: TRLLabel
            Left = 493
            Top = 2
            Width = 56
            Height = 16
            Alignment = taCenter
            Caption = 'DANFE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel68: TRLLabel
            Left = 472
            Top = 17
            Width = 98
            Height = 13
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Documento Auxiliar de'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel69: TRLLabel
            Left = 474
            Top = 29
            Width = 94
            Height = 13
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Nota Fiscal Eletr'#244'nica'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel70: TRLLabel
            Left = 469
            Top = 43
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = '1 - Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel71: TRLLabel
            Left = 469
            Top = 56
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '2 - Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText51: TRLDBText
            Left = 526
            Top = 47
            Width = 59
            Height = 11
            DataField = 'saida_entrada'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_numero2: TRLDBText
            Left = 467
            Top = 66
            Width = 66
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'numeronf'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel72: TRLLabel
            Left = 475
            Top = 77
            Width = 29
            Height = 11
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText53: TRLDBText
            Left = 513
            Top = 77
            Width = 46
            Height = 11
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel73: TRLLabel
            Left = 605
            Top = 3
            Width = 77
            Height = 12
            HelpType = htKeyword
            Caption = 'Controle do Fisco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBBarcode2: TRLDBBarcode
            Left = 617
            Top = 17
            Width = 110
            Height = 64
            BarcodeType = bcCode128C
            DataField = 'CHAVE_ACESSO'
            DataSource = Src_Cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object rl_natureza: TRLMemo
            Left = 7
            Top = 113
            Width = 157
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Nat. da Opera'#231#227'o')
            ParentFont = False
          end
          object RLDBText54: TRLDBText
            Left = 7
            Top = 128
            Width = 157
            Height = 14
            AutoSize = False
            DataField = 'IDENATOP'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rl_natureza
            Layout = tlCenter
            ParentFont = False
          end
          object rl_iest: TRLMemo
            Left = 166
            Top = 113
            Width = 124
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Insc. Estadual')
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 166
            Top = 126
            Width = 124
            Height = 14
            AutoSize = False
            DataField = 'EMITIE'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rl_iest
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 292
            Top = 113
            Width = 160
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Insc.Est. do Subst.Tributario')
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 454
            Top = 113
            Width = 143
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cnpj')
            ParentFont = False
          end
          object RLMemo3: TRLMemo
            Left = 599
            Top = 113
            Width = 363
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              
                'Chave de Acesso da NF-e p/Consulta de Autencidade no Site www.nf' +
                'e.fazenda.gov.br')
            ParentFont = False
          end
          object RLDBText56: TRLDBText
            Left = 294
            Top = 126
            Width = 49
            Height = 12
            DataField = 'DESTISUF'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText57: TRLDBText
            Left = 603
            Top = 126
            Width = 86
            Height = 12
            DataField = 'chave_acesso_calc'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText68: TRLDBText
            Left = 459
            Top = 126
            Width = 136
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 540
            Top = 64
            Width = 25
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Fl:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 566
            Top = 64
            Width = 30
            Height = 14
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object RLLabel12: TRLLabel
            Left = 444
            Top = 66
            Width = 20
            Height = 11
            Caption = 'No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiRazao: TRLLabel
            Left = 185
            Top = 1
            Width = 258
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiCidade: TRLLabel
            Left = 185
            Top = 39
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiFone: TRLLabel
            Left = 185
            Top = 51
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiFAX: TRLLabel
            Left = 185
            Top = 64
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiCep: TRLLabel
            Left = 185
            Top = 82
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiEmail: TRLLabel
            Left = 185
            Top = 95
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemEmiEnder: TRLMemo
            Left = 184
            Top = 16
            Width = 260
            Height = 12
            Alignment = taCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 83
          Top = 459
          Width = 983
          Height = 245
          DataSource = Src_Detalhe
          object RLBand10: TRLBand
            Left = 0
            Top = 26
            Width = 983
            Height = 11
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand10BeforePrint
            object RLDBText76: TRLDBText
              Left = 7
              Top = 0
              Width = 50
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_produto
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText78: TRLDBText
              Left = 539
              Top = 0
              Width = 40
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_ncmsh
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText79: TRLDBText
              Left = 579
              Top = 0
              Width = 28
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'cst'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_cst
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText80: TRLDBText
              Left = 607
              Top = 0
              Width = 30
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCFOP'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_cfop
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText81: TRLDBText
              Left = 637
              Top = 0
              Width = 22
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_unidade
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText82: TRLDBText
              Left = 712
              Top = 0
              Width = 40
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVUNCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_unitario
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText83: TRLDBText
              Left = 752
              Top = 0
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVPROD'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_total
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText87: TRLDBText
              Left = 837
              Top = 0
              Width = 26
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_aliqicms
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText88: TRLDBText
              Left = 935
              Top = 0
              Width = 28
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_aliqipi
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText52: TRLDBText
              Left = 658
              Top = 0
              Width = 54
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODQCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_quantidade
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object rlPaisagemNome: TRLDBMemo
              Left = 57
              Top = 0
              Width = 330
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomepro'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_descricao
              ParentFont = False
            end
            object det_marca: TRLDBText
              Left = 386
              Top = 0
              Width = 84
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Borders.Style = bsVertical
              DataField = 'marcapro'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_marca
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object DET_PMC: TRLDBText
              Left = 469
              Top = 1
              Width = 72
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Borders.Style = bsVertical
              DataField = 'DETPRODMEDVPMC'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RL_PMC
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText119: TRLDBText
              Left = 793
              Top = 1
              Width = 44
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo43
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText122: TRLDBText
              Left = 863
              Top = 1
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo46
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText140: TRLDBText
              Left = 904
              Top = 1
              Width = 34
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valor_ipi'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo47
              ParentFont = False
              SecondHolder = rlPaisagemNome
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_Rod01: TRLBand
            Left = 0
            Top = 53
            Width = 983
            Height = 186
            BandType = btFooter
            AfterPrint = RLBand_Rod01AfterPrint
            object RLDraw127: TRLDraw
              Left = 8
              Top = 59
              Width = 412
              Height = 126
            end
            object RLLabel78: TRLLabel
              Left = 7
              Top = 1
              Width = 959
              Height = 12
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'C'#193'LCULO DO ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw58: TRLDraw
              Left = 7
              Top = 14
              Width = 209
              Height = 26
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Pen.Style = psInsideFrame
            end
            object RLDBText63: TRLDBText
              Left = 177
              Top = 23
              Width = 34
              Height = 12
              Alignment = taRightJustify
              DataField = 'EMITIM'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDraw59: TRLDraw
              Left = 218
              Top = 14
              Width = 200
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLDBText64: TRLDBText
              Left = 306
              Top = 23
              Width = 108
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVSERV'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDraw60: TRLDraw
              Left = 420
              Top = 14
              Width = 230
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLDBText65: TRLDBText
              Left = 550
              Top = 23
              Width = 96
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVBC'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel79: TRLLabel
              Left = 422
              Top = 17
              Width = 114
              Height = 12
              HelpType = htKeyword
              Caption = 'Base de C'#225'culo do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel80: TRLLabel
              Left = 222
              Top = 16
              Width = 105
              Height = 12
              HelpType = htKeyword
              Caption = 'Valor Total dos Servi'#231'os'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel81: TRLLabel
              Left = 9
              Top = 17
              Width = 82
              Height = 12
              HelpType = htKeyword
              Caption = 'Inscri'#231#227'o Municipal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw61: TRLDraw
              Left = 652
              Top = 14
              Width = 314
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel83: TRLLabel
              Left = 656
              Top = 16
              Width = 69
              Height = 12
              HelpType = htKeyword
              Caption = 'Valor do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText67: TRLDBText
              Left = 865
              Top = 23
              Width = 98
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVISS'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel84: TRLLabel
              Left = 7
              Top = 44
              Width = 101
              Height = 12
              Caption = 'DADOS ADICIONAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo4: TRLDBMemo
              Left = 422
              Top = 59
              Width = 544
              Height = 126
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'INFADICINFADFISCO'
              DataSource = Src_Cabecalho
            end
            object RLDBMemo3: TRLDBMemo
              Left = 11
              Top = 61
              Width = 406
              Height = 12
              Alignment = taCenter
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel173: TRLLabel
              Left = 423
              Top = 44
              Width = 207
              Height = 12
              Caption = 'OBSERVA'#199#213'ES RESERVADAS AO FISCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rl_band_cab03: TRLBand
            Left = 0
            Top = 0
            Width = 983
            Height = 26
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            object m_produto: TRLMemo
              Left = 7
              Top = 0
              Width = 50
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'COD. PRODUTO')
              ParentFont = False
            end
            object m_descricao: TRLMemo
              Left = 57
              Top = 0
              Width = 330
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'DESCRI'#199#195'O DOS PRODUTOS/SERVI'#199'OS')
              ParentFont = False
            end
            object m_ncmsh: TRLMemo
              Left = 539
              Top = 0
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'NCMSH')
              ParentFont = False
            end
            object m_cfop: TRLMemo
              Left = 607
              Top = 0
              Width = 30
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'CFOP')
              ParentFont = False
            end
            object m_unidade: TRLMemo
              Left = 637
              Top = 0
              Width = 22
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'UND')
              ParentFont = False
            end
            object m_unitario: TRLMemo
              Left = 712
              Top = 0
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'VALOR UNITARIO')
              ParentFont = False
            end
            object m_total: TRLMemo
              Left = 752
              Top = 0
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'V.TOTAL')
              ParentFont = False
            end
            object m_aliqicms: TRLMemo
              Left = 837
              Top = 0
              Width = 26
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'ALIQ'
                'ICMS')
              ParentFont = False
            end
            object m_aliqipi: TRLMemo
              Left = 935
              Top = 0
              Width = 28
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'ALIQ'
                ' IPI')
              ParentFont = False
            end
            object m_quantidade: TRLMemo
              Left = 658
              Top = 0
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'QUANTIDADE')
              ParentFont = False
            end
            object m_cst: TRLMemo
              Left = 579
              Top = 0
              Width = 28
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'CST')
              ParentFont = False
            end
            object m_marca: TRLMemo
              Left = 386
              Top = 0
              Width = 84
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'MARCA')
              ParentFont = False
            end
            object RL_PMC: TRLMemo
              Left = 469
              Top = 0
              Width = 72
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'P.M.C.')
              ParentFont = False
            end
            object RLMemo43: TRLMemo
              Left = 793
              Top = 0
              Width = 44
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'BC ICMS')
              ParentFont = False
            end
            object RLMemo46: TRLMemo
              Left = 863
              Top = 0
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'VL ICMS')
              ParentFont = False
            end
            object RLMemo47: TRLMemo
              Left = 904
              Top = 0
              Width = 34
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'VL IPI')
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 51
            Width = 983
            Height = 2
            BandType = btColumnFooter
            object RLDraw62: TRLDraw
              Left = 8
              Top = 0
              Width = 959
              Height = 1
            end
          end
          object rlDetPaisagem_Linha02: TRLBand
            Left = 0
            Top = 37
            Width = 983
            Height = 14
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            object RLDBMemo5: TRLDBMemo
              Left = 7
              Top = 0
              Width = 959
              Height = 14
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'DETINFADPROD'
              DataSource = Src_Detalhe
            end
          end
        end
        object rl_lat_Nota: TRLAngleLabel
          Left = 43
          Top = 666
          Width = 14
          Height = 54
          Angle = 270.000000000000000000
          AfterPrint = rl_lat_NotaAfterPrint
        end
        object rl_lat_Serie: TRLAngleLabel
          Left = 25
          Top = 664
          Width = 14
          Height = 57
          Angle = 270.000000000000000000
          AfterPrint = rl_lat_SerieAfterPrint
        end
        object rl_band_cab02: TRLBand
          Left = 83
          Top = 166
          Width = 983
          Height = 293
          BandType = btColumnHeader
          AfterPrint = rl_band_cab02AfterPrint
          object RLDraw140: TRLDraw
            Left = 499
            Top = 0
            Width = 207
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLMemo4: TRLMemo
            Left = 7
            Top = 0
            Width = 489
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Nome/Raz'#227'o Social')
            ParentFont = False
          end
          object RLMemo5: TRLMemo
            Left = 705
            Top = 0
            Width = 149
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cpf/Cnpj')
            ParentFont = False
          end
          object RLMemo6: TRLMemo
            Left = 855
            Top = 0
            Width = 108
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Data da Emiss'#227'o')
            ParentFont = False
          end
          object RLDBText58: TRLDBText
            Left = 6
            Top = 14
            Width = 61
            Height = 12
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText69: TRLDBText
            Left = 710
            Top = 14
            Width = 140
            Height = 12
            AutoSize = False
            DataField = 'dest_cnpj'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText70: TRLDBText
            Left = 868
            Top = 14
            Width = 45
            Height = 12
            DataField = 'IDEDEMI'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo7: TRLMemo
            Left = 7
            Top = 31
            Width = 489
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Endere'#231'o')
            ParentFont = False
          end
          object RLMemo8: TRLMemo
            Left = 491
            Top = 31
            Width = 267
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Bairro/Distrito')
            ParentFont = False
          end
          object RLMemo9: TRLMemo
            Left = 768
            Top = 31
            Width = 86
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cep')
            ParentFont = False
          end
          object RLMemo10: TRLMemo
            Left = 855
            Top = 31
            Width = 108
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Data Entrada/Saida')
            ParentFont = False
          end
          object RLDBText59: TRLDBText
            Left = 7
            Top = 45
            Width = 105
            Height = 12
            DataField = 'DESTENDERDESTXLGR'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText60: TRLDBText
            Left = 502
            Top = 45
            Width = 125
            Height = 12
            DataField = 'DESTENDERDESTXBAIRRO'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText71: TRLDBText
            Left = 867
            Top = 46
            Width = 41
            Height = 12
            DataField = 'datasaida'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText89: TRLDBText
            Left = 772
            Top = 46
            Width = 98
            Height = 12
            DataField = 'DESTENDERDESTCEP'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo11: TRLMemo
            Left = 7
            Top = 61
            Width = 434
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Municipio')
            ParentFont = False
          end
          object RLMemo12: TRLMemo
            Left = 443
            Top = 61
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Fone/Fax')
            ParentFont = False
          end
          object RLMemo13: TRLMemo
            Left = 591
            Top = 61
            Width = 64
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo14: TRLMemo
            Left = 656
            Top = 61
            Width = 198
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Inscri'#231#227'o Estadual')
            ParentFont = False
          end
          object RLMemo15: TRLMemo
            Left = 855
            Top = 61
            Width = 108
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Hora da Sa'#237'da')
            ParentFont = False
          end
          object RLDBText61: TRLDBText
            Left = 6
            Top = 72
            Width = 109
            Height = 12
            DataField = 'DESTENDERDESTXMUN'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText75: TRLDBText
            Left = 444
            Top = 72
            Width = 143
            Height = 14
            AutoSize = False
            DataField = 'dest_fone'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText73: TRLDBText
            Left = 594
            Top = 72
            Width = 92
            Height = 12
            DataField = 'DESTENDERDESTUF'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText74: TRLDBText
            Left = 659
            Top = 72
            Width = 60
            Height = 12
            DataField = 'dest_inscricao'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel75: TRLLabel
            Left = 6
            Top = 87
            Width = 43
            Height = 10
            Caption = 'FATURA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo16: TRLMemo
            Left = 7
            Top = 139
            Width = 218
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Base de Calculo do Icms')
            ParentFont = False
          end
          object RLMemo17: TRLMemo
            Left = 227
            Top = 139
            Width = 244
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Icms')
            ParentFont = False
          end
          object RLMemo18: TRLMemo
            Left = 473
            Top = 139
            Width = 188
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Base de Calculo do Icms Substitui'#231#227'o')
            ParentFont = False
          end
          object RLMemo19: TRLMemo
            Left = 663
            Top = 139
            Width = 150
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Icms Substitui'#231#227'o')
            ParentFont = False
          end
          object RLMemo20: TRLMemo
            Left = 816
            Top = 139
            Width = 150
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor Total dos Produtos')
            ParentFont = False
          end
          object RLLabel76: TRLLabel
            Left = 7
            Top = 127
            Width = 112
            Height = 10
            Caption = 'CALCULO DO IMPOSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText90: TRLDBText
            Left = 118
            Top = 150
            Width = 103
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBC'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText91: TRLDBText
            Left = 349
            Top = 150
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText92: TRLDBText
            Left = 541
            Top = 150
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText112: TRLDBText
            Left = 708
            Top = 150
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText113: TRLDBText
            Left = 846
            Top = 150
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLMemo21: TRLMemo
            Left = 7
            Top = 168
            Width = 140
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Frete')
            ParentFont = False
          end
          object RLMemo22: TRLMemo
            Left = 149
            Top = 168
            Width = 165
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Seguro')
            ParentFont = False
          end
          object RLMemo23: TRLMemo
            Left = 316
            Top = 168
            Width = 194
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Descontos')
            ParentFont = False
          end
          object RLMemo24: TRLMemo
            Left = 512
            Top = 168
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Outras Despesas/Acessorios')
            ParentFont = False
          end
          object RLMemo25: TRLMemo
            Left = 663
            Top = 168
            Width = 150
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do IPI')
            ParentFont = False
          end
          object RLMemo26: TRLMemo
            Left = 816
            Top = 168
            Width = 150
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor Total da Nota')
            ParentFont = False
          end
          object RLDBText114: TRLDBText
            Left = 10
            Top = 179
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTALICMSTOTVFRETE'
            DataSource = Src_Cabecalho
          end
          object RLDBText115: TRLDBText
            Left = 200
            Top = 179
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = Src_Cabecalho
          end
          object RLDBText116: TRLDBText
            Left = 390
            Top = 179
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = Src_Cabecalho
          end
          object RLDBText123: TRLDBText
            Left = 533
            Top = 179
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText124: TRLDBText
            Left = 711
            Top = 179
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = Src_Cabecalho
          end
          object RLDBText125: TRLDBText
            Left = 861
            Top = 179
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel77: TRLLabel
            Left = 8
            Top = 195
            Width = 218
            Height = 10
            Caption = 'TRANSPORTADOR/VOLUME TRANSPORTADOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo27: TRLMemo
            Left = 7
            Top = 207
            Width = 416
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Raz'#227'o Social')
            ParentFont = False
          end
          object RLMemo28: TRLMemo
            Left = 425
            Top = 207
            Width = 129
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Frete por Conta'
              '1 - Emitente'
              '2 - Destinatario')
            ParentFont = False
          end
          object RLMemo29: TRLMemo
            Left = 555
            Top = 207
            Width = 108
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'C'#243'digo ANTT')
            ParentFont = False
          end
          object RLMemo30: TRLMemo
            Left = 665
            Top = 207
            Width = 109
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Placa do Veiculo')
            ParentFont = False
          end
          object RLMemo31: TRLMemo
            Left = 775
            Top = 207
            Width = 39
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo32: TRLMemo
            Left = 817
            Top = 207
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cnpj/Cpf')
            ParentFont = False
          end
          object RLDBText126: TRLDBText
            Left = 9
            Top = 218
            Width = 57
            Height = 14
            DataField = 'TT_XNOME'
            DataSource = Src_Cabecalho
          end
          object RLDBText128: TRLDBText
            Left = 669
            Top = 218
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = Src_Cabecalho
          end
          object RLDBText129: TRLDBText
            Left = 778
            Top = 218
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText130: TRLDBText
            Left = 822
            Top = 218
            Width = 140
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDraw57: TRLDraw
            Left = 522
            Top = 212
            Width = 14
            Height = 21
          end
          object RLDBText127: TRLDBText
            Left = 522
            Top = 215
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = Src_Cabecalho
          end
          object RLMemo33: TRLMemo
            Left = 7
            Top = 236
            Width = 416
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Endere'#231'o')
            ParentFont = False
          end
          object RLMemo34: TRLMemo
            Left = 425
            Top = 236
            Width = 347
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Municipio')
            ParentFont = False
          end
          object RLMemo38: TRLMemo
            Left = 775
            Top = 236
            Width = 39
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo36: TRLMemo
            Left = 817
            Top = 236
            Width = 149
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Inscri'#231#227'o Estadual')
            ParentFont = False
          end
          object RLDBText131: TRLDBText
            Left = 10
            Top = 248
            Width = 61
            Height = 14
            DataField = 'TT_XENDER'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText132: TRLDBText
            Left = 430
            Top = 248
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText133: TRLDBText
            Left = 779
            Top = 248
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText134: TRLDBText
            Left = 821
            Top = 248
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLMemo42: TRLMemo
            Left = 7
            Top = 266
            Width = 195
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Quantidade')
            ParentFont = False
          end
          object RLMemo41: TRLMemo
            Left = 205
            Top = 266
            Width = 218
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Esp'#233'cie')
            ParentFont = False
          end
          object RLMemo40: TRLMemo
            Left = 425
            Top = 266
            Width = 122
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Marca')
            ParentFont = False
          end
          object RLMemo39: TRLMemo
            Left = 548
            Top = 266
            Width = 139
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Numera'#231#227'o')
            ParentFont = False
          end
          object RLMemo35: TRLMemo
            Left = 689
            Top = 266
            Width = 125
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Peso Bruto')
            ParentFont = False
          end
          object RLMemo37: TRLMemo
            Left = 817
            Top = 266
            Width = 149
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Peso L'#237'quido')
            ParentFont = False
          end
          object RLDBText135: TRLDBText
            Left = 103
            Top = 278
            Width = 95
            Height = 13
            Alignment = taRightJustify
            DataField = 'TRANSPVOLQVOL'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText136: TRLDBText
            Left = 333
            Top = 278
            Width = 85
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLESP'
            DataSource = Src_Cabecalho
          end
          object RLDBText137: TRLDBText
            Left = 440
            Top = 278
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = Src_Cabecalho
          end
          object RLDBText138: TRLDBText
            Left = 710
            Top = 278
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = Src_Cabecalho
          end
          object RLDBText139: TRLDBText
            Left = 863
            Top = 278
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = Src_Cabecalho
          end
          object RLDBMemo15: TRLDBMemo
            Left = 7
            Top = 98
            Width = 959
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'data_vencimentos'
            DataSource = Src_Cabecalho
          end
          object RLLabel114: TRLLabel
            Left = 500
            Top = 2
            Width = 134
            Height = 11
            HelpType = htKeyword
            Caption = 'Protocolo de Autoriza'#231#227'o de Uso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText86: TRLDBText
            Left = 502
            Top = 14
            Width = 199
            Height = 14
            AutoSize = False
            DataField = 'num_prot'
            DataSource = Src_Cabecalho
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Teste Impressao'
      ImageIndex = 2
      object rlTesteIMP: TRLReport
        Left = 0
        Top = 144
        Width = 794
        Height = 1123
        DataSource = Src_TesteImp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand7: TRLBand
          Left = 38
          Top = 95
          Width = 718
          Height = 30
          object RLDBText62: TRLDBText
            Left = 262
            Top = 8
            Width = 66
            Height = 16
            DataField = 'CAMPO01'
            DataSource = Src_TesteImp
          end
        end
        object RLBand8: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 57
          BandType = btColumnHeader
          object RLImage3: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 57
            Align = faLeft
            Picture.Data = {
              0A544A504547496D61676563660000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080183036B03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A28010FAD63DE6B891CC6DECE36B9B81C10A70ABF535475BD5DE6B83A75A49
              B40FF5D28EDFEC8FF3ED55ADE586D2211C2A14773DC9F526BC9C4635B9385376
              EEFF00C8873D6C8BDE4EA777CDD5F8801FF96702F4FC7AFEA68FEC788F26FEF4
              B7A9947F8557FB78F5A3EDE3D6B97F72F596AFCD8B9895AC2FADFE6B3D52427F
              BB2F23F5CFF2A587C433DA4A21D52DF664E04B1F23FCFD3F2A87EDE3D6A39AE6
              39E331CAA190F506973FB377A32B796E839BB1D5452C73C4B244EAE8C32194E7
              34FAE12CF509343BC186692CDCF2BD48FA7BFF003FE5DC452A4D12C91B064600
              823B835EA60F16B111B3D24B72A325224A28A2BB4A0A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A4C52D432DD416F8F3A78E3CF4DEE07F3A16B
              B05EC4D45311D255DC8EAEA7BA9C834FA0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A004ACFD6AFF00FB3B4A9AE0
              7DFC6D4F763D2B42B8FF001DDC158ACEDC74666723E8001FCEB971755D3A3292
              22A4B962D9CD477850139259892C4F524F734FFED03EA6B37751BABE46F2EE70
              FB46697F681F5347F681F5359BBA8DD4F9A5DC39D9A5FDA07D4D1FDA07D4D66E
              EA3751CD2EE1CECD092F04A855B906BA8F06EA2648E5B073CC637C7F42791F99
              1F9D70FBAB57C357260F105A91C072508F5C823F9E2BA7055654F1117DF72E9D
              4F791EA1451457D71DC145145001451450014514500145145002514561788BC5
              7A5786ADFCCBF9FF007AC331C09CBBFD07F53C538C652768A265251576CDC270
              39AE1FC45F13B46D14B41687FB42E875585BE453E85B9FD335E7DE21F17EB9E2
              B2D16E361A69E90213971FED1E0B7D381EDDEB1A1D3EDA000EC0EDEAFCFE9D2B
              D4A3804B5ABF71C35719D205FD5FE20F89F5B2CA972F6B01E91DA02BF9B7DE3F
              9E3DAB9498CCD2169CB990F24B9249FA935D3E401C0000A8E7892788A4801047
              071C83EA2BD18724348C51C52A9293BC999FE1EF126A1E1BD423B9B399C20606
              484B1D922E790474E9DFA8ED5F4AD9DD477D6505DC27314F1AC887D430C8FE75
              F2A32947653D54907F0AFA5BC1AACBE0DD1B7F27EC919FC368C7E95C19A538A5
              19A3BB0736EF13768A28AF20EF0A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A28012B86F1F822E2C5BB15703EBC7F8D7735CB78E
              ACCCFA32DC28F9ADDC31FF0074F07F5C571E360E7424919574DD3763CFB7D1BE
              A0DD46EAF9AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF
              5A1A082FAF58A8EBE729FC0727F95646EAE9BC0F686E75CFB411F25B21627B6E
              20803F226B6C3D2E6AB14BB9A526E53491E99DA8A28AFAB3D60A28A2800A28A2
              800A28A280128240193C555BEBEB6D3AD24BABC9D21823196773802BC7BC59E3
              BBAF10EFB4B167B3D2B90CE789271EFE8A7D3BF7F41BD0C3CEB3B2DBB98D5AD1
              A6B53A5F157C4A8ED9DF4FF0FECB9BA190F72798E23EDFDE3FA7D7A5799CC4BD
              CC97BA85C34F72E72D2CAD9FCB3FA7E95485CB1616F61033B1E00452493EC072
              6ADA783FC5179FBCFEC7BD3EEF1EDFC81C57B74A8D2A0AD74BCD9E6CE752B3BF
              4219356897845673EBD05423586CF308C7B373FCAA0D4349D474A7097F65716C
              C7A79B19507E848C1FC2A9D75463092BAD518B5676674905C25C461D09C7420F
              507D2A4CD63E94E44922E78201FC8FFF005EB4A594451339FE104D6528D9D913
              6311A27BAD40C51296925976A01DC93803F335F5258DB259585BDA47F7218963
              5FA28007F2AF04F869A41D57C676D232E61B3CDC3F1DC70BF8EE20FE06BE83AF
              3333A979C60BA1E9E0E168B977168A28AF2CED0A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A867812E209219543248A5581
              EE0F06A6A29349AB303C635BD2E5D1B5292D6404AE7746E7A3293C7E3D8FB835
              9DBABD8F5AD16D75CB2304EA55D798E403943EA3FC2BCA75AD0EFB4398ADD467
              CA2709328251BF1EC7D8F35E262706E9C9B8ABA3C6C4D09527CCBE1296EA3755
              6F397FBC28F397FBC2B9391F638FDAAEE59DD46EAADE72FF007854F690CD7F70
              B05AC4D34ADD1501FCCFA0F73C50A9B6EC9046A733B2DC91034B22A22B33B101
              540C924F00015EB5E19D1868DA52C6E337121DF291EBE9F41FE27BD67785FC22
              9A4E2EEF36C97847CA07DD8FE9EA7DFF00C9EB2BD7C1E17D9FBF2DCF630B41C1
              734B762D14515E81DA145145001451450025656B9AFD8787B4F6BBBE976AF444
              5E5E46F451DCD55F1278A2DFC3D6E89B1AE7509FE5B7B48B9790FF00419EFF00
              D6B97D3FC11A97883501AC78B6E0976FB96919C045CE76E7F847D3939E4839AD
              A9D38FC551D97E66539BF861B9C9DFDE6BFF0010355012D5DE18CE62B54388A1
              07A33B1C0271DCFB803B5755A3FC28B7CACDAF5D1B961CFD9A025631EC4F53FA
              57A05A59DB58DB2DBDADBC70C4BD1235C0FD2ACD6D3C64ADCB4FDD4671C3ABF3
              4F5651D3B49D3F4987C9B0B386D93BF968067EA7B9F7357A8A5AE36DBD59D092
              5B14751D32D356B192CAF6059A090619587EA3D0FBD7CD9E21D21F42D7AF34C7
              62DE43E158F059480549F720835F50115E05F1555478EA72BD5A18CB7D76E3F9
              015E9E5751FB470E9638F1915CBCC731A58C348FEC00A97529B1108C1E58E4FD
              053ACD3CBB619E0B727FCFD2A6D0B4997C4FE26B7B08F3E5BB65D87F0C63963F
              9671EE40AF5E5251BCDEC8F3A29C9A4BA9EB1F0A3423A6F86DB5095713DFB071
              91FF002CC642FE7927F115E8151430C76D04704481238D42A28E800E00A92BE6
              2AD47526E6FA9EDD382845450B45145416145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001514B0C73C6D1CB1ABA30C
              1560083F854B45026AFA3391D43E1D6837CC5E3864B473C936EF81F91040FC05
              6337C27B52D95D5270BE8D1827F3AF46A2B374A0DEA8E49E070F37771386B2F8
              5FA3C0C1AE66B9B9C7552FB54FE433FAD759A7E9763A5C3E5595AC7021EA1171
              9FA9EF5768C5546118EC8D6961A952F8236168A28AA370A28A2800A28A2800AC
              FBEB9B81982C23592E987593223887F7988EBECA393EC3246852000741421331
              B4AF0F5B69D7125ECACD77A94DFEB6EE51973ECA3A2A8EC07EB5B5494B4DB6F7
              04AC1451452185145140086BE75F1E5C8D4BC7DA91539449445C76D8A14FEA0D
              7BFEA57B1E9DA65D5ECBFEAEDE2691BDC019AF9A12479E79AF273992676763EA
              49249FCCD7A99641F34A7D8E1C6CB45116EE511C3B1782DC0F615EB9F09FC367
              4ED1DF58B84C5C5F0022C8E5620720FF00C08F3F4C579AF84F4193C57E2686D4
              86FB321F32761FC3183C8CFA93803EB9ED5F46451A4512471A85440155474007
              18AD331AFCB15497CC8C252BBE76494514578E7A214514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145004171710DA5BC971712AC70C6A59DD8E
              0281D49AF28D67E304D25D3DBE81651B46A71F68B9C9DC3D428238FA9CFB0AD0
              F8CBA94B6BA0D969F1B955BB9899307EF2A60E0FB6581FC2BC8EC5710961FC47
              F957AB81C242A479E7A9E46618D9D27C90D0F4DB1F17F896E62135D6A4910619
              0915BA0C8F5C906AE7FC251AB7FD05E7FF00BF50FF00F115C08D4C8000C80060
              0A3FB50FA9AEE7838748A3CD58E9ADE477DFF0946ADFF4179FFEFD43FF00C451
              FF000946ADFF004179FF00EFD43FFC45703FDA87D4D1FDA87D4D1F5487F2A1FD
              7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE128D5BFE82F3FFDFA87FF00
              88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF0084A356FF00A0BCFF
              00F7EA1FFE228FF84A356FFA0BCFFF007EA1FF00E22B81FED43EA68FED43EA68
              FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FFDFA87FF0088A3FE128D5BFE82F3
              FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF84A356F
              FA0BCFFF007EA1FF00E228FF0084A356FF00A0BCFF00F7EA1FFE22B81FED43EA
              68FED43EA68FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE1
              28D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333
              BC93C51ADEC3E56B0E1FB79904447E38506B263F8ABE20D2AE8C7A95ADA5DC20
              E1B6031BFE7923F4FCAB99FED46F5354AF25FB531279057068583A4D35288BEB
              F5134D48FA07C37E25D3FC4FA6FDB2C2424A9DB2C4DC346D8E847F9CD6D62BE7
              BF859A9CB61E37B6B756222BC568A45CF1C296538F5C8C7E26BE84CD7898AA1E
              C6A72AD8FA0C2D6F6B4F99EE2D14515CE7485145140051451401E7BF16357FB2
              787A1D2E26FDF5F483763A88D4827F5DA3F3AF179DF0A21404938181D7D85749
              E38D786B5E26B9BA46DD6F0FEE20C1E0AA93923EA493F4C7A56AFC2EF0B1D5B5
              73ACDE266D2D1818C11C492F51F82F07EB8F7AF7E82586C3F348F2AA7EFAB591
              E85F0FBC2FFF0008DF87D7CF4C5F5D6249F8E578F953F007F326BAEA5A4AF0A7
              3739394BA9E9C22A315142D14515250514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              14514005145140051451401E67F19B4D7B9F0F5A6A118CFD926C3FB2B8C67F30
              A3F1AF1FB27CC257B83FCEBEA3BAB5B7BDB67B6B98239A171868E450CADDF907
              8359A3C23E1D1F7743D397FDDB741FD2BD1C263951872B573CCC6601D7973459
              F3BEEA339AFA27FE112F0F7FD016C7FEFC2FF8563EB9F0E743D5AD196DEDD6C2
              E71F24D6E3183EEBD08FD7DC575C735A6DA4D3B1C12C9EA2574D1E1DBA8CD497
              F6379A36AB3E99A8204B884F51D1C75041F42391FD0D415E9C66A4934EE99E5C
              E9B84B965B8FCD19A6668CD322C3F3466999A3340587E68CD33346680B0FCD19
              A6668CD016242476A4DD50CB288973D49E00F535EB1E0CF86B0259A6A1E21469
              6E640192D49216207A6E19E5BF41D319AC2BE261415E5F71D587C1CEBBB4763C
              B77535DF6A16EC0135F45FFC225E1E03FE40B63FF7E17FC283E12F0EE30744B0
              23D0DBA9FE95C3FDAB0FE53BD64F3BEB23C5BE14E9AF7DE3882E00FDDD9C6F2B
              9ED920A81F5CB67F035F41551B0D1F4CD28C874FD3ED6D4C98DFE444A9BB1D33
              8033D4D5EC715E5E26BFB69F358F5F0D43D8C3958B45145607485145140095C9
              FC41D7BFB13C33308DF6DCDDFEE22C1E467EF37E033CF6245759D2BE7AF881E2
              53E20F1149E4396B4B7CC500078383CB0FA9FD00AEBC1D0F6B555F65AB39F115
              3921A6ECC6D2349BAF10EB36FA6DA0F9A46E588C8451D58FB01FE1D4D7D21A4E
              976DA36976FA7DA26D8615DA3D49EE4FB93935CB7C38F08FFC23DA4FDAEEE3C6
              A376A0B8239893A84FAF73EFC76AEDEAF1D89F6B3E58EC89C351E48DDEEC5A28
              A2B84EA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2803CCFE2FE82B75A2C5ADC29FE9164C16423BC6C71F
              8E188FCCD7912B8640C3B8CD7D29E23B21A8786F52B42B932DB48ABF5DA71FAE
              2BE64B739840F42457B9965472A6E2FA1E066B4929A92EA4F9A334DCD19AF4EE
              79161D9A334DCD19A2E161D9A334DCD19A2E161D9A334DCD213804FA5170B1D6
              FC35D0D75CF1789E64DD6DA7A89482320BF4507F1C9FF80D7BF579A7C17B311F
              876FEF48F9E7BADB9F555518FD59ABD2EBE6F1D51CEB3EC8FA9C0D350A2BCC5A
              28A2B90ED0A28A2800A28A2800A292A2B9B88ACED65B89DD638A252EEE4F0AA0
              649FCA8DDD81E871DF12FC4A343F0F35AC0F8BCBD0634C1E5531F337E5C0F73E
              D5C57C2FF079D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD08ACF482FBE2
              778E2497E78ECD48CB1E90C20F03FDE3CF1EA49E80D7B95959C1A7D9C3696B18
              8E08502220E800AF4AA4BEAD47D947E27B9C718FB5A9CEF65B16A8A28AF34EC0
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A280108C8AF95EF2DBEC1AADF59E31F67B878F1FEEB11
              FD2BEA83D2BE70F1E5AFD8BC7DAC44070F20947BEE50C7F526BD3CB256A8E3DC
              F2F348DE9A7D8C1A29B457B67803A8A6D1400EA29B45003B34D90E118E7B1A29
              929C467DE932A2B547D09F0CAD3ECBE01D341186977CA7F17247E98AEBAB33C3
              F69F60F0E69B68460C36B1A1FA8500D6A57CAD59734DBF33EB69479609051451
              50681451450014514500267DABCC7E25EB571A85D5B784749064BAB9606E029E
              83AAA93D87F11F603B135D9F8ABC430F86B439EFA501A5FB90464FDF90F41FD4
              FB03583E01F0B4F6092EBBAB82FAC5F92EE5C73129E71EC4F53E9C0EC73D342D
              05ED65D36F531A8DCBDC5F336FC29E1AB7F0BE8C9650E1A63F34F363991FB9FA
              7603FF00AF5BD452D73CA4E527296ECD2315156414514522828A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A006FAD783FC5A83C9F1D2C9FF003DAD51F3F42CBFFB2D7BC9AF19F8D3
              6FB357D22E7FE7A42F1FFDF2C0FF00ECD5DB97CAD5D799C39846F419E6B9A334
              99A335F407CE0B9A33499A33400B9A33499A33400B9E29F0406EAF2DAD864996
              55418F7207F5A8F35ADE1583ED5E32D162EBFE971B11FEEB027F406A2A4B960D
              F64694A3CD348FA6D46001DA9681D28AF953EB428A28A0028A28A004A63BAC68
              CEEC155464927000A7D73DAC4526BB7474689992C9706FE4538DCA791083EAC3
              05BD14FF00B429C55DEA26EDB18DA7D9378CBC44BAFDE29FEC8B2629A742C389
              5B3CCC47A6471F41E9CF758E6A28A18E08522894246802AAA8C0007402A5AA9C
              F9BD0518D85A28A2A0A0A28A2800A28A2800A28A2800A28A280128AE575EF12D
              DE99A8FD9A18A12A10365C127273E86B33FE136D43FE785BFE4DFE35C15331A1
              4E4E327AA3375629D99DED15C17FC26DA87FCF0B7FC9BFC6BA6F0FEA936AD60D
              3CCA8AC1CAE1060741F5F5ABA38EA55A5C907A8E352327A1B145145761614514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450015E57F1AE1CE9BA44FF00DC9DD7F3
              5CFF00ECB5EA95E71F19E3DFE11B5907F05EA93F4D8E3F9E2BA308ED5A2CE6C5
              ABD191E279A4CD2515F4A7CC585CD19A4A280B0B9A5CD368A02C3ABA9F86B179
              DF10F4CC8C84F31CFF00DFB6C7EB8AE505771F0962F33C76ADFF003CED647FA6
              703FAD618976A32F43A70ABF7D1F53DF68A28AF993E9C28A28A0028A28A008A5
              1218888F01CF009EDEF4CB5B68ED2111463804924F2589E4927B927249A93CD8
              C1C175E3DE8F3A3FF9E8BFF7D54F3AEE2D0928A8FCE8FF00E7A27FDF429E083D
              3A534D3D862D14555B9BFB5B319B8B88E3F40CC01FC294A4A2AED8AE59A2B15F
              C55A3A1C7DA89FF76363FD284F15690E40FB5633FDE8D87F4AC7EB542F6E642E
              78F736E8AA96DA85A5E7FC7BDC45271D15C123EA2ADD6D19292BA63D028A28AA
              1851484E064F4A679D1FFCF44FFBE8526D2DC0F3FF0018FF00C878FF00D735FE
              B5815BDE2F60DAE920823CB5E41CFAD60D7C7E33F8F2F5382A7C4C2BBEF057FC
              819FFEBB37F215C0D779E0C755D19F7328FDF37523D0574E54D2AFA9743E23A6
              C52E2A3F3A3FF9E89FF7D0A55746E8C09F406BE9B993EA760FA28A2A8028A290
              903AD00145675CEB9A65A644B791647F0A9DC7F21CD67C9E32D2D0E14CCFFEEA
              63F9E2B9E789A317694912E715BB3A1A2B9AFF0084DB4EE9E4DCFF00DF2BFF00
              C554D1F8BF4A7FBCF247FEF464FF002CD4AC6D06FE242E78F737E8AA56BAB58D
              E1020BA89D8FF0EEE7F2EB576B78CE32578BB9774C5A28A2AC028A28A0028A8C
              CB1824175FA668F3A3FF009E8BFF007D54F347B8125151F9D1FF00CF44FF00BE
              853C104641E29A69EC014B514D3C50466496458D075663802B127F176970B615
              E4948EBE5A7F8E2B2A95E9D3F8E4912E496E6FD15CF43E32D365755DB3A16200
              DCA3BFD0D7420E453A75A9D45783B829296C2D14515A9425151CB3450A179645
              451D4B3605664FE26D260241BB5623FB80B7EA38ACE7569C3E29242724B735E8
              AE75BC67A62F41337D13FC4D33FE136D3B38F26E7FEF95FF00E2AB1FAEE1FF00
              9913CF1EE74D4573C9E31D2D8E18CA9EEC9FE15760D7F4BB8384BD881F463B7F
              9E2AA389A32F864BEF1A9C5F53528A6AB061952083D3069D5D0505145359D540
              DCC067D4E28BD8075151F9D1FF00CF44FCC51E747FF3D13F3A9E68F715C928A6
              0963271BD7F3A7D34D3D86145145300A28A2800C518A619114F2E07D4D279B1F
              FCF44FFBE854F32EE0498A3151F9B1FF00CF44FF00BE85289118E15D49F4068E
              65DC07D14515402514671542E359D3AD09135E44AC3AA86C9FC8735129C61AC9
              D84DA45FA2B024F17E929F76491FFDD423F9E2A16F1AE9A3A45707E8A3FC6B07
              8CC3AFB689E78F73A5A2B9C5F1A6987AA5C0FAA8FF001AB3178A7489B03ED5B0
              9ECEA47EB8C538E2E83765240A71EE6D51505BDDDBDD2EE8268E51EA8C0FF2A9
              EB74D3574EE5DC5A28A2A8028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A004AE1BE2D45E67812E1BFE79CD137FE3D8FEB5DCD7
              1DF14973F0F3523E862FFD1AB5B61DDAAC7D4C711AD297A1F3D678A33480F029
              735F4C7CC585CD19A4CD19A05617346693346680B0B9AF45F8331EEF15DF4BFD
              DB32BF9BA9FE95E739AF4EF82AB9D6F546F4817FF42FFEB572E37F80CEBC12FD
              FA3DA68A28AF9D3E8C28A28A00283D0D141E868607936A3FF213BBFF00AECFFF
              00A11AAB56B51FF909DDFF00D767FF00D08D55AF88A8DF3BF53CE7BB0AF4CB3B
              D82C7C3D6735C48111604E4FFBA38FAD799D59BABE9EED21491F31C318445EC3
              03AFD4F735D583C5FD5F99EEDEC694EA725CDAD57C5B75765A3B3CDBC3EA3EFB
              7E3DBF0FCEB9D776772CEC5989C924E493F5A4A2B9EAE22A569734D9129393BB
              61451456248AACC8C1949520E4107045741A4F8B2EECD963BB26E20F53F7C0F5
              CF7FC7F3AE7A8ADA957A945F341951938BBA67AE5B5CC3776E9340E1E37190C2
              A6AE03C23AA35B5FFD8E463E4CDF741FE17FFEBF4FCABBFAFAAC26256229A9F5
              EA76C27CCAE54D57FE41377FF5C5FF0091AF28AF57D57FE41377FF005C5FF91A
              F28AF2F397EF44C6BEE828A28AF0CE60A28A29805749E0AFF90CCBFF005C0FFE
              84B5CDD749E0AFF90CCBFF005C0FFE84B5D7816FEB1034A5F1A3BEA3B515CE78
              9B5EFECE885B5B30FB4C83AF5D83D7EBE95F555AAC68C1CE4763924AEC9F59F1
              25B6980C49FBEB9C7DC0785FF78F6AE26FF5BBFD458F9F3B08CFFCB34385FF00
              EBFE39AA0CCCEC59892C4E4927249F53495F2F89C7D5AEDABD91C73AB293F20A
              28AD0B4D0F52BE50F05AB943FC4D85047A8CE33F85724213A8ED14D90936EC91
              9F456FFF00C21DAAE33887FEFBFF00EB550BCD1351B152F3DAB841D5970C07D7
              19C7E35ACB0B5A0AEE2CA70925768CFAD7D3BC47A869E42890CD1774909381EC
              7A8FE5ED59145453AB3A6EF06C4A4D3D19E9FA4EB56BAB45985B6C8A3E78DBA8
              FF00EB56A5790DB5CCB697093C0E52443C1FE9EE3DABD2B45D5A3D5AC5651859
              57E5913FBA7FC2BE8F018F55D724F4923AE9D4E6D1EE6A507A5141E95E99A9E4
              FAA7FC85EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE26B37ED
              25EA79F2DD857A00D6A0D23C3B64CFF3CAD026C8C1C13C0FC87BD79FD3E49649
              8A991CB1550AB93D0018007B56D86C54A87338EECA84DC6FDCB1A86A775A94C6
              4B9909C1F95070ABF41FD7AD54A28AE79CE536E52776C86DB776496FFF001F31
              7FBE3F98AF5E1D05790DBFFC7CC5FEF8FE62BD787415EE64BB4BE474E1F6631D
              D6342CC40503249E315C7EAFE316DCD0E9A0607067619CFF00BA3FA9FCA97C65
              AB3065D3A26C02374A477F45FEBF9571F539866128C9D2A4FD58AAD569F2A25B
              8B99EEA4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD789
              EF4DF76CE7D5B23A2B7A1F07EAB2AE59618BD9DF27F406A63E0AD4BFE7ADB7FD
              F4DFFC4D74AC1621ABF296A9CBB1CDD15AD77E1BD52D14B35B19147F146437E9
              D7F4AC9AC274E74DDA69A25A6B468B567A9DE583836D70F18CE4A8395FC41E2B
              B3D17C5515F32DBDD810CE7856CFCADEDEC7DAB82A2BA30D8DAB41AB3BA2A152
              517E47B1564788B4DFED1D264445CCB1FCF1FB91DBF119155BC2BAB3EA362D14
              CDBA78300927965EC4FBF07F2F7AE82BE9E3286268DD6CD1D89A944F1DA2B63C
              4BA77F67EAF26D5C4537CE98E9C9E47E79FC08AC7AF91AB09539B84BA1C324D3
              68504AB06524107208EA0D7A9E917A350D320B918DCCB8603B30E0FEB5E575D6
              782AFF0064F3583B70E37A03EA3AFE631F91AEFCAEBF256E47B335A32B4ADDCE
              DE8A28AFA73AC4A6BBAC68CEC400A0924F6A7573BE2ED44DA699F6746C497195
              E3A85EFF00E1F8D635EAAA54DCDF42652E5576717AADF1D47529AE49F959B099
              ECA381FE7D7354E8A2BE367394E4E4FA9C0DB6EEC2BB7F0669BE55B497F22FCD
              2FCA9ECA0FF53FCAB91D3ECDEFEFA1B58F20BB004FA0EA7F21935EAB0C296F04
              70C6BB51142A8F402BD6CA6839CDD596C8DE846EF99925636B3E20B7D257663C
              DB8232B183D3DC9EC2ADEAD7EBA6E9D2DC9C1651F28F563C01F9D797CD349713
              3CD2B967724B31F5AEECC31AE82E487C4CD2AD4E5D16E5DBFD72FF005162269D
              9633FF002CD0ED5C7A7BFE39ACEA28AF9B9D49D47CD26DB391B6DDD8515A967E
              1DD4EF543A5B9443FC521DBF8E3AE3F0AD0FF842B52C67CDB51FF026FF00E26B
              6860EBCD5D44A54E4F64737456F4DE0FD5621955865F647C13F98158D716D3DA
              4A63B889E271D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB23
              0E8CA4823F115D1697E2EBAB5611DEE6E22FEF74751FD7F9FBD737453A388A94
              5DE0C23371D533D6ED2EE0BDB749E0903C6C3208A9EBCE3C33AABE9FA8AC2EC7
              ECF3305607B13C06FCF83EDF4AF471C8AFA8C16296229F36CD6E76D39F3AB8B4
              5145761614514500145145001451450014514500145145001451450014514500
              21EB5C97C4C5DDF0F755FF007633F948A6BAD35CB7C47C7FC2BFD5B3D3CB5FFD
              0D6B4A3FC48FAA32ADFC397A1F3851499E28CD7D41F316168A4CD19A005A2933
              4668016BD53E090CEA1AC37A4510FCCB7F8579566BD63E089FF49D6FFDC87F9B
              D72E37F8123AB05FC747B1514515F3A7D1051451400507A1A283D0D0C0F26D47
              FE42777FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA
              79CF7614F8E379A458E346776202A819C93D8532BB3F06E96A226D4245059895
              8B3D80E091F53FCBDEB5C2D075EA722F99508F33B09A67831762C9A839C9E7CA
              43803D89EFFE7935B91787B4A88002CA33FEF8DDFCF35A9457D3D2C151A6ACA2
              76469C62B4464CDE1CD2A65C359C6BEE9F2FF2AE475FF0E369405C42ED25B31C
              1DDF7909E80E3A8F7FF27D12AA6A36A2F74F9EDCE3E74207B1EC7F3ACF1581A5
              529BB46CC53A7168F28A28A2BE50E11F0CAD04F1CC9F7A360C0FB83915EBCAC1
              94107822BC7ABD6AC1B769D6C7D6253FA0AF732693F7A274E1DEE8925892785E
              290651C1561EC6B23FE113D1FF00E7D5BFEFE37F8D6DD1F8D7B33A34EA7C6AE7
              438A7B9E67E23B1834FD57C8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AF249595CE1A89293482BADF0CE8961A9698D35CC25DC
              48573B88E303D0D7255DF782FF00E40CFF00F5D9BF90AE8CB2119D6B495CAA29
              396A8B3FF089E8FF00F3EA7FEFE37F8D59B1D0EC34D9CCD6B09491976925C9E3
              39EE7DAB4A8AFA38E1E945A718A4CEBE48A7A222B99D2DADA49DCE12352CDF40
              2BCA6F2EA4BDBC96E653F3C8C4F5E83B01EC0607E15DE78C2E0C3A1B463FE5B3
              84E3F3FE9FAD79E578B9C566E6A9AD8E7AF2D520A28A2BC539CEB7C2DA0472C4
              350BA40C09FDD230C8E38DD8FE5FFEAAED6B92B5F1869D6D690C02DEE311A051
              855EC00F5A9BFE137B0FF9F7B9FF00BE57FC6BE9F0B5F0B469A8A92B9D909422
              AC99D4521008E45731FF0009BD87FCFBDCFF00DF2BFF00C552FF00C26FA7FF00
              CFBDCFFDF2BFFC5574FD7B0FFCC8BF690EE6778A7418ED93EDF68A1509C4A806
              00CF008FE447BD7295D9EA1E2DD3EF6C27B6F22E0798854128BC123EBDB8AE32
              BE7B30F63ED39A8BBDCE5ABCB7BC42B63C35A89B0D5E30CDFBA9888DC76E7A1F
              C0FE84D63D00904107047435C946A3A73538F7222DC5A68F62EB476AABA6DC7D
              AF4EB79CF25E3563F5C73568F4AFB48B528A6BA9DF7D0F28D57FE42F7BFF005D
              DFFF00423552ADEA9FF217BDFF00AEEFFF00A11AA95F175BF892F53CF96EC28A
              2BA4F09692B7976D7732E62808DA08E0B75FD3AFE22AA85175AA2844718B9349
              09A57846E2F1166BB63044C32171F391F8F4FE7ED5D0C5E12D263401E1790FAB
              4841FD08ADE1457D3D1C050A692E5BBF33B1528A31D7C2FA3860C2D3041C8FDE
              371FAD6C741C5145754294217E4562D24B63CB35B94CDADDE3B75F3597F01C0F
              D0550AD2D7E036FAEDDA9FE290B8F70DCFF5ACDAF8EC45D55927BDCE09DF99DC
              2BB9F057D9FEC136DDBE7F99F3FAE3B7F9F5CD70D52433CB6F2092191E371FC4
              AC47EA2AF095D50A9CED5C70972CAF63D7A8AF3987C5BAB4230D2A4A3FE9A27F
              518AB91F8DAF00FDEDAC2DFEE923FA9AF7E39AE1DEF74752AD167746B8EF1668
              859D2F2CEDD99DDB6C8B1A924F70D81F4C13F4A13C75FDFB0FC44BFF00D6AB09
              E37B33FEB2D671FEEE0FF5A9AF89C26221C9290A5384D59B391FECBD43FE7C6E
              7FEFCB7F851FD97A87FCF8DCFF00DF96FF000AEEEDFC55A4CE42999A263DA452
              3F5E9FAD6C452C53C6248A45910F46520835CB4F2CA153E0A9721518BD99C578
              46D6F2DB577335B4F1C6D1119742067231C9EFD6BB9A0003B52D7AD86C3AA10E
              44EE6F08F2AB183E29D37EDFA4B48833341F3AE3B8EE3F2FD40AF3AAF6220118
              AF2FD774FF00ECDD56589462263BE3FF0074F6FC0E47E15E4E6F87D5565F330A
              F1FB466D4F6574F657B0DCA7DE8D8363D4771F88C8FC6A0A2BC58C9C5A6B7473
              A767747AF43324F0C7346728EA181F506A4AE6BC1B7FF68D39AD5CE5E03C67BA
              9E47F515D357D961EAAAB4D4D753BE32E64989DABCCBC43A87F68EAF2BAB6624
              F923F42075FD73FA576BE24D47FB3F4890A1C4B27EED31D727A9FCB35E6B5E4E
              6F88DA8AF9985797D90A28AB16568F7D7B15B463E69180CE3A0EE7F0193F8578
              718B93515AB673A5776475BE0BD37642F7F20F99F291E7B283CFEA3F4AEBAA1B
              7812DADE38231848D4281EC2A5AFB1C35154692823BE11E5491CA78E252B676B
              10E8D2163F80FF00EBD7115DCF8DE02FA7413019F2E4C1F607BFE60570D5F3D9
              A27F5977392B5F9C2B4B40F23FB6EDBED3B7CBDC7EF74CE0E3F5C566D15C14E7
              C9352B5EC669D9A67B171DA8AF2FB4D7F53B250B15D3141FC2E037E1CF38FA56
              947E34D45301E2B771FEE907F9D7D153CDA835EF5D1D6ABC4EFAA86ABA5C3AA5
              9BC1228DD8251B1CAB7635CD278EA51F7EC54FD2423FA54E9E3980FDFB3917FD
              D707F9E2B5963F0B523CB296E37560F4B9CA9D2F5004836373C1C71137F851FD
              97A87FCF8DCFFDF96FF0AED22F19E98E70EB3C7EEC99FE44D6B5A6A9637DFF00
              1ED731C8719DA0E08FC3AD79F0CBF0D51FB950CD5283D99E6A34CD401C8B1BA0
              7FEB937F857A8DB9692DA2775219901208EF8A9B028AF4F0983586BDA57B9AC2
              9A8EC2D14515DC68145145001451450014514500145145001451450014514500
              1451450025725F135B6FC3DD54FB463FF222575B5C77C526C7C3CD487AB443FF
              0022AD6B415EAC7D518D77FBA97A1F3B51499A335F4E7CD585A293346680B0B4
              52668CD0161475AF55F824D8D47575F58A33F913FE35E520F35EA1F04DBFE275
              A9AFADBA9FC9BFFAF5C98DFE048EAC1FF1A27B6514515F3C7D0851451400507A
              1A283D0D0C0F26D47FE42777FF005D9FFF00423556AD6A3FF213BBFF00AECFFF
              00A11AAB5F1153E37EA79CF7615EA3A0C622D0ECD40C0312B7E2467FAD79757A
              AE8DFF00205B2FFAE09FFA08AF5B265EFC99BE1F765EA28A2BE84EA0A43D0D2D
              07A1A4C0F21BA509773281801D863E84D45562FBFE3FEE7FEBAB7F3355EBE22A
              2B49AF33CE7B857ABE97FF00209B4FFAE29FC8579457AB695FF209B3FF00AE29
              FC857B1937C723A30FBB2ED14515F40749E77E31FF0090F1FF00AE6BFD6B02B7
              FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7054F8D8577DE0AFF009033FF
              00D766FE42B81AEFBC15FF002067FF00AECDFC8575653FEF1F22E87C474B4514
              57D39D8723E396C5B5A27ABB1FC857155DC78E133636D27A49B7F304FF004AE1
              EBE5734BFD65DCE2ADF1851452AA9760A080490013D066BCE32128AE8FFE10BD
              4FFE7A5B7FDF67FC28FF00842F54FF009E96DFF7D9FF000AEBFA8E23F90D3D9C
              BB1CE515D1FF00C217AA7F7EDBFEFB3FE147FC217AA7FCF4B6FF00BECFF851F5
              1C47F207B397639CA2BA3FF842F54FF9E96DFF007D9FF0A3FE10BD53FE7A5B7F
              DF67FC28FA8E23F903D9CBB1CE515D1FFC217AA7FCF4B6FF00BECFF851FF0008
              5EA9FF003D2DBFEFB3FE147D4711FC81ECE5D8E97C2AFBFC3D6D9EA370FF00C7
              8FF4ADA3D2B2F41B09B4DD2D2DA7285D49394248E4E7D056A76AFA8C3A6A8C54
              B748EC826A3A9E51AA7FC85EF7FEBBBFFE846AA55BD53FE42F7BFF005DDFFF00
              423552BE42B7F125EA704B7615E93E178041A05BF1CBE5C9F5C9FF000C579B57
              A9E8800D12C87FD304FE42BD4C9E29D56FC8DB0EB56CD0A28A2BE8CEB0A28A28
              0397F1668CD7910BDB75DD344BF3A8EACBEDEE3FAD7095EC55CEEAFE14B6BF76
              9EDDBC89CF27032AC7DC763EFF00CEBC5C7E5CEA3F694B7EA8C2AD2E6D56E79F
              D15AD75E1BD56D49CDB34ABFDE88EECFE1D7F4ACF92D6E61CF9904A87B87423F
              98AF0E746A41DA5167338B5BA21A28A2B3B32428A28A40156AC751BAD3A6125B
              4A579E573956FA8AAB455427283BC5D98D369DD1E9BA26B316AF6BBC7CB32604
              899E87FC2B5735E65E1DBD6B2D6A06048495846E3B1C9C0FD71F957A68E95F55
              80C4BAF4AF2DD1DB4A7CD10AE73C5DA69BBD345CA2E64B7CB71D4AF7FF001FC2
              BA3A6BA2BA32B00411820D74D7A4AAD3707D4A94799599E3F455DD5EC1B4DD4A
              6B620ED07299EEA791FE1F506A957C6CE0E127196E8E069A7666A787AFFF00B3
              F5885C9C46E7CB7F4C1FFEBE2BD3BB578ED77D6DAF05F0AFDB59819E35F2883C
              92FD07F435ECE5589508CA127B6A74519A49A673FE2CD47ED9AA9851BF756E0A
              0FF7BF8BFA0FC2B0694B1762CC4924E492792692BC8AF55D5A8E6CC252726DB0
              AECFC17A6ED4935071CB7C91E7D0753F9F1F81AE4ECED64BDBC8ADA21F3C8C17
              E9EA4FB0193F857AADADB47696B14110C246A1457A594E1F9EA3AAD688D6846E
              EEC9E8A28AFA43ACAB7D671DFD9C96D28F924183EDE87F0AF2FBFB19B4EBB7B7
              9D70CBD08E8C3D47D6BD66A8EA5A55B6A90795709923EEB8E194FB1AF3B1F825
              888DE3F1232A94F9D1E57457477DE0EBE818B5A95B88FB0C8561F5CF07F3FC2B
              1A5D32FA0CF9B673A81DCC671F9E315F3B530B5A9BF7A272B84A3BA2AD14ACAC
              A70C083E846292B0B32028A28A002955991832B156072083820FB1A4A28D80EB
              FC3DE2776952CEFDF70380931FE4DEBF5FCFD6BB3C8AF1DAF46D23598E7D26DD
              E79944BB70D93C920E33F8E335EF65D8FBC5C2ABD8EAA552EACCDDA28A2BDC3A
              028A28A0028A28A0028A28A0028A28A0028A86399656709CAA1DA5BB13DC0F5C
              743EFC76A9A800A28A2800A28A2800AE0FE2E4BE5F81655CFF00AC9E34FD73FD
              2BBBAF37F8D32EDF09D9C63ABDEA93F408FF00D715BE195EB47D4C312FF7523C
              2A8A4A335F4A7CED85A293346680B0B452668CD01616BD23E0BCBB7C5B771E78
              7B263F8874FF001AF36CD779F08A5F2FC7512FFCF48245FD01FE95CD8B57A323
              A30DA5589F41D14515F387D0851451400507A1A283D0D0C0F26D47FE42777FF5
              D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA79CF7615EA
              BA3FFC816C7FEB827FE822BCAABD5747FF00902D8FFD704FFD0457AD937C7237
              C3EECBD451457D09D4141E868A0F434303C92FBFE3FEE7FEBAB7F3355EAC5F7F
              C7FDCFFD756FE66ABD7C3D4F8DFA9E73DD857AB695FF00209B3FFAE29FC85794
              D7AB695FF209B3FF00AE29FC857AF937C523A30FBB2ED14515F42749E77E31FF
              0090F1FF00AE6BFD6B02B7FC63FF0021D3EF1AFF005AC0AF8EC6FF00BC4BD4E0
              A9F1B0AEF7C1473A34A3D2623F45AE0ABA3F0CEBD06971CB05C8608EDBD59467
              9C6083DFB0AD72DAB1A75EF2D11546494B53BFA2B1078B347233F6A3FF007E9B
              FC2ACD96B7A7EA53186D67DF205DC41461C671DC7BD7D2C7134A4ED192B9D6A6
              9BD190F89AD4DDE853851968C798BF875FD335E6B5EC2CA194823208AF30D734
              C6D2B5278B1FBA625A33FEC93D3EA3A7FF00AEBC8CDE83BAAABE6615E3F6919B
              40E0E68A2BC3398F55D2AF9750D3A1B80465946EF661C1FD73576BCCF44D725D
              1E623064B773F3C79E87D47F9E7F2C77367AEE9D7AA0C572818FF0390ADF91AF
              AAC1E361560949DA48EDA751491A74B5119A3DBB8C8A07AE6B32FBC47A6D8A9C
              CEB2BFF7223B8FF80FC6BAE7569C15E4D1A3925AB2CEABA9C3A55A7DA2504F21
              42AF5627D3F9FE1587FF0009C5A7FCFACDF98FF1AE5F56D5E7D5EE4492FCB1AE
              76460E76FF00893DCD67D78388CD6A73FEEB639A55DDFDDD8EE3FE138B4FF9F5
              9BF31FE340F1C5A1200B59FF004FF1AE1EB7FC2BA49BFD405C48BFB880E738FB
              CDD40FC3A9FC3D6A6863F1556A28458A352727647A0C6C5E356652A48C953DA9
              E7A5141E95F49D0EB3C9F54FF90BDEFF00D777FF00D08D54AB7AA7FC85EF7FEB
              BBFF00E846AA57C556FE24BD4F3A5BB0AF54D17FE40965FF005C13F90AF2BAF5
              4D17FE40965FF5C13F90AF5326FE248DF0FB97E8A28AFA23A84AAF7D742CACA6
              B9285C46A5B6838CE2AC545730ADCDB4B0B7DD910A9FC462A277E576DC4CE5FF
              00E1398BFE7C9FFEFB147FC27317FCF93FFDF62B8E9E17B79E4864187462ADF5
              07151D7CC3CCB131766CE4F6B33B5FF84E62FF009F293FEFB15D4C5224D124A9
              82AE030FA1AF21AE9B42F14FD8615B4BC5668978575E4A8F423BFF003FAD75E0
              F326E7CB5D974EB5DDA4770F04527DF891BEAB9AACFA469D272F636E4FAF963F
              C2A2875ED2E700A5EC23FDF6DA7F235685FDA1E45D427FE062BD8BD19AE8CDFD
              D65093C33A44BD6CD41FF658AFF23583AEF8560B4B292EECDDC79632D1B1C823
              BF3D78F7CD74F2EB1A7400992F6018EC1C13F9572DAFF8A22BCB57B3B20C51FE
              FCAC31C7B0F7F5AE1C62C22A6EF6B99D450B3B9CA514515F327192DB922EA12B
              D43823EB915EBA3A0AF2ED0AD4DDEB56B181C070EDEC179FFEB7E35EA23D2BE8
              7278B50948EAC3AD05A28A2BDA3A0E5BC65A779F6497A8B978787C752A7FC0FF
              00335C2D7AF4B124F0BC522864752AC0F706BCAB50B37B0BF9AD5F27631009EE
              3A8FCC60D7CEE6F87E59AAA968CE5AF1B3E6456A7F9B2084C3BCF9658315F7C1
              00FD704D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A
              72692DD82573AAF05E9BCC9A848BEA91E47E67FA7E75D9557B3B58ECAD22B788
              61235DBF5AB15F6185A0A8D250477C23CB1B0B451457496737A978AE3D3B5096
              D1AD5DCC78CB06033900FF005AABFF0009CC5FF3E4FF00F7D8AA3E34B331EA31
              5D01F24C9B4FFBC3FF00AD8FC8D7315F398AC76269559413D0E59D49C6563B5F
              F84E62FF009F27FF00BEC56BE8BADC5ACA4A52231B46402A483D7A7F2AF33ABD
              A56A9369378278BE60461D09C6E1E9EC7D0D4D0CD2AFB45ED5DE228D677F7B63
              D48A2B0C15047B8AAEFA7594BF7ED206FF007A307FA566DA78AB4CBA51BA6F21
              CFF0CA318FC7A7EB5A49A958C83297901F712035EEC6AD0A8AE9A674A945EC57
              9340D2A5186B1847FBABB7F9551B9F07E972A9F292485BD55C9FE79AD67D46CA
              3197BB8147BC80565DF78AF4EB4422293ED127658FA7E7D3158D68E1127CF626
              4A16D4E12FECDEC2FA5B573968DB19F518C8FCC1155AA7BCBA92F6F25B997EFC
              8C491E9E807B01815057CAD4E5E67CBB1C4ED776D82AD4324CB100BD39C555AE
              F346D1223A45B34CA7CC65DC7F1248FD2B6C3509D69351E85422E5B1D3D14515
              F64778514514005145140051451400DEF58FA96A124B7C9A3D8B91772AEF9A51
              FF002EF16705BFDE3D147AE4F40418FC4DE218FC3F60AEA9E7DECEDE55ADB0FB
              D2C87803E9C8C9FEA453FC3BA44BA558B4977209F52BA6F3AEE6FEF3FA0F4551
              C01E83DEB451B479990DDDD91AB0431DBC090C4BB5114051E807D6A6A28ACCB0
              A28A2800A28A28010D7947C6F9F6E9DA45BF779247FF00BE428FFD9ABD5FBD78
              9FC6DB9DDACE9B6DFF003CEDDA4C7FBCD8FF00D96BAB02AF5E272635DA8B3CB2
              8A6E68CD7D09E1D87514DCD19A02C3A8A6E68CD0161D9AEBBE194E20F881A5B1
              E8CCE9F9A301FA915C7E6B6FC2371F66F176912E7016F22C9F62C01FD09ACAB2
              E6A725E46949DA717E67D4F451DA8AF993E8C28A28A00283D0D141E94303C9B5
              1FF909DDFF00D767FF00D08D55ADFBDF0D6AD2DF5C4B1DA128F2B329F313A139
              07AD41FF0008B6B5FF003E7FF9153FC6BE3EA61ABB9B6A2F7EC70384AEF431EB
              D5747FF902D8FF00D704FF00D045705FF08BEB43FE5CFF00F22A7F8D77FA6C4F
              6FA65AC32AE244855587A100035E9E534AA53949CD5AE6F422D377562E514515
              EE9D01487A1A5A0F4A181E497DFF001FF73FF5D5BF99AAF5BB75E19D5E5BC9E4
              4B3CA3BB107CC41904E477A8BFE116D6BFE7CFFF0022A7F8D7C754C2D7726D45
              EFD8E07095F631EBD5B4AFF904D9FF00D714FF00D045703FF08BEB3FF3E7FF00
              9153FC6BD074F8DE0D3EDA29061D235561E840AF5729A3529CA4E71B5CDE845A
              BDD16A8A28AF70E8386F1BDB32DE5BDD7F0BA6CFA1049FD73FA572B5EADA969F
              0EA566F6F38F95BA11D54F622B81D43C35A8D8B9DB119E3ECF10CFE63A8FE5EF
              5F399960E6AA3A91574CE5AB4DDEE8C7A29595909560411D41182292BC8B339C
              2BA4F057FC8665FF00AE07FF00425AE6EBA4F057FC8665FF00AE07FF00425AEB
              C0AFF6881A52F8D1DFD66EADA543AB599864E18728E072A7D6B4A92BEB2708CE
              2E32D8ED693566793DFE9F73A75C186E108239561D187B555AF59BCB2B7BF80C
              57312C887D7B7B8F4AE4B50F054A84BD84C1D7A8493861F43DFF001AF9DC4E57
              520DBA5AA396745AD51C9D1572E34ABFB427CEB49540EFB491F98C8FD6A9D799
              284A2F54D33169ADC28A29402C4000927A0032696A02515A36BA16A7787F7769
              205FEF38DA3EBCE33F85747A7782E38C892FE5F30F5F2D3217F13D4FE95D3470
              55EABD2365E65C69C99CF68FA2DC6AD38080AC2A7E7948E07B0F53ED5E8F6767
              0D85AA5BC0BB6341C7A9F7352430C7044238902228C0551802A4AFA2C1E0A187
              57DE5DCEAA74D405A0F4A283D2BB8D0F27D53FE42F7BFF005DDFFF00423552BA
              0BFF000DEAD36A3732C769B91E67656F3146416C8EA7D2ABFF00C22DAD7FCF91
              FF00BFA9FE35F1F570D59CDB517BF6385C2577A18F5EA7A2FF00C812CBFEB827
              F215C27FC22FAC8FF973FF00C8A9FE35DF6970C96FA5DAC32AED91225561D704
              003B57A794D1A94E6DCD58D6845A6EE8BB451457BA74851451401C8F8A7407B8
              26FED133201FBD4039603B8F538EDDEB8AAF62ED585AAF862CF512D2AFEE273C
              9741C13EE3BFE86BC5C765BED1BA94B7EA8E7A94AEEF13CEA8ADCBBF09EA96C7
              291ACE9EB1B73F91C7E99AC99AD6E2DF3E75BCB1FF00BE847F315E254A1569BB
              4E2CE7706B74434514565A8828A2A786CEEAE3FD4DBCB20FF6509FE429A8CA4F
              45760937B1052A2B3B05552CC4800019249EC056F59F84352B920CC12DD3B973
              938F603FA915D6697E1EB2D2F0E80C93E30647E71F41DABBF0F96D6AAEF25646
              91A3293D74455F0CE8874CB733CE07DA650323FB83D3FC7FFAD5D0D14B5F4B46
              94694142275C6292B20A28A2B5282B90F1A69DBA28EFD1794C2498F42783F9FF
              003AEBAA86B6AADA25E86C63C963CFAE2B97174954A328B2271528D99E594514
              57C79C015D7782F4DDCF26A120E17291E7F53FD3F3AE56DE07B9B88E08865E46
              0ABF89AF55B0B44B1B28ADA31F2C6B8CFA9F5AF532AC3FB4A9ED1AD11BD08DDD
              D96A8A28AFA63AC28A28A00A1AAE9D16A962F6F2719E55B1F7587435E677B637
              1A7DCB5BDC21561D0F661D883DC57AD554BED3AD75287CAB98838EA0F707D41E
              D5E763B02B10B9A3A491954A6A6794515D55FF0082AE2325AC6612A7508FC37E
              7D0FE958571A46A36C4896CE618EA42923F31915F3D57095A93B4A272CA9CA3D
              0A54529041208208EA0D2573D99214514E48DE46DA88CC4F65049FD29D9BD006
              D15A76BE1ED52E9BE4B4745FEF49F2E3DF9E7F215D1E9DE0B8A26125FCBE6B7F
              CF34C85FF135D547035AABD159171A52662F877429353B859E65C5A21F989FE3
              3FDD1EDEB5E8C06000053238D224548D55540C0503005495F4984C2C70F0B2DF
              B9D70828AB0514515D6585145140051451400DCF355352D46D749D3A7BFBC904
              7042A599BBFD07A927000F5AB4C40192703BD791EB3A84DF11FC5F0E85A7BB2E
              8F6AC5E6957F8F1C16FE8BF5CF7E36A14BDA3BBD96E67527CAB4DCDBF075B5D7
              8A75B97C61A9C65625262D3A03C88D724161EA7A8CF724FA0AF43A82DADA1B4B
              686DADD0470C4A1111470A00C0153D4D59F3CAEB6E83847956BB8B4514566585
              1451400514514009DEBE7DF8C173E778DDE3FF009E16F1C7F4CE5BFF0066AFA0
              8D7CC7F102EFED9E38D5E5CE76DC18FF00EF8017FF0065AEFCBA37AB7EC8E0C7
              CAD4D2F339ACD2668A2BDC3C80CD19A28A00334668A28016A6B499ADEEA3997A
              C6C1C7D4107FA5414E4386149ABA03EBE8DD5E3565395201069F58DE16BBFB77
              8574AB92725ED632C7FDADA33FAE6B62BE5A4ACDA3E922EE93168A28A4505145
              1400514514005145140051451400514514005145140051451400514514005145
              14011BC51C830F1AB0F4201A80E9B644F36901FF00B66B56A96A1C22F742B153
              FB36C7FE7CE0FF00BF63FC29F159DB40C5A1B78A3623194400D4F4B42A715AA4
              16414514558C28A28A00303D2A292DE197FD6431BFFBCA0D4B454B8A7B815469
              F680E45AC00FFD73153245120F92355FA0C549452508AE82B0514515630A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802
              16B581CFCD0C67EAA0D47FD9F679CFD960CFFD731FE15668A8E48F6159112DB4
              09F7618C63D140A9703D2968A6A296C8614514550051451400D270335C7FFC27
              5FF50FFF00C8DFFD8D7607EE9AF1EAF2733C4D5A1CBECDDAE635A6E36B1D8FFC
              277FF50FFF00C8DFFD8D64EADE26BAD521300458613F7954E4B7B67D3F0AC4A2
              BC6A98FC4548B8CA5A339DD593566C28A2A5B5B692EEEA3B78572EED81FE27D8
              75AE549C9A4B766695F43A7F05E9BBE79350917E54F923CFA9EA7F2E3F135DB5
              55B0B38EC2CA1B68C7CA8B8CFA9EE7F139AB55F5F84A0A85250EA77C23CB1B0B
              4514575161451450014514500146051450046D146E3E6456FA806A16B0B46FBD
              6D09FAC62AD5152E117D0562BAD95B2FDDB7887D1054AA8AA30AA00F614FA285
              18AD900514515430A28A2800A28A2800A28A280128A2B99F1B78A62F0B688D38
              2AD793652DA33CE5BFBC47A0EA7F0F5AA84253928C7764CA4A2AECE53E2878C8
              DAC6FE1FD3A4FDFCAB8BA914F28A7F807B9EFEC71DF8E87E1E785C787340569D
              36DFDD8124F91CA8C7CA9F803F9935E77F0E34093C45E259356D4374B0DB3F9A
              ECFCF9929E467D79C93F400F5AF74AEDC538D282A10F99CF4539C9D497C85A28
              A2B80EA0A28A2800A28A2800A28A28018EC110B31C003249AF92B51B937BA85C
              5D367334AD21CFAB127FAD7D3DE2DBE1A6F84F55BB27694B670A7FDA230BFA91
              5F2C3FDEAF5B2C8E9291E56612D6311B451457AA79C145145001451450014AA7
              0C3EB4945007D1FF000B2EC5CF806C549CB40F2444FD1891FA115D9F7AF2CF82
              77C24D1F52B1CFCD14EB363D9971FCD3F5AF53AF9BC54796B491EFE1A5CD4A2C
              5A28A2B0370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A2A
              96ADA9C3A3E9773A8CEAED0DBA191D6300B103D01207EB4257764265DA2B9CF0
              B78CB4FF0016FDA8D843751FD9B687F3D546776718C31FEE9EB8AE8E9CA2E2ED
              2409A7AA168A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128A81AF2D925F29AE22593A6D2E01CFD2AC50D0051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400D3F74D78F57B1565FF00C23BA4FF00CF9475E6E61839E279795DAC
              65569F3DAC798D15E9DFF08EE91FF3E317EB4E5F0FE94BC8B187F119AF3BFB1A
              AFF3232FABCBB9E696F6D35D4AB15BC6D23B7F0A8FF381EF5DF787B405D2A3F3
              A6C35D38E7D107A0FF001AD982D60B65DB0431C4BE88A07F2A9ABD0C265B0A12
              E793BB3585251D7A8B451457A66A145145001451450014514500145145001451
              4500145145001451450014514500145145001451450055BEBD834EB29AEEEA41
              1C10A17763D0015F3AF8835ABCF17F88DAE76390EC22B68072557385503B924E
              4FA93F4AEB7E29F8ACDFDF7FC23F6527FA3C0D9B9653F7DFB2FD17BFBFD29BF0
              A7C3E2F75893559933059711E4706523AFE0327EA41AF5F0D4D61E8BAD35ABD8
              E0AD37566A9C76EA7A6F857418FC39E1FB7B05C1900DF330FE273D7F0E807B01
              5B74B495E4CA4E4DC9F53B631515642D145148A0A28A280128E954357D5ACF43
              D325D42FE431DBC406E2064F24018039EA4572327C5EF0AC60625BA7CFF7603F
              D6AE14A73D62AE672AB083B499DF52579FFF00C2E3F0B7ADEFFDF9FF00EBD656
              B5F19F4E5B264D1AD6796E98615E740A89EF80727E9C7D6B48E16B376E5644B1
              3492BF3117C63F12A25B43E1FB77CC8C44D7383F740FBAA7EA79C7B0F5AF1827
              2726AC5EDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9556EF5EEE1E8AA50513
              C6AD55D49B930A28A2B7310A28A2800A28A2800A28A2803AEF877E235F0E78A2
              19A77DB6938304E49E15490437E040CFB66BE920DB86460823208AF90012A6BD
              37C17F155F45B34D3B598A6B9B58C622963C1741D94824023D39C81EBC63CCC7
              615CDF3C16A77E0F12A1EE4B63DD28AF3FFF0085C7E16FFA7DFF00BF1FFD7A54
              F8C1E157700BDE2E7B9838FD0D79BF56ABFCACF47EB14BF98EFE96B9EF0F78C7
              46F13CF345A6CEEF242A1995D0AF0491919EBFFD715D0D6528B8BB491A465192
              BC5894D660AA59880075269F5E5FF19357BAB4D36C34D81D923BB2ED31538DC1
              76E17DC12DC8F61574693AB3505D4539A84798E9AFBE2278574F90C72EAD1C92
              0EA204693F55047EB55E0F89FE139D827F693444F00C90381F9E3F9D73DE0AF8
              73E1EBFF000ED9EA37CAD7D2DC26F23CD654439FBA02907231839279CD6D5FFC
              2AF0BDD5BB25BDACB6929E92453331FC431208AE970C2C5B8B6EFDF43252AAD5
              D58EC2CEF6D750B75B8B3B88A785BEEBC4C181FC4558CD78CF81B4AF12785FC6
              A6D1ECAECE9B248D0CD288DBCA6033B5C1C6072060FA123BD7B35615E92A72B4
              5DD1A539392BB56168A28AC4D028A28A004ACCF105BD9DD6817D06A33B4166F1
              1134AA402ABDCE483FCAB4EB9EF1CFFC891AC7FD7B35553579A44CB48B666F80
              B49F0E698B7FFF0008F6A925E890C7E76F915B66376DC61475C9FCABB3EF5E4B
              F047FD5EB7F583FF0067AF5AADB151E5AD257B9145A704C5A28A2B9CD428A28A
              004EF41200C9A2BCEFE2EEB175A7F876DED2DA468FED92149594E328064AFD09
              C67D4023A13574A9BA93505D499CB962E46EEA1F103C2FA64AD0CFAB44D22F05
              61569307D095040FC6AA45F147C252B6D3A8BC79EEF04807E82B96F00FC3ED03
              56F0EC1AA6A1BEF2598B031894AAC786231F29049E33C9EE38EE7A6BBF859E15
              BA85962B292D9CF49229DB23F06247E95D5286160DC257BA3152AB25CCAC7556
              1A8D9EA76C2E2C6EA2B8849FBF13861F4E3BD5BAF13F0CE89E24F08F8F16182C
              EF26D3DE7F22699626F2E48CF01CF618C839ED82338CD7B65615E9469CAD1774
              694E6E4B542D1451589A051451400954353D634ED16149B51BB8ADA376DAAD21
              C02719C55FAC2F13785AC7C55690DB5FBCE91C4FE62985829270473907D6AA0A
              3CCB9B62657B6878B6BFA9D95CFC53FED186E637B3FB640FE703F2ED013273E8
              307F2AF6AB3F17787EFEEE3B5B5D56DA69E43848D5F258F5E2BC2B58F0FDA587
              C41FEC285E536BF6A8A2DCCC37ED60B9E40033C9C715EB7A3FC30D1345D5ADF5
              1B69EF9A681B72AC92295270473851EBEB5E9E3234792176F6D0E5A2E7CCCEDE
              8A28AF28EC0A28A2800A28A28012B1756F16685A1B14D435286293AF9632CE3F
              E02A09AE77E2678BA6F0EE99159D83ECBEBBC8120EB120EAC3DCE700F6E4F615
              C77837E19BF882D1757D6AE668E09C978D10FCF2E7F8998F63DB824F5C8AEBA5
              878F27B4AAECBF3309D57CDCB0DCEE97E297849DF6FF0068C8A3A6E6B7931FCA
              BA4D3759D3B5883CED3AF21B941C131B0254FB8EA3F1AE526F84BE1792128915
              D44D8C798939247E0723F4AF37F10681AB7C37D72DEF6C6F19A190930CE38CE3
              04A38E87B71D0F5E3040D23468567CB49B4FCC9752A43592D0FA0A8AC8F0D6B5
              1F88740B4D4E31B7CE4F9D7FBAE0E187D320E3D460D6C570B4E2DC5EE7427757
              414514521851451400959179E26D174FBFFB0DDEA56F0DD703CA66C373D38FC4
              56BD7807C4E99A0F88B3CCA0168D61600F42428233F957461682AD3E56EC655A
              A7246E7B96A3AB69FA441E76A1790DB467806570371F607927D8573E3E25F844
              C9B06AE33EBE44807E7B715CAE87E02BAF166DD7FC59793BBDC80F15BA1DB843
              C8C9E76839E14631D49C922B7AEBE14F85E7B668E1B69ADA4C7CB2A4CCC41FA3
              123F4AD153C3C5F2CE4DBF2D89E6A8D5E28EBAC351B2D4EDC5C58DD457109E8F
              13861F4E3BD41AA6BDA5689187D46FE0B6C8CAABB7CCDF451C9FC057CFFA7EAB
              AAF813C497D05AC81A58D9EDDD0E76484642B63B9070477EDDCD7A168BF0C0EA
              4A354F15DD5CDCDF5C61DA10F8DB9E70C7A923D0600E8335553090A4F9A72F75
              EDDC98D694B48AD4E8E3F895E12965118D5D413C02D0C8A3F32B81F8D74D6B77
              6F7B6C9716B3C73C2E32AF1B0653F422B87D53E137876E6C9D2C6296CEE369D9
              209598671C64313C7D315C57C2AD56EF4CF17B68D23B791721D5E3272164404E
              47A70A47BE47A0A4E852A94E53A4DDD771FB49C6494FA9EEB45145711D014514
              5001451450025676A9AEE97A24424D4AFE0B607EE876F99BE83A9FC0558BEB83
              67A7DCDC88DA430C4CE11464B601381EFC5786685E18D5BC71E299EE35D17904
              7832CD2346549190022EE181D78EB800D7450A319A729BB2465526E365147A43
              FC53F092B6D17F2B8F55B793FA8AD0D37C79E19D565586DB568BCD6E024A1A32
              4FA0DC064FD2A847F0BBC231A6D7D39E438C6E6B8933FA3015C27C48F03E93E1
              CD3E0BFD35DE2F326F28DBBBEE04609CA93CF18E724F51D3BEF0A785A92E48DE
              E44A5560AEEC7B7515C77C33D527D53C156CD72ED24B03B425D8E490A78CFE04
              0FC2BB1AE2A9070938BE86D19732B8B451454941451450014D2428249C01DE96
              BCD7E306B17563A2D9D85BC8D1ADEBB09594E095503E5CFA12C33EB8F4CD694A
              9BA93505D489C9462E4CE8AFFE21F85B4E95A29B568DE45E0AC2AD27EAA08FD6
              AB43F143C272B05FED178CF63240E3F5C71F8D733E05F879E1FD4FC3B6DA9DF8
              6BD967049412954420918C2907231CE4FE15D0DEFC2BF0ADD40C90D9CB6B21E9
              24533123F06247E95D3286160DC5DEEBA99295592BAB1D6596A169A95BADCD95
              CC3710B74789C30FD2ACE0578BF84346F127853C742D96CEF24D35E6304D2AC4
              DE5BA1CED7CF4183839EDC8CF26BDA6B0AF4D5395A2EE8D29CDCD6A85A28A2B1
              3412B93F1F78A4786741668587DBAE731DBAFA1EEF8F419FCC8AE9EE278AD6DA
              5B899D522894BBB374007249AF9CFC4DAF4BE2AF114D7EFB85BAFC9021FE1407
              8FC4F24FB9F615D982C3FB59DDEC8E7C4D5F671B2DD9931A48ED921A49A56C01
              D4B313C7D4926BE8DF0AE88BE1FF000EDAD8003CD55DD330FE290F2DFE03D80A
              F21F86FA40D63C631CCEB9B7B05F3DB2382F9C28FAE79FF809AF78AE8CCAADDA
              A6BA18E0E9E8E6FA8B451457967705145140051451401E5BF1A6FA48F47D36C5
              4909713348DEFB00C0FA65B3F80AF1173F363D2BDFBE2DE8736A9E1A8EF6D90B
              C9612191940C9319186FCB00FD01AF0190739ED5EEE5ED7B1B2DCF0F1A9AAD76
              328AD282D04B02B8E7239FAD49F60F6AECE639D45995456AFD83DA8FB07B51CC
              8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456
              AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB
              07B51CC83919934BD2B57EC200248C0159840321DBD0938FA534D3D84D58ED7E
              17DF4965E3CB154384B85785C7A8DA48FD403F857D140D782FC24D0E6BEF14AE
              A8C87ECB62AC4B11C1919480A3D70093ED81EA2BDE8578798B4EB687AD97A6A9
              6A2D731E31F08DB78BB4E8E0925305C42C5A1980CED27A8238C83819E47415D3
              57937C5597C41A56A36FA8E9FA8DF416134623610CCCAA92027A81C0C8C63D48
              35CF868CA55172BB33AEAB4A3A98FF00F0AF7C73A03B3691745D49CFFA25D18C
              9FA862A0FEB41F11FC4BD139BA86F1E24EBE6DA0917F16033FAD75DE19F8A5A3
              5E69D047ABDC1B4BD440B2191495908182C08071EA41C633F8D6C5D7C45F0ADA
              C658EAD1CA4745895989F6E05773AB5B9B96A53E6F9182842D78CAC733E13F8B
              0754D4E0D3F58B48E1927611C73C2485DC4E002A4923278C8279238C735EA1C5
              7CF009F197C4913E9768D0C73DCA49B4000A22E373B63804E093EE71C93CFD11
              5CF8DA70A6E3CAAD75AAEC5D094A49DF5168A28AE33A028A28A004AE7BC73FF2
              246B1FF5ECD5D0D73DE39FF912358FFAF66AD28FF123EA899FC2CE1BE08FFABD
              6FEB07FECF5EB75E49F047FD5EB7F583FF0067AF5B15BE3BF8F2FEBA19E1FF00
              86828A28AE4360A28A28012B03C59E18B5F16691F629E4313ABF9914AA325187
              1D3B8C1208ADFAF2FF008AE75DD3DACF54D32FEF60B3DBE54EB04CCAAAD9CAB1
              00F7CE33EC07715B61E329544A2ECCCEA34A3A9CFB7C37F1A6852B49A3DE07C9
              EB697262623DC1207E19341D73E26E8BFF001F10DF491AF5F32D5655FC58027F
              5AE97C23F1434B974AB7B5D6EE1EDEF21508D348A5965C7462464827BE7FAD74
              53FC43F0A5B465DB5885F1CED8D5989FC00AEE9D5AFCDCB529A97C8C1469B578
              CAC721E1BF8BB25CEA10D9EB967144246082E20C80A49C0DCA49E3D483C7A57A
              C66BE73D7271E39F1D13A3DA320B9658D72A031C000BB01C0E393EC2BE8B0300
              7B0AC3194A10E571566D6A8BA1293BA7AA1D45145711D0145145001451450078
              17897FE4B29FFAFF00B7FE495EF95F3F78D66FECEF8AF3DDCCADB22B9826381C
              950A878FC8D7B058F8DBC3BA95CDBDADA6A91CB3CE711C611B24E33D08E381DF
              15E8E3212953A6D2D2C72D192529267454514579C7505145140051451401E11F
              188B9F18C01BEEFD8936FD373D6F59689F12D6C6D85AEB368B6E225F29432F0B
              818FE0F4C569FC53F0A5C6B5A743A9D8C464BAB3043C6A32CF19E4E3D483CE3B
              827BE2B0FC13F13EDAC34E874AD744AAB02848AE5177614700301CF1D0100E46
              38EE7D68CA53C3C7D9A4DADD1C6D2551F3697343FB17E29FFD06ED7FEFA5FF00
              E22A86ADE0CF883AEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB29
              7E25F84E28778D543F190A90B927FF001DE3F1AF3CD77E21EB9E25D720B4F0D1
              BAB68B25238E3C6F9493F79B19000C74CE00C927D2693AF295F912B756AC39FB
              34AD76CF44F87DE1FD43C37E1F96C351688C9F686913CA62C02955EE40E720D7
              5B597A0DA5ED8E8B6B6FA85DBDD5E05CCD331CE58F240F619C0FA56A579D564E
              5372674C1251490B451454141451450025780FC4A8D65F8932C6C3E56F254FD0
              AA8AF7EAF04F88BFF2539BEB07FE82B5DF977F15FA339B13F0A3DE9405501400
              00E829D476A2B80E93C0F558525F8D22375051B5287231C1FBA483F5AF7B15E1
              1A8FFC96F4FF00B08C3FFB2D7BB8AEEC6BD29FA1CF43797A85782785C05F8CD8
              51802FAE4003B0C495EF75E09E19FF0092CDFF006FF73FC9E9E0BE0A9E815FE2
              89EF945145701D0145145001451450053D46FEDF4BB09EF6EA40904285DC9F4F
              F1AF279FE28F88B5ABF6B5F0E69436F55FDD9964C6719383803F023DEBB9F889
              6173A8F81F5082D559E50164D8A32582B06231DF8078F6AF32F863E2ED2FC393
              5EDBEA64C297250ACE14B005723040EDCE41C7AE6BD0C3528BA32A96E692E873
              569B5351BD91B6B6FF0016352FBF37D910F4CB4298FF00BE416FCEB9FF001778
              335DD33473ACEBBAB8BB9FCC58D537B4840393F79B18C63A00457A94DF117C29
              045BCEB11BF7C223313F8015E6FE38F175D78C74E9574CB199747B1759279DC0
              05989DAB9E70072703249CE4E315B61E759D45EE28AF4B115230E5DDB3B3F841
              FF00225BFF00D7DC9FC96BBFAF21F857E2DD334FD34689772B477535DFEE06C2
              43EF0A072338E41EB81CD7AF57162E2E35A5736A2D382B0B45145731B0514514
              005739E2EF0A5AF8B34A5B49A530CB1B6F866519287A10471907B8CFA57455E5
              7F15DF5ED32E6D753D3B50BD82C993CA9560999551F248240E390719F6F715B6
              1E329544A2ECCCEA34A3A9867E1D78DB41919F48BBDE09EB697263247B86201F
              A64D075EF899A2FF00C7CC37B246BD7CCB5122FE2C013FAD751E14F8A3A4DC69
              76F6FACDCB5B5EC4811E4914B2CA471BB201C67BE71CD6F5CFC44F0A5B445DB5
              789FD16356627F002BBA556BA972D4A6A5F2305085AF1958E53C2FF169EFB528
              6C75AB48E133308D678490AAC4E06E524F07D73F87A7AA57CEBA849FF09BFC42
              2FA4DA3C4B732A003182140019DB1C0E0127FA9EBF458E9586329C20E2E2ACDA
              D8BA1294AE9EA828A2A86B1AA5BE8DA4DCEA372711408588CF2C7A003DC9C01F
              5AE249B7646EDD95D9E79F167C4E62B78FC3F6927EF66C3DCE3A85CFCABF8919
              3EC07AD796B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80
              C01EC0552BB72F3045C9038C0EE6BE970D4551828F5DD9E356A8EA4EE7B67C26
              D28597851AF5D7F7B7D297CF7D8A76A8FF00D08FE35DF551D1EC574CD1ACAC57
              1882048CE3B9000CD5EAF9EAD3F695252EECF5A9C7960A22D1451599A0514514
              0094B51B3AC6859980503249ED59969A91D5E42D619FB129C1BAED291DA3F51E
              ADD3B0CF24349B15CD56008C11915E7FAF7C24D13569DEE2CA4934E95CE59625
              0D1E7D429E9F4040F6AF41ED45542A4E9BBC5D88A94E1515A48F1E8BE0CEA168
              C7ECDAEC0CA7F864B7201FC98D4BFF000AAB5CFF00A0969BFF007E9FFC6BD728
              C5747D76B7731584A4BA1E47FF000AAB5BFF00A0969BFF007E9FFC68FF008555
              ADFF00D04B4DFF00BF4FFE35EB9452FAED5EE3FAAD3EC791FF00C2AAD6FF00E8
              25A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD
              3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF
              008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3F
              E1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00
              E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FA
              AD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3
              FF008D7AE5147D76AF70FAAD33C7E4F843ABDCAEC975AB48D4F511C0DCFE66AD
              E9BF04EC60943EA1AACD70A0E4C7145E583EC4E49FCB15EAB45278CACD5AE0B0
              94B7B14B4DD2ECF48B18ECEC6DD208231F2A20EFEA7D4FB9ABD4515CCDDF5674
              2492B20A86E6DA0BCB77B7B9852685C61E391432B0F420D4D451B0CE16F7E13F
              85EEE42F1C3736B939220978FC03038FC2A083E0FF0086A17DCF25FCC07F0BCC
              A07FE3AA0D7A0515BAC4D6FE6667ECA1D8CCD2340D2F4180C3A659456EA7EF15
              1966FAB1E4FE26B529296B06DB7765A496C145145030A28A2800AAB7F636FA9D
              8CD65771F996F32ED913711907A8C820FEB56A8A36D85B98DA1F86347F0E09FF
              00B2AD3ECFE7EDF33F78EFBB6E71F789C753D3D6B628A29B6E4EEC124B442D14
              51486145145001514D0C5710BC5346B246E0AB23A82187A107AD4B450070F7FF
              000AFC2F7B29912DA7B42C727ECF2E07E01B207D00AAD17C1EF0DC6C0B4BA84A
              07679971FA28AF40A2B7589AC9594999FB287632746F0D691A046534DB18E02C
              3E67E59DBD8B1C93F9D6B52D2560E4E4EED96925A2168A28A061451450014514
              500739E22F0668DE276492FEDD84E836ACD136D70339C67A11D7AFA9F5ACDD1B
              E19685A1EA906A16F2DEC93C2DB93CD91480704740A3D6BB4A2B455AA28F2F36
              847246F7B0B451456658514514005145140095CC6B5E01F0EEBB334F736023B8
              6CEE9606D8C49EE71C13EE41AE9E8AA8CE50778BB09C549599E7A9F077C36926
              E33EA0E3FB8D2AE3F45CD757A3786347F0FA15D32C62859B867E59D87BB124E3
              DB35AF47E3573AD526AD29364C69C56A90B451456458514514005145140095CF
              EA3E0AF0FEADAA7F695ED879B7676E64F3A45FBBD380C0718F4AE828A7194A2E
              F176138A7B8B45145219CFC9E0CD066D6C6B3258675012097CEF39FEF0C60E37
              638C0ED8ADFC514537272DD8924B61338AC0B5F05E8167ACFF006BC161B2FBCC
              693CDF3A43F336771C16C7393DBBD7414B4464D6898349EE1451452185145140
              0514514009DAB94D5BE1E786B57B86B89AC3CA99B967B772993EA40E33EF8CD7
              5745542A4A0EF176265152DD1C4DB7C2AF0ADBB876B59A7C769666C7E4315D4C
              5A5D843A79B08ECE04B32A50C22301083D411D39ABB4539D59CFE27708C22B64
              7316BE01F0C59DFC57B6DA5AA5C44E1D184AE42B0390402D8FD2BA7C514B5329
              CA4EF2771A8A5B05145148614514500150CF0457503C33C692C4E30C8EA19587
              A107AD4D45170387BDF855E17BC90BA41716A49C9104B81F806C81F41C55687E
              0F786A270CF2DFCA3FBAF32E3F4507F5AF40A2B7FACD64ADCCCCFD943B195A3F
              87B49D02131E996515B86FBCC012CDF563927F135AB4B4562DB93BB2D24B612B
              C7FE2EF880CF756FE1FB77C88C89AE307F88FDD53F40738F715EA9A9DFC3A5E9
              9737F39C456F1991BDC01D07BD7CDA6E66D5F58B9D46E4EE92573237A024F007
              B0E83E82BD0CBA8F34FDA3D97E67262EA72C7956EC70516F6DFEE8C9F735534A
              025D6AC95C8C35C46189E982C33563516D96E147F1102B36291A195254387460
              C0FA10722BDA49B8B3CD8BB3B9F588E94B59DA36A96FAD6936DA85B3068E640D
              8073B4F707DC1C8FC2B42BE51A69D99EEA69AB8514B597ABEBFA5E871799A8DE
              C70E7954CE5DBE8A393F80A6937A206D2D59A7587E20F15695E1BB7325F4E3CD
              232B0272EDF8761EE702B81F107C50BAB806DF4781EDD5CED591C6E95C9E0055
              190BFA9FA1ABFE11F004B34EBADF89834D72E77C76B212DB7FDA7CF56F63D3BE
              4F4EA58654E3CF5B4F2EACE7759CDF2D3D7CCB9A75B6AFE3875BED695ECB4304
              343A7A121AE0750D21E095E9C719F4C727BC8E348A358E35088A005503000F61
              4E14715CF39F374B236847956BB8EA28A2A0B0A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803CD3E306B3F65D12DB4A8CE1EF2
              4DF201FDC5C7F3623F235E5F6116CB5048E58E4FF4AD8F89FA91D43C6F731839
              8ED55604FC064FFE3CC47E154E34091AA8EC00FD2BE870B0F67422BBEA78F899
              F3547E466EAA0858FD326B32B7EF2DBED3015040607209F5AC66B4B846C185C9
              F6191FA575C24AD63046BF87BC5FABF865D8584E0C2E72F04A37213F4C823F02
              2BAE3F19F54F2F1FD97661FD4B363F2CFF005AF3F8F4EB990F29B47AB1C55D8F
              4E8205DF3B06C7273C0158D4A1426EF28EA6B1AD38E899BD77F10FC57AC0648A
              E92CE16E0FD9936E07B31CB0FC0D63DADA5D6A1A92DBDA24B7FA8CC7924963EE
              493D00EE49FAD6AE81E1CD53C573F97609F67B153892EDD4851EA14773EC3F12
              2BD93C39E17D3BC3163E45947995BFD6CEFCBC87DCF61E83A57256AF4B0EB969
              A5736A74AA56779BD0C6F07FC3FB6D00ADF5FB2DD6A8467791948BD907F53CFD
              39CF6D494B5E3D4A92A92E693D4F46108C15A214514541614514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              45145001451450014514500145145001451450014514500145145007CB9AFCA6
              7F11EA531EAF772B73EEE4D6BC4C24895C1C86008A87C73A44DA378B6FE29108
              8E695A785BB32B12463E8491F5158F6BA84D6CBB570C9E87B7D2BEA2369D38B8
              ED63C39A6A4D3DCE8314100024F00773592355B999D638600D231C2800B127D0
              01D4D759A2FC38F10EBA565D498E9F6A4E7120F9C8F6418C7E38FA1ACE728D35
              79BB0A14E53768A39F6BBF3675B6B489EE6E1CED548D4924FA00393F85777E1B
              F85F3DD3A5F7895C841865B28CF5FF00788E9F41F98E95DD787BC23A478662C5
              85BE66230F3C9F348DF8F6FA0C0ADEAF32BE3DCBDDA7A2FC4F428E114759915B
              DBC36B02416F1245120DA888B85503B003A54D4515E75CED0A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A28032F59D0F4CD6ED0C3A959C7708BCAEEC82A7D88E47E15E7BA7F82BC3
              D3EAE60934FDD1E7A79D20FF00D9A8A2BB309392A72B3392BA5CE8F42D2F42D2
              B481B74FD3EDEDF8C16441B8FD5BA9FCEB528A2B924DB7A9D105A05145148B0A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2803FFFD9}
            Stretch = True
          end
          object RLLabel138: TRLLabel
            Left = 168
            Top = 8
            Width = 485
            Height = 45
            Caption = 'TESTE DE IMPRESSORA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -40
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand9: TRLBand
          Left = 38
          Top = 125
          Width = 718
          Height = 41
          BandType = btColumnFooter
          object RLImage4: TRLImage
            Left = 613
            Top = 0
            Width = 105
            Height = 41
            Align = faRight
            Picture.Data = {
              0A544A504547496D61676563660000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080183036B03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A28010FAD63DE6B891CC6DECE36B9B81C10A70ABF535475BD5DE6B83A75A49
              B40FF5D28EDFEC8FF3ED55ADE586D2211C2A14773DC9F526BC9C4635B9385376
              EEFF00C8873D6C8BDE4EA777CDD5F8801FF96702F4FC7AFEA68FEC788F26FEF4
              B7A9947F8557FB78F5A3EDE3D6B97F72F596AFCD8B9895AC2FADFE6B3D52427F
              BB2F23F5CFF2A587C433DA4A21D52DF664E04B1F23FCFD3F2A87EDE3D6A39AE6
              39E331CAA190F506973FB377A32B796E839BB1D5452C73C4B244EAE8C32194E7
              34FAE12CF509343BC186692CDCF2BD48FA7BFF003FE5DC452A4D12C91B064600
              823B835EA60F16B111B3D24B72A325224A28A2BB4A0A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A4C52D432DD416F8F3A78E3CF4DEE07F3A16B
              B05EC4D45311D255DC8EAEA7BA9C834FA0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A004ACFD6AFF00FB3B4A9AE0
              7DFC6D4F763D2B42B8FF001DDC158ACEDC74666723E8001FCEB971755D3A3292
              22A4B962D9CD477850139259892C4F524F734FFED03EA6B37751BABE46F2EE70
              FB46697F681F5347F681F5359BBA8DD4F9A5DC39D9A5FDA07D4D1FDA07D4D66E
              EA3751CD2EE1CECD092F04A855B906BA8F06EA2648E5B073CC637C7F42791F99
              1F9D70FBAB57C357260F105A91C072508F5C823F9E2BA7055654F1117DF72E9D
              4F791EA1451457D71DC145145001451450014514500145145002514561788BC5
              7A5786ADFCCBF9FF007AC331C09CBBFD07F53C538C652768A265251576CDC270
              39AE1FC45F13B46D14B41687FB42E875585BE453E85B9FD335E7DE21F17EB9E2
              B2D16E361A69E90213971FED1E0B7D381EDDEB1A1D3EDA000EC0EDEAFCFE9D2B
              D4A3804B5ABF71C35719D205FD5FE20F89F5B2CA972F6B01E91DA02BF9B7DE3F
              9E3DAB9498CCD2169CB990F24B9249FA935D3E401C0000A8E7892788A4801047
              071C83EA2BD18724348C51C52A9293BC999FE1EF126A1E1BD423B9B399C20606
              484B1D922E790474E9DFA8ED5F4AD9DD477D6505DC27314F1AC887D430C8FE75
              F2A32947653D54907F0AFA5BC1AACBE0DD1B7F27EC919FC368C7E95C19A538A5
              19A3BB0736EF13768A28AF20EF0A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A28012B86F1F822E2C5BB15703EBC7F8D7735CB78E
              ACCCFA32DC28F9ADDC31FF0074F07F5C571E360E7424919574DD3763CFB7D1BE
              A0DD46EAF9AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF
              5A1A082FAF58A8EBE729FC0727F95646EAE9BC0F686E75CFB411F25B21627B6E
              20803F226B6C3D2E6AB14BB9A526E53491E99DA8A28AFAB3D60A28A2800A28A2
              800A28A280128240193C555BEBEB6D3AD24BABC9D21823196773802BC7BC59E3
              BBAF10EFB4B167B3D2B90CE789271EFE8A7D3BF7F41BD0C3CEB3B2DBB98D5AD1
              A6B53A5F157C4A8ED9DF4FF0FECB9BA190F72798E23EDFDE3FA7D7A5799CC4BD
              CC97BA85C34F72E72D2CAD9FCB3FA7E95485CB1616F61033B1E00452493EC072
              6ADA783FC5179FBCFEC7BD3EEF1EDFC81C57B74A8D2A0AD74BCD9E6CE752B3BF
              4219356897845673EBD05423586CF308C7B373FCAA0D4349D474A7097F65716C
              C7A79B19507E848C1FC2A9D75463092BAD518B5676674905C25C461D09C7420F
              507D2A4CD63E94E44922E78201FC8FFF005EB4A594451339FE104D6528D9D913
              6311A27BAD40C51296925976A01DC93803F335F5258DB259585BDA47F7218963
              5FA28007F2AF04F869A41D57C676D232E61B3CDC3F1DC70BF8EE20FE06BE83AF
              3333A979C60BA1E9E0E168B977168A28AF2CED0A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A867812E209219543248A5581
              EE0F06A6A29349AB303C635BD2E5D1B5292D6404AE7746E7A3293C7E3D8FB835
              9DBABD8F5AD16D75CB2304EA55D798E403943EA3FC2BCA75AD0EFB4398ADD467
              CA2709328251BF1EC7D8F35E262706E9C9B8ABA3C6C4D09527CCBE1296EA3755
              6F397FBC28F397FBC2B9391F638FDAAEE59DD46EAADE72FF007854F690CD7F70
              B05AC4D34ADD1501FCCFA0F73C50A9B6EC9046A733B2DC91034B22A22B33B101
              540C924F00015EB5E19D1868DA52C6E337121DF291EBE9F41FE27BD67785FC22
              9A4E2EEF36C97847CA07DD8FE9EA7DFF00C9EB2BD7C1E17D9FBF2DCF630B41C1
              734B762D14515E81DA145145001451450025656B9AFD8787B4F6BBBE976AF444
              5E5E46F451DCD55F1278A2DFC3D6E89B1AE7509FE5B7B48B9790FF00419EFF00
              D6B97D3FC11A97883501AC78B6E0976FB96919C045CE76E7F847D3939E4839AD
              A9D38FC551D97E66539BF861B9C9DFDE6BFF0010355012D5DE18CE62B54388A1
              07A33B1C0271DCFB803B5755A3FC28B7CACDAF5D1B961CFD9A025631EC4F53FA
              57A05A59DB58DB2DBDADBC70C4BD1235C0FD2ACD6D3C64ADCB4FDD4671C3ABF3
              4F5651D3B49D3F4987C9B0B386D93BF968067EA7B9F7357A8A5AE36DBD59D092
              5B14751D32D356B192CAF6059A090619587EA3D0FBD7CD9E21D21F42D7AF34C7
              62DE43E158F059480549F720835F50115E05F1555478EA72BD5A18CB7D76E3F9
              015E9E5751FB470E9638F1915CBCC731A58C348FEC00A97529B1108C1E58E4FD
              053ACD3CBB619E0B727FCFD2A6D0B4997C4FE26B7B08F3E5BB65D87F0C63963F
              9671EE40AF5E5251BCDEC8F3A29C9A4BA9EB1F0A3423A6F86DB5095713DFB071
              91FF002CC642FE7927F115E8151430C76D04704481238D42A28E800E00A92BE6
              2AD47526E6FA9EDD382845450B45145416145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001514B0C73C6D1CB1ABA30C
              1560083F854B45026AFA3391D43E1D6837CC5E3864B473C936EF81F91040FC05
              6337C27B52D95D5270BE8D1827F3AF46A2B374A0DEA8E49E070F37771386B2F8
              5FA3C0C1AE66B9B9C7552FB54FE433FAD759A7E9763A5C3E5595AC7021EA1171
              9FA9EF5768C5546118EC8D6961A952F8236168A28AA370A28A2800A28A2800AC
              FBEB9B81982C23592E987593223887F7988EBECA393EC3246852000741421331
              B4AF0F5B69D7125ECACD77A94DFEB6EE51973ECA3A2A8EC07EB5B5494B4DB6F7
              04AC1451452185145140086BE75F1E5C8D4BC7DA91539449445C76D8A14FEA0D
              7BFEA57B1E9DA65D5ECBFEAEDE2691BDC019AF9A12479E79AF273992676763EA
              49249FCCD7A99641F34A7D8E1C6CB45116EE511C3B1782DC0F615EB9F09FC367
              4ED1DF58B84C5C5F0022C8E5620720FF00C08F3F4C579AF84F4193C57E2686D4
              86FB321F32761FC3183C8CFA93803EB9ED5F46451A4512471A85440155474007
              18AD331AFCB15497CC8C252BBE76494514578E7A214514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145004171710DA5BC971712AC70C6A59DD8E
              0281D49AF28D67E304D25D3DBE81651B46A71F68B9C9DC3D428238FA9CFB0AD0
              F8CBA94B6BA0D969F1B955BB9899307EF2A60E0FB6581FC2BC8EC5710961FC47
              F957AB81C242A479E7A9E46618D9D27C90D0F4DB1F17F896E62135D6A4910619
              0915BA0C8F5C906AE7FC251AB7FD05E7FF00BF50FF00F115C08D4C8000C80060
              0A3FB50FA9AEE7838748A3CD58E9ADE477DFF0946ADFF4179FFEFD43FF00C451
              FF000946ADFF004179FF00EFD43FFC45703FDA87D4D1FDA87D4D1F5487F2A1FD
              7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE128D5BFE82F3FFDFA87FF00
              88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF0084A356FF00A0BCFF
              00F7EA1FFE228FF84A356FFA0BCFFF007EA1FF00E22B81FED43EA68FED43EA68
              FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FFDFA87FF0088A3FE128D5BFE82F3
              FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF84A356F
              FA0BCFFF007EA1FF00E228FF0084A356FF00A0BCFF00F7EA1FFE22B81FED43EA
              68FED43EA68FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE1
              28D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333
              BC93C51ADEC3E56B0E1FB79904447E38506B263F8ABE20D2AE8C7A95ADA5DC20
              E1B6031BFE7923F4FCAB99FED46F5354AF25FB531279057068583A4D35288BEB
              F5134D48FA07C37E25D3FC4FA6FDB2C2424A9DB2C4DC346D8E847F9CD6D62BE7
              BF859A9CB61E37B6B756222BC568A45CF1C296538F5C8C7E26BE84CD7898AA1E
              C6A72AD8FA0C2D6F6B4F99EE2D14515CE7485145140051451401E7BF16357FB2
              787A1D2E26FDF5F483763A88D4827F5DA3F3AF179DF0A21404938181D7D85749
              E38D786B5E26B9BA46DD6F0FEE20C1E0AA93923EA493F4C7A56AFC2EF0B1D5B5
              73ACDE266D2D1818C11C492F51F82F07EB8F7AF7E82586C3F348F2AA7EFAB591
              E85F0FBC2FFF0008DF87D7CF4C5F5D6249F8E578F953F007F326BAEA5A4AF0A7
              3739394BA9E9C22A315142D14515250514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              14514005145140051451401E67F19B4D7B9F0F5A6A118CFD926C3FB2B8C67F30
              A3F1AF1FB27CC257B83FCEBEA3BAB5B7BDB67B6B98239A171868E450CADDF907
              8359A3C23E1D1F7743D397FDDB741FD2BD1C263951872B573CCC6601D7973459
              F3BEEA339AFA27FE112F0F7FD016C7FEFC2FF8563EB9F0E743D5AD196DEDD6C2
              E71F24D6E3183EEBD08FD7DC575C735A6DA4D3B1C12C9EA2574D1E1DBA8CD497
              F6379A36AB3E99A8204B884F51D1C75041F42391FD0D415E9C66A4934EE99E5C
              E9B84B965B8FCD19A6668CD322C3F3466999A3340587E68CD33346680B0FCD19
              A6668CD016242476A4DD50CB288973D49E00F535EB1E0CF86B0259A6A1E21469
              6E640192D49216207A6E19E5BF41D319AC2BE261415E5F71D587C1CEBBB4763C
              B77535DF6A16EC0135F45FFC225E1E03FE40B63FF7E17FC283E12F0EE30744B0
              23D0DBA9FE95C3FDAB0FE53BD64F3BEB23C5BE14E9AF7DE3882E00FDDD9C6F2B
              9ED920A81F5CB67F035F41551B0D1F4CD28C874FD3ED6D4C98DFE444A9BB1D33
              8033D4D5EC715E5E26BFB69F358F5F0D43D8C3958B45145607485145140095C9
              FC41D7BFB13C33308DF6DCDDFEE22C1E467EF37E033CF6245759D2BE7AF881E2
              53E20F1149E4396B4B7CC500078383CB0FA9FD00AEBC1D0F6B555F65AB39F115
              3921A6ECC6D2349BAF10EB36FA6DA0F9A46E588C8451D58FB01FE1D4D7D21A4E
              976DA36976FA7DA26D8615DA3D49EE4FB93935CB7C38F08FFC23DA4FDAEEE3C6
              A376A0B8239893A84FAF73EFC76AEDEAF1D89F6B3E58EC89C351E48DDEEC5A28
              A2B84EA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2803CCFE2FE82B75A2C5ADC29FE9164C16423BC6C71F
              8E188FCCD7912B8640C3B8CD7D29E23B21A8786F52B42B932DB48ABF5DA71FAE
              2BE64B739840F42457B9965472A6E2FA1E066B4929A92EA4F9A334DCD19AF4EE
              79161D9A334DCD19A2E161D9A334DCD19A2E161D9A334DCD213804FA5170B1D6
              FC35D0D75CF1789E64DD6DA7A89482320BF4507F1C9FF80D7BF579A7C17B311F
              876FEF48F9E7BADB9F555518FD59ABD2EBE6F1D51CEB3EC8FA9C0D350A2BCC5A
              28A2B90ED0A28A2800A28A2800A292A2B9B88ACED65B89DD638A252EEE4F0AA0
              649FCA8DDD81E871DF12FC4A343F0F35AC0F8BCBD0634C1E5531F337E5C0F73E
              D5C57C2FF079D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD08ACF482FBE2
              778E2497E78ECD48CB1E90C20F03FDE3CF1EA49E80D7B95959C1A7D9C3696B18
              8E08502220E800AF4AA4BEAD47D947E27B9C718FB5A9CEF65B16A8A28AF34EC0
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A280108C8AF95EF2DBEC1AADF59E31F67B878F1FEEB11
              FD2BEA83D2BE70F1E5AFD8BC7DAC44070F20947BEE50C7F526BD3CB256A8E3DC
              F2F348DE9A7D8C1A29B457B67803A8A6D1400EA29B45003B34D90E118E7B1A29
              929C467DE932A2B547D09F0CAD3ECBE01D341186977CA7F17247E98AEBAB33C3
              F69F60F0E69B68460C36B1A1FA8500D6A57CAD59734DBF33EB69479609051451
              50681451450014514500267DABCC7E25EB571A85D5B784749064BAB9606E029E
              83AAA93D87F11F603B135D9F8ABC430F86B439EFA501A5FB90464FDF90F41FD4
              FB03583E01F0B4F6092EBBAB82FAC5F92EE5C73129E71EC4F53E9C0EC73D342D
              05ED65D36F531A8DCBDC5F336FC29E1AB7F0BE8C9650E1A63F34F363991FB9FA
              7603FF00AF5BD452D73CA4E527296ECD2315156414514522828A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A006FAD783FC5A83C9F1D2C9FF003DAD51F3F42CBFFB2D7BC9AF19F8D3
              6FB357D22E7FE7A42F1FFDF2C0FF00ECD5DB97CAD5D799C39846F419E6B9A334
              99A335F407CE0B9A33499A33400B9A33499A33400B9E29F0406EAF2DAD864996
              55418F7207F5A8F35ADE1583ED5E32D162EBFE971B11FEEB027F406A2A4B960D
              F64694A3CD348FA6D46001DA9681D28AF953EB428A28A0028A28A004A63BAC68
              CEEC155464927000A7D73DAC4526BB7474689992C9706FE4538DCA791083EAC3
              05BD14FF00B429C55DEA26EDB18DA7D9378CBC44BAFDE29FEC8B2629A742C389
              5B3CCC47A6471F41E9CF758E6A28A18E08522894246802AAA8C0007402A5AA9C
              F9BD0518D85A28A2A0A0A28A2800A28A2800A28A2800A28A280128AE575EF12D
              DE99A8FD9A18A12A10365C127273E86B33FE136D43FE785BFE4DFE35C15331A1
              4E4E327AA3375629D99DED15C17FC26DA87FCF0B7FC9BFC6BA6F0FEA936AD60D
              3CCA8AC1CAE1060741F5F5ABA38EA55A5C907A8E352327A1B145145761614514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450015E57F1AE1CE9BA44FF00DC9DD7F3
              5CFF00ECB5EA95E71F19E3DFE11B5907F05EA93F4D8E3F9E2BA308ED5A2CE6C5
              ABD191E279A4CD2515F4A7CC585CD19A4A280B0B9A5CD368A02C3ABA9F86B179
              DF10F4CC8C84F31CFF00DFB6C7EB8AE505771F0962F33C76ADFF003CED647FA6
              703FAD618976A32F43A70ABF7D1F53DF68A28AF993E9C28A28A0028A28A008A5
              1218888F01CF009EDEF4CB5B68ED2111463804924F2589E4927B927249A93CD8
              C1C175E3DE8F3A3FF9E8BFF7D54F3AEE2D0928A8FCE8FF00E7A27FDF429E083D
              3A534D3D862D14555B9BFB5B319B8B88E3F40CC01FC294A4A2AED8AE59A2B15F
              C55A3A1C7DA89FF76363FD284F15690E40FB5633FDE8D87F4AC7EB542F6E642E
              78F736E8AA96DA85A5E7FC7BDC45271D15C123EA2ADD6D19292BA63D028A28AA
              1851484E064F4A679D1FFCF44FFBE8526D2DC0F3FF0018FF00C878FF00D735FE
              B5815BDE2F60DAE920823CB5E41CFAD60D7C7E33F8F2F5382A7C4C2BBEF057FC
              819FFEBB37F215C0D779E0C755D19F7328FDF37523D0574E54D2AFA9743E23A6
              C52E2A3F3A3FF9E89FF7D0A55746E8C09F406BE9B993EA760FA28A2A8028A290
              903AD00145675CEB9A65A644B791647F0A9DC7F21CD67C9E32D2D0E14CCFFEEA
              63F9E2B9E789A317694912E715BB3A1A2B9AFF0084DB4EE9E4DCFF00DF2BFF00
              C554D1F8BF4A7FBCF247FEF464FF002CD4AC6D06FE242E78F737E8AA56BAB58D
              E1020BA89D8FF0EEE7F2EB576B78CE32578BB9774C5A28A2AC028A28A0028A8C
              CB1824175FA668F3A3FF009E8BFF007D54F347B8125151F9D1FF00CF44FF00BE
              853C104641E29A69EC014B514D3C50466496458D075663802B127F176970B615
              E4948EBE5A7F8E2B2A95E9D3F8E4912E496E6FD15CF43E32D365755DB3A16200
              DCA3BFD0D7420E453A75A9D45783B829296C2D14515A9425151CB3450A179645
              451D4B3605664FE26D260241BB5623FB80B7EA38ACE7569C3E29242724B735E8
              AE75BC67A62F41337D13FC4D33FE136D3B38F26E7FEF95FF00E2AB1FAEE1FF00
              9913CF1EE74D4573C9E31D2D8E18CA9EEC9FE15760D7F4BB8384BD881F463B7F
              9E2AA389A32F864BEF1A9C5F53528A6AB061952083D3069D5D0505145359D540
              DCC067D4E28BD8075151F9D1FF00CF44FCC51E747FF3D13F3A9E68F715C928A6
              0963271BD7F3A7D34D3D86145145300A28A2800C518A619114F2E07D4D279B1F
              FCF44FFBE854F32EE0498A3151F9B1FF00CF44FF00BE85289118E15D49F4068E
              65DC07D14515402514671542E359D3AD09135E44AC3AA86C9FC8735129C61AC9
              D84DA45FA2B024F17E929F76491FFDD423F9E2A16F1AE9A3A45707E8A3FC6B07
              8CC3AFB689E78F73A5A2B9C5F1A6987AA5C0FAA8FF001AB3178A7489B03ED5B0
              9ECEA47EB8C538E2E83765240A71EE6D51505BDDDBDD2EE8268E51EA8C0FF2A9
              EB74D3574EE5DC5A28A2A8028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A004AE1BE2D45E67812E1BFE79CD137FE3D8FEB5DCD7
              1DF14973F0F3523E862FFD1AB5B61DDAAC7D4C711AD297A1F3D678A33480F029
              735F4C7CC585CD19A4CD19A05617346693346680B0B9AF45F8331EEF15DF4BFD
              DB32BF9BA9FE95E739AF4EF82AB9D6F546F4817FF42FFEB572E37F80CEBC12FD
              FA3DA68A28AF9D3E8C28A28A00283D0D141E868607936A3FF213BBFF00AECFFF
              00A11AAB56B51FF909DDFF00D767FF00D08D55AF88A8DF3BF53CE7BB0AF4CB3B
              D82C7C3D6735C48111604E4FFBA38FAD799D59BABE9EED21491F31C318445EC3
              03AFD4F735D583C5FD5F99EEDEC694EA725CDAD57C5B75765A3B3CDBC3EA3EFB
              7E3DBF0FCEB9D776772CEC5989C924E493F5A4A2B9EAE22A569734D9129393BB
              61451456248AACC8C1949520E4107045741A4F8B2EECD963BB26E20F53F7C0F5
              CF7FC7F3AE7A8ADA957A945F341951938BBA67AE5B5CC3776E9340E1E37190C2
              A6AE03C23AA35B5FFD8E463E4CDF741FE17FFEBF4FCABBFAFAAC26256229A9F5
              EA76C27CCAE54D57FE41377FF5C5FF0091AF28AF57D57FE41377FF005C5FF91A
              F28AF2F397EF44C6BEE828A28AF0CE60A28A29805749E0AFF90CCBFF005C0FFE
              84B5CDD749E0AFF90CCBFF005C0FFE84B5D7816FEB1034A5F1A3BEA3B515CE78
              9B5EFECE885B5B30FB4C83AF5D83D7EBE95F555AAC68C1CE4763924AEC9F59F1
              25B6980C49FBEB9C7DC0785FF78F6AE26FF5BBFD458F9F3B08CFFCB34385FF00
              EBFE39AA0CCCEC59892C4E4927249F53495F2F89C7D5AEDABD91C73AB293F20A
              28AD0B4D0F52BE50F05AB943FC4D85047A8CE33F85724213A8ED14D90936EC91
              9F456FFF00C21DAAE33887FEFBFF00EB550BCD1351B152F3DAB841D5970C07D7
              19C7E35ACB0B5A0AEE2CA70925768CFAD7D3BC47A869E42890CD1774909381EC
              7A8FE5ED59145453AB3A6EF06C4A4D3D19E9FA4EB56BAB45985B6C8A3E78DBA8
              FF00EB56A5790DB5CCB697093C0E52443C1FE9EE3DABD2B45D5A3D5AC5651859
              57E5913FBA7FC2BE8F018F55D724F4923AE9D4E6D1EE6A507A5141E95E99A9E4
              FAA7FC85EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE26B37ED
              25EA79F2DD857A00D6A0D23C3B64CFF3CAD026C8C1C13C0FC87BD79FD3E49649
              8A991CB1550AB93D0018007B56D86C54A87338EECA84DC6FDCB1A86A775A94C6
              4B9909C1F95070ABF41FD7AD54A28AE79CE536E52776C86DB776496FFF001F31
              7FBE3F98AF5E1D05790DBFFC7CC5FEF8FE62BD787415EE64BB4BE474E1F6631D
              D6342CC40503249E315C7EAFE316DCD0E9A0607067619CFF00BA3FA9FCA97C65
              AB3065D3A26C02374A477F45FEBF9571F539866128C9D2A4FD58AAD569F2A25B
              8B99EEA4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD789
              EF4DF76CE7D5B23A2B7A1F07EAB2AE59618BD9DF27F406A63E0AD4BFE7ADB7FD
              F4DFFC4D74AC1621ABF296A9CBB1CDD15AD77E1BD52D14B35B19147F146437E9
              D7F4AC9AC274E74DDA69A25A6B468B567A9DE583836D70F18CE4A8395FC41E2B
              B3D17C5515F32DBDD810CE7856CFCADEDEC7DAB82A2BA30D8DAB41AB3BA2A152
              517E47B1564788B4DFED1D264445CCB1FCF1FB91DBF119155BC2BAB3EA362D14
              CDBA78300927965EC4FBF07F2F7AE82BE9E3286268DD6CD1D89A944F1DA2B63C
              4BA77F67EAF26D5C4537CE98E9C9E47E79FC08AC7AF91AB09539B84BA1C324D3
              68504AB06524107208EA0D7A9E917A350D320B918DCCB8603B30E0FEB5E575D6
              782AFF0064F3583B70E37A03EA3AFE631F91AEFCAEBF256E47B335A32B4ADDCE
              DE8A28AFA73AC4A6BBAC68CEC400A0924F6A7573BE2ED44DA699F6746C497195
              E3A85EFF00E1F8D635EAAA54DCDF42652E5576717AADF1D47529AE49F959B099
              ECA381FE7D7354E8A2BE367394E4E4FA9C0DB6EEC2BB7F0669BE55B497F22FCD
              2FCA9ECA0FF53FCAB91D3ECDEFEFA1B58F20BB004FA0EA7F21935EAB0C296F04
              70C6BB51142A8F402BD6CA6839CDD596C8DE846EF99925636B3E20B7D257663C
              DB8232B183D3DC9EC2ADEAD7EBA6E9D2DC9C1651F28F563C01F9D797CD349713
              3CD2B967724B31F5AEECC31AE82E487C4CD2AD4E5D16E5DBFD72FF005162269D
              9633FF002CD0ED5C7A7BFE39ACEA28AF9B9D49D47CD26DB391B6DDD8515A967E
              1DD4EF543A5B9443FC521DBF8E3AE3F0AD0FF842B52C67CDB51FF026FF00E26B
              6860EBCD5D44A54E4F64737456F4DE0FD5621955865F647C13F98158D716D3DA
              4A63B889E271D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB23
              0E8CA4823F115D1697E2EBAB5611DEE6E22FEF74751FD7F9FBD737453A388A94
              5DE0C23371D533D6ED2EE0BDB749E0903C6C3208A9EBCE3C33AABE9FA8AC2EC7
              ECF3305607B13C06FCF83EDF4AF471C8AFA8C16296229F36CD6E76D39F3AB8B4
              5145761614514500145145001451450014514500145145001451450014514500
              21EB5C97C4C5DDF0F755FF007633F948A6BAD35CB7C47C7FC2BFD5B3D3CB5FFD
              0D6B4A3FC48FAA32ADFC397A1F3851499E28CD7D41F316168A4CD19A005A2933
              4668016BD53E090CEA1AC37A4510FCCB7F8579566BD63E089FF49D6FFDC87F9B
              D72E37F8123AB05FC747B1514515F3A7D1051451400507A1A283D0D0C0F26D47
              FE42777FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA
              79CF7614F8E379A458E346776202A819C93D8532BB3F06E96A226D4245059895
              8B3D80E091F53FCBDEB5C2D075EA722F99508F33B09A67831762C9A839C9E7CA
              43803D89EFFE7935B91787B4A88002CA33FEF8DDFCF35A9457D3D2C151A6ACA2
              76469C62B4464CDE1CD2A65C359C6BEE9F2FF2AE475FF0E369405C42ED25B31C
              1DDF7909E80E3A8F7FF27D12AA6A36A2F74F9EDCE3E74207B1EC7F3ACF1581A5
              529BB46CC53A7168F28A28A2BE50E11F0CAD04F1CC9F7A360C0FB83915EBCAC1
              94107822BC7ABD6AC1B769D6C7D6253FA0AF732693F7A274E1DEE8925892785E
              290651C1561EC6B23FE113D1FF00E7D5BFEFE37F8D6DD1F8D7B33A34EA7C6AE7
              438A7B9E67E23B1834FD57C8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AF249595CE1A89293482BADF0CE8961A9698D35CC25DC
              48573B88E303D0D7255DF782FF00E40CFF00F5D9BF90AE8CB2119D6B495CAA29
              396A8B3FF089E8FF00F3EA7FEFE37F8D59B1D0EC34D9CCD6B09491976925C9E3
              39EE7DAB4A8AFA38E1E945A718A4CEBE48A7A222B99D2DADA49DCE12352CDF40
              2BCA6F2EA4BDBC96E653F3C8C4F5E83B01EC0607E15DE78C2E0C3A1B463FE5B3
              84E3F3FE9FAD79E578B9C566E6A9AD8E7AF2D520A28A2BC539CEB7C2DA0472C4
              350BA40C09FDD230C8E38DD8FE5FFEAAED6B92B5F1869D6D690C02DEE311A051
              855EC00F5A9BFE137B0FF9F7B9FF00BE57FC6BE9F0B5F0B469A8A92B9D909422
              AC99D4521008E45731FF0009BD87FCFBDCFF00DF2BFF00C552FF00C26FA7FF00
              CFBDCFFDF2BFFC5574FD7B0FFCC8BF690EE6778A7418ED93EDF68A1509C4A806
              00CF008FE447BD7295D9EA1E2DD3EF6C27B6F22E0798854128BC123EBDB8AE32
              BE7B30F63ED39A8BBDCE5ABCB7BC42B63C35A89B0D5E30CDFBA9888DC76E7A1F
              C0FE84D63D00904107047435C946A3A73538F7222DC5A68F62EB476AABA6DC7D
              AF4EB79CF25E3563F5C73568F4AFB48B528A6BA9DF7D0F28D57FE42F7BFF005D
              DFFF00423552ADEA9FF217BDFF00AEEFFF00A11AA95F175BF892F53CF96EC28A
              2BA4F09692B7976D7732E62808DA08E0B75FD3AFE22AA85175AA2844718B9349
              09A57846E2F1166BB63044C32171F391F8F4FE7ED5D0C5E12D263401E1790FAB
              4841FD08ADE1457D3D1C050A692E5BBF33B1528A31D7C2FA3860C2D3041C8FDE
              371FAD6C741C5145754294217E4562D24B63CB35B94CDADDE3B75F3597F01C0F
              D0550AD2D7E036FAEDDA9FE290B8F70DCFF5ACDAF8EC45D55927BDCE09DF99DC
              2BB9F057D9FEC136DDBE7F99F3FAE3B7F9F5CD70D52433CB6F2092191E371FC4
              AC47EA2AF095D50A9CED5C70972CAF63D7A8AF3987C5BAB4230D2A4A3FE9A27F
              518AB91F8DAF00FDEDAC2DFEE923FA9AF7E39AE1DEF74752AD167746B8EF1668
              859D2F2CEDD99DDB6C8B1A924F70D81F4C13F4A13C75FDFB0FC44BFF00D6AB09
              E37B33FEB2D671FEEE0FF5A9AF89C26221C9290A5384D59B391FECBD43FE7C6E
              7FEFCB7F851FD97A87FCF8DCFF00DF96FF000AEEEDFC55A4CE42999A263DA452
              3F5E9FAD6C452C53C6248A45910F46520835CB4F2CA153E0A9721518BD99C578
              46D6F2DB577335B4F1C6D1119742067231C9EFD6BB9A0003B52D7AD86C3AA10E
              44EE6F08F2AB183E29D37EDFA4B48833341F3AE3B8EE3F2FD40AF3AAF6220118
              AF2FD774FF00ECDD56589462263BE3FF0074F6FC0E47E15E4E6F87D5565F330A
              F1FB466D4F6574F657B0DCA7DE8D8363D4771F88C8FC6A0A2BC58C9C5A6B7473
              A767747AF43324F0C7346728EA181F506A4AE6BC1B7FF68D39AD5CE5E03C67BA
              9E47F515D357D961EAAAB4D4D753BE32E64989DABCCBC43A87F68EAF2BAB6624
              F923F42075FD73FA576BE24D47FB3F4890A1C4B27EED31D727A9FCB35E6B5E4E
              6F88DA8AF9985797D90A28AB16568F7D7B15B463E69180CE3A0EE7F0193F8578
              718B93515AB673A5776475BE0BD37642F7F20F99F291E7B283CFEA3F4AEBAA1B
              7812DADE38231848D4281EC2A5AFB1C35154692823BE11E5491CA78E252B676B
              10E8D2163F80FF00EBD7115DCF8DE02FA7413019F2E4C1F607BFE60570D5F3D9
              A27F5977392B5F9C2B4B40F23FB6EDBED3B7CBDC7EF74CE0E3F5C566D15C14E7
              C9352B5EC669D9A67B171DA8AF2FB4D7F53B250B15D3141FC2E037E1CF38FA56
              947E34D45301E2B771FEE907F9D7D153CDA835EF5D1D6ABC4EFAA86ABA5C3AA5
              9BC1228DD8251B1CAB7635CD278EA51F7EC54FD2423FA54E9E3980FDFB3917FD
              D707F9E2B5963F0B523CB296E37560F4B9CA9D2F5004836373C1C71137F851FD
              97A87FCF8DCFFDF96FF0AED22F19E98E70EB3C7EEC99FE44D6B5A6A9637DFF00
              1ED731C8719DA0E08FC3AD79F0CBF0D51FB950CD5283D99E6A34CD401C8B1BA0
              7FEB937F857A8DB9692DA2775219901208EF8A9B028AF4F0983586BDA57B9AC2
              9A8EC2D14515DC68145145001451450014514500145145001451450014514500
              1451450025725F135B6FC3DD54FB463FF222575B5C77C526C7C3CD487AB443FF
              0022AD6B415EAC7D518D77FBA97A1F3B51499A335F4E7CD585A293346680B0B4
              52668CD0161475AF55F824D8D47575F58A33F913FE35E520F35EA1F04DBFE275
              A9AFADBA9FC9BFFAF5C98DFE048EAC1FF1A27B6514515F3C7D0851451400507A
              1A283D0D0C0F26D47FE42777FF005D9FFF00423556AD6A3FF213BBFF00AECFFF
              00A11AAB5F1153E37EA79CF7615EA3A0C622D0ECD40C0312B7E2467FAD79757A
              AE8DFF00205B2FFAE09FFA08AF5B265EFC99BE1F765EA28A2BE84EA0A43D0D2D
              07A1A4C0F21BA509773281801D863E84D45562FBFE3FEE7FEBAB7F3355EBE22A
              2B49AF33CE7B857ABE97FF00209B4FFAE29FC8579457AB695FF209B3FF00AE29
              FC857B1937C723A30FBB2ED14515F40749E77E31FF0090F1FF00AE6BFD6B02B7
              FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7054F8D8577DE0AFF009033FF
              00D766FE42B81AEFBC15FF002067FF00AECDFC8575653FEF1F22E87C474B4514
              57D39D8723E396C5B5A27ABB1FC857155DC78E133636D27A49B7F304FF004AE1
              EBE5734BFD65DCE2ADF1851452AA9760A080490013D066BCE32128AE8FFE10BD
              4FFE7A5B7FDF67FC28FF00842F54FF009E96DFF7D9FF000AEBFA8E23F90D3D9C
              BB1CE515D1FF00C217AA7F7EDBFEFB3FE147FC217AA7FCF4B6FF00BECFF851F5
              1C47F207B397639CA2BA3FF842F54FF9E96DFF007D9FF0A3FE10BD53FE7A5B7F
              DF67FC28FA8E23F903D9CBB1CE515D1FFC217AA7FCF4B6FF00BECFF851FF0008
              5EA9FF003D2DBFEFB3FE147D4711FC81ECE5D8E97C2AFBFC3D6D9EA370FF00C7
              8FF4ADA3D2B2F41B09B4DD2D2DA7285D49394248E4E7D056A76AFA8C3A6A8C54
              B748EC826A3A9E51AA7FC85EF7FEBBBFFE846AA55BD53FE42F7BFF005DDFFF00
              423552BE42B7F125EA704B7615E93E178041A05BF1CBE5C9F5C9FF000C579B57
              A9E8800D12C87FD304FE42BD4C9E29D56FC8DB0EB56CD0A28A2BE8CEB0A28A28
              0397F1668CD7910BDB75DD344BF3A8EACBEDEE3FAD7095EC55CEEAFE14B6BF76
              9EDDBC89CF27032AC7DC763EFF00CEBC5C7E5CEA3F694B7EA8C2AD2E6D56E79F
              D15AD75E1BD56D49CDB34ABFDE88EECFE1D7F4ACF92D6E61CF9904A87B87423F
              98AF0E746A41DA5167338B5BA21A28A2B3B32428A28A40156AC751BAD3A6125B
              4A579E573956FA8AAB455427283BC5D98D369DD1E9BA26B316AF6BBC7CB32604
              899E87FC2B5735E65E1DBD6B2D6A06048495846E3B1C9C0FD71F957A68E95F55
              80C4BAF4AF2DD1DB4A7CD10AE73C5DA69BBD345CA2E64B7CB71D4AF7FF001FC2
              BA3A6BA2BA32B00411820D74D7A4AAD3707D4A94799599E3F455DD5EC1B4DD4A
              6B620ED07299EEA791FE1F506A957C6CE0E127196E8E069A7666A787AFFF00B3
              F5885C9C46E7CB7F4C1FFEBE2BD3BB578ED77D6DAF05F0AFDB59819E35F2883C
              92FD07F435ECE5589508CA127B6A74519A49A673FE2CD47ED9AA9851BF756E0A
              0FF7BF8BFA0FC2B0694B1762CC4924E492792692BC8AF55D5A8E6CC252726DB0
              AECFC17A6ED4935071CB7C91E7D0753F9F1F81AE4ECED64BDBC8ADA21F3C8C17
              E9EA4FB0193F857AADADB47696B14110C246A1457A594E1F9EA3AAD688D6846E
              EEC9E8A28AFA43ACAB7D671DFD9C96D28F924183EDE87F0AF2FBFB19B4EBB7B7
              9D70CBD08E8C3D47D6BD66A8EA5A55B6A90795709923EEB8E194FB1AF3B1F825
              888DE3F1232A94F9D1E57457477DE0EBE818B5A95B88FB0C8561F5CF07F3FC2B
              1A5D32FA0CF9B673A81DCC671F9E315F3B530B5A9BF7A272B84A3BA2AD14ACAC
              A70C083E846292B0B32028A28A002955991832B156072083820FB1A4A28D80EB
              FC3DE2776952CEFDF70380931FE4DEBF5FCFD6BB3C8AF1DAF46D23598E7D26DD
              E79944BB70D93C920E33F8E335EF65D8FBC5C2ABD8EAA552EACCDDA28A2BDC3A
              028A28A0028A28A0028A28A0028A28A0028A86399656709CAA1DA5BB13DC0F5C
              743EFC76A9A800A28A2800A28A2800AE0FE2E4BE5F81655CFF00AC9E34FD73FD
              2BBBAF37F8D32EDF09D9C63ABDEA93F408FF00D715BE195EB47D4C312FF7523C
              2A8A4A335F4A7CED85A293346680B0B452668CD01616BD23E0BCBB7C5B771E78
              7B263F8874FF001AF36CD779F08A5F2FC7512FFCF48245FD01FE95CD8B57A323
              A30DA5589F41D14515F387D0851451400507A1A283D0D0C0F26D47FE42777FF5
              D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA79CF7615EA
              BA3FFC816C7FEB827FE822BCAABD5747FF00902D8FFD704FFD0457AD937C7237
              C3EECBD451457D09D4141E868A0F434303C92FBFE3FEE7FEBAB7F3355EAC5F7F
              C7FDCFFD756FE66ABD7C3D4F8DFA9E73DD857AB695FF00209B3FFAE29FC85794
              D7AB695FF209B3FF00AE29FC857AF937C523A30FBB2ED14515F42749E77E31FF
              0090F1FF00AE6BFD6B02B7FC63FF0021D3EF1AFF005AC0AF8EC6FF00BC4BD4E0
              A9F1B0AEF7C1473A34A3D2623F45AE0ABA3F0CEBD06971CB05C8608EDBD59467
              9C6083DFB0AD72DAB1A75EF2D11546494B53BFA2B1078B347233F6A3FF007E9B
              FC2ACD96B7A7EA53186D67DF205DC41461C671DC7BD7D2C7134A4ED192B9D6A6
              9BD190F89AD4DDE853851968C798BF875FD335E6B5EC2CA194823208AF30D734
              C6D2B5278B1FBA625A33FEC93D3EA3A7FF00AEBC8CDE83BAAABE6615E3F6919B
              40E0E68A2BC3398F55D2AF9750D3A1B80465946EF661C1FD73576BCCF44D725D
              1E623064B773F3C79E87D47F9E7F2C77367AEE9D7AA0C572818FF0390ADF91AF
              AAC1E361560949DA48EDA751491A74B5119A3DBB8C8A07AE6B32FBC47A6D8A9C
              CEB2BFF7223B8FF80FC6BAE7569C15E4D1A3925AB2CEABA9C3A55A7DA2504F21
              42AF5627D3F9FE1587FF0009C5A7FCFACDF98FF1AE5F56D5E7D5EE4492FCB1AE
              76460E76FF00893DCD67D78388CD6A73FEEB639A55DDFDDD8EE3FE138B4FF9F5
              9BF31FE340F1C5A1200B59FF004FF1AE1EB7FC2BA49BFD405C48BFB880E738FB
              CDD40FC3A9FC3D6A6863F1556A28458A352727647A0C6C5E356652A48C953DA9
              E7A5141E95F49D0EB3C9F54FF90BDEFF00D777FF00D08D54AB7AA7FC85EF7FEB
              BBFF00E846AA57C556FE24BD4F3A5BB0AF54D17FE40965FF005C13F90AF2BAF5
              4D17FE40965FF5C13F90AF5326FE248DF0FB97E8A28AFA23A84AAF7D742CACA6
              B9285C46A5B6838CE2AC545730ADCDB4B0B7DD910A9FC462A277E576DC4CE5FF
              00E1398BFE7C9FFEFB147FC27317FCF93FFDF62B8E9E17B79E4864187462ADF5
              07151D7CC3CCB131766CE4F6B33B5FF84E62FF009F293FEFB15D4C5224D124A9
              82AE030FA1AF21AE9B42F14FD8615B4BC5668978575E4A8F423BFF003FAD75E0
              F326E7CB5D974EB5DDA4770F04527DF891BEAB9AACFA469D272F636E4FAF963F
              C2A2875ED2E700A5EC23FDF6DA7F235685FDA1E45D427FE062BD8BD19AE8CDFD
              D65093C33A44BD6CD41FF658AFF23583AEF8560B4B292EECDDC79632D1B1C823
              BF3D78F7CD74F2EB1A7400992F6018EC1C13F9572DAFF8A22BCB57B3B20C51FE
              FCAC31C7B0F7F5AE1C62C22A6EF6B99D450B3B9CA514515F327192DB922EA12B
              D43823EB915EBA3A0AF2ED0AD4DDEB56B181C070EDEC179FFEB7E35EA23D2BE8
              7278B50948EAC3AD05A28A2BDA3A0E5BC65A779F6497A8B978787C752A7FC0FF
              00335C2D7AF4B124F0BC522864752AC0F706BCAB50B37B0BF9AD5F27631009EE
              3A8FCC60D7CEE6F87E59AAA968CE5AF1B3E6456A7F9B2084C3BCF9658315F7C1
              00FD704D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A
              72692DD82573AAF05E9BCC9A848BEA91E47E67FA7E75D9557B3B58ECAD22B788
              61235DBF5AB15F6185A0A8D250477C23CB1B0B451457496737A978AE3D3B5096
              D1AD5DCC78CB06033900FF005AABFF0009CC5FF3E4FF00F7D8AA3E34B331EA31
              5D01F24C9B4FFBC3FF00AD8FC8D7315F398AC76269559413D0E59D49C6563B5F
              F84E62FF009F27FF00BEC56BE8BADC5ACA4A52231B46402A483D7A7F2AF33ABD
              A56A9369378278BE60461D09C6E1E9EC7D0D4D0CD2AFB45ED5DE228D677F7B63
              D48A2B0C15047B8AAEFA7594BF7ED206FF007A307FA566DA78AB4CBA51BA6F21
              CFF0CA318FC7A7EB5A49A958C83297901F712035EEC6AD0A8AE9A674A945EC57
              9340D2A5186B1847FBABB7F9551B9F07E972A9F292485BD55C9FE79AD67D46CA
              3197BB8147BC80565DF78AF4EB4422293ED127658FA7E7D3158D68E1127CF626
              4A16D4E12FECDEC2FA5B573968DB19F518C8FCC1155AA7BCBA92F6F25B997EFC
              8C491E9E807B01815057CAD4E5E67CBB1C4ED776D82AD4324CB100BD39C555AE
              F346D1223A45B34CA7CC65DC7F1248FD2B6C3509D69351E85422E5B1D3D14515
              F64778514514005145140051451400DEF58FA96A124B7C9A3D8B91772AEF9A51
              FF002EF16705BFDE3D147AE4F40418FC4DE218FC3F60AEA9E7DECEDE55ADB0FB
              D2C87803E9C8C9FEA453FC3BA44BA558B4977209F52BA6F3AEE6FEF3FA0F4551
              C01E83DEB451B479990DDDD91AB0431DBC090C4BB5114051E807D6A6A28ACCB0
              A28A2800A28A28010D7947C6F9F6E9DA45BF779247FF00BE428FFD9ABD5FBD78
              9FC6DB9DDACE9B6DFF003CEDDA4C7FBCD8FF00D96BAB02AF5E272635DA8B3CB2
              8A6E68CD7D09E1D87514DCD19A02C3A8A6E68CD0161D9AEBBE194E20F881A5B1
              E8CCE9F9A301FA915C7E6B6FC2371F66F176912E7016F22C9F62C01FD09ACAB2
              E6A725E46949DA717E67D4F451DA8AF993E8C28A28A00283D0D141E94303C9B5
              1FF909DDFF00D767FF00D08D55ADFBDF0D6AD2DF5C4B1DA128F2B329F313A139
              07AD41FF0008B6B5FF003E7FF9153FC6BE3EA61ABB9B6A2F7EC70384AEF431EB
              D5747FF902D8FF00D704FF00D045705FF08BEB43FE5CFF00F22A7F8D77FA6C4F
              6FA65AC32AE244855587A100035E9E534AA53949CD5AE6F422D377562E514515
              EE9D01487A1A5A0F4A181E497DFF001FF73FF5D5BF99AAF5BB75E19D5E5BC9E4
              4B3CA3BB107CC41904E477A8BFE116D6BFE7CFFF0022A7F8D7C754C2D7726D45
              EFD8E07095F631EBD5B4AFF904D9FF00D714FF00D045703FF08BEB3FF3E7FF00
              9153FC6BD074F8DE0D3EDA29061D235561E840AF5729A3529CA4E71B5CDE845A
              BDD16A8A28AF70E8386F1BDB32DE5BDD7F0BA6CFA1049FD73FA572B5EADA969F
              0EA566F6F38F95BA11D54F622B81D43C35A8D8B9DB119E3ECF10CFE63A8FE5EF
              5F399960E6AA3A91574CE5AB4DDEE8C7A29595909560411D41182292BC8B339C
              2BA4F057FC8665FF00AE07FF00425AE6EBA4F057FC8665FF00AE07FF00425AEB
              C0AFF6881A52F8D1DFD66EADA543AB599864E18728E072A7D6B4A92BEB2708CE
              2E32D8ED693566793DFE9F73A75C186E108239561D187B555AF59BCB2B7BF80C
              57312C887D7B7B8F4AE4B50F054A84BD84C1D7A8493861F43DFF001AF9DC4E57
              520DBA5AA396745AD51C9D1572E34ABFB427CEB49540EFB491F98C8FD6A9D799
              284A2F54D33169ADC28A29402C4000927A0032696A02515A36BA16A7787F7769
              205FEF38DA3EBCE33F85747A7782E38C892FE5F30F5F2D3217F13D4FE95D3470
              55EABD2365E65C69C99CF68FA2DC6AD38080AC2A7E7948E07B0F53ED5E8F6767
              0D85AA5BC0BB6341C7A9F7352430C7044238902228C0551802A4AFA2C1E0A187
              57DE5DCEAA74D405A0F4A283D2BB8D0F27D53FE42F7BFF005DDFFF00423552BA
              0BFF000DEAD36A3732C769B91E67656F3146416C8EA7D2ABFF00C22DAD7FCF91
              FF00BFA9FE35F1F570D59CDB517BF6385C2577A18F5EA7A2FF00C812CBFEB827
              F215C27FC22FAC8FF973FF00C8A9FE35DF6970C96FA5DAC32AED91225561D704
              003B57A794D1A94E6DCD58D6845A6EE8BB451457BA74851451401C8F8A7407B8
              26FED133201FBD4039603B8F538EDDEB8AAF62ED585AAF862CF512D2AFEE273C
              9741C13EE3BFE86BC5C765BED1BA94B7EA8E7A94AEEF13CEA8ADCBBF09EA96C7
              291ACE9EB1B73F91C7E99AC99AD6E2DF3E75BCB1FF00BE847F315E254A1569BB
              4E2CE7706B74434514565A8828A2A786CEEAE3FD4DBCB20FF6509FE429A8CA4F
              45760937B1052A2B3B05552CC4800019249EC056F59F84352B920CC12DD3B973
              938F603FA915D6697E1EB2D2F0E80C93E30647E71F41DABBF0F96D6AAEF25646
              91A3293D74455F0CE8874CB733CE07DA650323FB83D3FC7FFAD5D0D14B5F4B46
              94694142275C6292B20A28A2B5282B90F1A69DBA28EFD1794C2498F42783F9FF
              003AEBAA86B6AADA25E86C63C963CFAE2B97174954A328B2271528D99E594514
              57C79C015D7782F4DDCF26A120E17291E7F53FD3F3AE56DE07B9B88E08865E46
              0ABF89AF55B0B44B1B28ADA31F2C6B8CFA9F5AF532AC3FB4A9ED1AD11BD08DDD
              D96A8A28AFA63AC28A28A00A1AAE9D16A962F6F2719E55B1F7587435E677B637
              1A7DCB5BDC21561D0F661D883DC57AD554BED3AD75287CAB98838EA0F707D41E
              D5E763B02B10B9A3A491954A6A6794515D55FF0082AE2325AC6612A7508FC37E
              7D0FE958571A46A36C4896CE618EA42923F31915F3D57095A93B4A272CA9CA3D
              0A54529041208208EA0D2573D99214514E48DE46DA88CC4F65049FD29D9BD006
              D15A76BE1ED52E9BE4B4745FEF49F2E3DF9E7F215D1E9DE0B8A26125FCBE6B7F
              CF34C85FF135D547035AABD159171A52662F877429353B859E65C5A21F989FE3
              3FDD1EDEB5E8C06000053238D224548D55540C0503005495F4984C2C70F0B2DF
              B9D70828AB0514515D6585145140051451400DCF355352D46D749D3A7BFBC904
              7042A599BBFD07A927000F5AB4C40192703BD791EB3A84DF11FC5F0E85A7BB2E
              8F6AC5E6957F8F1C16FE8BF5CF7E36A14BDA3BBD96E67527CAB4DCDBF075B5D7
              8A75B97C61A9C65625262D3A03C88D724161EA7A8CF724FA0AF43A82DADA1B4B
              686DADD0470C4A1111470A00C0153D4D59F3CAEB6E83847956BB8B4514566585
              1451400514514009DEBE7DF8C173E778DDE3FF009E16F1C7F4CE5BFF0066AFA0
              8D7CC7F102EFED9E38D5E5CE76DC18FF00EF8017FF0065AEFCBA37AB7EC8E0C7
              CAD4D2F339ACD2668A2BDC3C80CD19A28A00334668A28016A6B499ADEEA3997A
              C6C1C7D4107FA5414E4386149ABA03EBE8DD5E3565395201069F58DE16BBFB77
              8574AB92725ED632C7FDADA33FAE6B62BE5A4ACDA3E922EE93168A28A4505145
              1400514514005145140051451400514514005145140051451400514514005145
              14011BC51C830F1AB0F4201A80E9B644F36901FF00B66B56A96A1C22F742B153
              FB36C7FE7CE0FF00BF63FC29F159DB40C5A1B78A3623194400D4F4B42A715AA4
              16414514558C28A28A00303D2A292DE197FD6431BFFBCA0D4B454B8A7B815469
              F680E45AC00FFD73153245120F92355FA0C549452508AE82B0514515630A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802
              16B581CFCD0C67EAA0D47FD9F679CFD960CFFD731FE15668A8E48F6159112DB4
              09F7618C63D140A9703D2968A6A296C8614514550051451400D270335C7FFC27
              5FF50FFF00C8DFFD8D7607EE9AF1EAF2733C4D5A1CBECDDAE635A6E36B1D8FFC
              277FF50FFF00C8DFFD8D64EADE26BAD521300458613F7954E4B7B67D3F0AC4A2
              BC6A98FC4548B8CA5A339DD593566C28A2A5B5B692EEEA3B78572EED81FE27D8
              75AE549C9A4B766695F43A7F05E9BBE79350917E54F923CFA9EA7F2E3F135DB5
              55B0B38EC2CA1B68C7CA8B8CFA9EE7F139AB55F5F84A0A85250EA77C23CB1B0B
              4514575161451450014514500146051450046D146E3E6456FA806A16B0B46FBD
              6D09FAC62AD5152E117D0562BAD95B2FDDB7887D1054AA8AA30AA00F614FA285
              18AD900514515430A28A2800A28A2800A28A280128A2B99F1B78A62F0B688D38
              2AD793652DA33CE5BFBC47A0EA7F0F5AA84253928C7764CA4A2AECE53E2878C8
              DAC6FE1FD3A4FDFCAB8BA914F28A7F807B9EFEC71DF8E87E1E785C787340569D
              36DFDD8124F91CA8C7CA9F803F9935E77F0E34093C45E259356D4374B0DB3F9A
              ECFCF9929E467D79C93F400F5AF74AEDC538D282A10F99CF4539C9D497C85A28
              A2B80EA0A28A2800A28A2800A28A28018EC110B31C003249AF92B51B937BA85C
              5D367334AD21CFAB127FAD7D3DE2DBE1A6F84F55BB27694B670A7FDA230BFA91
              5F2C3FDEAF5B2C8E9291E56612D6311B451457AA79C145145001451450014AA7
              0C3EB4945007D1FF000B2EC5CF806C549CB40F2444FD1891FA115D9F7AF2CF82
              77C24D1F52B1CFCD14EB363D9971FCD3F5AF53AF9BC54796B491EFE1A5CD4A2C
              5A28A2B0370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A2A
              96ADA9C3A3E9773A8CEAED0DBA191D6300B103D01207EB4257764265DA2B9CF0
              B78CB4FF0016FDA8D843751FD9B687F3D546776718C31FEE9EB8AE8E9CA2E2ED
              2409A7AA168A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128A81AF2D925F29AE22593A6D2E01CFD2AC50D0051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400D3F74D78F57B1565FF00C23BA4FF00CF9475E6E61839E279795DAC
              65569F3DAC798D15E9DFF08EE91FF3E317EB4E5F0FE94BC8B187F119AF3BFB1A
              AFF3232FABCBB9E696F6D35D4AB15BC6D23B7F0A8FF381EF5DF787B405D2A3F3
              A6C35D38E7D107A0FF001AD982D60B65DB0431C4BE88A07F2A9ABD0C265B0A12
              E793BB3585251D7A8B451457A66A145145001451450014514500145145001451
              4500145145001451450014514500145145001451450055BEBD834EB29AEEEA41
              1C10A17763D0015F3AF8835ABCF17F88DAE76390EC22B68072557385503B924E
              4FA93F4AEB7E29F8ACDFDF7FC23F6527FA3C0D9B9653F7DFB2FD17BFBFD29BF0
              A7C3E2F75893559933059711E4706523AFE0327EA41AF5F0D4D61E8BAD35ABD8
              E0AD37566A9C76EA7A6F857418FC39E1FB7B05C1900DF330FE273D7F0E807B01
              5B74B495E4CA4E4DC9F53B631515642D145148A0A28A280128E954357D5ACF43
              D325D42FE431DBC406E2064F24018039EA4572327C5EF0AC60625BA7CFF7603F
              D6AE14A73D62AE672AB083B499DF52579FFF00C2E3F0B7ADEFFDF9FF00EBD656
              B5F19F4E5B264D1AD6796E98615E740A89EF80727E9C7D6B48E16B376E5644B1
              3492BF3117C63F12A25B43E1FB77CC8C44D7383F740FBAA7EA79C7B0F5AF1827
              2726AC5EDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9556EF5EEE1E8AA50513
              C6AD55D49B930A28A2B7310A28A2800A28A2800A28A2803AEF877E235F0E78A2
              19A77DB6938304E49E15490437E040CFB66BE920DB86460823208AF90012A6BD
              37C17F155F45B34D3B598A6B9B58C622963C1741D94824023D39C81EBC63CCC7
              615CDF3C16A77E0F12A1EE4B63DD28AF3FFF0085C7E16FFA7DFF00BF1FFD7A54
              F8C1E157700BDE2E7B9838FD0D79BF56ABFCACF47EB14BF98EFE96B9EF0F78C7
              46F13CF345A6CEEF242A1995D0AF0491919EBFFD715D0D6528B8BB491A465192
              BC5894D660AA59880075269F5E5FF19357BAB4D36C34D81D923BB2ED31538DC1
              76E17DC12DC8F61574693AB3505D4539A84798E9AFBE2278574F90C72EAD1C92
              0EA204693F55047EB55E0F89FE139D827F693444F00C90381F9E3F9D73DE0AF8
              73E1EBFF000ED9EA37CAD7D2DC26F23CD654439FBA02907231839279CD6D5FFC
              2AF0BDD5BB25BDACB6929E92453331FC431208AE970C2C5B8B6EFDF43252AAD5
              D58EC2CEF6D750B75B8B3B88A785BEEBC4C181FC4558CD78CF81B4AF12785FC6
              A6D1ECAECE9B248D0CD288DBCA6033B5C1C6072060FA123BD7B35615E92A72B4
              5DD1A539392BB56168A28AC4D028A28A004ACCF105BD9DD6817D06A33B4166F1
              1134AA402ABDCE483FCAB4EB9EF1CFFC891AC7FD7B35553579A44CB48B666F80
              B49F0E698B7FFF0008F6A925E890C7E76F915B66376DC61475C9FCABB3EF5E4B
              F047FD5EB7F583FF0067AF5AADB151E5AD257B9145A704C5A28A2B9CD428A28A
              004EF41200C9A2BCEFE2EEB175A7F876DED2DA468FED92149594E328064AFD09
              C67D4023A13574A9BA93505D499CB962E46EEA1F103C2FA64AD0CFAB44D22F05
              61569307D095040FC6AA45F147C252B6D3A8BC79EEF04807E82B96F00FC3ED03
              56F0EC1AA6A1BEF2598B031894AAC786231F29049E33C9EE38EE7A6BBF859E15
              BA85962B292D9CF49229DB23F06247E95D5286160DC257BA3152AB25CCAC7556
              1A8D9EA76C2E2C6EA2B8849FBF13861F4E3BD5BAF13F0CE89E24F08F8F16182C
              EF26D3DE7F22699626F2E48CF01CF618C839ED82338CD7B65615E9469CAD1774
              694E6E4B542D1451589A051451400954353D634ED16149B51BB8ADA376DAAD21
              C02719C55FAC2F13785AC7C55690DB5FBCE91C4FE62985829270473907D6AA0A
              3CCB9B62657B6878B6BFA9D95CFC53FED186E637B3FB640FE703F2ED013273E8
              307F2AF6AB3F17787EFEEE3B5B5D56DA69E43848D5F258F5E2BC2B58F0FDA587
              C41FEC285E536BF6A8A2DCCC37ED60B9E40033C9C715EB7A3FC30D1345D5ADF5
              1B69EF9A681B72AC92295270473851EBEB5E9E3234792176F6D0E5A2E7CCCEDE
              8A28AF28EC0A28A2800A28A28012B1756F16685A1B14D435286293AF9632CE3F
              E02A09AE77E2678BA6F0EE99159D83ECBEBBC8120EB120EAC3DCE700F6E4F615
              C77837E19BF882D1757D6AE668E09C978D10FCF2E7F8998F63DB824F5C8AEBA5
              878F27B4AAECBF3309D57CDCB0DCEE97E297849DF6FF0068C8A3A6E6B7931FCA
              BA4D3759D3B5883CED3AF21B941C131B0254FB8EA3F1AE526F84BE1792128915
              D44D8C798939247E0723F4AF37F10681AB7C37D72DEF6C6F19A190930CE38CE3
              04A38E87B71D0F5E3040D23468567CB49B4FCC9752A43592D0FA0A8AC8F0D6B5
              1F88740B4D4E31B7CE4F9D7FBAE0E187D320E3D460D6C570B4E2DC5EE7427757
              414514521851451400959179E26D174FBFFB0DDEA56F0DD703CA66C373D38FC4
              56BD7807C4E99A0F88B3CCA0168D61600F42428233F957461682AD3E56EC655A
              A7246E7B96A3AB69FA441E76A1790DB467806570371F607927D8573E3E25F844
              C9B06AE33EBE44807E7B715CAE87E02BAF166DD7FC59793BBDC80F15BA1DB843
              C8C9E76839E14631D49C922B7AEBE14F85E7B668E1B69ADA4C7CB2A4CCC41FA3
              123F4AD153C3C5F2CE4DBF2D89E6A8D5E28EBAC351B2D4EDC5C58DD457109E8F
              13861F4E3BD41AA6BDA5689187D46FE0B6C8CAABB7CCDF451C9FC057CFFA7EAB
              AAF813C497D05AC81A58D9EDDD0E76484642B63B9070477EDDCD7A168BF0C0EA
              4A354F15DD5CDCDF5C61DA10F8DB9E70C7A923D0600E8335553090A4F9A72F75
              EDDC98D694B48AD4E8E3F895E12965118D5D413C02D0C8A3F32B81F8D74D6B77
              6F7B6C9716B3C73C2E32AF1B0653F422B87D53E137876E6C9D2C6296CEE369D9
              209598671C64313C7D315C57C2AD56EF4CF17B68D23B791721D5E3272164404E
              47A70A47BE47A0A4E852A94E53A4DDD771FB49C6494FA9EEB45145711D014514
              5001451450025676A9AEE97A24424D4AFE0B607EE876F99BE83A9FC0558BEB83
              67A7DCDC88DA430C4CE11464B601381EFC5786685E18D5BC71E299EE35D17904
              7832CD2346549190022EE181D78EB800D7450A319A729BB2465526E365147A43
              FC53F092B6D17F2B8F55B793FA8AD0D37C79E19D565586DB568BCD6E024A1A32
              4FA0DC064FD2A847F0BBC231A6D7D39E438C6E6B8933FA3015C27C48F03E93E1
              CD3E0BFD35DE2F326F28DBBBEE04609CA93CF18E724F51D3BEF0A785A92E48DE
              E44A5560AEEC7B7515C77C33D527D53C156CD72ED24B03B425D8E490A78CFE04
              0FC2BB1AE2A9070938BE86D19732B8B451454941451450014D2428249C01DE96
              BCD7E306B17563A2D9D85BC8D1ADEBB09594E095503E5CFA12C33EB8F4CD694A
              9BA93505D489C9462E4CE8AFFE21F85B4E95A29B568DE45E0AC2AD27EAA08FD6
              AB43F143C272B05FED178CF63240E3F5C71F8D733E05F879E1FD4FC3B6DA9DF8
              6BD967049412954420918C2907231CE4FE15D0DEFC2BF0ADD40C90D9CB6B21E9
              24533123F06247E95D3286160DC5DEEBA99295592BAB1D6596A169A95BADCD95
              CC3710B74789C30FD2ACE0578BF84346F127853C742D96CEF24D35E6304D2AC4
              DE5BA1CED7CF4183839EDC8CF26BDA6B0AF4D5395A2EE8D29CDCD6A85A28A2B1
              3412B93F1F78A4786741668587DBAE731DBAFA1EEF8F419FCC8AE9EE278AD6DA
              5B899D522894BBB374007249AF9CFC4DAF4BE2AF114D7EFB85BAFC9021FE1407
              8FC4F24FB9F615D982C3FB59DDEC8E7C4D5F671B2DD9931A48ED921A49A56C01
              D4B313C7D4926BE8DF0AE88BE1FF000EDAD8003CD55DD330FE290F2DFE03D80A
              F21F86FA40D63C631CCEB9B7B05F3DB2382F9C28FAE79FF809AF78AE8CCAADDA
              A6BA18E0E9E8E6FA8B451457967705145140051451401E5BF1A6FA48F47D36C5
              4909713348DEFB00C0FA65B3F80AF1173F363D2BDFBE2DE8736A9E1A8EF6D90B
              C9612191940C9319186FCB00FD01AF0190739ED5EEE5ED7B1B2DCF0F1A9AAD76
              328AD282D04B02B8E7239FAD49F60F6AECE639D45995456AFD83DA8FB07B51CC
              8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456
              AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB
              07B51CC83919934BD2B57EC200248C0159840321DBD0938FA534D3D84D58ED7E
              17DF4965E3CB154384B85785C7A8DA48FD403F857D140D782FC24D0E6BEF14AE
              A8C87ECB62AC4B11C1919480A3D70093ED81EA2BDE8578798B4EB687AD97A6A9
              6A2D731E31F08DB78BB4E8E0925305C42C5A1980CED27A8238C83819E47415D3
              57937C5597C41A56A36FA8E9FA8DF416134623610CCCAA92027A81C0C8C63D48
              35CF868CA55172BB33AEAB4A3A98FF00F0AF7C73A03B3691745D49CFFA25D18C
              9FA862A0FEB41F11FC4BD139BA86F1E24EBE6DA0917F16033FAD75DE19F8A5A3
              5E69D047ABDC1B4BD440B2191495908182C08071EA41C633F8D6C5D7C45F0ADA
              C658EAD1CA4745895989F6E05773AB5B9B96A53E6F9182842D78CAC733E13F8B
              0754D4E0D3F58B48E1927611C73C2485DC4E002A4923278C8279238C735EA1C5
              7CF009F197C4913E9768D0C73DCA49B4000A22E373B63804E093EE71C93CFD11
              5CF8DA70A6E3CAAD75AAEC5D094A49DF5168A28AE33A028A28A004AE7BC73FF2
              246B1FF5ECD5D0D73DE39FF912358FFAF66AD28FF123EA899FC2CE1BE08FFABD
              6FEB07FECF5EB75E49F047FD5EB7F583FF0067AF5B15BE3BF8F2FEBA19E1FF00
              86828A28AE4360A28A28012B03C59E18B5F16691F629E4313ABF9914AA325187
              1D3B8C1208ADFAF2FF008AE75DD3DACF54D32FEF60B3DBE54EB04CCAAAD9CAB1
              00F7CE33EC07715B61E329544A2ECCCEA34A3A9CFB7C37F1A6852B49A3DE07C9
              EB697262623DC1207E19341D73E26E8BFF001F10DF491AF5F32D5655FC58027F
              5AE97C23F1434B974AB7B5D6EE1EDEF21508D348A5965C7462464827BE7FAD74
              53FC43F0A5B465DB5885F1CED8D5989FC00AEE9D5AFCDCB529A97C8C1469B578
              CAC721E1BF8BB25CEA10D9EB967144246082E20C80A49C0DCA49E3D483C7A57A
              C66BE73D7271E39F1D13A3DA320B9658D72A031C000BB01C0E393EC2BE8B0300
              7B0AC3194A10E571566D6A8BA1293BA7AA1D45145711D0145145001451450078
              17897FE4B29FFAFF00B7FE495EF95F3F78D66FECEF8AF3DDCCADB22B9826381C
              950A878FC8D7B058F8DBC3BA95CDBDADA6A91CB3CE711C611B24E33D08E381DF
              15E8E3212953A6D2D2C72D192529267454514579C7505145140051451401E11F
              188B9F18C01BEEFD8936FD373D6F59689F12D6C6D85AEB368B6E225F29432F0B
              818FE0F4C569FC53F0A5C6B5A743A9D8C464BAB3043C6A32CF19E4E3D483CE3B
              827BE2B0FC13F13EDAC34E874AD744AAB02848AE5177614700301CF1D0100E46
              38EE7D68CA53C3C7D9A4DADD1C6D2551F3697343FB17E29FFD06ED7FEFA5FF00
              E22A86ADE0CF883AEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB29
              7E25F84E28778D543F190A90B927FF001DE3F1AF3CD77E21EB9E25D720B4F0D1
              BAB68B25238E3C6F9493F79B19000C74CE00C927D2693AF295F912B756AC39FB
              34AD76CF44F87DE1FD43C37E1F96C351688C9F686913CA62C02955EE40E720D7
              5B597A0DA5ED8E8B6B6FA85DBDD5E05CCD331CE58F240F619C0FA56A579D564E
              5372674C1251490B451454141451450025780FC4A8D65F8932C6C3E56F254FD0
              AA8AF7EAF04F88BFF2539BEB07FE82B5DF977F15FA339B13F0A3DE9405501400
              00E829D476A2B80E93C0F558525F8D22375051B5287231C1FBA483F5AF7B15E1
              1A8FFC96F4FF00B08C3FFB2D7BB8AEEC6BD29FA1CF43797A85782785C05F8CD8
              51802FAE4003B0C495EF75E09E19FF0092CDFF006FF73FC9E9E0BE0A9E815FE2
              89EF945145701D0145145001451450053D46FEDF4BB09EF6EA40904285DC9F4F
              F1AF279FE28F88B5ABF6B5F0E69436F55FDD9964C6719383803F023DEBB9F889
              6173A8F81F5082D559E50164D8A32582B06231DF8078F6AF32F863E2ED2FC393
              5EDBEA64C297250ACE14B005723040EDCE41C7AE6BD0C3528BA32A96E692E873
              569B5351BD91B6B6FF0016352FBF37D910F4CB4298FF00BE416FCEB9FF001778
              335DD33473ACEBBAB8BB9FCC58D537B4840393F79B18C63A00457A94DF117C29
              045BCEB11BF7C223313F8015E6FE38F175D78C74E9574CB199747B1759279DC0
              05989DAB9E70072703249CE4E315B61E759D45EE28AF4B115230E5DDB3B3F841
              FF00225BFF00D7DC9FC96BBFAF21F857E2DD334FD34689772B477535DFEE06C2
              43EF0A072338E41EB81CD7AF57162E2E35A5736A2D382B0B45145731B0514514
              005739E2EF0A5AF8B34A5B49A530CB1B6F866519287A10471907B8CFA57455E5
              7F15DF5ED32E6D753D3B50BD82C993CA9560999551F248240E390719F6F715B6
              1E329544A2ECCCEA34A3A9867E1D78DB41919F48BBDE09EB697263247B86201F
              A64D075EF899A2FF00C7CC37B246BD7CCB5122FE2C013FAD751E14F8A3A4DC69
              76F6FACDCB5B5EC4811E4914B2CA471BB201C67BE71CD6F5CFC44F0A5B445DB5
              789FD16356627F002BBA556BA972D4A6A5F2305085AF1958E53C2FF169EFB528
              6C75AB48E133308D678490AAC4E06E524F07D73F87A7AA57CEBA849FF09BFC42
              2FA4DA3C4B732A003182140019DB1C0E0127FA9EBF458E9586329C20E2E2ACDA
              D8BA1294AE9EA828A2A86B1AA5BE8DA4DCEA372711408588CF2C7A003DC9C01F
              5AE249B7646EDD95D9E79F167C4E62B78FC3F6927EF66C3DCE3A85CFCABF8919
              3EC07AD796B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80
              C01EC0552BB72F3045C9038C0EE6BE970D4551828F5DD9E356A8EA4EE7B67C26
              D28597851AF5D7F7B7D297CF7D8A76A8FF00D08FE35DF551D1EC574CD1ACAC57
              1882048CE3B9000CD5EAF9EAD3F695252EECF5A9C7960A22D1451599A0514514
              0094B51B3AC6859980503249ED59969A91D5E42D619FB129C1BAED291DA3F51E
              ADD3B0CF24349B15CD56008C11915E7FAF7C24D13569DEE2CA4934E95CE59625
              0D1E7D429E9F4040F6AF41ED45542A4E9BBC5D88A94E1515A48F1E8BE0CEA168
              C7ECDAEC0CA7F864B7201FC98D4BFF000AAB5CFF00A0969BFF007E9FFC6BD728
              C5747D76B7731584A4BA1E47FF000AAB5BFF00A0969BFF007E9FFC68FF008555
              ADFF00D04B4DFF00BF4FFE35EB9452FAED5EE3FAAD3EC791FF00C2AAD6FF00E8
              25A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD
              3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF
              008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3F
              E1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00
              E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FA
              AD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3
              FF008D7AE5147D76AF70FAAD33C7E4F843ABDCAEC975AB48D4F511C0DCFE66AD
              E9BF04EC60943EA1AACD70A0E4C7145E583EC4E49FCB15EAB45278CACD5AE0B0
              94B7B14B4DD2ECF48B18ECEC6DD208231F2A20EFEA7D4FB9ABD4515CCDDF5674
              2492B20A86E6DA0BCB77B7B9852685C61E391432B0F420D4D451B0CE16F7E13F
              85EEE42F1C3736B939220978FC03038FC2A083E0FF0086A17DCF25FCC07F0BCC
              A07FE3AA0D7A0515BAC4D6FE6667ECA1D8CCD2340D2F4180C3A659456EA7EF15
              1966FAB1E4FE26B529296B06DB7765A496C145145030A28A2800AAB7F636FA9D
              8CD65771F996F32ED913711907A8C820FEB56A8A36D85B98DA1F86347F0E09FF
              00B2AD3ECFE7EDF33F78EFBB6E71F789C753D3D6B628A29B6E4EEC124B442D14
              51486145145001514D0C5710BC5346B246E0AB23A82187A107AD4B450070F7FF
              000AFC2F7B29912DA7B42C727ECF2E07E01B207D00AAD17C1EF0DC6C0B4BA84A
              07679971FA28AF40A2B7589AC9594999FB287632746F0D691A046534DB18E02C
              3E67E59DBD8B1C93F9D6B52D2560E4E4EED96925A2168A28A061451450014514
              500739E22F0668DE276492FEDD84E836ACD136D70339C67A11D7AFA9F5ACDD1B
              E19685A1EA906A16F2DEC93C2DB93CD91480704740A3D6BB4A2B455AA28F2F36
              847246F7B0B451456658514514005145140095CC6B5E01F0EEBB334F736023B8
              6CEE9606D8C49EE71C13EE41AE9E8AA8CE50778BB09C549599E7A9F077C36926
              E33EA0E3FB8D2AE3F45CD757A3786347F0FA15D32C62859B867E59D87BB124E3
              DB35AF47E3573AD526AD29364C69C56A90B451456458514514005145140095CF
              EA3E0AF0FEADAA7F695ED879B7676E64F3A45FBBD380C0718F4AE828A7194A2E
              F176138A7B8B45145219CFC9E0CD066D6C6B3258675012097CEF39FEF0C60E37
              638C0ED8ADFC514537272DD8924B61338AC0B5F05E8167ACFF006BC161B2FBCC
              693CDF3A43F336771C16C7393DBBD7414B4464D6898349EE1451452185145140
              0514514009DAB94D5BE1E786B57B86B89AC3CA99B967B772993EA40E33EF8CD7
              5745542A4A0EF176265152DD1C4DB7C2AF0ADBB876B59A7C769666C7E4315D4C
              5A5D843A79B08ECE04B32A50C22301083D411D39ABB4539D59CFE27708C22B64
              7316BE01F0C59DFC57B6DA5AA5C44E1D184AE42B0390402D8FD2BA7C514B5329
              CA4EF2771A8A5B05145148614514500150CF0457503C33C692C4E30C8EA19587
              A107AD4D45170387BDF855E17BC90BA41716A49C9104B81F806C81F41C55687E
              0F786A270CF2DFCA3FBAF32E3F4507F5AF40A2B7FACD64ADCCCCFD943B195A3F
              87B49D02131E996515B86FBCC012CDF563927F135AB4B4562DB93BB2D24B612B
              C7FE2EF880CF756FE1FB77C88C89AE307F88FDD53F40738F715EA9A9DFC3A5E9
              9737F39C456F1991BDC01D07BD7CDA6E66D5F58B9D46E4EE92573237A024F007
              B0E83E82BD0CBA8F34FDA3D97E67262EA72C7956EC70516F6DFEE8C9F735534A
              025D6AC95C8C35C46189E982C33563516D96E147F1102B36291A195254387460
              C0FA10722BDA49B8B3CD8BB3B9F588E94B59DA36A96FAD6936DA85B3068E640D
              8073B4F707DC1C8FC2B42BE51A69D99EEA69AB8514B597ABEBFA5E871799A8DE
              C70E7954CE5DBE8A393F80A6937A206D2D59A7587E20F15695E1BB7325F4E3CD
              232B0272EDF8761EE702B81F107C50BAB806DF4781EDD5CED591C6E95C9E0055
              190BFA9FA1ABFE11F004B34EBADF89834D72E77C76B212DB7FDA7CF56F63D3BE
              4F4EA58654E3CF5B4F2EACE7759CDF2D3D7CCB9A75B6AFE3875BED695ECB4304
              343A7A121AE0750D21E095E9C719F4C727BC8E348A358E35088A005503000F61
              4E14715CF39F374B236847956BB8EA28A2A0B0A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803CD3E306B3F65D12DB4A8CE1EF2
              4DF201FDC5C7F3623F235E5F6116CB5048E58E4FF4AD8F89FA91D43C6F731839
              8ED55604FC064FFE3CC47E154E34091AA8EC00FD2BE870B0F67422BBEA78F899
              F3547E466EAA0858FD326B32B7EF2DBED3015040607209F5AC66B4B846C185C9
              F6191FA575C24AD63046BF87BC5FABF865D8584E0C2E72F04A37213F4C823F02
              2BAE3F19F54F2F1FD97661FD4B363F2CFF005AF3F8F4EB990F29B47AB1C55D8F
              4E8205DF3B06C7273C0158D4A1426EF28EA6B1AD38E899BD77F10FC57AC0648A
              E92CE16E0FD9936E07B31CB0FC0D63DADA5D6A1A92DBDA24B7FA8CC7924963EE
              493D00EE49FAD6AE81E1CD53C573F97609F67B153892EDD4851EA14773EC3F12
              2BD93C39E17D3BC3163E45947995BFD6CEFCBC87DCF61E83A57256AF4B0EB969
              A5736A74AA56779BD0C6F07FC3FB6D00ADF5FB2DD6A8467791948BD907F53CFD
              39CF6D494B5E3D4A92A92E693D4F46108C15A214514541614514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              45145001451450014514500145145001451450014514500145145007CB9AFCA6
              7F11EA531EAF772B73EEE4D6BC4C24895C1C86008A87C73A44DA378B6FE29108
              8E695A785BB32B12463E8491F5158F6BA84D6CBB570C9E87B7D2BEA2369D38B8
              ED63C39A6A4D3DCE8314100024F00773592355B999D638600D231C2800B127D0
              01D4D759A2FC38F10EBA565D498E9F6A4E7120F9C8F6418C7E38FA1ACE728D35
              79BB0A14E53768A39F6BBF3675B6B489EE6E1CED548D4924FA00393F85777E1B
              F85F3DD3A5F7895C841865B28CF5FF00788E9F41F98E95DD787BC23A478662C5
              85BE66230F3C9F348DF8F6FA0C0ADEAF32BE3DCBDDA7A2FC4F428E114759915B
              DBC36B02416F1245120DA888B85503B003A54D4515E75CED0A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A28032F59D0F4CD6ED0C3A959C7708BCAEEC82A7D88E47E15E7BA7F82BC3
              D3EAE60934FDD1E7A79D20FF00D9A8A2BB309392A72B3392BA5CE8F42D2F42D2
              B481B74FD3EDEDF8C16441B8FD5BA9FCEB528A2B924DB7A9D105A05145148B0A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2803FFFD9}
            Stretch = True
          end
        end
      end
    end
    object ts_Retrato_Simples: TTabSheet
      Caption = 'ts_Retrato_Simples'
      ImageIndex = 3
      object rl_Retrato_Simples: TRLReport
        Left = 11
        Top = -191
        Width = 794
        Height = 1123
        Background.Align = faBottom
        Background.Arrange = baCenter
        Background.Height = 100
        Background.Stretch = True
        Background.Width = 472
        DataSource = Src_Cabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 8.000000000000000000
        Margins.BottomMargin = 13.000000000000000000
        PrintDialog = False
        ShowProgress = False
        object RLBand_canhoto_simples: TRLBand
          Left = 38
          Top = 30
          Width = 718
          Height = 52
          BandType = btHeader
          AfterPrint = RLBand_canhotoAfterPrint
          object RLDraw63: TRLDraw
            Left = 619
            Top = 0
            Width = 97
            Height = 49
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw64: TRLDraw
            Left = 0
            Top = 19
            Width = 91
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel10: TRLLabel
            Left = 656
            Top = 5
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'NF-e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 7
            Top = 21
            Width = 75
            Height = 10
            Caption = 'Data de Recebimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw65: TRLDraw
            Left = 92
            Top = 19
            Width = 526
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel74: TRLLabel
            Left = 96
            Top = 20
            Width = 136
            Height = 10
            Caption = 'Certifica'#231#227'o e Assinatura do Recebedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 649
            Top = 19
            Width = 38
            Height = 14
            DataField = 'IDENNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel82: TRLLabel
            Left = 625
            Top = 19
            Width = 21
            Height = 14
            Caption = 'N'#186'. '
          end
          object RLLabel85: TRLLabel
            Left = 637
            Top = 34
            Width = 31
            Height = 12
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText48: TRLDBText
            Left = 670
            Top = 32
            Width = 46
            Height = 14
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
          end
          object RLDb_Ret_Simples_RazSoc_Can: TRLDBText
            Left = 275
            Top = 33
            Width = 72
            Height = 14
            Alignment = taCenter
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
          end
          object RLDBText50: TRLDBText
            Left = 532
            Top = 21
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'emissao_texto'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 532
            Top = 30
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'valor_texto'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText270: TRLDBText
            Left = 0
            Top = 0
            Width = 618
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'recebemos'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 637
          Width = 718
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLSubDetail2: TRLSubDetail
          Left = 38
          Top = 638
          Width = 718
          Height = 300
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = Src_Detalhe
          object RLBand4: TRLBand
            Left = 0
            Top = 43
            Width = 718
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand4BeforePrint
            object RLDBText85: TRLDBText
              Left = 0
              Top = 0
              Width = 40
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = Src_Detalhe
              Holder = RLMemo44
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText104: TRLDBText
              Left = 316
              Top = 0
              Width = 38
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = Src_Detalhe
              Holder = RLMemo48
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText105: TRLDBText
              Left = 352
              Top = 0
              Width = 24
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'cst'
              DataSource = Src_Detalhe
              Holder = mRetrato_Simples_CST
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText106: TRLDBText
              Left = 376
              Top = 0
              Width = 28
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODCFOP'
              DataSource = Src_Detalhe
              Holder = RLMemo50
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText107: TRLDBText
              Left = 402
              Top = 0
              Width = 24
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = Src_Detalhe
              Holder = RLMemo51
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText120: TRLDBText
              Left = 661
              Top = 0
              Width = 26
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = Src_Detalhe
              Holder = RLMemo57
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText141: TRLDBText
              Left = 626
              Top = 0
              Width = 34
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = Src_Detalhe
              Holder = lblcabrs_vl_icms
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_qtd_simples: TRLLabel
              Left = 425
              Top = 0
              Width = 44
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = RLMemo55
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_unitario_simples: TRLLabel
              Left = 469
              Top = 0
              Width = 52
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = RLMemo54
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_total_simples: TRLLabel
              Left = 520
              Top = 0
              Width = 56
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = RLMemo53
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object txtret2_issqn: TRLDBText
              Left = 686
              Top = 0
              Width = 30
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_ipi'
              DataSource = Src_Detalhe
              Holder = ret2_issqn
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object rlRetratoSimplesNome: TRLDBMemo
              Left = 39
              Top = 0
              Width = 230
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomepro'
              DataSource = Src_Detalhe
              Holder = RLMemo45
            end
            object det_marca3: TRLDBText
              Left = 267
              Top = 0
              Width = 50
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'marcapro'
              DataSource = Src_Detalhe
              Holder = m_marca3
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText108: TRLDBText
              Left = 576
              Top = 0
              Width = 30
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = Src_Detalhe
              Holder = lblcabrs_bc_icms
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText109: TRLDBText
              Left = 913
              Top = 0
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = Src_Detalhe
              Holder = lclbdetp_vl_icms
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText111: TRLDBText
              Left = 603
              Top = 0
              Width = 22
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = Src_Detalhe
              Holder = RLMemo56
              SecondHolder = rlRetratoSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_rodape_simples: TRLBand
            Left = 0
            Top = 67
            Width = 718
            Height = 198
            BandType = btFooter
            AfterPrint = RLBand_rodape_simplesAfterPrint
            object RLDraw126: TRLDraw
              Left = 0
              Top = 61
              Width = 330
              Height = 136
            end
            object RLLabel89: TRLLabel
              Left = 1
              Top = 0
              Width = 717
              Height = 13
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'C'#193'LCULO DO ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw66: TRLDraw
              Left = 0
              Top = 14
              Width = 165
              Height = 29
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Pen.Style = psInsideFrame
            end
            object RLLabel90: TRLLabel
              Left = 2
              Top = 17
              Width = 82
              Height = 11
              HelpType = htKeyword
              Caption = 'Inscri'#231#227'o Municipal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw67: TRLDraw
              Left = 165
              Top = 14
              Width = 165
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel91: TRLLabel
              Left = 169
              Top = 16
              Width = 98
              Height = 11
              HelpType = htKeyword
              Caption = 'Valor Total dos Servi'#231'os'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw68: TRLDraw
              Left = 332
              Top = 14
              Width = 197
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel97: TRLLabel
              Left = 334
              Top = 17
              Width = 107
              Height = 11
              HelpType = htKeyword
              Caption = 'Base de C'#225'culo do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw69: TRLDraw
              Left = 530
              Top = 14
              Width = 186
              Height = 29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel98: TRLLabel
              Left = 532
              Top = 16
              Width = 66
              Height = 11
              HelpType = htKeyword
              Caption = 'Valor do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText142: TRLDBText
              Left = 416
              Top = 28
              Width = 110
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVBC'
              DataSource = Src_Cabecalho
            end
            object RLDBText143: TRLDBText
              Left = 126
              Top = 28
              Width = 35
              Height = 14
              Alignment = taRightJustify
              DataField = 'EMITIM'
              DataSource = Src_Cabecalho
            end
            object RLDBText144: TRLDBText
              Left = 202
              Top = 27
              Width = 124
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVSERV'
              DataSource = Src_Cabecalho
            end
            object RLDBText145: TRLDBText
              Left = 599
              Top = 27
              Width = 112
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVISS'
              DataSource = Src_Cabecalho
            end
            object RLDBMemo8: TRLDBMemo
              Left = 332
              Top = 61
              Width = 384
              Height = 136
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'INFADICINFADFISCO'
              DataSource = Src_Cabecalho
            end
            object RLDBMemo7: TRLDBMemo
              Left = 2
              Top = 63
              Width = 326
              Height = 10
              Alignment = taCenter
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = Src_Cabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel116: TRLLabel
              Left = 335
              Top = 47
              Width = 207
              Height = 12
              Caption = 'OBSERVA'#199#213'ES RESERVADAS AO FISCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel172: TRLLabel
              Left = 4
              Top = 46
              Width = 101
              Height = 12
              Caption = 'DADOS ADICIONAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand13: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 43
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLMemo44: TRLMemo
              Left = 0
              Top = 15
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'C'#243'digo'
                'Produto')
            end
            object RLMemo45: TRLMemo
              Left = 39
              Top = 15
              Width = 230
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Descri'#231#227'o do Produto/Servi'#231'o')
            end
            object RLMemo48: TRLMemo
              Left = 316
              Top = 15
              Width = 38
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'NCMSH')
            end
            object mRetrato_Simples_CST: TRLMemo
              Left = 352
              Top = 15
              Width = 24
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'CST')
            end
            object RLMemo50: TRLMemo
              Left = 376
              Top = 15
              Width = 28
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'CFOP')
            end
            object RLMemo51: TRLMemo
              Left = 402
              Top = 15
              Width = 24
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Und')
            end
            object RLLabel99: TRLLabel
              Left = 0
              Top = 3
              Width = 717
              Height = 12
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'DADOS DO PRODUTO/SERVI'#199'OS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLMemo53: TRLMemo
              Left = 520
              Top = 16
              Width = 56
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'V. TOTAL')
            end
            object RLMemo54: TRLMemo
              Left = 469
              Top = 15
              Width = 52
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Vlr Unit'#225'rio')
            end
            object RLMemo55: TRLMemo
              Left = 425
              Top = 15
              Width = 44
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Style = bsVertical
              Lines.Strings = (
                'Quant')
            end
            object RLMemo56: TRLMemo
              Left = 603
              Top = 15
              Width = 22
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Aliq'
                'Icms')
            end
            object RLMemo57: TRLMemo
              Left = 661
              Top = 15
              Width = 26
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Aliq'
                'IPI')
            end
            object ret2_issqn: TRLMemo
              Left = 686
              Top = 15
              Width = 30
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor '
                'IPI')
            end
            object m_marca3: TRLMemo
              Left = 267
              Top = 15
              Width = 50
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Marca')
            end
            object lblcabrs_bc_icms: TRLMemo
              Left = 576
              Top = 16
              Width = 30
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'BC ICMS')
            end
            object lblcabrs_vl_icms: TRLMemo
              Left = 626
              Top = 16
              Width = 34
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'VL ICMS')
            end
          end
          object rlRetSim_Complemento: TRLBand
            Left = 0
            Top = 53
            Width = 718
            Height = 14
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object RLDBMemo10: TRLDBMemo
              Left = 1
              Top = 1
              Width = 716
              Height = 12
              Align = faClient
              DataField = 'DETINFADPROD'
              DataSource = Src_Detalhe
            end
          end
        end
        object RLBand14: TRLBand
          Left = 38
          Top = 82
          Width = 718
          Height = 205
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLDraw138: TRLDraw
            Left = 383
            Top = 128
            Width = 333
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw70: TRLDraw
            Left = 348
            Top = 159
            Width = 368
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw75: TRLDraw
            Left = 0
            Top = 159
            Width = 117
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw76: TRLDraw
            Left = 0
            Top = 11
            Width = 322
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw77: TRLDraw
            Left = 375
            Top = 60
            Width = 16
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw78: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 11
            Align = faClientTop
            DrawKind = dkLine
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Pen.Style = psDot
          end
          object RLLabel100: TRLLabel
            Left = 335
            Top = 10
            Width = 66
            Height = 20
            Alignment = taCenter
            Caption = 'DANFE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel101: TRLLabel
            Left = 323
            Top = 31
            Width = 96
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Documento Auxiliar de'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel102: TRLLabel
            Left = 323
            Top = 41
            Width = 92
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Nota Fiscal Eletr'#244'nica'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel103: TRLLabel
            Left = 323
            Top = 61
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = '1 - Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel104: TRLLabel
            Left = 323
            Top = 74
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '2 - Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel105: TRLLabel
            Left = 335
            Top = 110
            Width = 35
            Height = 11
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw79: TRLDraw
            Left = 429
            Top = 10
            Width = 288
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel106: TRLLabel
            Left = 431
            Top = 14
            Width = 72
            Height = 11
            HelpType = htKeyword
            Caption = 'Controle do Fisco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw80: TRLDraw
            Left = 0
            Top = 128
            Width = 376
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel107: TRLLabel
            Left = 4
            Top = 130
            Width = 93
            Height = 11
            HelpType = htKeyword
            Caption = 'Natureza de Opera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw81: TRLDraw
            Left = 118
            Top = 159
            Width = 119
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw82: TRLDraw
            Left = 238
            Top = 159
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel108: TRLLabel
            Left = 4
            Top = 161
            Width = 77
            Height = 11
            HelpType = htKeyword
            Caption = 'Inscri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel109: TRLLabel
            Left = 120
            Top = 161
            Width = 111
            Height = 11
            HelpType = htKeyword
            Caption = 'Insc.Est.da Subst.Tributaria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel110: TRLLabel
            Left = 242
            Top = 161
            Width = 20
            Height = 11
            HelpType = htKeyword
            Caption = 'Cnpj'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel111: TRLLabel
            Left = 351
            Top = 161
            Width = 345
            Height = 11
            HelpType = htKeyword
            Caption = 
              'Chave de Acesso da NF-e p/Consulta de Autencidade no Site www.nf' +
              'e.fazenda.gov.br'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw83: TRLDraw
            Left = 785
            Top = 391
            Width = 140
            Height = 29
          end
          object RLLabel112: TRLLabel
            Left = 788
            Top = 393
            Width = 102
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de Calculo do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText146: TRLDBText
            Left = 374
            Top = 109
            Width = 38
            Height = 10
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
          end
          object RLDBText147: TRLDBText
            Left = 352
            Top = 173
            Width = 71
            Height = 10
            DataField = 'chave_acesso_calc'
            DataSource = Src_Cabecalho
          end
          object RLDBBarcode3: TRLDBBarcode
            Left = 431
            Top = 33
            Width = 110
            Height = 85
            BarcodeType = bcCode128C
            DataField = 'CHAVE_ACESSO'
            DataSource = Src_Cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object RLDBText148: TRLDBText
            Left = 4
            Top = 173
            Width = 28
            Height = 10
            DataField = 'EMITIE'
            DataSource = Src_Cabecalho
          end
          object RLDBText149: TRLDBText
            Left = 121
            Top = 173
            Width = 38
            Height = 10
            DataField = 'EMITIEST'
            DataSource = Src_Cabecalho
          end
          object RLDBText150: TRLDBText
            Left = 242
            Top = 173
            Width = 103
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDBText151: TRLDBText
            Left = 378
            Top = 65
            Width = 53
            Height = 10
            DataField = 'saida_entrada'
            DataSource = Src_Cabecalho
          end
          object rlRetratoSimplesEmiRazao: TRLDBText
            Left = 86
            Top = 13
            Width = 234
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMITXNOME'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText153: TRLDBText
            Left = 5
            Top = 141
            Width = 341
            Height = 14
            AutoSize = False
            DataField = 'IDENATOP'
            DataSource = Src_Cabecalho
          end
          object RLDBText154: TRLDBText
            Left = 339
            Top = 91
            Width = 38
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'numeronf'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlLogo_Retrato_simples: TRLImage
            Left = 2
            Top = 22
            Width = 80
            Height = 94
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Picture.Data = {
              0A544A504547496D61676563660000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080183036B03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A28010FAD63DE6B891CC6DECE36B9B81C10A70ABF535475BD5DE6B83A75A49
              B40FF5D28EDFEC8FF3ED55ADE586D2211C2A14773DC9F526BC9C4635B9385376
              EEFF00C8873D6C8BDE4EA777CDD5F8801FF96702F4FC7AFEA68FEC788F26FEF4
              B7A9947F8557FB78F5A3EDE3D6B97F72F596AFCD8B9895AC2FADFE6B3D52427F
              BB2F23F5CFF2A587C433DA4A21D52DF664E04B1F23FCFD3F2A87EDE3D6A39AE6
              39E331CAA190F506973FB377A32B796E839BB1D5452C73C4B244EAE8C32194E7
              34FAE12CF509343BC186692CDCF2BD48FA7BFF003FE5DC452A4D12C91B064600
              823B835EA60F16B111B3D24B72A325224A28A2BB4A0A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A4C52D432DD416F8F3A78E3CF4DEE07F3A16B
              B05EC4D45311D255DC8EAEA7BA9C834FA0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A004ACFD6AFF00FB3B4A9AE0
              7DFC6D4F763D2B42B8FF001DDC158ACEDC74666723E8001FCEB971755D3A3292
              22A4B962D9CD477850139259892C4F524F734FFED03EA6B37751BABE46F2EE70
              FB46697F681F5347F681F5359BBA8DD4F9A5DC39D9A5FDA07D4D1FDA07D4D66E
              EA3751CD2EE1CECD092F04A855B906BA8F06EA2648E5B073CC637C7F42791F99
              1F9D70FBAB57C357260F105A91C072508F5C823F9E2BA7055654F1117DF72E9D
              4F791EA1451457D71DC145145001451450014514500145145002514561788BC5
              7A5786ADFCCBF9FF007AC331C09CBBFD07F53C538C652768A265251576CDC270
              39AE1FC45F13B46D14B41687FB42E875585BE453E85B9FD335E7DE21F17EB9E2
              B2D16E361A69E90213971FED1E0B7D381EDDEB1A1D3EDA000EC0EDEAFCFE9D2B
              D4A3804B5ABF71C35719D205FD5FE20F89F5B2CA972F6B01E91DA02BF9B7DE3F
              9E3DAB9498CCD2169CB990F24B9249FA935D3E401C0000A8E7892788A4801047
              071C83EA2BD18724348C51C52A9293BC999FE1EF126A1E1BD423B9B399C20606
              484B1D922E790474E9DFA8ED5F4AD9DD477D6505DC27314F1AC887D430C8FE75
              F2A32947653D54907F0AFA5BC1AACBE0DD1B7F27EC919FC368C7E95C19A538A5
              19A3BB0736EF13768A28AF20EF0A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A28012B86F1F822E2C5BB15703EBC7F8D7735CB78E
              ACCCFA32DC28F9ADDC31FF0074F07F5C571E360E7424919574DD3763CFB7D1BE
              A0DD46EAF9AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF
              5A1A082FAF58A8EBE729FC0727F95646EAE9BC0F686E75CFB411F25B21627B6E
              20803F226B6C3D2E6AB14BB9A526E53491E99DA8A28AFAB3D60A28A2800A28A2
              800A28A280128240193C555BEBEB6D3AD24BABC9D21823196773802BC7BC59E3
              BBAF10EFB4B167B3D2B90CE789271EFE8A7D3BF7F41BD0C3CEB3B2DBB98D5AD1
              A6B53A5F157C4A8ED9DF4FF0FECB9BA190F72798E23EDFDE3FA7D7A5799CC4BD
              CC97BA85C34F72E72D2CAD9FCB3FA7E95485CB1616F61033B1E00452493EC072
              6ADA783FC5179FBCFEC7BD3EEF1EDFC81C57B74A8D2A0AD74BCD9E6CE752B3BF
              4219356897845673EBD05423586CF308C7B373FCAA0D4349D474A7097F65716C
              C7A79B19507E848C1FC2A9D75463092BAD518B5676674905C25C461D09C7420F
              507D2A4CD63E94E44922E78201FC8FFF005EB4A594451339FE104D6528D9D913
              6311A27BAD40C51296925976A01DC93803F335F5258DB259585BDA47F7218963
              5FA28007F2AF04F869A41D57C676D232E61B3CDC3F1DC70BF8EE20FE06BE83AF
              3333A979C60BA1E9E0E168B977168A28AF2CED0A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A867812E209219543248A5581
              EE0F06A6A29349AB303C635BD2E5D1B5292D6404AE7746E7A3293C7E3D8FB835
              9DBABD8F5AD16D75CB2304EA55D798E403943EA3FC2BCA75AD0EFB4398ADD467
              CA2709328251BF1EC7D8F35E262706E9C9B8ABA3C6C4D09527CCBE1296EA3755
              6F397FBC28F397FBC2B9391F638FDAAEE59DD46EAADE72FF007854F690CD7F70
              B05AC4D34ADD1501FCCFA0F73C50A9B6EC9046A733B2DC91034B22A22B33B101
              540C924F00015EB5E19D1868DA52C6E337121DF291EBE9F41FE27BD67785FC22
              9A4E2EEF36C97847CA07DD8FE9EA7DFF00C9EB2BD7C1E17D9FBF2DCF630B41C1
              734B762D14515E81DA145145001451450025656B9AFD8787B4F6BBBE976AF444
              5E5E46F451DCD55F1278A2DFC3D6E89B1AE7509FE5B7B48B9790FF00419EFF00
              D6B97D3FC11A97883501AC78B6E0976FB96919C045CE76E7F847D3939E4839AD
              A9D38FC551D97E66539BF861B9C9DFDE6BFF0010355012D5DE18CE62B54388A1
              07A33B1C0271DCFB803B5755A3FC28B7CACDAF5D1B961CFD9A025631EC4F53FA
              57A05A59DB58DB2DBDADBC70C4BD1235C0FD2ACD6D3C64ADCB4FDD4671C3ABF3
              4F5651D3B49D3F4987C9B0B386D93BF968067EA7B9F7357A8A5AE36DBD59D092
              5B14751D32D356B192CAF6059A090619587EA3D0FBD7CD9E21D21F42D7AF34C7
              62DE43E158F059480549F720835F50115E05F1555478EA72BD5A18CB7D76E3F9
              015E9E5751FB470E9638F1915CBCC731A58C348FEC00A97529B1108C1E58E4FD
              053ACD3CBB619E0B727FCFD2A6D0B4997C4FE26B7B08F3E5BB65D87F0C63963F
              9671EE40AF5E5251BCDEC8F3A29C9A4BA9EB1F0A3423A6F86DB5095713DFB071
              91FF002CC642FE7927F115E8151430C76D04704481238D42A28E800E00A92BE6
              2AD47526E6FA9EDD382845450B45145416145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001514B0C73C6D1CB1ABA30C
              1560083F854B45026AFA3391D43E1D6837CC5E3864B473C936EF81F91040FC05
              6337C27B52D95D5270BE8D1827F3AF46A2B374A0DEA8E49E070F37771386B2F8
              5FA3C0C1AE66B9B9C7552FB54FE433FAD759A7E9763A5C3E5595AC7021EA1171
              9FA9EF5768C5546118EC8D6961A952F8236168A28AA370A28A2800A28A2800AC
              FBEB9B81982C23592E987593223887F7988EBECA393EC3246852000741421331
              B4AF0F5B69D7125ECACD77A94DFEB6EE51973ECA3A2A8EC07EB5B5494B4DB6F7
              04AC1451452185145140086BE75F1E5C8D4BC7DA91539449445C76D8A14FEA0D
              7BFEA57B1E9DA65D5ECBFEAEDE2691BDC019AF9A12479E79AF273992676763EA
              49249FCCD7A99641F34A7D8E1C6CB45116EE511C3B1782DC0F615EB9F09FC367
              4ED1DF58B84C5C5F0022C8E5620720FF00C08F3F4C579AF84F4193C57E2686D4
              86FB321F32761FC3183C8CFA93803EB9ED5F46451A4512471A85440155474007
              18AD331AFCB15497CC8C252BBE76494514578E7A214514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145004171710DA5BC971712AC70C6A59DD8E
              0281D49AF28D67E304D25D3DBE81651B46A71F68B9C9DC3D428238FA9CFB0AD0
              F8CBA94B6BA0D969F1B955BB9899307EF2A60E0FB6581FC2BC8EC5710961FC47
              F957AB81C242A479E7A9E46618D9D27C90D0F4DB1F17F896E62135D6A4910619
              0915BA0C8F5C906AE7FC251AB7FD05E7FF00BF50FF00F115C08D4C8000C80060
              0A3FB50FA9AEE7838748A3CD58E9ADE477DFF0946ADFF4179FFEFD43FF00C451
              FF000946ADFF004179FF00EFD43FFC45703FDA87D4D1FDA87D4D1F5487F2A1FD
              7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE128D5BFE82F3FFDFA87FF00
              88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF0084A356FF00A0BCFF
              00F7EA1FFE228FF84A356FFA0BCFFF007EA1FF00E22B81FED43EA68FED43EA68
              FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FFDFA87FF0088A3FE128D5BFE82F3
              FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF84A356F
              FA0BCFFF007EA1FF00E228FF0084A356FF00A0BCFF00F7EA1FFE22B81FED43EA
              68FED43EA68FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE1
              28D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333
              BC93C51ADEC3E56B0E1FB79904447E38506B263F8ABE20D2AE8C7A95ADA5DC20
              E1B6031BFE7923F4FCAB99FED46F5354AF25FB531279057068583A4D35288BEB
              F5134D48FA07C37E25D3FC4FA6FDB2C2424A9DB2C4DC346D8E847F9CD6D62BE7
              BF859A9CB61E37B6B756222BC568A45CF1C296538F5C8C7E26BE84CD7898AA1E
              C6A72AD8FA0C2D6F6B4F99EE2D14515CE7485145140051451401E7BF16357FB2
              787A1D2E26FDF5F483763A88D4827F5DA3F3AF179DF0A21404938181D7D85749
              E38D786B5E26B9BA46DD6F0FEE20C1E0AA93923EA493F4C7A56AFC2EF0B1D5B5
              73ACDE266D2D1818C11C492F51F82F07EB8F7AF7E82586C3F348F2AA7EFAB591
              E85F0FBC2FFF0008DF87D7CF4C5F5D6249F8E578F953F007F326BAEA5A4AF0A7
              3739394BA9E9C22A315142D14515250514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              14514005145140051451401E67F19B4D7B9F0F5A6A118CFD926C3FB2B8C67F30
              A3F1AF1FB27CC257B83FCEBEA3BAB5B7BDB67B6B98239A171868E450CADDF907
              8359A3C23E1D1F7743D397FDDB741FD2BD1C263951872B573CCC6601D7973459
              F3BEEA339AFA27FE112F0F7FD016C7FEFC2FF8563EB9F0E743D5AD196DEDD6C2
              E71F24D6E3183EEBD08FD7DC575C735A6DA4D3B1C12C9EA2574D1E1DBA8CD497
              F6379A36AB3E99A8204B884F51D1C75041F42391FD0D415E9C66A4934EE99E5C
              E9B84B965B8FCD19A6668CD322C3F3466999A3340587E68CD33346680B0FCD19
              A6668CD016242476A4DD50CB288973D49E00F535EB1E0CF86B0259A6A1E21469
              6E640192D49216207A6E19E5BF41D319AC2BE261415E5F71D587C1CEBBB4763C
              B77535DF6A16EC0135F45FFC225E1E03FE40B63FF7E17FC283E12F0EE30744B0
              23D0DBA9FE95C3FDAB0FE53BD64F3BEB23C5BE14E9AF7DE3882E00FDDD9C6F2B
              9ED920A81F5CB67F035F41551B0D1F4CD28C874FD3ED6D4C98DFE444A9BB1D33
              8033D4D5EC715E5E26BFB69F358F5F0D43D8C3958B45145607485145140095C9
              FC41D7BFB13C33308DF6DCDDFEE22C1E467EF37E033CF6245759D2BE7AF881E2
              53E20F1149E4396B4B7CC500078383CB0FA9FD00AEBC1D0F6B555F65AB39F115
              3921A6ECC6D2349BAF10EB36FA6DA0F9A46E588C8451D58FB01FE1D4D7D21A4E
              976DA36976FA7DA26D8615DA3D49EE4FB93935CB7C38F08FFC23DA4FDAEEE3C6
              A376A0B8239893A84FAF73EFC76AEDEAF1D89F6B3E58EC89C351E48DDEEC5A28
              A2B84EA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2803CCFE2FE82B75A2C5ADC29FE9164C16423BC6C71F
              8E188FCCD7912B8640C3B8CD7D29E23B21A8786F52B42B932DB48ABF5DA71FAE
              2BE64B739840F42457B9965472A6E2FA1E066B4929A92EA4F9A334DCD19AF4EE
              79161D9A334DCD19A2E161D9A334DCD19A2E161D9A334DCD213804FA5170B1D6
              FC35D0D75CF1789E64DD6DA7A89482320BF4507F1C9FF80D7BF579A7C17B311F
              876FEF48F9E7BADB9F555518FD59ABD2EBE6F1D51CEB3EC8FA9C0D350A2BCC5A
              28A2B90ED0A28A2800A28A2800A292A2B9B88ACED65B89DD638A252EEE4F0AA0
              649FCA8DDD81E871DF12FC4A343F0F35AC0F8BCBD0634C1E5531F337E5C0F73E
              D5C57C2FF079D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD08ACF482FBE2
              778E2497E78ECD48CB1E90C20F03FDE3CF1EA49E80D7B95959C1A7D9C3696B18
              8E08502220E800AF4AA4BEAD47D947E27B9C718FB5A9CEF65B16A8A28AF34EC0
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A280108C8AF95EF2DBEC1AADF59E31F67B878F1FEEB11
              FD2BEA83D2BE70F1E5AFD8BC7DAC44070F20947BEE50C7F526BD3CB256A8E3DC
              F2F348DE9A7D8C1A29B457B67803A8A6D1400EA29B45003B34D90E118E7B1A29
              929C467DE932A2B547D09F0CAD3ECBE01D341186977CA7F17247E98AEBAB33C3
              F69F60F0E69B68460C36B1A1FA8500D6A57CAD59734DBF33EB69479609051451
              50681451450014514500267DABCC7E25EB571A85D5B784749064BAB9606E029E
              83AAA93D87F11F603B135D9F8ABC430F86B439EFA501A5FB90464FDF90F41FD4
              FB03583E01F0B4F6092EBBAB82FAC5F92EE5C73129E71EC4F53E9C0EC73D342D
              05ED65D36F531A8DCBDC5F336FC29E1AB7F0BE8C9650E1A63F34F363991FB9FA
              7603FF00AF5BD452D73CA4E527296ECD2315156414514522828A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A006FAD783FC5A83C9F1D2C9FF003DAD51F3F42CBFFB2D7BC9AF19F8D3
              6FB357D22E7FE7A42F1FFDF2C0FF00ECD5DB97CAD5D799C39846F419E6B9A334
              99A335F407CE0B9A33499A33400B9A33499A33400B9E29F0406EAF2DAD864996
              55418F7207F5A8F35ADE1583ED5E32D162EBFE971B11FEEB027F406A2A4B960D
              F64694A3CD348FA6D46001DA9681D28AF953EB428A28A0028A28A004A63BAC68
              CEEC155464927000A7D73DAC4526BB7474689992C9706FE4538DCA791083EAC3
              05BD14FF00B429C55DEA26EDB18DA7D9378CBC44BAFDE29FEC8B2629A742C389
              5B3CCC47A6471F41E9CF758E6A28A18E08522894246802AAA8C0007402A5AA9C
              F9BD0518D85A28A2A0A0A28A2800A28A2800A28A2800A28A280128AE575EF12D
              DE99A8FD9A18A12A10365C127273E86B33FE136D43FE785BFE4DFE35C15331A1
              4E4E327AA3375629D99DED15C17FC26DA87FCF0B7FC9BFC6BA6F0FEA936AD60D
              3CCA8AC1CAE1060741F5F5ABA38EA55A5C907A8E352327A1B145145761614514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450015E57F1AE1CE9BA44FF00DC9DD7F3
              5CFF00ECB5EA95E71F19E3DFE11B5907F05EA93F4D8E3F9E2BA308ED5A2CE6C5
              ABD191E279A4CD2515F4A7CC585CD19A4A280B0B9A5CD368A02C3ABA9F86B179
              DF10F4CC8C84F31CFF00DFB6C7EB8AE505771F0962F33C76ADFF003CED647FA6
              703FAD618976A32F43A70ABF7D1F53DF68A28AF993E9C28A28A0028A28A008A5
              1218888F01CF009EDEF4CB5B68ED2111463804924F2589E4927B927249A93CD8
              C1C175E3DE8F3A3FF9E8BFF7D54F3AEE2D0928A8FCE8FF00E7A27FDF429E083D
              3A534D3D862D14555B9BFB5B319B8B88E3F40CC01FC294A4A2AED8AE59A2B15F
              C55A3A1C7DA89FF76363FD284F15690E40FB5633FDE8D87F4AC7EB542F6E642E
              78F736E8AA96DA85A5E7FC7BDC45271D15C123EA2ADD6D19292BA63D028A28AA
              1851484E064F4A679D1FFCF44FFBE8526D2DC0F3FF0018FF00C878FF00D735FE
              B5815BDE2F60DAE920823CB5E41CFAD60D7C7E33F8F2F5382A7C4C2BBEF057FC
              819FFEBB37F215C0D779E0C755D19F7328FDF37523D0574E54D2AFA9743E23A6
              C52E2A3F3A3FF9E89FF7D0A55746E8C09F406BE9B993EA760FA28A2A8028A290
              903AD00145675CEB9A65A644B791647F0A9DC7F21CD67C9E32D2D0E14CCFFEEA
              63F9E2B9E789A317694912E715BB3A1A2B9AFF0084DB4EE9E4DCFF00DF2BFF00
              C554D1F8BF4A7FBCF247FEF464FF002CD4AC6D06FE242E78F737E8AA56BAB58D
              E1020BA89D8FF0EEE7F2EB576B78CE32578BB9774C5A28A2AC028A28A0028A8C
              CB1824175FA668F3A3FF009E8BFF007D54F347B8125151F9D1FF00CF44FF00BE
              853C104641E29A69EC014B514D3C50466496458D075663802B127F176970B615
              E4948EBE5A7F8E2B2A95E9D3F8E4912E496E6FD15CF43E32D365755DB3A16200
              DCA3BFD0D7420E453A75A9D45783B829296C2D14515A9425151CB3450A179645
              451D4B3605664FE26D260241BB5623FB80B7EA38ACE7569C3E29242724B735E8
              AE75BC67A62F41337D13FC4D33FE136D3B38F26E7FEF95FF00E2AB1FAEE1FF00
              9913CF1EE74D4573C9E31D2D8E18CA9EEC9FE15760D7F4BB8384BD881F463B7F
              9E2AA389A32F864BEF1A9C5F53528A6AB061952083D3069D5D0505145359D540
              DCC067D4E28BD8075151F9D1FF00CF44FCC51E747FF3D13F3A9E68F715C928A6
              0963271BD7F3A7D34D3D86145145300A28A2800C518A619114F2E07D4D279B1F
              FCF44FFBE854F32EE0498A3151F9B1FF00CF44FF00BE85289118E15D49F4068E
              65DC07D14515402514671542E359D3AD09135E44AC3AA86C9FC8735129C61AC9
              D84DA45FA2B024F17E929F76491FFDD423F9E2A16F1AE9A3A45707E8A3FC6B07
              8CC3AFB689E78F73A5A2B9C5F1A6987AA5C0FAA8FF001AB3178A7489B03ED5B0
              9ECEA47EB8C538E2E83765240A71EE6D51505BDDDBDD2EE8268E51EA8C0FF2A9
              EB74D3574EE5DC5A28A2A8028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A004AE1BE2D45E67812E1BFE79CD137FE3D8FEB5DCD7
              1DF14973F0F3523E862FFD1AB5B61DDAAC7D4C711AD297A1F3D678A33480F029
              735F4C7CC585CD19A4CD19A05617346693346680B0B9AF45F8331EEF15DF4BFD
              DB32BF9BA9FE95E739AF4EF82AB9D6F546F4817FF42FFEB572E37F80CEBC12FD
              FA3DA68A28AF9D3E8C28A28A00283D0D141E868607936A3FF213BBFF00AECFFF
              00A11AAB56B51FF909DDFF00D767FF00D08D55AF88A8DF3BF53CE7BB0AF4CB3B
              D82C7C3D6735C48111604E4FFBA38FAD799D59BABE9EED21491F31C318445EC3
              03AFD4F735D583C5FD5F99EEDEC694EA725CDAD57C5B75765A3B3CDBC3EA3EFB
              7E3DBF0FCEB9D776772CEC5989C924E493F5A4A2B9EAE22A569734D9129393BB
              61451456248AACC8C1949520E4107045741A4F8B2EECD963BB26E20F53F7C0F5
              CF7FC7F3AE7A8ADA957A945F341951938BBA67AE5B5CC3776E9340E1E37190C2
              A6AE03C23AA35B5FFD8E463E4CDF741FE17FFEBF4FCABBFAFAAC26256229A9F5
              EA76C27CCAE54D57FE41377FF5C5FF0091AF28AF57D57FE41377FF005C5FF91A
              F28AF2F397EF44C6BEE828A28AF0CE60A28A29805749E0AFF90CCBFF005C0FFE
              84B5CDD749E0AFF90CCBFF005C0FFE84B5D7816FEB1034A5F1A3BEA3B515CE78
              9B5EFECE885B5B30FB4C83AF5D83D7EBE95F555AAC68C1CE4763924AEC9F59F1
              25B6980C49FBEB9C7DC0785FF78F6AE26FF5BBFD458F9F3B08CFFCB34385FF00
              EBFE39AA0CCCEC59892C4E4927249F53495F2F89C7D5AEDABD91C73AB293F20A
              28AD0B4D0F52BE50F05AB943FC4D85047A8CE33F85724213A8ED14D90936EC91
              9F456FFF00C21DAAE33887FEFBFF00EB550BCD1351B152F3DAB841D5970C07D7
              19C7E35ACB0B5A0AEE2CA70925768CFAD7D3BC47A869E42890CD1774909381EC
              7A8FE5ED59145453AB3A6EF06C4A4D3D19E9FA4EB56BAB45985B6C8A3E78DBA8
              FF00EB56A5790DB5CCB697093C0E52443C1FE9EE3DABD2B45D5A3D5AC5651859
              57E5913FBA7FC2BE8F018F55D724F4923AE9D4E6D1EE6A507A5141E95E99A9E4
              FAA7FC85EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE26B37ED
              25EA79F2DD857A00D6A0D23C3B64CFF3CAD026C8C1C13C0FC87BD79FD3E49649
              8A991CB1550AB93D0018007B56D86C54A87338EECA84DC6FDCB1A86A775A94C6
              4B9909C1F95070ABF41FD7AD54A28AE79CE536E52776C86DB776496FFF001F31
              7FBE3F98AF5E1D05790DBFFC7CC5FEF8FE62BD787415EE64BB4BE474E1F6631D
              D6342CC40503249E315C7EAFE316DCD0E9A0607067619CFF00BA3FA9FCA97C65
              AB3065D3A26C02374A477F45FEBF9571F539866128C9D2A4FD58AAD569F2A25B
              8B99EEA4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD789
              EF4DF76CE7D5B23A2B7A1F07EAB2AE59618BD9DF27F406A63E0AD4BFE7ADB7FD
              F4DFFC4D74AC1621ABF296A9CBB1CDD15AD77E1BD52D14B35B19147F146437E9
              D7F4AC9AC274E74DDA69A25A6B468B567A9DE583836D70F18CE4A8395FC41E2B
              B3D17C5515F32DBDD810CE7856CFCADEDEC7DAB82A2BA30D8DAB41AB3BA2A152
              517E47B1564788B4DFED1D264445CCB1FCF1FB91DBF119155BC2BAB3EA362D14
              CDBA78300927965EC4FBF07F2F7AE82BE9E3286268DD6CD1D89A944F1DA2B63C
              4BA77F67EAF26D5C4537CE98E9C9E47E79FC08AC7AF91AB09539B84BA1C324D3
              68504AB06524107208EA0D7A9E917A350D320B918DCCB8603B30E0FEB5E575D6
              782AFF0064F3583B70E37A03EA3AFE631F91AEFCAEBF256E47B335A32B4ADDCE
              DE8A28AFA73AC4A6BBAC68CEC400A0924F6A7573BE2ED44DA699F6746C497195
              E3A85EFF00E1F8D635EAAA54DCDF42652E5576717AADF1D47529AE49F959B099
              ECA381FE7D7354E8A2BE367394E4E4FA9C0DB6EEC2BB7F0669BE55B497F22FCD
              2FCA9ECA0FF53FCAB91D3ECDEFEFA1B58F20BB004FA0EA7F21935EAB0C296F04
              70C6BB51142A8F402BD6CA6839CDD596C8DE846EF99925636B3E20B7D257663C
              DB8232B183D3DC9EC2ADEAD7EBA6E9D2DC9C1651F28F563C01F9D797CD349713
              3CD2B967724B31F5AEECC31AE82E487C4CD2AD4E5D16E5DBFD72FF005162269D
              9633FF002CD0ED5C7A7BFE39ACEA28AF9B9D49D47CD26DB391B6DDD8515A967E
              1DD4EF543A5B9443FC521DBF8E3AE3F0AD0FF842B52C67CDB51FF026FF00E26B
              6860EBCD5D44A54E4F64737456F4DE0FD5621955865F647C13F98158D716D3DA
              4A63B889E271D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB23
              0E8CA4823F115D1697E2EBAB5611DEE6E22FEF74751FD7F9FBD737453A388A94
              5DE0C23371D533D6ED2EE0BDB749E0903C6C3208A9EBCE3C33AABE9FA8AC2EC7
              ECF3305607B13C06FCF83EDF4AF471C8AFA8C16296229F36CD6E76D39F3AB8B4
              5145761614514500145145001451450014514500145145001451450014514500
              21EB5C97C4C5DDF0F755FF007633F948A6BAD35CB7C47C7FC2BFD5B3D3CB5FFD
              0D6B4A3FC48FAA32ADFC397A1F3851499E28CD7D41F316168A4CD19A005A2933
              4668016BD53E090CEA1AC37A4510FCCB7F8579566BD63E089FF49D6FFDC87F9B
              D72E37F8123AB05FC747B1514515F3A7D1051451400507A1A283D0D0C0F26D47
              FE42777FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA
              79CF7614F8E379A458E346776202A819C93D8532BB3F06E96A226D4245059895
              8B3D80E091F53FCBDEB5C2D075EA722F99508F33B09A67831762C9A839C9E7CA
              43803D89EFFE7935B91787B4A88002CA33FEF8DDFCF35A9457D3D2C151A6ACA2
              76469C62B4464CDE1CD2A65C359C6BEE9F2FF2AE475FF0E369405C42ED25B31C
              1DDF7909E80E3A8F7FF27D12AA6A36A2F74F9EDCE3E74207B1EC7F3ACF1581A5
              529BB46CC53A7168F28A28A2BE50E11F0CAD04F1CC9F7A360C0FB83915EBCAC1
              94107822BC7ABD6AC1B769D6C7D6253FA0AF732693F7A274E1DEE8925892785E
              290651C1561EC6B23FE113D1FF00E7D5BFEFE37F8D6DD1F8D7B33A34EA7C6AE7
              438A7B9E67E23B1834FD57C8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AF249595CE1A89293482BADF0CE8961A9698D35CC25DC
              48573B88E303D0D7255DF782FF00E40CFF00F5D9BF90AE8CB2119D6B495CAA29
              396A8B3FF089E8FF00F3EA7FEFE37F8D59B1D0EC34D9CCD6B09491976925C9E3
              39EE7DAB4A8AFA38E1E945A718A4CEBE48A7A222B99D2DADA49DCE12352CDF40
              2BCA6F2EA4BDBC96E653F3C8C4F5E83B01EC0607E15DE78C2E0C3A1B463FE5B3
              84E3F3FE9FAD79E578B9C566E6A9AD8E7AF2D520A28A2BC539CEB7C2DA0472C4
              350BA40C09FDD230C8E38DD8FE5FFEAAED6B92B5F1869D6D690C02DEE311A051
              855EC00F5A9BFE137B0FF9F7B9FF00BE57FC6BE9F0B5F0B469A8A92B9D909422
              AC99D4521008E45731FF0009BD87FCFBDCFF00DF2BFF00C552FF00C26FA7FF00
              CFBDCFFDF2BFFC5574FD7B0FFCC8BF690EE6778A7418ED93EDF68A1509C4A806
              00CF008FE447BD7295D9EA1E2DD3EF6C27B6F22E0798854128BC123EBDB8AE32
              BE7B30F63ED39A8BBDCE5ABCB7BC42B63C35A89B0D5E30CDFBA9888DC76E7A1F
              C0FE84D63D00904107047435C946A3A73538F7222DC5A68F62EB476AABA6DC7D
              AF4EB79CF25E3563F5C73568F4AFB48B528A6BA9DF7D0F28D57FE42F7BFF005D
              DFFF00423552ADEA9FF217BDFF00AEEFFF00A11AA95F175BF892F53CF96EC28A
              2BA4F09692B7976D7732E62808DA08E0B75FD3AFE22AA85175AA2844718B9349
              09A57846E2F1166BB63044C32171F391F8F4FE7ED5D0C5E12D263401E1790FAB
              4841FD08ADE1457D3D1C050A692E5BBF33B1528A31D7C2FA3860C2D3041C8FDE
              371FAD6C741C5145754294217E4562D24B63CB35B94CDADDE3B75F3597F01C0F
              D0550AD2D7E036FAEDDA9FE290B8F70DCFF5ACDAF8EC45D55927BDCE09DF99DC
              2BB9F057D9FEC136DDBE7F99F3FAE3B7F9F5CD70D52433CB6F2092191E371FC4
              AC47EA2AF095D50A9CED5C70972CAF63D7A8AF3987C5BAB4230D2A4A3FE9A27F
              518AB91F8DAF00FDEDAC2DFEE923FA9AF7E39AE1DEF74752AD167746B8EF1668
              859D2F2CEDD99DDB6C8B1A924F70D81F4C13F4A13C75FDFB0FC44BFF00D6AB09
              E37B33FEB2D671FEEE0FF5A9AF89C26221C9290A5384D59B391FECBD43FE7C6E
              7FEFCB7F851FD97A87FCF8DCFF00DF96FF000AEEEDFC55A4CE42999A263DA452
              3F5E9FAD6C452C53C6248A45910F46520835CB4F2CA153E0A9721518BD99C578
              46D6F2DB577335B4F1C6D1119742067231C9EFD6BB9A0003B52D7AD86C3AA10E
              44EE6F08F2AB183E29D37EDFA4B48833341F3AE3B8EE3F2FD40AF3AAF6220118
              AF2FD774FF00ECDD56589462263BE3FF0074F6FC0E47E15E4E6F87D5565F330A
              F1FB466D4F6574F657B0DCA7DE8D8363D4771F88C8FC6A0A2BC58C9C5A6B7473
              A767747AF43324F0C7346728EA181F506A4AE6BC1B7FF68D39AD5CE5E03C67BA
              9E47F515D357D961EAAAB4D4D753BE32E64989DABCCBC43A87F68EAF2BAB6624
              F923F42075FD73FA576BE24D47FB3F4890A1C4B27EED31D727A9FCB35E6B5E4E
              6F88DA8AF9985797D90A28AB16568F7D7B15B463E69180CE3A0EE7F0193F8578
              718B93515AB673A5776475BE0BD37642F7F20F99F291E7B283CFEA3F4AEBAA1B
              7812DADE38231848D4281EC2A5AFB1C35154692823BE11E5491CA78E252B676B
              10E8D2163F80FF00EBD7115DCF8DE02FA7413019F2E4C1F607BFE60570D5F3D9
              A27F5977392B5F9C2B4B40F23FB6EDBED3B7CBDC7EF74CE0E3F5C566D15C14E7
              C9352B5EC669D9A67B171DA8AF2FB4D7F53B250B15D3141FC2E037E1CF38FA56
              947E34D45301E2B771FEE907F9D7D153CDA835EF5D1D6ABC4EFAA86ABA5C3AA5
              9BC1228DD8251B1CAB7635CD278EA51F7EC54FD2423FA54E9E3980FDFB3917FD
              D707F9E2B5963F0B523CB296E37560F4B9CA9D2F5004836373C1C71137F851FD
              97A87FCF8DCFFDF96FF0AED22F19E98E70EB3C7EEC99FE44D6B5A6A9637DFF00
              1ED731C8719DA0E08FC3AD79F0CBF0D51FB950CD5283D99E6A34CD401C8B1BA0
              7FEB937F857A8DB9692DA2775219901208EF8A9B028AF4F0983586BDA57B9AC2
              9A8EC2D14515DC68145145001451450014514500145145001451450014514500
              1451450025725F135B6FC3DD54FB463FF222575B5C77C526C7C3CD487AB443FF
              0022AD6B415EAC7D518D77FBA97A1F3B51499A335F4E7CD585A293346680B0B4
              52668CD0161475AF55F824D8D47575F58A33F913FE35E520F35EA1F04DBFE275
              A9AFADBA9FC9BFFAF5C98DFE048EAC1FF1A27B6514515F3C7D0851451400507A
              1A283D0D0C0F26D47FE42777FF005D9FFF00423556AD6A3FF213BBFF00AECFFF
              00A11AAB5F1153E37EA79CF7615EA3A0C622D0ECD40C0312B7E2467FAD79757A
              AE8DFF00205B2FFAE09FFA08AF5B265EFC99BE1F765EA28A2BE84EA0A43D0D2D
              07A1A4C0F21BA509773281801D863E84D45562FBFE3FEE7FEBAB7F3355EBE22A
              2B49AF33CE7B857ABE97FF00209B4FFAE29FC8579457AB695FF209B3FF00AE29
              FC857B1937C723A30FBB2ED14515F40749E77E31FF0090F1FF00AE6BFD6B02B7
              FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7054F8D8577DE0AFF009033FF
              00D766FE42B81AEFBC15FF002067FF00AECDFC8575653FEF1F22E87C474B4514
              57D39D8723E396C5B5A27ABB1FC857155DC78E133636D27A49B7F304FF004AE1
              EBE5734BFD65DCE2ADF1851452AA9760A080490013D066BCE32128AE8FFE10BD
              4FFE7A5B7FDF67FC28FF00842F54FF009E96DFF7D9FF000AEBFA8E23F90D3D9C
              BB1CE515D1FF00C217AA7F7EDBFEFB3FE147FC217AA7FCF4B6FF00BECFF851F5
              1C47F207B397639CA2BA3FF842F54FF9E96DFF007D9FF0A3FE10BD53FE7A5B7F
              DF67FC28FA8E23F903D9CBB1CE515D1FFC217AA7FCF4B6FF00BECFF851FF0008
              5EA9FF003D2DBFEFB3FE147D4711FC81ECE5D8E97C2AFBFC3D6D9EA370FF00C7
              8FF4ADA3D2B2F41B09B4DD2D2DA7285D49394248E4E7D056A76AFA8C3A6A8C54
              B748EC826A3A9E51AA7FC85EF7FEBBBFFE846AA55BD53FE42F7BFF005DDFFF00
              423552BE42B7F125EA704B7615E93E178041A05BF1CBE5C9F5C9FF000C579B57
              A9E8800D12C87FD304FE42BD4C9E29D56FC8DB0EB56CD0A28A2BE8CEB0A28A28
              0397F1668CD7910BDB75DD344BF3A8EACBEDEE3FAD7095EC55CEEAFE14B6BF76
              9EDDBC89CF27032AC7DC763EFF00CEBC5C7E5CEA3F694B7EA8C2AD2E6D56E79F
              D15AD75E1BD56D49CDB34ABFDE88EECFE1D7F4ACF92D6E61CF9904A87B87423F
              98AF0E746A41DA5167338B5BA21A28A2B3B32428A28A40156AC751BAD3A6125B
              4A579E573956FA8AAB455427283BC5D98D369DD1E9BA26B316AF6BBC7CB32604
              899E87FC2B5735E65E1DBD6B2D6A06048495846E3B1C9C0FD71F957A68E95F55
              80C4BAF4AF2DD1DB4A7CD10AE73C5DA69BBD345CA2E64B7CB71D4AF7FF001FC2
              BA3A6BA2BA32B00411820D74D7A4AAD3707D4A94799599E3F455DD5EC1B4DD4A
              6B620ED07299EEA791FE1F506A957C6CE0E127196E8E069A7666A787AFFF00B3
              F5885C9C46E7CB7F4C1FFEBE2BD3BB578ED77D6DAF05F0AFDB59819E35F2883C
              92FD07F435ECE5589508CA127B6A74519A49A673FE2CD47ED9AA9851BF756E0A
              0FF7BF8BFA0FC2B0694B1762CC4924E492792692BC8AF55D5A8E6CC252726DB0
              AECFC17A6ED4935071CB7C91E7D0753F9F1F81AE4ECED64BDBC8ADA21F3C8C17
              E9EA4FB0193F857AADADB47696B14110C246A1457A594E1F9EA3AAD688D6846E
              EEC9E8A28AFA43ACAB7D671DFD9C96D28F924183EDE87F0AF2FBFB19B4EBB7B7
              9D70CBD08E8C3D47D6BD66A8EA5A55B6A90795709923EEB8E194FB1AF3B1F825
              888DE3F1232A94F9D1E57457477DE0EBE818B5A95B88FB0C8561F5CF07F3FC2B
              1A5D32FA0CF9B673A81DCC671F9E315F3B530B5A9BF7A272B84A3BA2AD14ACAC
              A70C083E846292B0B32028A28A002955991832B156072083820FB1A4A28D80EB
              FC3DE2776952CEFDF70380931FE4DEBF5FCFD6BB3C8AF1DAF46D23598E7D26DD
              E79944BB70D93C920E33F8E335EF65D8FBC5C2ABD8EAA552EACCDDA28A2BDC3A
              028A28A0028A28A0028A28A0028A28A0028A86399656709CAA1DA5BB13DC0F5C
              743EFC76A9A800A28A2800A28A2800AE0FE2E4BE5F81655CFF00AC9E34FD73FD
              2BBBAF37F8D32EDF09D9C63ABDEA93F408FF00D715BE195EB47D4C312FF7523C
              2A8A4A335F4A7CED85A293346680B0B452668CD01616BD23E0BCBB7C5B771E78
              7B263F8874FF001AF36CD779F08A5F2FC7512FFCF48245FD01FE95CD8B57A323
              A30DA5589F41D14515F387D0851451400507A1A283D0D0C0F26D47FE42777FF5
              D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA79CF7615EA
              BA3FFC816C7FEB827FE822BCAABD5747FF00902D8FFD704FFD0457AD937C7237
              C3EECBD451457D09D4141E868A0F434303C92FBFE3FEE7FEBAB7F3355EAC5F7F
              C7FDCFFD756FE66ABD7C3D4F8DFA9E73DD857AB695FF00209B3FFAE29FC85794
              D7AB695FF209B3FF00AE29FC857AF937C523A30FBB2ED14515F42749E77E31FF
              0090F1FF00AE6BFD6B02B7FC63FF0021D3EF1AFF005AC0AF8EC6FF00BC4BD4E0
              A9F1B0AEF7C1473A34A3D2623F45AE0ABA3F0CEBD06971CB05C8608EDBD59467
              9C6083DFB0AD72DAB1A75EF2D11546494B53BFA2B1078B347233F6A3FF007E9B
              FC2ACD96B7A7EA53186D67DF205DC41461C671DC7BD7D2C7134A4ED192B9D6A6
              9BD190F89AD4DDE853851968C798BF875FD335E6B5EC2CA194823208AF30D734
              C6D2B5278B1FBA625A33FEC93D3EA3A7FF00AEBC8CDE83BAAABE6615E3F6919B
              40E0E68A2BC3398F55D2AF9750D3A1B80465946EF661C1FD73576BCCF44D725D
              1E623064B773F3C79E87D47F9E7F2C77367AEE9D7AA0C572818FF0390ADF91AF
              AAC1E361560949DA48EDA751491A74B5119A3DBB8C8A07AE6B32FBC47A6D8A9C
              CEB2BFF7223B8FF80FC6BAE7569C15E4D1A3925AB2CEABA9C3A55A7DA2504F21
              42AF5627D3F9FE1587FF0009C5A7FCFACDF98FF1AE5F56D5E7D5EE4492FCB1AE
              76460E76FF00893DCD67D78388CD6A73FEEB639A55DDFDDD8EE3FE138B4FF9F5
              9BF31FE340F1C5A1200B59FF004FF1AE1EB7FC2BA49BFD405C48BFB880E738FB
              CDD40FC3A9FC3D6A6863F1556A28458A352727647A0C6C5E356652A48C953DA9
              E7A5141E95F49D0EB3C9F54FF90BDEFF00D777FF00D08D54AB7AA7FC85EF7FEB
              BBFF00E846AA57C556FE24BD4F3A5BB0AF54D17FE40965FF005C13F90AF2BAF5
              4D17FE40965FF5C13F90AF5326FE248DF0FB97E8A28AFA23A84AAF7D742CACA6
              B9285C46A5B6838CE2AC545730ADCDB4B0B7DD910A9FC462A277E576DC4CE5FF
              00E1398BFE7C9FFEFB147FC27317FCF93FFDF62B8E9E17B79E4864187462ADF5
              07151D7CC3CCB131766CE4F6B33B5FF84E62FF009F293FEFB15D4C5224D124A9
              82AE030FA1AF21AE9B42F14FD8615B4BC5668978575E4A8F423BFF003FAD75E0
              F326E7CB5D974EB5DDA4770F04527DF891BEAB9AACFA469D272F636E4FAF963F
              C2A2875ED2E700A5EC23FDF6DA7F235685FDA1E45D427FE062BD8BD19AE8CDFD
              D65093C33A44BD6CD41FF658AFF23583AEF8560B4B292EECDDC79632D1B1C823
              BF3D78F7CD74F2EB1A7400992F6018EC1C13F9572DAFF8A22BCB57B3B20C51FE
              FCAC31C7B0F7F5AE1C62C22A6EF6B99D450B3B9CA514515F327192DB922EA12B
              D43823EB915EBA3A0AF2ED0AD4DDEB56B181C070EDEC179FFEB7E35EA23D2BE8
              7278B50948EAC3AD05A28A2BDA3A0E5BC65A779F6497A8B978787C752A7FC0FF
              00335C2D7AF4B124F0BC522864752AC0F706BCAB50B37B0BF9AD5F27631009EE
              3A8FCC60D7CEE6F87E59AAA968CE5AF1B3E6456A7F9B2084C3BCF9658315F7C1
              00FD704D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A
              72692DD82573AAF05E9BCC9A848BEA91E47E67FA7E75D9557B3B58ECAD22B788
              61235DBF5AB15F6185A0A8D250477C23CB1B0B451457496737A978AE3D3B5096
              D1AD5DCC78CB06033900FF005AABFF0009CC5FF3E4FF00F7D8AA3E34B331EA31
              5D01F24C9B4FFBC3FF00AD8FC8D7315F398AC76269559413D0E59D49C6563B5F
              F84E62FF009F27FF00BEC56BE8BADC5ACA4A52231B46402A483D7A7F2AF33ABD
              A56A9369378278BE60461D09C6E1E9EC7D0D4D0CD2AFB45ED5DE228D677F7B63
              D48A2B0C15047B8AAEFA7594BF7ED206FF007A307FA566DA78AB4CBA51BA6F21
              CFF0CA318FC7A7EB5A49A958C83297901F712035EEC6AD0A8AE9A674A945EC57
              9340D2A5186B1847FBABB7F9551B9F07E972A9F292485BD55C9FE79AD67D46CA
              3197BB8147BC80565DF78AF4EB4422293ED127658FA7E7D3158D68E1127CF626
              4A16D4E12FECDEC2FA5B573968DB19F518C8FCC1155AA7BCBA92F6F25B997EFC
              8C491E9E807B01815057CAD4E5E67CBB1C4ED776D82AD4324CB100BD39C555AE
              F346D1223A45B34CA7CC65DC7F1248FD2B6C3509D69351E85422E5B1D3D14515
              F64778514514005145140051451400DEF58FA96A124B7C9A3D8B91772AEF9A51
              FF002EF16705BFDE3D147AE4F40418FC4DE218FC3F60AEA9E7DECEDE55ADB0FB
              D2C87803E9C8C9FEA453FC3BA44BA558B4977209F52BA6F3AEE6FEF3FA0F4551
              C01E83DEB451B479990DDDD91AB0431DBC090C4BB5114051E807D6A6A28ACCB0
              A28A2800A28A28010D7947C6F9F6E9DA45BF779247FF00BE428FFD9ABD5FBD78
              9FC6DB9DDACE9B6DFF003CEDDA4C7FBCD8FF00D96BAB02AF5E272635DA8B3CB2
              8A6E68CD7D09E1D87514DCD19A02C3A8A6E68CD0161D9AEBBE194E20F881A5B1
              E8CCE9F9A301FA915C7E6B6FC2371F66F176912E7016F22C9F62C01FD09ACAB2
              E6A725E46949DA717E67D4F451DA8AF993E8C28A28A00283D0D141E94303C9B5
              1FF909DDFF00D767FF00D08D55ADFBDF0D6AD2DF5C4B1DA128F2B329F313A139
              07AD41FF0008B6B5FF003E7FF9153FC6BE3EA61ABB9B6A2F7EC70384AEF431EB
              D5747FF902D8FF00D704FF00D045705FF08BEB43FE5CFF00F22A7F8D77FA6C4F
              6FA65AC32AE244855587A100035E9E534AA53949CD5AE6F422D377562E514515
              EE9D01487A1A5A0F4A181E497DFF001FF73FF5D5BF99AAF5BB75E19D5E5BC9E4
              4B3CA3BB107CC41904E477A8BFE116D6BFE7CFFF0022A7F8D7C754C2D7726D45
              EFD8E07095F631EBD5B4AFF904D9FF00D714FF00D045703FF08BEB3FF3E7FF00
              9153FC6BD074F8DE0D3EDA29061D235561E840AF5729A3529CA4E71B5CDE845A
              BDD16A8A28AF70E8386F1BDB32DE5BDD7F0BA6CFA1049FD73FA572B5EADA969F
              0EA566F6F38F95BA11D54F622B81D43C35A8D8B9DB119E3ECF10CFE63A8FE5EF
              5F399960E6AA3A91574CE5AB4DDEE8C7A29595909560411D41182292BC8B339C
              2BA4F057FC8665FF00AE07FF00425AE6EBA4F057FC8665FF00AE07FF00425AEB
              C0AFF6881A52F8D1DFD66EADA543AB599864E18728E072A7D6B4A92BEB2708CE
              2E32D8ED693566793DFE9F73A75C186E108239561D187B555AF59BCB2B7BF80C
              57312C887D7B7B8F4AE4B50F054A84BD84C1D7A8493861F43DFF001AF9DC4E57
              520DBA5AA396745AD51C9D1572E34ABFB427CEB49540EFB491F98C8FD6A9D799
              284A2F54D33169ADC28A29402C4000927A0032696A02515A36BA16A7787F7769
              205FEF38DA3EBCE33F85747A7782E38C892FE5F30F5F2D3217F13D4FE95D3470
              55EABD2365E65C69C99CF68FA2DC6AD38080AC2A7E7948E07B0F53ED5E8F6767
              0D85AA5BC0BB6341C7A9F7352430C7044238902228C0551802A4AFA2C1E0A187
              57DE5DCEAA74D405A0F4A283D2BB8D0F27D53FE42F7BFF005DDFFF00423552BA
              0BFF000DEAD36A3732C769B91E67656F3146416C8EA7D2ABFF00C22DAD7FCF91
              FF00BFA9FE35F1F570D59CDB517BF6385C2577A18F5EA7A2FF00C812CBFEB827
              F215C27FC22FAC8FF973FF00C8A9FE35DF6970C96FA5DAC32AED91225561D704
              003B57A794D1A94E6DCD58D6845A6EE8BB451457BA74851451401C8F8A7407B8
              26FED133201FBD4039603B8F538EDDEB8AAF62ED585AAF862CF512D2AFEE273C
              9741C13EE3BFE86BC5C765BED1BA94B7EA8E7A94AEEF13CEA8ADCBBF09EA96C7
              291ACE9EB1B73F91C7E99AC99AD6E2DF3E75BCB1FF00BE847F315E254A1569BB
              4E2CE7706B74434514565A8828A2A786CEEAE3FD4DBCB20FF6509FE429A8CA4F
              45760937B1052A2B3B05552CC4800019249EC056F59F84352B920CC12DD3B973
              938F603FA915D6697E1EB2D2F0E80C93E30647E71F41DABBF0F96D6AAEF25646
              91A3293D74455F0CE8874CB733CE07DA650323FB83D3FC7FFAD5D0D14B5F4B46
              94694142275C6292B20A28A2B5282B90F1A69DBA28EFD1794C2498F42783F9FF
              003AEBAA86B6AADA25E86C63C963CFAE2B97174954A328B2271528D99E594514
              57C79C015D7782F4DDCF26A120E17291E7F53FD3F3AE56DE07B9B88E08865E46
              0ABF89AF55B0B44B1B28ADA31F2C6B8CFA9F5AF532AC3FB4A9ED1AD11BD08DDD
              D96A8A28AFA63AC28A28A00A1AAE9D16A962F6F2719E55B1F7587435E677B637
              1A7DCB5BDC21561D0F661D883DC57AD554BED3AD75287CAB98838EA0F707D41E
              D5E763B02B10B9A3A491954A6A6794515D55FF0082AE2325AC6612A7508FC37E
              7D0FE958571A46A36C4896CE618EA42923F31915F3D57095A93B4A272CA9CA3D
              0A54529041208208EA0D2573D99214514E48DE46DA88CC4F65049FD29D9BD006
              D15A76BE1ED52E9BE4B4745FEF49F2E3DF9E7F215D1E9DE0B8A26125FCBE6B7F
              CF34C85FF135D547035AABD159171A52662F877429353B859E65C5A21F989FE3
              3FDD1EDEB5E8C06000053238D224548D55540C0503005495F4984C2C70F0B2DF
              B9D70828AB0514515D6585145140051451400DCF355352D46D749D3A7BFBC904
              7042A599BBFD07A927000F5AB4C40192703BD791EB3A84DF11FC5F0E85A7BB2E
              8F6AC5E6957F8F1C16FE8BF5CF7E36A14BDA3BBD96E67527CAB4DCDBF075B5D7
              8A75B97C61A9C65625262D3A03C88D724161EA7A8CF724FA0AF43A82DADA1B4B
              686DADD0470C4A1111470A00C0153D4D59F3CAEB6E83847956BB8B4514566585
              1451400514514009DEBE7DF8C173E778DDE3FF009E16F1C7F4CE5BFF0066AFA0
              8D7CC7F102EFED9E38D5E5CE76DC18FF00EF8017FF0065AEFCBA37AB7EC8E0C7
              CAD4D2F339ACD2668A2BDC3C80CD19A28A00334668A28016A6B499ADEEA3997A
              C6C1C7D4107FA5414E4386149ABA03EBE8DD5E3565395201069F58DE16BBFB77
              8574AB92725ED632C7FDADA33FAE6B62BE5A4ACDA3E922EE93168A28A4505145
              1400514514005145140051451400514514005145140051451400514514005145
              14011BC51C830F1AB0F4201A80E9B644F36901FF00B66B56A96A1C22F742B153
              FB36C7FE7CE0FF00BF63FC29F159DB40C5A1B78A3623194400D4F4B42A715AA4
              16414514558C28A28A00303D2A292DE197FD6431BFFBCA0D4B454B8A7B815469
              F680E45AC00FFD73153245120F92355FA0C549452508AE82B0514515630A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802
              16B581CFCD0C67EAA0D47FD9F679CFD960CFFD731FE15668A8E48F6159112DB4
              09F7618C63D140A9703D2968A6A296C8614514550051451400D270335C7FFC27
              5FF50FFF00C8DFFD8D7607EE9AF1EAF2733C4D5A1CBECDDAE635A6E36B1D8FFC
              277FF50FFF00C8DFFD8D64EADE26BAD521300458613F7954E4B7B67D3F0AC4A2
              BC6A98FC4548B8CA5A339DD593566C28A2A5B5B692EEEA3B78572EED81FE27D8
              75AE549C9A4B766695F43A7F05E9BBE79350917E54F923CFA9EA7F2E3F135DB5
              55B0B38EC2CA1B68C7CA8B8CFA9EE7F139AB55F5F84A0A85250EA77C23CB1B0B
              4514575161451450014514500146051450046D146E3E6456FA806A16B0B46FBD
              6D09FAC62AD5152E117D0562BAD95B2FDDB7887D1054AA8AA30AA00F614FA285
              18AD900514515430A28A2800A28A2800A28A280128A2B99F1B78A62F0B688D38
              2AD793652DA33CE5BFBC47A0EA7F0F5AA84253928C7764CA4A2AECE53E2878C8
              DAC6FE1FD3A4FDFCAB8BA914F28A7F807B9EFEC71DF8E87E1E785C787340569D
              36DFDD8124F91CA8C7CA9F803F9935E77F0E34093C45E259356D4374B0DB3F9A
              ECFCF9929E467D79C93F400F5AF74AEDC538D282A10F99CF4539C9D497C85A28
              A2B80EA0A28A2800A28A2800A28A28018EC110B31C003249AF92B51B937BA85C
              5D367334AD21CFAB127FAD7D3DE2DBE1A6F84F55BB27694B670A7FDA230BFA91
              5F2C3FDEAF5B2C8E9291E56612D6311B451457AA79C145145001451450014AA7
              0C3EB4945007D1FF000B2EC5CF806C549CB40F2444FD1891FA115D9F7AF2CF82
              77C24D1F52B1CFCD14EB363D9971FCD3F5AF53AF9BC54796B491EFE1A5CD4A2C
              5A28A2B0370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A2A
              96ADA9C3A3E9773A8CEAED0DBA191D6300B103D01207EB4257764265DA2B9CF0
              B78CB4FF0016FDA8D843751FD9B687F3D546776718C31FEE9EB8AE8E9CA2E2ED
              2409A7AA168A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128A81AF2D925F29AE22593A6D2E01CFD2AC50D0051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400D3F74D78F57B1565FF00C23BA4FF00CF9475E6E61839E279795DAC
              65569F3DAC798D15E9DFF08EE91FF3E317EB4E5F0FE94BC8B187F119AF3BFB1A
              AFF3232FABCBB9E696F6D35D4AB15BC6D23B7F0A8FF381EF5DF787B405D2A3F3
              A6C35D38E7D107A0FF001AD982D60B65DB0431C4BE88A07F2A9ABD0C265B0A12
              E793BB3585251D7A8B451457A66A145145001451450014514500145145001451
              4500145145001451450014514500145145001451450055BEBD834EB29AEEEA41
              1C10A17763D0015F3AF8835ABCF17F88DAE76390EC22B68072557385503B924E
              4FA93F4AEB7E29F8ACDFDF7FC23F6527FA3C0D9B9653F7DFB2FD17BFBFD29BF0
              A7C3E2F75893559933059711E4706523AFE0327EA41AF5F0D4D61E8BAD35ABD8
              E0AD37566A9C76EA7A6F857418FC39E1FB7B05C1900DF330FE273D7F0E807B01
              5B74B495E4CA4E4DC9F53B631515642D145148A0A28A280128E954357D5ACF43
              D325D42FE431DBC406E2064F24018039EA4572327C5EF0AC60625BA7CFF7603F
              D6AE14A73D62AE672AB083B499DF52579FFF00C2E3F0B7ADEFFDF9FF00EBD656
              B5F19F4E5B264D1AD6796E98615E740A89EF80727E9C7D6B48E16B376E5644B1
              3492BF3117C63F12A25B43E1FB77CC8C44D7383F740FBAA7EA79C7B0F5AF1827
              2726AC5EDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9556EF5EEE1E8AA50513
              C6AD55D49B930A28A2B7310A28A2800A28A2800A28A2803AEF877E235F0E78A2
              19A77DB6938304E49E15490437E040CFB66BE920DB86460823208AF90012A6BD
              37C17F155F45B34D3B598A6B9B58C622963C1741D94824023D39C81EBC63CCC7
              615CDF3C16A77E0F12A1EE4B63DD28AF3FFF0085C7E16FFA7DFF00BF1FFD7A54
              F8C1E157700BDE2E7B9838FD0D79BF56ABFCACF47EB14BF98EFE96B9EF0F78C7
              46F13CF345A6CEEF242A1995D0AF0491919EBFFD715D0D6528B8BB491A465192
              BC5894D660AA59880075269F5E5FF19357BAB4D36C34D81D923BB2ED31538DC1
              76E17DC12DC8F61574693AB3505D4539A84798E9AFBE2278574F90C72EAD1C92
              0EA204693F55047EB55E0F89FE139D827F693444F00C90381F9E3F9D73DE0AF8
              73E1EBFF000ED9EA37CAD7D2DC26F23CD654439FBA02907231839279CD6D5FFC
              2AF0BDD5BB25BDACB6929E92453331FC431208AE970C2C5B8B6EFDF43252AAD5
              D58EC2CEF6D750B75B8B3B88A785BEEBC4C181FC4558CD78CF81B4AF12785FC6
              A6D1ECAECE9B248D0CD288DBCA6033B5C1C6072060FA123BD7B35615E92A72B4
              5DD1A539392BB56168A28AC4D028A28A004ACCF105BD9DD6817D06A33B4166F1
              1134AA402ABDCE483FCAB4EB9EF1CFFC891AC7FD7B35553579A44CB48B666F80
              B49F0E698B7FFF0008F6A925E890C7E76F915B66376DC61475C9FCABB3EF5E4B
              F047FD5EB7F583FF0067AF5AADB151E5AD257B9145A704C5A28A2B9CD428A28A
              004EF41200C9A2BCEFE2EEB175A7F876DED2DA468FED92149594E328064AFD09
              C67D4023A13574A9BA93505D499CB962E46EEA1F103C2FA64AD0CFAB44D22F05
              61569307D095040FC6AA45F147C252B6D3A8BC79EEF04807E82B96F00FC3ED03
              56F0EC1AA6A1BEF2598B031894AAC786231F29049E33C9EE38EE7A6BBF859E15
              BA85962B292D9CF49229DB23F06247E95D5286160DC257BA3152AB25CCAC7556
              1A8D9EA76C2E2C6EA2B8849FBF13861F4E3BD5BAF13F0CE89E24F08F8F16182C
              EF26D3DE7F22699626F2E48CF01CF618C839ED82338CD7B65615E9469CAD1774
              694E6E4B542D1451589A051451400954353D634ED16149B51BB8ADA376DAAD21
              C02719C55FAC2F13785AC7C55690DB5FBCE91C4FE62985829270473907D6AA0A
              3CCB9B62657B6878B6BFA9D95CFC53FED186E637B3FB640FE703F2ED013273E8
              307F2AF6AB3F17787EFEEE3B5B5D56DA69E43848D5F258F5E2BC2B58F0FDA587
              C41FEC285E536BF6A8A2DCCC37ED60B9E40033C9C715EB7A3FC30D1345D5ADF5
              1B69EF9A681B72AC92295270473851EBEB5E9E3234792176F6D0E5A2E7CCCEDE
              8A28AF28EC0A28A2800A28A28012B1756F16685A1B14D435286293AF9632CE3F
              E02A09AE77E2678BA6F0EE99159D83ECBEBBC8120EB120EAC3DCE700F6E4F615
              C77837E19BF882D1757D6AE668E09C978D10FCF2E7F8998F63DB824F5C8AEBA5
              878F27B4AAECBF3309D57CDCB0DCEE97E297849DF6FF0068C8A3A6E6B7931FCA
              BA4D3759D3B5883CED3AF21B941C131B0254FB8EA3F1AE526F84BE1792128915
              D44D8C798939247E0723F4AF37F10681AB7C37D72DEF6C6F19A190930CE38CE3
              04A38E87B71D0F5E3040D23468567CB49B4FCC9752A43592D0FA0A8AC8F0D6B5
              1F88740B4D4E31B7CE4F9D7FBAE0E187D320E3D460D6C570B4E2DC5EE7427757
              414514521851451400959179E26D174FBFFB0DDEA56F0DD703CA66C373D38FC4
              56BD7807C4E99A0F88B3CCA0168D61600F42428233F957461682AD3E56EC655A
              A7246E7B96A3AB69FA441E76A1790DB467806570371F607927D8573E3E25F844
              C9B06AE33EBE44807E7B715CAE87E02BAF166DD7FC59793BBDC80F15BA1DB843
              C8C9E76839E14631D49C922B7AEBE14F85E7B668E1B69ADA4C7CB2A4CCC41FA3
              123F4AD153C3C5F2CE4DBF2D89E6A8D5E28EBAC351B2D4EDC5C58DD457109E8F
              13861F4E3BD41AA6BDA5689187D46FE0B6C8CAABB7CCDF451C9FC057CFFA7EAB
              AAF813C497D05AC81A58D9EDDD0E76484642B63B9070477EDDCD7A168BF0C0EA
              4A354F15DD5CDCDF5C61DA10F8DB9E70C7A923D0600E8335553090A4F9A72F75
              EDDC98D694B48AD4E8E3F895E12965118D5D413C02D0C8A3F32B81F8D74D6B77
              6F7B6C9716B3C73C2E32AF1B0653F422B87D53E137876E6C9D2C6296CEE369D9
              209598671C64313C7D315C57C2AD56EF4CF17B68D23B791721D5E3272164404E
              47A70A47BE47A0A4E852A94E53A4DDD771FB49C6494FA9EEB45145711D014514
              5001451450025676A9AEE97A24424D4AFE0B607EE876F99BE83A9FC0558BEB83
              67A7DCDC88DA430C4CE11464B601381EFC5786685E18D5BC71E299EE35D17904
              7832CD2346549190022EE181D78EB800D7450A319A729BB2465526E365147A43
              FC53F092B6D17F2B8F55B793FA8AD0D37C79E19D565586DB568BCD6E024A1A32
              4FA0DC064FD2A847F0BBC231A6D7D39E438C6E6B8933FA3015C27C48F03E93E1
              CD3E0BFD35DE2F326F28DBBBEE04609CA93CF18E724F51D3BEF0A785A92E48DE
              E44A5560AEEC7B7515C77C33D527D53C156CD72ED24B03B425D8E490A78CFE04
              0FC2BB1AE2A9070938BE86D19732B8B451454941451450014D2428249C01DE96
              BCD7E306B17563A2D9D85BC8D1ADEBB09594E095503E5CFA12C33EB8F4CD694A
              9BA93505D489C9462E4CE8AFFE21F85B4E95A29B568DE45E0AC2AD27EAA08FD6
              AB43F143C272B05FED178CF63240E3F5C71F8D733E05F879E1FD4FC3B6DA9DF8
              6BD967049412954420918C2907231CE4FE15D0DEFC2BF0ADD40C90D9CB6B21E9
              24533123F06247E95D3286160DC5DEEBA99295592BAB1D6596A169A95BADCD95
              CC3710B74789C30FD2ACE0578BF84346F127853C742D96CEF24D35E6304D2AC4
              DE5BA1CED7CF4183839EDC8CF26BDA6B0AF4D5395A2EE8D29CDCD6A85A28A2B1
              3412B93F1F78A4786741668587DBAE731DBAFA1EEF8F419FCC8AE9EE278AD6DA
              5B899D522894BBB374007249AF9CFC4DAF4BE2AF114D7EFB85BAFC9021FE1407
              8FC4F24FB9F615D982C3FB59DDEC8E7C4D5F671B2DD9931A48ED921A49A56C01
              D4B313C7D4926BE8DF0AE88BE1FF000EDAD8003CD55DD330FE290F2DFE03D80A
              F21F86FA40D63C631CCEB9B7B05F3DB2382F9C28FAE79FF809AF78AE8CCAADDA
              A6BA18E0E9E8E6FA8B451457967705145140051451401E5BF1A6FA48F47D36C5
              4909713348DEFB00C0FA65B3F80AF1173F363D2BDFBE2DE8736A9E1A8EF6D90B
              C9612191940C9319186FCB00FD01AF0190739ED5EEE5ED7B1B2DCF0F1A9AAD76
              328AD282D04B02B8E7239FAD49F60F6AECE639D45995456AFD83DA8FB07B51CC
              8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456
              AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB
              07B51CC83919934BD2B57EC200248C0159840321DBD0938FA534D3D84D58ED7E
              17DF4965E3CB154384B85785C7A8DA48FD403F857D140D782FC24D0E6BEF14AE
              A8C87ECB62AC4B11C1919480A3D70093ED81EA2BDE8578798B4EB687AD97A6A9
              6A2D731E31F08DB78BB4E8E0925305C42C5A1980CED27A8238C83819E47415D3
              57937C5597C41A56A36FA8E9FA8DF416134623610CCCAA92027A81C0C8C63D48
              35CF868CA55172BB33AEAB4A3A98FF00F0AF7C73A03B3691745D49CFFA25D18C
              9FA862A0FEB41F11FC4BD139BA86F1E24EBE6DA0917F16033FAD75DE19F8A5A3
              5E69D047ABDC1B4BD440B2191495908182C08071EA41C633F8D6C5D7C45F0ADA
              C658EAD1CA4745895989F6E05773AB5B9B96A53E6F9182842D78CAC733E13F8B
              0754D4E0D3F58B48E1927611C73C2485DC4E002A4923278C8279238C735EA1C5
              7CF009F197C4913E9768D0C73DCA49B4000A22E373B63804E093EE71C93CFD11
              5CF8DA70A6E3CAAD75AAEC5D094A49DF5168A28AE33A028A28A004AE7BC73FF2
              246B1FF5ECD5D0D73DE39FF912358FFAF66AD28FF123EA899FC2CE1BE08FFABD
              6FEB07FECF5EB75E49F047FD5EB7F583FF0067AF5B15BE3BF8F2FEBA19E1FF00
              86828A28AE4360A28A28012B03C59E18B5F16691F629E4313ABF9914AA325187
              1D3B8C1208ADFAF2FF008AE75DD3DACF54D32FEF60B3DBE54EB04CCAAAD9CAB1
              00F7CE33EC07715B61E329544A2ECCCEA34A3A9CFB7C37F1A6852B49A3DE07C9
              EB697262623DC1207E19341D73E26E8BFF001F10DF491AF5F32D5655FC58027F
              5AE97C23F1434B974AB7B5D6EE1EDEF21508D348A5965C7462464827BE7FAD74
              53FC43F0A5B465DB5885F1CED8D5989FC00AEE9D5AFCDCB529A97C8C1469B578
              CAC721E1BF8BB25CEA10D9EB967144246082E20C80A49C0DCA49E3D483C7A57A
              C66BE73D7271E39F1D13A3DA320B9658D72A031C000BB01C0E393EC2BE8B0300
              7B0AC3194A10E571566D6A8BA1293BA7AA1D45145711D0145145001451450078
              17897FE4B29FFAFF00B7FE495EF95F3F78D66FECEF8AF3DDCCADB22B9826381C
              950A878FC8D7B058F8DBC3BA95CDBDADA6A91CB3CE711C611B24E33D08E381DF
              15E8E3212953A6D2D2C72D192529267454514579C7505145140051451401E11F
              188B9F18C01BEEFD8936FD373D6F59689F12D6C6D85AEB368B6E225F29432F0B
              818FE0F4C569FC53F0A5C6B5A743A9D8C464BAB3043C6A32CF19E4E3D483CE3B
              827BE2B0FC13F13EDAC34E874AD744AAB02848AE5177614700301CF1D0100E46
              38EE7D68CA53C3C7D9A4DADD1C6D2551F3697343FB17E29FFD06ED7FEFA5FF00
              E22A86ADE0CF883AEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB29
              7E25F84E28778D543F190A90B927FF001DE3F1AF3CD77E21EB9E25D720B4F0D1
              BAB68B25238E3C6F9493F79B19000C74CE00C927D2693AF295F912B756AC39FB
              34AD76CF44F87DE1FD43C37E1F96C351688C9F686913CA62C02955EE40E720D7
              5B597A0DA5ED8E8B6B6FA85DBDD5E05CCD331CE58F240F619C0FA56A579D564E
              5372674C1251490B451454141451450025780FC4A8D65F8932C6C3E56F254FD0
              AA8AF7EAF04F88BFF2539BEB07FE82B5DF977F15FA339B13F0A3DE9405501400
              00E829D476A2B80E93C0F558525F8D22375051B5287231C1FBA483F5AF7B15E1
              1A8FFC96F4FF00B08C3FFB2D7BB8AEEC6BD29FA1CF43797A85782785C05F8CD8
              51802FAE4003B0C495EF75E09E19FF0092CDFF006FF73FC9E9E0BE0A9E815FE2
              89EF945145701D0145145001451450053D46FEDF4BB09EF6EA40904285DC9F4F
              F1AF279FE28F88B5ABF6B5F0E69436F55FDD9964C6719383803F023DEBB9F889
              6173A8F81F5082D559E50164D8A32582B06231DF8078F6AF32F863E2ED2FC393
              5EDBEA64C297250ACE14B005723040EDCE41C7AE6BD0C3528BA32A96E692E873
              569B5351BD91B6B6FF0016352FBF37D910F4CB4298FF00BE416FCEB9FF001778
              335DD33473ACEBBAB8BB9FCC58D537B4840393F79B18C63A00457A94DF117C29
              045BCEB11BF7C223313F8015E6FE38F175D78C74E9574CB199747B1759279DC0
              05989DAB9E70072703249CE4E315B61E759D45EE28AF4B115230E5DDB3B3F841
              FF00225BFF00D7DC9FC96BBFAF21F857E2DD334FD34689772B477535DFEE06C2
              43EF0A072338E41EB81CD7AF57162E2E35A5736A2D382B0B45145731B0514514
              005739E2EF0A5AF8B34A5B49A530CB1B6F866519287A10471907B8CFA57455E5
              7F15DF5ED32E6D753D3B50BD82C993CA9560999551F248240E390719F6F715B6
              1E329544A2ECCCEA34A3A9867E1D78DB41919F48BBDE09EB697263247B86201F
              A64D075EF899A2FF00C7CC37B246BD7CCB5122FE2C013FAD751E14F8A3A4DC69
              76F6FACDCB5B5EC4811E4914B2CA471BB201C67BE71CD6F5CFC44F0A5B445DB5
              789FD16356627F002BBA556BA972D4A6A5F2305085AF1958E53C2FF169EFB528
              6C75AB48E133308D678490AAC4E06E524F07D73F87A7AA57CEBA849FF09BFC42
              2FA4DA3C4B732A003182140019DB1C0E0127FA9EBF458E9586329C20E2E2ACDA
              D8BA1294AE9EA828A2A86B1AA5BE8DA4DCEA372711408588CF2C7A003DC9C01F
              5AE249B7646EDD95D9E79F167C4E62B78FC3F6927EF66C3DCE3A85CFCABF8919
              3EC07AD796B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80
              C01EC0552BB72F3045C9038C0EE6BE970D4551828F5DD9E356A8EA4EE7B67C26
              D28597851AF5D7F7B7D297CF7D8A76A8FF00D08FE35DF551D1EC574CD1ACAC57
              1882048CE3B9000CD5EAF9EAD3F695252EECF5A9C7960A22D1451599A0514514
              0094B51B3AC6859980503249ED59969A91D5E42D619FB129C1BAED291DA3F51E
              ADD3B0CF24349B15CD56008C11915E7FAF7C24D13569DEE2CA4934E95CE59625
              0D1E7D429E9F4040F6AF41ED45542A4E9BBC5D88A94E1515A48F1E8BE0CEA168
              C7ECDAEC0CA7F864B7201FC98D4BFF000AAB5CFF00A0969BFF007E9FFC6BD728
              C5747D76B7731584A4BA1E47FF000AAB5BFF00A0969BFF007E9FFC68FF008555
              ADFF00D04B4DFF00BF4FFE35EB9452FAED5EE3FAAD3EC791FF00C2AAD6FF00E8
              25A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD
              3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF
              008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3F
              E1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00
              E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FA
              AD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3
              FF008D7AE5147D76AF70FAAD33C7E4F843ABDCAEC975AB48D4F511C0DCFE66AD
              E9BF04EC60943EA1AACD70A0E4C7145E583EC4E49FCB15EAB45278CACD5AE0B0
              94B7B14B4DD2ECF48B18ECEC6DD208231F2A20EFEA7D4FB9ABD4515CCDDF5674
              2492B20A86E6DA0BCB77B7B9852685C61E391432B0F420D4D451B0CE16F7E13F
              85EEE42F1C3736B939220978FC03038FC2A083E0FF0086A17DCF25FCC07F0BCC
              A07FE3AA0D7A0515BAC4D6FE6667ECA1D8CCD2340D2F4180C3A659456EA7EF15
              1966FAB1E4FE26B529296B06DB7765A496C145145030A28A2800AAB7F636FA9D
              8CD65771F996F32ED913711907A8C820FEB56A8A36D85B98DA1F86347F0E09FF
              00B2AD3ECFE7EDF33F78EFBB6E71F789C753D3D6B628A29B6E4EEC124B442D14
              51486145145001514D0C5710BC5346B246E0AB23A82187A107AD4B450070F7FF
              000AFC2F7B29912DA7B42C727ECF2E07E01B207D00AAD17C1EF0DC6C0B4BA84A
              07679971FA28AF40A2B7589AC9594999FB287632746F0D691A046534DB18E02C
              3E67E59DBD8B1C93F9D6B52D2560E4E4EED96925A2168A28A061451450014514
              500739E22F0668DE276492FEDD84E836ACD136D70339C67A11D7AFA9F5ACDD1B
              E19685A1EA906A16F2DEC93C2DB93CD91480704740A3D6BB4A2B455AA28F2F36
              847246F7B0B451456658514514005145140095CC6B5E01F0EEBB334F736023B8
              6CEE9606D8C49EE71C13EE41AE9E8AA8CE50778BB09C549599E7A9F077C36926
              E33EA0E3FB8D2AE3F45CD757A3786347F0FA15D32C62859B867E59D87BB124E3
              DB35AF47E3573AD526AD29364C69C56A90B451456458514514005145140095CF
              EA3E0AF0FEADAA7F695ED879B7676E64F3A45FBBD380C0718F4AE828A7194A2E
              F176138A7B8B45145219CFC9E0CD066D6C6B3258675012097CEF39FEF0C60E37
              638C0ED8ADFC514537272DD8924B61338AC0B5F05E8167ACFF006BC161B2FBCC
              693CDF3A43F336771C16C7393DBBD7414B4464D6898349EE1451452185145140
              0514514009DAB94D5BE1E786B57B86B89AC3CA99B967B772993EA40E33EF8CD7
              5745542A4A0EF176265152DD1C4DB7C2AF0ADBB876B59A7C769666C7E4315D4C
              5A5D843A79B08ECE04B32A50C22301083D411D39ABB4539D59CFE27708C22B64
              7316BE01F0C59DFC57B6DA5AA5C44E1D184AE42B0390402D8FD2BA7C514B5329
              CA4EF2771A8A5B05145148614514500150CF0457503C33C692C4E30C8EA19587
              A107AD4D45170387BDF855E17BC90BA41716A49C9104B81F806C81F41C55687E
              0F786A270CF2DFCA3FBAF32E3F4507F5AF40A2B7FACD64ADCCCCFD943B195A3F
              87B49D02131E996515B86FBCC012CDF563927F135AB4B4562DB93BB2D24B612B
              C7FE2EF880CF756FE1FB77C88C89AE307F88FDD53F40738F715EA9A9DFC3A5E9
              9737F39C456F1991BDC01D07BD7CDA6E66D5F58B9D46E4EE92573237A024F007
              B0E83E82BD0CBA8F34FDA3D97E67262EA72C7956EC70516F6DFEE8C9F735534A
              025D6AC95C8C35C46189E982C33563516D96E147F1102B36291A195254387460
              C0FA10722BDA49B8B3CD8BB3B9F588E94B59DA36A96FAD6936DA85B3068E640D
              8073B4F707DC1C8FC2B42BE51A69D99EEA69AB8514B597ABEBFA5E871799A8DE
              C70E7954CE5DBE8A393F80A6937A206D2D59A7587E20F15695E1BB7325F4E3CD
              232B0272EDF8761EE702B81F107C50BAB806DF4781EDD5CED591C6E95C9E0055
              190BFA9FA1ABFE11F004B34EBADF89834D72E77C76B212DB7FDA7CF56F63D3BE
              4F4EA58654E3CF5B4F2EACE7759CDF2D3D7CCB9A75B6AFE3875BED695ECB4304
              343A7A121AE0750D21E095E9C719F4C727BC8E348A358E35088A005503000F61
              4E14715CF39F374B236847956BB8EA28A2A0B0A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803CD3E306B3F65D12DB4A8CE1EF2
              4DF201FDC5C7F3623F235E5F6116CB5048E58E4FF4AD8F89FA91D43C6F731839
              8ED55604FC064FFE3CC47E154E34091AA8EC00FD2BE870B0F67422BBEA78F899
              F3547E466EAA0858FD326B32B7EF2DBED3015040607209F5AC66B4B846C185C9
              F6191FA575C24AD63046BF87BC5FABF865D8584E0C2E72F04A37213F4C823F02
              2BAE3F19F54F2F1FD97661FD4B363F2CFF005AF3F8F4EB990F29B47AB1C55D8F
              4E8205DF3B06C7273C0158D4A1426EF28EA6B1AD38E899BD77F10FC57AC0648A
              E92CE16E0FD9936E07B31CB0FC0D63DADA5D6A1A92DBDA24B7FA8CC7924963EE
              493D00EE49FAD6AE81E1CD53C573F97609F67B153892EDD4851EA14773EC3F12
              2BD93C39E17D3BC3163E45947995BFD6CEFCBC87DCF61E83A57256AF4B0EB969
              A5736A74AA56779BD0C6F07FC3FB6D00ADF5FB2DD6A8467791948BD907F53CFD
              39CF6D494B5E3D4A92A92E693D4F46108C15A214514541614514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              45145001451450014514500145145001451450014514500145145007CB9AFCA6
              7F11EA531EAF772B73EEE4D6BC4C24895C1C86008A87C73A44DA378B6FE29108
              8E695A785BB32B12463E8491F5158F6BA84D6CBB570C9E87B7D2BEA2369D38B8
              ED63C39A6A4D3DCE8314100024F00773592355B999D638600D231C2800B127D0
              01D4D759A2FC38F10EBA565D498E9F6A4E7120F9C8F6418C7E38FA1ACE728D35
              79BB0A14E53768A39F6BBF3675B6B489EE6E1CED548D4924FA00393F85777E1B
              F85F3DD3A5F7895C841865B28CF5FF00788E9F41F98E95DD787BC23A478662C5
              85BE66230F3C9F348DF8F6FA0C0ADEAF32BE3DCBDDA7A2FC4F428E114759915B
              DBC36B02416F1245120DA888B85503B003A54D4515E75CED0A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A28032F59D0F4CD6ED0C3A959C7708BCAEEC82A7D88E47E15E7BA7F82BC3
              D3EAE60934FDD1E7A79D20FF00D9A8A2BB309392A72B3392BA5CE8F42D2F42D2
              B481B74FD3EDEDF8C16441B8FD5BA9FCEB528A2B924DB7A9D105A05145148B0A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2803FFFD9}
            Stretch = True
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 379
            Top = 91
            Width = 25
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Fl:'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 403
            Top = 91
            Width = 30
            Height = 14
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object rlRetratoSimplesEmiEnder: TRLDBMemo
            Left = 87
            Top = 28
            Width = 232
            Height = 42
            Alignment = taCenter
            AutoSize = False
            DataField = 'endereco_comp'
            DataSource = Src_Cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel113: TRLLabel
            Left = 321
            Top = 92
            Width = 20
            Height = 11
            Caption = 'No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlRetratoSimplesEmiFone: TRLDBText
            Left = 87
            Top = 91
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'fone_fax'
            DataSource = Src_Cabecalho
          end
          object rlRetratoSimplesEmiCidade: TRLDBText
            Left = 87
            Top = 77
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emicidadeuf'
            DataSource = Src_Cabecalho
          end
          object rlRetratoSimplesEmiCep: TRLDBText
            Left = 87
            Top = 104
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'cep_emit'
            DataSource = Src_Cabecalho
          end
          object RLLabel87: TRLLabel
            Left = 384
            Top = 130
            Width = 134
            Height = 11
            HelpType = htKeyword
            Caption = 'Protocolo de Autoriza'#231#227'o de Uso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText49: TRLDBText
            Left = 386
            Top = 142
            Width = 325
            Height = 14
            AutoSize = False
            DataField = 'num_prot'
            DataSource = Src_Cabecalho
          end
        end
        object RLBand1_cab02_simples: TRLBand
          Left = 38
          Top = 287
          Width = 718
          Height = 350
          BandType = btColumnHeader
          AfterPrint = RLBand1_cab02_simplesAfterPrint
          object RLDraw84: TRLDraw
            Left = 0
            Top = 250
            Width = 311
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel117: TRLLabel
            Left = -1
            Top = 1
            Width = 132
            Height = 11
            HelpType = htKeyword
            Caption = 'DESTINATARIO REMETENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw85: TRLDraw
            Left = 0
            Top = 13
            Width = 523
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw86: TRLDraw
            Left = 524
            Top = 13
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw87: TRLDraw
            Left = 634
            Top = 14
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel118: TRLLabel
            Left = 4
            Top = 15
            Width = 80
            Height = 11
            HelpType = htKeyword
            Caption = 'Nome Raz'#227'o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText155: TRLDBText
            Left = 5
            Top = 27
            Width = 71
            Height = 14
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
          end
          object RLLabel119: TRLLabel
            Left = 527
            Top = 15
            Width = 43
            Height = 11
            HelpType = htKeyword
            AutoSize = False
            Caption = 'Cnpj/Cpf'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText156: TRLDBText
            Left = 527
            Top = 27
            Width = 102
            Height = 14
            AutoSize = False
            DataField = 'dest_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLLabel120: TRLLabel
            Left = 639
            Top = 16
            Width = 70
            Height = 11
            HelpType = htKeyword
            Caption = 'Data de Emiss'#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText157: TRLDBText
            Left = 643
            Top = 27
            Width = 41
            Height = 14
            DataField = 'IDEDEMI'
            DataSource = Src_Cabecalho
          end
          object RLDraw88: TRLDraw
            Left = 0
            Top = 46
            Width = 355
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw89: TRLDraw
            Left = 356
            Top = 46
            Width = 194
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw90: TRLDraw
            Left = 551
            Top = 46
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw91: TRLDraw
            Left = 634
            Top = 46
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel121: TRLLabel
            Left = 4
            Top = 48
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel122: TRLLabel
            Left = 358
            Top = 48
            Width = 59
            Height = 11
            HelpType = htKeyword
            Caption = 'Bairro/Distrito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel123: TRLLabel
            Left = 555
            Top = 48
            Width = 20
            Height = 11
            HelpType = htKeyword
            Caption = 'CEP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel124: TRLLabel
            Left = 634
            Top = 48
            Width = 81
            Height = 11
            HelpType = htKeyword
            Caption = 'Data Entrada/Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText158: TRLDBText
            Left = 5
            Top = 60
            Width = 116
            Height = 14
            DataField = 'DESTENDERDESTXLGR'
            DataSource = Src_Cabecalho
          end
          object RLDBText159: TRLDBText
            Left = 360
            Top = 60
            Width = 134
            Height = 14
            DataField = 'DESTENDERDESTXBAIRRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText160: TRLDBText
            Left = 555
            Top = 60
            Width = 107
            Height = 14
            DataField = 'DESTENDERDESTCEP'
            DataSource = Src_Cabecalho
          end
          object RLDBText161: TRLDBText
            Left = 643
            Top = 60
            Width = 50
            Height = 14
            DataField = 'datasaida'
            DataSource = Src_Cabecalho
          end
          object RLDraw92: TRLDraw
            Left = 0
            Top = 80
            Width = 285
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw93: TRLDraw
            Left = 286
            Top = 80
            Width = 109
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw94: TRLDraw
            Left = 396
            Top = 80
            Width = 49
            Height = 29
          end
          object RLDraw95: TRLDraw
            Left = 446
            Top = 80
            Width = 187
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw96: TRLDraw
            Left = 634
            Top = 80
            Width = 82
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel125: TRLLabel
            Left = 3
            Top = 82
            Width = 43
            Height = 11
            HelpType = htKeyword
            Caption = 'Munic'#237'pio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel126: TRLLabel
            Left = 290
            Top = 82
            Width = 42
            Height = 11
            HelpType = htKeyword
            Caption = 'Fone/Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel127: TRLLabel
            Left = 400
            Top = 82
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel128: TRLLabel
            Left = 450
            Top = 82
            Width = 73
            Height = 11
            HelpType = htKeyword
            Caption = 'Incri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel129: TRLLabel
            Left = 642
            Top = 82
            Width = 58
            Height = 11
            HelpType = htKeyword
            Caption = 'Hora da Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText162: TRLDBText
            Left = 5
            Top = 94
            Width = 117
            Height = 14
            DataField = 'DESTENDERDESTXMUN'
            DataSource = Src_Cabecalho
          end
          object RLDBText164: TRLDBText
            Left = 399
            Top = 94
            Width = 101
            Height = 14
            DataField = 'DESTENDERDESTUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText165: TRLDBText
            Left = 451
            Top = 94
            Width = 74
            Height = 14
            DataField = 'dest_inscricao'
            DataSource = Src_Cabecalho
          end
          object RLLabel130: TRLLabel
            Left = -1
            Top = 110
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'FATURA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel131: TRLLabel
            Left = -1
            Top = 161
            Width = 106
            Height = 11
            HelpType = htKeyword
            Caption = 'C'#193'LCULO DO IMPOSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw97: TRLDraw
            Left = 0
            Top = 173
            Width = 133
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw98: TRLDraw
            Left = 134
            Top = 173
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw99: TRLDraw
            Left = 275
            Top = 173
            Width = 158
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw100: TRLDraw
            Left = 434
            Top = 173
            Width = 141
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw101: TRLDraw
            Left = 576
            Top = 173
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel132: TRLLabel
            Left = 3
            Top = 175
            Width = 102
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de Calculo do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel133: TRLLabel
            Left = 137
            Top = 175
            Width = 59
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Icms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel134: TRLLabel
            Left = 278
            Top = 175
            Width = 151
            Height = 11
            HelpType = htKeyword
            Caption = 'Base de C'#225'culo do Icms Substitui'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel135: TRLLabel
            Left = 437
            Top = 175
            Width = 110
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Icms Substitui'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel136: TRLLabel
            Left = 579
            Top = 175
            Width = 100
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor Total dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText166: TRLDBText
            Left = 28
            Top = 187
            Width = 103
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBC'
            DataSource = Src_Cabecalho
          end
          object RLDBText167: TRLDBText
            Left = 158
            Top = 187
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = Src_Cabecalho
          end
          object RLDBText168: TRLDBText
            Left = 315
            Top = 187
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = Src_Cabecalho
          end
          object RLDBText169: TRLDBText
            Left = 464
            Top = 187
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = Src_Cabecalho
          end
          object RLDBText170: TRLDBText
            Left = 595
            Top = 187
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = Src_Cabecalho
          end
          object RLDraw102: TRLDraw
            Left = 93
            Top = 206
            Width = 120
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw103: TRLDraw
            Left = 0
            Top = 206
            Width = 92
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw104: TRLDraw
            Left = 214
            Top = 206
            Width = 121
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw105: TRLDraw
            Left = 336
            Top = 206
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw106: TRLDraw
            Left = 477
            Top = 206
            Width = 98
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw107: TRLDraw
            Left = 576
            Top = 206
            Width = 140
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel139: TRLLabel
            Left = 3
            Top = 208
            Width = 60
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel140: TRLLabel
            Left = 96
            Top = 208
            Width = 66
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel141: TRLLabel
            Left = 217
            Top = 208
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel142: TRLLabel
            Left = 347
            Top = 208
            Width = 114
            Height = 11
            HelpType = htKeyword
            Caption = 'Outras Depesas/Acessorios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel143: TRLLabel
            Left = 480
            Top = 208
            Width = 52
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor do IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel144: TRLLabel
            Left = 579
            Top = 208
            Width = 80
            Height = 11
            HelpType = htKeyword
            Caption = 'Valor Total da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText171: TRLDBText
            Left = 3
            Top = 220
            Width = 85
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTALICMSTOTVFRETE'
            DataSource = Src_Cabecalho
          end
          object RLDBText172: TRLDBText
            Left = 96
            Top = 220
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = Src_Cabecalho
          end
          object RLDBText173: TRLDBText
            Left = 218
            Top = 220
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = Src_Cabecalho
          end
          object RLDBText174: TRLDBText
            Left = 341
            Top = 220
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText175: TRLDBText
            Left = 472
            Top = 220
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = Src_Cabecalho
          end
          object RLDBText176: TRLDBText
            Left = 614
            Top = 220
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel145: TRLLabel
            Left = 0
            Top = 238
            Width = 217
            Height = 11
            HelpType = htKeyword
            Caption = 'TRANSPORTADOR/VOLUMES TRANSPORTADOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw108: TRLDraw
            Left = 312
            Top = 250
            Width = 76
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw109: TRLDraw
            Left = 389
            Top = 250
            Width = 76
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw110: TRLDraw
            Left = 466
            Top = 250
            Width = 80
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw111: TRLDraw
            Left = 547
            Top = 250
            Width = 29
            Height = 29
          end
          object RLDraw112: TRLDraw
            Left = 577
            Top = 250
            Width = 139
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel146: TRLLabel
            Left = 2
            Top = 251
            Width = 53
            Height = 11
            HelpType = htKeyword
            Caption = 'Raz'#227'o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel147: TRLLabel
            Left = 312
            Top = 251
            Width = 59
            Height = 10
            HelpType = htKeyword
            Caption = 'Frete Por Conta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel148: TRLLabel
            Left = 399
            Top = 251
            Width = 57
            Height = 11
            HelpType = htKeyword
            Caption = 'C'#243'digo ANTT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel149: TRLLabel
            Left = 470
            Top = 251
            Width = 71
            Height = 11
            HelpType = htKeyword
            Caption = 'Placa do Ve'#237'culo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel150: TRLLabel
            Left = 551
            Top = 251
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel151: TRLLabel
            Left = 582
            Top = 251
            Width = 47
            Height = 11
            HelpType = htKeyword
            Caption = 'CNPJ/CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel152: TRLLabel
            Left = 314
            Top = 260
            Width = 43
            Height = 10
            HelpType = htKeyword
            Caption = '1 - Emitente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel153: TRLLabel
            Left = 313
            Top = 268
            Width = 58
            Height = 10
            HelpType = htKeyword
            Caption = '2 - Destinatario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw113: TRLDraw
            Left = 375
            Top = 262
            Width = 11
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDBText177: TRLDBText
            Left = 4
            Top = 263
            Width = 57
            Height = 14
            DataField = 'TT_XNOME'
            DataSource = Src_Cabecalho
          end
          object RLDBText178: TRLDBText
            Left = 376
            Top = 263
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = Src_Cabecalho
          end
          object RLDBText179: TRLDBText
            Left = 470
            Top = 263
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = Src_Cabecalho
          end
          object RLDBText180: TRLDBText
            Left = 549
            Top = 263
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText181: TRLDBText
            Left = 582
            Top = 263
            Width = 131
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDraw114: TRLDraw
            Left = 0
            Top = 282
            Width = 311
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw115: TRLDraw
            Left = 312
            Top = 282
            Width = 234
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw116: TRLDraw
            Left = 577
            Top = 282
            Width = 139
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw117: TRLDraw
            Left = 547
            Top = 282
            Width = 29
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel154: TRLLabel
            Left = 2
            Top = 283
            Width = 41
            Height = 11
            HelpType = htKeyword
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel155: TRLLabel
            Left = 314
            Top = 283
            Width = 43
            Height = 11
            HelpType = htKeyword
            Caption = 'Mun'#237'cipio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel156: TRLLabel
            Left = 552
            Top = 283
            Width = 14
            Height = 11
            HelpType = htKeyword
            Caption = 'UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel157: TRLLabel
            Left = 582
            Top = 283
            Width = 77
            Height = 11
            HelpType = htKeyword
            Caption = 'Inscri'#231#227'o Estadual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText182: TRLDBText
            Left = 4
            Top = 296
            Width = 61
            Height = 14
            DataField = 'TT_XENDER'
            DataSource = Src_Cabecalho
          end
          object RLDBText183: TRLDBText
            Left = 316
            Top = 296
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = Src_Cabecalho
          end
          object RLDBText184: TRLDBText
            Left = 582
            Top = 296
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = Src_Cabecalho
          end
          object RLDBText185: TRLDBText
            Left = 551
            Top = 296
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = Src_Cabecalho
          end
          object RLDraw118: TRLDraw
            Left = 0
            Top = 315
            Width = 133
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw119: TRLDraw
            Left = 134
            Top = 315
            Width = 120
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw120: TRLDraw
            Left = 255
            Top = 315
            Width = 123
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw121: TRLDraw
            Left = 379
            Top = 315
            Width = 121
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw122: TRLDraw
            Left = 501
            Top = 315
            Width = 107
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw123: TRLDraw
            Left = 609
            Top = 315
            Width = 107
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel158: TRLLabel
            Left = 2
            Top = 318
            Width = 49
            Height = 11
            HelpType = htKeyword
            Caption = 'Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel159: TRLLabel
            Left = 136
            Top = 318
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = 'Esp'#233'cie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel160: TRLLabel
            Left = 257
            Top = 318
            Width = 29
            Height = 11
            HelpType = htKeyword
            Caption = 'Marca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel161: TRLLabel
            Left = 381
            Top = 318
            Width = 50
            Height = 11
            HelpType = htKeyword
            Caption = 'Numera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel162: TRLLabel
            Left = 503
            Top = 318
            Width = 47
            Height = 11
            HelpType = htKeyword
            Caption = 'Peso Bruto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel163: TRLLabel
            Left = 611
            Top = 318
            Width = 54
            Height = 11
            HelpType = htKeyword
            Caption = 'Peso L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText186: TRLDBText
            Left = 36
            Top = 330
            Width = 95
            Height = 13
            Alignment = taRightJustify
            DataField = 'TRANSPVOLQVOL'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText187: TRLDBText
            Left = 166
            Top = 329
            Width = 85
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLESP'
            DataSource = Src_Cabecalho
          end
          object RLDBText188: TRLDBText
            Left = 271
            Top = 329
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = Src_Cabecalho
          end
          object RLDBText189: TRLDBText
            Left = 504
            Top = 329
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = Src_Cabecalho
          end
          object RLDBText190: TRLDBText
            Left = 613
            Top = 329
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = Src_Cabecalho
          end
          object RLDBText191: TRLDBText
            Left = 290
            Top = 94
            Width = 104
            Height = 14
            AutoSize = False
            DataField = 'dest_fone'
            DataSource = Src_Cabecalho
          end
          object RLDBMemo14: TRLDBMemo
            Left = 2
            Top = 124
            Width = 715
            Height = 37
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'data_vencimentos'
            DataSource = Src_Cabecalho
          end
        end
      end
    end
    object tsPaisagem_simples: TTabSheet
      Caption = 'tsPaisagem_simples'
      ImageIndex = 4
      object rl_Paisagem_Simples: TRLReport
        Left = 6
        Top = -160
        Width = 1123
        Height = 794
        Background.Height = 100
        Background.Stretch = True
        Background.Width = 800
        DataSource = Src_Cabecalho
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        InsideMargins.RightMargin = 20.000000000000000000
        InsideMargins.BottomMargin = 5.000000000000000000
        Margins.LeftMargin = 22.000000000000000000
        Margins.TopMargin = 6.000000000000000000
        Margins.RightMargin = -5.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.Orientation = poLandscape
        PrintDialog = False
        ShowProgress = False
        BeforePrint = rl_Paisagem_SimplesBeforePrint
        object rl_lat_borda_rec_simples: TRLDraw
          Left = 54
          Top = 33
          Width = 26
          Height = 624
          AfterPrint = rl_lat_borda_rec_simplesAfterPrint
        end
        object rl_lat_recebemos_simples: TRLAngleLabel
          Left = 66
          Top = 38
          Width = 10
          Height = 564
          Angle = 270.000000000000000000
          Caption = 
            'RECEBEMOS DE (RAZAO SOCIAL DO EMITENTE) OS PRODUTOS CONSTANTES D' +
            'A NOTAS FISCAL INDICADA AO LADO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = rl_lat_recebemos_simplesAfterPrint
        end
        object rl_lat_Borda_DtEmis_simples: TRLDraw
          Left = 21
          Top = 33
          Width = 31
          Height = 149
          AfterPrint = rl_lat_Borda_DtEmis_simplesAfterPrint
        end
        object rl_lat_Ass_Simples: TRLDraw
          Left = 21
          Top = 185
          Width = 31
          Height = 472
          AfterPrint = rl_lat_Ass_SimplesAfterPrint
        end
        object rl_lat_numcan_simples: TRLDraw
          Left = 22
          Top = 659
          Width = 58
          Height = 115
          AfterPrint = rl_lat_numcan_simplesAfterPrint
        end
        object rl_lat_ObsNFE_simples: TRLAngleLabel
          Left = 61
          Top = 678
          Width = 14
          Height = 35
          Angle = 270.000000000000000000
          Caption = 'NF-e'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_ObsNFE_simplesAfterPrint
        end
        object rl_lat_Iden_simples: TRLAngleLabel
          Left = 31
          Top = 187
          Width = 14
          Height = 287
          Angle = 270.000000000000000000
          Caption = 'Identifica'#231#227'o da Assinatura do Recebedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_Iden_simplesAfterPrint
        end
        object rl_lat_DtRec_simples: TRLAngleLabel
          Left = 35
          Top = 39
          Width = 14
          Height = 140
          Angle = 270.000000000000000000
          Caption = 'Data de Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_lat_DtRec_simplesAfterPrint
        end
        object rl_lat_traco_simples: TRLAngleLabel
          Left = 80
          Top = 7
          Width = 14
          Height = 807
          Angle = 270.000000000000000000
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------'
          AfterPrint = rl_lat_traco_simplesAfterPrint
        end
        object RLBand16: TRLBand
          Left = 83
          Top = 23
          Width = 983
          Height = 136
          BandType = btHeader
          object RLDraw128: TRLDraw
            Left = 7
            Top = 2
            Width = 436
            Height = 84
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw129: TRLDraw
            Left = 522
            Top = 42
            Width = 16
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
          end
          object RLDraw130: TRLDraw
            Left = 598
            Top = 2
            Width = 365
            Height = 84
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object rlLogo_Paisagem_simples: TRLImage
            Left = 10
            Top = 6
            Width = 173
            Height = 77
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Picture.Data = {
              0A544A504547496D61676563660000FFD8FFE000104A46494600010101006000
              600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
              0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
              3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
              3232323232323232323232323232323232323232323232323232323232323232
              32323232323232323232323232FFC00011080183036B03012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A28010FAD63DE6B891CC6DECE36B9B81C10A70ABF535475BD5DE6B83A75A49
              B40FF5D28EDFEC8FF3ED55ADE586D2211C2A14773DC9F526BC9C4635B9385376
              EEFF00C8873D6C8BDE4EA777CDD5F8801FF96702F4FC7AFEA68FEC788F26FEF4
              B7A9947F8557FB78F5A3EDE3D6B97F72F596AFCD8B9895AC2FADFE6B3D52427F
              BB2F23F5CFF2A587C433DA4A21D52DF664E04B1F23FCFD3F2A87EDE3D6A39AE6
              39E331CAA190F506973FB377A32B796E839BB1D5452C73C4B244EAE8C32194E7
              34FAE12CF509343BC186692CDCF2BD48FA7BFF003FE5DC452A4D12C91B064600
              823B835EA60F16B111B3D24B72A325224A28A2BB4A0A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A4C52D432DD416F8F3A78E3CF4DEE07F3A16B
              B05EC4D45311D255DC8EAEA7BA9C834FA0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
              A0028A28A0028A28A0028A28A0028A28A0028A28A004ACFD6AFF00FB3B4A9AE0
              7DFC6D4F763D2B42B8FF001DDC158ACEDC74666723E8001FCEB971755D3A3292
              22A4B962D9CD477850139259892C4F524F734FFED03EA6B37751BABE46F2EE70
              FB46697F681F5347F681F5359BBA8DD4F9A5DC39D9A5FDA07D4D1FDA07D4D66E
              EA3751CD2EE1CECD092F04A855B906BA8F06EA2648E5B073CC637C7F42791F99
              1F9D70FBAB57C357260F105A91C072508F5C823F9E2BA7055654F1117DF72E9D
              4F791EA1451457D71DC145145001451450014514500145145002514561788BC5
              7A5786ADFCCBF9FF007AC331C09CBBFD07F53C538C652768A265251576CDC270
              39AE1FC45F13B46D14B41687FB42E875585BE453E85B9FD335E7DE21F17EB9E2
              B2D16E361A69E90213971FED1E0B7D381EDDEB1A1D3EDA000EC0EDEAFCFE9D2B
              D4A3804B5ABF71C35719D205FD5FE20F89F5B2CA972F6B01E91DA02BF9B7DE3F
              9E3DAB9498CCD2169CB990F24B9249FA935D3E401C0000A8E7892788A4801047
              071C83EA2BD18724348C51C52A9293BC999FE1EF126A1E1BD423B9B399C20606
              484B1D922E790474E9DFA8ED5F4AD9DD477D6505DC27314F1AC887D430C8FE75
              F2A32947653D54907F0AFA5BC1AACBE0DD1B7F27EC919FC368C7E95C19A538A5
              19A3BB0736EF13768A28AF20EF0A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
              800A28A2800A28A2800A28A28012B86F1F822E2C5BB15703EBC7F8D7735CB78E
              ACCCFA32DC28F9ADDC31FF0074F07F5C571E360E7424919574DD3763CFB7D1BE
              A0DD46EAF9AE43CAE727DF46FA83751BA8E40E727DF46FA83751BA8E40E727DF
              5A1A082FAF58A8EBE729FC0727F95646EAE9BC0F686E75CFB411F25B21627B6E
              20803F226B6C3D2E6AB14BB9A526E53491E99DA8A28AFAB3D60A28A2800A28A2
              800A28A280128240193C555BEBEB6D3AD24BABC9D21823196773802BC7BC59E3
              BBAF10EFB4B167B3D2B90CE789271EFE8A7D3BF7F41BD0C3CEB3B2DBB98D5AD1
              A6B53A5F157C4A8ED9DF4FF0FECB9BA190F72798E23EDFDE3FA7D7A5799CC4BD
              CC97BA85C34F72E72D2CAD9FCB3FA7E95485CB1616F61033B1E00452493EC072
              6ADA783FC5179FBCFEC7BD3EEF1EDFC81C57B74A8D2A0AD74BCD9E6CE752B3BF
              4219356897845673EBD05423586CF308C7B373FCAA0D4349D474A7097F65716C
              C7A79B19507E848C1FC2A9D75463092BAD518B5676674905C25C461D09C7420F
              507D2A4CD63E94E44922E78201FC8FFF005EB4A594451339FE104D6528D9D913
              6311A27BAD40C51296925976A01DC93803F335F5258DB259585BDA47F7218963
              5FA28007F2AF04F869A41D57C676D232E61B3CDC3F1DC70BF8EE20FE06BE83AF
              3333A979C60BA1E9E0E168B977168A28AF2CED0A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A867812E209219543248A5581
              EE0F06A6A29349AB303C635BD2E5D1B5292D6404AE7746E7A3293C7E3D8FB835
              9DBABD8F5AD16D75CB2304EA55D798E403943EA3FC2BCA75AD0EFB4398ADD467
              CA2709328251BF1EC7D8F35E262706E9C9B8ABA3C6C4D09527CCBE1296EA3755
              6F397FBC28F397FBC2B9391F638FDAAEE59DD46EAADE72FF007854F690CD7F70
              B05AC4D34ADD1501FCCFA0F73C50A9B6EC9046A733B2DC91034B22A22B33B101
              540C924F00015EB5E19D1868DA52C6E337121DF291EBE9F41FE27BD67785FC22
              9A4E2EEF36C97847CA07DD8FE9EA7DFF00C9EB2BD7C1E17D9FBF2DCF630B41C1
              734B762D14515E81DA145145001451450025656B9AFD8787B4F6BBBE976AF444
              5E5E46F451DCD55F1278A2DFC3D6E89B1AE7509FE5B7B48B9790FF00419EFF00
              D6B97D3FC11A97883501AC78B6E0976FB96919C045CE76E7F847D3939E4839AD
              A9D38FC551D97E66539BF861B9C9DFDE6BFF0010355012D5DE18CE62B54388A1
              07A33B1C0271DCFB803B5755A3FC28B7CACDAF5D1B961CFD9A025631EC4F53FA
              57A05A59DB58DB2DBDADBC70C4BD1235C0FD2ACD6D3C64ADCB4FDD4671C3ABF3
              4F5651D3B49D3F4987C9B0B386D93BF968067EA7B9F7357A8A5AE36DBD59D092
              5B14751D32D356B192CAF6059A090619587EA3D0FBD7CD9E21D21F42D7AF34C7
              62DE43E158F059480549F720835F50115E05F1555478EA72BD5A18CB7D76E3F9
              015E9E5751FB470E9638F1915CBCC731A58C348FEC00A97529B1108C1E58E4FD
              053ACD3CBB619E0B727FCFD2A6D0B4997C4FE26B7B08F3E5BB65D87F0C63963F
              9671EE40AF5E5251BCDEC8F3A29C9A4BA9EB1F0A3423A6F86DB5095713DFB071
              91FF002CC642FE7927F115E8151430C76D04704481238D42A28E800E00A92BE6
              2AD47526E6FA9EDD382845450B45145416145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001451450014514500145145
              0014514500145145001451450014514500145145001514B0C73C6D1CB1ABA30C
              1560083F854B45026AFA3391D43E1D6837CC5E3864B473C936EF81F91040FC05
              6337C27B52D95D5270BE8D1827F3AF46A2B374A0DEA8E49E070F37771386B2F8
              5FA3C0C1AE66B9B9C7552FB54FE433FAD759A7E9763A5C3E5595AC7021EA1171
              9FA9EF5768C5546118EC8D6961A952F8236168A28AA370A28A2800A28A2800AC
              FBEB9B81982C23592E987593223887F7988EBECA393EC3246852000741421331
              B4AF0F5B69D7125ECACD77A94DFEB6EE51973ECA3A2A8EC07EB5B5494B4DB6F7
              04AC1451452185145140086BE75F1E5C8D4BC7DA91539449445C76D8A14FEA0D
              7BFEA57B1E9DA65D5ECBFEAEDE2691BDC019AF9A12479E79AF273992676763EA
              49249FCCD7A99641F34A7D8E1C6CB45116EE511C3B1782DC0F615EB9F09FC367
              4ED1DF58B84C5C5F0022C8E5620720FF00C08F3F4C579AF84F4193C57E2686D4
              86FB321F32761FC3183C8CFA93803EB9ED5F46451A4512471A85440155474007
              18AD331AFCB15497CC8C252BBE76494514578E7A214514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145001451450014514500145145001451450
              0145145001451450014514500145145004171710DA5BC971712AC70C6A59DD8E
              0281D49AF28D67E304D25D3DBE81651B46A71F68B9C9DC3D428238FA9CFB0AD0
              F8CBA94B6BA0D969F1B955BB9899307EF2A60E0FB6581FC2BC8EC5710961FC47
              F957AB81C242A479E7A9E46618D9D27C90D0F4DB1F17F896E62135D6A4910619
              0915BA0C8F5C906AE7FC251AB7FD05E7FF00BF50FF00F115C08D4C8000C80060
              0A3FB50FA9AEE7838748A3CD58E9ADE477DFF0946ADFF4179FFEFD43FF00C451
              FF000946ADFF004179FF00EFD43FFC45703FDA87D4D1FDA87D4D1F5487F2A1FD
              7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE128D5BFE82F3FFDFA87FF00
              88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF0084A356FF00A0BCFF
              00F7EA1FFE228FF84A356FFA0BCFFF007EA1FF00E22B81FED43EA68FED43EA68
              FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FFDFA87FF0088A3FE128D5BFE82F3
              FF00DFA87FF88AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333BEFF84A356F
              FA0BCFFF007EA1FF00E228FF0084A356FF00A0BCFF00F7EA1FFE22B81FED43EA
              68FED43EA68FAA43F9507D7A5FCCCEFBFE128D5BFE82F3FF00DFA87FF88A3FE1
              28D5BFE82F3FFDFA87FF0088AE07FB50FA9A3FB50FA9A3EA90FE541F5E97F333
              BC93C51ADEC3E56B0E1FB79904447E38506B263F8ABE20D2AE8C7A95ADA5DC20
              E1B6031BFE7923F4FCAB99FED46F5354AF25FB531279057068583A4D35288BEB
              F5134D48FA07C37E25D3FC4FA6FDB2C2424A9DB2C4DC346D8E847F9CD6D62BE7
              BF859A9CB61E37B6B756222BC568A45CF1C296538F5C8C7E26BE84CD7898AA1E
              C6A72AD8FA0C2D6F6B4F99EE2D14515CE7485145140051451401E7BF16357FB2
              787A1D2E26FDF5F483763A88D4827F5DA3F3AF179DF0A21404938181D7D85749
              E38D786B5E26B9BA46DD6F0FEE20C1E0AA93923EA493F4C7A56AFC2EF0B1D5B5
              73ACDE266D2D1818C11C492F51F82F07EB8F7AF7E82586C3F348F2AA7EFAB591
              E85F0FBC2FFF0008DF87D7CF4C5F5D6249F8E578F953F007F326BAEA5A4AF0A7
              3739394BA9E9C22A315142D14515250514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              1451400514514005145140051451400514514005145140051451400514514005
              14514005145140051451401E67F19B4D7B9F0F5A6A118CFD926C3FB2B8C67F30
              A3F1AF1FB27CC257B83FCEBEA3BAB5B7BDB67B6B98239A171868E450CADDF907
              8359A3C23E1D1F7743D397FDDB741FD2BD1C263951872B573CCC6601D7973459
              F3BEEA339AFA27FE112F0F7FD016C7FEFC2FF8563EB9F0E743D5AD196DEDD6C2
              E71F24D6E3183EEBD08FD7DC575C735A6DA4D3B1C12C9EA2574D1E1DBA8CD497
              F6379A36AB3E99A8204B884F51D1C75041F42391FD0D415E9C66A4934EE99E5C
              E9B84B965B8FCD19A6668CD322C3F3466999A3340587E68CD33346680B0FCD19
              A6668CD016242476A4DD50CB288973D49E00F535EB1E0CF86B0259A6A1E21469
              6E640192D49216207A6E19E5BF41D319AC2BE261415E5F71D587C1CEBBB4763C
              B77535DF6A16EC0135F45FFC225E1E03FE40B63FF7E17FC283E12F0EE30744B0
              23D0DBA9FE95C3FDAB0FE53BD64F3BEB23C5BE14E9AF7DE3882E00FDDD9C6F2B
              9ED920A81F5CB67F035F41551B0D1F4CD28C874FD3ED6D4C98DFE444A9BB1D33
              8033D4D5EC715E5E26BFB69F358F5F0D43D8C3958B45145607485145140095C9
              FC41D7BFB13C33308DF6DCDDFEE22C1E467EF37E033CF6245759D2BE7AF881E2
              53E20F1149E4396B4B7CC500078383CB0FA9FD00AEBC1D0F6B555F65AB39F115
              3921A6ECC6D2349BAF10EB36FA6DA0F9A46E588C8451D58FB01FE1D4D7D21A4E
              976DA36976FA7DA26D8615DA3D49EE4FB93935CB7C38F08FFC23DA4FDAEEE3C6
              A376A0B8239893A84FAF73EFC76AEDEAF1D89F6B3E58EC89C351E48DDEEC5A28
              A2B84EA0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2803CCFE2FE82B75A2C5ADC29FE9164C16423BC6C71F
              8E188FCCD7912B8640C3B8CD7D29E23B21A8786F52B42B932DB48ABF5DA71FAE
              2BE64B739840F42457B9965472A6E2FA1E066B4929A92EA4F9A334DCD19AF4EE
              79161D9A334DCD19A2E161D9A334DCD19A2E161D9A334DCD213804FA5170B1D6
              FC35D0D75CF1789E64DD6DA7A89482320BF4507F1C9FF80D7BF579A7C17B311F
              876FEF48F9E7BADB9F555518FD59ABD2EBE6F1D51CEB3EC8FA9C0D350A2BCC5A
              28A2B90ED0A28A2800A28A2800A292A2B9B88ACED65B89DD638A252EEE4F0AA0
              649FCA8DDD81E871DF12FC4A343F0F35AC0F8BCBD0634C1E5531F337E5C0F73E
              D5C57C2FF079D4EF46B97D1E6D2DDBF70AC389241DFDC29FCCFD08ACF482FBE2
              778E2497E78ECD48CB1E90C20F03FDE3CF1EA49E80D7B95959C1A7D9C3696B18
              8E08502220E800AF4AA4BEAD47D947E27B9C718FB5A9CEF65B16A8A28AF34EC0
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
              A28A2800A28A2800A28A280108C8AF95EF2DBEC1AADF59E31F67B878F1FEEB11
              FD2BEA83D2BE70F1E5AFD8BC7DAC44070F20947BEE50C7F526BD3CB256A8E3DC
              F2F348DE9A7D8C1A29B457B67803A8A6D1400EA29B45003B34D90E118E7B1A29
              929C467DE932A2B547D09F0CAD3ECBE01D341186977CA7F17247E98AEBAB33C3
              F69F60F0E69B68460C36B1A1FA8500D6A57CAD59734DBF33EB69479609051451
              50681451450014514500267DABCC7E25EB571A85D5B784749064BAB9606E029E
              83AAA93D87F11F603B135D9F8ABC430F86B439EFA501A5FB90464FDF90F41FD4
              FB03583E01F0B4F6092EBBAB82FAC5F92EE5C73129E71EC4F53E9C0EC73D342D
              05ED65D36F531A8DCBDC5F336FC29E1AB7F0BE8C9650E1A63F34F363991FB9FA
              7603FF00AF5BD452D73CA4E527296ECD2315156414514522828A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
              028A28A006FAD783FC5A83C9F1D2C9FF003DAD51F3F42CBFFB2D7BC9AF19F8D3
              6FB357D22E7FE7A42F1FFDF2C0FF00ECD5DB97CAD5D799C39846F419E6B9A334
              99A335F407CE0B9A33499A33400B9A33499A33400B9E29F0406EAF2DAD864996
              55418F7207F5A8F35ADE1583ED5E32D162EBFE971B11FEEB027F406A2A4B960D
              F64694A3CD348FA6D46001DA9681D28AF953EB428A28A0028A28A004A63BAC68
              CEEC155464927000A7D73DAC4526BB7474689992C9706FE4538DCA791083EAC3
              05BD14FF00B429C55DEA26EDB18DA7D9378CBC44BAFDE29FEC8B2629A742C389
              5B3CCC47A6471F41E9CF758E6A28A18E08522894246802AAA8C0007402A5AA9C
              F9BD0518D85A28A2A0A0A28A2800A28A2800A28A2800A28A280128AE575EF12D
              DE99A8FD9A18A12A10365C127273E86B33FE136D43FE785BFE4DFE35C15331A1
              4E4E327AA3375629D99DED15C17FC26DA87FCF0B7FC9BFC6BA6F0FEA936AD60D
              3CCA8AC1CAE1060741F5F5ABA38EA55A5C907A8E352327A1B145145761614514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450014514500145145001451450014514
              5001451450014514500145145001451450015E57F1AE1CE9BA44FF00DC9DD7F3
              5CFF00ECB5EA95E71F19E3DFE11B5907F05EA93F4D8E3F9E2BA308ED5A2CE6C5
              ABD191E279A4CD2515F4A7CC585CD19A4A280B0B9A5CD368A02C3ABA9F86B179
              DF10F4CC8C84F31CFF00DFB6C7EB8AE505771F0962F33C76ADFF003CED647FA6
              703FAD618976A32F43A70ABF7D1F53DF68A28AF993E9C28A28A0028A28A008A5
              1218888F01CF009EDEF4CB5B68ED2111463804924F2589E4927B927249A93CD8
              C1C175E3DE8F3A3FF9E8BFF7D54F3AEE2D0928A8FCE8FF00E7A27FDF429E083D
              3A534D3D862D14555B9BFB5B319B8B88E3F40CC01FC294A4A2AED8AE59A2B15F
              C55A3A1C7DA89FF76363FD284F15690E40FB5633FDE8D87F4AC7EB542F6E642E
              78F736E8AA96DA85A5E7FC7BDC45271D15C123EA2ADD6D19292BA63D028A28AA
              1851484E064F4A679D1FFCF44FFBE8526D2DC0F3FF0018FF00C878FF00D735FE
              B5815BDE2F60DAE920823CB5E41CFAD60D7C7E33F8F2F5382A7C4C2BBEF057FC
              819FFEBB37F215C0D779E0C755D19F7328FDF37523D0574E54D2AFA9743E23A6
              C52E2A3F3A3FF9E89FF7D0A55746E8C09F406BE9B993EA760FA28A2A8028A290
              903AD00145675CEB9A65A644B791647F0A9DC7F21CD67C9E32D2D0E14CCFFEEA
              63F9E2B9E789A317694912E715BB3A1A2B9AFF0084DB4EE9E4DCFF00DF2BFF00
              C554D1F8BF4A7FBCF247FEF464FF002CD4AC6D06FE242E78F737E8AA56BAB58D
              E1020BA89D8FF0EEE7F2EB576B78CE32578BB9774C5A28A2AC028A28A0028A8C
              CB1824175FA668F3A3FF009E8BFF007D54F347B8125151F9D1FF00CF44FF00BE
              853C104641E29A69EC014B514D3C50466496458D075663802B127F176970B615
              E4948EBE5A7F8E2B2A95E9D3F8E4912E496E6FD15CF43E32D365755DB3A16200
              DCA3BFD0D7420E453A75A9D45783B829296C2D14515A9425151CB3450A179645
              451D4B3605664FE26D260241BB5623FB80B7EA38ACE7569C3E29242724B735E8
              AE75BC67A62F41337D13FC4D33FE136D3B38F26E7FEF95FF00E2AB1FAEE1FF00
              9913CF1EE74D4573C9E31D2D8E18CA9EEC9FE15760D7F4BB8384BD881F463B7F
              9E2AA389A32F864BEF1A9C5F53528A6AB061952083D3069D5D0505145359D540
              DCC067D4E28BD8075151F9D1FF00CF44FCC51E747FF3D13F3A9E68F715C928A6
              0963271BD7F3A7D34D3D86145145300A28A2800C518A619114F2E07D4D279B1F
              FCF44FFBE854F32EE0498A3151F9B1FF00CF44FF00BE85289118E15D49F4068E
              65DC07D14515402514671542E359D3AD09135E44AC3AA86C9FC8735129C61AC9
              D84DA45FA2B024F17E929F76491FFDD423F9E2A16F1AE9A3A45707E8A3FC6B07
              8CC3AFB689E78F73A5A2B9C5F1A6987AA5C0FAA8FF001AB3178A7489B03ED5B0
              9ECEA47EB8C538E2E83765240A71EE6D51505BDDDBDD2EE8268E51EA8C0FF2A9
              EB74D3574EE5DC5A28A2A8028A28A0028A28A0028A28A0028A28A0028A28A002
              8A28A0028A28A0028A28A004AE1BE2D45E67812E1BFE79CD137FE3D8FEB5DCD7
              1DF14973F0F3523E862FFD1AB5B61DDAAC7D4C711AD297A1F3D678A33480F029
              735F4C7CC585CD19A4CD19A05617346693346680B0B9AF45F8331EEF15DF4BFD
              DB32BF9BA9FE95E739AF4EF82AB9D6F546F4817FF42FFEB572E37F80CEBC12FD
              FA3DA68A28AF9D3E8C28A28A00283D0D141E868607936A3FF213BBFF00AECFFF
              00A11AAB56B51FF909DDFF00D767FF00D08D55AF88A8DF3BF53CE7BB0AF4CB3B
              D82C7C3D6735C48111604E4FFBA38FAD799D59BABE9EED21491F31C318445EC3
              03AFD4F735D583C5FD5F99EEDEC694EA725CDAD57C5B75765A3B3CDBC3EA3EFB
              7E3DBF0FCEB9D776772CEC5989C924E493F5A4A2B9EAE22A569734D9129393BB
              61451456248AACC8C1949520E4107045741A4F8B2EECD963BB26E20F53F7C0F5
              CF7FC7F3AE7A8ADA957A945F341951938BBA67AE5B5CC3776E9340E1E37190C2
              A6AE03C23AA35B5FFD8E463E4CDF741FE17FFEBF4FCABBFAFAAC26256229A9F5
              EA76C27CCAE54D57FE41377FF5C5FF0091AF28AF57D57FE41377FF005C5FF91A
              F28AF2F397EF44C6BEE828A28AF0CE60A28A29805749E0AFF90CCBFF005C0FFE
              84B5CDD749E0AFF90CCBFF005C0FFE84B5D7816FEB1034A5F1A3BEA3B515CE78
              9B5EFECE885B5B30FB4C83AF5D83D7EBE95F555AAC68C1CE4763924AEC9F59F1
              25B6980C49FBEB9C7DC0785FF78F6AE26FF5BBFD458F9F3B08CFFCB34385FF00
              EBFE39AA0CCCEC59892C4E4927249F53495F2F89C7D5AEDABD91C73AB293F20A
              28AD0B4D0F52BE50F05AB943FC4D85047A8CE33F85724213A8ED14D90936EC91
              9F456FFF00C21DAAE33887FEFBFF00EB550BCD1351B152F3DAB841D5970C07D7
              19C7E35ACB0B5A0AEE2CA70925768CFAD7D3BC47A869E42890CD1774909381EC
              7A8FE5ED59145453AB3A6EF06C4A4D3D19E9FA4EB56BAB45985B6C8A3E78DBA8
              FF00EB56A5790DB5CCB697093C0E52443C1FE9EE3DABD2B45D5A3D5AC5651859
              57E5913FBA7FC2BE8F018F55D724F4923AE9D4E6D1EE6A507A5141E95E99A9E4
              FAA7FC85EF7FEBBBFF00E846AA55BD53FE42F7BFF5DDFF00F423552BE26B37ED
              25EA79F2DD857A00D6A0D23C3B64CFF3CAD026C8C1C13C0FC87BD79FD3E49649
              8A991CB1550AB93D0018007B56D86C54A87338EECA84DC6FDCB1A86A775A94C6
              4B9909C1F95070ABF41FD7AD54A28AE79CE536E52776C86DB776496FFF001F31
              7FBE3F98AF5E1D05790DBFFC7CC5FEF8FE62BD787415EE64BB4BE474E1F6631D
              D6342CC40503249E315C7EAFE316DCD0E9A0607067619CFF00BA3FA9FCA97C65
              AB3065D3A26C02374A477F45FEBF9571F539866128C9D2A4FD58AAD569F2A25B
              8B99EEA4F32E25795BD5989C7D3D2A2A2A482DE6B99445044F239FE151FAD789
              EF4DF76CE7D5B23A2B7A1F07EAB2AE59618BD9DF27F406A63E0AD4BFE7ADB7FD
              F4DFFC4D74AC1621ABF296A9CBB1CDD15AD77E1BD52D14B35B19147F146437E9
              D7F4AC9AC274E74DDA69A25A6B468B567A9DE583836D70F18CE4A8395FC41E2B
              B3D17C5515F32DBDD810CE7856CFCADEDEC7DAB82A2BA30D8DAB41AB3BA2A152
              517E47B1564788B4DFED1D264445CCB1FCF1FB91DBF119155BC2BAB3EA362D14
              CDBA78300927965EC4FBF07F2F7AE82BE9E3286268DD6CD1D89A944F1DA2B63C
              4BA77F67EAF26D5C4537CE98E9C9E47E79FC08AC7AF91AB09539B84BA1C324D3
              68504AB06524107208EA0D7A9E917A350D320B918DCCB8603B30E0FEB5E575D6
              782AFF0064F3583B70E37A03EA3AFE631F91AEFCAEBF256E47B335A32B4ADDCE
              DE8A28AFA73AC4A6BBAC68CEC400A0924F6A7573BE2ED44DA699F6746C497195
              E3A85EFF00E1F8D635EAAA54DCDF42652E5576717AADF1D47529AE49F959B099
              ECA381FE7D7354E8A2BE367394E4E4FA9C0DB6EEC2BB7F0669BE55B497F22FCD
              2FCA9ECA0FF53FCAB91D3ECDEFEFA1B58F20BB004FA0EA7F21935EAB0C296F04
              70C6BB51142A8F402BD6CA6839CDD596C8DE846EF99925636B3E20B7D257663C
              DB8232B183D3DC9EC2ADEAD7EBA6E9D2DC9C1651F28F563C01F9D797CD349713
              3CD2B967724B31F5AEECC31AE82E487C4CD2AD4E5D16E5DBFD72FF005162269D
              9633FF002CD0ED5C7A7BFE39ACEA28AF9B9D49D47CD26DB391B6DDD8515A967E
              1DD4EF543A5B9443FC521DBF8E3AE3F0AD0FF842B52C67CDB51FF026FF00E26B
              6860EBCD5D44A54E4F64737456F4DE0FD5621955865F647C13F98158D716D3DA
              4A63B889E271D981191EA3D47BD454C3D5A7ACE2D09C5C77432391E270F1BB23
              0E8CA4823F115D1697E2EBAB5611DEE6E22FEF74751FD7F9FBD737453A388A94
              5DE0C23371D533D6ED2EE0BDB749E0903C6C3208A9EBCE3C33AABE9FA8AC2EC7
              ECF3305607B13C06FCF83EDF4AF471C8AFA8C16296229F36CD6E76D39F3AB8B4
              5145761614514500145145001451450014514500145145001451450014514500
              21EB5C97C4C5DDF0F755FF007633F948A6BAD35CB7C47C7FC2BFD5B3D3CB5FFD
              0D6B4A3FC48FAA32ADFC397A1F3851499E28CD7D41F316168A4CD19A005A2933
              4668016BD53E090CEA1AC37A4510FCCB7F8579566BD63E089FF49D6FFDC87F9B
              D72E37F8123AB05FC747B1514515F3A7D1051451400507A1A283D0D0C0F26D47
              FE42777FF5D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA
              79CF7614F8E379A458E346776202A819C93D8532BB3F06E96A226D4245059895
              8B3D80E091F53FCBDEB5C2D075EA722F99508F33B09A67831762C9A839C9E7CA
              43803D89EFFE7935B91787B4A88002CA33FEF8DDFCF35A9457D3D2C151A6ACA2
              76469C62B4464CDE1CD2A65C359C6BEE9F2FF2AE475FF0E369405C42ED25B31C
              1DDF7909E80E3A8F7FF27D12AA6A36A2F74F9EDCE3E74207B1EC7F3ACF1581A5
              529BB46CC53A7168F28A28A2BE50E11F0CAD04F1CC9F7A360C0FB83915EBCAC1
              94107822BC7ABD6AC1B769D6C7D6253FA0AF732693F7A274E1DEE8925892785E
              290651C1561EC6B23FE113D1FF00E7D5BFEFE37F8D6DD1F8D7B33A34EA7C6AE7
              438A7B9E67E23B1834FD57C8B74D9184538C93D73EB5935BFE30FF0090F1FF00
              AE6BFD6B02BE4B17151AF249595CE1A89293482BADF0CE8961A9698D35CC25DC
              48573B88E303D0D7255DF782FF00E40CFF00F5D9BF90AE8CB2119D6B495CAA29
              396A8B3FF089E8FF00F3EA7FEFE37F8D59B1D0EC34D9CCD6B09491976925C9E3
              39EE7DAB4A8AFA38E1E945A718A4CEBE48A7A222B99D2DADA49DCE12352CDF40
              2BCA6F2EA4BDBC96E653F3C8C4F5E83B01EC0607E15DE78C2E0C3A1B463FE5B3
              84E3F3FE9FAD79E578B9C566E6A9AD8E7AF2D520A28A2BC539CEB7C2DA0472C4
              350BA40C09FDD230C8E38DD8FE5FFEAAED6B92B5F1869D6D690C02DEE311A051
              855EC00F5A9BFE137B0FF9F7B9FF00BE57FC6BE9F0B5F0B469A8A92B9D909422
              AC99D4521008E45731FF0009BD87FCFBDCFF00DF2BFF00C552FF00C26FA7FF00
              CFBDCFFDF2BFFC5574FD7B0FFCC8BF690EE6778A7418ED93EDF68A1509C4A806
              00CF008FE447BD7295D9EA1E2DD3EF6C27B6F22E0798854128BC123EBDB8AE32
              BE7B30F63ED39A8BBDCE5ABCB7BC42B63C35A89B0D5E30CDFBA9888DC76E7A1F
              C0FE84D63D00904107047435C946A3A73538F7222DC5A68F62EB476AABA6DC7D
              AF4EB79CF25E3563F5C73568F4AFB48B528A6BA9DF7D0F28D57FE42F7BFF005D
              DFFF00423552ADEA9FF217BDFF00AEEFFF00A11AA95F175BF892F53CF96EC28A
              2BA4F09692B7976D7732E62808DA08E0B75FD3AFE22AA85175AA2844718B9349
              09A57846E2F1166BB63044C32171F391F8F4FE7ED5D0C5E12D263401E1790FAB
              4841FD08ADE1457D3D1C050A692E5BBF33B1528A31D7C2FA3860C2D3041C8FDE
              371FAD6C741C5145754294217E4562D24B63CB35B94CDADDE3B75F3597F01C0F
              D0550AD2D7E036FAEDDA9FE290B8F70DCFF5ACDAF8EC45D55927BDCE09DF99DC
              2BB9F057D9FEC136DDBE7F99F3FAE3B7F9F5CD70D52433CB6F2092191E371FC4
              AC47EA2AF095D50A9CED5C70972CAF63D7A8AF3987C5BAB4230D2A4A3FE9A27F
              518AB91F8DAF00FDEDAC2DFEE923FA9AF7E39AE1DEF74752AD167746B8EF1668
              859D2F2CEDD99DDB6C8B1A924F70D81F4C13F4A13C75FDFB0FC44BFF00D6AB09
              E37B33FEB2D671FEEE0FF5A9AF89C26221C9290A5384D59B391FECBD43FE7C6E
              7FEFCB7F851FD97A87FCF8DCFF00DF96FF000AEEEDFC55A4CE42999A263DA452
              3F5E9FAD6C452C53C6248A45910F46520835CB4F2CA153E0A9721518BD99C578
              46D6F2DB577335B4F1C6D1119742067231C9EFD6BB9A0003B52D7AD86C3AA10E
              44EE6F08F2AB183E29D37EDFA4B48833341F3AE3B8EE3F2FD40AF3AAF6220118
              AF2FD774FF00ECDD56589462263BE3FF0074F6FC0E47E15E4E6F87D5565F330A
              F1FB466D4F6574F657B0DCA7DE8D8363D4771F88C8FC6A0A2BC58C9C5A6B7473
              A767747AF43324F0C7346728EA181F506A4AE6BC1B7FF68D39AD5CE5E03C67BA
              9E47F515D357D961EAAAB4D4D753BE32E64989DABCCBC43A87F68EAF2BAB6624
              F923F42075FD73FA576BE24D47FB3F4890A1C4B27EED31D727A9FCB35E6B5E4E
              6F88DA8AF9985797D90A28AB16568F7D7B15B463E69180CE3A0EE7F0193F8578
              718B93515AB673A5776475BE0BD37642F7F20F99F291E7B283CFEA3F4AEBAA1B
              7812DADE38231848D4281EC2A5AFB1C35154692823BE11E5491CA78E252B676B
              10E8D2163F80FF00EBD7115DCF8DE02FA7413019F2E4C1F607BFE60570D5F3D9
              A27F5977392B5F9C2B4B40F23FB6EDBED3B7CBDC7EF74CE0E3F5C566D15C14E7
              C9352B5EC669D9A67B171DA8AF2FB4D7F53B250B15D3141FC2E037E1CF38FA56
              947E34D45301E2B771FEE907F9D7D153CDA835EF5D1D6ABC4EFAA86ABA5C3AA5
              9BC1228DD8251B1CAB7635CD278EA51F7EC54FD2423FA54E9E3980FDFB3917FD
              D707F9E2B5963F0B523CB296E37560F4B9CA9D2F5004836373C1C71137F851FD
              97A87FCF8DCFFDF96FF0AED22F19E98E70EB3C7EEC99FE44D6B5A6A9637DFF00
              1ED731C8719DA0E08FC3AD79F0CBF0D51FB950CD5283D99E6A34CD401C8B1BA0
              7FEB937F857A8DB9692DA2775219901208EF8A9B028AF4F0983586BDA57B9AC2
              9A8EC2D14515DC68145145001451450014514500145145001451450014514500
              1451450025725F135B6FC3DD54FB463FF222575B5C77C526C7C3CD487AB443FF
              0022AD6B415EAC7D518D77FBA97A1F3B51499A335F4E7CD585A293346680B0B4
              52668CD0161475AF55F824D8D47575F58A33F913FE35E520F35EA1F04DBFE275
              A9AFADBA9FC9BFFAF5C98DFE048EAC1FF1A27B6514515F3C7D0851451400507A
              1A283D0D0C0F26D47FE42777FF005D9FFF00423556AD6A3FF213BBFF00AECFFF
              00A11AAB5F1153E37EA79CF7615EA3A0C622D0ECD40C0312B7E2467FAD79757A
              AE8DFF00205B2FFAE09FFA08AF5B265EFC99BE1F765EA28A2BE84EA0A43D0D2D
              07A1A4C0F21BA509773281801D863E84D45562FBFE3FEE7FEBAB7F3355EBE22A
              2B49AF33CE7B857ABE97FF00209B4FFAE29FC8579457AB695FF209B3FF00AE29
              FC857B1937C723A30FBB2ED14515F40749E77E31FF0090F1FF00AE6BFD6B02B7
              FC63FF0021E3FF005CD7FAD6057C7637FDE27EA7054F8D8577DE0AFF009033FF
              00D766FE42B81AEFBC15FF002067FF00AECDFC8575653FEF1F22E87C474B4514
              57D39D8723E396C5B5A27ABB1FC857155DC78E133636D27A49B7F304FF004AE1
              EBE5734BFD65DCE2ADF1851452AA9760A080490013D066BCE32128AE8FFE10BD
              4FFE7A5B7FDF67FC28FF00842F54FF009E96DFF7D9FF000AEBFA8E23F90D3D9C
              BB1CE515D1FF00C217AA7F7EDBFEFB3FE147FC217AA7FCF4B6FF00BECFF851F5
              1C47F207B397639CA2BA3FF842F54FF9E96DFF007D9FF0A3FE10BD53FE7A5B7F
              DF67FC28FA8E23F903D9CBB1CE515D1FFC217AA7FCF4B6FF00BECFF851FF0008
              5EA9FF003D2DBFEFB3FE147D4711FC81ECE5D8E97C2AFBFC3D6D9EA370FF00C7
              8FF4ADA3D2B2F41B09B4DD2D2DA7285D49394248E4E7D056A76AFA8C3A6A8C54
              B748EC826A3A9E51AA7FC85EF7FEBBBFFE846AA55BD53FE42F7BFF005DDFFF00
              423552BE42B7F125EA704B7615E93E178041A05BF1CBE5C9F5C9FF000C579B57
              A9E8800D12C87FD304FE42BD4C9E29D56FC8DB0EB56CD0A28A2BE8CEB0A28A28
              0397F1668CD7910BDB75DD344BF3A8EACBEDEE3FAD7095EC55CEEAFE14B6BF76
              9EDDBC89CF27032AC7DC763EFF00CEBC5C7E5CEA3F694B7EA8C2AD2E6D56E79F
              D15AD75E1BD56D49CDB34ABFDE88EECFE1D7F4ACF92D6E61CF9904A87B87423F
              98AF0E746A41DA5167338B5BA21A28A2B3B32428A28A40156AC751BAD3A6125B
              4A579E573956FA8AAB455427283BC5D98D369DD1E9BA26B316AF6BBC7CB32604
              899E87FC2B5735E65E1DBD6B2D6A06048495846E3B1C9C0FD71F957A68E95F55
              80C4BAF4AF2DD1DB4A7CD10AE73C5DA69BBD345CA2E64B7CB71D4AF7FF001FC2
              BA3A6BA2BA32B00411820D74D7A4AAD3707D4A94799599E3F455DD5EC1B4DD4A
              6B620ED07299EEA791FE1F506A957C6CE0E127196E8E069A7666A787AFFF00B3
              F5885C9C46E7CB7F4C1FFEBE2BD3BB578ED77D6DAF05F0AFDB59819E35F2883C
              92FD07F435ECE5589508CA127B6A74519A49A673FE2CD47ED9AA9851BF756E0A
              0FF7BF8BFA0FC2B0694B1762CC4924E492792692BC8AF55D5A8E6CC252726DB0
              AECFC17A6ED4935071CB7C91E7D0753F9F1F81AE4ECED64BDBC8ADA21F3C8C17
              E9EA4FB0193F857AADADB47696B14110C246A1457A594E1F9EA3AAD688D6846E
              EEC9E8A28AFA43ACAB7D671DFD9C96D28F924183EDE87F0AF2FBFB19B4EBB7B7
              9D70CBD08E8C3D47D6BD66A8EA5A55B6A90795709923EEB8E194FB1AF3B1F825
              888DE3F1232A94F9D1E57457477DE0EBE818B5A95B88FB0C8561F5CF07F3FC2B
              1A5D32FA0CF9B673A81DCC671F9E315F3B530B5A9BF7A272B84A3BA2AD14ACAC
              A70C083E846292B0B32028A28A002955991832B156072083820FB1A4A28D80EB
              FC3DE2776952CEFDF70380931FE4DEBF5FCFD6BB3C8AF1DAF46D23598E7D26DD
              E79944BB70D93C920E33F8E335EF65D8FBC5C2ABD8EAA552EACCDDA28A2BDC3A
              028A28A0028A28A0028A28A0028A28A0028A86399656709CAA1DA5BB13DC0F5C
              743EFC76A9A800A28A2800A28A2800AE0FE2E4BE5F81655CFF00AC9E34FD73FD
              2BBBAF37F8D32EDF09D9C63ABDEA93F408FF00D715BE195EB47D4C312FF7523C
              2A8A4A335F4A7CED85A293346680B0B452668CD01616BD23E0BCBB7C5B771E78
              7B263F8874FF001AF36CD779F08A5F2FC7512FFCF48245FD01FE95CD8B57A323
              A30DA5589F41D14515F387D0851451400507A1A283D0D0C0F26D47FE42777FF5
              D9FF00F423556AD6A3FF00213BBFFAECFF00FA11AAB5F1153E37EA79CF7615EA
              BA3FFC816C7FEB827FE822BCAABD5747FF00902D8FFD704FFD0457AD937C7237
              C3EECBD451457D09D4141E868A0F434303C92FBFE3FEE7FEBAB7F3355EAC5F7F
              C7FDCFFD756FE66ABD7C3D4F8DFA9E73DD857AB695FF00209B3FFAE29FC85794
              D7AB695FF209B3FF00AE29FC857AF937C523A30FBB2ED14515F42749E77E31FF
              0090F1FF00AE6BFD6B02B7FC63FF0021D3EF1AFF005AC0AF8EC6FF00BC4BD4E0
              A9F1B0AEF7C1473A34A3D2623F45AE0ABA3F0CEBD06971CB05C8608EDBD59467
              9C6083DFB0AD72DAB1A75EF2D11546494B53BFA2B1078B347233F6A3FF007E9B
              FC2ACD96B7A7EA53186D67DF205DC41461C671DC7BD7D2C7134A4ED192B9D6A6
              9BD190F89AD4DDE853851968C798BF875FD335E6B5EC2CA194823208AF30D734
              C6D2B5278B1FBA625A33FEC93D3EA3A7FF00AEBC8CDE83BAAABE6615E3F6919B
              40E0E68A2BC3398F55D2AF9750D3A1B80465946EF661C1FD73576BCCF44D725D
              1E623064B773F3C79E87D47F9E7F2C77367AEE9D7AA0C572818FF0390ADF91AF
              AAC1E361560949DA48EDA751491A74B5119A3DBB8C8A07AE6B32FBC47A6D8A9C
              CEB2BFF7223B8FF80FC6BAE7569C15E4D1A3925AB2CEABA9C3A55A7DA2504F21
              42AF5627D3F9FE1587FF0009C5A7FCFACDF98FF1AE5F56D5E7D5EE4492FCB1AE
              76460E76FF00893DCD67D78388CD6A73FEEB639A55DDFDDD8EE3FE138B4FF9F5
              9BF31FE340F1C5A1200B59FF004FF1AE1EB7FC2BA49BFD405C48BFB880E738FB
              CDD40FC3A9FC3D6A6863F1556A28458A352727647A0C6C5E356652A48C953DA9
              E7A5141E95F49D0EB3C9F54FF90BDEFF00D777FF00D08D54AB7AA7FC85EF7FEB
              BBFF00E846AA57C556FE24BD4F3A5BB0AF54D17FE40965FF005C13F90AF2BAF5
              4D17FE40965FF5C13F90AF5326FE248DF0FB97E8A28AFA23A84AAF7D742CACA6
              B9285C46A5B6838CE2AC545730ADCDB4B0B7DD910A9FC462A277E576DC4CE5FF
              00E1398BFE7C9FFEFB147FC27317FCF93FFDF62B8E9E17B79E4864187462ADF5
              07151D7CC3CCB131766CE4F6B33B5FF84E62FF009F293FEFB15D4C5224D124A9
              82AE030FA1AF21AE9B42F14FD8615B4BC5668978575E4A8F423BFF003FAD75E0
              F326E7CB5D974EB5DDA4770F04527DF891BEAB9AACFA469D272F636E4FAF963F
              C2A2875ED2E700A5EC23FDF6DA7F235685FDA1E45D427FE062BD8BD19AE8CDFD
              D65093C33A44BD6CD41FF658AFF23583AEF8560B4B292EECDDC79632D1B1C823
              BF3D78F7CD74F2EB1A7400992F6018EC1C13F9572DAFF8A22BCB57B3B20C51FE
              FCAC31C7B0F7F5AE1C62C22A6EF6B99D450B3B9CA514515F327192DB922EA12B
              D43823EB915EBA3A0AF2ED0AD4DDEB56B181C070EDEC179FFEB7E35EA23D2BE8
              7278B50948EAC3AD05A28A2BDA3A0E5BC65A779F6497A8B978787C752A7FC0FF
              00335C2D7AF4B124F0BC522864752AC0F706BCAB50B37B0BF9AD5F27631009EE
              3A8FCC60D7CEE6F87E59AAA968CE5AF1B3E6456A7F9B2084C3BCF9658315F7C1
              00FD704D328AF1D36B639C28A2A6B6B792EEEA282219791828F6CF73EC3AD38A
              72692DD82573AAF05E9BCC9A848BEA91E47E67FA7E75D9557B3B58ECAD22B788
              61235DBF5AB15F6185A0A8D250477C23CB1B0B451457496737A978AE3D3B5096
              D1AD5DCC78CB06033900FF005AABFF0009CC5FF3E4FF00F7D8AA3E34B331EA31
              5D01F24C9B4FFBC3FF00AD8FC8D7315F398AC76269559413D0E59D49C6563B5F
              F84E62FF009F27FF00BEC56BE8BADC5ACA4A52231B46402A483D7A7F2AF33ABD
              A56A9369378278BE60461D09C6E1E9EC7D0D4D0CD2AFB45ED5DE228D677F7B63
              D48A2B0C15047B8AAEFA7594BF7ED206FF007A307FA566DA78AB4CBA51BA6F21
              CFF0CA318FC7A7EB5A49A958C83297901F712035EEC6AD0A8AE9A674A945EC57
              9340D2A5186B1847FBABB7F9551B9F07E972A9F292485BD55C9FE79AD67D46CA
              3197BB8147BC80565DF78AF4EB4422293ED127658FA7E7D3158D68E1127CF626
              4A16D4E12FECDEC2FA5B573968DB19F518C8FCC1155AA7BCBA92F6F25B997EFC
              8C491E9E807B01815057CAD4E5E67CBB1C4ED776D82AD4324CB100BD39C555AE
              F346D1223A45B34CA7CC65DC7F1248FD2B6C3509D69351E85422E5B1D3D14515
              F64778514514005145140051451400DEF58FA96A124B7C9A3D8B91772AEF9A51
              FF002EF16705BFDE3D147AE4F40418FC4DE218FC3F60AEA9E7DECEDE55ADB0FB
              D2C87803E9C8C9FEA453FC3BA44BA558B4977209F52BA6F3AEE6FEF3FA0F4551
              C01E83DEB451B479990DDDD91AB0431DBC090C4BB5114051E807D6A6A28ACCB0
              A28A2800A28A28010D7947C6F9F6E9DA45BF779247FF00BE428FFD9ABD5FBD78
              9FC6DB9DDACE9B6DFF003CEDDA4C7FBCD8FF00D96BAB02AF5E272635DA8B3CB2
              8A6E68CD7D09E1D87514DCD19A02C3A8A6E68CD0161D9AEBBE194E20F881A5B1
              E8CCE9F9A301FA915C7E6B6FC2371F66F176912E7016F22C9F62C01FD09ACAB2
              E6A725E46949DA717E67D4F451DA8AF993E8C28A28A00283D0D141E94303C9B5
              1FF909DDFF00D767FF00D08D55ADFBDF0D6AD2DF5C4B1DA128F2B329F313A139
              07AD41FF0008B6B5FF003E7FF9153FC6BE3EA61ABB9B6A2F7EC70384AEF431EB
              D5747FF902D8FF00D704FF00D045705FF08BEB43FE5CFF00F22A7F8D77FA6C4F
              6FA65AC32AE244855587A100035E9E534AA53949CD5AE6F422D377562E514515
              EE9D01487A1A5A0F4A181E497DFF001FF73FF5D5BF99AAF5BB75E19D5E5BC9E4
              4B3CA3BB107CC41904E477A8BFE116D6BFE7CFFF0022A7F8D7C754C2D7726D45
              EFD8E07095F631EBD5B4AFF904D9FF00D714FF00D045703FF08BEB3FF3E7FF00
              9153FC6BD074F8DE0D3EDA29061D235561E840AF5729A3529CA4E71B5CDE845A
              BDD16A8A28AF70E8386F1BDB32DE5BDD7F0BA6CFA1049FD73FA572B5EADA969F
              0EA566F6F38F95BA11D54F622B81D43C35A8D8B9DB119E3ECF10CFE63A8FE5EF
              5F399960E6AA3A91574CE5AB4DDEE8C7A29595909560411D41182292BC8B339C
              2BA4F057FC8665FF00AE07FF00425AE6EBA4F057FC8665FF00AE07FF00425AEB
              C0AFF6881A52F8D1DFD66EADA543AB599864E18728E072A7D6B4A92BEB2708CE
              2E32D8ED693566793DFE9F73A75C186E108239561D187B555AF59BCB2B7BF80C
              57312C887D7B7B8F4AE4B50F054A84BD84C1D7A8493861F43DFF001AF9DC4E57
              520DBA5AA396745AD51C9D1572E34ABFB427CEB49540EFB491F98C8FD6A9D799
              284A2F54D33169ADC28A29402C4000927A0032696A02515A36BA16A7787F7769
              205FEF38DA3EBCE33F85747A7782E38C892FE5F30F5F2D3217F13D4FE95D3470
              55EABD2365E65C69C99CF68FA2DC6AD38080AC2A7E7948E07B0F53ED5E8F6767
              0D85AA5BC0BB6341C7A9F7352430C7044238902228C0551802A4AFA2C1E0A187
              57DE5DCEAA74D405A0F4A283D2BB8D0F27D53FE42F7BFF005DDFFF00423552BA
              0BFF000DEAD36A3732C769B91E67656F3146416C8EA7D2ABFF00C22DAD7FCF91
              FF00BFA9FE35F1F570D59CDB517BF6385C2577A18F5EA7A2FF00C812CBFEB827
              F215C27FC22FAC8FF973FF00C8A9FE35DF6970C96FA5DAC32AED91225561D704
              003B57A794D1A94E6DCD58D6845A6EE8BB451457BA74851451401C8F8A7407B8
              26FED133201FBD4039603B8F538EDDEB8AAF62ED585AAF862CF512D2AFEE273C
              9741C13EE3BFE86BC5C765BED1BA94B7EA8E7A94AEEF13CEA8ADCBBF09EA96C7
              291ACE9EB1B73F91C7E99AC99AD6E2DF3E75BCB1FF00BE847F315E254A1569BB
              4E2CE7706B74434514565A8828A2A786CEEAE3FD4DBCB20FF6509FE429A8CA4F
              45760937B1052A2B3B05552CC4800019249EC056F59F84352B920CC12DD3B973
              938F603FA915D6697E1EB2D2F0E80C93E30647E71F41DABBF0F96D6AAEF25646
              91A3293D74455F0CE8874CB733CE07DA650323FB83D3FC7FFAD5D0D14B5F4B46
              94694142275C6292B20A28A2B5282B90F1A69DBA28EFD1794C2498F42783F9FF
              003AEBAA86B6AADA25E86C63C963CFAE2B97174954A328B2271528D99E594514
              57C79C015D7782F4DDCF26A120E17291E7F53FD3F3AE56DE07B9B88E08865E46
              0ABF89AF55B0B44B1B28ADA31F2C6B8CFA9F5AF532AC3FB4A9ED1AD11BD08DDD
              D96A8A28AFA63AC28A28A00A1AAE9D16A962F6F2719E55B1F7587435E677B637
              1A7DCB5BDC21561D0F661D883DC57AD554BED3AD75287CAB98838EA0F707D41E
              D5E763B02B10B9A3A491954A6A6794515D55FF0082AE2325AC6612A7508FC37E
              7D0FE958571A46A36C4896CE618EA42923F31915F3D57095A93B4A272CA9CA3D
              0A54529041208208EA0D2573D99214514E48DE46DA88CC4F65049FD29D9BD006
              D15A76BE1ED52E9BE4B4745FEF49F2E3DF9E7F215D1E9DE0B8A26125FCBE6B7F
              CF34C85FF135D547035AABD159171A52662F877429353B859E65C5A21F989FE3
              3FDD1EDEB5E8C06000053238D224548D55540C0503005495F4984C2C70F0B2DF
              B9D70828AB0514515D6585145140051451400DCF355352D46D749D3A7BFBC904
              7042A599BBFD07A927000F5AB4C40192703BD791EB3A84DF11FC5F0E85A7BB2E
              8F6AC5E6957F8F1C16FE8BF5CF7E36A14BDA3BBD96E67527CAB4DCDBF075B5D7
              8A75B97C61A9C65625262D3A03C88D724161EA7A8CF724FA0AF43A82DADA1B4B
              686DADD0470C4A1111470A00C0153D4D59F3CAEB6E83847956BB8B4514566585
              1451400514514009DEBE7DF8C173E778DDE3FF009E16F1C7F4CE5BFF0066AFA0
              8D7CC7F102EFED9E38D5E5CE76DC18FF00EF8017FF0065AEFCBA37AB7EC8E0C7
              CAD4D2F339ACD2668A2BDC3C80CD19A28A00334668A28016A6B499ADEEA3997A
              C6C1C7D4107FA5414E4386149ABA03EBE8DD5E3565395201069F58DE16BBFB77
              8574AB92725ED632C7FDADA33FAE6B62BE5A4ACDA3E922EE93168A28A4505145
              1400514514005145140051451400514514005145140051451400514514005145
              14011BC51C830F1AB0F4201A80E9B644F36901FF00B66B56A96A1C22F742B153
              FB36C7FE7CE0FF00BF63FC29F159DB40C5A1B78A3623194400D4F4B42A715AA4
              16414514558C28A28A00303D2A292DE197FD6431BFFBCA0D4B454B8A7B815469
              F680E45AC00FFD73153245120F92355FA0C549452508AE82B0514515630A28A2
              800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4C0F4A5A2802
              16B581CFCD0C67EAA0D47FD9F679CFD960CFFD731FE15668A8E48F6159112DB4
              09F7618C63D140A9703D2968A6A296C8614514550051451400D270335C7FFC27
              5FF50FFF00C8DFFD8D7607EE9AF1EAF2733C4D5A1CBECDDAE635A6E36B1D8FFC
              277FF50FFF00C8DFFD8D64EADE26BAD521300458613F7954E4B7B67D3F0AC4A2
              BC6A98FC4548B8CA5A339DD593566C28A2A5B5B692EEEA3B78572EED81FE27D8
              75AE549C9A4B766695F43A7F05E9BBE79350917E54F923CFA9EA7F2E3F135DB5
              55B0B38EC2CA1B68C7CA8B8CFA9EE7F139AB55F5F84A0A85250EA77C23CB1B0B
              4514575161451450014514500146051450046D146E3E6456FA806A16B0B46FBD
              6D09FAC62AD5152E117D0562BAD95B2FDDB7887D1054AA8AA30AA00F614FA285
              18AD900514515430A28A2800A28A2800A28A280128A2B99F1B78A62F0B688D38
              2AD793652DA33CE5BFBC47A0EA7F0F5AA84253928C7764CA4A2AECE53E2878C8
              DAC6FE1FD3A4FDFCAB8BA914F28A7F807B9EFEC71DF8E87E1E785C787340569D
              36DFDD8124F91CA8C7CA9F803F9935E77F0E34093C45E259356D4374B0DB3F9A
              ECFCF9929E467D79C93F400F5AF74AEDC538D282A10F99CF4539C9D497C85A28
              A2B80EA0A28A2800A28A2800A28A28018EC110B31C003249AF92B51B937BA85C
              5D367334AD21CFAB127FAD7D3DE2DBE1A6F84F55BB27694B670A7FDA230BFA91
              5F2C3FDEAF5B2C8E9291E56612D6311B451457AA79C145145001451450014AA7
              0C3EB4945007D1FF000B2EC5CF806C549CB40F2444FD1891FA115D9F7AF2CF82
              77C24D1F52B1CFCD14EB363D9971FCD3F5AF53AF9BC54796B491EFE1A5CD4A2C
              5A28A2B0370A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A4A2A
              96ADA9C3A3E9773A8CEAED0DBA191D6300B103D01207EB4257764265DA2B9CF0
              B78CB4FF0016FDA8D843751FD9B687F3D546776718C31FEE9EB8AE8E9CA2E2ED
              2409A7AA168A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
              00A28A280128A81AF2D925F29AE22593A6D2E01CFD2AC50D0051451400514514
              0051451400514514005145140051451400514514005145140051451400514514
              0051451400D3F74D78F57B1565FF00C23BA4FF00CF9475E6E61839E279795DAC
              65569F3DAC798D15E9DFF08EE91FF3E317EB4E5F0FE94BC8B187F119AF3BFB1A
              AFF3232FABCBB9E696F6D35D4AB15BC6D23B7F0A8FF381EF5DF787B405D2A3F3
              A6C35D38E7D107A0FF001AD982D60B65DB0431C4BE88A07F2A9ABD0C265B0A12
              E793BB3585251D7A8B451457A66A145145001451450014514500145145001451
              4500145145001451450014514500145145001451450055BEBD834EB29AEEEA41
              1C10A17763D0015F3AF8835ABCF17F88DAE76390EC22B68072557385503B924E
              4FA93F4AEB7E29F8ACDFDF7FC23F6527FA3C0D9B9653F7DFB2FD17BFBFD29BF0
              A7C3E2F75893559933059711E4706523AFE0327EA41AF5F0D4D61E8BAD35ABD8
              E0AD37566A9C76EA7A6F857418FC39E1FB7B05C1900DF330FE273D7F0E807B01
              5B74B495E4CA4E4DC9F53B631515642D145148A0A28A280128E954357D5ACF43
              D325D42FE431DBC406E2064F24018039EA4572327C5EF0AC60625BA7CFF7603F
              D6AE14A73D62AE672AB083B499DF52579FFF00C2E3F0B7ADEFFDF9FF00EBD656
              B5F19F4E5B264D1AD6796E98615E740A89EF80727E9C7D6B48E16B376E5644B1
              3492BF3117C63F12A25B43E1FB77CC8C44D7383F740FBAA7EA79C7B0F5AF1827
              2726AC5EDEDC5FDDCB73752B4B3CADB9DDBAB1FF003F9556EF5EEE1E8AA50513
              C6AD55D49B930A28A2B7310A28A2800A28A2800A28A2803AEF877E235F0E78A2
              19A77DB6938304E49E15490437E040CFB66BE920DB86460823208AF90012A6BD
              37C17F155F45B34D3B598A6B9B58C622963C1741D94824023D39C81EBC63CCC7
              615CDF3C16A77E0F12A1EE4B63DD28AF3FFF0085C7E16FFA7DFF00BF1FFD7A54
              F8C1E157700BDE2E7B9838FD0D79BF56ABFCACF47EB14BF98EFE96B9EF0F78C7
              46F13CF345A6CEEF242A1995D0AF0491919EBFFD715D0D6528B8BB491A465192
              BC5894D660AA59880075269F5E5FF19357BAB4D36C34D81D923BB2ED31538DC1
              76E17DC12DC8F61574693AB3505D4539A84798E9AFBE2278574F90C72EAD1C92
              0EA204693F55047EB55E0F89FE139D827F693444F00C90381F9E3F9D73DE0AF8
              73E1EBFF000ED9EA37CAD7D2DC26F23CD654439FBA02907231839279CD6D5FFC
              2AF0BDD5BB25BDACB6929E92453331FC431208AE970C2C5B8B6EFDF43252AAD5
              D58EC2CEF6D750B75B8B3B88A785BEEBC4C181FC4558CD78CF81B4AF12785FC6
              A6D1ECAECE9B248D0CD288DBCA6033B5C1C6072060FA123BD7B35615E92A72B4
              5DD1A539392BB56168A28AC4D028A28A004ACCF105BD9DD6817D06A33B4166F1
              1134AA402ABDCE483FCAB4EB9EF1CFFC891AC7FD7B35553579A44CB48B666F80
              B49F0E698B7FFF0008F6A925E890C7E76F915B66376DC61475C9FCABB3EF5E4B
              F047FD5EB7F583FF0067AF5AADB151E5AD257B9145A704C5A28A2B9CD428A28A
              004EF41200C9A2BCEFE2EEB175A7F876DED2DA468FED92149594E328064AFD09
              C67D4023A13574A9BA93505D499CB962E46EEA1F103C2FA64AD0CFAB44D22F05
              61569307D095040FC6AA45F147C252B6D3A8BC79EEF04807E82B96F00FC3ED03
              56F0EC1AA6A1BEF2598B031894AAC786231F29049E33C9EE38EE7A6BBF859E15
              BA85962B292D9CF49229DB23F06247E95D5286160DC257BA3152AB25CCAC7556
              1A8D9EA76C2E2C6EA2B8849FBF13861F4E3BD5BAF13F0CE89E24F08F8F16182C
              EF26D3DE7F22699626F2E48CF01CF618C839ED82338CD7B65615E9469CAD1774
              694E6E4B542D1451589A051451400954353D634ED16149B51BB8ADA376DAAD21
              C02719C55FAC2F13785AC7C55690DB5FBCE91C4FE62985829270473907D6AA0A
              3CCB9B62657B6878B6BFA9D95CFC53FED186E637B3FB640FE703F2ED013273E8
              307F2AF6AB3F17787EFEEE3B5B5D56DA69E43848D5F258F5E2BC2B58F0FDA587
              C41FEC285E536BF6A8A2DCCC37ED60B9E40033C9C715EB7A3FC30D1345D5ADF5
              1B69EF9A681B72AC92295270473851EBEB5E9E3234792176F6D0E5A2E7CCCEDE
              8A28AF28EC0A28A2800A28A28012B1756F16685A1B14D435286293AF9632CE3F
              E02A09AE77E2678BA6F0EE99159D83ECBEBBC8120EB120EAC3DCE700F6E4F615
              C77837E19BF882D1757D6AE668E09C978D10FCF2E7F8998F63DB824F5C8AEBA5
              878F27B4AAECBF3309D57CDCB0DCEE97E297849DF6FF0068C8A3A6E6B7931FCA
              BA4D3759D3B5883CED3AF21B941C131B0254FB8EA3F1AE526F84BE1792128915
              D44D8C798939247E0723F4AF37F10681AB7C37D72DEF6C6F19A190930CE38CE3
              04A38E87B71D0F5E3040D23468567CB49B4FCC9752A43592D0FA0A8AC8F0D6B5
              1F88740B4D4E31B7CE4F9D7FBAE0E187D320E3D460D6C570B4E2DC5EE7427757
              414514521851451400959179E26D174FBFFB0DDEA56F0DD703CA66C373D38FC4
              56BD7807C4E99A0F88B3CCA0168D61600F42428233F957461682AD3E56EC655A
              A7246E7B96A3AB69FA441E76A1790DB467806570371F607927D8573E3E25F844
              C9B06AE33EBE44807E7B715CAE87E02BAF166DD7FC59793BBDC80F15BA1DB843
              C8C9E76839E14631D49C922B7AEBE14F85E7B668E1B69ADA4C7CB2A4CCC41FA3
              123F4AD153C3C5F2CE4DBF2D89E6A8D5E28EBAC351B2D4EDC5C58DD457109E8F
              13861F4E3BD41AA6BDA5689187D46FE0B6C8CAABB7CCDF451C9FC057CFFA7EAB
              AAF813C497D05AC81A58D9EDDD0E76484642B63B9070477EDDCD7A168BF0C0EA
              4A354F15DD5CDCDF5C61DA10F8DB9E70C7A923D0600E8335553090A4F9A72F75
              EDDC98D694B48AD4E8E3F895E12965118D5D413C02D0C8A3F32B81F8D74D6B77
              6F7B6C9716B3C73C2E32AF1B0653F422B87D53E137876E6C9D2C6296CEE369D9
              209598671C64313C7D315C57C2AD56EF4CF17B68D23B791721D5E3272164404E
              47A70A47BE47A0A4E852A94E53A4DDD771FB49C6494FA9EEB45145711D014514
              5001451450025676A9AEE97A24424D4AFE0B607EE876F99BE83A9FC0558BEB83
              67A7DCDC88DA430C4CE11464B601381EFC5786685E18D5BC71E299EE35D17904
              7832CD2346549190022EE181D78EB800D7450A319A729BB2465526E365147A43
              FC53F092B6D17F2B8F55B793FA8AD0D37C79E19D565586DB568BCD6E024A1A32
              4FA0DC064FD2A847F0BBC231A6D7D39E438C6E6B8933FA3015C27C48F03E93E1
              CD3E0BFD35DE2F326F28DBBBEE04609CA93CF18E724F51D3BEF0A785A92E48DE
              E44A5560AEEC7B7515C77C33D527D53C156CD72ED24B03B425D8E490A78CFE04
              0FC2BB1AE2A9070938BE86D19732B8B451454941451450014D2428249C01DE96
              BCD7E306B17563A2D9D85BC8D1ADEBB09594E095503E5CFA12C33EB8F4CD694A
              9BA93505D489C9462E4CE8AFFE21F85B4E95A29B568DE45E0AC2AD27EAA08FD6
              AB43F143C272B05FED178CF63240E3F5C71F8D733E05F879E1FD4FC3B6DA9DF8
              6BD967049412954420918C2907231CE4FE15D0DEFC2BF0ADD40C90D9CB6B21E9
              24533123F06247E95D3286160DC5DEEBA99295592BAB1D6596A169A95BADCD95
              CC3710B74789C30FD2ACE0578BF84346F127853C742D96CEF24D35E6304D2AC4
              DE5BA1CED7CF4183839EDC8CF26BDA6B0AF4D5395A2EE8D29CDCD6A85A28A2B1
              3412B93F1F78A4786741668587DBAE731DBAFA1EEF8F419FCC8AE9EE278AD6DA
              5B899D522894BBB374007249AF9CFC4DAF4BE2AF114D7EFB85BAFC9021FE1407
              8FC4F24FB9F615D982C3FB59DDEC8E7C4D5F671B2DD9931A48ED921A49A56C01
              D4B313C7D4926BE8DF0AE88BE1FF000EDAD8003CD55DD330FE290F2DFE03D80A
              F21F86FA40D63C631CCEB9B7B05F3DB2382F9C28FAE79FF809AF78AE8CCAADDA
              A6BA18E0E9E8E6FA8B451457967705145140051451401E5BF1A6FA48F47D36C5
              4909713348DEFB00C0FA65B3F80AF1173F363D2BDFBE2DE8736A9E1A8EF6D90B
              C9612191940C9319186FCB00FD01AF0190739ED5EEE5ED7B1B2DCF0F1A9AAD76
              328AD282D04B02B8E7239FAD49F60F6AECE639D45995456AFD83DA8FB07B51CC
              8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456
              AFD83DA8FB07B51CC8391995456AFD83DA8FB07B51CC8391995456AFD83DA8FB
              07B51CC83919934BD2B57EC200248C0159840321DBD0938FA534D3D84D58ED7E
              17DF4965E3CB154384B85785C7A8DA48FD403F857D140D782FC24D0E6BEF14AE
              A8C87ECB62AC4B11C1919480A3D70093ED81EA2BDE8578798B4EB687AD97A6A9
              6A2D731E31F08DB78BB4E8E0925305C42C5A1980CED27A8238C83819E47415D3
              57937C5597C41A56A36FA8E9FA8DF416134623610CCCAA92027A81C0C8C63D48
              35CF868CA55172BB33AEAB4A3A98FF00F0AF7C73A03B3691745D49CFFA25D18C
              9FA862A0FEB41F11FC4BD139BA86F1E24EBE6DA0917F16033FAD75DE19F8A5A3
              5E69D047ABDC1B4BD440B2191495908182C08071EA41C633F8D6C5D7C45F0ADA
              C658EAD1CA4745895989F6E05773AB5B9B96A53E6F9182842D78CAC733E13F8B
              0754D4E0D3F58B48E1927611C73C2485DC4E002A4923278C8279238C735EA1C5
              7CF009F197C4913E9768D0C73DCA49B4000A22E373B63804E093EE71C93CFD11
              5CF8DA70A6E3CAAD75AAEC5D094A49DF5168A28AE33A028A28A004AE7BC73FF2
              246B1FF5ECD5D0D73DE39FF912358FFAF66AD28FF123EA899FC2CE1BE08FFABD
              6FEB07FECF5EB75E49F047FD5EB7F583FF0067AF5B15BE3BF8F2FEBA19E1FF00
              86828A28AE4360A28A28012B03C59E18B5F16691F629E4313ABF9914AA325187
              1D3B8C1208ADFAF2FF008AE75DD3DACF54D32FEF60B3DBE54EB04CCAAAD9CAB1
              00F7CE33EC07715B61E329544A2ECCCEA34A3A9CFB7C37F1A6852B49A3DE07C9
              EB697262623DC1207E19341D73E26E8BFF001F10DF491AF5F32D5655FC58027F
              5AE97C23F1434B974AB7B5D6EE1EDEF21508D348A5965C7462464827BE7FAD74
              53FC43F0A5B465DB5885F1CED8D5989FC00AEE9D5AFCDCB529A97C8C1469B578
              CAC721E1BF8BB25CEA10D9EB967144246082E20C80A49C0DCA49E3D483C7A57A
              C66BE73D7271E39F1D13A3DA320B9658D72A031C000BB01C0E393EC2BE8B0300
              7B0AC3194A10E571566D6A8BA1293BA7AA1D45145711D0145145001451450078
              17897FE4B29FFAFF00B7FE495EF95F3F78D66FECEF8AF3DDCCADB22B9826381C
              950A878FC8D7B058F8DBC3BA95CDBDADA6A91CB3CE711C611B24E33D08E381DF
              15E8E3212953A6D2D2C72D192529267454514579C7505145140051451401E11F
              188B9F18C01BEEFD8936FD373D6F59689F12D6C6D85AEB368B6E225F29432F0B
              818FE0F4C569FC53F0A5C6B5A743A9D8C464BAB3043C6A32CF19E4E3D483CE3B
              827BE2B0FC13F13EDAC34E874AD744AAB02848AE5177614700301CF1D0100E46
              38EE7D68CA53C3C7D9A4DADD1C6D2551F3697343FB17E29FFD06ED7FEFA5FF00
              E22A86ADE0CF883AEDAADAEA7A959DC428E245567030C0100E4203D09FCEBB29
              7E25F84E28778D543F190A90B927FF001DE3F1AF3CD77E21EB9E25D720B4F0D1
              BAB68B25238E3C6F9493F79B19000C74CE00C927D2693AF295F912B756AC39FB
              34AD76CF44F87DE1FD43C37E1F96C351688C9F686913CA62C02955EE40E720D7
              5B597A0DA5ED8E8B6B6FA85DBDD5E05CCD331CE58F240F619C0FA56A579D564E
              5372674C1251490B451454141451450025780FC4A8D65F8932C6C3E56F254FD0
              AA8AF7EAF04F88BFF2539BEB07FE82B5DF977F15FA339B13F0A3DE9405501400
              00E829D476A2B80E93C0F558525F8D22375051B5287231C1FBA483F5AF7B15E1
              1A8FFC96F4FF00B08C3FFB2D7BB8AEEC6BD29FA1CF43797A85782785C05F8CD8
              51802FAE4003B0C495EF75E09E19FF0092CDFF006FF73FC9E9E0BE0A9E815FE2
              89EF945145701D0145145001451450053D46FEDF4BB09EF6EA40904285DC9F4F
              F1AF279FE28F88B5ABF6B5F0E69436F55FDD9964C6719383803F023DEBB9F889
              6173A8F81F5082D559E50164D8A32582B06231DF8078F6AF32F863E2ED2FC393
              5EDBEA64C297250ACE14B005723040EDCE41C7AE6BD0C3528BA32A96E692E873
              569B5351BD91B6B6FF0016352FBF37D910F4CB4298FF00BE416FCEB9FF001778
              335DD33473ACEBBAB8BB9FCC58D537B4840393F79B18C63A00457A94DF117C29
              045BCEB11BF7C223313F8015E6FE38F175D78C74E9574CB199747B1759279DC0
              05989DAB9E70072703249CE4E315B61E759D45EE28AF4B115230E5DDB3B3F841
              FF00225BFF00D7DC9FC96BBFAF21F857E2DD334FD34689772B477535DFEE06C2
              43EF0A072338E41EB81CD7AF57162E2E35A5736A2D382B0B45145731B0514514
              005739E2EF0A5AF8B34A5B49A530CB1B6F866519287A10471907B8CFA57455E5
              7F15DF5ED32E6D753D3B50BD82C993CA9560999551F248240E390719F6F715B6
              1E329544A2ECCCEA34A3A9867E1D78DB41919F48BBDE09EB697263247B86201F
              A64D075EF899A2FF00C7CC37B246BD7CCB5122FE2C013FAD751E14F8A3A4DC69
              76F6FACDCB5B5EC4811E4914B2CA471BB201C67BE71CD6F5CFC44F0A5B445DB5
              789FD16356627F002BBA556BA972D4A6A5F2305085AF1958E53C2FF169EFB528
              6C75AB48E133308D678490AAC4E06E524F07D73F87A7AA57CEBA849FF09BFC42
              2FA4DA3C4B732A003182140019DB1C0E0127FA9EBF458E9586329C20E2E2ACDA
              D8BA1294AE9EA828A2A86B1AA5BE8DA4DCEA372711408588CF2C7A003DC9C01F
              5AE249B7646EDD95D9E79F167C4E62B78FC3F6927EF66C3DCE3A85CFCABF8919
              3EC07AD796B016D6F8EE7F5353CD7771AC6AB73A9DDB6E96672C4F604F403D80
              C01EC0552BB72F3045C9038C0EE6BE970D4551828F5DD9E356A8EA4EE7B67C26
              D28597851AF5D7F7B7D297CF7D8A76A8FF00D08FE35DF551D1EC574CD1ACAC57
              1882048CE3B9000CD5EAF9EAD3F695252EECF5A9C7960A22D1451599A0514514
              0094B51B3AC6859980503249ED59969A91D5E42D619FB129C1BAED291DA3F51E
              ADD3B0CF24349B15CD56008C11915E7FAF7C24D13569DEE2CA4934E95CE59625
              0D1E7D429E9F4040F6AF41ED45542A4E9BBC5D88A94E1515A48F1E8BE0CEA168
              C7ECDAEC0CA7F864B7201FC98D4BFF000AAB5CFF00A0969BFF007E9FFC6BD728
              C5747D76B7731584A4BA1E47FF000AAB5BFF00A0969BFF007E9FFC68FF008555
              ADFF00D04B4DFF00BF4FFE35EB9452FAED5EE3FAAD3EC791FF00C2AAD6FF00E8
              25A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD
              3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF
              008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3F
              E1556B7FF412D37FEFD3FF008D7AE5147D76AF70FAAD3EC791FF00C2AAD6FF00
              E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3FF008D7AE5147D76AF70FA
              AD3EC791FF00C2AAD6FF00E825A6FF00DFA7FF001A3FE1556B7FF412D37FEFD3
              FF008D7AE5147D76AF70FAAD33C7E4F843ABDCAEC975AB48D4F511C0DCFE66AD
              E9BF04EC60943EA1AACD70A0E4C7145E583EC4E49FCB15EAB45278CACD5AE0B0
              94B7B14B4DD2ECF48B18ECEC6DD208231F2A20EFEA7D4FB9ABD4515CCDDF5674
              2492B20A86E6DA0BCB77B7B9852685C61E391432B0F420D4D451B0CE16F7E13F
              85EEE42F1C3736B939220978FC03038FC2A083E0FF0086A17DCF25FCC07F0BCC
              A07FE3AA0D7A0515BAC4D6FE6667ECA1D8CCD2340D2F4180C3A659456EA7EF15
              1966FAB1E4FE26B529296B06DB7765A496C145145030A28A2800AAB7F636FA9D
              8CD65771F996F32ED913711907A8C820FEB56A8A36D85B98DA1F86347F0E09FF
              00B2AD3ECFE7EDF33F78EFBB6E71F789C753D3D6B628A29B6E4EEC124B442D14
              51486145145001514D0C5710BC5346B246E0AB23A82187A107AD4B450070F7FF
              000AFC2F7B29912DA7B42C727ECF2E07E01B207D00AAD17C1EF0DC6C0B4BA84A
              07679971FA28AF40A2B7589AC9594999FB287632746F0D691A046534DB18E02C
              3E67E59DBD8B1C93F9D6B52D2560E4E4EED96925A2168A28A061451450014514
              500739E22F0668DE276492FEDD84E836ACD136D70339C67A11D7AFA9F5ACDD1B
              E19685A1EA906A16F2DEC93C2DB93CD91480704740A3D6BB4A2B455AA28F2F36
              847246F7B0B451456658514514005145140095CC6B5E01F0EEBB334F736023B8
              6CEE9606D8C49EE71C13EE41AE9E8AA8CE50778BB09C549599E7A9F077C36926
              E33EA0E3FB8D2AE3F45CD757A3786347F0FA15D32C62859B867E59D87BB124E3
              DB35AF47E3573AD526AD29364C69C56A90B451456458514514005145140095CF
              EA3E0AF0FEADAA7F695ED879B7676E64F3A45FBBD380C0718F4AE828A7194A2E
              F176138A7B8B45145219CFC9E0CD066D6C6B3258675012097CEF39FEF0C60E37
              638C0ED8ADFC514537272DD8924B61338AC0B5F05E8167ACFF006BC161B2FBCC
              693CDF3A43F336771C16C7393DBBD7414B4464D6898349EE1451452185145140
              0514514009DAB94D5BE1E786B57B86B89AC3CA99B967B772993EA40E33EF8CD7
              5745542A4A0EF176265152DD1C4DB7C2AF0ADBB876B59A7C769666C7E4315D4C
              5A5D843A79B08ECE04B32A50C22301083D411D39ABB4539D59CFE27708C22B64
              7316BE01F0C59DFC57B6DA5AA5C44E1D184AE42B0390402D8FD2BA7C514B5329
              CA4EF2771A8A5B05145148614514500150CF0457503C33C692C4E30C8EA19587
              A107AD4D45170387BDF855E17BC90BA41716A49C9104B81F806C81F41C55687E
              0F786A270CF2DFCA3FBAF32E3F4507F5AF40A2B7FACD64ADCCCCFD943B195A3F
              87B49D02131E996515B86FBCC012CDF563927F135AB4B4562DB93BB2D24B612B
              C7FE2EF880CF756FE1FB77C88C89AE307F88FDD53F40738F715EA9A9DFC3A5E9
              9737F39C456F1991BDC01D07BD7CDA6E66D5F58B9D46E4EE92573237A024F007
              B0E83E82BD0CBA8F34FDA3D97E67262EA72C7956EC70516F6DFEE8C9F735534A
              025D6AC95C8C35C46189E982C33563516D96E147F1102B36291A195254387460
              C0FA10722BDA49B8B3CD8BB3B9F588E94B59DA36A96FAD6936DA85B3068E640D
              8073B4F707DC1C8FC2B42BE51A69D99EEA69AB8514B597ABEBFA5E871799A8DE
              C70E7954CE5DBE8A393F80A6937A206D2D59A7587E20F15695E1BB7325F4E3CD
              232B0272EDF8761EE702B81F107C50BAB806DF4781EDD5CED591C6E95C9E0055
              190BFA9FA1ABFE11F004B34EBADF89834D72E77C76B212DB7FDA7CF56F63D3BE
              4F4EA58654E3CF5B4F2EACE7759CDF2D3D7CCB9A75B6AFE3875BED695ECB4304
              343A7A121AE0750D21E095E9C719F4C727BC8E348A358E35088A005503000F61
              4E14715CF39F374B236847956BB8EA28A2A0B0A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
              8A2800A28A2800A28A2800A28A2800A28A2803CD3E306B3F65D12DB4A8CE1EF2
              4DF201FDC5C7F3623F235E5F6116CB5048E58E4FF4AD8F89FA91D43C6F731839
              8ED55604FC064FFE3CC47E154E34091AA8EC00FD2BE870B0F67422BBEA78F899
              F3547E466EAA0858FD326B32B7EF2DBED3015040607209F5AC66B4B846C185C9
              F6191FA575C24AD63046BF87BC5FABF865D8584E0C2E72F04A37213F4C823F02
              2BAE3F19F54F2F1FD97661FD4B363F2CFF005AF3F8F4EB990F29B47AB1C55D8F
              4E8205DF3B06C7273C0158D4A1426EF28EA6B1AD38E899BD77F10FC57AC0648A
              E92CE16E0FD9936E07B31CB0FC0D63DADA5D6A1A92DBDA24B7FA8CC7924963EE
              493D00EE49FAD6AE81E1CD53C573F97609F67B153892EDD4851EA14773EC3F12
              2BD93C39E17D3BC3163E45947995BFD6CEFCBC87DCF61E83A57256AF4B0EB969
              A5736A74AA56779BD0C6F07FC3FB6D00ADF5FB2DD6A8467791948BD907F53CFD
              39CF6D494B5E3D4A92A92E693D4F46108C15A214514541614514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              4514500145145001451450014514500145145001451450014514500145145001
              45145001451450014514500145145001451450014514500145145007CB9AFCA6
              7F11EA531EAF772B73EEE4D6BC4C24895C1C86008A87C73A44DA378B6FE29108
              8E695A785BB32B12463E8491F5158F6BA84D6CBB570C9E87B7D2BEA2369D38B8
              ED63C39A6A4D3DCE8314100024F00773592355B999D638600D231C2800B127D0
              01D4D759A2FC38F10EBA565D498E9F6A4E7120F9C8F6418C7E38FA1ACE728D35
              79BB0A14E53768A39F6BBF3675B6B489EE6E1CED548D4924FA00393F85777E1B
              F85F3DD3A5F7895C841865B28CF5FF00788E9F41F98E95DD787BC23A478662C5
              85BE66230F3C9F348DF8F6FA0C0ADEAF32BE3DCBDDA7A2FC4F428E114759915B
              DBC36B02416F1245120DA888B85503B003A54D4515E75CED0A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
              0A28A28032F59D0F4CD6ED0C3A959C7708BCAEEC82A7D88E47E15E7BA7F82BC3
              D3EAE60934FDD1E7A79D20FF00D9A8A2BB309392A72B3392BA5CE8F42D2F42D2
              B481B74FD3EDEDF8C16441B8FD5BA9FCEB528A2B924DB7A9D105A05145148B0A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
              28A2800A28A2800A28A2800A28A2803FFFD9}
            Stretch = True
          end
          object rlPaisagemSimplesEmiRazao: TRLDBText
            Left = 186
            Top = 4
            Width = 252
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMITXNOME'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel164: TRLLabel
            Left = 493
            Top = 2
            Width = 56
            Height = 16
            Alignment = taCenter
            Caption = 'DANFE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel165: TRLLabel
            Left = 472
            Top = 17
            Width = 98
            Height = 13
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Documento Auxiliar de'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel166: TRLLabel
            Left = 474
            Top = 29
            Width = 94
            Height = 13
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Nota Fiscal Eletr'#244'nica'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel167: TRLLabel
            Left = 469
            Top = 43
            Width = 34
            Height = 11
            HelpType = htKeyword
            Caption = '1 - Saida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel168: TRLLabel
            Left = 469
            Top = 56
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '2 - Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText194: TRLDBText
            Left = 526
            Top = 47
            Width = 59
            Height = 11
            DataField = 'saida_entrada'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText195: TRLDBText
            Left = 467
            Top = 66
            Width = 66
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'numeronf'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel169: TRLLabel
            Left = 475
            Top = 77
            Width = 29
            Height = 11
            HelpType = htKeyword
            Caption = 'S'#201'RIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText196: TRLDBText
            Left = 513
            Top = 77
            Width = 46
            Height = 11
            DataField = 'IDESERIE'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel170: TRLLabel
            Left = 605
            Top = 3
            Width = 77
            Height = 12
            HelpType = htKeyword
            Caption = 'Controle do Fisco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBBarcode4: TRLDBBarcode
            Left = 617
            Top = 17
            Width = 110
            Height = 64
            BarcodeType = bcCode128C
            DataField = 'CHAVE_ACESSO'
            DataSource = Src_Cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object RLMemo59: TRLMemo
            Left = 7
            Top = 89
            Width = 157
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Nat. da Opera'#231#227'o')
            ParentFont = False
          end
          object RLDBText197: TRLDBText
            Left = 7
            Top = 102
            Width = 157
            Height = 14
            AutoSize = False
            DataField = 'IDENATOP'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo59
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo60: TRLMemo
            Left = 166
            Top = 89
            Width = 124
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Insc. Estadual')
            ParentFont = False
          end
          object RLDBText198: TRLDBText
            Left = 166
            Top = 102
            Width = 124
            Height = 14
            AutoSize = False
            DataField = 'EMITIE'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLMemo60
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo61: TRLMemo
            Left = 292
            Top = 89
            Width = 160
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Insc.Est. do Subst.Tributario')
            ParentFont = False
          end
          object RLMemo62: TRLMemo
            Left = 454
            Top = 89
            Width = 143
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cnpj')
            ParentFont = False
          end
          object RLMemo63: TRLMemo
            Left = 599
            Top = 89
            Width = 363
            Height = 29
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              
                'Chave de Acesso da NF-e p/Consulta de Autencidade no Site www.nf' +
                'e.fazenda.gov.br')
            ParentFont = False
          end
          object RLDBText199: TRLDBText
            Left = 294
            Top = 102
            Width = 49
            Height = 12
            DataField = 'DESTISUF'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText200: TRLDBText
            Left = 605
            Top = 102
            Width = 86
            Height = 12
            DataField = 'chave_acesso_calc'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText201: TRLDBText
            Left = 459
            Top = 102
            Width = 136
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 540
            Top = 64
            Width = 25
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Fl:'
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 566
            Top = 64
            Width = 30
            Height = 14
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object rlPaisagemSimplesEmiEnder: TRLDBMemo
            Left = 186
            Top = 18
            Width = 252
            Height = 27
            Alignment = taCenter
            AutoSize = False
            DataField = 'endereco_comp'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel171: TRLLabel
            Left = 444
            Top = 67
            Width = 20
            Height = 11
            Caption = 'No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemSimplesEmiFone: TRLDBText
            Left = 186
            Top = 59
            Width = 252
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'fone_fax'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemSimplesEmiCidade: TRLDBText
            Left = 185
            Top = 46
            Width = 252
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emicidadeuf'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlPaisagemSimplesEmiCep: TRLDBText
            Left = 185
            Top = 72
            Width = 252
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'cep_emit'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 83
          Top = 461
          Width = 983
          Height = 316
          DataSource = Src_Detalhe
          object RLBand17: TRLBand
            Left = 0
            Top = 26
            Width = 983
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand17BeforePrint
            object RLDBText204: TRLDBText
              Left = 478
              Top = 0
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo68
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText205: TRLDBText
              Left = 534
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'cst'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = mpaisagem_simples_cst
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText206: TRLDBText
              Left = 566
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCFOP'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo70
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText207: TRLDBText
              Left = 598
              Top = 0
              Width = 24
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo71
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText208: TRLDBText
              Left = 686
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVUNCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo72
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText209: TRLDBText
              Left = 737
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVPROD'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo73
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText210: TRLDBText
              Left = 835
              Top = 0
              Width = 36
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo74
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText211: TRLDBText
              Left = 915
              Top = 0
              Width = 32
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo75
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText214: TRLDBText
              Left = 622
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODQCOM'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo76
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object txt_pais2_INSS: TRLDBText
              Left = 946
              Top = 1
              Width = 36
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valor_ipi'
              DataSource = Src_Detalhe
              Holder = lb_pais2_INSS
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText202: TRLDBText
              Left = 7
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo64
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText100: TRLDBText
              Left = 63
              Top = 0
              Width = 356
              Height = 16
              AutoSize = False
              DataField = 'nomepro'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLMemo65
              ParentFont = False
            end
            object DET_MARCA4: TRLDBText
              Left = 418
              Top = 0
              Width = 60
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'marcapro'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = m_marca4
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object rldetp_base_icms: TRLDBText
              Left = 788
              Top = 1
              Width = 46
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblr_bc_icms
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object lclbdetp_vl_icms: TRLDBText
              Left = 873
              Top = 1
              Width = 42
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcp_vl_icms
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_Rod01_simples: TRLBand
            Left = 0
            Top = 57
            Width = 983
            Height = 223
            BandType = btFooter
            AfterPrint = RLBand_Rod01_simplesAfterPrint
            object RLDraw124: TRLDraw
              Left = 8
              Top = 58
              Width = 411
              Height = 165
            end
            object RLDBMemo11: TRLDBMemo
              Left = 11
              Top = 60
              Width = 406
              Height = 12
              Alignment = taCenter
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel175: TRLLabel
              Left = 7
              Top = 1
              Width = 959
              Height = 12
              HelpType = htKeyword
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'C'#193'LCULO DO ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw131: TRLDraw
              Left = 7
              Top = 14
              Width = 209
              Height = 26
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Pen.Style = psInsideFrame
            end
            object RLDBText216: TRLDBText
              Left = 177
              Top = 23
              Width = 34
              Height = 12
              Alignment = taRightJustify
              DataField = 'EMITIM'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDraw132: TRLDraw
              Left = 218
              Top = 14
              Width = 200
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLDBText217: TRLDBText
              Left = 306
              Top = 23
              Width = 108
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVSERV'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDraw133: TRLDraw
              Left = 420
              Top = 14
              Width = 230
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLDBText218: TRLDBText
              Left = 550
              Top = 23
              Width = 96
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVBC'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel176: TRLLabel
              Left = 422
              Top = 17
              Width = 114
              Height = 12
              HelpType = htKeyword
              Caption = 'Base de C'#225'culo do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel177: TRLLabel
              Left = 222
              Top = 16
              Width = 105
              Height = 12
              HelpType = htKeyword
              Caption = 'Valor Total dos Servi'#231'os'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel178: TRLLabel
              Left = 9
              Top = 17
              Width = 82
              Height = 12
              HelpType = htKeyword
              Caption = 'Inscri'#231#227'o Municipal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw134: TRLDraw
              Left = 652
              Top = 14
              Width = 314
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
            object RLLabel179: TRLLabel
              Left = 656
              Top = 16
              Width = 69
              Height = 12
              HelpType = htKeyword
              Caption = 'Valor do ISSQN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText219: TRLDBText
              Left = 865
              Top = 23
              Width = 98
              Height = 12
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVISS'
              DataSource = Src_Cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel180: TRLLabel
              Left = 10
              Top = 44
              Width = 101
              Height = 12
              Caption = 'DADOS ADICIONAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo12: TRLDBMemo
              Left = 422
              Top = 58
              Width = 544
              Height = 165
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'INFADICINFADFISCO'
              DataSource = Src_Cabecalho
            end
            object RLLabel115: TRLLabel
              Left = 423
              Top = 44
              Width = 207
              Height = 12
              Caption = 'OBSERVA'#199#213'ES RESERVADAS AO FISCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand19: TRLBand
            Left = 0
            Top = 0
            Width = 983
            Height = 26
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            object RLMemo64: TRLMemo
              Left = 7
              Top = 0
              Width = 56
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'COD. PRODUTO')
              ParentFont = False
            end
            object RLMemo65: TRLMemo
              Left = 63
              Top = 0
              Width = 356
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'DESCRI'#199#195'O DOS PRODUTOS/SERVI'#199'OS')
              ParentFont = False
            end
            object RLMemo68: TRLMemo
              Left = 478
              Top = 0
              Width = 56
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'NCMSH')
              ParentFont = False
            end
            object mpaisagem_simples_cst: TRLMemo
              Left = 534
              Top = 0
              Width = 32
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'CST')
              ParentFont = False
            end
            object RLMemo70: TRLMemo
              Left = 566
              Top = 0
              Width = 32
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'CFOP')
              ParentFont = False
            end
            object RLMemo71: TRLMemo
              Left = 598
              Top = 0
              Width = 24
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'UND')
              ParentFont = False
            end
            object RLMemo72: TRLMemo
              Left = 686
              Top = 0
              Width = 52
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'VALOR UNITARIO')
              ParentFont = False
            end
            object RLMemo73: TRLMemo
              Left = 737
              Top = 0
              Width = 52
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'V.TOTAL')
              ParentFont = False
            end
            object RLMemo74: TRLMemo
              Left = 835
              Top = 0
              Width = 36
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'ALIQ'
                'ICMS')
              ParentFont = False
            end
            object RLMemo75: TRLMemo
              Left = 915
              Top = 0
              Width = 32
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'ALIQ'
                ' IPI')
              ParentFont = False
            end
            object RLMemo76: TRLMemo
              Left = 622
              Top = 0
              Width = 64
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'QUANTIDADE')
              ParentFont = False
            end
            object lb_pais2_INSS: TRLMemo
              Left = 946
              Top = 0
              Width = 36
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Lines.Strings = (
                'Valor '
                'IPI')
            end
            object m_marca4: TRLMemo
              Left = 418
              Top = 0
              Width = 60
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Marca')
              ParentFont = False
            end
            object lblr_bc_icms: TRLMemo
              Left = 788
              Top = 0
              Width = 46
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'BC ICMS')
              ParentFont = False
            end
            object lblcp_vl_icms: TRLMemo
              Left = 873
              Top = 0
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'VL'
                'ICMS')
              ParentFont = False
            end
          end
          object RLBand20: TRLBand
            Left = 0
            Top = 55
            Width = 983
            Height = 2
            BandType = btColumnFooter
            object RLDraw135: TRLDraw
              Left = 8
              Top = 0
              Width = 959
              Height = 1
            end
          end
          object rlPaiSimples_Linha02: TRLBand
            Left = 0
            Top = 43
            Width = 983
            Height = 12
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object RLDBMemo6: TRLDBMemo
              Left = 8
              Top = 1
              Width = 958
              Height = 10
              DataField = 'infcompprod'
              DataSource = Src_Detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object rl_lat_Serie_simples: TRLAngleLabel
          Left = 26
          Top = 669
          Width = 14
          Height = 99
          Angle = 270.000000000000000000
          AutoSize = False
          AfterPrint = rl_lat_Serie_simplesAfterPrint
        end
        object rl_lat_Nota_simples: TRLAngleLabel
          Left = 43
          Top = 669
          Width = 14
          Height = 96
          Angle = 270.000000000000000000
          AutoSize = False
          AfterPrint = rl_lat_Nota_simplesAfterPrint
        end
        object rl_band_cab02_simples: TRLBand
          Left = 83
          Top = 159
          Width = 983
          Height = 302
          BandType = btColumnHeader
          AfterPrint = rl_band_cab02_simplesAfterPrint
          object RLDraw139: TRLDraw
            Left = 498
            Top = 0
            Width = 206
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLMemo78: TRLMemo
            Left = 7
            Top = 0
            Width = 489
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Nome/Raz'#227'o Social')
            ParentFont = False
          end
          object RLMemo79: TRLMemo
            Left = 705
            Top = 0
            Width = 149
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cpf/Cnpj')
            ParentFont = False
          end
          object RLMemo80: TRLMemo
            Left = 855
            Top = 0
            Width = 108
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Data da Emiss'#227'o')
            ParentFont = False
          end
          object RLDBText220: TRLDBText
            Left = 6
            Top = 14
            Width = 61
            Height = 12
            DataField = 'nomcli_codigo'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText221: TRLDBText
            Left = 710
            Top = 14
            Width = 140
            Height = 12
            AutoSize = False
            DataField = 'dest_cnpj'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText222: TRLDBText
            Left = 868
            Top = 14
            Width = 45
            Height = 12
            DataField = 'IDEDEMI'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo81: TRLMemo
            Left = 7
            Top = 31
            Width = 489
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Endere'#231'o')
            ParentFont = False
          end
          object RLMemo82: TRLMemo
            Left = 499
            Top = 31
            Width = 267
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Bairro/Distrito')
            ParentFont = False
          end
          object RLMemo83: TRLMemo
            Left = 768
            Top = 31
            Width = 86
            Height = 27
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cep')
            ParentFont = False
          end
          object RLMemo84: TRLMemo
            Left = 855
            Top = 31
            Width = 108
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Data Entrada/Saida')
            ParentFont = False
          end
          object RLDBText223: TRLDBText
            Left = 7
            Top = 45
            Width = 105
            Height = 12
            DataField = 'DESTENDERDESTXLGR'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText224: TRLDBText
            Left = 502
            Top = 45
            Width = 125
            Height = 12
            DataField = 'DESTENDERDESTXBAIRRO'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText225: TRLDBText
            Left = 867
            Top = 46
            Width = 41
            Height = 12
            DataField = 'datasaida'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText226: TRLDBText
            Left = 772
            Top = 46
            Width = 98
            Height = 12
            DataField = 'DESTENDERDESTCEP'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLMemo85: TRLMemo
            Left = 7
            Top = 61
            Width = 434
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Municipio')
            ParentFont = False
          end
          object RLMemo86: TRLMemo
            Left = 443
            Top = 61
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Fone/Fax')
            ParentFont = False
          end
          object RLMemo87: TRLMemo
            Left = 591
            Top = 61
            Width = 64
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo88: TRLMemo
            Left = 656
            Top = 61
            Width = 198
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Inscri'#231#227'o Estadual')
            ParentFont = False
          end
          object RLMemo89: TRLMemo
            Left = 855
            Top = 61
            Width = 108
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Hora da Sa'#237'da')
            ParentFont = False
          end
          object RLDBText227: TRLDBText
            Left = 6
            Top = 72
            Width = 109
            Height = 12
            DataField = 'DESTENDERDESTXMUN'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText228: TRLDBText
            Left = 444
            Top = 72
            Width = 143
            Height = 14
            AutoSize = False
            DataField = 'dest_fone'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText229: TRLDBText
            Left = 594
            Top = 72
            Width = 92
            Height = 12
            DataField = 'DESTENDERDESTUF'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText230: TRLDBText
            Left = 659
            Top = 72
            Width = 60
            Height = 12
            DataField = 'dest_inscricao'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel181: TRLLabel
            Left = 6
            Top = 87
            Width = 43
            Height = 10
            Caption = 'FATURA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo91: TRLMemo
            Left = 7
            Top = 139
            Width = 218
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Base de Calculo do Icms')
            ParentFont = False
          end
          object RLMemo92: TRLMemo
            Left = 227
            Top = 139
            Width = 244
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Icms')
            ParentFont = False
          end
          object RLMemo93: TRLMemo
            Left = 473
            Top = 139
            Width = 188
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Base de Calculo do Icms Substitui'#231#227'o')
            ParentFont = False
          end
          object RLMemo94: TRLMemo
            Left = 663
            Top = 139
            Width = 150
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Icms Substitui'#231#227'o')
            ParentFont = False
          end
          object RLMemo95: TRLMemo
            Left = 816
            Top = 139
            Width = 150
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor Total dos Produtos')
            ParentFont = False
          end
          object RLLabel182: TRLLabel
            Left = 7
            Top = 127
            Width = 112
            Height = 10
            Caption = 'CALCULO DO IMPOSTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText232: TRLDBText
            Left = 118
            Top = 150
            Width = 103
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBC'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText233: TRLDBText
            Left = 349
            Top = 150
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText234: TRLDBText
            Left = 541
            Top = 150
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText235: TRLDBText
            Left = 708
            Top = 150
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText236: TRLDBText
            Left = 846
            Top = 150
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLMemo96: TRLMemo
            Left = 7
            Top = 168
            Width = 140
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Frete')
            ParentFont = False
          end
          object RLMemo97: TRLMemo
            Left = 149
            Top = 168
            Width = 165
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do Seguro')
            ParentFont = False
          end
          object RLMemo98: TRLMemo
            Left = 316
            Top = 168
            Width = 194
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Descontos')
            ParentFont = False
          end
          object RLMemo99: TRLMemo
            Left = 512
            Top = 168
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Outras Despesas/Acessorios')
            ParentFont = False
          end
          object RLMemo100: TRLMemo
            Left = 663
            Top = 168
            Width = 150
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor do IPI')
            ParentFont = False
          end
          object RLMemo101: TRLMemo
            Left = 816
            Top = 168
            Width = 150
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Valor Total da Nota')
            ParentFont = False
          end
          object RLDBText237: TRLDBText
            Left = 10
            Top = 179
            Width = 124
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTALICMSTOTVFRETE'
            DataSource = Src_Cabecalho
          end
          object RLDBText238: TRLDBText
            Left = 200
            Top = 179
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = Src_Cabecalho
          end
          object RLDBText239: TRLDBText
            Left = 390
            Top = 179
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = Src_Cabecalho
          end
          object RLDBText240: TRLDBText
            Left = 533
            Top = 179
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = Src_Cabecalho
          end
          object RLDBText241: TRLDBText
            Left = 711
            Top = 179
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = Src_Cabecalho
          end
          object RLDBText242: TRLDBText
            Left = 861
            Top = 179
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = Src_Cabecalho
          end
          object RLLabel183: TRLLabel
            Left = 8
            Top = 195
            Width = 218
            Height = 10
            Caption = 'TRANSPORTADOR/VOLUME TRANSPORTADOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo102: TRLMemo
            Left = 7
            Top = 207
            Width = 416
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Raz'#227'o Social')
            ParentFont = False
          end
          object RLMemo103: TRLMemo
            Left = 425
            Top = 207
            Width = 129
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Frete por Conta'
              '1 - Emitente'
              '2 - Destinatario')
            ParentFont = False
          end
          object RLMemo104: TRLMemo
            Left = 555
            Top = 207
            Width = 108
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'C'#243'digo ANTT')
            ParentFont = False
          end
          object RLMemo105: TRLMemo
            Left = 665
            Top = 207
            Width = 109
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Placa do Veiculo')
            ParentFont = False
          end
          object RLMemo106: TRLMemo
            Left = 775
            Top = 207
            Width = 39
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo107: TRLMemo
            Left = 817
            Top = 207
            Width = 149
            Height = 26
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Cnpj/Cpf')
            ParentFont = False
          end
          object RLDBText243: TRLDBText
            Left = 9
            Top = 218
            Width = 57
            Height = 14
            DataField = 'TT_XNOME'
            DataSource = Src_Cabecalho
          end
          object RLDBText244: TRLDBText
            Left = 669
            Top = 218
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = Src_Cabecalho
          end
          object RLDBText245: TRLDBText
            Left = 778
            Top = 218
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = Src_Cabecalho
          end
          object RLDBText246: TRLDBText
            Left = 822
            Top = 218
            Width = 140
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = Src_Cabecalho
          end
          object RLDraw136: TRLDraw
            Left = 522
            Top = 212
            Width = 14
            Height = 21
          end
          object RLDBText247: TRLDBText
            Left = 522
            Top = 215
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = Src_Cabecalho
          end
          object RLMemo108: TRLMemo
            Left = 7
            Top = 236
            Width = 416
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Endere'#231'o')
            ParentFont = False
          end
          object RLMemo109: TRLMemo
            Left = 425
            Top = 236
            Width = 347
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Municipio')
            ParentFont = False
          end
          object RLMemo110: TRLMemo
            Left = 775
            Top = 236
            Width = 39
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'UF')
            ParentFont = False
          end
          object RLMemo111: TRLMemo
            Left = 817
            Top = 236
            Width = 149
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Inscri'#231#227'o Estadual')
            ParentFont = False
          end
          object RLDBText248: TRLDBText
            Left = 10
            Top = 248
            Width = 61
            Height = 14
            DataField = 'TT_XENDER'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText249: TRLDBText
            Left = 430
            Top = 248
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText250: TRLDBText
            Left = 779
            Top = 248
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLDBText251: TRLDBText
            Left = 821
            Top = 248
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = Src_Cabecalho
            Layout = tlCenter
          end
          object RLMemo112: TRLMemo
            Left = 7
            Top = 266
            Width = 195
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Quantidade')
            ParentFont = False
          end
          object RLMemo113: TRLMemo
            Left = 205
            Top = 266
            Width = 218
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Esp'#233'cie')
            ParentFont = False
          end
          object RLMemo114: TRLMemo
            Left = 425
            Top = 266
            Width = 122
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Marca')
            ParentFont = False
          end
          object RLMemo115: TRLMemo
            Left = 548
            Top = 266
            Width = 139
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Numera'#231#227'o')
            ParentFont = False
          end
          object RLMemo116: TRLMemo
            Left = 689
            Top = 266
            Width = 125
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Peso Bruto')
            ParentFont = False
          end
          object RLMemo117: TRLMemo
            Left = 817
            Top = 266
            Width = 149
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Peso L'#237'quido')
            ParentFont = False
          end
          object RLDBText252: TRLDBText
            Left = 103
            Top = 278
            Width = 95
            Height = 13
            Alignment = taRightJustify
            DataField = 'TRANSPVOLQVOL'
            DataSource = Src_Cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText253: TRLDBText
            Left = 333
            Top = 278
            Width = 85
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLESP'
            DataSource = Src_Cabecalho
          end
          object RLDBText254: TRLDBText
            Left = 440
            Top = 278
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = Src_Cabecalho
          end
          object RLDBText255: TRLDBText
            Left = 710
            Top = 278
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = Src_Cabecalho
          end
          object RLDBText256: TRLDBText
            Left = 863
            Top = 278
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = Src_Cabecalho
          end
          object RLDBMemo16: TRLDBMemo
            Left = 7
            Top = 98
            Width = 959
            Height = 28
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'data_vencimentos'
            DataSource = Src_Cabecalho
          end
          object RLLabel88: TRLLabel
            Left = 499
            Top = 2
            Width = 134
            Height = 11
            HelpType = htKeyword
            Caption = 'Protocolo de Autoriza'#231#227'o de Uso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText77: TRLDBText
            Left = 501
            Top = 14
            Width = 198
            Height = 14
            AutoSize = False
            DataField = 'num_prot'
            DataSource = Src_Cabecalho
          end
        end
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 624
    Width = 1236
    Height = 191
    ActivePage = TabSheet4
    Align = alTop
    TabOrder = 4
    object TabSheet4: TTabSheet
      Caption = 'Configura'#231#245'es'
      object pnl_nfe: TPanel
        Left = 0
        Top = 0
        Width = 1228
        Height = 188
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Spn_Processar: TSpeedButton
          Left = 54
          Top = 185
          Width = 175
          Height = 24
          Caption = 'Iniciar Processamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
        end
        object grp_impressao: TGroupBox
          Left = 2
          Top = 2
          Width = 1224
          Height = 124
          Align = alTop
          Caption = 'Tipo de Impress'#227'o'
          TabOrder = 0
        end
        object bbGravar: TBitBtn
          Left = 12
          Top = 129
          Width = 97
          Height = 24
          Caption = 'Gravar'
          TabOrder = 1
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
        object bbProgAberto: TBitBtn
          Left = 685
          Top = 155
          Width = 75
          Height = 25
          Caption = 'bbProgAberto'
          TabOrder = 2
          Visible = False
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Logomarcas'
      ImageIndex = 1
      object sbnProcurar: TSpeedButton
        Left = 263
        Top = 40
        Width = 112
        Height = 22
        Caption = 'Procurar'
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
        OnClick = sbnProcurarClick
      end
      object sbnMDProcurar: TSpeedButton
        Left = 645
        Top = 32
        Width = 110
        Height = 22
        Caption = 'Procurar'
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
        OnClick = sbnMDProcurarClick
      end
      object Label7: TLabel
        Left = 398
        Top = 134
        Width = 153
        Height = 14
        Caption = 'Local da Marca d'#39'aagua:'
      end
      object sbLimpar: TSpeedButton
        Left = 263
        Top = 69
        Width = 112
        Height = 22
        Caption = 'Limpar Imagem'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        OnClick = sbLimparClick
      end
      object sbLimparMD: TSpeedButton
        Left = 645
        Top = 61
        Width = 110
        Height = 22
        Caption = 'Limpar Imagem'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        OnClick = sbLimparMDClick
      end
      object GB_LOGO: TGroupBox
        Left = 3
        Top = 20
        Width = 258
        Height = 107
        Caption = 'Logotipo a Ser Impresso na  Nota Fiscal:'
        TabOrder = 0
        object logosis: TImage
          Left = 2
          Top = 16
          Width = 254
          Height = 89
          Align = alClient
          Stretch = True
        end
      end
      object bbGravarLogo: TBitBtn
        Left = 262
        Top = 98
        Width = 112
        Height = 24
        Caption = 'Gravar'
        TabOrder = 1
        OnClick = bbGravarLogoClick
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
      object GroupBox1: TGroupBox
        Left = 375
        Top = 20
        Width = 267
        Height = 107
        Caption = 'Marca d'#39'agua do formulario:'
        TabOrder = 2
        object Image_MD: TImage
          Left = 2
          Top = 16
          Width = 263
          Height = 89
          Align = alClient
          Stretch = True
        end
      end
      object bbGravarMD: TBitBtn
        Left = 645
        Top = 98
        Width = 110
        Height = 24
        Caption = 'Gravar'
        TabOrder = 3
        OnClick = bbGravarMDClick
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
      object CB_LOCALMD: TComboBox
        Left = 553
        Top = 130
        Width = 145
        Height = 22
        ItemHeight = 14
        ItemIndex = 0
        TabOrder = 4
        Text = 'Centralizada'
        OnClick = CB_LOCALMDClick
        Items.Strings = (
          'Centralizada'
          'Distribuida'
          'Pagina Inteira')
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 2
      object Label5: TLabel
        Left = 8
        Top = 11
        Width = 119
        Height = 14
        Caption = 'Numero do Recibo:'
      end
      object Label6: TLabel
        Left = 8
        Top = 34
        Width = 94
        Height = 14
        Caption = 'Numero do NF:'
      end
      object txt_consrec: TEdit
        Left = 144
        Top = 8
        Width = 121
        Height = 22
        TabOrder = 0
      end
      object bbConsRec: TBitBtn
        Left = 416
        Top = 8
        Width = 161
        Height = 25
        Caption = 'Consultar Recibo'
        TabOrder = 1
        OnClick = bbConsRecClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333333777F3333333333330003333333333333777F3333333333330F0333
          33333333337F7F3333333333330F033333333333337373F33333333330F7F033
          333333333737F73F333333330FF7FF03333333337F37F37F333333330FF7FF03
          333333337F37337F333333330FFFFF033333333373F333733333333330FFF033
          33333333373FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object NUMNF: TEdit
        Left = 144
        Top = 31
        Width = 121
        Height = 22
        TabOrder = 2
      end
      object RadioGroup1: TRadioGroup
        Left = 464
        Top = 64
        Width = 185
        Height = 80
        Caption = 'Tipo de Ambiente:'
        ItemIndex = 1
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        TabOrder = 3
      end
    end
  end
  object Qry_Cabecalho: TQuery
    OnCalcFields = Qry_CabecalhoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT DISTINCT * FROM NFE_CADCAB')
    Left = 175
    Top = 134
    object Qry_CabecalhoCHAVE: TFloatField
      FieldName = 'CHAVE'
      Origin = 'SG_ASSOC.NFE_CADCAB.CHAVE'
    end
    object Qry_CabecalhoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Origin = 'SG_ASSOC.NFE_CADCAB.CHAVE_ACESSO'
      Size = 50
    end
    object Qry_CabecalhoIDECUF: TFloatField
      FieldName = 'IDECUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDECUF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDECNF: TFloatField
      FieldName = 'IDECNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDECNF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDENATOP: TStringField
      FieldName = 'IDENATOP'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDENATOP'
      Size = 60
    end
    object Qry_CabecalhoIDEINDPAG: TFloatField
      FieldName = 'IDEINDPAG'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEINDPAG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDEMOD: TStringField
      FieldName = 'IDEMOD'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEMOD'
      Size = 2
    end
    object Qry_CabecalhoIDESERIE: TFloatField
      FieldName = 'IDESERIE'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDESERIE'
      DisplayFormat = '000'
    end
    object Qry_CabecalhoIDENNF: TFloatField
      FieldName = 'IDENNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDENNF'
      DisplayFormat = '000"."000"."000"'
    end
    object Qry_CabecalhoIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEDEMI'
    end
    object Qry_CabecalhoIDEDSAIENT: TDateTimeField
      FieldName = 'IDEDSAIENT'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEDSAIENT'
    end
    object Qry_CabecalhoIDETPNF: TFloatField
      FieldName = 'IDETPNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETPNF'
    end
    object Qry_CabecalhoIDECMUNFG: TFloatField
      FieldName = 'IDECMUNFG'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDECMUNFG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETPIMP: TStringField
      FieldName = 'IDETPIMP'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETPIMP'
    end
    object Qry_CabecalhoIDETNFREFREFNFE: TStringField
      FieldName = 'IDETNFREFREFNFE'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFREFNFE'
      Size = 44
    end
    object Qry_CabecalhoIDETNFREFTEFNFCUF: TFloatField
      FieldName = 'IDETNFREFTEFNFCUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFCUF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETNFREFTEFNFAAMM: TStringField
      FieldName = 'IDETNFREFTEFNFAAMM'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFAAMM'
      Size = 4
    end
    object Qry_CabecalhoIDETNFREFTEFNFCNPJ: TStringField
      FieldName = 'IDETNFREFTEFNFCNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFCNPJ'
      Size = 14
    end
    object Qry_CabecalhoIDETNFREFTEFNFMOD: TFloatField
      FieldName = 'IDETNFREFTEFNFMOD'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFMOD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETNFREFTEFNFSERIE: TFloatField
      FieldName = 'IDETNFREFTEFNFSERIE'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFSERIE'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETNFREFTEFNFNNF: TFloatField
      FieldName = 'IDETNFREFTEFNFNNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETNFREFTEFNFNNF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETTPIMP: TFloatField
      FieldName = 'IDETTPIMP'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETTPIMP'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETPEMIS: TFloatField
      FieldName = 'IDETPEMIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETPEMIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDECDV: TFloatField
      FieldName = 'IDECDV'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDECDV'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDETPAMB: TFloatField
      FieldName = 'IDETPAMB'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDETPAMB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDEFINNFE: TFloatField
      FieldName = 'IDEFINNFE'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEFINNFE'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDEPROCEMI: TFloatField
      FieldName = 'IDEPROCEMI'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEPROCEMI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoIDEVERPROC: TStringField
      FieldName = 'IDEVERPROC'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEVERPROC'
    end
    object Qry_CabecalhoEMITCNPJ: TStringField
      FieldName = 'EMITCNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITCNPJ'
      Size = 14
    end
    object Qry_CabecalhoEMITCPF: TStringField
      FieldName = 'EMITCPF'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITCPF'
      Size = 14
    end
    object Qry_CabecalhoEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITXNOME'
      Size = 60
    end
    object Qry_CabecalhoEMITXFANT: TStringField
      FieldName = 'EMITXFANT'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITXFANT'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITXLGR: TStringField
      FieldName = 'EMITENDEREMITXLGR'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITXLGR'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITNRO: TStringField
      FieldName = 'EMITENDEREMITNRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITNRO'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITXCPL: TStringField
      FieldName = 'EMITENDEREMITXCPL'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITXCPL'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITXBAIRRO: TStringField
      FieldName = 'EMITENDEREMITXBAIRRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITXBAIRRO'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITCMUN: TFloatField
      FieldName = 'EMITENDEREMITCMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITCMUN'
    end
    object Qry_CabecalhoEMITENDEREMITXMUN: TStringField
      FieldName = 'EMITENDEREMITXMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITXMUN'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITUF: TStringField
      FieldName = 'EMITENDEREMITUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITUF'
      Size = 2
    end
    object Qry_CabecalhoEMITENDEREMITCEP: TFloatField
      FieldName = 'EMITENDEREMITCEP'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITCEP'
      DisplayFormat = '00"."000"-"000'
    end
    object Qry_CabecalhoEMITENDEREMITCPAIS: TFloatField
      FieldName = 'EMITENDEREMITCPAIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITCPAIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoEMITENDEREMITXPAIS: TStringField
      FieldName = 'EMITENDEREMITXPAIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITXPAIS'
      Size = 60
    end
    object Qry_CabecalhoEMITENDEREMITFONE: TStringField
      FieldName = 'EMITENDEREMITFONE'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITENDEREMITFONE'
      EditMask = '(00)0000-0000'
    end
    object Qry_CabecalhoEMITIE: TStringField
      FieldName = 'EMITIE'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITIE'
    end
    object Qry_CabecalhoEMITIEST: TStringField
      FieldName = 'EMITIEST'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITIEST'
    end
    object Qry_CabecalhoEMITIM: TStringField
      FieldName = 'EMITIM'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITIM'
      Size = 15
    end
    object Qry_CabecalhoEMITCNAE: TStringField
      FieldName = 'EMITCNAE'
      Origin = 'SG_ASSOC.NFE_CADCAB.EMITCNAE'
      Size = 7
    end
    object Qry_CabecalhoAVULSACNPJ: TStringField
      FieldName = 'AVULSACNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSACNPJ'
      Size = 14
    end
    object Qry_CabecalhoAVULSAXORGAO: TStringField
      FieldName = 'AVULSAXORGAO'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAXORGAO'
      Size = 60
    end
    object Qry_CabecalhoAVULSAMATR: TStringField
      FieldName = 'AVULSAMATR'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAMATR'
      Size = 60
    end
    object Qry_CabecalhoAVULSAXAGENTE: TStringField
      FieldName = 'AVULSAXAGENTE'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAXAGENTE'
      Size = 60
    end
    object Qry_CabecalhoAVULSAFONE: TStringField
      FieldName = 'AVULSAFONE'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAFONE'
    end
    object Qry_CabecalhoAVULSAUF: TStringField
      FieldName = 'AVULSAUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAUF'
      Size = 2
    end
    object Qry_CabecalhoAVULSANDAR: TStringField
      FieldName = 'AVULSANDAR'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSANDAR'
      Size = 60
    end
    object Qry_CabecalhoAVULSADEMI: TDateTimeField
      FieldName = 'AVULSADEMI'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSADEMI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoAVULSAVDAR: TFloatField
      FieldName = 'AVULSAVDAR'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAVDAR'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoAVULSAREPEMI: TStringField
      FieldName = 'AVULSAREPEMI'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSAREPEMI'
      Size = 60
    end
    object Qry_CabecalhoAVULSADPAG: TDateTimeField
      FieldName = 'AVULSADPAG'
      Origin = 'SG_ASSOC.NFE_CADCAB.AVULSADPAG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoDESTCNPJ: TStringField
      DisplayWidth = 14
      FieldName = 'DESTCNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTCNPJ'
      Size = 14
    end
    object Qry_CabecalhoDESTCPF: TStringField
      FieldName = 'DESTCPF'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTCPF'
      Size = 14
    end
    object Qry_CabecalhoDESTXNOME: TStringField
      FieldName = 'DESTXNOME'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTXNOME'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTXLGR: TStringField
      FieldName = 'DESTENDERDESTXLGR'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXLGR'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTNRO: TStringField
      FieldName = 'DESTENDERDESTNRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTNRO'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTXCPL: TStringField
      FieldName = 'DESTENDERDESTXCPL'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXCPL'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTXBAIRRO: TStringField
      FieldName = 'DESTENDERDESTXBAIRRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXBAIRRO'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTCMUN: TFloatField
      FieldName = 'DESTENDERDESTCMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTCMUN'
    end
    object Qry_CabecalhoDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXMUN'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTUF'
      Size = 2
    end
    object Qry_CabecalhoDESTENDERDESTCEP: TFloatField
      FieldName = 'DESTENDERDESTCEP'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTCEP'
      DisplayFormat = '00"."000"-"000'
    end
    object Qry_CabecalhoDESTENDERDESTCPAIS: TFloatField
      FieldName = 'DESTENDERDESTCPAIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTCPAIS'
    end
    object Qry_CabecalhoDESTENDERDESTXPAIS: TStringField
      FieldName = 'DESTENDERDESTXPAIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXPAIS'
      Size = 60
    end
    object Qry_CabecalhoDESTENDERDESTFONE: TStringField
      FieldName = 'DESTENDERDESTFONE'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTFONE'
    end
    object Qry_CabecalhoDESTIE: TStringField
      FieldName = 'DESTIE'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTIE'
    end
    object Qry_CabecalhoDESTISUF: TStringField
      FieldName = 'DESTISUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTISUF'
      Size = 9
    end
    object Qry_CabecalhoRETIRADACNPJ: TStringField
      FieldName = 'RETIRADACNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADACNPJ'
      Size = 14
    end
    object Qry_CabecalhoRETIRADAXLGR: TStringField
      FieldName = 'RETIRADAXLGR'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADAXLGR'
      Size = 60
    end
    object Qry_CabecalhoRETIRADANRO: TStringField
      FieldName = 'RETIRADANRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADANRO'
      Size = 60
    end
    object Qry_CabecalhoRETIRADAXCPL: TStringField
      FieldName = 'RETIRADAXCPL'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADAXCPL'
      Size = 60
    end
    object Qry_CabecalhoRETIRADAXBAIRRO: TStringField
      FieldName = 'RETIRADAXBAIRRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADAXBAIRRO'
      Size = 60
    end
    object Qry_CabecalhoRETIRADACMUN: TFloatField
      FieldName = 'RETIRADACMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADACMUN'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRETIRADAXMUN: TStringField
      FieldName = 'RETIRADAXMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADAXMUN'
      Size = 60
    end
    object Qry_CabecalhoRETIRADAUF: TStringField
      FieldName = 'RETIRADAUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.RETIRADAUF'
      Size = 2
    end
    object Qry_CabecalhoENTREGACNPJ: TStringField
      FieldName = 'ENTREGACNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGACNPJ'
      Size = 14
    end
    object Qry_CabecalhoENTREGAXLGR: TStringField
      FieldName = 'ENTREGAXLGR'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGAXLGR'
      Size = 60
    end
    object Qry_CabecalhoENTREGANRO: TStringField
      FieldName = 'ENTREGANRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGANRO'
      Size = 60
    end
    object Qry_CabecalhoENTREGAXCPL: TStringField
      FieldName = 'ENTREGAXCPL'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGAXCPL'
      Size = 60
    end
    object Qry_CabecalhoENTREGAXBAIRRO: TStringField
      FieldName = 'ENTREGAXBAIRRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGAXBAIRRO'
      Size = 60
    end
    object Qry_CabecalhoENTREGACMUN: TFloatField
      FieldName = 'ENTREGACMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGACMUN'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoENTREGAXMUN: TStringField
      FieldName = 'ENTREGAXMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGAXMUN'
      Size = 60
    end
    object Qry_CabecalhoENTREGAUF: TStringField
      FieldName = 'ENTREGAUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.ENTREGAUF'
      Size = 2
    end
    object Qry_CabecalhoTOTALICMSTOTVBC: TFloatField
      FieldName = 'TOTALICMSTOTVBC'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVICMS: TFloatField
      FieldName = 'TOTALICMSTOTVICMS'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVBCST: TFloatField
      FieldName = 'TOTALICMSTOTVBCST'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVST: TFloatField
      FieldName = 'TOTALICMSTOTVST'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVPROD: TFloatField
      FieldName = 'TOTALICMSTOTVPROD'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVFRETE: TFloatField
      FieldName = 'TOTALICMSTOTVFRETE'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVFRETE'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVSEG: TFloatField
      FieldName = 'TOTALICMSTOTVSEG'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVSEG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVDESC: TFloatField
      FieldName = 'TOTALICMSTOTVDESC'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVDESC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVII: TFloatField
      FieldName = 'TOTALICMSTOTVII'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVII'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVIPI: TFloatField
      FieldName = 'TOTALICMSTOTVIPI'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVIPI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVPIS: TFloatField
      FieldName = 'TOTALICMSTOTVPIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVCOFINS: TFloatField
      FieldName = 'TOTALICMSTOTVCOFINS'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVCOFINS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVOUTRO: TFloatField
      FieldName = 'TOTALICMSTOTVOUTRO'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVOUTRO'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVNF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoISSQNTOTVSERV: TFloatField
      FieldName = 'ISSQNTOTVSERV'
      Origin = 'SG_ASSOC.NFE_CADCAB.ISSQNTOTVSERV'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoISSQNTOTVBC: TFloatField
      FieldName = 'ISSQNTOTVBC'
      Origin = 'SG_ASSOC.NFE_CADCAB.ISSQNTOTVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoISSQNTOTVISS: TFloatField
      FieldName = 'ISSQNTOTVISS'
      Origin = 'SG_ASSOC.NFE_CADCAB.ISSQNTOTVISS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoISSQNTOTVPIS: TFloatField
      FieldName = 'ISSQNTOTVPIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.ISSQNTOTVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoISSQNTOTVCOFINS: TFloatField
      FieldName = 'ISSQNTOTVCOFINS'
      Origin = 'SG_ASSOC.NFE_CADCAB.ISSQNTOTVCOFINS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIB: TFloatField
      FieldName = 'RELTRIB'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVRETPIS: TFloatField
      FieldName = 'RELTRIBVRETPIS'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVRETPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVRETCOFINS: TFloatField
      FieldName = 'RELTRIBVRETCOFINS'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVRETCOFINS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVRETCSLL: TFloatField
      FieldName = 'RELTRIBVRETCSLL'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVRETCSLL'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVBCIRRF: TFloatField
      FieldName = 'RELTRIBVBCIRRF'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVBCIRRF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVIRRF: TFloatField
      FieldName = 'RELTRIBVIRRF'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVIRRF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBVBCRETPREV: TFloatField
      FieldName = 'RELTRIBVBCRETPREV'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBVBCRETPREV'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoRELTRIBRETPREV: TFloatField
      FieldName = 'RELTRIBRETPREV'
      Origin = 'SG_ASSOC.NFE_CADCAB.RELTRIBRETPREV'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTRANSPMODFRETE: TFloatField
      FieldName = 'TRANSPMODFRETE'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPMODFRETE'
    end
    object Qry_CabecalhoTT_CNPJ: TStringField
      FieldName = 'TT_CNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_CNPJ'
    end
    object Qry_CabecalhoTT_CPF: TStringField
      FieldName = 'TT_CPF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_CPF'
    end
    object Qry_CabecalhoTT_XNOME: TStringField
      FieldName = 'TT_XNOME'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_XNOME'
      Size = 60
    end
    object Qry_CabecalhoTT_IE: TStringField
      FieldName = 'TT_IE'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_IE'
    end
    object Qry_CabecalhoTT_XENDER: TStringField
      FieldName = 'TT_XENDER'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_XENDER'
      Size = 60
    end
    object Qry_CabecalhoTT_XMUN: TStringField
      FieldName = 'TT_XMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_XMUN'
      Size = 60
    end
    object Qry_CabecalhoTT_UF: TStringField
      FieldName = 'TT_UF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_UF'
      Size = 2
    end
    object Qry_CabecalhoTT_ETTRANSPVSERV: TFloatField
      FieldName = 'TT_ETTRANSPVSERV'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPVSERV'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTT_ETTRANSPVBCRET: TFloatField
      FieldName = 'TT_ETTRANSPVBCRET'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPVBCRET'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTT_ETTRANSPICMSRET: TFloatField
      FieldName = 'TT_ETTRANSPICMSRET'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPICMSRET'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTT_ETTRANSPVICMSRET: TFloatField
      FieldName = 'TT_ETTRANSPVICMSRET'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPVICMSRET'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTT_ETTRANSPCFOP: TStringField
      FieldName = 'TT_ETTRANSPCFOP'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPCFOP'
      Size = 4
    end
    object Qry_CabecalhoTT_ETTRANSPCMUNFG: TFloatField
      FieldName = 'TT_ETTRANSPCMUNFG'
      Origin = 'SG_ASSOC.NFE_CADCAB.TT_ETTRANSPCMUNFG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTRANSPVEICTRANSPPLACA: TStringField
      FieldName = 'TRANSPVEICTRANSPPLACA'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVEICTRANSPPLACA'
      Size = 8
    end
    object Qry_CabecalhoTRANSPVEICTRANSPUF: TStringField
      FieldName = 'TRANSPVEICTRANSPUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVEICTRANSPUF'
      Size = 2
    end
    object Qry_CabecalhoTRANSPVEICTRANSPRNTC: TStringField
      FieldName = 'TRANSPVEICTRANSPRNTC'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVEICTRANSPRNTC'
    end
    object Qry_CabecalhoTRANSPREBOQUEPLACA: TStringField
      FieldName = 'TRANSPREBOQUEPLACA'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPREBOQUEPLACA'
      Size = 8
    end
    object Qry_CabecalhoTRANSPREBOQUEUF: TStringField
      FieldName = 'TRANSPREBOQUEUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPREBOQUEUF'
      Size = 2
    end
    object Qry_CabecalhoTRANSPREBOQUERNTC: TStringField
      FieldName = 'TRANSPREBOQUERNTC'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPREBOQUERNTC'
    end
    object Qry_CabecalhoTRANSPVOLQVOL: TFloatField
      FieldName = 'TRANSPVOLQVOL'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLQVOL'
    end
    object Qry_CabecalhoTRANSPVOLESP: TStringField
      FieldName = 'TRANSPVOLESP'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLESP'
      Size = 60
    end
    object Qry_CabecalhoTRANSPVOLMARCA: TStringField
      FieldName = 'TRANSPVOLMARCA'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLMARCA'
      Size = 60
    end
    object Qry_CabecalhoTRANSPVOLNVOL: TStringField
      FieldName = 'TRANSPVOLNVOL'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLNVOL'
      Size = 60
    end
    object Qry_CabecalhoTRANSPVOLPESOL: TFloatField
      FieldName = 'TRANSPVOLPESOL'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLPESOL'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTRANSPVOLPESOB: TFloatField
      FieldName = 'TRANSPVOLPESOB'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLPESOB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoTRANSPVOLLACRESNLACRE: TStringField
      FieldName = 'TRANSPVOLLACRESNLACRE'
      Origin = 'SG_ASSOC.NFE_CADCAB.TRANSPVOLLACRESNLACRE'
      Size = 60
    end
    object Qry_CabecalhoINFADICINFADFISCO: TMemoField
      FieldName = 'INFADICINFADFISCO'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICINFADFISCO'
      BlobType = ftMemo
      Size = 256
    end
    object Qry_CabecalhoINFADICOBSCONT: TMemoField
      FieldName = 'INFADICOBSCONT'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICOBSCONT'
      BlobType = ftMemo
      Size = 500
    end
    object Qry_CabecalhoINFADICOBSCONTXCAMPO: TStringField
      FieldName = 'INFADICOBSCONTXCAMPO'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICOBSCONTXCAMPO'
    end
    object Qry_CabecalhoINFADICOBSCONTXTEXTO: TStringField
      FieldName = 'INFADICOBSCONTXTEXTO'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICOBSCONTXTEXTO'
      Size = 60
    end
    object Qry_CabecalhoINFADICOBSFISCOXTEXTO: TStringField
      FieldName = 'INFADICOBSFISCOXTEXTO'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICOBSFISCOXTEXTO'
      Size = 60
    end
    object Qry_CabecalhoINFADICOBSFISCOXCAMPO: TStringField
      FieldName = 'INFADICOBSFISCOXCAMPO'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICOBSFISCOXCAMPO'
    end
    object Qry_CabecalhoINFADICPROCREFNPROC: TStringField
      FieldName = 'INFADICPROCREFNPROC'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICPROCREFNPROC'
      Size = 60
    end
    object Qry_CabecalhoINFADICPROCREFINDPROC: TFloatField
      FieldName = 'INFADICPROCREFINDPROC'
      Origin = 'SG_ASSOC.NFE_CADCAB.INFADICPROCREFINDPROC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoCOBRFATNFAT: TStringField
      FieldName = 'COBRFATNFAT'
      Origin = 'SG_ASSOC.NFE_CADCAB.COBRFATNFAT'
      Size = 60
    end
    object Qry_CabecalhoCOBRFATVORIG: TFloatField
      FieldName = 'COBRFATVORIG'
      Origin = 'SG_ASSOC.NFE_CADCAB.COBRFATVORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_CabecalhoCOBRFATVDESC: TFloatField
      FieldName = 'COBRFATVDESC'
      Origin = 'SG_ASSOC.NFE_CADCAB.COBRFATVDESC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object COBRFATVLIQ: TFloatField
      FieldName = 'COBRFATVLIQ'
      Origin = 'SG_ASSOC.NFE_CADCAB.COBRFATVLIQ'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qry_Cabecalhofrete_cif_fob: TFloatField
      FieldKind = fkCalculated
      FieldName = 'frete_cif_fob'
      Calculated = True
    end
    object Qry_CabecalhoINFADICINFCPL: TMemoField
      FieldName = 'INFADICINFCPL'
      BlobType = ftMemo
      Size = 500
    end
    object Qry_Cabecalhoemit_cnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'emit_cnpj'
      Calculated = True
    end
    object Qry_Cabecalhodest_cnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'dest_cnpj'
      Calculated = True
    end
    object Qry_Cabecalhoendereco_comp: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco_comp'
      Size = 200
      Calculated = True
    end
    object Qry_Cabecalhoemt_fone: TStringField
      FieldKind = fkCalculated
      FieldName = 'emt_fone'
      Calculated = True
    end
    object Qry_Cabecalhonumeronf: TFloatField
      FieldKind = fkCalculated
      FieldName = 'numeronf'
      Calculated = True
    end
    object Qry_Cabecalhodest_fone: TStringField
      FieldKind = fkCalculated
      FieldName = 'dest_fone'
      Calculated = True
    end
    object Qry_Cabecalhosaida_entrada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saida_entrada'
      Calculated = True
    end
    object Qry_Cabecalhotransp_cnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'transp_cnpj'
      Calculated = True
    end
    object Qry_Cabecalhodest_inscricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'dest_inscricao'
      Size = 30
      Calculated = True
    end
    object Qry_Cabecalhonomcli_codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli_codigo'
      Size = 60
      Calculated = True
    end
    object Qry_Cabecalhoemissao_texto: TStringField
      FieldKind = fkCalculated
      FieldName = 'emissao_texto'
      Size = 25
      Calculated = True
    end
    object Qry_Cabecalhovalor_texto: TStringField
      FieldKind = fkCalculated
      FieldName = 'valor_texto'
      Size = 25
      Calculated = True
    end
    object Qry_Cabecalhofantasia_cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'fantasia_cliente'
      Size = 50
      Calculated = True
    end
    object Qry_Cabecalhochave_acesso_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'chave_acesso_calc'
      Size = 80
      Calculated = True
    end
    object Qry_Cabecalhofone_fax: TStringField
      FieldKind = fkCalculated
      FieldName = 'fone_fax'
      Size = 50
      Calculated = True
    end
    object Qry_Cabecalhoemicidadeuf: TStringField
      FieldKind = fkCalculated
      FieldName = 'emicidadeuf'
      Size = 100
      Calculated = True
    end
    object Qry_Cabecalhocep_emit: TStringField
      FieldKind = fkCalculated
      FieldName = 'cep_emit'
      Calculated = True
    end
    object Qry_Cabecalhorecebemos: TStringField
      FieldKind = fkCalculated
      FieldName = 'recebemos'
      Size = 300
      Calculated = True
    end
    object Qry_Cabecalhodata_vencimentos: TStringField
      FieldKind = fkCalculated
      FieldName = 'data_vencimentos'
      Size = 3000
      Calculated = True
    end
    object Qry_CabecalhoTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object Qry_CabecalhoTOTALISSQNTOTVBC: TFloatField
      FieldName = 'TOTALISSQNTOTVBC'
    end
    object Qry_CabecalhoTOTALISSQNTOTVISS: TFloatField
      FieldName = 'TOTALISSQNTOTVISS'
    end
    object Qry_Cabecalhototal_prodserv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_prodserv'
      Calculated = True
    end
    object Qry_CabecalhoINFOADICIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'INFOADICIO'
      Size = 3000
      Calculated = True
    end
    object Qry_Cabecalhonum_prot: TStringField
      FieldKind = fkCalculated
      FieldName = 'num_prot'
      Size = 30
      Calculated = True
    end
    object Qry_Cabecalhodatasaida: TStringField
      FieldKind = fkCalculated
      FieldName = 'datasaida'
      Size = 10
      Calculated = True
    end
    object Qry_Cabecalhocodcli: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codcli'
      Calculated = True
    end
  end
  object Src_Cabecalho: TDataSource
    DataSet = Qry_Cabecalho
    Left = 205
    Top = 134
  end
  object QryDetalhe: TQuery
    OnCalcFields = QryDetalheCalcFields
    DatabaseName = 'SG_ASSOC'
    Filtered = True
    SQL.Strings = (
      
        'SELECT * FROM NFE_CADDET WHERE CHAVE =:pChave order by detprodcp' +
        'rod')
    Left = 235
    Top = 134
    ParamData = <
      item
        DataType = ftString
        Name = 'pChave'
        ParamType = ptUnknown
        Value = ''
      end>
    object QryDetalheDETPRODCPROD: TStringField
      FieldName = 'DETPRODCPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODCPROD'
      Size = 60
    end
    object QryDetalheDETPRODCEAN: TStringField
      FieldName = 'DETPRODCEAN'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODCEAN'
    end
    object QryDetalheDETPRODXPROD: TStringField
      FieldName = 'DETPRODXPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODXPROD'
      Size = 60
    end
    object QryDetalheDETPRODNCM: TStringField
      FieldName = 'DETPRODNCM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODNCM'
      Size = 8
    end
    object QryDetalheDETPRODEXTIPI: TStringField
      FieldName = 'DETPRODEXTIPI'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODEXTIPI'
      Size = 3
    end
    object QryDetalheDETPRODGENERO: TStringField
      FieldName = 'DETPRODGENERO'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODGENERO'
      Size = 2
    end
    object QryDetalheDETPRODCFOP: TFloatField
      FieldName = 'DETPRODCFOP'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODCFOP'
    end
    object QryDetalheDETPRODUCOM: TStringField
      FieldName = 'DETPRODUCOM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODUCOM'
      Size = 6
    end
    object QryDetalheDETPRODQCOM: TFloatField
      FieldName = 'DETPRODQCOM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODQCOM'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVUNCOM: TFloatField
      FieldName = 'DETPRODVUNCOM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVUNCOM'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVPROD: TFloatField
      FieldName = 'DETPRODVPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODCEANTRIB: TStringField
      FieldName = 'DETPRODCEANTRIB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODCEANTRIB'
    end
    object QryDetalheDETPRODUTRIB: TStringField
      FieldName = 'DETPRODUTRIB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODUTRIB'
      Size = 6
    end
    object QryDetalheDETPRODQTRIB: TFloatField
      FieldName = 'DETPRODQTRIB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODQTRIB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVUNTRIB: TFloatField
      FieldName = 'DETPRODVUNTRIB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVUNTRIB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVFRETE: TFloatField
      FieldName = 'DETPRODVFRETE'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVFRETE'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVSEG: TFloatField
      FieldName = 'DETPRODVSEG'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVSEG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODVDESC: TFloatField
      FieldName = 'DETPRODVDESC'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVDESC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODDINDI: TStringField
      FieldName = 'DETPRODDINDI'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDINDI'
      Size = 10
    end
    object QryDetalheDETPRODDIDDI: TDateTimeField
      FieldName = 'DETPRODDIDDI'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIDDI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODDIXLOCDESEMB: TStringField
      FieldName = 'DETPRODDIXLOCDESEMB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIXLOCDESEMB'
      Size = 60
    end
    object QryDetalheDETPRODDIUFDESEMB: TStringField
      FieldName = 'DETPRODDIUFDESEMB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIUFDESEMB'
      Size = 2
    end
    object QryDetalheDETPRODDIDDESEMB: TDateTimeField
      FieldName = 'DETPRODDIDDESEMB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIDDESEMB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODDICEXPORTADOR: TStringField
      FieldName = 'DETPRODDICEXPORTADOR'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDICEXPORTADOR'
      Size = 60
    end
    object QryDetalheDETPRODDIADINADICAO: TFloatField
      FieldName = 'DETPRODDIADINADICAO'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIADINADICAO'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODDIADICFABRICANTE: TStringField
      FieldName = 'DETPRODDIADICFABRICANTE'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIADICFABRICANTE'
      Size = 60
    end
    object QryDetalheDETPRODDIADICVDESCDI: TFloatField
      FieldName = 'DETPRODDIADICVDESCDI'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODDIADICVDESCDI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODMEDNLOTE: TStringField
      FieldName = 'DETPRODMEDNLOTE'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODMEDNLOTE'
    end
    object QryDetalheDETPRODMEDQLOTE: TFloatField
      FieldName = 'DETPRODMEDQLOTE'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODMEDQLOTE'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODMEDDFAB: TDateTimeField
      FieldName = 'DETPRODMEDDFAB'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODMEDDFAB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDETPRODMEDDVAL: TDateTimeField
      FieldName = 'DETPRODMEDDVAL'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODMEDDVAL'
      DisplayFormat = 'dd/mm/yy'
    end
    object QryDetalheDETPRODMEDVPMC: TFloatField
      FieldName = 'DETPRODMEDVPMC'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODMEDVPMC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS00ORIG: TFloatField
      FieldName = 'DI_ICMSICMS00ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS00CST: TFloatField
      FieldName = 'DI_ICMSICMS00CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00CST'
      DisplayFormat = '000'
    end
    object QryDetalheDI_ICMSICMS00MODBC: TFloatField
      FieldName = 'DI_ICMSICMS00MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00MODBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS00VBC: TFloatField
      FieldName = 'DI_ICMSICMS00VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS00PICMS: TFloatField
      FieldName = 'DI_ICMSICMS00PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00PICMS'
    end
    object QryDetalheDI_ICMSICMS00VICMS: TFloatField
      FieldName = 'DI_ICMSICMS00VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS00VICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10ORIG: TFloatField
      FieldName = 'DI_ICMSICMS10ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10CST: TFloatField
      FieldName = 'DI_ICMSICMS10CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10MODBC: TFloatField
      FieldName = 'DI_ICMSICMS10MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10MODBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10VBC: TFloatField
      FieldName = 'DI_ICMSICMS10VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10PICMS: TFloatField
      FieldName = 'DI_ICMSICMS10PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10PICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10VICMS: TFloatField
      FieldName = 'DI_ICMSICMS10VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10VICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10MODBCST: TFloatField
      FieldName = 'DI_ICMSICMS10MODBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10MODBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10PMVAST: TFloatField
      FieldName = 'DI_ICMSICMS10PMVAST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10PMVAST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10PREDBCST: TFloatField
      FieldName = 'DI_ICMSICMS10PREDBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10PREDBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10VBCST: TFloatField
      FieldName = 'DI_ICMSICMS10VBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10VBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10PICMSST: TFloatField
      FieldName = 'DI_ICMSICMS10PICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10PICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS10VICMSST: TFloatField
      FieldName = 'DI_ICMSICMS10VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS10VICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS20ORIG: TFloatField
      FieldName = 'DI_ICMSICMS20ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS20VBC: TFloatField
      FieldName = 'DI_ICMSICMS20VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS20PICMSST: TFloatField
      FieldName = 'DI_ICMSICMS20PICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20PICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS20VICMSST: TFloatField
      FieldName = 'DI_ICMSICMS20VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20VICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS40ORIG: TFloatField
      FieldName = 'DI_ICMSICMS40ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS40ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS40CST: TFloatField
      FieldName = 'DI_ICMSICMS40CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS40CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51ORIG: TFloatField
      FieldName = 'DI_ICMSICMS51ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51CST: TFloatField
      FieldName = 'DI_ICMSICMS51CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51MODBC: TFloatField
      FieldName = 'DI_ICMSICMS51MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51MODBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51PREDBC: TFloatField
      FieldName = 'DI_ICMSICMS51PREDBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51PREDBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51VBC: TFloatField
      FieldName = 'DI_ICMSICMS51VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51PICMS: TFloatField
      FieldName = 'DI_ICMSICMS51PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51PICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS51VICMS: TFloatField
      FieldName = 'DI_ICMSICMS51VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS51VICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS60ORIG: TFloatField
      FieldName = 'DI_ICMSICMS60ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS60ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS60CST: TFloatField
      FieldName = 'DI_ICMSICMS60CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS60CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS60VBCST: TFloatField
      FieldName = 'DI_ICMSICMS60VBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS60VBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS60VICMSST: TFloatField
      FieldName = 'DI_ICMSICMS60VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS60VICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70ORIG: TFloatField
      FieldName = 'DI_ICMSICMS70ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70CST: TFloatField
      FieldName = 'DI_ICMSICMS70CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70MODBC: TFloatField
      FieldName = 'DI_ICMSICMS70MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70MODBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70PREDBC: TFloatField
      FieldName = 'DI_ICMSICMS70PREDBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70PREDBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70VBC: TFloatField
      FieldName = 'DI_ICMSICMS70VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70PICMS: TFloatField
      FieldName = 'DI_ICMSICMS70PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70PICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70VICMS: TFloatField
      FieldName = 'DI_ICMSICMS70VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70VICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70MODBCST: TFloatField
      FieldName = 'DI_ICMSICMS70MODBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70MODBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70PMVAST: TFloatField
      FieldName = 'DI_ICMSICMS70PMVAST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70PMVAST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70REDBCST: TFloatField
      FieldName = 'DI_ICMSICMS70REDBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70REDBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70VBCST: TFloatField
      FieldName = 'DI_ICMSICMS70VBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70VBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70PICMSST: TFloatField
      FieldName = 'DI_ICMSICMS70PICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70PICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS70VICMSST: TFloatField
      FieldName = 'DI_ICMSICMS70VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS70VICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90ORIG: TFloatField
      FieldName = 'DI_ICMSICMS90ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90ORIG'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90CST: TFloatField
      FieldName = 'DI_ICMSICMS90CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90CST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90MODBC: TFloatField
      FieldName = 'DI_ICMSICMS90MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90MODBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90PREDBC: TFloatField
      FieldName = 'DI_ICMSICMS90PREDBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90PREDBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90VBC: TFloatField
      FieldName = 'DI_ICMSICMS90VBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90VBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90PICMS: TFloatField
      FieldName = 'DI_ICMSICMS90PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90PICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90VICMS: TFloatField
      FieldName = 'DI_ICMSICMS90VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90VICMS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90MODBCST: TFloatField
      FieldName = 'DI_ICMSICMS90MODBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90MODBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90PMVAST: TFloatField
      FieldName = 'DI_ICMSICMS90PMVAST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90PMVAST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90REDBCST: TFloatField
      FieldName = 'DI_ICMSICMS90REDBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90REDBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90VBCST: TFloatField
      FieldName = 'DI_ICMSICMS90VBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90VBCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90PICMSST: TFloatField
      FieldName = 'DI_ICMSICMS90PICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90PICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_ICMSICMS90VICMSST: TFloatField
      FieldName = 'DI_ICMSICMS90VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS90VICMSST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPICLENQ: TStringField
      FieldName = 'DI_IPICLENQ'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPICLENQ'
      Size = 5
    end
    object QryDetalheDI_IPICNPJPROD: TStringField
      FieldName = 'DI_IPICNPJPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPICNPJPROD'
      Size = 14
    end
    object QryDetalheDI_IPICSELO: TStringField
      FieldName = 'DI_IPICSELO'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPICSELO'
      Size = 1
    end
    object QryDetalheDI_IPIQSELO: TFloatField
      FieldName = 'DI_IPIQSELO'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIQSELO'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPICENQ: TStringField
      FieldName = 'DI_IPICENQ'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPICENQ'
      Size = 3
    end
    object QryDetalheDI_IPIIPITRIBCST: TStringField
      FieldName = 'DI_IPIIPITRIBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBCST'
      Size = 2
    end
    object QryDetalheDI_IPIIPITRIBVBC: TFloatField
      FieldName = 'DI_IPIIPITRIBVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPIIPITRIBQUNID: TFloatField
      FieldName = 'DI_IPIIPITRIBQUNID'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBQUNID'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPIIPITRIBVUNID: TFloatField
      FieldName = 'DI_IPIIPITRIBVUNID'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBVUNID'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPIIPITRIBPIPI: TFloatField
      FieldName = 'DI_IPIIPITRIBPIPI'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBPIPI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPIIPITRIBVIPI: TFloatField
      FieldName = 'DI_IPIIPITRIBVIPI'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPITRIBVIPI'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_IPIIPINTCST: TStringField
      FieldName = 'DI_IPIIPINTCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_IPIIPINTCST'
      Size = 2
    end
    object QryDetalheDI_PISPISALIQCST: TStringField
      FieldName = 'DI_PISPISALIQCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISALIQCST'
      Size = 2
    end
    object QryDetalheDI_PISPISALIQVBC: TFloatField
      FieldName = 'DI_PISPISALIQVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISALIQVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISALIQPPIS: TFloatField
      FieldName = 'DI_PISPISALIQPPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISALIQPPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISALIQVPIS: TFloatField
      FieldName = 'DI_PISPISALIQVPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISALIQVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDECST: TFloatField
      FieldName = 'DI_PISPISQTDECST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDECST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEQBCPROD: TFloatField
      FieldName = 'DI_PISPISQTDEQBCPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEQBCPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEVALIQPROD: TFloatField
      FieldName = 'DI_PISPISQTDEVALIQPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEVALIQPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEVPIS: TFloatField
      FieldName = 'DI_PISPISQTDEVPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISNTCST: TFloatField
      FieldName = 'DI_PISPISQTDEPISNTCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISNTCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISOUTRCST: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISOUTRCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISOUTRVBC: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISOUTRVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISOUTRVPIS: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISOUTRVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISOUTRQBCPROD: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRQBCPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISOUTRQBCPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISPISQTDEPISOUTRVALIQPROD: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVALIQPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISQTDEPISOUTRVALIQPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISSTVBC: TFloatField
      FieldName = 'DI_PISSTVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISSTVBC'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISSTPPIS: TFloatField
      FieldName = 'DI_PISSTPPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISSTPPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISSTQBCPROD: TFloatField
      FieldName = 'DI_PISSTQBCPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISSTQBCPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISSTVALIQPROD: TFloatField
      FieldName = 'DI_PISSTVALIQPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISSTVALIQPROD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_PISSTVPIS: TFloatField
      FieldName = 'DI_PISSTVPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISSTVPIS'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_COFINSCOFINSALIQCST: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSALIQCST'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryDetalheDI_COFINSCOFINSALIQVBC: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSALIQVBC'
    end
    object QryDetalheCHAVE: TFloatField
      FieldName = 'CHAVE'
      Origin = 'SG_ASSOC.NFE_CADDET.CHAVE'
    end
    object QryDetalhecst: TStringField
      FieldKind = fkCalculated
      FieldName = 'cst'
      Size = 3
      Calculated = True
    end
    object QryDetalhealiq_icms: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq_icms'
      Calculated = True
    end
    object QryDetalhebase_icms: TFloatField
      FieldKind = fkCalculated
      FieldName = 'base_icms'
      Calculated = True
    end
    object QryDetalhevalor_icms: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_icms'
      Calculated = True
    end
    object QryDetalhepercipi: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percipi'
      Calculated = True
    end
    object QryDetalhevalor_ipi: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_ipi'
      Calculated = True
    end
    object QryDetalheclassif_fiscal: TStringField
      FieldKind = fkCalculated
      FieldName = 'classif_fiscal'
      Calculated = True
    end
    object QryDetalheDI_ICMSICMS20CST: TFloatField
      FieldName = 'DI_ICMSICMS20CST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20CST'
    end
    object QryDetalheDI_ICMSICMS20MODBC: TFloatField
      FieldName = 'DI_ICMSICMS20MODBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20MODBC'
    end
    object QryDetalheDI_ICMSICMS20PREDBCST: TFloatField
      FieldName = 'DI_ICMSICMS20PREDBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20PREDBCST'
    end
    object QryDetalheDI_ICMSICMS20PICMS: TFloatField
      FieldName = 'DI_ICMSICMS20PICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20PICMS'
    end
    object QryDetalheDI_ICMSICMS20VICMS: TFloatField
      FieldName = 'DI_ICMSICMS20VICMS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20VICMS'
    end
    object QryDetalheDI_ICMSICMS20PREDBC: TFloatField
      FieldName = 'DI_ICMSICMS20PREDBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMS20PREDBC'
    end
    object QryDetalhealiq_issqn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq_issqn'
      Calculated = True
    end
    object QryDetalheDI_COFINSCOFINSOUTRVCOFINS: TFloatField
      FieldName = 'DI_COFINSCOFINSOUTRVCOFINS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSOUTRVCOFINS'
    end
    object QryDetalheDI_COFINSCOFINSOUTRPCOFINS: TFloatField
      FieldName = 'DI_COFINSCOFINSOUTRPCOFINS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSOUTRPCOFINS'
    end
    object QryDetalheDI_COFINSCOFINSOUTRVBC: TFloatField
      FieldName = 'DI_COFINSCOFINSOUTRVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSOUTRVBC'
    end
    object QryDetalheDI_COFINSCOFINSOUTRCST: TFloatField
      FieldName = 'DI_COFINSCOFINSOUTRCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSOUTRCST'
    end
    object QryDetalheDI_PISPISOUTRVPIS: TFloatField
      FieldName = 'DI_PISPISOUTRVPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISOUTRVPIS'
    end
    object QryDetalheDI_PISPISOUTRPPIS: TFloatField
      FieldName = 'DI_PISPISOUTRPPIS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISOUTRPPIS'
    end
    object QryDetalheDI_PISPISOUTRVBC: TFloatField
      FieldName = 'DI_PISPISOUTRVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISOUTRVBC'
    end
    object QryDetalheDI_PISPISOUTRCST: TFloatField
      FieldName = 'DI_PISPISOUTRCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_PISPISOUTRCST'
    end
    object QryDetalheDI_ISSQNCMUNFG: TFloatField
      FieldName = 'DI_ISSQNCMUNFG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ISSQNCMUNFG'
    end
    object QryDetalheDI_ISSQNVALIQ: TFloatField
      FieldName = 'DI_ISSQNVALIQ'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ISSQNVALIQ'
    end
    object QryDetalheDI_ISSQNCLISTSERV: TFloatField
      FieldName = 'DI_ISSQNCLISTSERV'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ISSQNCLISTSERV'
    end
    object QryDetalheDI_ISSQNVBC: TFloatField
      FieldName = 'DI_ISSQNVBC'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ISSQNVBC'
    end
    object QryDetalheDI_ISSQNVISSQN: TFloatField
      FieldName = 'DI_ISSQNVISSQN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ISSQNVISSQN'
    end
    object QryDetalhenomepro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomepro'
      Size = 80
      Calculated = True
    end
    object QryDetalheDI_ICMSICMSSN500ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN500ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN500ORIG'
    end
    object QryDetalheDI_ICMSICMSSN500VBCSTRET: TFloatField
      FieldName = 'DI_ICMSICMSSN500VBCSTRET'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN500VBCSTRET'
    end
    object QryDetalheDI_ICMSICMSSN500VICMSSTRET: TFloatField
      FieldName = 'DI_ICMSICMSSN500VICMSSTRET'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN500VICMSSTRET'
    end
    object QryDetalheDI_ICMSORIG: TFloatField
      FieldName = 'DI_ICMSORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSORIG'
    end
    object QryDetalheDI_ICMSCSOSN: TFloatField
      FieldName = 'DI_ICMSCSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSCSOSN'
    end
    object QryDetalheDI_ICMSVBCSTRET: TFloatField
      FieldName = 'DI_ICMSVBCSTRET'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSVBCSTRET'
    end
    object QryDetalheDI_ICMSVICMSSTRET: TFloatField
      FieldName = 'DI_ICMSVICMSSTRET'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSVICMSSTRET'
    end
    object QryDetalheDI_ICMSICMSSN101ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN101ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN101ORIG'
    end
    object QryDetalheDI_ICMSICMSSN101CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN101CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN101CSOSN'
    end
    object QryDetalheDI_ICMSICMSSN101PCREDSN: TFloatField
      FieldName = 'DI_ICMSICMSSN101PCREDSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN101PCREDSN'
    end
    object QryDetalheDI_ICMSICMSSN101VCREDICMSSN: TFloatField
      FieldName = 'DI_ICMSICMSSN101VCREDICMSSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN101VCREDICMSSN'
    end
    object QryDetalheDI_ICMSPCREDSN: TFloatField
      FieldName = 'DI_ICMSPCREDSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSPCREDSN'
    end
    object QryDetalheDI_ICMSVCREDICMSSN: TFloatField
      FieldName = 'DI_ICMSVCREDICMSSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSVCREDICMSSN'
    end
    object QryDetalheDETPRODINDTOT: TFloatField
      FieldName = 'DETPRODINDTOT'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODINDTOT'
    end
    object QryDetalheDETPRODNITEMPED: TFloatField
      FieldName = 'DETPRODNITEMPED'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODNITEMPED'
    end
    object QryDetalheDI_ICMSICMSSN102ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN102ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN102ORIG'
    end
    object QryDetalheDI_ICMSICMSSN102CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN102CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN102CSOSN'
    end
    object QryDetalheDI_ICMSICMSSN103ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN103ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN103ORIG'
    end
    object QryDetalheDI_ICMSICMSSN103CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN103CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN103CSOSN'
    end
    object QryDetalheDI_ICMSICMSSN500OCSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN500OCSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN500OCSOSN'
    end
    object QryDetalheDI_ICMSICMSSN500CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN500CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN500CSOSN'
    end
    object QryDetalheDETINFADPROD: TMemoField
      FieldName = 'DETINFADPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETINFADPROD'
      BlobType = ftMemo
      Size = 500
    end
    object QryDetalheDI_ICMSICMSSN201ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN201ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201ORIG'
    end
    object QryDetalheDI_ICMSICMSSN201CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN201CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201CSOSN'
    end
    object QryDetalheDI_ICMSICMSSN201MODBCST: TFloatField
      FieldName = 'DI_ICMSICMSSN201MODBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201MODBCST'
    end
    object QryDetalheDI_ICMSICMSSN201PMVAST: TFloatField
      FieldName = 'DI_ICMSICMSSN201PMVAST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201PMVAST'
    end
    object QryDetalheDI_ICMSICMSSN201VBCST: TFloatField
      FieldName = 'DI_ICMSICMSSN201VBCST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201VBCST'
    end
    object QryDetalheDI_ICMSICMSSN201PICMSST: TFloatField
      FieldName = 'DI_ICMSICMSSN201PICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201PICMSST'
    end
    object QryDetalheDI_ICMSICMSSN201VICMSST: TFloatField
      FieldName = 'DI_ICMSICMSSN201VICMSST'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201VICMSST'
    end
    object QryDetalheDI_ICMSICMSSN201PCREDSN: TFloatField
      FieldName = 'DI_ICMSICMSSN201PCREDSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201PCREDSN'
    end
    object QryDetalheDI_ICMSICMSSN201VCREDICMSSN: TFloatField
      FieldName = 'DI_ICMSICMSSN201VCREDICMSSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN201VCREDICMSSN'
    end
    object QryDetalheDI_COFINSCOFINSALIQPCOFINS: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQPCOFINS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSALIQPCOFINS'
    end
    object QryDetalheDI_COFINSCOFINSALIQVCOFINS: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQVCOFINS'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_COFINSCOFINSALIQVCOFINS'
    end
    object QryDetalheinfcompprod: TStringField
      FieldKind = fkCalculated
      FieldName = 'infcompprod'
      Size = 600
      Calculated = True
    end
    object QryDetalheDI_ICMSICMSSN900ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN900ORIG'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN900ORIG'
    end
    object QryDetalheDI_ICMSICMSSN900CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN900CSOSN'
      Origin = 'SG_ASSOC.NFE_CADDET.DI_ICMSICMSSN900CSOSN'
    end
    object QryDetalheDI_ICMSICMSSN202ORIG: TFloatField
      FieldName = 'DI_ICMSICMSSN202ORIG'
    end
    object QryDetalheDI_ICMSICMSSN202CSOSN: TFloatField
      FieldName = 'DI_ICMSICMSSN202CSOSN'
    end
    object QryDetalhemarcapro: TStringField
      FieldKind = fkCalculated
      FieldName = 'marcapro'
      Calculated = True
    end
  end
  object Src_Detalhe: TDataSource
    DataSet = QryDetalhe
    Left = 257
    Top = 126
  end
  object Qry_Vcto: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM NFE_CADDUP WHERE CHAVE =:pChave')
    Left = 367
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pChave'
        ParamType = ptUnknown
      end>
    object Qry_VctoCHAVE: TFloatField
      FieldName = 'CHAVE'
      Origin = 'SG_ASSOC.NFE_CADDUP.CHAVE'
    end
    object Qry_VctoNDUP: TStringField
      FieldName = 'NDUP'
      Origin = 'SG_ASSOC.NFE_CADDUP.NDUP'
      Size = 60
    end
    object Qry_VctoDVENC: TDateTimeField
      FieldName = 'DVENC'
      Origin = 'SG_ASSOC.NFE_CADDUP.DVENC'
    end
    object Qry_VctoVDUP: TFloatField
      FieldName = 'VDUP'
      Origin = 'SG_ASSOC.NFE_CADDUP.VDUP'
    end
  end
  object Src_Vcto: TDataSource
    DataSet = Qry_Vcto
    Left = 626
    Top = 38
  end
  object Qr_TesteImp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39'Teste de Impressora'#39' as Campo01 from dual')
    Left = 325
    Top = 123
    object Qr_TesteImpCAMPO01: TStringField
      FieldName = 'CAMPO01'
      FixedChar = True
      Size = 19
    end
  end
  object Src_TesteImp: TDataSource
    DataSet = Qr_TesteImp
    Left = 362
    Top = 130
  end
  object Query_Executar: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 418
    Top = 178
  end
  object opd1: TOpenPictureDialog
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    Left = 408
    Top = 17
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select LSLOGO from CADLOGSIS')
    Left = 644
    Top = 114
    object Query1LSLOGO: TBlobField
      FieldName = 'LSLOGO'
      Origin = 'SG_ASSOC.CADLOGSIS.LSLOGO'
      Size = 1
    end
  end
  object Word: TRLRichFilter
    DisplayName = 'Documentos Word'
    Left = 548
    Top = 177
  end
  object PDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'PDF Acrobat Reader'
    Left = 588
    Top = 297
  end
  object Excel: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 608
    Top = 304
  end
  object Qr_XmlMemo: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select XML_ENVIADO AS ARQXML from CADNS_NFE')
    Left = 492
    Top = 18
    object Qr_XmlMemoARQXML: TMemoField
      FieldName = 'ARQXML'
      Origin = 'SG_ASSOC.CADNS_NFE.XML_ENVIADO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object mem_cadcab: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ENTREGACMUN'
        DataType = ftFloat
      end
      item
        Name = 'ENTREGAXMUN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENTREGAUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TOTALICMSTOTVBC'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVICMS'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVBCST'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVST'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVPROD'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVFRETE'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVSEG'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVDESC'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVII'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVIPI'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVPIS'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVOUTRO'
        DataType = ftFloat
      end
      item
        Name = 'TOTALICMSTOTVNF'
        DataType = ftFloat
      end
      item
        Name = 'TOTALISSQNTOTVSERV'
        DataType = ftFloat
      end
      item
        Name = 'TOTALISSQNTOTVBC'
        DataType = ftFloat
      end
      item
        Name = 'TOTALISSQNTOTVISS'
        DataType = ftFloat
      end
      item
        Name = 'AVULSAREPEMI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AVULSADPAG'
        DataType = ftDateTime
      end
      item
        Name = 'DESTCNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DESTCPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DESTXNOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTXLGR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTNRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTXCPL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTXBAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTCMUN'
        DataType = ftFloat
      end
      item
        Name = 'DESTENDERDESTXMUN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DESTENDERDESTCEP'
        DataType = ftFloat
      end
      item
        Name = 'DESTENDERDESTCPAIS'
        DataType = ftFloat
      end
      item
        Name = 'DESTENDERDESTXPAIS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESTENDERDESTFONE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESTIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESTISUF'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'RETIRADACNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'RETIRADAXLGR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RETIRADANRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RETIRADAXCPL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RETIRADAXBAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RETIRADACMUN'
        DataType = ftFloat
      end
      item
        Name = 'RETIRADAXMUN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RETIRADAUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ENTREGACNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ENTREGAXLGR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENTREGANRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENTREGAXCPL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENTREGAXBAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITCEP'
        DataType = ftFloat
      end
      item
        Name = 'EMITENDEREMITCPAIS'
        DataType = ftFloat
      end
      item
        Name = 'EMITENDEREMITXPAIS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITFONE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMITIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMITIEST'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMITIM'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EMITCNAE'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'AVULSACNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'AVULSAXORGAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AVULSAMATR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AVULSAXAGENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AVULSAFONE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVULSAUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AVULSANDAR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AVULSADEMI'
        DataType = ftDateTime
      end
      item
        Name = 'AVULSAVDAR'
        DataType = ftFloat
      end
      item
        Name = 'INFADICOBSFISCOXTEXTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'IDETNFREFTEFNFCUF'
        DataType = ftFloat
      end
      item
        Name = 'IDETNFREFTEFNFAAMM'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'IDETNFREFTEFNFCNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'IDETNFREFTEFNFMOD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IDETNFREFTEFNFSERIE'
        DataType = ftFloat
      end
      item
        Name = 'IDETNFREFTEFNFNNF'
        DataType = ftFloat
      end
      item
        Name = 'IDETTPIMP'
        DataType = ftFloat
      end
      item
        Name = 'IDETPEMIS'
        DataType = ftFloat
      end
      item
        Name = 'IDECDV'
        DataType = ftFloat
      end
      item
        Name = 'IDETPAMB'
        DataType = ftFloat
      end
      item
        Name = 'IDEFINNFE'
        DataType = ftFloat
      end
      item
        Name = 'IDEPROCEMI'
        DataType = ftFloat
      end
      item
        Name = 'IDEVERPROC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMITCNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EMITCPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EMITXNOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITXFANT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITXLGR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITNRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITXCPL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITXBAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITCMU'
        DataType = ftFloat
      end
      item
        Name = 'EMITENDEREMITXMUN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMITENDEREMITUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INFADICOBSFISCOXCAMPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INFADICPROCREFNPROC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INFADICPROCREFINDPROC'
        DataType = ftFloat
      end
      item
        Name = 'COBRFATNFAT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COBRFATVORIG'
        DataType = ftFloat
      end
      item
        Name = 'COBRFATVDESC'
        DataType = ftFloat
      end
      item
        Name = 'COBRFATVLIQ'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE_ACESSO'
        DataType = ftFloat
      end
      item
        Name = 'IDECUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IDECNF'
        DataType = ftFloat
      end
      item
        Name = 'IDENATOP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'IDEINDPAG'
        DataType = ftFloat
      end
      item
        Name = 'IDEMOD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IDESERIE'
        DataType = ftFloat
      end
      item
        Name = 'IDENNF'
        DataType = ftFloat
      end
      item
        Name = 'IDEDEMI'
        DataType = ftDateTime
      end
      item
        Name = 'IDEDSAIENT'
        DataType = ftDateTime
      end
      item
        Name = 'IDETPNF'
        DataType = ftFloat
      end
      item
        Name = 'IDECMUNFG'
        DataType = ftFloat
      end
      item
        Name = 'IDETPIMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IDETNFREFREFNFE'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'TRANSPVEICTRANSPUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRANSPVEICTRANSPRNTC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TRANSPREBOQUEPLACA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'TRANSPREBOQUEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRANSPREBOQUERNTC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TRANSPVOLQVOL'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPVOLESP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TRANSPVOLMARCA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TRANSPVOLNVOL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TRANSPVOLPESOL'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPVOLPESOB'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPVOLLACRESNLACRE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INFADICINFADFISCO'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'INFADICINFCPL'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'INFADICOBSCONT'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'INFADICOBSCONTXCAMPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INFADICOBSCONTXTEXTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ISSQNTOTVSERV'
        DataType = ftFloat
      end
      item
        Name = 'ISSQNTOTVBC'
        DataType = ftFloat
      end
      item
        Name = 'ISSQNTOTVISS'
        DataType = ftFloat
      end
      item
        Name = 'ISSQNTOTVPIS'
        DataType = ftFloat
      end
      item
        Name = 'ISSQNTOTVCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIB'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVRETPIS'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVRETCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVRETCSLL'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVBCIRRF'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVIRRF'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBVBCRETPREV'
        DataType = ftFloat
      end
      item
        Name = 'RELTRIBRETPREV'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPMODFRETE'
        DataType = ftFloat
      end
      item
        Name = 'TT_CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TT_CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TT_XNOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TT_IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TT_XENDER'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TT_XMUN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TT_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TT_ETTRANSPVSERV'
        DataType = ftFloat
      end
      item
        Name = 'TT_ETTRANSPVBCRET'
        DataType = ftFloat
      end
      item
        Name = 'TT_ETTRANSPICMSRET'
        DataType = ftFloat
      end
      item
        Name = 'TT_ETTRANSPVICMSRET'
        DataType = ftFloat
      end
      item
        Name = 'TT_ETTRANSPCFOP'
        DataType = ftFloat
      end
      item
        Name = 'TT_ETTRANSPCMUNFG'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPVEICTRANSPPLACA'
        DataType = ftString
        Size = 8
      end>
    Left = 254
    Top = 59
    object mem_cadcabENTREGACMUN: TFloatField
      FieldName = 'ENTREGACMUN'
    end
    object mem_cadcabENTREGAXMUN: TStringField
      FieldName = 'ENTREGAXMUN'
      Size = 60
    end
    object mem_cadcabENTREGAUF: TStringField
      FieldName = 'ENTREGAUF'
      Size = 2
    end
    object mem_cadcabTOTALICMSTOTVBC: TFloatField
      FieldName = 'TOTALICMSTOTVBC'
    end
    object mem_cadcabTOTALICMSTOTVICMS: TFloatField
      FieldName = 'TOTALICMSTOTVICMS'
    end
    object mem_cadcabTOTALICMSTOTVBCST: TFloatField
      FieldName = 'TOTALICMSTOTVBCST'
    end
    object mem_cadcabTOTALICMSTOTVST: TFloatField
      FieldName = 'TOTALICMSTOTVST'
    end
    object mem_cadcabTOTALICMSTOTVPROD: TFloatField
      FieldName = 'TOTALICMSTOTVPROD'
    end
    object mem_cadcabTOTALICMSTOTVFRETE: TFloatField
      FieldName = 'TOTALICMSTOTVFRETE'
    end
    object mem_cadcabTOTALICMSTOTVSEG: TFloatField
      FieldName = 'TOTALICMSTOTVSEG'
    end
    object mem_cadcabTOTALICMSTOTVDESC: TFloatField
      FieldName = 'TOTALICMSTOTVDESC'
    end
    object mem_cadcabTOTALICMSTOTVII: TFloatField
      FieldName = 'TOTALICMSTOTVII'
    end
    object mem_cadcabTOTALICMSTOTVIPI: TFloatField
      FieldName = 'TOTALICMSTOTVIPI'
    end
    object mem_cadcabTOTALICMSTOTVPIS: TFloatField
      FieldName = 'TOTALICMSTOTVPIS'
    end
    object mem_cadcabTOTALICMSTOTVCOFINS: TFloatField
      FieldName = 'TOTALICMSTOTVCOFINS'
    end
    object mem_cadcabTOTALICMSTOTVOUTRO: TFloatField
      FieldName = 'TOTALICMSTOTVOUTRO'
    end
    object mem_cadcabTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
    end
    object mem_cadcabTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object mem_cadcabTOTALISSQNTOTVBC: TFloatField
      FieldName = 'TOTALISSQNTOTVBC'
    end
    object mem_cadcabTOTALISSQNTOTVISS: TFloatField
      FieldName = 'TOTALISSQNTOTVISS'
    end
    object mem_cadcabAVULSAREPEMI: TStringField
      FieldName = 'AVULSAREPEMI'
      Size = 60
    end
    object mem_cadcabAVULSADPAG: TDateTimeField
      FieldName = 'AVULSADPAG'
    end
    object mem_cadcabDESTCNPJ: TStringField
      FieldName = 'DESTCNPJ'
      Size = 14
    end
    object mem_cadcabDESTCPF: TStringField
      FieldName = 'DESTCPF'
      Size = 14
    end
    object mem_cadcabDESTXNOME: TStringField
      FieldName = 'DESTXNOME'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTXLGR: TStringField
      FieldName = 'DESTENDERDESTXLGR'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTNRO: TStringField
      FieldName = 'DESTENDERDESTNRO'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTXCPL: TStringField
      FieldName = 'DESTENDERDESTXCPL'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTXBAIRRO: TStringField
      FieldName = 'DESTENDERDESTXBAIRRO'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTCMUN: TFloatField
      FieldName = 'DESTENDERDESTCMUN'
    end
    object mem_cadcabDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Size = 2
    end
    object mem_cadcabDESTENDERDESTCEP: TFloatField
      FieldName = 'DESTENDERDESTCEP'
    end
    object mem_cadcabDESTENDERDESTCPAIS: TFloatField
      FieldName = 'DESTENDERDESTCPAIS'
    end
    object mem_cadcabDESTENDERDESTXPAIS: TStringField
      FieldName = 'DESTENDERDESTXPAIS'
      Size = 60
    end
    object mem_cadcabDESTENDERDESTFONE: TStringField
      FieldName = 'DESTENDERDESTFONE'
    end
    object mem_cadcabDESTIE: TStringField
      FieldName = 'DESTIE'
    end
    object mem_cadcabDESTISUF: TStringField
      FieldName = 'DESTISUF'
      Size = 9
    end
    object mem_cadcabRETIRADACNPJ: TStringField
      FieldName = 'RETIRADACNPJ'
      Size = 14
    end
    object mem_cadcabRETIRADAXLGR: TStringField
      FieldName = 'RETIRADAXLGR'
      Size = 60
    end
    object mem_cadcabRETIRADANRO: TStringField
      FieldName = 'RETIRADANRO'
      Size = 60
    end
    object mem_cadcabRETIRADAXCPL: TStringField
      FieldName = 'RETIRADAXCPL'
      Size = 60
    end
    object mem_cadcabRETIRADAXBAIRRO: TStringField
      FieldName = 'RETIRADAXBAIRRO'
      Size = 60
    end
    object mem_cadcabRETIRADACMUN: TFloatField
      FieldName = 'RETIRADACMUN'
    end
    object mem_cadcabRETIRADAXMUN: TStringField
      FieldName = 'RETIRADAXMUN'
      Size = 60
    end
    object mem_cadcabRETIRADAUF: TStringField
      FieldName = 'RETIRADAUF'
      Size = 2
    end
    object mem_cadcabENTREGACNPJ: TStringField
      FieldName = 'ENTREGACNPJ'
      Size = 14
    end
    object mem_cadcabENTREGAXLGR: TStringField
      FieldName = 'ENTREGAXLGR'
      Size = 60
    end
    object mem_cadcabENTREGANRO: TStringField
      FieldName = 'ENTREGANRO'
      Size = 60
    end
    object mem_cadcabENTREGAXCPL: TStringField
      FieldName = 'ENTREGAXCPL'
      Size = 60
    end
    object mem_cadcabENTREGAXBAIRRO: TStringField
      FieldName = 'ENTREGAXBAIRRO'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITCEP: TFloatField
      FieldName = 'EMITENDEREMITCEP'
    end
    object mem_cadcabEMITENDEREMITCPAIS: TFloatField
      FieldName = 'EMITENDEREMITCPAIS'
    end
    object mem_cadcabEMITENDEREMITXPAIS: TStringField
      FieldName = 'EMITENDEREMITXPAIS'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITFONE: TStringField
      FieldName = 'EMITENDEREMITFONE'
    end
    object mem_cadcabEMITIE: TStringField
      FieldName = 'EMITIE'
    end
    object mem_cadcabEMITIEST: TStringField
      FieldName = 'EMITIEST'
    end
    object mem_cadcabEMITIM: TStringField
      FieldName = 'EMITIM'
      Size = 15
    end
    object mem_cadcabEMITCNAE: TStringField
      FieldName = 'EMITCNAE'
      Size = 7
    end
    object mem_cadcabAVULSACNPJ: TStringField
      FieldName = 'AVULSACNPJ'
      Size = 14
    end
    object mem_cadcabAVULSAXORGAO: TStringField
      FieldName = 'AVULSAXORGAO'
      Size = 60
    end
    object mem_cadcabAVULSAMATR: TStringField
      FieldName = 'AVULSAMATR'
      Size = 60
    end
    object mem_cadcabAVULSAXAGENTE: TStringField
      FieldName = 'AVULSAXAGENTE'
      Size = 60
    end
    object mem_cadcabAVULSAFONE: TStringField
      FieldName = 'AVULSAFONE'
    end
    object mem_cadcabAVULSAUF: TStringField
      FieldName = 'AVULSAUF'
      Size = 2
    end
    object mem_cadcabAVULSANDAR: TStringField
      FieldName = 'AVULSANDAR'
      Size = 60
    end
    object mem_cadcabAVULSADEMI: TDateTimeField
      FieldName = 'AVULSADEMI'
    end
    object mem_cadcabAVULSAVDAR: TFloatField
      FieldName = 'AVULSAVDAR'
    end
    object mem_cadcabINFADICOBSFISCOXTEXTO: TStringField
      FieldName = 'INFADICOBSFISCOXTEXTO'
      Size = 60
    end
    object mem_cadcabIDETNFREFTEFNFCUF: TFloatField
      FieldName = 'IDETNFREFTEFNFCUF'
    end
    object mem_cadcabIDETNFREFTEFNFAAMM: TStringField
      FieldName = 'IDETNFREFTEFNFAAMM'
      Size = 4
    end
    object mem_cadcabIDETNFREFTEFNFCNPJ: TStringField
      FieldName = 'IDETNFREFTEFNFCNPJ'
      Size = 14
    end
    object mem_cadcabIDETNFREFTEFNFMOD: TStringField
      FieldName = 'IDETNFREFTEFNFMOD'
      Size = 2
    end
    object mem_cadcabIDETNFREFTEFNFSERIE: TFloatField
      FieldName = 'IDETNFREFTEFNFSERIE'
    end
    object mem_cadcabIDETNFREFTEFNFNNF: TFloatField
      FieldName = 'IDETNFREFTEFNFNNF'
    end
    object mem_cadcabIDETTPIMP: TFloatField
      FieldName = 'IDETTPIMP'
    end
    object mem_cadcabIDETPEMIS: TFloatField
      FieldName = 'IDETPEMIS'
    end
    object mem_cadcabIDECDV: TFloatField
      FieldName = 'IDECDV'
    end
    object mem_cadcabIDETPAMB: TFloatField
      FieldName = 'IDETPAMB'
    end
    object mem_cadcabIDEFINNFE: TFloatField
      FieldName = 'IDEFINNFE'
    end
    object mem_cadcabIDEPROCEMI: TFloatField
      FieldName = 'IDEPROCEMI'
    end
    object mem_cadcabIDEVERPROC: TStringField
      FieldName = 'IDEVERPROC'
    end
    object mem_cadcabEMITCNPJ: TStringField
      FieldName = 'EMITCNPJ'
      Size = 14
    end
    object mem_cadcabEMITCPF: TStringField
      FieldName = 'EMITCPF'
      Size = 14
    end
    object mem_cadcabEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Size = 60
    end
    object mem_cadcabEMITXFANT: TStringField
      FieldName = 'EMITXFANT'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITXLGR: TStringField
      FieldName = 'EMITENDEREMITXLGR'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITNRO: TStringField
      FieldName = 'EMITENDEREMITNRO'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITXCPL: TStringField
      FieldName = 'EMITENDEREMITXCPL'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITXBAIRRO: TStringField
      FieldName = 'EMITENDEREMITXBAIRRO'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITCMU: TFloatField
      FieldName = 'EMITENDEREMITCMU'
    end
    object mem_cadcabEMITENDEREMITXMUN: TStringField
      FieldName = 'EMITENDEREMITXMUN'
      Size = 60
    end
    object mem_cadcabEMITENDEREMITUF: TStringField
      FieldName = 'EMITENDEREMITUF'
      Size = 2
    end
    object mem_cadcabINFADICOBSFISCOXCAMPO: TStringField
      FieldName = 'INFADICOBSFISCOXCAMPO'
    end
    object mem_cadcabINFADICPROCREFNPROC: TStringField
      FieldName = 'INFADICPROCREFNPROC'
      Size = 60
    end
    object mem_cadcabINFADICPROCREFINDPROC: TFloatField
      FieldName = 'INFADICPROCREFINDPROC'
    end
    object mem_cadcabCOBRFATNFAT: TStringField
      FieldName = 'COBRFATNFAT'
      Size = 60
    end
    object mem_cadcabCOBRFATVORIG: TFloatField
      FieldName = 'COBRFATVORIG'
    end
    object mem_cadcabCOBRFATVDESC: TFloatField
      FieldName = 'COBRFATVDESC'
    end
    object mem_cadcabCOBRFATVLIQ: TFloatField
      FieldName = 'COBRFATVLIQ'
    end
    object mem_cadcabCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object mem_cadcabCHAVE_ACESSO: TFloatField
      FieldName = 'CHAVE_ACESSO'
    end
    object mem_cadcabIDECUF: TStringField
      FieldName = 'IDECUF'
      Size = 2
    end
    object mem_cadcabIDECNF: TFloatField
      FieldName = 'IDECNF'
    end
    object mem_cadcabIDENATOP: TStringField
      FieldName = 'IDENATOP'
      Size = 60
    end
    object mem_cadcabIDEINDPAG: TFloatField
      FieldName = 'IDEINDPAG'
    end
    object mem_cadcabIDEMOD: TStringField
      FieldName = 'IDEMOD'
      Size = 2
    end
    object mem_cadcabIDESERIE: TFloatField
      FieldName = 'IDESERIE'
    end
    object mem_cadcabIDENNF: TFloatField
      FieldName = 'IDENNF'
    end
    object mem_cadcabIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
    end
    object mem_cadcabIDEDSAIENT: TDateTimeField
      FieldName = 'IDEDSAIENT'
    end
    object mem_cadcabIDETPNF: TFloatField
      FieldName = 'IDETPNF'
    end
    object mem_cadcabIDECMUNFG: TFloatField
      FieldName = 'IDECMUNFG'
    end
    object mem_cadcabIDETPIMP: TStringField
      FieldName = 'IDETPIMP'
    end
    object mem_cadcabIDETNFREFREFNFE: TStringField
      FieldName = 'IDETNFREFREFNFE'
      Size = 44
    end
    object mem_cadcabTRANSPVEICTRANSPUF: TStringField
      FieldName = 'TRANSPVEICTRANSPUF'
      Size = 2
    end
    object mem_cadcabTRANSPVEICTRANSPRNTC: TStringField
      FieldName = 'TRANSPVEICTRANSPRNTC'
    end
    object mem_cadcabTRANSPREBOQUEPLACA: TStringField
      FieldName = 'TRANSPREBOQUEPLACA'
      Size = 8
    end
    object mem_cadcabTRANSPREBOQUEUF: TStringField
      FieldName = 'TRANSPREBOQUEUF'
      Size = 2
    end
    object mem_cadcabTRANSPREBOQUERNTC: TStringField
      FieldName = 'TRANSPREBOQUERNTC'
    end
    object mem_cadcabTRANSPVOLQVOL: TFloatField
      FieldName = 'TRANSPVOLQVOL'
    end
    object mem_cadcabTRANSPVOLESP: TStringField
      FieldName = 'TRANSPVOLESP'
      Size = 60
    end
    object mem_cadcabTRANSPVOLMARCA: TStringField
      FieldName = 'TRANSPVOLMARCA'
      Size = 60
    end
    object mem_cadcabTRANSPVOLNVOL: TStringField
      FieldName = 'TRANSPVOLNVOL'
      Size = 60
    end
    object mem_cadcabTRANSPVOLPESOL: TFloatField
      FieldName = 'TRANSPVOLPESOL'
    end
    object mem_cadcabTRANSPVOLPESOB: TFloatField
      FieldName = 'TRANSPVOLPESOB'
    end
    object mem_cadcabTRANSPVOLLACRESNLACRE: TStringField
      FieldName = 'TRANSPVOLLACRESNLACRE'
      Size = 60
    end
    object mem_cadcabINFADICINFADFISCO: TStringField
      FieldName = 'INFADICINFADFISCO'
      Size = 256
    end
    object mem_cadcabINFADICINFCPL: TStringField
      FieldName = 'INFADICINFCPL'
      Size = 500
    end
    object mem_cadcabINFADICOBSCONT: TStringField
      FieldName = 'INFADICOBSCONT'
      Size = 500
    end
    object mem_cadcabINFADICOBSCONTXCAMPO: TStringField
      FieldName = 'INFADICOBSCONTXCAMPO'
    end
    object mem_cadcabINFADICOBSCONTXTEXTO: TStringField
      FieldName = 'INFADICOBSCONTXTEXTO'
      Size = 60
    end
    object mem_cadcabISSQNTOTVSERV: TFloatField
      FieldName = 'ISSQNTOTVSERV'
    end
    object mem_cadcabISSQNTOTVBC: TFloatField
      FieldName = 'ISSQNTOTVBC'
    end
    object mem_cadcabISSQNTOTVISS: TFloatField
      FieldName = 'ISSQNTOTVISS'
    end
    object mem_cadcabISSQNTOTVPIS: TFloatField
      FieldName = 'ISSQNTOTVPIS'
    end
    object mem_cadcabISSQNTOTVCOFINS: TFloatField
      FieldName = 'ISSQNTOTVCOFINS'
    end
    object mem_cadcabRELTRIB: TFloatField
      FieldName = 'RELTRIB'
    end
    object mem_cadcabRELTRIBVRETPIS: TFloatField
      FieldName = 'RELTRIBVRETPIS'
    end
    object mem_cadcabRELTRIBVRETCOFINS: TFloatField
      FieldName = 'RELTRIBVRETCOFINS'
    end
    object mem_cadcabRELTRIBVRETCSLL: TFloatField
      FieldName = 'RELTRIBVRETCSLL'
    end
    object mem_cadcabRELTRIBVBCIRRF: TFloatField
      FieldName = 'RELTRIBVBCIRRF'
    end
    object mem_cadcabRELTRIBVIRRF: TFloatField
      FieldName = 'RELTRIBVIRRF'
    end
    object mem_cadcabRELTRIBVBCRETPREV: TFloatField
      FieldName = 'RELTRIBVBCRETPREV'
    end
    object mem_cadcabRELTRIBRETPREV: TFloatField
      FieldName = 'RELTRIBRETPREV'
    end
    object mem_cadcabTRANSPMODFRETE: TFloatField
      FieldName = 'TRANSPMODFRETE'
    end
    object mem_cadcabTT_CNPJ: TStringField
      FieldName = 'TT_CNPJ'
    end
    object mem_cadcabTT_CPF: TStringField
      FieldName = 'TT_CPF'
    end
    object mem_cadcabTT_XNOME: TStringField
      FieldName = 'TT_XNOME'
      Size = 60
    end
    object mem_cadcabTT_IE: TStringField
      FieldName = 'TT_IE'
    end
    object mem_cadcabTT_XENDER: TStringField
      FieldName = 'TT_XENDER'
      Size = 60
    end
    object mem_cadcabTT_XMUN: TStringField
      FieldName = 'TT_XMUN'
      Size = 60
    end
    object mem_cadcabTT_UF: TStringField
      FieldName = 'TT_UF'
      Size = 2
    end
    object mem_cadcabTT_ETTRANSPVSERV: TFloatField
      FieldName = 'TT_ETTRANSPVSERV'
    end
    object mem_cadcabTT_ETTRANSPVBCRET: TFloatField
      FieldName = 'TT_ETTRANSPVBCRET'
    end
    object mem_cadcabTT_ETTRANSPICMSRET: TFloatField
      FieldName = 'TT_ETTRANSPICMSRET'
    end
    object mem_cadcabTT_ETTRANSPVICMSRET: TFloatField
      FieldName = 'TT_ETTRANSPVICMSRET'
    end
    object mem_cadcabTT_ETTRANSPCFOP: TFloatField
      FieldName = 'TT_ETTRANSPCFOP'
    end
    object mem_cadcabTT_ETTRANSPCMUNFG: TFloatField
      FieldName = 'TT_ETTRANSPCMUNFG'
    end
    object mem_cadcabTRANSPVEICTRANSPPLACA: TStringField
      FieldName = 'TRANSPVEICTRANSPPLACA'
      Size = 8
    end
  end
  object MemoryTable1: TMemoryTable
    Left = 696
    Top = 32
  end
  object mem_caddet: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DI_ISSQNVBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ISSQNVISSQN'
        DataType = ftFloat
      end
      item
        Name = 'DI_ISSQNCLISTSERV'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVUNTRIB'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVFRETE'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVSEG'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVDESC'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODDINDI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DETPRODDIDDI'
        DataType = ftDateTime
      end
      item
        Name = 'DETPRODDIXLOCDESEMB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DETPRODDIUFDESEMB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DETPRODDIDDESEMB'
        DataType = ftDateTime
      end
      item
        Name = 'DETPRODDICEXPORTADOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DETPRODDIADINADICAO'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODDIADICFABRICANTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DETPRODDIADICVDESCDI'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODMEDNLOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DI_ISSQNCMUNFG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ISSQNVALIQ'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS60CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS60VBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS60VICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODCPROD'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DETPRODCEAN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DETPRODXPROD'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'DETPRODNCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETPRODEXTIPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DETPRODGENERO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DETPRODCFOP'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODUCOM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DETPRODQCOM'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVUNCOM'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODVPROD'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODCEANTRIB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DETPRODUTRIB'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DETPRODQTRIB'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10VICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20PREDBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20PREDBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20PICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20VICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS20VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS40ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS40CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51PREDBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS51VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS60ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISALIQVBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISALIQPPIS'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISALIQVPIS'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODMEDQLOTE'
        DataType = ftFloat
      end
      item
        Name = 'DETPRODMEDDFAB'
        DataType = ftDateTime
      end
      item
        Name = 'DETPRODMEDDVAL'
        DataType = ftDateTime
      end
      item
        Name = 'DETPRODMEDVPMC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS00VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10MODBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10PMVAST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10PREDBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10VBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS10PICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90PREDBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90MODBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90PMVAST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90REDBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90VBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90PICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS90VICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPICLENQ'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPICNPJPROD'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPICSELO'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIQSELO'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPICENQ'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPITRIBCST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DI_IPIIPITRIBVBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPITRIBQUNID'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPITRIBVUNID'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPITRIBPIPI'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPITRIBVIPI'
        DataType = ftFloat
      end
      item
        Name = 'DI_IPIIPINTCST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DI_PISPISALIQCST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DI_COFINSCOFINSALIQPCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'DI_COFINSCOFINSALIQVCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70ORIG'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70CST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70MODBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70PREDBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70VBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70PICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70VICMS'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70MODBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70PMVAST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70REDBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70VBCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70PICMSST'
        DataType = ftFloat
      end
      item
        Name = 'DI_ICMSICMS70VICMSST'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDECST'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEQBCPROD'
        DataType = ftFloat
      end
      item
        Name = 'di_COFINSCOFINSOutrvCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'di_COFINSCOFINSOutrpCOFINS'
        DataType = ftFloat
      end
      item
        Name = 'di_COFINSCOFINSOutrvBC'
        DataType = ftFloat
      end
      item
        Name = 'di_COFINSCOFINSOutrCST'
        DataType = ftFloat
      end
      item
        Name = 'di_PISPISOutrvPIS'
        DataType = ftFloat
      end
      item
        Name = 'di_PISPISOutrpPIS'
        DataType = ftFloat
      end
      item
        Name = 'di_PISPISOutrvBC'
        DataType = ftFloat
      end
      item
        Name = 'di_PISPISOutrCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEVALIQPROD'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEVPIS'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISNTCS'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISOUTRCST'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISOUTRVBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISOUTRVPIS'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISOUTRQBCPROD'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISPISQTDEPISOUTRVALIQPROD'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISSTVBC'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISSTPPIS'
        DataType = ftFloat
      end
      item
        Name = 'DI_PISSTQBCPROD'
        DataType = ftFloat
      end>
    Left = 200
    Top = 80
    object mem_caddetDI_ISSQNVBC: TFloatField
      FieldName = 'DI_ISSQNVBC'
    end
    object mem_caddetDI_ISSQNVISSQN: TFloatField
      FieldName = 'DI_ISSQNVISSQN'
    end
    object mem_caddetDI_ISSQNCLISTSERV: TFloatField
      FieldName = 'DI_ISSQNCLISTSERV'
    end
    object mem_caddetDETPRODVUNTRIB2: TFloatField
      FieldName = 'DETPRODVUNTRIB'
    end
    object mem_caddetDETPRODVFRETE2: TFloatField
      FieldName = 'DETPRODVFRETE'
    end
    object mem_caddetDETPRODVSEG2: TFloatField
      FieldName = 'DETPRODVSEG'
    end
    object mem_caddetDETPRODVDESC2: TFloatField
      FieldName = 'DETPRODVDESC'
    end
    object mem_caddetDETPRODDINDI2: TStringField
      FieldName = 'DETPRODDINDI'
      Size = 10
    end
    object mem_caddetDETPRODDIDDI2: TDateTimeField
      FieldName = 'DETPRODDIDDI'
    end
    object mem_caddetDETPRODDIXLOCDESEMB2: TStringField
      FieldName = 'DETPRODDIXLOCDESEMB'
      Size = 60
    end
    object mem_caddetDETPRODDIUFDESEMB2: TStringField
      FieldName = 'DETPRODDIUFDESEMB'
      Size = 2
    end
    object mem_caddetDETPRODDIDDESEMB2: TDateTimeField
      FieldName = 'DETPRODDIDDESEMB'
    end
    object mem_caddetDETPRODDICEXPORTADOR2: TStringField
      FieldName = 'DETPRODDICEXPORTADOR'
      Size = 60
    end
    object mem_caddetDETPRODDIADINADICAO2: TFloatField
      FieldName = 'DETPRODDIADINADICAO'
    end
    object mem_caddetDETPRODDIADICFABRICANTE2: TStringField
      FieldName = 'DETPRODDIADICFABRICANTE'
      Size = 60
    end
    object mem_caddetDETPRODDIADICVDESCDI2: TFloatField
      FieldName = 'DETPRODDIADICVDESCDI'
    end
    object mem_caddetDETPRODMEDNLOTE2: TStringField
      FieldName = 'DETPRODMEDNLOTE'
    end
    object mem_caddetDI_ISSQNCMUNFG2: TFloatField
      FieldName = 'DI_ISSQNCMUNFG'
    end
    object mem_caddetDI_ISSQNVALIQ2: TFloatField
      FieldName = 'DI_ISSQNVALIQ'
    end
    object mem_caddetDI_ICMSICMS60CST2: TFloatField
      FieldName = 'DI_ICMSICMS60CST'
    end
    object mem_caddetDI_ICMSICMS60VBCST2: TFloatField
      FieldName = 'DI_ICMSICMS60VBCST'
    end
    object mem_caddetDI_ICMSICMS60VICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS60VICMSST'
    end
    object mem_caddetDETPRODCPROD2: TStringField
      FieldName = 'DETPRODCPROD'
      Size = 60
    end
    object mem_caddetDETPRODCEAN2: TStringField
      FieldName = 'DETPRODCEAN'
    end
    object mem_caddetDETPRODXPROD2: TStringField
      FieldName = 'DETPRODXPROD'
      Size = 120
    end
    object mem_caddetDETPRODNCM2: TStringField
      FieldName = 'DETPRODNCM'
      Size = 8
    end
    object mem_caddetDETPRODEXTIPI2: TStringField
      FieldName = 'DETPRODEXTIPI'
      Size = 3
    end
    object mem_caddetDETPRODGENERO2: TStringField
      FieldName = 'DETPRODGENERO'
      Size = 2
    end
    object mem_caddetDETPRODCFOP2: TFloatField
      FieldName = 'DETPRODCFOP'
    end
    object mem_caddetDETPRODUCOM2: TStringField
      FieldName = 'DETPRODUCOM'
      Size = 6
    end
    object mem_caddetDETPRODQCOM2: TFloatField
      FieldName = 'DETPRODQCOM'
    end
    object mem_caddetDETPRODVUNCOM2: TFloatField
      FieldName = 'DETPRODVUNCOM'
    end
    object mem_caddetDETPRODVPROD2: TFloatField
      FieldName = 'DETPRODVPROD'
    end
    object mem_caddetDETPRODCEANTRIB2: TStringField
      FieldName = 'DETPRODCEANTRIB'
    end
    object mem_caddetDETPRODUTRIB2: TStringField
      FieldName = 'DETPRODUTRIB'
      Size = 6
    end
    object mem_caddetDETPRODQTRIB2: TFloatField
      FieldName = 'DETPRODQTRIB'
    end
    object mem_caddetDI_ICMSICMS10VICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS10VICMSST'
    end
    object mem_caddetDI_ICMSICMS20ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS20ORIG'
    end
    object mem_caddetDI_ICMSICMS20CST2: TFloatField
      FieldName = 'DI_ICMSICMS20CST'
    end
    object mem_caddetDI_ICMSICMS20MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS20MODBC'
    end
    object mem_caddetDI_ICMSICMS20PREDBCST2: TFloatField
      FieldName = 'DI_ICMSICMS20PREDBCST'
    end
    object mem_caddetDI_ICMSICMS20PREDBC2: TFloatField
      FieldName = 'DI_ICMSICMS20PREDBC'
    end
    object mem_caddetDI_ICMSICMS20VBC2: TFloatField
      FieldName = 'DI_ICMSICMS20VBC'
    end
    object mem_caddetDI_ICMSICMS20PICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS20PICMSST'
    end
    object mem_caddetDI_ICMSICMS20PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS20PICMS'
    end
    object mem_caddetDI_ICMSICMS20VICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS20VICMSST'
    end
    object mem_caddetDI_ICMSICMS20VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS20VICMS'
    end
    object mem_caddetDI_ICMSICMS40ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS40ORIG'
    end
    object mem_caddetDI_ICMSICMS40CST2: TFloatField
      FieldName = 'DI_ICMSICMS40CST'
    end
    object mem_caddetDI_ICMSICMS51ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS51ORIG'
    end
    object mem_caddetDI_ICMSICMS51CST2: TFloatField
      FieldName = 'DI_ICMSICMS51CST'
    end
    object mem_caddetDI_ICMSICMS51MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS51MODBC'
    end
    object mem_caddetDI_ICMSICMS51PREDBC2: TFloatField
      FieldName = 'DI_ICMSICMS51PREDBC'
    end
    object mem_caddetDI_ICMSICMS51VBC2: TFloatField
      FieldName = 'DI_ICMSICMS51VBC'
    end
    object mem_caddetDI_ICMSICMS51PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS51PICMS'
    end
    object mem_caddetDI_ICMSICMS51VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS51VICMS'
    end
    object mem_caddetDI_ICMSICMS60ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS60ORIG'
    end
    object mem_caddetDI_PISPISALIQVBC2: TFloatField
      FieldName = 'DI_PISPISALIQVBC'
    end
    object mem_caddetDI_PISPISALIQPPIS2: TFloatField
      FieldName = 'DI_PISPISALIQPPIS'
    end
    object mem_caddetDI_PISPISALIQVPIS2: TFloatField
      FieldName = 'DI_PISPISALIQVPIS'
    end
    object mem_caddetDETPRODMEDQLOTE2: TFloatField
      FieldName = 'DETPRODMEDQLOTE'
    end
    object mem_caddetDETPRODMEDDFAB2: TDateTimeField
      FieldName = 'DETPRODMEDDFAB'
    end
    object mem_caddetDETPRODMEDDVAL2: TDateTimeField
      FieldName = 'DETPRODMEDDVAL'
    end
    object mem_caddetDETPRODMEDVPMC2: TFloatField
      FieldName = 'DETPRODMEDVPMC'
    end
    object mem_caddetDI_ICMSICMS00ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS00ORIG'
    end
    object mem_caddetDI_ICMSICMS00CST2: TFloatField
      FieldName = 'DI_ICMSICMS00CST'
    end
    object mem_caddetDI_ICMSICMS00MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS00MODBC'
    end
    object mem_caddetDI_ICMSICMS00VBC2: TFloatField
      FieldName = 'DI_ICMSICMS00VBC'
    end
    object mem_caddetDI_ICMSICMS00PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS00PICMS'
    end
    object mem_caddetDI_ICMSICMS00VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS00VICMS'
    end
    object mem_caddetDI_ICMSICMS10ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS10ORIG'
    end
    object mem_caddetDI_ICMSICMS10CST2: TFloatField
      FieldName = 'DI_ICMSICMS10CST'
    end
    object mem_caddetDI_ICMSICMS10MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS10MODBC'
    end
    object mem_caddetDI_ICMSICMS10VBC2: TFloatField
      FieldName = 'DI_ICMSICMS10VBC'
    end
    object mem_caddetDI_ICMSICMS10PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS10PICMS'
    end
    object mem_caddetDI_ICMSICMS10VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS10VICMS'
    end
    object mem_caddetDI_ICMSICMS10MODBCST2: TFloatField
      FieldName = 'DI_ICMSICMS10MODBCST'
    end
    object mem_caddetDI_ICMSICMS10PMVAST2: TFloatField
      FieldName = 'DI_ICMSICMS10PMVAST'
    end
    object mem_caddetDI_ICMSICMS10PREDBCST2: TFloatField
      FieldName = 'DI_ICMSICMS10PREDBCST'
    end
    object mem_caddetDI_ICMSICMS10VBCST2: TFloatField
      FieldName = 'DI_ICMSICMS10VBCST'
    end
    object mem_caddetDI_ICMSICMS10PICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS10PICMSST'
    end
    object mem_caddetDI_ICMSICMS90ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS90ORIG'
    end
    object mem_caddetDI_ICMSICMS90CST2: TFloatField
      FieldName = 'DI_ICMSICMS90CST'
    end
    object mem_caddetDI_ICMSICMS90MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS90MODBC'
    end
    object mem_caddetDI_ICMSICMS90PREDBC2: TFloatField
      FieldName = 'DI_ICMSICMS90PREDBC'
    end
    object mem_caddetDI_ICMSICMS90VBC2: TFloatField
      FieldName = 'DI_ICMSICMS90VBC'
    end
    object mem_caddetDI_ICMSICMS90PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS90PICMS'
    end
    object mem_caddetDI_ICMSICMS90VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS90VICMS'
    end
    object mem_caddetDI_ICMSICMS90MODBCST2: TFloatField
      FieldName = 'DI_ICMSICMS90MODBCST'
    end
    object mem_caddetDI_ICMSICMS90PMVAST2: TFloatField
      FieldName = 'DI_ICMSICMS90PMVAST'
    end
    object mem_caddetDI_ICMSICMS90REDBCST2: TFloatField
      FieldName = 'DI_ICMSICMS90REDBCST'
    end
    object mem_caddetDI_ICMSICMS90VBCST2: TFloatField
      FieldName = 'DI_ICMSICMS90VBCST'
    end
    object mem_caddetDI_ICMSICMS90PICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS90PICMSST'
    end
    object mem_caddetDI_ICMSICMS90VICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS90VICMSST'
    end
    object mem_caddetDI_IPICLENQ2: TFloatField
      FieldName = 'DI_IPICLENQ'
    end
    object mem_caddetDI_IPICNPJPROD2: TFloatField
      FieldName = 'DI_IPICNPJPROD'
    end
    object mem_caddetDI_IPICSELO2: TFloatField
      FieldName = 'DI_IPICSELO'
    end
    object mem_caddetDI_IPIQSELO2: TFloatField
      FieldName = 'DI_IPIQSELO'
    end
    object mem_caddetDI_IPICENQ2: TFloatField
      FieldName = 'DI_IPICENQ'
    end
    object mem_caddetDI_IPIIPITRIBCST2: TStringField
      FieldName = 'DI_IPIIPITRIBCST'
      Size = 2
    end
    object mem_caddetDI_IPIIPITRIBVBC2: TFloatField
      FieldName = 'DI_IPIIPITRIBVBC'
    end
    object mem_caddetDI_IPIIPITRIBQUNID2: TFloatField
      FieldName = 'DI_IPIIPITRIBQUNID'
    end
    object mem_caddetDI_IPIIPITRIBVUNID2: TFloatField
      FieldName = 'DI_IPIIPITRIBVUNID'
    end
    object mem_caddetDI_IPIIPITRIBPIPI2: TFloatField
      FieldName = 'DI_IPIIPITRIBPIPI'
    end
    object mem_caddetDI_IPIIPITRIBVIPI2: TFloatField
      FieldName = 'DI_IPIIPITRIBVIPI'
    end
    object mem_caddetDI_IPIIPINTCST2: TStringField
      FieldName = 'DI_IPIIPINTCST'
      Size = 2
    end
    object mem_caddetDI_PISPISALIQCST2: TStringField
      FieldName = 'DI_PISPISALIQCST'
      Size = 2
    end
    object mem_caddetDI_COFINSCOFINSALIQPCOFINS2: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQPCOFINS'
    end
    object mem_caddetDI_COFINSCOFINSALIQVCOFINS2: TFloatField
      FieldName = 'DI_COFINSCOFINSALIQVCOFINS'
    end
    object mem_caddetDI_ICMSICMS70ORIG2: TFloatField
      FieldName = 'DI_ICMSICMS70ORIG'
    end
    object mem_caddetDI_ICMSICMS70CST2: TFloatField
      FieldName = 'DI_ICMSICMS70CST'
    end
    object mem_caddetDI_ICMSICMS70MODBC2: TFloatField
      FieldName = 'DI_ICMSICMS70MODBC'
    end
    object mem_caddetDI_ICMSICMS70PREDBC2: TFloatField
      FieldName = 'DI_ICMSICMS70PREDBC'
    end
    object mem_caddetDI_ICMSICMS70VBC2: TFloatField
      FieldName = 'DI_ICMSICMS70VBC'
    end
    object mem_caddetDI_ICMSICMS70PICMS2: TFloatField
      FieldName = 'DI_ICMSICMS70PICMS'
    end
    object mem_caddetDI_ICMSICMS70VICMS2: TFloatField
      FieldName = 'DI_ICMSICMS70VICMS'
    end
    object mem_caddetDI_ICMSICMS70MODBCST2: TFloatField
      FieldName = 'DI_ICMSICMS70MODBCST'
    end
    object mem_caddetDI_ICMSICMS70PMVAST2: TFloatField
      FieldName = 'DI_ICMSICMS70PMVAST'
    end
    object mem_caddetDI_ICMSICMS70REDBCST2: TFloatField
      FieldName = 'DI_ICMSICMS70REDBCST'
    end
    object mem_caddetDI_ICMSICMS70VBCST2: TFloatField
      FieldName = 'DI_ICMSICMS70VBCST'
    end
    object mem_caddetDI_ICMSICMS70PICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS70PICMSST'
    end
    object mem_caddetDI_ICMSICMS70VICMSST2: TFloatField
      FieldName = 'DI_ICMSICMS70VICMSST'
    end
    object mem_caddetCHAVE2: TFloatField
      FieldName = 'CHAVE'
    end
    object mem_caddetDI_PISPISQTDECST2: TFloatField
      FieldName = 'DI_PISPISQTDECST'
    end
    object mem_caddetDI_PISPISQTDEQBCPROD2: TFloatField
      FieldName = 'DI_PISPISQTDEQBCPROD'
    end
    object mem_caddetdi_COFINSCOFINSOutrvCOFINS2: TFloatField
      FieldName = 'di_COFINSCOFINSOutrvCOFINS'
    end
    object mem_caddetdi_COFINSCOFINSOutrpCOFINS2: TFloatField
      FieldName = 'di_COFINSCOFINSOutrpCOFINS'
    end
    object mem_caddetdi_COFINSCOFINSOutrvBC2: TFloatField
      FieldName = 'di_COFINSCOFINSOutrvBC'
    end
    object mem_caddetdi_COFINSCOFINSOutrCST2: TFloatField
      FieldName = 'di_COFINSCOFINSOutrCST'
    end
    object mem_caddetdi_PISPISOutrvPIS2: TFloatField
      FieldName = 'di_PISPISOutrvPIS'
    end
    object mem_caddetdi_PISPISOutrpPIS2: TFloatField
      FieldName = 'di_PISPISOutrpPIS'
    end
    object mem_caddetdi_PISPISOutrvBC2: TFloatField
      FieldName = 'di_PISPISOutrvBC'
    end
    object mem_caddetdi_PISPISOutrCST2: TFloatField
      FieldName = 'di_PISPISOutrCST'
    end
    object mem_caddetDI_PISPISQTDEVALIQPROD2: TFloatField
      FieldName = 'DI_PISPISQTDEVALIQPROD'
    end
    object mem_caddetDI_PISPISQTDEVPIS2: TFloatField
      FieldName = 'DI_PISPISQTDEVPIS'
    end
    object mem_caddetDI_PISPISQTDEPISNTCS2: TFloatField
      FieldName = 'DI_PISPISQTDEPISNTCS'
    end
    object mem_caddetDI_PISPISQTDEPISOUTRCST2: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRCST'
    end
    object mem_caddetDI_PISPISQTDEPISOUTRVBC2: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVBC'
    end
    object mem_caddetDI_PISPISQTDEPISOUTRVPIS2: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVPIS'
    end
    object mem_caddetDI_PISPISQTDEPISOUTRQBCPROD2: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRQBCPROD'
    end
    object mem_caddetDI_PISPISQTDEPISOUTRVALIQPROD2: TFloatField
      FieldName = 'DI_PISPISQTDEPISOUTRVALIQPROD'
    end
    object mem_caddetDI_PISSTVBC2: TFloatField
      FieldName = 'DI_PISSTVBC'
    end
    object mem_caddetDI_PISSTPPIS2: TFloatField
      FieldName = 'DI_PISSTPPIS'
    end
    object mem_caddetDI_PISSTQBCPROD2: TFloatField
      FieldName = 'DI_PISSTQBCPROD'
    end
  end
  object mem_caddup: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'NDUP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DVENC'
        DataType = ftDateTime
      end
      item
        Name = 'VDUP'
        DataType = ftFloat
      end>
    Left = 318
    Top = 3
  end
end
