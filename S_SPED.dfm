object Frm_SPED: TFrm_SPED
  Left = 192
  Top = 114
  Width = 649
  Height = 480
  Caption = 'EFD - Escritura'#231#227'o Fiscal Digital (SPED)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 641
    Height = 153
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 27
      Width = 48
      Height = 16
      Caption = 'Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 200
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 328
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object rg_tiporemessa: TRadioGroup
      Left = 500
      Top = 6
      Width = 141
      Height = 105
      Caption = 'Remessa'
      ItemIndex = 0
      Items.Strings = (
        'Remessa de Envio'
        'Remessa de Corre'#231#227'o')
      TabOrder = 2
    end
    object Button1: TButton
      Left = 288
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 3
    end
    object cb_perfil: TComboBox
      Left = 500
      Top = 112
      Width = 141
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'A - Perfil A'
      Items.Strings = (
        'A - Perfil A'
        'B - Perfil B'
        'C - Perfil C')
    end
    object cb_industrial: TCheckBox
      Left = 500
      Top = 134
      Width = 97
      Height = 17
      Caption = 'Industrial'
      TabOrder = 5
    end
  end
end
