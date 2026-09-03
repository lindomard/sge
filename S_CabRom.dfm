object Frm_CabRom: TFrm_CabRom
  Left = 192
  Top = 114
  Width = 544
  Height = 132
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados do Cabecalho'
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
    Top = 11
    Width = 66
    Height = 13
    Caption = 'Raz'#227'o Social:'
  end
  object Label2: TLabel
    Left = 10
    Top = 35
    Width = 43
    Height = 13
    Caption = 'Fantasia:'
  end
  object razsoc: TEdit
    Left = 79
    Top = 9
    Width = 346
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object nomfan: TEdit
    Left = 79
    Top = 31
    Width = 346
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 209
    Top = 64
    Width = 113
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
end
