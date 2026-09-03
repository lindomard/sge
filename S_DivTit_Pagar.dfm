object Frm_DivTit_Pagar: TFrm_DivTit_Pagar
  Left = 110
  Top = 164
  Width = 746
  Height = 482
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dividir Titulos a Pagar'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 738
    Height = 168
    Align = alTop
    Caption = 'Dados Atuais'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 110
      Top = 16
      Width = 48
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 250
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Parc:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 326
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 91
      Top = 32
      Width = 68
      Height = 13
      Caption = 'Dt.Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 393
      Top = 33
      Width = 48
      Height = 13
      Caption = 'Dt.Vcto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 123
      Top = 51
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 368
      Top = 51
      Width = 72
      Height = 13
      Caption = 'Total da NF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 37
      Top = 123
      Width = 122
      Height = 13
      Caption = 'Desconto Financeiro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 240
      Top = 124
      Width = 71
      Height = 13
      Caption = 'p/Pgto. At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 87
      Top = 69
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 100
      Top = 106
      Width = 59
      Height = 13
      Caption = 'Cobran'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 31
      Top = 139
      Width = 126
      Height = 13
      Caption = 'Valor dos Acrescimos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBE_NUMERO: TDBEdit
      Left = 163
      Top = 13
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CANUMERO'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBE_DESD: TDBEdit
      Left = 282
      Top = 13
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'CADESD'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBE_DUP: TDBEdit
      Left = 359
      Top = 15
      Width = 49
      Height = 19
      TabStop = False
      DataField = 'tipodoc'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBE_DTEMIS: TDBEdit
      Left = 163
      Top = 31
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CADTEMIS'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBE_DTVCTO: TDBEdit
      Left = 444
      Top = 31
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CADTVCTO'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBE_VALOR: TDBEdit
      Left = 163
      Top = 49
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CAVALOR'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBE_TOTNF: TDBEdit
      Left = 444
      Top = 49
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CAVALOR'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBE_DESCF: TDBEdit
      Left = 163
      Top = 121
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CAVALDES'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBE_DTDESCF: TDBEdit
      Left = 314
      Top = 121
      Width = 74
      Height = 19
      TabStop = False
      DataField = 'CADTDESC'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBE_CODCLI: TDBEdit
      Left = 163
      Top = 67
      Width = 75
      Height = 19
      TabStop = False
      DataField = 'CACODFOR'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBE_NOMCLI: TDBEdit
      Left = 236
      Top = 67
      Width = 282
      Height = 19
      TabStop = False
      DataField = 'nomefor'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBE_CODBCO: TDBEdit
      Left = 163
      Top = 103
      Width = 75
      Height = 19
      TabStop = False
      DataField = 'CABANCO'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBE_NOMBCO: TDBEdit
      Left = 236
      Top = 103
      Width = 282
      Height = 19
      TabStop = False
      DataField = 'nombco'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBE_CAVALOR_ACRES: TDBEdit
      Left = 164
      Top = 139
      Width = 73
      Height = 19
      Hint = 'Valor do Acrescimo no titulo'
      TabStop = False
      Ctl3D = False
      DataField = 'CAVALOR_ACRES'
      DataSource = DM1.Src_CP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 13
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 168
    Width = 738
    Height = 100
    Align = alTop
    Caption = 'Dados para Divis'#227'o:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label77: TLabel
      Left = 5
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Prazo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label78: TLabel
      Left = 160
      Top = 40
      Width = 141
      Height = 13
      Caption = 'Quantidade de Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label79: TLabel
      Left = 396
      Top = 40
      Width = 55
      Height = 13
      Caption = 'Intervalo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 14
      Width = 736
      Height = 19
      Align = alTop
      TabOrder = 0
      object Label16: TLabel
        Left = 100
        Top = 1
        Width = 59
        Height = 13
        Caption = 'Cobran'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODBCO: TEdit
        Left = 163
        Top = 0
        Width = 74
        Height = 19
        TabOrder = 0
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
    end
    object NOMBCO: TEdit
      Left = 236
      Top = 14
      Width = 285
      Height = 19
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object PRAZO: TEdit
      Left = 82
      Top = 38
      Width = 50
      Height = 19
      Hint = 'Digite aqui o prazo'#13#10'inicial para vencimento'#13#10'da(s) duplicata(s)'
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = PRAZOExit
    end
    object QTDP: TEdit
      Left = 305
      Top = 38
      Width = 50
      Height = 19
      Hint = 'digite aqui a quantidade de parcelas'#13#10'das duplicatas'
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = QTDPExit
    end
    object INT: TEdit
      Left = 455
      Top = 38
      Width = 50
      Height = 19
      Hint = 
        'digite arqui o intervalo'#13#10'para vencimento entre uma'#13#10'duplicata e' +
        ' outra'
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = INTExit
    end
    object bbGerarDuplic: TBitBtn
      Left = 536
      Top = 38
      Width = 121
      Height = 21
      Caption = 'Gerar Duplicatas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbGerarDuplicClick
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
    object GroupBox3: TGroupBox
      Left = 1
      Top = 56
      Width = 736
      Height = 43
      Align = alBottom
      Caption = 'Por Dia de Vencimento Fixo:'
      TabOrder = 6
      object Label11: TLabel
        Left = 7
        Top = 17
        Width = 120
        Height = 13
        Caption = 'Primeiro Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 260
        Top = 17
        Width = 141
        Height = 13
        Caption = 'Quantidade de Parcelas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_dtprimvcto: TDateEdit
        Left = 129
        Top = 14
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_QTDP: TEdit
        Left = 409
        Top = 15
        Width = 50
        Height = 19
        Hint = 'digite aqui a quantidade de parcelas'#13#10'das duplicatas'
        BiDiMode = bdRightToLeft
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = QTDPExit
      end
      object bbgerardiafixo: TBitBtn
        Left = 536
        Top = 16
        Width = 121
        Height = 21
        Caption = 'Gerar Duplicatas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbgerardiafixoClick
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 738
    Height = 41
    Align = alBottom
    TabOrder = 2
    object lbl_totdup: TLabel
      Left = 168
      Top = 16
      Width = 400
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbl_totdup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBSAIR: TBitBtn
      Left = 590
      Top = 0
      Width = 148
      Height = 42
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBSAIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbGrarDup: TBitBtn
      Left = 2
      Top = -1
      Width = 148
      Height = 42
      Cursor = crHandPoint
      Hint = 'Gerar as Novas Duplicatas'
      Caption = '&Gravar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbGrarDupClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 268
    Width = 738
    Height = 142
    Align = alClient
    DataSource = Src_DivDup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESD'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ACRES'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVCTO'
        Title.Caption = 'Dt. Venc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCFIN'
        ReadOnly = True
        Title.Caption = 'Desc. Finan.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTDESCFIN'
        ReadOnly = True
        Title.Caption = 'Dt. Desc. Finan.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBCO'
        ReadOnly = True
        Title.Caption = 'Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARBAN'
        ReadOnly = True
        Title.Caption = 'Tar. Bco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBCO'
        ReadOnly = True
        Title.Caption = 'Nome Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCANT'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'percentual'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMSR'
        ReadOnly = True
        Title.Caption = 'Icms Retido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRETE'
        ReadOnly = True
        Title.Caption = 'Frete'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMVEN'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMV02'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMV03'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMTEL'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMSUP'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEMCOM'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTDI01'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTDI02'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTDI03'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTDIVLR'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALDES01'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALDES02'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDES'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALSEG'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VCOMASSE'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMV04'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTIPI'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTCGRU'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTSGRU'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMIS_EXTRA'
        ReadOnly = True
        Visible = True
      end>
  end
  object Src_DivDup: TDataSource
    DataSet = Tb_DivDup
    Left = 576
    Top = 40
  end
  object Tb_DivDup: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = copiar
    BeforeEdit = copiar
    BeforePost = Tb_DivDupBeforePost
    AfterPost = Tb_DivDupAfterPost
    AfterDelete = copiar
    OnCalcFields = Tb_DivDupCalcFields
    Left = 544
    Top = 88
    object Tb_DivDupDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'DESD'
      Size = 4
    end
    object Tb_DivDupVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Tb_DivDupVALOR_ACRES: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'VALOR_ACRES'
    end
    object Tb_DivDupDTVCTO: TDateField
      FieldName = 'DTVCTO'
    end
    object Tb_DivDupDESCFIN: TFloatField
      FieldName = 'DESCFIN'
    end
    object Tb_DivDupDTDESCFIN: TDateField
      FieldName = 'DTDESCFIN'
    end
    object Tb_DivDupNOMBCO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMBCO'
      Size = 60
      Calculated = True
    end
    object Tb_DivDupDESCANT: TFloatField
      FieldName = 'DESCANT'
    end
    object Tb_DivDupTARBAN: TFloatField
      FieldName = 'TARBAN'
    end
    object Tb_DivDupICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Tb_DivDupFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object Tb_DivDupVALSEG: TFloatField
      FieldName = 'VALSEG'
    end
    object Tb_DivDupTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object Tb_DivDupPERCENT: TFloatField
      FieldName = 'PERCENT'
    end
    object Tb_DivDupCODBCO: TFloatField
      FieldName = 'CODBCO'
    end
  end
end
