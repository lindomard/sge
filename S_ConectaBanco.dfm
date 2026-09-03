object Frm_ConectaBanco: TFrm_ConectaBanco
  Left = 192
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Frm_ConectaBanco'
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
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 536
    Height = 216
    Align = alTop
    Lines.Strings = (
      'HOUVE UMA PERDA DE '
      'COMUNICA'#199#195'O COM O BANCO DE '
      'DADOS. AS CAUSAS MAIS '
      'PROVAVEIS S'#195'O: O SERVIDOR '
      'FOI DESLIGADO, NO CASO DE '
      'REDE SEM PODE TER HAVIDO '
      'PERDA DO SINAL, TAMBEM PODE '
      'SER O CABO DE REDE QUE FOI '
      'DESCONECTADO.')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 223
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
  end
end
