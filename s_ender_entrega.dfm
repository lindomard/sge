object Frm_Ender_Entrega: TFrm_Ender_Entrega
  Left = 192
  Top = 117
  Width = 942
  Height = 303
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
    Left = 0
    Top = 0
    Width = 934
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'Endere'#231'o de Entrega'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -50
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl_dados_cliente: TLabel
    Left = 0
    Top = 57
    Width = 934
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'C'#243'digo: 3525 Raz'#227'o Social:  Santos e Souza Martins Vilas Boas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 91
    Width = 934
    Height = 122
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 9
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cep:'
    end
    object SbnEnderCep: TSpeedButton
      Left = 206
      Top = 9
      Width = 23
      Height = 18
      Cursor = crHandPoint
      Hint = 'Click aqui para buscar o endere'#231'o'
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
      OnClick = SbnEnderCepClick
    end
    object Label3: TLabel
      Left = 247
      Top = 10
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Logradouro:'
    end
    object Label4: TLabel
      Left = 707
      Top = 11
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero:'
    end
    object Label5: TLabel
      Left = 5
      Top = 28
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Complemento:'
    end
    object Label6: TLabel
      Left = 574
      Top = 29
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo Bairro:'
    end
    object Label7: TLabel
      Left = 5
      Top = 47
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo Cidade:'
    end
    object Label8: TLabel
      Left = 387
      Top = 47
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'UF:'
    end
    object Label9: TLabel
      Left = 5
      Top = 64
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ponto de Referencia:'
    end
    object DBE_COE_CEP: TDBEdit
      Left = 120
      Top = 8
      Width = 87
      Height = 19
      Ctl3D = False
      DataField = 'COE_CEP'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBE_COE_LOG: TDBEdit
      Left = 338
      Top = 8
      Width = 359
      Height = 19
      Ctl3D = False
      DataField = 'COE_LOG'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBE_COE_ENDER_NUM: TDBEdit
      Left = 810
      Top = 8
      Width = 107
      Height = 19
      Ctl3D = False
      DataField = 'COE_ENDER_NUM'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBE_COE_COMPL: TDBEdit
      Left = 120
      Top = 26
      Width = 305
      Height = 19
      Ctl3D = False
      DataField = 'COE_COMPL'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBE_COE_CODBAI: TDBEdit
      Left = 667
      Top = 26
      Width = 69
      Height = 19
      Ctl3D = False
      DataField = 'COE_CODBAI'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 4
      OnExit = DBE_COE_CODBAIExit
      OnKeyPress = DBE_COE_CODBAIKeyPress
    end
    object DBE_COE_BAIRRO: TDBEdit
      Left = 735
      Top = 26
      Width = 182
      Height = 19
      Ctl3D = False
      DataField = 'COE_BAIRRO'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBE_COE_CODLOC: TDBEdit
      Left = 120
      Top = 44
      Width = 69
      Height = 19
      Ctl3D = False
      DataField = 'COE_CODLOC'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 6
      OnExit = DBE_COE_CODLOCExit
      OnKeyPress = DBE_COE_CODLOCKeyPress
    end
    object DBE_COE_CIDADE: TDBEdit
      Left = 188
      Top = 44
      Width = 237
      Height = 19
      Ctl3D = False
      DataField = 'COE_CIDADE'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBE_COE_UF: TDBEdit
      Left = 482
      Top = 44
      Width = 39
      Height = 19
      Ctl3D = False
      DataField = 'COE_UF'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBE_COE_PONTO_REF: TDBEdit
      Left = 120
      Top = 62
      Width = 797
      Height = 19
      Ctl3D = False
      DataField = 'COE_PONTO_REF'
      DataSource = Frm_Cli.src_cli_outros_ender
      ParentCtl3D = False
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 213
    Width = 934
    Height = 59
    Align = alBottom
    TabOrder = 1
    object bbGravar: TBitBtn
      Left = 132
      Top = 20
      Width = 130
      Height = 23
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Gravar Altera'#231#245'es'
      TabOrder = 0
      OnClick = bbGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object bbCancelar: TBitBtn
      Left = 641
      Top = 20
      Width = 130
      Height = 23
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Cancelar Altera'#231#245'es'
      TabOrder = 1
      OnClick = bbCancelarClick
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
end
