object Frm_Caixa: TFrm_Caixa
  Left = 65
  Top = 160
  Width = 530
  Height = 244
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Abertura de Caixa'
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
  PixelsPerInch = 96
  TextHeight = 13
  object bbSair: TBitBtn
    Left = 343
    Top = 165
    Width = 150
    Height = 40
    Caption = '&Sair'
    TabOrder = 3
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
  object bbGravar: TBitBtn
    Left = 2
    Top = 165
    Width = 150
    Height = 40
    Caption = '&Confirmar'
    TabOrder = 2
    OnClick = bbGravarClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 514
    Height = 81
    Align = alTop
    Caption = 'Caixa Aberto Atualmente:'
    Enabled = False
    TabOrder = 0
    object Label3: TLabel
      Left = 9
      Top = 35
      Width = 78
      Height = 13
      Caption = 'Caixa/Banco:'
    end
    object Label4: TLabel
      Left = 56
      Top = 18
      Width = 32
      Height = 13
      Caption = 'ECF.:'
    end
    object Label5: TLabel
      Left = 11
      Top = 59
      Width = 182
      Height = 13
      Caption = 'N'#250'mero do Lote de Movimento: '
    end
    object CODBCO_ATU: TEdit
      Left = 90
      Top = 36
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object NOMBCO_ATU: TEdit
      Left = 150
      Top = 36
      Width = 345
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object CODECF_ATU: TEdit
      Left = 90
      Top = 15
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NOMECF_ATU: TEdit
      Left = 150
      Top = 15
      Width = 345
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
    object LOTMOV_ANT: TEdit
      Left = 190
      Top = 57
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 514
    Height = 79
    Align = alTop
    Caption = 'Caixa a Ser Aberto:'
    TabOrder = 1
    object Label6: TLabel
      Left = 56
      Top = 18
      Width = 32
      Height = 13
      Caption = 'ECF.:'
    end
    object Label7: TLabel
      Left = 9
      Top = 35
      Width = 78
      Height = 13
      Caption = 'Caixa/Banco:'
    end
    object Label1: TLabel
      Left = 11
      Top = 59
      Width = 182
      Height = 13
      Caption = 'N'#250'mero do Lote de Movimento: '
    end
    object MCODCAI: TEdit
      Left = 90
      Top = 15
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCODCAIExit
      OnKeyPress = MCODCAIKeyPress
    end
    object NOMECF: TEdit
      Left = 150
      Top = 15
      Width = 345
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object NOMBCO: TEdit
      Left = 150
      Top = 36
      Width = 345
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object MCODBCO: TEdit
      Left = 90
      Top = 36
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = MCODBCOExit
      OnKeyPress = MCODBCOKeyPress
    end
    object MLOTMOV: TEdit
      Left = 190
      Top = 57
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object bbSalvarPadrao: TBitBtn
    Left = 176
    Top = 165
    Width = 150
    Height = 40
    Caption = '&Salvar Banco Padr'#227'o'
    TabOrder = 4
    TabStop = False
    OnClick = bbSalvarPadraoClick
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
