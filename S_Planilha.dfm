object frm_Planilha: Tfrm_Planilha
  Left = 88
  Top = 106
  ActiveControl = btnIncluir
  BorderStyle = bsSingle
  Caption = 'Planilha de Viagem'
  ClientHeight = 520
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl_opcao: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object btnIncluir: TBitBtn
      Left = 0
      Top = 0
      Width = 99
      Height = 25
      Cursor = crHandPoint
      Hint = 'Novo Registro'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnIncluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 98
      Top = 0
      Width = 99
      Height = 25
      Cursor = crHandPoint
      Hint = 'Alterar Registro'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 196
      Top = 0
      Width = 101
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancelar Altera'#231#227'o/Inclus'#227'o do Registro'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 296
      Top = 0
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Excluir Registro'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btnGravar: TBitBtn
      Left = 395
      Top = 0
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Gravar Registro'
      Caption = '&Gravar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnGravarClick
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
    object btnImprimir: TBitBtn
      Left = 494
      Top = 0
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Imprimir Planilha de Viagem'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btnLocalizar: TBitBtn
      Left = 593
      Top = 0
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Localizar Planilha de Viagem'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 692
      Top = 0
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Voltar ao Menu Anterior'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnSairClick
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
  object pnl_planilha: TPanel
    Left = 0
    Top = 24
    Width = 792
    Height = 496
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 303
      Top = 8
      Width = 152
      Height = 18
      Caption = 'Planilha de N'#186'....:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 100
      Width = 783
      Height = 367
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object StaticText10: TStaticText
        Left = 3
        Top = 9
        Width = 151
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'N'#250'mero de Di'#225'rias'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object StaticText11: TStaticText
        Left = 3
        Top = 29
        Width = 151
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Quantidade de Dias'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object edtNDiaria: TComboEdit
        Left = 153
        Top = 9
        Width = 60
        Height = 21
        Alignment = taRightJustify
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 2
        Text = 'edtNDiaria'
      end
      object edtQtdDias: TComboEdit
        Left = 153
        Top = 29
        Width = 60
        Height = 21
        Alignment = taRightJustify
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 3
        Text = 'ComboEdit1'
      end
      object StaticText12: TStaticText
        Left = 3
        Top = 59
        Width = 98
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Sa'#237'da'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object StaticText13: TStaticText
        Left = 3
        Top = 87
        Width = 98
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Retorno'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object edtDataSaida: TDateEdit
        Left = 100
        Top = 59
        Width = 110
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
      object edtDataRetorno: TDateEdit
        Left = 100
        Top = 87
        Width = 110
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
      end
      object StaticText15: TStaticText
        Left = 209
        Top = 59
        Width = 98
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Dia/Semana'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object StaticText16: TStaticText
        Left = 209
        Top = 87
        Width = 98
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Dia/Semana'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object edtSemana1: TComboBox
        Left = 306
        Top = 58
        Width = 126
        Height = 22
        Style = csDropDownList
        Ctl3D = False
        ItemHeight = 14
        ItemIndex = 1
        ParentCtl3D = False
        TabOrder = 10
        Text = 'SEGUNDA-FEIRA'
        Items.Strings = (
          'DOMINGO'
          'SEGUNDA-FEIRA'
          'TER'#199'A-FEIRA'
          'QUARTA-FEIRA'
          'QUINTA-FEIRA'
          'SEXTA-FEIRA'
          'S'#193'BADO')
      end
      object edtSemana2: TComboBox
        Left = 306
        Top = 87
        Width = 126
        Height = 22
        Style = csDropDownList
        Ctl3D = False
        ItemHeight = 14
        ItemIndex = 1
        ParentCtl3D = False
        TabOrder = 21
        Text = 'SEGUNDA-FEIRA'
        Items.Strings = (
          'DOMINGO'
          'SEGUNDA-FEIRA'
          'TER'#199'A-FEIRA'
          'QUARTA-FEIRA'
          'QUINTA-FEIRA'
          'SEXTA-FEIRA'
          'S'#193'BADO')
      end
      object StaticText17: TStaticText
        Left = 430
        Top = 58
        Width = 76
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Hor'#225'rio'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object StaticText18: TStaticText
        Left = 430
        Top = 87
        Width = 76
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Hor'#225'rio'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object edtHorario1: TComboBox
        Left = 506
        Top = 58
        Width = 62
        Height = 22
        Style = csDropDownList
        Ctl3D = False
        ItemHeight = 14
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 24
        Text = '00:00'
        Items.Strings = (
          '00:00'
          '00:30'
          '01:00'
          '01:30'
          '02:00'
          '02:30'
          '03:00'
          '03:30'
          '04:00'
          '04:30'
          '05:00'
          '05:30'
          '06:00'
          '06:30'
          '07:00'
          '07:30'
          '08:00'
          '08:30'
          '09:00'
          '09:30'
          '10:00'
          '10:30'
          '11:00'
          '11:30'
          '12:00'
          '12:30'
          '13:00'
          '13:30'
          '14:00'
          '14:30'
          '15:00'
          '15:30'
          '16:00'
          '16:30'
          '17:00'
          '17:30'
          '18:00'
          '18:30'
          '19:00'
          '19:30'
          '20:00'
          '20:30'
          '21:00'
          '21:30'
          '22:00'
          '22:30'
          '23:00'
          '23:30'
          '')
      end
      object edtHorario2: TComboBox
        Left = 506
        Top = 87
        Width = 62
        Height = 22
        Style = csDropDownList
        Ctl3D = False
        ItemHeight = 14
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 25
        Text = '00:00'
        Items.Strings = (
          '00:00'
          '00:30'
          '01:00'
          '01:30'
          '02:00'
          '02:30'
          '03:00'
          '03:30'
          '04:00'
          '04:30'
          '05:00'
          '05:30'
          '06:00'
          '06:30'
          '07:00'
          '07:30'
          '08:00'
          '08:30'
          '09:00'
          '09:30'
          '10:00'
          '10:30'
          '11:00'
          '11:30'
          '12:00'
          '12:30'
          '13:00'
          '13:30'
          '14:00'
          '14:30'
          '15:00'
          '15:30'
          '16:00'
          '16:30'
          '17:00'
          '17:30'
          '18:00'
          '18:30'
          '19:00'
          '19:30'
          '20:00'
          '20:30'
          '21:00'
          '21:30'
          '22:00'
          '22:30'
          '23:00'
          '23:30'
          '')
      end
      object GroupBox3: TGroupBox
        Left = 569
        Top = 8
        Width = 210
        Height = 161
        Caption = 'Despesas'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 26
        object StaticText1: TStaticText
          Left = 4
          Top = 16
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Passagem de Avi'#227'o'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object edtPassagem: TCurrencyEdit
          Left = 133
          Top = 16
          Width = 74
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;-,0.00'
          TabOrder = 1
          OnExit = edtPassagemExit
        end
        object StaticText2: TStaticText
          Left = 4
          Top = 36
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Hotel'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object edtHotel: TCurrencyEdit
          Left = 133
          Top = 36
          Width = 74
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;-,0.00'
          TabOrder = 3
          OnExit = edtHotelExit
        end
        object StaticText3: TStaticText
          Left = 4
          Top = 56
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Alimenta'#231#227'o'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object edtAlimentacao: TCurrencyEdit
          Left = 133
          Top = 56
          Width = 74
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;-,0.00'
          TabOrder = 5
        end
        object StaticText4: TStaticText
          Left = 4
          Top = 76
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Combust'#237'vel'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object edtCombustivel: TCurrencyEdit
          Left = 133
          Top = 76
          Width = 74
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;-,0.00'
          TabOrder = 7
          OnExit = edtCombustivelExit
        end
        object StaticText5: TStaticText
          Left = 4
          Top = 96
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Outros'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object edtOutros: TCurrencyEdit
          Left = 133
          Top = 96
          Width = 74
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;-,0.00'
          TabOrder = 9
          OnExit = edtOutrosExit
        end
        object StaticText6: TStaticText
          Left = 4
          Top = 116
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object StaticText7: TStaticText
          Left = 4
          Top = 136
          Width = 130
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Caption = 'Total Despesas'
          Color = clBackground
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object edtTotalDesp: TCurrencyEdit
          Left = 133
          Top = 136
          Width = 74
          Height = 21
          AutoSize = False
          Color = clYellow
          DisplayFormat = ' ,0.00;-,0.00'
          ReadOnly = True
          TabOrder = 13
        end
        object StaticText8: TStaticText
          Left = 133
          Top = 116
          Width = 74
          Height = 21
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkSoft
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
      end
      object StaticText9: TStaticText
        Left = 3
        Top = 117
        Width = 206
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Gastos Combust'#237'vel R$'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 27
      end
      object StaticText19: TStaticText
        Left = 3
        Top = 138
        Width = 206
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Ve'#237'culo'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 28
      end
      object StaticText20: TStaticText
        Left = 3
        Top = 158
        Width = 206
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Km Inicial'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 29
      end
      object StaticText21: TStaticText
        Left = 3
        Top = 178
        Width = 206
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Km Rodados'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 30
      end
      object edtGastoCombo: TCurrencyEdit
        Left = 208
        Top = 117
        Width = 137
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 11
      end
      object edtVeiculo: TComboEdit
        Left = 208
        Top = 137
        Width = 137
        Height = 22
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 13
        Text = 'edtVeiculo'
      end
      object edtKmInicial: TCurrencyEdit
        Left = 208
        Top = 158
        Width = 137
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ' ,0.000;-,0.000'
        TabOrder = 15
      end
      object edtKmRodado: TCurrencyEdit
        Left = 208
        Top = 178
        Width = 137
        Height = 21
        AutoSize = False
        Color = 10930928
        DecimalPlaces = 3
        DisplayFormat = ' ,0.000;-,0.000'
        ReadOnly = True
        TabOrder = 43
      end
      object StaticText22: TStaticText
        Left = 344
        Top = 117
        Width = 123
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Qtde de Litros'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 31
      end
      object edtQtdLitros: TCurrencyEdit
        Left = 466
        Top = 117
        Width = 100
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ' ,0.000;-,0.000'
        TabOrder = 12
      end
      object StaticText23: TStaticText
        Left = 344
        Top = 137
        Width = 123
        Height = 22
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Valor Gasto R$'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 32
      end
      object edtValorGasto: TCurrencyEdit
        Left = 466
        Top = 137
        Width = 100
        Height = 22
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 14
        OnExit = edtValorGastoExit
      end
      object StaticText24: TStaticText
        Left = 344
        Top = 158
        Width = 123
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Km Final'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 33
      end
      object edtKmFinal: TCurrencyEdit
        Left = 466
        Top = 158
        Width = 100
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ' ,0.000;-,0.000'
        TabOrder = 16
        OnExit = edtKmFinalExit
      end
      object StaticText25: TStaticText
        Left = 344
        Top = 178
        Width = 123
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'M'#233'dia'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 34
      end
      object edtMedia: TCurrencyEdit
        Left = 466
        Top = 178
        Width = 100
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DecimalPlaces = 3
        DisplayFormat = ' ,0.000;-,0.000'
        ReadOnly = True
        TabOrder = 44
      end
      object StaticText26: TStaticText
        Left = 344
        Top = 198
        Width = 123
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'R$ Litros'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 35
      end
      object edtValorLitro: TCurrencyEdit
        Left = 466
        Top = 198
        Width = 100
        Height = 21
        AutoSize = False
        Color = 10930928
        DecimalPlaces = 3
        DisplayFormat = ' ,0.00;-,0.00'
        ReadOnly = True
        TabOrder = 45
      end
      object StaticText27: TStaticText
        Left = 3
        Top = 232
        Width = 159
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Gastos com Cart'#227'o'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 36
      end
      object edtCartao: TCurrencyEdit
        Left = 161
        Top = 232
        Width = 119
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 17
        OnExit = edtCartaoExit
      end
      object StaticText28: TStaticText
        Left = 3
        Top = 252
        Width = 159
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Requisi'#231#227'o'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 37
      end
      object edtRequisicao: TCurrencyEdit
        Left = 161
        Top = 252
        Width = 119
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 18
        OnExit = edtRequisicaoExit
      end
      object StaticText29: TStaticText
        Left = 3
        Top = 272
        Width = 159
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Depositos'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 38
      end
      object edtDeposito: TCurrencyEdit
        Left = 161
        Top = 272
        Width = 119
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 19
        OnExit = edtDepositoExit
      end
      object StaticText30: TStaticText
        Left = 3
        Top = 292
        Width = 159
        Height = 22
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Vlr. Destinados em R$'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 39
      end
      object edtDestinado: TCurrencyEdit
        Left = 161
        Top = 292
        Width = 119
        Height = 22
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 20
        OnExit = edtDestinadoExit
      end
      object StaticText31: TStaticText
        Left = 3
        Top = 313
        Width = 159
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = 'Total'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 40
      end
      object edtTotal: TCurrencyEdit
        Left = 161
        Top = 313
        Width = 119
        Height = 21
        AutoSize = False
        Color = clYellow
        DisplayFormat = ' ,0.00;-,0.00'
        ReadOnly = True
        TabOrder = 46
      end
      object StaticText32: TStaticText
        Left = 3
        Top = 342
        Width = 431
        Height = 21
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkSoft
        Caption = '*Valor da Restitui'#231#227'o '#224' Empresa/Funcion'#225'rio'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 41
      end
      object edtRestituicao: TCurrencyEdit
        Left = 433
        Top = 342
        Width = 132
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        TabOrder = 42
      end
    end
    object StaticText33: TStaticText
      Left = 5
      Top = 4
      Width = 294
      Height = 21
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkFlat
      Caption = 'Nome do Funcion'#225'rio'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object Grid: TDBGrid
      Left = 5
      Top = 43
      Width = 293
      Height = 61
      DataSource = Ds_Funcionario
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 271
          Visible = True
        end>
    end
    object StaticText34: TStaticText
      Left = 303
      Top = 53
      Width = 151
      Height = 21
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      Caption = 'Destino'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object StaticText35: TStaticText
      Left = 303
      Top = 73
      Width = 151
      Height = 21
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      Caption = 'Assunto'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object edtAssunto: TComboEdit
      Left = 453
      Top = 73
      Width = 253
      Height = 21
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 2
      Text = 'ComboEdit1'
    end
    object edtDestino: TComboEdit
      Left = 453
      Top = 53
      Width = 253
      Height = 21
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 1
      Text = 'ComboEdit1'
    end
    object StaticText36: TStaticText
      Left = 447
      Top = 472
      Width = 206
      Height = 21
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkFlat
      Caption = 'Valor Total da Viagem'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object edtTotalViagem: TCurrencyEdit
      Left = 652
      Top = 472
      Width = 137
      Height = 21
      AutoSize = False
      Color = clBlack
      DisplayFormat = ' ,0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_chave: TComboEdit
      Left = 459
      Top = 5
      Width = 121
      Height = 21
      Alignment = taRightJustify
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 10
      Text = 'edt_chave'
      OnButtonClick = edt_chaveButtonClick
      OnExit = edt_chaveExit
    end
    object EdtNome: TComboEdit
      Left = 5
      Top = 23
      Width = 293
      Height = 21
      ButtonWidth = 0
      NumGlyphs = 1
      TabOrder = 0
      Text = 'EdtNome'
      OnExit = EdtNomeExit
    end
  end
  object Qr_Funcionario: TRxMemoryData
    Filtered = True
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 30
      end>
    Left = 590
    Top = 34
    object Qr_FuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object Ds_Funcionario: TDataSource
    DataSet = Qr_Funcionario
    Left = 620
    Top = 34
  end
  object Qr_Empresa: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Empresa'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Gastos'
        DataType = ftFloat
      end
      item
        Name = 'Perc'
        DataType = ftFloat
      end>
    Left = 220
    Top = 329
    object Qr_EmpresaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 25
    end
    object Qr_EmpresaGastos: TFloatField
      FieldName = 'Gastos'
    end
    object Qr_EmpresaPerc: TFloatField
      FieldName = 'Perc'
    end
  end
  object Ds_Empresa: TDataSource
    DataSet = Qr_Empresa
    Left = 255
    Top = 329
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 285
    Top = 149
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA10) \251 Copyright '#169' 1999-20' +
      '06 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 315
    Top = 149
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 345
    Top = 149
  end
  object RLPrintDialogSetup1: TRLPrintDialogSetup
    Copies = 0
    Left = 380
    Top = 149
  end
end
