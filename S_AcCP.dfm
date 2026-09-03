object Frm_AcCP: TFrm_AcCP
  Left = 121
  Top = 46
  Width = 818
  Height = 574
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Baixa de duplicatas a Pagar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 23
    Width = 810
    Height = 26
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 93
      Height = 13
      Caption = 'C'#243'd&igo Fornecedor:'
      FocusControl = CODFOR
    end
    object Label22: TLabel
      Left = 642
      Top = 8
      Width = 22
      Height = 13
      Caption = 'NR.:'
    end
    object CODFOR: TEdit
      Left = 102
      Top = 4
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 162
      Top = 4
      Width = 268
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object NR: TEdit
      Left = 672
      Top = 5
      Width = 97
      Height = 19
      Hint = 'N'#250'mero da Nota de Recebimento'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 810
    Height = 97
    Align = alTop
    TabOrder = 1
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 808
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Duplicatas a serem pagas'
          Width = 795
        end>
    end
    object STG_DA: TStringGrid
      Left = 1
      Top = 18
      Width = 808
      Height = 78
      Align = alClient
      ColCount = 22
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      OnDblClick = STG_DADblClick
      OnDrawCell = STG_DADrawCell
      OnExit = STG_DAExit
      ColWidths = (
        64
        27
        26
        76
        69
        74
        69
        75
        83
        76
        64
        64
        64
        64
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
  object Panel3: TPanel
    Left = 0
    Top = 146
    Width = 810
    Height = 51
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 89
      Top = 7
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label14: TLabel
      Left = 223
      Top = 7
      Width = 55
      Height = 13
      Caption = 'Desd/Parc:'
    end
    object Label16: TLabel
      Left = 647
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Total pagos:'
    end
    object Label17: TLabel
      Left = 449
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Desc:'
    end
    object Label18: TLabel
      Left = 546
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label19: TLabel
      Left = 5
      Top = 30
      Width = 53
      Height = 13
      Caption = 'Data pgto.:'
    end
    object Label15: TLabel
      Left = 330
      Top = 7
      Width = 39
      Height = 13
      Caption = 'Dt.Emis:'
    end
    object Label20: TLabel
      Left = 5
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object spn_mandup: TSpeedButton
      Left = 193
      Top = 3
      Width = 25
      Height = 19
      Hint = 'click aqui para consultar titulos'
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = spn_mandupClick
    end
    object NUMDUP: TEdit
      Left = 130
      Top = 4
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = NUMDUPExit
      OnKeyPress = NUMDUPKeyPress
    end
    object bbLancar: TBitBtn
      Left = 299
      Top = 25
      Width = 238
      Height = 25
      Caption = '&Lan'#231'ar'
      TabOrder = 9
      OnClick = bbLancarClick
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
      Left = 539
      Top = 25
      Width = 238
      Height = 25
      Caption = '&Remover Pedido Selecionado'
      TabOrder = 10
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
    object DESD: TEdit
      Left = 275
      Top = 4
      Width = 23
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = DESDExit
    end
    object VALPAG: TEdit
      Left = 709
      Top = 4
      Width = 67
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = VALPAGExit
      OnKeyPress = DESCKeyPress
    end
    object DESC: TEdit
      Left = 481
      Top = 4
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = DESCExit
      OnKeyPress = DESCKeyPress
    end
    object JUROS: TEdit
      Left = 579
      Top = 3
      Width = 67
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = JUROSExit
      OnKeyPress = DESCKeyPress
    end
    object DATAP: TMaskEdit
      Left = 62
      Top = 28
      Width = 85
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      OnExit = DATAPExit
    end
    object MDTEMIS: TMaskEdit
      Left = 372
      Top = 3
      Width = 74
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = MDTEMISExit
    end
    object MCODEMP: TEdit
      Left = 51
      Top = 4
      Width = 36
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = NUMDUPExit
      OnKeyPress = NUMDUPKeyPress
    end
    object MDUP: TEdit
      Left = 300
      Top = 4
      Width = 23
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = MDUPExit
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 197
    Width = 810
    Height = 94
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 3
    object HC_DUPLIC: THeaderControl
      Left = 1
      Top = 1
      Width = 808
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Duplicatas Selecionadas para Baixa'
          Width = 390
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = 'Total dos Pagamentos:'
          Width = 200
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = '0,00'
          Width = 180
        end>
    end
    object STG_DS: TStringGrid
      Left = 1
      Top = 18
      Width = 808
      Height = 75
      Align = alClient
      ColCount = 22
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      OnDrawCell = STG_DSDrawCell
      ColWidths = (
        199
        71
        26
        28
        76
        77
        86
        75
        64
        64
        64
        64
        64
        64
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
  object Panel5: TPanel
    Left = 0
    Top = 291
    Width = 810
    Height = 141
    Align = alTop
    TabOrder = 4
    object Label3: TLabel
      Left = 246
      Top = 27
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
      Enabled = False
    end
    object Label4: TLabel
      Left = 355
      Top = 25
      Width = 22
      Height = 13
      Caption = 'Bco:'
      Enabled = False
    end
    object Label5: TLabel
      Left = 429
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Serie:'
      Enabled = False
    end
    object Label6: TLabel
      Left = 255
      Top = 46
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 245
      Top = 62
      Width = 44
      Height = 13
      Caption = 'Emitente:'
      Enabled = False
    end
    object Label8: TLabel
      Left = 482
      Top = 63
      Width = 60
      Height = 13
      Caption = 'CNPF/CNPJ'
      Enabled = False
    end
    object Label9: TLabel
      Left = 247
      Top = 80
      Width = 34
      Height = 13
      Caption = 'RG/I.E'
      Enabled = False
    end
    object Label10: TLabel
      Left = 584
      Top = 25
      Width = 20
      Height = 13
      Caption = 'c/c:'
      Enabled = False
    end
    object Label11: TLabel
      Left = 662
      Top = 62
      Width = 45
      Height = 13
      Caption = 'Dt.Nasc.:'
      Enabled = False
    end
    object Label12: TLabel
      Left = 412
      Top = 46
      Width = 86
      Height = 13
      Caption = 'Data do Dep'#243'sito:'
      Enabled = False
    end
    object Label13: TLabel
      Left = 515
      Top = 25
      Width = 16
      Height = 13
      Caption = 'Ag:'
      Enabled = False
    end
    object lbl_caixa: TLabel
      Left = 635
      Top = 43
      Width = 73
      Height = 13
      Caption = 'Data do  Caixa:'
    end
    object LComp: TLabel
      Left = 684
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Comp:'
      Enabled = False
    end
    object lbl_codcai: TLabel
      Left = 497
      Top = 79
      Width = 68
      Height = 13
      Caption = 'Caixa/Bco.:'
      FocusControl = MCODCAI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NUMCHQ: TEdit
      Left = 291
      Top = 23
      Width = 62
      Height = 19
      Hint = '[F3]-p/Leitor Otico'#13#10'[F4]-p/Cheques Terceiros'
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = NUMCHQEnter
      OnExit = NUMCHQExit
      OnKeyDown = NUMCHQKeyDown
      OnKeyPress = NUMCHQKeyPress
    end
    object BANCO: TEdit
      Left = 380
      Top = 23
      Width = 44
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = BANCOExit
      OnKeyPress = BANCOKeyPress
    end
    object SERIE: TEdit
      Left = 459
      Top = 23
      Width = 52
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = SERIEExit
      OnKeyPress = SERIEKeyPress
    end
    object VALOR: TEdit
      Left = 291
      Top = 41
      Width = 116
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnEnter = VALOREnter
      OnExit = VALORExit
      OnKeyPress = VALORKeyPress
    end
    object EMITENTE: TEdit
      Left = 291
      Top = 59
      Width = 188
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 12
      OnExit = EMITENTEExit
      OnKeyPress = EMITENTEKeyPress
    end
    object CPF: TEdit
      Left = 546
      Top = 59
      Width = 115
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 13
      OnExit = CPFExit
      OnKeyPress = CPFKeyPress
    end
    object RG: TEdit
      Left = 291
      Top = 77
      Width = 188
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 14
      OnExit = RGExit
      OnKeyPress = RGKeyPress
    end
    object CONTA: TEdit
      Left = 605
      Top = 23
      Width = 68
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CONTAExit
      OnKeyPress = CONTAKeyPress
    end
    object DTNAS: TMaskEdit
      Left = 711
      Top = 59
      Width = 66
      Height = 19
      Ctl3D = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 15
      Text = '  /  /    '
      OnExit = DTNASExit
    end
    object DTDEP: TMaskEdit
      Left = 503
      Top = 41
      Width = 66
      Height = 19
      Ctl3D = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 10
      Text = '  /  /    '
      OnExit = DTDEPExit
    end
    object AGENCIA: TEdit
      Left = 534
      Top = 23
      Width = 47
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = AGENCIAExit
      OnKeyPress = AGENCIAKeyPress
    end
    object bbLancar_forma: TBitBtn
      Left = 244
      Top = 100
      Width = 250
      Height = 36
      Caption = 'L&an'#231'ar'
      TabOrder = 18
      OnClick = bbLancar_formaClick
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
      Left = 523
      Top = 100
      Width = 250
      Height = 36
      Caption = 'Remo&ver Formas de Pagamentos Lan'#231'adas'
      TabOrder = 19
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
      Width = 808
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Lan'#231'amento das Formas de Pagamentos:'
          Width = 795
        end>
    end
    object DATACX: TMaskEdit
      Left = 711
      Top = 41
      Width = 66
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 11
      Text = '  /  /    '
      OnExit = DATACXExit
    end
    object st_leitor: TStaticText
      Left = 355
      Top = 42
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
      TabOrder = 21
      Visible = False
    end
    object COMP: TEdit
      Left = 719
      Top = 23
      Width = 45
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = COMPExit
      OnKeyPress = COMPKeyPress
    end
    object RG_FORMA: TRadioGroup
      Left = 6
      Top = 20
      Width = 237
      Height = 115
      Caption = 'Forma de Pagamento'
      TabOrder = 0
      OnClick = RG_FORMAClick
      OnExit = RG_FORMAExit
    end
    object CB_FORMAPGTO: TComboBox
      Left = 4
      Top = 62
      Width = 237
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
      Visible = False
      OnClick = CB_FORMAPGTOClick
      OnExit = CB_FORMAPGTOExit
    end
    object ST_FORMAPGTO: TStaticText
      Left = 4
      Top = 46
      Width = 237
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Forma de &Pagamento'
      FocusControl = CB_FORMAPGTO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object MCODCAI: TEdit
      Left = 567
      Top = 77
      Width = 36
      Height = 19
      Hint = 'Pressione <F3>-Para Consultar Pedidos'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnExit = MCODCAIExit
      OnKeyPress = MCODCAIKeyPress
    end
    object MNOMCAI: TEdit
      Left = 598
      Top = 77
      Width = 178
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 17
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 432
    Width = 810
    Height = 84
    Align = alClient
    TabOrder = 5
    object HC_cheques: THeaderControl
      Left = 1
      Top = 1
      Width = 808
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Formas de Pagamentos Lan'#231'adas'
          Width = 290
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = 'Total das Formas de Pagamento:'
          Width = 208
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = '0,00'
          Width = 100
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = 'Restante:'
          Width = 80
        end
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Text = '0,00'
          Width = 100
        end>
    end
    object STG_CHQ: TStringGrid
      Left = 1
      Top = 18
      Width = 808
      Height = 65
      Align = alClient
      ColCount = 20
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      OnDrawCell = STG_CHQDrawCell
      ColWidths = (
        166
        71
        26
        28
        87
        89
        86
        75
        64
        64
        64
        64
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
  object Panel7: TPanel
    Left = 0
    Top = 516
    Width = 810
    Height = 27
    Align = alBottom
    TabOrder = 6
    object BitBtn5: TBitBtn
      Left = 4
      Top = 1
      Width = 180
      Height = 25
      Caption = '&Baixar'
      TabOrder = 0
      OnClick = BitBtn5Click
      OnKeyDown = FormKeyDown
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
      NumGlyphs = 2
    end
    object BBCancelar: TBitBtn
      Left = 382
      Top = 1
      Width = 180
      Height = 25
      Caption = '&Cancelar'
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
      NumGlyphs = 2
    end
    object BBSair: TBitBtn
      Left = 590
      Top = 1
      Width = 180
      Height = 25
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
      NumGlyphs = 2
    end
    object CheckBox1: TCheckBox
      Left = 190
      Top = 5
      Width = 175
      Height = 17
      Caption = 'Emitir Recibo ao Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object panel_caixa: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 23
    Align = alTop
    TabOrder = 7
    object Label21: TLabel
      Left = 6
      Top = 6
      Width = 88
      Height = 13
      Caption = 'Caixa Padr'#227'o..:'
      FocusControl = MCODCAI_PAD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 488
      Top = 7
      Width = 182
      Height = 13
      Caption = 'N'#250'mero do Lote de Movimento: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MCODCAI_PAD: TEdit
      Left = 103
      Top = 3
      Width = 61
      Height = 19
      Hint = 'Pressione <F3>-Para Consultar Pedidos'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = MCODCAI_PADExit
      OnKeyPress = MCODCAI_PADKeyPress
    end
    object MNOMCAI_PAD: TEdit
      Left = 163
      Top = 3
      Width = 266
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object MLOTMOV: TEdit
      Left = 672
      Top = 3
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = MLOTMOVExit
    end
  end
end
