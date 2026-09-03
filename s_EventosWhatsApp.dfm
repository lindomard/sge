object Frm_EventosWhatsApp: TFrm_EventosWhatsApp
  Left = 251
  Top = 174
  Width = 900
  Height = 480
  Caption = 'Conectar ao Celular'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 197
    Width = 45
    Height = 13
    Caption = 'Encoding'
    Visible = False
  end
  object Label3: TLabel
    Left = 184
    Top = 197
    Width = 51
    Height = 13
    Caption = 'Quiet zone'
    Visible = False
  end
  object PaintBox1: TPaintBox
    Left = 320
    Top = 144
    Width = 249
    Height = 225
    OnPaint = PaintBox1Paint
  end
  object Label4: TLabel
    Left = 0
    Top = 0
    Width = 892
    Height = 72
    Align = alTop
    Alignment = taCenter
    Caption = 'Entre em Seu WhatsApp e Leia o QrCode Para Conectar ao Sistema'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -30
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object cmbEncoding: TComboBox
    Left = 8
    Top = 216
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Auto'
    Visible = False
    Items.Strings = (
      'Auto'
      'Numeric'
      'Alphanumeric'
      'ISO-8859-1'
      'UTF-8 without BOM'
      'UTF-8 with BOM')
  end
  object edtQuietZone: TEdit
    Left = 184
    Top = 216
    Width = 89
    Height = 21
    TabOrder = 1
    Text = '4'
    Visible = False
  end
  object bbSair: TBitBtn
    Left = 318
    Top = 400
    Width = 126
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
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
  object BitBtn1: TBitBtn
    Left = 446
    Top = 400
    Width = 126
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    TabStop = False
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 688
    Top = 152
  end
end
