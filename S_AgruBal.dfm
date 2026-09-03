object Frm_AgruBal: TFrm_AgruBal
  Left = 411
  Top = 214
  Width = 622
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Agrupamento de Balancos'
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
    Top = 0
    Width = 606
    Height = 101
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 86
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 254
      Top = 7
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 48
      Top = 25
      Width = 86
      Height = 13
      Caption = 'N'#250'mero Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 226
      Top = 26
      Width = 79
      Height = 13
      Caption = 'N'#250'mero Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label81: TLabel
      Left = 28
      Top = 44
      Width = 109
      Height = 13
      Caption = 'Local Mercadorias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object MDT1: TMaskEdit
      Left = 138
      Top = 4
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 309
      Top = 4
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object NUMINI: TEdit
      Left = 138
      Top = 22
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = NUMINIExit
    end
    object NUMFIN: TEdit
      Left = 309
      Top = 22
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NUMFINExit
    end
    object bbAtualizar: TBitBtn
      Left = 35
      Top = 70
      Width = 120
      Height = 25
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bbAtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 466
      Top = 70
      Width = 120
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object CB_LOCAL: TComboBox
      Left = 138
      Top = 40
      Width = 191
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 4
      Text = 'Default'
      Visible = False
      Items.Strings = (
        'Prateleira'
        'Deposito'
        'Em Reparo'
        'Default')
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 101
    Width = 606
    Height = 131
    Align = alClient
    Caption = 'Chaves Encontradas:'
    TabOrder = 1
    object STG1: TStringGrid
      Left = 2
      Top = 15
      Width = 602
      Height = 114
      Align = alClient
      ColCount = 7
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 0
      OnDblClick = STG1DblClick
      ColWidths = (
        64
        64
        86
        236
        207
        233
        64)
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 232
    Width = 606
    Height = 105
    Align = alBottom
    Caption = 'Dados a Permanecer:'
    TabOrder = 2
    object Label5: TLabel
      Left = 6
      Top = 15
      Width = 97
      Height = 13
      Caption = '&N'#250'mero do Balan'#231'o:'
      FocusControl = CHAVE
    end
    object Label6: TLabel
      Left = 294
      Top = 17
      Width = 26
      Height = 13
      Caption = '&Data:'
    end
    object Label7: TLabel
      Left = 34
      Top = 40
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
      FocusControl = MOT01
    end
    object CHAVE: TEdit
      Left = 110
      Top = 15
      Width = 73
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DATA: TMaskEdit
      Left = 326
      Top = 14
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = '  /  /    '
    end
    object MOT01: TEdit
      Left = 111
      Top = 36
      Width = 354
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object MOT02: TEdit
      Left = 111
      Top = 58
      Width = 354
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object MOT03: TEdit
      Left = 111
      Top = 80
      Width = 354
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object bbAgrupar: TBitBtn
      Left = 474
      Top = 32
      Width = 120
      Height = 67
      Caption = 'A&grupar'
      TabOrder = 5
      OnClick = bbAgruparClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
  end
end
