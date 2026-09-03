object Frm_FPgto_Comp: TFrm_FPgto_Comp
  Left = 7
  Top = 15
  Width = 793
  Height = 524
  ActiveControl = Panel1
  Caption = 'Lancamento de Formas de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 785
    Height = 41
    Align = alTop
    TabOrder = 0
    object RG_TIPO: TRadioGroup
      Left = 79
      Top = 1
      Width = 519
      Height = 34
      Caption = 'Tipo do Recebimento:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Lan'#231'ar as Formas'
        '&Receber na Entrega'
        'Receber do &Conv'#234'nio')
      TabOrder = 0
      OnClick = RG_TIPOClick
      OnExit = RG_TIPOClick
    end
    object BitBtn1: TBitBtn
      Left = 600
      Top = 7
      Width = 119
      Height = 28
      Caption = '&Confirmar e Sair'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 441
    Width = 785
    Height = 49
    Align = alBottom
    TabOrder = 4
    object bbBaixar: TBitBtn
      Left = 9
      Top = 2
      Width = 150
      Height = 45
      Caption = '&Baixar'
      TabOrder = 0
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBCancelar: TBitBtn
      Left = 339
      Top = 3
      Width = 150
      Height = 45
      Caption = '&Cancelar e Voltar p/Produtos'
      TabOrder = 1
      OnClick = BBCancelarClick
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
    object BBSair: TBitBtn
      Left = 635
      Top = 3
      Width = 150
      Height = 45
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BBSairClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 196
    Width = 785
    Height = 134
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 156
      Top = 27
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
      Enabled = False
    end
    object Label4: TLabel
      Left = 278
      Top = 28
      Width = 34
      Height = 13
      Caption = 'Banco:'
      Enabled = False
    end
    object Label5: TLabel
      Left = 365
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Serie:'
      Enabled = False
    end
    object Label6: TLabel
      Left = 158
      Top = 49
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 158
      Top = 72
      Width = 44
      Height = 13
      Caption = 'Emitente:'
      Enabled = False
    end
    object Label8: TLabel
      Left = 470
      Top = 69
      Width = 34
      Height = 13
      Caption = 'CNPF.:'
      Enabled = False
    end
    object Label9: TLabel
      Left = 159
      Top = 93
      Width = 22
      Height = 13
      Caption = 'RG.:'
      Enabled = False
    end
    object Label10: TLabel
      Left = 577
      Top = 27
      Width = 31
      Height = 13
      Caption = 'Conta:'
      Enabled = False
    end
    object Label11: TLabel
      Left = 439
      Top = 88
      Width = 73
      Height = 13
      Caption = 'Dt.Nascimento:'
      Enabled = False
    end
    object Label12: TLabel
      Left = 320
      Top = 48
      Width = 86
      Height = 13
      Caption = 'Data do Dep'#243'sito:'
      Enabled = False
    end
    object Label13: TLabel
      Left = 472
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Agencia:'
      Enabled = False
    end
    object lbl_compens: TLabel
      Left = 532
      Top = 47
      Width = 71
      Height = 13
      Caption = 'Compensa'#231#227'o:'
      Enabled = False
    end
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 20
      Width = 143
      Height = 115
      Caption = 'Forma de Pagamento'
      TabOrder = 0
      OnExit = RadioGroup1Exit
    end
    object NUMCHQ: TEdit
      Left = 199
      Top = 24
      Width = 73
      Height = 19
      Hint = '<F3>-Para Leitura '#211'ptica'
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = NUMCHQEnter
      OnExit = NUMCHQExit
      OnKeyDown = NUMCHQKeyDown
      OnKeyPress = NUMCHQKeyPress
    end
    object BANCO: TEdit
      Left = 320
      Top = 24
      Width = 44
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = BANCOExit
      OnKeyPress = NUMCHQKeyPress
    end
    object SERIE: TEdit
      Left = 396
      Top = 23
      Width = 73
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object VALOR: TEdit
      Left = 199
      Top = 45
      Width = 116
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = VALORExit
      OnKeyPress = VALORKeyPress
    end
    object EMITENTE: TEdit
      Left = 208
      Top = 66
      Width = 204
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 9
    end
    object CPF: TEdit
      Left = 516
      Top = 66
      Width = 121
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 10
      OnKeyPress = CPFKeyPress
    end
    object RG: TEdit
      Left = 208
      Top = 87
      Width = 203
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 11
    end
    object CONTA: TEdit
      Left = 611
      Top = 24
      Width = 121
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object DTNAS: TMaskEdit
      Left = 516
      Top = 88
      Width = 66
      Height = 19
      Ctl3D = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 12
      Text = '  /  /    '
      OnExit = DTNASExit
    end
    object DTDEP: TMaskEdit
      Left = 410
      Top = 46
      Width = 66
      Height = 19
      Ctl3D = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 7
      Text = '  /  /    '
      OnExit = DTDEPExit
    end
    object AGENCIA: TEdit
      Left = 516
      Top = 24
      Width = 53
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 151
      Top = 109
      Width = 300
      Height = 25
      Caption = 'L&an'#231'ar'
      TabOrder = 13
      OnClick = BitBtn2Click
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
    object BitBtn4: TBitBtn
      Left = 478
      Top = 110
      Width = 300
      Height = 25
      Caption = 'Remo&ver Formas de Pagamentos Lan'#231'adas'
      TabOrder = 14
      OnClick = BitBtn4Click
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
    object HeaderControl3: THeaderControl
      Left = 1
      Top = 1
      Width = 783
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Lan'#231'amento das Formas de Pagamentos:'
          Width = 795
        end>
    end
    object COMPENS: TEdit
      Left = 610
      Top = 46
      Width = 53
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object st_leitor: TStaticText
      Left = 274
      Top = 24
      Width = 122
      Height = 17
      BorderStyle = sbsSunken
      Caption = '<F3>-Para Leitura '#211'ptica'
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 16
      Visible = False
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 330
    Width = 785
    Height = 111
    Align = alClient
    TabOrder = 3
    object HeaderControl4: THeaderControl
      Left = 1
      Top = 1
      Width = 783
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Formas de Pagamentos Lan'#231'adas'
          Width = 795
        end>
    end
    object STG_CHQ: TStringGrid
      Left = 1
      Top = 18
      Width = 783
      Height = 65
      Align = alClient
      ColCount = 16
      DefaultRowHeight = 15
      FixedCols = 0
      TabOrder = 1
      ColWidths = (
        127
        64
        26
        28
        62
        180
        85
        107
        64
        64
        64
        64
        64
        64
        64
        64)
    end
    object Panel4: TPanel
      Left = 1
      Top = 83
      Width = 783
      Height = 27
      Align = alBottom
      TabOrder = 2
      object Label1: TLabel
        Left = 6
        Top = 5
        Width = 64
        Height = 13
        Caption = 'Total Liquido:'
      end
      object Label14: TLabel
        Left = 238
        Top = 6
        Width = 123
        Height = 13
        Caption = 'Valor ja Informado p/pgto:'
      end
      object Label15: TLabel
        Left = 562
        Top = 6
        Width = 46
        Height = 13
        Caption = 'Restante:'
      end
      object TOTPED: TEdit
        Left = 85
        Top = 2
        Width = 121
        Height = 21
        Ctl3D = True
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object TOTREC: TEdit
        Left = 377
        Top = 2
        Width = 122
        Height = 21
        Ctl3D = True
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object TOTRES: TEdit
        Left = 632
        Top = 3
        Width = 121
        Height = 21
        Ctl3D = True
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 170
    Width = 785
    Height = 26
    Align = alTop
    TabOrder = 1
    object Label17: TLabel
      Left = 203
      Top = 5
      Width = 54
      Height = 13
      Caption = 'Descontos:'
    end
    object Label18: TLabel
      Left = 402
      Top = 6
      Width = 57
      Height = 13
      Caption = 'Acr'#233'scimos:'
    end
    object Label16: TLabel
      Left = 581
      Top = 6
      Width = 71
      Height = 13
      Caption = 'Total recebido:'
    end
    object Label2: TLabel
      Left = 8
      Top = 4
      Width = 78
      Height = 13
      Caption = 'Total do Pedido:'
    end
    object TOTDES: TEdit
      Left = 292
      Top = 3
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = TOTDESExit
      OnKeyPress = TOTDESKeyPress
    end
    object TOTACRE: TEdit
      Left = 485
      Top = 4
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = TOTACREExit
      OnKeyPress = TOTDESKeyPress
    end
    object TOTLIQ: TEdit
      Left = 654
      Top = 4
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = TOTLIQExit
      OnKeyPress = TOTDESKeyPress
    end
    object TOTCUP: TEdit
      Left = 97
      Top = 2
      Width = 80
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 785
    Height = 129
    Align = alTop
    Caption = 'Dados do Cliente:'
    TabOrder = 5
    object Label19: TLabel
      Left = 11
      Top = 44
      Width = 41
      Height = 13
      Caption = 'Cliente..:'
    end
    object Label20: TLabel
      Left = 11
      Top = 66
      Width = 52
      Height = 13
      Caption = 'Endere'#231'o.:'
    end
    object lbl_fantasia: TLabel
      Left = 414
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Fantasia.:'
    end
    object Label22: TLabel
      Left = 431
      Top = 66
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label23: TLabel
      Left = 11
      Top = 86
      Width = 39
      Height = 13
      Caption = 'Cidade.:'
    end
    object Label24: TLabel
      Left = 351
      Top = 86
      Width = 20
      Height = 13
      Caption = 'UF.:'
    end
    object Label25: TLabel
      Left = 433
      Top = 86
      Width = 27
      Height = 13
      Caption = 'CEP.:'
    end
    object lbl_cnpj: TLabel
      Left = 11
      Top = 107
      Width = 66
      Height = 13
      Caption = 'CNPJ/CNPF.:'
    end
    object lbl_ie: TLabel
      Left = 257
      Top = 106
      Width = 65
      Height = 13
      Caption = 'Incri'#231#227'o/RG.:'
    end
    object Label28: TLabel
      Left = 519
      Top = 105
      Width = 48
      Height = 13
      Caption = 'Telefone.:'
    end
    object CODCLI: TEdit
      Left = 97
      Top = 42
      Width = 63
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'CODCLI'
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object RAZSOC: TEdit
      Left = 162
      Top = 42
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = 'RAZSOC'
      OnExit = RAZSOCExit
    end
    object FANTASIA: TEdit
      Left = 480
      Top = 41
      Width = 238
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'FANTASIA'
      OnExit = FANTASIAExit
    end
    object ENDERECO: TEdit
      Left = 97
      Top = 63
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'ENDERECO'
      OnExit = ENDERECOExit
    end
    object BAIRRO: TEdit
      Left = 480
      Top = 62
      Width = 238
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'BAIRRO'
      OnExit = BAIRROExit
    end
    object CIDADE: TEdit
      Left = 97
      Top = 83
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = 'CIDADE'
      OnExit = CIDADEExit
    end
    object UF: TEdit
      Left = 379
      Top = 83
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = 'UF'
      OnExit = UFExit
    end
    object CEP: TMaskEdit
      Left = 480
      Top = 83
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '99999-999;1; '
      MaxLength = 9
      ParentCtl3D = False
      TabOrder = 8
      Text = '     -   '
      OnExit = CEPExit
    end
    object IE: TEdit
      Left = 343
      Top = 103
      Width = 136
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      Text = 'IE'
      OnExit = IEExit
    end
    object FONE: TMaskEdit
      Left = 588
      Top = 102
      Width = 123
      Height = 19
      Ctl3D = False
      EditMask = '!(999) 9999-9999;1; '
      MaxLength = 15
      ParentCtl3D = False
      TabOrder = 11
      Text = '(   )     -    '
      OnExit = FONEExit
    end
    object RG_TPPESSOA: TRadioGroup
      Left = 97
      Top = 8
      Width = 312
      Height = 30
      Caption = 'Tipo de Pessoa:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 0
      OnClick = RG_TPPESSOAClick
      OnExit = RG_TPPESSOAClick
    end
    object CNPJ: TMaskEdit
      Left = 96
      Top = 104
      Width = 145
      Height = 19
      Ctl3D = False
      EditMask = '00.000.000/0000-00;1; '
      MaxLength = 18
      ParentCtl3D = False
      TabOrder = 9
      Text = '  .   .   /    -  '
    end
  end
  object Tb_Ldr: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  CODLDR :PDESCMV, :PNUMDOC, :PNUMDOC2'
      ' ')
    Left = 567
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'PDESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PNUMDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PNUMDOC2'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Qr_Ldr: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADLDR where CODLDR is null')
    Left = 610
    Top = 160
    object Qr_LdrCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADLDR.CODEMP'
    end
    object Qr_LdrDATADP: TDateTimeField
      FieldName = 'DATADP'
      Origin = 'SG_ASSOC.CADLDR.DATADP'
    end
    object Qr_LdrCODLDR: TFloatField
      FieldName = 'CODLDR'
      Origin = 'SG_ASSOC.CADLDR.CODLDR'
    end
    object Qr_LdrDATAREAL: TDateTimeField
      FieldName = 'DATAREAL'
      Origin = 'SG_ASSOC.CADLDR.DATAREAL'
    end
    object Qr_LdrDATAREF: TDateTimeField
      FieldName = 'DATAREF'
      Origin = 'SG_ASSOC.CADLDR.DATAREF'
    end
    object Qr_LdrVALORP: TFloatField
      FieldName = 'VALORP'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LdrVALORR: TFloatField
      FieldName = 'VALORR'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Qr_LdrCODBCO: TFloatField
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADLDR.CODBCO'
    end
    object Qr_LdrCODCC: TStringField
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_LdrCODDEP: TStringField
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.CADLDR.CODDEP'
      Size = 6
    end
    object Qr_LdrNATDC: TStringField
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object Qr_LdrDESCMV: TStringField
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 50
    end
    object Qr_LdrNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object Qr_LdrNUMDOC2: TStringField
      FieldName = 'NUMDOC2'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC2'
      Size = 15
    end
    object Qr_LdrORIGEM: TFloatField
      FieldName = 'ORIGEM'
      Origin = 'SG_ASSOC.CADLDR.ORIGEM'
    end
    object Qr_LdrSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADLDR.STATUS'
    end
    object Qr_LdrTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'SG_ASSOC.CADLDR.TIPO'
      Size = 2
    end
    object Qr_LdrCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODIGO'
    end
    object Qr_LdrUSREXC: TFloatField
      FieldName = 'USREXC'
      Origin = 'SG_ASSOC.CADLDR.USREXC'
    end
    object Qr_LdrDTHREXC: TDateTimeField
      FieldName = 'DTHREXC'
      Origin = 'SG_ASSOC.CADLDR.DTHREXC'
    end
    object Qr_LdrUSRALT: TFloatField
      FieldName = 'USRALT'
      Origin = 'SG_ASSOC.CADLDR.USRALT'
    end
    object Qr_LdrDTALT: TDateTimeField
      FieldName = 'DTALT'
      Origin = 'SG_ASSOC.CADLDR.DTALT'
    end
  end
end
