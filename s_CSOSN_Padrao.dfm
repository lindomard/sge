object Frm_CSOSN_Padrao: TFrm_CSOSN_Padrao
  Left = 192
  Top = 124
  Width = 815
  Height = 198
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Definir CSOSN Padr'#227'o para Vendas de Produtos'
  Color = 16766421
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 32
    Width = 350
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CSOSN para  Produtos Tributados:'
  end
  object Label2: TLabel
    Left = 5
    Top = 52
    Width = 350
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CSOSN para  Produtos com Substitui'#231#227'o Tributaria:'
  end
  object StaticText1: TStaticText
    Left = 359
    Top = 16
    Width = 209
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Simples Nacional ou Consumidor'
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 576
    Top = 16
    Width = 209
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Regime Normal'
    TabOrder = 1
  end
  object bbSalvar: TBitBtn
    Left = 164
    Top = 103
    Width = 120
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 2
    OnClick = bbSalvarClick
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
    Left = 606
    Top = 95
    Width = 120
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
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
  object cb_csosntrib_sn: TComboBox
    Left = 404
    Top = 32
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'cb_csosntrib_sn'
    OnClick = cb_csosntrib_snClick
    Items.Strings = (
      '       - nao definido       '
      '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
      '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
      
        '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta'
      
        '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      '300 - Imune'
      '400 - N'#227'o tributada pelo Simples Nacional'
      
        '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
        'bstitu'#237'do) ou por antecipa'#231#227'o'
      '900 - Outros')
  end
  object cb_csosntrib_rn: TComboBox
    Left = 625
    Top = 32
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'cb_csosntrib_sn'
    OnClick = cb_csosntrib_snClick
    Items.Strings = (
      '       - nao definido       '
      '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
      '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
      
        '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta'
      
        '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      '300 - Imune'
      '400 - N'#227'o tributada pelo Simples Nacional'
      
        '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
        'bstitu'#237'do) ou por antecipa'#231#227'o'
      '900 - Outros')
  end
  object cb_csosnst_sn: TComboBox
    Left = 404
    Top = 54
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'cb_csosntrib_sn'
    OnClick = cb_csosntrib_snClick
    Items.Strings = (
      '       - nao definido       '
      '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
      '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
      
        '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta'
      
        '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      '300 - Imune'
      '400 - N'#227'o tributada pelo Simples Nacional'
      
        '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
        'bstitu'#237'do) ou por antecipa'#231#227'o'
      '900 - Outros')
  end
  object cb_csosnst_rn: TComboBox
    Left = 625
    Top = 54
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'cb_csosntrib_sn'
    OnClick = cb_csosntrib_snClick
    Items.Strings = (
      '       - nao definido       '
      '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
      '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
      
        '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta'
      
        '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
        ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      
        '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
        'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
      '300 - Imune'
      '400 - N'#227'o tributada pelo Simples Nacional'
      
        '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
        'bstitu'#237'do) ou por antecipa'#231#227'o'
      '900 - Outros')
  end
end
