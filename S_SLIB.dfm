object Frm_SLib: TFrm_SLib
  Left = 230
  Top = 103
  ActiveControl = SENLIB
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Senha de Libera'#231#227'o do Sistema'
  ClientHeight = 115
  ClientWidth = 363
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
    Left = 17
    Top = 18
    Width = 101
    Height = 13
    Caption = 'C'#243'digo de Libera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 17
    Top = 44
    Width = 99
    Height = 13
    Caption = 'Senha de Libera'#231#227'o:'
  end
  object CODLIB: TEdit
    Left = 121
    Top = 14
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object SENLIB: TEdit
    Left = 121
    Top = 40
    Width = 127
    Height = 21
    TabOrder = 1
  end
  object BBnOK: TBitBtn
    Left = 106
    Top = 76
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object BBnCancela: TBitBtn
    Left = 182
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 3
    Kind = bkCancel
  end
end
