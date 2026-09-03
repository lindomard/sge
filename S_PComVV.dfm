object Frm_PComVV: TFrm_PComVV
  Left = 338
  Top = 199
  Width = 736
  Height = 451
  Caption = 'Pesquisa de Pedidos no arquivo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 187
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 156
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Data Final:'
    end
    object lbl_codcli: TLabel
      Left = 32
      Top = 27
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 68
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
    object Label4: TLabel
      Left = 169
      Top = 68
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
    object Label5: TLabel
      Left = 43
      Top = 86
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
    object Label12: TLabel
      Left = 497
      Top = 0
      Width = 230
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipo Pedido'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -6
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 165
      Top = 152
      Width = 140
      Height = 30
      Caption = '&Atualizar'
      TabOrder = 0
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
    object mdt1: TMaskEdit
      Left = 81
      Top = 6
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = mdt1Exit
    end
    object mdt2: TMaskEdit
      Left = 221
      Top = 6
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = mdt2Exit
    end
    object CODCLI: TEdit
      Left = 81
      Top = 24
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 141
      Top = 24
      Width = 356
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 80
      Top = 49
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object chave_ini: TEdit
      Left = 80
      Top = 65
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = chave_iniExit
    end
    object chave_fin: TEdit
      Left = 249
      Top = 65
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnExit = chave_finExit
    end
    object edt_valor: TEdit
      Left = 80
      Top = 83
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnExit = edt_valorExit
      OnKeyPress = edt_valorKeyPress
    end
    object RG_TIPOPED: TCheckListBox
      Left = 496
      Top = 13
      Width = 232
      Height = 172
      Cursor = crHandPoint
      Hint = 'Emitir Somente Os Selecionados'
      Color = clSkyBlue
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -6
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        'Or'#231'amento'
        'Venda Normal'
        'Simples Remessa'
        'Devolu'#231#227'o a Fornecedor'
        'Remessa p/Troca'
        'Transferencia de Mercadorias'
        'Remessa p/Beneficiamento'
        'Remessa p/Venda(Vda.Fora do Estab.)'
        'Devolu'#231#227'o Cliente(Entrada) Normal'
        'Emprestimo de Mercadorias'
        'Nota Complementar'
        'Remessa Para Consigna'#231#245'es'
        'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
        'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
        'Venda Mercadoria Consignada'
        'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
        'Todos')
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = lbOwnerDrawFixed
      TabOrder = 9
      OnClick = RG_TIPOPEDClick
    end
    object CB_DATAENTPEDIDO: TCheckBox
      Left = 296
      Top = 6
      Width = 198
      Height = 17
      Caption = 'Pesquisa na Data de Entrega'
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 379
    Width = 728
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
    Top = 187
    Width = 728
    Height = 192
    Align = alClient
    Caption = 'Itens pesquisados: (Click duplo marca/desmarca selec'#227'o)'
    TabOrder = 2
    object STG_PED: TStringGrid
      Left = 2
      Top = 15
      Width = 724
      Height = 175
      Align = alClient
      ColCount = 18
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
      OnDblClick = STG_PEDDblClick
      OnDrawCell = STG_PEDDrawCell
      ColWidths = (
        29
        55
        34
        74
        82
        217
        71
        100
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
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATDOC,'
      '          P1TOTALL,P1COMIS,P1TIPO,'
      '          P1ICMSR,'
      '          P1VALFRE,'
      '          P1SEMCOM,'
      '          P1VLRACRE,'
      '          P1COMIST,'
      '          P1COMISS,'
      '          P1COMASSE,'
      '          P1CODVEN,P1CODV02,P1CODV03,P1CODASSE,'
      '          P1COMV02,P1COMV03,P1DESCFIN,'
      '          P1CODCLI,CRAZAO'
      '          from CADP01,CADCLI'
      '         where P1CODEMP is null and'
      '         CCODCLI=P1CODCLI'
      '')
    Top = 40
    object Qr_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_PedP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_PedP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedP1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Qr_PedP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_PedP1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_PedP1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_PedP1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_PedP1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Qr_PedP1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Qr_PedP1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Qr_PedP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_PedP1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Qr_PedP1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Qr_PedP1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Qr_PedP1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Qr_PedP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_PedP1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_PedP1COMASSE: TFloatField
      FieldName = 'P1COMASSE'
      Origin = 'SG_ASSOC.CADP01.P1COMASSE'
    end
    object Qr_PedP1CODASSE: TFloatField
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Qr_PedP1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Qr_Pedvalores_adicionais: TFloatField
      FieldName = 'valores_adicionais'
    end
  end
end
