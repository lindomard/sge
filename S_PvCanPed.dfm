object Frm_PvCanPed: TFrm_PvCanPed
  Left = 122
  Top = 101
  Width = 504
  Height = 165
  Caption = 'Cancelamento do '#250'ltimo cupom Emitido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 149
    Height = 13
    Caption = 'N'#250'mero do Cupom Fiscal.:'
  end
  object Label2: TLabel
    Left = 343
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 10
    Top = 43
    Width = 146
    Height = 13
    Caption = 'Chave do Pedido...........:'
  end
  object Label4: TLabel
    Left = 328
    Top = 42
    Width = 46
    Height = 13
    Caption = 'Valor...:'
  end
  object Label5: TLabel
    Left = 13
    Top = 65
    Width = 143
    Height = 13
    Caption = 'Associado....................:'
  end
  object NUMECF: TEdit
    Left = 162
    Top = 11
    Width = 88
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 0
  end
  object DATA: TEdit
    Left = 380
    Top = 11
    Width = 98
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 1
  end
  object CHAVE: TEdit
    Left = 162
    Top = 36
    Width = 88
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 2
  end
  object VALOR: TEdit
    Left = 380
    Top = 34
    Width = 98
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
  end
  object NOMASS: TEdit
    Left = 162
    Top = 60
    Width = 318
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 9
    Top = 92
    Width = 185
    Height = 45
    Caption = '&Confirmar o Cancelamento'
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 297
    Top = 93
    Width = 185
    Height = 45
    Caption = 'Cancelar &Sair'
    TabOrder = 6
    OnClick = BitBtn2Click
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
end
