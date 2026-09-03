object Frm_Relatorios: TFrm_Relatorios
  Left = 77
  Top = 119
  Width = 864
  Height = 480
  Caption = 'Frm_Relatorios'
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
    Width = 856
    Height = 449
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Vale de Mercadorias(convenio)'
      object rlPedido: TRLReport
        Left = -2
        Top = -77
        Width = 794
        Height = 1123
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlPedidoBeforePrint
        object rl_cablogo: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 116
          BandType = btHeader
          object RLImage_cab: TRLImage
            Left = 0
            Top = 0
            Width = 302
            Height = 115
            Stretch = True
          end
          object rldb_razao: TRLDBText
            Left = 303
            Top = 0
            Width = 414
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cnpj_ie: TRLMemo
            Left = 303
            Top = 21
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rldb_ender: TRLDBMemo
            Left = 303
            Top = 34
            Width = 414
            Height = 32
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rlcab_fonefax: TRLMemo
            Left = 303
            Top = 67
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rlcab_email: TRLMemo
            Left = 303
            Top = 83
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rl_cabhome: TRLMemo
            Left = 303
            Top = 99
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
        end
        object rl_cabtit: TRLBand
          Left = 38
          Top = 154
          Width = 718
          Height = 33
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BeforePrint = rl_cabtitBeforePrint
          object lblObs: TRLLabel
            Left = 2
            Top = 0
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'COMPROVANTE DE CONVENIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabchave: TRLLabel
            Left = 488
            Top = 0
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLcabcli: TRLBand
          Left = 38
          Top = 187
          Width = 718
          Height = 112
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLcabcliBeforePrint
          object lbl_cabcli: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente..........'
          end
          object RLDBText4: TRLDBText
            Left = 77
            Top = 3
            Width = 341
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadcnpj: TRLLabel
            Left = 2
            Top = 54
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ....'
          end
          object db_cnpj: TRLDBText
            Left = 77
            Top = 54
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_fantasia: TRLLabel
            Left = 437
            Top = 3
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Fantasia...'
          end
          object db_fantasia: TRLDBText
            Left = 505
            Top = 2
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadend: TRLLabel
            Left = 2
            Top = 21
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object db_ender: TRLDBText
            Left = 77
            Top = 20
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_bairro: TRLLabel
            Left = 437
            Top = 19
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object db_bairro: TRLDBText
            Left = 505
            Top = 19
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadloc: TRLLabel
            Left = 2
            Top = 36
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade..............'
          end
          object db_cidade: TRLDBText
            Left = 77
            Top = 38
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_uf: TRLLabel
            Left = 438
            Top = 39
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object db_uf: TRLDBText
            Left = 469
            Top = 40
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cep: TRLLabel
            Left = 505
            Top = 37
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object db_cep: TRLDBText
            Left = 575
            Top = 37
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_ie: TRLDBText
            Left = 505
            Top = 54
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_ie: TRLLabel
            Left = 437
            Top = 54
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object db_nomcon: TRLDBText
            Left = 77
            Top = 73
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabcont: TRLLabel
            Left = 2
            Top = 73
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato........'
          end
          object db_fonecon: TRLDBText
            Left = 337
            Top = 73
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_fone01: TRLDBText
            Left = 505
            Top = 73
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_datped: TRLLabel
            Left = 439
            Top = 90
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'Data.....'
          end
          object db_datped: TRLDBText
            Left = 507
            Top = 90
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_pag: TRLLabel
            Left = 625
            Top = 89
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object db_barpag: TRLLabel
            Left = 677
            Top = 89
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object db_pag: TRLSystemInfo
            Left = 658
            Top = 90
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object db_qtdpag: TRLSystemInfo
            Left = 685
            Top = 90
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object db_fone: TRLLabel
            Left = 297
            Top = 73
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLLabel14: TRLLabel
            Left = 2
            Top = 90
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Convenio....'
          end
          object RLDBText9: TRLDBText
            Left = 77
            Top = 89
            Width = 48
            Height = 16
            AutoSize = False
            DataField = 'P1CODCV'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 128
            Top = 90
            Width = 302
            Height = 16
            AutoSize = False
            DataField = 'nomcon'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 299
          Width = 718
          Height = 128
          DataSource = DM2.Src_Cor
          object RLGroup1: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 51
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'GRUPO'
            object rl_cabitens: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLcabCodpro: TRLLabel
                Left = 1
                Top = 0
                Width = 64
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabQtd: TRLLabel
                Left = 65
                Top = 0
                Width = 50
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabUnd: TRLLabel
                Left = 117
                Top = 0
                Width = 26
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Und'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabNome: TRLLabel
                Left = 144
                Top = 0
                Width = 306
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabMarca: TRLLabel
                Left = 451
                Top = 0
                Width = 112
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Marca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabPU: TRLLabel
                Left = 563
                Top = 0
                Width = 74
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabTotal: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_cabamb: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object db_cabamb: TRLDBText
                Left = 0
                Top = 0
                Width = 718
                Height = 15
                Align = faTop
                Alignment = taCenter
                DataField = 'GRUPO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_detitens: TRLBand
              Left = 0
              Top = 35
              Width = 718
              Height = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = rl_detitensBeforePrint
              object RLCodPro: TRLDBText
                Left = 1
                Top = 0
                Width = 64
                Height = 13
                AutoSize = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLQtd: TRLDBText
                Left = 65
                Top = 0
                Width = 50
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLUnd: TRLDBText
                Left = 117
                Top = 0
                Width = 26
                Height = 13
                AutoSize = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLMarca: TRLDBText
                Left = 451
                Top = 0
                Width = 111
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLPU: TRLDBText
                Left = 563
                Top = 0
                Width = 74
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2PRECO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLTotal: TRLDBText
                Left = 637
                Top = 0
                Width = 78
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object rlnome: TRLMemo
                Left = 144
                Top = 0
                Width = 306
                Height = 13
                Holder = RLCabNome
              end
            end
          end
          object rl_totbruger: TRLBand
            Left = 0
            Top = 51
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totbrugerBeforePrint
            object lbl_totbruger: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral Bruto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totbruger: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object rl_totdesger: TRLBand
            Left = 0
            Top = 68
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totdesgerBeforePrint
            object lbl_totdesger: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral dos Descontos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totdesger: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object rl_totliqger: TRLBand
            Left = 0
            Top = 85
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totliqgerBeforePrint
            object lbl_totliqger: TRLLabel
              Left = 192
              Top = 0
              Width = 444
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral Liquido:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totliqger: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lbl_totqtd: TRLLabel
              Left = 0
              Top = 0
              Width = 160
              Height = 16
              AutoSize = False
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 38
          Top = 495
          Width = 718
          Height = 46
          DataSource = DM1.Src_Ped01V
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            ColCount = 5
            object RLDBText7: TRLDBText
              Left = 5
              Top = 1
              Width = 55
              Height = 12
              AutoSize = False
              DataField = 'P1VDATAV'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText8: TRLDBText
              Left = 63
              Top = 1
              Width = 62
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'P1VVALOR'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel12: TRLLabel
              Left = 3
              Top = 0
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Vencimentos e Valores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object rl_rodOrcCiente: TRLBand
          Left = 38
          Top = 710
          Width = 718
          Height = 123
          BandType = btSummary
          object RLLabel4: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText3: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 404
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel6: TRLLabel
            Left = 403
            Top = 68
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel7: TRLLabel
            Left = 403
            Top = 86
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel8: TRLLabel
            Left = 487
            Top = 86
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel9: TRLLabel
            Left = 402
            Top = 105
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object lbl_nomcli: TRLLabel
            Left = 400
            Top = 40
            Width = 316
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rl_RodOrcObs: TRLBand
          Left = 38
          Top = 541
          Width = 718
          Height = 135
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Visible = False
          object dbObsLinha03: TRLDBText
            Left = 53
            Top = 94
            Width = 649
            Height = 16
            AutoSize = False
            DataField = 'P1OBS3'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Holder = dbObsLinha01
            ParentFont = False
          end
          object dbprazos: TRLDBText
            Left = 141
            Top = 6
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'prazos'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_formapag: TRLDBText
            Left = 141
            Top = 24
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'formpag'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblFormaPgto: TRLLabel
            Left = 2
            Top = 24
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object dbObsLinha02: TRLDBText
            Left = 53
            Top = 79
            Width = 649
            Height = 16
            AutoSize = False
            DataField = 'P1OBS2'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Holder = dbObsLinha01
            ParentFont = False
          end
          object dbObsLinha01: TRLDBText
            Left = 53
            Top = 62
            Width = 649
            Height = 16
            AutoSize = False
            DataField = 'P1OBS1'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 4
            Top = 61
            Width = 48
            Height = 16
            AutoSize = False
            Caption = 'Obs.:'
          end
          object RLLabel10: TRLLabel
            Left = 4
            Top = 43
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
          end
          object RLDBText6: TRLDBText
            Left = 141
            Top = 44
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'nometra'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 53
            Top = 112
            Width = 650
            Height = 16
            DataField = 'P1ORC_OBSERV'
            DataSource = DM2.Src_Cab
          end
        end
        object rl_obs01: TRLBand
          Left = 38
          Top = 676
          Width = 718
          Height = 34
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          object txt_obs01: TRLRichText
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            IntegralHeight = True
            ParentFont = False
          end
          object obs_extra: TRLMemo
            Left = 0
            Top = 18
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 833
          Width = 718
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSystemInfo2: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object banner: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3_Servicos: TRLSubDetail
          Left = 38
          Top = 427
          Width = 718
          Height = 68
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = 16767411
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 19
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_codser: TRLLabel
              Left = 1
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_qtdser: TRLLabel
              Left = 65
              Top = 0
              Width = 72
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_nomser: TRLLabel
              Left = 144
              Top = 0
              Width = 416
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CARACTER'#205'STICAS DO SERVI'#199'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_pcouniser: TRLLabel
              Left = 563
              Top = 0
              Width = 74
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_vtserv: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand_detser: TRLBand
            Left = 0
            Top = 19
            Width = 718
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand_detserBeforePrint
            object edt_codser: TRLDBText
              Left = 1
              Top = 0
              Width = 64
              Height = 13
              AutoSize = False
              DataField = 'P2SCODPRO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_codser
              ParentFont = False
              SecondHolder = edt_nomser
              SecondHoldStyle = hsCopyHeight
            end
            object edt_qtdser: TRLDBText
              Left = 65
              Top = 0
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SQTD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_qtdser
              ParentFont = False
              SecondHolder = edt_nomser
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText12: TRLDBText
              Left = 451
              Top = 0
              Width = 111
              Height = 13
              AutoSize = False
              DataField = 'PDMARCA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = edt_nomser
              SecondHoldStyle = hsCopyHeight
            end
            object edt_pcouniser: TRLDBText
              Left = 563
              Top = 0
              Width = 74
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2SPRECO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_pcouniser
              ParentFont = False
              SecondHolder = edt_nomser
              SecondHoldStyle = hsCopyHeight
            end
            object edt_vtserv: TRLDBText
              Left = 637
              Top = 0
              Width = 78
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_vtserv
              ParentFont = False
              SecondHolder = edt_nomser
              SecondHoldStyle = hsCopyHeight
            end
            object edt_nomser: TRLMemo
              Left = 144
              Top = 0
              Width = 416
              Height = 13
              Holder = lbl_nomser
            end
          end
          object RLBand_serrod: TRLBand
            Left = 0
            Top = 33
            Width = 718
            Height = 17
            BandType = btSummary
            object RLLabel13: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total dos Servi'#231'os:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totserliq: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
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
    object TabSheet2: TTabSheet
      Caption = 'diversos'
      ImageIndex = 1
      object RichEdit1: TRichEdit
        Left = 80
        Top = 200
        Width = 185
        Height = 89
        Lines.Strings = (
          'RichEdit1')
        TabOrder = 0
        Visible = False
      end
    end
  end
end
