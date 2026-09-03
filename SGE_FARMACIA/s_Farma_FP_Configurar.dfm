object Frm_Farma_FP_Configurar: TFrm_Farma_FP_Configurar
  Left = 416
  Top = 284
  Width = 404
  Height = 248
  Caption = 'Configurar Usuarios'
  Color = 14540287
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 98
    Top = 40
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 105
    Top = 67
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label3: TLabel
    Left = 89
    Top = 98
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ambiente:'
  end
  object Label4: TLabel
    Left = 37
    Top = 125
    Width = 109
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o p/Conta'#231#227'o:'
  end
  object Label5: TLabel
    Left = 0
    Top = 0
    Width = 388
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Configura'#231#227'o da Farmacia Popular'
  end
  object edt_usuario: TEdit
    Left = 146
    Top = 40
    Width = 145
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object edt_senha: TEdit
    Left = 146
    Top = 67
    Width = 145
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object cb_ambiente: TComboBox
    Left = 146
    Top = 96
    Width = 145
    Height = 21
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 2
    Text = 'Homologa'#231#227'o'
    Items.Strings = (
      'Homologa'#231#227'o'
      'Produ'#231#227'o')
  end
  object CB_COTACAO: TComboBox
    Left = 146
    Top = 123
    Width = 145
    Height = 21
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 3
    Text = 'Pre'#231'o Normal'
    Items.Strings = (
      'Pre'#231'o Normal'
      'Pre'#231'o Promo'#231#227'o')
  end
  object bbConfirmar: TBitBtn
    Left = 6
    Top = 170
    Width = 169
    Height = 34
    Caption = 'Confirmar'
    TabOrder = 4
    OnClick = bbConfirmarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
      03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
      FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
      FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
      3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
      33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
      33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
      33333337FFFFFFF7F33333300000000033333337777777773333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 184
    Top = 170
    Width = 169
    Height = 34
    Caption = '&Sair'
    TabOrder = 5
    OnClick = bbSairClick
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
