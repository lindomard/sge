object Frm_ParFolha: TFrm_ParFolha
  Left = 192
  Top = 55
  Width = 584
  Height = 427
  Caption = 'Parametros da Folha de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 576
    Height = 355
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Diversos'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 233
        Align = alTop
        Caption = 'C'#243'digos de Eventos diversos:'
        TabOrder = 0
        object Label1: TLabel
          Left = 14
          Top = 67
          Width = 99
          Height = 13
          Caption = 'Sal'#225'rio Familia....'
        end
        object Label65: TLabel
          Left = 13
          Top = 21
          Width = 100
          Height = 13
          Caption = 'Sal'#225'rio...............'
        end
        object Label66: TLabel
          Left = 13
          Top = 43
          Width = 96
          Height = 13
          Caption = 'Gratifica'#231#245'es.....'
        end
        object Label68: TLabel
          Left = 15
          Top = 91
          Width = 99
          Height = 13
          Caption = 'Vale Transporte..'
        end
        object Label69: TLabel
          Left = 15
          Top = 113
          Width = 95
          Height = 13
          Caption = 'F'#233'rias...............'
        end
        object Label70: TLabel
          Left = 14
          Top = 136
          Width = 99
          Height = 13
          Caption = 'Recis'#227'o.............'
        end
        object Label71: TLabel
          Left = 15
          Top = 159
          Width = 91
          Height = 13
          Caption = '13o. '#218'nico.......'
        end
        object Label72: TLabel
          Left = 15
          Top = 180
          Width = 95
          Height = 13
          Caption = '13o.1a.Parcela..'
        end
        object Label73: TLabel
          Left = 17
          Top = 203
          Width = 95
          Height = 13
          Caption = '13o.2a.Parcela..'
        end
        object CODSFAM: TEdit
          Left = 108
          Top = 65
          Width = 60
          Height = 21
          TabOrder = 2
          OnExit = CODSFAMExit
          OnKeyPress = CODSFAMKeyPress
        end
        object NOMSFAM: TEdit
          Left = 169
          Top = 65
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 3
        end
        object CODSAL: TEdit
          Left = 108
          Top = 19
          Width = 60
          Height = 21
          TabOrder = 0
          OnExit = CODSALExit
          OnKeyPress = CODSALKeyPress
        end
        object NOMSAL: TEdit
          Left = 169
          Top = 19
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 4
        end
        object CODGRA: TEdit
          Left = 108
          Top = 41
          Width = 60
          Height = 21
          TabOrder = 1
          OnExit = CODGRAExit
          OnKeyPress = CODGRAKeyPress
        end
        object NOMGRA: TEdit
          Left = 169
          Top = 41
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 5
        end
        object CODVT: TEdit
          Left = 108
          Top = 89
          Width = 60
          Height = 21
          TabOrder = 6
          OnExit = CODVTExit
          OnKeyPress = CODVTKeyress
        end
        object NOMVT: TEdit
          Left = 169
          Top = 89
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 7
        end
        object CODFER: TEdit
          Left = 108
          Top = 111
          Width = 60
          Height = 21
          TabOrder = 8
          OnExit = CODFERExit
          OnKeyPress = CODFERKeyPress
        end
        object NOMFER: TEdit
          Left = 169
          Top = 111
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 9
        end
        object CODRES: TEdit
          Left = 108
          Top = 134
          Width = 60
          Height = 21
          TabOrder = 10
          OnExit = CODRESExit
          OnKeyPress = CODRESKeyPress
        end
        object NOMRES: TEdit
          Left = 169
          Top = 134
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 11
        end
        object COD13UN: TEdit
          Left = 108
          Top = 157
          Width = 60
          Height = 21
          TabOrder = 12
          OnExit = COD13UNExit
          OnKeyPress = COD13UNKeyPress
        end
        object NOM13UN: TEdit
          Left = 169
          Top = 157
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 13
        end
        object COD131P: TEdit
          Left = 108
          Top = 178
          Width = 60
          Height = 21
          TabOrder = 14
          OnExit = COD131PExit
          OnKeyPress = COD131PKeyPress
        end
        object NOM131P: TEdit
          Left = 169
          Top = 178
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 15
        end
        object COD132P: TEdit
          Left = 108
          Top = 201
          Width = 60
          Height = 21
          TabOrder = 16
          OnExit = COD132PExit
          OnKeyPress = COD132PKeyPress
        end
        object NOM132P: TEdit
          Left = 169
          Top = 201
          Width = 206
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 17
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 233
        Width = 568
        Height = 48
        Align = alTop
        BiDiMode = bdRightToLeft
        Caption = 'Jornada de Trabalho:'
        ParentBiDiMode = False
        TabOrder = 1
        object Label67: TLabel
          Left = 10
          Top = 19
          Width = 173
          Height = 13
          Caption = 'Quantidade de horas Mensais:'
        end
        object QTDHM: TEdit
          Left = 187
          Top = 17
          Width = 60
          Height = 21
          TabOrder = 0
          OnExit = QTDHMExit
          OnKeyPress = QTDHMKeyPress
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sobre &INSS'
      ImageIndex = 1
      object Label19: TLabel
        Left = 4
        Top = 153
        Width = 75
        Height = 13
        Caption = '5a. Faixa de '
      end
      object Label20: TLabel
        Left = 181
        Top = 152
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label21: TLabel
        Left = 294
        Top = 153
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label22: TLabel
        Left = 374
        Top = 153
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label18: TLabel
        Left = 374
        Top = 126
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label17: TLabel
        Left = 294
        Top = 126
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label16: TLabel
        Left = 181
        Top = 125
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label15: TLabel
        Left = 4
        Top = 126
        Width = 75
        Height = 13
        Caption = '4a. Faixa de '
      end
      object Label11: TLabel
        Left = 4
        Top = 97
        Width = 75
        Height = 13
        Caption = '3a. Faixa de '
      end
      object Label12: TLabel
        Left = 181
        Top = 96
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label13: TLabel
        Left = 294
        Top = 97
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label14: TLabel
        Left = 374
        Top = 97
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label10: TLabel
        Left = 374
        Top = 67
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label9: TLabel
        Left = 294
        Top = 67
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label8: TLabel
        Left = 181
        Top = 66
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label7: TLabel
        Left = 4
        Top = 67
        Width = 75
        Height = 13
        Caption = '2a. Faixa de '
      end
      object Label3: TLabel
        Left = 4
        Top = 37
        Width = 75
        Height = 13
        Caption = '1a. Faixa de '
      end
      object Label4: TLabel
        Left = 181
        Top = 36
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label5: TLabel
        Left = 294
        Top = 37
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label6: TLabel
        Left = 374
        Top = 37
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Bevel2: TBevel
        Left = 1
        Top = 29
        Width = 534
        Height = 2
      end
      object Bevel3: TBevel
        Left = -6
        Top = 58
        Width = 534
        Height = 2
      end
      object Bevel4: TBevel
        Left = -6
        Top = 88
        Width = 534
        Height = 2
      end
      object Label2: TLabel
        Left = 10
        Top = 8
        Width = 96
        Height = 13
        Caption = 'C'#243'digo Evento...'
      end
      object Bevel1: TBevel
        Left = -6
        Top = 119
        Width = 534
        Height = 2
      end
      object Bevel5: TBevel
        Left = -5
        Top = 145
        Width = 534
        Height = 2
      end
      object Bevel6: TBevel
        Left = -6
        Top = 175
        Width = 534
        Height = 2
      end
      object FINSS05A: TEdit
        Left = 81
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 13
        OnExit = FINSS05AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS05B: TEdit
        Left = 194
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 14
        OnExit = FINSS05BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS05: TEdit
        Left = 309
        Top = 150
        Width = 62
        Height = 21
        TabOrder = 15
        OnExit = FINSS05Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS04: TEdit
        Left = 309
        Top = 123
        Width = 62
        Height = 21
        TabOrder = 12
        OnExit = FINSS04Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS04B: TEdit
        Left = 194
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 11
        OnExit = FINSS04BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS04A: TEdit
        Left = 81
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 10
        OnExit = FINSS04AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS03A: TEdit
        Left = 81
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 7
        OnExit = FINSS03AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS03B: TEdit
        Left = 194
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 8
        OnExit = FINSS03BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS03: TEdit
        Left = 309
        Top = 94
        Width = 62
        Height = 21
        TabOrder = 9
        OnExit = FINSS03Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS02: TEdit
        Left = 309
        Top = 64
        Width = 62
        Height = 21
        TabOrder = 6
        OnExit = FINSS02Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS02B: TEdit
        Left = 194
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 5
        OnExit = FINSS02BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS02A: TEdit
        Left = 81
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 4
        OnExit = FINSS02AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS01A: TEdit
        Left = 81
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 1
        OnExit = FINSS01AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS01B: TEdit
        Left = 194
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 2
        OnExit = FINSS01BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FINSS01: TEdit
        Left = 309
        Top = 34
        Width = 62
        Height = 21
        TabOrder = 3
        OnExit = FINSS01Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object CODINSS: TEdit
        Left = 105
        Top = 6
        Width = 60
        Height = 21
        TabOrder = 0
        OnExit = CODINSSExit
        OnKeyPress = CODINSSKeyPress
      end
      object NOMINSS: TEdit
        Left = 166
        Top = 6
        Width = 206
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 16
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sobre &FGTS'
      ImageIndex = 2
      object Label23: TLabel
        Left = 4
        Top = 153
        Width = 75
        Height = 13
        Caption = '5a. Faixa de '
      end
      object Label24: TLabel
        Left = 4
        Top = 126
        Width = 75
        Height = 13
        Caption = '4a. Faixa de '
      end
      object Label25: TLabel
        Left = 4
        Top = 97
        Width = 75
        Height = 13
        Caption = '3a. Faixa de '
      end
      object Label26: TLabel
        Left = 4
        Top = 67
        Width = 75
        Height = 13
        Caption = '2a. Faixa de '
      end
      object Label27: TLabel
        Left = 4
        Top = 37
        Width = 75
        Height = 13
        Caption = '1a. Faixa de '
      end
      object Label28: TLabel
        Left = 181
        Top = 152
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label29: TLabel
        Left = 181
        Top = 125
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label30: TLabel
        Left = 181
        Top = 96
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label31: TLabel
        Left = 181
        Top = 66
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label32: TLabel
        Left = 181
        Top = 36
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label33: TLabel
        Left = 294
        Top = 153
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label34: TLabel
        Left = 294
        Top = 126
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label35: TLabel
        Left = 294
        Top = 97
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label36: TLabel
        Left = 294
        Top = 67
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label37: TLabel
        Left = 294
        Top = 37
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label38: TLabel
        Left = 374
        Top = 153
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label39: TLabel
        Left = 374
        Top = 126
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label40: TLabel
        Left = 374
        Top = 97
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label41: TLabel
        Left = 374
        Top = 67
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label42: TLabel
        Left = 374
        Top = 37
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label43: TLabel
        Left = 10
        Top = 8
        Width = 96
        Height = 13
        Caption = 'C'#243'digo Evento...'
      end
      object Bevel7: TBevel
        Left = 1
        Top = 29
        Width = 527
        Height = 2
      end
      object Bevel8: TBevel
        Left = -2
        Top = 58
        Width = 529
        Height = 2
      end
      object Bevel9: TBevel
        Left = 1
        Top = 88
        Width = 527
        Height = 2
      end
      object Bevel10: TBevel
        Left = 1
        Top = 118
        Width = 527
        Height = 2
      end
      object Bevel11: TBevel
        Left = 1
        Top = 145
        Width = 528
        Height = 2
      end
      object Bevel12: TBevel
        Left = 1
        Top = 175
        Width = 527
        Height = 2
      end
      object FFGTS01A: TEdit
        Left = 81
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 1
        OnExit = FFGTS01AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS02A: TEdit
        Left = 81
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 4
        OnExit = FFGTS02AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS03A: TEdit
        Left = 81
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 7
        OnExit = FFGTS03AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS04A: TEdit
        Left = 81
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 10
        OnExit = FFGTS04AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS05A: TEdit
        Left = 81
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 13
        OnExit = FFGTS05AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS01B: TEdit
        Left = 194
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 2
        OnExit = FFGTS01BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS02B: TEdit
        Left = 194
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 5
        OnExit = FFGTS02BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS03B: TEdit
        Left = 194
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 8
        OnExit = FFGTS03BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS04B: TEdit
        Left = 194
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 11
        OnExit = FFGTS04BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS05B: TEdit
        Left = 194
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 14
        OnExit = FFGTS05BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS01: TEdit
        Left = 309
        Top = 34
        Width = 62
        Height = 21
        TabOrder = 3
        OnExit = FFGTS01Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS02: TEdit
        Left = 309
        Top = 64
        Width = 62
        Height = 21
        TabOrder = 6
        OnExit = FFGTS02Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS03: TEdit
        Left = 309
        Top = 94
        Width = 62
        Height = 21
        TabOrder = 9
        OnExit = FFGTS03Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS04: TEdit
        Left = 309
        Top = 123
        Width = 62
        Height = 21
        TabOrder = 12
        OnExit = FFGTS04Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FFGTS05: TEdit
        Left = 309
        Top = 150
        Width = 62
        Height = 21
        TabOrder = 15
        OnExit = FFGTS05Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object NOMFGTS: TEdit
        Left = 166
        Top = 6
        Width = 206
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 16
      end
      object CODFGTS: TEdit
        Left = 105
        Top = 6
        Width = 60
        Height = 21
        TabOrder = 0
        OnExit = CODFGTSExit
        OnKeyPress = CODFGTSKeyPress
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Sobre Imposto de &Renda'
      ImageIndex = 3
      object Bevel13: TBevel
        Left = 1
        Top = 175
        Width = 527
        Height = 2
      end
      object Label44: TLabel
        Left = 4
        Top = 153
        Width = 75
        Height = 13
        Caption = '5a. Faixa de '
      end
      object Label45: TLabel
        Left = 4
        Top = 126
        Width = 75
        Height = 13
        Caption = '4a. Faixa de '
      end
      object Label46: TLabel
        Left = 4
        Top = 97
        Width = 75
        Height = 13
        Caption = '3a. Faixa de '
      end
      object Label47: TLabel
        Left = 4
        Top = 67
        Width = 75
        Height = 13
        Caption = '2a. Faixa de '
      end
      object Label48: TLabel
        Left = 4
        Top = 37
        Width = 75
        Height = 13
        Caption = '1a. Faixa de '
      end
      object Label49: TLabel
        Left = 10
        Top = 8
        Width = 96
        Height = 13
        Caption = 'C'#243'digo Evento...'
      end
      object Label50: TLabel
        Left = 181
        Top = 152
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label51: TLabel
        Left = 181
        Top = 125
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label52: TLabel
        Left = 181
        Top = 96
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label53: TLabel
        Left = 181
        Top = 66
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label54: TLabel
        Left = 181
        Top = 36
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label55: TLabel
        Left = 294
        Top = 37
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label56: TLabel
        Left = 294
        Top = 67
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label57: TLabel
        Left = 294
        Top = 97
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label58: TLabel
        Left = 294
        Top = 126
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label59: TLabel
        Left = 294
        Top = 153
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label60: TLabel
        Left = 374
        Top = 153
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label61: TLabel
        Left = 374
        Top = 126
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label62: TLabel
        Left = 374
        Top = 97
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label63: TLabel
        Left = 374
        Top = 67
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label64: TLabel
        Left = 374
        Top = 37
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Bevel14: TBevel
        Left = 1
        Top = 146
        Width = 527
        Height = 2
      end
      object Bevel15: TBevel
        Left = 1
        Top = 119
        Width = 527
        Height = 2
      end
      object Bevel16: TBevel
        Left = 1
        Top = 88
        Width = 527
        Height = 2
      end
      object Bevel17: TBevel
        Left = 1
        Top = 58
        Width = 527
        Height = 2
      end
      object Bevel18: TBevel
        Left = 1
        Top = 29
        Width = 527
        Height = 2
      end
      object FIR05A: TEdit
        Left = 81
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 13
        OnExit = FIR05AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object CODIR: TEdit
        Left = 105
        Top = 6
        Width = 60
        Height = 21
        TabOrder = 0
        OnExit = CODIRExit
        OnKeyPress = CODIRKeyPress
      end
      object NOMIR: TEdit
        Left = 166
        Top = 6
        Width = 206
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 16
      end
      object FIR01A: TEdit
        Left = 81
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 1
        OnExit = FIR01AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR02A: TEdit
        Left = 81
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 4
        OnExit = FIR02AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR03A: TEdit
        Left = 81
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 7
        OnExit = FIR03AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR04A: TEdit
        Left = 81
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 10
        OnExit = FIR04AExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR01B: TEdit
        Left = 194
        Top = 33
        Width = 93
        Height = 21
        TabOrder = 2
        OnExit = FIR01BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR02B: TEdit
        Left = 194
        Top = 63
        Width = 93
        Height = 21
        TabOrder = 5
        OnExit = FIR02BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR03B: TEdit
        Left = 194
        Top = 93
        Width = 93
        Height = 21
        TabOrder = 8
        OnExit = FIR03BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR04B: TEdit
        Left = 194
        Top = 122
        Width = 93
        Height = 21
        TabOrder = 11
        OnExit = FIR04BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR05B: TEdit
        Left = 194
        Top = 149
        Width = 93
        Height = 21
        TabOrder = 14
        OnExit = FIR05BExit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR05: TEdit
        Left = 309
        Top = 150
        Width = 62
        Height = 21
        TabOrder = 15
        OnExit = FIR05Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR04: TEdit
        Left = 309
        Top = 123
        Width = 62
        Height = 21
        TabOrder = 12
        OnExit = FIR04Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR03: TEdit
        Left = 309
        Top = 94
        Width = 62
        Height = 21
        TabOrder = 9
        OnExit = FIR03Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR02: TEdit
        Left = 309
        Top = 64
        Width = 62
        Height = 21
        TabOrder = 6
        OnExit = FIR02Exit
        OnKeyPress = FINSS01AKeyPress
      end
      object FIR01: TEdit
        Left = 309
        Top = 34
        Width = 62
        Height = 21
        TabOrder = 3
        OnExit = FIR01Exit
        OnKeyPress = FINSS01AKeyPress
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Eventos Pr'#233'-Fixado da Folha'
      ImageIndex = 4
      object bb_Folha: TBitBtn
        Left = 25
        Top = 40
        Width = 240
        Height = 46
        Caption = 'Folha de Pagamento'
        TabOrder = 0
        OnClick = bb_FolhaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
          8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
          0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
          0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
          05555555575FF777755555555500055555555555557775555555}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bb_13unico: TBitBtn
        Left = 310
        Top = 40
        Width = 240
        Height = 46
        Caption = '13o. '#218'nico'
        TabOrder = 1
        OnClick = bb_13unicoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333333777F3333333333330003333333333333777F3333333333330F0333
          33333333337F7F3333333333330F033333333333337373F33333333330F7F033
          333333333737F73F333333330FF7FF03333333337F37F37F333333330FF7FF03
          333333337F37337F333333330FFFFF033333333373F333733333333330FFF033
          33333333373FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bb_Ferias: TBitBtn
        Left = 25
        Top = 86
        Width = 240
        Height = 46
        Caption = 'F'#233'rias'
        TabOrder = 2
        OnClick = bb_FeriasClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
          77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
          BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
          0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
          EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
          0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
          0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
          EEE03333337FFFFFFFF733333300000000003333337777777777}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bb_recisao: TBitBtn
        Left = 25
        Top = 133
        Width = 240
        Height = 46
        Caption = 'Recis'#227'o de Contrato'
        TabOrder = 3
        OnClick = bb_recisaoClick
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
      object bb_13pp: TBitBtn
        Left = 310
        Top = 86
        Width = 240
        Height = 46
        Caption = '13o. Primeira Parcela'
        TabOrder = 4
        OnClick = bb_13ppClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bb_sp: TBitBtn
        Left = 310
        Top = 132
        Width = 240
        Height = 46
        Caption = '13o. Segunda Parcela'
        TabOrder = 5
        OnClick = bb_spClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 355
    Width = 576
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 4
      Top = 2
      Width = 115
      Height = 37
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 417
      Top = 3
      Width = 115
      Height = 37
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
end
