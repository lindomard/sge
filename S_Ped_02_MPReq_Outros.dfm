object Frm_Ped_02_MPReq_Outros: TFrm_Ped_02_MPReq_Outros
  Left = 174
  Top = 179
  Width = 206
  Height = 123
  Caption = 'Outras Informa'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblmp_qtddev: TStaticText
    Left = -1
    Top = 0
    Width = 50
    Height = 30
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Qtd. Devol'
    Color = 12058551
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object edtmp_qtddev: TCurrencyEdit
    Left = -1
    Top = 27
    Width = 50
    Height = 19
    AutoSize = False
    CheckOnExit = True
    Ctl3D = False
    DisplayFormat = ',0.00;-,0.00'
    ParentCtl3D = False
    TabOrder = 1
    OnExit = edtmp_qtddevExit
  end
  object StaticText90: TStaticText
    Left = 48
    Top = 0
    Width = 50
    Height = 30
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Sobra'
    Color = 12058551
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object edtmp_sobra: TCurrencyEdit
    Left = 48
    Top = 27
    Width = 50
    Height = 19
    AutoSize = False
    CheckOnExit = True
    Ctl3D = False
    DisplayFormat = ',0.00;-,0.00'
    ParentCtl3D = False
    TabOrder = 3
    OnExit = edtmp_sobraExit
  end
  object StaticText98: TStaticText
    Left = 97
    Top = 0
    Width = 50
    Height = 30
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Quebra'
    Color = 12058551
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object edtmp_quebra: TCurrencyEdit
    Left = 97
    Top = 27
    Width = 50
    Height = 19
    AutoSize = False
    CheckOnExit = True
    Ctl3D = False
    DisplayFormat = ',0.00;-,0.00'
    ParentCtl3D = False
    TabOrder = 5
  end
  object StaticText101: TStaticText
    Left = 146
    Top = 0
    Width = 50
    Height = 30
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Outros Retornos'
    Color = 12058551
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object edtmp_outret: TCurrencyEdit
    Left = 146
    Top = 27
    Width = 50
    Height = 19
    AutoSize = False
    CheckOnExit = True
    Ctl3D = False
    DisplayFormat = ',0.00;-,0.00'
    ParentCtl3D = False
    TabOrder = 7
    OnExit = edtmp_outretExit
  end
  object bbFecharJanela: TBitBtn
    Left = 34
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Fechar Janela'
    TabOrder = 8
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
end
