object Frm_MDFE_Impressao: TFrm_MDFE_Impressao
  Left = 192
  Top = 124
  Width = 928
  Height = 584
  Caption = 'Frm_MDFE_Impressao'
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
    Width = 920
    Height = 553
    ActivePage = tsMDFEMod01
    Align = alClient
    TabOrder = 0
    object tsMDFEMod01: TTabSheet
      Caption = 'Modelo 01'
      object rLDamDFE_mod01: TRLReport
        Left = 72
        Top = -24
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_MDFE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = rLDamDFE_mod01BeforePrint
        object RLmod01_cab01: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 102
          BeforePrint = RLmod01_cab01BeforePrint
          object RLImageMod01Logo: TRLImage
            Left = 0
            Top = 0
            Width = 98
            Height = 82
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Stretch = True
          end
          object RLImageMod01QrCode: TRLImage
            Left = 618
            Top = 0
            Width = 98
            Height = 102
            Align = faRight
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Stretch = True
          end
          object rllblmod01_razsoc: TRLLabel
            Left = 102
            Top = 4
            Width = 513
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object rllblmod01_endereco: TRLLabel
            Left = 102
            Top = 23
            Width = 513
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object rllblmod01_cidade_cep: TRLLabel
            Left = 102
            Top = 43
            Width = 513
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object rllblmod01_cnpj_ie_rntrc: TRLLabel
            Left = 101
            Top = 62
            Width = 513
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object RLLabel1: TRLLabel
            Left = 2
            Top = 81
            Width = 509
            Height = 16
            Caption = 
              'DAMMDFE - Documento auxiliar de manifesto Eletr'#244'nico de Document' +
              'os Fiscais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLmod01_cab02: TRLBand
          Left = 39
          Top = 141
          Width = 716
          Height = 35
          object rllblmod01_cabmod: TRLLabel
            Left = 1
            Top = 0
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Modelo'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object rldbmod01_cabmod: TRLDBText
            Left = 1
            Top = 16
            Width = 58
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_MOD'
            DataSource = Src_MDFE
            Holder = rllblmod01_cabmod
            ParentColor = False
            Transparent = False
          end
          object rllblMod01Serie: TRLLabel
            Left = 59
            Top = 0
            Width = 42
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'S'#233'rie'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object rldbMod01Serie: TRLDBText
            Left = 59
            Top = 16
            Width = 42
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_SERIE'
            DataSource = Src_MDFE
            Holder = rllblMod01Serie
            ParentColor = False
            Transparent = False
          end
          object RLLabel2: TRLLabel
            Left = 100
            Top = 0
            Width = 62
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'N'#250'mero'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText1: TRLDBText
            Left = 100
            Top = 16
            Width = 62
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_NUMERO'
            DataSource = Src_MDFE
            Holder = RLLabel2
            ParentColor = False
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 161
            Top = 0
            Width = 62
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Folha'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 162
            Top = 16
            Width = 28
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = clSilver
            Info = itPageNumber
            ParentColor = False
            Transparent = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 189
            Top = 16
            Width = 34
            Height = 16
            AutoSize = False
            Color = clSilver
            Info = itLastPageNumber
            ParentColor = False
            Text = '/'
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 222
            Top = 0
            Width = 160
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data e Hora da Emiss'#227'o'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText2: TRLDBText
            Left = 222
            Top = 16
            Width = 160
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_DHEMI'
            DataSource = Src_MDFE
            Holder = RLLabel4
            ParentColor = False
            Transparent = False
          end
          object RLLabel5: TRLLabel
            Left = 381
            Top = 0
            Width = 110
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'UF Carregamento'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText3: TRLDBText
            Left = 381
            Top = 16
            Width = 110
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'uf_carregamento'
            DataSource = Src_MDFE
            Holder = RLLabel5
            ParentColor = False
            Transparent = False
          end
          object RLLabel6: TRLLabel
            Left = 490
            Top = 0
            Width = 134
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'UF Descarregamento'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText4: TRLDBText
            Left = 490
            Top = 16
            Width = 134
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'uf_descarregamento'
            DataSource = Src_MDFE
            Holder = RLLabel6
            ParentColor = False
            Transparent = False
          end
        end
        object RLmod01_cab03: TRLBand
          Left = 39
          Top = 176
          Width = 716
          Height = 107
          object RLLabel7: TRLLabel
            Left = 2
            Top = -1
            Width = 186
            Height = 16
            Caption = 'Modelo Rodovi'#225'rio de Carga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 303
            Top = 3
            Width = 275
            Height = 16
            AutoSize = False
            Caption = 'Controle do Fisco'
            Layout = tlCenter
          end
          object RLLabel9: TRLLabel
            Left = 1
            Top = 19
            Width = 78
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtde Cte'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText5: TRLDBText
            Left = 1
            Top = 35
            Width = 78
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_TOT_QCTE'
            DataSource = Src_MDFE
            Holder = RLLabel9
            ParentColor = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 81
            Top = 19
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtde NFe'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText6: TRLDBText
            Left = 81
            Top = 35
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_TOT_QNFE'
            DataSource = Src_MDFE
            Holder = RLLabel10
            ParentColor = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 167
            Top = 19
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Peso Total(kg)'
            Color = clSilver
            ParentColor = False
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 167
            Top = 35
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Color = clSilver
            DataField = 'MDFE_TOT_QCARGA'
            DataSource = Src_MDFE
            Holder = RLLabel11
            ParentColor = False
            Transparent = False
          end
          object RLDBBarcode2: TRLDBBarcode
            Left = 303
            Top = 21
            Width = 412
            Height = 74
            AutoSize = False
            BarcodeType = bcCode128C
            CheckSumMethod = cmNone
            DataField = 'MDFE_CHV_MDFE'
            DataSource = Src_MDFE
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
          end
        end
        object RLmod01_cab04_norma: TRLBand
          Left = 39
          Top = 283
          Width = 716
          Height = 60
          object RLLabel12: TRLLabel
            Left = 2
            Top = 3
            Width = 165
            Height = 16
            Caption = 'Protocolo de Autoriza'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rllblmod01_prot_dathor: TRLLabel
            Left = 3
            Top = 20
            Width = 278
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object RLLabel13: TRLLabel
            Left = 350
            Top = 1
            Width = 112
            Height = 16
            Caption = 'Chave de Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rllblmod01_chv_mdfe_mask: TRLLabel
            Left = 351
            Top = 18
            Width = 362
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object RLLabel14: TRLLabel
            Left = 350
            Top = 35
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'Consulte em'
            Layout = tlCenter
          end
          object RLLabel15: TRLLabel
            Left = 415
            Top = 37
            Width = 298
            Height = 14
            Caption = 'https://dfe-portal.sefazvirtual.rs.gov.br/MDFe/consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLmod01_cab04_contigencia: TRLBand
          Left = 39
          Top = 343
          Width = 716
          Height = 60
          BeforePrint = RLmod01_cab04_contigenciaBeforePrint
          object RLLabel16: TRLLabel
            Left = 2
            Top = 3
            Width = 165
            Height = 16
            Caption = 'Protocolo de Autoriza'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 3
            Top = 20
            Width = 152
            Height = 16
            AutoSize = False
            Caption = 'EMISSAO EM CONTIGENCIA'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel18: TRLLabel
            Left = 350
            Top = 1
            Width = 112
            Height = 16
            Caption = 'Chave de Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 351
            Top = 18
            Width = 362
            Height = 16
            AutoSize = False
            Layout = tlCenter
          end
          object RLLabel20: TRLLabel
            Left = 350
            Top = 35
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'Consulte em'
            Layout = tlCenter
          end
          object RLLabel21: TRLLabel
            Left = 415
            Top = 37
            Width = 298
            Height = 14
            Caption = 'https://dfe-portal.sefazvirtual.rs.gov.br/MDFe/consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 154
            Top = 20
            Width = 142
            Height = 16
            AutoSize = False
            Caption = 'obrigat'#243'rio a autorizacao em '
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rllblmod01_obs_contigencia: TRLLabel
            Left = 2
            Top = 35
            Width = 294
            Height = 16
            AutoSize = False
            Caption = '168 horas apos esta emiss'#227'o 13/06/2019 16:30'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object RLSDMod01_Veiculo_Condutor: TRLSubDetail
          Left = 39
          Top = 403
          Width = 716
          Height = 59
          DataSource = src_veiculo_condurtor
          object rlcabsdmod01_veiculo_condutor: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 37
            BandType = btHeader
            object RLLabel23: TRLLabel
              Left = 2
              Top = 3
              Width = 52
              Height = 16
              Caption = 'Veiculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel24: TRLLabel
              Left = 354
              Top = 2
              Width = 62
              Height = 16
              Caption = 'Condutor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel25: TRLLabel
              Left = 3
              Top = 18
              Width = 332
              Height = 16
              AutoSize = False
              Caption = 
                'Placa                               RNTRC                       ' +
                '                                  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsUnderline]
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel26: TRLLabel
              Left = 357
              Top = 17
              Width = 353
              Height = 16
              AutoSize = False
              Caption = 
                'CPF                              Nome                           ' +
                '                                           '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsUnderline]
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 37
            Width = 716
            Height = 16
            object RLDBText8: TRLDBText
              Left = 6
              Top = -1
              Width = 59
              Height = 14
              AutoSize = False
              DataField = 'placa'
              DataSource = src_veiculo_condurtor
            end
            object RLDBText9: TRLDBText
              Left = 126
              Top = -1
              Width = 203
              Height = 14
              AutoSize = False
              DataField = 'rntrc'
              DataSource = src_veiculo_condurtor
            end
            object RLDBText10: TRLDBText
              Left = 356
              Top = -1
              Width = 109
              Height = 14
              AutoSize = False
              DataField = 'cpf'
              DataSource = src_veiculo_condurtor
            end
            object RLDBText11: TRLDBText
              Left = 466
              Top = -1
              Width = 247
              Height = 14
              AutoSize = False
              DataField = 'nome'
              DataSource = src_veiculo_condurtor
            end
          end
        end
        object RLSDMod01_VlalePedagio: TRLSubDetail
          Left = 39
          Top = 462
          Width = 716
          Height = 64
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 33
            BandType = btHeader
            object RLLabel27: TRLLabel
              Left = 2
              Top = 0
              Width = 90
              Height = 16
              Caption = 'Vale Pedagio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel28: TRLLabel
              Left = 3
              Top = 15
              Width = 332
              Height = 16
              AutoSize = False
              Caption = 
                'Responsavel CNPJ  Fornecedor CNPJ            No.Comprovante     ' +
                '     '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsUnderline]
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 33
            Width = 716
            Height = 16
            object RLDBText12: TRLDBText
              Left = 6
              Top = -1
              Width = 87
              Height = 14
              AutoSize = False
              DataField = 'VP_CNPJ_PAGADOR'
              DataSource = src_CadVlPedagio
            end
            object RLDBText13: TRLDBText
              Left = 102
              Top = -2
              Width = 106
              Height = 14
              AutoSize = False
              DataField = 'VP_CNPJ_FORNECEDOR'
              DataSource = src_CadVlPedagio
            end
            object RLDBText14: TRLDBText
              Left = 219
              Top = -1
              Width = 116
              Height = 14
              AutoSize = False
              DataField = 'VP_NUM_COMPROVANTE'
              DataSource = src_CadVlPedagio
            end
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 39
          Top = 526
          Width = 716
          Height = 75
          DataSource = src_CTEeNFe
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 40
            BandType = btHeader
            object RLLabel29: TRLLabel
              Left = 2
              Top = 3
              Width = 714
              Height = 16
              Caption = 
                'Informa'#231#245'es da Composi'#231#227'o da Carga                              ' +
                '                                                                ' +
                '                       '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object RLLabel30: TRLLabel
              Left = 3
              Top = 20
              Width = 710
              Height = 16
              AutoSize = False
              Caption = 
                'Informa'#231#245'es dos documentos fiscais vnculados ao manifesto       ' +
                '     informa'#231#245'es da unidade de transporte          Informa'#231#245'es d' +
                'a unidade de carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsUnderline]
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 40
            Width = 716
            Height = 16
            object RLDBText15: TRLDBText
              Left = 6
              Top = 0
              Width = 299
              Height = 14
              AutoSize = False
              DataField = 'chv_acesso_mask'
              DataSource = src_CTEeNFe
            end
            object RLDBText16: TRLDBText
              Left = 336
              Top = 0
              Width = 183
              Height = 14
              AutoSize = False
              DataField = 'unidade_transporte'
              DataSource = src_CTEeNFe
            end
            object RLDBText17: TRLDBText
              Left = 552
              Top = 0
              Width = 157
              Height = 14
              AutoSize = False
              DataField = 'unidade_carga'
              DataSource = src_CTEeNFe
            end
          end
        end
        object RLBand6: TRLBand
          Left = 39
          Top = 601
          Width = 716
          Height = 48
          BandType = btSummary
          object RLLabel31: TRLLabel
            Left = 2
            Top = 3
            Width = 709
            Height = 16
            Caption = 
              'Observa'#231#245'es                                                     ' +
              '                                                                ' +
              '                                       '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
      end
    end
    object tsQrCode: TTabSheet
      Caption = 'tsQrCode'
      ImageIndex = 1
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
        Left = 624
        Top = 152
        Width = 201
        Height = 209
        OnPaint = PaintBox1Paint
      end
      object Image1: TImage
        Left = 176
        Top = 197
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
  end
  object tb_MDFE: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      
        'MDFE_VT_PLACA,MDFE_VT_RNTRC,MDFE_CHV_MDFE,MDFE_NUMERO,MDFE_VERSA' +
        'O_XML,MDFE_MOD'
      ',MDFE_DHINCLUSAO,MDFE_TOT_VCARGA,MDFE_TOT_QNFE'
      ',MDFE_TPAMB'
      'from Mdfe_Cadmdfe'
      '')
    Left = 764
    Top = 56
    object tb_MDFEMDFE_VT_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'MDFE_VT_PLACA'
      Size = 7
    end
    object tb_MDFEMDFE_VT_TARA: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'MDFE_VT_TARA'
    end
    object tb_MDFEMDFE_VT_RENAVAN: TStringField
      DisplayLabel = 'Renavan'
      FieldName = 'MDFE_VT_RENAVAN'
      Size = 11
    end
    object tb_MDFEMDFE_TOT_QNFE: TFloatField
      DisplayLabel = 'Qtde Total de NFe'
      FieldName = 'MDFE_TOT_QNFE'
    end
    object tb_MDFEMDFE_TOT_VCARGA: TFloatField
      DisplayLabel = 'Valor total da Carga'
      FieldName = 'MDFE_TOT_VCARGA'
    end
    object tb_MDFEMDFE_TOT_QCARGA: TFloatField
      DisplayLabel = 'Peso Bruto da Carga / Mercadoria Transportada:'
      FieldName = 'MDFE_TOT_QCARGA'
    end
    object tb_MDFEMDFE_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'MDFE_NUMERO'
    end
    object tb_MDFEMDFE_VERSAO_XML: TStringField
      DisplayLabel = 'Vers'#227'o do XML'
      FieldName = 'MDFE_VERSAO_XML'
      Size = 6
    end
    object tb_MDFEMDFE_MOD: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDFE_MOD'
      Size = 2
    end
    object tb_MDFEMDFE_SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'MDFE_SERIE'
      Size = 3
    end
    object tb_MDFEMDFE_DHEMI: TDateTimeField
      DisplayLabel = 'Data e Hora da Emiss'#227'o'
      FieldName = 'MDFE_DHEMI'
    end
    object tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField
      DisplayLabel = 'Data e Hora da Viagem'
      FieldName = 'MDFE_DHINIVIAGEM'
    end
    object tb_MDFEMDFE_MODAL: TStringField
      DisplayLabel = 'Modalidade do Transporte'
      FieldName = 'MDFE_MODAL'
      Size = 1
    end
    object tb_MDFEMDFE_ID: TFloatField
      DisplayLabel = 'Chave ID'
      FieldName = 'MDFE_ID'
    end
    object tb_MDFEMDFE_TPPROP: TStringField
      FieldName = 'MDFE_TPPROP'
      Size = 1
    end
    object tb_MDFEMDFE_DHINCLUSAO: TDateTimeField
      DisplayLabel = 'Data/Hora Inclusao'
      FieldName = 'MDFE_DHINCLUSAO'
    end
    object tb_MDFEMDFE_TPAMB: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'MDFE_TPAMB'
      Size = 1
    end
    object tb_MDFEMDFE_CHV_MDFE: TStringField
      DisplayLabel = 'Achave de Acesso'
      FieldName = 'MDFE_CHV_MDFE'
      Size = 60
    end
    object tb_MDFEMDFE_STATUS: TFloatField
      FieldName = 'MDFE_STATUS'
    end
    object tb_MDFEMDFE_TOT_QCTE: TFloatField
      FieldName = 'MDFE_TOT_QCTE'
    end
    object tb_MDFEMDFE_PROP_RNTRC: TStringField
      FieldName = 'MDFE_PROP_RNTRC'
      Size = 8
    end
    object tb_MDFEuf_carregamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'uf_carregamento'
      Size = 2
      Calculated = True
    end
    object tb_MDFEuf_descarregamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'uf_descarregamento'
      Calculated = True
    end
    object tb_MDFEMDFE_TPEMIS: TStringField
      FieldName = 'MDFE_TPEMIS'
      Size = 1
    end
    object tb_MDFEMDFE_ENVIO_NPROT: TStringField
      FieldName = 'MDFE_ENVIO_NPROT'
    end
    object tb_MDFEMDFE_ENVIO_DTHOR: TDateTimeField
      FieldName = 'MDFE_ENVIO_DTHOR'
    end
  end
  object Src_MDFE: TDataSource
    DataSet = tb_MDFE
    Left = 780
    Top = 88
  end
  object cds_veiculo_condutor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 578
    Top = 119
    object cds_veiculo_condutorplaca: TStringField
      FieldName = 'placa'
      Size = 9
    end
    object cds_veiculo_condutorrntrc: TStringField
      FieldName = 'rntrc'
    end
    object cds_veiculo_condutorcpf: TStringField
      FieldName = 'cpf'
    end
    object cds_veiculo_condutornome: TStringField
      FieldName = 'nome'
      Size = 200
    end
  end
  object src_veiculo_condurtor: TDataSource
    DataSet = cds_veiculo_condutor
    Left = 620
    Top = 120
  end
  object Tb_CadVlPedagio: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select VP_ID,VP_CNPJ_FORNECEDOR,VP_CNPJ_PAGADOR,VP_CPF_PAGADOR'
      ',VP_NUM_COMPROVANTE,VP_VALOR_VALE'
      'from MDFE_CADVLPEDAGIO')
    Left = 740
    Top = 96
    object Tb_CadVlPedagioVP_ID: TFloatField
      FieldName = 'VP_ID'
    end
    object Tb_CadVlPedagioVP_CNPJ_FORNECEDOR: TStringField
      FieldName = 'VP_CNPJ_FORNECEDOR'
    end
    object Tb_CadVlPedagioVP_CNPJ_PAGADOR: TStringField
      FieldName = 'VP_CNPJ_PAGADOR'
    end
    object Tb_CadVlPedagioVP_CPF_PAGADOR: TStringField
      FieldName = 'VP_CPF_PAGADOR'
    end
    object Tb_CadVlPedagioVP_NUM_COMPROVANTE: TStringField
      FieldName = 'VP_NUM_COMPROVANTE'
    end
    object Tb_CadVlPedagioVP_VALOR_VALE: TFloatField
      FieldName = 'VP_VALOR_VALE'
    end
  end
  object src_CadVlPedagio: TDataSource
    DataSet = Tb_CadVlPedagio
    Left = 756
    Top = 128
  end
  object Tb_CTEeNFe: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_CTEeNFeCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select '#39'NFe'#39' as tipo_doc '
      ', MNF_CHV_NFE as chv_cte '
      ' from MDFE_CADMANIFESTO'
      ' ')
    Left = 668
    Top = 128
    object Tb_CTEeNFetipo_doc: TStringField
      FieldName = 'tipo_doc'
      Size = 10
    end
    object Tb_CTEeNFechv_acesso: TStringField
      FieldName = 'chv_acesso'
      Size = 50
    end
    object Tb_CTEeNFeunidade_carga: TStringField
      FieldKind = fkCalculated
      FieldName = 'unidade_carga'
      Size = 100
      Calculated = True
    end
    object Tb_CTEeNFeunidade_transporte: TStringField
      FieldKind = fkCalculated
      FieldName = 'unidade_transporte'
      Calculated = True
    end
    object Tb_CTEeNFechv_acesso_mask: TStringField
      FieldKind = fkCalculated
      FieldName = 'chv_acesso_mask'
      Size = 60
      Calculated = True
    end
  end
  object src_CTEeNFe: TDataSource
    DataSet = Tb_CTEeNFe
    Left = 700
    Top = 128
  end
end
