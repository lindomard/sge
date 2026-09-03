object Frm_FolManL01: TFrm_FolManL01
  Left = 462
  Top = 167
  Width = 801
  Height = 531
  ActiveControl = CODFUN
  Caption = 'Lan'#231'amento Manual da Folha de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 176
    Width = 793
    Height = 179
    Align = alClient
    Caption = 'detalhes:'
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 123
      Width = 789
      Height = 54
      Align = alBottom
      TabOrder = 0
      object CODEVE: TEdit
        Left = 6
        Top = 8
        Width = 94
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODEVEExit
        OnKeyPress = CODEVEKeyPress
      end
      object NOMEVE: TEdit
        Left = 99
        Top = 8
        Width = 247
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object VALOR: TEdit
        Left = 346
        Top = 8
        Width = 82
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = VALORExit
        OnKeyPress = VALORKeyPress
      end
      object REF: TEdit
        Left = 427
        Top = 8
        Width = 48
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = '1,00'
        OnExit = REFExit
        OnKeyPress = VALORKeyPress
      end
      object PADRAO: TEdit
        Left = 474
        Top = 8
        Width = 53
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = '1,00'
        OnExit = PADRAOExit
        OnKeyPress = VALORKeyPress
      end
      object VENCIMENTOS: TEdit
        Left = 527
        Top = 8
        Width = 101
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnEnter = VENCIMENTOSEnter
        OnExit = VENCIMENTOSExit
      end
      object DESCONTOS: TEdit
        Left = 628
        Top = 8
        Width = 114
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 6
      end
      object ITEM_GRAVAR: TBitBtn
        Left = 3
        Top = 31
        Width = 100
        Height = 21
        Caption = 'Grava&r'
        TabOrder = 7
        OnClick = ITEM_GRAVARClick
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
      object ITEM_EDITAR: TBitBtn
        Left = 104
        Top = 31
        Width = 100
        Height = 21
        Caption = '&Editar'
        TabOrder = 8
        OnClick = ITEM_EDITARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object ITEM_CANCELAR: TBitBtn
        Left = 204
        Top = 31
        Width = 100
        Height = 21
        Caption = 'Cancela&r'
        TabOrder = 9
        OnClick = ITEM_CANCELARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
      end
      object BitBtn6: TBitBtn
        Left = 304
        Top = 31
        Width = 100
        Height = 21
        Caption = 'E&xcluir'
        TabOrder = 10
        OnClick = BitBtn6Click
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
    object STG2: TStringGrid
      Left = 2
      Top = 15
      Width = 789
      Height = 108
      Align = alClient
      ColCount = 15
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      ColWidths = (
        99
        243
        80
        47
        51
        99
        113
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 355
    Width = 793
    Height = 104
    Align = alBottom
    Caption = 'Rodap'#233':'
    Color = clScrollBar
    ParentColor = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 527
      Top = 7
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Total de Vencimentos'
    end
    object Edit2: TEdit
      Left = 636
      Top = 7
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'Total de Descontos'
    end
    object TOTVEN: TEdit
      Left = 526
      Top = 21
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 2
    end
    object TOTDES: TEdit
      Left = 636
      Top = 21
      Width = 107
      Height = 21
      Color = clRed
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 527
      Top = 49
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'Total Liquido:'
    end
    object Edit5: TEdit
      Left = 636
      Top = 44
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 4
      Top = 65
      Width = 64
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'Sal'#225'rio Base'
    end
    object SALBASE: TEdit
      Left = 4
      Top = 79
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 113
      Top = 68
      Width = 110
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = 'Sal'#225'rio Contr. INSS'
    end
    object BASEINSS: TEdit
      Left = 113
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 262
      Top = 68
      Width = 110
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = 'Base de C'#225'lculo FGTS'
    end
    object BASEFGTS: TEdit
      Left = 262
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 11
    end
    object VALFGTS: TEdit
      Left = 371
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 12
    end
    object Edit10: TEdit
      Left = 371
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Text = 'F.G.T.S. do M'#234's'
    end
    object Edit9: TEdit
      Left = 527
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      Text = 'Base C'#225'lculo IRRF'
    end
    object BASEIRRF: TEdit
      Left = 527
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 15
    end
    object Edit11: TEdit
      Left = 635
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Text = 'Faixa IRRF'
    end
    object FAIXAIRRF: TEdit
      Left = 635
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 17
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 793
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bb_gravar: TBitBtn
      Left = 12
      Top = 3
      Width = 115
      Height = 35
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 0
      OnClick = bb_gravarClick
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
    object SAIR: TBitBtn
      Left = 652
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Sair'
      TabOrder = 1
      OnClick = SAIRClick
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
    object CANCELAR: TBitBtn
      Left = 257
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = CANCELARClick
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
    object EXCLUIR: TBitBtn
      Left = 371
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = EXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 793
    Height = 49
    Align = alTop
    Caption = 'Entrada de Dados:'
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 136
      Height = 13
      Caption = 'C'#243'digo do Funcion'#225'rio.:'
    end
    object CODFUN: TEdit
      Left = 149
      Top = 16
      Width = 67
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODFUNExit
      OnKeyPress = CODFUNKeyPress
    end
    object NOMFUN: TEdit
      Left = 220
      Top = 15
      Width = 347
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object ATUALIZAR: TBitBtn
      Left = 569
      Top = 14
      Width = 90
      Height = 23
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = ATUALIZARClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 793
    Height = 89
    Align = alTop
    Caption = 'Cabe'#231'alho:'
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    object Label2: TLabel
      Left = 13
      Top = 19
      Width = 125
      Height = 13
      Caption = 'Nome do Funcion'#225'rio:'
    end
    object Label3: TLabel
      Left = 12
      Top = 65
      Width = 127
      Height = 13
      Caption = 'C'#243'digo Departamento:'
    end
    object Label4: TLabel
      Left = 11
      Top = 44
      Width = 129
      Height = 13
      Caption = 'C'#243'digo Cargo............:'
    end
    object CCODFUN: TEdit
      Left = 141
      Top = 16
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 0
    end
    object CODDEP: TEdit
      Left = 142
      Top = 61
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 1
    end
    object NOMDEP: TEdit
      Left = 207
      Top = 61
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object CNOMFUN: TEdit
      Left = 207
      Top = 16
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object NOMCAR: TEdit
      Left = 207
      Top = 39
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object CODCAR: TEdit
      Left = 142
      Top = 39
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 5
    end
  end
  object GB_FERIAS: TGroupBox
    Left = 0
    Top = 138
    Width = 793
    Height = 38
    Align = alTop
    Caption = 'Data das F'#233'rias:'
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 7
      Top = 17
      Width = 109
      Height = 13
      Caption = 'Per'#237'odo Aquisitivo:'
    end
    object Label6: TLabel
      Left = 203
      Top = 15
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label7: TLabel
      Left = 302
      Top = 15
      Width = 88
      Height = 13
      Caption = 'Per'#237'odo Ferias:'
    end
    object Label8: TLabel
      Left = 476
      Top = 13
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label9: TLabel
      Left = 589
      Top = 14
      Width = 130
      Height = 13
      Caption = 'Faltas n'#227'o Just/Horas:'
    end
    object MDTAQI: TMaskEdit
      Left = 117
      Top = 12
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDTAQIExit
    end
    object MDTAQF: TMaskEdit
      Left = 212
      Top = 12
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDTAQFExit
    end
    object MDTFERI: TMaskEdit
      Left = 390
      Top = 10
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDTFERIExit
    end
    object MDTFERF: TMaskEdit
      Left = 487
      Top = 10
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDTFERFExit
    end
    object QTDFNJ: TEdit
      Left = 722
      Top = 11
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = '0,00'
      OnExit = QTDFNJExit
    end
  end
  object Qr_LFol: TQuery
    CachedUpdates = True
    AfterInsert = Qr_LFolAfterInsert
    BeforeEdit = Qr_LFolBeforeEdit
    AfterPost = Qr_LFolAfterPost
    OnCalcFields = Qr_LFolCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLFOL where LCCODEMP is null')
    UpdateObject = U_LFol
    Left = 143
    Top = 34
    object Qr_LFolLCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'LCCODEMP'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEMP'
    end
    object Qr_LFolLCLOCAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'LCLOCAL'
      Origin = 'SG_ASSOC.CADLFOL.LCLOCAL'
    end
    object Qr_LFolLCMES: TFloatField
      DisplayLabel = 'Mes'
      FieldName = 'LCMES'
      Origin = 'SG_ASSOC.CADLFOL.LCMES'
    end
    object Qr_LFolLCANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'LCANO'
      Origin = 'SG_ASSOC.CADLFOL.LCANO'
    end
    object Qr_LFolLCCODFUN: TFloatField
      DisplayLabel = 'C'#243'digo Funcion'#225'rio'
      FieldName = 'LCCODFUN'
      Origin = 'SG_ASSOC.CADLFOL.LCCODFUN'
    end
    object Qr_LFolLCCODEVE: TFloatField
      DisplayLabel = 'C'#243'digo Evento'
      FieldName = 'LCCODEVE'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEVE'
    end
    object Qr_LFolLCNAT: TFloatField
      DisplayLabel = 'Natureza'
      FieldName = 'LCNAT'
      Origin = 'SG_ASSOC.CADLFOL.LCNAT'
    end
    object Qr_LFolLCTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'LCTIPO'
      Origin = 'SG_ASSOC.CADLFOL.LCTIPO'
    end
    object Qr_LFolLCQTD: TFloatField
      DisplayLabel = 'Ref.'
      FieldName = 'LCQTD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTD'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'LCVALOR'
      Origin = 'SG_ASSOC.CADLFOL.LCVALOR'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCINCINSS: TFloatField
      DisplayLabel = 'Incide INSS'
      FieldName = 'LCINCINSS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCINSS'
    end
    object Qr_LFolLCINCFGTS: TFloatField
      DisplayLabel = 'Incide FGTS'
      FieldName = 'LCINCFGTS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCFGTS'
    end
    object Qr_LFolLCINCIR: TFloatField
      DisplayLabel = 'Incide Imposto Renda'
      FieldName = 'LCINCIR'
      Origin = 'SG_ASSOC.CADLFOL.LCINCIR'
    end
    object Qr_LFolLCQTDPAD: TFloatField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'LCQTDPAD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTDPAD'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCSOMA: TFloatField
      DisplayLabel = 'Soma'
      FieldName = 'LCSOMA'
      Origin = 'SG_ASSOC.CADLFOL.LCSOMA'
    end
    object Qr_LFolLCINCVT: TFloatField
      DisplayLabel = 'Incide Vale Transporte'
      FieldName = 'LCINCVT'
      Origin = 'SG_ASSOC.CADLFOL.LCINCVT'
    end
    object Qr_LFolvencimentos: TFloatField
      DisplayLabel = 'Vencimentos'
      FieldKind = fkCalculated
      FieldName = 'vencimentos'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object Qr_LFoldescontos: TFloatField
      DisplayLabel = 'Descontos'
      FieldKind = fkCalculated
      FieldName = 'descontos'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object Qr_LFolnomeve: TStringField
      DisplayLabel = 'Nome do Evento'
      FieldKind = fkCalculated
      FieldName = 'nomeve'
      Size = 40
      Calculated = True
    end
    object Qr_LFolLCTOTAL: TFloatField
      FieldName = 'LCTOTAL'
      Origin = 'SG_ASSOC.CADLFOL.LCTOTAL'
    end
  end
  object Src_LFol: TDataSource
    DataSet = Qr_LFol
    Left = 171
    Top = 34
  end
  object U_LFol: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLFOL'
      'set'
      '  LCCODEMP = :LCCODEMP,'
      '  LCLOCAL = :LCLOCAL,'
      '  LCMES = :LCMES,'
      '  LCANO = :LCANO,'
      '  LCCODFUN = :LCCODFUN,'
      '  LCCODEVE = :LCCODEVE,'
      '  LCQTD = :LCQTD,'
      '  LCNAT = :LCNAT,'
      '  LCTIPO = :LCTIPO,'
      '  LCVALOR = :LCVALOR,'
      '  LCINCINSS = :LCINCINSS,'
      '  LCINCFGTS = :LCINCFGTS,'
      '  LCINCIR = :LCINCIR,'
      '  LCQTDPAD = :LCQTDPAD,'
      '  LCSOMA = :LCSOMA,'
      '  LCINCVT = :LCINCVT,'
      '  LCTOTAL = :LCTOTAL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    InsertSQL.Strings = (
      'insert into CADLFOL'
      '  (LCCODEMP, LCLOCAL, LCMES, LCANO, LCCODFUN, LCCODEVE, LCQTD, '
      'LCNAT, LCTIPO, '
      
        '   LCVALOR, LCINCINSS, LCINCFGTS, LCINCIR, LCQTDPAD, LCSOMA, LCI' +
        'NCVT, '
      'LCTOTAL)'
      'values'
      
        '  (:LCCODEMP, :LCLOCAL, :LCMES, :LCANO, :LCCODFUN, :LCCODEVE, :L' +
        'CQTD, '
      ':LCNAT, '
      
        '   :LCTIPO, :LCVALOR, :LCINCINSS, :LCINCFGTS, :LCINCIR, :LCQTDPA' +
        'D, '
      ':LCSOMA, '
      '   :LCINCVT, :LCTOTAL)')
    DeleteSQL.Strings = (
      'delete from CADLFOL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    Left = 199
    Top = 34
  end
  object Tb_RFol: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRFOL')
    Left = 224
    Top = 32
    object Tb_RFolRFCODEMP: TFloatField
      FieldName = 'RFCODEMP'
      Origin = 'SG_ASSOC.CADRFOL.RFCODEMP'
    end
    object Tb_RFolRFLOCAL: TFloatField
      FieldName = 'RFLOCAL'
      Origin = 'SG_ASSOC.CADRFOL.RFLOCAL'
    end
    object Tb_RFolRFMES: TFloatField
      FieldName = 'RFMES'
      Origin = 'SG_ASSOC.CADRFOL.RFMES'
    end
    object Tb_RFolRFANO: TFloatField
      FieldName = 'RFANO'
      Origin = 'SG_ASSOC.CADRFOL.RFANO'
    end
    object Tb_RFolRFCODFUN: TFloatField
      FieldName = 'RFCODFUN'
      Origin = 'SG_ASSOC.CADRFOL.RFCODFUN'
    end
    object Tb_RFolRFTOTVEN: TFloatField
      FieldName = 'RFTOTVEN'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTVEN'
    end
    object Tb_RFolRFTOTDES: TFloatField
      FieldName = 'RFTOTDES'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTDES'
    end
    object Tb_RFolRFBASEFGTS: TFloatField
      FieldName = 'RFBASEFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEFGTS'
    end
    object Tb_RFolRFALFGTS: TFloatField
      FieldName = 'RFALFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFALFGTS'
    end
    object Tb_RFolRFVLRFGTS: TFloatField
      FieldName = 'RFVLRFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRFGTS'
    end
    object Tb_RFolRFBASEIR: TFloatField
      FieldName = 'RFBASEIR'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEIR'
    end
    object Tb_RFolRFALIR: TFloatField
      FieldName = 'RFALIR'
      Origin = 'SG_ASSOC.CADRFOL.RFALIR'
    end
    object Tb_RFolRFVLRIR: TFloatField
      FieldName = 'RFVLRIR'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRIR'
    end
    object Tb_RFolRFBASEINSS: TFloatField
      FieldName = 'RFBASEINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEINSS'
    end
    object Tb_RFolRFALINSS: TFloatField
      FieldName = 'RFALINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFALINSS'
    end
    object Tb_RFolRFVLRINSS: TFloatField
      FieldName = 'RFVLRINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRINSS'
    end
    object Tb_RFolRFBASEVT: TFloatField
      FieldName = 'RFBASEVT'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEVT'
    end
    object Tb_RFolRFALVT: TFloatField
      FieldName = 'RFALVT'
      Origin = 'SG_ASSOC.CADRFOL.RFALVT'
    end
    object Tb_RFolRFSALBASE: TFloatField
      FieldName = 'RFSALBASE'
      Origin = 'SG_ASSOC.CADRFOL.RFSALBASE'
    end
    object Tb_RFolRFVLRVT: TFloatField
      FieldName = 'RFVLRVT'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRVT'
    end
    object Tb_RFolRFDTAQI: TDateTimeField
      FieldName = 'RFDTAQI'
      Origin = 'SG_ASSOC.CADRFOL.RFDTAQI'
    end
    object Tb_RFolRFDTAQF: TDateTimeField
      FieldName = 'RFDTAQF'
      Origin = 'SG_ASSOC.CADRFOL.RFDTAQF'
    end
    object Tb_RFolRFDTFERI: TDateTimeField
      FieldName = 'RFDTFERI'
      Origin = 'SG_ASSOC.CADRFOL.RFDTFERI'
    end
    object Tb_RFolRFDTFERF: TDateTimeField
      FieldName = 'RFDTFERF'
      Origin = 'SG_ASSOC.CADRFOL.RFDTFERF'
    end
    object Tb_RFolRFQTDFNJ: TFloatField
      FieldName = 'RFQTDFNJ'
      Origin = 'SG_ASSOC.CADRFOL.RFQTDFNJ'
    end
  end
end
