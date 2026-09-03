object Frm_MPed: TFrm_MPed
  Left = 192
  Top = 104
  Width = 544
  Height = 267
  Caption = 'Manipulacao nos dados Sobre Entrega'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 199
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 179
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 199
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 113
      Height = 13
      Caption = 'C'#243'd.Transportadora'
    end
    object Label2: TLabel
      Left = 146
      Top = 18
      Width = 141
      Height = 13
      Caption = 'Nome da Transportadora'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 97
      Height = 13
      Caption = 'Placa do Veiculo'
    end
    object Label4: TLabel
      Left = 144
      Top = 64
      Width = 17
      Height = 13
      Caption = 'UF'
    end
    object Label6: TLabel
      Left = 285
      Top = 108
      Width = 63
      Height = 13
      Caption = 'Peso Bruto'
    end
    object Label7: TLabel
      Left = 407
      Top = 108
      Width = 74
      Height = 13
      Caption = 'Peso Liquido'
    end
    object Label8: TLabel
      Left = 170
      Top = 108
      Width = 46
      Height = 13
      Caption = 'Especie'
    end
    object Label5: TLabel
      Left = 9
      Top = 108
      Width = 135
      Height = 13
      Caption = 'Quantidade de Volumes'
    end
    object Label9: TLabel
      Left = 285
      Top = 148
      Width = 85
      Height = 13
      Caption = 'Valor do Frete:'
    end
    object CODTRA: TEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object NOMTRA: TEdit
      Left = 142
      Top = 39
      Width = 261
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object PLACAV: TEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object UFPV: TEdit
      Left = 144
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object QTDVOL: TEdit
      Left = 9
      Top = 126
      Width = 121
      Height = 21
      TabOrder = 4
      OnKeyPress = QTDVOLKeyPress
    end
    object ESPECIE: TEdit
      Left = 156
      Top = 124
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object PESOB: TEdit
      Left = 282
      Top = 124
      Width = 121
      Height = 21
      TabOrder = 6
      OnExit = PESOBExit
      OnKeyPress = PESOBKeyPress
    end
    object PESOL: TEdit
      Left = 406
      Top = 122
      Width = 121
      Height = 21
      TabOrder = 7
      OnExit = PESOLExit
      OnKeyPress = PESOLKeyPress
    end
    object RGFRETEPC: TRadioGroup
      Left = 10
      Top = 151
      Width = 231
      Height = 38
      Caption = 'Frete Por Conta:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&Emitente'
        '&Destinatario')
      TabOrder = 8
    end
    object VALFRE: TEdit
      Left = 281
      Top = 163
      Width = 121
      Height = 21
      TabOrder = 9
      OnExit = VALFREExit
      OnKeyPress = VALFREKeyPress
    end
  end
end
