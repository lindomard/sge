object Frm_DapAgru: TFrm_DapAgru
  Left = 356
  Top = 144
  Width = 767
  Height = 521
  Caption = 'Agrupamento de Duplicatas a Pagar'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object STG1: TStringGrid
    Left = 0
    Top = 123
    Width = 759
    Height = 190
    Align = alClient
    ColCount = 21
    DefaultRowHeight = 15
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 0
    OnDblClick = STG1DblClick
    OnDrawCell = STG1DrawCell
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 759
    Height = 123
    Align = alTop
    Caption = 'Sele'#231#227'o de duplicatas'
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 17
      Width = 78
      Height = 13
      Caption = 'Duplicata Inicial:'
    end
    object Label3: TLabel
      Left = 224
      Top = 15
      Width = 73
      Height = 13
      Caption = 'Duplicata Final:'
    end
    object Label2: TLabel
      Left = 390
      Top = 17
      Width = 103
      Height = 13
      Caption = 'Somente as Parcelas:'
    end
    object Label4: TLabel
      Left = 7
      Top = 38
      Width = 110
      Height = 13
      Caption = 'Emitidas no Per'#237'odo de'
    end
    object Label5: TLabel
      Left = 253
      Top = 37
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 60
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label54: TLabel
      Left = 664
      Top = 8
      Width = 91
      Height = 57
      AutoSize = False
      Caption = 'V'#225'lido somente para Duplicatas em abertas'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object snb_marcar: TSpeedButton
      Left = 234
      Top = 82
      Width = 131
      Height = 25
      Caption = 'Marcar Todos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = snb_marcarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 379
      Top = 82
      Width = 131
      Height = 25
      Caption = 'Desmarcar Todos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object NUMDUPI: TEdit
      Left = 127
      Top = 13
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = NUMDUPIEnter
      OnExit = NUMDUPIExit
    end
    object NUMDUPF: TEdit
      Left = 301
      Top = 13
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = NUMDUPIEnter
      OnExit = NUMDUPFExit
    end
    object PARC: TEdit
      Left = 495
      Top = 15
      Width = 32
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = NUMDUPIEnter
    end
    object Edit1: TEdit
      Left = 532
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Em branco Todas'
    end
    object MDT1: TMaskEdit
      Left = 127
      Top = 34
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnEnter = NUMDUPIEnter
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 301
      Top = 34
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 5
      Text = '  /  /    '
      OnEnter = NUMDUPIEnter
      OnExit = MDT2Exit
    end
    object CODFOR: TEdit
      Left = 127
      Top = 56
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnEnter = NUMDUPIEnter
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 212
      Top = 56
      Width = 369
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
      Text = 'Todos...'
    end
    object bbAplicar: TBitBtn
      Left = 5
      Top = 82
      Width = 200
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 8
      OnClick = bbAplicarClick
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
    object bbSair: TBitBtn
      Left = 546
      Top = 82
      Width = 200
      Height = 25
      Caption = '&Sair'
      TabOrder = 9
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
    object cb_todos: TCheckBox
      Left = 4
      Top = 105
      Width = 51
      Height = 17
      Caption = 'Todas'
      TabOrder = 10
      OnClick = cb_todosClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 313
    Width = 759
    Height = 177
    Align = alBottom
    Caption = 'Manter os Seguintes dados:'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 755
      Height = 160
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Alteraveis'
        object Label7: TLabel
          Left = 28
          Top = 3
          Width = 40
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label8: TLabel
          Left = 144
          Top = 5
          Width = 119
          Height = 13
          Caption = 'Desdobramento/Parcela:'
        end
        object Label9: TLabel
          Left = 336
          Top = 4
          Width = 97
          Height = 13
          Caption = 'Tipo do Documento:'
        end
        object Label10: TLabel
          Left = 7
          Top = 23
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label12: TLabel
          Left = 29
          Top = 42
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label43: TLabel
          Left = 2
          Top = 65
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label60: TLabel
          Left = 2
          Top = 115
          Width = 102
          Height = 13
          Caption = 'Quantidade Parcelas:'
        end
        object Label61: TLabel
          Left = 156
          Top = 115
          Width = 94
          Height = 13
          Caption = 'N'#250'mero da Parcela:'
        end
        object NUMERO: TEdit
          Left = 70
          Top = 4
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object DESD: TEdit
          Left = 268
          Top = 4
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object CB_DUP: TComboBox
          Left = 439
          Top = -1
          Width = 139
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Cheque Devolvido'
            'Cheque S/fundos'
            'Juros'
            'Nota Promissoria'
            'Nota de Credito'
            'Cheques Pre-Datado'
            'Requisi'#231#227'o'
            'Outros')
        end
        object CODFOR_DUP: TEdit
          Left = 70
          Top = 22
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = CODFOR_DUPExit
          OnKeyPress = CODFOR_DUPKeyPress
        end
        object NOMFOR_DUP: TEdit
          Left = 136
          Top = 22
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
        end
        object CODBCO: TEdit
          Left = 70
          Top = 40
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object NOMBCO: TEdit
          Left = 136
          Top = 40
          Width = 251
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
        end
        object bbAgrupar: TBitBtn
          Left = 393
          Top = 50
          Width = 350
          Height = 27
          Caption = '&Agrupar'
          TabOrder = 11
          OnClick = bbAgruparClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
            FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
            FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
            FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
            00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
            55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
            5555777577775755555550FBFB0555555555575FFF7555555555570000755555
            5555557777555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object RG_BOLETO: TRadioGroup
          Left = 394
          Top = 20
          Width = 348
          Height = 30
          Columns = 2
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Com Boleto'
            'Sem Boleto')
          ParentCtl3D = False
          TabOrder = 8
        end
        object QTDPARC: TEdit
          Left = 106
          Top = 109
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnExit = QTDPARCExit
        end
        object NUMPARC: TEdit
          Left = 260
          Top = 109
          Width = 48
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = NUMPARCExit
        end
        object OBS: TMemo
          Left = 69
          Top = 58
          Width = 318
          Height = 41
          Ctl3D = False
          Lines.Strings = (
            'OBS')
          ParentCtl3D = False
          TabOrder = 7
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dados Contantes'
        ImageIndex = 1
        object Label15: TLabel
          Left = 2
          Top = 6
          Width = 83
          Height = 13
          Caption = 'Data de Emiss'#227'o:'
        end
        object Label16: TLabel
          Left = 191
          Top = 7
          Width = 100
          Height = 13
          Caption = 'Data de Vencimento:'
        end
        object Label11: TLabel
          Left = 397
          Top = 7
          Width = 83
          Height = 13
          Caption = 'Data de inclusao:'
        end
        object DTEMIS: TStaticText
          Left = 89
          Top = 4
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 0
        end
        object DTVCTO: TStaticText
          Left = 295
          Top = 4
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 1
        end
        object DTINC: TStaticText
          Left = 501
          Top = 4
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 2
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Valores'
        ImageIndex = 2
        object Label18: TLabel
          Left = 34
          Top = 5
          Width = 90
          Height = 13
          Caption = 'Valor da Duplicata:'
        end
        object Label26: TLabel
          Left = 22
          Top = 25
          Width = 101
          Height = 13
          Caption = 'Desconto Financeiro:'
        end
        object Label41: TLabel
          Left = 0
          Top = 39
          Width = 125
          Height = 13
          Caption = 'Data Lim.Desc.Financeiro:'
        end
        object VALOR: TStaticText
          Left = 128
          Top = 4
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 0
        end
        object VALDES: TStaticText
          Left = 128
          Top = 22
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 1
        end
        object DTDESCF: TStaticText
          Left = 128
          Top = 40
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 2
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Fluxo de Caixa'
        ImageIndex = 3
        object Label44: TLabel
          Left = 6
          Top = 5
          Width = 96
          Height = 13
          Caption = 'Data de Referencia:'
        end
        object Label45: TLabel
          Left = 208
          Top = 5
          Width = 67
          Height = 13
          Caption = 'Data Prevista:'
        end
        object Label46: TLabel
          Left = 410
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Valor Previsto:'
        end
        object Label47: TLabel
          Left = 31
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label48: TLabel
          Left = 21
          Top = 41
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label49: TLabel
          Left = 66
          Top = 59
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label50: TLabel
          Left = 77
          Top = 76
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label51: TLabel
          Left = 45
          Top = 91
          Width = 58
          Height = 13
          Caption = 'Documento:'
        end
        object Label52: TLabel
          Left = 50
          Top = 108
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label53: TLabel
          Left = 578
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Natureza:'
        end
        object FC_DATAREF: TStaticText
          Left = 107
          Top = 5
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 0
        end
        object FC_DATAP: TStaticText
          Left = 309
          Top = 5
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '/  /'
          TabOrder = 1
        end
        object FC_VALORP: TStaticText
          Left = 481
          Top = 4
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 2
        end
        object FC_CODDEP: TStaticText
          Left = 107
          Top = 22
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 3
        end
        object FC_NOMDEP: TStaticText
          Left = 197
          Top = 22
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 4
        end
        object FC_CODCC: TStaticText
          Left = 107
          Top = 39
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 5
        end
        object FC_NOMCC: TStaticText
          Left = 197
          Top = 39
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 6
        end
        object FC_CODBCO: TStaticText
          Left = 107
          Top = 56
          Width = 90
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 7
        end
        object FC_NOMBCO: TStaticText
          Left = 197
          Top = 56
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 8
        end
        object FC_TIPO: TStaticText
          Left = 107
          Top = 73
          Width = 21
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 9
        end
        object FC_NOME: TStaticText
          Left = 197
          Top = 73
          Width = 322
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 10
        end
        object FC_CODIGO: TStaticText
          Left = 129
          Top = 73
          Width = 68
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 11
        end
        object FC_DOC: TStaticText
          Left = 107
          Top = 89
          Width = 159
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 12
        end
        object FC_DESCRICAO: TStaticText
          Left = 107
          Top = 106
          Width = 412
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 13
        end
        object FC_NATDC: TStaticText
          Left = 627
          Top = 4
          Width = 32
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 14
        end
      end
    end
  end
  object Qr_Dap: TQuery
    OnCalcFields = Qr_DapCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADDAP where CACODEMP is null')
    Left = 648
    Top = 56
    object Qr_DapCACODEMP: TFloatField
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Qr_DapCADESD: TStringField
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 2
    end
    object Qr_DapCACODFOR: TFloatField
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Qr_DapCADTEMIS: TDateTimeField
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
    end
    object Qr_DapCAVALOR: TFloatField
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Qr_DapCADUP: TFloatField
      FieldName = 'CADUP'
      Origin = 'SG_ASSOC.CADDAP.CADUP'
    end
    object Qr_DapCADTVCTO: TDateTimeField
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
    end
    object Qr_DapCASTATUS: TFloatField
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADDAP.CASTATUS'
    end
    object Qr_DapCAVALDES: TFloatField
      FieldName = 'CAVALDES'
      Origin = 'SG_ASSOC.CADDAP.CAVALDES'
    end
    object Qr_DapCADTDESC: TDateTimeField
      FieldName = 'CADTDESC'
      Origin = 'SG_ASSOC.CADDAP.CADTDESC'
    end
    object Qr_DapCADESC: TFloatField
      FieldName = 'CADESC'
      Origin = 'SG_ASSOC.CADDAP.CADESC'
    end
    object Qr_DapCADEVOL: TFloatField
      FieldName = 'CADEVOL'
      Origin = 'SG_ASSOC.CADDAP.CADEVOL'
    end
    object Qr_DapCAJUROS: TFloatField
      FieldName = 'CAJUROS'
      Origin = 'SG_ASSOC.CADDAP.CAJUROS'
    end
    object Qr_DapCABANCO: TFloatField
      FieldName = 'CABANCO'
      Origin = 'SG_ASSOC.CADDAP.CABANCO'
    end
    object Qr_DapCALOTE: TFloatField
      FieldName = 'CALOTE'
      Origin = 'SG_ASSOC.CADDAP.CALOTE'
    end
    object Qr_DapCACHAVEP: TFloatField
      FieldName = 'CACHAVEP'
      Origin = 'SG_ASSOC.CADDAP.CACHAVEP'
    end
    object Qr_DapCADTBX: TDateTimeField
      FieldName = 'CADTBX'
      Origin = 'SG_ASSOC.CADDAP.CADTBX'
    end
    object Qr_DapCADTPAG: TDateTimeField
      FieldName = 'CADTPAG'
      Origin = 'SG_ASSOC.CADDAP.CADTPAG'
    end
    object Qr_DapCAVALPAG: TFloatField
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Qr_DapCAUSRBAI: TFloatField
      FieldName = 'CAUSRBAI'
      Origin = 'SG_ASSOC.CADDAP.CAUSRBAI'
    end
    object Qr_DapCACAIXA: TFloatField
      FieldName = 'CACAIXA'
      Origin = 'SG_ASSOC.CADDAP.CACAIXA'
    end
    object Qr_DapCACODLDR: TFloatField
      FieldName = 'CACODLDR'
      Origin = 'SG_ASSOC.CADDAP.CACODLDR'
    end
    object Qr_DapCACODUSR: TFloatField
      FieldName = 'CACODUSR'
      Origin = 'SG_ASSOC.CADDAP.CACODUSR'
    end
    object Qr_DapCADTALT: TDateTimeField
      FieldName = 'CADTALT'
      Origin = 'SG_ASSOC.CADDAP.CADTALT'
    end
    object Qr_DapCAHRALT: TStringField
      FieldName = 'CAHRALT'
      Origin = 'SG_ASSOC.CADDAP.CAHRALT'
      Size = 10
    end
    object Qr_DapCANUMERO: TFloatField
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Qr_DapCALOTSEQ_CP: TFloatField
      FieldName = 'CALOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_CP'
    end
    object Qr_DapCANOSNUM: TStringField
      FieldName = 'CANOSNUM'
      Origin = 'SG_ASSOC.CADDAP.CANOSNUM'
      Size = 30
    end
    object Qr_DapCALOTSEQ_LB: TFloatField
      FieldName = 'CALOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_LB'
    end
    object Qr_DapCALOTSEQ_FC: TFloatField
      FieldName = 'CALOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_FC'
    end
    object Qr_DapCATEMBOL: TFloatField
      FieldName = 'CATEMBOL'
      Origin = 'SG_ASSOC.CADDAP.CATEMBOL'
    end
    object Qr_DapCALEMAT: TFloatField
      FieldName = 'CALEMAT'
      Origin = 'SG_ASSOC.CADDAP.CALEMAT'
    end
    object Qr_Dapnomfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfor'
      Size = 40
      Calculated = True
    end
    object Qr_Dapnombco: TStringField
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_DapCACODCTA: TFloatField
      FieldName = 'CACODCTA'
      Origin = 'SG_ASSOC.CADDAP.CACODCTA'
    end
    object Qr_DapCANOMCTA: TStringField
      FieldName = 'CANOMCTA'
      Origin = 'SG_ASSOC.CADDAP.CANOMCTA'
      Size = 40
    end
    object Qr_DapCACODCC: TStringField
      FieldName = 'CACODCC'
      Origin = 'SG_ASSOC.CADDAP.CACODCC'
      Size = 5
    end
    object Qr_DapCANOMCC: TStringField
      FieldName = 'CANOMCC'
      Origin = 'SG_ASSOC.CADDAP.CANOMCC'
      Size = 40
    end
    object Qr_DapCANATDC: TStringField
      FieldName = 'CANATDC'
      Origin = 'SG_ASSOC.CADDAP.CANATDC'
      Size = 1
    end
    object Qr_DapCACODDEP: TStringField
      FieldName = 'CACODDEP'
      Origin = 'SG_ASSOC.CADDAP.CACODDEP'
      Size = 5
    end
    object Qr_DapCANOMDEP: TStringField
      FieldName = 'CANOMDEP'
      Origin = 'SG_ASSOC.CADDAP.CANOMDEP'
      Size = 40
    end
    object Qr_DapCADESCMV: TStringField
      FieldName = 'CADESCMV'
      Origin = 'SG_ASSOC.CADDAP.CADESCMV'
      Size = 40
    end
    object Qr_DapCASEQ: TFloatField
      FieldName = 'CASEQ'
      Origin = 'SG_ASSOC.CADDAP.CASEQ'
    end
    object Qr_DapCADTINC: TDateTimeField
      FieldName = 'CADTINC'
      Origin = 'SG_ASSOC.CADDAP.CADTINC'
    end
    object Qr_DapCAQTDPARC: TFloatField
      FieldName = 'CAQTDPARC'
      Origin = 'SG_ASSOC.CADDAP.CAQTDPARC'
    end
    object Qr_DapCANUMPARC: TFloatField
      FieldName = 'CANUMPARC'
      Origin = 'SG_ASSOC.CADDAP.CANUMPARC'
    end
    object Qr_DapCAOBS: TMemoField
      FieldName = 'CAOBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Qr_DapCAID_NEW: TFloatField
      FieldName = 'CAID_NEW'
    end
  end
end
