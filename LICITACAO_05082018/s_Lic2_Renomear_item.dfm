object Frm_Lic2_Renomear_item: TFrm_Lic2_Renomear_item
  Left = 192
  Top = 124
  Width = 928
  Height = 323
  Caption = 'Renomear Numero do Item'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 912
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Renomear(reordenar numero do '#205'tem)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 121
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Numero do Primeiro '#205'tem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 105
    Width = 73
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Atual'
    Color = 14811120
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 339
    Top = 103
    Width = 73
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Novo'
    Color = 14811120
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 411
    Top = 103
    Width = 478
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Dados do '#205'tem'
    Color = 14811120
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 25
    Top = 141
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Numero do '#218'ltimo '#205'tem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 30
    Top = 65
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor a ser incrementada no item:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_numitem01_atual: TEdit
    Left = 265
    Top = 119
    Width = 72
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object edt_numitem01_novo: TEdit
    Left = 338
    Top = 119
    Width = 72
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object edt_dados_item01: TEdit
    Left = 412
    Top = 119
    Width = 477
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object edt_numitem_ultimo_atual: TEdit
    Left = 265
    Top = 139
    Width = 72
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object edt_numitem_ultimo_novo: TEdit
    Left = 338
    Top = 139
    Width = 72
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object edt_dados_item_ultimo: TEdit
    Left = 412
    Top = 139
    Width = 477
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object edt_valor_inc: TSpinEdit
    Left = 264
    Top = 64
    Width = 70
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
    OnChange = edt_valor_incChange
  end
  object SAIR: TBitBtn
    Left = 677
    Top = 198
    Width = 150
    Height = 40
    Cursor = crHandPoint
    Hint = 'Sair do Programa'
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = SAIRClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    Spacing = 2
  end
  object GRAVAR: TBitBtn
    Left = 118
    Top = 197
    Width = 150
    Height = 40
    Cursor = crHandPoint
    Hint = 'Grava o registro atual'
    Caption = '&Gravar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = GRAVARClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    Spacing = 2
  end
  object Query1: TQuery
    Left = 384
    Top = 200
  end
end
