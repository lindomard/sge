object Frm_RelConProd: TFrm_RelConProd
  Left = 225
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Relat'#243'rio de Controle de Produ'#231#227'o'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 155
    Top = 27
    Width = 6
    Height = 13
    Caption = #224
  end
  object MDT1: TMaskEdit
    Left = 61
    Top = 23
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
    Left = 176
    Top = 23
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
  object bbImprimir: TBitBtn
    Left = 64
    Top = 313
    Width = 129
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 15
    OnClick = bbImprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 261
    Top = 314
    Width = 129
    Height = 25
    Caption = '&Sair'
    TabOrder = 16
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
  object CODENC: TEdit
    Left = 61
    Top = 62
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODENCExit
    OnKeyPress = CODENCKeyPress
  end
  object NOMENC: TEdit
    Left = 118
    Top = 62
    Width = 269
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    Text = 'Todos...'
  end
  object CODMAQ: TEdit
    Left = 61
    Top = 102
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CODMAQExit
  end
  object NOMMAQ: TEdit
    Left = 118
    Top = 102
    Width = 270
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Todos...'
  end
  object StaticText1: TStaticText
    Left = 60
    Top = 5
    Width = 194
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Per'#237'odo'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 61
    Top = 44
    Width = 327
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Encarregado'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object StaticText3: TStaticText
    Left = 61
    Top = 83
    Width = 327
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Maquina'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
  end
  object StaticText4: TStaticText
    Left = 61
    Top = 123
    Width = 327
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Motivo de Perda'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 9
  end
  object CODMPER: TEdit
    Left = 61
    Top = 141
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    OnExit = CODMPERExit
    OnKeyPress = CODMPERKeyPress
  end
  object MOTPERDA: TMemo
    Left = 120
    Top = 141
    Width = 268
    Height = 74
    Enabled = False
    Lines.Strings = (
      'Todos...')
    TabOrder = 11
  end
  object StaticText5: TStaticText
    Left = 62
    Top = 217
    Width = 327
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Motivo de Parada'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
  end
  object CODMPAR: TEdit
    Left = 63
    Top = 234
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 13
    OnExit = CODMPARExit
    OnKeyPress = CODMPARKeyPress
  end
  object MOTPARADA: TMemo
    Left = 121
    Top = 236
    Width = 268
    Height = 74
    Enabled = False
    Lines.Strings = (
      'Todos...')
    TabOrder = 14
  end
end
