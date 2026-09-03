object Frm_Ent: TFrm_Ent
  Left = 156
  Top = 158
  Width = 571
  Height = 159
  BorderIcons = [biSystemMenu]
  Caption = 'Entrando no Sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 125
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Empresa..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 40
      Width = 60
      Height = 13
      Caption = 'Usu'#225'rio...:'
    end
    object Label3: TLabel
      Left = 19
      Top = 64
      Width = 61
      Height = 13
      Caption = 'Senha.....:'
    end
    object CB_EMP: TComboBox
      Left = 84
      Top = 13
      Width = 450
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      Sorted = True
      TabOrder = 0
      OnExit = CB_EMPExit
    end
    object CB_USU: TComboBox
      Left = 84
      Top = 36
      Width = 450
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      Sorted = True
      TabOrder = 1
    end
    object SENHA: TEdit
      Left = 84
      Top = 59
      Width = 221
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 56
      Top = 88
      Width = 100
      Height = 25
      Caption = '&Entrar'
      TabOrder = 3
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
      Left = 427
      Top = 88
      Width = 100
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtn2Click
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
  end
end
