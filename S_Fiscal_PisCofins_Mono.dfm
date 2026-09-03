object Frm_Fiscal_PisCofins_Mono: TFrm_Fiscal_PisCofins_Mono
  Left = 272
  Top = 64
  Width = 702
  Height = 327
  Caption = 'Relatorio de Pis/Cofins Monofasicos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 296
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object Label2: TLabel
        Left = 360
        Top = 8
        Width = 63
        Height = 13
        Caption = 'Data Final:'
      end
      object Label1: TLabel
        Left = 40
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label3: TLabel
        Left = 40
        Top = 128
        Width = 79
        Height = 13
        Caption = 'Chave Inicial:'
      end
      object Label4: TLabel
        Left = 360
        Top = 120
        Width = 72
        Height = 13
        Caption = 'Chave Final:'
      end
      object cb_analitico: TCheckBox
        Left = 43
        Top = 88
        Width = 241
        Height = 17
        Caption = 'Relatorio analitico'
        TabOrder = 3
      end
      object rg_monofasica: TRadioGroup
        Left = 40
        Top = 32
        Width = 529
        Height = 47
        Caption = 'Produtos com Tributa'#231#227'o:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Monofasica'
          'Outros')
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
      object edt_datfin: TDateEdit
        Left = 443
        Top = 5
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object edt_datini: TDateEdit
        Left = 115
        Top = 5
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object bbImprimir: TBitBtn
        Left = 37
        Top = 193
        Width = 150
        Height = 21
        Cursor = crHandPoint
        Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
        Left = 421
        Top = 194
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
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
      object edt_chave_ini: TEdit
        Left = 124
        Top = 123
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = edt_chave_iniExit
      end
      object edt_chave_fin: TEdit
        Left = 444
        Top = 115
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = edt_chave_finExit
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 24
        Top = 32
        Width = 1123
        Height = 794
        DataSource = src_PisCofins
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        BeforePrint = RLReport1BeforePrint
        object rlcabger: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 46
          BandType = btHeader
          object rlcabger_empresa: TRLLabel
            Left = 0
            Top = 0
            Width = 107
            Height = 16
            Align = faLeftTop
          end
          object rlcabger_data: TRLLabel
            Left = 944
            Top = 0
            Width = 103
            Height = 16
            Align = faRightTop
            Caption = 'Data: 15/05/2013'
          end
          object rlcabger_nomrel: TRLLabel
            Left = 0
            Top = 16
            Width = 96
            Height = 16
          end
          object rlcabger_periodo: TRLLabel
            Left = 291
            Top = 20
            Width = 390
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Periodo de 10/09/2013 a 30/06/2013'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 907
            Top = 17
            Width = 83
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 992
            Top = 17
            Width = 51
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object rlcabdet: TRLBand
          Left = 38
          Top = 84
          Width = 1047
          Height = 33
          BandType = btHeader
          object rlcabdet_numnf: TRLLabel
            Left = 5
            Top = 17
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Num .NF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_serie: TRLLabel
            Left = 59
            Top = 17
            Width = 30
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'S'#233'rie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_dtnf: TRLLabel
            Left = 91
            Top = 17
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dt.Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_cnpj: TRLLabel
            Left = 147
            Top = 17
            Width = 88
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'CNPJ/CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_razsoc: TRLLabel
            Left = 235
            Top = 17
            Width = 164
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Raz'#227'o Social'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_vlrnf: TRLLabel
            Left = 400
            Top = 17
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vlr. Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_totmono: TRLLabel
            Left = 465
            Top = 16
            Width = 130
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Monofasicos'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlcabdet_outros: TRLLabel
            Left = 594
            Top = 16
            Width = 128
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Outros'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlcabdet_servicos: TRLLabel
            Left = 464
            Top = 1
            Width = 260
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Totais invididuais'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlcabdet_mer_isento: TRLLabel
            Left = 724
            Top = 16
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Isento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_stipi: TRLLabel
            Left = 788
            Top = 16
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'ST + IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_mer_tributados: TRLLabel
            Left = 852
            Top = 16
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tributados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_mer_vlrpis: TRLLabel
            Left = 916
            Top = 16
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor PIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_mer_vlrcofins: TRLLabel
            Left = 980
            Top = 16
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vlr Cofins'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_mercadorias: TRLLabel
            Left = 725
            Top = 2
            Width = 320
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'MERCADORIAS'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object rldet: TRLBand
          Left = 38
          Top = 117
          Width = 1047
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = rldetBeforePrint
          object rldet_numnf: TRLDBText
            Left = 5
            Top = 0
            Width = 54
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1NUMNF'
            DataSource = src_PisCofins
            Holder = rlcabdet_numnf
            Layout = tlCenter
          end
          object rldet_serie: TRLDBText
            Left = 59
            Top = 0
            Width = 30
            Height = 16
            AutoSize = False
            DataField = 'P1SERIE'
            DataSource = src_PisCofins
            Holder = rlcabdet_serie
            Layout = tlCenter
          end
          object rldet_dtnf: TRLDBText
            Left = 91
            Top = 0
            Width = 54
            Height = 18
            AutoSize = False
            DataField = 'P1DATANF'
            DataSource = src_PisCofins
            Holder = rlcabdet_dtnf
            Layout = tlCenter
          end
          object rldet_cnpj: TRLDBText
            Left = 147
            Top = 0
            Width = 88
            Height = 18
            AutoSize = False
            DataField = 'CNPJ_CLI'
            DataSource = src_PisCofins
            Holder = rlcabdet_cnpj
            Layout = tlCenter
          end
          object rldet_razsoc: TRLDBText
            Left = 235
            Top = 0
            Width = 164
            Height = 18
            AutoSize = False
            DataField = 'RAZSOC'
            DataSource = src_PisCofins
            Holder = rlcabdet_razsoc
            Layout = tlCenter
          end
          object rldet_vlrnf: TRLDBText
            Left = 400
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTLIQ'
            DataSource = src_PisCofins
            Holder = rlcabdet_vlrnf
            Layout = tlCenter
          end
          object rldet_totmono: TRLDBText
            Left = 465
            Top = 0
            Width = 130
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Color = clSilver
            DataField = 'VLR_MONO'
            DataSource = src_PisCofins
            Holder = rlcabdet_totmono
            Layout = tlCenter
            ParentColor = False
            Transparent = False
          end
          object rldet_outros: TRLDBText
            Left = 594
            Top = 0
            Width = 128
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Color = clSilver
            DataField = 'VLR_OUTROS'
            DataSource = src_PisCofins
            Holder = rlcabdet_outros
            Layout = tlCenter
            ParentColor = False
            Transparent = False
          end
          object rldet_mer_isento: TRLDBText
            Left = 724
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_ISENTO'
            DataSource = src_PisCofins
            Holder = rlcabdet_mer_isento
            Layout = tlCenter
          end
          object rldet_stipi: TRLDBText
            Left = 788
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_ICMSST'
            DataSource = src_PisCofins
            Holder = rlcabdet_stipi
            Layout = tlCenter
          end
          object rldet_mer_tributados: TRLDBText
            Left = 852
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BC_ICMS'
            DataSource = src_PisCofins
            Holder = rlcabdet_mer_tributados
            Layout = tlCenter
          end
          object rldet_mer_vlrpis: TRLDBText
            Left = 916
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_PIS'
            DataSource = src_PisCofins
            Holder = rlcabdet_mer_vlrpis
            Layout = tlCenter
          end
          object rldet_mer_vlrcofins: TRLDBText
            Left = 980
            Top = 0
            Width = 64
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_COFINS'
            DataSource = src_PisCofins
            Holder = rlcabdet_mer_vlrcofins
            Layout = tlCenter
          end
        end
        object rlsd_mercadorias: TRLSubDetail
          Left = 38
          Top = 137
          Width = 1047
          Height = 50
          DataSource = Src_Ped02_Merc
          object rlsd_cab: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 33
            BandType = btHeader
            object rlsd_cabmer: TRLLabel
              Left = 0
              Top = 0
              Width = 1047
              Height = 16
              Align = faTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'MERCADORIAS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlsd_cabCodPro: TRLLabel
              Left = 5
              Top = 16
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabQtd: TRLLabel
              Left = 60
              Top = 16
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabUnd: TRLLabel
              Left = 115
              Top = 16
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabNomPro: TRLLabel
              Left = 156
              Top = 16
              Width = 308
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o da Mercadoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabPU: TRLLabel
              Left = 465
              Top = 16
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pre'#231'o Unitario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabDesc: TRLLabel
              Left = 530
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabOutVal: TRLLabel
              Left = 594
              Top = 16
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'ST+IPI+FR+OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabTotLiq: TRLLabel
              Left = 659
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Total Liquido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabIsento: TRLLabel
              Left = 724
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Isento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdet_mer_isento
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabSTIPI: TRLLabel
              Left = 788
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'ST+IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdet_stipi
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabBCIcms: TRLLabel
              Left = 852
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'BC_ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdet_mer_tributados
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabValPis: TRLLabel
              Left = 916
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'VLR_PIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdet_mer_vlrpis
              Layout = tlCenter
              ParentFont = False
            end
            object rlsd_cabValCof: TRLLabel
              Left = 980
              Top = 16
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vlr Cofins'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabdet_mer_vlrcofins
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 33
            Width = 1047
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object rlsd_detCodPro: TRLDBText
              Left = 5
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabCodPro
              Layout = tlCenter
            end
            object rlsd_detQtd: TRLDBText
              Left = 60
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTD'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabQtd
              Layout = tlCenter
            end
            object rlsd_detUnd: TRLDBText
              Left = 115
              Top = 0
              Width = 40
              Height = 16
              AutoSize = False
              DataField = 'PDUND'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabUnd
              Layout = tlCenter
            end
            object rlsd_detNomPro: TRLDBText
              Left = 156
              Top = 0
              Width = 308
              Height = 16
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabNomPro
              Layout = tlCenter
            end
            object rlsd_detPU: TRLDBText
              Left = 465
              Top = 0
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2PRECO'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabPU
              Layout = tlCenter
            end
            object rlsd_detDesc: TRLDBText
              Left = 530
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2TOTDES'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabDesc
              Layout = tlCenter
            end
            object rlsd_detOutVal: TRLDBText
              Left = 594
              Top = 0
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTOUTACRE'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabOutVal
              Layout = tlCenter
            end
            object rlsd_detTotLiq: TRLDBText
              Left = 659
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTLIQ'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabTotLiq
              Layout = tlCenter
            end
            object rlsd_detIsento: TRLDBText
              Left = 724
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2ISENTAS'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabIsento
              Layout = tlCenter
            end
            object rlsd_detSTIPI: TRLDBText
              Left = 788
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'STIPI'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabSTIPI
              Layout = tlCenter
            end
            object rlsd_detBCIcms: TRLDBText
              Left = 852
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2BASEN'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabBCIcms
              Layout = tlCenter
            end
            object rlsd_detValPis: TRLDBText
              Left = 916
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2VALPIS'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabValPis
              Layout = tlCenter
            end
            object rlsd_detValCof: TRLDBText
              Left = 980
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2COFINS'
              DataSource = Src_Ped02_Merc
              Holder = rlsd_cabValCof
              Layout = tlCenter
            end
          end
        end
        object RLSum: TRLBand
          Left = 38
          Top = 187
          Width = 1047
          Height = 17
          BandType = btSummary
          BeforePrint = RLSumBeforePrint
          object rlsum_numnf: TRLLabel
            Left = 5
            Top = 0
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_numnf
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_serie: TRLLabel
            Left = 59
            Top = 0
            Width = 30
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_serie
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_dtnf: TRLLabel
            Left = 91
            Top = 0
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_dtnf
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_cnpj: TRLLabel
            Left = 147
            Top = 0
            Width = 88
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_cnpj
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_razsoc: TRLLabel
            Left = 235
            Top = 0
            Width = 164
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_razsoc
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_vlrnf: TRLLabel
            Left = 400
            Top = 0
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_vlrnf
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_totmono: TRLLabel
            Left = 465
            Top = 0
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_totmono
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlsum_outros: TRLLabel
            Left = 594
            Top = 0
            Width = 128
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_outros
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rlsum_mer_isento: TRLLabel
            Left = 724
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_mer_isento
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_stipi: TRLLabel
            Left = 788
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_stipi
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_mer_tributados: TRLLabel
            Left = 852
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_mer_tributados
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_mer_vlrpis: TRLLabel
            Left = 916
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_mer_vlrpis
            Layout = tlCenter
            ParentFont = False
          end
          object rlsum_mer_vlrcofins: TRLLabel
            Left = 980
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_mer_vlrcofins
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
  end
  object Qr_PisCofins: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P1CHAVE,P1LOTSEQ,P1CODEMP,'#39'NF-'#39' || TO_CHAR(P1NUMNF) AS P1' +
        'NUMNF,P1SERIE,P1DATANF'
      ',NVL(CFRAZAO,CRAZAO) AS RAZSOC'
      ',NVL(CFCGC,CCPF) AS CPF_CLI'
      ',NVL(CFCGC,CCNPJ) AS CNPJ_CLI'
      ',sum(P2ICMSN) AS VLR_ICMS'
      ',SUM(P2BASER) AS BC_ICMSST,SUM(P2ICMSR) AS VLR_ICMSST'
      ',SUM(P2BASEN) AS BC_ICMS'
      ',SUM(P2ISENTAS) AS VLR_ISENTO'
      ',SUM(P2TOTLIQ) AS TOTLIQ'
      ',SUM(P2TOTOUT) AS VLR_REDUCAO'
      ',SUM(P2COFINS) AS VLR_COFINS'
      ',SUM(P2VLRICMS_SN) AS VLR_ICMS_SN'
      ',SUM(P2VALPIS) AS VLR_PIS'
      ',0 as ser_vlr_isento'
      ',0 as ser_vlr_trib'
      ',0 as ser_vlr_pis'
      ',0 as ser_vlr_cofins'
      ',0 as vlr_mono'
      ',0 as vlr_outros'
      'FROM CADP01,CADP02,CADCLI,CADCSF'
      
        'WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2CODEMP=P1CODEM' +
        'P '
      'AND CCODCLI=P1CODCLI'
      
        'AND CFCODEMP(+)=P1CODEMP AND CFLOTSEQ(+)=P1LOTSEQ AND CFCHAVEP(+' +
        ')=P1CHAVE'
      ''
      'GROUP BY '
      ' P1CHAVE,P1LOTSEQ,P1CODEMP,P1NUMNF,P1SERIE,P1DATANF'
      ',NVL(CFRAZAO,CRAZAO) '
      ',NVL(CFCGC,CCPF) '
      ',NVL(CFCGC,CCNPJ)')
    Left = 148
    Top = 176
    object Qr_PisCofinsP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object Qr_PisCofinsP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
    end
    object Qr_PisCofinsP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object Qr_PisCofinsP1SERIE: TStringField
      FieldName = 'P1SERIE'
      Size = 3
    end
    object Qr_PisCofinsP1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
    end
    object Qr_PisCofinsRAZSOC: TStringField
      FieldName = 'RAZSOC'
      Size = 60
    end
    object Qr_PisCofinsCPF_CLI: TFloatField
      FieldName = 'CPF_CLI'
    end
    object Qr_PisCofinsCNPJ_CLI: TFloatField
      FieldName = 'CNPJ_CLI'
    end
    object Qr_PisCofinsVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object Qr_PisCofinsBC_ICMSST: TFloatField
      FieldName = 'BC_ICMSST'
    end
    object Qr_PisCofinsVLR_ICMSST: TFloatField
      FieldName = 'VLR_ICMSST'
    end
    object Qr_PisCofinsVLR_ISENTO: TFloatField
      FieldName = 'VLR_ISENTO'
    end
    object Qr_PisCofinsTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object Qr_PisCofinsVLR_REDUCAO: TFloatField
      FieldName = 'VLR_REDUCAO'
    end
    object Qr_PisCofinsVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object Qr_PisCofinsVLR_ICMS_SN: TFloatField
      FieldName = 'VLR_ICMS_SN'
    end
    object Qr_PisCofinsVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object Qr_PisCofinsSER_VLR_ISENTO: TFloatField
      FieldName = 'SER_VLR_ISENTO'
    end
    object Qr_PisCofinsSER_VLR_TRIB: TFloatField
      FieldName = 'SER_VLR_TRIB'
    end
    object Qr_PisCofinsSER_VLR_PIS: TFloatField
      FieldName = 'SER_VLR_PIS'
    end
    object Qr_PisCofinsSER_VLR_COFINS: TFloatField
      FieldName = 'SER_VLR_COFINS'
    end
    object Qr_PisCofinsBC_ICMS: TFloatField
      FieldName = 'BC_ICMS'
    end
    object Qr_PisCofinsP1NUMNF: TStringField
      FieldName = 'P1NUMNF'
      Size = 43
    end
    object Qr_PisCofinsVLR_MONO: TFloatField
      FieldName = 'VLR_MONO'
    end
    object Qr_PisCofinsVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
  end
  object src_PisCofins: TDataSource
    DataSet = Qr_PisCofins
    Left = 188
    Top = 168
  end
  object Qr_Ped02_Merc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P2CODPRO,P2ITEM,P2QTD'
      ',PDUND,PDNOME,P2PRECO,P2TOTDES'
      
        ',P2ICMSR+P2VALIPI+P2ACRERAT+P2VSEGRAT+P2VFRERAT+P2VDESPACESRAT A' +
        'S TOTOUTACRE'
      
        ',P2TOTLIQ+P2ICMSR+P2VALIPI+P2ACRERAT+P2VSEGRAT+P2VFRERAT+P2VDESP' +
        'ACESRAT AS TOTLIQ'
      ',P2ISENTAS'
      ',P2ICMSR+P2VALIPI AS STIPI'
      ',P2BASEN'
      ',P2VALPIS'
      ',P2COFINS'
      ',P2CST_PIS'
      'FROM CADP02,CADPRO'
      'WHERE PDCODPRO=P2CODPRO'
      '')
    Left = 260
    Top = 168
    object Qr_Ped02_MercP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped02_MercP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_Ped02_MercP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped02_MercPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02_MercPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr_Ped02_MercP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_Ped02_MercP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_Ped02_MercTOTOUTACRE: TFloatField
      FieldName = 'TOTOUTACRE'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_Ped02_MercTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_Ped02_MercP2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Qr_Ped02_MercSTIPI: TFloatField
      FieldName = 'STIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_Ped02_MercP2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_Ped02_MercP2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Qr_Ped02_MercP2COFINS: TFloatField
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
  end
  object Src_Ped02_Merc: TDataSource
    DataSet = Qr_Ped02_Merc
    Left = 284
    Top = 160
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 324
    Top = 144
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato (Word) RichText'
    Left = 280
    Top = 24
  end
end
