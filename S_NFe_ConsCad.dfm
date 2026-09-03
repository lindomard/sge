object Frm_NFe_ConsCad: TFrm_NFe_ConsCad
  Left = 19
  Top = 114
  Width = 900
  Height = 590
  Caption = 'Consulta Cadastro de Clientes Junto ao Sefaz'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 187
    Top = 27
    Width = 120
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Estado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 187
    Top = 47
    Width = 120
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 187
    Top = 64
    Width = 120
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Inscri'#231#227'o Estadual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 187
    Top = 83
    Width = 120
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cb_uf: TComboBox
    Left = 310
    Top = 24
    Width = 46
    Height = 21
    BevelKind = bkSoft
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 9
    ParentCtl3D = False
    Sorted = True
    TabOrder = 0
    Text = 'GO'
    Items.Strings = (
      ''
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RO'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object bbconsultar: TBitBtn
    Left = 20
    Top = 100
    Width = 142
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = bbconsultarClick
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
  object edt_cnpj: TMaskEdit
    Left = 310
    Top = 44
    Width = 121
    Height = 19
    Ctl3D = False
    EditMask = '00.000.000/0000-00'
    MaxLength = 18
    ParentCtl3D = False
    TabOrder = 1
    Text = '  .   .   /    -  '
    OnExit = edt_cnpjExit
  end
  object edt_ie: TEdit
    Left = 310
    Top = 62
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object edt_cpf: TMaskEdit
    Left = 310
    Top = 80
    Width = 121
    Height = 19
    Ctl3D = False
    EditMask = '000.000.000-00;1;_'
    MaxLength = 14
    ParentCtl3D = False
    TabOrder = 3
    Text = '   .   .   -  '
    OnExit = edt_cpfExit
  end
  object bbLimpar: TBitBtn
    Left = 348
    Top = 100
    Width = 142
    Height = 25
    Caption = '&Limpar'
    TabOrder = 5
    OnClick = bbLimparClick
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
  end
  object bbSair: TBitBtn
    Left = 700
    Top = 100
    Width = 142
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
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
  object gb_digitados: TGroupBox
    Left = 549
    Top = 6
    Width = 299
    Height = 89
    Caption = 'Dados Digitados no Cadastro:'
    Color = 8454143
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    Visible = False
    object Label23: TLabel
      Left = 17
      Top = 31
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 17
      Top = 48
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inscri'#231#227'o Estadual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 17
      Top = 67
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_cnpj_dig: TMaskEdit
      Left = 136
      Top = 28
      Width = 121
      Height = 19
      Ctl3D = False
      EditMask = '00.000.000/0000-00'
      MaxLength = 18
      ParentCtl3D = False
      TabOrder = 0
      Text = '  .   .   /    -  '
    end
    object edt_ie_dig: TEdit
      Left = 136
      Top = 46
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object edt_cpf_dig: TMaskEdit
      Left = 136
      Top = 64
      Width = 121
      Height = 19
      Ctl3D = False
      EditMask = '000.000.000-00;1;_'
      MaxLength = 14
      ParentCtl3D = False
      TabOrder = 2
      Text = '   .   .   -  '
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 133
    Width = 892
    Height = 426
    ActivePage = tsResultado
    Align = alBottom
    TabOrder = 8
    object tsResultado: TTabSheet
      Caption = 'Resultado:'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 884
        Height = 389
        Align = alTop
        Caption = 'Resultado Obtido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lbl_resultado: TLabel
          Left = 2
          Top = 15
          Width = 880
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Registro N'#227'o Encontrado'
          Color = 8454016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label5: TLabel
          Left = 19
          Top = 113
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 299
          Top = 114
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Inscri'#231#227'o Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 587
          Top = 114
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 19
          Top = 133
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 19
          Top = 221
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 19
          Top = 151
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 506
          Top = 150
          Width = 37
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 617
          Top = 149
          Width = 78
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 19
          Top = 169
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 791
          Top = 168
          Width = 28
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 448
          Top = 168
          Width = 45
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 19
          Top = 202
          Width = 120
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo Situa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 306
          Top = 203
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Regime de Apura'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 507
          Top = 131
          Width = 54
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 4
          Top = 184
          Width = 137
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo da Cidade IBGE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 400
          Top = 185
          Width = 38
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 580
          Top = 186
          Width = 142
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Inicio Atividade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 594
          Top = 203
          Width = 130
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNAE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_obscli: TLabel
          Left = 11
          Top = 329
          Width = 516
          Height = 54
          Alignment = taCenter
          AutoSize = False
          Caption = 'lbl_obscli'
          Color = 14483385
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object Label26: TLabel
          Left = 6
          Top = 239
          Width = 220
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Indicador de contribuinte credenciado a emitir NFe:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 9
          Top = 258
          Width = 217
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Indicador de contribuinte credenciado a emitir CTe:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 4
          Top = 277
          Width = 378
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 
            'Data da '#250'ltima modifica'#231#227'o da situa'#231#227'o cadastral do contribuinte' +
            ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 493
          Top = 276
          Width = 259
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data de ocorr'#234'ncia da baixa do contribuinte.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 5
          Top = 295
          Width = 439
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 
            'IE '#250'nica, este campo ser'#225' informado quando o contribuinte possui' +
            'r IE '#250'nica.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 182
          Top = 312
          Width = 259
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'IE atual (em caso de IE antiga consultada):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_dBaixa: TEdit
          Left = 751
          Top = 273
          Width = 100
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 24
        end
        object edt_enc_cnpj: TMaskEdit
          Left = 142
          Top = 110
          Width = 121
          Height = 19
          Ctl3D = False
          EditMask = '00.000.000/0000-00'
          MaxLength = 18
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = '  .   .   /    -  '
        end
        object edt_enc_ie: TEdit
          Left = 422
          Top = 110
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_enc_cpf: TMaskEdit
          Left = 719
          Top = 110
          Width = 131
          Height = 19
          Ctl3D = False
          EditMask = '000.000.000-00;1;_'
          MaxLength = 14
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '   .   .   -  '
        end
        object edt_razsoc: TEdit
          Left = 142
          Top = 128
          Width = 361
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object edt_status: TEdit
          Left = 142
          Top = 218
          Width = 51
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_status_descricao: TEdit
          Left = 191
          Top = 218
          Width = 659
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object edt_endereco: TEdit
          Left = 142
          Top = 146
          Width = 361
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object edt_ender_nro: TEdit
          Left = 549
          Top = 146
          Width = 65
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object edt_ender_complemento: TEdit
          Left = 695
          Top = 146
          Width = 155
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object edt_bairro: TEdit
          Left = 142
          Top = 164
          Width = 299
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object edt_cidade: TEdit
          Left = 502
          Top = 164
          Width = 288
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object edt_uf: TEdit
          Left = 820
          Top = 164
          Width = 30
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object cb_csit: TComboBox
          Left = 142
          Top = 200
          Width = 145
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ItemHeight = 13
          ItemIndex = 1
          ParentCtl3D = False
          TabOrder = 12
          Text = 'Habilitado'
          Items.Strings = (
            'N'#227'o Habilitado'
            'Habilitado')
        end
        object edt_regapur: TEdit
          Left = 440
          Top = 200
          Width = 151
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object edt_fantasia: TEdit
          Left = 568
          Top = 128
          Width = 282
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object edt_codibge: TEdit
          Left = 142
          Top = 182
          Width = 99
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object edt_cep: TEdit
          Left = 440
          Top = 182
          Width = 94
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
        object edt_dtiniativ: TEdit
          Left = 727
          Top = 182
          Width = 123
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
        end
        object edt_cnae: TEdit
          Left = 727
          Top = 200
          Width = 123
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 18
        end
        object bbAceitar: TBitBtn
          Left = 523
          Top = 333
          Width = 309
          Height = 25
          Caption = 'Aceitar dados Encontrados'
          TabOrder = 19
          Visible = False
          OnClick = bbAceitarClick
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
        object bbSairIncluir: TBitBtn
          Left = 523
          Top = 359
          Width = 309
          Height = 25
          Caption = 'Sair Incluindo um Novo Cliente '
          TabOrder = 20
          Visible = False
          OnClick = bbSairIncluirClick
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
        object cb_indCredNFe: TComboBox
          Left = 228
          Top = 236
          Width = 624
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 21
          Text = 'Habilitado'
          Items.Strings = (
            '0 - N'#227'o credenciado para emiss'#227'o da NF-e;'
            '1 - Credenciado;'
            '2 - Credenciado com obrigatoriedade para todas opera'#231#245'es;'
            '3 - Credenciado com obrigatoriedade parcial;'
            
              '4 '#8211' a SEFAZ n'#227'o fornece a informa'#231#227'o. Este indicador significa a' +
              'penas que o contribuinte '#233' credenciado para emitir NF-e na SEFAZ' +
              ' consultada.')
        end
        object cb_indCredCTe: TComboBox
          Left = 229
          Top = 255
          Width = 623
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 22
          Text = 'Habilitado'
          Items.Strings = (
            '0 - N'#227'o credenciado para emiss'#227'o da CT-e;'
            '1 - Credenciado;'
            '2 - Credenciado com obrigatoriedade para todas opera'#231#245'es;'
            '3 - Credenciado com obrigatoriedade parcial;'
            '4 '#8211' a SEFAZ n'#227'o fornece a informa'#231#227'o.')
        end
        object edt_dUltSit: TEdit
          Left = 383
          Top = 274
          Width = 103
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 23
        end
        object edt_IEUnica: TEdit
          Left = 447
          Top = 292
          Width = 104
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 25
        end
        object edt_IEAtual: TEdit
          Left = 447
          Top = 309
          Width = 104
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 26
        end
      end
    end
    object TsXML: TTabSheet
      Caption = 'Arquivo Xml'
      ImageIndex = 1
      object RichEdit_memo: TRichEdit
        Left = 0
        Top = 0
        Width = 884
        Height = 398
        Align = alClient
        Lines.Strings = (
          'RichEdit_memo')
        TabOrder = 0
      end
    end
  end
end
