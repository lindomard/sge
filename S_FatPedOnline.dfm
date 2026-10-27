object Frm_FatPedOnline: TFrm_FatPedOnline
  Left = 136
  Top = 166
  BorderStyle = bsSingle
  Caption = 'Faturar Pedido Eletronico'
  ClientHeight = 477
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_Itens: TDBGrid
    Left = 0
    Top = 266
    Width = 1100
    Height = 151
    Align = alBottom
    DataSource = Src_Itens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'P2CODPRO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMPRO'
        Title.Alignment = taCenter
        Width = 381
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PDESC01'
        Title.Alignment = taCenter
        Title.Caption = '% Desc 01'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PDESC02'
        Title.Alignment = taCenter
        Title.Caption = '% Desc 02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PDESC03'
        Title.Alignment = taCenter
        Title.Caption = '% Desc 03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PU'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Unitario'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade '
        Width = 90
        Visible = True
      end>
  end
  object DBGrid_cab: TDBGrid
    Left = 0
    Top = 123
    Width = 1100
    Height = 143
    Align = alClient
    DataSource = src_cab
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid_cabDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Selecionado'
        Title.Alignment = taCenter
        Title.Caption = 'OK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVE'
        Title.Alignment = taCenter
        Title.Caption = 'Chave'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLI'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCLI'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social(nome do cliente)'
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTLIQ'
        Title.Alignment = taCenter
        Title.Caption = 'Total Liquido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTBRU'
        Title.Alignment = taCenter
        Title.Caption = 'Total Bruto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTDES'
        Title.Alignment = taCenter
        Title.Caption = 'Total Desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_EXCLUSAO'
        Title.Alignment = taCenter
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1FPGTO'
        Title.Alignment = taCenter
        Title.Caption = 'Fpgto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPV'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo PV'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 66
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 48
      Top = 9
      Width = 32
      Height = 13
      Caption = 'Data..:'
    end
    object Label2: TLabel
      Left = 208
      Top = 9
      Width = 6
      Height = 13
      Caption = #224
    end
    object edt_datini: TDateEdit
      Left = 80
      Top = 5
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 224
      Top = 5
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnAbrir: TBitBtn
      Left = 754
      Top = 6
      Width = 161
      Height = 25
      Caption = 'Abrir'
      TabOrder = 2
      OnClick = btnAbrirClick
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
    object btnMarcaTodas: TBitBtn
      Left = 16
      Top = 28
      Width = 100
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = btnMarcaTodasClick
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
    object bbDesmarcar: TBitBtn
      Left = 115
      Top = 28
      Width = 100
      Height = 25
      Caption = 'Desmarcar'
      TabOrder = 4
      OnClick = bbDesmarcarClick
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
      NumGlyphs = 2
    end
    object bbFaturar: TBitBtn
      Left = 239
      Top = 28
      Width = 100
      Height = 25
      Caption = 'Faturar'
      TabOrder = 5
      OnClick = bbFaturarClick
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
    object btnExcluir: TBitBtn
      Left = 338
      Top = 28
      Width = 100
      Height = 25
      Caption = 'Excluir'
      TabOrder = 6
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 955
      Top = 36
      Width = 100
      Height = 25
      Caption = 'Sair'
      TabOrder = 7
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
    object bbVisualizar: TBitBtn
      Left = 439
      Top = 28
      Width = 116
      Height = 25
      Caption = 'Visualizar Pedido'
      TabOrder = 8
      OnClick = bbVisualizarClick
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
    object cbFaturarPcoExtra: TCheckBox
      Left = 936
      Top = 9
      Width = 113
      Height = 17
      Caption = 'Faturar Pre'#231'o Extra'
      TabOrder = 9
      OnClick = cbFaturarPcoExtraClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 417
    Width = 1100
    Height = 60
    Align = alBottom
    Caption = 'Observa'#231'oes:'
    TabOrder = 3
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 1096
      Height = 43
      Align = alClient
      DataField = 'OBS'
      DataSource = src_cab
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 66
    Width = 1100
    Height = 57
    Align = alTop
    Caption = 'Configura'#231#245'es:'
    TabOrder = 4
    object Label9: TLabel
      Left = 180
      Top = 11
      Width = 116
      Height = 13
      Caption = 'Ordem de Impressao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 338
      Top = 11
      Width = 75
      Height = 13
      Caption = 'Agrupamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 501
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Modelo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 661
      Top = 11
      Width = 112
      Height = 13
      Caption = 'Quantidade de Vias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 787
      Top = 12
      Width = 110
      Height = 13
      Caption = 'Impressora Padr'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object cb_fatautomaticamente: TCheckBox
      Left = 8
      Top = 16
      Width = 139
      Height = 17
      Caption = 'Faturar Automaticamente'
      TabOrder = 0
      OnClick = cb_fatautomaticamenteClick
    end
    object CB_LSEPONLINE: TCheckBox
      Left = 9
      Top = 34
      Width = 168
      Height = 17
      Caption = 'Lista Separa'#231#227'o on-line'
      TabOrder = 1
      OnClick = CB_LSEPONLINEClick
    end
    object cb_ordem_impressao: TComboBox
      Left = 180
      Top = 28
      Width = 150
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'N'#250'mero do item'
      Visible = False
      OnClick = cb_ordem_impressaoClick
      Items.Strings = (
        'N'#250'mero do item'
        'Descricao do produto'
        'codigo do produto'
        'grupo + sub-grupo + descricao'
        'grupo + sub-grupo + codigo'
        'grupo + codigo'
        'grupo + descricao'
        'Secao')
    end
    object cb_agrupamento: TComboBox
      Left = 338
      Top = 27
      Width = 150
      Height = 21
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 3
      Text = 'Sem Agrupamento'
      Visible = False
      OnClick = cb_agrupamentoClick
      Items.Strings = (
        'Grupo'
        'Grupo + sub-grupo'
        'Ambiente'
        'Sem Agrupamento')
    end
    object cb_modelo: TComboBox
      Left = 496
      Top = 27
      Width = 150
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'Modelo 01 (pagina inteira)'
      Visible = False
      OnClick = cb_modeloClick
      Items.Strings = (
        'Modelo 01 (pagina inteira)'
        'Modelo 02 (meia pagina)'
        'Modelo 03 (mini impressora)')
    end
    object edt_qtdvias: TSpinEdit
      Left = 661
      Top = 27
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 1
      Visible = False
      OnClick = edt_qtdviasClick
    end
    object cb_impressora: TComboBox
      Left = 787
      Top = 28
      Width = 150
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = 'cb_impressora'
      Visible = False
    end
  end
  object src_cab: TDataSource
    DataSet = cds_cab
    OnDataChange = src_cabDataChange
    Left = 216
    Top = 176
  end
  object Src_Itens: TDataSource
    DataSet = Qry_Itens
    Left = 216
    Top = 288
  end
  object Qry_Itens: TQuery
    OnCalcFields = Qry_ItensCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from expcadp02')
    Left = 288
    Top = 288
    object Qry_ItensP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.EXPCADP02.P2CODEMP'
    end
    object Qry_ItensP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.EXPCADP02.P2LOTSEQ'
    end
    object Qry_ItensP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.EXPCADP02.P2CHAVE'
    end
    object Qry_ItensP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.EXPCADP02.P2CODPRO'
    end
    object Qry_ItensP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.EXPCADP02.P2ITEM'
    end
    object Qry_ItensP2PCO_TAB: TFloatField
      FieldName = 'P2PCO_TAB'
      Origin = 'SG_ASSOC.EXPCADP02.P2PCO_TAB'
    end
    object Qry_ItensP2PDESC01: TFloatField
      DisplayLabel = '% desc 01'
      FieldName = 'P2PDESC01'
      Origin = 'SG_ASSOC.EXPCADP02.P2PDESC01'
    end
    object Qry_ItensP2PDESC02: TFloatField
      DisplayLabel = '% desc 02'
      FieldName = 'P2PDESC02'
      Origin = 'SG_ASSOC.EXPCADP02.P2PDESC02'
    end
    object Qry_ItensP2PDESC03: TFloatField
      DisplayLabel = '% desc 03'
      FieldName = 'P2PDESC03'
      Origin = 'SG_ASSOC.EXPCADP02.P2PDESC03'
    end
    object Qry_ItensP2PU: TFloatField
      DisplayLabel = 'P'#231'o Unitario'
      FieldName = 'P2PU'
      Origin = 'SG_ASSOC.EXPCADP02.P2PU'
    end
    object Qry_ItensP2QTD: TFloatField
      DisplayLabel = 'Quantidade/'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.EXPCADP02.P2QTD'
    end
    object Qry_ItensP2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.EXPCADP02.P2STATUS'
    end
    object Qry_ItensP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.EXPCADP02.P2ORDEM'
    end
    object Qry_ItensNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 40
      Calculated = True
    end
    object Qry_ItensP2PROMO_ID: TFloatField
      FieldName = 'P2PROMO_ID'
    end
    object Qry_ItensP2PROMO_ID_ANO: TFloatField
      FieldName = 'P2PROMO_ID_ANO'
    end
  end
  object cds_cab: TClientDataSet
    Aggregates = <>
    PacketRecords = 15
    Params = <>
    Left = 184
    Top = 176
    object cds_cabOK: TBooleanField
      FieldName = 'OK'
    end
    object cds_cabCHAVE: TIntegerField
      FieldName = 'CHAVE'
    end
    object cds_cabCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object cds_cabNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Size = 60
    end
    object cds_cabCODBCO: TIntegerField
      FieldName = 'CODBCO'
    end
    object cds_cabCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object cds_cabDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_cabTOTBRU: TFloatField
      FieldName = 'TOTBRU'
    end
    object cds_cabTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object cds_cabTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object cds_cabSelecionado: TStringField
      FieldName = 'Selecionado'
      Size = 1
    end
    object cds_cabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 2000
    end
    object cds_cabMOTIVO_EXCLUSAO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO_EXCLUSAO'
      Size = 200
    end
    object cds_cabCODPV: TStringField
      FieldName = 'CODPV'
      Size = 10
    end
    object cds_cabFRETE: TIntegerField
      FieldName = 'FRETE'
    end
    object cds_cabP1FPGTO: TFloatField
      FieldName = 'P1FPGTO'
    end
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 344
    object tb_ped02_preP2ICMS_PERC: TFloatField
      FieldName = 'P2ICMS_PERC'
    end
    object tb_ped02_preP2ICMS_PPRED: TFloatField
      FieldName = 'P2ICMS_PPRED'
    end
    object tb_ped02_preP2ICMSSN_PERC: TFloatField
      FieldName = 'P2ICMSSN_PERC'
    end
    object tb_ped02_preP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object tb_ped02_preP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object tb_ped02_preP2ST_ICMSCRED: TFloatField
      FieldName = 'P2ST_ICMSCRED'
    end
    object tb_ped02_preP2ST_ICMSDEB: TFloatField
      FieldName = 'P2ST_ICMSDEB'
    end
    object tb_ped02_preP2MODBCST: TIntegerField
      FieldName = 'P2MODBCST'
    end
    object tb_ped02_preP2IPI_PERC: TFloatField
      FieldName = 'P2IPI_PERC'
    end
    object tb_ped02_preP2CST: TStringField
      FieldName = 'P2CST'
      Size = 3
    end
    object tb_ped02_preP2CSOSN_ORI: TIntegerField
      FieldName = 'P2CSOSN_ORI'
    end
    object tb_ped02_preP2CSOSN: TIntegerField
      FieldName = 'P2CSOSN'
    end
    object tb_ped02_preP2PIS_PERC: TFloatField
      FieldName = 'P2PIS_PERC'
    end
    object tb_ped02_preP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 4
    end
    object tb_ped02_preP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 4
    end
    object tb_ped02_preP2COFINS_PERC: TFloatField
      FieldName = 'P2COFINS_PERC'
    end
    object tb_ped02_preP2CONTESP: TIntegerField
      FieldName = 'P2CONTESP'
    end
    object tb_ped02_preP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object tb_ped02_preP2ICMS_PPRED_101: TFloatField
      FieldName = 'P2ICMS_PPRED_101'
    end
    object tb_ped02_preP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object tb_ped02_preP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object tb_ped02_preP2ST_ICMSCRED_101: TFloatField
      FieldName = 'P2ST_ICMSCRED_101'
    end
    object tb_ped02_preP2ST_ICMSDEB_101: TFloatField
      FieldName = 'P2ST_ICMSDEB_101'
    end
    object tb_ped02_preP2MODBCST_101: TFloatField
      FieldName = 'P2MODBCST_101'
    end
    object tb_ped02_preP2CFOP_ECF: TIntegerField
      FieldName = 'P2CFOP_ECF'
    end
    object tb_ped02_preP2CFOP_NF: TIntegerField
      FieldName = 'P2CFOP_NF'
    end
    object tb_ped02_preP2PRECO_MAXCONS: TFloatField
      FieldName = 'P2PRECO_MAXCONS'
    end
    object tb_ped02_preP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object tb_ped02_preP2CODEMP: TIntegerField
      FieldName = 'P2CODEMP'
    end
    object tb_ped02_preP2LOTSEQ: TIntegerField
      FieldName = 'P2LOTSEQ'
    end
    object tb_ped02_preP2CHAVE: TIntegerField
      FieldName = 'P2CHAVE'
    end
    object tb_ped02_preP2ORDEM: TIntegerField
      FieldName = 'P2ORDEM'
    end
    object tb_ped02_preP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object tb_ped02_preP2ITEM: TIntegerField
      FieldName = 'P2ITEM'
    end
    object tb_ped02_preP2CONS_PROPRIO: TIntegerField
      FieldName = 'P2CONS_PROPRIO'
    end
    object tb_ped02_prePDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02_preP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object tb_ped02_preP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object tb_ped02_preP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object tb_ped02_preP2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object tb_ped02_preP2DESCFIN_PERC: TFloatField
      FieldName = 'P2DESCFIN_PERC'
    end
    object tb_ped02_preP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object tb_ped02_preP2DESC_COMP: TStringField
      FieldName = 'P2DESC_COMP'
      Size = 10
    end
    object tb_ped02_preP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object tb_ped02_preP2DESC_PERC01: TFloatField
      FieldName = 'P2DESC_PERC01'
    end
    object tb_ped02_preP2DESC_PERC02: TFloatField
      FieldName = 'P2DESC_PERC02'
    end
    object tb_ped02_preP2DESC_PERC03: TFloatField
      FieldName = 'P2DESC_PERC03'
    end
    object tb_ped02_preP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object tb_ped02_preP2TIPO_PCO: TIntegerField
      FieldName = 'P2TIPO_PCO'
    end
    object tb_ped02_preP2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
    end
    object tb_ped02_preP2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
    end
    object tb_ped02_preP2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
    end
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
      Size = 15
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object tb_ped02_preP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object tb_ped02_preP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object tb_ped02_preP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object tb_ped02_preP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object tb_ped02_preP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 10
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
    end
    object tb_ped02_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02_preP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object tb_ped02_preP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object tb_ped02_preP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object tb_ped02_preP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object tb_ped02_preP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object tb_ped02_preP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object tb_ped02_preP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 413
    Top = 145
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldName = 'requer_pedori'
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldName = 'al_IcmsTribDesonera'
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
  end
  object Timer_fatauto: TTimer
    Enabled = False
    OnTimer = Timer_fatautoTimer
    Left = 584
    Top = 112
  end
end
