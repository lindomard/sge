object Frm_Mensagem_Barrar: TFrm_Mensagem_Barrar
  Left = 192
  Top = 110
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Advertencia'
  ClientHeight = 312
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_mensagem: TLabel
    Left = 100
    Top = 20
    Width = 399
    Height = 229
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'lbl_mensagem'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    WordWrap = True
  end
  object lbl_atencao: TLabel
    Left = 8
    Top = 13
    Width = 77
    Height = 23
    Caption = 'Atencao!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_sair: TLabel
    Left = 224
    Top = 272
    Width = 79
    Height = 13
    Caption = '[F3]-Para Sair'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 352
    Top = 56
  end
end
