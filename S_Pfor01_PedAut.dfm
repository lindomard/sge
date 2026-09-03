object Frm_Pfor01_PedAut: TFrm_Pfor01_PedAut
  Left = 95
  Top = 124
  Width = 794
  Height = 564
  Caption = 'Pedido de Compra por Estat'#237'sticas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_pfor: TDBGrid
    Left = 0
    Top = 155
    Width = 786
    Height = 284
    Align = alClient
    DataSource = Src_Pfor
    FixedColor = 11599871
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid_pforDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UND'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'EMBALAGEM'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'media'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sugestao'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPED'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diasestoque'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTPEN'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCUSTO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTCUS'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDDIAS'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 786
    Height = 155
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 25
      Top = 32
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
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 87
      Height = 13
      Caption = 'Sugest'#227'o para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 151
      Top = 49
      Width = 24
      Height = 13
      Caption = 'dias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 14
      Width = 256
      Height = 13
      Caption = 'Calcular a M'#233'dia Mensal Entre o Per'#237'odo de '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 370
      Top = 13
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
    object Label12: TLabel
      Left = 16
      Top = 66
      Width = 78
      Height = 13
      Caption = 'Tipo Produto:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 197
      Top = 50
      Width = 57
      Height = 13
      Caption = 'Produto..:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object CODFOR: TEdit
      Left = 96
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 145
      Top = 29
      Width = 331
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object QTDDIAS: TEdit
      Left = 96
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '30'
      OnExit = QTDDIASExit
    end
    object bbGerar: TBitBtn
      Left = 16
      Top = 128
      Width = 281
      Height = 25
      Caption = 'Gerar Sugest'#227'o'
      TabOrder = 3
      OnClick = bbGerarClick
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
    object MDT1: TMaskEdit
      Left = 275
      Top = 11
      Width = 82
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 394
      Top = 11
      Width = 82
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 5
      Text = '  /  /    '
    end
    object CLBNivel: TCheckListBox
      Left = 96
      Top = 65
      Width = 473
      Height = 61
      Color = 16776176
      Columns = 3
      Ctl3D = False
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
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 6
      OnClick = CLBNivelClick
    end
    object bbTransfSug: TBitBtn
      Left = 487
      Top = 127
      Width = 281
      Height = 25
      Caption = 'Transferir Sugest'#227'o p/Pedido'
      TabOrder = 7
      OnClick = bbTransfSugClick
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
    object CB_PRINCIPAL: TCheckBox
      Left = 480
      Top = 32
      Width = 193
      Height = 17
      Caption = 'Principal(Fabricante)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 8
      Visible = False
    end
    object edt_codpro: TEdit
      Left = 256
      Top = 47
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object btn_SalvaPadrao: TButton
      Left = 584
      Top = 80
      Width = 121
      Height = 25
      Caption = '&Salvar Padr'#227'o'
      TabOrder = 10
      OnClick = btn_SalvaPadraoClick
    end
    object edt_nompro: TEdit
      Left = 334
      Top = 47
      Width = 235
      Height = 19
      Color = 16776176
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 465
    Width = 786
    Height = 68
    Align = alBottom
    TabOrder = 2
    object Label10: TLabel
      Left = 11
      Top = -2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 29
      Top = 0
      Width = 39
      Height = 13
      Caption = 'Comprar'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 195
      Top = -2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16384
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 213
      Top = 0
      Width = 135
      Height = 13
      Caption = 'Estoque Menor igual M'#237'nimo'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16384
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 432
      Top = 0
      Width = 110
      Height = 13
      Caption = 'Estoque  Maior M'#225'ximo'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 414
      Top = -2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 650
      Top = -2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 668
      Top = 0
      Width = 79
      Height = 13
      Caption = 'Estoque Regular'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object bbSairGerando: TBitBtn
      Left = 472
      Top = 36
      Width = 149
      Height = 26
      Cursor = crHandPoint
      Caption = 'Sair Gerando Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbSairGerandoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
        0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
        000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
        00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
        00FF3777773333F77733333333333000033F3333333337777333}
      NumGlyphs = 2
    end
    object CB_VDAATU: TCheckBox
      Left = 21
      Top = 40
      Width = 230
      Height = 17
      Caption = 'Pre'#231'o de Vendas com Valores Atuais'
      TabOrder = 0
    end
    object CB_CUSATU: TCheckBox
      Left = 251
      Top = 22
      Width = 196
      Height = 17
      Caption = 'Pre'#231'o de Custo com Valores Atuais'
      TabOrder = 1
    end
    object CB_COMPRAS: TCheckBox
      Left = 21
      Top = 22
      Width = 202
      Height = 17
      Caption = 'Pesquisar no arquivo de Compras'
      TabOrder = 2
    end
    object CB_PROSMOV: TCheckBox
      Left = 251
      Top = 40
      Width = 198
      Height = 17
      Caption = 'Emitir dos Produtos sem Movimento'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 622
      Top = 36
      Width = 153
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair sem Gerar Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
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
    object CB_ESTMIN: TCheckBox
      Left = 443
      Top = 21
      Width = 198
      Height = 17
      Caption = 'Igualar Estoque Minimo'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object panel_rodape: TPanel
    Left = 0
    Top = 439
    Width = 786
    Height = 26
    Align = alBottom
    Color = 12582847
    TabOrder = 3
    object Label15: TLabel
      Left = 12
      Top = 7
      Width = 94
      Height = 13
      Caption = 'Estoque Minimo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 212
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Estoque M'#225'ximo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 413
      Top = 7
      Width = 84
      Height = 13
      Caption = 'Estoque Atual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 626
      Top = 7
      Width = 58
      Height = 13
      Caption = 'Sugest'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 109
      Top = 5
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'ESTMIN'
      DataSource = Src_Pfor
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 309
      Top = 5
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'ESTMAX'
      DataSource = Src_Pfor
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 500
      Top = 5
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'ESTOQUE'
      DataSource = Src_Pfor
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 686
      Top = 5
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'sugestao'
      DataSource = Src_Pfor
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object Src_Pfor: TDataSource
    DataSet = Tb_PFor
    Left = 488
    Top = 80
  end
  object Tb_PFor: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_PForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select SUM(P2QTD) AS QUANT,'
      '          SUM(P2TOTLIQ-P2DESCRAT) AS VALOR,'
      '          SUM(P2PCOCUS*P2QTD) AS TOTCUS,'
      '       10         AS QTDDIAS,'
      '       P2CODPRO   AS CODPRO,'
      '       PDNOME     AS NOME,'
      '       PDFRACAO    AS FRACAO,'
      '       PDSIT      AS SITTRI,'
      '       PDUND      AS UND,'
      '       PDEMBPAD   AS EMBALAGEM,'
      '       PDESTMIN   AS ESTMIN,'
      '       PDESTMAX   AS ESTMAX,'
      '       PDPRECO1   AS PRECO,'
      '       PDPRECOC   AS PCUSTO,'
      '       CESALDO    AS ESTOQUE,'
      '       CEENTPEN   AS ENTPEN,'
      '       CEENTPEN   AS QTDPED'
      'from CADP02,CADP01,CADPRO,CADEST'
      'where P1CODEMP=P2CODEMP'
      'and   P1CHAVE =P2CHAVE'
      'and   P1ORDEM =P2ORDEM'
      'and   PDCODEMP=P2CODEMP'
      'and   PDCODPRO=P2CODPRO'
      'and   CECODEMP=PDCODEMP '
      'and   CECODPRO=PDCODPRO'
      'and   P2CODPRO=0'
      'group by P2CODPRO,'
      '       PDNOME,'
      '       PDFRACAO,'
      '       PDUND,'
      '       PDSIT,'
      '       PDEMBPAD,'
      '       PDPRECO1,'
      '       PDPRECOC,'
      '       CESALDO,'
      '       CEENTPEN'
      '       ,PDESTMIN'
      '       ,PDESTMAX'
      '')
    UpdateObject = U_PFor
    Left = 520
    Top = 80
    object Tb_PForQUANT: TFloatField
      DisplayLabel = 'Vda Periodo'
      FieldName = 'QUANT'
    end
    object Tb_PForVALOR: TFloatField
      DisplayLabel = 'Valor Vda.Per'#237'odo'
      FieldName = 'VALOR'
    end
    object Tb_PForTOTCUS: TFloatField
      DisplayLabel = 'Total Custo'
      FieldName = 'TOTCUS'
    end
    object Tb_PForQTDDIAS: TFloatField
      DisplayLabel = 'Qtd.Dias'
      FieldName = 'QTDDIAS'
    end
    object Tb_PForCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object Tb_PForNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOME'
      Size = 53
    end
    object Tb_PForUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UND'
      Size = 3
    end
    object Tb_PForEMBALAGEM: TFloatField
      DisplayLabel = 'Caixa Fechada'
      FieldName = 'EMBALAGEM'
    end
    object Tb_PForPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'PRECO'
    end
    object Tb_PForPCUSTO: TFloatField
      DisplayLabel = 'Pre'#231'o de Custo'
      FieldName = 'PCUSTO'
    end
    object Tb_PForESTOQUE: TFloatField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'ESTOQUE'
    end
    object Tb_PForENTPEN: TFloatField
      DisplayLabel = 'Em Transito'
      FieldName = 'ENTPEN'
    end
    object Tb_PFormedia: TFloatField
      DisplayLabel = 'M'#233'dia Mensal'
      FieldKind = fkCalculated
      FieldName = 'media'
      Calculated = True
    end
    object Tb_PFordiasestoque: TFloatField
      DisplayLabel = 'Estoque p/dias'
      FieldKind = fkCalculated
      FieldName = 'diasestoque'
      Calculated = True
    end
    object Tb_PForpervda: TFloatField
      DisplayLabel = 'Vda Periodo'
      FieldKind = fkCalculated
      FieldName = 'pervda'
      Calculated = True
    end
    object Tb_PForvlrvda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldKind = fkCalculated
      FieldName = 'vlrvda'
      Calculated = True
    end
    object Tb_PForvlrcus: TFloatField
      DisplayLabel = 'Valor Custo'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'vlrcus'
      Calculated = True
    end
    object Tb_PForsugestao: TFloatField
      DisplayLabel = 'Sugest'#227'o'
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      Calculated = True
    end
    object Tb_PForQTDPED: TFloatField
      DisplayLabel = 'Pedido'
      FieldName = 'QTDPED'
    end
    object Tb_PForSITTRI: TStringField
      FieldName = 'SITTRI'
      Size = 3
    end
    object Tb_PForESTMIN: TFloatField
      FieldName = 'ESTMIN'
    end
    object Tb_PForESTMAX: TFloatField
      FieldName = 'ESTMAX'
    end
    object Tb_PForFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
  end
  object U_PFor: TUpdateSQL
    Left = 456
    Top = 80
  end
end
