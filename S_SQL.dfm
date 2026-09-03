object Frm_SQL: TFrm_SQL
  Left = 193
  Top = 108
  Width = 544
  Height = 375
  Caption = 'Frm_SQL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object STG_COND: TStringGrid
    Left = 24
    Top = 16
    Width = 465
    Height = 202
    ColCount = 7
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object STG_CPO: TStringGrid
    Left = 24
    Top = 224
    Width = 449
    Height = 81
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object STG_TAB: TStringGrid
    Left = 296
    Top = 320
    Width = 136
    Height = 16
    ColCount = 2
    DefaultRowHeight = 10
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
  end
end
