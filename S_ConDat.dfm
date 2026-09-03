object Frm_ConDat: TFrm_ConDat
  Left = 150
  Top = 111
  Width = 630
  Height = 203
  Width = 569
  Height = 197
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Confirma'#231#227'o de data do sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 102
    Height = 13
    Caption = 'Data do Sistema.:'
  end
  object Label2: TLabel
    Left = 12
    Top = 32
    Width = 135
    Height = 13
    Caption = 'Data do '#250'ltimo acesso.:'
  end
  object Label3: TLabel
    Left = 12
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Diferen'#231'a.:'
  end
  object Label4: TLabel
    Left = 12
    Top = 80
    Width = 52
    Height = 13
    Caption = 'Usu'#225'rio.:'
  end
  object Label5: TLabel
    Left = 12
    Top = 103
    Width = 41
    Height = 13
    Caption = 'Senha:'
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 136
    Left = 64
    Top = 136
    Left = 56
    Top = 120
    Left = 64
    Top = 133
    Width = 120
    Height = 25
    Caption = '&Confirma'
    TabOrder = 0
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 416
    Top = 128
    Left = 376
    Top = 133
    Width = 120
    Height = 25
    Caption = 'C&ancela'
    TabOrder = 1
    OnClick = BitBtn2Click
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
  object MDTSIS: TMaskEdit
    Left = 169
    Top = 12
    Width = 100
    Height = 21
    Enabled = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentColor = True
    TabOrder = 2
    Text = '  /  /    '
  end
  object MDTUACE: TMaskEdit
    Left = 169
    Top = 28
    Width = 100
    Height = 21
    Enabled = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentColor = True
    TabOrder = 3
    Text = '  /  /    '
  end
  object QTDD: TEdit
    Left = 169
    Top = 52
    Width = 100
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 4
  end
  object NOMUSR: TEdit
    Left = 271
    Top = 75
    Width = 260
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 5
  end
  object edt_codusr: TEdit
    Left = 169
    Top = 74
    Width = 99
    Height = 21
    TabOrder = 6
    OnExit = edt_codusrExit
    OnKeyPress = edt_codusrKeyPress
  end
  object edt_senha: TEdit
    Left = 168
    Top = 97
    Width = 98
    Height = 21
    PasswordChar = '*'
    TabOrder = 7
  end
end
