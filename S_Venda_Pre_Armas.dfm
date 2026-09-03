object Frm_Venda_Pre_Armas: TFrm_Venda_Pre_Armas
  Left = 121
  Top = 139
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Detalhamento das Armas'
  ClientHeight = 352
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_item: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 41
    Align = alTop
    Caption = 'Panel_item'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel9: TPanel
    Left = 0
    Top = 41
    Width = 927
    Height = 42
    Align = alTop
    TabOrder = 1
    object sbncmet_excluir: TSpeedButton
      Left = 431
      Top = 18
      Width = 130
      Height = 22
      Caption = 'Excluir Selecionado'
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
    object StaticText21: TStaticText
      Left = 3
      Top = 5
      Width = 76
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Itens Digitados'
      Color = 13828095
      ParentColor = False
      TabOrder = 0
    end
    object lbl_qtditens: TStaticText
      Left = 78
      Top = 5
      Width = 29
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '001'
      Color = 13828095
      ParentColor = False
      TabOrder = 1
    end
    object StaticText30: TStaticText
      Left = 110
      Top = 5
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Total das Unidades'
      Color = 13828095
      ParentColor = False
      TabOrder = 2
    end
    object lbl_qtdund: TStaticText
      Left = 206
      Top = 5
      Width = 83
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '001'
      Color = 13828095
      ParentColor = False
      TabOrder = 3
    end
    object bbcmet_sair: TBitBtn
      Left = 757
      Top = 17
      Width = 100
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = bbcmet_sairClick
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
    object StaticText1: TStaticText
      Left = 287
      Top = 5
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Total em Reais'
      Color = 13828095
      ParentColor = False
      TabOrder = 5
    end
    object lbl_totreais: TStaticText
      Left = 383
      Top = 5
      Width = 83
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '001'
      Color = 13828095
      ParentColor = False
      TabOrder = 6
    end
    object StaticText2: TStaticText
      Left = 465
      Top = 5
      Width = 108
      Height = 17
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Medio Unitario:'
      Color = 13828095
      ParentColor = False
      TabOrder = 7
    end
    object lbl_pcouni_medio: TStaticText
      Left = 573
      Top = 5
      Width = 83
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '001'
      Color = 13828095
      ParentColor = False
      TabOrder = 8
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 83
    Width = 927
    Height = 269
    Align = alClient
    DataSource = Src_Ped02_Armas
    PanelHeight = 89
    PanelWidth = 910
    TabOrder = 2
    OnExit = DBCtrlGrid1Exit
    object Label1: TLabel
      Left = 63
      Top = 12
      Width = 66
      Height = 13
      Caption = 'Tipo da Arma:'
    end
    object Label2: TLabel
      Left = 60
      Top = 36
      Width = 69
      Height = 13
      Caption = 'Serie da Arma:'
      FocusControl = DBE_NSERIE
    end
    object Label3: TLabel
      Left = 5
      Top = 64
      Width = 125
      Height = 13
      Caption = 'N'#250'mero de Serie do Cano:'
      FocusControl = DBE_NCANO
    end
    object Label4: TLabel
      Left = 282
      Top = 7
      Width = 640
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'Descri'#231#227'o completa da arma, compreendendo: calibre, marca, capac' +
        'idade, tipo de'#13#10'funcionamento, comprimento e demais elementos qu' +
        'e permitam a sua perfeitaidentifica'#231#227'o'
      Color = 8454143
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label5: TLabel
      Left = 927
      Top = 12
      Width = 51
      Height = 45
      Alignment = taCenter
      AutoSize = False
      Caption = 'Sequencia '
      Layout = tlCenter
      WordWrap = True
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 134
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'P2ARMA_TPARMA'
      DataSource = Src_Ped02_Armas
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        '0 - Uso Permitido'
        '1 - Uso Restrito')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1')
    end
    object DBE_NSERIE: TDBEdit
      Left = 134
      Top = 34
      Width = 145
      Height = 21
      DataField = 'P2ARMA_NSERIE'
      DataSource = Src_Ped02_Armas
      TabOrder = 1
    end
    object DBE_NCANO: TDBEdit
      Left = 134
      Top = 57
      Width = 145
      Height = 21
      DataField = 'P2ARMA_NCANO'
      DataSource = Src_Ped02_Armas
      TabOrder = 2
      OnEnter = DBE_NCANOEnter
    end
    object DBMemo1: TDBMemo
      Left = 282
      Top = 33
      Width = 642
      Height = 53
      Color = 8454143
      DataField = 'P2ARMA_DESCR'
      DataSource = Src_Ped02_Armas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 256
      ParentFont = False
      TabOrder = 3
      OnEnter = DBMemo1Enter
    end
    object DBEdit1: TDBEdit
      Left = 928
      Top = 48
      Width = 52
      Height = 21
      DataField = 'sequencia'
      DataSource = Src_Ped02_Armas
      TabOrder = 4
    end
  end
  object Tb_Ped02_Armas: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Ped02_ArmasBeforeInsert
    AfterInsert = Tb_Ped02_ArmasAfterInsert
    BeforePost = Tb_Ped02_ArmasBeforePost
    AfterPost = C
    BeforeDelete = Tb_Ped02_ArmasBeforeDelete
    AfterDelete = C
    OnCalcFields = Tb_Ped02_ArmasCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadp02_armas')
    UpdateObject = U_Ped02_Armas
    Left = 750
    Top = 16
    object Tb_Ped02_ArmasP2ARMA_CODEMP: TFloatField
      FieldName = 'P2ARMA_CODEMP'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_CODEMP'
    end
    object Tb_Ped02_ArmasP2ARMA_LOTSEQ: TFloatField
      FieldName = 'P2ARMA_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_LOTSEQ'
    end
    object Tb_Ped02_ArmasP2ARMA_CHAVE: TFloatField
      FieldName = 'P2ARMA_CHAVE'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_CHAVE'
    end
    object Tb_Ped02_ArmasP2ARMA_CHAVE_NIVEL: TFloatField
      FieldName = 'P2ARMA_CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_CHAVE_NIVEL'
    end
    object Tb_Ped02_ArmasP2ARMA_CODPRO: TFloatField
      FieldName = 'P2ARMA_CODPRO'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_CODPRO'
    end
    object Tb_Ped02_ArmasP2ARMA_ITEM: TFloatField
      FieldName = 'P2ARMA_ITEM'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_ITEM'
    end
    object Tb_Ped02_ArmasP2ARMA_SEQ: TFloatField
      FieldName = 'P2ARMA_SEQ'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_SEQ'
    end
    object Tb_Ped02_ArmasP2ARMA_TPARMA: TFloatField
      FieldName = 'P2ARMA_TPARMA'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_TPARMA'
    end
    object Tb_Ped02_ArmasP2ARMA_DESCR: TMemoField
      FieldName = 'P2ARMA_DESCR'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_DESCR'
      BlobType = ftMemo
      Size = 256
    end
    object Tb_Ped02_Armassequencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'sequencia'
      Size = 10
      Calculated = True
    end
    object Tb_Ped02_ArmasP2ARMA_NSERIE: TStringField
      FieldName = 'P2ARMA_NSERIE'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_NSERIE'
      Size = 50
    end
    object Tb_Ped02_ArmasP2ARMA_NCANO: TStringField
      FieldName = 'P2ARMA_NCANO'
      Origin = 'SG_ASSOC.CADP02_ARMAS.P2ARMA_NCANO'
      Size = 50
    end
  end
  object U_Ped02_Armas: TUpdateSQL
    ModifySQL.Strings = (
      'update cadp02_armas'
      'set'
      '  P2ARMA_CODEMP = :P2ARMA_CODEMP,'
      '  P2ARMA_LOTSEQ = :P2ARMA_LOTSEQ,'
      '  P2ARMA_CHAVE = :P2ARMA_CHAVE,'
      '  P2ARMA_CHAVE_NIVEL = :P2ARMA_CHAVE_NIVEL,'
      '  P2ARMA_CODPRO = :P2ARMA_CODPRO,'
      '  P2ARMA_ITEM = :P2ARMA_ITEM,'
      '  P2ARMA_SEQ = :P2ARMA_SEQ,'
      '  P2ARMA_TPARMA = :P2ARMA_TPARMA,'
      '  P2ARMA_NSERIE = :P2ARMA_NSERIE,'
      '  P2ARMA_NCANO = :P2ARMA_NCANO,'
      '  P2ARMA_DESCR = :P2ARMA_DESCR'
      'where'
      '  P2ARMA_CODEMP = :OLD_P2ARMA_CODEMP and'
      '  P2ARMA_LOTSEQ = :OLD_P2ARMA_LOTSEQ and'
      '  P2ARMA_CHAVE = :OLD_P2ARMA_CHAVE and'
      '  P2ARMA_CODPRO = :OLD_P2ARMA_CODPRO and'
      '  P2ARMA_ITEM = :OLD_P2ARMA_ITEM and'
      '  P2ARMA_SEQ = :OLD_P2ARMA_SEQ')
    InsertSQL.Strings = (
      'insert into cadp02_armas'
      
        '  (P2ARMA_CODEMP, P2ARMA_LOTSEQ, P2ARMA_CHAVE, P2ARMA_CHAVE_NIVE' +
        'L, P2ARMA_CODPRO, '
      
        '   P2ARMA_ITEM, P2ARMA_SEQ, P2ARMA_TPARMA, P2ARMA_NSERIE, P2ARMA' +
        '_NCANO, '
      '   P2ARMA_DESCR)'
      'values'
      
        '  (:P2ARMA_CODEMP, :P2ARMA_LOTSEQ, :P2ARMA_CHAVE, :P2ARMA_CHAVE_' +
        'NIVEL, '
      
        '   :P2ARMA_CODPRO, :P2ARMA_ITEM, :P2ARMA_SEQ, :P2ARMA_TPARMA, :P' +
        '2ARMA_NSERIE, '
      '   :P2ARMA_NCANO, :P2ARMA_DESCR)')
    DeleteSQL.Strings = (
      'delete from cadp02_armas'
      'where'
      '  P2ARMA_CODEMP = :OLD_P2ARMA_CODEMP and'
      '  P2ARMA_LOTSEQ = :OLD_P2ARMA_LOTSEQ and'
      '  P2ARMA_CHAVE = :OLD_P2ARMA_CHAVE and'
      '  P2ARMA_CODPRO = :OLD_P2ARMA_CODPRO and'
      '  P2ARMA_ITEM = :OLD_P2ARMA_ITEM and'
      '  P2ARMA_SEQ = :OLD_P2ARMA_SEQ')
    Left = 782
    Top = 15
  end
  object Src_Ped02_Armas: TDataSource
    DataSet = Tb_Ped02_Armas
    Left = 816
    Top = 16
  end
end
