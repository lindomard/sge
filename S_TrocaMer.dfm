object Frm_TrocaMer: TFrm_TrocaMer
  Left = 18
  Top = 45
  Width = 781
  Height = 467
  ActiveControl = CODENV
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Troca de Mercadoria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 765
    Height = 96
    Align = alTop
    Caption = 'Mercadorias sem devolu'#231#245'es:'
    TabOrder = 0
    object STGSEMDEV: TStringGrid
      Left = 2
      Top = 15
      Width = 761
      Height = 79
      Align = alClient
      ColCount = 7
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 0
      OnDblClick = STGSEMDEVDblClick
      OnDrawCell = STGSEMDEVDrawCell
      ColWidths = (
        103
        78
        83
        36
        278
        81
        81)
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 96
    Width = 765
    Height = 95
    Align = alTop
    Caption = 'Mercadorias sem remessa:'
    TabOrder = 1
    object STGSEMREM: TStringGrid
      Left = 2
      Top = 15
      Width = 761
      Height = 78
      Align = alClient
      ColCount = 7
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 0
      OnDblClick = STGSEMREMDblClick
      OnDrawCell = STGSEMREMDrawCell
      ColWidths = (
        103
        78
        83
        36
        278
        81
        81)
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 191
    Width = 765
    Height = 94
    Align = alTop
    Caption = 'Mercadorias Trocadas:'
    TabOrder = 2
    object STGTRO: TStringGrid
      Left = 2
      Top = 15
      Width = 761
      Height = 77
      Align = alClient
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 3
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 0
      OnDrawCell = STGTRODrawCell
      ColWidths = (
        141
        130
        173
        150
        150)
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 285
    Width = 765
    Height = 103
    Align = alTop
    Caption = 'Digita'#231#227'o das Trocas'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 78
      Height = 13
      Caption = 'C'#243'digo Enviado:'
    end
    object Label2: TLabel
      Left = 195
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Grade:'
    end
    object Label4: TLabel
      Left = 315
      Top = 15
      Width = 25
      Height = 13
      Caption = 'Unid:'
    end
    object Label5: TLabel
      Left = 409
      Top = 15
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label6: TLabel
      Left = 3
      Top = 38
      Width = 85
      Height = 13
      Caption = 'C'#243'digo Recebido:'
    end
    object Label7: TLabel
      Left = 195
      Top = 37
      Width = 32
      Height = 13
      Caption = 'Grade:'
    end
    object Label9: TLabel
      Left = 316
      Top = 36
      Width = 25
      Height = 13
      Caption = 'Unid:'
    end
    object Label10: TLabel
      Left = 410
      Top = 36
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label8: TLabel
      Left = 32
      Top = 59
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object CODENV: TEdit
      Left = 91
      Top = 14
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODENVExit
      OnKeyPress = CODENVKeyPress
    end
    object GRADEENV: TEdit
      Left = 229
      Top = 13
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = GRADEENVExit
    end
    object UNDENV: TEdit
      Left = 346
      Top = 13
      Width = 47
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object DESCENV: TEdit
      Left = 468
      Top = 13
      Width = 297
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
    object CODREC: TEdit
      Left = 91
      Top = 35
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODRECExit
      OnKeyPress = CODRECKeyPress
    end
    object GRADEREC: TEdit
      Left = 229
      Top = 34
      Width = 72
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = GRADERECExit
    end
    object UNDREC: TEdit
      Left = 346
      Top = 34
      Width = 47
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 6
    end
    object DESCREC: TEdit
      Left = 469
      Top = 34
      Width = 296
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
    end
    object ITEM_GRAVAR: TBitBtn
      Left = 3
      Top = 78
      Width = 100
      Height = 21
      Caption = 'Grava&r'
      TabOrder = 9
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
      Top = 78
      Width = 100
      Height = 21
      Caption = '&Editar'
      TabOrder = 10
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
      Top = 78
      Width = 100
      Height = 21
      Caption = 'Cancela&r'
      TabOrder = 11
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
    object bbExcItem: TBitBtn
      Left = 304
      Top = 78
      Width = 100
      Height = 21
      Caption = 'E&xcluir'
      TabOrder = 12
      OnClick = bbExcItemClick
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
    object QUANTIDADE: TEdit
      Left = 91
      Top = 56
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = QUANTIDADEExit
    end
  end
  object bbSair: TBitBtn
    Left = 241
    Top = 389
    Width = 274
    Height = 33
    Caption = 'Fechar Esta Janela'
    TabOrder = 4
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
end
