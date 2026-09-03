object Frm_DtReaj: TFrm_DtReaj
  Left = 262
  Top = 185
  Width = 273
  Height = 170
  BorderIcons = [biSystemMenu]
  Caption = 'Data do Reajuste'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 201
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Pre'#231'o anterior para mercadoria que foram reajustadas a partir de' +
      ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object MDATAREAJ: TMaskEdit
    Left = 62
    Top = 56
    Width = 89
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDATAREAJExit
  end
  object BitBtn1: TBitBtn
    Left = 70
    Top = 88
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
    Layout = blGlyphRight
  end
end
