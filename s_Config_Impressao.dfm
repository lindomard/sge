object Frm_Config_Impressao: TFrm_Config_Impressao
  Left = 285
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Configura'#231#227'o de Impressora'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 104
    Width = 113
    Height = 13
    Caption = 'Selecione a Impressora:'
  end
  object cb_impressora: TComboBox
    Left = 321
    Top = 101
    Width = 320
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cb_impressora'
  end
end
