object Frm_Caixa_ConcManual_DataConc: TFrm_Caixa_ConcManual_DataConc
  Left = 399
  Top = 274
  Width = 600
  Height = 145
  Caption = 'Concilia'#231#227'o de caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 16
    Width = 102
    Height = 13
    Caption = 'Data Concilia'#231#227'o:'
  end
  object edt_datini: TDateEdit
    Left = 264
    Top = 14
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    OnExit = edt_datiniExit
  end
  object bbAtualizar: TBitBtn
    Left = 16
    Top = 50
    Width = 100
    Height = 50
    TabOrder = 1
    OnClick = bbAtualizarClick
    Kind = bkOK
  end
  object bbSair: TBitBtn
    Left = 404
    Top = 50
    Width = 100
    Height = 50
    TabOrder = 2
    OnClick = bbSairClick
    Kind = bkCancel
  end
end
