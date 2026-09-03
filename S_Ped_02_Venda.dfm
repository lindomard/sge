object Frm_Ped_02_Venda: TFrm_Ped_02_Venda
  Left = 86
  Top = 144
  BorderStyle = bsSingle
  Caption = 'Venda R'#225'pida'
  ClientHeight = 483
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    Caption = 'VENDA DE PRODUTOS POR SELE'#199#195'O R'#193'PIDA'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 784
    Height = 383
    Align = alClient
    DataSource = Src_ProVenda
    FixedColor = 11599871
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = 8388672
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PDNOME'
        ReadOnly = True
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMP_QTDPED'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMP_PCOUNI'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        ReadOnly = True
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDUND'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDCODPRO'
        ReadOnly = True
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDPRECO1'
        ReadOnly = True
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDPRECO2'
        ReadOnly = True
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDPRECO3'
        ReadOnly = True
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMP_TIPOPCO'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        ReadOnly = True
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMP_TOTAL'
        ReadOnly = True
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_EST'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 447
    Width = 784
    Height = 36
    Align = alBottom
    TabOrder = 2
    object StaticText1: TStaticText
      Left = 6
      Top = 14
      Width = 123
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = #205'tens Selecionados:'
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object st_itens: TStaticText
      Left = 128
      Top = 14
      Width = 61
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16747718
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 200
      Top = 14
      Width = 86
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidades:'
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object st_qtd: TStaticText
      Left = 285
      Top = 14
      Width = 61
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16747718
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 352
      Top = 14
      Width = 86
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Totais:'
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object st_totais: TStaticText
      Left = 437
      Top = 14
      Width = 61
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16747718
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object bbSair: TBitBtn
      Left = 502
      Top = 10
      Width = 125
      Height = 21
      Caption = '&Sair Cancelando'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
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
    object BitBtn1: TBitBtn
      Left = 632
      Top = 10
      Width = 126
      Height = 21
      Caption = 'Sair &Confirmando'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 784
    Height = 23
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 128
      Height = 13
      Caption = 'Descri'#231#227'o do Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_descricao: TEdit
      Left = 134
      Top = 1
      Width = 290
      Height = 21
      TabOrder = 0
      OnChange = edt_descricaoChange
    end
    object CB_ESTOQUE: TCheckBox
      Left = 544
      Top = 3
      Width = 196
      Height = 17
      Caption = 'Somente com estoque Positivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CB_ESTOQUEClick
    end
  end
  object pnl_conf: TPanel
    Left = 296
    Top = 104
    Width = 181
    Height = 305
    TabOrder = 4
    Visible = False
    object Label89: TLabel
      Left = 5
      Top = 4
      Width = 76
      Height = 13
      Caption = 'Tipo de Produto'
    end
    object bb_gravar: TButton
      Left = 3
      Top = 280
      Width = 175
      Height = 25
      Caption = '&Gravar e Sair'
      TabOrder = 0
      OnClick = bb_gravarClick
    end
    object CLFNivel: TCheckListBox
      Left = 0
      Top = 20
      Width = 180
      Height = 255
      TabStop = False
      Color = 16776176
      Columns = 1
      ItemHeight = 13
      Items.Strings = (
        'Acabado'
        'Servi'#231'o'
        'Mat'#233'ria Prima Revenda'
        'Produto em Produ'#231'ao'
        'Mat'#233'ria Prima'
        'Insumos'
        'Acessorios'
        'Outros'
        'Todos')
      Style = lbOwnerDrawFixed
      TabOrder = 1
    end
  end
  object Src_ProVenda: TDataSource
    DataSet = Qr_ProVenda
    Left = 512
    Top = 8
  end
  object Qr_ProVenda: TQuery
    CachedUpdates = True
    AfterInsert = Qr_ProVendaAfterInsert
    BeforeEdit = Qr_ProVendaBeforeEdit
    AfterEdit = Qr_ProVendaAfterEdit
    BeforePost = Qr_ProVendaBeforePost
    AfterPost = Qr_ProVendaAfterPost
    OnCalcFields = Qr_ProVendaCalcFields
    DatabaseName = 'SG_ASSOC'
    RequestLive = True
    SQL.Strings = (
      
        'Select PDNOME,DECODE(PDMARCA,NULL,PDNOMFOR,'#39'_'#39',PDNOMFOR, PDMARCA' +
        ') AS MARCA,PDUND,PDCODPRO,PDPRECO1,PDPRECO2,PDPRECO3'
      ',PDVLRINC,PDUCPR,PDPRECOC'
      ',PDSALDO,PDCODTIP'
      ',CESALDO AS QTD_EST'
      ', 0 AS TMP_TIPOPCO'
      ',0 AS TMP_PCOUNI'
      ',0 AS TMP_QTDPED'
      ',0 AS TMP_TOTAL'
      'FROM CADPRO,CADEST'
      'WHERE CECODPRO(+)=PDCODPRO'
      'ORDER BY PDNOME')
    UpdateObject = U_ProVenda
    Left = 456
    Top = 8
    object Qr_ProVendaPDNOME: TStringField
      DisplayLabel = 'Descri'#231'ao do Produto'
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_ProVendaMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Size = 40
    end
    object Qr_ProVendaPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_ProVendaPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
    end
    object Qr_ProVendaPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 01'
      FieldName = 'PDPRECO1'
    end
    object Qr_ProVendaPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 02'
      FieldName = 'PDPRECO2'
    end
    object Qr_ProVendaPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 03'
      FieldName = 'PDPRECO3'
    end
    object Qr_ProVendaTMP_PCOUNI: TFloatField
      DisplayLabel = 'Pre'#231'o Vda'
      FieldName = 'TMP_PCOUNI'
    end
    object Qr_ProVendaTMP_QTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedido'
      FieldName = 'TMP_QTDPED'
      EditFormat = '#.###,##'
    end
    object Qr_ProVendaTMP_TOTAL: TFloatField
      DisplayLabel = 'ValorTotal'
      FieldName = 'TMP_TOTAL'
    end
    object Qr_ProVendaestoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Qr_ProVendaTMP_TIPOPCO: TFloatField
      DisplayLabel = 'P'#231'o'
      FieldName = 'TMP_TIPOPCO'
    end
    object Qr_ProVendapcoven: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pcoven'
      Calculated = True
    end
    object Qr_ProVendaPDSALDO: TFloatField
      FieldName = 'PDSALDO'
    end
    object Qr_ProVendaPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
    end
    object Qr_ProVendaPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
    end
    object Qr_ProVendaPDUCPR: TFloatField
      FieldName = 'PDUCPR'
    end
    object Qr_ProVendaPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
    end
    object Qr_ProVendaQTD_EST: TFloatField
      FieldName = 'QTD_EST'
    end
  end
  object U_ProVenda: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDNOME = :PDNOME,'
      '  MARCA = :MARCA,'
      '  PDUND = :PDUND,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDVLRINC = :PDVLRINC,'
      '  PDUCPR = :PDUCPR,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDSALDO = :PDSALDO,'
      '  PDCODTIP = :PDCODTIP,'
      '  QTD_EST = :QTD_EST,'
      '  TMP_TIPOPCO = :TMP_TIPOPCO,'
      '  TMP_PCOUNI = :TMP_PCOUNI,'
      '  TMP_QTDPED = :TMP_QTDPED,'
      '  TMP_TOTAL = :TMP_TOTAL'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      
        '  (PDNOME, MARCA, PDUND, PDCODPRO, PDPRECO1, PDPRECO2, PDPRECO3,' +
        ' PDVLRINC, '
      
        '   PDUCPR, PDPRECOC, PDSALDO, PDCODTIP, QTD_EST, TMP_TIPOPCO, TM' +
        'P_PCOUNI, '
      '   TMP_QTDPED, TMP_TOTAL)'
      'values'
      
        '  (:PDNOME, :MARCA, :PDUND, :PDCODPRO, :PDPRECO1, :PDPRECO2, :PD' +
        'PRECO3, '
      
        '   :PDVLRINC, :PDUCPR, :PDPRECOC, :PDSALDO, :PDCODTIP, :QTD_EST,' +
        ' :TMP_TIPOPCO, '
      '   :TMP_PCOUNI, :TMP_QTDPED, :TMP_TOTAL)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 560
    Top = 8
  end
end
