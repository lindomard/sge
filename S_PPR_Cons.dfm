object Frm_PPR_Cons: TFrm_PPR_Cons
  Left = 208
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Consultas no Arquivo de Promo'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 528
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 74
      Top = 13
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 216
      Top = 14
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 69
      Top = 37
      Width = 51
      Height = 13
      Caption = 'C'#243'd.Rede:'
    end
    object MDT1: TMaskEdit
      Left = 127
      Top = 11
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 231
      Top = 11
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object CODRED: TEdit
      Left = 128
      Top = 33
      Width = 57
      Height = 19
      Ctl3D = False
      MaxLength = 6
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODREDExit
      OnKeyPress = CODREDKeyPress
    end
    object NOMRED: TEdit
      Left = 187
      Top = 33
      Width = 322
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Todos...'
    end
    object bbAplicar: TBitBtn
      Left = 72
      Top = 63
      Width = 113
      Height = 25
      Caption = '&Aplicar'
      TabOrder = 4
      OnClick = bbAplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 304
      Top = 61
      Width = 113
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 528
    Height = 232
    Align = alClient
    Caption = 'Promo'#231#245'es Existentes:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 524
      Height = 215
      Align = alClient
      DataSource = Src_PPR
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Src_PPR: TDataSource
    DataSet = DM1.Query4
    Left = 16
    Top = 56
  end
end
