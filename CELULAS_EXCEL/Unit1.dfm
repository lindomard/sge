object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
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
    Left = 88
    Top = 40
    Width = 26
    Height = 13
    Caption = 'texto:'
  end
  object lblresultado: TLabel
    Left = 296
    Top = 24
    Width = 43
    Height = 13
    Caption = 'resultado'
  end
  object Label3: TLabel
    Left = 432
    Top = 56
    Width = 26
    Height = 13
    Caption = 'texto:'
  end
  object Label4: TLabel
    Left = 608
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '26'
  end
  object Button1: TButton
    Left = 144
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 480
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '1000'
  end
  object Memo1: TMemo
    Left = 480
    Top = 72
    Width = 105
    Height = 273
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button2: TButton
    Left = 536
    Top = 48
    Width = 48
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 5
    OnClick = Button3Click
  end
end
