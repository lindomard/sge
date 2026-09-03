object frm_RecuperarObsPro: Tfrm_RecuperarObsPro
  Left = 276
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Recuperar Observa'#231#245'es do Produto'
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
    Top = 0
    Width = 1036
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 80
      Top = 10
      Width = 137
      Height = 25
      Caption = 'Recuperar Agora'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object gb_progresso: TGroupBox
    Left = 0
    Top = 41
    Width = 1036
    Height = 62
    Align = alTop
    Caption = 'Progresso'
    TabOrder = 1
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 1032
      Height = 45
      Align = alClient
      Progress = 0
    end
  end
  object qr_ler: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 264
    Top = 32
  end
  object query_executar: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 336
    Top = 32
  end
end
