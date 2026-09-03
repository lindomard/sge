object Frm_CliOutFil: TFrm_CliOutFil
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta Clientes em Outras Filiais'
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_local: TLabel
    Left = 0
    Top = 0
    Width = 536
    Height = 24
    Align = alTop
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl_encontrado: TLabel
    Left = 4
    Top = 135
    Width = 531
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Color = 65408
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label1: TLabel
    Left = 8
    Top = 226
    Width = 80
    Height = 13
    Caption = 'Raz'#227'o Social:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 53
    Top = 192
    Width = 36
    Height = 13
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 292
    Top = 191
    Width = 57
    Height = 13
    Caption = 'Inscri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 58
    Top = 210
    Width = 28
    Height = 13
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 325
    Top = 209
    Width = 23
    Height = 13
    Caption = 'RG:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 26
    Top = 244
    Width = 59
    Height = 13
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 47
    Top = 262
    Width = 38
    Height = 13
    Caption = 'Bairro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 321
    Top = 263
    Width = 29
    Height = 13
    Caption = 'CEP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 42
    Top = 280
    Width = 44
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 447
    Top = 281
    Width = 21
    Height = 13
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 9
    Top = 54
    Width = 162
    Height = 13
    Alignment = taCenter
    Caption = 'Digite o CNPJ para Consulta'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label12: TLabel
    Left = 253
    Top = 54
    Width = 15
    Height = 13
    Alignment = taCenter
    Caption = 'ou'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label13: TLabel
    Left = 337
    Top = 55
    Width = 154
    Height = 13
    Alignment = taCenter
    Caption = 'Digite o CPF para Consulta'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object RAZSOC: TEdit
    Left = 91
    Top = 223
    Width = 416
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object CNPJ: TEdit
    Left = 91
    Top = 187
    Width = 156
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object INSCRICAO: TEdit
    Left = 351
    Top = 187
    Width = 156
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object CPF: TEdit
    Left = 91
    Top = 205
    Width = 156
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object RG: TEdit
    Left = 351
    Top = 205
    Width = 156
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object CENDER: TEdit
    Left = 91
    Top = 241
    Width = 416
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object BAIRRO: TEdit
    Left = 91
    Top = 259
    Width = 223
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object CEP: TEdit
    Left = 351
    Top = 259
    Width = 156
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object CIDADE: TEdit
    Left = 91
    Top = 277
    Width = 223
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
  end
  object UF: TEdit
    Left = 473
    Top = 277
    Width = 34
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object bbCadastrar: TBitBtn
    Left = 15
    Top = 308
    Width = 162
    Height = 25
    Caption = 'Cadastrar'
    Enabled = False
    TabOrder = 13
    OnClick = bbCadastrarClick
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
  object CONS_CNPJ: TEdit
    Left = 9
    Top = 67
    Width = 172
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnEnter = CONS_CNPJEnter
    OnExit = CONS_CNPJExit
  end
  object CONS_CPF: TEdit
    Left = 337
    Top = 68
    Width = 172
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnEnter = CONS_CPFEnter
    OnExit = CONS_CPFExit
  end
  object bbPesq: TBitBtn
    Left = 140
    Top = 89
    Width = 246
    Height = 25
    Caption = 'Pesquisar Agora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bbPesqClick
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
  end
  object bbSair: TBitBtn
    Left = 359
    Top = 308
    Width = 162
    Height = 25
    Caption = '&Sair'
    TabOrder = 14
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
