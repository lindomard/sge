object Frm_CPB: TFrm_CPB
  Left = 188
  Top = 153
  Width = 544
  Height = 305
  Caption = 'Baixa de Duplicatas a Pagar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 35
      Top = 9
      Width = 130
      Height = 25
      Caption = '&Baixar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    end
    object BitBtn2: TBitBtn
      Left = 181
      Top = 9
      Width = 130
      Height = 25
      Caption = '&Cancelar Baixa'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn2Click
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
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 326
      Top = 10
      Width = 130
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 77
    Width = 536
    Height = 160
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 20
      Top = 18
      Width = 90
      Height = 13
      Caption = 'Valor.....................:'
    end
    object Label13: TLabel
      Left = 20
      Top = 43
      Width = 89
      Height = 13
      Caption = 'Cód.Banco...........:'
    end
    object Label7: TLabel
      Left = 22
      Top = 66
      Width = 84
      Height = 13
      Caption = 'Status.................:'
    end
    object Label8: TLabel
      Left = 23
      Top = 89
      Width = 85
      Height = 13
      Caption = 'Valor Desconto...:'
    end
    object Label9: TLabel
      Left = 235
      Top = 87
      Width = 87
      Height = 13
      Caption = 'Data Desconto....:'
    end
    object Label6: TLabel
      Left = 233
      Top = 18
      Width = 88
      Height = 13
      Caption = 'Data Vencimento.:'
    end
    object VALOR: TEdit
      Left = 113
      Top = 14
      Width = 66
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object MCODBCO: TEdit
      Left = 113
      Top = 37
      Width = 66
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object MSTATUS: TEdit
      Left = 113
      Top = 59
      Width = 66
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object MVALDES: TEdit
      Left = 113
      Top = 82
      Width = 66
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object MDATAV: TMaskEdit
      Left = 326
      Top = 12
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object MDATAD: TMaskEdit
      Left = 327
      Top = 84
      Width = 66
      Height = 21
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object Panel4: TPanel
      Left = 1
      Top = 112
      Width = 534
      Height = 47
      Align = alBottom
      TabOrder = 6
      object Label10: TLabel
        Left = 16
        Top = 11
        Width = 101
        Height = 13
        Caption = 'Data de Pagamento.:'
      end
      object Label11: TLabel
        Left = 234
        Top = 12
        Width = 34
        Height = 13
        Caption = 'Juros..:'
      end
      object Label12: TLabel
        Left = 372
        Top = 11
        Width = 52
        Height = 13
        Caption = 'Desconto.:'
      end
      object MDATAP: TMaskEdit
        Left = 128
        Top = 8
        Width = 66
        Height = 21
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDATAPExit
      end
      object MJUROSP: TEdit
        Left = 278
        Top = 6
        Width = 80
        Height = 21
        TabOrder = 1
      end
      object MDESCC: TEdit
        Left = 428
        Top = 7
        Width = 80
        Height = 21
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 77
    Align = alTop
    TabOrder = 2
    object Label4: TLabel
      Left = 20
      Top = 47
      Width = 110
      Height = 13
      Caption = 'Data de Emissão.........:'
    end
    object Label3: TLabel
      Left = 20
      Top = 25
      Width = 109
      Height = 13
      Caption = 'Cód.Fornecedor..........:'
    end
    object Label1: TLabel
      Left = 20
      Top = 5
      Width = 112
      Height = 13
      Caption = 'Número da Duplicata...:'
    end
    object Label2: TLabel
      Left = 230
      Top = 4
      Width = 84
      Height = 13
      Caption = 'Desdobramento..:'
    end
    object NOMFOR: TLabel
      Left = 220
      Top = 30
      Width = 3
      Height = 13
    end
    object NUMDUP: TEdit
      Left = 134
      Top = 2
      Width = 66
      Height = 21
      TabOrder = 0
      OnExit = NUMDUPExit
      OnKeyPress = NUMDUPKeyPress
    end
    object CODFOR: TEdit
      Left = 134
      Top = 24
      Width = 66
      Height = 21
      TabOrder = 1
      OnExit = CODFORExit
      OnKeyPress = NUMDUPKeyPress
    end
    object DESD: TEdit
      Left = 320
      Top = 2
      Width = 49
      Height = 21
      TabOrder = 2
      OnExit = DESDExit
    end
    object DTEMIS: TMaskEdit
      Left = 134
      Top = 46
      Width = 66
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
      OnExit = DTEMISExit
    end
  end
end
