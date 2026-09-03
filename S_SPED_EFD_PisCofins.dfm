object Frm_SPED_EFD_PisCofins: TFrm_SPED_EFD_PisCofins
  Left = 265
  Top = 102
  Width = 928
  Height = 547
  Caption = 'SPED - Contribui'#231#245'es (pis/cofins)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 490
    Width = 920
    Height = 26
    Align = alBottom
    TabOrder = 0
    object bbGerar: TBitBtn
      Left = 10
      Top = 1
      Width = 151
      Height = 22
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = bbGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 574
      Top = 1
      Width = 151
      Height = 22
      Caption = 'Sair'
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
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 920
    Height = 490
    ActivePage = tsEntrada
    Align = alClient
    TabOrder = 1
    object tsGeral: TTabSheet
      Caption = 'Principal'
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 194
        Top = 10
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 561
        Top = 8
        Width = 104
        Height = 13
        Caption = 'Vers'#227'o do Layout:'
      end
      object Label4: TLabel
        Left = 86
        Top = 35
        Width = 102
        Height = 13
        Caption = 'Tipo da Escritura:'
      end
      object lbl_numrec_esc: TLabel
        Left = 325
        Top = 29
        Width = 344
        Height = 13
        Caption = 'N'#250'mero do Recibo da Escritura'#231#227'o anterior a ser Retificada:'
      end
      object Label5: TLabel
        Left = 9
        Top = 58
        Width = 179
        Height = 13
        Caption = 'Indicador de situa'#231#227'o especial:'
      end
      object Label15: TLabel
        Left = 2
        Top = 79
        Width = 181
        Height = 13
        Caption = 'Nome do Arquivo a Ser Gerado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbnsalvar: TSpeedButton
        Left = 725
        Top = 77
        Width = 23
        Height = 22
        Caption = '...'
      end
      object Label47: TLabel
        Left = 122
        Top = 107
        Width = 62
        Height = 13
        Caption = 'Inventario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_datini: TDateEdit
        Left = 76
        Top = 6
        Width = 103
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object edt_datfin: TDateEdit
        Left = 221
        Top = 5
        Width = 103
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object edt_versao: TEdit
        Left = 671
        Top = 1
        Width = 76
        Height = 21
        MaxLength = 41
        TabOrder = 2
        Text = '006'
      end
      object cb_tipo_escritura: TComboBox
        Left = 193
        Top = 30
        Width = 119
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = '0 - Original'
        Items.Strings = (
          '0 - Original'
          '1 - Retificadora')
      end
      object edt_numrec_esc_ant: TEdit
        Left = 671
        Top = 24
        Width = 195
        Height = 21
        MaxLength = 41
        TabOrder = 4
      end
      object cb_ind_sit_ESP: TComboBox
        Left = 193
        Top = 55
        Width = 119
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = '0 - Abertura'
        Items.Strings = (
          '0 - Abertura'
          '1 - Cis'#227'o'
          '2 - Fus'#227'o'
          '3 - Incorpora'#231#227'o'
          '4 '#8211' Encerramento')
      end
      object edt_nomarq: TEdit
        Left = 191
        Top = 79
        Width = 529
        Height = 21
        TabOrder = 6
        Text = 'C:\SGE\EFD_PISCOFINS_012011.TXT'
      end
      object CB_INVENTARIO: TComboBox
        Left = 192
        Top = 103
        Width = 530
        Height = 21
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 7
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 184
        Width = 225
        Height = 185
        Caption = 'CFOP Validos:'
        TabOrder = 8
        Visible = False
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 221
          Height = 168
          Align = alClient
          DataSource = src_cfop_validos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'cfop_valido'
              Title.Alignment = taCenter
              Width = 91
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 248
        Top = 200
        Width = 345
        Height = 73
        TabOrder = 9
        object Label24: TLabel
          Left = 5
          Top = 21
          Width = 186
          Height = 13
          Caption = 'C'#243'digo Tabela 4.3.10 p/CST 04:'
        end
        object StaticText13: TStaticText
          Left = 208
          Top = 3
          Width = 46
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'PIS'
          TabOrder = 0
        end
        object StaticText14: TStaticText
          Left = 253
          Top = 3
          Width = 46
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Cofins'
          TabOrder = 1
        end
        object edt_tab4_3_10_pis: TEdit
          Left = 208
          Top = 19
          Width = 46
          Height = 21
          AutoSize = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Text = '201'
        end
        object edt_tab4_3_10_cofins: TEdit
          Left = 253
          Top = 19
          Width = 46
          Height = 21
          AutoSize = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = '201'
        end
      end
      object CB_M200: TCheckBox
        Left = 688
        Top = 216
        Width = 97
        Height = 17
        Caption = 'Gerar M200'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object CB_M400: TCheckBox
        Left = 688
        Top = 237
        Width = 97
        Height = 17
        Caption = 'Gerar M400'
        TabOrder = 11
      end
      object CB_M600: TCheckBox
        Left = 688
        Top = 257
        Width = 97
        Height = 17
        Caption = 'Gerar M600'
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
      object CB_M800: TCheckBox
        Left = 688
        Top = 279
        Width = 97
        Height = 17
        Caption = 'Gerar M800'
        TabOrder = 13
      end
    end
    object tsEventos: TTabSheet
      Caption = 'Eventos'
      ImageIndex = 1
      object memo_erros: TRichEdit
        Left = 0
        Top = 0
        Width = 912
        Height = 462
        Align = alClient
        Lines.Strings = (
          'memo_erros')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 2
      object memo1: TRichEdit
        Left = 0
        Top = 0
        Width = 912
        Height = 462
        Align = alClient
        Lines.Strings = (
          'memo_erros')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsEntrada: TTabSheet
      Caption = 'Entrada de Dados'
      ImageIndex = 3
      object Label6: TLabel
        Left = 9
        Top = 58
        Width = 300
        Height = 13
        Caption = 'C'#243'digo indicador da incid'#234'ncia tribut'#225'ria no per'#237'odo:'
        Color = 16774388
        ParentColor = False
      end
      object Label7: TLabel
        Left = 10
        Top = 80
        Width = 300
        Height = 39
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'C'#243'd ind m'#233'todo apropria'#231#227'o de cr'#233'ditos no caso de incid'#234'ncia no ' +
          'regime n'#227'ocumulativo (COD_INC_TRIB = 1 ou 3):'
        Color = 15138790
        ParentColor = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 10
        Top = 125
        Width = 298
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'digo indicador do Tipo de Contribui'#231#227'o Apurada no Periodo:'
        Color = 16774388
        ParentColor = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 9
        Top = 162
        Width = 300
        Height = 82
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'C'#243'digo indicador do crit'#233'rio de escritura'#231#227'o e apura'#231#227'o adotado,' +
          ' no caso de incid'#234'ncia exclusivamente no regime cumulativo (COD_' +
          'INC_TRIB = 2), pela pessoa jur'#237'dica submetida ao regime de tribu' +
          'ta'#231#227'o com base no lucro presumido:'
        Color = 15138790
        ParentColor = False
        WordWrap = True
      end
      object Label13: TLabel
        Left = 9
        Top = 6
        Width = 297
        Height = 13
        Caption = 'Indicador da apura'#231#227'o das contribui'#231#245'es e cr'#233'ditos:'
        Color = 16774388
        ParentColor = False
        Visible = False
      end
      object Label14: TLabel
        Left = 9
        Top = 283
        Width = 251
        Height = 13
        Caption = 'Descri'#231#227'o do Credito Registro(M105/M510):'
        Color = 16774388
        ParentColor = False
      end
      object Label16: TLabel
        Left = 341
        Top = 304
        Width = 204
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo da Receita M205-M605 Pis:'
        Color = 16774388
        ParentColor = False
      end
      object Label17: TLabel
        Left = 600
        Top = 304
        Width = 231
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo da Receita M205-M605 Cofins:'
        Color = 16774388
        ParentColor = False
      end
      object Label18: TLabel
        Left = 9
        Top = 30
        Width = 297
        Height = 13
        AutoSize = False
        Caption = 'C'#243'digo da contribui'#231#227'o social M210/M610:'
        Color = 16774388
        ParentColor = False
      end
      object Label19: TLabel
        Left = 4
        Top = 327
        Width = 311
        Height = 13
        AutoSize = False
        Caption = 'Codigo de Detalhamento da Contribuicao M205/M605:'
        Color = 16774388
        ParentColor = False
      end
      object Label20: TLabel
        Left = 9
        Top = 359
        Width = 219
        Height = 13
        AutoSize = False
        Caption = 'Tipo das Notas'
        Color = 16774388
        ParentColor = False
      end
      object cb_COD_INC_TRIB: TComboBox
        Left = 312
        Top = 55
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        TabOrder = 0
        Text = 
          '2 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
          'egime cumulativo;'
        OnExit = cb_COD_INC_TRIBExit
        Items.Strings = (
          '   - vazio '
          
            '1 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
            'egime n'#227'o-cumulativo;'
          
            '2 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
            'egime cumulativo;'
          
            '3 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia nos regimes n'#227'o-cum' +
            'ulativo e cumulativo')
      end
      object CB_IND_APRO_CRED: TComboBox
        Left = 312
        Top = 99
        Width = 585
        Height = 21
        Color = 15138790
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = '  - Vazio '
        Items.Strings = (
          '  - Vazio '
          '1 - M'#233'todo de Apropria'#231#227'o Direta;'
          '2 - M'#233'todo de Rateio Proporcional (Receita Bruta)')
      end
      object CB_COD_TIPO_CONT: TComboBox
        Left = 312
        Top = 134
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        TabOrder = 2
        Text = '1 '#8211' Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
        OnExit = CB_COD_TIPO_CONTExit
        Items.Strings = (
          '1  Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
          
            '2  Apura'#231#227'o da Contribui'#231#227'o a Al'#237'quotas Espec'#237'ficas (Diferenciad' +
            'as e/ou por Unidade de Medida de Produto)')
      end
      object CB_IND_REG_CUM: TComboBox
        Left = 312
        Top = 223
        Width = 585
        Height = 21
        Color = 15138790
        ItemHeight = 13
        ItemIndex = 3
        TabOrder = 3
        Text = 
          '9 - Regime de Compet'#234'ncia - Escritura'#231#227'o detalhada, com base nos' +
          ' registros dos Blocos A, C, D e F.'
        OnExit = CB_IND_REG_CUMExit
        Items.Strings = (
          '  - Sem Valor'
          '1 - Regime de Caixa  Escritura'#231#227'o consolidada (Registro F500);'
          
            '2 - Regime de Compet'#234'ncia - Escritura'#231#227'o consolidada (Registro F' +
            '550);'
          
            '9 - Regime de Compet'#234'ncia - Escritura'#231#227'o detalhada, com base nos' +
            ' registros dos Blocos A, C, D e F.')
      end
      object gb_aliquotas_cst: TGroupBox
        Left = 240
        Top = 362
        Width = 649
        Height = 89
        Caption = 'Aliquotas/cst'
        TabOrder = 4
        Visible = False
        object StaticText1: TStaticText
          Left = 8
          Top = 18
          Width = 57
          Height = 33
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Tipo'
          TabOrder = 0
        end
        object StaticText2: TStaticText
          Left = 64
          Top = 34
          Width = 57
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entrada'
          TabOrder = 1
        end
        object StaticText3: TStaticText
          Left = 120
          Top = 34
          Width = 57
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saida'
          TabOrder = 2
        end
        object StaticText4: TStaticText
          Left = 8
          Top = 50
          Width = 57
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Pis'
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 8
          Top = 68
          Width = 57
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Cofins'
          TabOrder = 4
        end
        object StaticText6: TStaticText
          Left = 176
          Top = 34
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entrada'
          TabOrder = 5
        end
        object edt_pis_entrada: TEdit
          Left = 64
          Top = 50
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          Text = '1,65'
        end
        object edt_pis_saida: TEdit
          Left = 120
          Top = 50
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          Text = '1,65'
        end
        object edt_pis_cst_entrada_prod: TEdit
          Left = 176
          Top = 50
          Width = 50
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          Text = '50'
        end
        object edt_cofins_entrada: TEdit
          Left = 64
          Top = 68
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          Text = '7,60'
        end
        object edt_cofins_saida: TEdit
          Left = 120
          Top = 68
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          Text = '7,60'
        end
        object edt_cofins_cst_entrada_prod: TEdit
          Left = 176
          Top = 68
          Width = 50
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 14
          Text = '50'
        end
        object StaticText7: TStaticText
          Left = 64
          Top = 18
          Width = 113
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Aliquotas'
          TabOrder = 18
        end
        object StaticText8: TStaticText
          Left = 225
          Top = 34
          Width = 45
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saidas'
          TabOrder = 19
        end
        object edt_pis_cst_saida_prod: TEdit
          Left = 225
          Top = 50
          Width = 45
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          Text = '99'
        end
        object edt_cofins_cst_saida_prod: TEdit
          Left = 225
          Top = 68
          Width = 45
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 15
          Text = '99'
        end
        object StaticText9: TStaticText
          Left = 176
          Top = 18
          Width = 94
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CST Prod'
          TabOrder = 20
        end
        object bbSalvarPadrao: TBitBtn
          Left = 538
          Top = 15
          Width = 100
          Height = 68
          Caption = 'Salvar Padrao'
          TabOrder = 21
          OnClick = bbSalvarPadraoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
            3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
            700077337F3333373777887007333337007733F773F333337733700070333333
            077037773733333F7F37703707333300080737F373333377737F003333333307
            78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
            078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
            70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
            3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
            33337F73FF737773333307800077033333337337773373333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object StaticText10: TStaticText
          Left = 269
          Top = 18
          Width = 94
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CST M105'
          TabOrder = 22
        end
        object StaticText11: TStaticText
          Left = 269
          Top = 34
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entrada'
          TabOrder = 23
        end
        object StaticText12: TStaticText
          Left = 318
          Top = 34
          Width = 45
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saidas'
          TabOrder = 24
        end
        object edt_pis_cst_M105_entrada: TEdit
          Left = 269
          Top = 50
          Width = 52
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          Text = '50'
        end
        object edt_pis_cst_M105_saida: TEdit
          Left = 318
          Top = 50
          Width = 45
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          Text = '99'
        end
        object edt_cofins_cst_M105_entrada: TEdit
          Left = 269
          Top = 68
          Width = 50
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          Text = '50'
        end
        object edt_cofins_cst_M105_saida: TEdit
          Left = 318
          Top = 68
          Width = 45
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          Text = '99'
        end
        object GroupBox1: TGroupBox
          Left = 367
          Top = 11
          Width = 173
          Height = 73
          Caption = 'Manter CST/Aliq do Doc'
          TabOrder = 25
          object CB_MANTERCST_PROPRIO: TCheckBox
            Left = 10
            Top = 21
            Width = 151
            Height = 17
            Caption = 'de emiss'#227'o propria'
            TabOrder = 0
          end
          object CB_MANTERCST_TERCEIRO: TCheckBox
            Left = 10
            Top = 44
            Width = 151
            Height = 17
            Caption = 'de emiss'#227'o de terceiros'
            TabOrder = 1
          end
        end
      end
      object cb_IND_ESCRI: TComboBox
        Left = 311
        Top = 3
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 5
        Text = 
          '2  Apura'#231#227'o com base no registro individualizado de NF-e (C100 e' +
          ' C170) e de ECF (C400)'
        Visible = False
        OnClick = cb_IND_ESCRIClick
        OnExit = cb_IND_ESCRIExit
        Items.Strings = (
          
            '1  Apura'#231#227'o com base nos registros de consolida'#231#227'o das opera'#231#245'es' +
            ' por NF-e (C180 e C190) e por ECF (C490)'
          
            '2  Apura'#231#227'o com base no registro individualizado de NF-e (C100 e' +
            ' C170) e de ECF (C400)')
      end
      object edt_DESC_CRED: TEdit
        Left = 312
        Top = 280
        Width = 585
        Height = 21
        TabOrder = 6
        Text = 'INDEFINIDO'
        OnExit = edt_DESC_CREDExit
      end
      object CB_COD_REC_PIS: TComboBox
        Left = 549
        Top = 302
        Width = 67
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 7
        Text = '810908'
        OnExit = CB_COD_REC_PISExit
        Items.Strings = (
          '810908')
      end
      object CB_COD_REC_COFINS: TComboBox
        Left = 835
        Top = 302
        Width = 65
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 8
        Text = '217208'
        OnExit = CB_COD_REC_COFINSExit
        Items.Strings = (
          '217208')
      end
      object CB_NUM_CAMPO: TComboBox
        Left = 315
        Top = 325
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 9
        Text = '12  Valor da Contribuicao cumulativa a receber'
        OnExit = CB_NUM_CAMPOExit
        Items.Strings = (
          '08  valor da contribuicao nao cumulativa'
          '12  Valor da Contribuicao cumulativa a receber')
      end
      object clb_tiponotas: TCheckListBox
        Left = 9
        Top = 371
        Width = 220
        Height = 60
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Vendas(saida)'
          'Devolucao venda(entradas)'
          'Compra de Mercadorias(entradas)'
          'Todas')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 10
        OnClick = clb_tiponotasClick
      end
      object edt_COD_CONT: TComboBox
        Left = 310
        Top = 30
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 6
        TabOrder = 11
        Text = '51'#9'Contribui'#231#227'o cumulativa apurada a al'#237'quota b'#225'sica'
        OnExit = cb_COD_INC_TRIBExit
        Items.Strings = (
          '01'#9'Contribui'#231#227'o n'#227'o-cumulativa apurada a al'#237'quota b'#225'sica'
          '02'#9'Contribui'#231#227'o n'#227'o-cumulativa apurada a al'#237'quotas diferenciadas'
          
            '03'#9'Contribui'#231#227'o n'#227'o-cumulativa apurada a al'#237'quota por unidade de' +
            ' medida de produto'
          
            '04'#9'Contribui'#231#227'o n'#227'o-cumulativa apurada a al'#237'quota b'#225'sica '#8211' Ativi' +
            'dade Imobili'#225'ria'
          '31'#9'Contribui'#231#227'o apurada por substitui'#231#227'o tribut'#225'ria'
          
            '32'#9'Contribui'#231#227'o apurada por substitui'#231#227'o tribut'#225'ria '#8211' Vendas '#224' Z' +
            'ona Franca de Manaus'
          '51'#9'Contribui'#231#227'o cumulativa apurada a al'#237'quota b'#225'sica'
          '52'#9'Contribui'#231#227'o cumulativa apurada a al'#237'quotas diferenciadas'
          
            '53'#9'Contribui'#231#227'o cumulativa apurada a al'#237'quota por unidade de med' +
            'ida de produto'
          
            '54'#9'Contribui'#231#227'o cumulativa apurada a al'#237'quota b'#225'sica '#8211' Atividade' +
            ' Imobili'#225'ria'
          '70'#9'Contribui'#231#227'o apurada da Atividade Imobili'#225'ria - RET'
          '71'#9'Contribui'#231#227'o apurada de SCP '#8211' Incid'#234'ncia N'#227'o Cumulativa'
          '72'#9'Contribui'#231#227'o apurada de SCP '#8211' Incid'#234'ncia Cumulativa'
          '99 '#9'Contribui'#231#227'o para o PIS/Pasep '#8211' Folha de Sal'#225'rios')
      end
    end
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 4
      object GroupBox2: TGroupBox
        Left = 16
        Top = 32
        Width = 505
        Height = 225
        Caption = 'Filtrar:'
        TabOrder = 0
        object Label44: TLabel
          Left = 8
          Top = 16
          Width = 98
          Height = 13
          Caption = 'Nota de Entrada:'
        end
        object Label45: TLabel
          Left = 8
          Top = 65
          Width = 86
          Height = 13
          Caption = 'Nota de Saida:'
        end
        object Label46: TLabel
          Left = 8
          Top = 113
          Width = 80
          Height = 13
          Caption = 'Cupom Fiscal:'
        end
        object Label11: TLabel
          Left = 8
          Top = 176
          Width = 80
          Height = 13
          Caption = 'filrar periodo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 196
          Top = 178
          Width = 8
          Height = 13
          Caption = #224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_numnf_ent: TEdit
          Left = 111
          Top = 14
          Width = 81
          Height = 21
          TabOrder = 0
          OnExit = edt_numnf_entExit
        end
        object edt_numnf_sai: TEdit
          Left = 111
          Top = 63
          Width = 82
          Height = 21
          TabOrder = 1
          OnExit = edt_numnf_saiExit
        end
        object edt_num_ecf: TEdit
          Left = 110
          Top = 111
          Width = 81
          Height = 21
          TabOrder = 2
          OnExit = edt_num_ecfExit
        end
        object lbx_numnf_ent: TListBox
          Left = 194
          Top = 14
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_numnf_entKeyDown
        end
        object lbx_numnf_sai: TListBox
          Left = 193
          Top = 63
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_numnf_saiKeyDown
        end
        object lbx_numcf: TListBox
          Left = 193
          Top = 111
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_numcfKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 111
          Top = 38
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object edt_datini_filtro: TDateEdit
          Left = 92
          Top = 174
          Width = 103
          Height = 21
          NumGlyphs = 2
          TabOrder = 7
        end
        object edt_datfin_filtro: TDateEdit
          Left = 210
          Top = 173
          Width = 103
          Height = 21
          NumGlyphs = 2
          TabOrder = 8
        end
        object OMITIF_NFSAI: TCheckBox
          Left = 111
          Top = 85
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
      end
      object cb_gerar_bloco_m: TCheckBox
        Left = 32
        Top = 312
        Width = 129
        Height = 17
        Caption = 'Gerar Bloco  M'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object cb_bloco_m_zerado: TCheckBox
        Left = 96
        Top = 368
        Width = 97
        Height = 17
        Caption = 'Zerado'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
      object BitBtn1: TBitBtn
        Left = 242
        Top = 369
        Width = 239
        Height = 22
        Caption = 'Visualizar Arquivo Paipo'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
          3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
          700077337F3333373777887007333337007733F773F333337733700070333333
          077037773733333F7F37703707333300080737F373333377737F003333333307
          78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
          078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
          70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
          3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
          33337F73FF737773333307800077033333337337773373333333}
        NumGlyphs = 2
      end
      object cb_zerar_pis_cofins: TCheckBox
        Left = 160
        Top = 313
        Width = 97
        Height = 17
        Caption = 'Zerado'
        Checked = True
        Ctl3D = True
        ParentCtl3D = False
        State = cbChecked
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Entrada de dados continuacao'
      ImageIndex = 5
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 57
        Align = alTop
        Caption = 'Codigos Utilizados para Notas de Devolu'#231#227'o de Cliente:'
        TabOrder = 0
        object Label21: TLabel
          Left = 17
          Top = 15
          Width = 284
          Height = 26
          Caption = 
            'C'#243'digo da Base de C'#225'lculo do Cr'#233'dito apurado no'#13#10'per'#237'odo, confor' +
            'me a Tabela 4.3.7'
          Color = 16774388
          ParentColor = False
          Visible = False
        end
        object CB_NAT_BC_CRED_DC: TComboBox
          Left = 304
          Top = 20
          Width = 585
          Height = 21
          Color = 16774388
          ItemHeight = 13
          ItemIndex = 11
          TabOrder = 0
          Text = '12 Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o-Cumulativa'
          Visible = False
          OnExit = CB_NAT_BC_CRED_DCExit
          Items.Strings = (
            '01 Aquisi'#231#227'o de bens para revenda'
            '02 Aquisi'#231#227'o de bens utilizados como insumo'
            '03 Aquisi'#231#227'o de servi'#231'os utilizados como insumo'
            '04 Energia el'#233'trica e t'#233'rmica, inclusive sob a forma de vapor'
            '05 Alugu'#233'is de pr'#233'dios'
            '06 Alugu'#233'is de m'#225'quinas e equipamentos'
            '07 Armazenagem de mercadoria e frete na opera'#231#227'o de venda'
            '08 Contrapresta'#231#245'es de arrendamento mercantil'
            
              '09 M'#225'quinas, equipamentos e outros bens incorporados ao ativo im' +
              'obilizado (cr'#233'dito sobre encargos de deprecia'#231#227'o).'
            
              '10 M'#225'quinas, equipamentos e outros bens incorporados ao ativo im' +
              'obilizado (cr'#233'dito com base no valor de aquisi'#231#227'o).'
            
              '11 Amortiza'#231#227'o e Deprecia'#231#227'o de edifica'#231#245'es e benfeitorias em im' +
              #243'veis'
            '12 Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o-Cumulativa'
            '13 Outras Opera'#231#245'es com Direito a Cr'#233'dito'
            '14 Atividade de Transporte de Cargas - Subcontrata'#231#227'o'
            
              '15 Atividade Imobili'#225'ria - Custo Incorrido de Unidade Imobili'#225'ri' +
              'a'
            '16 Atividade Imobili'#225'ria - Custo Or'#231'ado de unidade n'#227'o conclu'#237'da'
            
              '17 Atividade de Presta'#231#227'o de Servi'#231'os de Limpeza, Conserva'#231#227'o e ' +
              'Manuten'#231#227'o - vale-transporte, vale-refei'#231#227'o ou vale-alimenta'#231#227'o,' +
              ' fardamento ou uniforme.'
            '18 Estoque de abertura de bens'
            '')
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 57
        Width = 912
        Height = 57
        Align = alTop
        Caption = 'C'#243'digod Utilizados para Notas de Compras de Mercadorias:'
        TabOrder = 1
        object Label22: TLabel
          Left = 17
          Top = 15
          Width = 284
          Height = 26
          Caption = 
            'C'#243'digo da Base de C'#225'lculo do Cr'#233'dito apurado no'#13#10'per'#237'odo, confor' +
            'me a Tabela 4.3.7'
          Color = 16774388
          ParentColor = False
          Visible = False
        end
        object CB_NAT_BC_CRED_CPR: TComboBox
          Left = 304
          Top = 20
          Width = 585
          Height = 21
          Color = 16774388
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = '01 Aquisi'#231#227'o de bens para revenda'
          Visible = False
          OnExit = CB_NAT_BC_CRED_CPRExit
          Items.Strings = (
            '01 Aquisi'#231#227'o de bens para revenda'
            '02 Aquisi'#231#227'o de bens utilizados como insumo'
            '03 Aquisi'#231#227'o de servi'#231'os utilizados como insumo'
            '04 Energia el'#233'trica e t'#233'rmica, inclusive sob a forma de vapor'
            '05 Alugu'#233'is de pr'#233'dios'
            '06 Alugu'#233'is de m'#225'quinas e equipamentos'
            '07 Armazenagem de mercadoria e frete na opera'#231#227'o de venda'
            '08 Contrapresta'#231#245'es de arrendamento mercantil'
            
              '09 M'#225'quinas, equipamentos e outros bens incorporados ao ativo im' +
              'obilizado (cr'#233'dito sobre encargos de deprecia'#231#227'o).'
            
              '10 M'#225'quinas, equipamentos e outros bens incorporados ao ativo im' +
              'obilizado (cr'#233'dito com base no valor de aquisi'#231#227'o).'
            
              '11 Amortiza'#231#227'o e Deprecia'#231#227'o de edifica'#231#245'es e benfeitorias em im' +
              #243'veis'
            '12 Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o-Cumulativa'
            '13 Outras Opera'#231#245'es com Direito a Cr'#233'dito'
            '14 Atividade de Transporte de Cargas - Subcontrata'#231#227'o'
            
              '15 Atividade Imobili'#225'ria - Custo Incorrido de Unidade Imobili'#225'ri' +
              'a'
            '16 Atividade Imobili'#225'ria - Custo Or'#231'ado de unidade n'#227'o conclu'#237'da'
            
              '17 Atividade de Presta'#231#227'o de Servi'#231'os de Limpeza, Conserva'#231#227'o e ' +
              'Manuten'#231#227'o - vale-transporte, vale-refei'#231#227'o ou vale-alimenta'#231#227'o,' +
              ' fardamento ou uniforme.'
            '18 Estoque de abertura de bens'
            '')
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 114
        Width = 912
        Height = 127
        Align = alTop
        Caption = 'Codigos Utilizados no Caso de Creditos'
        TabOrder = 2
        object Label10: TLabel
          Left = 9
          Top = 20
          Width = 300
          Height = 13
          AutoSize = False
          Caption = 'C'#243'digo do Credito Registro M100 Tabela 4.3.6.'
          Color = 16774388
          ParentColor = False
        end
        object CB_COD_CRED_M100: TComboBox
          Left = 311
          Top = 18
          Width = 585
          Height = 21
          Color = 16774388
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 
            '101'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Al' +
            #237'quota B'#225'sica'
          OnExit = CB_COD_CRED_M100Exit
          Items.Strings = (
            
              '101'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Al' +
              #237'quota B'#225'sica'
            
              '102'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Al' +
              #237'quotas Diferenciadas'
            
              '103'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Al' +
              #237'quota por Unidade de Produto'
            
              '104'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Es' +
              'toque de Abertura'
            
              '105'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Aq' +
              'uisi'#231#227'o Embalagens para revenda'
            
              '106'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Pr' +
              'esumido da Agroind'#250'stria'
            
              '108'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Im' +
              'porta'#231#227'o'
            
              '109'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  At' +
              'ividade Imobili'#225'ria'
            
              '199'#9'Cr'#233'dito vinculado '#224' receita tributada no mercado interno  Ou' +
              'tros'
            
              '201'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Al'#237'quota B'#225'sica'
            
              '202'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Al'#237'quotas Diferenciadas'
            
              '203'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Al'#237'quota por Unidade de Produto'
            
              '204'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Estoque de Abertura'
            
              '205'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Aquisi'#231#227'o Embalagens para revenda'
            
              '206'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Presumido da Agroind'#250'stria'
            
              '208'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Importa'#231#227'o'
            
              '299'#9'Cr'#233'dito vinculado '#224' receita n'#227'o tributada no mercado interno' +
              '  Outros'
            '301'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Al'#237'quota B'#225'sica'
            
              '302'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Al'#237'quotas Diferen' +
              'ciadas'
            
              '303'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Al'#237'quota por Unid' +
              'ade de Produto'
            
              '304'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Estoque de Abertu' +
              'ra'
            
              '305'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Aquisi'#231#227'o Embalag' +
              'ens para revenda'
            
              '306'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Presumido da Agro' +
              'ind'#250'stria'
            '308'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Importa'#231#227'o'
            '399'#9'Cr'#233'dito vinculado '#224' receita de exporta'#231#227'o  Outros')
        end
      end
    end
  end
  object mem_R0150: TRxMemoryData
    FieldDefs = <>
    Left = 564
    Top = 200
    object mem_R0150COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 60
    end
    object mem_R0150COD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
    end
    object mem_R0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mem_R0150CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object mem_R0150IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object mem_R0150COD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
    object mem_R0150SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object mem_R0150END: TStringField
      FieldName = 'END'
      Size = 60
    end
    object mem_R0150NUM: TStringField
      FieldName = 'NUM'
      Size = 15
    end
    object mem_R0150COMPL: TStringField
      FieldName = 'COMPL'
      Size = 60
    end
    object mem_R0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object mem_R0150NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object mem_R0190: TRxMemoryData
    FieldDefs = <>
    Left = 628
    Top = 200
    object mem_R0190UNID: TStringField
      FieldName = 'UNID'
      Size = 6
    end
    object mem_R0190DESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
  end
  object mem_R0200: TRxMemoryData
    FieldDefs = <>
    Left = 676
    Top = 200
    object mem_R0200COD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 60
    end
    object mem_R0200DESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 300
    end
    object mem_R0200COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object mem_R0200COD_ANT_ITEM: TStringField
      FieldName = 'COD_ANT_ITEM'
      Size = 60
    end
    object mem_R0200UNID_INV: TStringField
      FieldName = 'UNID_INV'
      Size = 6
    end
    object mem_R0200TIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Size = 2
    end
    object mem_R0200COD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object mem_R0200EX_IPI: TStringField
      FieldName = 'EX_IPI'
      Size = 3
    end
    object mem_R0200COD_GEN: TStringField
      FieldName = 'COD_GEN'
      Size = 2
    end
    object mem_R0200COD_LST: TStringField
      FieldName = 'COD_LST'
      Size = 4
    end
    object mem_R0200ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
  end
  object mem_R0400: TRxMemoryData
    FieldDefs = <>
    Left = 724
    Top = 200
    object mem_R0400COD_NAT: TStringField
      FieldName = 'COD_NAT'
      Size = 10
    end
    object mem_R0400DESCR_NAT: TStringField
      FieldName = 'DESCR_NAT'
      Size = 200
    end
  end
  object Tb_ValVal: TQuery
    Left = 316
    Top = 216
  end
  object mem_m100: TRxMemoryData
    FieldDefs = <>
    Left = 476
    Top = 248
    object mem_m100COD_CRED: TStringField
      FieldName = 'COD_CRED'
      Size = 3
    end
    object mem_m100IND_CRED_ORI: TIntegerField
      FieldName = 'IND_CRED_ORI'
    end
    object mem_m100VL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
    end
    object mem_m100ALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
    end
    object mem_m100QUANT_BC_PIS: TFloatField
      FieldName = 'QUANT_BC_PIS'
    end
    object mem_m100ALIQ_PIS_QUANT: TFloatField
      FieldName = 'ALIQ_PIS_QUANT'
    end
    object mem_m100VL_CRED: TFloatField
      FieldName = 'VL_CRED'
    end
    object mem_m100VL_AJUS_ACRES: TFloatField
      FieldName = 'VL_AJUS_ACRES'
    end
    object mem_m100VL_CRED_DIF: TFloatField
      FieldName = 'VL_CRED_DIF'
    end
    object mem_m100VL_CRED_DISP: TFloatField
      FieldName = 'VL_CRED_DISP'
    end
    object mem_m100IND_DESC_CRED: TFloatField
      FieldName = 'IND_DESC_CRED'
    end
    object mem_m100VL_CRED_DESC: TFloatField
      FieldName = 'VL_CRED_DESC'
    end
    object mem_m100SLD_CRED: TFloatField
      FieldName = 'SLD_CRED'
    end
  end
  object mem_m105: TRxMemoryData
    FieldDefs = <>
    Left = 532
    Top = 264
    object mem_m105NAT_BC_CRED: TStringField
      FieldName = 'NAT_BC_CRED'
      Size = 2
    end
    object mem_m105CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object mem_m105VL_BC_PIS_TOT: TFloatField
      FieldName = 'VL_BC_PIS_TOT'
    end
    object mem_m105VL_BC_PIS_CUM: TFloatField
      FieldName = 'VL_BC_PIS_CUM'
    end
    object mem_m105VL_BC_PIS_NC: TFloatField
      FieldName = 'VL_BC_PIS_NC'
    end
    object mem_m105VL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
    end
    object mem_m105QUANT_BC_PIS_TOT: TFloatField
      FieldName = 'QUANT_BC_PIS_TOT'
    end
    object mem_m105QUANT_BC_PIS: TFloatField
      FieldName = 'QUANT_BC_PIS'
    end
    object mem_m105DESC_CRED: TStringField
      FieldName = 'DESC_CRED'
      Size = 60
    end
  end
  object mem_m200: TRxMemoryData
    FieldDefs = <>
    Left = 580
    Top = 248
    object mem_m200VL_TOT_CONT_NC_PER: TFloatField
      FieldName = 'VL_TOT_CONT_NC_PER'
    end
    object mem_m200VL_TOT_CRED_DESC: TFloatField
      FieldName = 'VL_TOT_CRED_DESC'
    end
    object mem_m200VL_TOT_CRED_DESC_ANT: TFloatField
      FieldName = 'VL_TOT_CRED_DESC_ANT'
    end
    object mem_m200VL_TOT_CONT_NC_DEV: TFloatField
      FieldName = 'VL_TOT_CONT_NC_DEV'
    end
    object mem_m200VL_RET_NC: TFloatField
      FieldName = 'VL_RET_NC'
    end
    object mem_m200VL_OUT_DED_NC: TFloatField
      FieldName = 'VL_OUT_DED_NC'
    end
    object mem_m200VL_CONT_NC_REC: TFloatField
      FieldName = 'VL_CONT_NC_REC'
    end
    object mem_m200VL_TOT_CONT_CUM_PER: TFloatField
      FieldName = 'VL_TOT_CONT_CUM_PER'
    end
    object mem_m200VL_RET_CUM: TFloatField
      FieldName = 'VL_RET_CUM'
    end
    object mem_m200VL_OUT_DED_CUM: TFloatField
      FieldName = 'VL_OUT_DED_CUM'
    end
    object mem_m200VL_CONT_CUM_REC: TFloatField
      FieldName = 'VL_CONT_CUM_REC'
    end
    object mem_m200VL_TOT_CONT_REC: TFloatField
      FieldName = 'VL_TOT_CONT_REC'
    end
  end
  object mem_m210: TRxMemoryData
    FieldDefs = <>
    Left = 636
    Top = 280
    object mem_m210COD_CONT: TStringField
      FieldName = 'COD_CONT'
      Size = 2
    end
    object mem_m210VL_REC_BRT: TFloatField
      FieldName = 'VL_REC_BRT'
    end
    object mem_m210VL_BC_CONT: TFloatField
      FieldName = 'VL_BC_CONT'
    end
    object mem_m210VL_AJUS_ACRES_BC_PIS: TFloatField
      FieldName = 'VL_AJUS_ACRES_BC_PIS'
    end
    object mem_m210VL_AJUS_REDUC_BC_PIS: TFloatField
      FieldName = 'VL_AJUS_REDUC_BC_PIS'
    end
    object mem_m210VL_BC_CONT_AJUS: TFloatField
      FieldName = 'VL_BC_CONT_AJUS'
    end
    object mem_m210ALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
    end
    object mem_m210QUANT_BC_PIS: TFloatField
      FieldName = 'QUANT_BC_PIS'
    end
    object mem_m210ALIQ_PIS_QUANT: TFloatField
      FieldName = 'ALIQ_PIS_QUANT'
    end
    object mem_m210VL_CONT_APUR: TFloatField
      FieldName = 'VL_CONT_APUR'
    end
    object mem_m210VL_AJUS_ACRES: TFloatField
      FieldName = 'VL_AJUS_ACRES'
    end
    object mem_m210VL_AJUS_REDUC: TFloatField
      FieldName = 'VL_AJUS_REDUC'
    end
    object mem_m210VL_CONT_DIFER: TFloatField
      FieldName = 'VL_CONT_DIFER'
    end
    object mem_m210VL_CONT_DIFER_ANT: TFloatField
      FieldName = 'VL_CONT_DIFER_ANT'
    end
    object mem_m210VL_CONT_PER: TFloatField
      FieldName = 'VL_CONT_PER'
    end
  end
  object mem_m500: TRxMemoryData
    FieldDefs = <>
    Left = 500
    Top = 256
    object mem_m500COD_CRED: TStringField
      FieldName = 'COD_CRED'
      Size = 3
    end
    object mem_m500IND_CRED_ORI: TIntegerField
      FieldName = 'IND_CRED_ORI '
    end
    object mem_m500VL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
    end
    object mem_m500ALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
    end
    object mem_m500QUANT_BC_COFINS: TFloatField
      FieldName = 'QUANT_BC_COFINS'
    end
    object mem_m500ALIQ_COFINS_QUANT: TFloatField
      FieldName = 'ALIQ_COFINS_QUANT'
    end
    object mem_m500VL_CRED: TFloatField
      FieldName = 'VL_CRED'
    end
    object mem_m500VL_AJUS_ACRES: TFloatField
      FieldName = 'VL_AJUS_ACRES'
    end
    object mem_m500VL_AJUS_REDUC: TFloatField
      FieldName = 'VL_AJUS_REDUC'
    end
    object mem_m500VL_CRED_DIF: TFloatField
      FieldName = 'VL_CRED_DIF'
    end
    object mem_m500VL_CRED_DISP: TFloatField
      FieldName = 'VL_CRED_DISP'
    end
    object mem_m500IND_DESC_CRED: TFloatField
      FieldName = 'IND_DESC_CRED'
    end
    object mem_m500VL_CRED_DESC: TFloatField
      FieldName = 'VL_CRED_DESC'
    end
    object mem_m500SLD_CRED: TFloatField
      FieldName = 'SLD_CRED'
    end
  end
  object mem_m505: TRxMemoryData
    FieldDefs = <>
    Left = 500
    Top = 376
    object mem_m505NAT_BC_CRED: TStringField
      FieldName = 'NAT_BC_CRED'
      Size = 2
    end
    object mem_m505CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object mem_m505VL_BC_COFINS_TOT: TFloatField
      FieldName = 'VL_BC_COFINS_TOT'
    end
    object mem_m505VL_BC_COFINS_CUM: TFloatField
      FieldName = 'VL_BC_COFINS_CUM'
    end
    object mem_m505VL_BC_COFINS_NC: TFloatField
      FieldName = 'VL_BC_COFINS_NC'
    end
    object mem_m505VL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
    end
    object mem_m505QUANT_BC_COFINS_TOT: TFloatField
      FieldName = 'QUANT_BC_COFINS_TOT'
    end
    object mem_m505QUANT_BC_COFINS: TFloatField
      FieldName = 'QUANT_BC_COFINS'
    end
    object mem_m505DESC_CRED: TStringField
      FieldName = 'DESC_CRED'
      Size = 60
    end
  end
  object mem_m600: TRxMemoryData
    FieldDefs = <>
    Left = 612
    Top = 344
    object mem_m600VL_TOT_CONT_NC_PER: TFloatField
      FieldName = 'VL_TOT_CONT_NC_PER'
    end
    object mem_m600VL_TOT_CRED_DESC: TFloatField
      FieldName = 'VL_TOT_CRED_DESC'
    end
    object mem_m600VL_TOT_CRED_DESC_ANT: TFloatField
      FieldName = 'VL_TOT_CRED_DESC_ANT'
    end
    object mem_m600VL_TOT_CONT_NC_DEV: TFloatField
      FieldName = 'VL_TOT_CONT_NC_DEV'
    end
    object mem_m600VL_RET_NC: TFloatField
      FieldName = 'VL_RET_NC'
    end
    object mem_m600VL_OUT_DED_NC: TFloatField
      FieldName = 'VL_OUT_DED_NC'
    end
    object mem_m600VL_CONT_NC_REC: TFloatField
      FieldName = 'VL_CONT_NC_REC'
    end
    object mem_m600VL_TOT_CONT_CUM_PER: TFloatField
      FieldName = 'VL_TOT_CONT_CUM_PER'
    end
    object mem_m600VL_RET_CUM: TFloatField
      FieldName = 'VL_RET_CUM'
    end
    object mem_m600VL_OUT_DED_CUM: TFloatField
      FieldName = 'VL_OUT_DED_CUM'
    end
    object mem_m600VL_CONT_CUM_REC: TFloatField
      FieldName = 'VL_CONT_CUM_REC'
    end
    object mem_m600VL_TOT_CONT_REC: TFloatField
      FieldName = 'VL_TOT_CONT_REC'
    end
  end
  object mem_m610: TRxMemoryData
    FieldDefs = <>
    Left = 660
    Top = 296
    object mem_m610COD_CONT: TStringField
      FieldName = 'COD_CONT'
      Size = 2
    end
    object mem_m610VL_REC_BRT: TFloatField
      FieldName = 'VL_REC_BRT'
    end
    object mem_m610VL_BC_CONT: TFloatField
      FieldName = 'VL_BC_CONT'
    end
    object mem_m610ALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
    end
    object mem_m610QUANT_BC_COFINS: TFloatField
      FieldName = 'QUANT_BC_COFINS'
    end
    object mem_m610ALIQ_COFINS_QUANT: TFloatField
      FieldName = 'ALIQ_COFINS_QUANT'
    end
    object mem_m610VL_CONT_APUR: TFloatField
      FieldName = 'VL_CONT_APUR'
    end
    object mem_m610VL_AJUS_ACRES: TFloatField
      FieldName = 'VL_AJUS_ACRES'
    end
    object mem_m610VL_AJUS_REDUC: TFloatField
      FieldName = 'VL_AJUS_REDUC'
    end
    object mem_m610VL_CONT_DIFER: TFloatField
      FieldName = 'VL_CONT_DIFER'
    end
    object mem_m610VL_CONT_DIFER_ANT: TFloatField
      FieldName = 'VL_CONT_DIFER_ANT'
    end
    object mem_m610VL_CONT_PER: TFloatField
      FieldName = 'VL_CONT_PER'
    end
    object mem_m610VL_AJUS_ACRES_BC_COFINS: TFloatField
      FieldName = 'VL_AJUS_ACRES_BC_COFINS'
    end
    object mem_m610VL_AJUS_REDUC_BC_COFINS: TFloatField
      FieldName = 'VL_AJUS_REDUC_BC_COFINS'
    end
    object mem_m610VL_BC_CONT_AJUS: TFloatField
      FieldName = 'VL_BC_CONT_AJUS'
    end
  end
  object mem_m205: TRxMemoryData
    FieldDefs = <>
    Left = 700
    Top = 208
    object mem_m205NUM_CAMPO: TStringField
      FieldName = 'NUM_CAMPO'
      Size = 2
    end
    object mem_m205COD_REC: TStringField
      FieldName = 'COD_REC'
      Size = 6
    end
    object mem_m205VL_DEBITO: TFloatField
      FieldName = 'VL_DEBITO'
    end
  end
  object mem_m605: TRxMemoryData
    FieldDefs = <>
    Left = 756
    Top = 200
    object mem_m605COD_REC: TStringField
      FieldName = 'COD_REC'
      Size = 6
    end
    object mem_m605NUM_CAMPO: TStringField
      FieldName = 'NUM_CAMPO'
      Size = 2
    end
    object mem_m605VL_DEBITO: TFloatField
      FieldName = 'VL_DEBITO'
    end
  end
  object mem_cfop_validos: TRxMemoryData
    FieldDefs = <>
    Left = 220
    Top = 216
    object mem_cfop_validoscfop_valido: TStringField
      DisplayLabel = 'cfop'
      FieldName = 'cfop_valido'
      Size = 4
    end
  end
  object src_cfop_validos: TDataSource
    DataSet = mem_cfop_validos
    Left = 204
    Top = 216
  end
  object mem_0500: TRxMemoryData
    FieldDefs = <>
    Left = 340
    Top = 272
    object mem_0500PC_DATHOR_UEVE: TDateTimeField
      FieldName = 'PC_DATHOR_UEVE'
    end
    object mem_0500PC_COD_NAT_CC: TStringField
      FieldName = 'PC_COD_NAT_CC'
      Size = 2
    end
    object mem_0500PC_IND_CTA: TStringField
      FieldName = 'PC_IND_CTA'
      Size = 1
    end
    object mem_0500PC_NIVEL: TIntegerField
      FieldName = 'PC_NIVEL'
    end
    object mem_0500PC_COD_CTA: TStringField
      FieldName = 'PC_COD_CTA'
      Size = 60
    end
    object mem_0500PC_NOME_CTA: TStringField
      FieldName = 'PC_NOME_CTA'
      Size = 60
    end
    object mem_0500PC_COD_CTA_REF: TStringField
      FieldName = 'PC_COD_CTA_REF'
      Size = 60
    end
  end
  object mem_m400: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 272
    object mem_m400M400_CST_PIS: TStringField
      FieldName = 'M400_CST_PIS'
      Size = 2
    end
    object mem_m400M400_VL_TOT_REC: TFloatField
      FieldName = 'M400_VL_TOT_REC'
    end
    object mem_m400M400_COD_CTA: TStringField
      FieldName = 'M400_COD_CTA'
      Size = 60
    end
    object mem_m400M400_DESC_COMPL: TStringField
      FieldName = 'M400_DESC_COMPL'
      Size = 254
    end
  end
  object mem_m410: TRxMemoryData
    FieldDefs = <>
    Left = 68
    Top = 272
    object mem_m410M410_NAT_REC: TStringField
      FieldName = 'M410_NAT_REC'
      Size = 3
    end
    object mem_m410M410_VL_REC: TFloatField
      FieldName = 'M410_VL_REC'
    end
    object mem_m410M410_COD_CTA: TStringField
      FieldName = 'M410_COD_CTA'
      Size = 60
    end
    object mem_m410M410_DESC_COMPL: TStringField
      FieldName = 'M410_DESC_COMPL'
      Size = 254
    end
  end
  object mem_m800: TRxMemoryData
    FieldDefs = <>
    Left = 124
    Top = 272
    object mem_m800M800_CST_COFINS: TStringField
      FieldName = 'M800_CST_COFINS'
      Size = 2
    end
    object mem_m800M800_VL_TOT_REC: TFloatField
      FieldName = 'M800_VL_TOT_REC'
    end
    object mem_m800M800_COD_CTA: TStringField
      FieldName = 'M800_COD_CTA'
      Size = 60
    end
    object mem_m800M800_DESC_COMPL: TStringField
      FieldName = 'M800_DESC_COMPL'
      Size = 254
    end
  end
  object mem_m810: TRxMemoryData
    FieldDefs = <>
    Left = 164
    Top = 272
    object mem_m810M810_NAT_REC: TStringField
      FieldName = 'M810_NAT_REC'
      Size = 3
    end
    object mem_m810M810_VL_REC: TFloatField
      FieldName = 'M810_VL_REC'
    end
    object mem_m810M810_COD_CTA: TStringField
      FieldName = 'M810_COD_CTA'
      Size = 60
    end
    object mem_m810M810_DESC_COMPL: TStringField
      FieldName = 'M810_DESC_COMPL'
      Size = 254
    end
  end
end
