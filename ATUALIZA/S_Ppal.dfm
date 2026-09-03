object Frm_Ppal: TFrm_Ppal
  Left = 240
  Top = 262
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o de Vers'#227'o do SGE-Sistema de Gest'#227'o Empresarial'
  ClientHeight = 186
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 60
    Width = 605
    Height = 126
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = 'Atualizando vers'#227'o               SGE-Sistema Gest'#227'o Empresarial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -40
    Font.Name = 'Impact'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object Animate1: TAnimate
    Left = 0
    Top = 0
    Width = 605
    Height = 60
    Align = alTop
    CommonAVI = aviCopyFiles
    StopFrame = 34
    Visible = False
  end
end
