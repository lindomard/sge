object Frm_Ind_Prod_Analise: TFrm_Ind_Prod_Analise
  Left = 192
  Top = 125
  Width = 1057
  Height = 542
  Caption = 'Rela'#231#227'o de Produtos em An'#225'lise'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1049
    Height = 169
    Align = alTop
    Caption = 'Filtros:'
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label5: TLabel
      Left = 17
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object edt_codpro: TEdit
      Left = 76
      Top = 14
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object lbx_codpro: TListBox
      Left = 137
      Top = 14
      Width = 400
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = lbx_codproKeyDown
    end
    object OMITIR_PRO: TCheckBox
      Left = 78
      Top = 34
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edt_codfor: TEdit
      Left = 76
      Top = 53
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = edt_codforExit
      OnKeyPress = edt_codforKeyPress
    end
    object lbx_codfor: TListBox
      Left = 137
      Top = 53
      Width = 400
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 78
      Top = 74
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object GroupBox2: TGroupBox
      Left = 903
      Top = 15
      Width = 130
      Height = 79
      Caption = 'Listar Status do Bloqueio:'
      TabOrder = 6
      object clb_status: TCheckListBox
        Left = 2
        Top = 15
        Width = 126
        Height = 62
        TabStop = False
        Align = alClient
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'Aprovados'
          'Em Analise'
          'Bloqueados'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = clb_statusClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 552
      Top = 8
      Width = 337
      Height = 105
      Caption = 'Listar Tipos de Produtos:'
      TabOrder = 7
      object CLBNivel: TCheckListBox
        Left = 2
        Top = 15
        Width = 333
        Height = 88
        TabStop = False
        Align = alClient
        Color = 16776176
        Columns = 2
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
        TabOrder = 0
        OnClick = CLBNivelClick
      end
    end
    object bbAplicar: TBitBtn
      Left = 69
      Top = 124
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
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
      Left = 637
      Top = 124
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
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
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 169
    Width = 1049
    Height = 256
    Align = alClient
    Caption = 'Registros Selecionados:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1045
      Height = 239
      Align = alClient
      DataSource = src_Pfor02_Lotes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2L_CODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 390
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2L_LOTE'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2L_LOTE_RE'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2L_DTVCTO'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2L_QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2L_ITEM'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1NUMNF'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_ANALISE'
          Width = 181
          Visible = True
        end>
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 425
    Width = 1049
    Height = 86
    Align = alBottom
    Caption = 'Observa'#231#245'es:'
    TabOrder = 2
    object Label3: TLabel
      Left = 176
      Top = 15
      Width = 77
      Height = 31
      Alignment = taCenter
      AutoSize = False
      Caption = 'Observa'#231#245'es'#13#10'/Motivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object DBMemo1: TDBMemo
      Left = 257
      Top = 14
      Width = 688
      Height = 61
      DataField = 'PF2L_STATUS_ANALISE_MOTIVO'
      DataSource = src_Pfor02_Lotes
      TabOrder = 0
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 14
      Top = 14
      Width = 149
      Height = 61
      Caption = 'Status da Analise'
      DataField = 'PF2L_STATUS_ANALISE'
      DataSource = src_Pfor02_Lotes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'Aprovado'
        'Em Analise'
        'Reprovado')
      ParentFont = False
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '9')
    end
    object bbEfetuar: TBitBtn
      Left = 948
      Top = 14
      Width = 81
      Height = 60
      Cursor = crHandPoint
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Efetuar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbEfetuarClick
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
  object Qr_Pfor02_Lotes: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_Pfor02_LotesBeforeInsert
    BeforeEdit = Qr_Pfor02_LotesBeforeEdit
    BeforePost = Qr_Pfor02_LotesBeforePost
    AfterPost = Qr_Pfor02_LotesAfterPost
    BeforeDelete = Qr_Pfor02_LotesBeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PF2L_LOTE,PF2L_LOTE_RE,PF2L_DTVCTO,PF2L_QTD,PF2L_CHAVE,PF' +
        '2L_LOTSEQ,PF2L_CODEMP,PF2L_ITEM'
      ',PF2L_CODPRO'
      
        ',PF2L_STATUS_ANALISE,PF2L_STATUS_ANALISE_MOTIVO,PF1NUMNF,PF1_NFE' +
        '_CHAVE,PDNOME,PDUND'
      ',CASE WHEN PF2L_STATUS_ANALISE=0 THEN '#39'PRODUTO LIBERADO'#39
      ' WHEN PF2L_STATUS_ANALISE=1 THEN '#39'AGUARDANDO ANALISE '#39
      ' WHEN PF2L_STATUS_ANALISE=9 THEN '#39'PRODUTO REPROVADO'#39
      ' ELSE '#39'DESCONHECIDO'#39' END AS STATUS_ANALISE,PF1FILIAL'
      ' from CADPF2_LOTES_ORC,CADPF1,CADPRO'
      ' WHERE PF2L_STATUS_ANALISE=1'
      ' AND PF1CHAVE=PF2L_CHAVE'
      '  AND PF1LOTSEQ=PF2L_LOTSEQ'
      '   AND PF1CODEMP=PF2L_CODEMP'
      '   AND PF2L_CODPRO=PDCODPRO'
      '   AND PF1TIPO<>2')
    UpdateObject = U_Pfor02_Lotes
    Left = 728
    Top = 136
    object Qr_Pfor02_LotesPF2L_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PF2L_LOTE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTE'
    end
    object Qr_Pfor02_LotesPF2L_LOTE_RE: TStringField
      DisplayLabel = 'RE'
      FieldName = 'PF2L_LOTE_RE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTE_RE'
    end
    object Qr_Pfor02_LotesPF2L_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'PF2L_DTVCTO'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_DTVCTO'
    end
    object Qr_Pfor02_LotesPF2L_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PF2L_QTD'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_QTD'
    end
    object Qr_Pfor02_LotesPF2L_CHAVE: TFloatField
      FieldName = 'PF2L_CHAVE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_CHAVE'
    end
    object Qr_Pfor02_LotesPF2L_LOTSEQ: TFloatField
      FieldName = 'PF2L_LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTSEQ'
    end
    object Qr_Pfor02_LotesPF2L_CODEMP: TFloatField
      FieldName = 'PF2L_CODEMP'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_CODEMP'
    end
    object Qr_Pfor02_LotesPF2L_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PF2L_ITEM'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_ITEM'
    end
    object Qr_Pfor02_LotesPF2L_STATUS_ANALISE: TFloatField
      FieldName = 'PF2L_STATUS_ANALISE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_STATUS_ANALISE'
    end
    object Qr_Pfor02_LotesPF2L_STATUS_ANALISE_MOTIVO: TStringField
      FieldName = 'PF2L_STATUS_ANALISE_MOTIVO'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_STATUS_ANALISE_MOTIVO'
      Size = 200
    end
    object Qr_Pfor02_LotesPF1NUMNF: TFloatField
      DisplayLabel = 'Num.NF'
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_Pfor02_LotesPF1_NFE_CHAVE: TStringField
      DisplayLabel = 'Chave da NFE'
      FieldName = 'PF1_NFE_CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1_NFE_CHAVE'
      Size = 44
    end
    object Qr_Pfor02_LotesPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_Pfor02_LotesPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_Pfor02_LotesSTATUS_ANALISE: TStringField
      DisplayLabel = 'Status da Analise'
      FieldName = 'STATUS_ANALISE'
      Size = 19
    end
    object Qr_Pfor02_LotesPF2L_CODPRO: TFloatField
      DisplayLabel = 'c'#243'd.Prod'
      FieldName = 'PF2L_CODPRO'
    end
    object Qr_Pfor02_LotesPF1FILIAL: TFloatField
      FieldName = 'PF1FILIAL'
    end
  end
  object src_Pfor02_Lotes: TDataSource
    DataSet = Qr_Pfor02_Lotes
    Left = 768
    Top = 136
  end
  object U_Pfor02_Lotes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF2_LOTES_ORC'
      'set'
      '  PF2L_LOTE = :PF2L_LOTE,'
      '  PF2L_LOTE_RE = :PF2L_LOTE_RE,'
      '  PF2L_DTVCTO = :PF2L_DTVCTO,'
      '  PF2L_QTD = :PF2L_QTD,'
      '  PF2L_CHAVE = :PF2L_CHAVE,'
      '  PF2L_LOTSEQ = :PF2L_LOTSEQ,'
      '  PF2L_CODEMP = :PF2L_CODEMP,'
      '  PF2L_ITEM = :PF2L_ITEM,'
      '  PF2L_CODPRO = :PF2L_CODPRO,'
      '  PF2L_STATUS_ANALISE = :PF2L_STATUS_ANALISE,'
      '  PF2L_STATUS_ANALISE_MOTIVO = :PF2L_STATUS_ANALISE_MOTIVO'
      'where'
      '  PF2L_LOTE = :OLD_PF2L_LOTE and'
      '  PF2L_DTVCTO = :OLD_PF2L_DTVCTO and'
      '  PF2L_CHAVE = :OLD_PF2L_CHAVE and'
      '  PF2L_LOTSEQ = :OLD_PF2L_LOTSEQ and'
      '  PF2L_CODEMP = :OLD_PF2L_CODEMP and'
      '  PF2L_ITEM = :OLD_PF2L_ITEM and'
      '  PF2L_CODPRO = :OLD_PF2L_CODPRO')
    InsertSQL.Strings = (
      'insert into CADPF2_LOTES_ORC'
      
        '  (PF2L_LOTE, PF2L_LOTE_RE, PF2L_DTVCTO, PF2L_QTD, PF2L_CHAVE, P' +
        'F2L_LOTSEQ, '
      
        '   PF2L_CODEMP, PF2L_ITEM, PF2L_CODPRO, PF2L_STATUS_ANALISE, PF2' +
        'L_STATUS_ANALISE_MOTIVO)'
      'values'
      
        '  (:PF2L_LOTE, :PF2L_LOTE_RE, :PF2L_DTVCTO, :PF2L_QTD, :PF2L_CHA' +
        'VE, :PF2L_LOTSEQ, '
      
        '   :PF2L_CODEMP, :PF2L_ITEM, :PF2L_CODPRO, :PF2L_STATUS_ANALISE,' +
        ' :PF2L_STATUS_ANALISE_MOTIVO)')
    DeleteSQL.Strings = (
      'delete from CADPF2_LOTES_ORC'
      'where'
      '  PF2L_LOTE = :OLD_PF2L_LOTE and'
      '  PF2L_DTVCTO = :OLD_PF2L_DTVCTO and'
      '  PF2L_CHAVE = :OLD_PF2L_CHAVE and'
      '  PF2L_LOTSEQ = :OLD_PF2L_LOTSEQ and'
      '  PF2L_CODEMP = :OLD_PF2L_CODEMP and'
      '  PF2L_ITEM = :OLD_PF2L_ITEM and'
      '  PF2L_CODPRO = :OLD_PF2L_CODPRO')
    Left = 808
    Top = 136
  end
end
