object Frm_Aviso: TFrm_Aviso
  Left = 20
  Top = 110
  Width = 718
  Height = 375
  BorderIcons = []
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
  object lbl_obs: TLabel
    Left = 0
    Top = 0
    Width = 710
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Aten'#231#227'o!'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 45
    Width = 710
    Height = 255
    Align = alClient
    Alignment = taCenter
    Color = 12320767
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 710
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 242
      Top = 1
      Width = 221
      Height = 41
      Caption = '&Sair'
      TabOrder = 0
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 448
  end
end
