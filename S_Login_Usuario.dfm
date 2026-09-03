object Frm_Login_Usuario: TFrm_Login_Usuario
  Left = 138
  Top = 114
  Width = 619
  Height = 304
  BorderIcons = []
  Caption = 'Login de Usu'#225'rio do Sistema'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 611
    Height = 273
    Align = alClient
    Stretch = True
    Transparent = True
  end
  object Label2: TLabel
    Left = 19
    Top = 145
    Width = 60
    Height = 13
    Caption = 'Usu'#225'rio...:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_senha: TLabel
    Left = 19
    Top = 179
    Width = 61
    Height = 13
    Caption = 'Senha.....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 600
    Height = 61
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lbl_obs: TLabel
    Left = 0
    Top = 91
    Width = 600
    Height = 46
    Alignment = taCenter
    AutoSize = False
    Caption = 'Login de Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lbl_hora: TLabel
    Left = 454
    Top = 70
    Width = 46
    Height = 13
    Caption = 'lbl_hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_data: TLabel
    Left = 40
    Top = 71
    Width = 46
    Height = 13
    Caption = 'lbl_data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object CB_USU: TComboBox
    Left = 84
    Top = 141
    Width = 450
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    Sorted = True
    TabOrder = 0
    OnExit = CB_USUExit
  end
  object SENHA: TEdit
    Left = 84
    Top = 174
    Width = 221
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 180
    Top = 206
    Width = 100
    Height = 25
    Caption = '&Entrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
  object BitBtn3: TBitBtn
    Left = 307
    Top = 206
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 288
    Top = 40
  end
end
