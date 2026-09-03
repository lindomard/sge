object Frm_PvAb: TFrm_PvAb
  Left = 69
  Top = 99
  Width = 661
  Height = 463
  ActiveControl = CHAVEP
  Caption = 'Abertura do Cupom Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Vendedor.:'
  end
  object Label2: TLabel
    Left = 16
    Top = 39
    Width = 48
    Height = 13
    Caption = 'Cliente.:'
  end
  object Label3: TLabel
    Left = 16
    Top = 106
    Width = 62
    Height = 13
    Caption = 'Convenio.:'
  end
  object Label4: TLabel
    Left = 16
    Top = 130
    Width = 101
    Height = 13
    Caption = 'Plano de Vendas:'
  end
  object Label5: TLabel
    Left = 16
    Top = 85
    Width = 78
    Height = 13
    Caption = 'Dependente.:'
  end
  object Label10: TLabel
    Left = 18
    Top = 211
    Width = 165
    Height = 13
    Caption = 'Nome e N'#250'mero autoriza'#231#227'o:'
  end
  object Label6: TLabel
    Left = 15
    Top = 17
    Width = 87
    Height = 13
    Caption = 'Pedido Origem:'
  end
  object lbl_preco: TLabel
    Left = 170
    Top = 231
    Width = 190
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Caption = 'Somente para produtos Reajustados a partir de '
    Visible = False
    WordWrap = True
  end
  object CODVEN: TEdit
    Left = 120
    Top = 60
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CODVENExit
    OnKeyPress = CODVENKeyPress
  end
  object NOMVEN: TEdit
    Left = 208
    Top = 58
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 5
  end
  object CODCLI: TEdit
    Left = 120
    Top = 36
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object NOMCLI: TEdit
    Left = 208
    Top = 33
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
  end
  object CODCON: TEdit
    Left = 120
    Top = 104
    Width = 83
    Height = 21
    Ctl3D = True
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 7
  end
  object NOMCON: TEdit
    Left = 208
    Top = 104
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 8
  end
  object CODPV: TEdit
    Left = 172
    Top = 128
    Width = 27
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    OnExit = CODPVExit
    OnKeyPress = CODPVKeyPress
  end
  object NOMPV: TEdit
    Left = 208
    Top = 127
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 11
  end
  object CODDEP: TEdit
    Left = 120
    Top = 82
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    OnKeyPress = CODDEPKeyPress
  end
  object NOMDEP: TEdit
    Left = 208
    Top = 81
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 12
  end
  object RG_TPENT: TRadioGroup
    Left = 16
    Top = 150
    Width = 467
    Height = 53
    Caption = 'Tipo de Entrega:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '&Retirar'
      '&Domicilio c/Frete'
      'Domicilio &s/Frete'
      '&Sede do Convenio')
    TabOrder = 13
    OnClick = RG_TPENTClick
  end
  object NAUT: TEdit
    Left = 192
    Top = 209
    Width = 291
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 14
    OnExit = NAUTExit
    OnKeyPress = NAUTKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 653
    Height = 53
    Align = alBottom
    TabOrder = 18
    object BitBtn2: TBitBtn
      Left = 456
      Top = 2
      Width = 145
      Height = 49
      Caption = '&Cancelar'
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 40
      Top = 2
      Width = 145
      Height = 49
      Caption = 'C&onfirmar'
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 298
    Width = 479
    Height = 75
    Caption = '[Observa'#231#245'es:]'
    TabOrder = 17
    object OBS1: TEdit
      Left = 2
      Top = 14
      Width = 470
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = OBS1Exit
      OnKeyPress = OBS1KeyPress
    end
    object OBS2: TEdit
      Left = 2
      Top = 33
      Width = 470
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = OBS2Exit
      OnKeyPress = OBS2KeyPress
    end
    object OBS3: TEdit
      Left = 2
      Top = 52
      Width = 470
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = OBS3Exit
      OnKeyPress = OBS3KeyPress
    end
  end
  object CHAVEP: TEdit
    Left = 119
    Top = 13
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = CHAVEPExit
  end
  object DADOSP: TEdit
    Left = 207
    Top = 11
    Width = 276
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 488
    Top = 53
    Width = 152
    Height = 54
    Caption = 'Vencimento Cadastro:'
    TabOrder = 19
    object VCTOTI: TMaskEdit
      Left = 27
      Top = 20
      Width = 84
      Height = 21
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentColor = True
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object RG_TPPCO: TRadioGroup
    Left = 18
    Top = 228
    Width = 125
    Height = 60
    Caption = 'Tipo de Pre'#231'o:'
    ItemIndex = 0
    Items.Strings = (
      '&Normal'
      '&Anterior')
    TabOrder = 15
    OnExit = RG_TPPCOExit
  end
  object CB_TABPV: TComboBox
    Left = 120
    Top = 127
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'AP'
    OnExit = CB_TABPVExit
    Items.Strings = (
      'AV'
      'AP'
      'PP'
      'CV'
      'PO')
  end
  object MDATAREAJ: TMaskEdit
    Left = 217
    Top = 265
    Width = 85
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 16
    Text = '  /  /    '
    Visible = False
    OnExit = MDATAREAJExit
  end
end
