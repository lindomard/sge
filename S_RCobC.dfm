object Frm_RCobC: TFrm_RCobC
  Left = 0
  Top = 108
  Width = 736
  Height = 375
  Caption = 'Pesquisar Titulos no Arquivo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 13
      Caption = 'Procurar por:'
    end
    object Label32: TLabel
      Left = 405
      Top = 7
      Width = 99
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Listar Somente'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object CB_TIPO: TComboBox
      Left = 89
      Top = 4
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_TIPOExit
      Items.Strings = (
        'Data de Vencimento'
        'Data de Emiss'#227'o'
        'C'#243'digo Cliente'
        'Numero'
        'Valor')
    end
    object NOME: TMaskEdit
      Left = 238
      Top = 4
      Width = 164
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnKeyPress = NOMEKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 628
      Top = 2
      Width = 89
      Height = 23
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = BitBtn1Click
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
    object CB_SITPAG: TComboBox
      Left = 509
      Top = 5
      Width = 116
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = 'N'#227'o Pagas'
      Items.Strings = (
        'Todas'
        'Pagas'
        'N'#227'o Pagas')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 720
    Height = 41
    Align = alBottom
    TabOrder = 1
    object SAIR: TBitBtn
      Left = 500
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Sair'
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object SELECIONAR: TBitBtn
      Left = 5
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Selecionar Todos'
      TabOrder = 1
      OnClick = SELECIONARClick
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
    object DESMARCAR: TBitBtn
      Left = 256
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Desmarcar todos'
      TabOrder = 2
      OnClick = DESMARCARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 31
    Width = 720
    Height = 265
    Align = alClient
    Caption = 'Itens pesquisados: (Click duplo marca/desmarca selec'#227'o)'
    TabOrder = 2
    object STG_DUP: TStringGrid
      Left = 2
      Top = 15
      Width = 716
      Height = 248
      Align = alClient
      ColCount = 10
      DefaultRowHeight = 15
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnDblClick = STG_DUPDblClick
      ColWidths = (
        29
        55
        34
        91
        77
        217
        82
        100
        77
        87)
    end
  end
  object Tb_Dup: TQuery
    OnCalcFields = Tb_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
      '          CRDTVCTO,CRVALOR,CRJURD,CRCOMVEN,CRAZAO'
      '          from CADDAR,CADCLI'
      '         where CRCODEMP is null and'
      '         CCODCLI=CRCODCLI'
      '')
    Left = 520
    Top = 8
    object Tb_DupCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DupCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Tb_DupCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_DupCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Tb_DupCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Tb_DupCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Tb_DupCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Tb_DupCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
    end
    object Tb_DupCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_Dupatraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'atraso'
      Calculated = True
    end
  end
end
