object Frm_Sen01: TFrm_Sen01
  Left = 291
  Top = 264
  Width = 362
  Height = 153
  Caption = 'Senhas dos Usu'#225'rios'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 354
    Height = 122
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 17
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object Label2: TLabel
      Left = 12
      Top = 39
      Width = 67
      Height = 13
      Caption = 'Senha Antiga:'
    end
    object Label3: TLabel
      Left = 12
      Top = 61
      Width = 63
      Height = 13
      Caption = 'Nova Senha:'
    end
    object NOMUSR: TLabel
      Left = 148
      Top = 16
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 13
      Top = 83
      Width = 62
      Height = 13
      Caption = 'Confirma'#231#227'o:'
    end
    object MCODUSR: TEdit
      Left = 81
      Top = 13
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = MCODUSRExit
      OnKeyPress = MCODUSRKeyPress
    end
    object Edit2: TEdit
      Left = 81
      Top = 35
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 1
    end
    object edt_senha: TEdit
      Left = 81
      Top = 57
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 2
    end
    object OK: TButton
      Left = 148
      Top = 79
      Width = 74
      Height = 25
      Caption = '&OK'
      TabOrder = 4
      OnClick = OKClick
    end
    object Fechar: TButton
      Left = 222
      Top = 79
      Width = 74
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = FecharClick
    end
    object edt_conf: TEdit
      Left = 81
      Top = 79
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      PasswordChar = '*'
      TabOrder = 3
    end
  end
end
