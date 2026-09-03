object frm_imprimir_docxml: Tfrm_imprimir_docxml
  Left = 345
  Top = 203
  Width = 928
  Height = 480
  Caption = 'frm_imprimir_docxml'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo_relatorio: TMemo
    Left = 56
    Top = 72
    Width = 697
    Height = 89
    Lines.Strings = (
      'Memo_relatorio')
    TabOrder = 0
  end
  object mem_grade: TRxMemoryData
    FieldDefs = <>
    Left = 84
    Top = 205
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
end
