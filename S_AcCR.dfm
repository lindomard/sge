object Frm_AcCR: TFrm_AcCR
  Left = 134
  Top = 125
  Width = 790
  Height = 560
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Baixa de duplicatas a receber'
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
    Width = 782
    Height = 26
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 86
      Height = 13
      Caption = 'C'#243'digo do Cl&iente:'
      FocusControl = CODCLI
    end
    object Label22: TLabel
      Left = 652
      Top = 8
      Width = 19
      Height = 13
      Caption = 'NR:'
    end
    object Label24: TLabel
      Left = 360
      Top = 8
      Width = 73
      Height = 13
      Caption = '&Nosso N'#250'mero:'
      FocusControl = NOSNUM
    end
    object SBnAjustarCol: TSpeedButton
      Left = 757
      Top = 3
      Width = 23
      Height = 22
      Hint = 'Ajustar colunas de Duplicatas a Serem Pagas'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SBnAjustarColClick
    end
    object CODCLI: TEdit
      Left = 95
      Top = 4
      Width = 61
      Height = 19
      Hint = 'Pressione <F3>-Para Consultar Pedidos'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODCLIExit
      OnKeyDown = CODCLIKeyDown
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 155
      Top = 4
      Width = 197
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
      Width = 86
      Height = 19
      Hint = 'N'#250'mero da Nota de Recebimento'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = NRExit
    end
    object NOSNUM: TEdit
      Left = 433
      Top = 4
      Width = 190
      Height = 19
      Hint = 'N'#250'mero da Nota de Recebimento'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = NOSNUMExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 782
    Height = 88
    Align = alTop
    TabOrder = 1
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 780
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
      Width = 780
      Height = 69
      Align = alClient
      ColCount = 30
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
    Top = 137
    Width = 782
    Height = 44
    Align = alTop
    TabOrder = 2
    object Label23: TLabel
      Left = 2
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Empresa:'
      Visible = False
    end
    object Label2: TLabel
      Left = 3
      Top = 6
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label14: TLabel
      Left = 128
      Top = 6
      Width = 25
      Height = 13
      Caption = 'Parc.'
    end
    object Label15: TLabel
      Left = 172
      Top = 7
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label16: TLabel
      Left = 474
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Tot.Rec.:'
    end
    object Label17: TLabel
      Left = 113
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Desc %:'
    end
    object Label18: TLabel
      Left = 268
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label19: TLabel
      Left = 2
      Top = 23
      Width = 39
      Height = 13
      Caption = 'Dt.Pgto:'
    end
    object Label20: TLabel
      Left = 223
      Top = 6
      Width = 39
      Height = 13
      Caption = 'Dt.Emis:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 442
      Top = 6
      Width = 23
      Height = 13
      Caption = 'ECF:'
    end
    object Label25: TLabel
      Left = 641
      Top = 6
      Width = 31
      Height = 13
      Caption = 'Devol:'
    end
    object Label26: TLabel
      Left = 359
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Custo Bco:'
    end
    object Label27: TLabel
      Left = 708
      Top = -20
      Width = 135
      Height = 13
      Caption = 'Total dos Produtos c/Grupo:'
      Visible = False
    end
    object Label28: TLabel
      Left = 708
      Top = -20
      Width = 134
      Height = 13
      Caption = 'Total dos Produtos s/Grupo:'
      Visible = False
    end
    object Label29: TLabel
      Left = 708
      Top = -20
      Width = 154
      Height = 13
      Caption = '%Desc.Extra Sob Total s/Grupo:'
      Visible = False
    end
    object Label30: TLabel
      Left = 708
      Top = -20
      Width = 28
      Height = 13
      Caption = 'Desc:'
      Visible = False
    end
    object Label31: TLabel
      Left = 514
      Top = 5
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object spn_mandup: TSpeedButton
      Left = 102
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
    object Label32: TLabel
      Left = 332
      Top = 6
      Width = 39
      Height = 13
      Caption = 'Dt.Vcto:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label33: TLabel
      Left = 197
      Top = 25
      Width = 6
      Height = 13
      Caption = '$'
    end
    object MCODEMP: TEdit
      Left = 3
      Top = 3
      Width = 38
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnExit = MCODEMPExit
      OnKeyPress = NUMDUPKeyPress
    end
    object NUMDUP: TEdit
      Left = 49
      Top = 3
      Width = 53
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = NUMDUPExit
      OnKeyPress = NUMDUPKeyPress
    end
    object bbLancar: TBitBtn
      Left = 591
      Top = 22
      Width = 97
      Height = 20
      Caption = 'Lan'#231'a&r'
      TabOrder = 18
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
    object bbRemover: TBitBtn
      Left = 687
      Top = 21
      Width = 88
      Height = 21
      Caption = 'Remover'
      TabOrder = 19
      OnClick = bbRemoverClick
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
      Left = 153
      Top = 3
      Width = 18
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = DESDExit
    end
    object TIPOD: TEdit
      Left = 198
      Top = 3
      Width = 23
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = TIPODExit
    end
    object VALPAG: TEdit
      Left = 523
      Top = 21
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 17
      OnEnter = VALPAGEnter
      OnExit = VALPAGExit
      OnKeyPress = DESCKeyPress
    end
    object DESC: TEdit
      Left = 206
      Top = 21
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      OnExit = DESCExit
      OnKeyPress = DESCKeyPress
    end
    object JUROS: TEdit
      Left = 297
      Top = 21
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 15
      OnExit = JUROSExit
      OnKeyPress = DESCKeyPress
    end
    object DATAP: TMaskEdit
      Left = 50
      Top = 21
      Width = 62
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 12
      Text = '  /  /    '
      OnExit = DATAPExit
    end
    object DTEMIS: TMaskEdit
      Left = 263
      Top = 3
      Width = 63
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = DATAPExit
    end
    object MCODECF: TEdit
      Left = 468
      Top = 3
      Width = 41
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = MCODECFExit
    end
    object DEVOL: TEdit
      Left = 676
      Top = 3
      Width = 82
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
      OnExit = MCODECFExit
    end
    object CUSBCO: TEdit
      Left = 412
      Top = 21
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      OnExit = CUSBCOExit
      OnKeyPress = DESCKeyPress
    end
    object VALCGRU: TStaticText
      Left = 708
      Top = -20
      Width = 82
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16645352
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object VALSGRU: TStaticText
      Left = 708
      Top = -20
      Width = 82
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16645352
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      Visible = False
    end
    object PDESCSGRU: TEdit
      Left = 708
      Top = -20
      Width = 82
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      Visible = False
      OnExit = PDESCSGRUExit
      OnKeyPress = DESCKeyPress
    end
    object VDESSGRU: TEdit
      Left = 708
      Top = -20
      Width = 82
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      Visible = False
      OnExit = VDESSGRUExit
      OnKeyPress = DESCKeyPress
    end
    object VALDUP: TStaticText
      Left = 545
      Top = 3
      Width = 87
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16645352
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object DTVCTO: TMaskEdit
      Left = 374
      Top = 3
      Width = 64
      Height = 19
      TabStop = False
      Color = 16645352
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Text = '  /  /    '
      OnExit = DATAPExit
    end
    object PCTDESC: TEdit
      Left = 153
      Top = 21
      Width = 41
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      OnExit = PCTDESCExit
      OnKeyPress = DESCKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 181
    Width = 782
    Height = 88
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 3
    object HC_DUPLIC: THeaderControl
      Left = 1
      Top = 1
      Width = 780
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Duplicatas Selecionadas para Baixa'
          Width = 400
        end
        item
          ImageIndex = -1
          Text = 'Total das Duplicatas Selecionadas:'
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
      Width = 780
      Height = 69
      Align = alClient
      ColCount = 17
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      OnDrawCell = STG_DSDrawCell
      ColWidths = (
        209
        71
        26
        28
        76
        81
        74
        75
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
    Top = 269
    Width = 782
    Height = 127
    Align = alTop
    TabOrder = 4
    object lbl_numchq: TLabel
      Left = 246
      Top = 27
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
      Enabled = False
    end
    object lbl_bco: TLabel
      Left = 367
      Top = 26
      Width = 22
      Height = 13
      Caption = 'Bco:'
      Enabled = False
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Serie:'
      Enabled = False
    end
    object Label6: TLabel
      Left = 256
      Top = 45
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 240
      Top = 64
      Width = 44
      Height = 13
      Caption = 'Emitente:'
      Enabled = False
    end
    object Label8: TLabel
      Left = 479
      Top = 64
      Width = 60
      Height = 13
      Caption = 'CNPF/CNPJ'
      Enabled = False
    end
    object Label9: TLabel
      Left = 242
      Top = 80
      Width = 34
      Height = 13
      Caption = 'RG/I.E'
      Enabled = False
    end
    object Label10: TLabel
      Left = 593
      Top = 27
      Width = 20
      Height = 13
      Caption = 'c/c:'
      Enabled = False
    end
    object Label11: TLabel
      Left = 654
      Top = 64
      Width = 45
      Height = 13
      Caption = 'Dt.Nasc.:'
      Enabled = False
    end
    object Label12: TLabel
      Left = 411
      Top = 47
      Width = 59
      Height = 13
      Caption = 'Dt.Dep'#243'sito:'
      Enabled = False
    end
    object Label13: TLabel
      Left = 518
      Top = 25
      Width = 16
      Height = 13
      Caption = 'Ag:'
      Enabled = False
    end
    object LComp: TLabel
      Left = 698
      Top = 26
      Width = 30
      Height = 13
      Caption = 'Comp:'
      Enabled = False
    end
    object lbl_caixa: TLabel
      Left = 545
      Top = 44
      Width = 73
      Height = 13
      Caption = 'Data do  Caixa:'
    end
    object lbl_codcai: TLabel
      Left = 497
      Top = 80
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
    object rg_forma: TRadioGroup
      Left = 1
      Top = 18
      Width = 237
      Height = 108
      Align = alLeft
      Caption = '&Forma de Pagamento'
      Columns = 2
      TabOrder = 0
      OnExit = rg_formaExit
    end
    object NUMCHQ: TEdit
      Left = 291
      Top = 24
      Width = 78
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = NUMCHQEnter
      OnExit = NUMCHQExit
      OnKeyDown = NUMCHQKeyDown
      OnKeyPress = NUMCHQKeyPress
    end
    object BANCO: TEdit
      Left = 391
      Top = 24
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
      Left = 470
      Top = 24
      Width = 45
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
      Top = 42
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
      Top = 60
      Width = 184
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 12
      OnExit = EMITENTEExit
      OnKeyPress = EMITENTEKeyPress
    end
    object CPF: TEdit
      Left = 538
      Top = 60
      Width = 112
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 13
      OnEnter = CPFEnter
      OnExit = CPFExit
      OnKeyPress = CPFKeyPress
    end
    object RG: TEdit
      Left = 291
      Top = 78
      Width = 190
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 15
      OnExit = RGExit
      OnKeyPress = RGKeyPress
    end
    object CONTA: TEdit
      Left = 620
      Top = 24
      Width = 77
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CONTAExit
      OnKeyPress = CONTAKeyPress
    end
    object DTNAS: TMaskEdit
      Left = 705
      Top = 61
      Width = 73
      Height = 19
      Ctl3D = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 14
      Text = '  /  /    '
      OnExit = DTNASExit
    end
    object DTDEP: TMaskEdit
      Left = 470
      Top = 42
      Width = 73
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
      Left = 542
      Top = 24
      Width = 50
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = AGENCIAExit
      OnKeyPress = AGENCIAKeyPress
    end
    object bbLancar_chq: TBitBtn
      Left = 244
      Top = 99
      Width = 151
      Height = 25
      Caption = 'L&an'#231'ar'
      TabOrder = 18
      OnClick = bbLancar_chqClick
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
    object bbRemover_chq: TBitBtn
      Left = 411
      Top = 99
      Width = 180
      Height = 25
      Caption = 'Remo&ver Formas de Pagamentos'
      TabOrder = 19
      OnClick = bbRemover_chqClick
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
      Width = 780
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Lan'#231'amento das Formas de Pagamentos:'
          Width = 795
        end
        item
          ImageIndex = -1
          Width = 50
        end>
    end
    object COMP: TEdit
      Left = 729
      Top = 23
      Width = 47
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = COMPExit
      OnKeyPress = COMPKeyPress
    end
    object st_leitor: TStaticText
      Left = 367
      Top = 47
      Width = 122
      Height = 17
      BorderStyle = sbsSunken
      Caption = '<F3>-Para Leitura '#211'ptica'
      Color = 16767152
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
    object DATACX: TMaskEdit
      Left = 620
      Top = 42
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 11
      Text = '  /  /    '
      OnExit = DATACXExit
    end
    object CB_FORMAPGTO: TComboBox
      Left = 1
      Top = 62
      Width = 237
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 2
      Visible = False
      OnExit = CB_FORMAPGTOExit
    end
    object ST_FORMAPGTO: TStaticText
      Left = 1
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
      TabOrder = 1
      Visible = False
    end
    object bbMedPgVcto: TBitBtn
      Left = 599
      Top = 98
      Width = 180
      Height = 25
      Hint = 'Click aqui para ver'#13#10'as m'#233'dias de pagamentos'#13#10'e vencimentos'
      Caption = 'M'#233'dia de Pagamento/Venctos'
      TabOrder = 22
      OnClick = bbMedPgVctoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object MCODCAI: TEdit
      Left = 567
      Top = 78
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
      Left = 602
      Top = 78
      Width = 176
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
    Top = 396
    Width = 782
    Height = 106
    Align = alClient
    TabOrder = 5
    object HC_cheques: THeaderControl
      Left = 1
      Top = 1
      Width = 780
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Formas de Pagamentos Lan'#231'adas'
          Width = 290
        end
        item
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
      Width = 780
      Height = 87
      Align = alClient
      ColCount = 24
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
        64
        64
        64
        64
        64)
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 502
    Width = 782
    Height = 27
    Align = alBottom
    TabOrder = 6
    object bbBaixar: TBitBtn
      Left = 4
      Top = 1
      Width = 180
      Height = 25
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
      NumGlyphs = 2
    end
    object BBCancelar: TBitBtn
      Left = 314
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
      Left = 595
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
  end
  object panel_caixa: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 23
    Align = alTop
    TabOrder = 7
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 323
      Top = 6
      Width = 34
      Height = 13
      Caption = 'Lote: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_dtbx: TLabel
      Left = 655
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Data Bx:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MCODCAI_PAD: TEdit
      Left = 95
      Top = 4
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
      Left = 155
      Top = 4
      Width = 163
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object MLOTMOV: TEdit
      Left = 352
      Top = 3
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = MLOTMOVExit
    end
    object CB_JUROS: TCheckBox
      Left = 414
      Top = 4
      Width = 106
      Height = 17
      Caption = 'Calcular Juros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = CB_JUROSEnter
      OnExit = CB_JUROSExit
    end
    object DATABX: TMaskEdit
      Left = 707
      Top = 2
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = DATABXExit
    end
    object cb_bancai: TCheckBox
      Left = 522
      Top = 4
      Width = 127
      Height = 17
      Caption = 'Usa Caixa Padr'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = cb_bancaiExit
    end
  end
  object cds_da: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 73
  end
  object cds_ds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 89
  end
end
