object Frm_ManBal_GerInv: TFrm_ManBal_GerInv
  Left = 269
  Top = 370
  Width = 389
  Height = 221
  Caption = 'Gravar Inventario'
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
    Left = 8
    Top = 57
    Width = 353
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Nome:'
    Color = 16762052
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 353
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Utilizar Qual o Tipo de Pre'#231'o'
    Color = 16762052
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 14
    Width = 353
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Data do Inventario'
    Color = 16762052
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edt_nominv: TEdit
    Left = 8
    Top = 74
    Width = 353
    Height = 21
    TabOrder = 1
    Text = 'edt_nominv'
    OnExit = edt_nominvExit
  end
  object cb_preco: TComboBox
    Left = 8
    Top = 113
    Width = 353
    Height = 21
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 2
    Text = 'Preco de Custo'
    Items.Strings = (
      'Preco de Venda 1'
      'Preco de Venda 2'
      'Preco de Venda 3'
      'Preco de Custo'
      'Preco de Fabrica'
      'Pre'#231'o Maximo Consumidor'
      #218'ltimo Pre'#231'o de Compra')
  end
  object bbSair: TBitBtn
    Left = 263
    Top = 142
    Width = 101
    Height = 22
    Cursor = crHandPoint
    Hint = 'sair sem gravar'
    Caption = 'Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
  object bbSalvar: TBitBtn
    Left = 7
    Top = 142
    Width = 101
    Height = 22
    Cursor = crHandPoint
    Hint = 'Salvar o Invent'#225'rio'
    Caption = 'Salvar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = bbSalvarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
      33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
      D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
      BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
      EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
      BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
      D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object edt_datinv: TDateEdit
    Left = 126
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
end
