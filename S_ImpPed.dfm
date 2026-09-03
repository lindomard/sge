object Frm_ImpPed: TFrm_ImpPed
  Left = 3
  Top = 110
  Width = 794
  Height = 420
  Caption = 'Resume as Mercadorias Vendidas e Envia para Ordem de Produ'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 106
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 105
      Height = 13
      Caption = 'C'#243'digo do Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 54
      Top = 25
      Width = 64
      Height = 13
      Caption = 'Per'#237'odo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 229
      Top = 28
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 37
      Top = 44
      Width = 79
      Height = 13
      Caption = 'Chave Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 205
      Top = 44
      Width = 72
      Height = 13
      Caption = 'Chave Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODCLI: TEdit
      Left = 121
      Top = 5
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = CODCLIEnter
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 197
      Top = 5
      Width = 278
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 121
      Top = 23
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 278
      Top = 23
      Width = 78
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object APLICAR: TBitBtn
      Left = 16
      Top = 71
      Width = 116
      Height = 25
      HelpType = htKeyword
      Caption = '&Aplicar'
      TabOrder = 4
      OnClick = APLICARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 548
      Top = 71
      Width = 116
      Height = 25
      HelpType = htKeyword
      Caption = '&Sair'
      TabOrder = 5
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
      NumGlyphs = 2
    end
    object CHAVEI: TEdit
      Left = 121
      Top = 41
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnEnter = CODCLIEnter
      OnExit = CHAVEIExit
      OnKeyPress = CODCLIKeyPress
    end
    object CHAVEF: TEdit
      Left = 278
      Top = 41
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnEnter = CODCLIEnter
      OnExit = CHAVEFExit
      OnKeyPress = CODCLIKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 778
    Height = 228
    Align = alClient
    TabOrder = 1
    object STG1: TStringGrid
      Left = 1
      Top = 1
      Width = 776
      Height = 226
      Align = alClient
      ColCount = 9
      DefaultRowHeight = 15
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      TabOrder = 0
      OnDblClick = STG1DblClick
      OnDrawCell = STG1DrawCell
      ColWidths = (
        28
        47
        26
        71
        261
        71
        109
        93
        48)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 334
    Width = 778
    Height = 48
    Align = alBottom
    TabOrder = 2
    object SELECAO: TBitBtn
      Left = 4
      Top = 1
      Width = 115
      Height = 46
      Caption = 'Selecionar &Todos'
      Enabled = False
      TabOrder = 0
      OnClick = SELECAOClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CANCELAR: TBitBtn
      Left = 332
      Top = 1
      Width = 115
      Height = 46
      Caption = '&Cancelar Sele'#231#227'o'
      TabOrder = 1
      OnClick = CANCELARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object FATURAR: TBitBtn
      Left = 612
      Top = 1
      Width = 115
      Height = 46
      Caption = '&Importar'
      Enabled = False
      TabOrder = 2
      OnClick = FATURARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDUND,PDPRECO1,P2CODPRO,P2LOTE,P2DTVCTO,PDSIT,'
      '       PDLISTA,PDTABICM,PDCODFOR,sum(P2QTD) as QUANT'
      '       from CADP02,CADP01,CADPRO where'
      '       P2CODEMP=1 and'
      '       P1CODEMP=P2CODEMP and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM'
      '       and PDCODEMP=P2CODEMP and PDCODPRO=P2CODPRO'
      '       and P1STATUS<8'
      'GROUP BY PDNOME,PDUND,PDPRECO1,P2CODPRO,P2LOTE,'
      '      P2DTVCTO,PDSIT,PDLISTA,PDTABICM,PDCODFOR'
      ''
      '')
    Left = 424
    Top = 8
    object Qr_PedPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PedPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_PedP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PedP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_PedP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_PedPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_PedPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_PedPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_PedPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_PedQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
end
