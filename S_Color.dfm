object Frm_Color: TFrm_Color
  Left = 160
  Top = 63
  Width = 544
  Height = 482
  ActiveControl = Panel3
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Personalizar cores do sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 536
    Height = 164
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 145
      Height = 25
      Caption = '&Primeiro Painel'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 8
      Top = 34
      Width = 145
      Height = 25
      Caption = '&Caixa Livre'
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 60
      Width = 145
      Height = 25
      Caption = '&'#218'ltimo Item'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 8
      Top = 85
      Width = 145
      Height = 25
      Caption = '&Restante'
      TabOrder = 3
    end
    object BitBtn8: TBitBtn
      Left = 9
      Top = 137
      Width = 145
      Height = 26
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 9
      Top = 110
      Width = 145
      Height = 26
      Caption = 'Restaurar &Padr'#227'o'
      TabOrder = 5
      OnClick = BitBtn9Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 322
    Width = 536
    Height = 126
    Align = alBottom
    Caption = 'Demonstra'#231#227'o'
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 274
    Width = 536
    Height = 48
    Align = alBottom
    Caption = 'Personalizando cores do'
    TabOrder = 3
    object BitBtn2: TBitBtn
      Left = 4
      Top = 17
      Width = 75
      Height = 25
      Caption = '&Texto'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 96
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Fundo'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 191
      Top = 15
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 110
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Mensagem:'
    end
    object MENS: TEdit
      Left = 78
      Top = 6
      Width = 417
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object RG_MTIPO: TRadioGroup
      Left = 7
      Top = 27
      Width = 490
      Height = 43
      Caption = 'Forma de Apresenta'#231#227'o da Mensagem:'
      Columns = 2
      Items.Strings = (
        '&Girando Horizontal'
        '&Piscante'
        '&Fixa'
        '&Nunca Apresentar')
      TabOrder = 1
    end
    object BitBtn10: TBitBtn
      Left = 288
      Top = 80
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 2
      OnClick = BitBtn10Click
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
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 320
    Top = 8
  end
  object ColorDialog1: TColorDialog
    Left = 360
    Top = 8
  end
end
