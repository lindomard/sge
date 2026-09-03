object Frm_SDet: TFrm_SDet
  Left = 192
  Top = 133
  Width = 544
  Height = 245
  Caption = 'Selecionando do Tipo de Sub-Detalhes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 170
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object RG_ARQ: TRadioGroup
      Left = 1
      Top = 1
      Width = 534
      Height = 130
      Align = alClient
      Caption = 'Sub-Detalhes Disponiveis:'
      TabOrder = 0
    end
    object RG_LOCAL: TRadioGroup
      Left = 1
      Top = 131
      Width = 534
      Height = 38
      Align = alBottom
      Caption = 'Local a Ser Tabulado'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        '&Cabecalho'
        'Corpo/&Detalhe'
        '&Rodap'#233)
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 170
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 64
      Top = 8
      Width = 150
      Height = 25
      Caption = 'Confirmar a Escolha'
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 264
      Top = 8
      Width = 150
      Height = 25
      Caption = 'Sair e Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
