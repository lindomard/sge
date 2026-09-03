object Frm_Contagem: TFrm_Contagem
  Left = 165
  Top = 161
  Width = 694
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emite Rela'#231#227'o de Produtos para Contagem'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 9
    Top = 274
    Width = 282
    Height = 13
    Caption = 'N'#250'mero de Casas Decimais para Quantidade..>>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 350
    Top = 273
    Width = 102
    Height = 13
    Caption = 'Ordem Impress'#227'o:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 350
    Top = 312
    Width = 46
    Height = 13
    Caption = 'Quebra:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object CB_ESTOQUE: TCheckBox
    Left = 10
    Top = 297
    Width = 222
    Height = 17
    Caption = 'Emitir Tamb'#233'm os Produtos Sem Estoque'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object CB_LOTE: TCheckBox
    Left = 10
    Top = 326
    Width = 171
    Height = 17
    Caption = 'Listar Separado por Lotes'
    TabOrder = 4
    Visible = False
    OnClick = CB_LOTEClick
  end
  object bbImprimir: TBitBtn
    Left = 440
    Top = 383
    Width = 116
    Height = 26
    Cursor = crHandPoint
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
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
  object bbSair: TBitBtn
    Left = 557
    Top = 383
    Width = 116
    Height = 26
    Cursor = crHandPoint
    Hint = 'Sair'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
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
  object CB_IMPEST: TCheckBox
    Left = 10
    Top = 311
    Width = 222
    Height = 17
    Caption = 'N'#227'o Apresentar Estoque Atual'
    TabOrder = 3
  end
  object CB_QDEC_QTD: TComboBox
    Left = 283
    Top = 271
    Width = 56
    Height = 21
    Hint = 'N'#250'mero de Casas Decimais para Quantidade:'
    ItemHeight = 13
    ItemIndex = 3
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '3'
    OnExit = CB_QDEC_QTDExit
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object CB_UCPR: TCheckBox
    Left = 10
    Top = 341
    Width = 222
    Height = 17
    Caption = 'Listar o '#218'ltimo Pre'#231'o de Compra'
    TabOrder = 6
  end
  object CB_DESCTLINHA: TCheckBox
    Left = 185
    Top = 329
    Width = 162
    Height = 17
    Caption = 'Descri'#231#227'o em Todas a Linhas'
    Enabled = False
    TabOrder = 5
    Visible = False
  end
  object CB_QUEBRA: TComboBox
    Left = 350
    Top = 326
    Width = 196
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = 'Sem Quebra'
    Items.Strings = (
      'Sem Quebra'
      'Fornecedor'
      'Grupo'
      'Ramo(Sub-Grupo)'
      'Controle'
      'Tipo'
      'Grupo/Ramo(Sub-Grupo)')
  end
  object CB_SEPPAG: TCheckBox
    Left = 550
    Top = 326
    Width = 122
    Height = 17
    Caption = 'Separado por Pagina'
    TabOrder = 9
  end
  object CB_ORDEM: TComboBox
    Left = 350
    Top = 289
    Width = 196
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'Fornecedor+descri'#231'ao'
    Items.Strings = (
      'Fornecedor+descri'#231'ao'
      'Descri'#231#227'o'
      'C'#243'digo'
      'Se'#231'ao+Descri'#231#227'o'
      'Cadastro Produto')
  end
  object OMITIR_STATUS: TCheckBox
    Left = 502
    Top = 267
    Width = 157
    Height = 17
    Caption = 'Omitir Status Selecionado'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnMouseMove = OMITIR_FORMouseMove
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 686
    Height = 261
    ActivePage = tsFiltros
    Align = alTop
    TabOrder = 12
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 3
        Top = 55
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
        Left = 1
        Top = 101
        Width = 78
        Height = 13
        Caption = 'Tipo Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 2
        Top = 148
        Width = 81
        Height = 13
        Caption = 'Tipo Controle:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 42
        Top = 187
        Width = 39
        Height = 13
        Caption = 'Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODFOR: TEdit
        Left = 81
        Top = 51
        Width = 60
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object CODCON: TEdit
        Left = 81
        Top = 143
        Width = 60
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object CODTIP: TEdit
        Left = 81
        Top = 98
        Width = 60
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseMove = CODTIPMouseMove
      end
      object lbx_codfor: TListBox
        Left = 146
        Top = 50
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 82
        Top = 76
        Width = 53
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnMouseMove = OMITIR_FORMouseMove
      end
      object lbx_tpro: TListBox
        Left = 146
        Top = 97
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_tproKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 82
        Top = 123
        Width = 57
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnMouseMove = OMITIR_TPROMouseMove
      end
      object lbx_codcon: TListBox
        Left = 146
        Top = 141
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 82
        Top = 166
        Width = 57
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_CONMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 82
        Top = 27
        Width = 57
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnMouseMove = OMITIR_PROMouseMove
      end
      object lbx_codpro: TListBox
        Left = 146
        Top = 2
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codproKeyDown
      end
      object CODPRO: TEdit
        Left = 81
        Top = 3
        Width = 62
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object CODGRU: TEdit
        Left = 83
        Top = 184
        Width = 60
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 145
        Top = 185
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 90
        Top = 204
        Width = 53
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
    end
    object tsOutFiltros: TTabSheet
      Caption = 'tsOutFiltros'
      ImageIndex = 1
      object Label12: TLabel
        Left = 19
        Top = 5
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
      object Label10: TLabel
        Left = 62
        Top = 84
        Width = 40
        Height = 13
        Caption = 'Marca:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CLBNivel: TCheckListBox
        Left = 102
        Top = 5
        Width = 349
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
        TabOrder = 0
        OnClick = CLBNivelClick
      end
      object StaticText2: TStaticText
        Left = 500
        Top = 0
        Width = 157
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Status Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object CLB_STATUS: TCheckListBox
        Left = 501
        Top = 15
        Width = 156
        Height = 59
        Color = 16776176
        Columns = 3
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 2
        OnClick = CLB_STATUSClick
      end
      object edt_marca: TEdit
        Left = 104
        Top = 80
        Width = 347
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
  end
  object cb_comestoque: TCheckBox
    Left = 352
    Top = 352
    Width = 193
    Height = 17
    Caption = 'Somente com estoque.'
    TabOrder = 13
  end
  object btn_Exportar: TButton
    Left = 344
    Top = 384
    Width = 91
    Height = 25
    Caption = 'Exportar Excel'
    TabOrder = 14
    OnClick = btn_ExportarClick
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDMARCA,PDUND,PDNOMFOR,PDCODFOR,PDCODPRO,PDSECAO,'
      '          PDUCPR,'
      '       CESALDO,CLNUMERO,CLDTVCTO,CLQTD'
      '      ,PDNOMGRU AS NOMGRU'
      '      ,PDNOMRAM AS SUBGRU'
      '      '
      '      '
      '               ,PDPRAT '
      '               ,PDLADO'
      '               ,PDRUA'
      '               ,PDSECAO'
      ''
      '      '
      '      '
      'from CADEST,CADPRO,CADLGC'
      'where PDCODPRO=CECODPRO and'
      'CLCODPRO=CECODPRO'
      '')
    Left = 407
    Top = 257
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_ProPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProCESALDO: TFloatField
      FieldName = 'CESALDO'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
    end
    object Qr_ProCLNUMERO: TStringField
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Qr_ProCLDTVCTO: TDateTimeField
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Qr_ProCLQTD: TFloatField
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Qr_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Qr_ProNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_ProSUBGRU: TStringField
      FieldName = 'SUBGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Qr_ProCEFILIAL: TFloatField
      FieldName = 'CEFILIAL'
    end
    object Qr_ProPDPRAT: TStringField
      DisplayLabel = 'Prateleira'
      FieldName = 'PDPRAT'
    end
    object Qr_ProPDLADO: TStringField
      DisplayLabel = 'Lado'
      FieldName = 'PDLADO'
    end
    object Qr_ProPDRUA: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'PDRUA'
    end
  end
end
