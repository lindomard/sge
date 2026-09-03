object Frm_MDFE_Justificativa: TFrm_MDFE_Justificativa
  Left = 192
  Top = 124
  BorderStyle = bsNone
  Caption = 'Frm_MDFE_Justificativa'
  ClientHeight = 109
  ClientWidth = 322
  Color = 16744576
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 8
    Width = 250
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Informe o Motivo (minimo 15 letras)'
  end
  object lbl_faltam: TLabel
    Left = 33
    Top = 54
    Width = 250
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Faltam 15 letras'
  end
  object edt_justificativa: TEdit
    Left = 33
    Top = 28
    Width = 250
    Height = 21
    AutoSize = False
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnChange = edt_justificativaChange
  end
  object bbOk: TBitBtn
    Left = 32
    Top = 72
    Width = 100
    Height = 25
    TabOrder = 1
    OnClick = bbOkClick
    Kind = bkOK
  end
  object bbCancelar: TBitBtn
    Left = 179
    Top = 68
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = bbCancelarClick
    Kind = bkCancel
  end
end
