object Frm_ExpBChq: TFrm_ExpBChq
  Left = 68
  Top = 114
  Width = 668
  Height = 193
  Caption = 'Exporta'#231#227'o de Cheques'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 652
    Height = 38
    Align = alTop
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Exporta'#231#227'o do Lote de Baixa de Cheque No. 1093'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 43
    Top = 46
    Width = 104
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Empresa Origem:'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object CODEMP_ORI: TEdit
    Left = 151
    Top = 42
    Width = 77
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 2
  end
  object st_empori: TStaticText
    Left = 234
    Top = 46
    Width = 340
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 43
    Top = 66
    Width = 104
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Empresa Destino:'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object CODEMP_DES: TEdit
    Left = 151
    Top = 64
    Width = 77
    Height = 21
    TabOrder = 5
    OnExit = CODEMP_DESExit
    OnKeyPress = CODEMP_DESKeyPress
  end
  object st_empdes: TStaticText
    Left = 234
    Top = 68
    Width = 340
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object bbExportar: TBitBtn
    Left = 9
    Top = 111
    Width = 150
    Height = 42
    Cursor = crHandPoint
    Caption = '&Exportar'
    TabOrder = 7
    OnClick = bbExportarClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object BBSAIR: TBitBtn
    Left = 492
    Top = 111
    Width = 150
    Height = 42
    Cursor = crHandPoint
    Hint = 'Sair desta op'#231#227'o'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BBSAIRClick
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
