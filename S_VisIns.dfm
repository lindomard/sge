object Frm_VisIns: TFrm_VisIns
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Visualiza'#231#227'o da Instru'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 168
      Top = 0
      Width = 217
      Height = 41
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 536
    Height = 300
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
