object Frm_EmiChq: TFrm_EmiChq
  Left = 192
  Top = 107
  Width = 520
  Height = 418
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Emiss'#227'o de Cheques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 14
    Width = 85
    Height = 13
    Caption = 'C'#243'digo do Banco:'
  end
  object Label2: TLabel
    Left = 14
    Top = 38
    Width = 50
    Height = 13
    Caption = 'Nominal a:'
  end
  object Label3: TLabel
    Left = 14
    Top = 62
    Width = 58
    Height = 13
    Caption = 'N'#186'. Cheque:'
  end
  object Label4: TLabel
    Left = 182
    Top = 62
    Width = 27
    Height = 13
    Caption = 'S'#233'rie:'
  end
  object Label5: TLabel
    Left = 264
    Top = 62
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label6: TLabel
    Left = 372
    Top = 62
    Width = 45
    Height = 13
    Caption = 'Dep'#243'sito:'
  end
  object Label7: TLabel
    Left = 14
    Top = 86
    Width = 67
    Height = 13
    Caption = 'Utilizado para:'
  end
  object CBxVisado: TCheckBox
    Left = 14
    Top = 326
    Width = 97
    Height = 17
    Caption = 'Visado'
    TabOrder = 16
  end
  object CBxCruzado: TCheckBox
    Left = 209
    Top = 326
    Width = 90
    Height = 17
    Caption = 'Cruzado'
    TabOrder = 17
  end
  object CODBCO: TEdit
    Left = 102
    Top = 10
    Width = 45
    Height = 21
    TabOrder = 0
    OnExit = CODBCOExit
    OnKeyPress = CODBCOKeyPress
  end
  object NOMINAL: TEdit
    Left = 102
    Top = 34
    Width = 393
    Height = 21
    TabOrder = 1
  end
  object NUMCHQ: TEdit
    Left = 102
    Top = 58
    Width = 69
    Height = 21
    TabOrder = 2
    OnKeyPress = NUMCHQKeyPress
  end
  object SERCHQ: TEdit
    Left = 212
    Top = 58
    Width = 41
    Height = 21
    TabOrder = 3
  end
  object VALCHQ: TEdit
    Left = 293
    Top = 58
    Width = 69
    Height = 21
    TabOrder = 4
    OnExit = VALCHQExit
    OnKeyPress = VALCHQKeyPress
  end
  object UTIL1: TEdit
    Left = 102
    Top = 82
    Width = 393
    Height = 21
    TabOrder = 6
  end
  object UTIL2: TEdit
    Left = 102
    Top = 106
    Width = 393
    Height = 21
    TabOrder = 7
  end
  object UTIL3: TEdit
    Left = 102
    Top = 130
    Width = 393
    Height = 21
    TabOrder = 8
  end
  object UTIL4: TEdit
    Left = 102
    Top = 154
    Width = 393
    Height = 21
    TabOrder = 9
  end
  object UTIL5: TEdit
    Left = 102
    Top = 178
    Width = 393
    Height = 21
    TabOrder = 10
  end
  object UTIL6: TEdit
    Left = 102
    Top = 202
    Width = 393
    Height = 21
    TabOrder = 11
  end
  object UTIL7: TEdit
    Left = 102
    Top = 226
    Width = 393
    Height = 21
    TabOrder = 12
  end
  object UTIL8: TEdit
    Left = 102
    Top = 250
    Width = 393
    Height = 21
    TabOrder = 13
  end
  object UTIL9: TEdit
    Left = 102
    Top = 274
    Width = 393
    Height = 21
    TabOrder = 14
  end
  object MDTDEP: TMaskEdit
    Left = 420
    Top = 58
    Width = 75
    Height = 21
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object ASSINADO: TEdit
    Left = 102
    Top = 298
    Width = 393
    Height = 21
    TabOrder = 15
  end
  object BBnImpChq: TBitBtn
    Left = 87
    Top = 356
    Width = 109
    Height = 25
    Caption = '&Imprimir Cheque'
    TabOrder = 19
    OnClick = BBnImpChqClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
      808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
      000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
      08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
      080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
      0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
      08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
      008888888777777777F888888888888888888888888888888888}
    NumGlyphs = 2
  end
  object BBnImpCop: TBitBtn
    Left = 201
    Top = 356
    Width = 109
    Height = 25
    Caption = 'Imprimir &C'#243'pia'
    TabOrder = 20
    OnClick = BBnImpCopClick
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
  object BBnFechar: TBitBtn
    Left = 315
    Top = 356
    Width = 109
    Height = 25
    Caption = '&Fechar'
    TabOrder = 21
    OnClick = BBnFecharClick
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
  object NOMBCO: TEdit
    Left = 149
    Top = 9
    Width = 345
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 22
  end
  object CB_COMP_AST: TCheckBox
    Left = 325
    Top = 325
    Width = 172
    Height = 17
    Caption = 'Completar c/ * extenso/nominal'
    Checked = True
    State = cbChecked
    TabOrder = 18
  end
end
