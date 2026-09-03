object Frm_NFE_Download_Entra: TFrm_NFE_Download_Entra
  Left = 192
  Top = 124
  Width = 928
  Height = 356
  Caption = 'DownLoad do Arquivo XML de Compra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 910
      Height = 57
      Align = alTop
      Alignment = taCenter
      Caption = 'Download de Nota Fiscal de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -50
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 65
      Top = 11
      Width = 104
      Height = 13
      Caption = 'Chave de Acesso:'
    end
    object edt_chaveAcesso: TEdit
      Left = 179
      Top = 8
      Width = 666
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 114
    Width = 912
    Height = 163
    Align = alClient
    Caption = 'Aguarde enquanto '#233' feito o Download do Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 0
    Top = 277
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 3
    object bbCancelar: TBitBtn
      Left = 316
      Top = 3
      Width = 276
      Height = 34
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = bbCancelarClick
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
  end
  object Timer_aguardar: TTimer
    Enabled = False
    Left = 784
    Top = 122
  end
end
