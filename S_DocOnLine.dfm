object Frm_DocOnLine: TFrm_DocOnLine
  Left = 123
  Top = 85
  Width = 857
  Height = 565
  Caption = 'Documentos On-Line'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_valido: TLabel
    Left = 0
    Top = 0
    Width = 849
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'Valido somente para a Empresa 1'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -50
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object CB_ONLINE_LSEP: TCheckBox
    Left = 8
    Top = 147
    Width = 186
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Lista de Separa'#231#227'o de Mercadorias'
    TabOrder = 0
    OnClick = CB_ONLINE_LSEPClick
  end
  object CB_ONLINE_ORC: TCheckBox
    Left = 43
    Top = 170
    Width = 151
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Or'#231'amentos de Mercadorias'
    TabOrder = 4
    OnClick = CB_ONLINE_ORCClick
  end
  object BB_ONLINE_LSEP: TBitBtn
    Left = 208
    Top = 144
    Width = 60
    Height = 20
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 3
    OnClick = BB_ONLINE_LSEPClick
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
  object BB_ONLINE_ORC: TBitBtn
    Left = 208
    Top = 168
    Width = 60
    Height = 20
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 7
    OnClick = BB_ONLINE_ORCClick
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
  object CB_ONLINE_VAL: TCheckBox
    Left = 78
    Top = 196
    Width = 117
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Vale de Mercadorias'
    TabOrder = 8
    OnClick = CB_ONLINE_VALClick
  end
  object BB_ONLINE_VAL: TBitBtn
    Left = 208
    Top = 194
    Width = 60
    Height = 20
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 10
    OnClick = BB_ONLINE_VALClick
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
  object CB_ONLINE_NF: TCheckBox
    Left = 112
    Top = 224
    Width = 83
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Notas Fiscais'
    TabOrder = 11
    OnClick = CB_ONLINE_NFClick
  end
  object BB_ONLINE_NF: TBitBtn
    Left = 208
    Top = 222
    Width = 60
    Height = 20
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 13
    OnClick = BB_ONLINE_NFClick
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
  object bbSair: TBitBtn
    Left = 278
    Top = 434
    Width = 185
    Height = 25
    Caption = '&Sair'
    TabOrder = 17
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
  object CB_ONLINE_LSEP_CONF: TCheckBox
    Left = 273
    Top = 145
    Width = 128
    Height = 17
    Caption = 'Solicitar confirma'#231#227'o'
    TabOrder = 1
    OnClick = CB_ONLINE_LSEPClick
  end
  object CB_ONLINE_ORC_CONF: TCheckBox
    Left = 274
    Top = 166
    Width = 128
    Height = 17
    Caption = 'Solicitar confirma'#231#227'o'
    TabOrder = 5
    OnClick = CB_ONLINE_ORCClick
  end
  object CB_ONLINE_VAL_CONF: TCheckBox
    Left = 274
    Top = 191
    Width = 128
    Height = 17
    Caption = 'Solicitar confirma'#231#227'o'
    TabOrder = 9
    OnClick = CB_ONLINE_VALClick
  end
  object CB_ONLINE_NF_CONF: TCheckBox
    Left = 272
    Top = 220
    Width = 128
    Height = 17
    Caption = 'Solicitar confirma'#231#227'o'
    TabOrder = 12
    OnClick = CB_ONLINE_NFClick
  end
  object CB_ONLINE_LSEP_SELIMP: TCheckBox
    Left = 409
    Top = 145
    Width = 136
    Height = 17
    Caption = 'Selecionar Impressoras'
    TabOrder = 2
    OnClick = CB_ONLINE_LSEPClick
  end
  object CB_ONLINE_ORC_SELIMP: TCheckBox
    Left = 409
    Top = 168
    Width = 136
    Height = 17
    Caption = 'Selecionar Impressoras'
    TabOrder = 6
    OnClick = CB_ONLINE_LSEPClick
  end
  object gb_nota: TGroupBox
    Left = 16
    Top = 307
    Width = 817
    Height = 113
    Caption = 'Nota Explicativa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    Visible = False
    object Memo_notas: TMemo
      Left = 2
      Top = 15
      Width = 813
      Height = 96
      Align = alClient
      Color = 14806015
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Para a Emissao de Boleto Bancario online:'
        
          '1) - Pedido tem que ser feito com um codigo de banco que tenha a' +
          ' configura'#231#227'o de boletos homologados pelo banco'
        
          '2) - a forma de pagamento em que ser uma que possui vinculo com ' +
          'cobran'#231'a bancaria')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object Panel_boleto: TPanel
    Left = 0
    Top = 272
    Width = 832
    Height = 27
    TabOrder = 15
    OnEnter = Panel_boletoEnter
    OnExit = Panel_boletoExit
    object Label2: TLabel
      Left = 277
      Top = 11
      Width = 85
      Height = 13
      Caption = 'Duplicata Padrao:'
    end
    object Label3: TLabel
      Left = 609
      Top = 7
      Width = 46
      Height = 13
      Caption = 'Qtde.Vias'
    end
    object CB_ONLINE_BOL: TCheckBox
      Left = 99
      Top = 7
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Boletas Bancaria'
      TabOrder = 0
      OnClick = CB_ONLINE_BOLClick
    end
    object BB_ONLINE_BOL: TBitBtn
      Left = 209
      Top = 4
      Width = 60
      Height = 20
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = BB_ONLINE_BOLClick
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
    object CB_ONLINE_BOL_PADRAO: TComboBox
      Left = 361
      Top = 3
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Personalisada'
      OnClick = CB_ONLINE_BOLClick
      Items.Strings = (
        'Personalisada'
        'Laser Pequena'
        'Laser Grande')
    end
    object CB_ONLINE_BOL_VISUALIZAR: TCheckBox
      Left = 516
      Top = 7
      Width = 93
      Height = 17
      Caption = 'N'#227'o Visualizar'
      TabOrder = 3
      OnClick = CB_ONLINE_BOLClick
    end
    object edt_online_bol_qtdvias: TSpinEdit
      Left = 659
      Top = 2
      Width = 39
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 1
      OnClick = CB_ONLINE_BOLClick
    end
  end
  object Panel_duplicata: TPanel
    Left = 0
    Top = 244
    Width = 832
    Height = 27
    TabOrder = 14
    OnEnter = Panel_duplicataEnter
    OnExit = Panel_duplicataExit
    object Label1: TLabel
      Left = 276
      Top = 12
      Width = 85
      Height = 13
      Caption = 'Duplicata Padrao:'
    end
    object Label10: TLabel
      Left = 608
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Qtde.Vias'
    end
    object CB_ONLINE_DUP: TCheckBox
      Left = 123
      Top = 8
      Width = 72
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Duplicatas'
      TabOrder = 0
      OnClick = CB_ONLINE_DUPClick
    end
    object BB_ONLINE_DUP: TBitBtn
      Left = 208
      Top = 5
      Width = 60
      Height = 20
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = BB_ONLINE_DUPClick
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
    object cb_online_dup_padrao: TComboBox
      Left = 360
      Top = 4
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Personalisada'
      OnClick = CB_ONLINE_DUPClick
      Items.Strings = (
        'Personalisada'
        'Laser')
    end
    object cb_online_dup_visualizar: TCheckBox
      Left = 515
      Top = 8
      Width = 92
      Height = 17
      Caption = 'N'#227'o Visualizar'
      TabOrder = 3
      OnClick = CB_ONLINE_DUPClick
    end
    object edt_ONLINE_DUP_QTDVIAS: TSpinEdit
      Left = 658
      Top = 3
      Width = 39
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 1
      OnClick = CB_ONLINE_DUPClick
    end
    object CB_ONLINE_DUP_CART: TCheckBox
      Left = 715
      Top = 8
      Width = 97
      Height = 17
      Caption = 'So Carteira'
      TabOrder = 5
      OnClick = CB_ONLINE_DUPClick
    end
  end
  object Panel1: TPanel
    Left = 3
    Top = 104
    Width = 836
    Height = 26
    TabOrder = 18
    object Label4: TLabel
      Left = 608
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Qtde.Vias'
    end
    object CB_NFCE_online: TCheckBox
      Left = 7
      Top = 5
      Width = 186
      Height = 17
      Alignment = taLeftJustify
      Caption = 'NFCE - Nota Fiscal de Consumidor'
      TabOrder = 0
      OnClick = CB_NFCE_onlineClick
    end
    object bbNFCE_Salvar: TBitBtn
      Left = 208
      Top = 4
      Width = 60
      Height = 20
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = bbNFCE_SalvarClick
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
    object cb_NAO_nfce_visualizar: TCheckBox
      Left = 515
      Top = 5
      Width = 92
      Height = 17
      Caption = 'N'#227'o Visualizar'
      TabOrder = 2
      OnClick = CB_NFCE_onlineClick
    end
    object spin_nfce_qtdvias: TSpinEdit
      Left = 658
      Top = 3
      Width = 39
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 1
      OnClick = CB_NFCE_onlineClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 72
  end
end
