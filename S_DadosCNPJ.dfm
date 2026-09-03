object Frm_DadosCNPJ: TFrm_DadosCNPJ
  Left = 311
  Top = 186
  Width = 659
  Height = 415
  Caption = 'Consulta dados por CNPJ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 7
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object BBnAtu: TBitBtn
      Left = 253
      Top = 2
      Width = 117
      Height = 25
      Caption = 'consultar'
      TabOrder = 1
      OnClick = BBnAtuClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
        FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
        FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
        0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
        F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
        FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
        0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
        003333337FFFFFFF773333330000000003333333777777777333}
      NumGlyphs = 2
    end
    object edt_rf_cnpj: TEdit
      Left = 59
      Top = 5
      Width = 162
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = edt_rf_cnpjChange
      OnKeyPress = edt_rf_cnpjKeyPress
    end
    object bbSair: TBitBtn
      Left = 469
      Top = 0
      Width = 117
      Height = 25
      Hint = 'Fecha a Janela'
      Caption = 'Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 651
    Height = 355
    Align = alClient
    TabOrder = 1
    object Label4: TLabel
      Left = 25
      Top = 16
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNPJ:'
    end
    object Label3: TLabel
      Left = 25
      Top = 52
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome/Raz'#227'o Social:'
    end
    object Label11: TLabel
      Left = 25
      Top = 72
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fantasia/Denomina'#231#227'o:'
    end
    object Label_end: TLabel
      Left = 25
      Top = 89
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Endere'#231'o'
    end
    object Label6: TLabel
      Left = 25
      Top = 107
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nro:'
    end
    object Label7: TLabel
      Left = 25
      Top = 124
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Complemento:'
    end
    object Label5: TLabel
      Left = 25
      Top = 144
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cep:'
    end
    object Label8: TLabel
      Left = 25
      Top = 162
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bairro:'
    end
    object Label9: TLabel
      Left = 25
      Top = 179
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Municipio:'
    end
    object Label10: TLabel
      Left = 25
      Top = 196
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'UF:'
    end
    object Label12: TLabel
      Left = 25
      Top = 212
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNAE Principal:'
    end
    object Label13: TLabel
      Left = 25
      Top = 229
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNAE Segundario:'
    end
    object Label14: TLabel
      Left = 25
      Top = 248
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Abertura:'
    end
    object Label15: TLabel
      Left = 25
      Top = 266
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Natureza Juridica:'
    end
    object Label1: TLabel
      Left = 25
      Top = 34
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inscri'#231#227'o Estadual:'
    end
    object Label16: TLabel
      Left = 403
      Top = 179
      Width = 77
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo IBGE:'
    end
    object Label17: TLabel
      Left = 23
      Top = 286
      Width = 160
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Regime Tributario:'
    end
    object lbl_obscli: TLabel
      Left = 1
      Top = 341
      Width = 649
      Height = 13
      Align = alBottom
      Alignment = taCenter
      Caption = 'lbl_obscli'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Edit_CNPJ: TEdit
      Left = 187
      Top = 13
      Width = 400
      Height = 19
      Hint = 'N'#218'MERO DE INSCRI'#199#195'O CNPJ'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit_Nome: TEdit
      Left = 187
      Top = 49
      Width = 400
      Height = 19
      Hint = 'NOME EMPRESARIAL'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_fantasia: TEdit
      Left = 187
      Top = 67
      Width = 400
      Height = 19
      Hint = 'T'#205'TULO DO ESTABELECIMENTO (NOME DE FANTASIA) '
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit_Endereco: TEdit
      Left = 187
      Top = 85
      Width = 400
      Height = 19
      Hint = 'LOGRADOURO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit_Numero: TEdit
      Left = 187
      Top = 103
      Width = 56
      Height = 19
      Hint = 'N'#218'MERO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit_Complemento: TEdit
      Left = 187
      Top = 121
      Width = 400
      Height = 19
      Hint = 'COMPLEMENTO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Edit_Cep: TEdit
      Left = 187
      Top = 139
      Width = 105
      Height = 19
      Hint = 'CEP'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object Edit_Bairro: TEdit
      Left = 187
      Top = 157
      Width = 400
      Height = 19
      Hint = 'BAIRRO/DISTRITO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object edt_municipio: TEdit
      Left = 187
      Top = 175
      Width = 220
      Height = 19
      Hint = 'MUNIC'#205'PIO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edt_UF: TEdit
      Left = 187
      Top = 193
      Width = 34
      Height = 19
      Hint = 'UF'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object edt_cnae_principal: TEdit
      Left = 187
      Top = 211
      Width = 400
      Height = 19
      Hint = 'C'#211'DIGO E DESCRI'#199#195'O DA ATIVIDADE ECON'#212'MICA PRINCIPAL'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object Edt_cnae_segundario: TEdit
      Left = 187
      Top = 226
      Width = 400
      Height = 19
      Hint = 'C'#211'DIGO E DESCRI'#199#195'O DAS ATIVIDADES ECON'#212'MICAS SECUND'#193'RIAS'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object edt_datacnpj: TEdit
      Left = 187
      Top = 244
      Width = 400
      Height = 19
      Hint = 
        'COMPROVANTE DE INSCRI'#199#195'O E DE SITUA'#199#195'O CADASTRAL DATA DE ABERTUR' +
        'A'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object edt_codnat_juridica: TEdit
      Left = 187
      Top = 262
      Width = 400
      Height = 19
      Hint = 'C'#211'DIGO E DESCRI'#199#195'O DA NATUREZA JUR'#205'DICA'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object bbSairIncluir: TBitBtn
      Left = 195
      Top = 307
      Width = 209
      Height = 25
      Hint = 'Fecha a Janela'
      Caption = 'Sair Incluindo um Novo Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = bbSairIncluirClick
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
    object edt_inscicao_estadual: TEdit
      Left = 187
      Top = 31
      Width = 400
      Height = 19
      Hint = 'N'#218'MERO DE INSCRI'#199#195'O'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object edt_codigo_ibge: TEdit
      Left = 483
      Top = 175
      Width = 104
      Height = 19
      Hint = 'MUNIC'#205'PIO'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object CB_CRT: TComboBox
      Left = 186
      Top = 280
      Width = 401
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 17
      Text = 'Indefinido'
      Items.Strings = (
        'Indefinido'
        'Simples Nacional'
        'Simples Nacional Excesso de sublimite de receita bruta'
        'Regime Normal')
    end
  end
  object cds_princ: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 6
    Top = 41
    object cds_princabertura: TStringField
      FieldName = 'abertura'
      Size = 10
    end
    object cds_princsituacao: TStringField
      FieldName = 'situacao'
    end
    object cds_princnome: TStringField
      FieldName = 'nome'
      Size = 200
    end
    object cds_princporte: TStringField
      FieldName = 'porte'
      Size = 200
    end
    object cds_princnatureza_juridica: TStringField
      FieldName = 'natureza_juridica'
      Size = 200
    end
    object cds_princlogradouro: TStringField
      FieldName = 'logradouro'
      Size = 200
    end
    object cds_princnumero: TStringField
      FieldName = 'numero'
      Size = 50
    end
    object cds_princcomplemento: TStringField
      FieldName = 'complemento'
      Size = 100
    end
    object cds_princmunicipio: TStringField
      FieldName = 'municipio'
      Size = 200
    end
    object cds_princbairro: TStringField
      FieldName = 'bairro'
      Size = 200
    end
    object cds_princuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cds_princcep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object cds_princtelefone: TStringField
      FieldName = 'telefone'
      Size = 200
    end
    object cds_princdata_situacao: TStringField
      FieldName = 'data_situacao'
      Size = 10
    end
    object cds_princcnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_princultima_atualizacao: TStringField
      FieldName = 'ultima_atualizacao'
      Size = 30
    end
    object cds_princstatus: TStringField
      FieldName = 'status'
      Size = 200
    end
    object cds_princfantasia: TStringField
      FieldName = 'fantasia'
      Size = 200
    end
    object cds_princemail: TStringField
      FieldName = 'email'
      Size = 254
    end
    object cds_princefr: TStringField
      FieldName = 'efr'
      Size = 200
    end
    object cds_princmotivo_situacao: TStringField
      FieldName = 'motivo_situacao'
      Size = 200
    end
    object cds_princsituacao_especial: TStringField
      FieldName = 'situacao_especial'
      Size = 200
    end
    object cds_princdata_situacao_especial: TStringField
      FieldName = 'data_situacao_especial'
      Size = 30
    end
    object cds_princcapital_social: TStringField
      FieldName = 'capital_social'
      Size = 30
    end
    object cds_princtipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo'
      Size = 100
      Calculated = True
    end
    object cds_princinscricao_estadual: TStringField
      FieldName = 'inscricao_estadual'
      Size = 30
    end
    object cds_princcodigo_ibge: TStringField
      FieldKind = fkCalculated
      FieldName = 'codigo_ibge'
      Calculated = True
    end
  end
  object cds_atv_princ: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 33
    Top = 41
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C0004746578
      74020049000000010005574944544802000200FE0004636F6465010049000000
      0100055749445448020002001E000000}
    object cds_atv_princtext: TStringField
      FieldName = 'text'
      Size = 254
    end
    object cds_atv_princcode: TStringField
      FieldName = 'code'
      Size = 30
    end
  end
  object cds_atv_sec: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 59
    Top = 41
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C00046E6F6D
      65010049000000010005574944544802000200C800047175616C010049000000
      01000557494454480200020064000000}
    object cds_atv_seccode: TStringField
      FieldKind = fkCalculated
      FieldName = 'code'
      Size = 100
      Calculated = True
    end
    object cds_atv_sectext: TStringField
      FieldKind = fkCalculated
      FieldName = 'text'
      Size = 254
      Calculated = True
    end
  end
  object cds_qsa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 89
    Top = 41
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C00046E6F6D
      65020049000000010005574944544802000200FE00047175616C020049000000
      010005574944544802000200FE000000}
    object cds_qsanome: TStringField
      FieldName = 'nome'
      Size = 254
    end
    object cds_qsaqual: TStringField
      FieldName = 'qual'
      Size = 254
    end
  end
  object cds_simples: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 117
    Top = 41
    object cds_simplesoptante: TStringField
      FieldName = 'optante'
      Size = 10
    end
    object cds_simplesdata_opcao: TStringField
      FieldName = 'data_opcao'
      Size = 10
    end
    object cds_simplesdata_exclusao: TStringField
      FieldName = 'data_exclusao'
      Size = 10
    end
    object cds_simplesultima_atualizacao: TStringField
      FieldName = 'ultima_atualizacao'
      Size = 30
    end
  end
  object cds_simei: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 151
    Top = 41
    Data = {
      9E0000009619E0BD0100000018000000040000000000030000009E00076F7074
      616E74650100490000000100055749445448020002000A000A646174615F6F70
      63616F0100490000000100055749445448020002001E000D646174615F657863
      6C7573616F0100490000000100055749445448020002001E0012756C74696D61
      5F617475616C697A6163616F0100490000000100055749445448020002001E00
      0000}
    object cds_simeioptante: TStringField
      FieldName = 'optante'
      Size = 10
    end
    object cds_simeidata_opcao: TStringField
      FieldName = 'data_opcao'
      Size = 30
    end
    object cds_simeidata_exclusao: TStringField
      FieldName = 'data_exclusao'
      Size = 30
    end
    object cds_simeiultima_atualizacao: TStringField
      FieldName = 'ultima_atualizacao'
      Size = 30
    end
  end
  object cds_billing: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 175
    Top = 41
    Data = {
      500000009619E0BD010000001800000002000000000003000000500004667265
      650100490000000100055749445448020002000A000864617461626173650100
      490000000100055749445448020002000A000000}
    object cds_billingfree: TStringField
      FieldName = 'free'
      Size = 10
    end
    object cds_billingdatabase: TStringField
      FieldName = 'database'
      Size = 10
    end
  end
end
