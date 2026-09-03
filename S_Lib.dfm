object Frm_Lib: TFrm_Lib
  Left = 149
  Top = 163
  Width = 544
  Height = 153
  Caption = 'Libera'#231#227'o de sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 46
    Width = 176
    Height = 13
    Caption = 'Informe a Senha de Libera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 48
    Top = 8
    Width = 122
    Height = 13
    Caption = 'C'#243'digo de Libera'#231#227'o:'
  end
  object SENHA: TEdit
    Left = 230
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bbok: TBitBtn
    Left = 104
    Top = 72
    Width = 105
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object CODLIB: TEdit
    Left = 230
    Top = 8
    Width = 121
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
  end
  object bbInternet: TBitBtn
    Left = 376
    Top = 6
    Width = 145
    Height = 63
    Caption = 'Buscar Via Internet'
    TabOrder = 4
    OnClick = bbInternetClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000333300
      0000377777FFFF7777770FFFF099990FFFF07FFFF777777FFFF7000000333300
      00007777773333777777307703333330770337FF7F333337FF7F300003333330
      0003377773333337777333993333333399333F7FFFF3333FF7FF000000333300
      0000777777F3337777770FFFF033330FFFF07FFFF7F3337FFFF7000000333300
      00007777773333777777307703333330770337FF7F333337FF7F300003333330
      0003377773FFFFF777733393300000033933337F3777777F37F3339990FFFF09
      99333373F7FFFF7FF73333399000000993333337777777777333333333077033
      33333333337FF7F3333333333300003333333333337777333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
end
