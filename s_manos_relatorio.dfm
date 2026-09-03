object frm_manos_relatorio: Tfrm_manos_relatorio
  Left = 69
  Top = 77
  Width = 1122
  Height = 581
  Caption = 'Relatorio de Impressao de Ordem de Servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1114
    Height = 550
    ActivePage = tsImpressao
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
    end
    object tsImpressao: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 1
      object RLReport_os_modelo01: TRLReport
        Left = 120
        Top = -165
        Width = 794
        Height = 1123
        DataSource = src_os01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        PreviewOptions.ShowModal = True
        ShowProgress = False
        AfterPrint = RLReport_os_modelo01AfterPrint
        BeforePrint = RLReport_os_modelo01BeforePrint
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 123
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSintImage1: TRLImage
            Left = 0
            Top = 0
            Width = 217
            Height = 123
            Align = faLeft
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Stretch = True
          end
          object lblcab_emp: TRLLabel
            Left = 215
            Top = 0
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_endereco: TRLLabel
            Left = 215
            Top = 32
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_cidade_uf_cep: TRLLabel
            Left = 215
            Top = 48
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_dathor: TRLLabel
            Left = 256
            Top = 103
            Width = 338
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 615
            Top = 103
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 673
            Top = 103
            Width = 42
            Height = 14
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object lblcab_fonefax: TRLLabel
            Left = 215
            Top = 65
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblcab_email_home: TRLLabel
            Left = 215
            Top = 86
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlcab_cnpj: TRLLabel
            Left = 215
            Top = 18
            Width = 500
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rlband_cab_cli: TRLBand
          Left = 38
          Top = 199
          Width = 718
          Height = 69
          BeforePrint = rlband_cab_cliBeforePrint
          object lbl_cabcli: TRLLabel
            Left = 6
            Top = 6
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_codcli_nome: TRLDBText
            Left = 81
            Top = 6
            Width = 285
            Height = 14
            AutoSize = False
            DataField = 'OS1NOMCLI'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 6
            Top = 21
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Solicitante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 81
            Top = 21
            Width = 153
            Height = 14
            AutoSize = False
            DataField = 'OS1NOMSOL'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 345
            Top = 7
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 426
            Top = 7
            Width = 285
            Height = 14
            AutoSize = False
            DataField = 'CDENOM'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 345
            Top = 21
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fone/Fax:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_fone: TRLDBText
            Left = 424
            Top = 21
            Width = 129
            Height = 14
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_fax: TRLDBText
            Left = 581
            Top = 21
            Width = 129
            Height = 14
            AutoSize = False
            DataField = 'CFAX'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 6
            Top = 34
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_endereco: TRLDBText
            Left = 81
            Top = 35
            Width = 630
            Height = 14
            AutoSize = False
            DataField = 'endereco_completo'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 6
            Top = 51
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_cidade: TRLDBText
            Left = 82
            Top = 48
            Width = 227
            Height = 14
            AutoSize = False
            DataField = 'LNOME'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_uf: TRLDBText
            Left = 320
            Top = 48
            Width = 22
            Height = 14
            AutoSize = False
            DataField = 'LUF'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_cnpj: TRLDBText
            Left = 395
            Top = 49
            Width = 129
            Height = 14
            AutoSize = False
            DataField = 'CNPJ_CPF'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 581
            Top = 50
            Width = 129
            Height = 14
            AutoSize = False
            DataField = 'IE_RG'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_tipo_doc_cnpj_cpf: TRLDBText
            Left = 345
            Top = 49
            Width = 51
            Height = 14
            AutoSize = False
            DataField = 'tipo_doc_cnpj_cpf'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object edt_tipo_doc_ie_rg: TRLDBText
            Left = 530
            Top = 49
            Width = 51
            Height = 14
            AutoSize = False
            DataField = 'tipo_doc_ie_rg'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_cab_obs: TRLBand
          Left = 38
          Top = 161
          Width = 718
          Height = 38
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 16744576
          object RLLabel8: TRLLabel
            Left = 0
            Top = 0
            Width = 224
            Height = 38
            Align = faLeft
            Caption = 'Ordem de Servico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object edt_chave: TRLDBText
            Left = 416
            Top = 0
            Width = 300
            Height = 38
            Alignment = taCenter
            AutoSize = False
            DataField = 'CHAVE'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 221
            Top = 19
            Width = 100
            Height = 17
            Alignment = taCenter
            AutoSize = False
            DataField = 'status'
            DataSource = src_os01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Times New Roman'
            Font.Style = []
            Holder = RLLabel7
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 221
            Top = 4
            Width = 100
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Situa'#231#227'o da OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBBarcode1: TRLDBBarcode
            Left = 323
            Top = 3
            Width = 92
            Height = 32
            Alignment = taCenter
            AutoSize = False
            CheckSumMethod = cmNone
            DataField = 'codbar'
            DataSource = src_os01
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
        end
        object RLBand_defrec: TRLBand
          Left = 38
          Top = 268
          Width = 718
          Height = 36
          AutoSize = True
          object lblcab_defrec: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 22
            Align = faTop
            Alignment = taCenter
            Caption = 'Defeito Reclamado e/ou Servi'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 0
            Top = 22
            Width = 718
            Height = 14
            Align = faBottom
            DataField = 'OS1DEFREC'
            DataSource = src_os01
          end
        end
        object rlsubdet_servexec: TRLSubDetail
          Left = 38
          Top = 304
          Width = 718
          Height = 60
          DataSource = src_os05_servexec
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object RLLabel10: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 22
              Align = faTop
              Alignment = taCenter
              Caption = 'Servi'#231'os Executados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_cabos05_servexec: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 16
            BandType = btHeader
            Degrade.OppositeColor = 8404992
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object lbl_cabos05_item: TRLLabel
              Left = 5
              Top = 0
              Width = 24
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = #205'tem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_qtd: TRLLabel
              Left = 35
              Top = 4
              Width = 42
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_codigo: TRLLabel
              Left = 77
              Top = 0
              Width = 38
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_descricao: TRLLabel
              Left = 116
              Top = 0
              Width = 214
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Servi'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_pcouni: TRLLabel
              Left = 499
              Top = 0
              Width = 68
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pre'#231'o Unitario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_valortotal: TRLLabel
              Left = 630
              Top = 0
              Width = 86
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_cabos05_obs: TRLLabel
              Left = 331
              Top = 0
              Width = 166
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Oberva'#231#245'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlcab_TOTAL_DESCONTOS: TRLLabel
              Left = 566
              Top = 1
              Width = 62
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand_detos05_servexec: TRLBand
            Left = 0
            Top = 40
            Width = 718
            Height = 15
            AutoSize = True
            object det_cabos05_valortotal: TRLDBText
              Left = 630
              Top = 1
              Width = 86
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTAL_LIQUIDO'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_valortotal
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_item: TRLDBText
              Left = 5
              Top = 0
              Width = 24
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS5ITEM'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_item
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_qtd: TRLDBText
              Left = 35
              Top = 0
              Width = 42
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS5QTD'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_qtd
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_codigo: TRLDBText
              Left = 77
              Top = 0
              Width = 38
              Height = 14
              AutoSize = False
              DataField = 'OS5CODPRO'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_codigo
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_pcouni: TRLDBText
              Left = 499
              Top = 0
              Width = 68
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS5PU'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_pcouni
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_descricao: TRLDBText
              Left = 116
              Top = 0
              Width = 214
              Height = 14
              AutoSize = False
              DataField = 'OS5NOME'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabos05_descricao
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
            object det_cabos05_obs: TRLDBMemo
              Left = 331
              Top = 0
              Width = 166
              Height = 14
              DataField = 'OS5OBS'
              DataSource = src_os05_servexec
              Holder = lbl_cabos05_obs
            end
            object rldet_TOTAL_DESCONTOS: TRLDBText
              Left = 566
              Top = 0
              Width = 62
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTAL_DESCONTOS'
              DataSource = src_os05_servexec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = rlcab_TOTAL_DESCONTOS
              ParentFont = False
              SecondHolder = det_cabos05_obs
              SecondHoldStyle = hsCopyHeight
            end
          end
        end
        object RLSubDetail_os02_equipentregues: TRLSubDetail
          Left = 38
          Top = 364
          Width = 718
          Height = 60
          DataSource = src_os02_equip_entregue
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object RLLabel6: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 22
              Align = faTop
              Alignment = taCenter
              Caption = 'Equipamentos Entregues'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_cabos02_equipentregues: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 16
            BandType = btHeader
            object cab_OS2ITEM: TRLLabel
              Left = 5
              Top = 0
              Width = 24
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = #205'tem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2MODELO: TRLLabel
              Left = 361
              Top = 2
              Width = 54
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Modelo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2CODPRO: TRLLabel
              Left = 31
              Top = 0
              Width = 38
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2NOME: TRLLabel
              Left = 71
              Top = 0
              Width = 216
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o dos Equipamentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2NUMPAT: TRLLabel
              Left = 469
              Top = -1
              Width = 82
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Num.Patrimonial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2OBS: TRLLabel
              Left = 551
              Top = -1
              Width = 166
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Oberva'#231#245'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2SERIE: TRLLabel
              Left = 415
              Top = 2
              Width = 54
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS2MARCA: TRLLabel
              Left = 287
              Top = 2
              Width = 74
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand_detos02_equipentregues: TRLBand
            Left = 0
            Top = 40
            Width = 718
            Height = 14
            AutoSize = True
            object det_OS2ITEM: TRLDBText
              Left = 5
              Top = 0
              Width = 24
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS2ITEM'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2ITEM
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2MODELO: TRLDBText
              Left = 361
              Top = 0
              Width = 54
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'OS2MODELO'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2MODELO
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2CODPRO: TRLDBText
              Left = 31
              Top = 0
              Width = 38
              Height = 14
              AutoSize = False
              DataField = 'OS2CODPRO'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2CODPRO
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2NOME: TRLDBText
              Left = 71
              Top = 0
              Width = 216
              Height = 14
              AutoSize = False
              DataField = 'OS2NOME'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2NOME
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2NUMPAT: TRLDBText
              Left = 469
              Top = 0
              Width = 82
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'OS2NUMPAT'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2NUMPAT
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2SERIE: TRLDBText
              Left = 415
              Top = 0
              Width = 54
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'OS2SERIE'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2SERIE
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS2OBS: TRLDBMemo
              Left = 551
              Top = 0
              Width = 166
              Height = 14
              DataField = 'OS2OBS'
              DataSource = src_os02_equip_entregue
              Holder = cab_OS2OBS
            end
            object det_OS2MARCA: TRLDBText
              Left = 287
              Top = 0
              Width = 74
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'OS2MARCA'
              DataSource = src_os02_equip_entregue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS2MARCA
              ParentFont = False
              SecondHolder = det_OS2OBS
              SecondHoldStyle = hsCopyHeight
            end
          end
        end
        object RLSubDetail_OS4: TRLSubDetail
          Left = 38
          Top = 424
          Width = 718
          Height = 60
          DataSource = src_os04_pecas_utilizadas
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object RLLabel9: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 22
              Align = faTop
              Alignment = taCenter
              Caption = 'Pe'#231'as Utilizadas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_cabos04_pecasutilizadas: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 16
            BandType = btHeader
            object cab_OS4ITEM: TRLLabel
              Left = 5
              Top = 0
              Width = 28
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = #205'tem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS4CODPRO: TRLLabel
              Left = 35
              Top = 0
              Width = 44
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS4NOME: TRLLabel
              Left = 157
              Top = 0
              Width = 308
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o das Pe'#231'as'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_VALOR_TOTAL: TRLLabel
              Left = 633
              Top = 0
              Width = 82
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS4QTD: TRLLabel
              Left = 87
              Top = 1
              Width = 70
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS4PU: TRLLabel
              Left = 465
              Top = 0
              Width = 84
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pre'#231'o Unit'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS4TOTDES: TRLLabel
              Left = 547
              Top = 1
              Width = 84
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descontos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand_detos04_pecasutilizadas: TRLBand
            Left = 0
            Top = 40
            Width = 718
            Height = 18
            AutoSize = True
            object det_OS4ITEM: TRLDBText
              Left = 5
              Top = 0
              Width = 28
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS4ITEM'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4ITEM
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS4CODPRO: TRLDBText
              Left = 35
              Top = 0
              Width = 44
              Height = 18
              AutoSize = False
              DataField = 'OS4CODPRO'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4CODPRO
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS4NOME: TRLDBText
              Left = 157
              Top = 0
              Width = 308
              Height = 18
              AutoSize = False
              DataField = 'OS4NOME'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4NOME
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_VALOR_TOTAL: TRLDBText
              Left = 633
              Top = 0
              Width = 82
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS4TOTLIQ'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_VALOR_TOTAL
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS4PU: TRLDBText
              Left = 465
              Top = 0
              Width = 84
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS4PU'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4PU
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS4QTD: TRLDBText
              Left = 87
              Top = 0
              Width = 70
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS4QTD'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4QTD
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS4TOTDES: TRLDBText
              Left = 547
              Top = 0
              Width = 84
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS4TOTDES'
              DataSource = src_os04_pecas_utilizadas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS4TOTDES
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
          end
        end
        object RLSubDetail_os03: TRLSubDetail
          Left = 38
          Top = 484
          Width = 718
          Height = 60
          DataSource = src_os03_acessorios
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object RLLabel11: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 22
              Align = faTop
              Alignment = taCenter
              Caption = 'Acess'#243'rios Acompanhando'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_cabos03_acessorios: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 16
            BandType = btHeader
            object cab_OS3ITEM: TRLLabel
              Left = 5
              Top = 0
              Width = 24
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = #205'tem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS3CODPRO: TRLLabel
              Left = 31
              Top = 0
              Width = 68
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS3NOME: TRLLabel
              Left = 166
              Top = 3
              Width = 346
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o do Acessorios'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS3OBS: TRLLabel
              Left = 515
              Top = -4
              Width = 202
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Oberva'#231#245'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object cab_OS3QTD: TRLLabel
              Left = 98
              Top = 2
              Width = 68
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand_detos03_acessorios: TRLBand
            Left = 0
            Top = 40
            Width = 718
            Height = 19
            AutoSize = True
            object det_OS3ITEM: TRLDBText
              Left = 5
              Top = 0
              Width = 24
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS3ITEM'
              DataSource = src_os03_acessorios
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS3ITEM
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS3CODPRO: TRLDBText
              Left = 31
              Top = 0
              Width = 68
              Height = 18
              AutoSize = False
              DataField = 'OS3CODPRO'
              DataSource = src_os03_acessorios
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS3CODPRO
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS3NOME: TRLDBText
              Left = 166
              Top = 0
              Width = 346
              Height = 18
              AutoSize = False
              DataField = 'OS3NOME'
              DataSource = src_os03_acessorios
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS3NOME
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object det_OS3QTD: TRLDBText
              Left = 98
              Top = 1
              Width = 68
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'OS3QTD'
              DataSource = src_os03_acessorios
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = cab_OS3QTD
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBMemo3: TRLDBMemo
              Left = 515
              Top = 1
              Width = 202
              Height = 14
              DataField = 'OS4OBS'
              DataSource = src_os04_pecas_utilizadas
              Holder = cab_OS3OBS
            end
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 595
          Width = 718
          Height = 155
          BandType = btSummary
          object RLLabel12: TRLLabel
            Left = 5
            Top = 0
            Width = 292
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Rebebi as Mercadorias e/ou servicos Constante Nesta OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 5
            Top = 109
            Width = 292
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '________________________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlBottom
            ParentFont = False
          end
          object lbl_dataentrada: TRLLabel
            Left = 303
            Top = 23
            Width = 406
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Entrada: _____/_____/______      Hora: _____:_____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_dataentrega: TRLLabel
            Left = 303
            Top = 78
            Width = 406
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Entrega: _____/_____/______      Hora: _____:_____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 413
            Top = 109
            Width = 292
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '________________________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlBottom
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 6
            Top = 125
            Width = 290
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Assinatura do Cliente por Extenso'
          end
          object RLLabel19: TRLLabel
            Left = 414
            Top = 125
            Width = 290
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'T'#233'cnico'
          end
          object lbl_datasaida: TRLLabel
            Left = 303
            Top = 48
            Width = 406
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Saida..: _____/_____/______      Hora: _____:_____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLSubDetail_BAIXATECNICA: TRLSubDetail
          Left = 38
          Top = 544
          Width = 718
          Height = 51
          DataSource = src_mem_bxtecnica
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16744576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object RLLabel17: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 22
              Align = faTop
              Alignment = taCenter
              Caption = 'BAIXA TECNICA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 14
            AutoSize = True
            object RLDBMemo4: TRLDBMemo
              Left = 0
              Top = 0
              Width = 718
              Height = 14
              Align = faTop
              DataField = 'BTNOME'
              DataSource = src_mem_bxtecnica
            end
          end
        end
        object RLBand8: TRLBand
          Left = 38
          Top = 750
          Width = 718
          Height = 225
          BandType = btSummary
          object RLLabel20: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 22
            Align = faTop
            Alignment = taCenter
            Caption = 'Identifica'#231#227'o do executor do servi'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 2
            Top = 26
            Width = 110
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 2
            Top = 41
            Width = 110
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Registro Geral:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 244
            Top = 40
            Width = 36
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CPF:'
            Layout = tlCenter
          end
          object RLLabel24: TRLLabel
            Left = 416
            Top = 40
            Width = 84
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Assinatura:'
            Layout = tlCenter
          end
          object RLLabel25: TRLLabel
            Left = 6
            Top = 57
            Width = 708
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data e Local da Realiza'#231#227'o do Servi'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 7
            Top = 77
            Width = 185
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data...:_____/_____/_____'
            Layout = tlCenter
          end
          object RLLabel27: TRLLabel
            Left = 204
            Top = 78
            Width = 509
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 
              'Local:__________________________________________________________' +
              '________'
            Layout = tlCenter
          end
          object RLLabel28: TRLLabel
            Left = 6
            Top = 102
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Portaria de aprova'#231#227'o de modelo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 6
            Top = 118
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o do IMMETRO (inventario):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 6
            Top = 135
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o das marcas de selagem retiradas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 6
            Top = 152
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o da marcca de reparo retirada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 6
            Top = 168
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o das marcas de selagem afixada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 6
            Top = 186
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numera'#231#227'o da marca de reparo afixada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 6
            Top = 204
            Width = 355
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Numero do RAT:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_nomtec: TRLLabel
            Left = 113
            Top = 24
            Width = 91
            Height = 14
          end
          object rldet_tecnico_rg: TRLLabel
            Left = 116
            Top = 40
            Width = 119
            Height = 14
          end
          object rldet_tecnico_cpf: TRLLabel
            Left = 284
            Top = 40
            Width = 126
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldet_OS1PORTPAROVMOD: TRLLabel
            Left = 365
            Top = 102
            Width = 154
            Height = 14
          end
          object rldet_OS1NUMIMMETRO: TRLLabel
            Left = 365
            Top = 118
            Width = 140
            Height = 14
          end
          object rldet_OS1NUMMARCSELRET: TRLLabel
            Left = 365
            Top = 135
            Width = 161
            Height = 14
          end
          object rldet_OS1NUMMARCREPRET: TRLLabel
            Left = 365
            Top = 152
            Width = 161
            Height = 14
          end
          object rldet_OS1NUMMARCSELAFIX: TRLLabel
            Left = 365
            Top = 168
            Width = 168
            Height = 14
          end
          object rldet_OS1NUMMARCREPAFIX: TRLLabel
            Left = 365
            Top = 186
            Width = 168
            Height = 14
          end
          object rldet_OS1NUMRAT: TRLLabel
            Left = 365
            Top = 204
            Width = 112
            Height = 14
          end
        end
      end
    end
    object tsEtiqueta_Identificacao: TTabSheet
      Caption = 'Etiquetas identifica'#231#227'o'
      ImageIndex = 2
      object RLReport_etiqueta_idetificacao: TRLReport
        Left = 72
        Top = 64
        Width = 423
        Height = 60
        DataSource = src_etiq_impres
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 112.000000000000000000
        PageSetup.PaperHeight = 16.000000000000000000
        PreviewOptions.ShowModal = True
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 11
          Width = 347
          Height = 47
          Background.Height = 168
          Background.Stretch = True
          Background.Width = 655
          Background.Picture.Data = {
            0A544A504547496D6167655C180100FFD8FFE000104A46494600010101004800
            480000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC000110800A8028F03012200021101031101
            FFC4001F00000007000301010000000000000000000005060708090A01030402
            0BFFC4005710000103030204040304050A030603020F01020304050611070800
            122131091341511422611571A1D10A3252819116182342569295B1D5E117C1F0
            24263362D2F12536534463191A272834353A4555727885A2B5B8FFC4001D0101
            00020203010100000000000000000000050604070103080902FFC40044110001
            0303030204020705060503050000010203110004210512310641072251611371
            14328191A1D1F0081523B1C116243342E1F117265262633435642544535572FF
            DA000C03010002110311003F00DF938E1400075273F37418EFE9FC3DF3F8F1D3
            E6B9FB5F827F2E3E0924927A93EFFF005FF5DFBF1C7FD7FD63852BB3CD73F6BF
            04FE5C0F35CFDAFC13F9719C1FD217F124DC16CEECADB36DA76815AA5DA3B9AD
            EC6ABD374B6D2D40AAC5853469ED0E7D5A916FC8B820C7A9B12A9A89CF55EBD4
            F87F68CF89258A44412A7790A750DADA613C3674FF00C4F749B7BF6ED1A85E27
            7A49E283B3C9F6CBED6E55DA96B1D9174DF3A357F2D898826D7A3D0A75C95C86
            88B5A6588B169CF54A994D950244A6DFA7B132123852B573E6B9FB5F827F2E07
            9AE7ED7E09FCB8C5BEB7EBC788C78B4F8BA6F0B635B38DE65CBB2BD0ED8A5B12
            60CDAE58714355ABFF0053691269F40AAAEE4AA440D559CA7A6FB953E829A733
            351022D1A92E4D760CC992B959B18FD1C2F11CD76DF5EDAB5A34EB7515A66EBD
            C66D0B56DDD25BE6F74C2854D9B7A516622A66DCACD721D3988903F9431E5DBF
            7152AA72E0C38B1E6B30A04B5B0996FC952D4AD1879AE7ED7E09FCB81E6B9FB5
            F827F2E28A3F4857C46F51FC36B60758D49D13911206B76A6DE546D29D33AD4D
            851EA4DDB751ACB12A655AE38F4F98DBD0E6D4693488721EA64798C3F10CC534
            B90C3CDB65A5D1AC2D79F149F072DE478702376DBDEBB3785A1BE202FD2AD8D5
            4B42FA8AD48674CEFDAFCAB6612D8B3A73ED1934F669B3AF1A62E98BA6BD0299
            2A3C2A9B5369294088B4295BA1F35CFDAFC13F9703CD73F6BF04FE5C6463C503
            75FBDBDD9F8C1693F838ECA77275BDA550691A48D6AC6BB6B0D9B0DA76F59150
            9D6F4EBD58A1C1A861336053A9767FF276630C5325D3DFA9D4ABCE225CAF8586
            865F59782378876E868BAE7E239E1D5BF6D567F5D750B604E5D37A5B7AD73E24
            68D735DDA5F68D51DA45C0DD75D6198BF6A79497EDEAD50674E6DCAC7C2D6274
            5AA4B96634774295AB5F35CFDAFC13F9703CD73F6BF04FE5C7E78F6D6E73C643
            C42F6DBBF3F17BD1DDF85D5A05A6FB4ED5EBB6DAD20DB0DA34B842C6B8EDAD39
            A35AB78D76056223B1570AB6B4DB57AD0126A17246AC48AB5515566FCCA7C48F
            11863635E12BBD1A8F882F87BEDBB7595D870A05D9A8B694E837D44A6A0B54E6
            AFCB26E0AB59179AA03054A5310645C56F542543614A2A6E33CD0ED83C29563D
            E6B9FB5F827F2E079CBFDAFC13F9718E9FD272DC4EF034D7747E161A17B59DD0
            EA96DA59DC8D7F58ACDBC6A9A7570CFA3B15094ABAB4368B40AAD661C271A353
            5501BB8EACA86DAD692844E94842879CA3C477DEFE8EF8ECF83169646DF1D07C
            4E6E7DE5E93E9BDCF6DB3ABDA4BAA54A7EA4CC8B5EB557894B12D51EBCDD4DCF
            B3552E4B3127CAA1D4A9558A6B72135069F7198EF34B52B73DE6B9FB5F827F2E
            079AE7ED7E09FCB8AF1D3AF127DB6557C3FF004BBC43756AFDB7F47B456FBD32
            B5AFBAAD5AE79A52D51AA55F8AD21DB66332C36F4DAAD67ED8F3E9902974F8D2
            6A131E4250D30A57372C5DDAA7E907F858EF1357E9DA17A4FB81553751AE19BF
            665A14BD43B62A96442BD6A65652CD36D9ABD4C2E9D26A3300CC08336453E54F
            5144786D3D2DC6E3A94ABB0F35CFDAFC13F9703CD73F6BF04FE5C42CD3ADFF00
            6D8F547771AB7B1CB56F49A7725A2769AAF9BEEC6AAD06A54911ED444EB769EA
            AD52AA931A441AC440FDD741573427164C79EDC803CA438A4A2F6BFE281B30DE
            25F5B85D38D05D5545D975ED756AFF008C309FA3D4694D50D86EA57152644C81
            266B4DB558830EA16BD5634B9500B8D475A62F984096C1529560FE6B9FB5F827
            F2E079AE7ED7E09FCB8A6F91E3C9E1AB1741DBDCBC8D65AC31A2AFEBE276D512
            F676C7B85BA7CDD5636ED42EA55321F3C74A9FA4B545A5CD92F57503ECD694D1
            656F25C05212D687E90FF84E5F3B8EA5ED86DCDCB42977CD72E462CFA25CCE5B
            958634CAAF74CB949810E8B0AF875914F5B932A0B4418D5075A6A8CE3EA4ABED
            211D41F2A55DCF9AE7ED7E09FCB81E6B9FB5F827F2E32ABFA43BBADDC86DD775
            BE0F969E866B4EA0695DB5AC7B8DAC5B7AA744B32BF2A8D4FBF682CDE1A3509A
            A4DCD1E3908A9C26E256AAB1D2C3D9486AA12923A3AAE2E1F7E3E2C9B15F0DC6
            680C6EA759A15A974DD51973EDDD3EA053A65D57E55296DBA5876B09B7E98952
            E0D290F053289D559101994E21C6E1992B65E0DA95647E6B9FB5F827F2E079AE
            7ED7E09FCB8AFF00D8B789DECAFC472DCAF57F6A3AC54CBEA5DA4631BBAD09F0
            E55BD7C5AED4D2B4C29757B6AA686E5A69F314DB8DC7A9C354CA7ADE6DC60C94
            BEDADA4C22DC2FE920F84E6DA757EE5D11BEF5E6AF5BBD2CBAD48B72F076C1B2
            6B176DBB6D576148312A34AA8D7A21621B92E97292B8D504D3BE3911A4B6EC65
            2CC869C692A55EEF9AE7ED7E09FCB81E6B9FB5F827F2E22CDB3BD3DADDDDB5E3
            BD0A26B4D98F6D8DAB3A6DF7335724CE5C2B729D6ED379DBA83D51129966743A
            84596DAA9CAA33B10559EAA299A74586FCC931997B2CDE2C3FA475B42D6CF0FD
            DC650FC3EF76779D83B9BB5EADA7726CDA9D3E995FD3AB9EBB4646A15061DCF2
            6C4ABCB6D22A2C8A3BCFAA7C4E78B505D316FBC21A996A429A52B67FE6B9FB5F
            827F2E079AE7ED7E09FCB8A3ED3CF152DB8ECD3C31B62BAF7BEAD749506ECD60
            DBE693D45A913D8A85DBA91A9B774EB1E8D52AF5462526036F4FA9CB7244932A
            A35294A8D13CF7D285C9F3DD436A7C7635E32FB01F10EBD6BBA65B73D5A992B5
            46DFA6BD5A9BA6B7D5B354B1EF37A8D196D372EA94EA5D5925BA94584B911C4C
            4C494EC98A87D975F8E865C4B854AB50F35CFDAFC13F9703CD73F6BF04FE5C74
            AD686D0A5B8B4B684254B5AD6A094A1081CCA5294A2025290095289000C92477
            E33FFA81FA4EBE0F5A77A9955D31A8EE1EAF5F9743ADBF40AA5DF68585705C56
            0313E24954398B62E58A8426A50633EDB89351A5449B0E536D97E03D2E3ADB75
            6A5681BCD73F6BF04FE5C0F35CFDAFC13F97085D36D47B17582C0B3B54F4C6E8
            A4DEBA7BA816ED2AECB36ECA14812A93705BD5B88D4EA654E0BDCA8596A44679
            0A534EB6D488EE73C792CB321A75A46427F48B75E379D46F117F0CDDAA6D7776
            7AAFB61A4EE623576D1B96A5A7B70D429901554AA5F96C5129F5FAAD320BACFD
            A6F52A3CD7D2CA4B895F96E2DB4A87370A56CC3CD73F6BF04FE5C0F35CFDAFC1
            3F971852DEF59DE39FE07965DABBD5FF00F08FD7F7BDA156D5EF6ED0756F4AF5
            4E9AFCD43949AE4BF219538AAD35509D0A0CD536E42FB5A8155813E9531E8D25
            E44B8E171DCD3D5EDE2CBB32D1ED91E856FBF5CF5320E99E926BF69ED857B58D
            0E63122AB73D6675F36B42BA1BB529143A6B6FCCA8D6E94CC97E35550D2511A0
            B90A42A54865090A2A5599F9AE7ED7E09FCB81E6B9FB5F827F2E29FF00641E3A
            3E1C1E20BA9ABD18DBDEB2541DD537204CA9D2AC9BEAD5A9D9B58B86153DB0F4
            F7680A9BE7C1A8B9118C3EE444CC6E61672E351DC4A565326B6B1E229B55DE46
            A56BC68FE86DF150AC6A5EDAEE476D4D60B3EBB6ED52DAACDB35A8F58AAD0263
            1F0B5469A54C6A0D628D329F35F8FCEDC793E4216479EDE54A9CDE6B9FB5F827
            F2E3E54F2D214A2B0004F5240E806493D077C710876EDE21BB5ADD5EBA6E036E
            DA1B7B542F3D48DB156A75BBAC2D316F55235BD6FD72057A55B6FD3235C6FB29
            A65524AAAB027B2C2613AEA643306549654B6592B2EC6EAF559AD12DB9EB16A8
            BAA710E5A1615C53E2143AD4778D4BECF7A3C05B2EBA7CB438998F32B6880A25
            4900254700F4DCBE8B6B77EE1C2021869C7544F1084951FE55DF6CC2EEAE18B6
            6C12BB879B650073B9C5840FC4D65B7C4D3C61B71B47DCC54F4FF6ADAC17069C
            D9FA6E2BB66DD8CB16BDA12D35DBCA917656E0C99CDBB7250AB72CC56A9B169C
            88E595446D45D78A9952FA88230BC5F3C48DE290E6E9AE73D413FF0073F4C460
            1E5C0E9630CF739FFAC566D4674EB96BD54B86A521D9152ADD4A655A7C990B2E
            BF264D4243B2DE79E71432B5ADC75656A3D0A944E0671C2B2914CCA4B8402063
            38474CA80C118C81DFB8EE01F6C71E3ED7FADB5C76EEEAE53AC6A16C879D714D
            36C5E5C34D3692A1B12842160246D8120004FA57B83A77C3FE9CB6B1B3B47B43
            D2EEDE66D9B438FDD585ABEF3CB08056B5B8E34544A9539512600198AB3463C5
            ABC45309F3374172B8427989FE48E9A8CE7BF6B213D7181ED8CFAF0A7A578B17
            8843CF012B72772290B0319B534E7A0C9EE516703DBD4F7F7E2B569F4E53CE04
            00021B1974904020649C0EDD48FA7A1EBC2D29F09B4A90520024600049E9D71D
            33D09E9D00CF7C7149BBEB7EA5F3047506B3900152353BB11C6410F4823E4647
            A71577B4E82E913B4ABA5F4032AC85E91607829FFC104763E9F7D5A045F156DF
            179082EEE0AE279647559B62C104F51D709B5075E847418C7A7B712FC53B7D4E
            64C6DC0DC4D038C7FDDAB03D7B7EB5A6AE9FFBF4EA38AE769B404A529C67383F
            31C77C138C919F73F8F07F162737979C01EA397D3AFEEEBF767EECF102BEB0EA
            9695F10753F511267CAAD62F8A44649092F47A4C01EDDA27D1D11D16A84FF643
            A662227F71E9D24E0033F4690473DF398A9DEDF8A26FE49C9DC65C609009FF00
            BB1A799FBBFF00940E31EBDBB74FA1B46F13BDFAAD690ADC4DC2B4E7A936C69E
            FA83D322D207F1CFA710863D291C8144A16A51C7AF41D3B01F41DB1EBF77068D
            53B1FA891E9E8AE847B11D7DBB76C678C47FC40EAAE07536B8381FFBADECE604
            FF008FC1FEB5DC8F0EFA2D4527FB25D342790746D3BFED9C7C0F4FEB8A9EB0BC
            4BF7C0BC79FB81B89472338B6AC3CE7D7B5A63EF073D3B9E162DF88DEF55F692
            A4EBDDC09572E32AB7AC6395633D7FEEA918EBF41FE5C578468AB463A1E80138
            0A049FAE3E8475EB8FE19544661C21384E0653938C819FDDD31D4FD076EFC40D
            DF5EF58150527AB7A89291D86B3A82476F47C0393C41C0ED522CF87FD0A9509E
            8DE995F03FF63D3551300736C678EFCD4F18BE22FBD62DA92F6BC571C73B858B
            7AC81D3AF5C0B5C03DFB7FCB8F535E225BD558C2B5D6BAA3EFFC9FB231D4E00F
            FE58FDE7A76F5F685312038B4800FD338C1EE307B75F6FDDE87858D3291CEAE5
            2529240CF303D4F3728C7B83EA7B710CEF88BD668DDFF387518C9C9D6B500071
            C7F78923EC1F88A914786FD0A4A7FE4BE9711047FF0042D38E318FFD347038F9
            83C9A99303C417790E101ED6EAEACE0E47D83650F4183916D01EBD73D7A648EB
            9E14F137EDBBE7004B9AD15A3DD5CFF61D9BDBA8C605B807A7B77F5E22AD16DC
            2B2016C38A00A95D1441CF4C640C92491D3D3031E87879E8D63A5519990B6815
            3D9F263A1A52959032A2BF60903E5E841C8CE3038AEDF78AFD64C03FF39F5285
            62635BD481C80447F78E703BFE559C8F0E3A0923CDD15D2A4FA7EE1D2CC181EB
            6DCC89F4FBA9E8677C7BB871214759EB4072E47FF05B4475CFAE2DE3DC1F4E5E
            BF4E1776CEED77855E520B7AC1580CA5414E2D749B4524A3D80141CE0804F6CF
            4EE33C36740B01B7165E9ACB2B4A521294B8C138F4CA41091F7647D71D7874A2
            47A650592A7551D86C246108286D4A20630015231F724FAFDF9ADBFE2E75EBA0
            259EB3EA86C9FF0039D7753C77CC5C8200F48EFEF15D4E740787CDC84F4474A2
            D7FF0048D034B27B7FF1798F7F5A7DA8DB90DC92A230DC9D50A9CC94A482EA9C
            A75BC8C9F64F251909C6463247AF4E982166C6E2B5F10CB7F15A8D379C852943
            ECFA293849CF74D280240CF6EBC44B917DD3DA05882D94A92482F85364A87AE0
            E544763D410AC74E3C69BA9727995875CC85207F499249F94F504F5F600F423D
            CF4C03E2975F5B905CEB9EB079460E3A8754434300A63FBCCE3823EEC5472BC3
            3E91B81B8745F4ADBA7903F70E97BC8C67CB6D0047E1EBC54C91B99D636940AF
            506A6E139F9053E8A12324F5FF00F558240EE7AE47700F1D6FEE5F59B2437A89
            546C11D48A7D13B839CE0D2CF748EF8EBD3EFE222449F2249EEE2738EAA3D063
            E84607507B76FBF1C1F465A92412A5B98E84649CFEECE08EB81DFDB8FD0F17FC
            40502D8EB1EAA092A067FB41AA1524E09F37D26791C00313DEBA5CF0B3A21B12
            AE96E9C2AEE3F7269C01120981F470011C0F413CD498FE729ADAA500DEA25514
            DE7AA8D3E87923D47CD4AEB839F41E9D71C768DCCEB5230837F5496A24819814
            407A7423A53123A77FDFFBB88F497941012D24A475040EE3A0381FD6C7DC7AE7
            193E9E8430B74E55949009C84E48CF5C93F29C9EC7B63DF3DFBD3E29F882A00B
            7D6BD54A24893FBFB54DA9803CB0ABAE4FA9F6EF586AF0F3A1903CFD23D34023
            83FB9B4EDCA88CAA2DF333EBCD3EF23737AD692D817FD510A2AEC98143CAF1E8
            734B20038EA7A7EE39E3E4EE735B1BCBAEDFF52437D55C820514F43D40C8A61F
            4C67DF2786454C2C232DA4E49E8B5024E0F6E5C851C7AF7C9F5CF04D269D2168
            FE95C5AD4A27380A24289FD94F4C7B76E993F7F43DE27F88C92563ACFAB8A88D
            D09EA1D5021244033FDEB99E22019EC68C787FD00E1015D27D3494CED24E8BA7
            6E224647F76C47AF3ED9A7D6A3BACD66119E7226A15510B49E500D3E87947500
            A87352CA4E08ED93DF3F42CD557781B954BCF087AA75669A4A8F21FB2EDA3F27
            CB8FD7A293D4E49CE48CF4C74E1252E88EA90109CE72464F3F63E8A07380727A
            75F4C8381C11AED32A50F39C47203FA98514FCC7A823A67F1EBD4F5E227FE28F
            89A5C3BBAE3AC1091900750EAA13D8E47D2BF423D4D58ECFC3CF0D1A6940F497
            4B3A4AA47C5D0B4C7151090133F453079304C9EE268D656F2B74E80B0DEAED65
            383F29148B509C0EE3AD048271F7E0F4CF4C9F345DDDEF02A854216AE5679428
            80A34AB412414819079E827382A1E9939F6E0A1CA251E0A8A571997949C92569
            CA493F45A94011D31D33DCFAF5229F578F112A6E3B6DB0846309414213D475E9
            DB24FBFA01C6437E2E788F0027ADFAB0A810372B5FD50F053D8DDC1CC89804FD
            A6A45BF0EBC3C58053D0DD2BB4E64F4FE9604E318B69FB71C7AD39AC6E77787C
            ECBB2F5BE7B71C1CC86D147B54BE900ABA0C5B6A4E71CBD41EB9F73C1C3DBC3D
            C5424A4BDAC55B584A41C1A3DB395149F98F4A0A7BE41E981F8F1136B175292B
            586CA8A93800214938033D738EE7BE3BE492083C35154AE4E7DC71414E27E551
            CA9D50C057D0003200EA08EFDC800719CCF891E27DE91BBAE7AADA4088D9AFEA
            899188262E8662339E3DB3FBFF0086BE1E1E7A1FA4E2711D3FA59E23FF008DDA
            3FA1A9C53F7F5B858E9586752AB0B232028D26DBCE463AF5A3E33D7DBEA3A70D
            7563C48771B11D7033AAD5AF7E5144B60F96A00E53D689D7271D7AFF009F1086
            A8F4D7D6A05F730463B91EBD41E83A1E9D475CF4EBDF8454A8BCAAE6200E6E60
            A1838574C92A248C93EFDFA9C9E2C569D6FD7620BBD79D62E184881D47AA09F3
            004906EA71CF7C08EF5F93E1C787C9F30E87E93800C9FECFE97F747D187E599E
            D52D6B7E257BC55ACAE9BACD598AD12AE51F6059AA38C9C13E65BAB200C631DF
            DF3C20E4F8936F982D453AFF005D424750116DD884631900936A93DBBF5C8EBD
            B8A9ADDBEF1EC6DAE228F4DA9D225DD3755C10E64AA7D0A9F262B5F06D309296
            255614A717221C796FA92DB2A318F9896DC5B6A51491C385B68BAEE7D7FD1BB6
            755AA548874455D2E4F7E353E249766B4C43665BF1D86CC831A3F348096CF9C8
            093E5952412A278D9835CF1374DE9EB6EA5BBEA3EA86346BAB845BDB5DDD6BD7
            E5770B5857F84D9B92E1427E1AE56A480401B49045539AD07C26BDEA0B9E99B3
            E97E92B8D66CD855CDEDAB3D3FA7116AD82880E2C5A846F3BD30DA54A5038220
            9AB0593E269BEC6FAA77075F40C91FFCB560ABD88EF699C0EE0FDF9CF04727C4
            F77E88E8DEE26E204F51FF007634F8FBF4EB68F5C63AE7D31D388EB50B0E730D
            879E9318052C80852949525409C8C6064F5EC7F711DB845CEA12983CA54DAB00
            8C84F5C8C1C74FDDF5C1EF83C7167E2575539B63AB3A81D8892357BF3E9C4BFC
            C0F9CF313522FF0086BD0E09FF00933A6922463F71E9801183C7D1BF9FBCF152
            92478A36FF00DBEDB8CB887524FF00DD7D3CE8491DFF00EE7FF0FDDC12CAF151
            F1064E42772371B6064FFF002AE9C93D3A63AD9C71EA3F87113E452F98AB2901
            5D7B8241EB919CF51DC0EDEBC2627D34F6484FF5811CA4E0FCBF4FCBAFB9C713
            B6FE20754A8827AA35C323FF00DADEFF00DA232F8F9FF2EE6A25FF000E3A2924
            C747F4E019CA745D38471CC5BFDF07EE9A96D2FC56BC435BCF26E62E503D316A
            69B9F5C60E6CCCFD3DBAF7ED82097E2D3E230DE528DCDDCA31EF6969A1E9F5CD
            947391D8E3B8C9F7E21D4D82527E64A48191D41C0C93D70463FCF2067EF49546
            08E62529001CF420F718EF8EE3DBD3A64753C4EDAF5CF52A959EA3D69664183A
            9DE13DBFF31F59C5425D787BD1D07674AF4F08CE347D3F89F6B7FC3DBE62A68C
            8F175F12464F4DD05CA40F4168698F6C6477B2339C7B76F5E1392FC60BC4B1A3
            F26E9EE719191FF73B4B4E063EB6377EBDFDB3C425971791052BC1C24A8900F6
            F41DF1D091D7A11FE68BAA472D827014A50C7B9C949C673D7FE47DF8B359F597
            50B983AEEAC7D95A85D1EC93925E93DC03FA15BBAE85E9444EDE9AD093F2D2AC
            8011CF0CFCFF00391027E40F1A2F12AA3D5A04F97B99AED621C492D48914A9D6
            6E99FC1CF6193CCEC693F09664494197138F30B12A3BB8CF238938E3561E165E
            29B6D6FD2995DB32BD02550757ACDA5C2AAD6A9E6021AA5D6294B6988CFD5A9A
            F4672432D253522EA5715E710F250E34501694A88C0ED459FD64F42A033903E8
            074FDD91EDD4FB9E2CCFC14EE1A9DB9E233A2CC4095263357150F5628B526D97
            D6CB72A1C7D29BCEBACB325091CAF34D4EA3447DB6D630879B4389C140E36474
            67596B0C6AF68C5CDF5CDE5BDDBA865D6AE9E71F3E7C0536A716AD841CCCC18A
            D4FE22741F4FAB43BFBBB3D36D74FB9B1B672E595D8B0D5B0516C254A4388650
            80B4A8248055046EC7BFE853CE9F7FC0FE5C0E64FBFF009F1D3C0E3D375E4CAC
            377E97FE93D3EB3ABDE185AB3A90BAC52F4020EA7D474BF56AE7A52A534BB76D
            DB96EEB3AAD70CC1322216E41962D2815C760BC005ADF64A590E389E42DC6A4E
            9E6CF7685E3CBE1454DF083AA59D4CA66B05AF51A5EE22CCD0ED42997CD9558B
            1643284D3EA376391EE1B8984C9AC5B7F69D6AA026CD439265D16995592CA65B
            EA7E56DA3715B6BD09DDA694DC5A23B8ED30B5F5734B6E94362B169DD511D7A3
            2A44751544A95367C37A255A855982B529CA7D72873E9D5780B52970E6B2A528
            9871B2BF074F0E9F0FBBBEADA87B5CDB9D12CCD45AC427E92F5FD5EB8AEFD40B
            BA051A4292A768D40ABDF55EB81DB729CF04A1B94DD0934F7AA0D21B6EA4FCC4
            3680952B379E179AA3A67B2DFD21CF1BBB5F7277FDA5A3EDEA457EFDD54B4AB5
            A895FA65A949AC5BF74EA4A35861AA054AB7221C4947F91B74469ECB11DE71D7
            D31DE61869C7985B6958FE8A4D4E9744B3BC59F795765419B5B442F9DC93F5CA
            65E3572A89426E8B697FC40BC6EBA9BF24A0B623D0E9377D09E96E36161A6E5E
            0F5E87435BD8F07EF0F0F10BBAE817F6EAB6EF45BEB502DCA7B546837E51AE2B
            BEC1BBE5505971C759A0D6EB763576DF977051E3ADE7CC18B5B54FFB33E2249A
            5B908C97CB8F339B40D0ED1FD985E9B4ADBE6DFAC589A489D2DBD2CEB7B42615
            66AF635AF768B8693506A750EBF7A53A53974C395784C96EB7705EEFD4E5DCCE
            C99B22B12AA5227733E54ACC67E956DFFA7DBB1F0B2DBFEE776E17A50F58B47B
            4F374B4CAA54AF4B264AAA94075029B7059D25064A1A4809855F57D9F256B425
            B6640E552B0412C1F8DF6B8E91EF8B723E021A4BB66D43B47572E7AEEA4D91A9
            7361D855FA65CB36DCB64D574C2536E57D8A3C994ED0E73B0A975E7D34EA888D
            3595D127A6430CAA3A80D297878F864D83B6EF0D1B43619AFD66D81A976D569A
            D47ABEAA582B8F3AE2D3B4C8D52BF2E1BE1FB328CEDC2F4BACCFA4D9512B54EB
            72935F9B3155A952286DD7D12D89AFA1C6CD367FE0A7E1A1B14D5099ACFB6BDB
            3D0ED0D507A3CB834BBC6BD755F3A8155B529B3F984BA7D9E6FAB92E162D96DF
            6D6A8EECCA5B2CD55E88A54476A0E455AD952959F1BF2E4B576A5FA605235235
            BEE6A2E9DE9F6BE6D72DA55957A5E754856F5B2EC86F42A91A5AC465D76ACFC5
            A64653F7569C5620AFCE94D069F71AF30A7E21AF3101E1934256EDBC66BF4817
            5C346E5B176E97DC7A37ABFA336ADE76FBEDCEB7AE3BA6F69F0A836B9A5D5232
            950A746AD47B2EB955A73EC3CB4C88CCB72104A1615C6ACB7BBE1A5B26F114A1
            5B544DDCE86D0B53DEB29E94F5997322A75FB52F5B584E534A9F168D785A354A
            257D9A5D416CB0E4FA33D35FA3CC7988F224407244761D6DC4DA0EC936B7B0CD
            2C1A33B4FD20B77486C276AAFD7AAB0A92ED4EAB58B92E092CB31DFAF5D574DC
            13AAD72DCD565468EC446A5D6AAB3150A0B11E9D013169F1E3C5694AC2BF8536
            E9B43B40BF4783C58F40754B51ACFB3759AD1D66D7BA7B3A6971D7A9748BD6E1
            17E6996935A76DB943B72A1263D5AB0E4CB92D9B9A92B4C08920C47E90A128B2
            1D679B4C1FA319A6D72E96F82E6D2A9975C1954EA95D2354F51A24496DADA58B
            7AFED57BC6E4B5E53687025419A8DBB3A99536CE005A6673A720E4BE5AE1E02D
            E13DB8AD789DB90D57DA2DA35BD4FAE55DAB82EC7A97725F56B5A97B575A7BE2
            0D66F0B12D7B9A9168572A532402FD624C8A3A5770BCB75DB87ED571D714AB68
            A0502876AD0E916CDB348A6D02DDA053A1D1E8743A3C38F4FA5522954E8E88B0
            69D4E8315B6A3448712334DB11E3B0DA1A69A4250848000E14AC59FE94A5C143
            B5FC433C0DEE5B96AF4EA05BD41D4ED59AAD6AB9599B1E9D4AA4D3216A0EDC5F
            9950A8CF94E351A1C38ACA16EC892FBADB4D36952D6A4A413C4A8FD233F147D9
            05C1E185ADDA19A4BB8BD25D6CD5ED7636CD8564D8DA5379D0F506ACF2E55CB4
            B9554AA4C4DAD2EA8CD3635369D1DF79A335D65D992CC7890DB79E7B09BC0DEC
            785E6C4BC45A6E9D547797A0D135A26E9345BA2169F3F2B50355AC836F45BCDE
            A0BF72B486F4D6FAB35AA90A9BB6CD0D6A5D61150722FC084C25464BF283EC1E
            83F80B78446DAAFEA36A86916C834D6977CDBD2D9A8502B9785C1A97AB028952
            8CB0E45AA52299AB57C5F147A75561BA94BD0EA70E9ECCF86FA52F4590D3A84A
            8295904F150D0BD4ADB7784AFE8F9E98EBD53EB90341ED9D479354DD35BCF372
            954BA5DC173C5B1AE2B2A977347482D7994EB3A76AF4261125190876A0CB494B
            CBE43307F49B6E8D80DDFB57D81D236513B40EB5B9546E134F1BDBD37B7972CE
            9778D1B4A0DAD5B6A5C07C58FE6546996C3974AB4FBE029955F21E5DC5119760
            33E743AC94ED4B5D3403457735A6171E8C6BFE99DA3AB3A5D76476E357ACABCE
            94CD528F3030B0EC594CA17C9229D52A7BE9449A655A98FC3AA5325A1B974F99
            1A4B4DBA9AE5DAEF810F856ECEF56A16B8E87ED56DFA6EA7511F5C9B4AE3BCAE
            CBF752BF90CFA8A9499566D32FFB9EE2A4D0AA4C151F83AE310555E803298354
            8E95BA16A56717C6A6F2D45F0B0DFC6C27C520D2AA726A7ADFB3EBCF6D3B8644
            52BF3EADAA947D256A848995E908520BB2C8B92DEACD35A71C5ADD9BA6F22405
            28472914476BD635AFC1A2CCB23714EBF73542AFE2CFE19BAE9489B2D5E6A574
            2D5BBFEFC6EA943A87900214AA8DB89836A5416E254B7D11AF19894A8225B9CD
            FA6D6F1F62BB50F100D36A26916EF748299AC9A7B6DDE306FF00A15067DC77AD
            A6E52AEFA7526B3428958895BB02E5B52E06DC4D26E1AC417A1FDAA69F2D99AA
            F8B88FADA8EA69B9DC5785D6C3376368682585B81DBC503506D2DB0250DE8551
            DCBAB512D96EC061306814D5458B2ACDBC2DE9F5B84FC4B5ADF6E5C2B9A556A2
            4D72971E4CB65F925D79C52B133E2A3B4085B46FD1CBF0A3D1AAB529A89705D7
            BBED32D45D4464B61B7655C9AABA4BAD37255112178F3965B85548D112974F98
            C34DFC3A4212DA50267FE940E8F696E99ECA3C2417605876959F22CBD6EB06CD
            B7255B940A65164D2EDB97A7D49A94CA546914F8B19D4C49753A441A9496B9CA
            5FA8B466BA1525C71D56B67763B10DA76F934FAC7D2ADD2690C1D51D3ED36BD6
            8DA8963DB5FCA8BEACA896FDE16FD16AD6F51AAD16469DDD1694F7D14FA3572A
            9059A64D97268E5B9216EC071D62338C976E9FC3EF683BD7B2F4C74F373BA3D1
            B542CED1BB929D76E9B51A45E7A8B6AA6DAB86954D147A7D45136C6BBED8A955
            151E9C04611AB732A50DD1FD2BD1DC7BFA4E14ACCBFE936BCA7B771E03CF3AB2
            E3AEEE5E7BAE2D44952D6BBC74094B5A89EA54A5124E7A9273C33B60D63456DA
            FD2C9DD254B7FF002EC88315CD1E93FCD22AFAE2AA43563532A0AA75886DA728
            336ED29A053EB86D24DF716D996EBAC84C87EA51602C5665414AB59FB93D80ED
            1777B75E85DEFB8BD208DA8F746DAAE35DDDA25547EF3D44B65563DC2E4BA0CE
            5D45A89665DD6EC0AEA952ED8A13BF0D73C5ADC31F00102386DF9497D11BD8F0
            BDD89F88745A127769B7EB6352AB96B34B8F6BDF11A757ACED42A0445BBE7AA9
            F06F6B32AB41B85EA4178ADEFB0EA33A75103EEB92853849579C14ACB0E8E56F
            47E7FE960DC777EC4C5AD50D0BA1EDA750AA1BB397A328A6B9A6B5896D694D6B
            ED56E4B96DA7F93B519D375413A74A9263A9E44CAEC65BCD15BF1E5A91176D1D
            D55FDBCBD95F89E6B0ED1EC8F0D9F0E2D968A5EB0C6D5EB6EBF61C0B8370DAD6
            EBB64561E8911C82ECC8740A3DD77E3121AA450D22DC965172548FD88A7AA2D2
            5E5ED7F663E1C5B2CF0FBB4EBB686D33422D6D2D89762DA76F0AD36FD5EE7BC6
            F05C70E25845CB795DB51AE5C954851BCE78C5A53B52148845F7D50E04753EE9
            5C4AFF00F17F7C2215AD75BD7A93B35B1E75E3715667DC955A1542E0BE66E97C
            8B8AA6E3AFCEAD1D27917439A79F10E3EFBB2998AAB7554A8531499F029D1673
            4D486D4AC73D418D40A8FE874D11567BB559545A66F0D891A9A8A739214DB3A7
            0D5E33595B3520D12052D9BD65596EAD0EE1844C30DD500B4A089B9E311A8DE1
            C15AFD1BCDABDB5A475CD07977DC6B6B6E03482DBB3E4DA2E6A1D02FA8B40A7A
            7581D9D4DA5ACDC54998E72DCA8BEDF9ED30DD42B6FC3915054890E41738D7EE
            8378786CCB6CFB73BB3691A3FA1742A2EDB2F955CCABB747EE7B82F6D4EB46BA
            8BC63261DCF1E6C7D52B9AF496A835A61B4A66D3DB96DC15AD21E44743C3CCE2
            0B5AFF00A397E0D569D1B51ADF85B30B72A148D4F891E9B7047ADEA2EB055255
            32951ABD4CB99AA6599597EFF15DB1985D668F4E7A548B52A949A8CF86C1A3CF
            9D2A8CFC8A7BAA567C7799A1DA47ABBB55F01BAEDA7BEBB2B677BF2D3EDB7E8C
            4ADB4C3D4EA25524D9177BF36816D3F4F96E5764D0AA766D02A502E78CC436A6
            5C864D2DF12DB89538823A92A7177B08DE46EE346FC67F45F6A5E239B7DD8F6B
            9EE4F59ECDAA51ED8DE468559BA733F5B6D6B7A9169DCD5B82ED7AF4B469E811
            28D5185439B4FA852E3536D490C313DA717F1D0FFA21A8ED72F0B5D84EE476FD
            A67B60D67DB9DAB7AE8EE8BD06916DE9151E755AED62E6D37A450A9B1E934B8F
            6A6A2C3B823EA1C02CD3E24462538BBA1F555D3199FB6BED1E5EA8AD98783CF8
            76EC0AF0A8EA3ED9B6F148B57532A94D7A8CFEA45CD735E3A897B45A3C852152
            69745ADDF75FAFB96EC295C884CE6ADE6E966A084368A82E525B6C214A9ABB8C
            D48B4F47F6F9AEBAB37DD05EBAAC8D30D1DD4CD41BC6D7621B53DFB8ED6B32CB
            AD5C570505A83252A8D2DCABD2A9D2E9E98D212A8EF1901B7C1694BE3F3BFD44
            D74D61DCC78316EC359748A81E1ADB05D89D6EE8AFC6676C5A7F65C6AE6BCEA2
            5E8C5CD6DB7129CC54E64D6A0D0EE096B14F9F11D816D439F1A974D912698635
            3D2A50FD24AA74DA6D6A9B3E8D59A7C2AAD22AD065D32AB4BA94562753AA54E9
            EC3916740A84294DBB1A6429919E7634A8B21A718911DC5B2EB6A6D6A49A5AB6
            FF004757C1BED6B9AF3B9A06CB6D098ABE29F715327DBF5ABCF53AB367D118BA
            A1CA81597ECEB5AA17A3F47B3EA4634C909A3562DE8D02AD6A2CB4EDA53684EC
            68AB654A3BFD1E57D4F7830EC1D6E3EA90A1A535F6BCC52D4E14A58D4EBED96D
            9E63920466DB4C74A3386D2D06C001200A2AFD225BAED8B1FC6B7C12EF1BCAE0
            A35AB69DB772BF57B86E4B86A3129143A252A16A9D9AF4CA9556A93DD621C083
            15A4A9C912A53CD32D360AD6B4A4678D7A6DA76CDA25B3ED19B4B6F9B75B31CD
            3DD1EB13ED64DA1662AE8BCAEF6684DD6EAF3ABF54621D5EFBB86E8B84C69358
            A94FA808AF55DD8CC3F2DFF8669942CA788D5BD2F0A5D80F8875C764DDBBC6DB
            EC3D65B874EA8D55B7ECDA8C9D44D5CB29545A456A6459F538688DA6F7F59F0E
            68952E1C678BD528F324B5E57230F34DAD685295429FA4C5E26BB30D41F0DABD
            36E1A23AFF00A5DAEFAC7AE379D896FDAF65E91DD948D44A8B716157D8A8CEA8
            CA55AD22A91E2292B623428515D753327CA96866230EAB2388F7BBCD53A36C13
            645E065B15D42DA3EDD75C777D78E9E69DC6B06EFDD5C18EEE9AEDD2FA809B39
            CADCB995050664FC7D16EABB20531E8AD54E04190C5196E3EB73963B6AD0B6DE
            3C0B3C2636ADA8148D53D11D9469ADBFA816F496E75BD73DD15CD45D559D6F54
            58505C7AAD01BD59BD2F88744AB4650E68B56A5C689518AACAA3CA6C927891FB
            D7F0EDD9E788759740B1776FA3548D51A5DA55372B16854CD52BF6C5D369D49F
            6D2CC9916FDD56A5528D5D82D4B690844D8026B94D9BE5B4A950DE5B2D290A56
            2DA38D7FA7FE93C787EB3B9CD79DB5EB36B62AC88ADDD6ADAE5A4CDA163D814E
            7E95A8CF5134EAAC7E36A555ABD7624452AA6B72B9529739BA6D4A9E96D2D415
            C40A7DFC4AF5624781978E25F5BE2B7E9B2A1E8A78806D7B509559814D88A349
            1B81B5AD88F4E065C76905A2DCFBDE91635F3525BA16F4DA8DCF704809E469C2
            9D24E93781D7859E875E3A27A8FA59B4FB7ACED49DBE556A35ED33D43A45FBAB
            50EF48B5DAB065350AB5D75E8F7EB52B51653ADB098D15BD41373C3A553DC7E9
            5478B4FA5BEF435E7FBC68F47F7EFE31FBA5D28D875BFB0EBB74B340B41F7275
            9A95C9BBDBAA6D35CA1DC9A78D29DA0AEE5B4277F42E43A5D6AD690FD4D34A40
            9936456934E8AEB2DA232DF0A558A7E8B5ED5AABA2DE1D0ADC96A144786B26FB
            B51AE3DC3DD952A887175776CA9351A852F4C224B92F02F4B627D2BED6BF223C
            E2D4A5B57E10AC94F31983E3AB7A3D6A6C16F3A6B0E20B97A5D569DAEA4F9CB6
            9462C8A87C548E54A549F37953181534799BE5EA5271C5AC69C5876E696E9F59
            1A696853E3526D5B02D3B7ECDB76990994B112051ADBA545A3D362C661194B4C
            B11623484369F950900761C5277E90135226ED5B4F692904A276AF534AF94F54
            A23516AAF24938C82A29F5E99C63BF5A975D5E26C3A4F5CBA52B606EC1E95700
            0500827EE511E9933571F0FECCDF759F4E5B04EF2E6A76E426277142B781F7A4
            4E0FDF58CAA2D3972DF6D090B52518012919CE40C242707B0EC303EE1C3EED53
            A25260B11DC214FBEDB4B2852129527E4E40318C9E5505649F53F4E0CAD0B251
            1399E7B21479549C2F3F2F2A48C2723BF5F538F5E160F5B6D4A7CC85B6FA8A79
            C0390949CAB23A0181DCE3BE3D41E3E78EADD48CDCDDFC30E1F80DC42930372B
            0403982098EF388F7AFA47A6688E5BB01D5A029E20403FE5189C9138E2322333
            DE9BAE74A121B6D180701452900AB1EE5206739EA3F8F5E0C62B694A9382A04F
            53F4F61D7AE3AE401FC0753C2C05BD1D2B1D1C4615924B9CEAC8CFF579303193
            D33DFBF6E3D9F62C449E642D6A5019C2B09C74F5CE07F0FF009E38C24EAB6EBC
            25464C4F26479626783F2EFF002ACF168E83B880088E0FA9063DFF001F9F3451
            1630C27A9EA7DB39EDD3EA71FEFD3857C3615F2F42401FD61E9D0F5FBBAFA7A7
            B71D3160213C80138042BF11D0FDFEBF4E14F16328F2A52858041EA013D323A6
            3A8EA47A75C0E87DF0AF2F92046E00E40E306279F5FB719ACEB7B73B82A3020E
            79C41EE38F977EFC57AE2B6484E07EAF6007AFD7A76EE73F77BF0A98EC216100
            FCA7041FBC83D09C7F9FAF4EBD78F243A7BE920250B215851511D47EA8EDD060
            0191D7E8063AF0A7621E0252A0A0A19EDF41F875CFAFAF5ED8E2B57378893B57
            9E20118902383898C667DF9152686D6A8212631C889063806BD5129E92A48C8C
            129EA71ED9E830338C7AF4EF923A9E1610A9CCE0600F97032528EBD8E738EE33
            83E83DC704D11B520270904A719EBDF0303A1F5C7A0C75FE01614E8D39D46531
            D41BC639C828041C731CA8E33EB91CA3D471057572B4804AC412233E8398E788
            E4F791DE24D869BDB1B72009252720C4907F5C449A3FA7D2582842C01CA70080
            94939C8EC3947B63D31D3EA38772DEB4989486D79080A0072A9A4951EA3041E5
            E9F9F723D52342348888489D2D2977F58B493CE7B8383C83A1C0C0FA9EC7D1CB
            89763ACA3C8A2476BCBC00A95252E1575C8184A8A503070AC9041C75183D2A5A
            85E5D2A50C83850DCB220006208FBB03F2A9009038031FAFD4D3A344B7299010
            16F06100271CEF2184A720751CBCBCD9CE3A8CF7EFEC732EF0A2D10161A7195A
            C60858710973073D00480529FDE460E3A70C34A9D3E4BEB717202949E80B61B1
            FAC3E601213CA47DE09C7A8F5F2A60A9C216B4B84A813CFEA413D703183D73E9
            FC323883FA2970853EF157729F5C77332313993D87B572506013C7AC9EF1CE67
            191C7734E8D4355AA521411023B6CA5230161D7120807A1210A48C9C0CE4FD0F
            6E083ED6A8551F53B2D6B7095152525C7148C1049C73AD400EBF71E9DB823874
            B57FF4D401EB939048C1EB8CE7AF438F5FE195640A6ACA5294A1413D89C9EC9E
            A31CDEB9C64753827B71F973E8CCA484012382724FD5CF27EEE7E5DB84A1208D
            A903B4C02738EF5EEA7B2B7549F9484E520848F520800F5F5C9C7EE3C2EA96C2
            9050940577C1052724F5C0FAE323D7A7DDD382EA5C05252846163A827EF1EF91
            8F43DB1F70E17B4AA711C87E6CAB39E9D7AE7A0FA1F5EF8EF8F5E20AE5DF88B3
            8992200120C6D138C7963B4C667315FB94B614551804CCF6F4C9C1F4F63038A3
            8A74753A3E64E0007D3A7AF4C75EDE847AF0AC834F5120242BBE3F53A8F9867A
            6323AFEECF4F63C75D2E07314A00209500BEC490724E09F6E98F5F6CE00E1CBA
            25302B939F3D09CF210A27249EDDBAE07EEF5E2434DB02F144C1528E24F12467
            DC40E23EFAA7EB5AB0602C24CC0F513263EC3E93DE67144B0E8C0A49E45A95CD
            D072A49233DC01903B01DFBF7C70A8896EBAE1494A1491EBF202A391DFD3F7F5
            FDF9C65C1A451838E252C30E2D44E3E6563193D4F704F438C64F5C8F4E8EC41D
            3DACC9424A633E11C8927CB4A159040E873D40C1EE3BF5231EBB4346E887EF9B
            43894B8E02261B418E1382470307EF39E6352EB5D6ECD92BF8B708677F05C713
            ED823826300138F4E6A3F1B5BCB6CA9C0AC61247325294F6C9C641FDFDB207A7
            1E1934B6DB69494F9208E8486D2A57439C740076E87BF5EDF4931274CAA5E573
            AA24BC12520A8602BA67B67D47A670064E3B708BAAD893E336B26248484123AA
            49C8E9EFD7A9EBEE09C0E26AFF00A1AEAD1B2A4D81236724380CE322009CFB8F
            901150FA7F5B59DE3881FBC1B592BC24388C4C081E6F49E623F9C6C9CDA1A694
            12D15F719E500F5EA3E629C7AFA7503A13D38434C44B5A14965BF986798E3013
            919049C8C74C0193EC3EA641556D99610A3E42C8295E32523008F403AE707EB8
            FBFA96E275BAFA0AD1C8A4B4B514AB2A04E01C807232327BFB633DBA71AB755D
            26FADD4B6DD69C4030708F90E606077CC0032715B3F46D72D969DC97904883B9
            4A0A04803B4904E66060E6A3E55A9550214F3A977CA247CE3AA0E79BA8F9CF52
            7D7F7E7B1E1013A8D25D42CB6852C95742A015D00382067A018EDD0753EA7ACC
            13406910C35E595B65079D45C2405807213D464000753F5CFA00D2D5ED62DCC7
            0B0E25B648056B2B49C67249485138073F5E9E983C5394CDCDBB840055049CCE
            4480449E623BF1CE66AFDA5750DBDDA94DBB09289DAA81E748809F2F63DFF0A8
            9D5480E05BA797050A29E5523E5C8C83F2F4C28FE3F5EFC25D56D542694AE3C5
            79FE7529A1E535CE39F290127D4632327F67F094F3A854460294FB8A79D427CC
            52BCC2905C255FADC8472A1230490318F51E94DFBDBF140B7B40D558D3BD0F7E
            DCBA75118892189F5079B9551A3DB35371F699F254EA17F07509D1D8325D7582
            F969975B69A742C15278B8749E8DD45D5DA933A474FD92EE6ED5B3E2B9045B5B
            345494176E1D0921A6D26482479A213922BBB5FEAAD1BA6F4C7754D49E0CB0D8
            21095001C7DC82436C22429C260C84F03248ECF8EB66A4699685C69CE6A6DF76
            C5B5362C2726B146A85561B35BA8B08E41CD0A981C726AF99D5A5A4A8C7295A8
            1C12942B14D9A85E2FF6DD12A32A258BA4CF5C51DA53C86EA358ADB4CC77CA0A
            92DBADB0CC352C34BC05AB988F9484E413C542EA8EA05DDA9F78D6AF9BDAA8AA
            CDD15B92E4AA84EF223456DC71C5A97CAD4486D31159691CE436869A040C7315
            1EBC3253812B24F704E0E31D4E49574C67D3A1C8E84E075E3DDFD19FB3F74E69
            764C3BD4AEB9AFEA2B435F1D054BB5B361CC7C5434965C4ADC00F952A5913CC0
            E078EBAC3F685EAABFB8718E9E4B3A159A56B0DBC86D17174F26484A97F1D0A4
            B7B8124A52094CC498A3FD5DD4CAE6AFEA1DCFA89723CE9AA5CD547EA0E475CB
            9329A80CBAAE68F4B88B94EBCEA60C068866331CC1B69390DA10921225C6D37C
            40F5036BF6F4AB1DAA63177D9336AA6A49A64FA8D519934671F53627268E4497
            60C5664A12A71C69B86D15C921D716BEDC4037D04A89F7248FAE07293F7F4FA0
            EFC793AF32C8FD90074FAE7E83BE3D31F8637CEA1D35A1EB3A3A743D4B4DB7B9
            D292DB4DB568B052DB4861294325B28525695B400D8A06719264CE8BD3BAABA8
            346D6CF5069FA93EC6AEB5B8E3B7808529E2F2B7BC1C4A9250E25C54EE4A9303
            84C408D716876E8B49770D438F50B76EBA3D36E12CA5C9D67D5AB314566163AA
            8861D31D529A24101C8E870240F9F97A70FEC8A3E14709C6405E548E841C60A4
            F2FEA9CE33D06707EEC4F429D36972DA9D0A43D165B0A0B69E6F94290BE83385
            24A15948E5C292A49EFCB9EBC5BA6D6BC562FCD3A6A158DACB4EA35DD65C38A5
            88170C7A73D02E4A6F22025A69C6E921B833D950480B52E0B4EA719F349CE7CD
            3D6FE016A362CBFA9F453E750682B7AB47B821BB86DB3928B47BCC2E4A4FD54B
            850A331278AF517437ED0FA75F38CE9DD656E34F79490D2354B70A72D9E7411E
            7BA6B682C050324A3724100F78ABCFA853E3C764210B4B8E3802C801214D9049
            001C0E8A1CC00E9F7E0105055286847363D52A24E1209C807A1C10704FEECF07
            FA4DAFDA19AD34C72A1A737552AE7449614E4BA6894EC5AF5356A016A4C9A538
            5B94DF94A57283E4ADB383957504755C904B725C3192E18CA5385BF312428027
            AA3AF5E808201055D7F70D00C2F50D3EF1CD3B53B1BBB0BB63EBB778D2D97304
            7954DAC08CCED20411904826BD1E87EC751B366FB4EBBB5BEB37D20A1EB5792F
            215B8254082891ECA00C8320C1C069EA6D23AF4279B295744F43D0E4FCBF4EFE
            BDFD49E10F3D200574C61440C0EA7EFC77F538C75C7A743C3933A2BA49E64900
            939047A818C8CFAE0FA103D719207089A9C3584AC84AC01923AF607233F8F41D
            F078B7585DA4948511232638191C733F8CE27B1A83BD6540956D13303D227FA1
            ED07ECE69AEAA0CAC0239B9B3D339C76CF7C8009FF00623A108EA9B45CC9FD5C
            009E831D323FCFA63AF703870AA30483CD93CC063DFB81E9F4E9EE3A6319E12B
            2E12549215E66723A1181D4E739FA9009EBD474C8EDC5DAC6E1B0A49DDC8007A
            44A79F492304489E79AA75F5BAE5529E4408E2241391EDF77CE9AE9CD0467BA8
            8C75F51DB07B7538E981D7DBB9C587783D35CBE23BB7C382016B574FB67FFC88
            EA40C64007A67A0E20BD42964A798209C75C03CA7A7AFD47A67A75E99E2C07C2
            122ADBF114DBF2D69292946AD7423B83A27A8E324F51EA31FF00B71B17A52E52
            75AD2C6E047D2D812248FAD38C9271EDED5AC7AED850E99D7894911A5DD76C61
            A33F640EDE9C4F3FA0DF3A7DFF0003F97039D3EFF81FCB8E9E00E6E64F28CFB8
            E98C1E9D49EC3F771EDCAF03D67F7C7DFC5975EBC2B74FF6CF70EDFF004E34EB
            526E4D75D54ACE9E4BA6EA21AE26245F85A2313A98AA72E8952A62D3264CF7DB
            8EEAA4ADC683472129233C572EB578C07E9096D274CAB5B84DC7F8616868D10B
            25AA7D52F9AA5AD7C56DB9B4AA1CC971A209CF488F5EB89E871CBD29861533EC
            898DB0E3EDA9D6BCBE62117FA656D565ED2CF0EE62DF92C42B85EDCE56DAA24C
            96DA5D8D12B2E5B94F4D32549656DB88758626A9875E6D6D3895B695254DAC12
            935A9E2BBAB7E377A49374BB675E29BBC8B4AD2D916EA9DA45B5776B8E87E84E
            9B4FB745221CE8132651ABCE512CDB4EF38EBA538D41A94FA4B157A5FDA10595
            4952E5C461F4052B585AB9E2F2D4EF04DACF8B2EDD6CEA64E9AF69540BDE8760
            5FEA96EC0A55CF135023E9DDE36B579EA3C8872250B7AE28B5EA7353614865B9
            E20C79CD7FD9E42526A536F5E2C3FA46FBA6D18B07701A29E1D1B65BB74B353A
            90F576CDB8BF9575E81F6AD358A94EA4BAFF00C1CCBD9A92C72CFA74B6791E6D
            2A3E573630A04CB3F132DB568CED07F466F57F6F1B7EACBB73E9169FEDDECD36
            7DE0F4C8D507EF86AEAD48B72F5AB5F8F4C85982F2EF7AEDC753BA4080453D84
            55911A9E94C1663A13549E147B03F1D2D55F0F2DAE6A16D8BC59AD9D07D06BA2
            C4A84ED36D229BA7B4DAB4AB1E88DDDF72C37E94F545ED37AC3B294F55A3546A
            01C5D4E59099A11E6009084295A40B33C43F5CF6C3E1C9A85BC9F165D2AB576F
            BA89A7B70DC919ED34D36A82AB0D5C54B26991AC0A7505C9D56A979F715D7519
            1322065C9C96584B1F10E25A69B709A62B1FC5EBF487B75B6048DD2ED27C34B4
            5216D7AA8CCDAF5814CD479D72D4752AFCB4212DD0D55ADF79BBDACF4D4BED26
            A3B8B86F45B615124A885535DA9445469525AFFD235D13DE3E977811EDFECADC
            BEB62B727ABFA77B814CBD7ED65A352851E9B78D3EE0BBF50EA1A78FC9A4C5A4
            50D88D1EDAA2D66D1B5D4B349888549A2192B2EA9DF8876F56EED5CDDECAF0C4
            DA7EA0F83D587A05AAD75D6F4EB475BB7283AB3265A34FA1E9A37674489526E1
            AA8779D92B62B3449515BA5AE1AAAC550A5C7970E542F8861C436A57C783EF8B
            FD2FC5136F5AA9785674B2A3A2BAF9B7FAB49B5F5874C67B9367D1A256041A94
            8A6556DDAB4B89064CAA64E9148A940A853A5B0CD52875180FC49695B4F41952
            60FF0087E7E9025D9ADBB17F109DE9EE8B4D2CFB728FB2ED41956B512DCD2EFB
            61122F18A694E3F4B8929CAFCFA879554A8555516217DA2D4661871C74B2A2DE
            0A47C12BC53F797BD4D7DDFF006D8376FA53B60D32B8B6BD6B5769F55636F166
            5C76F0917DD3AEBAA5A5733154AC55B516F7A7D7E9ED4B625AE2CB82CC553EEA
            8C9F8975B7390D4F780BCDDA135E17BE2F942DF5DD116CDDB35EFB9A89625FF7
            1C833DB7698ABA284FD3E8B269D269B0E74A895662AEA88F536508CE30DCB69B
            1252B8EA750B52A6452FC677F4822F8DBBB9E20360F87C6DAE56CC9EA34BBFA9
            94376BF73D4B5527E9BC292EF9B5C62644BC63B8FB061B0E3C66B36495A5B4AD
            F14D5A12106DD287E271BB0DE37861698EF43C37F6D344BEB5DEF1BB18B66E9D
            0ED59A94BA644B45FA154A6D22FC40A9B73680ECF6A0BF1E2CEA14D4ADA4D429
            55089257192B5ADA6F3F36B785778B2EC8B6FE9DC7F83FF8A535AC5B3876C6A8
            6B1591A5D7D298343ABD80ED3A45D125C469E5FF004CBD3495F7E55210EB73DF
            84D50EAB3DF42C2A34191C8867459E013E23F73789C6C3D3ACFA8163DAF62EA9
            69C6AC5D7A23A9D0EC8A68A3D9D5DBAED8B76CDBAD174DBF4A0E3E29B1AB540B
            DE88E4DA78912110EAECD4588EF3911119454AA238FE3CFE3C12B7A13FC3F59D
            85ED917BA8A6DB6DDDB334EBEDFBA016A84EDA116FB44CFB5CDE7F662B36CCC8
            F50F2C482B1CFE563CC053C4DBDF978C8F89B787D78756DF370DAF7B5ED10B3F
            751AB7BA5AB68B57B4AE554AE1A9D9D4EB2D76ADE770DAF5CA74CA5DC6E4CFB5
            EA6E5BB090FA64545D8CDB4FBFFD0A15C85319ADFF00FF006D16FAFF00FA6FA7
            7FFF00205B1C2F7F4CD599727649B3B8F4F9221CF7F7B76DB30A614F308B2DDD
            24D53446925252A0A0C3CA43A5250ACF26394E7054A7068DBF9FD27BAFD22955
            DA5F865ED964532B54D8356A748FE5A55D1E7C0A9456A6447B9157D0523CD8EF
            36BE5500A4E70402385F78B1F8CAEFDFC3DECFF0D1B6AD7DBDE8DD7771BBCBA2
            5F74ED4DD3FBAA65C0E526D3D4BB5DED228302DDB5A752ABD193F0722A9A8550
            8D2245465CB053161A90EA4078B8D069F7866FE91AD42C1B1E7D0BC6CED1A4D1
            275A16D4CA35257A5F4A7154BA549A3427A9F4F538AD2874AD50A22D88E565C7
            0A8B6497167E63117F4AB681ABF1B597C0CED8B72F2A4BBAEF16E0D5AA1D32FF
            00AAC065FA2C9D4F8D51DAC4245D73E9AEC1723B94E9572A15557A1AE9AA68B0
            EA9A543E4CB414A90BAF3E345E3D3B1CB0D7AFFBC5F0C6D1987A016ED6E854EB
            E6B9655F35866A1468B5DA9C6A4C27DC968ADDCC984254F951E045912294EC51
            3A4C56A438CB6EF9A9D556D4F71F656EE36E3A35B95D3C6A63166EB3D8542BEA
            8912A094267C062AF1838F53E604128F8981292FC475493CAB533E623E550E3F
            3F0F13AD42F17C1AE7A43E1C7E333BD0B7F4DF671B96AE5BF5099ACDA35A1FA6
            8AB26E945BB7053A5458950AA5BF69DA373B08B7EE31497EB14A9755890E9CB7
            E8F5AAB53A753D2C91FA06ED5F42F4CF6CDB72D17D04D1C717234BF4B34F6DCB
            52C99AECB6EA0ED4E8706034A8D5776735FD0CA72AC5D5D456FB1FD02CCAFE83
            0CF200A5520FE90378D16B2F8423BB4299A55A65A7DA8F4AD77AD6ABB17CB37B
            395C666D3A97A7474CDD6136DBD479F11A6A64D62F3A9875C9ED4A692EC68652
            DA521D0B93BBB7F165A5D95E0E17978A4ED5E15ABA8298B60E9C5DF6ADBB763B
            31EA33551BB3516CBB22E2B72E4147951273551B6D770D5233ECB521858A8416
            96B49617CABA62FD2ADB1AD8D4EDD27824E9CDEB4C6AB3685F5B84D58B4AE6A4
            BE486AA343B82E2DB952EA71165242921F8925D4050EA9242876E28877B35ED5
            5F07ED22F137F05BD5976BD706DD770946B3F58B65376CC44896C539D83ACB61
            DD33692996F159FB3AB56A502AD06B010E86E0DE96B0754C79D724A75952B6D5
            7978C7D87B77F088D21F12DDC9D12131706A7E9E5A350A1E96D90EBACB9796A8
            DE4DCF5D22C9B555557E43CCC72CD3E6D4E7CF9AF3C8A65169B519CF170B2869
            CA81B7BC5ABF490351F4B46EE34F7C31B43FF9B44AA52EF6A358F529576BDABD
            5CB012D19EDD5294EAAF3A6CB9897E9493323CA6EC50EC96407E2D324256D36E
            55C78C840B853E069E02F72BCDC9569850AAF4D62FD5F2AD54C6EA951B6A9926
            D8F8FC02D871748A3DEE22F99D4B626251DD438FD0934D6EFD37AEE8D58F7BD8
            D52A22B49EA1A7741AF5B15284FC634166C755BF1A5539C6DF428C56E044A3A5
            B4389528218434B6DC092DAD214ACDC5D3FA44559D59F07FD5EF110DA6695DB2
            DEB4EDBAF6B02D9DC16836A8BD56A9356544BA2E6A5DA7529B0A550E451AA350
            8299B7151EA34DAA3AD464A29F1EAADD421B122338965FADE278DD5436FBE0A3
            A33E25F645A964D7B5575CA95A4148B32C5AC3F535D9CE6A05D731E37E415A21
            4B66B2E52E874CB5EF8729E84CC4BEDC98F4B6E5BEE052D2EE7D7C18742E97BC
            8BC7F49274FAC38ECBDA03AFD43D42B1EC29D193CD6D3977576E6D69A95A55CA
            12900C44BD4A76550EE48258F9531D7475F229843481575B26D59AFF0088435E
            0D1E1095F8950994DD1BDDEEA2DE7AD14292CBA23AF4DE815D62EEA9D0E7B4E0
            2843D47B0AD6BF9A642886D9955B71B582A7023852B69BE1CBE37158DD9784F6
            E8B7F5AB967D9966EA56D5E83AE555BDEC4B69CAB356FAE4E9BD9132F1B469E1
            1559726AAC4BB9FC8629AA8CE48F34CA790DB1CAB584845E8178C56EB350FC0B
            75DBC546FDD28D29A26A7D950EEFAD69BD874966E8166566DEB6EE8B7EDA8F52
            ACAA555DFABB889AF4FAB28AA1CE612830539E8179C96EFF003582A9E1B378F8
            E9F86FD37E2A9145DE16AB6915EBA490A2A1C663B542BD2FB6F502F776234006
            D9A64AA0B48B3D0DA521B14F53D19B4F294726CF2EDD9A49D31FD1CBD41DA352
            2DE992AEBB7BC35EFEE6B6A0407E5D5276A9AB492B3A8F3A910E030DB92A654A
            46A1BAF4186C36D2E4BF20B0DB6D970A51C295357C26778F7DEFE760BA0BBAFD
            4CB6EDCB46F3D56A65C93AAF40B491514DBF09546BBABB6F47FB3BED49332716
            DD8D4B69D74BD21CCBEA7024848481637CE9F7FC0FE5C5547822698557477C28
            3639A7F5DA3546DEADD2F456054AAD45ABC0934CAAD3AA174D76B975C88D51A7
            CC69897125B6BADF2BD1E4B4DBCD28722D0929C0B51E14AEEE74FBFE07F2E073
            A7DFF03F971D3C0E14AEEE74FBFE07F2E073A7DFF03F971D3C0E14AEEE74FBFE
            07F2E073A7DFF03F971D3C0E14AEEE74FBFE07F2E073A7DFF03F971D3C0E14AE
            EE74FBFE07F2E290FC7520AE5EDB74EE420254D43D5484B7FCC24E10ED16A8C2
            4242B24FCEB18F419C8FADDB7EECFD3DFE9C536F8E3529FA86CC4CE8C791CA46
            A35A5214427E74A24BB222B850B1FA9C9E67CC46720E3A03C507C50B7373D03D
            50D056D274A79532701B295938CF032798FC6FFE163C2DFC42E93788040D5EDD
            067FF21D8047B957E5594E85261323FA6750DB49E549C2540631D002919F43FF
            004383A456697C8A4460B7578E6015D52A23BE028A4E3949E84E3B7418E1AEB7
            A23EB94844D77E21A52865A512412700127A11919FA7D33D9E68944A43203ECC
            569B5A00E71F3AB9FA0248E65909C82460018CF6ED8F9837C9B7B574A0A96EAC
            807C90941E307854F793FC8D7D45B353AFB7B90942100ED3BA54B063319820F3
            0463D669285E9921C3F0EC24732B2D84A5200CFDE7B03EC7DF833876E5665388
            2EB6521D39FF00C40075FA24F40011D3B67D0F0E7525888E3AC2834CB6DA7A9C
            A123E5EC53D7AE7A119393ED9EFC382C7C12140A19438AC6010794003A751923
            AF4F4EA467BF7877FA81DB43B1964289032ACC44601564608F619E2B351A521D
            DA56EEE13C4C107CBC483CCC771EFDE9B6A5592B50407DBCE0E5452E129CE53D
            33823A0CFD7B63E8E044B463365B0DC52B50475E650575E84F4C018E83B0E9F5
            E0ED87DFEC821940E83950D9C1047AF2673EE7AE319FA706295CD78F96DC85A3
            980EC3F1E6001EE3B7D38AF5C6B57AB51538E0482720EE803CB036827399F6F4
            C5493762DB691B40318E04C88803EEF489F49A255D23E1C1496594F2A3AA80EB
            93E99CE707F7F603A8EDD098CD8FEA254464632AE9D48C9EA3BFD49C74C6385A
            47A1B8F84F9AF151CE0957328F523B8E638C923AFA7A0F42A58B66B0E00E39C8
            948232928592BFA9E558C75EBD3E9C609D6D86412B7F719CEDDD27893CF6923E
            CCF06BBC59A9447944100F1EE393F29FCA261B2610A2AC04B67AF40108272324
            0C907AFA9393F7FBB890E9B56970DA092B6194B7F294A90DF367DCA07314E09C
            8CF6E16B0E81023248442654B4E391C5A543DC8242D4AEBF7E41C0F4E0C154C2
            F0EAA0529EA1080AE549F609490900F4FF009F186F6BC9724B7111CAD4558201
            9827BFB1C41F4AFD8B628994C4FA7CA7D3F3CC8F4A47C3A5D262852E597A6491
            952834E2B913CB83859504A89CFA731041E9D7A8314D4242CF2C7022B7D3910C
            A427A7A798BF994A3D7B95E71D0707C9A20511CAD848200C84AB3CC7B138C100
            75EA7201CFDFC1B3144659EAE06D44805400528E475C7738EFD3D4761EFC741D
            45A50056B0B50E028F944C003699E39CFA4E2BF1B4CC41031923DA68920A651E
            EB52D5D4E4918EA3D7B771D875C1F40385FD361BAEA1295827E5F53920F5270A
            39207BF419FE1C7D4286D292111D9482A1F328A724E3AA7AAB988E9D3A100FF9
            AC2990945213E51574C73A798138CF4C0231D7D8F41EE0F48ABBD411062104E6
            41890238133CE3FA1C57EA08FADE603B0CC7DFC08F98FC2BB615114B4A3A2493
            9EE4FD7B760001907A7B1F7CABA0D114943639529071D39BE63938CFD3B75EDF
            C78FA890DD406FA72800E719577C0492318CE013D474CE785AC16D496D014853
            AA233CDD520027E5C8031D3380318C0F7EA211CBB2ADA9DC152A02482A304E78
            18FB7DF3DABA96AD89DDC19276E244472091EBFD6BA69F476D2941094923A731
            5295EC3D7AE3EBDFA74E15F4EA61CA52DA3995804F5E9DC038E6EB8C75FB8F4E
            BC76D3603B2082101094E0E15D319EBDBB939EA49F63C2E29D4C28E5E775B49E
            99200490319E5CF43D0F5EB8F63C48595B070A14A1B8289395419318C89C6606
            26AB3A9EAC1A0B46F1BA38C91DA2768CFCC7CA62BB68D4570A92E381B402AEA4
            1C9C75006076C9C8393F8678786D8B5DD96B425A6D2BC28938504A40F51D00CF
            41D3A919EB9C74E139448D19B50E67104F38CE3E6FB875563F876C67BF121AC7
            1114F23FA40A1E60052509208CFD0E3B74C8C9EFED9E36FF00486856572FB1F1
            76CEF036EF499E0441198EE07A9E605693EB1EA1BAB7B6B871124A532202A044
            7A6660FA8A5B599A75E6290BF87679B9C1CA9649C254738E604673D467BFA77E
            24ED16DA6E2A394B2D2884A00C8046000307A0E99EA3D323231DB8F1DA116308
            C92D2503A903E41CC09592A19EBD3D891D3E9C3A11D942463947548CF73EDEFF
            00524FB678F747861E1ED8DFDB25D504A186B6E02479A52040F2E0498318E783
            5E28EAFEACD4752BC7D0E2D494A55004AB104769C0F90F5E78A4F394488F2021
            C86CA864109294E01C6398003D0741EBF4E1135FB2E972997826220AC6494E70
            3A81DFA038CF5193D7F1E1DF284F420760401938FDFEBFFB705F31A4290A3800
            8CE719EE067AE0F6E9D883DC1C71B3BAA3C37D257A63AEDBA508718696ADAA40
            295C278C27E79F7F7AAB69FAD5EDB3E85B6FBA92169236AD5EA9F422648FB39C
            98A823795AB1A234F96E224292A5A40E6C000149CFCB83ED8EA3B7A67AC6DABC
            2E42EA50CB64A54AE8A055903BF751F53DC81FBBD6C2AFF663B711D5FC3A1D57
            32BA7281821039BE6EA7B8C8C0C8EA463B0855753E7CC7B91A6DA1E62BF55B47
            5E831FD4C91D7D7AE09F6E3C1BE20E8CC5AADC48710020284A5BF349204038E3
            027EE9C4FABBC37EA0BABFB747C40B21253256E199948F5339C7C8F120D3053D
            5312875B6D7CA9ED848E50323A805201C7AF5273FBC61B99CC49525C2A248C60
            FCCB20F5C0E8547D0F5FBB39EA70F45433CEA0B241E5E62390633950CF500679
            81E98E83DFB7086A806F95D0549193807952559FEAF41D4F2FB9249C75078F36
            6A6D202D490E180AD89C90A3247DA3BFE515E94D16FCB7C34912532A09F74899
            C493393CFA7BD48F8896E7D8DB8E935621502A4626A8DD30D8856B259881F5D3
            63D4FED06D55A71C74B6CB658453A7861456E2DB790D2C307A1E31C977D46A15
            AA954AAD549922A353A8C87E74F9D31D53D2A5CC92E79AFC87DE732B5BAE38A2
            A529473D876000B62F13CBF2A57DEEB7555A952E648A7DA9538D6751E33CF663
            C28740614D144769B086D08767C89F282D4953C5529CF31C5640153B588CEB8E
            BAD34DB8B7178421B6D0A71C756A21084B494E54E2B9FF00AA949209C11D871E
            EFF027A4AC3A53A62DEE4047EF0D59A66F6F6E56101610EB6DADB603842541B6
            C289295288DE54ACD688F15B5FBDD77542C12BFA358EF66DD94156CDC956D5BA
            5009056A800A8092044D351534FF004871FB3F4F423AE3EFF6F4C76E1112DA01
            67AE41F727D41E53E9E84FEFC74E838722B10A5C390F459CC3F125C55AD99316
            532B62436E8C1295B0E842D0A4820E14819E63D3D7876F44F44F4E7553ED055E
            9AD749D2E7A049651F0551B726D5552E3389492F312187D8641CE416D4B4A924
            7EB729E3D04F6AB65A7E9EBBCB95ACDBA0A0971865DB930B2909284329716A13
            99008CCFB9D069D2AF751BE4D95B369FA4A89010F38DB09DC93E6495BCA42524
            039055249C0989878F45528B850A4FCBD4039EDEA06002547EBEC73D7AF058E2
            4B67AF284A8F42ACE4F2FEB81DF94E549C607607AF1A8BD1EF085DBBAADCA55C
            5765CEF6A744AFC18753A5CA6A25CF6DC75C492DA5F6DD40A65EB0CAD2FB6A00
            15B39093D3B63897D41F0F8D995B10D0C33B7DB2AAAB43086FE2AB2FD7EA7214
            E34B52C3CA357AC549455F394905D2560279C90120693D47F699E82D36E1DB66
            19D5F515B2A5364B56EDB0D82980A8370EA563CD8853692383C56E1D37F672EB
            5BF65AB8B87F4CD3D2F210E252F3CE3CBDAA00890C254276C70A833358B379A4
            E0754A4280292727FAA3215DCF7008CFBF056A38E459C6015A3987404E46401E
            A703041F718EE78DBA39B17DA630EFDAD1B4034E0B9E5966513454ADB4214F37
            C813116F2E36487020BA8692BFFCDF28C3737F786FECEEF45C96D5A2D6C51643
            A3027D15FB8E8DFF0086A6DC47971E8D5FA4B29242909504001CE53CE55CC471
            856BFB567472DF436EE8BAEDBB1092B7C7D11D289500A21B4BE9DC918E152490
            713359B71FB2F7550694B635DD15F792494B41374DAB80402E96E028988FBFB4
            D64574DB56F51746EBA8BA74D6ECAB5A7574603CE53E414C498D74CB35080E87
            21CD6D4400512587123391CBDF8BFF00D98EF8693B8681034F350A4B5135821C
            652D2B45391069F7544611CCE4B8862B8FB299E86D257292E261A5792A69A4F6
            E131A9BE0A54896FBD3F4E355A0D0623CFFF00D8E9554A35525F9216B71296DC
            90FD7EACF10D252A3CCBE65907278ADFDCDEC5F56F65F4CB6B5027EA0D1A726A
            7713D49A2542D47EA102AD126C686E4F2FB8BE46151DB31D1D087882BC378E84
            F13DAAEB5E1278C56ED69969ABDADB7545D029D2AE156AE31A921F4A0A92D3CB
            0C90EB504FC46BE314C03B541401AC0D0AC3C5CF071E7354BBD2EEAF7A62CD53
            A95AA6E90F592ADD4A4A56F3282F00D3A48486DC4B60CE140824568DE7DB6FBA
            975C4C63E5B285BAE2F9C0E440232579EE338FD519C633D89E1A4A8BB471524D
            2D7558627485A90CC4E773CC716327CB1FD094E4E084FCC0829393C536EDA340
            779DBCFA7C89D375CEEFB774FA90D4765755B96BB70263D46325F44672353A1C
            55B02798ED10A2E79A5BC27FF141C91705A3FB34D36D0FA542229ED5E17CC32C
            1AA5F7587EB33A7CB9A9C05BF023D66B1586E9CD7985612A84221524F316C138
            1A1FA8FA7FA77A21575A7EA1D64C6ADD436B083A668F68E2830A5242906F2EAE
            1686DB84C6F4B61D585794A457A2BA57ABB5EEB74B17D67D2171A3E86F04BA9D
            4758B9682DF4EE8526D586772D53CA54B4A511DCC815F332D850395B484E3048
            E739C0C1EBD08EBEDD739FE2446C7975153A6244F30A11CEA21694A12DE30147
            98024E7A019EE3AE0F120AB147500795416E020722505471D32013D00F6EDDFA
            1E125229D3810E2D6E36D64853616B6F9B9524A7A24A703233FB27BE3231C542
            DFA82E02125B78051130B07698DB83B4E49C71DA3BD5DEE34A6F7799B25303EA
            ED803024CFBC49EE071826A3A576D6934A2844D63C92F257E5279D054A09C1C8
            239BAE7A9EA3A1EDD4F138FC26E9CD37E207A0EFA5012A6DBD541F31391CDA35
            A86938F4C7CD8F6F61C47EAFD2952632E554A3227B6D7222320ACA5C8EE2CE0A
            D2A6B95402BD46707A678977E16F0CC6DFA68505C34B794EA816D59214941D1F
            D41CE49482A270064927AFAF7E368787DAEAEE3A83464288538750601D8610A1
            BBB0267FFEB8CE3BD6AAF1234D435D23D4CB082809D1EF549062400C99920119
            224463DC4D6E7B9CFB0FC7F3E0798AFA7E3F9F1E7E73EC3F1FCF81E61C8CF28C
            91EFEFD71F5FF9F7E9C7D27AF9A154F9E2EBE12349F15DA2EDC68F56D75A9688
            8DBD6AB3BAA11A453B4F636A01BA9D7224489F62BCDCABCAD1FB1DB4FC285FC7
            21CA92B2B29F841CB93267C433C3F7477C4776A3796D67588B902156E0C59567
            5FB0A9CC542BDA757B525B1F615E74588FC98ADCA7A1B814D4FA5AE6C56AAB4C
            912E9EB97156EB53189D5CE7AE3046491F77EEC7039CFB0FC7F3E14AA34B5BC1
            BAF68BE11D7DF84FEA2EF3ABBA996DD6E8E2D1D3FD6CA968DC5A6DC9A7761337
            151EE6A6D9CEDAE753EA8D5D90683369D32150A448B9A8EED368F3A3D21B42E0
            5229ECA2B7F4EFF465F77FA45655BFA6FA59E3D1BC5D3BD3FB4E1AE9F6C59566
            58D745B76BDBF05C92FCD721D1E8949DCB45A753A32E5CA93254CC58ED36A7DF
            75D29E77144EBAF9CFB0FC7F3E0739F61F8FE7C295547B62F0BC76C3D94EADEC
            AF7B3B96D47F115B63582ECB9AB1705EDADF16B54EB9615B15EB7ED6A3C1B3E9
            4F4FBF2FCA9C066DBA9DBB2AE4A25560D7E1B90EAF5990F46851DD696FCAA6A4
            FE8C3EE1749235C1A5FB3DF190DD8EDFF6C572D427C87745928B8A6B34981537
            099909722D3D4BB2ADFB89C79B5ADB7A53B6D50172504265A1F515BCBD78F98A
            FA7E3F9F039CFB0FC7F3E14AA72F0BCF04FDB4F85A5A7A9A34C2ECD45D4ED63D
            6AA3FD91AA9AD1A8D5343952ADC74ADF92D42A2DA94C5B147A1529BA8485D4DC
            4487EB55F99314A33EE594C263B11D98D917802E87ED6F6A9BC9DA0EAD6A9D4F
            729A5FBCABE1FBC6ECF8AB163E9954ED22BA6390A233417E25DD79976AB4A96A
            66AB4BAE15432C4B8CDA5DA7BEC29D6DCBF4E73EC3F1FCF81E62BE9F8FE7C295
            8F68DFA2FF00B9EB36CEABEDDF48FC67773B62ECEEB522A2D3DA1E2875E5C18D
            6FD5A438F54680ED2E93AA747B4EA6898DACB73E4A28F4885527546449A28003
            1C68C3C3CF60BA1BE1ABB64B536BDA04CD65FB5E8750A9DCB715D172C88F2AE9
            BF2F9AF88C2E0BC6E47E2311A21A84F6E0C0831A2C48EC43A651E9B4CA543693
            1A0B599B3CE7D87E3F9F039CFB0FC7F3E14AA72A7F843D220F8C7D73C5D46BCD
            49DAC56B4EA3E9FAB424E9DC6453A3B71F49699A53F6A0D44FE59AA53AB5B34E
            15BF83FE46B694B8F181F12528F8B51B78C9784F53FC5D34374AB45EA1AF156D
            BF9D2DD6189ABB0EEBA45811F50A554A643B42E9B51AA48A748BC6CA14E09FE5
            31A926A4DD425388760A184C4FE9CBED5BBF39F61F8FE7C02B51F5FF00AFDF9E
            14AC9F42FD1D1DF9D361C4A7D3FF00484B7C90A0C08CC42850E2DB97AB11A244
            8AD2588D1A3B2DEE712DB2C30CA10D34D2129436DA528480900712EB737E0535
            6DD5517C3151A9DBD7BF2BF7BF8742EB12EA9A8F74E9B1BBEE8DC4D5AB557D33
            AB4AAC5D336ABA9E89B6ACF5AF4E1A69D7D550BC1D7FED65B8B741849449D037
            3ABDFF0001F97039D5EFF80FCB852AB8FC52FC33B46BC5476BF56DBAEAB541EB
            3EB10EB306EED2ED57A5D163D76E2D2EBDE9E9723B75DA653644FA4A2AB06A54
            C91368B5FA1B954A7B356A54D7109970E747833E23B5B07DB26A1ECE76B9A69B
            6FD46D7DA86E527E9653576DDBFA9D59B1DBB0EBB2AD18AE116F512B14C6AEEB
            CD33E55020F2535AABAAAA87A6C5623F9F1D2EB6A5AE61732BDFF01F97039D5E
            FF0080FCB852AA47C4A3C28E93E229AD3B17D62A8EB7D4349DFD936A8D7B52E0
            D02169FC5BCDAD4576B958D38AB2A8F2EA522EFB6976C3718E9EB6C09AD42AEA
            9C1555B9F0AD986944928F18CF06ED1AF17FD24B0ECBBCEF495A35A9DA5D741A
            E587ACF44B4225E757A5D0EA4C2A3DD765D4ADF955EB61156B7EE14A204E0935
            B87229359A4C0A8455B8C2AA502A370BCEAF7FC071CF39F61F8FE7C2955A2AF0
            B3D01BDFC366C8F0CFDC097F59B4AED0D37B7AC5377269C9B32E6FB66D675C97
            6FEA05B288F51AE9B4EE8A3CF5225D396CD46A6C001F813C542953A7419344AD
            7E8BCEE52DDB5AA1B7ED3FF19FDD4DADB3CAB3B2234BD1034AAFAE20B7253C5C
            916F3F4CA6EA9D26CDA87C434435226FF27E9D05E7B129741C21318EC239CFB0
            FC7F3E0739F61F8FE7C29506FC3EBC3BF6E1E1ABB7DA6EDE36EB409ED505529D
            ACDE3765CF259A9DE5A87754C610C4FB8EEAA8B11E1C675F7596D116153E0C38
            94DA5C06DA870E3252971C76B13619FA3CDA47B17F11AD5BF106A26B95535025
            5FEBD5B9366E91CED33816DD334C676AE5C8CD6EA9329D76B17AD664565748A6
            AEAB6DD39BFE4ED1DB34CAC492B0928437C687F9CFB0FC7F3E0739F61F8FE7C2
            959E6F126FD1EBD20F11CDF2689EF46E8D6CA9E9D2F4E069CC3D41D3287A6B06
            EA87AB944D3EBBD9AFA6952EE97EF4A03B6C0ABD11326D8764A681707C23728D
            452C492D882BB90DDF683D63743B64D68DBD5BFA9D5CD15AC6ACD8F50B3E9DAA
            76BC17AA35EB15F9CE30B4D7693023D6ADC7654A8E9654DA196EB94C2A4BAA02
            4A0642A44F39F61F8FE7C0E73EC3F1FCF852A2AEC6B6D75ED9E6D574876DD72E
            B0DC7AFD5BD2FA3552933B572EFA73F49B8AF25D46E3ACD79A9952A7C8B86E97
            A339098AAB54A690BAFD44AA3C16961C6D2A0C352CB9CFB0FC7F3E3CFCE7D87E
            3F9F039CFB0FC7F3E14AF4739F61F8FE7C0E73EC3F1FCF8F3F39F61F8FE7C0E7
            3EC3F1FCF852BD1CE7D87E3F9F039CFB0FC7F3E3CFCE7D87E3F9F039CFB0FC7F
            3E14AF4739F61F8FE7C0E73EC3F1FCF8F3F39F61F8FE7C0E73EC3F1FCF852BD1
            CE7D87E3F9F039CFB0FC7F3E3CFCE7D87E3F9F039CFB0FC7F3E14AF4859271D3
            FEBBFAF15CBE2BD6A3D78EC7F58598EC9724D020536E1692DB5E7293F63D4587
            5F2709529BC32B5A8B88014909CE40C9E2C47CC50F6FC7F3E1A4D7DB393A8BA2
            BAA965168BABB96C3B9298D34970B45E94ED2E498C80E617C9CEFA5B47304FAF
            5F7E20BA9AC3F79F4FEB36304FD2B4DBC64019952D958023E6077A9BE9ABE3A6
            750E8BA8056DFA1EA764F93D8045C36A24E0F001EC6BF3E8A3CE6C3E8524E7F5
            0119C10AC8C80411F30E873D339EBD8F0EE53A497128095600E5CF31CE4F2FFF
            00CD8C751D31F78F5E1A4F85342ACD4A973DA5B32E9D519706532085F94F457D
            4C2DBE64F4514ADA585104F409C70BCA7CB617C89CB812AE52794609381F791D
            0E08F52323D8FCA6D72D8A1F5E1416D1521492923EA9DAA00672950327D47BD7
            D53D36F94B6DA5B6B496DC436B49041042909215C00241C67BF104D39D19F4E5
            070B00119C280E99FB88E807E5EFC28E34852404B4A58380095289EFEB918F4E
            DD3D7AE7A61214E5A1413E5F9AA040EE1380527B1C80475EFEE077CE3857C72D
            27014DBE7A271CA918CFF9E3BE3A7D3DB34CB950213B84F24829120F963B7F51
            F9DAEDEE13002A37280303807CBC9C91C91E9F2ECAAA779C5682B5120F52327A
            76F7247DE3D727872A03690D83E5F420807A7AE318F9474CE7D7F76386FE98A6
            5B5B6AC3C91CB8256923BE33FD5F6C741EFEB92787129E59CB4D971639B1818F
            538233F2E7A7527D8678A86A2E12A50884A73023D307BE444C67D735376AB410
            0A940C1107D4F94E73EB8389810224D29A2E309284F6206323988001C9200E9D
            BA77CFA63AF0AEA72DE50E5436ACA9432A392413EA3F57A0E80FD7D870490632
            13E590B09528FA92011919E9CBD3A01D3EFEA3BF0B384D16C73850576CE01C0E
            8AC7A0F7EBF507A9E2A37371B08039CE4838981399F7F6CE79A9294918E011F7
            FF00A9FEB5EC663B24212FBB82B3EB80AE52718F9B39FA11DB3DBAE01BA2334D
            03E5B6A50EA41472919C820901233DBA7A8F43E9C14A5871C5871410A09248C2
            F94E09EBD094FF00C8F7F61C2863F2A508185272A18F50A1F7F5EDEFD339E305
            572A013B5527B80703DB8CFEB8EFF95202A2008FE86323FDFF001AF3843CBCA5
            214818CF542867A63070A03A0FBCE4E385052A80A7D05D7CF45018F9402483D7
            F582BB83DFA1C83DF1C76C62CE72B046538C8EB9EA00183918E87FF37B1EA783
            E133910944741E448C648CE49E808CA89C607CC318EDDBAF188F6A4E8DA84829
            248015C105307E7183C731DA71D5F474C9273C7071CE79F403EDF5E68C21D1A3
            3484A427A818C842307E9FAB9381D476EE7855D3E1B4805239128F4CA52318F6
            EA0753DFA7EF39C04831517C000A0F527A728EBD3D3A9C01EBDBF86726EC4D79
            C475181D483800F53F7E7B77181E87D70639576B5AF72D64E7209E703D7D7BF3
            F78AFCB96E549DA884CF26048989E41FBBD84D2CDB7E23180A2DF4CF620838CF
            AE0E0E0E4839EBEA4F5E3DEDD5D9410186904607CD9C03EBDD23A76C76C1CFBE
            7847474232A52B9B04FB82467D71820E3EEC77FAF0A088A8C9504840293D3239
            B2140E7AA49F6C91D31DFA7192C5E1DC0256126409804F201F90F9723E7350D7
            36A8125D0A748CC4909331C891CFDFC8F4215316A2F3B8C0290A09C04A978C7B
            67DBD3B63D077EAA8A7079C50580E2BF542923241EC3A8CE0F5FE3F4E12B11C4
            0E5281D1383D474E9F7004600CFA0CF6CFA2B69D3940A43640239428F2E41EA0
            8EA73ED900003A75FAD82D6E49D9F11C2A9813C0046D3DBB4E7B99F4E2AA5A92
            7636B0CB294C247D6F5C1FB7EC073CF34BEA3A5D2B49F2D49EA08073DF27A118
            F989391DF1D7A7121B4FDA74C941702929E705212D919393D06547A6067AF6CF
            D788EB4B94F9520A482B492AC948C7727A0E9DB1FE5DC74E1F9B14569E94871B
            42B90AC02A2DA0E3E6C761D7AF638049F4C6071B7FA1AFD96AE583B96B3BA630
            009227383C41079FE55A43AE1B51D3EEB7AD96D2A6D5CA803D8C01F3E49106A7
            CD9A12DC54039279D5DD3CA46547008CAB3D477C8F7C70E4A0E0E07B0CE07BE3
            07DB1D307E9EDC32F652DE6A384CB5AFCD5950E5211CAA0159CA425008C00720
            FAFE0EC4796DE7015D79738F9B1D87B82319FDDDF1DBAFD2CF06B5FB33A52ED9
            C536D49496D4B56D24109C64493E5E33F97847A8ADCA2FDF85EFFE228C888EC6
            067E731C668DF8F0CC5A52DA8923201CFB0C8E99C7B7A1C03F89E3B0BE12028A
            8E09F6FBB1F5EBF77045519ADA5B5AD64A518513D09EDDFA8248C8C751DF3DFD
            F67755EBD63A769377BAE1A2E38C3894241DD920004FA033DF3FCAA26D5A5B8E
            200490770998C82A0791F7738CD34D7E4F6988CF65AE7582A215CE307084F7F9
            49C1C8EC7EA07A885D76D490F29FC4648515AC1C29230484E481C87B9C1F4381
            8EBD3125AFEB81975B9084A9380E2FA1490700240C90A18FA710FEE199E6B8F1
            007CCEACA40000CF73D79BA8241EBEA7D7A71F36FC4AD61B79C7C25C4494AC9D
            A1246E26449381038E73CD7AAFC2DD294D5BB2A5B6E24F94C951E041189E3118
            1F67029B3AA4800B9CAD7503214B3938C9E80848C74F4F5031C36D527DE51752
            02520A7BA41E992474248EBE9D01C7BF71C2FEA249E7293D797079B27A107383
            9E5FF3FDDC2226C75152C848C630A2481907D00CF4383DC0EDEF8C1F2D6A1709
            5BAB2B5020A89C42404CC9CA460C9C4493DB15EAAD152DB48DC5306111924E22
            489E7BE04F6AC6AEF86C4AF4CDDFEB0DA3498336AF5CADEA2487295021C75BF3
            267DB69666C44B2C3416E2C9449481CA0F4495100671705B30F0E6B4341E8D4F
            BCEFA4C7BC752AB4CC4AA494556854C302D471C82EB6299013361C8A9F9EC194
            E19323E2A3A0C869B2860041E791169ECAD14BDDE5FDB9AB96AB1AA62AD509F2
            ED1A63135FE6A73B320D3A236FCF89F6534DA9C8EDA67B6DA4D41E4A418EA285
            AC7399B1261A491F38291CD9C9391DB38213DBB9C1EA3B0C74E36575EF8B77D7
            1D3BA174BF4F5FB8CD9B3A4592757BB63C8BB9B84DBB6DAED028A77A5A68A4EE
            28524AC9DA78CF574AF48592358BED6F54B76DE7D576F9B16DC4EE434DA97BBE
            38493B4AD5329041DB138A813AF1B23D05D7B2F3B7AD97478B587A2AE31B8A85
            43B6A3D700538DB895AA7D428552756E23CA0841CA70DA9C48EAAC8897607845
            ED8B4F2E045C6F0B9AF47D8951E544A75D306CF974A65519EF3D2DAA38B616A7
            5A5148439CAEB04A1440E5E2E324C68DF38528AB24E304E700E3F67D4FD41EBD
            F8275A22A3CC0B5139E6C72FD4F6FD518ED819C93F5038D6DA678A1D6FA569EB
            D2ECBA9754674F5A7E12ADD170A504B66494B6B5EE5B6326436B4CFE35B01FE8
            BE94D4AF5BD4EE341B07AEDB58712FAADC254560821442484A88226560E69934
            DB51A2448F0A1B2CC28915A6E3C3891984351E2B0CB61B6998ED3694B6CB6D36
            0210DB684A529094A40031C12BD6F3AB3CBFD2282BE42BE42797EBDB2460E7D3
            D3D8F0F53E29CD938438A24138CA8FCBE806718248C67E9F5E0A1F9C96C10D32
            0000E028648C839C92AEA7B107DB8AEA356B85151016A2B254A5A89254491B89
            2624924CCF264D5BD2D80122025291B52138000090001C0000031E9E914D24FA
            38A7526547F2D6A91227C12D2DB400BF25A43FE634DA00E750529C4B8E8E6090
            1A4A88240C7864DB2A7D4561E593CA9496D0DFCA9C2509EB938E61800E3A641C
            67D1C19D5575214EB88C21072036D256A257F224241E729230A2AEA072F6C903
            82193224BADA882A0D12920368193EA79890540827AE08EC7DBAC90BDB92D364
            291B8A72A9933230531181C998AFCA1B4971738954888F44A4FF002FF6CCA453
            6DC40C86243AAC842CE541B4AC05A81563215D4F2104FAA144107A1E1A6D5FD0
            9D32D67B21FB0EFCA545A950DEA943AA34E2E352A44F813A03C1C66541554A99
            3E3C774A52B65D70472E2A3BAE212B473E43CD2438107070B279901441E85380
            091D71D3A8CF539CE40238277B9D693CED0E6253FABD8848C2FA7311818CFF00
            CB8CEB2D4351B3B8B7BEB3BD7ED2EEDD68758B8B7714D3AD3A98014DA9241491
            DA3DF0335D37565677B6CED8DDB0DDCDABE92DBAC3C90B6DC41DB2850332098E
            7B8F500D36F4FB4EDCB328748B6ADD8EDC1A4506991A97063426224542A34565
            31D056DC565A603CA4A029D52194214A5AD494242C2524AFC7616EAD488AB514
            A8909284AB24A394A86100E72A2A18C7CC01F43C38F31C4B4414B09046465592
            3AFA905CE9D07B63AF4C1C1090AACD7803CA129F72840F5F40093D7A8CF4F7ED
            EB9EC5D5C5C3AB79D5BAF3CEA94B75E75C51538B5AF7A94A267712A24E4FA8AE
            14DB16CD861A6DB69A6D094B6DA121284A10004A52008000C631DCD35759A6BF
            216A536875A0B29E53CB8293819CF6CFD4803BE7DF842D5A84F3C94875F73D80
            E5248E99193EDD31D3D4F6E1D29AEB8E753CC491D08C02067D81C64E3D8FAF5C
            70969C565EE75A56700613D01EF9F5206493D7E9DB07AF16CB1B879094646E47
            0704E36F0489CC11F677A82BA5050201266264C489F6FC23060D36EAA5330D99
            49924AD0F2013FD1A414AD20F26398292327F7E718231D259F86DC369DDF1E87
            CD425E1E537A96DF2B81396F3A4B7DA39B3CB8E5573728031F375E22EDC935D8
            50A44E295A92CB7952108438A03BF540E8AEE3F54E707BE78919E18370D4AB1B
            E2D1C6A6455B284B7A8C595F9096C14FFC28BE9402BE752947947B0EA739EE06
            D7F0E05D3DD57A15C20A521BD4AD439E74A795440048249107135AD3C4E5B69E
            88EA56899DFA1EA0A4809C61951067819199F977ADACF983F68FE3C71CE9E832
            71EDF363F7E318FCFB7B8F279A3E9FDE1F971C85E7B72FA7757FB7FCC7FCB8FA
            CD5F2B6BD61C00639BA7EFFCBA7D7DFD781E60FDA3F8F1E1F37EEEBF7FE7C73E
            6FD53FC7FDF852BDBE60FDA3F8F03CC1FB47F1E3C5E6FD53FF005FBF81E6FD53
            FC7FDF852BDBE60FDA3F8F03CC1FB47F1E3C5E6FD53FC7FDF81E6FD53FC7FDF8
            52BDBE60FDA3F8F03CC1FB47F1E3C5E6FD53FC7FDF81E6FD53FC7FDF852BDBE6
            0FDA3F8F03CC1FB47F1E3C5E6FD53FC7FDF81E6FD53FC7FDF852BDBE60FDA3F8
            F1C1707B93F4EBFF003E3C7E6FD53FC7FDF8F953D81E9F7838C7EFCF4CFDDC29
            5EDE71EC7F0FCF81CE3D8FE1F9F05FE69FAFF7B81E71FAFF007B8528C39C7B1F
            C3F3E0738F63F87E7C17F9A7EBFDEE079A7EBFDE3F970A51887067D47D7FF63C
            73E60FDA3F8F05E974E46738FAABE9F771D9E68FA7F787E5C295ECF307ED1FC7
            81E60FDA3F8F1E3F347D3FBC3F2E079A3E9FDEFF006E14AF67983F68FE3C0F30
            7ED1FC78F1F9A9FA7F1FF6E079A3E9FDE1F970A57B3CC1FB47F1E07983F68FE3
            C78FCD1F4FEF0FCB81E6A7E9FC7FDB852BD9E60FDA3F8F03CC1FB47F1E3C7E68
            FA7F787E5C0F347D3FBC3F2E14AF67983F68FE3C0F307ED1FC78F1F9A3E9FDE1
            F9703CE4FD3F8FFB70A57B3CC1FB47F1E07983F68FE3C78FCD1F4FEF0FCB81E6
            8FA7F787E5C295ECF307ED1FC781E60FDA3F8F1E3F347D3FBDFEDC0F347D3FBC
            3F2E14AF67983F68FE3C0F307ED1FC78F1F9A3E9FDE1F9703CD1F4FEF0FCB852
            BD85C03FAC7FFF002E385292B494ABAA54929585750A07A1041EE143A1182319
            07BF1E4F347D3FBC3F2E017460F5C74EE15D47BFDFD3391D3EFE382010411208
            208F507047DD5C82410418208208E411907ECAC49F897EDCE46DEB74173B684C
            445BDA9532E1BFEDB6A030E311E0C0A8DDF5C8FF00661438EBA3CD84CB30D4A5
            B6A4A148909C213C84AA14523912B4E1F5208209E8B567A630073761D7A761EC
            33D34CDE3A5A5A8AFE92695EAB466F332CABA9EB7A72DA8895B8AA45C915C71B
            2F4A08E7699627406C06DC7034A75F4E13CFDF3454F8C02D0798123A293D0A88
            F97A8007518FAF707B638F9B9E33E82DF4DF5B6AF66D214DDADC91A85B6301AB
            C4874A4402212B5293EC7B0C57D18F0775D7BA93A2747BC75415716A93A75C99
            CFC5B321904C9E548095124C1E664D38D4D75D4E52DCA04282700A12074273DF
            3D7241EE3DF3C2F69F28828F33AA7091CDCC08CA72320607FB7A74E1BAA7C239
            6C10425783CF80081D49EBD47AFA64F4F73C2DA1423CC8505E42B00E4E53824F
            5FD5E87A75EA4649E9EDE7FBC4B593B8A7BCC1CE73EB31DE38F7ADD684BA94A7
            727FCD001C831B62089F7FB334E7C2988703652528C01803971918EA09C77CFF
            00CFD33C295992EF429755CC739F9701071DF20ABB7AE01071F5E10112004201
            4AB3D73CA907D8741D3A7D3F71273D3854412F24A5918E55A4A125415EA40CE4
            1C63E9FC49EDC542EDA4255288583C9ED204CF393EF5336EE38400A4010011B7
            BCC0854768FE5CD2DA1C896948E696B563A82083ED82324019C9C8031D33D0F6
            52C4AA3ED80152641513D3E72074E9FABCD8EDDF39E10D198706079A39B3FAA7
            241CE00C1C8F7EBD319CF7E9C1E21419080E38C85120609EA1471D4938E9D723
            EEEBD71882B969A5F013381113E99C8E38E0FDD526CBCE4F98009E2271320CC4
            E00818E297B1EA6F282B9A5AFDB90A7380738EA320F500F5073FBF851C7A924A
            529321D1909E51CA7B9F503986338EBF5FDFC36EDBED32DB4B3CEEF98E7210C8
            4AB90F325214A3903195050E83F54F5071C2B19CA308385147280A411827A11D
            CFA67AF5EFDB882BAB6006E4E088C47311C473F2E3201159EDBF3854126220E7
            D333FAF7E297D1262D43E57160E3A64E463D7DC023A7B63D3852C594B29C97D4
            4653D3D7A672319F527AFA8F639E1BF8CE94A7F579703B9233E9D719EDEA3DBA
            F71D783A8F3B0072B7D09E9938EC707A0CE739CFA673C443EDA572369CE4C448
            CA55E9ED04671590140C107DFF00AFE88C639A72624843C06080477270093DBB
            E3D31DF23238514653694A472023E8077EBD7A0FAE7A7A7D3A70DA4690A290A0
            036083F3294795272010A57CB827D303D81EBDD470DE73940F34F400E4A89049
            EBD3046477FCFA91C41BE82893381CFAF62311CFE383F6F7425C4CCE60768991
            DFFDBB629C28EF36AC03E9D082060E3247B76EDF5E0EA33ACA48F9027BF5E806
            71E871D7A12403DFAF4E100C2BA755E55DC60E3B9EBEA4E73F5F5E0DE3C97138
            CAFBFA64907DBA73771D483EFDFB60F4070A3CC23041933EA9FBC624F7FE9197
            56214094AB9E419F504F0477E3D3E5C391165A06067008C83849EFD72739C923
            EB8FAE72383D895043641FD60723A2529EF9073818C9F4EBEBC36B165F400903
            38CF5C1FA9EE7BE7071EDD7AF50A287201C76231FD63D0FBE3AF4EBEA467B74E
            335AD4DC4C059112003DFB7A1000E71DF39F4ABDEE9A3CD2099C7CC606313333
            CC11E87269D6A7D494143F5B1E9D797B13F4EB93FC307A9E1CEB6EE59B0DE6CC
            7932591CC301B7941208564138C8C649F6C1EBEB80C1D3E7252A4A464A4F4039
            80C75E983D324FA74EE0F0B9A7D40254080B1838C640CE4F7C64FBE3A67B7DE3
            8B8E87AF2ED9F6941D220CE54460104C47B7CB07D735AEB5DD15B7DB71B7194A
            C2C410B485248C60A4E3EF8F6E6A79581A8B310529973DF711CDD3CCE4780CAF
            A8014827AF53D08F7C77E24CD3AED833129F2DC2A3CA904A92941EA90491D077
            CE4E0E067A74C62B06DEB8FE18A403CB8567017D3F5BEF1D01EB838CFA1E1E9A
            4DF650010E2C600FD67B073D0E40E718F603F13C7A6FA23C5BBAD1D94A59BE5A
            5B204A77829184C79553DE700718EE6BCB7D65E1825FBA5BF6CC06C28990DA12
            94C9DB1E51039993CF73CD4EC35A65282A0E2304F42A58EFD7A0C83DFEFE9D32
            3D93955AFB41971416C2B2144254EB4903183D949F9BA8EA081EA3EBC4587B50
            0964E1D4FA64F9E490719C13CE31F701FE78E1BFACDF05E42FE752B1900F9C48
            19C75239C1C0F6FBCF6C716EEA3F1BAEB50B455B8BE71690D94A906369383248
            4CE318FB62A9FA6785778E5C20AF7246F4CCB64FFD3F5A149899C12467B1A716
            F9AE21D4C93F051DC0B71652A43ED20F448EE94B60761F7E7A8EA49116ABB524
            2FCC088BE514A94721ECF6C03E807D7DFA8FBB8F9AE5CAB901DC38524AB380E9
            F5C75C051EA33EE7AFE2DC4FA91C28798A3951272BC9FDF951F97AFA8CF6CF63
            C7987A97AC1CBA75C978BBBE3D31C7AC91EC419F5C1C7A6BA3BA3CE94C368224
            808803E28E00C90A5281F94C4F6AE6749788561611D7F682B24E71FD51D3183D
            C8E9EBD0709296A77E71E6730392A391D7B8E53824E3FE58E838F8973F994A39
            503D71F367271D71D7DB3EDD3EEE13D266ABAF557A670AE9EF9E98EC319F7C1C
            7A71AC5FD542D4B3EE63713C822089C8E7B6011DEB735869CB4848094C60C14C
            FA773CFB648FBA2B892A572AB98ABA9E8A0B391D49FD5181EFFD6F618C7042E3
            C149C7CE48C8C95119FAE32024FAFEFC671C7DBCFA88565441CF5EA723A1EE73
            D08F4E873C13BAE857365441C9EB9F5F439C63B8F527BFDFC453B70A74CC9E33
            926240E3881E98F955C2CED08EE0011C020026320039EC2323208AE992EF5514
            F5E8460FDE7A9C93DBDBE9EE4E09DD5E3BF724E4018EBDC671D003FF00433C7B
            5C29483D79891EE3D7A7FEC3F1E3C4E14632707A1E991927A6320F7C01DBDF1C
            7585A80C124923B9FD77F9F3ED56069B4A51B7D3BF78C71DBB6628A2424120F4
            CE0E729CE7B1F51D00F6F7EB8E08E486F995CC53CD8CF6FA754E3041CFE1EBF5
            3D79E48E60427A6704A803919EC794E7F0EC782379F4950C86D03E60727231D3
            38E83AFAE71EF9F4C6430F38612012010000493FE527D713320E3E75DBB50919
            399EF9F4FCFD3E78A4CCEC0FFC2F9941C495A0A3A140CA4949564649F9B181EA
            4633C122DE6CC890C723C842143CB586C040012951030A049055C99231904E46
            78514A90943DCC1C47286C0EBD402093DC11EBEB8EBDBA7A2666CD0D9010A71D
            75E3E5A108500DB6010E38E3C7E652538400D94A5454BE64AB946142C56AB5AF
            E1B3B53E74956E380959830A8C8DBB600F520639AC6714944A80E48180272738
            F48FC3302BC12C2036B564ABA28925210484A92A1939C851F98E323D467A8053
            7203AA434E345452AE75646061209032739049EE4057301EDC1DCD7D2B3E4953
            38C005D27290B5272A1CB919CA52027E6182A24E46382498EB69472A08484B47
            052A052405E30060608395632475073E8A966414A00579953F588849102523D4
            E3D3E75D0A5013B7CA664664F693EDED349AA829D525439398A8E095280C1CE7
            18C107B0EBD339EBE9945D4597C8732809E50540F9855CDEBD00181803A0FBC7
            4CE385A4B7D294F5493CE305448C0C0C9FDFD7B7A9E9C24A73FCBE67C980ACA7
            2A5FEA8C771D3A6738EE71EDDB897B352FCA368381F6191CE623FDBE584F02B3
            E65107D8F23EC8EF3F2FC69192A2CA50E52948C8C03E6119C8EF9030318EA47D
            7A6384AD4A1C80085A93803A14AC920919CF61D7D3BF0B29B29473F2A7294F52
            147006324F6E9D060F5EA475EFC24AA1214404928C632951513D00FAE320E48E
            E3F7F167B25BC4A252920AB242408E2011EE7D01ED926A29E684AA498C0238F4
            FC47CBFA421EA11D610B4A8A54DAC0E74F2F385E3070411F8E3A712DBC37A2A1
            BDEC68CAC25292946A37EAA024729D2ABE1232463DFA74FDFD788915192AC287
            3A0743CC0023A63D0F3E723F7E3DB8973E1BEEF36F5B4613E68279351BE5F520
            6955EE7A0C9FBFA83D01EC7B6D4F0FC387AB7A7865055A9DAE448C054498EC7D
            FD715AF7C49484F4275505183FB8F50DA30607D1D502449126673ED135B09F37
            FF0037E1FEDC7D25D57F54824F400E0124F4E99C1CF5F4E093E207D3F0FF00D5
            C0F89030ACA70920E4F61F5CE4807EAAC2463AF4E3EB9D7CA5AA1FF177D4BAD5
            1F747E1DBA4D52DD86AAED33467566ECD6289AAD7A6976A8A34A264C8D6F5906
            A96FC7A85C929A9105B6D156436965329874294EA9B6C07160F1186ABAACEEDD
            B76FB2AB6F65FE261AF9BDEA96B06B3B1636B3EDDF53356EDFDC25BED68FCBA5
            4D915FD484D4E91418951D3B936838CB3359AB3F50F83A92D22989692E3E54A9
            CDE20FB6CAB6E037D9E1A353ACE8CBDAADA31615D5AD7335564D4AD44DCB645B
            51EADA7AF44A03F768951E453A23532AC1A669AB9894F992C2020F9838673577
            69770F87C6F4F4AB795B16D035D7F47759AAD4BD1FDE668169158F1E754E052E
            A6E7936C6E02C7A15261AE7439968C8259BE615252DB352A0E2538C3B2986DA7
            D4A9E7AE5E2456BE98EB65D1B79D2ADBBEE2B763AADA736CD16EFD5BA0EDEEDC
            B3EA70F4AA8D72477275B91EECADDF17A59349FE525C34D69753A2DA7489552A
            F4C80599461B2CCA8AB791559F178DBA4AD33D03BD347ACCD61DC1DF5B949B76
            D2F4C74174BAD5A6FF00C60154D3998F52F53E1DE746BBABB6C51EC61A6D598E
            ED1AF0937256E1478351F2988CB9A64C52ED4DEBBED6E168C78856F4B5AB5DB4
            637EDA9BA51BAE93A51A91A4B7FEC9AEFD5B4AA935FB334CA91A7D71E95EA7D9
            BA6375DBF362D6D750A2B553B32E0AC433466E955114D5D4A3ADA9AA6135B7FD
            BDEA7EC7B517683BC5B6366FAA1069559A5EEBA0EAAED2ED7D519BAFDBA1B2E9
            7AE3775B970507571502F9AEC5AADCB704E6ADCA74CD58B4ED8A8CF55BB3EE06
            53CE25B152642956457978A9E8CEB96846FF006D79B6CEF136C37A6D1349A8F5
            CD74447B76CCB375CB4DE55E31AA132047D38912EE6AE5B93EED834EA7B15585
            5753EF5A73A9B57A6CCA5D62A4D3EEF90F95EFE2436A694D7F49F41F4D743F73
            5BB4D63AF6DE2D2D7BA9DAFA674CB025DE141D26AB3AAB7E8F7BEA055AF3BDEC
            7B79CADDC959A754E1B54DA04DA94C9D568734371988EB61D728F6BB5AD65DE0
            DEFF00A41AE50B6E7A93615F17DED936C566D85A37705329D2B57EAA8569D571
            CB68DD56DDB53EB2CD1EF0B9E1F9B588B6A2E7CAABD2682F51E254C353DB92C3
            3263787A376D542F7DB8CFD78DA2EED9A8B6BED46C0B66C5DDE6C7A75FB235DE
            C6D42A51E6AF68EEA659B64AE34B8D6DC1716CD6ED5995D85725064572A1538B
            260C0723C99054A7975EBC59B502AFAA9E18D3F6F7A31B8B9BA55B9AD49BE60E
            A5DB6FE9E5A144BCA73B67C5BB6DCAAE965469D7ADCD49AA50EE9B42E8A048B8
            ABE6038D51AA56D426E751EBF598F2E3C7932FB53FC55EC8B3F517572C2D2FDB
            3EE8F7310B6ED258A66E1EFCD0BB3AD0ACD95A45711A3C6B86AB67D4A75CD7C5
            AF3EEBBCADAA1CC8D54B96DDB129F724CA3B2E98F271504185C547D0EDCDFA5A
            1A7FE181AEFB8ED2ADC86B94DD09DE06B7546A34D6ED2A45DDB9AB6B6EB7AD0A
            E7B5F45EBFAD96D5B92A1C176F18F0254476F1729EF3AF52A1CBA7B5516D3516
            2630D3652F6B31B6DFAD1BE7A6EBB6DC7C46F55A5EBBEE3B537721B7ABC36877
            F6B142D34D4DB775969D48A8C3D38D40A569EDE347A569FEA65A35F8936DEBB2
            B376D3A245A8D1530A73129F834E87F1AA55DD6B7F8BBEDDB496D4DAA5D56859
            1ACFB864EF4289745576FD44D0BB469B7257AEC9D6C5129B5B5DBD22995AAFDB
            D269759A88A9B74F61B92831A9F3E34D6EB92698DC653A670D2352EAF7EEDEBF
            E28BB655F5A495DB8F4B6A1768B175062D3E93A87625464DBB2A7B547B9E0D22
            A558814FB8A90F84B731887549ADB129A2943EBE5CF145BA45B40D46D2CD49F0
            4CA7D176E75ED34B3B43291BADADEA85A94FBB2E4D62A2E86D53546D1456A934
            4BAF53ABE9766CDA84AAF5525C16A54A7D718555B934FA43EFC2891DC55FDDFE
            99550B0EF6810995CA9B3AD1B921C38AC214E3D22549A34D663B0CA13F338EBC
            EAD2DB68032A5A920649E14ACEFF00E8F5EEF770DA874BD6DD11DDBEAD5D7AB1
            78D62876C6EDB42AF8D40AC3F53ADD47436FDABDC3A6776DAD1E5CC716A148D2
            CD4CD399909254E28F2DDCD3DCACB4B432D319A01E26FADD46F127DF2EE0F566
            EAD5EBFB65F036477AEE0F46741ECD758A946B7F4FB4CF7530F6EAD6A25BF695
            5EAF47A4B95BB829FA75745EB3653131B91329371C9545131C7901F4349DAAEF
            73467637E1F1AB7B7FD11BF3F9D25916AEBF6D2B5674F1CA0CE817352746B73B
            5AAF218BC6E8A7F93F1E29DA517840B6EFC86DBCDA1A871AA553A8875A495076
            C5B47B64953D36F124A15A8EE9C57666D9E85E09B68ED5275FAE52A42ECCAC5F
            4CEE56BF54B92CB35C71A309FBA66DB73DDB99E80E2952FE026227AD052AE62A
            559DDFBBDED21B1D5B46622C5B9AF69FBD3BD68D68E8DD32CC8B49A84D5C2A8D
            9D32FBABDED5F44DAC539B8365DA16E44449BA6AB0DDA83F4F767D3A3B30A53B
            2DB49A0099AC968EB76EB774F61EFF00FC48372DB15D5EB475BEE2B3B6E1A2F6
            6EA337B7FD3089A4906240361DF767D66A16EC8A36AD5C57279B26A559AA4DAC
            4A690969980E522336D2A5CB59F84168F6ACDC5BB0D44A7EB314D4F4FF00C256
            83A83B1ADB6D5932933E9F72DC9A8F7CCFBCAEFBEE228A94B8957B6343299A35
            A6B29B79C75D70542A6E2C47754EB08766F2DC2EA9DA52354740BC4E3C39358B
            796A857D5E4BD1ED73D08DB9589ABFA71A9DA4D5BAC4AA85936F4C870E751E7E
            9FDEF40A5CA66DEAA53E7C569BA826137599B554499721B4A94B6D5BDCC6F736
            9DB04D14B06B9AADA61AD5BBCDCAEE8ED3D9EEDAF705497235C36E57295AA157
            B8E6D91AB97BD36153E15227DE36FE995B558A8D5E9F4E3228955BBA1425BAFA
            61CD7D96D4FAA3E1D1B9DD16D24B8F5AF41BC48F78173EEA74F2DB9F7D993ACB
            7B526F1D0FD5CAC5BF05DAC552CBBC347D7448F43A0DA1717C348A7D33F93926
            3D4AD6F3A1CA448AC084E469906F4DBC37B74956D81B752B12C17345F55346FC
            41E2F880EC6B6B7A917335297A5567DA0B9106DFD06BAEB2C4B9F02DC97745BB
            5ABD64C682CCC7E9D6A56EE2A6449CAF87A74848717759E2A3E22373DAB32C7D
            B5F85FEE2975BB83492FFB6B57287AB1A7174D06A5A4B7BCBA2CC8D02F8B4B50
            ADC937269FEA958F4B0A7C26D8A743A75D57738613B459D4F538E43E14A76741
            B7FF00A89BACDEBF84DDE56FDC572593A61B96D8F6E3B53752B47E155A50B524
            EA1DACEDB101A7EA74D51E49B26DBAAFDACDD19F921C91122BE12A756E73AD5A
            22F3BFF37E1FEDC640B4B6DAAEED0B503C1FB5AB4676F3BB0DD8E876876CA35D
            F4B2F7AEE87687D7AB17BC5BFAFC9F4053CE5C1695D522D197422F572356B9D9
            AC3B0A708B1D2EA623A4A80D0FED537853B744FDECCCDDAB6EE36D62CD6A84EB
            6F6E8349A169933771AE2EAA853566AE25D371FDB0ED17ECB4AAB897044F8245
            4E96525EF8A5796A52C9FDE2E99C0DCB6A36D6EB74EBA6817D69DE84D33712AA
            E55A1D258B46ECD389756A850AB132D59EDD61EA9499769D5E0B306E36EA549A
            6478CF54E9FF00092A6A5D754CC4FD39F18ADB06AB6CF68BBCCB1E87AA559B2E
            E8D79B576E169E9F22856EB3AA9736A75E7A9146D38B7A974AA13D75228EA62A
            0ED6517636ECAAFC674DA10A75492C2A4B2882EC4CF1B1D02DCADCD3F42F5CF6
            7D6057EFDD52AE5B5ACFB28D54A7DA9164BF55A76886E86CD91118D42A8BB11B
            7D71685A41A876ED0AED9325682D32E4FF00E90B4DAD5258603497C3EB58F4C7
            C52F4F34628DA75596BC3DB48ABD40DEF522F97E9CFB56856370566E82D276F9
            645851DC6DB302356EDFAF4E9FAAC88E990B71E954D54B750DAC054952955BA2
            F113BF342B65DAD7A95B62ACEEAF55AE967C4462687DC1766A353F4C6E599A70
            C3BADD655BF79D8B67B6F562146A7D877052AA53EC7D2579D8D2ABB0AA9558EF
            54DEA37969AAC772AE1F116D5ED39F13CBF2C71A2BBB4D57A75E1B31D1CBF6CB
            DA5D8947B6AA7715917348B9AE537ADC574B354BD29BA71694F890D746A655EA
            0F5E4E9A8C972240A4FDA6F0284C59D4DDB1EE49AF0E2DEE50A9DA11A9B5CBE1
            3E2830B7196D69CD2ADC7957C5FF00A5D6AEE774E6FA9D5BB168B2DC88AB844D
            B5E9152AAD21B8CEA4549988E08EB528006C7B6ED44D40BEFC51756B7492B47F
            54AC1D2DD4BD91E8650EDCAB6A4D9936D69F12E783795DF3EB3665563C95BADC
            0BA293164429156A3A653AEC66DE8EE2CA92B42B852A7C6CEF783A6FBD4D2373
            56B4E68F7A5A69A4DE175E9D5EB616A45118B7AFED3ED41B22A4AA4DD3685D54
            9893AA9058AAD266A7CB5BB4EA9D469EFA541C8D31D4E482FD31DEBE92EA4DD3
            BABB3DD62E4B0AB7B3BB91CA2EAE357E46A3D2D8451BF924DDED12FBA1C88158
            AA3532CA9F6FA9E951EAB31501F6DC89318970E33B1DC488A5E171A61A8FA534
            CDE731A8D645C764B97A6F9F5EEFCB4DBB8E9526966E1B3AE0A9407A8B72D213
            250DFC5D1AAA842DC8539A0597C21450A560F15B1E2F5A3DAB90B77FA6766680
            3C69D13C5A6C285B1FD78974D92866A96A5BB655D745BC2EBD556617FF006C6E
            9BA013B556D9969423CE71C9F0CB929AF2A3B6E29566D33C5BF4865697ED9AF3
            B1344F713A9BA93BBAB62AB7D6896DCECFB46D677592ADA7D4892B6A4EA0DC91
            AA37941B36CFB31515502A6DD66BF77440B8755808430B9CE3909BEF478B9E82
            40DBAEE8B5E2F4D3CD6DD3BB8F66F122CAD7FDBD5E76B5BD4AD6FB4915276026
            8CF43A526EA7ACFAED32BCC54199B45ADD2EF17E8D362A5DC4D6E420B1C47DDC
            669FDDFB3EDF26D9F777A7BA0DA85ABDB6EB2B6B3716D26EBB4F446DB5DEBA81
            A37019AE5BD5CB1EE9A5D8B1A43757AE5926050BEC1AF22DF44DA9C175B8531C
            8AB61B0976176B1ED7772FBEFB0BC5F37056D6885EDA40774DB65D39D05DB869
            4EAC428D66EA56A223466654AEF7AF2B82D67E53AAB3E45E7529AEDBD6BC3B82
            4479D223B74E973FE01A79D6E32957FDABFBBCD3BD17BC76B5655CD48BB6754F
            76B7FBDA73A79228B0A9522151EB4C59352BED52AED72655E0BD0A9A6934B7E3
            A5DA5B15893F1EB69B318305721118765BE2A1636FB2F2FB234736DFBA3A6E9C
            308BE6054B5EAF7B16D6A2E90532F2B02E4956ED5EC276BD16F4A9CE9D71C80C
            3354806914BA8D2DD8335869FA846A83536144AE6BD35875DB79DB86F0A59D68
            6C8F75BA63676DDF5C24DD3AFB776B2E9B2EC9A6D8D5395A2774DAA28B05A76A
            12E6D7A0C0ADB8A8D50BAA2C66EDC41914D69A9CE4A9A23B73CBC1874AF50B44
            3607A79A7FAA962DC1A737C42D45D7BAB556D8BAA92FD16BACC6B835BAFCACD1
            67CC83292D3E96EA943994D9F09E711FD3C17E33A825B520F0A5353E323AEDA8
            FA55376A56C4ED61D58DB3ED3351F51AE2A56E7F71DA274A7E4DF76552E9F6EB
            B32CEB79571C6A3575FD3DB7AE8AD031EB5792298F9622B4B885C8BE77C5B1E2
            D88D06AD4ED7DB66ECD9FF0088C3FBD7D955CF6457D8D57B1B5875AA9BABF7FE
            9FDEED2E23D665D1A5B5F834715A6293530A9D12E9A1D7E437179CC7910A425C
            416387FF007E3AA7BB5D15BEF46B53B4BB446B1BA9DA8229F775ABB9EDBDE9F5
            AB68DCBAC0FB957105EB3F522CAA65CAB86E5D30EDA7234D8358B36255A109F1
            AA0673C16A86CA555B9A31A6D4DDC2F88EEDCB725B48D886B3EC7EC6D288FA81
            33739AAFAA7A6B4ED0285AE346B8EDD7E976EE94D2F4F29B589722F09702E37D
            9B8665C52A9B122513ECF119875E4CCF312A55B052FC4CF43EADB10D43F1078F
            6C6A5A347B4DBFE289AE5B6ED22DC4EA14AFF84DA8B5BD33B84536988B9D7407
            7E32B942972E91F1171C5F3A98EB0ECBF8390A5C56D2DAD5E297A75A4DACD65E
            DDEDAD06DC6EB9EB4EA2E87D275EECAB1F486D1B5AAEF556D0A9D5174C7E3CCA
            B572F3A0526833E8E1067552456E542A3A62943706A73A738DC25D0CDC6C6EA7
            4E3C2B377BE16B4AD8D6E8AF8DC23B76EE629F6B5DD6D584DCDD12BC6C0D41D6
            FB9F54685A876F6A38A9087526AA16FD6C40A7DAB1223D7548AE21B84AA5B67E
            20C7B7BD2ED1ED50A678A3E9D6ABD534F2E787A7949F0D4B3B4CA55F12A8D25B
            B7A0EA0C5D40627CEB3DCAA2D023B370314F4AA4BF4D2E09098E0AD48E51C295
            3B3667BCED3BDEBE9ADCF7ED8F6D5FFA7B5BD3CD4BBB746F5534B355A8512DED
            46D30D50B1DD889B8AD0BAE9D4EA956A94664662A34E98C4BA4562A74E951A63
            4A6659790FB2CCBAF37FF37E1FEDC54C786E698EA369A6A7789AD52FEB22E3B3
            E9BAA1E211A97A8BA7932BF4B914D8D7959155B134EE041BB2DE7242509A950E
            74EA6CF8CC542395B0EBF11F4059536A02D3BE207D3F0FFD5C29473E6FFE6FC3
            FDB81E6FFE6FC3FDB826F881F4FC3FF5703E207D3F0FFD5C29FAF5A87BE22F61
            2F53366BAE3408EDBCFD420DA8FDC94D4309429D54EB75D6EA8D0C2D4D8E5E56
            1C2E8E74928040F5070C10A65554A484486C9510AE63C9CC01EE9C1707AA7A1E
            E41C74C678FD0D2FFA646B9AC5BD2DD9284B91EB96A5C14A790A514A56DCEA54
            A8EA4A9602F941E7E5CE091CD9C1E9C7E6EB756A6D9F6B5EB755B332E4A44399
            40B8EB3479119725BE78EF5327C88AB6492ACABCB28033DF20E48C8E3CAFFB41
            74EBB7BA868DA8DB5A2AE16E5A3D6CF1434A7482CAC2D1BB6A4ED94B8409F498
            F5F56FECF5AFDBDA69BAD69D77748610D5EB174CA56EA5B9F8CD96D4521446E8
            536098C49CE6A50D1AE0A9B6E36871D654809C13904E7A64821641F5F7CFA608
            E1C08373BD1D60A9C648C1E5055D3F78193D3231D474F5E8788410B5B2C9E601
            379D181240293299041CE076EBD4023AE72339E15D1758EC8252B5DDB4751047
            3734946011907B11D4E3A01FB881C7932FFA3751592B3A7DC0490404A6D9C13C
            76DB923FD63D3D5967D51A694ED17F6E73126E5A57A47F9E419249EC333DAA6F
            44BE1F2940F2985F21F9549E70923D00383DFF00793D8F4C707A8BD662929F26
            1051231CD87480319CF440181F7E3BF5C9C710DA06B3D8EBE44B577D1549C050
            0A94CFFE5248C2C0C0F4CF41D09F7E165135B6C2496C7F2CE8A9CAB94054C642
            493FD5EF924E3DBD71D33C54AE7A46F50A51569576B8E00B774C600E3E1CC44C
            C60F6AB05B751D82D19D46D44401FDE1A800ED393BE00C77C003302A57337555
            9C09E50940201E60DA88E6C01CA011D0F51D49C003E8783F62E29EFA4225450A
            4AB9417015A55CA07EB00124E720673EF91DFA45C8FADDA7ED14A157A5090463
            21731A18C9039810A2307231DFD7A773C2AE2EB7D825A0BFE5A5BEA19C24FC73
            5CBECAEBCFE84FEEEDDF8AFDC74C6A09FABA45D649822DAE10A99182761063F0
            CE454A33AC69F214354B3320C8FA5B0738E7CFFEBEF527A254F0DA7903A90939
            514BAA4827DC95215D7DB1DCE3B70A58B2D95C50A538F254B708500F12A4A88C
            673C9D41192072F7EBDCF119A26B1D8EE212945DD455A4E0653319391DC60F30
            CFD0FD31D31C28A2EABD9EA4908BA6920742A0996D640C6307E63E99CE7A67D8
            1CF15EBBE98D4C49FDDF74933B81FA3BA224E6496E491EA4E4C1EC2241AD56C0
            90A4DE5AAC18FF00EE1A27B411E7E738FCE2A57C1AB214C2101D290D048CAC9C
            9C023B903248C7B8FA707299E14D84A2506B07F59252A272303F5B38EC480307
            A7BF117626A95B4E24A5BB9A94B4819E5129AC6001D48E61D7A91FAD8FA743C1
            E33AA16B7227CCB96900E4120CA6FE63D70120A89E71938EDDF00E0F15CB8E99
            D4264DA5CA48C1258706247AA3B888A9145FD9288FEF2C149CFF008CD9CC8030
            1664E623BFAF63271A9EE3D18473514AB279940253938C14927207A1EDD3A118
            3DC2829B525C2483226B2E3653C8918014303A0510B5E4E3A7548F5EDC4658FA
            936FF2829AED307409F95F6BBE73FF00D427A8231DFAE074CE38306751290E90
            135CA791D4F297D9207419FEB01D32927D0F70483C43DC74E5F1494AED9C4A4E
            44B2B07B70760CFBFC8E0565A6F18F296EE1A224012EA222073E738388E7E552
            DA35C4D2821CF35A28E5CE0731564F4EE307BFFE53FC3AF0A585588CEA7AC867
            241F2D09CE524024051C927AE0764E73E9E910E1DF94F56392B90B953D4A8486
            BA6402138E63DFD3008EFD71D385A536F5A6A7053548A472A727CE67201C6544
            95818E800F5CF4038AFDDF4EDCA028A1A7841103E1AA0F073293F322063DF23B
            C5DB6A3FE236A322407126448CC48C664F3F39A94B1E7B671871B0400080AC82
            4F7C0CE73DBA67D7B707D0AA48070A50E618CE33823D4E794E3EECFBE41E9C46
            B8179C45A9211528AA1D08FE91BE657548CF45107A7DDD46785AD36EA8CE9C2A
            7B38F60E23A247AF5567DBA7EF38EBC40BFA5DD3609530E0224957C320633E9E
            9F9FCBF2E22DDF1B54A00ABD083B463B8DC01004007E5ED521E25450140B6A41
            EF80A3D8FB824273D89F61C2AE2D5827242DAE62700F374CE08E8067273E9EE3
            E9C47A8171C4591FF6D694A2700A5C49183CDEC4F4EFEFFF002E1694DACB0FBE
            96FE25052A524745A08E6F63DCF72474F7F7E31038F3050AF86E24483BCA4888
            DB9F4E3E5F9416A1A220A0A82B7000924649820993EF8F7CC40914FB53EA8E05
            85AD48C124647B01D4F5C93DB1FF009BEF192AF8D5723202D2000082547BF6C6
            3DF1FF003E98E1954554B0907982521783CC13D0919EF93DC60FEB13F7706D4E
            AC1918E5782C818208E84F4E8307BFA9FA7AFBCED96AEF24EC42D44C026370F4
            FC071EB99CD50F50D112A0A5942528C093F571100CFD59EDE6FBFBBC0E5714A4
            9194E3D482A18FE2323DB3900FF991CBAB254D901607AF4513D0FDC01E9DBEBE
            FC257CE99E5F3722B04E0E12AEA4608033DCE324F523E98E13F2EA2EA4A90A3C
            9851CF324E3A0C6339241CF4C7A75031DB8CEBAD52E8209737E40392AE31C48C
            FAC4981CD6059E8B6E5612DFC25104484904E36CE3B90673C9ED98347EFD453F
            312B4E09564956477CFAF500F538CFD060709797309E657324824E40CFD31D72
            73DFAE3A93D3BF62693554A7992A7519CF2A80202B38FA9EB8FBF2784C4AADB6
            9E6419080ACA8A47CA3946738273D0907191EBD4E38ABBD7AB75470B33FF006A
            8CF0099F68CE23D076ABB5868C5204019DB8389E3EF99F99F6C5289F98327A8F
            7C838CE7D0673DBB67241C640C6704522528138392467A9E9D49C6411EB81EBE
            BDBA70987ABCD609F884100F4054920742474E619EFF008E3DB827915F64256B
            5496C11D3194E481DBA737A75C7D78E84B2E28CEC5AA449F29904C63BC9FE7C5
            5A98D352D00A56CED81933E5FB267E7F64CD28DD92A5737507181D4FA6339EA3
            AE09FF00DB82E764E339C60FAE7A77E87B1FE00FA70925DD71103264B4539185
            028209F604B9EE0FD7A704D2AE88AA0A224B594E7E52B400718C6079993F7E46
            7DF8CE62CAE544430EC1E250A040C70238F7CC4735228F84DC80524402620F64
            E4F7F6E38F9D2D5E989467041FDF9EBFDDFAFBFA704B26A2EE55823973DC1CE7
            A1F7071803EBD4F5231828972EC8852A066339E54E405A3A12558272B231907B
            9F4F5E0A1EBAE11CF2CC60633FACE37D543AE061C3D704F403B7A0EE73DAD2AE
            CC1532EE003E542944E79C0ED227E59E6B92E9ECB489C1055027072248FD7A4D
            2B1FA814A9441CF31F7CF5F438E5E9D7391F867B923D394A27384E0F4EA70723
            27D81C7EF27DFAF548CBB9E29C9F8B8E9E50727993D73DBA859C8C13D4E30493
            83E85ABB9222C6113230294152B2EB69CE49008F9FB7CA798F41F5F4E25EDF4C
            7C286DB674180490DAA4F0418DA4C7138811CC5742DC072A5A60E70A118039CF
            E63BCE4D1EC89AA24FB052B1DCE53DC2BB74CFF0FDD8C16B931F03E52D81D43A
            0A42894732427948C75E709CFEB74C8C0073C25A45CF4FC91F18C0009493CC92
            3393CA410A23040C7D48E807052ABA21F98A42E4369C13E5BA540C7291DD2B50
            528A5C3D14849090A18574E26ADF4CB80E157D1DD982A50283F54C6722646240
            CE3ECAEADED033BD2654132140904C9139C0F4C0E39A563B31D4292E1081C839
            9248180A4903E618EBD0918E9807981E9C27E749528BC5007965239882082E12
            14B524800A7949EA9EBD00271C11CAB9A21E6CCB65295761CE02BE6494A424F3
            63AE493957620F04F2AE48498C4FC4B613CE1454563231CA938E65F650C64818
            F971D31D64EDF4EB92002CBA0132250B2471DA2783D84F7CE0574ADE6A550B41
            889850C7124E7ECEDF81A309924F2001C047263208C8383D3D73FBBA9F42074E
            125356559E624E3AE738EE31D8923B0C1F7CE7BF05B2AE68056AE59B1CA88242
            39C123D074E6EFDF2738F6E12D51BB29E9F333359E64E3A25C4123E6E550EAE1
            F40475C75C6389EB4D32E25316EEC1547F86B009F588E3E511CC561BB72C89FE
            32064082B403C131CF6FC07279A339AE8435D0A72410727B8E80FDC31F51D063
            3D7848CF5B40E39C0511957CC4803B003AE31CD84F73D7DB1D0AAA175C11DA5B
            39FEAA4A9BE5E5C1F98FCFD8FB93ED8E83843D46EC8853FF00E98C05FCBCC029
            04019FAACF6C761DCE3EEE2D565A65C4A61973041C215C988EDF61EFDB104D45
            BD74C244A9F687ACB88C831980731D847CB14715371BC9C2C103F12474EA7EFF
            00AE723EFE25B7869389FE7C1A2802810A46A51EF93D349EFBEBDFB7D318FE1D
            2BE2A776440851F8C63B1380A183DB272558F4F4CFD071343C2E6E08D377E3A1
            B1DB92870BA8D4EC24292A384E90DFEE74E5528E7E5C9CF50127B0E9C6D3F0FB
            4BB94F55682E2997446A36E654DA8A400A8249829F5E31E826456B4F12F50B65
            745F54A1B75B5156897C9FAE9992C28425324CCF07BFDB9D937C59F75FF01F9F
            00CAFAACFA6309FCF84CFC51F71FDE3F9F03E28FB8FEF71F556BE5A5337AF7BB
            FDB2ED6DAB71DDC66BB699E8BB577489916D77751AEDA55B22E07E9ADA1D9CCD
            2BED390CAA6391595A1C7D0C73A9A42C294003C78343B7A5B51DCBCDA95336FF
            00B87D22D61A9D1D94C8AA5374FEFBA05C951A7B0A380F4A834F9AECA65ACF42
            E29A081D3246471575E20544A05D5E257E14547B9E8946B928D26E5DC219548A
            ED3615629920B7A6EE2DBF898150664C577CB7025C6FCC695CAA0169C100F086
            F155D2CD34DBFDDDB0FDD16885936A69BEB7D077B7A0FA40DD42C2A1532D59B7
            8E9AEB25CA2D1D40B66BF1E851E1375EA4C7A34872AA962A0DBE887223372D2A
            6FCBE60A56853E287A64FAF7FF00A38FBF8883B9FD99E91EEAAA5A7F755DD54D
            43B1752B4A5EACB9A73AABA4B7C562C0D40B558B899623D7E9B12B748753F134
            8AC351628A852AA0C4B82FB91E3BCA67CD65B50A58DCDF8A1DCD50DE96E2F6DB
            42DE3595B23B276BF1EC4B74D76ADA0F375C6EED61D4ABCECF837C4D77C97E04
            DA35BB6159F02AD4BA3CC8AC9895FAC55553571E6221792FB2A7DA5F8A5EBCEA
            D5D5B30BAF53DAB6E0E92EB4DE7AEDB4DD4D9944B5A651E8737721A6330D574D
            3536C8A857E2C3B8E169FEB059519CA8C6A5D5FCA6A9D5298D5362A243AD8716
            A55CCED73693A3BB47A35EB0F4CD9BA2AD72EA7DCC8BCB54B527506E9AADEFA8
            FA8F743305BA644AA5DB7656DE7E7D43ECCA736981488085354EA441FF00B253
            A2C660F97C4A5F8B03B13FDE1F87B7EEE3373AB1E2BFAC7A7DB73DDF6ED69D26
            CF734AEADBC0A46D2764EAAFD05C5D029F4EB6EAB0B4B35035DEED9F436975DB
            C2CE9DA9316F2AE52E9AC2D53452ED94D3A2473E7F23E5DB5EF12EBE5BDDBE84
            E85D4B7716B6F92C5DC0B170D02BD55B7B6FB55D1AB9344B50695485D6E95516
            1E874B8745ADE9D5C8589D482D56966B54492D415A265404B7430A5686B4DF57
            34E358AD917AE965ED6EEA05A6AACDC16F0B8ED5ABC4ACD20D72D4ADCEB72E4A
            57C74375D67E3A875EA6D4291538DCFE644A8439119D4A5C69490BCF8A1EE71F
            78F61D8E7EE3D73DFA71918D83EE13708BD23DB1EC8B6C1765B1A577E6B96B8F
            88BEA9DF3AD5745A91AFA3A7FA69A5DBA3BEE3CA876BDA150911A9356BB6EBAB
            D7A3C2A7C8AB29FA753234298FC88E5C7232F897F7CEF8B77BB5E89E203B6FD5
            FBFACCD54D6CDBCED1697BC1DBEEBE526C2A65A69BAB4FAE2AE576C7728FA8DA
            7B15E956CC7B9AD2BE6DC9B0A3BF492205C14671BA84A890DF508C852B451F14
            3DCFF787BFE3C0F8A1F5FEF7FBFDDE9D3F7F19E4A9EE2FC4236C3636D47757B8
            8D69D37D51D37D74BF747AC2D6BD06B774AE936AC4D2E46B93D4FA3DAB56D30B
            EA14C76E5B826DB15FAAD3625699BA7CD8B5D8F2254F61BA5262B30171CB553C
            58EFBD41D76DD950ED5DEBE9BECEEDCDB4EAADCFA27A5FA695EDBED5B58EB5AD
            574E9F5360BF725F1A8173FD9D299B6ACCB82E29CF5B36E51AD77E15722C2A7C
            AAA549487DB8AAA8295AA932867D7D3FAC3DBF77E1F8F7E1A8D7362CFAAE8EEA
            540BFEF3A8E9DD932ACEAE3774DF749B91CB4AA768D0C4271751B8215CCCAD0E
            509FA64742E522A69527E10B7E695601E33F35FF00117DE56E4ACAF0B48BB6AA
            D593A0B7C6F75CD7DB5F562A77AE9EBB7AD36CCAA692DB91DBA95D36A502BCED
            22A7363536AF0EB159B729F3E4D35AADC37E9CCD5CA592B48B36DD552B502DAF
            0D9D7CB7B556FB87A9BA8B49DB25FB02F3D40816C43B2A15DB5F66D0A8A67D72
            25A94F973A1D0189CE8538DD323CC9488E0F961F731CFC294EFEC96C0DB268D6
            DB2DA6F6BD76C0BCF466E035CD4746A99BC957F48D44A9DC729EAADC77F57EFB
            7E44C7AE4A9D524071D9B549125CE46D9447406988CDB68917A75AAB60EAF5A1
            4ABFF4BEF2B7EFDB26B7F15F645D36B54E355E8952F8296F4197F075086A723C
            8F87991E44678A16791E65C6D5F32481958F0E8BAABDE1B360E89682EA056AA1
            3F66BBF5D06897C6DBAF4AACB724C5D14DCF4EB0BED4D42D08AF4E7D4114FB6F
            5450F7F2B74DDD75C4362B6C55A8B19979C5D5264633D2ADF5D6F645E0E9B299
            166D6AD9B4EFCDC06BBD43422DAD42BD68D53B92D0D2C8F5DBB751AE4B9F52AB
            F6D5190E54AE362D9B7ADA9FF01438A95AE7D6675352F32F4244B6CA95AC7935
            4622477A54B90CC58B19971F9121F712CB0C30D20ADD79E79CE5436DB48495AD
            C5A9294241528800F1E2A3DC74AB86990AB741AA42ACD1EA4C26553AA94D94CC
            D813A32C90891125C7538C4865641E475A7168563214471939AAF882EAE6A22B
            5CB69140DE45BFB9FA0EACED2B5AAFAB3B70343DBABBA7571690DF3A6946455E
            E7D3EBCADA914FA659F5BB6750AC976B6EDA77036B6EB947AAC1760B8D4A0862
            5ADEFD8A6E075FF6B1A6FE1396D6AEEAA522F9DB3EE536FBA8D663D21561D02D
            59BA71AA369D814FD58D25A5BB5DA72D532A6CD66C9B6EFF00B563264BC3ED4A
            9C36A74B61B9096DD0A569B1B9652AE8A23A1184803B839E981D0FD31D7B9EBD
            7B7E2FA1F9963EFC7E7F5F7F43C655748FC60373975ED9F79F5EBA21DB71B5FD
            8D52D21A46CB2930A854D2DD674E77697231666DEAA73A90B69B6AE2A9D3E742
            B96BF5C66521F2E53A8D21B94B712CB87897B646ABF883EF2B51372B0343B71F
            A7DB7AB276A77AB5A0F495CAD18A06A45575C7582D6B4E8D56BDAF1BB175E9D0
            9AB56C3995AA99A6522836CB34FA9A5912253B29AF878AA92A55F6FC5FD57F7F
            CBDBFBDDBFEBDF84141D5DD39A96A2D7B48A9F7B5BD33542D8B768F76DC56147
            AA4376E9A2DB35F912E2512BB52A3A1D332252EA9260CC660CC75B4B321D8CF2
            1B528A1406746B5E24FBD0D7AD3BF0EBB7F41EA9A69A39AD9B96DC2EE3F6C1AE
            755ADDA62FDB32D9BAF432CFBAA35D17ADA14CA848853E744B7EAF6ECEBCADEA
            43D3E0375E910E1DBF5792DD32549588CDACDBD2BF3C3B3C42358E0EA75D74BD
            7EDD3EA76D276ADA47665F336D56B4AF4A2A17EDC1A9F75D051A97AAEF531FA9
            D134BF4C6D155CB417EE274D464CAA9497225329852ED49E9B4C52B609F17F55
            FE1F9FFD75FDCD5EB26BEE8EEDE2CA7751F5D3532CED26B0D8A9D328AEDDD7E5
            7E9D6DD05BABD65F31E954D352A94862389B50792B6E2B01656EA92BE54E1248
            4B687D33552DCD2DB3E97AD5A8949D53D506E94CBD795ED40B769F69DBD54AC4
            91E7C845BF42A6B686E250E2297F0B4C7249767498AD372673A5F75694D0378A
            D6B6ED775C37C3A1DB26DCFEAD599A79B7ED2BD22D51D71D636AEEAE354BA75D
            1A8DA8566D6F4A3476D305616A352B769D745C9A890A4369061498310ACF3ADA
            C295A718F5462647625C5909931A530D498D2195B6EB2FC77D097597D9750A28
            71A75B5256DAD04A1485029241CF11228FB33D1EA76EA6AFBC2A94CBF6ECD5A9
            3449B40B5D8BB6F2ABD72CBD36A7D62253E15C074EAD096F9A3DAF2EE18F4C88
            DD5E6C263E2A4B6975A0EA1A7DE42E90B6AFE2A12F4E3C19B51B5569D50A16B3
            6B76CCAA4CED5A1B82A0A76837FDE69BEA85A4DA1D7B4C90C3C87D7685CB4DB9
            2D4B966B825479F3A8B06A212FC59D21B5265E5D3777890EC9ED8B8F715AF5AD
            9A5FBADD0DB1342B59353F5EED7A769DD0B476E2D38B834EB4EAAD7BDBEDE91C
            DA37C6C8BCA8570D7295FC8C7A9F7506AA10E34B66E3767254DBD014A55DEFC6
            67192BCF5F4009C7BFCDD7EF1D7AF5E39F8CFAAFF827BE3D3AFB7DFEFD4F1485
            B7991E2B572DBFB60DCB5C5ADBA2BA9569EB5BF60DDFACDB6C4E9CD2AC1A2696
            E90EA551D9AF2A7E9BEA6B122A575DC77969C536A301522997109112F0948950
            9A93050966729B9B0758BC46F7B54BDC66BFEDB35F74C742F4FF004A75835734
            9342345EE2D21A45F6CEABCBD12ABCAB7EA95AD55BDAA75062B96EC0D41AFD3E
            4C2A5A2D36A2C9B6694FB3507D899318531214AD017C59F75F4CFA27F1EA33F9
            703E2FD3997F876F7EFC50F6DBFC4CF507745AB1E1A753B620532D2D30DDEED6
            F59B56B512CD7A047A84EA7DF9A7756A15BAB8747AFC847DA2C51E9F5EFE5035
            130A42EA34F30DE9880F82031DBBBF122DDDE955F1BE2B5F49AA76248A8E8A6E
            57633A53A414BBA6DB86ED2174ED7D8D4CFE57D26E79F19AFB4A545AC5426258
            FB51B51A9D1623AEB94B521E6DAC295A52F8BE98CABF80FDFEBD7F7E7827A35D
            942B89B9EF502B54EADB54BAA4DA1D49DA54E8B3DA8359A6A908A852A53915D7
            50C5420AD6944B88E14BF1DC210F210AC814956AEAA6FAB42F7B9A4FB61D71DC
            7D8DAEB6B6E87453576E8B62E7A5E8AD034DEAFA39A8FA7AC521719549A752AA
            D528B75DA525359F35A8171C97EA0D1A7B4D489B3152DF7D293F01CB7F55E87A
            0DB8B9F7F6AC337FD225EF537614E8147459746B69D8173D2759AE48D775D0BA
            9D39E764CC45DF5206A4DD19E021D0527E0E02D6D0CF0A55FCFC5FD57FC07E7C
            73F16718CAFEFC0CFF009F14D9ADBAE3BA9D73DF15C1B2BDB16AB5B5B76B7F47
            3442D6D65D5FD5FA969F52753AECAED53502BF57A2D9F61D9F40B91F6A814C8B
            123D124D66E0ACCD8F29E75A9316240536E25F06BE2FFF0011EF100A2D6E36CF
            29375691B1BB3D37DF4D9BB53BEB581760A5FD3FBFF4DF56F4865EA969BEA9A6
            C57A6ACDB97545B664B159AFDAB4AAA0A67DB54A6E8EC54BECF9D21E4A95A991
            2CFBABEBD13F99C703E2CFBAFF0080FCF88EFA056EEB058FA4F6A5AFAF3AB14D
            D6FD56A626AE9BA753E9363D3B4D69F737C4576A72A8AA62CBA4D42AB068EBA6
            5BEFD2A9128B55093F684CA7C8AA28B2A9BF0CCBC5F147DC7F78FE7C294A6F8B
            3EEBFE03F3E07C591EABFE09FCF84CFC51F71FDE3F9F03E28FA91FDEFF007E14
            A53190DB814DBBCCB6DD0A6D683809710B0414920918502463B761D8E47E5DFB
            EBD2581626F0F7154976335E539AB5A835088D4653C94C661FBB2AEC30D04179
            594B6A8AB24820018C27AE4FE9D2A94A0010BE539EE159230339FDFF009FB71F
            9F3F8BFD1E35277C7AC72A34257C3AEBB70CA908A7C7F364BAEBF7E5E414A5A4
            A9A41052D84A8F3E72AEB91C6BCF112E0DB69F68F03B541F5200072A0A48E0F6
            9220C903838EFB23C36643FA9DE34A0148FA3B6E2A721202CE4E0E2083EBFD2A
            219B7E8DE5847C37FDA094AD6B0E3D9012A382017427E60A1FD70538F5E14E8B
            5694B433843B9282B2843F208252074043C12492703271ED903215F029095A91
            2FE15E6E33EDAC2614886942D614329428A5C24ABE5C8091DCF7E15D4DA7A151
            1A8E1F6E0C85F296D121948750017399094F98951012A4F72300249072071A3E
            E757204A54E6E9E43931C024818DBEB231F3ADF565A323FF00C492331E4D9825
            3B7CDE5CCF1C998A6ED1684286865C712EB6A514A52DA5F94A18733CA3990EA9
            3800F539C029E83B7070BB4692D30CBEFBE1A4ADD436DB49767B8E1754A2524A
            90481901432A381EA7B70F0DBF6B171E299F5C69C1F336C32B65B70174940428
            A54E20848E659F941231D338383E9541A153E4FC0CD9CD2DF584FF004CD478C9
            8C8F307EB153AF15A79483CDD3A039C8EDC579ED7D41D2D6E754A10A56C46E25
            24644ED90073891DAAC8C74F23E0871486821509CAC27699104C28051EC12647
            38314C68B5A9224223B8990FBAE9053FF689694818C96F9CC80A49001C2D29E5
            2463D7A1CAAD2A5290DA5871D4328C9F2FE2E6A964AB97E5561F382850EFCCAE
            6041C77487C154BB7E127CA7AAF1E517A2256D069113E452CA4212CACBA56A4A
            129F97A051EBD403C1955ADFB76322246626B4D26636994A98D7C221D6D4AF2F
            29709E74A9CCB642BB0057D95DF88E5EBE54B40DB7202890DFF0D65048292551
            06412601EE73DA4C937D38D8493FDD48105C9589483C24282A64C76F5983DD9C
            62D38F1D2D3C24CA2303E48F3272B240013CA9321BCF295F6213D89FBCDA1518
            4990D371A6CE090E1F38AE74F683894A9A0100974907254A24FF00548EBD0624
            BDBB655A8FC68B50955B8911C8E3ABA830D61FF970857F4859485FCC03B8E61C
            C4E00C049388541B196DBAA9F58A3252EBA7E28C64455BC0254B479A9F326363
            E76D24A94401CFCA00C7515EB8EAA64ADD6CB374E141214A4B0A3E79E20A2140
            000C0E0900E73562B5E971B1A505DB34954100BA0828091F5E0854C9EFD84F34
            C137425A1C65B6EA131A587D1E7362A3522A31D5851E528715FAA9523B94A8F3
            0C7627854BD6CC7E66594CB9AF3A5C656858A9551BE5511D492E3A849CA940F2
            157607AF7C3B352A0D82A9712A30EBEED3C27CA5F2C76E9DF0D31B6B9391C573
            4A2A2EA929085361D52083D160E3870E8F2AD34B72595371A6ADE57985E9F1E2
            2A3B4D90509553837252B2EA7254038B090481CC3B9AF5E750ACA1B75AB4B95A
            88016955B86A0AB60064A0260673326A76D3406429C43AF5B8828D843BBC2802
            098854A678EF0398CD32F4FB39E9125519353A9345BE6565554A82C14000A3A3
            729679BE6191CC4803B8F43D8D6CADB74AA3CDA94BF2D484B8DFDAB538CB50E5
            524A91E648C2805819C282B03A0C630FD50EE1B05B5B1099A7C4743A5E94ECE9
            2CC44BEEACB6A01A25A9A5284F2A4819E72A239703AAB8318F7FD94A71A6225B
            4CC99311F90EE5E111B4ADA386425A521C7DC5025C53B8523039090A3838AB5C
            EBBA92DD5EDD32E161231B92CA4410214494E04E0112723BE6ACF6DA369E96D0
            5576CEE5FF00D2B5A8EE11290498E7B60C7044536F4DB5DA3C8B2FD5FCBC12B5
            7DAF514052BAA4B412A941254D900F3F375070074CF0B4A35B2F73F969A8D5DD
            64A8722BED4A920A90A5121252A924FF00449C7527E63D811921CF8B7A5B2AA8
            351E45B6CB915E683E14D3AC2D2CBC12B0A8E185B494F324E54B50752A50C65B
            F75B2AFCA0A3CA9B4EB71E7DB8CA432E3117E10B2D2828F4754869653824070F
            70929212A3C53F50D57512A8FA03803801255B36085081980093EB119C558ED3
            4EB44894BED1520661264894C83993118C18A45DBB6F071F284C9AD04B603012
            AAA54938593C9CFD6472F2939C00B391D4F293D1DCA1DB8B8AF21BF8BAA3CB70
            1E64A6A3503C80F37285F34852493D1230A27DF1DC7349D4D623AD0A14060BD3
            FCC44780F3A8CA036D15FCA03295B8A5852480024F31200C60F0BDA65EF5242D
            0A6E9711B667F949525A2B12E029C7144A96C299525C691FAC566430A4230AE4
            3820D23527F51777CDAA1214994EF5A21441131120C4FAE220601AB1DB336CD8
            4A52B0A5082480460C448FD0C7BC158502D596C88E03D2DD42DDC2D099F3799A
            49514F752B24E7AE00040C1EF8E1FEB3EDB9ACC9487152B99D7825B52E43CA05
            48016303CD58413D3BE39BD481C34B4AAD57A14C0E3F5288D32109223B6B73CE
            490A3CCF871C0948572F4C168829FEB27AF0E5D02BF70CB94FC966B8E3AA8C58
            2DC64B6B5A65A39F0A31D687C12A6CB98748410063193D38D7B7ECBD71BB7169
            2852448081F58900A4100C9F599E49159EE2D41B94098C2492401C10A8CC827F
            29CCD4BBB52933A52BE1A5B0CA92A741597DC4BA51D81E9CA798E0737CABEA0E
            323047167BB7EB4B4DEAF15C892AD2A5C9903CB097A4426494ADB65B2A0AE61C
            EBE7C679874CE411C54C5AB22B9263303ED17DB90B7436FAD2B713F0C56B21B7
            94BC732421009F9919393D71C599EDAAAF13EDE84D3735C9323E1DA4BCB7DF48
            8C56D348438A0A4256A25E5294A01401291DF8DCDFB3CDAD933D73A4FC7D3EC2
            ED976E50CDC377EC3370D2DA5909510971253BF2631C81E95E60F1ED9BE73A76
            F1C66F6E185B0DA9E4A6C9DB860EF46C32E6C5A441E003331815375ED3BD3E8E
            C153969508371DB53A714D8C4A12DA72A563CB1CDF20EDD738C0CE41E2B57719
            0AD17254D6EDE854B805B99212A4B107C9514A837E594F2329191D329C800A88
            2A3824DA1D6A44B2CB51E234DBBF10E169F5C8F30B288E52A0E12A6B27AA0FCA
            55F29C8CF153DAE3479B166DC2872273BCCD4DF5B4FB4D3810EB6EAFCE6DB8AA
            2399694B4A6D24F2F4E4E994F53EA9FDAB747D2ADFA6F4EB7D2FA7F48B364BAE
            97EE98D35961CDE5B4290943CD2120A761215CC18957AF9DBC057EEAEBAA3E3D
            EEAD7AB71A2D165B72ED6E208539B145C6DC70C907D731983DA065CD6EB8E79A
            AF8EF2D417E62F95F968094929C1406C1C9495241190319E9D31C47FB8A80214
            75D41FAE3AE4394F3884724DA8F33679CA32AE5CAF1CDD7F57000FB870F85D54
            8A8066454D558983990EBC21BCD79680169482CA885AC9E407E56C049572805C
            0060C63AFC4ACBD1A43119A7DF517DB69C0F25C6DA4A1C5E56A610DB2F001BC1
            279CABB0C92493C7CE5B5B1421D04143692A48560401893E64E008C40898F5AF
            A4762EEF6810E070809E04636A4C7BC9EE207CA9B6B8596E1F98B6AB937CB702
            3CB0DD42AA5654B596874572E13CC92AF98A7A74201E19FADCB94CA1E526BD53
            538921B4B499F54C38B0A50500B594A520A0150EE907001CF0EFCDA3BD4D69E7
            66B31E6B5F33486E5A5C6A5796B572A1D0B09521E0DAF99C6804321581958C12
            595B82953FCB53B1E547088F2472A659530EBC1B59CBA8080E2525485007AAD2
            A09576F4BFE90C5B2D684EE428021416A6D0A4A8E3092124A4C913CF39E20AE9
            4B00C276C03B812127047009E013CFCF100534756AF480F38DB35DADB3852503
            FF0089548290E7312A052A752149C63052540F423B1096F6B15CAAB6C990E5D5
            5B67E1C9F8802A15774F2AD412D0210B032E0191CA54100FCC410470B2B862CA
            79B7E68761BCE4894A80C8662B85E89E5A8F33DCE64292A713CABE601B4E4AF1
            F2F5C366E532A2FA6A111735C8D0D95ABE2A54A68B2163CB479210095A161250
            A0038E23956A201567A6D3D32CACCA5A5283091E40A494B6A27280A0905B5489
            C40E273C553AF6E1D51504A540804C8900830448DC322267208811DA93B55BA2
            ACD4454A1745790DBAD94216DD4AA4AC250AE5E65B61E0B51E65939092A00FAE
            00E100E5DF565F9CA55DB722968239528A9D55285B810951092E486B941041C8
            49FD6EA90411C1830F869E763BA2034B4BCF32D2E4C92B42949250E38DB263B5
            8F3D4410D87490703CC57098ADD0A2BCFAA1CBA8A21CD2D17E1A41416DD5E4A0
            A073299713E6288C06D2E2804005448246C3D3F4EB042D2156ED282812929650
            B242609C25B22003931CC903B8A45EDDBCA495B4B93BB6380A943CCAE21448C9
            391E8307B579E4DDF733C94B91EE5B8D23FA4F350E56EA090B6C602568507D7F
            3642816C201190413803849C2BFEEA7C3ED1B92E665A75E31DE4AEAF31C5BC41
            5F2A9B75324ADA4252563B20E54323A0C194AA3B8198AF8A825B890E33B84B4B
            3CC85738C952540252E82959E4E75809230A249C11BB4EA7345D97F171948663
            B8B7586DC405120A48929C8239C94B895850002BA85E3205A6D2CB4D28FF00D2
            DB2952362BE8CDEE4C286242724CC64E04F155BBA7EEF7265D75B01237A4BEA8
            32948244288024F11CE477A2BFE54DD320C9722DD3753A88CD979F4FDB52DA09
            0FBE58609F3EA0DA95C8E2540A50858EA1CC91C39D4AD46A852AD0A3375BAA5C
            332AD51A84F9C8A826A0F86DD65A6930E3C2E54CA573065095BEB5AFCB4F9810
            391C5AC2C358E5BCB93222BD0A5C474D6A0462D61E2B8A030E38B71A93C8C850
            92D049386CA92827E61D73C73760ACB1020DBB0203EA4D39666415A9A75F4B8D
            4C4B6CCA5210843651142E21752A6C9054A1CF92A21396ED869B76BB764B36E9
            05616A25A69A29421202895140C058C824CC4C560B7757B6C1E752B797E45210
            90B5AC294B52549033F58240CF69C44576AABB76D72A52D68BBEBAC29B703CE1
            156A829B6982EA5A69610DBE809428AB91484254B490084A875051765E77052D
            B629F3AEBB9941A602BCE8D54A8A98960A5C5475749285369032DACAC15F3149
            5A70949E3BED2A65452BA83CD4944673CA2DC971E60961C0C84BEEF220A92A59
            0B51400B74279D20AB041E12D773536B2E3DF0E1E6623E56DA94B6B92332EB01
            0DA8A080E8487D680E25AE6FEB649CF79062C6C85EA59FA35B165B080161B666
            7CB1E6DBDC1999CE018A8D7DEBA4D9ADE0F3E2E1D24ED538B236029911B8C907
            1CF23BF14DF49BDEE55ADC909BA6E46E321439522B55253896D4A1CC3FF193CC
            4E707E61CA56304819E1313EF1BA1DE75C7BA2E6FF00C46FAB9599E84B893CC4
            824CA563A0F54F71D09EFC7D49A74C86FCA47F4F3159386D6C12C29252900A39
            7954021D4A7E6ED8EB8C800A59544ADD7E7C0A34665C153ACD52352A9F4F65A9
            01C7A54C753162212DA52EBAE17DE75086D2D34A595F442565413C6C0B2D334E
            716DA116F66A121290196648F2F6099249CF7E6B5F5FDFDF36DAD4A76E531B8A
            8971D84C1E4A81C738F40067BD7B255E176FCCD0BA2E0096D0943C95566A0E2F
            915920A5D0F91904E4E15CC40C773C236A374DD8A2E725E570043692B2AFB52A
            395A500FC852A78049C9490A0559C63E5E243EB66D235D36F5229B1F522D3B82
            347A830F144A8946AFB94D4A921287D8912EA147A5795221A1C4BB250B6FFA24
            AD04F439E22C4EA2A94A021C828294A92B42F254BCA41CB78C9E623246538E99
            240E2C2D699656EBD8E5A5B2267EB5AB690309267C82798E7D7326AACFEA5777
            092E3374F3B8493B2E96ADA4C40090A91EA460F0315E69578DCCE607F29AE2E5
            2AE7C1AB4D3841F955CD97C75CF61927B9E9C5B2F80FDC75697E2ABB618332B5
            5996D38D6B7953526A329F8CE86F6F1AB0B48534B7D695142D01C49527095252
            41CA462A0DFA038E35CA1F71B75A65C0E79A9296D4567FF13A7CC4A47451E600
            7CA7E9C5B0780C52DE8BE2BBB57754B0B2DB3AE68525014A6F94EDD356921454
            71F3156300A70460857A7166D26DF4E3736BF0DAB7428389290969B4E6704420
            007D04E044FBD3F5A7F523617DF15C7CB4B61D0ADCFAD52088320AB99EC6467D
            2057E8A3F1DFFDE9FE0381F1C7FF00A84FD3E5C9F603B7527A0FAFD33C23FED1
            4FBAFF000E39FB4539EEBEC3D3D7DFEF1DC7B1C741C6E4C0E78C71CFD95A5E27
            131389F4F7AAF8DF3ECDB5AF71FAB7B66D72DBFEE1AD2D06D47DB6556F9A852A
            7DE1A46BD5DA4D6D37BD0D14296CB949FE5B59CD4731A39756871C72685AD69E
            5436539286B2F609AF57FEB7E946B66FA776D0F726AD06ACCABB348B4CEC3D1C
            A568AE9A51AF89309DA7B37A5C5488D72DDB52BA2B94A8AFBE28CA9754662C17
            5D2F263A9C436A44EFD54D74D24D0CB65CBD358F522C8D2DB49125B87FCA2BF6
            E7A3DAB4754C789F262373AB12E1B0ECC7B94F9519A5ADF7540A50DA95DE3F6A
            F6FDF4034EF6A3A9DBB8B4751F4EF54F4E2C0B5ABF58A7546D5D43B69EA15D57
            0D261487A059B06E68CFD429F1EB9579ED374C62272489A992E842613CF24325
            0460F209FE78FC294D76A26CC7711676E4B593725B31DC2585A4F52DC853ACF4
            6B7585AB7A552F53AD1A9DDD62DBEDDA56DEA3DAAAA55D969D468B7145B6988B
            4DA8D3E43D36935810A3BAFA18754FB8EF4EA778775CFAA5B11FE6B7746E62F3
            B875CE25D31B54E87BA4B9A928A957EDDD638D76AEEE8B74512D78555A6374DB
            7690EBCF50E876B42AD30887424B119EA84A792F3EF360EF8ACD8CABAF641524
            5CDA374ED13DCCE936A05FFA93A8F50BE612E93A6D5DB26D7B6EAD32DA62E84D
            5635BACBD4AADD665D0ABADD5D0A96C498619F2E348E7471631A53B86D16D74B
            4E55F7A33AAFA7FAA5664195260CEBA2C3BBE877450E04D848F326439F52A44C
            951A14B88DE172634A71A79847CCEA103AF0A545CBBBC38F4EEE1D84E976C8A8
            B78556CF3A314CD39AAE9CEAA51A9F1555BA26AD69B54E3DD14DD4D769325E72
            24F9B58BD133EE3B829B25F2DD4DDAB541A764F3BDE70F4E906DD379EEEB3587
            A9DBA0DDC5B57B5B5A5B44ABD36DDD33D13D309DA536EDF15CAB456A12EF1D54
            7EA577DD726B92E2C76D4E536DFA67D9B47A7CD71C92953E1CF292F5E9C6F1B6
            BBAC37954F4F34A770DA37A8D7D5184A554AD1B2F51ED4B8EE188984E1666AD7
            4AA5D4A4CC5370DE05896E36D2D115F0597D4DB80A477DA7BBEDB1DF77D5334B
            EC8DC0E8F5DFA8D5AA7576AD49B1EDAD47B52B7745469B6D566A96FDC53A1516
            9B53913E447A25728959A4D516DB0A10AA149A9459010EC2928694AAF1B3FC28
            AFED1EB3F432E1D13DC7522D7DCAEDEF52B73575DA7A8F58D3476AD615D5626E
            6B52EB9A8375E985EF627F2B5350954E89F1F4B891AB94DB9624E6AA34A3548B
            1E3B531D82940EE77677A8BA77B54F128DCEEBF6AB42D74DCF6B76D86569B2EA
            166594F59362D89A5D65479F52B7F4EB4FED45D5EE3AB18EFD76A93EBB5AA9D4
            EAF326D5EACE8949622153ADB931F7D5BC4D47DBED4740749B43ACFB26E9D73D
            CD6A0CEB0AC097AA9704EB6B4BED56E8D44935FAE5C576D4692CB9569C234261
            2C53283471F6954E6BC90D8F2197CA511A47AFDBF1B2B70163E84EF074774AEF
            3B1F576DEB9E7D9FAF3B6D8B7E4BB4ED1B86D78F1E6CAB4757681764699F60B3
            5E892426D6AFC69E69F3A430F4596969E184A94CEE85EC7B72DAD1A73B3BA6EE
            8773F6F6A2EDE344E26966ABDB1A7544D285DA5A877CDCD6BD060CEB1216AEDE
            2F5CF52A754E15972D6CBEE3742B728CED7E7C38B3E77C2BCC96D6EDD63633BA
            2D29D4BDC4DC3B2DDD1D89A47A73BA6BEAABAADA83626A6E8FC8D4897616ACDD
            148A7D16F3BFF4A6B94EBC6D7301CB8E35269B39EB7ABF0EA74D8D5960CE8CEA
            1A3F0827AC2D75D1F996056B5469DA9B60C8D30B5DCAF46B82FE8976D05DB2E8
            0EDA73E4526E662AB713331547A6AEDEA9C3954EAC3726534AA64C8CF4696965
            E6968096BF7761B6FD2D8F1E56A46BC69258B1E5DA2C5FF0DCBAF50AD6A10996
            3CBA8C7A445BBA1A6A3528EB956EC9AACC8B4D8F588E9720BD3A4B115B794FBA
            84294A6122EC4EAF1EFED805F350D75B8EF3A86CAE3EAC9B8AB17E528D72EDD6
            2AA6AAD951AD79B54995C62AD4F8D6DBB06734F54C309A5D5585C571AA647444
            43097CCBEDC269C2F5C743356B4759AEA2DC7B536C0B9EC96ABCE53D7556A8EE
            5C549954D4D45CA6A264054E444323CE5454CD885E092D890D737371E4D33D64
            D34D69B429DA81A457F5A3A9B635594FB74DBB6C5B8E95745BB39C8AE1665331
            EAD47912E13AF467416A432978B8CB80A1D4A5408E21AEF2B79FA83A417FE8DE
            D9B6D9A6F45D5DDD76BF47B9EB7675BB76D724DBBA77A7FA79652220BB354F54
            2B70199152896E53E4CF8D4DA452A96CAAAD72D4FE2E252F9DD80EB4B5294D7F
            6C074FF573C3FEDED8B6A6D7155A8B6CE97DA966D17522974A34AAB502F4B2A9
            91D8B6F51ADC86AA84A9348AA52AA919BA8468EDD59C73C853F05C9AB69F754A
            8F36F78554CA06C336D5B55635EE647D67DA6EA0D0F58B4777134EB29B685375
            4ADEA85C2FC3ACD56C6A8D7EA69A9D16A94ABA2B144B828CFDC1CD3E2CE75E6A
            646928616D272B9BC9DEFECF2F0D3299BF1B1B412E6DBD6AA5ED40D357F5C76E
            D3AF38127462FABBA5229F6AA752ACFBDBE21EA8D8F5DAABAC50E25D14097F11
            02A2F20556234E49A645A84F0D41DEEED334A264DA7EA66E6B42EC3A8536E37E
            CFA8C0BAF542CEA24DA7DD31A0D36A92ADF9D127D599910EAD169B58A4D424C2
            90DB6FC785528329E4A1894CAD6A531169ED1F74F7EDCD7FDD1BB5DD6522F785
            70688DDFA2B69E9968AE9D4CD32D31A38BD5AF87AD6A35CF4BABDD575D4AEDBD
            7C84223D243B3A0D2E8D15E96C3119F714CC86185BB7C2CF55F53BC396CBD8FE
            A26E6A846FCD19BD6C1B8742B5EECFD28936FCCB2299A772442A4B551B5FF96E
            F1AB57EA166546EBB5AA7568D5CA6B2EB370B8F084A0C165F927B86DE45C3A61
            AE5B22D35B06358B73DA1BAEAB6B5C4A85E353A8CB761D2A9BA73A412F516DDA
            BD0AA74A9829CE53EA939A65AA9CD92DCE605214E3D0C21EE57385DE99EEC6D3
            83A2BA657E6E2B5936D36A5C97E40B9E547ABD89AA54E95A5971AAD28F52AC57
            DCB06E4B9E5C19370C5A05B94F72AB5E75B0E1A6351A73F23CB8CC1702951B6A
            DE143644EDD8EC9F7094AD415512CADA669A59F6757B49235B2453F562E7D27A
            0DDF4ED19BDEA3566AB4D334B9D6055AF5ADD6D88CFD22AEA94F2A3B2DCA885B
            538B525CBB24DCF69AEAEEE02FDD97EE7EC6D21B43747708BDF53EC7D4FD2293
            A928B575224D1E1DBF58D42D32A9536F0B5954F9D55A64084B9540AE47A8D215
            51613350B681532A999A3BB91D0FD7FA2546E7D11D60D38D5BB768D35CA6D62B
            3A7778D06ECA7D26A0DB5E6AA1D4A4D1A6CB6E0C90D1F37C9945A59688740282
            15C27ACADE66D5B51F50E6E92D81B8AD19BD353E9EA9CDCBB0AD8D48B4EB576B
            2E53491526FEC381547EA0B5D3949299E86985AE1A872C90D1C0E14A8B160F86
            25BBA5AFF87EA6CCD519CE45D96EA86B26ADDDB32E3A026A75FD6BBC75AF4FAE
            AB52EBAC4BA843AAD3A25B13A45C174C9B91E7134FAC32EB2CA69A86195ACCD4
            B91A83E1FD63EAEEE2773BAB7AA759A5DDFA7BB98DB4599B73AEE9949B6CB732
            930AD6AA576A8FDC2CDD2AAB3A1C7E4C9AA41974D62351E049A454E910EA2D54
            1E7DA60B139CD490904A8A92002544E0000752493800019272401C53A6DAFC53
            AE0D6CDF45F3B76AFD8340B7F42AE47B54ADFDADEAEC29154352D56BE76FF568
            94CD67B62A4D4B92E5384BA6B32E4562888A6C5612BA550AAEFC87DE59650952
            AC87681A4BA99B79D04B33463547587FE37D574F99956EDBDA8322DC76DBADCE
            B1E0485B567D3AE769EAE579356B8A8D441169952AFB2F426AAEE454CA14D865
            6A6CB43B71D9451749B533743AC9AAD5EB635AF51F727AB4BBE1DACD52C48709
            8B36C7A3D2A350AC8D3BA547ABD4AE475716DFA5C62B9939893098A9D4E4CB9A
            DD321074321F7D59DC068DE835B88BBF5AF54AC5D28B5DD96DD3D8AFEA05D346
            B5297267BA0A9A81165D665C46A54D7424F95123A9C90E63086D470382146EAF
            6E4EE9439AEADEBA6942F45DA1CCEEAB0BFAD8FE403587C472972EB353FB15B7
            44822396572D2EA5FF00E88A039F2F0A541AD5EF09CB2B557523789358D436EC
            9D12DE668FD8F6ADF5A576BDA4CC19F6CEB469856A156EC0D71B4EBCCD5DAA4C
            4AB5225D3294FCDA33F6C3C9AA3D49A725FA8222B6F467BDCBD886E775DAA343
            A1EF8F76946D5BD23B4F4EF52F4F1BD3DD22D3AAB690A35406A858553D36ADDC
            BAC73157ADC6CDC33225B5589EF52E894D89028F0EE17515D6D1F10D32D373A3
            4C3729A15AD769546FCD22D5ED3BD49B328EB90DD62E8B2EF0A1DC344A4390D8
            3265B755A8D367488D4D72347497E437356C2D964175C0940E6E12FA59BC8DAD
            6B8DC556B4B47370FA39AA174D0D97A4D5ADFB13516D4B9EB1062C670B5225BF
            4FA4D4E54A11187416DD941A5476DC0A42DC4A924052A1769A6C3777B4685B7C
            D1DD4CDECC4B976C5B68BAAC7B82D1A1D93A6B3EC1D65D45A2E970437A73636A
            B6A0C2BCE552EA56C52A345A7C5B9A3516DCA6FF002CE343447A9371D95B885F
            4C9D82EEBF4B25EBE58BB47DDE5A3A43A09B8CBF6F9D48AF5B577E8EBB7C5FDA
            4F74EA9BAECAD489DA4575C6BC6834E8A8AECE912EA5498F70D16A48B6AA727E
            2E1190DB2D451613FCE17453FE18CDD6B1AB3A79FF0007E9AC4C9150D52178DB
            FF00C80851E9F535D1673D2EEDF8FF00B0A3B30EAEDAE97256E4D42189E85447
            0A5F051C26F52B76DB6AD1B5CD6B5635EB49B4E1FA6D22955E9D16F3BFED8B7A
            5C6A2D71F7E3516AAEC4A9D4A3C9102AD222C9629B2834599CFB0EB5194E2D0A
            4852A14DDBE19759D3AA0ECB256CA758693A357E6C96C6B834C2CD95A9365AB5
            1ED4BEEC3BC21C645DB02F0A553AB36C4E62AD56AD46FE529AB52A7301AA9BAF
            3698823AD21A68DEF08DD52BA0EBB5C5A9FBB1817BEA2EBFEE236ADB84BB2E34
            692268B4AA5D476E1558735EB4A8141877A96E250AB94EA7C2A3D0D6E4A72550
            9A60CBA92EE094F3CB5CA1DDC7894E856DAB6AD1B74B6EDE5A7BAAB69DC95FB5
            6DDB02451751ADD66DEBCA4DC97353681366D1AE28AED46255235B30A74AAF55
            E3D383CE8834D92971C869E792CCEAB52FDB5EFBB6E8978D9770D26EBB52E4A7
            47AB502E3B76A50EB143ACD325279E34FA5D5203AFC39F0DF4FCCCC98CF3AD38
            9EA959E14A62B5376C72B50F77DB6DDD1B57CB14A8DA0365EAADA4FD98BA02E6
            C8B9D5A931E8CC37398AF26AF19BA42691F65294E475D26A266F9E007A37964A
            D05B1CDA7EA6ECFEA5B81B66A3AC96FEA168C6A5EB86A7EB6E99DAAD580BB72F
            0B02A3AB57954AF2B9689705D89B8AA316ED87165543E169921BA2D1DD4B4DF9
            8EA09514F134BED14FFE7FC381F68A7FF3FE1C2950335F7687ACD3B730CEF036
            97ADD6AE906B0D674C60E8FEA6D07526C095A89A71A8F65512B136BD6B3D329D
            4AB8ED7ACD12E3B66A553A82E0D560D45D44A892550E64571B4B4B4305697853
            55E9B7269C6ACDEBB80FE5BEBDA77870B77DAF7A8726C3453A9FA955BA558B50
            D3FB7EC1B3EDD877121BB0AD4B4EDE95129F6E264CDB99F8B12338CBFF00105D
            6D6C5B87DA23DD7D7E8381F688F75FE1C294B0F8E3FF00D53FC0703E38FF00F5
            4FF01C23FED11EEBFC381F688F75FE1C294B0F8E3FFD53FC0703E3BFFBC3FC07
            08FF00B447BAFF000E07DA29F75FE1C294AF33C762EE33EA475F4C8007738CFF
            00CB8FCFD3C5FAB33DADFEEABC8875769B66255EE0665C752BFA54B6AD40BD4F
            46CB24900208CA54465001FAEF744F0A2002400A1DC67F58E0E3A1EBD8FA7D4F
            5E3F3E4F16AD4AB7EABBDFD6AF81A2BD2A4B1715C94E90E9761460A92C5F3781
            5385C75456A49F30A800DABD727AF141EBF656FE996C8435F197F4920A36854A
            4A13324E31BB0710AFB2B607878F258D52ED6A7830916BF5CEE492778200293D
            F69DC920E0F7A854DDD4A96E352215610B7DB0E25C694C1F30170842395B2C15
            FEB24F31C0E873D7A706316B731D901C7EA329A5B452A2E882B5602B21640445
            5AC150FD4CA064E3DB86C935FB766420AA6C6F81ACB29CBCE3AA50611CA95A54
            B25965C4BC1B5041E508E651EA3A83C1753EE711DE2ED6EBB065256EB6979A8F
            0AA285A5A6FCC04A5621B4851C06F002B39C9E9EBA50E9495A16536AA68890A6
            96D80EAB23EA6D050524F05464FD95BD86AE50B6C3974971076A92B69D2591C6
            1CDC41060CC09008F953AD1A7D5A34E666C1B89F754A9416812233AD2508E721
            C6CAE44061B4A884A87297064ABF5B3DBDD705DF510F2FE1EAF4C6CB090A2D48
            930924AD24A9C0B4B6E38EF3E4A8246024F4048CF56A2A3AC762C191E4BEF076
            336C2128699A3D454EF328A921CF34B0D853832AEA5609C0F9B3C22D1AEF61B2
            DAA3BD4CA8CB712A7879FF0061B4951054E79454E39216E2881CB90A193FD6C1
            183CB5A2DC3AB4BBFBADC59427602B65A9524949CF060401C480498AFC3DD436
            4C36E32356653BD7B8A52EBC4A084E3688509049318048E29C7B7350EEB54D76
            555556D3D15B53A62B8EBAB53E94A1C47944A23A9582073E138CE3008CE3878E
            9978B35F7CC977ECC13DA79021269CFCB783A973216A7436A7C345252A29412D
            A800728C711551AD8D7325AA3D0DB6A3142129724D32980879447338A4AD8755
            CA51FD52A23989EC7BFB1ED44B814EAE6D0295220B650D2C3EDBF49680500438
            EFC38692E2524959E5E5C807001EC7B6EBA71DB856FF00A1DBD998DADAB70484
            E0120A522013CE31204CD63D8754B3689D9FBC2E2FD2572E202372D6310372F6
            C81EAA1F754F28559AD79B169A84C592CA901B714F47AA3A5B6CB65594B91E2A
            92A0413C99E65641E99073E96575881540F529748101D43684A2440AF8438A0E
            02F72A174A0852D2ACA73CDCA798FCD939104DAD48BA2205489B5B760942101C
            E49331C7D49503CAE24C684F24121C01290AC803BFA87268DAB9408CDC5727D6
            AE0799404E5C53F39643F94ADC75B438CB6B424A82F2828C120104E7A566E3A3
            EE9ADEB6032F294956E434D9585A8FF995E513ED0419993C55BAD3AD2C6E3625
            E53AD04A92A4ADD75090948DA3608560C124F3DA3822A64D6655D8D37092CD3E
            86886D92E30489B1DCE53D57CED3EDB470BC73242920E07CBD33C12B7A837045
            098B548546A72E215A03C58932DC772AE6C38A67E29B09290143F508CE158CE3
            88DD0F5A280ECB2A9B72D7A5B0B21D53688B354E142DC1CACA7CE2D34D14B495
            2429B708CAB2A09F45F31A8DA70B74CF7A1D4AA2520254DCA92EC770AFE55A90
            5A507D85A88484F3F9C010797A02AE20BFB3772D02CDD69BF4849958530CACAD
            2A54794A96A8DDB70AC463181353CDF53DA3EE7C4B6D4C3477250B4BEFA08DB8
            E224ED18C8C99238A7FA93A8D4787212A6655AB15F90A0A227B3506632795979
            252CE239283F3127E5C12ACE482385ED2AFBB6D99287E5A2DD7E7B2874205295
            5192B1CEA5058654025A2D94283A7CD524E09FEB7C9C44F5EAB6973FF17123D1
            E5447612DB4A5F761A24B8A2B29528367242B94650B2A281CBFA9CC0E385ADBF
            AC3A38C4BFFE32D555E90A8896DB662D30B6901032EBAA5A14968951C0C7395E
            3BE0103883BFE9A754DA949D2B530A2023E1210DFC4565310A04A7680383278E
            22AC3A7F53DB216942F58D320C9438B5AD2DA2049273BB713E983DAA5E41BAA9
            6238A88A5D5EB5114EA8C4669505B7E4447D69C3DF12975F8D842D053CA3CC73
            2723A63A2929FABB57A406DAA7E95DCA86E4BEBF281A234992B0D2144BC5B66B
            8A285AF1D0AC210A1ECAC0E22253B739A64E966974A8174C6796EBFE5A50C218
            69C08495A14EA92B706432950247365640EFDBD34CABEA06A75DB50FE4E5E332
            9316DAB62A37208EA7065DA753DF6D3283295AE10912101FE6F29643AE36161A
            438A4A50AAA2FA32E1D756AD4B4F16AC252A7375F2DF4F91006C4EC67FCCACCA
            80399C55951D5F6C10D0D3B51FA6BCA5A1B0DD8A1954AD453BCEE7A0EDEE1333
            DA79A98954D55BF27FC24AA5592F407DA90D2E3C7AD51AA2CBAB928481E63650
            F486D7D1B2A5FF004C53F2108E738495A5BFA83AC5223C8A846B7E8526AA9546
            65E8F21AAAB0A6D2B4F296D861619F3016D4A052D1715DCE3D4C256DCBF17F68
            3CDDD95AAB2E9E684132512C426D2ECD7832F21A852648703D196B21D5746DE3
            9F2D65241E1CC5D5357E4DBB0A150E73C8A9B8E7968953A7C488FBEE34A6836A
            E78C9921086C3C94053EF20A8052B97AE7883BFE96B4434CA1B4E8A80A736953
            A1F49426012A51542C22089C8924E3D66ACF5DB8756F2DDFDEC4A1BE1A0D05A9
            5000000253BE47D5E20D4E0B635DEBD1E4AE2EA9D8D229515A7125B9D49A15CA
            FC7712B4A484B8F305E0394939E642003DD59233272CAD6EA7AE47936CC49932
            3077E44AA95568AE33CE5B0EA7CFAB260B239CF32C0F35442920F44839A7BB52
            CEDCFD4EA09626DE91E3B11A5B6A54397323D583857E56504A90A42DB3942D49
            2AE9CAA1DCF59DDA3D65EAFD0DB6AA355BF5896D22A6C731668B0709009CA951
            DD5214B69430D96F95449255D8F1AEFA9BA57A7ED029C1A969BF48F2FF0077B2
            7DF55B9E24868B3B8181B8FF00133F211568D1757D5EF06C734CD4116F9097AF
            5A692E11236EE50760C19196CC7AF6AB72B03506852597DEACC99F6FCD05487A
            44B4114F092795A2992C39363177955F324B839739200C9E2CBB6E173D88DC09
            E6BF77B34E8ACA63189525CF86D8712861196C9694E2FCCE501D0DA9A405254A
            E5C94FCB47B4489A8F21B9F26AB7BB7269D265B0C3308DB90212005210D3AB2E
            4771FC21C279729429D4A815046304CE6D378171D5AA74AA43B295504BCE4365
            C851E5C189112D21931D2F3A5698679879C49CA54E14A3A82A00718BE1FEACC7
            4BEBF6B7762C5BEA6EB6E045B5ABCDAFE1DCBAF14A00736A83BB52A5154A3690
            AC704D527C47E9CFDFBA2DCB17376EE9EDBD2E5C3CCAD2A530DB002CFC3DCDEC
            2A2810A4AFC847BD5EE532F4B4554F52215D902A61B61B5874C9616E2580D801
            7F204E49480B2002B201C249E9C572EBE5C541A74EAD4F7913E741692E488959
            6E1E582892DC553656B7D51982C053A948C279C25B191CC0831D2F2BFED0B1AB
            6F5A743B8EEE5D7E2489AC5415065CA7E0C7FB3DF721CC52DF9F32121482E34E
            A194466E4A54141491CA41E23F6A85C545BDA9151A33F3750DF5CD8553650056
            E4A6325D4FCB1D4BF264B480DB2B42549421CC04A40241078DC1E2978BCBEB4D
            29AD06F34CB3B0BCD3CA86EB775CBB6B719429B00A8FD584854C292A10140796
            B4BF877E112B42D51BD6D9BEBDB8B1BCF8641B86136AE7C32B4283A368885804
            2082124124A67212974EA9D96FBD2E991AE8875378990E3B1E4C9A7B67CB6407
            3996DA5F69C296D5CA9294A14AE5C0E53D4963EB973D4E420180FC7F2E629295
            3292B8D01715D4A54EBCDBF2D2C158F541438A4A838AC020A38682E8DA2D32AD
            42FB569D7057E24B8915526AD5576E3AB4752505A2A799F866EA25D256B05A0D
            B2A752B520127073C462A9697B9090A86DEBA5CB0D2C8111B8D21572CC4C34A4
            8086165D92D20F2B68E8A61E7C009039B2413E7467A7B4CBA095A351521D5997
            12AB37568191221B932089FD63D616F72FDAA54DB56C971A69290166E1B0A51D
            A024A894A4FC8083C7AD4C2ACA2256E4229B2EEAA1B0964B1CCC43AB41765B4D
            378733F0C90F48F94A8F310C909EA73804F0CADEF65D166BB264D5022437E6A9
            6CBE87D4E3809538866449F28140648EE5BE6C0291C9CDCC0402BE6D2934490E
            D52DED6EAD4BC55451585468372439D519ECA07C5954A9D39298B154E0750971
            695A5496C16D042C00C8D62F3D6A0EAA88DEA0D7972799688E55350FF96973CD
            5B2E3CA79D6D0F84850FE8D6B4249C61591C6C2D0FC377DC4B6FD97515AFC313
            F110F5BBF6EB6F292BDBE527CB201DC491EC05426A3D642D94B6EEB48B871C20
            6DF80EB4EA54A31B52772B71240F41EBED53CAE4B7EAD4AA7B7204861B7A33A9
            9305861BA89861195A52EBAB760211F10A4F98A585B9C83293CC067089B9EB14
            AA6D3A4AEE39721089B144A794964BB4B68025082F48650A280B50E7182A254A
            3D4631C40A8741DE13AC55AB917551F761B2F4843AF57A6437A118FE535FD0FC
            1A9C9296960388292D25610090159E6E10B2F53757E14A628B72DF76CD665348
            6A396D1477DF665B4A24A9B2B729E98C795D2E005C50048C82072F1B334CE807
            56A4A13AF6997E2DD454E0B353C1D4EE08252A52DA8C10140124924C919AA45E
            75DA12429FE9FD534F2E0869570964B6405848584A5D983F212381EB2AAB779E
            8C071D8754AEB0D54DC1192DFD9B1E648473900A56A9263A9A43BCA5B2429639
            00EA070849126C191252DB097A64988952A2D49F98C29A05C59521284A666708
            7015A9258047363049C70DAD2E4DCD2D3264D5E1DB2E21F5B8DC79869F00F260
            14979D6D88AEB89385B494A12B52921BE98E12D13542C9B7E74BA1D76B9F1754
            86F042DDA45BD25861256F3A5C4A14F32D07B9416D09592DE0A0E1201CF172B4
            D03E0CB764E6A172FA123721A752EA4289482406D0850481882A3C919CCD76F3
            A882F63B788D3ED5974C36B75A534B50031B8AD6B0564C905200CC92782F2AA3
            A2AF1E4262CE2E2A0C95992E34F3298CC65BE74A149584B8AE6E8E72A5B51E5C
            F2E720704269B6ABC24C9B9EB15465E5472A6DDA4372DF084A56A2B525A661B8
            AC640F94B64730FE2DC309A3D59C9758B4EBD71865E94A79E69D0A86D27CA2A0
            7CE6E4D4D94BC4E129496DB70047303D0E38F44C9B5DA9C692861F86F3C3CB0B
            529C4C5094A9B73CAC21A8EEA0A549FF00C5405A41712544A8A82B8976F4F752
            4A7E92EB292509512D865D655292A4A94E2569C991303907BE6257A9A1692A45
            BA5D5A44B602BE336FA64428250A42A3689224CC7D94A96AAFA5F3677C22AECA
            93F2988B254FB72A154A3354884B931996A4BCF3B4B6586DC7E4E190A0E3C169
            7C83CA4FCA7D51AFD3D0CC18F4EBF68453129CCC46A4FC505BA2025C52E332A7
            5707CA0A212E38015052924649E89E0C2C3B1ADCAAE9A48AAD6600A75C75DAD2
            68E2A8B69A75B72053D6ED4BCB6131D6E38E32E3AA8C85ADD6A32B99A4F324A1
            2384956F4468F1ABAEB94F9D0514B5D3D5E7C694ED44ADA96CADBF364A0B6978
            25B0A50434CA491870F284A3988C44BDA43978EB2F5E5EB66DDC759497D0C3CD
            38B44256B6CA5B48852CA920649DB9135DE59D69168DB8D5A58285D250EA8214
            F32B69B70276A5C42944E024151390493C579644875C01F6AE3A738D4801E4BF
            15D61E71C8C87BCB579FE530B4B5E62C9E50791648F9B941EA5558B9280C4075
            E9172218F812AF35940E45295961B5ACA971D2952824A1CE642CA3A0209391C1
            14BA0D2EDE614C7DAF1A3C64A8A14B6DBAAC97A5A39D0E792C0318FC30FE952E
            2BCD2DA49042495E0709A9543A4D5DE6844AE52D5157CDE7B151A7564971201F
            35BC354E7D2A2BF94F3A9630A6C0CE0E789A66DAD6438B7DD0CA0829521A092B
            00249DC0A08255C093E93DAA0EE2E6F520B7F0AD8BCB1B4A56E38B4A663EAF99
            27983C40F5A29937ED9F30CD882E96988EA90C852D3CFE7797CC127E256961D1
            FD2BA480A473809009520678E57725B7489346AF506EF6BEDBB7EA14FACD164C
            4526429B994D98CCB65C743F1B08536F348C2541215DBA83C7D5D16558D4BA5B
            D31A8F0A4BC184B6FBB129F2C2438E101B25B712CB8E243B9E5504823A1E8010
            63DA1CA4B12DD62344195BBE5B6B7A9EF36CA30EF3100F9EE2C73018515323DB
            B0278B7698CD95C14BD66E5FB6A69485412CA012089E403B488304FE554FD56E
            2FED92B62F19B07FE38290A47C75426400601DA14460F633E9579F7C7881DFB4
            5D12A46AC489E2B7075C47D917F5BD56A3C5936056F53AD9A9BD1AEEA7DC34E4
            4A6E553D75BB0A550A4C4720B98725349798315616A5428D7CB134B6FDD25B67
            747B73A1D3ED7A546A9B5666B5D8D1A6BFF67E98DF130C97ADC769F16B52A74C
            36CDD14D64B912A09AC5491F69C79B15D443712DB4E3A3A2FB3DD41DD1EC8AEA
            95654CB6DAA7688DCDA93AAD7440AC542434F5467C4A2DA5029946A3B6E1486E
            A151A63B31D65D4AC4253D112C48C3AEA1C4B21B346A1DE551D58DA6549C6A1C
            1DCC583268366B95279E4D0A9DAC767BE8BC74F6AF35DE8ED35535FA454AD735
            35AA346888AE05D4DDFB383FCBB021B7832DB8B5A85D340B65CD84078000A924
            1C6E54A549C1540C601AD6C56EB0A7DD69B69BFA2BFB5D4B5BD0E16491B7781D
            D2D90A040F288C91204496E44398C8556EA54894A50710B5C492A52120A39948
            018465CC8093F2257D7D78B53F03B85466BC5376BCF4474191C9ADC84259F882
            DBAC0DBD6AB805C0E34909524750A25249E9F4E2AC75A34175036E379CCB2752
            2DF76DBAFD35A65D5C78D56A5DC301F6E430A71A763D428B55A9D35F0BE74216
            1A92B534B1870A3071605E032B539E2C5B58517A62941BD7427CD51F2D693B73
            D5EF9420485A53C848573141C90123006473A569AA6F52B725F7D3B1E4153660
            0DD3F5600FBF20E3D62BAB5BD4839A45D362DDA737DB3812FEE2B584948856FC
            49926241F7ADFBFC72FEBC7067A8119F4EA327A6411F5FFAEDEA78467C68FDB3
            F8FF00E9E3E932C1C92B1848C92AC803A8EB920638DDB5A2FF005FAFD62AA237
            8150B029DE28BB2DAC6E4576EC7D0C1A39AC9034E66EA118434D626BFC8A95BA
            BA7375176B39A0B17949B5515016BAA6F2BC5B44F4455879484AA0EEAB46D3BB
            BAF4F1B193B77A75B55CDBA2B6654345DAAB22153E7E9AC9DD352A817A49B8A6
            DBDF65B4E5B8F5CD4EB2D34245C52E8614F46ABC7908A8B88AAB32529D0D6A1E
            9FE9D6AC5024DA5A9F645A3A856BCA752F48B7EF3A052EE5A33AFB44F9320D3A
            B116645121A24965F4B4979A2496D69278EAB474E74D34FECF4E9F58B6159967
            D8823CA8A6CDB6ADBA3D16D8723CF68B35069EA1D3E147A6BE9A8345489FE746
            59989528492EF32B3C9C93F334CF7E7BFCEA882816EE83EB4EB5F820C2854CD3
            6D44B1291B77BF6B020525AB7AE0B4D37C5074A6C0335CA8438224D25EADD36A
            EF4872A4C4C697298A985392D025360A5B7DD45B3765A759F1EEB3F6E74576D7
            9955D19DACDD0F5BDA7B4DF8051F8FB25F66FF00ABD228B46F83685467DACC54
            DDAB2A1A63BB5061331C7DD53CEADD3A10B4B46345AC24D0D363E9369A59E9B6
            5FACCAB6BF933645B34336F48B88A0DC0ED0D54DA5C65525CADF92D0AB2A018E
            6A296994CAF352DA0255F12DAB4A9F5BAF5CD02DAB7A15C974B14F8D735C1128
            F4E8D5BB8E352985C5A5C7AF55998C89F57629B19C723D3DAA83F25B86C38B66
            3A5A6D4A49E2959AAA75B34FAE553C3AE4507783B2C029BA9FA7552D0AA26D77
            6DF581AAD56A342A59FE525AF3E4DB5A8F54AA50ED89D6FF00C753EF7A95D14B
            14EA7540876B0D0A9365BE2C03C11F4974BE8DB5CA96ACC3B0ED34EA6DCFB92D
            DABF56BF9DA152DEBC14D45D7ABFAD36603171BB195578B4C4D128B0E37D9B1E
            6350945521D5305D94FADCB0EB276F3B7BD36BB2A77DE9EE89693D8F7AD67CF1
            53BAED3B02D6B7EE098252B9A525DAB52E95166F2CB592B9694BC94CA73FA490
            1C5FCDC3956CDBB6A5974B4D0ECFB72816A511332A351146B6A934FA0D29351A
            C4E9153AB4E4D3E951A2C4132A9529526A351941AF3A74E91225C971D7DE71C5
            2955EFE2677FED544FDBF68D6F5F4D03FA11AB3735C8DC4DC5CFB95FB5283A0B
            AA16FD3234AB2952EE6811DA9D6A546F06E555A2532E835CA3D3E98AA73ED4F5
            BE992DA0429D2CBA69DB67DEB6D6F473667BDFBCB769A63ACD5AB929DABFA077
            3EA7D335F93A4FA714DB6E6D5626ADC5D4188FD4EBB6D4783548F0A92CC2B86A
            CA6EB88987ECC65C4419CA17B5765B1685F9419F6ADF16CDBD795B3546C3552B
            7AE9A453EE0A1CF6D279929994AAAC697064A52A01480F30B09500A4E1401083
            D2ED07D08D113513A3DA3FA67A5EED6302AAFD87655BD6B49A9212B0E21A9F2A
            8D4E89225B0DAC05B4C4871C65A5654D21049254ACEFD0B709A3BA6DE0C5BEED
            22BDB522D2B7B5568FAA3BD0B2A7E98D4AB90636A026E8BAF586EBAEDBF4866D
            075E4D75F9156A3D6A9F5288A660AD9761BAE3E1CE461F2DCB1B2B4F6C3D47F1
            2FD8B2AFDB528378316A7852AABB438371D3615669F0AB3FF10E834B454440A8
            332222E5310EA329319C7595AE338B4BCCA90EA10B16C756DBAEDDABF79D5351
            6BBA17A415ABF6B701DA6566F1AB69DDA552B8EAD0643263488D53ABCCA43D36
            7B72229311FF008A79D53B13115C52A380DF0E145B42C9855BA6DCB12D2B5E25
            C546B7BF92348AFC6A0D298AD52ED4F3DB97FC98A6D55A8889D06DEF8A69A91F
            62C690CD384869B7BE1BCC425414AAE8F0BDA6522CDD5CF149B32D5A6C0B7ED2
            A26FE2E09544B6E911DA8144A3AEB5A41A593AA69A5532321A874F625CCCC872
            3C465963CD529496C1512515BAEBC293B54F150DBAEF1B58251A16DEB52B6AB7
            7ED0AB5A99390E1B4B493525BD506B54AD3A8DED53095316D526FD8B325DB70E
            BD354CD318934B7D1539711A0CA9DB56A35BB6A5B932BF50B76DCA05067DD555
            FB7AE99B46A4D3E9732E4AE2A2B109559AF49831987AB15530E245866A351724
            CC31634760BDE534DA13F771D16DCBBE8950B76EDA1516E8B76ACC2A2D528171
            D36156A8D538CA20AA34FA65458950A630AE84B52187104E091D3852A9E3C53B
            717A45B9BD1CB3365BB75D40B375C75E770FAAFA488A0DB1A6570D2EF7FE47D9
            968DFF006EDEF766A65E93ADC955183695B343A250E42E1552B522109D51719F
            B3848662549F849DDA7E876935CFAD5E31B5BBE2C2B42F8B81AD5F6AC4359BAE
            DEA5D7A5A6DEA5683DBF3530A22EAB1E5180D4BA85424CD9BF085A54B7910D52
            54F18514B36C5A61A17A11A28E549FD1FD1CD2ED3093591CB569561D8F6EDAD2
            EA4D85F9896674BA353A1C8951DB70071A8CF38B61A57CCDB6839E1794DB72D0
            A3C8B925D22D5B66952EF29AAA95DF269B44A6C0917554550D14F5CFB91F8D15
            A76B9355019660AA554D529F54369B8A5CF25084052B33DA3F35E5E95780F32E
            BEEBA8A6D2F7A74C89E73AB754C4081B7CBC21438C16B5A965B8F19B69968294
            4A5B4000E31C7468DD9768EA469BFE8FFDA77D5069974DB4EEB1EE3AA532855A
            88C542953A450B4D6F3ADD3933E0C94BB1A6C76AA54F8AFAE2CA69C8EF86BCA7
            9B5B6A524E93A369C696C362D58B0F4DB4FE245B185505931E359F6FB0C59DF6
            DC476056BF92ACB54E4376F0ABC179E85541494C3FB4223AEC697E6B2E2907EE
            0E9EE99D31BB49AA6E9DD854E6B4FE44F9561B706D1A0446EC995558EF43A9C9
            B410C53DB4DB6FD462487E2CF7A8C21B92E33EF31214E34E2D254AA23D7EB56E
            5B37717E3396CEDA2DF4DA977DC9E1D9A455EA1D0F4FE98D521D9B7A0A56AAD3
            9355A452A8E88AC9B9DEA77991E2CA8EDB72A4C90CF98EA94028456A45AF4FB8
            76F3B088B46DE0ECC28022EAA6DFA5E85D334176D55AA86E4236A2D326C076A9
            6E39FC9CD499774B5265B49ACD17556A559A4A68E86654B915C6525D82DAB545
            0E816A45B96A77745B6ADD8B75D729D06915ABA2351A9CCDC757A4D2CBEBA652
            EA75A6E326A550A7D3972642A0C29725D8D11521F54769B2EB84B7D6CEDEB6F3
            65DF737542D0D10D26B5F51AA0A94B997D5034F6D5A45D8FB9392B4CF7555D83
            4962A49767A5C7133DD4484B9342D42529D0A39529BEF11BDCB4BDB06CE759B5
            32860C8BFA6D16269E693D25B4A9E975DD58D4DA944B1AC0A6C388D03226A9AA
            F56E35527B3192A79BA3D36A52C04B719C5A6877587695E225B56D9C6DD75056
            9DB454D1E1C173D2B72F09CB0626A29D5FB9A1D3D135CD70A454EB15097228B5
            61785A95CB8DFBC5A663035C629488D0885A9849D34DCB6D5A17A314A8D78DAF
            6E5D91A855CA75CF448F7350E9B5D628F72D1CBAAA4DC34A6AA90E5374FAE52D
            4F3CAA755A22599F094F3A62C868B8AC9CCF440AAC1994BAA448B52A6D462BF0
            AA14F9F19A990674294D298930E64490D391E4C592CAD6D3EC3EDADA75A5A9B7
            10A428A4A954BBA8BAB5A29A9FE24FB20D6ED5DA8DAB236E3A8FB28BEEBFB74A
            DEA2B94B3A788D6EB8AEAB5AB1508A87AB44D0236A4FFC387A431091254898DC
            68F3A246589C86DB316B556EAD92D4778BB5CAC5816D42A5ECF285BDDD5D6F71
            177D5625391B5EB8773D3F4152C692D5E9F33ED39B66CBA545B9FCDA6353D306
            9F448FA809928985525325EE2FEAE1D13D10BB2C181A5573691699D774CA9219
            148D3EA9D8B6D4BB2E91F0EA7151CD22DA7696AA452D71D4F3AA617022475B25
            D70B4A497179F58D22D1D4E9DAB484696E9D8D2A5C5F825E9B0B2EDEFE42AE2F
            981F0CAED5FB30D1149F3D299195422AF894A6467CE01614AA35F10BB936D372
            E87F88B53367F6BD5A7DF91ACFDBACCDDA5E1A311A2BDA7B58D278BA99457AFA
            B7A9B3ED6AA394A997D5374ADABA65DFB121D2DBA835663AE0AB4A7597596785
            D6EC6E0DAADC7AA1E16D1763F27492A3AB4C6E6B4F6A36D7FC0BFE4EBB5187B5
            38F6D5686B47F2805AA9F8989663F6918AC2DBB93CA65CA9A56D34855552EA05
            CDD81A61A59A516D2ECCD32D3CB274FED275721C7EDBB3AD7A3DBB4492ECA479
            729D954DA5418B1253B25BFE8DF76434EB8F37F238A5230384EE9DE81E81E91D
            6AB17269668C69669CDC15F0B4D66B7645856CDB155A936E381E719973E8D4A8
            725D8EE3C03CB8E5C0C29E1E6A9B2E7CDC29599DB8370BA3768FE8F4EB7E8A57
            F522D281ABD0A5EACE9A4CD2C7AB9046A045BD06E1AA15593457ED00F1AEB4F4
            0A3172B539D720A58894A8D2673CEA18654AE2CF2DDD39D3ED42F1849D55BEAC
            DB76F091696C0F4C5FB75BB969102B712992EAB7855224D99161D49893151317
            1594B08941AF8869A71E6DB5A12F3A156313B6DDB6DA9DCF71DEB52D04D1AA95
            DD77C3934EBAEE4A8E9959D3AB57241989089B16BB5095447A455199A84A5B98
            89AE3E25A108449F3128480E8316E5A316E176EF8B6D5BD1AEC7A911ADF7AE76
            2874D66E17A830DD53F1288E569B889A939488AFAD6F47A6AA4986CBAB53AD32
            95A947852B2D9AAD40B4ADEF0EAF128A03342A1532C7D38F14A99368B4E553E1
            3540B2282F6B3E964AAD2A98C38D0856FD19B62449F8A6E2A62C18F0DC75A296
            E395238D60591705A157B4ADFA969ECDB72A364CBA6C776DA9B67C8A649B6245
            288298EE511FA32D74B7201E55065505463FCA420F420371234E74C2550AECB6
            24E9E58D22DBBF66CDA9DF36FBD68D05CA2DE552A9168D42A37552D74E306E19
            F3CB0C2A64CAB312E4C9532CA9E7565B4149EDAD41B5EC7B7A936959940A35A7
            6B506222050EDCB7297128B43A4416D4A5222536974E8F1E1428E952D6B0CC76
            5B473AD4AC732892A53A7F1CBFAF03E397F5E117F1A3F6CFE3FF00A781F1A3F6
            CFE3FF00A7852969F1CBFAF03E397F5E117F1A3F6CFE3FFA781F1A3F6CFE3FFA
            7852969F1CBFAF03E397F5E117F1A3F6CFE3FF00A781F1A3F6CFE3FF00A78529
            69F1CBFAF03E397F5E117F1A3F6CFE3FFA781F1A3F6CFE3FFA78E098FD7AE294
            AE9356F848F225B99288B1DE92E654138430DA9C5104E464049EFCA3DC81C7E5
            B7BB2AC56B50B741B83BB899D2D8AEEACDFB3203925C796DB30A55CD53931DB6
            1E692EB6A6D3E7A89285293F365254159E3F479DD46A9C5D24DB7EB7EA3CB94C
            456ED2D32BC2ACD3B29E54763E29AA2CB6E2216F252569F32538D348E51CDE62
            D20609078FCBAE66A3AAA9366D426B65A76A32A54D7C3E979C614663CB7D6E05
            B8D0CFF48A29E62B2700127D78AC751AAE14865B602083F114BDE01EC80909DD
            8C9E4FBFCE6CDD3A2DD2AB872E0AC02108494983CCAA4711919A726956F56510
            DB72530E30CA4852836E3E50BC295920AE335CD9CF314A96A4FCD8EC071EB9D2
            1980C05BA89B38171282969969D0919EA11CA949CE3095732B03948E9E883917
            9BB52A6221A9C663B486D052B8931B65D7004909095297CC12060A92067A6001
            E85D4BD42A851DB11D9AA44536C03CA9759325C24294405A815F31F9CE5400C9
            EB93D78A31B4BB70A94EA1B53998424EC80633B923248ED223D6AF69BEB26425
            B6DC712D1401F1940B8B0B11C2144031EA679F94BDF49A8D2A4BB0D3F60C96DB
            E421CF8C643286CA4AC85F381F2924A48E7E64F53D338E0EAA4961D4A4C58116
            336B284AD6C00F3C9400538E452020E39524938F4C7A65B05EAB44910819B1DD
            764F9684A9D8CB7E1A08247CE52B8E52484F3670BCAB231DBA9BD2F51E1BCDB6
            C438D2FC8C95190B4CA74B440EB9298A92B403CB909241CE42BAF48B5DA5DA5C
            DE1B752412880E2949ED2AE63B7111CC9F59545F581425A53EC921214A57C14A
            572446D290241EF8339C4CD3871613CFC2CB8C3D35B75DE569B6E127CD6F0004
            95F963A3492951591D82BB0E3E66D3DD4390DE90C4B6A360216CD2DA5AFCF4A9
            41B2893CDE5A509055800051E452C8EA38493DAB5546541A8AFD39942925B6E6
            243EA53415CC0AFC8F303991D798E004E4857290A1C78FF97958900B62E181C8
            95254850263AD6959056EA3CC908F37979544840513C8477560E3FD0B533B96B
            421001F21DC4E0C4921322403C7E3EB94751D211B5B438B71508DE4360428293
            015B8A491CE67BC738A7A5CA25AA14CBD2DF7A2A9688CAF29810D4D292D91CA1
            E76410B47940614024E3AF61C77496F4DE2C85A94862BFE63A128F3A7D3CA19E
            B9239194B9CA8E6C8CE4E41C8F62C9C69D065BAFCB955A7AA0F3DCA54D952DB6
            DD07987236549572139EEA51CFCA7B1E15742A853E74D622FD809418EA446766
            2D0151CA7CD6C07D6E2D84A0F205125C2E948485614124911EED82DB04BB7574
            E253E65042FE10E0184E7718E073F69C54A31A932E10966DAD5B5A94908516C3
            A57E51E63C849EF070066957702A9528A26D218A74069860C6453212D97879AB
            CBAB94E2BCBE752894A1BE5C607303D09EA6F499767331A3B75CA653EA0E2925
            C6D223B2F3D1964A410566533C81CCA8FCCDE4287CB903847D42D6ACD4E44FA7
            506DF9D3D0C2D6E7DA11A434FB0E73B7E584B496D78404AB0A202D471CBEF93E
            487A59A92F30D46956C7D941484A5871E434C3CF2125482B4A9735B2B592A491
            CB927E5E873D3AE2C9CB74B6BBC4B61241853C3E2EDDC089F315288CCFDC476A
            EEF8F7AD5DEF6B4E538A7010A50696A64A811300B61080401041DA7B64D38F44
            896ED69D2C36E269E953AB5A1A4B0C29EE4E42AE77312105A48E4E5000573736
            0A8138E1217BC6A5DA4FBB26249A84F0CB9E5B4D426194C6085AB948F31321C2
            40E6CE483959C7AF1EAFF865AA54C869623D39D92E4A39022349FB519434AE6E
            552D89EB7928212490B4202924919491C1948AB5CB1E9CDDB351B51F9CFB0DB6
            22A0427D5514E30E2CCBC36EBCB2A287092B081D33C62A4245C0718BC6EE2DF0
            9719F8C84282001BD4951854E3224119CE0D65BAB52ED14DDC58BB677090A536
            FF00D1D6EA43920A501299499ED20C9E077AF35937FD266469A26536AF12ACB9
            2D3D4794EA52DD313154C2D339994F798D3ADBCA210B650C1521447CE0023856
            532E9A922A2CCAA28A87DAAD4E4B54F90DCA90CC78ADAB93CD2E2E37338B6429
            5CFCAACA17CA3CCC8E12943BDAB764BB14D574D55103A8752E39536DD682C94A
            89F25B5B0138E721439C2C84820127B487D28B8A8B7556A1D46AE8A0D0E9CCC8
            53751893A547654FC7F2D49F3E32653AD25A0EACB61210CB9CA4295D7FAB1BAC
            2D1688B9BC3A7176DBE1EE0A4DC21FDD081294B690A54920E3933F6D4AE82157
            A6D6D3F7A96AE9240F3D92ED54895FD7538BDA83B4409EC38E29C5B1758AB31D
            21CAD5AD32E4A852DD0DBB1A1C574D427BCE3212CCA6DC436A3263B5CAB0C3AA
            8DE607B1F3A979C3EF616AFD2EB77653E9F56B7AE4B5CCC9CC32FA6AAB4B7110
            B78A969665996195A101B6D292014E12A6F08C1C8FBB7EBF6052AA3163B77751
            9298CF3CAA1FC2CA66A72A98896120979704BEB66382EB9CBE626336CA520E51
            8E6E2615B37268BD5285476E66A0697AAE6A33B21F75753ABDBF4CAAD5BE2D1C
            CE4692BAACC8C44A61A2A661BAE2CADB2A41E4504807CFFD51AAD8243CE9E9CB
            F06E1B521A718FA6C36B5A652B536968B7B7CC099FAA6532457A0B40B2BD4258
            6BFB4962E0615B9D69D1672E613E5F89F152B263CA003060288049AE8A651751
            A7A39F4F282ECA42EA20F9EF3B5153F21D712C4768C7661526629D67CE5847C9
            25395A17CA9E7481C3EFA733357A9156A2B37153E73B269E8951DC8F2599CD31
            356853950FFE2DF134BF31084B2B4A185B694A89280709EA10902D4B8AE17555
            1D2BD734456EDC684C763D3A4C3AF37139D4A6DB121EA1D55A61695B8AC828EA
            92BC2B05248EEAC5B5B9F44A62743AEB178418A802A3228F3C436931DA50905F
            9B1CDCCEA56818F294B2DF44A00271DF4FDD3CC5C92D29DD31A28DC169B94DC3
            376368129529F6D292A58FFA600048E715B1DB5BADABE216AEDD0A00B6A61C6D
            DB7515287086946123B927263114A1ADEE635D9575D6E9949B6A5B7478AD4553
            4DBD4AAABB1A98A71B65C4CC47F44B69B5870398538394951C1C9C8B9ADBAD7E
            EBBC2C8A3DCB73E9FC5A881129A992D69C3736A95EAA3CAA6C275122AFE6539B
            7A016DE7D4FBE5979DE5756E24741CCAAF5A25CDB8B950A8901FB05A95482EB9
            3E14E850E2C3554D709D77E2E1CB53B3546AAC25A53A975B712E21B472FCA036
            7896BA5FAA50E8C9A29D42D11B834F6DE335B7E4DDB654E994D321619614971C
            FB0697344983254398250871250B4943853CA4E7E9371A437A8B2DA85B5986FE
            0237B6951F88B5AD20ADDB9532EB4DB292495ADC01118253BAAA1D516F7D71A3
            BCA61B72E5F2B754501C415A10906528645CDBBAB70805294A14A702B294989A
            97B374274CAA570A6B97BBB36CC88A5ADF763D7E046A689AE07D529487DF912A
            9CEBBE51510F38A5A945472A482A3C1DFF00388DA0E9C1AE512974512E5416C4
            6726CF99444519C71A710990A8E575F782D0E2DD716398254B2141406558511D
            C5EDBEB54E7DAA6D7EED94B6E9CD96E4CD6EEAAA2A3A94D13CFF000D2ED9E57D
            2DA928F35B09216A5A7980073C40DBA2A7706A3D5EA74FD389DA8771226BCFB5
            2E4D2F4EABB398814E754957C52CB56F21B6D4D79652DA02D2B0B494A5394948
            BC6A4FE93D1AE217D38AD1F557F5371D71EBC66C4EB579F50216965852D4D20A
            56A82B62DC40049850CEABD2ECF51EACDCCF52B9AF69AC696DB296AD1FBC1A45
            9A52561414E3C84175614948FE1DC5C1CE1321422286EAF769A3378BB362C663
            52E876D52265414B365DB96C2235C8B5210DB61339157F2DC6A3BC1D532F1324
            7EB294D15640A64BAF7516F50DCA9A9BD35BBAE888F32E7D98E5F351612E3121
            2968A25BECC1A6A01C733ADA821F24365B217CC4F16CBAE5B56BC639991530B5
            AABCA7829709F0CB94D8AFA7CB8EFCF7053DE82975A663A8BADC8E7E41114D29
            520A4057102AF9D13BFE753950E86F4893478691CEECBBA2D69CE4D8A8911D4E
            B48535586C10C61D43A4B6E2545A4F2A474CC068DAA74FB974FB9ADDAA9772E5
            C143C1E53F6696F6803625086921325584E26446323683B61AA234F61AD02F8A
            1869905B2DA98BC2A512256B2A3385080A51564111822AB76E5DD34BAEC99066
            58C88305D7905A854679E5B7050D24065313E2125492850CAD6A505925793D7A
            2B2C0D49A3CC82AFFE0715FAED652F475BF31D90F5461B0A752A69259F8CC85A
            03694A161B6FE450C0CF42FBEA2E9CE9F43AA38B9EED22CB621A22A645426CBA
            4CF0B799E60E34F3104821D75012F38809E6492729EBD1A381AF5A6166542AAC
            D2E914FB8954CA7AD70AA49727A6149931D0D158447453D448050E7290E72252
            41E6504E78DB4CDCE99A8E99F0B40E9DBA71CDA856C43CE25008DA1A25D5A769
            04E48DC151F58706A925AD474ABF2BEA0EA3B60DAB700A72DD1F132015C210A9
            0A4A6402404826010461CA6AD7B9E659CBA4546154EA340766BD224B5366D411
            0A44C7C217F0925BF83523E1190B6CAC877CD094104740788FB7153A8B6C3926
            5D4D56151A9D48912D862DF6E530F3C943010D72B625A623C029CE5791CE56A1
            E667B6016F359778372D5AB13615B34F5B54BA8512317E4C295359650C498EE2
            242D98EC258432842549497968E753895296B57380221C6AB58E29D32B354A84
            95D796E239E8EFCB0B53E97925B7DDF8A763ACA4A523CE6FFA5E84F5C9238B6F
            4CF486B21A55DEA653629B9520A6DED51F48592B82A0E28380364C6DDDB63D40
            04553FAA3AEF4443C8B3D240BC5DBA14872E6EDC2C3482D80016E5B25E4E7740
            5C66099CD4A89BB8ED2CA2C68F4A628D5498EF2F9D2E453C53CD2A4BEA281E5A
            15F1EE798121052F287272294406C118E388FA8DA2D783D22547A545B75EE652
            DDFB4D8A4B880EA824B7E43AB9ED1294F985C394254959F504710724D229D203
            4ED36A68985D5ACAA325E63998208742124A925584AFAA9230A5215F5C28A8B0
            0C77E3A5995194D72352DE61E9B14079656501B523E21248525272CA8296A4E0
            F2E3078BFAFA4B4B65B5396EFDEB4FE495FC55C95120A829B276800C01CF24E2
            B5C23AE75CB8792DDCB3A73D6A0A50947C26880851294A8389F32B124F049C1A
            B23B56DF45DD6ED019B560A2E48AD4C5C49D39517E262C37E512EB0A9269A892
            811CB5CC429D759240504A081CC142DDBB60D0915BA1BB7CDAF45AF53D699D36
            1A8D311CB256DBC934D61526AADC85790E1573217150E36B525251EF0566EA5E
            A0DBD6E376B500C581494C995524394CF360BB2E6CD4A50A8A95B325A0E98C96
            C2594212B280A240EBD58EAE57AE77A7BC9B8D85C1951C2E5B8A9495A243EB7C
            85294B75C70A9F5103992E02AEE464F5E2BAD743EA97AF3BF13554DBDA7C45AE
            DD0D252F3EE10B494ADF5A89411C94A1290413998C5A2EBC43D334F6590D694B
            B9BB4A1B43EB70ADAB66C6C014DB3B0058C91E7528824180055BB34625629341
            8ECEA5D02A71E87118A653E045AC53D4E32B90B6DC98A4B2C3AE061E790D21C5
            72A54A0DA485E52028592ECFBC352BFBDEB3358EBDA7DAAB685A32B4DE6D2299
            2E3DCF1A5558566A936349A8B7163BD4D90D18F86612D0CE5971D7DF21223A52
            0AB8C9945BB6A94A98FC8A5B850A79B2D175A2EE70A3D7E64292A0A520753901
            40608EDC5F97873EF368FB6AF0E3DD8DC8351ED4A36A8B3B9EDB7D56DCB4EAF7
            34466E9B8ADC6CD4E0DCD36996EA66A6BD54A6408D2DC1529B061C88B4F2E36A
            98A6D27ACE68FE1ADB5B6A22EB53BC5DFE9CD34EBAAB44B22DD4E3C60EE2A654
            15E559DC0479C820F79AEEAFE2B5C5E699F41D2EC11A66A0FBCCB69BD53E6E10
            846E092909793B405A0144EE011323880E16C1FC3FB52B7C5B84D59D139371DB
            9611D248339578DD959A6D55F8F1EB51ABECDB94EA431052DC46D12AB13C3888
            C27CA87254865C4B31DE7125B080DC9ED4EA1B72BEEFCD3DB96B90DE459374D5
            ED88F744180F44A5D726D362FC4BC982FCE53492E298C295192E3AEB6A4B8092
            94F3717C152D7AD9BE87EA0689DFFA41B81D29A9CDF110DE368CEB7EB13B4AD4
            0B4D11B496CBB22974EAECBA35C0F53E535FC9EA1CBBDD4F0946E9729284BD19
            F0A8AE3ADB8F26336FF2D5D39DEDE906A2E9C68C6E23439ABBECCDF2EA26A0CB
            5D675634D286DD4AC5B8F4F1547873E8B59BAAF7B52975AA33F2E52929551AA9
            536D0F249759414958B16ABD05677160D37617ABB5D4587D4E38B4A77A5F60B4
            975BB74B65C0849085A145625521492244080D2FC49D46D6FDE7351B345E698E
            DBA1A6DB510DA98B80E069EB853E1BF88A05616022424A76A81383553BB4FD96
            DE1BB4D41A95AB44D4489A4D6CD1F4FEEBD46B97512F388F336E47B5ED47E146
            9AFC39852DD3E4B89953A3A7FED33A2446925D539290B4A10E3D955F0F1D3DAE
            5C36AE9BE8FEF8345F56F55AECBF6DFB028B66D35BB7655426CCA9557ECEAB4F
            79341BC2E1AC1A7D0E3B72EA750723509F71A8B15E5BC9610971C6E793543D6F
            D9E692F879DB1A59A8BB719778C0D2ADC3D36E7A9EA46A2E933BA577BDA95EBB
            A84DCFA1BD5FA96A8536CAAFC90A75875A84C5D35390D986F2D304A5A754D3F5
            A77B89D02B317A4FAA5BACB8F62DA67AC56B6EAF49D9B0A46825EFA2EB9F2ED1
            AD22A54DBDAB976AB4EAEEBDA5C3B7A94DD5153E64BAC49A4D3D94A14FBEF109
            2E266AC3A36CADEDDB61FF00EF375BD2B75F796A60FC3506D65294B6E044A525
            491B810A200C4D416A1D797B7172E5C5BCDA5A9414356ED00FC3A16E277294E2
            0A8856D4A884A93B46322A29D97E1B556D26D4DAB6DBACBDFC68CB7AEAE3A6A5
            3747A8170B14F45C35EB529D26E9850255362DC8EDC1227468111C911DB5DA12
            1D0AE5E7603197055E6F5B6F2FE94593A2BAE975BF4AA2B9AD526ED5AAD3B5E9
            EFC4728D22C5990224EF3254A5C02B72A4890CA9BF262C7F2B972539F98E8674
            D7681A017CF8965E7BDEB43795A07795CB43D55AE5F36E698D8BAA3A4B7B54AF
            2D3F1A5B50A5D62A54CA6DAF7DD5EE4F8DA4C975E7642114A764B8CC73CB4E29
            2970D64EF4ECDB2B7E3B6BDB7D0F4CF5EF416D2BBB45EF3D56857E597A87AABA
            67A6F7251CDC132832E93F1344D4FBEF4FAA81B9D19871D69D8D0E5B4E04A53C
            E95109577B9D1F6E84B8FB2C3D6EFA1C5A2D528BB71E694DA16DAD2E9438E2D3
            BC82BF202001913835888EB5BB2A6EDDE7D9BBB7536DAAE94BB16D87038B4290
            A6CBA86D2BDA829410A332460F3112774FAB7A2BAF3B23D246B4929D6F5018D3
            ABBE6317746BAEE2350D5EA3D4EA6893E5A1948ACD4C39625590A8E633D2D8A4
            9455DB2D351A415970917813B74E4F8AC6D851165BEB7196F5BD210EB4D202CF
            F378D5A4AB94890E294900157EA8EA9EA3D445CD62D8A593A41B66D72D64BA37
            55A3B3B57B4E2E8B0A8D6B68FD89A8FA67793D7CD22EDA9D3A14DA8449165DFD
            74998E51DA7DDA93CDC35C8115BA7BAA94DB2473A16FFA3DD54933BC5C36AFE7
            CB7124C5D73E765C53CB53B9DB7EAFAFA92794721C289564F619048E246DB4DB
            DFA7DABCFB85007C125A4A429309F29276F7544C660931EF1575AADA1D32EED9
            96C28A90FCBAADC0A92BC8FACA30413D844456F92AA99746A9CEA54E696CCDA7
            BEEC592CAC72A9B79A5722C107031CC32938F9927980C60F1E0FB455EE8FC789
            BDAD9B77A95D7579374593F04CCD96D21DA8535D714C2A74905416FB4E2BFA16
            DC713C9CC165214A054A392498CE76F1AD09241B3DD382A194D5E89820120105
            53D3D1407B743DF8DA35ACA9B154E564807A038EC41E9EE707381D3B9EDC71F1
            CBF7FF003FCB87355B79D6ACAB16739DCFFF00BDE89FEA23FCB8E3F9BCEB57F6
            3DCFF16A27FA8F0FEB4A6CFE397EFF00E7F9703E397EFF00E7F970E67F379D6A
            FEC7B9FE2D44FF0051E07F379D6AFEC7B9FE2D44FF0051E14A6CFE397EFF00E7
            F9703E397EFF00E7F970E67F379D6AFEC7B9FE2D44FF0051E07F379D6AFEC7B9
            FE2D44FF0051E14A6CFE397EFF00E7F9703E397EFF00E7F970E67F379D6AFEC7
            B9FE2D44FF0051E07F379D6AFEC7B9FE2D44FF0051E14A6CFE397EFF00E7F970
            3E397EFF00E7F970E67F379D6AFEC7B9FE2D44FF0051E07F379D6AFEC7B9FE2D
            44FF0051E14A6CFE397EFF00E7F9700CE56002A4F7CF5CF7FDF8E1CCFE6F3AD5
            FD8F73FC5A89FEA3C7076F1AD2460D9EE7F8BD13FD478529B1F8D3FB48FE07F3
            E07C69FDA47F03F9F0E67F375D6AFEC92CFF00FDD68DFEA1C0FE6EBAD3FD915F
            F8AD1BFD438529B3F8D3FB48FE07F3E07C69FDA47F03F9F0E67F375D69FEC8AF
            FC568DFEA1C0FE6EBAD3FD915FF8AD1BFD438529B66E710B079907BFA1F63C7A
            7ED13EE8FC787091B76D684F7B45C3D3FF00E2D45CFF00FEC3FEBEB9E3B3F9BC
            EB3FF641DFF16A2FFA870A5373F689F747E3C0FB44FBA3F1E1C6FE6F3ACFFD90
            77FC5A8BFEA1C0FE6F3ACFFD9077FC5A8BFEA1C294DCFDA27DD1F8F03ED13EE8
            FC7871BF9BCEB3FF00641DFF0016A2FF00A8703F9BCEB3FF00641DFF0016A2FF
            00A870A5373F689F747E3C0FB44FBA3F1E1C6FE6F3ACFF00D9077FC5A8BFEA1C
            0FE6F3ACFF00D9077FC5A8BFEA1C294DCFDA27DD1F8F03ED13EE8FC7871BF9BC
            EB3FF641DFF16A2FFA8703F9BCEB3FF641DFF16A2FFA870A5373F689F747E3C0
            FB44FBA3F1E1C6FE6F3ACFFD9077FC5A8BFEA1C0FE6F3ACFFD9077FC5A8BFEA1
            C294DCFDA27DD1F8F03ED13EE8FC7871BF9BCEB3FF00641DFF0016A2FF00A870
            3F9BCEB3FF00641DFF0016A2FF00A870A5373F689F747E3C0FB44FBA3F1E1C6F
            E6F3ACFF00D9077FC5A8BFEA1C0FE6F3ACFF00D9077FC5A8BFEA1C294DCFDA27
            DD1F8F03ED13EE8FC7871BF9BCEB3FF641DFF16A2FFA8703F9BCEB3FF641DFF1
            6A2FFA870A5373F689F747E3C706A0A38C14F7F4CE4FD07D7F0E1C7FE6F3ACFF
            00D9077FC5A8BFEA1C7236F3ACF907F920EF4EA7357A20E83BFF00F6F3D875E9
            D7A71C1C03F2A550C78EE6B67FC3CD8CDC365D3EAD4F875ED64B82976446893C
            B41D994749354AF2A3A56B180D448ADB6E3C842CB6A90D84E14B05384D5D06AB
            222A03229B20B67C84F2BE92843610140939490AF5F623F0DAB78D3786DF8A36
            EF751B49E83A11B71A8DC7A5BA7941AE4AA9C89D7F695D322D46EEAA55DF8899
            5122556F3893945AA1438AB4B8F47404A2684270EA5E422A1293FA3F7E2D0DB4
            A4C9DA24B65D09050B675434754D8514E15CED8BECF31CF42481D074E291AE9B
            F5DCA94C32E3AD3709404B657BB89CCC4139F43CC022AE7A1FEEF4DAA52FDC36
            CAD6ADCE6E702632923EB08103FAF789A148365D6DF75E494D35B52960A889AC
            038E73D1014E13FABD3B1C74EC7BAE63E9644781F8E720B4EBA842B2D4E42885
            27055D4E501452402147A2B233DC717AC8FD1FFF001586D1CCE6D2D2A71290A0
            11A8FA528714A18072517DA124F6272704938E02BC077C59DB69C431B3D985D0
            91E52FFE2768C940393CDCC1EBF5C5729C8EC41C7EEC555E3AFBEB01BB1B86D3
            9929636C71912403DFED8C19156C6074F3425EBEB5709FAA92E83184F30201E0
            0E04E3DAA92936750DD4B0C49835871A654015C66D95B854C850438DF2BE7CC6
            894824819564909E982BAA3E9C738714B12E2D3931CAA33B29C6D85A79B912D7
            36524249CE08590ACE7E5E2E4E07810F8B2A1868BBB48799907F5D4353B480A4
            75EC94A6F450008EA700F4CFDFC76CAF01AF17D779BFFCDB9696D40250CFFC4A
            D2EF2909C8C05A517C368560F7F9403D300F28E23DEB6EA25A4A1B62E5B00C28
            B897140F046D0911BBBE481ED526CDE74BA216EBF6AE601094A9A410A1000512
            64823B0C9EC66A9024E8A3B227AA4B49993D3CCA716B88A4BA5A641CA9492109
            E70091D0254A5058001CE41E43D0A5282A4BD065454A50975B13D2E30B50E557
            2AD214907972127A903AE3B1E2EDA0781978B9426D4D49DADCA95D085B907537
            4A2229493CA3953CD7DA70063A820E7A1EBC1AC7F038F155723486A76D56F032
            1E01119E5EB2E92B8D30D8040E66FF0096EA181D7006491ED8E30DE6FABC0DAD
            DABFB41480A430A2540ED991BBB444819F6E6B2ED97D12169539756FBD725495
            BED840320800ED24768FC6A92DAB3EA14B690910614F6D0A512A5BCE84A79484
            E5D5B610138185100E309E9D7278F53F32AE799A8F2ED686D2436391B54C77AB
            6DF96964AD6CAC8560A89C67AFA9E2F2E07808F893B8D144FDBCDC4C2DC003A9
            5EA6E992D80483907C9BB945582704849C9C1EB8E85F3FF47D3C468A0269DB7B
            9CCB84AB99C72FDD35751D47CAB52977802A09241C86F2074C1E313E06A8EB84
            5D697A8159DA9DDF42756904E54A9200031D81EE608A902F68CDB69369ACE98D
            369CFC33A931BCE30946DDA448E048F43DEA91D55ED4E9E634176AAB5D398739
            DB8F45A42DCF3C9E5463CD7A2A124A9194A545C4A4950C9032A0AA88C42ABB48
            835CABD62DBAEB8B1F0EDB7F08FB2E151F29B0FB4C09CE30B2B53455CC800242
            C649E86DD58F001F1518A95255A212DE5F31F87F2750F4DE2B4D0FEA05AD9BA9
            2EABA8190001CB920F3633D94FF019F14AA53C5D99B659B5794A5FF4929AD47D
            285E4738524B2E542F02FB3CB838E45649C288CA471D6F693A82A7E8DA5BE952
            132D966C96DBA544A4A8EE53704113B814E789AFDB1ADE9CDAC7D2758B77DB59
            01687B506DC690DE236EC59505249C6D388C8ED55816FD87578B20C59F7AD1DA
            0E053A0844E75E73953805F723D15D6DB2104E0128C9271D0F0E931675355516
            A4CDD4DA130888C84466E5D4E0C7716971B287391A9F1E1A94DA54A5849FD600
            9CF4E2CF18F032F1356931E65176F932935171244D4D775074D2AED60800A5B4
            0BAA4348C63A728CFF000C70BDB77C177C4663D45C37D6D729F74415361A8469
            9716933098CA6DB512E3C1DBAE0BEE05A8FCA12B5E164A949E5C714ED4F49EA8
            529C759D3F513B107730CD8250EACC41F8490CED56E1DCAC4893C9ABDE97AE74
            7B696D87B57D2002EB6B4BCEEA65C692202925C5FC50A07B406C90704D5474DD
            1DB8AA6B765DB0A835FA5545495AAAB1A5B4FA5521A5214E0710C2568435DD29
            7139415E003D41E1C8A569169EC2446A76A2D1EB70672A0AA5A1345A8C69ED48
            525BCB8EFC0B32972CB4BC7EAA590BC9094249040B6C5783B78904067E16D1D1
            2FE4FC14F2F3417AE6B08208201508E19BD1F4B7CAA1959528150EC48E1C687E
            10FBEBF82554A7E81266D718A721A6E3CFBBAC7782DF6D472DC77D5733DE5A1E
            19572175083D12A291D0D2F50B6F1016CB4DA744D6D0C951481676772C5E800A
            420BCA04B49993B884AD041F58AB9D9EABE1C879E715AFF4F97B6A77FD2AFED5
            EB3DA64AC3492B0F2B11B132DA89899E2A91AE3B0F41D8A03662395FA53CC3EE
            08C2B947B829CCC95A1FF9154E92DD3E5192F82909C1404F418C83C786D9D3BD
            17A44BA554EEDBF1D546AB4A6BCAA73ADD61F11587721B27E168624C75A795A4
            B21E1CEA5A929282093C5F4D2BC2DF7A2DC37635C5B3C6EAEE2629F8041AE692
            CC8B1270394CB6CCEBD39940AB0B5A3CB403824824E38692FBF0A3F108A8C6E4
            A1ECBA04D9512499513CCB8B45E130F34DBA95C686DE2EECB2B6909239959483
            829576C475A691E21DCA97647A7BABD86DCF2BB70EFC2254143CBF096BB794A4
            1899EFCA8D64DD6BFE1DDBECBE4F51746DC38D320B4C34A595256829C2DB6EE2
            14A2990009988393258BD18AD685D2587AD9A2EB5B5694A769F2CCC83555391A
            A51DF796B4C55C48B59A4B0B991DF5291E6A5B42D4904AB03A7139746E8311D6
            DC762DC0C5C4EC18F35D76B0CB28A62171E4254CBD11D43485B6B429A513E672
            37CA94AB95D2A0070D15B9E177E205568A5FAEEC4E05A777B511E621DC7FCBCD
            1E9D10A4BA1D4225B512E595279D211C8DBA02B9014918C7496D64F8746FFA8A
            C50A5A74F2A76954CCCE4ACD3E1DC564D52872A109054132E3B75F8816CAD9CA
            5D6DB42D4AE63D8F1A9FAAFC27EBB2EDD1B7D1FA854FDC9DAF2AF6C917AADE01
            1F190FD9DB97361DC20F200129ABEE87E29F412D964DC750F4EB3F0C4DBA2DEE
            C59B696E4128758BBB8002C19C09EE53ECE8D895E79E951E9512F343D0E03DE6
            BF4854886616272BC92DB2EC88F19FCBAA582F28B9F229D182338E27E50AE2A2
            B7673143A5502555A6D2627C4A1C891A7549DA5A6951A336EC598D538C80AC25
            01A4E10E283B9255CA325AE8BE1FFA89735CF4EAEAB4E2A160569DA54EA7D424
            46B822376A2E690A4D3E6AE894AB8CB894B0D9473A9B4B8E892DA5F08CA7891F
            A29B3ED61D20791562E22AD57A83EF536A11A65664D7A90F45790D2E4D424B15
            59FF00D1B6F3887004B2871E01C014D900F117D31E19788D657BB15A2F50BB61
            76972D6F6FDCD19C705B5BA762D4AB56EEC36B952D6829496D24842B6C2920D5
            6FABFAFF00C3FBFB12E5AEBFA337796AB45DB162DEA4DB6BB9B99221FB9B55AD
            B29FE1AC93B9493BD3BE52A8247A51B95D08B5AAF399B85F99478B2E0C8454A9
            AEDBF5375C0FA7F514A909F37E1CB843EC961D534F7337D1AE60709091BE4DAE
            D12A15DA150AEB8166D3EAAA536F489EDCEA5543CB71A536886CB3542B695279
            E4168A5652908E6754EF290BE24E59DB47B9A1DC35CB86F1B434BABB0AAB25C9
            4288C51A2A5F690A90FBEDB6D4879A2D232990A6D40279472640EC0451DCC787
            DD3EFEA8258B336D51D8715326D42657235D54882C3CB74B4A43119A6E5C396D
            84ADC5A58C25B0CB71C8191C9CDB491D2BE2CE97D3364BFDC16C069F7D73F0D8
            6B44B86BA85D65F7120A9A32EB01B7930E2DA4B8C94CAA615046B746B5E146AD
            D4772DDC6B1A8A7E9F6B6BF16F1DD76CD5A2B6FB090E8F8C85865D538CA87C26
            DC522E12ADA894C49AAE9DC4EEAAC3B9AD5971ECCBB6966AD0A0CFA1DBA9A6D4
            69A243F4BA872335B4189F132DE79D94C34B28E5649E75E505292958A65B9752
            28D1A0D5ED6D2F7EA5407234786DB95B72973642A237E5B2FD5573DD763CB69A
            6D5295290CAD0CB8A23CB4A5381917DD7BF86FEACD0E9D4481A71B5A8CFDC747
            90E21773CFAF5AB59A6CA0B65C65120C2AADD909DF212A7C3AE071871E516B21
            055D151F7523C2A376F06DD12B4FF45A9D36E8AE4402ACCC2569E263A252033E
            6074562BF199432EB81E536DB2EC94F501CC048CD234FE8CEB355CB0F5F74675
            3DE5DDC3C970AAE74C79B690E6FF00F12E4169C4AF62486C1E212910409ADC2C
            75AF405AD91B7B2EACE9CB161A414140D4ED94EB89091019521E0405AC29CF36
            6565509262B3B174335A7DCA83355D414551C5F9925E69B8A1D796D38CE532A5
            4A8F4C432C32A386D68CA1C6B18284A89CB0D54D2696A8735C935A619812A5B6
            962047985D579443414E167E05521DCA50E3A0A0A82945207CBD468B6B3E121B
            CEAF0684ADAF3F05E7DA8A664C815DD2F64F98C32853E87D2D5E6CF9CD3EF25C
            1F0E847C36148047283C34F50F075DEC54EE2297F68DA84DC15B81B455DBD4FD
            26669EA68A5412FAA96CEA025C8A139384C78FE624240192A206E9D0ED3AD6DD
            B284F49EBF6BB1216FA51A6F94EC291FC3808499246DFF00340E0022B5EEB7A9
            F415EAC29CEADE9DB952890D173539D85704871454B2081339099EE4567C6F8D
            2AD3D6A82A9A2F5A93370C131E23F6E4A8C5B6C51DB4A5D0E36EA61A91CEA0F1
            59064A549F981008E5E22C5CB60D2E6D75AA7D02AD1AA0CAD0D84C8912988ADA
            5F534953EDADE792CB694B3CA109714425C505A52A5904F1A7DBD3C0937BD589
            01548DBAD48B8DA9953D2A76A1D8AEA26B0D2548763A5955D217E6ADBE5424BC
            B2D8527994AE5C0E0966780DEF78B311544DAA46A716C0F3D551BBB4F1F96B70
            94F39E76EF45A71CA15C9F38014A39C918E360E9577D436CD237E89D44FA9CDE
            76BF60128637041FE20094ABCA41F870498E6B5BEB565D2B7EF2C37AFF004A5B
            21B2DF9D9D44171FDAA255B0EF5A415080BE018044445659A558D2D89C61C690
            C38B4E7CA0CBE890975782A2969C652B42CE7B0E61D48EA01C9E99562D721B41
            F90B532E84971A60216F3EB4A739590CB0EA4230901254A49C9C11DB8D31D57C
            0677F70EA86653768F5CAA28290EB2E44BFF0048E9F1593CA12B639655FDCEAC
            94F3050692920FA93D092BFE06FE256FB505CA4EC9654879968B4F372B55B495
            0A29EA72BCDEEA42C28E0148FAE3A64716F66E75B7431B7A7352DAB4F9CBB6A1
            03760990A5022739399291C5529ED27A61A4BDBBAA74B0A42BF868B7BC53808D
            D3FE44E7812272260D66B63C2ADE017E44D6E2B25212E2E32908F331951F9981
            F2148CE7B8C103AE01F5B54E6EA127CD9536496905216F2C36868361585B6825
            00F3A1201485049C289E6E343D58F023F144A94543103670DD1CAB1CE95EA068
            FC96524A149EE9BEC2D4527D71923B70DACAFD1F3F1676A5C83176AD15C88E14
            AC0FF885A50DA4A949FE90068DF2A0307A271D7F1266AD5BD41E4C39A5DC5A92
            08482DED50023FE991E9C1CC83EF50D7274B616D86B59B4BC493E73F14949560
            884A8A5502621426003EF5486EB1428B4D5223BAEB929D754E0F350B4218692F
            7220AC1014A5391C150CA54039D02802326702DEB01F6DB92E55EA4F4F792CB2
            DC2623B80A9D754039CAE38CA18536952424ABCFC8E6091F31038BAD8FFA3E7E
            2A6DA94AA86D19DA834E369404C6D50D2565D429273D7CCBE1B46010A20254AE
            84FD3828A9FE8F5F8B1CF7D8453F6AD2E911A2A3962A99D4ED2243A9CABCC256
            B6AF6E775CF31390E2D64A7A00427A1FD9D3B5170EC422F9B8C97483B5446769
            1B544A7D78C7A77FCA6FF4C6D29716BD32E00094060AC15A463F893BD290A827
            6CEE839222A9AEA51A8369BAD47A950AB50E5C291284B2F30E00EA425B54465B
            497425480870294524128779812909266DE83789BDF3B76B17FE1D5A56169C55
            288F4BA8CF6E6DD96DD56AB547244B4B4B4C75BD12BB0DB4C36BC8412435CEDA
            D412A5107A4A3AAFE8ECF8C0D61A2B7F6FD3E54C4AFCC5BB56D52D3090B77012
            84E08BD5ECAB9025279CFEAA5233CA0613EDFE8E1F8BB98EE899B63322421691
            196C6A86952025249E7E86F14F42001857719391EBDF6FA55C34A4BCE22F3E38
            9495B69723313B52A49810713240F6AC2BAD559702D868D926DD642805ADA57D
            51E50B5254322470399ED310EB751BF0D51DEDAB4FD8D58AE5AB4EA5E98D3255
            BD645A940A3376F516DB83509499B39697253F264C85CC7DB438B7654E7D40A0
            2036DA7BC37AF40B5D0886B12DB53B507701F6E536E26447695F0AFE16951690
            95C9090D64A4AC0514E1209E2DD6A5FA393E30094910B69EB3D121CE5D52D1FF
            0031E00A4F3256E5F4D942C729EA7A80484F73C1639FA39BE320EA12DB9B4D9C
            A432DA4B081AAFA3412D292B0B4A5A3FCBFCA12A5952D61180A5FCEAF9B1C671
            D2AEDC710F155C1C8DC160EE542404A4E0E440904C40E09A8EFDE964DB258D96
            A300254920A12770255139246E8EE0E78C0A9FB66B750D38BA69F78D81734BB4
            AE8A2487452AAC830498BE730B6A4BA7E31B98C1CC75BA15CED28608291CD8E1
            3576A2E1BFAB536E4ADDC0CD6AE2ADBED3F36A6E391DB3314C212DB6EACB6CB2
            CA7902109F91B427033D559E2E15DFD1D0F1907D94736D1EA2E2D2E2B2856ADE
            8D28290B494A94A52B504F3292339C9EA92476E3A91FA39BE33ECBC5E8BB5496
            CB6969C6DB64EAC68D8085921485253FCBC5A12339E6C1C9CF7EFC67B56B7E84
            652B8E36A924C2C6D208F6C81F2C408AC35DE582D5B896C0C650B00AA238EDEA
            44F13F2AA5E72C1B99219436CA1E055F3BD15C43A96C807AE529C2B0924740AC
            64FD38BB8FD1D4D32B9A578BAEDBA7C0A4AA4C6B6287AE95AAEC961CF34C2A74
            BD05D4AB7189329090436DBD58AED32224ACA017A42120F31E557A283FA3C7E3
            572EAB0A9CF6D8DFA3C79721B6DCAC54757748CD32085A807244B6A0DE73A696
            1B4025623C37DD201E46947A71B2AF02FF0004DABF87547BBF56F70B32CBBDB7
            0D75C46A8B48AADBA654D8765DAD2A24776AB478922730D2153A64D2E31327C5
            6DB3262B41BC794E149CFB4B6D454FB7F11284A1241528A54318383F3EC440C7
            6AC3BEB9D392C3896CBA5D5B642405214904C0F34678FB39E22B47C1207E19F7
            247AE7BE4FF1FAF1CE30723D7BFAE719C753D7A67DF81C0E2D7556AE781C0E07
            0A50E070381C294381C0E070A50E070381C294381C0E070A50E070381C294381
            C0E070A50E070381C294381C0E070A50E070381C294381C0E070A50E070381C2
            94381C0E070A50E070381C294381C0E070A50E070381C294381C0E070A50E382
            3208CE33EBC0E0702270695F09692939E84F5C9C0C9CE3BFBF6EE7AFD7A703CB
            FAFE1C0E071F9DA0C02260467D2831FCAB94A00CE4939F7EDEBE9FBFF2E01493
            EBFB80E9FC338FF7EBC0E071C800703F58FCAB83C8F9C7E13FD04FAF7AF928ED
            F311E83F8E4751D7FC871F4100104F5C0C75EC7DB39CF6FE3DB81C0E38DA9C63
            8FF4C9F5E3BD735CF20C93800F6071D874FF00DFEFFBB8E0A33EB81D3D067A7D
            460FDFC0E071CC080238E3FDFF009D2BE43401CE7AE739EBF9F7FAF1CF96339C
            F7EFF5C76FBBA70381C000381F6F7AE08079F507EEAE4B60E3D81CFAFE7FF5F5
            E01403EA47BF5FD607B8F53FE5C0E0708133DFE67B7FB573CFF3FD7DD403600C
            7D739F5F4F7CFF001FF97701B48EF93FBCF6FAFBFEFE07038E0A40820771FCC0
            FD7E335C1E40F63FD3F0CFF2AE037818E6CFD48EBFE7FEFF008E782D02319207
            4EDD3B75F7E0703814819EF29FE605734037CBD7989C0C01DBB671EB8CFD7D71
            C72519E9CC41C753EBD73D7BE33FC7A8CF0381C368E4E4FBFEA3F46804718FD0
            FC857C864762494F5E840C60FF00CF3D41FA638E7CBCF5C9041E98F503B67F7F
            51D7A7F1E0703814831CE3D091C47E5FCFD691EB9F9E7F9D02D039EB83D3AFA8
            C7DC47FCBA74E3E0C71FB471D7208C8EA73EA7DFB7D72781C0E0520998ED1FA1
            C48EDE95C47CFB773DBF59F5A1E4241CF311DF3DC8C60FD7FEBB763C0F20103E
            73E9D71E807DFD3DFD08E98E070386C4FA7223BFEBE7EBDE9007EBE5F90AE4B2
            0E7E6233DBA7507DFA9EBD4FA83EDC70580060124600C1EA0E31D7AF63D3D31F
            BF81C0E01204F79F5CE318F962B9F43E9FD31F6FDBCD7D86C6319F980C150E98
            C81D3EBF43E98EBF5096CA73859C124818EC3B0C1EF900633EDD3AF0381C368E
            D8C463D295C067F69593D3271DF04E01F718E98FA0F6E3EBCB1D7AFDDF41D7FC
            C1C7A70381C730266335C0E076983FE826607B50E4EDD4F4FCC9E9D7A77E9C72
            11DBAFA63B01EFEDFF005FC7A0E071C00201F503B98EDF90FF006A0E4FCFFA0A
            E3CBC76511D08FE273F77FD7B741C8463B9CF4C751F8FDFF00F4381C0E39DA3D
            3FD3818FBA9031ED819F97E55F25BEA4F31EBF80FBFD71E99FF99279F2FF00F3
            77FF00AF7E07038E36A7D3FA7A7A47A7681CC8AFD499264C98E73C71CFCAB9E4
            1D304F7C9F5CF6E9EDE9EDFF002E0720241EBDB0467A1FBFAE3F70E9ED8C0E07
            038E768823B1EDF77E55F9898F6AE0B633D3B75E98E83A1FAFD7F3E3E8248C75
            3D3F307FC863EEED8E07038000600A113FAFD60F7A1CBDFEA73FC7191FBF1C70
            5191849E5E84640EA3EA0F7FC781C0E103D07EBFD87DD4000E3F5DBFA573C808
            C1EBF5F53D73DFEFEBD7E87B8CF01284A061230324E3D3AFFEDFF59E0703840C
            7B7BFCB9F5E3BD735FFFD9}
          ColCount = 3
          ColSpacing = 5.000000000000000000
          object det_codbar: TRLDBBarcode
            Left = 0
            Top = 32
            Width = 102
            Height = 17
            Alignment = taCenter
            AutoSize = False
            CheckSumMethod = cmNone
            DataField = 'codbar'
            DataSource = src_etiq_impres
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
          object det_nompro_codpro: TRLDBMemo
            Left = 1
            Top = 0
            Width = 100
            Height = 32
            Alignment = taJustify
            AutoSize = False
            DataField = 'nompro_codpro'
            DataSource = src_etiq_impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
  end
  object src_os01: TDataSource
    DataSet = Tb_os01
    OnDataChange = src_os01DataChange
    Left = 968
    Top = 424
  end
  object src_os05_servexec: TDataSource
    DataSet = cds_os05_servexec
    Left = 560
    Top = 184
  end
  object src_os02_equip_entregue: TDataSource
    DataSet = cds_os02_equip_entregue
    Left = 744
    Top = 32
  end
  object src_os04_pecas_utilizadas: TDataSource
    DataSet = cds_os04_pecas_utilizadas
    Left = 576
    Top = 24
  end
  object src_os03_acessorios: TDataSource
    DataSet = cds_os03_acessorios
    Left = 176
    Top = 232
  end
  object src_etiq_impres: TDataSource
    DataSet = cds_etiq_impres
    Left = 160
    Top = 200
  end
  object Tb_os01: TQuery
    OnCalcFields = Tb_os01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      'OS1CODEMP,'
      'OS1LOTSEQ AS OS1CHAVE_ANO,'
      'OS1CHAVE,'
      'OS1DATA,'
      'OS1DATAAUT,'
      'OS1NOMEAUT,'
      'OS1NOMSOL,'
      'CFONE01 AS OS1FONSOL,'
      'OS1CODCLI,'
      'CRAZAO AS OS1NOMCLI,'
      'CLOG AS OS1END_LOG,'
      'CNUM AS OS1END_NUM,'
      'CLOG AS OS1END_COMPL,'
      'CBAIRRO AS OS1END_BAIRRO,'
      'CCEP AS OS1END_CEP,'
      'CCODLOC AS OS1CODLOC,'
      'OS1CODVEN,'
      'OS1CODTEC,'
      'OS1OPER AS OS1TIPOPGTO,'
      'OS1DEFREC,'
      'OS1OBS01,'
      'OS1DESCBAIXA,'
      'OS1STATUS,'
      'OS1CHAVEPED AS OS1PED_CHAVE,'
      'OS1LOTSEQ_CP AS OS1PED_CHAVE_ANO,'
      'OS1TOTSER,'
      'OS1DESCSER,'
      'OS1TOTSER+OS1TOTPEC AS OS1TOTLIQ_GERAL,'
      'OS1TOTPEC,'
      'OS1DESCPEC,'
      'OS1DATADEV,'
      'OS1DATAAUT,'
      'OS1DATAENT,'
      'OS1CODUSR'
      ',CLOG as endereco_completo'
      ',CDENOM'
      ',CFONE01'
      ',CFAX AS CFAX'
      ',case when CCNPJ>0 THEN CCNPJ ELSE CCPF END AS CNPJ_CPF'
      ',case when CCNPJ>0 THEN CIE ELSE CRG END AS IE_RG'
      ''
      
        ',case when CCNPJ>0 THEN '#39'CNPJ:'#39' ELSE '#39'RG:'#39' END AS tipo_doc_cnpj_' +
        'cpf'
      
        ',case when CCNPJ>0 THEN '#39'Inscri'#231#227'o:'#39' ELSE '#39'RG:'#39' END AS tipo_doc_' +
        'ie_rg'
      ',LNOME'
      ',LUF'
      ''
      ', '#39'Chave: '#39' || OS1CHAVE  AS CHAVE'
      ',case when OS1STATUS=0 then '#39'pendente '#39
      '      when OS1STATUS=1 then '#39'Autorizada '#39
      '      when OS1STATUS=2 then '#39'Faturado '#39
      '      end as status'
      ''
      'from cados01,cadcli,cadloc'
      'where CCODCLI=OS1CODCLI'
      'and LCODLOC=CCODCLI')
    Left = 940
    Top = 424
    object Tb_os01OS1CODEMP: TFloatField
      FieldName = 'OS1CODEMP'
    end
    object Tb_os01OS1CHAVE_ANO: TFloatField
      FieldName = 'OS1CHAVE_ANO'
    end
    object Tb_os01OS1CHAVE: TFloatField
      FieldName = 'OS1CHAVE'
    end
    object Tb_os01OS1DATA: TDateTimeField
      FieldName = 'OS1DATA'
    end
    object Tb_os01OS1DATAAUT: TDateTimeField
      FieldName = 'OS1DATAAUT'
    end
    object Tb_os01OS1NOMEAUT: TStringField
      FieldName = 'OS1NOMEAUT'
      Size = 100
    end
    object Tb_os01OS1NOMSOL: TStringField
      FieldName = 'OS1NOMSOL'
      Size = 100
    end
    object Tb_os01OS1FONSOL: TStringField
      FieldName = 'OS1FONSOL'
    end
    object Tb_os01OS1CODCLI: TFloatField
      FieldName = 'OS1CODCLI'
    end
    object Tb_os01OS1NOMCLI: TStringField
      FieldName = 'OS1NOMCLI'
      Size = 100
    end
    object Tb_os01OS1END_LOG: TStringField
      FieldName = 'OS1END_LOG'
      Size = 150
    end
    object Tb_os01OS1END_NUM: TStringField
      FieldName = 'OS1END_NUM'
    end
    object Tb_os01OS1END_COMPL: TStringField
      FieldName = 'OS1END_COMPL'
      Size = 150
    end
    object Tb_os01OS1END_BAIRRO: TStringField
      FieldName = 'OS1END_BAIRRO'
      Size = 50
    end
    object Tb_os01OS1END_CEP: TStringField
      FieldName = 'OS1END_CEP'
      Size = 9
    end
    object Tb_os01OS1CODLOC: TFloatField
      FieldName = 'OS1CODLOC'
    end
    object Tb_os01OS1CODVEN: TFloatField
      FieldName = 'OS1CODVEN'
    end
    object Tb_os01OS1CODTEC: TFloatField
      FieldName = 'OS1CODTEC'
    end
    object Tb_os01OS1TIPOPGTO: TFloatField
      FieldName = 'OS1TIPOPGTO'
    end
    object Tb_os01OS1DEFREC: TMemoField
      FieldName = 'OS1DEFREC'
      BlobType = ftMemo
    end
    object Tb_os01OS1OBS01: TStringField
      FieldName = 'OS1OBS01'
      Size = 60
    end
    object Tb_os01OS1OBS02: TStringField
      FieldName = 'OS1OBS02'
      Size = 60
    end
    object Tb_os01OS1OBS03: TStringField
      FieldName = 'OS1OBS03'
      Size = 60
    end
    object Tb_os01OS1STATUS: TFloatField
      FieldName = 'OS1STATUS'
    end
    object Tb_os01OS1PED_CHAVE: TFloatField
      FieldName = 'OS1PED_CHAVE'
    end
    object Tb_os01OS1PED_CHAVE_ANO: TFloatField
      FieldName = 'OS1PED_CHAVE_ANO'
    end
    object Tb_os01OS1TOTSER: TFloatField
      FieldName = 'OS1TOTSER'
    end
    object Tb_os01OS1DESCSER: TFloatField
      FieldName = 'OS1DESCSER'
    end
    object Tb_os01OS1TOTLIQ_GERAL: TFloatField
      FieldName = 'OS1TOTLIQ_GERAL'
    end
    object Tb_os01OS1TOTPEC: TFloatField
      FieldName = 'OS1TOTPEC'
    end
    object Tb_os01OS1DESCPEC: TFloatField
      FieldName = 'OS1DESCPEC'
    end
    object Tb_os01OS1DATADEV: TDateTimeField
      FieldName = 'OS1DATADEV'
    end
    object Tb_os01OS1DATAENT: TDateTimeField
      FieldName = 'OS1DATAENT'
    end
    object Tb_os01OS1CODUSR: TFloatField
      FieldName = 'OS1CODUSR'
    end
    object Tb_os01endereco_completo: TStringField
      FieldName = 'endereco_completo'
      Size = 200
    end
    object Tb_os01CDENOM: TStringField
      FieldName = 'CDENOM'
      Size = 100
    end
    object Tb_os01CFONE01: TStringField
      FieldName = 'CFONE01'
    end
    object Tb_os01CFAX: TStringField
      FieldName = 'CFAX'
    end
    object Tb_os01CNPJ_CPF: TFloatField
      FieldName = 'CNPJ_CPF'
    end
    object Tb_os01IE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 60
    end
    object Tb_os01tipo_doc_ie_rg: TStringField
      FieldName = 'tipo_doc_ie_rg'
      Size = 50
    end
    object Tb_os01LNOME: TStringField
      FieldName = 'LNOME'
      Size = 100
    end
    object Tb_os01LUF: TStringField
      FieldName = 'LUF'
      Size = 2
    end
    object Tb_os01CHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object Tb_os01status: TStringField
      FieldName = 'status'
      Size = 100
    end
    object Tb_os01OS1DESCBAIXA: TMemoField
      FieldName = 'OS1DESCBAIXA'
      BlobType = ftMemo
    end
    object Tb_os01codbar: TStringField
      FieldKind = fkCalculated
      FieldName = 'codbar'
      Calculated = True
    end
    object Tb_os01tipo_doc_cnpj_cpf: TStringField
      FieldName = 'tipo_doc_cnpj_cpf'
    end
    object Tb_os01nomtec: TStringField
      FieldName = 'nomtec'
      Size = 100
    end
    object Tb_os01registrogeral: TStringField
      FieldName = 'registrogeral'
      Size = 100
    end
    object Tb_os01OS1PORTPAROVMOD: TStringField
      FieldName = 'OS1PORTPAROVMOD'
      Size = 40
    end
    object Tb_os01OS1NUMIMMETRO: TStringField
      FieldName = 'OS1NUMIMMETRO'
      Size = 40
    end
    object Tb_os01OS1NUMMARCSELRET: TStringField
      FieldName = 'OS1NUMMARCSELRET'
      Size = 40
    end
    object Tb_os01OS1NUMMARCREPRET: TStringField
      FieldName = 'OS1NUMMARCREPRET'
      Size = 40
    end
    object Tb_os01OS1NUMMARCSELAFIX: TStringField
      FieldName = 'OS1NUMMARCSELAFIX'
      Size = 40
    end
    object Tb_os01OS1NUMMARCREPAFIX: TStringField
      FieldName = 'OS1NUMMARCREPAFIX'
      Size = 40
    end
    object Tb_os01cpf: TFloatField
      FieldName = 'cpf'
      LookupDataSet = cds_etiq_impres
    end
    object Tb_os01OS1NUMRAT: TStringField
      FieldName = 'OS1NUMRAT'
      Size = 40
    end
    object Tb_os01OS1HORAENT: TStringField
      FieldName = 'OS1HORAENT'
      Size = 10
    end
    object Tb_os01OS1HORADEV: TStringField
      FieldName = 'OS1HORADEV'
      Size = 10
    end
  end
  object cds_etiq_impres: TRxMemoryData
    FieldDefs = <>
    Left = 132
    Top = 192
    object cds_etiq_imprescodbar: TStringField
      FieldName = 'codbar'
    end
    object cds_etiq_impresnompro_codpro: TStringField
      FieldName = 'nompro_codpro'
      Size = 200
    end
  end
  object cds_os03_acessorios: TRxMemoryData
    FieldDefs = <>
    Left = 188
    Top = 224
    object cds_os03_acessoriosOS3NOME: TStringField
      FieldName = 'OS3NOME'
      Size = 100
    end
    object cds_os03_acessoriosOS3UND: TStringField
      FieldName = 'OS3UND'
      Size = 3
    end
    object cds_os03_acessoriosOS3OBS: TMemoField
      FieldName = 'OS3OBS'
      BlobType = ftMemo
    end
    object cds_os03_acessoriosOS3ITEM: TStringField
      FieldName = 'OS3ITEM'
      Size = 3
    end
    object cds_os03_acessoriosOS3CODPRO: TStringField
      FieldName = 'OS3CODPRO'
    end
    object cds_os03_acessoriosOS3QTD: TStringField
      FieldName = 'OS3QTD'
    end
  end
  object cds_os04_pecas_utilizadas: TRxMemoryData
    FieldDefs = <>
    Left = 508
    Top = 72
    object cds_os04_pecas_utilizadasOS4NOME: TStringField
      FieldName = 'OS4NOME'
      Size = 100
    end
    object cds_os04_pecas_utilizadasOS4MARCA: TStringField
      FieldName = 'OS4MARCA'
      Size = 50
    end
    object cds_os04_pecas_utilizadasOS4UND: TStringField
      FieldName = 'OS4UND'
      Size = 5
    end
    object cds_os04_pecas_utilizadasOS4OBS: TMemoField
      FieldName = 'OS4OBS'
      BlobType = ftMemo
    end
    object cds_os04_pecas_utilizadasOS4ITEM: TStringField
      FieldName = 'OS4ITEM'
      Size = 3
    end
    object cds_os04_pecas_utilizadasOS4CODPRO: TStringField
      FieldName = 'OS4CODPRO'
    end
    object cds_os04_pecas_utilizadasOS4QTD: TStringField
      FieldName = 'OS4QTD'
    end
    object cds_os04_pecas_utilizadasOS4PU: TStringField
      FieldName = 'OS4PU'
    end
    object cds_os04_pecas_utilizadasOS4TOTDES: TStringField
      FieldName = 'OS4TOTDES'
    end
    object cds_os04_pecas_utilizadasOS4TOTLIQ: TStringField
      FieldName = 'OS4TOTLIQ'
    end
    object cds_os04_pecas_utilizadasVALOR_TOTAL: TStringField
      FieldName = 'VALOR_TOTAL'
    end
    object cds_os04_pecas_utilizadasOS4PERCDES: TStringField
      FieldName = 'OS4PERCDES'
    end
  end
  object cds_os02_equip_entregue: TRxMemoryData
    FieldDefs = <>
    Left = 668
    Top = 56
    object cds_os02_equip_entregueOS2MODELO: TStringField
      FieldName = 'OS2MODELO'
      Size = 100
    end
    object cds_os02_equip_entregueOS2MARCA: TStringField
      FieldName = 'OS2MARCA'
      Size = 50
    end
    object cds_os02_equip_entregueOS2SERIE: TStringField
      FieldName = 'OS2SERIE'
      Size = 50
    end
    object cds_os02_equip_entregueOS2NUMPAT: TStringField
      FieldName = 'OS2NUMPAT'
      Size = 100
    end
    object cds_os02_equip_entregueOS2NOME: TStringField
      FieldName = 'OS2NOME'
      Size = 150
    end
    object cds_os02_equip_entregueOS2UND: TStringField
      FieldName = 'OS2UND'
      Size = 5
    end
    object cds_os02_equip_entregueOS2OBS: TMemoField
      FieldName = 'OS2OBS'
      BlobType = ftMemo
    end
    object cds_os02_equip_entregueOS2ITEM: TStringField
      FieldName = 'OS2ITEM'
      Size = 3
    end
    object cds_os02_equip_entregueOS2CODPRO: TStringField
      FieldName = 'OS2CODPRO'
    end
  end
  object cds_os05_servexec: TRxMemoryData
    FieldDefs = <>
    Left = 516
    Top = 184
    object cds_os05_servexecOS5NOME: TStringField
      FieldName = 'OS5NOME'
      Size = 100
    end
    object cds_os05_servexecOS5OBS: TMemoField
      FieldName = 'OS5OBS'
      BlobType = ftMemo
    end
    object cds_os05_servexecOS5ITEM: TStringField
      FieldName = 'OS5ITEM'
      Size = 3
    end
    object cds_os05_servexecOS5QTD: TStringField
      FieldName = 'OS5QTD'
    end
    object cds_os05_servexecOS5PU: TStringField
      FieldName = 'OS5PU'
    end
    object cds_os05_servexecVALOR_TOTAL: TStringField
      FieldName = 'VALOR_TOTAL'
    end
    object cds_os05_servexecOS5CODPRO: TStringField
      FieldName = 'OS5CODPRO'
    end
    object cds_os05_servexecTOTAL_DESCONTOS: TStringField
      FieldName = 'TOTAL_DESCONTOS'
    end
    object cds_os05_servexecTOTAL_LIQUIDO: TStringField
      FieldName = 'TOTAL_LIQUIDO'
    end
  end
  object mem_bxtecnica: TRxMemoryData
    FieldDefs = <>
    Left = 652
    Top = 120
    object mem_bxtecnicaBTNOME: TMemoField
      FieldName = 'BTNOME'
      BlobType = ftMemo
    end
  end
  object src_mem_bxtecnica: TDataSource
    DataSet = mem_bxtecnica
    Left = 696
    Top = 136
  end
  object PDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 924
    Top = 272
  end
end
