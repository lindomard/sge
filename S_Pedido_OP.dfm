object Frm_Pedido_OP: TFrm_Pedido_OP
  Left = 54
  Top = 114
  Width = 1033
  Height = 624
  VertScrollBar.Position = 79
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatorios Relacionados a Industria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = -79
    Width = 1000
    Height = 665
    ActivePage = TsModelo04
    Align = alTop
    TabOrder = 0
    object TsModelo01: TTabSheet
      Caption = 'Modelo 01'
      object rlPedido_OPMod01: TRLReport
        Left = 0
        Top = 96
        Width = 794
        Height = 1123
        DataSource = Src_Ped02_MP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object rlmod01_cab_Matricial: TRLBand
          Left = 38
          Top = 307
          Width = 718
          Height = 45
          BandType = btColumnHeader
          Visible = False
          object RLSystemInfo1: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLDBText1: TRLDBText
            Left = 98
            Top = 2
            Width = 528
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLLabel1: TRLLabel
            Left = 2
            Top = 21
            Width = 351
            Height = 16
            Caption = 'Relat'#243'rio de Produtos e Suas Respectivas Mat'#233'rias Primas.'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 610
            Top = 21
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 680
            Top = 21
            Width = 70
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLGroup_gruposProd: TRLGroup
          Left = 38
          Top = 352
          Width = 718
          Height = 64
          DataFields = 'PDNOME_PA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object rlcabgru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLDBText2: TRLDBText
              Left = 74
              Top = -1
              Width = 307
              Height = 16
              AutoSize = False
              DataField = 'PDNOME_PA'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText3: TRLDBText
              Left = 2
              Top = -1
              Width = 70
              Height = 16
              AutoSize = False
              DataField = 'P2MP_CODPRO_ORI'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 530
              Top = 0
              Width = 73
              Height = 16
              AutoSize = False
              DataField = 'P2MP_QTD_ORI'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 383
              Top = 0
              Width = 67
              Height = 16
              AutoSize = False
              DataField = 'P2MP_LOTE'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel6: TRLLabel
              Left = 454
              Top = 1
              Width = 74
              Height = 14
              Caption = 'Qtd.Previsto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel7: TRLLabel
              Left = 605
              Top = 1
              Width = 58
              Height = 14
              Caption = 'Realizado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlDetalhe: TRLBand
            Left = 0
            Top = 29
            Width = 718
            Height = 13
            object txt_nomemp: TRLDBText
              Left = 80
              Top = 0
              Width = 298
              Height = 12
              AutoSize = False
              DataField = 'nomemp_completa'
              DataSource = Src_Ped02_MP
              Holder = lbl_nomemp
              Layout = tlCenter
            end
            object txt_quant: TRLDBText
              Left = 434
              Top = 0
              Width = 78
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_qtd_entregue'
              DataSource = Src_Ped02_MP
              Holder = lbl_quant
              Layout = tlCenter
            end
            object txt_sobra: TRLDBText
              Left = 512
              Top = 0
              Width = 74
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'retorno_calc'
              DataSource = Src_Ped02_MP
              Holder = lbl_sobra
              Layout = tlCenter
            end
            object txt_perdas: TRLDBText
              Left = 585
              Top = 0
              Width = 66
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'quebra_calc'
              DataSource = Src_Ped02_MP
              Holder = lbl_perdas
              Layout = tlCenter
            end
            object txt_codmp: TRLDBText
              Left = 5
              Top = 0
              Width = 72
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_CODPRO'
              DataSource = Src_Ped02_MP
              Holder = lbl_codmp
              Layout = tlCenter
            end
            object txt_lote: TRLDBText
              Left = 381
              Top = 0
              Width = 50
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_LOTE'
              DataSource = Src_Ped02_MP
              Holder = lbl_lote
              Layout = tlCenter
            end
            object txt_produz: TRLLabel
              Left = 650
              Top = 1
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = '   '
              Holder = lbl_produz
              Layout = tlCenter
            end
          end
          object RLBand_cabgru: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 13
            BandType = btHeader
            object lbl_codmp: TRLLabel
              Left = 5
              Top = 0
              Width = 72
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object lbl_nomemp: TRLLabel
              Left = 80
              Top = 0
              Width = 298
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object lbl_quant: TRLLabel
              Left = 434
              Top = 0
              Width = 78
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Layout = tlCenter
            end
            object lbl_perdas: TRLLabel
              Left = 585
              Top = 0
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Perdas'
              Layout = tlCenter
            end
            object lbl_sobra: TRLLabel
              Left = 512
              Top = 0
              Width = 74
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd Devolvida'
              Layout = tlCenter
            end
            object lbl_lote: TRLLabel
              Left = 381
              Top = 0
              Width = 50
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lote'
              Layout = tlCenter
            end
            object lbl_produz: TRLLabel
              Left = 650
              Top = 1
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Utilizadas'
              Layout = tlCenter
            end
          end
        end
        object rlmod01_cab_logo: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 134
          BandType = btHeader
          BeforePrint = rlmod01_cab_logoBeforePrint
          object logotipo_relmod01: TRLImage
            Left = 0
            Top = 0
            Width = 349
            Height = 132
            Stretch = True
          end
          object rldb_razao: TRLDBText
            Left = 352
            Top = 0
            Width = 362
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
          object rlobs: TRLMemo
            Left = 352
            Top = 68
            Width = 362
            Height = 63
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cnpj_ie: TRLMemo
            Left = 352
            Top = 21
            Width = 362
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldb_ender: TRLDBMemo
            Left = 352
            Top = 34
            Width = 362
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
            ParentFont = False
          end
        end
        object rlmod01_cab_CabCli: TRLBand
          Left = 38
          Top = 172
          Width = 718
          Height = 113
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_cabcli: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Layout = tlCenter
          end
          object RLDBText6: TRLDBText
            Left = 75
            Top = 3
            Width = 288
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object db_codcli: TRLDBText
            Left = 363
            Top = 3
            Width = 42
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cadcnpj: TRLLabel
            Left = 2
            Top = 54
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Layout = tlCenter
          end
          object db_cnpj: TRLDBText
            Left = 74
            Top = 54
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_fantasia: TRLLabel
            Left = 429
            Top = 3
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Layout = tlCenter
          end
          object db_fantasia: TRLDBText
            Left = 495
            Top = 2
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cadend: TRLLabel
            Left = 2
            Top = 21
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Layout = tlCenter
          end
          object db_ender: TRLDBText
            Left = 74
            Top = 20
            Width = 331
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_bairro: TRLLabel
            Left = 429
            Top = 19
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Layout = tlCenter
          end
          object db_bairro: TRLDBText
            Left = 495
            Top = 19
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cadloc: TRLLabel
            Left = 2
            Top = 36
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Layout = tlCenter
          end
          object db_cidade: TRLDBText
            Left = 74
            Top = 38
            Width = 281
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_uf: TRLLabel
            Left = 365
            Top = 40
            Width = 19
            Height = 14
            Caption = 'UF:'
            Layout = tlCenter
          end
          object db_uf: TRLDBText
            Left = 384
            Top = 39
            Width = 20
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cep: TRLLabel
            Left = 429
            Top = 37
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Layout = tlCenter
          end
          object db_cep: TRLDBText
            Left = 495
            Top = 37
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object db_ie: TRLDBText
            Left = 495
            Top = 54
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_ie: TRLLabel
            Left = 429
            Top = 54
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE/RG:'
            Layout = tlCenter
          end
          object db_nomcon: TRLDBText
            Left = 74
            Top = 73
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cabcont: TRLLabel
            Left = 2
            Top = 73
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato:'
            Layout = tlCenter
          end
          object db_fonecon: TRLDBText
            Left = 274
            Top = 72
            Width = 141
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object db_fone01: TRLDBText
            Left = 495
            Top = 73
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cadvend: TRLLabel
            Left = 2
            Top = 90
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendedor:'
            Layout = tlCenter
          end
          object db_nomven: TRLDBText
            Left = 74
            Top = 90
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_chaveped: TRLLabel
            Left = 350
            Top = 91
            Width = 43
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo:'
            Layout = tlCenter
          end
          object db_chaveped: TRLDBText
            Left = 394
            Top = 89
            Width = 62
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_datped: TRLLabel
            Left = 458
            Top = 90
            Width = 36
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
            Layout = tlCenter
          end
          object db_datped: TRLDBText
            Left = 495
            Top = 90
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_pag: TRLLabel
            Left = 633
            Top = 89
            Width = 23
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
            Layout = tlCenter
          end
          object db_barpag: TRLLabel
            Left = 677
            Top = 89
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
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
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            Layout = tlCenter
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
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object db_fone: TRLLabel
            Left = 464
            Top = 73
            Width = 30
            Height = 14
            Caption = 'Fone:'
            Layout = tlCenter
          end
        end
        object rlmod01_cab_titulo: TRLBand
          Left = 38
          Top = 285
          Width = 718
          Height = 22
          BandType = btColumnHeader
          object RLLabel12: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taCenter
            Caption = 'Relat'#243'rio de Produtos e Suas Respectivas Mat'#233'rias Primas.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsModelo02: TTabSheet
      Caption = 'Modelo 02(loja de Moveis)'
      ImageIndex = 1
      object rlPedido_OPMod02: TRLReport
        Left = -2
        Top = 2
        Width = 794
        Height = 1123
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object rlmod02_cab_Matricial: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 45
          BandType = btColumnHeader
          object RLSystemInfo5: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLDBText5: TRLDBText
            Left = 98
            Top = 2
            Width = 528
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLLabel2: TRLLabel
            Left = 2
            Top = 21
            Width = 351
            Height = 16
            Caption = 'Relat'#243'rio de Produtos e Suas Respectivas Mat'#233'rias Primas.'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 610
            Top = 21
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 680
            Top = 21
            Width = 70
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLSubDet_mp: TRLSubDetail
          Left = 38
          Top = 163
          Width = 718
          Height = 50
          DataSource = Src_Ped02_MP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand6: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object txtlm_mp_codpro: TRLDBText
              Left = 4
              Top = 0
              Width = 56
              Height = 16
              AutoSize = False
              DataField = 'P2MP_CODPRO'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_outinf: TRLDBText
              Left = 251
              Top = 0
              Width = 116
              Height = 16
              AutoSize = False
              DataField = 'P2MP_OUTINF'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_nome: TRLDBText
              Left = 60
              Top = 0
              Width = 192
              Height = 16
              AutoSize = False
              DataField = 'PDNOME_MP'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_qtdsol: TRLDBText
              Left = 366
              Top = 0
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTDSOL'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_sobra: TRLDBText
              Left = 434
              Top = 0
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTD_SOBRA'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_quebra: TRLDBText
              Left = 502
              Top = 0
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTD_QUEBRA'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_outros: TRLDBText
              Left = 570
              Top = 0
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTD_OUTRET'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
            object txtlm_mp_devol: TRLDBText
              Left = 646
              Top = 0
              Width = 72
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTD_DEVOL'
              DataSource = Src_Ped02_MP
              Layout = tlCenter
            end
          end
          object rllm_mp_tit: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btHeader
            object RLLabel11: TRLLabel
              Left = 229
              Top = 0
              Width = 227
              Height = 16
              Caption = 'MATERIAS PRIMAS REQUISITADAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbllm_mp_codpro: TRLLabel
              Left = 4
              Top = 17
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object lbllm_mp_nome: TRLLabel
              Left = 60
              Top = 17
              Width = 192
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object lbllm_mp_outinf: TRLLabel
              Left = 251
              Top = 17
              Width = 116
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Outras Informa'#231#245'es'
              Layout = tlCenter
            end
            object lbllm_mp_qtdsol: TRLLabel
              Left = 366
              Top = 17
              Width = 68
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd.Sol'
              Layout = tlCenter
            end
            object lbllm_mp_sobra: TRLLabel
              Left = 434
              Top = 17
              Width = 68
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Sobra'
              Layout = tlCenter
            end
            object lbllm_mp_quebra: TRLLabel
              Left = 502
              Top = 17
              Width = 68
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quebra'
              Layout = tlCenter
            end
            object lbllm_mp_outros: TRLLabel
              Left = 570
              Top = 17
              Width = 68
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Outros'
              Layout = tlCenter
            end
            object lbllm_mp_devol: TRLLabel
              Left = 646
              Top = 17
              Width = 72
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Devolu'#231'oes'
              Layout = tlCenter
            end
          end
        end
        object RLSubDet_prod: TRLSubDetail
          Left = 38
          Top = 99
          Width = 718
          Height = 64
          DataSource = DM2.Src_Cor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object rlMod02cabgru: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object txtlm_prod_nome: TRLDBText
              Left = 61
              Top = 0
              Width = 282
              Height = 16
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = DM2.Src_Cor
              Holder = lbllm_prod_nome
              Layout = tlCenter
            end
            object txtlm_prod_codpro: TRLDBText
              Left = 4
              Top = -1
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = DM2.Src_Cor
              Holder = lbllm_prod_codpro
              Layout = tlCenter
            end
            object txtlm_prod_qtd: TRLDBText
              Left = 522
              Top = 0
              Width = 194
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTD'
              DataSource = DM2.Src_Cor
              Holder = lbllm_prod_qtd
              Layout = tlCenter
            end
            object txtlm_prod_marca: TRLDBText
              Left = 349
              Top = 0
              Width = 168
              Height = 16
              AutoSize = False
              DataField = 'PDMARCA'
              DataSource = DM2.Src_Cor
              Holder = lbllm_prod_marca
              Layout = tlCenter
            end
          end
          object rllm_prod_cab: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbllm_prod_codpro: TRLLabel
              Left = 4
              Top = 0
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object lbllm_prod_nome: TRLLabel
              Left = 61
              Top = 0
              Width = 282
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object lbllm_prod_qtd: TRLLabel
              Left = 522
              Top = 0
              Width = 194
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Layout = tlCenter
            end
            object lbllm_prod_marca: TRLLabel
              Left = 349
              Top = 0
              Width = 168
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
          end
          object rllm_prod_tit: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLLabel10: TRLLabel
              Left = 272
              Top = 0
              Width = 148
              Height = 16
              Caption = 'PRODUTOS VENDIDOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object rllm_prod_tit__: TRLBand
          Left = 38
          Top = 83
          Width = 718
          Height = 16
        end
      end
    end
    object TsModelo03: TTabSheet
      Caption = 'Modelo 03'
      object rlPedido_OPMod03: TRLReport
        Left = 71
        Top = -11
        Width = 794
        Height = 1123
        DataSource = Src_Ped02_MP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLGroup1: TRLGroup
          Left = 38
          Top = 207
          Width = 718
          Height = 56
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataFields = 'PDNOME_PA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLGroup1BeforePrint
          object RLBand7: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 26
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clOlive
            object lbl_prod_acabado: TRLLabel
              Left = 2
              Top = 7
              Width = 639
              Height = 15
              AutoSize = False
              Caption = 'PRODUTO ACABADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand8: TRLBand
            Left = 0
            Top = 26
            Width = 718
            Height = 28
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            BeforePrint = RLBand8BeforePrint
            object rl_base_prod: TRLLabel
              Left = 292
              Top = 1
              Width = 162
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'BASE'
              Layout = tlCenter
              Visible = False
            end
            object rl_quant_prod: TRLLabel
              Left = 453
              Top = 1
              Width = 114
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'QUANTIDADE'
              Layout = tlCenter
            end
            object rl_retorno_prod: TRLLabel
              Left = 567
              Top = 1
              Width = 76
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'RETORNO'
              Layout = tlCenter
            end
            object rl_desc_prod: TRLLabel
              Left = 1
              Top = 1
              Width = 291
              Height = 26
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'DESCRICAO'
              Layout = tlCenter
            end
            object rl_quebra_prod: TRLLabel
              Left = 642
              Top = 1
              Width = 74
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'QUEBRA'
              Layout = tlCenter
            end
          end
        end
        object rl_cabecalho: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 56
          BandType = btHeader
          BeforePrint = rl_cabecalhoBeforePrint
          object rl_empr: TRLLabel
            Left = 4
            Top = 3
            Width = 72
            Height = 16
            Caption = 'Empresa...:'
          end
          object rl_ender: TRLLabel
            Left = 4
            Top = 20
            Width = 71
            Height = 16
            Caption = 'Endere'#231'o..:'
          end
          object rl_fone: TRLLabel
            Left = 5
            Top = 37
            Width = 64
            Height = 16
            Caption = 'Telefone..:'
          end
        end
        object RLBand11: TRLBand
          Left = 38
          Top = 94
          Width = 718
          Height = 113
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel24: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 75
            Top = 3
            Width = 288
            Height = 12
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 363
            Top = 3
            Width = 42
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 2
            Top = 40
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 74
            Top = 40
            Width = 279
            Height = 12
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 429
            Top = 3
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 495
            Top = 2
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 2
            Top = 16
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 74
            Top = 16
            Width = 331
            Height = 12
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 429
            Top = 15
            Width = 65
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 495
            Top = 14
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 2
            Top = 28
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 74
            Top = 28
            Width = 281
            Height = 12
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 366
            Top = 28
            Width = 19
            Height = 12
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 385
            Top = 28
            Width = 20
            Height = 12
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 429
            Top = 26
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 495
            Top = 26
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 495
            Top = 37
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 429
            Top = 37
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE/RG:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 74
            Top = 52
            Width = 194
            Height = 12
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 2
            Top = 52
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 274
            Top = 52
            Width = 141
            Height = 12
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 495
            Top = 49
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 2
            Top = 65
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 74
            Top = 65
            Width = 273
            Height = 12
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 350
            Top = 65
            Width = 43
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText37: TRLDBText
            Left = 394
            Top = 65
            Width = 62
            Height = 12
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 458
            Top = 62
            Width = 36
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 495
            Top = 62
            Width = 93
            Height = 12
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 633
            Top = 63
            Width = 23
            Height = 12
            AutoSize = False
            Caption = 'P'#225'g:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 677
            Top = 61
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo18: TRLSystemInfo
            Left = 685
            Top = 62
            Width = 24
            Height = 12
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 467
            Top = 49
            Width = 27
            Height = 12
            Caption = 'Fone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 274
            Top = 79
            Width = 170
            Height = 18
            Alignment = taCenter
            Caption = 'Relat'#243'rio de Expedi'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo14: TRLSystemInfo
            Left = 636
            Top = 78
            Width = 34
            Height = 14
            Info = itHour
          end
          object RLSystemInfo13: TRLSystemInfo
            Left = 603
            Top = 78
            Width = 33
            Height = 14
            Alignment = taRightJustify
          end
          object RLSystemInfo17: TRLSystemInfo
            Left = 658
            Top = 63
            Width = 20
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 642
            Top = 95
            Width = 74
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'QUEBRA'
          end
          object RLLabel18: TRLLabel
            Left = 567
            Top = 95
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'RETORNO'
          end
          object RLLabel17: TRLLabel
            Left = 453
            Top = 95
            Width = 114
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'QUANTIDADE'
          end
          object RLLabel14: TRLLabel
            Left = 292
            Top = 95
            Width = 162
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'BASE'
          end
          object RLLabel13: TRLLabel
            Left = 1
            Top = 95
            Width = 291
            Height = 17
            AutoSize = False
            Caption = 'DESCRICAO'
          end
        end
      end
    end
    object Ts_Mod03ProdeValores: TTabSheet
      Caption = 'Modelo 02 (por Produto e Valores)'
      ImageIndex = 2
      object RLMod02ProdeValores: TRLReport
        Left = -2
        Top = 2
        Width = 794
        Height = 1123
        DataSource = Src_Ped02_MP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = RLMod02ProdeValoresBeforePrint
        object RLBand1_Matricial: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 45
          BandType = btColumnHeader
          object RLSystemInfo9: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLDBText9: TRLDBText
            Left = 98
            Top = 2
            Width = 528
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
          end
          object RLSystemInfo10: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLLabel3: TRLLabel
            Left = 2
            Top = 21
            Width = 351
            Height = 16
            Caption = 'Relat'#243'rio de Produtos e Suas Respectivas Mat'#233'rias Primas.'
          end
          object RLSystemInfo11: TRLSystemInfo
            Left = 610
            Top = 21
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo12: TRLSystemInfo
            Left = 680
            Top = 21
            Width = 70
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLGMod02_gruposProd: TRLGroup
          Left = 38
          Top = 83
          Width = 718
          Height = 102
          DataFields = 'PDNOME_PA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLGMod02_gruposProdBeforePrint
          object RLBandMod02_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            AfterPrint = RLBandMod02_cabgruAfterPrint
            object lblCabM02_Nompro: TRLDBText
              Left = 78
              Top = 0
              Width = 323
              Height = 16
              AutoSize = False
              DataField = 'PDNOME_PA'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblCab_Codpro: TRLDBText
              Left = 2
              Top = 0
              Width = 70
              Height = 16
              AutoSize = False
              DataField = 'P2MP_CODPRO_ORI'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText12: TRLDBText
              Left = 476
              Top = 0
              Width = 73
              Height = 16
              AutoSize = False
              DataField = 'P2MP_QTD_ORI'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText18: TRLDBText
              Left = 630
              Top = 0
              Width = 87
              Height = 16
              AutoSize = False
              DataField = 'total_pa_total'
              DataSource = Src_Ped02_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel8: TRLLabel
              Left = 402
              Top = 0
              Width = 74
              Height = 14
              Caption = 'Qtd.Previsto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel9: TRLLabel
              Left = 558
              Top = 0
              Width = 65
              Height = 14
              Caption = 'Valor Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 29
            Width = 718
            Height = 13
            AfterPrint = RLBand3AfterPrint
            object txtM02_Nompro: TRLDBText
              Left = 78
              Top = 0
              Width = 308
              Height = 12
              AutoSize = False
              DataField = 'nomemp_completa'
              DataSource = Src_Ped02_MP
              Holder = lblM02_Nompro
              Layout = tlCenter
            end
            object txtM02_Quant: TRLDBText
              Left = 455
              Top = 0
              Width = 84
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_QTDSOL'
              DataSource = Src_Ped02_MP
              Holder = lblM02_Quant
              Layout = tlCenter
            end
            object txtM02_PcoUnit: TRLDBText
              Left = 541
              Top = 0
              Width = 86
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_PRECO'
              DataSource = Src_Ped02_MP
              Holder = lblM02_PcoUnit
              Layout = tlCenter
            end
            object txtM02_VT: TRLDBText
              Left = 629
              Top = 0
              Width = 88
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_mp'
              DataSource = Src_Ped02_MP
              Holder = lblM02_VT
              Layout = tlCenter
            end
            object txtM02_Codpro: TRLDBText
              Left = 5
              Top = 0
              Width = 72
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_CODPRO'
              DataSource = Src_Ped02_MP
              Holder = lblM02_Codpro
              Layout = tlCenter
            end
            object txt_m02_lote: TRLDBText
              Left = 387
              Top = 0
              Width = 66
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2MP_LOTE'
              DataSource = Src_Ped02_MP
              Holder = lbl_m02_lote
              Layout = tlCenter
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 13
            BandType = btHeader
            object lblM02_Codpro: TRLLabel
              Left = 5
              Top = 0
              Width = 72
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object lblM02_Nompro: TRLLabel
              Left = 78
              Top = 0
              Width = 308
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object lblM02_Quant: TRLLabel
              Left = 455
              Top = 0
              Width = 84
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Layout = tlCenter
            end
            object lblM02_VT: TRLLabel
              Left = 629
              Top = 0
              Width = 88
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object lblM02_PcoUnit: TRLLabel
              Left = 541
              Top = 0
              Width = 86
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pre'#231'o Unitario'
              Layout = tlCenter
            end
            object lbl_m02_lote: TRLLabel
              Left = 387
              Top = 0
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lote'
              Layout = tlCenter
            end
          end
          object RLBand_TotGru: TRLBand
            Left = 0
            Top = 42
            Width = 718
            Height = 18
            BandType = btSummary
            BeforePrint = RLBand_TotGruBeforePrint
            object rodM02_Codpro: TRLLabel
              Left = 5
              Top = 2
              Width = 72
              Height = 13
              AutoSize = False
              Caption = ' '
              Holder = lblM02_Codpro
            end
            object rodM02_Nompro: TRLLabel
              Left = 78
              Top = 3
              Width = 308
              Height = 13
              AutoSize = False
              Caption = 'Totais.............'
              Holder = lblM02_Nompro
            end
            object rodM02_Quant: TRLLabel
              Left = 455
              Top = 3
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = lblM02_Quant
            end
            object rodM02_PcoUnit: TRLLabel
              Left = 541
              Top = 3
              Width = 86
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = lblM02_PcoUnit
            end
            object rodm02_totmp: TRLLabel
              Left = 629
              Top = 3
              Width = 88
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = lblM02_VT
            end
            object txttot_m02_lote: TRLLabel
              Left = 387
              Top = 0
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = txt_m02_lote
              Layout = tlCenter
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 60
            Width = 718
            Height = 14
            BandType = btSummary
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = clBlue
            BeforePrint = RLBand2BeforePrint
            object RLLabel4: TRLLabel
              Left = 78
              Top = 0
              Width = 308
              Height = 13
              AutoSize = False
              Caption = 'Diferen'#231'a entre Valor Vendido com o Valor da Produ'#231#227'o'
              Holder = lblM02_Nompro
            end
            object txt_totluc: TRLLabel
              Left = 629
              Top = 0
              Width = 88
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = lblM02_VT
            end
            object txt_obsrod: TRLLabel
              Left = 541
              Top = 0
              Width = 86
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = lblM02_PcoUnit
            end
            object txttt_m02_lote: TRLLabel
              Left = 387
              Top = 0
              Width = 66
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = txt_m02_lote
              Layout = tlCenter
            end
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 185
          Width = 718
          Height = 14
          BandType = btSummary
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 65408
          BeforePrint = RLBand5BeforePrint
          object RLLabel5: TRLLabel
            Left = 78
            Top = 0
            Width = 308
            Height = 13
            AutoSize = False
            Caption = 'Total Geral entre o Valor Vendido e o Valor das Mat'#233'rias Primas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblM02_Nompro
            ParentFont = False
          end
          object txt_totlucGer: TRLLabel
            Left = 629
            Top = 0
            Width = 88
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblM02_VT
            ParentFont = False
          end
          object txt_obsrodGer: TRLLabel
            Left = 541
            Top = 0
            Width = 86
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblM02_PcoUnit
            ParentFont = False
          end
          object txttg_m02_lote: TRLLabel
            Left = 387
            Top = 0
            Width = 66
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Layout = tlCenter
          end
        end
      end
    end
    object TsModelo03_Finan: TTabSheet
      Caption = 'Modelo Financeiro 03 Finan'
      ImageIndex = 4
      object rlPedido_OPMod03_Finan: TRLReport
        Left = -23
        Top = -246
        Width = 794
        Height = 1123
        DataSource = Src_Ped02_MP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLGroup2: TRLGroup
          Left = 38
          Top = 207
          Width = 718
          Height = 82
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataFields = 'PDNOME_PA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLGroup2BeforePrint
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 26
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clOlive
            object lbl_prod_acabado2: TRLLabel
              Left = 2
              Top = 7
              Width = 639
              Height = 15
              AutoSize = False
              Caption = 'PRODUTO ACABADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 26
            Width = 718
            Height = 29
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            BeforePrint = RLBand9BeforePrint
            object rl_base_prod2: TRLLabel
              Left = 292
              Top = 1
              Width = 162
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'BASE'
              Layout = tlCenter
              Visible = False
            end
            object rl_quant_prod2: TRLLabel
              Left = 453
              Top = 1
              Width = 114
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'QUANTIDADE'
              Layout = tlCenter
            end
            object rl_retorno_prod2: TRLLabel
              Left = 567
              Top = 1
              Width = 76
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'RETORNO'
              Layout = tlCenter
            end
            object rl_desc_prod2: TRLLabel
              Left = 1
              Top = 1
              Width = 291
              Height = 26
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'DESCRICAO'
              Layout = tlCenter
            end
            object rl_quebra_prod2: TRLLabel
              Left = 642
              Top = 1
              Width = 74
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.FixedLeft = True
              Caption = 'QUEBRA'
              Layout = tlCenter
            end
          end
          object RLBand17: TRLBand
            Left = 0
            Top = 55
            Width = 718
            Height = 26
            BandType = btColumnFooter
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clOlive
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = clSilver
            AfterPrint = RLBand17AfterPrint
            BeforePrint = RLBand17BeforePrint
            object RLLabel15: TRLLabel
              Left = 220
              Top = 4
              Width = 160
              Height = 17
              AutoSize = False
              Caption = 'Totaliza'#231#245'es do Grupo..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rl_total_grupo: TRLLabel
              Left = 402
              Top = 5
              Width = 175
              Height = 17
              AutoSize = False
              Caption = 'Totaliza'#231#245'es do Grupo..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLBand10: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 56
          BandType = btHeader
          BeforePrint = RLBand10BeforePrint
          object rl_empr2: TRLLabel
            Left = 4
            Top = 3
            Width = 72
            Height = 16
            Caption = 'Empresa...:'
          end
          object rl_ender2: TRLLabel
            Left = 4
            Top = 20
            Width = 71
            Height = 16
            Caption = 'Endere'#231'o..:'
          end
          object rl_fone2: TRLLabel
            Left = 5
            Top = 37
            Width = 64
            Height = 16
            Caption = 'Telefone..:'
          end
        end
        object RLBand12: TRLBand
          Left = 38
          Top = 94
          Width = 718
          Height = 113
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel44: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 75
            Top = 3
            Width = 288
            Height = 12
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 363
            Top = 3
            Width = 42
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 2
            Top = 40
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 74
            Top = 40
            Width = 279
            Height = 12
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 429
            Top = 3
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 495
            Top = 2
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel47: TRLLabel
            Left = 2
            Top = 16
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 74
            Top = 16
            Width = 331
            Height = 12
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel48: TRLLabel
            Left = 429
            Top = 15
            Width = 65
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 495
            Top = 14
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel49: TRLLabel
            Left = 2
            Top = 28
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 74
            Top = 28
            Width = 281
            Height = 12
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel50: TRLLabel
            Left = 366
            Top = 28
            Width = 19
            Height = 12
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 385
            Top = 28
            Width = 20
            Height = 12
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel51: TRLLabel
            Left = 429
            Top = 26
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 495
            Top = 26
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 495
            Top = 37
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel52: TRLLabel
            Left = 429
            Top = 37
            Width = 65
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE/RG:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 74
            Top = 52
            Width = 194
            Height = 12
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 2
            Top = 52
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 274
            Top = 52
            Width = 141
            Height = 12
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 495
            Top = 49
            Width = 205
            Height = 12
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 2
            Top = 65
            Width = 71
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText40: TRLDBText
            Left = 74
            Top = 65
            Width = 273
            Height = 12
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel55: TRLLabel
            Left = 350
            Top = 65
            Width = 43
            Height = 12
            AutoSize = False
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText41: TRLDBText
            Left = 394
            Top = 65
            Width = 62
            Height = 12
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel56: TRLLabel
            Left = 458
            Top = 62
            Width = 36
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText42: TRLDBText
            Left = 495
            Top = 62
            Width = 93
            Height = 12
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 633
            Top = 63
            Width = 23
            Height = 12
            AutoSize = False
            Caption = 'P'#225'g:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 677
            Top = 61
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo15: TRLSystemInfo
            Left = 685
            Top = 62
            Width = 24
            Height = 12
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel59: TRLLabel
            Left = 467
            Top = 49
            Width = 27
            Height = 12
            Caption = 'Fone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 274
            Top = 79
            Width = 170
            Height = 18
            Alignment = taCenter
            Caption = 'Relat'#243'rio de Expedi'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo16: TRLSystemInfo
            Left = 636
            Top = 78
            Width = 34
            Height = 14
            Info = itHour
          end
          object RLSystemInfo19: TRLSystemInfo
            Left = 603
            Top = 78
            Width = 33
            Height = 14
            Alignment = taRightJustify
          end
          object RLSystemInfo20: TRLSystemInfo
            Left = 658
            Top = 63
            Width = 20
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel61: TRLLabel
            Left = 642
            Top = 95
            Width = 74
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'TOTAL'
          end
          object RLLabel67: TRLLabel
            Left = 567
            Top = 95
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'PRE'#199'O'
          end
          object RLLabel104: TRLLabel
            Left = 453
            Top = 95
            Width = 114
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'QUANTIDADE'
          end
          object RLLabel105: TRLLabel
            Left = 292
            Top = 95
            Width = 162
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'BASE'
          end
          object RLLabel106: TRLLabel
            Left = 1
            Top = 95
            Width = 291
            Height = 17
            AutoSize = False
            Caption = 'DESCRICAO'
          end
        end
        object RLBand18: TRLBand
          Left = 38
          Top = 289
          Width = 718
          Height = 26
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clOlive
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clGradientInactiveCaption
          AfterPrint = RLBand18AfterPrint
          BeforePrint = RLBand18BeforePrint
          object RLLabel16: TRLLabel
            Left = 170
            Top = 5
            Width = 210
            Height = 17
            AutoSize = False
            Caption = 'Totaliza'#231#245'es do Material Gasto.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rl_total_ped: TRLLabel
            Left = 402
            Top = 5
            Width = 175
            Height = 17
            AutoSize = False
            Caption = 'Totaliza'#231#245'es do Grupo..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand19: TRLBand
          Left = 38
          Top = 315
          Width = 718
          Height = 26
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clOlive
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clLime
          BeforePrint = RLBand19BeforePrint
          object RLLabel20: TRLLabel
            Left = 196
            Top = 5
            Width = 184
            Height = 17
            AutoSize = False
            Caption = 'Valor da Venda do Pedido..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rl_totped: TRLLabel
            Left = 402
            Top = 5
            Width = 175
            Height = 17
            AutoSize = False
            Caption = 'Totaliza'#231#245'es do Grupo..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object TsModelo04: TTabSheet
      Caption = 'Modelo 04'
      ImageIndex = 5
      object rlPedido_OPMod04: TRLReport
        Left = 146
        Top = -614
        Width = 794
        Height = 1123
        DataSource = Ds_Ped_02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintEmpty = False
        ShowProgress = False
        object RLBand15: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 102
          BandType = btHeader
          BeforePrint = RLBand15BeforePrint
          object rl_imgmod04: TRLImage
            Left = 0
            Top = 0
            Width = 349
            Height = 99
            Stretch = True
          end
          object RLDBText45: TRLDBText
            Left = 352
            Top = 0
            Width = 362
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
          object robs_mod04: TRLMemo
            Left = 352
            Top = 68
            Width = 362
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo6: TRLMemo
            Left = 352
            Top = -51
            Width = 362
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 352
            Top = 34
            Width = 362
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
            ParentFont = False
          end
        end
        object RLBand16: TRLBand
          Left = 38
          Top = 140
          Width = 718
          Height = 207
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel73: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Layout = tlCenter
          end
          object RLDBText46: TRLDBText
            Left = 75
            Top = 3
            Width = 288
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 363
            Top = 3
            Width = 42
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel74: TRLLabel
            Left = 2
            Top = 54
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Layout = tlCenter
          end
          object RLDBText48: TRLDBText
            Left = 74
            Top = 54
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel75: TRLLabel
            Left = 429
            Top = 3
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Layout = tlCenter
          end
          object RLDBText49: TRLDBText
            Left = 495
            Top = 2
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel76: TRLLabel
            Left = 2
            Top = 21
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Layout = tlCenter
          end
          object RLDBText50: TRLDBText
            Left = 74
            Top = 20
            Width = 331
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel77: TRLLabel
            Left = 429
            Top = 19
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Layout = tlCenter
          end
          object RLDBText51: TRLDBText
            Left = 495
            Top = 19
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel78: TRLLabel
            Left = 2
            Top = 36
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Layout = tlCenter
          end
          object RLDBText52: TRLDBText
            Left = 74
            Top = 38
            Width = 281
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel79: TRLLabel
            Left = 365
            Top = 40
            Width = 19
            Height = 14
            Caption = 'UF:'
            Layout = tlCenter
          end
          object RLDBText53: TRLDBText
            Left = 384
            Top = 39
            Width = 20
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel80: TRLLabel
            Left = 429
            Top = 37
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Layout = tlCenter
          end
          object RLDBText54: TRLDBText
            Left = 495
            Top = 37
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 495
            Top = 54
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel81: TRLLabel
            Left = 429
            Top = 54
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE/RG:'
            Layout = tlCenter
          end
          object RLDBText56: TRLDBText
            Left = 74
            Top = 73
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel82: TRLLabel
            Left = 2
            Top = 73
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato:'
            Layout = tlCenter
          end
          object RLDBText57: TRLDBText
            Left = 274
            Top = 72
            Width = 141
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText58: TRLDBText
            Left = 495
            Top = 73
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel83: TRLLabel
            Left = 2
            Top = 90
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendedor:'
            Layout = tlCenter
          end
          object RLDBText59: TRLDBText
            Left = 74
            Top = 90
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel84: TRLLabel
            Left = 350
            Top = 91
            Width = 43
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo:'
            Layout = tlCenter
          end
          object RLDBText60: TRLDBText
            Left = 394
            Top = 89
            Width = 62
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel85: TRLLabel
            Left = 458
            Top = 90
            Width = 36
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
            Layout = tlCenter
          end
          object RLDBText61: TRLDBText
            Left = 495
            Top = 90
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel86: TRLLabel
            Left = 633
            Top = 89
            Width = 23
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
            Layout = tlCenter
          end
          object RLLabel87: TRLLabel
            Left = 677
            Top = 89
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo21: TRLSystemInfo
            Left = 685
            Top = 89
            Width = 24
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel88: TRLLabel
            Left = 464
            Top = 73
            Width = 30
            Height = 14
            Caption = 'Fone:'
            Layout = tlCenter
          end
          object RLLabel89: TRLLabel
            Left = 0
            Top = 189
            Width = 718
            Height = 18
            Align = faBottom
            Alignment = taCenter
            Caption = 'Relat'#243'rio de Expedi'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo22: TRLSystemInfo
            Left = 684
            Top = 175
            Width = 34
            Height = 14
            Align = faRightBottom
            Info = itHour
          end
          object RLSystemInfo23: TRLSystemInfo
            Left = 651
            Top = 175
            Width = 33
            Height = 14
            Align = faRightBottom
          end
          object RLSystemInfo24: TRLSystemInfo
            Left = 658
            Top = 89
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel213: TRLLabel
            Left = 4
            Top = 111
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Observa'#231#245'es:'
            Layout = tlCenter
          end
          object RLDBMemo2: TRLDBMemo
            Left = 78
            Top = 112
            Width = 627
            Height = 51
            AutoSize = False
            DataField = 'P1OBS2'
            DataSource = DM2.Src_Cab
          end
        end
        object RLGroup4: TRLGroup
          Left = 38
          Top = 347
          Width = 718
          Height = 335
          DataFields = 'PDNOME'
          BeforePrint = RLGroup4BeforePrint
          object RLBand13: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 92
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clOlive
            object RLLabel62: TRLLabel
              Left = 0
              Top = 51
              Width = 152
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'Materia Prima'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel65: TRLLabel
              Left = 567
              Top = 51
              Width = 76
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'Retorno'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel66: TRLLabel
              Left = 642
              Top = 51
              Width = 76
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Caption = 'Perda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object rbl_prod_ac: TRLLabel
              Left = 1
              Top = 2
              Width = 715
              Height = 15
              AutoSize = False
              Caption = 'PRODUTO ACABADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rbl_qtd: TRLLabel
              Left = 2
              Top = 18
              Width = 307
              Height = 15
              AutoSize = False
              Caption = 'Quantidade Prevista...: 0000 Unidade Medida..:____________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rl_infcomp: TRLLabel
              Left = 1
              Top = 35
              Width = 486
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'INF. COMPLEMENTARES.:  PC-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rbl_prz: TRLLabel
              Left = 487
              Top = 35
              Width = 230
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Prazo p/ Entrega.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rl_versao: TRLLabel
              Left = 150
              Top = 51
              Width = 78
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'Vers'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object rl_unidade: TRLMemo
              Left = 226
              Top = 51
              Width = 56
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Unidade '
                'de '
                'Medida')
              ParentFont = False
            end
            object rl_lote: TRLLabel
              Left = 281
              Top = 51
              Width = 70
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'Lote'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = tlCenter
              ParentFont = False
            end
            object rl_qtdsol: TRLMemo
              Left = 349
              Top = 51
              Width = 72
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Qtde'
                'solicitada')
              ParentFont = False
            end
            object rl_qtdpro: TRLMemo
              Left = 498
              Top = 51
              Width = 70
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Qtde'
                'Utilizada')
              ParentFont = False
            end
            object RLLabel144: TRLLabel
              Left = 409
              Top = 19
              Width = 307
              Height = 15
              AutoSize = False
              Caption = 'Quantidade Realizada...: ____ Unidade Medida..:____________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rl_qtdenv: TRLMemo
              Left = 421
              Top = 51
              Width = 78
              Height = 40
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Qtde'
                'Enviada')
              ParentFont = False
            end
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 92
            Width = 718
            Height = 242
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            object RLLabel69: TRLLabel
              Left = 498
              Top = 1
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel70: TRLLabel
              Left = 567
              Top = 21
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel71: TRLLabel
              Left = 0
              Top = 1
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel72: TRLLabel
              Left = 642
              Top = 1
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel63: TRLLabel
              Left = 642
              Top = 21
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel68: TRLLabel
              Left = 567
              Top = 1
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel90: TRLLabel
              Left = 498
              Top = 21
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel91: TRLLabel
              Left = 0
              Top = 21
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel92: TRLLabel
              Left = 642
              Top = 41
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel93: TRLLabel
              Left = 567
              Top = 41
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel94: TRLLabel
              Left = 498
              Top = 41
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel95: TRLLabel
              Left = 0
              Top = 41
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel96: TRLLabel
              Left = 642
              Top = 61
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel97: TRLLabel
              Left = 567
              Top = 61
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel98: TRLLabel
              Left = 498
              Top = 61
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel99: TRLLabel
              Left = 0
              Top = 61
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel100: TRLLabel
              Left = 642
              Top = 81
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel101: TRLLabel
              Left = 567
              Top = 81
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel102: TRLLabel
              Left = 498
              Top = 81
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel103: TRLLabel
              Left = 0
              Top = 81
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel112: TRLLabel
              Left = 642
              Top = 141
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel113: TRLLabel
              Left = 567
              Top = 141
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel114: TRLLabel
              Left = 498
              Top = 141
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel115: TRLLabel
              Left = 0
              Top = 141
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel116: TRLLabel
              Left = 0
              Top = 121
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel117: TRLLabel
              Left = 498
              Top = 121
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel118: TRLLabel
              Left = 567
              Top = 121
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel119: TRLLabel
              Left = 642
              Top = 121
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel120: TRLLabel
              Left = 642
              Top = 101
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel121: TRLLabel
              Left = 567
              Top = 101
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel122: TRLLabel
              Left = 498
              Top = 101
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel123: TRLLabel
              Left = 0
              Top = 101
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel23: TRLLabel
              Left = 349
              Top = 1
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel41: TRLLabel
              Left = 349
              Top = 21
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel42: TRLLabel
              Left = 349
              Top = 41
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel43: TRLLabel
              Left = 349
              Top = 61
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel64: TRLLabel
              Left = 349
              Top = 81
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel107: TRLLabel
              Left = 349
              Top = 101
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel108: TRLLabel
              Left = 349
              Top = 121
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel21: TRLLabel
              Left = 349
              Top = 141
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel22: TRLLabel
              Left = 281
              Top = 141
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel109: TRLLabel
              Left = 281
              Top = 1
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel110: TRLLabel
              Left = 281
              Top = 21
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel111: TRLLabel
              Left = 281
              Top = 41
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel124: TRLLabel
              Left = 281
              Top = 61
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel125: TRLLabel
              Left = 281
              Top = 81
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel126: TRLLabel
              Left = 281
              Top = 101
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel127: TRLLabel
              Left = 281
              Top = 121
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel128: TRLLabel
              Left = 226
              Top = 141
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel129: TRLLabel
              Left = 226
              Top = 1
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel130: TRLLabel
              Left = 226
              Top = 21
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel131: TRLLabel
              Left = 226
              Top = 41
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel132: TRLLabel
              Left = 226
              Top = 61
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel133: TRLLabel
              Left = 226
              Top = 81
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel134: TRLLabel
              Left = 226
              Top = 101
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel135: TRLLabel
              Left = 226
              Top = 121
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel136: TRLLabel
              Left = 150
              Top = 141
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel137: TRLLabel
              Left = 150
              Top = 1
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel138: TRLLabel
              Left = 150
              Top = 21
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel139: TRLLabel
              Left = 150
              Top = 41
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel140: TRLLabel
              Left = 150
              Top = 61
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel141: TRLLabel
              Left = 150
              Top = 81
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel142: TRLLabel
              Left = 150
              Top = 101
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel143: TRLLabel
              Left = 150
              Top = 121
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel145: TRLLabel
              Left = 421
              Top = 1
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel146: TRLLabel
              Left = 421
              Top = 21
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel147: TRLLabel
              Left = 421
              Top = 41
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel148: TRLLabel
              Left = 421
              Top = 61
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel149: TRLLabel
              Left = 421
              Top = 81
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel150: TRLLabel
              Left = 421
              Top = 101
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel151: TRLLabel
              Left = 421
              Top = 121
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel152: TRLLabel
              Left = 421
              Top = 141
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel153: TRLLabel
              Left = 642
              Top = 221
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel154: TRLLabel
              Left = 642
              Top = 201
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel155: TRLLabel
              Left = 642
              Top = 181
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel156: TRLLabel
              Left = 642
              Top = 161
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel66
              Layout = tlCenter
            end
            object RLLabel157: TRLLabel
              Left = 567
              Top = 161
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel158: TRLLabel
              Left = 567
              Top = 181
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel159: TRLLabel
              Left = 567
              Top = 201
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel160: TRLLabel
              Left = 567
              Top = 221
              Width = 76
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = RLLabel65
              Layout = tlCenter
            end
            object RLLabel161: TRLLabel
              Left = 498
              Top = 221
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel162: TRLLabel
              Left = 421
              Top = 221
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel163: TRLLabel
              Left = 421
              Top = 201
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel164: TRLLabel
              Left = 498
              Top = 201
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel165: TRLLabel
              Left = 498
              Top = 181
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel166: TRLLabel
              Left = 421
              Top = 181
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel167: TRLLabel
              Left = 421
              Top = 161
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdenv
              Layout = tlCenter
            end
            object RLLabel168: TRLLabel
              Left = 498
              Top = 161
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdpro
              Layout = tlCenter
            end
            object RLLabel169: TRLLabel
              Left = 349
              Top = 161
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel170: TRLLabel
              Left = 281
              Top = 161
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel171: TRLLabel
              Left = 226
              Top = 161
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel172: TRLLabel
              Left = 150
              Top = 161
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel173: TRLLabel
              Left = 0
              Top = 161
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel174: TRLLabel
              Left = 0
              Top = 181
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel175: TRLLabel
              Left = 0
              Top = 201
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel176: TRLLabel
              Left = 0
              Top = 221
              Width = 152
              Height = 20
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = ' '
              Holder = RLLabel62
              Layout = tlCenter
            end
            object RLLabel177: TRLLabel
              Left = 150
              Top = 221
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel178: TRLLabel
              Left = 150
              Top = 201
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel179: TRLLabel
              Left = 150
              Top = 181
              Width = 78
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_versao
              Layout = tlCenter
            end
            object RLLabel180: TRLLabel
              Left = 226
              Top = 181
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel181: TRLLabel
              Left = 226
              Top = 201
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel182: TRLLabel
              Left = 226
              Top = 221
              Width = 56
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_unidade
              Layout = tlCenter
            end
            object RLLabel183: TRLLabel
              Left = 281
              Top = 221
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel184: TRLLabel
              Left = 349
              Top = 221
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel185: TRLLabel
              Left = 349
              Top = 201
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
            object RLLabel186: TRLLabel
              Left = 281
              Top = 201
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel187: TRLLabel
              Left = 281
              Top = 181
              Width = 70
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_lote
              Layout = tlCenter
            end
            object RLLabel188: TRLLabel
              Left = 349
              Top = 181
              Width = 72
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.FixedLeft = True
              Caption = ' '
              Holder = rl_qtdsol
              Layout = tlCenter
            end
          end
        end
        object RLBand23: TRLBand
          Left = 38
          Top = 682
          Width = 718
          Height = 311
          object RLLabel212: TRLLabel
            Left = 705
            Top = 424
            Width = 8
            Height = 16
            Caption = '.'
          end
        end
      end
    end
    object Modelo05: TTabSheet
      Caption = 'Modelo05'
      ImageIndex = 6
      object rlPedido_OPMod05: TRLReport
        Left = 25
        Top = 72
        Width = 794
        Height = 1123
        DataSource = Ds_Ped_02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintEmpty = False
        ShowProgress = False
        object RLBand20: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 102
          BandType = btHeader
          BeforePrint = RLBand20BeforePrint
          object rl_imgmod05: TRLImage
            Left = 0
            Top = 0
            Width = 349
            Height = 99
            Stretch = True
          end
          object RLDBText43: TRLDBText
            Left = 352
            Top = 0
            Width = 362
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
          object RLMemo2: TRLMemo
            Left = 352
            Top = -51
            Width = 362
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 352
            Top = 34
            Width = 362
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
            ParentFont = False
          end
          object robs_mod05: TRLMemo
            Left = 352
            Top = 68
            Width = 362
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand21: TRLBand
          Left = 38
          Top = 140
          Width = 718
          Height = 187
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel189: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Layout = tlCenter
          end
          object RLDBText44: TRLDBText
            Left = 75
            Top = 3
            Width = 288
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText62: TRLDBText
            Left = 363
            Top = 3
            Width = 42
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel190: TRLLabel
            Left = 2
            Top = 54
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF/CNPJ:'
            Layout = tlCenter
          end
          object RLDBText63: TRLDBText
            Left = 74
            Top = 54
            Width = 281
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel191: TRLLabel
            Left = 429
            Top = 3
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Layout = tlCenter
          end
          object RLDBText64: TRLDBText
            Left = 495
            Top = 2
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel192: TRLLabel
            Left = 2
            Top = 21
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Layout = tlCenter
          end
          object RLDBText65: TRLDBText
            Left = 74
            Top = 20
            Width = 331
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel193: TRLLabel
            Left = 429
            Top = 19
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Layout = tlCenter
          end
          object RLDBText66: TRLDBText
            Left = 495
            Top = 19
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel194: TRLLabel
            Left = 2
            Top = 36
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Layout = tlCenter
          end
          object RLDBText67: TRLDBText
            Left = 74
            Top = 38
            Width = 281
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel195: TRLLabel
            Left = 365
            Top = 39
            Width = 19
            Height = 14
            Caption = 'UF:'
            Layout = tlCenter
          end
          object RLDBText68: TRLDBText
            Left = 384
            Top = 39
            Width = 20
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel196: TRLLabel
            Left = 429
            Top = 37
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Layout = tlCenter
          end
          object RLDBText69: TRLDBText
            Left = 495
            Top = 37
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText70: TRLDBText
            Left = 495
            Top = 54
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel197: TRLLabel
            Left = 429
            Top = 54
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'IE/RG:'
            Layout = tlCenter
          end
          object RLDBText71: TRLDBText
            Left = 74
            Top = 73
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel198: TRLLabel
            Left = 2
            Top = 73
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato:'
            Layout = tlCenter
          end
          object RLDBText72: TRLDBText
            Left = 274
            Top = 73
            Width = 141
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText73: TRLDBText
            Left = 495
            Top = 73
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel199: TRLLabel
            Left = 2
            Top = 90
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendedor:'
            Layout = tlCenter
          end
          object RLDBText74: TRLDBText
            Left = 74
            Top = 90
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel200: TRLLabel
            Left = 350
            Top = 90
            Width = 43
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo:'
            Layout = tlCenter
          end
          object RLDBText75: TRLDBText
            Left = 394
            Top = 90
            Width = 62
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel201: TRLLabel
            Left = 458
            Top = 90
            Width = 36
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
            Layout = tlCenter
          end
          object RLDBText76: TRLDBText
            Left = 495
            Top = 90
            Width = 136
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel202: TRLLabel
            Left = 633
            Top = 90
            Width = 23
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
            Layout = tlCenter
          end
          object RLLabel203: TRLLabel
            Left = 677
            Top = 90
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLSystemInfo25: TRLSystemInfo
            Left = 685
            Top = 90
            Width = 24
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel204: TRLLabel
            Left = 464
            Top = 73
            Width = 30
            Height = 14
            Caption = 'Fone:'
            Layout = tlCenter
          end
          object RLLabel205: TRLLabel
            Left = 274
            Top = 148
            Width = 170
            Height = 18
            Alignment = taCenter
            Caption = 'Relat'#243'rio de Expedi'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo26: TRLSystemInfo
            Left = 622
            Top = 154
            Width = 95
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Info = itHour
          end
          object RLSystemInfo27: TRLSystemInfo
            Left = 528
            Top = 154
            Width = 94
            Height = 14
            Alignment = taJustify
            AutoSize = False
          end
          object RLSystemInfo28: TRLSystemInfo
            Left = 658
            Top = 90
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            Layout = tlCenter
            ParentFont = False
          end
          object r4_codigo: TRLLabel
            Left = 0
            Top = 169
            Width = 82
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object r4_produto: TRLLabel
            Left = 81
            Top = 169
            Width = 316
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object r4_qtd: TRLLabel
            Left = 451
            Top = 169
            Width = 102
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object r4_un: TRLLabel
            Left = 397
            Top = 169
            Width = 54
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'UN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object r4_obs: TRLLabel
            Left = 552
            Top = 169
            Width = 166
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'OBSERVA'#199#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel211: TRLLabel
            Left = 2
            Top = 107
            Width = 71
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data Prevista:'
            Layout = tlCenter
          end
          object RLDBText77: TRLDBText
            Left = 74
            Top = 107
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand24: TRLBand
          Left = 38
          Top = 327
          Width = 718
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clOlive
          BeforePrint = RLBand24BeforePrint
          object r4_pdcodpro: TRLLabel
            Left = 0
            Top = 0
            Width = 82
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = r4_codigo
            ParentFont = False
          end
          object r4_pdnome: TRLLabel
            Left = 81
            Top = 0
            Width = 316
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = r4_produto
            ParentFont = False
          end
          object r4_pdund: TRLLabel
            Left = 397
            Top = 0
            Width = 54
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = r4_un
            ParentFont = False
          end
          object r4_pdqtd: TRLLabel
            Left = 451
            Top = 0
            Width = 102
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = r4_qtd
            ParentFont = False
          end
          object rl4_obs: TRLLabel
            Left = 552
            Top = 0
            Width = 166
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '___________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = r4_obs
            ParentFont = False
          end
        end
        object RLBand22: TRLBand
          Left = 38
          Top = 343
          Width = 718
          Height = 85
          BandType = btSummary
          object RLLabel206: TRLLabel
            Left = 2
            Top = 17
            Width = 271
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Entregador:_____________________________'
            Layout = tlCenter
          end
          object RLLabel207: TRLLabel
            Left = 2
            Top = 38
            Width = 543
            Height = 16
            AutoSize = False
            Caption = 
              'Transportadora__________________________________________________' +
              '_______________'
            Layout = tlCenter
          end
          object RLLabel208: TRLLabel
            Left = 2
            Top = 58
            Width = 271
            Height = 16
            AutoSize = False
            Caption = 'Entregador Transp_______________________'
            Layout = tlCenter
          end
          object RLLabel209: TRLLabel
            Left = 274
            Top = 17
            Width = 271
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF..:_________________________________'
            Layout = tlCenter
          end
          object RLLabel210: TRLLabel
            Left = 274
            Top = 58
            Width = 271
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF..:_________________________________'
            Layout = tlCenter
          end
        end
      end
    end
  end
  object Qr_Ped02_MP: TQuery
    OnCalcFields = Qr_Ped02_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  '
      '  P2MP_CODEMP,'
      '  P2MP_LOTSEQ,'
      '  P2MP_CHAVE,'
      '  P2MP_ITEM,'
      '  P2MP_CODPRO,'
      '  P2MP_QTDSOL,'
      '  P2MP_QTD_DEVOL,'
      '  P2MP_QTD_SOBRA,'
      '  P2MP_QTD_QUEBRA,'
      '  P2MP_QTD_OUTRET,'
      '  P2MP_PRECO,'
      '  P2MP_DATAHORA_SOL,'
      '  P2MP_LOTE,'
      '  P2MP_DTVCTO,'
      '  P2MP_PCOCUS,'
      '  P2MP_PCOCOMPRA,'
      '  P2MP_CODPRO_ORI,'
      '  P2MP_LOTE_ORI,'
      '  P2MP_PRECO_ORI,'
      '  P2MP_QTD_ORI,'
      '  P2MP_DTVCTO_ORI,'
      '  P2MP_NOME2,'
      '  P2MP_OUTINF,'
      '  PDNOME as PDNOME_PA,'
      '  PDMARCA as PDMARCA_PA,'
      '  PDUND as PDUND_PA,'
      '  P2MP_PRECO_ORI as TOTDES_PA,'
      '  PDNOME as PDNOME_MP,'
      '  PDMARCA as PDMARCA_MP,'
      '  PDUND as PDUND_MP,'
      '  PDCODGRU,'
      '  PDNOMGRU,'
      'case'
      '  when'
      '       P2MP_CODPRO IS NULL'
      '  then'
      '       P2CODPRO'
      '  when'
      '       P2MP_CODPRO IS NOT NULL'
      '  then'
      '        P2MP_CODPRO'
      '  end as CODIGO_PRODUTO,'
      'case'
      '  when'
      '       P2MP_CODPRO IS NULL '
      '  then'
      '      NULL '
      '  when P2MP_CODPRO IS NOT NULL '
      '      THEN P2MP_CODPRO_ORI '
      '  end  as CODIGO_AGRUPAMENTO,'
      'case'
      '  when'
      '       P2MP_CODPRO IS NULL'
      '  then'
      '       (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2CODPRO)'
      '  when'
      '       P2MP_CODPRO IS NOT NULL '
      '  then'
      '      (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2MP_CODPRO)  '
      '  end as NOME_PRODUTO '
      ''
      'from'
      '  CADP02_MP,'
      '  CADP02,'
      '  CADPRO'
      'where'
      '  PDCODPRO=P2MP_CODPRO'
      '')
    Left = 576
    Top = 136
    object Qr_Ped02_MPP2MP_CODEMP: TFloatField
      FieldName = 'P2MP_CODEMP'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODEMP'
    end
    object Qr_Ped02_MPP2MP_LOTSEQ: TFloatField
      FieldName = 'P2MP_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTSEQ'
    end
    object Qr_Ped02_MPP2MP_CHAVE: TFloatField
      FieldName = 'P2MP_CHAVE'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CHAVE'
    end
    object Qr_Ped02_MPP2MP_ITEM: TFloatField
      FieldName = 'P2MP_ITEM'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_ITEM'
    end
    object Qr_Ped02_MPP2MP_CODPRO: TFloatField
      FieldName = 'P2MP_CODPRO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODPRO'
    end
    object Qr_Ped02_MPP2MP_QTDSOL: TFloatField
      FieldName = 'P2MP_QTDSOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTDSOL'
    end
    object Qr_Ped02_MPP2MP_QTD_DEVOL: TFloatField
      FieldName = 'P2MP_QTD_DEVOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_DEVOL'
    end
    object Qr_Ped02_MPP2MP_QTD_SOBRA: TFloatField
      FieldName = 'P2MP_QTD_SOBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_SOBRA'
    end
    object Qr_Ped02_MPP2MP_QTD_QUEBRA: TFloatField
      FieldName = 'P2MP_QTD_QUEBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_QUEBRA'
    end
    object Qr_Ped02_MPP2MP_QTD_OUTRET: TFloatField
      FieldName = 'P2MP_QTD_OUTRET'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_OUTRET'
    end
    object Qr_Ped02_MPP2MP_PRECO: TFloatField
      FieldName = 'P2MP_PRECO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PRECO'
    end
    object Qr_Ped02_MPP2MP_DATAHORA_SOL: TDateTimeField
      FieldName = 'P2MP_DATAHORA_SOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DATAHORA_SOL'
    end
    object Qr_Ped02_MPP2MP_LOTE: TStringField
      FieldName = 'P2MP_LOTE'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTE'
    end
    object Qr_Ped02_MPP2MP_DTVCTO: TDateTimeField
      FieldName = 'P2MP_DTVCTO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DTVCTO'
    end
    object Qr_Ped02_MPP2MP_PCOCUS: TFloatField
      FieldName = 'P2MP_PCOCUS'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PCOCUS'
    end
    object Qr_Ped02_MPP2MP_PCOCOMPRA: TFloatField
      FieldName = 'P2MP_PCOCOMPRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PCOCOMPRA'
    end
    object Qr_Ped02_MPP2MP_CODPRO_ORI: TFloatField
      FieldName = 'P2MP_CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODPRO_ORI'
    end
    object Qr_Ped02_MPP2MP_LOTE_ORI: TStringField
      FieldName = 'P2MP_LOTE_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTE_ORI'
    end
    object Qr_Ped02_MPP2MP_PRECO_ORI: TFloatField
      FieldName = 'P2MP_PRECO_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PRECO_ORI'
    end
    object Qr_Ped02_MPP2MP_QTD_ORI: TFloatField
      FieldName = 'P2MP_QTD_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_ORI'
    end
    object Qr_Ped02_MPP2MP_DTVCTO_ORI: TDateTimeField
      FieldName = 'P2MP_DTVCTO_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DTVCTO_ORI'
    end
    object Qr_Ped02_MPP2MP_NOME2: TStringField
      FieldName = 'P2MP_NOME2'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_NOME2'
      Size = 30
    end
    object Qr_Ped02_MPP2MP_OUTINF: TStringField
      FieldName = 'P2MP_OUTINF'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_OUTINF'
      Size = 30
    end
    object Qr_Ped02_MPPDNOME_PA: TStringField
      FieldName = 'PDNOME_PA'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped02_MPPDMARCA_PA: TStringField
      FieldName = 'PDMARCA_PA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Qr_Ped02_MPPDUND_PA: TStringField
      FieldName = 'PDUND_PA'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02_MPPDNOME_MP: TStringField
      FieldName = 'PDNOME_MP'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped02_MPPDMARCA_MP: TStringField
      FieldName = 'PDMARCA_MP'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Qr_Ped02_MPPDUND_MP: TStringField
      FieldName = 'PDUND_MP'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02_MPnomemp_completa: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemp_completa'
      Size = 80
      Calculated = True
    end
    object Qr_Ped02_MPretorno_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'retorno_calc'
      Calculated = True
    end
    object Qr_Ped02_MPquebra_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'quebra_calc'
      Calculated = True
    end
    object Qr_Ped02_MPtotal_pa_total: TFloatField
      DisplayLabel = 'Total Liquido Prod.Acabado'
      FieldKind = fkCalculated
      FieldName = 'total_pa_total'
      Calculated = True
    end
    object Qr_Ped02_MPtotal_mp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_mp'
      Calculated = True
    end
    object Qr_Ped02_MPTOTDES_PA: TFloatField
      FieldName = 'TOTDES_PA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PRECO_ORI'
    end
    object Qr_Ped02_MPtotal_qtd_entregue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_qtd_entregue'
      Calculated = True
    end
    object Qr_Ped02_MPCODIGO_PRODUTO: TFloatField
      FieldName = 'CODIGO_PRODUTO'
    end
    object Qr_Ped02_MPCODIGO_AGRUPAMENTO: TFloatField
      FieldName = 'CODIGO_AGRUPAMENTO'
    end
    object Qr_Ped02_MPNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 53
    end
    object Qr_Ped02_MPPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
    end
    object Qr_Ped02_MPPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Size = 40
    end
  end
  object Src_Ped02_MP: TDataSource
    DataSet = Qr_Ped02_MP
    Left = 606
    Top = 136
  end
  object Qr_Ped_02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select  PDCODPRO,'
      '           PDNOME, '
      '           PDMARCA,'
      '           PDUND,'
      '           P2QTD,  '
      '           P2COMPLEMENTO,'
      '           P1ORC_PRAZOENT'
      'from '
      '          CADP02,'
      '          CADPRO,'
      '          CADP01_ORC'
      'where'
      '          P2CODPRO=PDCODPRO '
      'and    P2CHAVE=P1ORC_CHAVE')
    Left = 576
    Top = 166
    object Qr_Ped_02PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_Ped_02PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped_02PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Qr_Ped_02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped_02P1ORC_PRAZOENT: TStringField
      FieldName = 'P1ORC_PRAZOENT'
      Origin = 'SG_ASSOC.CADP01_ORC.P1ORC_PRAZOENT'
      Size = 50
    end
    object Qr_Ped_02PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped_02P2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
  end
  object Ds_Ped_02: TDataSource
    DataSet = Qr_Ped_02
    Left = 606
    Top = 168
  end
end
