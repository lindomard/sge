object Frm_Recibo: TFrm_Recibo
  Left = 345
  Top = 157
  Width = 826
  Height = 560
  Caption = 'Emiss'#227'o de Recibo de Pagamento ou Recebimento '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 818
    Height = 529
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Impressao do Recibo'
      object Label8: TLabel
        Left = 185
        Top = 116
        Width = 121
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label9: TLabel
        Left = 104
        Top = 116
        Width = 78
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Data'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object SACADO: TLabel
        Left = 308
        Top = 116
        Width = 280
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nome do Sacado'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 104
        Top = 153
        Width = 695
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Referente a'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 163
        Top = 44
        Width = 425
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nome do Emitente'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label20: TLabel
        Left = 25
        Top = 291
        Width = 76
        Height = 13
        Caption = 'Tipo do Recibo:'
      end
      object Label21: TLabel
        Left = 590
        Top = 44
        Width = 210
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CPF/CNPJ'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label22: TLabel
        Left = 590
        Top = 115
        Width = 210
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CPF/CNPJ'
        Color = 13816486
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object lbl_qtdvias: TLabel
        Left = 273
        Top = 291
        Width = 58
        Height = 13
        Caption = 'Qtd de Vias:'
        Visible = False
      end
      object bbSalvarPadrao: TSpeedButton
        Left = 422
        Top = 288
        Width = 77
        Height = 22
        Caption = 'Padr'#227'o'
        OnClick = bbSalvarPadraoClick
      end
      object sbnSalvarPadrao: TSpeedButton
        Left = 308
        Top = 443
        Width = 161
        Height = 22
        Caption = 'Salvar Modelo Padr'#227'o'
        OnClick = sbnSalvarPadraoClick
      end
      object RG_TIPO: TRadioGroup
        Left = 0
        Top = 38
        Width = 159
        Height = 79
        Caption = 'Tipo do Recibo'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Pagamento'
          'Recebimento')
        ParentCtl3D = False
        TabOrder = 1
        OnClick = RG_TIPOClick
      end
      object VALOR_REC: TEdit
        Left = 185
        Top = 132
        Width = 121
        Height = 19
        Ctl3D = False
        MaxLength = 20
        ParentCtl3D = False
        TabOrder = 5
        OnExit = VALOR_RECExit
        OnKeyPress = VALOR_RECKeyPress
      end
      object MDATA: TMaskEdit
        Left = 104
        Top = 132
        Width = 78
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = MDATAExit
      end
      object NOMSACADO: TEdit
        Left = 308
        Top = 132
        Width = 280
        Height = 19
        Ctl3D = False
        MaxLength = 200
        ParentCtl3D = False
        TabOrder = 6
      end
      object EMITENTE: TEdit
        Left = 163
        Top = 60
        Width = 425
        Height = 19
        Ctl3D = False
        MaxLength = 200
        ParentCtl3D = False
        TabOrder = 2
      end
      object bbImprimir: TBitBtn
        Left = 2
        Top = 434
        Width = 157
        Height = 40
        Caption = '&Imprimir'
        TabOrder = 12
        OnClick = bbImprimirClick
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
      object bbSair: TBitBtn
        Left = 595
        Top = 436
        Width = 157
        Height = 40
        Caption = '&Sair'
        TabOrder = 13
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
      object cb_modelo: TComboBox
        Left = 105
        Top = 286
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'Modelo 01'
        OnClick = cb_modeloClick
        Items.Strings = (
          'Modelo 01'
          'Modelo 02')
      end
      object edt_pagador_cpf: TEdit
        Left = 590
        Top = 60
        Width = 209
        Height = 19
        Ctl3D = False
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 3
        OnExit = edt_pagador_cpfExit
      end
      object edt_recebedor_cpf: TEdit
        Left = 590
        Top = 131
        Width = 209
        Height = 19
        Ctl3D = False
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 7
        OnExit = edt_recebedor_cpfExit
      end
      object edt_qtdvias: TEdit
        Left = 344
        Top = 289
        Width = 73
        Height = 21
        MaxLength = 5
        TabOrder = 10
        Text = '1'
        Visible = False
        OnExit = edt_qtdviasExit
      end
      object gbdet_titulosdoc: TGroupBox
        Left = 24
        Top = 310
        Width = 729
        Height = 129
        Caption = 'Detalhes:'
        TabOrder = 11
        object DBGrid_titulosdoc: TDBGrid
          Left = 2
          Top = 34
          Width = 725
          Height = 93
          Align = alClient
          DataSource = src_det_titulosdoc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = DBGrid_titulosdocColExit
          OnKeyPress = DBGrid_titulosdocKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'titulos_numero'
              Title.Alignment = taCenter
              Title.Color = clRed
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'titulos_vencimento'
              Title.Alignment = taCenter
              Title.Color = clRed
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'titulos_obs'
              Title.Alignment = taCenter
              Title.Color = clRed
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'titulos_valor'
              Title.Alignment = taCenter
              Title.Color = clRed
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_tipo'
              Title.Alignment = taCenter
              Title.Color = clTeal
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_obs'
              Title.Alignment = taCenter
              Title.Color = clTeal
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_data'
              Title.Alignment = taCenter
              Title.Color = clTeal
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'doc_valor'
              Title.Alignment = taCenter
              Title.Color = clTeal
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 725
          Height = 19
          Align = alTop
          TabOrder = 1
          object Label23: TLabel
            Left = 0
            Top = 1
            Width = 350
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Titulos'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Label24: TLabel
            Left = 351
            Top = 1
            Width = 347
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Documentos'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
      object MREFER: TMemo
        Left = 104
        Top = 171
        Width = 695
        Height = 89
        Ctl3D = False
        Lines.Strings = (
          'MREFER')
        ParentCtl3D = False
        TabOrder = 8
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 37
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 1
          Top = 1
          Width = 623
          Height = 35
          Align = alClient
          Alignment = taCenter
          Caption = 'RECIBO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -25
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox3: TGroupBox
          Left = 624
          Top = 1
          Width = 185
          Height = 35
          Align = alRight
          Caption = 'N'#250'mero:'
          TabOrder = 0
          object edt_numerorecibo: TEdit
            Left = 8
            Top = 14
            Width = 89
            Height = 19
            Ctl3D = False
            MaxLength = 40
            ParentCtl3D = False
            TabOrder = 0
          end
          object bbProximoNumero: TBitBtn
            Left = 102
            Top = 7
            Width = 74
            Height = 27
            Caption = '&Proximo'
            TabOrder = 1
            OnClick = bbProximoNumeroClick
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
        end
      end
      object cb_sem_logomarcas: TCheckBox
        Left = 560
        Top = 288
        Width = 97
        Height = 17
        Caption = 'Sem Logomarca'
        TabOrder = 14
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 810
        Height = 281
        Align = alTop
        Caption = 'Dados do Recibo'
        TabOrder = 0
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 806
          Height = 41
          Align = alTop
          TabOrder = 0
          object sbFonteCab: TSpeedButton
            Left = 9
            Top = 11
            Width = 146
            Height = 22
            Hint = 'Seleciona a fonte'
            Caption = 'Ajustar Fonte'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
              1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
              1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
              193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
              11155557F755F777777555000755033305555577755F75F77F55555555503335
              0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
              05555757F75F75557F5505000333555505557F777FF755557F55000000355557
              07557777777F55557F5555000005555707555577777FF5557F55553000075557
              0755557F7777FFF5755555335000005555555577577777555555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbFonteCabClick
          end
          object sbSalvarPadrao: TSpeedButton
            Left = 492
            Top = 19
            Width = 150
            Height = 22
            Caption = '&Salvar Padr'#227'o'
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
            OnClick = sbSalvarPadraoClick
          end
          object CB_REPETIR: TCheckBox
            Left = 158
            Top = 15
            Width = 180
            Height = 17
            Caption = 'Repetir Emissao na Mesma Folha'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object CB_MATRICIAL: TCheckBox
            Left = 340
            Top = 16
            Width = 186
            Height = 17
            Caption = 'Impress'#227'o Matricial'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnExit = CB_MATRICIALExit
          end
        end
        object Texto: TRichEdit
          Left = 2
          Top = 56
          Width = 806
          Height = 223
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            '                                      R E C I B O'
            '                                      _  _ _ _ _ _'
            ''
            ''
            ''
            ''
            
              '     Recebi de [LEG001] a quantia supra de r$[LEG002] ([LEG003])' +
              ', proveniente '
            'a pagamento de [LEG004].'
            ''
            ''
            ''
            ''
            ''
            ''
            '                        Goi'#226'nia, [LEG005].'
            ''
            ''
            '                        _______________________________________'
            '                                   [LEG006]'
            '')
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 810
        Height = 501
        Align = alClient
        Caption = 'Legenda'
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 18
          Width = 135
          Height = 13
          Caption = '[LEG001]-Nome do Emitente'
        end
        object Label1: TLabel
          Left = 17
          Top = 34
          Width = 72
          Height = 13
          Caption = '[LEG002]-Valor'
        end
        object Label3: TLabel
          Left = 17
          Top = 52
          Width = 128
          Height = 13
          Caption = '[LEG003]-Extenso do Valor'
        end
        object Label4: TLabel
          Left = 17
          Top = 69
          Width = 95
          Height = 13
          Caption = '[LEG004]-Referente'
        end
        object Label5: TLabel
          Left = 16
          Top = 86
          Width = 116
          Height = 13
          Caption = '[LEG005]-data do recibo'
        end
        object Label6: TLabel
          Left = 16
          Top = 105
          Width = 131
          Height = 13
          Caption = '[LEG006]-Nome do Sacado'
        end
        object texto_impres: TRichEdit
          Left = 2
          Top = 410
          Width = 806
          Height = 89
          Align = alBottom
          Lines.Strings = (
            'texto_impres')
          TabOrder = 0
          WordWrap = False
        end
        object Memo1: TMemo
          Left = 176
          Top = 56
          Width = 497
          Height = 145
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
          WordWrap = False
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object RLReport1: TRLReport
        Left = -24
        Top = 88
        Width = 794
        Height = 1123
        DataSource = Src_Relatorio
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        object r_band_copia1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 500
          AutoExpand = False
          object RLRichText2: TRLRichText
            Left = 20
            Top = -2
            Width = 684
            Height = 46
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                '123456789 123456789 123456789 123456789 123456789 123456789 1234' +
                '56789 123456789'
              '')
            ParentFont = False
          end
        end
        object rlband_copia2: TRLBand
          Left = 38
          Top = 538
          Width = 718
          Height = 500
          AutoExpand = False
          object RLRichText1: TRLRichText
            Left = 20
            Top = -2
            Width = 684
            Height = 46
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                '123456789 123456789 123456789 123456789 123456789 123456789 1234' +
                '56789 123456789'
              '')
            ParentFont = False
          end
        end
      end
    end
    object tsConfigNovo: TTabSheet
      Caption = 'Configura'#231#227'o Novo'
      ImageIndex = 4
      object Label12: TLabel
        Left = 16
        Top = 18
        Width = 135
        Height = 13
        Caption = '[LEG001]-Nome do Emitente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 17
        Top = 34
        Width = 72
        Height = 13
        Caption = '[LEG002]-Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 17
        Top = 52
        Width = 128
        Height = 13
        Caption = '[LEG003]-Extenso do Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 17
        Top = 69
        Width = 95
        Height = 13
        Caption = '[LEG004]-Referente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 86
        Width = 116
        Height = 13
        Caption = '[LEG005]-data do recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 16
        Top = 105
        Width = 131
        Height = 13
        Caption = '[LEG006]-Nome do Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 127
        Top = 3
        Width = 245
        Height = 13
        Caption = 'pasta SGE\PASTADOCS\RECIBO.RTF do servidor'
      end
      object Label19: TLabel
        Left = 15
        Top = 3
        Width = 91
        Height = 13
        Caption = 'Nome do Relatorio:'
      end
    end
    object TsRelNovo: TTabSheet
      Caption = 'Relatorio Novo'
      ImageIndex = 5
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 25
        Align = alTop
        TabOrder = 0
        object Label25: TLabel
          Left = 327
          Top = 4
          Width = 6
          Height = 13
          Caption = 'a'
        end
        object Label26: TLabel
          Left = 128
          Top = 6
          Width = 94
          Height = 13
          Caption = 'Selecionar Paginas:'
        end
        object txt_pagini: TEdit
          Left = 259
          Top = 3
          Width = 41
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object txt_pagfin: TEdit
          Left = 372
          Top = 3
          Width = 40
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 427
          Top = 2
          Width = 241
          Height = 23
          Cursor = crHandPoint
          Hint = 'Imprimir a Licita'#231#227'o'
          Caption = '&Imprimir Somente Selcionadas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn1Click
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
          Spacing = 2
        end
      end
    end
    object tsMod02: TTabSheet
      Caption = 'Modelo 02'
      ImageIndex = 6
      object RLRec_mod02: TRLReport
        Left = -16
        Top = -16
        Width = 794
        Height = 1123
        DataSource = src_recibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand_detail: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 442
          object RLImage1: TRLImage
            Left = 2
            Top = 5
            Width = 169
            Height = 70
            Stretch = True
          end
          object RLLabel1: TRLLabel
            Left = 290
            Top = 5
            Width = 122
            Height = 35
            Caption = 'RECIBO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 520
            Top = 40
            Width = 42
            Height = 12
            Caption = 'Valor R$:'
          end
          object RLDBText1: TRLDBText
            Left = 579
            Top = 40
            Width = 36
            Height = 16
            DataField = 'valor'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 5
            Top = 83
            Width = 150
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'recebide'
            DataSource = src_recibo
          end
          object RLDBText3: TRLDBText
            Left = 160
            Top = 83
            Width = 126
            Height = 16
            DataField = 'pagador_nome_cpf'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 6
            Top = 105
            Width = 150
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'importancia'
            DataSource = src_recibo
          end
          object RLDBText6: TRLDBText
            Left = 5
            Top = 162
            Width = 150
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'referente_label'
            DataSource = src_recibo
          end
          object RLDBMemo1: TRLDBMemo
            Left = 157
            Top = 164
            Width = 552
            Height = 132
            AutoSize = False
            DataField = 'referente'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo2: TRLDBMemo
            Left = 2
            Top = 316
            Width = 712
            Height = 16
            Alignment = taCenter
            DataField = 'considerecoes'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 176
            Top = 351
            Width = 538
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'data_extenso'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 90
            Top = 374
            Width = 348
            Height = 12
            Caption = 
              '________________________________________________________________' +
              '_____'
          end
          object RLDBText8: TRLDBText
            Left = 90
            Top = 395
            Width = 488
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'recebedor_nome'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 90
            Top = 413
            Width = 488
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'recebedor_cpf'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 160
            Top = 107
            Width = 552
            Height = 43
            AutoSize = False
            DataField = 'valor_extenso'
            DataSource = src_recibo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 480
          Width = 718
          Height = 16
        end
        object RLSubDetail_detalhes: TRLSubDetail
          Left = 38
          Top = 496
          Width = 718
          Height = 47
          DataSource = src_det_titulosdoc
          object RLBand5: TRLBand
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
            object rldet_titulos_numero: TRLDBText
              Left = 0
              Top = 0
              Width = 70
              Height = 16
              AutoSize = False
              Color = clRed
              DataField = 'titulos_numero'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_titulos_numero
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_titulos_vencimento: TRLDBText
              Left = 69
              Top = 0
              Width = 84
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Color = clRed
              DataField = 'titulos_vencimento'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_titulos_vencimento
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_titulos_obs: TRLDBText
              Left = 152
              Top = 0
              Width = 120
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Color = clRed
              DataField = 'titulos_obs'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_titulos_obs
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_titulos_valor: TRLDBText
              Left = 268
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = clRed
              DataField = 'titulos_valor'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_titulos_valor
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_doc_tipo: TRLDBText
              Left = 366
              Top = 0
              Width = 94
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Color = 4227072
              DataField = 'doc_tipo'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_doc_tipo
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_doc_obs: TRLDBText
              Left = 459
              Top = 0
              Width = 92
              Height = 16
              AutoSize = False
              Color = 4227072
              DataField = 'doc_obs'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -7
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_doc_obs
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_doc_data: TRLDBText
              Left = 550
              Top = 0
              Width = 90
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Color = 4227072
              DataField = 'doc_data'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_doc_data
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rldet_doc_valor: TRLDBText
              Left = 640
              Top = 0
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Color = 4227072
              DataField = 'doc_valor'
              DataSource = src_det_titulosdoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_doc_valor
              Layout = tlCenter
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLLabel4: TRLLabel
              Left = 0
              Top = 0
              Width = 358
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'dados do titulo'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object RLLabel5: TRLLabel
              Left = 366
              Top = 0
              Width = 350
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Documentos'
              Color = 4227072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btHeader
            object rlcab_titulos_numero: TRLLabel
              Left = 0
              Top = 0
              Width = 70
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Numero'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_titulos_vencimento: TRLLabel
              Left = 69
              Top = -1
              Width = 84
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vencimento'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_titulos_obs: TRLLabel
              Left = 152
              Top = -1
              Width = 120
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Observa'#231#227'o'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_titulos_valor: TRLLabel
              Left = 268
              Top = -1
              Width = 90
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_doc_tipo: TRLLabel
              Left = 366
              Top = -1
              Width = 94
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo'
              Color = 4227072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_doc_obs: TRLLabel
              Left = 459
              Top = 0
              Width = 92
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Oberva'#231#245'es'
              Color = 4227072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_doc_data: TRLLabel
              Left = 550
              Top = -1
              Width = 90
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data'
              Color = 4227072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlcab_doc_valor: TRLLabel
              Left = 640
              Top = -1
              Width = 76
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor'
              Color = 4227072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
        end
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 24
    Top = 184
  end
  object matricial: TRLDraftFilter
    Left = 704
    Top = 104
  end
  object Src_Relatorio: TDataSource
    DataSet = DM1.Query5
    Left = 72
    Top = 168
  end
  object mem_recibo: TRxMemoryData
    FieldDefs = <>
    Left = 490
    Top = 198
    object mem_recibovalor: TFloatField
      FieldName = 'valor'
    end
    object mem_recibovalor_extenso: TStringField
      FieldName = 'valor_extenso'
      Size = 300
    end
    object mem_reciborecebedor_nome: TStringField
      FieldName = 'recebedor_nome'
      Size = 200
    end
    object mem_reciborecebedor_cpf: TStringField
      FieldName = 'recebedor_cpf'
      Size = 40
    end
    object mem_recibopagador_nome: TStringField
      FieldName = 'pagador_nome'
      Size = 200
    end
    object mem_recibopagador_cpf: TStringField
      FieldName = 'pagador_cpf'
      Size = 40
    end
    object mem_reciboreferente: TStringField
      FieldName = 'referente'
      Size = 3000
    end
    object mem_recibodata_normal: TStringField
      FieldName = 'data_normal'
    end
    object mem_recibodata_extenso: TStringField
      FieldName = 'data_extenso'
      Size = 200
    end
    object mem_reciborecebide: TStringField
      FieldName = 'recebide'
      Size = 50
    end
    object mem_reciboimportancia: TStringField
      FieldName = 'importancia'
      Size = 100
    end
    object mem_reciboreferente_label: TStringField
      FieldName = 'referente_label'
      Size = 100
    end
    object mem_reciboconsiderecoes: TStringField
      FieldName = 'considerecoes'
      Size = 3000
    end
    object mem_recibopagador_nome_cpf: TStringField
      FieldName = 'pagador_nome_cpf'
      Size = 300
    end
    object mem_reciborecebedor_nome_cpf: TStringField
      FieldName = 'recebedor_nome_cpf'
    end
    object mem_reciboNumeroRecibo: TIntegerField
      FieldName = 'NumeroRecibo'
    end
  end
  object src_recibo: TDataSource
    DataSet = mem_recibo
    Left = 520
    Top = 192
  end
  object mem_det_titulosdoc: TRxMemoryData
    FieldDefs = <>
    BeforePost = mem_det_titulosdocBeforePost
    Left = 642
    Top = 174
    object mem_det_titulosdoctitulos_numero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'titulos_numero'
      Size = 10
    end
    object mem_det_titulosdoctitulo_vencimento: TStringField
      DisplayLabel = 'Vencimento'
      FieldName = 'titulos_vencimento'
      Size = 10
    end
    object mem_det_titulosdoctitulos_obs: TStringField
      DisplayLabel = 'Oberva'#231#245'es'
      FieldName = 'titulos_obs'
      Size = 100
    end
    object mem_det_titulosdoctitulos_valor: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'titulos_valor'
      Size = 15
    end
    object mem_det_titulosdocdoc_tipo: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'doc_tipo'
      Size = 50
    end
    object mem_det_titulosdocdoc_obs: TStringField
      DisplayLabel = 'Observacoes'
      FieldName = 'doc_obs'
      Size = 150
    end
    object mem_det_titulosdocdoc_data: TStringField
      DisplayLabel = 'Data'
      FieldName = 'doc_data'
      Size = 10
    end
    object mem_det_titulosdocdoc_valor: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'doc_valor'
      Size = 15
    end
  end
  object src_det_titulosdoc: TDataSource
    DataSet = mem_det_titulosdoc
    Left = 672
    Top = 176
  end
end
