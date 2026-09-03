object Frm_banco_Legenda: TFrm_banco_Legenda
  Left = 192
  Top = 124
  Width = 928
  Height = 508
  Caption = 'Legenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 912
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Legenda para Atualiza'#231#227'o dos Bancos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 75
    Width = 912
    Height = 395
    Align = alClient
    Caption = 'Planilha Excel:'
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 2
      Top = 15
      Width = 908
      Height = 378
      Align = alClient
      DefaultRowHeight = 17
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
