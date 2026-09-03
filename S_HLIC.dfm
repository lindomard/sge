object Frm_HLic: TFrm_HLic
  Left = 68
  Top = 76
  Width = 567
  Height = 440
  Caption = 'Gera'#231#227'o de Licita'#231#227'o em HTML'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 362
    Align = alClient
    TabOrder = 0
    object FONFAN: TLabel
      Left = 6
      Top = 3
      Width = 139
      Height = 42
      Caption = 'Fantasia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object FONRAZ: TLabel
      Left = 6
      Top = 46
      Width = 181
      Height = 88
      Caption = 'Raz'#227'o Social'#13#10'Endere'#231'o, Bairro'#13#10'Telefone, Televendas'#13#10'Adicional'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 3
      Top = 41
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object Bevel2: TBevel
      Left = 3
      Top = 135
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONCAB: TLabel
      Left = 6
      Top = 140
      Width = 135
      Height = 16
      Caption = 'Cabe'#231'alho da Licita'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 3
      Top = 167
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONCOR: TLabel
      Left = 6
      Top = 172
      Width = 108
      Height = 16
      Caption = 'Corpo da Licita'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 3
      Top = 199
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONROD: TLabel
      Left = 6
      Top = 236
      Width = 118
      Height = 16
      Caption = 'Rodap'#233' da Licita'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 3
      Top = 263
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONDEC: TLabel
      Left = 6
      Top = 268
      Width = 126
      Height = 16
      Caption = 'Declara'#231#245'es (T'#237'tulo)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel6: TBevel
      Left = 3
      Top = 295
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONDE2: TLabel
      Left = 6
      Top = 300
      Width = 118
      Height = 16
      Caption = 'Declara'#231#245'es (Corpo)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SUFan: TShape
      Left = 350
      Top = 14
      Width = 23
      Height = 21
    end
    object SUCor: TShape
      Left = 350
      Top = 174
      Width = 23
      Height = 21
    end
    object SU2Cor: TShape
      Left = 447
      Top = 174
      Width = 23
      Height = 21
    end
    object Label1: TLabel
      Left = 476
      Top = 177
      Width = 31
      Height = 13
      Caption = 'Borda:'
    end
    object Bevel7: TBevel
      Left = 3
      Top = 327
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 6
      Top = 338
      Width = 146
      Height = 13
      Caption = 'Nome do arquivo a ser gerado:'
    end
    object Bevel8: TBevel
      Left = 3
      Top = 231
      Width = 553
      Height = 4
      Shape = bsTopLine
    end
    object FONCO2: TLabel
      Left = 6
      Top = 204
      Width = 104
      Height = 16
      Caption = 'T'#237'tulos do Corpo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBnFFan: TBitBtn
      Left = 214
      Top = 12
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BBnFFanClick
    end
    object BBnFRaz: TBitBtn
      Left = 214
      Top = 46
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BBnFRazClick
    end
    object BBnFCab: TBitBtn
      Left = 214
      Top = 140
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BBnFCabClick
    end
    object BBnFCor: TBitBtn
      Left = 214
      Top = 172
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BBnFCorClick
    end
    object BBnFRod: TBitBtn
      Left = 214
      Top = 236
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BBnFRodClick
    end
    object BBnFDec: TBitBtn
      Left = 214
      Top = 268
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BBnFDecClick
    end
    object BBnFDe2: TBitBtn
      Left = 214
      Top = 300
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BBnFDe2Click
    end
    object BBnUFan: TBitBtn
      Left = 283
      Top = 12
      Width = 65
      Height = 25
      Caption = 'Fundo...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BBnUFanClick
    end
    object BBnUCor: TBitBtn
      Left = 283
      Top = 172
      Width = 65
      Height = 25
      Caption = 'Fundo...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BBnUCorClick
    end
    object BBnU2Cor: TBitBtn
      Left = 376
      Top = 172
      Width = 69
      Height = 25
      Caption = 'Fundo 2...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BBnU2CorClick
    end
    object Borda: TSpinEdit
      Left = 510
      Top = 173
      Width = 39
      Height = 22
      MaxValue = 10
      MinValue = 0
      TabOrder = 7
      Value = 1
    end
    object NARQ: TEdit
      Left = 156
      Top = 334
      Width = 253
      Height = 21
      CharCase = ecLowerCase
      TabOrder = 12
      Text = 'c:\sge\lic001.htm'
    end
    object BBnArquivo: TBitBtn
      Left = 414
      Top = 332
      Width = 75
      Height = 25
      Caption = 'Localizar...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BBnArquivoClick
    end
    object BBnFCo2: TBitBtn
      Left = 214
      Top = 204
      Width = 65
      Height = 25
      Caption = 'Fonte...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BBnFCo2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 362
    Width = 551
    Height = 40
    Align = alBottom
    TabOrder = 1
    object BBnGerar: TBitBtn
      Left = 163
      Top = 8
      Width = 155
      Height = 25
      Caption = '&Gerar p'#225'gina da web'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BBnGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BBnFechar: TBitBtn
      Left = 321
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
  end
  object FD1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 378
    Top = 52
  end
  object CD1: TColorDialog
    Left = 406
    Top = 52
  end
  object OD1: TOpenDialog
    Title = 'Abrir...'
    Left = 434
    Top = 52
  end
end
