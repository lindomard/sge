object frm_Lic2_cadastrar_produto: Tfrm_Lic2_cadastrar_produto
  Left = 122
  Top = 53
  Width = 895
  Height = 647
  Caption = 'Cadastrar Produtos da Licita'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 887
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar '#237'tem da Licita'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 58
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Descri'#231#227'o do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 76
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 629
    Top = 77
    Width = 124
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Unidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 94
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo Fabricante:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 112
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Grupo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 130
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Ramo(sub-grupo):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 148
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 166
    Width = 233
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Controle:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 33
    Top = 185
    Width = 218
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Origem do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 385
    Top = 184
    Width = 105
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Codigo NCM:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 623
    Top = 186
    Width = 84
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CEST:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_nompro: TEdit
    Left = 260
    Top = 55
    Width = 573
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'edt_nompro'
  end
  object edt_marca: TEdit
    Left = 260
    Top = 73
    Width = 301
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'edt_nompro'
  end
  object edt_undpro: TEdit
    Left = 758
    Top = 73
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'edt_nompro'
  end
  object edt_codfor: TEdit
    Left = 260
    Top = 91
    Width = 85
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Text = 'edt_nompro'
    OnExit = edt_codforExit
    OnKeyPress = edt_codforKeyPress
  end
  object edt_nomfor: TEdit
    Left = 344
    Top = 91
    Width = 489
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object edt_codgru: TEdit
    Left = 260
    Top = 109
    Width = 85
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    Text = 'edt_nompro'
    OnExit = edt_codgruExit
  end
  object edt_nomgru: TEdit
    Left = 344
    Top = 109
    Width = 489
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object edt_codram: TEdit
    Left = 260
    Top = 127
    Width = 85
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    Text = 'edt_nompro'
    OnExit = edt_codramExit
    OnKeyPress = edt_codramKeyPress
  end
  object edt_nomram: TEdit
    Left = 344
    Top = 127
    Width = 489
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object edt_codtip: TEdit
    Left = 260
    Top = 145
    Width = 85
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
    Text = 'edt_nompro'
    OnExit = edt_codtipExit
    OnKeyPress = edt_codtipKeyPress
  end
  object edt_nomtip: TEdit
    Left = 344
    Top = 145
    Width = 489
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object edt_codcon: TEdit
    Left = 260
    Top = 163
    Width = 85
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 11
    Text = 'edt_nompro'
    OnExit = edt_codconExit
    OnKeyPress = edt_codconKeyPress
  end
  object edt_nomcon: TEdit
    Left = 344
    Top = 163
    Width = 489
    Height = 19
    TabStop = False
    Color = 15720158
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object gb_dados_fiscais: TGroupBox
    Left = 8
    Top = 201
    Width = 833
    Height = 97
    Caption = 'CST ICMS:'
    TabOrder = 14
    object Label10: TLabel
      Left = 7
      Top = 11
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST ICMS Revenda dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 359
      Top = 12
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST ICMS Consumidor dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 7
      Top = 48
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST ICMS Revenda dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 359
      Top = 50
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST ICMS Consumidor dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label97: TLabel
      Left = 735
      Top = 13
      Width = 65
      Height = 13
      Caption = '% Redu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label100: TLabel
      Left = 731
      Top = 46
      Width = 65
      Height = 13
      Caption = '% Redu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_CST_ICMS_DENTRO_ESTADO_REVENDA: TComboBox
      Left = 10
      Top = 27
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_CST_ICMS_DENTRO_ESTADO_REVENDAExit
      Items.Strings = (
        '00 - Tributado integralmente'
        '10 - Tributado e com cobr.  do ICMS por subs. trib.'
        '20 - Com redu'#231#227'o de base de c'#225'lculo'
        '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
        '40 - Isenta ou n'#227'o tributada'
        '41 - N'#227'o tributada'
        '50 - Com suspens'#227'o ou deferimento'
        '51 - Diferimento'
        '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
        '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
        '90 - Outras')
    end
    object CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TComboBox
      Left = 364
      Top = 27
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnExit = CB_CST_ICMS_DENTRO_ESTADO_CONSMIDORExit
      Items.Strings = (
        '00 - Tributado integralmente'
        '10 - Tributado e com cobr.  do ICMS por subs. trib.'
        '20 - Com redu'#231#227'o de base de c'#225'lculo'
        '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
        '40 - Isenta ou n'#227'o tributada'
        '41 - N'#227'o tributada'
        '50 - Com suspens'#227'o ou deferimento'
        '51 - Diferimento'
        '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
        '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
        '90 - Outras')
    end
    object CB_CST_ICMS_FORA_ESTADO_REVENDA: TComboBox
      Left = 8
      Top = 67
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnExit = CB_CST_ICMS_FORA_ESTADO_REVENDAExit
      Items.Strings = (
        '00 - Tributado integralmente'
        '10 - Tributado e com cobr.  do ICMS por subs. trib.'
        '20 - Com redu'#231#227'o de base de c'#225'lculo'
        '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
        '40 - Isenta ou n'#227'o tributada'
        '41 - N'#227'o tributada'
        '50 - Com suspens'#227'o ou deferimento'
        '51 - Diferimento'
        '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
        '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
        '90 - Outras')
    end
    object CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TComboBox
      Left = 364
      Top = 65
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnExit = CB_CST_ICMS_FORA_ESTADO_CONSUMIDORExit
      Items.Strings = (
        '00 - Tributado integralmente'
        '10 - Tributado e com cobr.  do ICMS por subs. trib.'
        '20 - Com redu'#231#227'o de base de c'#225'lculo'
        '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
        '40 - Isenta ou n'#227'o tributada'
        '41 - N'#227'o tributada'
        '50 - Com suspens'#227'o ou deferimento'
        '51 - Diferimento'
        '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
        '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
        '90 - Outras')
    end
    object edt_PRED_ICMS_NORMAL_DENTRO_ESTADO: TEdit
      Left = 722
      Top = 27
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit
    end
    object edt_PRED_ICMS_NORMAL_FORA_ESTADO: TEdit
      Left = 722
      Top = 63
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_PRED_ICMS_NORMAL_FORA_ESTADOExit
    end
  end
  object gb_csosn: TGroupBox
    Left = 8
    Top = 299
    Width = 833
    Height = 94
    Caption = 'CSOSN:'
    TabOrder = 15
    object Label14: TLabel
      Left = 6
      Top = 11
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Revenda dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 366
      Top = 10
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Consumidor dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 7
      Top = 47
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Revenda dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 359
      Top = 49
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Consumidor dentro do estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_CSOSN_DENTRO_ESTADO_REVENDA: TComboBox
      Left = 10
      Top = 25
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_CSOSN_DENTRO_ESTADO_REVENDAExit
      Items.Strings = (
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
        '900 - Outros'
        '')
    end
    object CB_CSOSN_DENTRO_ESTADO_CONSMIDOR: TComboBox
      Left = 364
      Top = 25
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnExit = CB_CSOSN_DENTRO_ESTADO_CONSMIDORExit
      Items.Strings = (
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
        '900 - Outros'
        '')
    end
    object CB_CSOSN_FORA_ESTADO_REVENDA: TComboBox
      Left = 4
      Top = 64
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnExit = CB_CSOSN_FORA_ESTADO_REVENDAExit
      Items.Strings = (
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
        '900 - Outros'
        '')
    end
    object CB_CSOSN_FORA_ESTADO_CONSUMIDOR: TComboBox
      Left = 364
      Top = 64
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnExit = CB_CSOSN_FORA_ESTADO_CONSUMIDORExit
      Items.Strings = (
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
        '900 - Outros'
        '')
    end
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 398
    Width = 600
    Height = 111
    Caption = 'CST Pis/Cofins:'
    TabOrder = 16
    object Label18: TLabel
      Left = 5
      Top = 14
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST PIS/COFINS para entradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 11
      Top = 54
      Width = 346
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'CST PIS/COFINS para saidas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label106: TLabel
      Left = 365
      Top = 15
      Width = 71
      Height = 13
      Caption = 'Aliquota PIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label70: TLabel
      Left = 502
      Top = 15
      Width = 86
      Height = 13
      Caption = 'Aliquota Cofins'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label73: TLabel
      Left = 368
      Top = 54
      Width = 71
      Height = 13
      Caption = 'Aliquota PIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label74: TLabel
      Left = 505
      Top = 54
      Width = 86
      Height = 13
      Caption = 'Aliquota Cofins'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_CST_PISCOFINS_PARA_ENTRADA: TComboBox
      Left = 18
      Top = 30
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_CST_PISCOFINS_PARA_ENTRADAExit
      Items.Strings = (
        '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
        '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
        
          '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
          'duto'
        '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
        '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
        '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
        '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
        '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
        '49 Outras Opera'#231#245'es de Sa'#237'da'
        
          '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita Tributada no Mercado Interno'
        
          '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita N'#227'o Tributada no Mercado Interno'
        
          '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita de Exporta'#231#227'o'
        
          '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno'
        
          '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das no Mercado Interno e de Exporta'#231#227'o'
        
          '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
          'butadas no Mercado Interno e de Exporta'#231#227'o'
        
          '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
        
          '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita Tributada no Mercado Interno'
        
          '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita N'#227'o-Tributada no Mercado Interno'
        
          '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita de Exporta'#231#227'o'
        
          '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno'
        
          '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
          'o'
        '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
        '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
        '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
        '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
        '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
        '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
        '98 Outras Opera'#231#245'es de Entrada'
        '99 Outras Opera'#231#245'es'
        '')
    end
    object CB_CST_PISCOFINS_PARA_SAIDA: TComboBox
      Left = 16
      Top = 77
      Width = 346
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnExit = CB_CST_PISCOFINS_PARA_SAIDAExit
      Items.Strings = (
        '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
        '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
        
          '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
          'duto'
        '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
        '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
        '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
        '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
        '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
        '49 Outras Opera'#231#245'es de Sa'#237'da'
        
          '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita Tributada no Mercado Interno'
        
          '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita N'#227'o Tributada no Mercado Interno'
        
          '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita de Exporta'#231#227'o'
        
          '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno'
        
          '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das no Mercado Interno e de Exporta'#231#227'o'
        
          '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
          'butadas no Mercado Interno e de Exporta'#231#227'o'
        
          '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
        
          '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita Tributada no Mercado Interno'
        
          '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita N'#227'o-Tributada no Mercado Interno'
        
          '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita de Exporta'#231#227'o'
        
          '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno'
        
          '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
          'o'
        '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
        '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
        '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
        '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
        '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
        '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
        '98 Outras Opera'#231#245'es de Entrada'
        '99 Outras Opera'#231#245'es'
        '')
    end
    object EDT_ALIQ_PIS_ENTRADA: TEdit
      Left = 374
      Top = 32
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = EDT_ALIQ_PIS_ENTRADAExit
    end
    object EDT_ALIQ_COFINS_ENTRADA: TEdit
      Left = 522
      Top = 32
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = EDT_ALIQ_COFINS_ENTRADAExit
    end
    object EDT_ALIQ_PIS_SAIDA: TEdit
      Left = 376
      Top = 77
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = EDT_ALIQ_PIS_SAIDAExit
    end
    object EDT_ALIQ_COFINS_SAIDA: TEdit
      Left = 524
      Top = 77
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = EDT_ALIQ_COFINS_SAIDAExit
    end
  end
  object CB_ORIGEM_PRODUTO: TComboBox
    Left = 260
    Top = 180
    Width = 123
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    OnExit = CB_ORIGEM_PRODUTOExit
    Items.Strings = (
      '0 - Nacional'
      '1 - Estrang. - Imp. direta'
      '2 - Estrang. - Merc. Interno'
      '3 - Nacional - Merc. com conteudo de Importa'#231#227'o superior a 40%'
      '4 - Nacional - com processos produtivos Basicos'
      '5 - Nacional - Merc. com conteudo importa'#231#227'o inferior a 40%'
      '6 - Estrangeira - Importa'#231#227'o direta CAMEX'
      '7 - Estrangeira - Merc. Interno CAMEX')
  end
  object edt_codncm: TEdit
    Left = 496
    Top = 181
    Width = 122
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 17
    OnExit = edt_codncmExit
  end
  object CB_CEST: TComboBox
    Left = 710
    Top = 181
    Width = 123
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    OnExit = CB_CESTExit
    Items.Strings = (
      '0 - Nacional'
      '1 - Estrang. - Imp. direta'
      '2 - Estrang. - Merc. Interno'
      '3 - Nacional - Merc. com conteudo de Importa'#231#227'o superior a 40%'
      '4 - Nacional - com processos produtivos Basicos'
      '5 - Nacional - Merc. com conteudo importa'#231#227'o inferior a 40%'
      '6 - Estrangeira - Importa'#231#227'o direta CAMEX'
      '7 - Estrangeira - Merc. Interno CAMEX')
  end
  object GRAVAR: TBitBtn
    Left = 46
    Top = 558
    Width = 150
    Height = 40
    Cursor = crHandPoint
    Hint = 'Grava o registro atual'
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    OnClick = GRAVARClick
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
    Spacing = 2
  end
  object SAIR: TBitBtn
    Left = 605
    Top = 558
    Width = 150
    Height = 40
    Cursor = crHandPoint
    Hint = 'Sair do Programa'
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnClick = SAIRClick
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
    Spacing = 2
  end
  object GroupBox2: TGroupBox
    Left = 616
    Top = 400
    Width = 225
    Height = 105
    Caption = 'Precos:'
    TabOrder = 21
    object Label23: TLabel
      Left = 9
      Top = 20
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 10
      Top = 41
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Custo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_preco_venda: TEdit
      Left = 109
      Top = 16
      Width = 109
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_PRED_ICMS_NORMAL_FORA_ESTADOExit
    end
    object edt_preco_custo: TEdit
      Left = 109
      Top = 37
      Width = 109
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edt_PRED_ICMS_NORMAL_FORA_ESTADOExit
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 513
    Width = 845
    Height = 41
    Caption = 'CBS/IBS:'
    TabOrder = 22
    object Label134: TLabel
      Left = 11
      Top = 19
      Width = 29
      Height = 13
      Caption = 'CST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label135: TLabel
      Left = 418
      Top = 19
      Width = 94
      Height = 13
      Caption = 'Cod Classif Trib:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cb_cbs_cst: TComboBox
      Left = 48
      Top = 14
      Width = 360
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
      OnClick = cb_cbs_cstClick
      Items.Strings = (
        '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
        '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
        
          '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
          'duto'
        '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
        '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
        '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
        '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
        '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
        '49 Outras Opera'#231#245'es de Sa'#237'da'
        
          '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita Tributada no Mercado Interno'
        
          '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita N'#227'o Tributada no Mercado Interno'
        
          '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita de Exporta'#231#227'o'
        
          '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno'
        
          '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das no Mercado Interno e de Exporta'#231#227'o'
        
          '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
          'butadas no Mercado Interno e de Exporta'#231#227'o'
        
          '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
        
          '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita Tributada no Mercado Interno'
        
          '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita N'#227'o-Tributada no Mercado Interno'
        
          '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita de Exporta'#231#227'o'
        
          '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno'
        
          '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
          'o'
        '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
        '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
        '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
        '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
        '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
        '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
        '98 Outras Opera'#231#245'es de Entrada'
        '99 Outras Opera'#231#245'es'
        '')
    end
    object cb_codclastrib: TComboBox
      Left = 520
      Top = 14
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
      Items.Strings = (
        '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
        '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
        
          '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
          'duto'
        '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
        '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
        '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
        '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
        '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
        '49 Outras Opera'#231#245'es de Sa'#237'da'
        
          '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita Tributada no Mercado Interno'
        
          '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita N'#227'o Tributada no Mercado Interno'
        
          '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
          'eceita de Exporta'#231#227'o'
        
          '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno'
        
          '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das no Mercado Interno e de Exporta'#231#227'o'
        
          '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
          'butadas no Mercado Interno e de Exporta'#231#227'o'
        
          '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
          'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
        
          '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita Tributada no Mercado Interno'
        
          '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita N'#227'o-Tributada no Mercado Interno'
        
          '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
          'mente a Receita de Exporta'#231#227'o'
        
          '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno'
        
          '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
        
          '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
          's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
          'o'
        '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
        '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
        '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
        '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
        '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
        '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
        '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
        '98 Outras Opera'#231#245'es de Entrada'
        '99 Outras Opera'#231#245'es'
        '')
    end
  end
  object Query1: TQuery
    Left = 329
    Top = 502
  end
end
