object Frm_BuscaCep: TFrm_BuscaCep
  Left = 305
  Top = 137
  Width = 626
  Height = 236
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Busca CEP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 618
    Height = 64
    Align = alTop
    Caption = 'Buscar Pelo Cep:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 24
      Width = 77
      Height = 13
      Caption = 'Digite o CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbBuscarCEP: TBitBtn
      Left = 276
      Top = 17
      Width = 116
      Height = 25
      Caption = 'Buscar Agora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbBuscarCEPClick
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
    object edtCep: TEdit
      Left = 151
      Top = 20
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edtCepExit
    end
    object BitBtn1: TBitBtn
      Left = 396
      Top = 17
      Width = 116
      Height = 25
      Caption = 'Buscar Novo'
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
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 64
    Width = 618
    Height = 141
    Align = alClient
    Caption = 'Registro Selecionado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 4
      Top = 51
      Width = 80
      Height = 13
      Caption = 'Complemento:'
    end
    object Label7: TLabel
      Left = 549
      Top = 67
      Width = 21
      Height = 13
      Caption = 'UF:'
    end
    object Label8: TLabel
      Left = 324
      Top = 67
      Width = 44
      Height = 13
      Caption = 'Cidade:'
    end
    object Label9: TLabel
      Left = 45
      Top = 66
      Width = 38
      Height = 13
      Caption = 'Bairro:'
    end
    object Label10: TLabel
      Left = 176
      Top = 12
      Width = 33
      Height = 13
      Caption = 'CEP.:'
    end
    object Label11: TLabel
      Left = 14
      Top = 32
      Width = 69
      Height = 13
      Caption = 'Logradouro:'
    end
    object bbAceitar: TBitBtn
      Left = 171
      Top = 91
      Width = 305
      Height = 25
      Caption = 'Aceitar este CEP'
      TabOrder = 0
      OnClick = bbAceitarClick
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
    object edt_cep_amostra: TDBEdit
      Left = 214
      Top = 9
      Width = 88
      Height = 19
      Ctl3D = False
      DataField = 'CEP'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtLogradouro: TEdit
      Left = 98
      Top = 30
      Width = 432
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edtBairro: TEdit
      Left = 92
      Top = 62
      Width = 173
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object edtCidade: TEdit
      Left = 364
      Top = 62
      Width = 173
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object edtUF: TEdit
      Left = 564
      Top = 62
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 368
    Top = 72
  end
end
