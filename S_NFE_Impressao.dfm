object Frm_NFE_Impressao: TFrm_NFE_Impressao
  Left = 98
  Top = 96
  Width = 1095
  Height = 720
  Caption = 'Emitir Nota Fiscal Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1087
    Height = 689
    ActivePage = tsNotaServico
    Align = alClient
    TabOrder = 0
    object ts_Retrato: TTabSheet
      Caption = 'Retrato'
      object rl_Retrato_Simples: TRLReport
        Left = 131
        Top = -290
        Width = 794
        Height = 1123
        Background.Align = faBottom
        Background.Arrange = baDistributed
        Background.Height = 387
        Background.Stretch = True
        Background.Width = 875
        DataSource = src_cabecalho
        Degrade.OppositeColor = clRed
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
          Height = 59
          BandType = btHeader
          AfterPrint = RLBand_canhoto_simplesAfterPrint
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText50: TRLDBText
            Left = 536
            Top = 21
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'emissao_texto'
            DataSource = src_cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 536
            Top = 30
            Width = 80
            Height = 8
            AutoSize = False
            DataField = 'valor_texto'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBMemo4: TRLDBMemo
            Left = 96
            Top = 28
            Width = 136
            Height = 20
            Alignment = taCenter
            AutoSize = False
            DataField = 'nomcli_codigo'
            DataSource = src_cabecalho
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDraw16: TRLDraw
            Left = 234
            Top = 20
            Width = 1
            Height = 28
          end
          object RLDraw17: TRLDraw
            Left = 533
            Top = 20
            Width = 1
            Height = 28
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 644
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
          Top = 645
          Width = 718
          Height = 484
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = src_detalhe
          object RLBand4: TRLBand
            Left = 0
            Top = 43
            Width = 718
            Height = 11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand4BeforePrint
            object RLDBText85: TRLDBText
              Left = 0
              Top = 1
              Width = 44
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = src_detalhe
              Holder = rlcabretrato_codpro
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText104: TRLDBText
              Left = 261
              Top = 1
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = src_detalhe
              Holder = rlcabretrato_ncm
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText105: TRLDBText
              Left = 303
              Top = 1
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
              DataSource = src_detalhe
              Holder = rlcabretrato_cst
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText106: TRLDBText
              Left = 326
              Top = 1
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
              DataSource = src_detalhe
              Holder = rlcabretrato_cfop
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText107: TRLDBText
              Left = 354
              Top = 1
              Width = 20
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = src_detalhe
              Holder = rlcabretrato_und
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText120: TRLDBText
              Left = 653
              Top = 1
              Width = 26
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = src_detalhe
              Holder = rlcabretrato_aliq_ipi
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText141: TRLDBText
              Left = 590
              Top = 1
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
              DataSource = src_detalhe
              Holder = rlcabretrato_aliq_icms
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_qtd_simples: TRLLabel
              Left = 373
              Top = 1
              Width = 46
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = rlcabretrato_qtde
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_unitario_simples: TRLLabel
              Left = 420
              Top = 1
              Width = 42
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = rlcabretrato_vlunit
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_total_simples: TRLLabel
              Left = 499
              Top = 1
              Width = 50
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Holder = rlcabretrato_vltotal
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object txtret2_issqn: TRLDBText
              Left = 678
              Top = 1
              Width = 36
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valor_ipi'
              DataSource = src_detalhe
              Holder = rlcabretrato_vl_ipi
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object rldetretrato_nome: TRLDBMemo
              Left = 43
              Top = 1
              Width = 164
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomepro'
              DataSource = src_detalhe
              Holder = rlcabretrato_nome
              Layout = tlJustify
            end
            object rldetretrato_marca: TRLLabel
              Left = 207
              Top = 1
              Width = 54
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'marca'
              Holder = rlcabretrato_marca
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText90: TRLDBText
              Left = 549
              Top = 1
              Width = 42
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = src_detalhe
              Holder = rlcabretrato_bcicms
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText91: TRLDBText
              Left = 613
              Top = 1
              Width = 40
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'valor_icms'
              DataSource = src_detalhe
              Holder = rlcabretrato_vl_icms
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_retrato_vdesc: TRLDBText
              Left = 463
              Top = 1
              Width = 40
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'DETPRODVDESC'
              DataSource = src_detalhe
              Holder = rlcab_retrato_vdesc
              Layout = tlCenter
              SecondHolder = rldetretrato_nome
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_rodape_simples: TRLBand
            Left = 0
            Top = 270
            Width = 718
            Height = 170
            BandType = btFooter
            AfterPrint = RLBand_rodape_simplesAfterPrint
            object RLDraw126: TRLDraw
              Left = 1
              Top = 61
              Width = 330
              Height = 106
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
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
              DataSource = src_cabecalho
            end
            object RLDBText143: TRLDBText
              Left = 126
              Top = 28
              Width = 35
              Height = 14
              Alignment = taRightJustify
              DataField = 'EMITIM'
              DataSource = src_cabecalho
            end
            object RLDBText144: TRLDBText
              Left = 202
              Top = 27
              Width = 124
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVSERV'
              DataSource = src_cabecalho
            end
            object RLDBText145: TRLDBText
              Left = 599
              Top = 27
              Width = 112
              Height = 14
              Alignment = taRightJustify
              DataField = 'TOTALISSQNTOTVISS'
              DataSource = src_cabecalho
            end
            object RLDBMemo8: TRLDBMemo
              Left = 332
              Top = 61
              Width = 384
              Height = 106
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              DataField = 'INFADICINFADFISCO'
              DataSource = src_cabecalho
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
            object RLretSimples_INFADICINFCPL: TRLDBMemo
              Left = 11
              Top = 70
              Width = 308
              Height = 89
              Alignment = taJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = src_cabecalho
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
            BeforePrint = RLBand13BeforePrint
            object rlcabretrato_codpro: TRLMemo
              Left = 0
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
              Lines.Strings = (
                'C'#243'digo'
                'Produto')
            end
            object rlcabretrato_nome: TRLMemo
              Left = 43
              Top = 15
              Width = 164
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
            object rlcabretrato_ncm: TRLMemo
              Left = 261
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
            object rlcabretrato_cst: TRLMemo
              Left = 303
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
            object rlcabretrato_cfop: TRLMemo
              Left = 326
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
            object rlcabretrato_und: TRLMemo
              Left = 354
              Top = 15
              Width = 20
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
              Left = -1
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
            object rlcabretrato_vltotal: TRLMemo
              Left = 499
              Top = 16
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
                'V. TOTAL')
            end
            object rlcabretrato_vlunit: TRLMemo
              Left = 420
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
                'Valor Unit'#225'rio')
            end
            object rlcabretrato_qtde: TRLMemo
              Left = 373
              Top = 15
              Width = 46
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
                'Quantidade')
            end
            object rlcabretrato_aliq_icms: TRLMemo
              Left = 590
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
            object rlcabretrato_aliq_ipi: TRLMemo
              Left = 653
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
                'Aliq'
                'IPI')
            end
            object rlcabretrato_vl_ipi: TRLMemo
              Left = 678
              Top = 15
              Width = 36
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'VL IPI')
            end
            object rlcabretrato_marca: TRLMemo
              Left = 207
              Top = 15
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'MARCA')
            end
            object rlcabretrato_bcicms: TRLMemo
              Left = 549
              Top = 16
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
                'BC '
                'ICMS')
            end
            object rlcabretrato_vl_icms: TRLMemo
              Left = 613
              Top = 16
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
                'VL'
                'ICMS')
            end
            object rlcab_retrato_vdesc: TRLMemo
              Left = 463
              Top = 16
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
                'Valor Desconto')
            end
          end
          object rlRetSim_Complemento: TRLBand
            Left = 0
            Top = 54
            Width = 718
            Height = 20
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
              Left = 2
              Top = 4
              Width = 715
              Height = 10
              DataField = 'DETINFADPROD'
              DataSource = src_detalhe
              Layout = tlCenter
            end
          end
          object RLBand_qrcode: TRLBand
            Left = 0
            Top = 76
            Width = 718
            Height = 194
            BandType = btSummary
            Visible = False
            object RLImage_QrCode: TRLImage
              Left = 217
              Top = 6
              Width = 304
              Height = 162
              Stretch = True
            end
          end
          object RLBand_linha: TRLBand
            Left = 0
            Top = 74
            Width = 718
            Height = 2
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
          end
        end
        object RLBand14: TRLBand
          Left = 38
          Top = 89
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
          object RLDraw77: TRLDraw
            Left = 354
            Top = 54
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
            Left = 311
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
            Left = 304
            Top = 31
            Width = 84
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            Caption = 'Documento Auxiliar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel102: TRLLabel
            Left = 300
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
            Left = 300
            Top = 65
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
            Left = 300
            Top = 53
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '0 - Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel105: TRLLabel
            Left = 301
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
            Left = 350
            Top = 111
            Width = 38
            Height = 10
            DataField = 'IDESERIE'
            DataSource = src_cabecalho
          end
          object RLDBText147: TRLDBText
            Left = 352
            Top = 173
            Width = 71
            Height = 10
            DataField = 'chave_acesso_calc'
            DataSource = src_cabecalho
          end
          object RLDBText148: TRLDBText
            Left = 4
            Top = 173
            Width = 28
            Height = 10
            DataField = 'EMITIE'
            DataSource = src_cabecalho
          end
          object RLDBText149: TRLDBText
            Left = 121
            Top = 173
            Width = 38
            Height = 10
            DataField = 'EMITIEST'
            DataSource = src_cabecalho
          end
          object RLDBText150: TRLDBText
            Left = 242
            Top = 173
            Width = 103
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = src_cabecalho
          end
          object RLDBText151: TRLDBText
            Left = 357
            Top = 57
            Width = 53
            Height = 10
            DataField = 'saida_entrada'
            DataSource = src_cabecalho
          end
          object RLDBText153: TRLDBText
            Left = 5
            Top = 141
            Width = 341
            Height = 14
            AutoSize = False
            DataField = 'IDENATOP'
            DataSource = src_cabecalho
          end
          object RLDBText154: TRLDBText
            Left = 321
            Top = 79
            Width = 56
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'numeronf'
            DataSource = src_cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 313
            Top = 92
            Width = 22
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
            Left = 339
            Top = 92
            Width = 23
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
          object RLLabel113: TRLLabel
            Left = 301
            Top = 79
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
            DataSource = src_cabecalho
          end
          object RLDBBarcode2: TRLDBBarcode
            Left = 391
            Top = 38
            Width = 325
            Height = 79
            AutoSize = False
            BarcodeType = bcCode128C
            CheckSumMethod = cmNone
            DataField = 'CHAVE_ACESSO'
            DataSource = src_cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object RLPanel_emitente: TRLPanel
            Left = 2
            Top = 12
            Width = 297
            Height = 112
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object rlLogo_Retrato_simples: TRLImage
              Left = 1
              Top = 1
              Width = 80
              Height = 110
              Align = faLeft
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
            object rlRetratoSimplesEmiRazao: TRLDBText
              Left = 83
              Top = 6
              Width = 210
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'EMITXNOME'
              DataSource = src_cabecalho
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object rlRetratoSimplesEmiEnder: TRLDBMemo
              Left = 83
              Top = 22
              Width = 210
              Height = 24
              Alignment = taCenter
              AutoSize = False
              DataField = 'endereco_comp'
              DataSource = src_cabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object rlRetratoSimplesEmiCidade: TRLDBText
              Left = 83
              Top = 55
              Width = 210
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'emicidadeuf'
              DataSource = src_cabecalho
              Layout = tlCenter
            end
            object rlRetratoSimplesEmiFone: TRLDBText
              Left = 83
              Top = 74
              Width = 210
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'fone_fax'
              DataSource = src_cabecalho
              Layout = tlCenter
            end
            object rlRetratoSimplesEmiCep: TRLDBText
              Left = 83
              Top = 93
              Width = 210
              Height = 10
              Alignment = taCenter
              AutoSize = False
              DataField = 'cep_emit'
              DataSource = src_cabecalho
              Layout = tlCenter
            end
          end
        end
        object RLBand1_cab02_simples: TRLBand
          Left = 38
          Top = 294
          Width = 718
          Height = 350
          BandType = btColumnHeader
          AfterPrint = RLBand1_cab02_simplesAfterPrint
          object RLDraw84: TRLDraw
            Left = 0
            Top = 250
            Width = 260
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText159: TRLDBText
            Left = 360
            Top = 60
            Width = 134
            Height = 14
            DataField = 'DESTENDERDESTXBAIRRO'
            DataSource = src_cabecalho
          end
          object RLDBText160: TRLDBText
            Left = 555
            Top = 60
            Width = 107
            Height = 14
            DataField = 'DESTENDERDESTCEP'
            DataSource = src_cabecalho
          end
          object RLDBText161: TRLDBText
            Left = 643
            Top = 60
            Width = 50
            Height = 14
            DataField = 'datasaida'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText164: TRLDBText
            Left = 399
            Top = 94
            Width = 101
            Height = 14
            DataField = 'DESTENDERDESTUF'
            DataSource = src_cabecalho
          end
          object RLDBText165: TRLDBText
            Left = 451
            Top = 94
            Width = 74
            Height = 14
            DataField = 'dest_inscricao'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText167: TRLDBText
            Left = 158
            Top = 187
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = src_cabecalho
          end
          object RLDBText168: TRLDBText
            Left = 315
            Top = 187
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = src_cabecalho
          end
          object RLDBText169: TRLDBText
            Left = 464
            Top = 187
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = src_cabecalho
          end
          object RLDBText170: TRLDBText
            Left = 595
            Top = 187
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText172: TRLDBText
            Left = 96
            Top = 220
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = src_cabecalho
          end
          object RLDBText173: TRLDBText
            Left = 218
            Top = 220
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = src_cabecalho
          end
          object RLDBText174: TRLDBText
            Left = 341
            Top = 220
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = src_cabecalho
          end
          object RLDBText175: TRLDBText
            Left = 472
            Top = 220
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = src_cabecalho
          end
          object RLDBText176: TRLDBText
            Left = 614
            Top = 220
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = src_cabecalho
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
            Left = 262
            Top = 250
            Width = 163
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw109: TRLDraw
            Left = 427
            Top = 250
            Width = 62
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw110: TRLDraw
            Left = 488
            Top = 250
            Width = 74
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw111: TRLDraw
            Left = 564
            Top = 250
            Width = 17
            Height = 29
          end
          object RLDraw112: TRLDraw
            Left = 586
            Top = 250
            Width = 132
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
            Left = 301
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
            Left = 430
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
            Left = 491
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
            Left = 566
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
            Left = 266
            Top = 260
            Width = 45
            Height = 10
            HelpType = htKeyword
            Caption = '0 - Emitente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel153: TRLLabel
            Left = 356
            Top = 258
            Width = 56
            Height = 10
            HelpType = htKeyword
            Caption = '1 - Destinatario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw113: TRLDraw
            Left = 413
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
            DataSource = src_cabecalho
          end
          object RLDBText178: TRLDBText
            Left = 412
            Top = 264
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = src_cabecalho
          end
          object RLDBText179: TRLDBText
            Left = 492
            Top = 263
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = src_cabecalho
          end
          object RLDBText180: TRLDBText
            Left = 559
            Top = 263
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = src_cabecalho
          end
          object RLDBText181: TRLDBText
            Left = 591
            Top = 263
            Width = 118
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText183: TRLDBText
            Left = 316
            Top = 296
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = src_cabecalho
          end
          object RLDBText184: TRLDBText
            Left = 582
            Top = 296
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = src_cabecalho
          end
          object RLDBText185: TRLDBText
            Left = 551
            Top = 296
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText188: TRLDBText
            Left = 271
            Top = 329
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = src_cabecalho
          end
          object RLDBText189: TRLDBText
            Left = 504
            Top = 329
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = src_cabecalho
          end
          object RLDBText190: TRLDBText
            Left = 613
            Top = 329
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = src_cabecalho
          end
          object RLDBText191: TRLDBText
            Left = 290
            Top = 94
            Width = 104
            Height = 14
            AutoSize = False
            DataField = 'dest_fone'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLLabel15: TRLLabel
            Left = 266
            Top = 268
            Width = 89
            Height = 10
            HelpType = htKeyword
            Caption = '2 - P/Conta de Terceiros'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 357
            Top = 268
            Width = 50
            Height = 10
            HelpType = htKeyword
            Caption = '9 - Sem Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 637
            Top = 93
            Width = 57
            Height = 14
            DataField = 'hora_saida'
            DataSource = src_cabecalho
          end
        end
      end
    end
    object ts_Paisagem: TTabSheet
      Caption = 'Paisagem'
      ImageIndex = 1
      object rl_Paisagem_Simples: TRLReport
        Left = -17
        Top = -321
        Width = 1123
        Height = 794
        Background.Height = 100
        Background.Stretch = True
        Background.Width = 800
        DataSource = src_cabecalho
        Degrade.OppositeColor = clRed
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
          Left = 62
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
            DataSource = src_cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel164: TRLLabel
            Left = 487
            Top = 2
            Width = 68
            Height = 16
            Alignment = taCenter
            Caption = 'DANFE X'
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
            Top = 55
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
            Top = 44
            Width = 46
            Height = 11
            HelpType = htKeyword
            Caption = '0 - Entrada'
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
            DataSource = src_cabecalho
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
            DataField = 'IDENNF'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            Width = 44
            Height = 12
            DataField = 'EMITIEST'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBBarcode3: TRLDBBarcode
            Left = 600
            Top = 24
            Width = 110
            Height = 58
            BarcodeType = bcCode128C
            CheckSumMethod = cmNone
            DataField = 'CHAVE_ACESSO'
            DataSource = src_cabecalho
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 83
          Top = 461
          Width = 983
          Height = 316
          DataSource = src_detalhe
          object RLBand17: TRLBand
            Left = 0
            Top = 26
            Width = 983
            Height = 11
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
            BeforePrint = RLBand17BeforePrint
            object RLDBText204: TRLDBText
              Left = 428
              Top = 1
              Width = 56
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODNCM'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_ncm
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText205: TRLDBText
              Left = 484
              Top = 1
              Width = 26
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'cst'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = mpaisagem_simples_cst
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText206: TRLDBText
              Left = 509
              Top = 1
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
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_csticms
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText207: TRLDBText
              Left = 540
              Top = 1
              Width = 28
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODUCOM'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_und
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBT_DETPRODVUNCOM: TRLDBText
              Left = 625
              Top = 1
              Width = 54
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVUNCOM'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_pu
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBT_DETPRODVPROD: TRLDBText
              Left = 737
              Top = 1
              Width = 56
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODVPROD'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_vt
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText210: TRLDBText
              Left = 843
              Top = 1
              Width = 22
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'aliq_icms'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_al_icms
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText211: TRLDBText
              Left = 900
              Top = 1
              Width = 32
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percipi'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_aliqipi
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText214: TRLDBText
              Left = 567
              Top = 1
              Width = 58
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODQCOM'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_qtde
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object txt_pais2_INSS: TRLDBText
              Left = 932
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
              DataSource = src_detalhe
              Holder = lblcab_vl_ipi
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object rlPaisagemSimplesNome: TRLDBMemo
              Left = 55
              Top = 1
              Width = 306
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'nomepro'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Serif'
              Font.Style = []
              Holder = lblcabpaisagem_nome
              Layout = tlJustify
              ParentFont = False
            end
            object RLDBText202: TRLDBText
              Left = 7
              Top = 1
              Width = 48
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETPRODCPROD'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_codpro
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_paisagem_marca: TRLLabel
              Left = 361
              Top = 1
              Width = 68
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'marca'
              Holder = rlcab_paisagem_marca
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText92: TRLDBText
              Left = 794
              Top = 1
              Width = 48
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'base_icms'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_bcicms
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText93: TRLDBText
              Left = 866
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
              DataField = 'valor_icms'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lblcab_vlicms
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_DETPRODVDESC: TRLDBText
              Left = 682
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
              DataField = 'DETPRODVDESC'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_vdesc
              ParentFont = False
              SecondHolder = rlPaisagemSimplesNome
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand_Rod01_simples: TRLBand
            Left = 0
            Top = 52
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
              Alignment = taJustify
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'INFADICINFCPL'
              DataSource = src_cabecalho
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
              DataSource = src_cabecalho
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
              DataSource = src_cabecalho
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
              DataSource = src_cabecalho
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
              DataSource = src_cabecalho
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
              DataSource = src_cabecalho
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
            BeforePrint = RLBand19BeforePrint
            object rlcab_codpro: TRLMemo
              Left = 7
              Top = 0
              Width = 48
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
            object lblcabpaisagem_nome: TRLMemo
              Left = 55
              Top = 0
              Width = 306
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
            object lblcab_ncm: TRLMemo
              Left = 428
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
              Left = 484
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
                'CST')
              ParentFont = False
            end
            object lblcab_csticms: TRLMemo
              Left = 509
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
            object lblcab_und: TRLMemo
              Left = 540
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
                'UND')
              ParentFont = False
            end
            object lblcab_pu: TRLMemo
              Left = 625
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
                'VALOR UNITARIO')
              ParentFont = False
            end
            object lblcab_vt: TRLMemo
              Left = 737
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
                'V.TOTAL')
              ParentFont = False
            end
            object lblcab_al_icms: TRLMemo
              Left = 843
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
                'ALIQ'
                'ICMS')
              ParentFont = False
            end
            object lblcab_aliqipi: TRLMemo
              Left = 900
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
            object lblcab_qtde: TRLMemo
              Left = 567
              Top = 0
              Width = 58
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
            object lblcab_vl_ipi: TRLMemo
              Left = 932
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
              Lines.Strings = (
                'VALOR IPI')
            end
            object rlcab_paisagem_marca: TRLMemo
              Left = 361
              Top = 0
              Width = 68
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
            object lblcab_bcicms: TRLMemo
              Left = 794
              Top = 0
              Width = 48
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
                'BC'
                'ICMS')
              ParentFont = False
            end
            object lblcab_vlicms: TRLMemo
              Left = 866
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
                'VL'
                'ICMS')
              ParentFont = False
            end
            object rlcab_vdesc: TRLMemo
              Left = 682
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
                'VALOR DESCONTO')
              ParentFont = False
            end
          end
          object RLBand20: TRLBand
            Left = 0
            Top = 50
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
            Top = 37
            Width = 983
            Height = 13
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object RLDBMemo6: TRLDBMemo
              Left = 7
              Top = 2
              Width = 959
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DETINFADPROD'
              DataSource = src_detalhe
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Serif'
              Font.Style = []
              Layout = tlCenter
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
        end
        object rl_lat_Nota_simples: TRLAngleLabel
          Left = 41
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText233: TRLDBText
            Left = 349
            Top = 150
            Width = 113
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVICMS'
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText234: TRLDBText
            Left = 541
            Top = 150
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVBCST'
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText235: TRLDBText
            Left = 708
            Top = 150
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVST'
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText236: TRLDBText
            Left = 846
            Top = 150
            Width = 117
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVPROD'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText238: TRLDBText
            Left = 200
            Top = 179
            Width = 110
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVSEG'
            DataSource = src_cabecalho
          end
          object RLDBText239: TRLDBText
            Left = 390
            Top = 179
            Width = 116
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVDESC'
            DataSource = src_cabecalho
          end
          object RLDBText240: TRLDBText
            Left = 533
            Top = 179
            Width = 125
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVOUTRO'
            DataSource = src_cabecalho
          end
          object RLDBText241: TRLDBText
            Left = 711
            Top = 179
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVIPI'
            DataSource = src_cabecalho
          end
          object RLDBText242: TRLDBText
            Left = 861
            Top = 179
            Width = 102
            Height = 14
            Alignment = taRightJustify
            DataField = 'TOTALICMSTOTVNF'
            DataSource = src_cabecalho
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
            Width = 364
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
            Left = 373
            Top = 207
            Width = 183
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
              '                  Frete por Conta'
              '0 - Emitente                     1 - Destinatario'
              '2 - P/Conta de Terceiros 9 - Sem Frete'
              '')
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
            DataSource = src_cabecalho
          end
          object RLDBText244: TRLDBText
            Left = 669
            Top = 218
            Width = 143
            Height = 14
            DataField = 'TRANSPVEICTRANSPPLACA'
            DataSource = src_cabecalho
          end
          object RLDBText245: TRLDBText
            Left = 778
            Top = 218
            Width = 121
            Height = 14
            DataField = 'TRANSPVEICTRANSPUF'
            DataSource = src_cabecalho
          end
          object RLDBText246: TRLDBText
            Left = 822
            Top = 218
            Width = 140
            Height = 14
            AutoSize = False
            DataField = 'transp_cnpj'
            DataSource = src_cabecalho
          end
          object RLDraw136: TRLDraw
            Left = 538
            Top = 212
            Width = 14
            Height = 21
          end
          object RLDBText247: TRLDBText
            Left = 539
            Top = 215
            Width = 12
            Height = 14
            AutoSize = False
            DataField = 'frete_cif_fob'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText249: TRLDBText
            Left = 430
            Top = 248
            Width = 50
            Height = 14
            DataField = 'TT_XMUN'
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText250: TRLDBText
            Left = 779
            Top = 248
            Width = 34
            Height = 14
            DataField = 'TT_UF'
            DataSource = src_cabecalho
            Layout = tlCenter
          end
          object RLDBText251: TRLDBText
            Left = 821
            Top = 248
            Width = 29
            Height = 14
            DataField = 'TT_IE'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText254: TRLDBText
            Left = 440
            Top = 278
            Width = 104
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLMARCA'
            DataSource = src_cabecalho
          end
          object RLDBText255: TRLDBText
            Left = 710
            Top = 278
            Width = 100
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOB'
            DataSource = src_cabecalho
          end
          object RLDBText256: TRLDBText
            Left = 863
            Top = 278
            Width = 99
            Height = 14
            Alignment = taRightJustify
            DataField = 'TRANSPVOLPESOL'
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
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
            DataSource = src_cabecalho
          end
          object RLDBText89: TRLDBText
            Left = 865
            Top = 73
            Width = 46
            Height = 12
            DataField = 'hora_saida'
            DataSource = src_cabecalho
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Processar'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 32
        Top = 56
        Width = 761
        Height = 105
        Caption = 'Nome do Arquivo a ser lido'
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 680
          Top = 16
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object edt_nomarq: TEdit
          Left = 8
          Top = 16
          Width = 665
          Height = 21
          TabOrder = 0
          Text = 'edt_nomarq'
        end
        object bbProcessar: TBitBtn
          Left = 344
          Top = 56
          Width = 75
          Height = 25
          Caption = 'Processar'
          TabOrder = 1
          OnClick = bbProcessarClick
        end
      end
    end
    object tsCCe: TTabSheet
      Caption = 'Carta de Corre'#231#227'o Eletronica'
      ImageIndex = 3
      object RLReport_CCe: TRLReport
        Left = 32
        Top = 56
        Width = 794
        Height = 1123
        DataSource = src_cce
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 303
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLDraw19: TRLDraw
            Left = 592
            Top = 198
            Width = 126
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw18: TRLDraw
            Left = 399
            Top = 198
            Width = 194
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw53: TRLDraw
            Left = 0
            Top = 198
            Width = 400
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 126
            Width = 185
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 11
            Width = 361
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw6: TRLDraw
            Left = 1
            Top = 1
            Width = 716
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
          object RLDraw7: TRLDraw
            Left = 360
            Top = 11
            Width = 357
            Height = 116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDraw10: TRLDraw
            Left = 184
            Top = 126
            Width = 177
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel9: TRLLabel
            Left = 4
            Top = 128
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
          object RLLabel12: TRLLabel
            Left = 188
            Top = 128
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
          object RLDraw11: TRLDraw
            Left = 785
            Top = 391
            Width = 140
            Height = 29
          end
          object RLLabel14: TRLLabel
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
          object RLDBBarcode1: TRLDBBarcode
            Left = 363
            Top = 82
            Width = 110
            Height = 40
            BarcodeType = bcCode128C
            DataField = 'chave_acesso'
            DataSource = src_cce
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object RLDBText3: TRLDBText
            Left = 4
            Top = 140
            Width = 28
            Height = 10
            DataField = 'emit_ie'
            DataSource = src_cce
          end
          object RLDBText5: TRLDBText
            Left = 188
            Top = 140
            Width = 103
            Height = 14
            AutoSize = False
            DataField = 'emit_cnpj'
            DataSource = src_cce
          end
          object RLDBText7: TRLDBText
            Left = 86
            Top = 13
            Width = 272
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'EMITXNOME'
            DataSource = src_cce
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLlogo_cce: TRLImage
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
          object RLDBMemo1: TRLDBMemo
            Left = 86
            Top = 28
            Width = 272
            Height = 42
            Alignment = taCenter
            AutoSize = False
            DataField = 'emitEndComp'
            DataSource = src_cce
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 86
            Top = 91
            Width = 272
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emi_foneFax'
            DataSource = src_cce
          end
          object RLDBText11: TRLDBText
            Left = 86
            Top = 77
            Width = 272
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emitCidadeUF'
            DataSource = src_cce
          end
          object RLDBText12: TRLDBText
            Left = 86
            Top = 104
            Width = 272
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'emit_CEP'
            DataSource = src_cce
          end
          object RLMemo1: TRLMemo
            Left = 363
            Top = 13
            Width = 350
            Height = 33
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              'CC-e'
              'CARTA DE CORRE'#199#195'O ELETRONICA')
            ParentFont = False
          end
          object RLDraw5: TRLDraw
            Left = 360
            Top = 48
            Width = 357
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel1: TRLLabel
            Left = 364
            Top = 49
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
          object RLDBText1: TRLDBText
            Left = 363
            Top = 64
            Width = 71
            Height = 10
            DataField = 'chave_acesso_calc'
            DataSource = src_cce
          end
          object RLDraw1: TRLDraw
            Left = 360
            Top = 126
            Width = 49
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel2: TRLLabel
            Left = 364
            Top = 128
            Width = 43
            Height = 11
            HelpType = htKeyword
            Caption = 'MODELO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 364
            Top = 140
            Width = 44
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'modnf'
            DataSource = src_cce
          end
          object RLDraw2: TRLDraw
            Left = 408
            Top = 126
            Width = 38
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDBText4: TRLDBText
            Left = 412
            Top = 140
            Width = 30
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'sernf'
            DataSource = src_cce
          end
          object RLLabel3: TRLLabel
            Left = 412
            Top = 128
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
          object RLDraw8: TRLDraw
            Left = 445
            Top = 126
            Width = 94
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDBText6: TRLDBText
            Left = 448
            Top = 140
            Width = 88
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'numnf'
            DataSource = src_cce
          end
          object RLLabel4: TRLLabel
            Left = 449
            Top = 128
            Width = 83
            Height = 11
            HelpType = htKeyword
            Caption = 'N'#218'MERO DA NF-e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 538
            Top = 126
            Width = 94
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel5: TRLLabel
            Left = 542
            Top = 128
            Width = 85
            Height = 11
            HelpType = htKeyword
            Caption = 'MES DA EMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 541
            Top = 140
            Width = 88
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'mesano_emi'
            DataSource = src_cce
          end
          object RLDraw12: TRLDraw
            Left = 631
            Top = 126
            Width = 86
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel6: TRLLabel
            Left = 635
            Top = 128
            Width = 82
            Height = 11
            HelpType = htKeyword
            Alignment = taCenter
            AutoSize = False
            Caption = 'PAGINA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 660
            Top = 140
            Width = 12
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 672
            Top = 140
            Width = 26
            Height = 10
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLLabel7: TRLLabel
            Left = -1
            Top = 157
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
            Top = 170
            Width = 523
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel8: TRLLabel
            Left = 4
            Top = 172
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
          object RLDBText9: TRLDBText
            Left = 5
            Top = 184
            Width = 57
            Height = 10
            DataField = 'nomcli_codigo'
            DataSource = src_cce
          end
          object RLDBText52: TRLDBText
            Left = 322
            Top = 175
            Width = 200
            Height = 8
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'fantasia'
            DataSource = src_cce
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw15: TRLDraw
            Left = 524
            Top = 170
            Width = 194
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLDBText13: TRLDBText
            Left = 527
            Top = 184
            Width = 178
            Height = 14
            AutoSize = False
            DataField = 'dest_cnpj'
            DataSource = src_cce
          end
          object RLLabel11: TRLLabel
            Left = 527
            Top = 171
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
          object RLDBText53: TRLDBText
            Left = 5
            Top = 212
            Width = 43
            Height = 10
            DataField = 'dest_ender'
            DataSource = src_cce
          end
          object RLLabel57: TRLLabel
            Left = 4
            Top = 200
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
          object RLLabel16: TRLLabel
            Left = 401
            Top = 200
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
          object RLDBText16: TRLDBText
            Left = 403
            Top = 212
            Width = 44
            Height = 10
            DataField = 'dest_bairro'
            DataSource = src_cce
          end
          object RLLabel17: TRLLabel
            Left = 599
            Top = 200
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
          object RLDBText17: TRLDBText
            Left = 599
            Top = 212
            Width = 35
            Height = 10
            DataField = 'dest_cep'
            DataSource = src_cce
          end
          object RLDraw21: TRLDraw
            Left = 0
            Top = 226
            Width = 352
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel19: TRLLabel
            Left = 3
            Top = 228
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
          object RLDBText19: TRLDBText
            Left = 5
            Top = 240
            Width = 46
            Height = 10
            DataField = 'dest_cidade'
            DataSource = src_cce
          end
          object RLDraw54: TRLDraw
            Left = 351
            Top = 226
            Width = 49
            Height = 29
          end
          object RLLabel58: TRLLabel
            Left = 355
            Top = 228
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
          object RLDBText54: TRLDBText
            Left = 354
            Top = 240
            Width = 30
            Height = 10
            DataField = 'dest_uf'
            DataSource = src_cce
          end
          object RLDraw22: TRLDraw
            Left = 399
            Top = 226
            Width = 133
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel20: TRLLabel
            Left = 403
            Top = 228
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
          object RLDBText51: TRLDBText
            Left = 403
            Top = 240
            Width = 124
            Height = 14
            AutoSize = False
            DataField = 'dest_fonefax'
            DataSource = src_cce
          end
          object RLDraw24: TRLDraw
            Left = 531
            Top = 226
            Width = 187
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object RLLabel22: TRLLabel
            Left = 535
            Top = 228
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
          object RLDBText21: TRLDBText
            Left = 536
            Top = 240
            Width = 72
            Height = 10
            DataField = 'dest_insc_estadual'
            DataSource = src_cce
          end
          object RLLabel59: TRLLabel
            Left = 4
            Top = 256
            Width = 92
            Height = 11
            HelpType = htKeyword
            Caption = 'CONDIC'#213'ES DE USO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 2
            Top = 273
            Width = 714
            Height = 14
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataField = 'conduso'
            DataSource = src_cce
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 341
          Width = 718
          Height = 90
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel13: TRLLabel
            Left = 4
            Top = 1
            Width = 103
            Height = 11
            HelpType = htKeyword
            Caption = 'EVENTOS/CONDI'#199#213'ES'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblcce_seq: TRLLabel
            Left = 4
            Top = 15
            Width = 28
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Seq'
          end
          object lblcce_stat: TRLLabel
            Left = 41
            Top = 15
            Width = 28
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Stat'
          end
          object lblcce_datreg: TRLLabel
            Left = 73
            Top = 15
            Width = 128
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Data do Registro'
          end
          object lblcce_numprot: TRLLabel
            Left = 209
            Top = 15
            Width = 128
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'N'#250'mero do Protocolo'
          end
          object edtcce_seq: TRLDBText
            Left = 4
            Top = 36
            Width = 28
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'seq'
            DataSource = src_cce
            Holder = lblcce_seq
          end
          object edtcce_stat: TRLDBText
            Left = 41
            Top = 36
            Width = 28
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'stat'
            DataSource = src_cce
            Holder = lblcce_stat
          end
          object edtcce_datreg: TRLDBText
            Left = 73
            Top = 36
            Width = 128
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'mesano_emi'
            DataSource = src_cce
            Holder = lblcce_datreg
          end
          object edtcce_numprot: TRLDBText
            Left = 209
            Top = 36
            Width = 128
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'num_prot'
            DataSource = src_cce
            Holder = lblcce_numprot
          end
          object RLDBMemo2: TRLDBMemo
            Left = 2
            Top = 54
            Width = 710
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'correcao'
            DataSource = src_cce
          end
          object RLDraw13: TRLDraw
            Left = 1
            Top = 14
            Width = 715
            Height = 1
          end
        end
      end
    end
    object ts_QrCode: TTabSheet
      Caption = 'QrCode'
      ImageIndex = 4
      object Label1: TLabel
        Left = 8
        Top = 13
        Width = 21
        Height = 13
        Caption = 'Text'
      end
      object Label2: TLabel
        Left = 8
        Top = 69
        Width = 45
        Height = 13
        Caption = 'Encoding'
      end
      object Label3: TLabel
        Left = 184
        Top = 69
        Width = 51
        Height = 13
        Caption = 'Quiet zone'
      end
      object PaintBox1: TPaintBox
        Left = 336
        Top = 32
        Width = 201
        Height = 209
        OnPaint = PaintBox1Paint
      end
      object Image1: TImage
        Left = 568
        Top = 136
        Width = 345
        Height = 321
      end
      object edtText: TEdit
        Left = 8
        Top = 32
        Width = 265
        Height = 21
        TabOrder = 0
        Text = 'Hello world'
        OnChange = edtTextChange
      end
      object cmbEncoding: TComboBox
        Left = 8
        Top = 88
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Auto'
        Items.Strings = (
          'Auto'
          'Numeric'
          'Alphanumeric'
          'ISO-8859-1'
          'UTF-8 without BOM'
          'UTF-8 with BOM')
      end
      object edtQuietZone: TEdit
        Left = 184
        Top = 88
        Width = 89
        Height = 21
        TabOrder = 2
        Text = '4'
      end
    end
    object tsNotaServico: TTabSheet
      Caption = 'tsNotaServico'
      ImageIndex = 5
      object RLReport_NFSE: TRLReport
        Left = 88
        Top = -536
        Width = 794
        Height = 1123
        DataSource = src_nfse_cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport_NFSEBeforePrint
        object RLNFSE_CAB01: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 83
          object rlnfse_logo_pref: TRLImage
            Left = 6
            Top = 6
            Width = 80
            Height = 73
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
          object RLDBText15: TRLDBText
            Left = 89
            Top = 5
            Width = 378
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'dadosprefl01'
            DataSource = src_nfse_cab
          end
          object RLDraw20: TRLDraw
            Left = 470
            Top = 2
            Width = 1
            Height = 79
          end
          object RLLabel21: TRLLabel
            Left = 470
            Top = 5
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'N'#250'mero Nota Fiscal:'
          end
          object RLDBText18: TRLDBText
            Left = 595
            Top = 5
            Width = 58
            Height = 16
            DataField = 'numnfse'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 89
            Top = 25
            Width = 378
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'dadosprefl02'
            DataSource = src_nfse_cab
          end
          object RLDBText22: TRLDBText
            Left = 89
            Top = 44
            Width = 378
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'dadosprefl03'
            DataSource = src_nfse_cab
          end
          object RLDBText23: TRLDBText
            Left = 89
            Top = 64
            Width = 378
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'dadosprefl04'
            DataSource = src_nfse_cab
          end
          object RLLabel23: TRLLabel
            Left = 470
            Top = 43
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Data Emiss'#227'o:'
          end
          object RLDBText24: TRLDBText
            Left = 595
            Top = 43
            Width = 54
            Height = 16
            DataField = 'datemis'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 470
            Top = 62
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo Verifica'#231#227'o:'
          end
          object RLDBText25: TRLDBText
            Left = 595
            Top = 62
            Width = 97
            Height = 16
            DataField = 'codverificacao'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel75: TRLLabel
            Left = 470
            Top = 22
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'N'#250'mero do RPS:'
          end
          object RLDBText94: TRLDBText
            Left = 595
            Top = 22
            Width = 51
            Height = 16
            DataField = 'numrps'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLNFSE_CAB02: TRLBand
          Left = 38
          Top = 121
          Width = 718
          Height = 116
          object RLImage_logo_prestador: TRLImage
            Left = 6
            Top = 29
            Width = 70
            Height = 73
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
          object RLLabel25: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'PRESTADOR DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 77
            Top = 18
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ:'
          end
          object RLDBText26: TRLDBText
            Left = 158
            Top = 18
            Width = 241
            Height = 16
            AutoSize = False
            DataField = 'prest_cnpj'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 405
            Top = 18
            Width = 129
            Height = 16
            AutoSize = False
            Caption = 'Inscri'#231#227'o Municipal:'
          end
          object RLDBText27: TRLDBText
            Left = 541
            Top = 18
            Width = 58
            Height = 16
            DataField = 'prest_im'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 77
            Top = 38
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Raz'#227'o Social:'
          end
          object RLDBText28: TRLDBText
            Left = 157
            Top = 38
            Width = 451
            Height = 16
            AutoSize = False
            DataField = 'prest_razao'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 77
            Top = 56
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o:'
          end
          object RLDBText29: TRLDBText
            Left = 157
            Top = 56
            Width = 451
            Height = 16
            AutoSize = False
            DataField = 'prest_ender'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 77
            Top = 74
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Bairro:'
          end
          object RLDBText30: TRLDBText
            Left = 157
            Top = 74
            Width = 451
            Height = 16
            AutoSize = False
            DataField = 'prest_bairro'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 77
            Top = 94
            Width = 80
            Height = 16
            AutoSize = False
            Caption = 'Municipio:'
          end
          object RLDBText31: TRLDBText
            Left = 157
            Top = 94
            Width = 451
            Height = 16
            AutoSize = False
            DataField = 'prest_mun_uf_cep_fone'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLImageMod01QrCode: TRLImage
            Left = 620
            Top = 16
            Width = 98
            Height = 100
            Align = faRight
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Stretch = True
            Visible = False
          end
        end
        object RLNFSE_CAB03: TRLBand
          Left = 38
          Top = 237
          Width = 718
          Height = 115
          object RLLabel33: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'TOMADOR DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 9
            Top = 38
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ:'
          end
          object RLDBText32: TRLDBText
            Left = 136
            Top = 37
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'tomador_cnpj'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 478
            Top = 38
            Width = 129
            Height = 16
            AutoSize = False
            Caption = 'Inscri'#231#227'o Municipal:'
          end
          object RLDBText33: TRLDBText
            Left = 614
            Top = 38
            Width = 80
            Height = 16
            DataField = 'tomador_im'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 9
            Top = 18
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Nome/Raz'#227'o Social:'
          end
          object RLDBText34: TRLDBText
            Left = 134
            Top = 18
            Width = 579
            Height = 16
            AutoSize = False
            DataField = 'tomador_razao'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 8
            Top = 56
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o:'
          end
          object RLDBText35: TRLDBText
            Left = 133
            Top = 56
            Width = 579
            Height = 16
            AutoSize = False
            DataField = 'tomador_ender'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 8
            Top = 74
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Bairro:'
          end
          object RLDBText36: TRLDBText
            Left = 133
            Top = 74
            Width = 579
            Height = 16
            AutoSize = False
            DataField = 'tomador_bairro'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 8
            Top = 94
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Municipio:'
          end
          object RLDBText37: TRLDBText
            Left = 133
            Top = 94
            Width = 579
            Height = 16
            AutoSize = False
            DataField = 'tomador_num_uf_cep_fone'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLNFSE_DEET01: TRLBand
          Left = 38
          Top = 352
          Width = 718
          Height = 300
          object RLLabel40: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'DISCRIMINA'#199#195'O DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo5: TRLDBMemo
            Left = 0
            Top = 16
            Width = 718
            Height = 284
            Align = faClient
            AutoSize = False
            DataField = 'descricao'
            DataSource = src_nfse_det
          end
        end
        object RLNFSE_ROD01: TRLBand
          Left = 38
          Top = 652
          Width = 718
          Height = 86
          object RLLabel41: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'INFORMA'#199#213'ES ADICIONAIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo9: TRLDBMemo
            Left = 0
            Top = 16
            Width = 718
            Height = 70
            Align = faClient
            AutoSize = False
            DataField = 'infadicionais'
            DataSource = src_nfse_cab
          end
        end
        object RLNFSE_ROD02: TRLBand
          Left = 38
          Top = 803
          Width = 718
          Height = 30
          object RLLabel42: TRLLabel
            Left = 4
            Top = 1
            Width = 60
            Height = 16
            Caption = 'Atividade:'
          end
          object RLDBText38: TRLDBText
            Left = 65
            Top = 1
            Width = 68
            Height = 16
            DataField = 'prest_cnae'
            DataSource = src_nfse_cab
          end
          object RLDBText39: TRLDBText
            Left = 0
            Top = 14
            Width = 718
            Height = 16
            Align = faBottom
            DataField = 'prest_cnae'
            DataSource = src_nfse_cab
          end
        end
        object RLNFSE_ROD05: TRLBand
          Left = 38
          Top = 833
          Width = 718
          Height = 38
          object RLPanel1: TRLPanel
            Left = 3
            Top = 0
            Width = 109
            Height = 38
            object RLLabel43: TRLLabel
              Left = 0
              Top = 0
              Width = 109
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Reten'#231#245'es'
            end
            object RLLabel44: TRLLabel
              Left = 0
              Top = 16
              Width = 109
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Federais'
            end
          end
          object RLPanel2: TRLPanel
            Left = 114
            Top = 0
            Width = 121
            Height = 38
            object RLLabel45: TRLLabel
              Left = 0
              Top = 0
              Width = 121
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'PIS'
            end
            object RLDBText40: TRLDBText
              Left = 0
              Top = 22
              Width = 121
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'pis_valor_texto'
              DataSource = src_nfse_cab
            end
          end
          object RLPanel3: TRLPanel
            Left = 222
            Top = 0
            Width = 121
            Height = 38
            object RLLabel46: TRLLabel
              Left = 0
              Top = 0
              Width = 121
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'COFINS'
            end
            object RLDBText41: TRLDBText
              Left = 0
              Top = 22
              Width = 121
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'cofins_valor_texto'
              DataSource = src_nfse_cab
            end
          end
          object RLPanel4: TRLPanel
            Left = 346
            Top = 0
            Width = 121
            Height = 38
            object RLLabel47: TRLLabel
              Left = 0
              Top = 0
              Width = 121
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'INSS'
            end
            object RLDBText42: TRLDBText
              Left = 0
              Top = 22
              Width = 121
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'inss_valor_texto'
              DataSource = src_nfse_cab
            end
          end
          object RLPanel5: TRLPanel
            Left = 471
            Top = 0
            Width = 121
            Height = 38
            object RLLabel48: TRLLabel
              Left = 0
              Top = 0
              Width = 121
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'IR'
            end
            object RLDBText43: TRLDBText
              Left = 0
              Top = 22
              Width = 121
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'ir_valor_texto'
              DataSource = src_nfse_cab
            end
          end
          object RLPanel6: TRLPanel
            Left = 593
            Top = 0
            Width = 121
            Height = 38
            object RLLabel49: TRLLabel
              Left = 0
              Top = 0
              Width = 121
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'CSLL'
            end
            object RLDBText44: TRLDBText
              Left = 0
              Top = 22
              Width = 121
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'csll_valor_texto'
              DataSource = src_nfse_cab
            end
          end
        end
        object RLNFSE_ROD03: TRLBand
          Left = 38
          Top = 871
          Width = 718
          Height = 147
          object RLPanel7: TRLPanel
            Left = 352
            Top = 0
            Width = 366
            Height = 147
            Align = faRight
            object RLLabel52: TRLLabel
              Left = 0
              Top = 0
              Width = 366
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Calculo dos Impostos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel53: TRLLabel
              Left = 18
              Top = 20
              Width = 108
              Height = 16
              Caption = 'valor dos Servi'#231'os'
            end
            object RLDBText55: TRLDBText
              Left = 250
              Top = 20
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText56: TRLDBText
              Left = 274
              Top = 19
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_servicos'
              DataSource = src_nfse_cab
            end
            object RLLabel55: TRLLabel
              Left = 18
              Top = 39
              Width = 165
              Height = 16
              Caption = '(-) Desconto Incondicionado'
            end
            object RLDBText59: TRLDBText
              Left = 250
              Top = 39
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText60: TRLDBText
              Left = 275
              Top = 38
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_desc_incondicionado'
              DataSource = src_nfse_cab
            end
            object RLLabel60: TRLLabel
              Left = 18
              Top = 56
              Width = 103
              Height = 16
              Caption = '(=) Valor da Nota'
            end
            object RLDBText63: TRLDBText
              Left = 250
              Top = 56
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText64: TRLDBText
              Left = 275
              Top = 55
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_liquido'
              DataSource = src_nfse_cab
            end
            object RLLabel62: TRLLabel
              Left = 18
              Top = 73
              Width = 78
              Height = 16
              Caption = '(-) Dedu'#231#245'es'
            end
            object RLDBText67: TRLDBText
              Left = 250
              Top = 73
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText68: TRLDBText
              Left = 275
              Top = 72
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_deducoes'
              DataSource = src_nfse_cab
            end
            object RLLabel64: TRLLabel
              Left = 17
              Top = 92
              Width = 119
              Height = 16
              Caption = '(=) Base de Calculo'
            end
            object RLDBText71: TRLDBText
              Left = 250
              Top = 92
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText72: TRLDBText
              Left = 274
              Top = 91
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_base_calculo'
              DataSource = src_nfse_cab
            end
            object RLLabel67: TRLLabel
              Left = 17
              Top = 110
              Width = 70
              Height = 16
              Caption = '(x) Aliquota'
            end
            object RLDBText74: TRLDBText
              Left = 274
              Top = 109
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'issqn_aliquota'
              DataSource = src_nfse_cab
            end
            object RLLabel68: TRLLabel
              Left = 17
              Top = 128
              Width = 174
              Height = 16
              Caption = '(=) Valor do Imposto (ISSQN)'
            end
            object RLDBText75: TRLDBText
              Left = 250
              Top = 128
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText76: TRLDBText
              Left = 274
              Top = 127
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'issqn_valor'
              DataSource = src_nfse_cab
            end
            object RLLabel69: TRLLabel
              Left = 252
              Top = 108
              Width = 16
              Height = 16
              Alignment = taCenter
              Caption = '%'
            end
          end
          object RLPanel8: TRLPanel
            Left = -14
            Top = 0
            Width = 366
            Height = 147
            Align = faRight
            object RLLabel50: TRLLabel
              Left = 0
              Top = 0
              Width = 366
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Demonstrativo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel51: TRLLabel
              Left = 17
              Top = 20
              Width = 108
              Height = 16
              Caption = 'valor dos Servi'#231'os'
            end
            object RLDBText45: TRLDBText
              Left = 251
              Top = 20
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText46: TRLDBText
              Left = 275
              Top = 19
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_servicos'
              DataSource = src_nfse_cab
            end
            object RLDBText57: TRLDBText
              Left = 251
              Top = 39
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText58: TRLDBText
              Left = 275
              Top = 38
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_desc_incondicionado'
              DataSource = src_nfse_cab
            end
            object RLLabel54: TRLLabel
              Left = 18
              Top = 39
              Width = 165
              Height = 16
              Caption = '(-) Desconto Incondicionado'
            end
            object RLLabel56: TRLLabel
              Left = 18
              Top = 56
              Width = 136
              Height = 16
              Caption = '(-) Retenc'#245'es Federais'
            end
            object RLDBText61: TRLDBText
              Left = 251
              Top = 56
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText62: TRLDBText
              Left = 275
              Top = 55
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_retencoes_federais'
              DataSource = src_nfse_cab
            end
            object RLLabel61: TRLLabel
              Left = 18
              Top = 73
              Width = 183
              Height = 16
              Caption = '(-) ISSQN Retido pelo Tomador'
            end
            object RLDBText65: TRLDBText
              Left = 251
              Top = 73
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText66: TRLDBText
              Left = 275
              Top = 72
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_issqn_retido_tomador'
              DataSource = src_nfse_cab
            end
            object RLLabel63: TRLLabel
              Left = 17
              Top = 92
              Width = 99
              Height = 16
              Caption = '(=) Valor Liquido'
            end
            object RLDBText69: TRLDBText
              Left = 251
              Top = 92
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
            end
            object RLDBText70: TRLDBText
              Left = 274
              Top = 91
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_liquido'
              DataSource = src_nfse_cab
            end
            object RLPanel9: TRLPanel
              Left = 18
              Top = 111
              Width = 176
              Height = 32
              object RLLabel65: TRLLabel
                Left = 0
                Top = 0
                Width = 176
                Height = 16
                Align = faTop
                Alignment = taCenter
                Caption = 'Servi'#231'o Prestado em'
              end
              object RLDBText73: TRLDBText
                Left = 0
                Top = 16
                Width = 176
                Height = 16
                Align = faBottom
                Alignment = taCenter
                DataField = 'local_servico_prestado'
                DataSource = src_nfse_cab
              end
            end
            object RLPanel10: TRLPanel
              Left = 195
              Top = 111
              Width = 170
              Height = 32
              object RLLabel66: TRLLabel
                Left = 0
                Top = 0
                Width = 170
                Height = 16
                Align = faTop
                Alignment = taCenter
                Caption = 'Imposto Devido em'
              end
              object RLDBText78: TRLDBText
                Left = 0
                Top = 16
                Width = 170
                Height = 16
                Align = faBottom
                Alignment = taCenter
                DataField = 'local_imposto_devico'
                DataSource = src_nfse_cab
              end
            end
          end
        end
        object RLNFSE_ROD06: TRLBand
          Left = 38
          Top = 1018
          Width = 718
          Height = 36
          object RLPanel11: TRLPanel
            Left = 2
            Top = 0
            Width = 241
            Height = 35
            object RLLabel70: TRLLabel
              Left = 0
              Top = 0
              Width = 241
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Valor dos Servii'#231'os'
              Layout = tlCenter
            end
            object RLDBText79: TRLDBText
              Left = 97
              Top = 19
              Width = 83
              Height = 16
              Alignment = taRightJustify
              DataField = 'total_servicos'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
            object RLDBText86: TRLDBText
              Left = 43
              Top = 19
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
          object RLPanel12: TRLPanel
            Left = 242
            Top = 0
            Width = 242
            Height = 35
            object RLLabel71: TRLLabel
              Left = 0
              Top = 0
              Width = 242
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Descontos'
              Layout = tlCenter
            end
            object RLDBText80: TRLDBText
              Left = 117
              Top = 18
              Width = 92
              Height = 16
              Alignment = taRightJustify
              DataField = 'total_deducoes'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
            object RLDBText87: TRLDBText
              Left = 64
              Top = 19
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
          object RLPanel13: TRLPanel
            Left = 483
            Top = 0
            Width = 234
            Height = 35
            object RLLabel72: TRLLabel
              Left = 0
              Top = 0
              Width = 234
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Valor da Nota'
              Layout = tlCenter
            end
            object RLDBText81: TRLDBText
              Left = 106
              Top = 19
              Width = 73
              Height = 16
              Alignment = taRightJustify
              DataField = 'total_liquido'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
            object RLDBText88: TRLDBText
              Left = 37
              Top = 19
              Width = 20
              Height = 16
              AutoSize = False
              DataField = 'simbolo_moeda'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
        end
        object RLNFSE_ROD04: TRLBand
          Left = 38
          Top = 1054
          Width = 718
          Height = 49
          object RLLabel73: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Caption = 'Informa'#231#245'es Importantes:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText82: TRLDBText
            Left = 0
            Top = 33
            Width = 718
            Height = 16
            Align = faBottom
            DataField = 'infimp_linha02'
            DataSource = src_nfse_cab
          end
          object RLDBText83: TRLDBText
            Left = 0
            Top = 17
            Width = 718
            Height = 16
            Align = faBottom
            DataField = 'infimp_linha01'
            DataSource = src_nfse_cab
          end
        end
        object rlbandInfAdicional: TRLBand
          Left = 38
          Top = 738
          Width = 718
          Height = 65
          object RLDBMemo7: TRLDBMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 65
            Align = faClient
            AutoSize = False
            DataField = 'InformacoesComplementares'
            DataSource = src_nfse_cab
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 6
    end
  end
  object cds_cabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cds_cabecalhoCalcFields
    Left = 468
    Top = 40
    object cds_cabecalhoEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Size = 100
    end
    object cds_cabecalhoendereco_comp: TStringField
      FieldName = 'endereco_comp'
      Size = 200
    end
    object cds_cabecalhoemicidadeuf: TStringField
      FieldName = 'emicidadeuf'
      Size = 100
    end
    object cds_cabecalhofone_fax: TStringField
      FieldName = 'fone_fax'
    end
    object cds_cabecalhocep_emit: TStringField
      FieldName = 'cep_emit'
    end
    object cds_cabecalhosaida_entrada: TStringField
      FieldName = 'saida_entrada'
      Size = 1
    end
    object cds_cabecalhoIDENNF: TStringField
      FieldName = 'IDENNF'
      Size = 9
    end
    object cds_cabecalhoIDESERIE: TStringField
      FieldName = 'IDESERIE'
      Size = 5
    end
    object cds_cabecalhoEMITIE: TStringField
      FieldName = 'EMITIE'
      Size = 40
    end
    object cds_cabecalhoDESTISUF: TStringField
      FieldName = 'DESTISUF'
      Size = 2
    end
    object cds_cabecalhoemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object cds_cabecalhochave_acesso_calc: TStringField
      FieldName = 'chave_acesso_calc'
      Size = 60
    end
    object cds_cabecalhonomcli_codigo: TStringField
      FieldName = 'nomcli_codigo'
      Size = 100
    end
    object cds_cabecalhonum_prot: TStringField
      FieldName = 'num_prot'
      Size = 15
    end
    object cds_cabecalhodest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object cds_cabecalhoDESTENDERDESTXLGR: TStringField
      FieldName = 'DESTENDERDESTXLGR'
      Size = 100
    end
    object cds_cabecalhoDESTENDERDESTXBAIRRO: TStringField
      FieldName = 'DESTENDERDESTXBAIRRO'
      Size = 40
    end
    object cds_cabecalhoDESTENDERDESTCEP: TStringField
      FieldName = 'DESTENDERDESTCEP'
      Size = 9
    end
    object cds_cabecalhoDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Size = 50
    end
    object cds_cabecalhodest_fone: TStringField
      FieldName = 'dest_fone'
    end
    object cds_cabecalhoDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Size = 2
    end
    object cds_cabecalhodest_inscricao: TStringField
      FieldName = 'dest_inscricao'
      Size = 40
    end
    object cds_cabecalhoTOTALICMSTOTVBC: TFloatField
      FieldName = 'TOTALICMSTOTVBC'
    end
    object cds_cabecalhoTOTALICMSTOTVICMS: TFloatField
      FieldName = 'TOTALICMSTOTVICMS'
    end
    object cds_cabecalhoTOTALICMSTOTVBCST: TFloatField
      FieldName = 'TOTALICMSTOTVBCST'
    end
    object cds_cabecalhoTOTALICMSTOTVST: TFloatField
      FieldName = 'TOTALICMSTOTVST'
    end
    object cds_cabecalhoTOTALICMSTOTVPROD: TFloatField
      FieldName = 'TOTALICMSTOTVPROD'
    end
    object cds_cabecalhoTOTALICMSTOTVFRETE: TFloatField
      FieldName = 'TOTALICMSTOTVFRETE'
    end
    object cds_cabecalhoTOTALICMSTOTVSEG: TFloatField
      FieldName = 'TOTALICMSTOTVSEG'
    end
    object cds_cabecalhoTOTALICMSTOTVDESC: TFloatField
      FieldName = 'TOTALICMSTOTVDESC'
    end
    object cds_cabecalhoTOTALICMSTOTVOUTRO: TFloatField
      FieldName = 'TOTALICMSTOTVOUTRO'
    end
    object cds_cabecalhoTOTALICMSTOTVIPI: TFloatField
      FieldName = 'TOTALICMSTOTVIPI'
    end
    object cds_cabecalhoTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
    end
    object cds_cabecalhoTT_XNOME: TStringField
      FieldName = 'TT_XNOME'
      Size = 60
    end
    object cds_cabecalhofrete_cif_fob: TStringField
      FieldName = 'frete_cif_fob'
      Size = 1
    end
    object cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField
      FieldName = 'TRANSPVEICTRANSPPLACA'
      Size = 10
    end
    object cds_cabecalhoTRANSPVEICTRANSPUF: TStringField
      FieldName = 'TRANSPVEICTRANSPUF'
      Size = 2
    end
    object cds_cabecalhotransp_cnpj: TStringField
      FieldName = 'transp_cnpj'
    end
    object cds_cabecalhoTT_XENDER: TStringField
      FieldName = 'TT_XENDER'
      Size = 60
    end
    object cds_cabecalhoTT_XMUN: TStringField
      FieldName = 'TT_XMUN'
      Size = 50
    end
    object cds_cabecalhoTT_UF: TStringField
      FieldName = 'TT_UF'
      Size = 2
    end
    object cds_cabecalhoTT_IE: TStringField
      FieldName = 'TT_IE'
      Size = 40
    end
    object cds_cabecalhoTRANSPVOLQVOL: TIntegerField
      FieldName = 'TRANSPVOLQVOL'
    end
    object cds_cabecalhoTRANSPVOLMARCA: TStringField
      FieldName = 'TRANSPVOLMARCA'
    end
    object cds_cabecalhoTRANSPVOLPESOB: TFloatField
      FieldName = 'TRANSPVOLPESOB'
    end
    object cds_cabecalhoTRANSPVOLPESOL: TFloatField
      FieldName = 'TRANSPVOLPESOL'
    end
    object cds_cabecalhoINFADICINFCPL: TMemoField
      FieldName = 'INFADICINFCPL'
      BlobType = ftMemo
    end
    object cds_cabecalhoINFADICINFADFISCO: TMemoField
      FieldName = 'INFADICINFADFISCO'
      BlobType = ftMemo
    end
    object cds_cabecalhoTOTALISSQNTOTVISS: TFloatField
      FieldName = 'TOTALISSQNTOTVISS'
    end
    object cds_cabecalhoTOTALISSQNTOTVBC: TFloatField
      FieldName = 'TOTALISSQNTOTVBC'
    end
    object cds_cabecalhoEMITIM: TStringField
      FieldName = 'EMITIM'
      Size = 50
    end
    object cds_cabecalhoTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object cds_cabecalhoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cds_cabecalhoEMITIEST: TStringField
      FieldName = 'EMITIEST'
      Size = 60
    end
    object cds_cabecalhoIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
    end
    object cds_cabecalhodata_vencimentos: TStringField
      FieldName = 'data_vencimentos'
      Size = 3000
    end
    object cds_cabecalhovalor_texto: TStringField
      FieldName = 'valor_texto'
      Size = 25
    end
    object cds_cabecalhoemissao_texto: TStringField
      FieldName = 'emissao_texto'
      Size = 30
    end
    object cds_cabecalhorecebemos: TStringField
      FieldName = 'recebemos'
      Size = 250
    end
    object cds_cabecalhonumeronf: TFloatField
      FieldName = 'numeronf'
    end
    object cds_cabecalhofantasia_cliente: TStringField
      FieldName = 'fantasia_cliente'
      Size = 60
    end
    object cds_cabecalhoTRANSPVOLESP: TStringField
      FieldName = 'TRANSPVOLESP'
      Size = 10
    end
    object cds_cabecalhoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cds_cabecalhoccodcli: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ccodcli'
      Calculated = True
    end
    object cds_cabecalhoIDENATOP: TStringField
      FieldName = 'IDENATOP'
      Size = 150
    end
    object cds_cabecalhohora_saida: TStringField
      FieldName = 'hora_saida'
      Size = 10
    end
    object cds_cabecalhodatasaida: TStringField
      FieldName = 'datasaida'
      Size = 15
    end
    object cds_cabecalhomodelo: TIntegerField
      FieldName = 'modelo'
    end
    object cds_cabecalhoqrcode: TStringField
      FieldName = 'qrcode'
      Size = 2500
    end
    object cds_cabecalhodatasaida_hora: TStringField
      FieldName = 'datasaida_hora'
      Size = 10
    end
  end
  object src_cabecalho: TDataSource
    DataSet = cds_cabecalho
    Left = 484
    Top = 56
  end
  object cds_detalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cds_detalheCalcFields
    Left = 504
    Top = 8
    object cds_detalheDETPRODCPROD: TStringField
      FieldName = 'DETPRODCPROD'
    end
    object cds_detalhenomepro: TStringField
      DisplayWidth = 3000
      FieldName = 'nomepro'
      Size = 3000
    end
    object cds_detalheDETPRODNCM: TStringField
      FieldName = 'DETPRODNCM'
    end
    object cds_detalheDETPRODCFOP: TStringField
      FieldName = 'DETPRODCFOP'
      Size = 4
    end
    object cds_detalhecst: TStringField
      FieldName = 'cst'
      Size = 4
    end
    object cds_detalheDETPRODUCOM: TStringField
      FieldName = 'DETPRODUCOM'
      Size = 3
    end
    object cds_detalheDETPRODQCOM: TFloatField
      FieldName = 'DETPRODQCOM'
    end
    object cds_detalheDETPRODVUNCOM: TFloatField
      FieldName = 'DETPRODVUNCOM'
      DisplayFormat = '#,##0.00'
    end
    object cds_detalhealiq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object cds_detalhealiq_issqn: TFloatField
      FieldName = 'aliq_issqn'
    end
    object cds_detalhepercipi: TFloatField
      FieldName = 'percipi'
    end
    object cds_detalheTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object cds_detalheDETINFADPROD: TMemoField
      FieldName = 'DETINFADPROD'
      BlobType = ftMemo
    end
    object cds_detalheCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cds_detalheORI_PROD: TStringField
      FieldName = 'ORI_PROD'
      Size = 1
    end
    object cds_detalheVDESC: TFloatField
      FieldName = 'VDESC'
    end
    object cds_detalheICMSVBC: TFloatField
      FieldName = 'ICMSVBC'
    end
    object cds_detalheDETPRODVPROD: TFloatField
      FieldName = 'DETPRODVPROD'
    end
    object cds_detalhebase_icms: TFloatField
      FieldName = 'base_icms'
    end
    object cds_detalhevalor_ipi: TFloatField
      FieldName = 'valor_ipi'
    end
    object cds_detalhevalor_icms: TFloatField
      FieldName = 'valor_icms'
    end
    object cds_detalheCSTB_CBENEF: TStringField
      FieldName = 'CSTB_CBENEF'
      Size = 14
    end
    object cds_detalheDETPRODVDESC: TFloatField
      FieldName = 'DETPRODVDESC'
    end
    object cds_detalhevalor_total_menos_desconto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_total_menos_desconto'
      Calculated = True
    end
  end
  object src_detalhe: TDataSource
    DataSet = cds_detalhe
    Left = 544
    Top = 8
  end
  object XMLDocument1: TXMLDocument
    Left = 624
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
  object opd1: TOpenDialog
    Left = 740
    Top = 32
  end
  object cds_vcto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 420
    Top = 32
    object cds_vctoVDATA: TDateTimeField
      FieldName = 'VDATA'
    end
    object cds_vctoVVALOR: TFloatField
      FieldName = 'VVALOR'
    end
    object cds_vctonumdup: TStringField
      FieldName = 'numdup'
      Size = 10
    end
  end
  object RLPDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 688
    Top = 80
  end
  object RLWord: TRLRichFilter
    DisplayName = 'Formato (word) RichText'
    Left = 720
    Top = 48
  end
  object cds_cce: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 16
    object cds_cceEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Size = 200
    end
    object cds_cceemitEndComp: TStringField
      FieldName = 'emitEndComp'
    end
    object cds_cceemitCidadeUF: TStringField
      FieldName = 'emitCidadeUF'
      Size = 100
    end
    object cds_cceemi_foneFax: TStringField
      FieldName = 'emi_foneFax'
      Size = 100
    end
    object cds_cceemit_CEP: TStringField
      FieldName = 'emit_CEP'
    end
    object cds_ccenum_prot: TStringField
      FieldName = 'num_prot'
    end
    object cds_ccechave_acesso: TStringField
      FieldName = 'chave_acesso'
      Size = 60
    end
    object cds_cceemit_ie: TStringField
      FieldName = 'emit_ie'
      Size = 50
    end
    object cds_cceemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
      Size = 26
    end
    object cds_ccemodnf: TStringField
      FieldName = 'modnf'
      Size = 2
    end
    object cds_ccesernf: TStringField
      FieldName = 'sernf'
      Size = 3
    end
    object cds_ccenumnf: TStringField
      FieldName = 'numnf'
    end
    object cds_ccemesano_emi: TStringField
      FieldName = 'mesano_emi'
      Size = 8
    end
    object cds_cceconduso: TStringField
      FieldName = 'conduso'
      Size = 5000
    end
    object cds_ccenomcli_codigo: TStringField
      FieldName = 'nomcli_codigo'
      Size = 100
    end
    object cds_ccefantasia: TStringField
      FieldName = 'fantasia'
      Size = 100
    end
    object cds_ccedest_cnpj: TStringField
      FieldName = 'dest_cnpj'
      Size = 30
    end
    object cds_ccedest_ender: TStringField
      FieldName = 'dest_ender'
      Size = 100
    end
    object cds_ccedest_bairro: TStringField
      FieldName = 'dest_bairro'
      Size = 60
    end
    object cds_ccedest_cep: TStringField
      FieldName = 'dest_cep'
      Size = 9
    end
    object cds_ccedest_cidade: TStringField
      FieldName = 'dest_cidade'
      Size = 100
    end
    object cds_ccedest_uf: TStringField
      FieldName = 'dest_uf'
      Size = 2
    end
    object cds_ccedest_fonefax: TStringField
      FieldName = 'dest_fonefax'
      Size = 40
    end
    object cds_ccedest_insc_estadual: TStringField
      FieldName = 'dest_insc_estadual'
      Size = 60
    end
    object cds_cceseq: TIntegerField
      FieldName = 'seq'
    end
    object cds_ccestat: TStringField
      FieldName = 'stat'
      Size = 3
    end
    object cds_ccecorrecao: TStringField
      FieldName = 'correcao'
      Size = 5000
    end
    object cds_ccechave_acesso_calc: TStringField
      FieldName = 'chave_acesso_calc'
      Size = 100
    end
  end
  object src_cce: TDataSource
    DataSet = cds_cce
    Left = 728
    Top = 16
  end
  object Query1: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select LSLOGO from CADLOGSIS')
    Left = 36
    Top = 272
    object Query1LSLOGO: TBlobField
      FieldName = 'LSLOGO'
    end
  end
  object cds_nfse_cab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 324
    Top = 56
    object cds_nfse_cabdadosprefl01: TStringField
      FieldName = 'dadosprefl01'
      Size = 100
    end
    object cds_nfse_cabdadosprefl02: TStringField
      FieldName = 'dadosprefl02'
      Size = 100
    end
    object cds_nfse_cabdadosprefl03: TStringField
      FieldName = 'dadosprefl03'
      Size = 100
    end
    object cds_nfse_cabdadosprefl04: TStringField
      FieldName = 'dadosprefl04'
      Size = 100
    end
    object cds_nfse_cabnumnfse: TIntegerField
      FieldName = 'numnfse'
    end
    object cds_nfse_cabdatemis: TDateTimeField
      FieldName = 'datemis'
    end
    object cds_nfse_cabcodverificacao: TStringField
      FieldName = 'codverificacao'
    end
    object cds_nfse_cabprest_cnpj: TStringField
      FieldName = 'prest_cnpj'
    end
    object cds_nfse_cabprest_razao: TStringField
      FieldName = 'prest_razao'
      Size = 100
    end
    object cds_nfse_cabprest_im: TStringField
      FieldName = 'prest_im'
    end
    object cds_nfse_cabprest_ender: TStringField
      FieldName = 'prest_ender'
      Size = 254
    end
    object cds_nfse_cabprest_bairro: TStringField
      FieldName = 'prest_bairro'
      Size = 100
    end
    object cds_nfse_cabprest_municipio: TStringField
      FieldName = 'prest_municipio'
      Size = 100
    end
    object cds_nfse_cabprest_uf: TStringField
      FieldName = 'prest_uf'
      Size = 2
    end
    object cds_nfse_cabprest_cep: TStringField
      FieldName = 'prest_cep'
      Size = 9
    end
    object cds_nfse_cabprest_fone: TStringField
      FieldName = 'prest_fone'
      Size = 30
    end
    object cds_nfse_cabtomador_razao: TStringField
      FieldName = 'tomador_razao'
      Size = 100
    end
    object cds_nfse_cabtomador_cnpj: TStringField
      FieldName = 'tomador_cnpj'
    end
    object cds_nfse_cabtomador_im: TStringField
      FieldName = 'tomador_im'
    end
    object cds_nfse_cabtomador_ender: TStringField
      FieldName = 'tomador_ender'
      Size = 100
    end
    object cds_nfse_cabtomador_bairro: TStringField
      FieldName = 'tomador_bairro'
      Size = 100
    end
    object cds_nfse_cabtomador_municipio: TStringField
      FieldName = 'tomador_municipio'
      Size = 100
    end
    object cds_nfse_cabtomador_uf: TStringField
      FieldName = 'tomador_uf'
      Size = 2
    end
    object cds_nfse_cabtomador_cep: TStringField
      FieldName = 'tomador_cep'
      Size = 9
    end
    object cds_nfse_cabprest_cnae: TStringField
      FieldName = 'prest_cnae'
      Size = 10
    end
    object cds_nfse_cabpis_valor: TFloatField
      FieldName = 'pis_valor'
    end
    object cds_nfse_cabcofins_valor: TFloatField
      FieldName = 'cofins_valor'
    end
    object cds_nfse_cabinss_valor: TFloatField
      FieldName = 'inss_valor'
    end
    object cds_nfse_cabir_valor: TFloatField
      FieldName = 'ir_valor'
    end
    object cds_nfse_cabcsll_valor: TFloatField
      FieldName = 'csll_valor'
    end
    object cds_nfse_cabtotal_servicos: TFloatField
      FieldName = 'total_servicos'
    end
    object cds_nfse_cabtotal_desc_incondicionado: TFloatField
      FieldName = 'total_desc_incondicionado'
    end
    object cds_nfse_cabtotal_retencoes_federais: TFloatField
      FieldName = 'total_retencoes_federais'
    end
    object cds_nfse_cabtotal_liquido: TFloatField
      FieldName = 'total_liquido'
    end
    object cds_nfse_cabtotal_deducoes: TFloatField
      FieldName = 'total_deducoes'
    end
    object cds_nfse_cabtotal_base_calculo: TFloatField
      FieldName = 'total_base_calculo'
    end
    object cds_nfse_cabissqn_aliquota: TFloatField
      FieldName = 'issqn_aliquota'
    end
    object cds_nfse_cabissqn_valor: TFloatField
      FieldName = 'issqn_valor'
    end
    object cds_nfse_cabinfimp_linha01: TStringField
      FieldName = 'infimp_linha01'
      Size = 150
    end
    object cds_nfse_cabinfimp_linha02: TStringField
      FieldName = 'infimp_linha02'
      Size = 150
    end
    object cds_nfse_cabprest_mun_uf_cep_fone: TStringField
      FieldName = 'prest_mun_uf_cep_fone'
      Size = 254
    end
    object cds_nfse_cabprest_cnae_descricao: TStringField
      FieldName = 'prest_cnae_descricao'
      Size = 254
    end
    object cds_nfse_cabpis_valor_texto: TStringField
      FieldName = 'pis_valor_texto'
    end
    object cds_nfse_cabcofins_valor_texto: TStringField
      FieldName = 'cofins_valor_texto'
    end
    object cds_nfse_cabinss_valor_texto: TStringField
      FieldName = 'inss_valor_texto'
    end
    object cds_nfse_cabir_valor_texto: TStringField
      FieldName = 'ir_valor_texto'
    end
    object cds_nfse_cabcsll_valor_texto: TStringField
      FieldName = 'csll_valor_texto'
    end
    object cds_nfse_cabsimbolo_moeda: TStringField
      FieldName = 'simbolo_moeda'
      Size = 3
    end
    object cds_nfse_cabtotal_issqn_retido_tomador: TFloatField
      FieldName = 'total_issqn_retido_tomador'
    end
    object cds_nfse_cablocal_servico_prestado: TStringField
      FieldName = 'local_servico_prestado'
      Size = 100
    end
    object cds_nfse_cablocal_imposto_devico: TStringField
      FieldName = 'local_imposto_devico'
      Size = 100
    end
    object cds_nfse_cabserv_prestado_codigo_municipio: TStringField
      FieldName = 'serv_prestado_codigo_municipio'
      Size = 7
    end
    object cds_nfse_cabimposto_devido_codigo_municipio: TStringField
      FieldName = 'imposto_devido_codigo_municipio'
      Size = 7
    end
    object cds_nfse_cabtomador_num_uf_cep_fone: TStringField
      FieldName = 'tomador_num_uf_cep_fone'
      Size = 254
    end
    object cds_nfse_cabOptanteSimplesNacional: TIntegerField
      FieldName = 'OptanteSimplesNacional'
    end
    object cds_nfse_cabinfadicionais: TMemoField
      FieldName = 'infadicionais'
      BlobType = ftMemo
    end
    object cds_nfse_cabnumrps: TFloatField
      FieldName = 'numrps'
    end
    object cds_nfse_cabInformacoesComplementares: TMemoField
      FieldName = 'InformacoesComplementares'
      BlobType = ftMemo
    end
    object cds_nfse_cabqrCode: TStringField
      FieldName = 'qrCode'
      Size = 3000
    end
  end
  object cds_nfse_det: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 372
    Top = 56
    object cds_nfse_detitem: TStringField
      FieldName = 'item'
      Size = 3
    end
    object cds_nfse_detdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
  end
  object src_nfse_cab: TDataSource
    DataSet = cds_nfse_cab
    Left = 330
    Top = 22
  end
  object src_nfse_det: TDataSource
    DataSet = cds_nfse_det
    Left = 410
    Top = 54
  end
end
