object Frm_DupAgru: TFrm_DupAgru
  Left = 17
  Top = 29
  Width = 767
  Height = 567
  Caption = 'Agrupamento de Duplicatas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object STG1: TStringGrid
    Left = 0
    Top = 125
    Width = 759
    Height = 181
    Align = alClient
    ColCount = 20
    DefaultRowHeight = 15
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 0
    OnDblClick = STG1DblClick
    OnDrawCell = STG1DrawCell
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 759
    Height = 125
    Align = alTop
    Caption = 'Sele'#231#227'o de duplicatas'
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 17
      Width = 78
      Height = 13
      Caption = 'Duplicata Inicial:'
    end
    object Label3: TLabel
      Left = 224
      Top = 15
      Width = 73
      Height = 13
      Caption = 'Duplicata Final:'
    end
    object Label2: TLabel
      Left = 390
      Top = 17
      Width = 103
      Height = 13
      Caption = 'Somente as Parcelas:'
    end
    object Label4: TLabel
      Left = 7
      Top = 38
      Width = 110
      Height = 13
      Caption = 'Emitidas no Per'#237'odo de'
    end
    object Label5: TLabel
      Left = 253
      Top = 37
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 85
      Top = 59
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label54: TLabel
      Left = 664
      Top = 8
      Width = 91
      Height = 57
      AutoSize = False
      Caption = 'V'#225'lido somente para Duplicatas em abertas'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object NUMDUPI: TEdit
      Left = 127
      Top = 13
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = NUMDUPIEnter
      OnExit = NUMDUPIExit
    end
    object NUMDUPF: TEdit
      Left = 301
      Top = 13
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = NUMDUPIEnter
      OnExit = NUMDUPFExit
    end
    object PARC: TEdit
      Left = 495
      Top = 15
      Width = 32
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = NUMDUPIEnter
    end
    object Edit1: TEdit
      Left = 532
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Em branco Todas'
    end
    object MDT1: TMaskEdit
      Left = 127
      Top = 34
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnEnter = NUMDUPIEnter
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 301
      Top = 34
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 5
      Text = '  /  /    '
      OnEnter = NUMDUPIEnter
      OnExit = MDT2Exit
    end
    object CODCLI: TEdit
      Left = 127
      Top = 56
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnEnter = NUMDUPIEnter
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 212
      Top = 56
      Width = 369
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
      Text = 'Todos...'
    end
    object bbAplicar: TBitBtn
      Left = 5
      Top = 82
      Width = 200
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 8
      OnClick = bbAplicarClick
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
    object bbSair: TBitBtn
      Left = 501
      Top = 82
      Width = 200
      Height = 25
      Caption = '&Sair'
      TabOrder = 9
      OnClick = bbSairClick
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
    object cb_todos: TCheckBox
      Left = 2
      Top = 109
      Width = 97
      Height = 17
      Caption = 'Todos'
      TabOrder = 10
      OnClick = cb_todosClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 306
    Width = 759
    Height = 230
    Align = alBottom
    Caption = 'Manter os Seguintes dados:'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 755
      Height = 213
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Alteraveis'
        object Label7: TLabel
          Left = 28
          Top = 3
          Width = 40
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label8: TLabel
          Left = 144
          Top = 5
          Width = 119
          Height = 13
          Caption = 'Desdobramento/Parcela:'
        end
        object Label9: TLabel
          Left = 336
          Top = 4
          Width = 97
          Height = 13
          Caption = 'Tipo do Documento:'
        end
        object Label10: TLabel
          Left = 33
          Top = 23
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label11: TLabel
          Left = 17
          Top = 41
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object Label12: TLabel
          Left = 29
          Top = 96
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label13: TLabel
          Left = 0
          Top = 59
          Width = 64
          Height = 13
          Caption = 'Vendedor 02:'
        end
        object Label14: TLabel
          Left = 0
          Top = 77
          Width = 64
          Height = 13
          Caption = 'Vendedor 03:'
        end
        object Label17: TLabel
          Left = 10
          Top = 113
          Width = 59
          Height = 13
          Caption = 'Televendas:'
        end
        object Label42: TLabel
          Left = 10
          Top = 131
          Width = 48
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Label43: TLabel
          Left = 394
          Top = 25
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label59: TLabel
          Left = 10
          Top = 149
          Width = 45
          Height = 13
          Caption = 'Assessor:'
        end
        object Label60: TLabel
          Left = 2
          Top = 167
          Width = 102
          Height = 13
          Caption = 'Quantidade Parcelas:'
        end
        object Label61: TLabel
          Left = 156
          Top = 167
          Width = 94
          Height = 13
          Caption = 'N'#250'mero da Parcela:'
        end
        object NUMERO: TEdit
          Left = 70
          Top = 4
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object DESD: TEdit
          Left = 268
          Top = 4
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object CB_DUP: TComboBox
          Left = 439
          Top = -1
          Width = 139
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Cheque Devolvido'
            'Cheque S/fundos'
            'Juros'
            'Nota Promissoria'
            'Nota de Credito')
        end
        object CODCLI_DUP: TEdit
          Left = 70
          Top = 22
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = CODCLI_DUPExit
          OnKeyPress = CODCLI_DUPKeyPress
        end
        object NOMCLI_DUP: TEdit
          Left = 136
          Top = 22
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
        end
        object CODVEN: TEdit
          Left = 70
          Top = 40
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object NOMVEN: TEdit
          Left = 136
          Top = 40
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
        end
        object CODBCO: TEdit
          Left = 70
          Top = 94
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object NOMBCO: TEdit
          Left = 136
          Top = 94
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 12
        end
        object NOMV02: TEdit
          Left = 136
          Top = 58
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 7
        end
        object CODV02: TEdit
          Left = 70
          Top = 58
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = CODV02Exit
          OnKeyPress = CODV02KeyPress
        end
        object CODV03: TEdit
          Left = 70
          Top = 76
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnExit = CODV03Exit
          OnKeyPress = CODV03KeyPress
        end
        object NOMV03: TEdit
          Left = 136
          Top = 76
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 10
        end
        object CODTLV: TEdit
          Left = 70
          Top = 112
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = CODTLVExit
          OnKeyPress = CODTLVKeyPress
        end
        object NOMTLV: TEdit
          Left = 136
          Top = 112
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 14
        end
        object NOMCV: TEdit
          Left = 136
          Top = 130
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 15
        end
        object CODCV: TEdit
          Left = 70
          Top = 130
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object bbAgrupar: TBitBtn
          Left = 393
          Top = 157
          Width = 350
          Height = 27
          Caption = '&Agrupar'
          TabOrder = 23
          OnClick = bbAgruparClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
            FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
            FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
            FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
            00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
            55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
            5555777577775755555550FBFB0555555555575FFF7555555555570000755555
            5555557777555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object CODASSE: TEdit
          Left = 70
          Top = 148
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          OnExit = CODASSEExit
          OnKeyPress = CODASSEKeyPress
        end
        object NOMASSE: TEdit
          Left = 136
          Top = 148
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 18
        end
        object QTDPARC: TEdit
          Left = 106
          Top = 166
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 19
          OnExit = QTDPARCExit
        end
        object NUMPARC: TEdit
          Left = 260
          Top = 166
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 20
          OnExit = NUMPARCExit
        end
        object GroupBox3: TGroupBox
          Left = 393
          Top = 62
          Width = 348
          Height = 94
          Caption = 'Intru'#231#245'es Bancarias:'
          TabOrder = 22
          object INST01: TEdit
            Left = 2
            Top = 16
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = INST01Exit
          end
          object INST02: TEdit
            Left = 2
            Top = 34
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = INST02Exit
          end
          object INST03: TEdit
            Left = 2
            Top = 52
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnExit = INST03Exit
          end
          object INST04: TEdit
            Left = 2
            Top = 70
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnExit = INST04Exit
          end
        end
        object OBS: TMemo
          Left = 461
          Top = 22
          Width = 277
          Height = 41
          Ctl3D = False
          Lines.Strings = (
            'OBS')
          ParentCtl3D = False
          TabOrder = 21
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dados Contantes'
        ImageIndex = 1
        object Label15: TLabel
          Left = 2
          Top = 6
          Width = 83
          Height = 13
          Caption = 'Data de Emiss'#227'o:'
        end
        object Label16: TLabel
          Left = 191
          Top = 7
          Width = 100
          Height = 13
          Caption = 'Data de Vencimento:'
        end
        object Label55: TLabel
          Left = 5
          Top = 25
          Width = 77
          Height = 13
          Caption = 'C'#243'digo do ECF.:'
        end
        object Label56: TLabel
          Left = 193
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Data do CF:'
        end
        object Label57: TLabel
          Left = 388
          Top = 22
          Width = 56
          Height = 13
          Caption = 'N'#250'mero CF:'
        end
        object DTEMIS: TStaticText
          Left = 89
          Top = 4
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 0
        end
        object DTVCTO: TStaticText
          Left = 295
          Top = 4
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 1
        end
        object CODECF: TStaticText
          Left = 89
          Top = 23
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 2
        end
        object DATACF: TStaticText
          Left = 295
          Top = 21
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 3
        end
        object NUMCF: TStaticText
          Left = 472
          Top = 20
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 4
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Valores'
        ImageIndex = 2
        object Label18: TLabel
          Left = 34
          Top = 4
          Width = 90
          Height = 13
          Caption = 'Valor da Duplicata:'
        end
        object Label19: TLabel
          Left = 11
          Top = 21
          Width = 113
          Height = 13
          Caption = 'Total das Notas Fiscais:'
        end
        object Label20: TLabel
          Left = 38
          Top = 39
          Width = 86
          Height = 13
          Caption = 'Valor Icms Retido:'
        end
        object Label21: TLabel
          Left = 55
          Top = 57
          Width = 69
          Height = 13
          Caption = 'Valor do Frete:'
        end
        object Label22: TLabel
          Left = 49
          Top = 73
          Width = 75
          Height = 13
          Caption = 'Tarifa Banc'#225'ria:'
        end
        object Label23: TLabel
          Left = 44
          Top = 89
          Width = 80
          Height = 13
          Caption = 'M'#250'lta por Atraso:'
        end
        object Label24: TLabel
          Left = 13
          Top = 105
          Width = 111
          Height = 13
          Caption = 'Juros por dia de Atraso:'
        end
        object Label25: TLabel
          Left = 5
          Top = 123
          Width = 119
          Height = 13
          Caption = 'Desc.p/dia Antecipa'#231#227'o:'
        end
        object Label26: TLabel
          Left = 23
          Top = 140
          Width = 101
          Height = 13
          Caption = 'Desconto Financeiro:'
        end
        object Label27: TLabel
          Left = 263
          Top = 140
          Width = 97
          Height = 13
          Caption = 'Comiss'#227'o Vendedor:'
        end
        object Label28: TLabel
          Left = 518
          Top = 39
          Width = 107
          Height = 13
          Caption = 'Comiss'#227'o Televendas:'
        end
        object Label29: TLabel
          Left = 524
          Top = 57
          Width = 101
          Height = 13
          Caption = 'Comiss'#227'o Supervisor:'
        end
        object Label30: TLabel
          Left = 510
          Top = 73
          Width = 116
          Height = 13
          Caption = 'Produtos Sem comiss'#227'o:'
        end
        object Label31: TLabel
          Left = 514
          Top = 5
          Width = 112
          Height = 13
          Caption = 'Comiss'#227'o Vendedor 02:'
        end
        object Label32: TLabel
          Left = 514
          Top = 21
          Width = 112
          Height = 13
          Caption = 'Comiss'#227'o Vendedor 03:'
        end
        object Label33: TLabel
          Left = 249
          Top = 2
          Width = 111
          Height = 13
          Caption = 'Desconto 01 dos '#237'tens:'
        end
        object Label34: TLabel
          Left = 249
          Top = 21
          Width = 111
          Height = 13
          Caption = 'Desconto 02 dos '#237'tens:'
        end
        object Label35: TLabel
          Left = 248
          Top = 39
          Width = 111
          Height = 13
          Caption = 'Desconto 03 dos '#237'tens:'
        end
        object Label36: TLabel
          Left = 228
          Top = 57
          Width = 131
          Height = 13
          Caption = 'Desconto em Valores '#237'tens:'
        end
        object Label37: TLabel
          Left = 293
          Top = 73
          Width = 64
          Height = 13
          Caption = 'Desconto 01:'
        end
        object Label38: TLabel
          Left = 292
          Top = 89
          Width = 64
          Height = 13
          Caption = 'Desconto 02:'
        end
        object Label39: TLabel
          Left = 253
          Top = 105
          Width = 104
          Height = 13
          Caption = 'Desconto em Valores:'
        end
        object Label40: TLabel
          Left = 247
          Top = 123
          Width = 111
          Height = 13
          Caption = 'Quantidade Dias Multa:'
        end
        object Label41: TLabel
          Left = 1
          Top = 156
          Width = 125
          Height = 13
          Caption = 'Data Lim.Desc.Financeiro:'
        end
        object Label58: TLabel
          Left = 529
          Top = 89
          Width = 93
          Height = 13
          Caption = 'Comiss'#227'o Assessor:'
        end
        object Label62: TLabel
          Left = 543
          Top = 105
          Width = 79
          Height = 13
          Caption = 'Valor do Seguro:'
        end
        object Label63: TLabel
          Left = 549
          Top = 123
          Width = 71
          Height = 13
          Caption = 'Total C/Grupo:'
        end
        object Label64: TLabel
          Left = 549
          Top = 140
          Width = 71
          Height = 13
          Caption = 'Total S/Grupo:'
        end
        object Label65: TLabel
          Left = 532
          Top = 156
          Width = 86
          Height = 13
          Caption = 'Valor Tx.Cob.Bco:'
        end
        object Label66: TLabel
          Left = 227
          Top = 158
          Width = 134
          Height = 13
          Caption = 'Comi.Extra-Queima Estoque:'
        end
        object TOTNF: TStaticText
          Left = 128
          Top = 21
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 0
        end
        object ICMSR: TStaticText
          Left = 128
          Top = 38
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 1
        end
        object VALOR: TStaticText
          Left = 128
          Top = 4
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 2
        end
        object VALFRE: TStaticText
          Left = 128
          Top = 54
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 3
        end
        object TARBAN: TStaticText
          Left = 128
          Top = 71
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 4
        end
        object MULTA: TStaticText
          Left = 128
          Top = 88
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 5
        end
        object JURD: TStaticText
          Left = 128
          Top = 105
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 6
        end
        object DESCD: TStaticText
          Left = 129
          Top = 121
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 7
        end
        object DESCF: TStaticText
          Left = 129
          Top = 137
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 8
        end
        object COMVEN: TStaticText
          Left = 365
          Top = 138
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 9
        end
        object COMTEL: TStaticText
          Left = 631
          Top = 38
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 10
        end
        object COMSUP: TStaticText
          Left = 631
          Top = 54
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 11
        end
        object SEMCOM: TStaticText
          Left = 631
          Top = 71
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 12
        end
        object COMV02: TStaticText
          Left = 631
          Top = 4
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 13
        end
        object COMV03: TStaticText
          Left = 631
          Top = 21
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 14
        end
        object TOTDI01: TStaticText
          Left = 366
          Top = 3
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 15
        end
        object TOTDI02: TStaticText
          Left = 366
          Top = 21
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 16
        end
        object TOTDI03: TStaticText
          Left = 366
          Top = 38
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 17
        end
        object TOTDIVL: TStaticText
          Left = 366
          Top = 54
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 18
        end
        object VALDES01: TStaticText
          Left = 366
          Top = 71
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 19
        end
        object VALDES02: TStaticText
          Left = 365
          Top = 88
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 20
        end
        object VLRDES: TStaticText
          Left = 365
          Top = 105
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 21
        end
        object QTDDM: TStaticText
          Left = 365
          Top = 121
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 22
        end
        object DTDESCF: TStaticText
          Left = 129
          Top = 155
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 23
        end
        object COMASSE: TStaticText
          Left = 631
          Top = 88
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 24
        end
        object VALSEG: TStaticText
          Left = 631
          Top = 105
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 25
        end
        object TOTCGRU: TStaticText
          Left = 631
          Top = 121
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 26
        end
        object TOTSGRU: TStaticText
          Left = 631
          Top = 137
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 27
        end
        object TBCOCOB: TStaticText
          Left = 631
          Top = 155
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 28
        end
        object COMIS_EXTRA: TStaticText
          Left = 365
          Top = 155
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 29
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Fluxo de Caixa'
        ImageIndex = 3
        object Label44: TLabel
          Left = 6
          Top = 5
          Width = 96
          Height = 13
          Caption = 'Data de Referencia:'
        end
        object Label45: TLabel
          Left = 208
          Top = 5
          Width = 67
          Height = 13
          Caption = 'Data Prevista:'
        end
        object Label46: TLabel
          Left = 410
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Valor Previsto:'
        end
        object Label47: TLabel
          Left = 31
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label48: TLabel
          Left = 21
          Top = 41
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label49: TLabel
          Left = 66
          Top = 59
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label50: TLabel
          Left = 77
          Top = 76
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label51: TLabel
          Left = 45
          Top = 91
          Width = 58
          Height = 13
          Caption = 'Documento:'
        end
        object Label52: TLabel
          Left = 50
          Top = 108
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label53: TLabel
          Left = 578
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Natureza:'
        end
        object FC_DATAREF: TStaticText
          Left = 107
          Top = 5
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 0
        end
        object FC_DATAP: TStaticText
          Left = 309
          Top = 5
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 1
        end
        object FC_VALORP: TStaticText
          Left = 481
          Top = 4
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 2
        end
        object FC_CODDEP: TStaticText
          Left = 107
          Top = 22
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 3
        end
        object FC_NOMDEP: TStaticText
          Left = 197
          Top = 22
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 4
        end
        object FC_CODCC: TStaticText
          Left = 107
          Top = 39
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 5
        end
        object FC_NOMCC: TStaticText
          Left = 197
          Top = 39
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 6
        end
        object FC_CODBCO: TStaticText
          Left = 107
          Top = 56
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 7
        end
        object FC_NOMBCO: TStaticText
          Left = 197
          Top = 56
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 8
        end
        object FC_TIPO: TStaticText
          Left = 107
          Top = 73
          Width = 21
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 9
        end
        object FC_NOME: TStaticText
          Left = 197
          Top = 73
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 10
        end
        object FC_CODIGO: TStaticText
          Left = 129
          Top = 73
          Width = 68
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 11
        end
        object FC_DOC: TStaticText
          Left = 107
          Top = 89
          Width = 159
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 12
        end
        object FC_DESCRICAO: TStaticText
          Left = 107
          Top = 106
          Width = 412
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 13
        end
        object FC_NATDC: TStaticText
          Left = 627
          Top = 4
          Width = 32
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 14
        end
      end
    end
  end
  object Qr_Dar: TQuery
    OnCalcFields = Qr_DarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADDAR where CRCODEMP is null')
    Left = 648
    Top = 56
    object Qr_DarCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_DarCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DarCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DarCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_DarCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DarCRNUMCUP: TFloatField
      FieldName = 'CRNUMCUP'
      Origin = 'SG_ASSOC.CADDAR.CRNUMCUP'
    end
    object Qr_DarCRDATCUP: TDateTimeField
      FieldName = 'CRDATCUP'
      Origin = 'SG_ASSOC.CADDAR.CRDATCUP'
    end
    object Qr_DarCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DarCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DarCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DarCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_DarCRDTBX: TDateTimeField
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Qr_DarCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_DarCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_DarCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_DarCRCODVEN: TFloatField
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Qr_DarCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SG_ASSOC.CADDAR.CRCODTLV'
    end
    object Qr_DarCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Qr_DarCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Qr_DarCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
    end
    object Qr_DarCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Qr_DarCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_DarCRLOTE: TFloatField
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Qr_DarCRICMSR: TFloatField
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
    end
    object Qr_DarCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Qr_DarCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Qr_DarCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Qr_DarCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Qr_DarCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Qr_DarCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.CADDAR.CRQTDDM'
    end
    object Qr_DarCREMIDUP: TFloatField
      FieldName = 'CREMIDUP'
      Origin = 'SG_ASSOC.CADDAR.CREMIDUP'
    end
    object Qr_DarCREMIBLQ: TFloatField
      FieldName = 'CREMIBLQ'
      Origin = 'SG_ASSOC.CADDAR.CREMIBLQ'
    end
    object Qr_DarCRVALFRE: TFloatField
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.CADDAR.CRVALFRE'
    end
    object Qr_DarCRNOSNUM: TStringField
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Qr_DarCRTIPCOB: TFloatField
      FieldName = 'CRTIPCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTIPCOB'
    end
    object Qr_DarCRDTALT: TDateTimeField
      FieldName = 'CRDTALT'
      Origin = 'SG_ASSOC.CADDAR.CRDTALT'
    end
    object Qr_DarCRUSRALT: TFloatField
      FieldName = 'CRUSRALT'
      Origin = 'SG_ASSOC.CADDAR.CRUSRALT'
    end
    object Qr_DarCRUSRBX: TFloatField
      FieldName = 'CRUSRBX'
      Origin = 'SG_ASSOC.CADDAR.CRUSRBX'
    end
    object Qr_DarCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
    end
    object Qr_DarCRCOMTEL: TFloatField
      FieldName = 'CRCOMTEL'
      Origin = 'SG_ASSOC.CADDAR.CRCOMTEL'
    end
    object Qr_DarCRCOMSUP: TFloatField
      FieldName = 'CRCOMSUP'
      Origin = 'SG_ASSOC.CADDAR.CRCOMSUP'
    end
    object Qr_DarCRSEMCOM: TFloatField
      FieldName = 'CRSEMCOM'
      Origin = 'SG_ASSOC.CADDAR.CRSEMCOM'
    end
    object Qr_DarCRCODLDR: TFloatField
      FieldName = 'CRCODLDR'
      Origin = 'SG_ASSOC.CADDAR.CRCODLDR'
    end
    object Qr_DarCRLOTCV: TFloatField
      FieldName = 'CRLOTCV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV'
    end
    object Qr_DarCRLOTCS: TFloatField
      FieldName = 'CRLOTCS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCS'
    end
    object Qr_DarCRCODORI: TFloatField
      FieldName = 'CRCODORI'
      Origin = 'SG_ASSOC.CADDAR.CRCODORI'
    end
    object Qr_DarCRLOTCT: TFloatField
      FieldName = 'CRLOTCT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCT'
    end
    object Qr_DarCRCODUSR: TFloatField
      FieldName = 'CRCODUSR'
      Origin = 'SG_ASSOC.CADDAR.CRCODUSR'
    end
    object Qr_DarCRHRALT: TStringField
      FieldName = 'CRHRALT'
      Origin = 'SG_ASSOC.CADDAR.CRHRALT'
      Size = 10
    end
    object Qr_DarCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Qr_DarCRTOTNF: TFloatField
      FieldName = 'CRTOTNF'
      Origin = 'SG_ASSOC.CADDAR.CRTOTNF'
    end
    object Qr_DarCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CP'
    end
    object Qr_DarCRCODV02: TFloatField
      FieldName = 'CRCODV02'
      Origin = 'SG_ASSOC.CADDAR.CRCODV02'
    end
    object Qr_DarCRCODV03: TFloatField
      FieldName = 'CRCODV03'
      Origin = 'SG_ASSOC.CADDAR.CRCODV03'
    end
    object Qr_DarCRCODCV: TFloatField
      FieldName = 'CRCODCV'
      Origin = 'SG_ASSOC.CADDAR.CRCODCV'
    end
    object Qr_DarCRCOMV02: TFloatField
      FieldName = 'CRCOMV02'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV02'
    end
    object Qr_DarCRCOMV03: TFloatField
      FieldName = 'CRCOMV03'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV03'
    end
    object Qr_DarCRLOTCV02: TFloatField
      FieldName = 'CRLOTCV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV02'
    end
    object Qr_DarCRLOTCV03: TFloatField
      FieldName = 'CRLOTCV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV03'
    end
    object Qr_DarCRCODECF: TFloatField
      FieldName = 'CRCODECF'
      Origin = 'SG_ASSOC.CADDAR.CRCODECF'
    end
    object Qr_DarCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
    object Qr_DarCRLOTSEQ_FC: TFloatField
      FieldName = 'CRLOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_FC'
    end
    object Qr_DarCRLOTSEQ_CV: TFloatField
      FieldName = 'CRLOTSEQ_CV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV'
    end
    object Qr_DarCRLOTSEQ_CV02: TFloatField
      FieldName = 'CRLOTSEQ_CV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV02'
    end
    object Qr_DarCRLOTSEQ_CV03: TFloatField
      FieldName = 'CRLOTSEQ_CV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV03'
    end
    object Qr_DarCRLOTSEQ_CS: TFloatField
      FieldName = 'CRLOTSEQ_CS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CS'
    end
    object Qr_DarCRLOTSEQ_CT: TFloatField
      FieldName = 'CRLOTSEQ_CT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CT'
    end
    object Qr_DarCRTOTDI01: TFloatField
      FieldName = 'CRTOTDI01'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI01'
    end
    object Qr_DarCRTOTDI02: TFloatField
      FieldName = 'CRTOTDI02'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI02'
    end
    object Qr_DarCRTOTDI03: TFloatField
      FieldName = 'CRTOTDI03'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI03'
    end
    object Qr_DarCRTOTDIVL: TFloatField
      FieldName = 'CRTOTDIVL'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDIVL'
    end
    object Qr_DarCRVALDES01: TFloatField
      FieldName = 'CRVALDES01'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES01'
    end
    object Qr_DarCRVALDES02: TFloatField
      FieldName = 'CRVALDES02'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES02'
    end
    object Qr_DarCRVLRDES: TFloatField
      FieldName = 'CRVLRDES'
      Origin = 'SG_ASSOC.CADDAR.CRVLRDES'
    end
    object Qr_DarCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.CADDAR.CRTARBAN'
    end
    object Qr_DarCRDNOSNUM: TStringField
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object Qr_DarCRACEITE: TStringField
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.CADDAR.CRACEITE'
      Size = 1
    end
    object Qr_DarCRESPECIE: TStringField
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.CADDAR.CRESPECIE'
      Size = 2
    end
    object Qr_DarCRCODBAR: TStringField
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODBAR'
      Size = 60
    end
    object Qr_DarCRCODDIG: TStringField
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.CADDAR.CRCODDIG'
      Size = 60
    end
    object Qr_DarCRLEMAT: TFloatField
      FieldName = 'CRLEMAT'
      Origin = 'SG_ASSOC.CADDAR.CRLEMAT'
    end
    object Qr_Darnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Qr_Darnomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Qr_Darnomv02: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomv02'
      Size = 40
      Calculated = True
    end
    object Qr_Darnomv03: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomv03'
      Size = 40
      Calculated = True
    end
    object Qr_Darnombco: TStringField
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_Darnomtlv: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtlv'
      Size = 40
      Calculated = True
    end
    object Qr_Darnomcv: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcv'
      Size = 40
      Calculated = True
    end
    object Qr_DarCRCODASSE: TFloatField
      FieldName = 'CRCODASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCODASSE'
    end
    object Qr_DarCRCOMASSE: TFloatField
      FieldName = 'CRCOMASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCOMASSE'
    end
    object Qr_DarCRLOTSEQ_CASSE: TFloatField
      FieldName = 'CRLOTSEQ_CASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CASSE'
    end
    object Qr_DarCRLOTCASSE: TFloatField
      FieldName = 'CRLOTCASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCASSE'
    end
    object Qr_DarCRINST01: TStringField
      FieldName = 'CRINST01'
      Origin = 'SG_ASSOC.CADDAR.CRINST01'
      Size = 60
    end
    object Qr_DarCRINST02: TStringField
      FieldName = 'CRINST02'
      Origin = 'SG_ASSOC.CADDAR.CRINST02'
      Size = 60
    end
    object Qr_DarCRINST03: TStringField
      FieldName = 'CRINST03'
      Origin = 'SG_ASSOC.CADDAR.CRINST03'
      Size = 60
    end
    object Qr_DarCRINST04: TStringField
      FieldName = 'CRINST04'
      Origin = 'SG_ASSOC.CADDAR.CRINST04'
      Size = 60
    end
    object Qr_DarCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.CADDAR.CRQTDPARC'
    end
    object Qr_DarCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.CADDAR.CRNUMPARC'
    end
    object Qr_DarCRVALSEG: TFloatField
      FieldName = 'CRVALSEG'
      Origin = 'SG_ASSOC.CADDAR.CRVALSEG'
    end
    object Qr_DarCRTOTCGRU: TFloatField
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTCGRU'
    end
    object Qr_DarCRTOTSGRU: TFloatField
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTSGRU'
    end
    object Qr_DarCRTBCOCOB: TFloatField
      FieldName = 'CRTBCOCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTBCOCOB'
    end
    object Qr_DarCRCODV04: TFloatField
      FieldName = 'CRCODV04'
      Origin = 'SG_ASSOC.CADDAR.CRCODV04'
    end
    object Qr_DarCRNR: TFloatField
      FieldName = 'CRNR'
      Origin = 'SG_ASSOC.CADDAR.CRNR'
    end
    object Qr_DarCRCUSBCO: TFloatField
      FieldName = 'CRCUSBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCUSBCO'
    end
    object Qr_DarCRCOMV04: TFloatField
      FieldName = 'CRCOMV04'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV04'
    end
    object Qr_DarCRLOTSEQ_CV04: TFloatField
      FieldName = 'CRLOTSEQ_CV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV04'
    end
    object Qr_DarCRLOTCV04: TFloatField
      FieldName = 'CRLOTCV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV04'
    end
    object Qr_DarCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.CADDAR.CRTOTIPI'
    end
    object Qr_DarCREMIBOR: TFloatField
      FieldName = 'CREMIBOR'
      Origin = 'SG_ASSOC.CADDAR.CREMIBOR'
    end
    object Qr_DarCRCHD_BANCO: TFloatField
      FieldName = 'CRCHD_BANCO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_BANCO'
    end
    object Qr_DarCRCHD_AGENCIA: TStringField
      FieldName = 'CRCHD_AGENCIA'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_AGENCIA'
      Size = 5
    end
    object Qr_DarCRCHD_CC: TStringField
      FieldName = 'CRCHD_CC'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_CC'
      Size = 15
    end
    object Qr_DarCRCHD_NUMERO: TFloatField
      FieldName = 'CRCHD_NUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_NUMERO'
    end
    object Qr_DarCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SG_ASSOC.CADDAR.CRTCB'
    end
    object Qr_DarCRCAUCAO: TFloatField
      FieldName = 'CRCAUCAO'
      Origin = 'SG_ASSOC.CADDAR.CRCAUCAO'
    end
    object Qr_DarCRBCOCAU: TFloatField
      FieldName = 'CRBCOCAU'
      Origin = 'SG_ASSOC.CADDAR.CRBCOCAU'
    end
    object Qr_DarCRDTCAU: TDateTimeField
      FieldName = 'CRDTCAU'
      Origin = 'SG_ASSOC.CADDAR.CRDTCAU'
    end
    object Qr_DarCRSPC_DTPEN: TDateTimeField
      FieldName = 'CRSPC_DTPEN'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTPEN'
    end
    object Qr_DarCRSPC_DTNEG: TDateTimeField
      FieldName = 'CRSPC_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTNEG'
    end
    object Qr_DarCRSERASA_DTNEG: TDateTimeField
      FieldName = 'CRSERASA_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSERASA_DTNEG'
    end
    object Qr_DarCRCODCTA: TFloatField
      FieldName = 'CRCODCTA'
      Origin = 'SG_ASSOC.CADDAR.CRCODCTA'
    end
    object Qr_DarCRNOMCTA: TStringField
      FieldName = 'CRNOMCTA'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCTA'
      Size = 40
    end
    object Qr_DarCRCODCC: TStringField
      FieldName = 'CRCODCC'
      Origin = 'SG_ASSOC.CADDAR.CRCODCC'
      Size = 5
    end
    object Qr_DarCRNOMCC: TStringField
      FieldName = 'CRNOMCC'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCC'
      Size = 40
    end
    object Qr_DarCRNATDC: TStringField
      FieldName = 'CRNATDC'
      Origin = 'SG_ASSOC.CADDAR.CRNATDC'
      Size = 1
    end
    object Qr_DarCRCODDEP: TStringField
      FieldName = 'CRCODDEP'
      Origin = 'SG_ASSOC.CADDAR.CRCODDEP'
      Size = 5
    end
    object Qr_DarCRNOMDEP: TStringField
      FieldName = 'CRNOMDEP'
      Origin = 'SG_ASSOC.CADDAR.CRNOMDEP'
      Size = 40
    end
    object Qr_DarCRDESCMV: TStringField
      FieldName = 'CRDESCMV'
      Origin = 'SG_ASSOC.CADDAR.CRDESCMV'
      Size = 40
    end
    object Qr_DarCRCOMIS_EXTRA: TFloatField
      FieldName = 'CRCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADDAR.CRCOMIS_EXTRA'
    end
    object Qr_DarCROBS: TMemoField
      FieldName = 'CROBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Qr_DarCRID_NEW: TFloatField
      FieldName = 'CRID_NEW'
    end
    object Qr_DarCRID_PED01_NEW: TFloatField
      FieldName = 'CRID_PED01_NEW'
    end
    object Qr_DarCRID_LDR_NEW: TFloatField
      FieldName = 'CRID_LDR_NEW'
    end
  end
end
