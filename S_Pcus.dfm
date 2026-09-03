object Frm_Pcus: TFrm_Pcus
  Left = 144
  Top = 169
  Width = 775
  Height = 500
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Composi'#231#227'o de Custos dos Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 28
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 7
      Width = 57
      Height = 13
      Caption = 'Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grade: TLabel
      Left = 243
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Grade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 566
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Arredonda em:'
    end
    object Atualizar: TBitBtn
      Left = 672
      Top = 2
      Width = 75
      Height = 23
      Hint = 'Atualiza as Informa'#231#245'es do Produto Digitado'
      Caption = '&Atualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = AtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object CB_CUSTOS: TCheckBox
      Left = 462
      Top = 7
      Width = 92
      Height = 17
      Hint = 
        'Sempre que for selecionado outro item manter'#13#10'os parametros do i' +
        'tem anterior'
      Caption = 'Manter Custos'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 4
    end
    object CODPRO: TEdit
      Left = 59
      Top = 5
      Width = 115
      Height = 19
      Hint = 'C'#243'digo do Produto a Ser Produzido'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object numero: TEdit
      Left = 290
      Top = 5
      Width = 61
      Height = 19
      Hint = 'N'#250'mero da Grade a ser Produzida'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnExit = numeroExit
      OnKeyDown = numeroKeyDown
    end
    object NOMPRO: TEdit
      Left = 173
      Top = 5
      Width = 284
      Height = 19
      Color = 12582911
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cb_casas: TComboBox
      Left = 635
      Top = 4
      Width = 35
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 5
      Text = '2'
      OnChange = cb_casasChange
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 445
    Width = 767
    Height = 24
    Align = alBottom
    TabOrder = 9
    object bbAtuaPro: TBitBtn
      Left = 1
      Top = 1
      Width = 123
      Height = 20
      Hint = 'Atualiza os Novos Valores'#13#10'no Cadastro de Produtos'
      Caption = '&Atualizar o Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbAtuaProClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbGravar: TBitBtn
      Left = 123
      Top = 1
      Width = 112
      Height = 20
      Hint = 'Grava os Parametros '#13#10'Digitados'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbGravarClick
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
    object CANCELAR: TBitBtn
      Left = 234
      Top = 1
      Width = 119
      Height = 20
      Hint = 
        'Cancela a Digita'#231#227'o dos '#13#10'Parametros Voltando ao '#13#10'que estaja an' +
        'tes da altera'#231#227'o'
      Caption = '&Cancelar Opera'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = CANCELARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbImprimir: TBitBtn
      Left = 352
      Top = 0
      Width = 121
      Height = 21
      Hint = 'Imprime a Composi'#231#227'o de Pre'#231'os'
      Caption = '&Imprimir Composi'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbExportar: TBitBtn
      Left = 472
      Top = 1
      Width = 140
      Height = 19
      Hint = 
        'Exporta a Configura'#231#227'o'#13#10'do Produto Selecionado'#13#10'para determinado' +
        's Produtos'
      Caption = '&Exportar Configura'#231#245'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbExportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 609
      Top = -4
      Width = 118
      Height = 26
      Caption = '&Sair do Programa'
      ParentShowHint = False
      ShowHint = True
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
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 28
    Width = 767
    Height = 56
    Align = alTop
    Caption = 'Valores Atuais:'
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 6
      Top = 13
      Width = 98
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object PCOCOM: TStaticText
      Left = 107
      Top = 13
      Width = 98
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 209
      Top = 13
      Width = 95
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Custo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object PCOCUS: TStaticText
      Left = 303
      Top = 13
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object PCOVEN: TStaticText
      Left = 491
      Top = 13
      Width = 95
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object StaticText4: TStaticText
      Left = 396
      Top = 13
      Width = 95
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object PCOVEN2: TStaticText
      Left = 303
      Top = 32
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object StaticText5: TStaticText
      Left = 209
      Top = 32
      Width = 95
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object PCOVEN3: TStaticText
      Left = 491
      Top = 32
      Width = 95
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object StaticText6: TStaticText
      Left = 397
      Top = 32
      Width = 95
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object bbSavar_Padroes: TBitBtn
      Left = 599
      Top = 9
      Width = 159
      Height = 20
      Caption = 'Salvar Parametros Padr'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = bbSavar_PadroesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
        03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
        30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
        07807F777733337F7F3707888887880808807F333333337F7F37077777778800
        08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
        33003777737777333377333080333333333333F7373333333333300803333333
        33333773733333333333088033333333333373F7F33333333333308033333333
        3333373733333333333333033333333333333373333333333333}
      NumGlyphs = 2
    end
    object bbSalvarPerc: TBitBtn
      Left = 598
      Top = 29
      Width = 160
      Height = 22
      Caption = 'Salvar Percentuais Padr'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = bbSalvarPercClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
        03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
        30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
        07807F777733337F7F3707888887880808807F333333337F7F37077777778800
        08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
        33003777737777333377333080333333333333F7373333333333300803333333
        33333773733333333333088033333333333373F7F33333333333308033333333
        3333373733333333333333033333333333333373333333333333}
      NumGlyphs = 2
    end
    object CB_ATUPRO: TCheckBox
      Left = 6
      Top = 31
      Width = 195
      Height = 17
      Hint = 
        'Atualizar os Valores do Produto'#13#10'Sempre que gravar as configura'#231 +
        #245'es'
      Caption = 'ao Gravar Atualizar o Produto'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 12
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 314
    Width = 767
    Height = 41
    Align = alBottom
    TabOrder = 6
    object GroupBox7: TGroupBox
      Left = 1
      Top = 2
      Width = 206
      Height = 37
      Caption = 'Alterar os Seguintes Pre'#231'os:'
      TabOrder = 0
      object CB_ATUP01: TCheckBox
        Left = 4
        Top = 14
        Width = 65
        Height = 17
        Hint = 'Se Marcado Atualiza o Pre'#231'o 01'#13#10'do Cadastro do Produto'
        Caption = 'Pre'#231'o 0&1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8388672
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CB_ATUP02: TCheckBox
        Left = 71
        Top = 14
        Width = 66
        Height = 17
        Hint = 'Se Marcado Atualiza o Pre'#231'o 02'#13#10'do Cadastro do Produto'
        Caption = 'Pre'#231'o 0&2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CB_ATUP03: TCheckBox
        Left = 138
        Top = 14
        Width = 66
        Height = 17
        Hint = 'Se Marcado Atualiza o Pre'#231'o 03'#13#10'do Cadastro do Produto'
        Caption = 'Pre'#231'o 0&3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227327
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object GroupBox8: TGroupBox
      Left = 489
      Top = 2
      Width = 270
      Height = 37
      Caption = 'Percentual a ser incrementado nos seguintes pre'#231'os:'
      TabOrder = 1
      object Label7: TLabel
        Left = 11
        Top = 18
        Width = 57
        Height = 13
        Caption = 'Vendas 02.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 141
        Top = 17
        Width = 57
        Height = 13
        Caption = 'Vendas 03.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227327
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ACPCO02: TEdit
        Left = 72
        Top = 13
        Width = 65
        Height = 19
        Hint = 
          'Percentual a ser incrementado'#13#10'Sobre o Pre'#231'o de Venda 01 para'#13#10'G' +
          'erar o Pre'#231'o de Venda 02'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = ACPCO02Exit
        OnKeyPress = PCOMINKeyPress
      end
      object ACPCO03: TEdit
        Left = 199
        Top = 13
        Width = 65
        Height = 19
        Hint = 
          'Percentual a ser incrementado'#13#10'Sobre o Pre'#231'o de Venda 01 para'#13#10'G' +
          'erar o Pre'#231'o de Venda 03'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227327
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = ACPCO03Exit
        OnKeyPress = PCOMINKeyPress
      end
    end
    object StaticText12: TStaticText
      Left = 252
      Top = 4
      Width = 105
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o M'#237'nimo:'
      TabOrder = 2
    end
    object PCOMIN: TEdit
      Left = 361
      Top = 3
      Width = 90
      Height = 19
      Hint = 'Valor M'#237'nimo do Produto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '0,00'
      OnExit = PCOMINExit
      OnKeyPress = PCOMINKeyPress
    end
    object StaticText13: TStaticText
      Left = 252
      Top = 21
      Width = 106
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Incidencia S/M'#237'nimo:'
      TabOrder = 4
    end
    object INCPMIN: TEdit
      Left = 361
      Top = 21
      Width = 90
      Height = 19
      Hint = 'Valor do Imposto sobre '#13#10'o Valor M'#237'nimo com Incidencia'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '0,00'
      OnExit = INCPMINExit
      OnKeyPress = PCOMINKeyPress
    end
  end
  object gb_compra: TGroupBox
    Left = 0
    Top = 84
    Width = 767
    Height = 70
    Align = alClient
    Caption = 'Composi'#231#227'o do Custo do Preco de Compra do Produto:'
    Color = 13828050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object lbl_compraCalc: TLabel
      Left = 6
      Top = 15
      Width = 120
      Height = 13
      Caption = 'Pre'#231'o Compra Calculado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object st_compraCalc: TStaticText
      Left = 160
      Top = 16
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 355
    Width = 767
    Height = 67
    Align = alBottom
    Caption = 'Novos Valores:'
    TabOrder = 7
    object Label4: TLabel
      Left = 4
      Top = 13
      Width = 88
      Height = 13
      Caption = '&Pre'#231'o de Compra.:'
      FocusControl = NPCOCOM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBPCOFOR: TSpeedButton
      Left = 95
      Top = 29
      Width = 126
      Height = 17
      Caption = 'Capturar da F'#243'rmula'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SBPCOFORClick
    end
    object SbAtuMatPrim: TSpeedButton
      Left = 94
      Top = 46
      Width = 242
      Height = 19
      Caption = 'Atualizar Pre'#231'os  das Mat'#233'rias Primas(todas)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SbAtuMatPrimClick
    end
    object NPCOCOM: TEdit
      Left = 96
      Top = 9
      Width = 115
      Height = 19
      Hint = 'Pre'#231'o de Compra do Produto'#13#10'ou Valor do Produto Fabricado'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = NPCOCOMExit
      OnKeyPress = PCOMINKeyPress
    end
    object CB_FORMULA: TCheckBox
      Left = 214
      Top = 10
      Width = 122
      Height = 17
      Hint = 
        'Se Marcado Utiliza o '#13#10'Pre'#231'o da Formula de Fabrica'#231#227'o '#13#10'do Produ' +
        'to'
      Caption = 'Utilizar das Formulas'
      Ctl3D = True
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 337
      Top = 31
      Width = 96
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Custo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object NPCOCUS: TStaticText
      Left = 432
      Top = 31
      Width = 92
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object NPCOVEN: TStaticText
      Left = 634
      Top = 10
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object StaticText8: TStaticText
      Left = 523
      Top = 10
      Width = 112
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText7: TStaticText
      Left = 523
      Top = 28
      Width = 112
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object NPCOVEN2: TStaticText
      Left = 634
      Top = 28
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object NPCOVEN3: TStaticText
      Left = 634
      Top = 47
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object StaticText10: TStaticText
      Left = 523
      Top = 47
      Width = 112
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o de Venda 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object PCOCPR_CALC: TStaticText
      Left = 432
      Top = 9
      Width = 92
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 10
    end
    object StaticText18: TStaticText
      Left = 337
      Top = 9
      Width = 96
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Custo Compra Calc:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object StaticText16: TStaticText
      Left = 337
      Top = 50
      Width = 96
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Encargos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object NPCOENC: TStaticText
      Left = 432
      Top = 50
      Width = 92
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edt_npven1: TCurrencyEdit
      Left = 701
      Top = 10
      Width = 58
      Height = 18
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 14
    end
    object edt_npven2: TCurrencyEdit
      Left = 701
      Top = 28
      Width = 58
      Height = 18
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 15
    end
    object edt_npven3: TCurrencyEdit
      Left = 701
      Top = 46
      Width = 58
      Height = 18
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 16
    end
  end
  object panel_custos: TPanel
    Left = 0
    Top = 422
    Width = 767
    Height = 23
    Align = alBottom
    TabOrder = 8
    Visible = False
    object StaticText15: TStaticText
      Left = 4
      Top = 3
      Width = 162
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Custo de Fabrica'#231#227'o do Produto'
      TabOrder = 0
    end
    object ST_CUSFAB: TStaticText
      Left = 171
      Top = 3
      Width = 98
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 1
    end
    object StaticText17: TStaticText
      Left = 505
      Top = 4
      Width = 148
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Custo do Produto Envasado:'
      TabOrder = 2
    end
    object ST_CUSENV: TStaticText
      Left = 661
      Top = 5
      Width = 98
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 3
    end
  end
  object gb_Encargos: TGroupBox
    Left = 0
    Top = 257
    Width = 767
    Height = 57
    Align = alBottom
    Caption = 'Composi'#231#227'o do Custo do Produto:'
    Color = 11983578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object lbl_EncarCalc: TLabel
      Left = 6
      Top = 19
      Width = 118
      Height = 13
      Caption = 'Valor com Encargos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object st_EncarCalc: TStaticText
      Left = 160
      Top = 19
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object gb_custo: TGroupBox
    Left = 0
    Top = 154
    Width = 767
    Height = 50
    Align = alBottom
    Caption = 'Composicao do Custo do Produto:'
    Color = 16763594
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object lbl_custoCalc: TLabel
      Left = 6
      Top = 15
      Width = 120
      Height = 13
      Caption = 'Pre'#231'o Compra Calculado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object st_custoCalc: TStaticText
      Left = 160
      Top = 13
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object gb_Venda: TGroupBox
    Left = 0
    Top = 204
    Width = 767
    Height = 53
    Align = alBottom
    Caption = 'Composicao do Preco de Venda'
    Color = 16759807
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8388672
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object lbl_vendaCalc: TLabel
      Left = 6
      Top = 16
      Width = 138
      Height = 13
      Caption = 'Pre'#231'o Venda Calculado:'
    end
    object st_vendaCalc: TStaticText
      Left = 160
      Top = 12
      Width = 94
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Qr_Cus: TQuery
    OnCalcFields = Qr_CusCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcu' +
        's '
      '               left outer join cadcus '
      '               on (pccodigo=cucodpcu)'
      '               and (CUTIPO=0) '
      '               order by PCNOME ')
    Left = 288
    Top = 65520
    object Qr_CusPCNOME: TStringField
      FieldName = 'PCNOME'
      Origin = 'SG_ASSOC.CADPCUS.PCNOME'
      Size = 30
    end
    object Qr_CusPCAPLS: TFloatField
      FieldName = 'PCAPLS'
      Origin = 'SG_ASSOC.CADPCUS.PCAPLS'
    end
    object Qr_CusCUPERC: TFloatField
      FieldName = 'CUPERC'
      Origin = 'SG_ASSOC.CADCUS.CUPERC'
    end
    object Qr_CusPCOPCIO: TFloatField
      FieldName = 'PCOPCIO'
      Origin = 'SG_ASSOC.CADPCUS.PCOPCIO'
    end
    object Qr_CusPCFATOR: TFloatField
      FieldName = 'PCFATOR'
      Origin = 'SG_ASSOC.CADPCUS.PCFATOR'
    end
    object Qr_Cusaplicar: TStringField
      FieldKind = fkCalculated
      FieldName = 'aplicar'
      Calculated = True
    end
    object Qr_CusPCCODIGO: TFloatField
      FieldName = 'PCCODIGO'
      Origin = 'SG_ASSOC.CADPCUS.PCCODIGO'
    end
  end
end
