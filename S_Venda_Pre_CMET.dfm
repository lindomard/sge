object Frm_Venda_Pre_CMET: TFrm_Venda_Pre_CMET
  Left = 65
  Top = 134
  ActiveControl = DBGrid_cmet
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Chapas Metalicas'
  ClientHeight = 352
  ClientWidth = 1163
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_item: TPanel
    Left = 0
    Top = 0
    Width = 1163
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
    Width = 1163
    Height = 42
    Align = alTop
    TabOrder = 2
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
      OnClick = sbncmet_excluirClick
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
  object DBGrid_cmet: TDBGrid
    Left = 0
    Top = 83
    Width = 1163
    Height = 269
    Align = alClient
    DataSource = Src_Ped02_CMet
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGrid_cmetColExit
    OnEnter = DBGrid_cmetEnter
    OnExit = DBGrid_cmetExit
    OnKeyDown = DBGrid_cmetKeyDown
    Columns = <
      item
        Color = 13820415
        Expanded = False
        FieldName = 'P2CM_SEQ'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_CODIGO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Color = 13820415
        Expanded = False
        FieldName = 'CMET_NOME'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_LARGURA'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_COMPRIMENTO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_QTD_PECAS'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_PITEM_PRECO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_QTD_KG_UNIT'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Color = 13820415
        Expanded = False
        FieldName = 'P2CM_QTD_KG'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_PITEM_PCOHORA'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CM_PITEM_QTDHORA'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Color = 13820415
        Expanded = False
        FieldName = 'valor_total'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 13820415
        Expanded = False
        FieldName = 'P2CM_CONSTANTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Color = 13820415
        Expanded = False
        FieldName = 'P2CM_ESPESSURA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end>
  end
  object Tb_Ped02_CMet: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Ped02_CMetAfterInsert
    AfterEdit = Tb_Ped02_CMetAfterEdit
    BeforePost = Tb_Ped02_CMetBeforePost
    AfterPost = Tb_Ped02_CMetAfterPost
    BeforeDelete = Tb_Ped02_CMetBeforeDelete
    AfterDelete = Tb_Ped02_CMetAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CM_CODEMP,'
      '  P2CM_CODPRO,'
      '  P2CM_LOTSEQ,'
      '  P2CM_CHAVE,'
      '  P2CM_CODIGO,'
      '  P2CM_LARGURA,'
      '  P2CM_ESPESSURA,'
      '  P2CM_CONSTANTE,'
      '  P2CM_COMPRIMENTO,'
      '  P2CM_QTD_KG,'
      '  P2CM_QTD_KG_UNIT,'
      '  P2CM_QTD_PECAS,'
      '  P2CM_SEQ,CMET_NOME'
      '  ,P2CM_PITEM_PRECO'
      '  from CADP02_CMET,CADPRO_CMET'
      '  where CMET_CODPRO=P2CM_CODPRO')
    UpdateObject = U_Ped02_CMet
    Left = 750
    Top = 16
    object Tb_Ped02_CMetP2CM_CODEMP: TFloatField
      FieldName = 'P2CM_CODEMP'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODEMP'
    end
    object Tb_Ped02_CMetP2CM_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CM_CODPRO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODPRO'
    end
    object Tb_Ped02_CMetP2CM_LOTSEQ: TFloatField
      FieldName = 'P2CM_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_LOTSEQ'
    end
    object Tb_Ped02_CMetP2CM_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CM_CHAVE'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CHAVE'
    end
    object Tb_Ped02_CMetP2CM_CODIGO: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CM_CODIGO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODIGO'
    end
    object Tb_Ped02_CMetP2CM_LARGURA: TFloatField
      DisplayLabel = 'Largura'
      FieldName = 'P2CM_LARGURA'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_LARGURA'
    end
    object Tb_Ped02_CMetP2CM_ESPESSURA: TFloatField
      DisplayLabel = 'Espessura'
      FieldName = 'P2CM_ESPESSURA'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_ESPESSURA'
    end
    object Tb_Ped02_CMetP2CM_CONSTANTE: TFloatField
      DisplayLabel = 'constant'
      FieldName = 'P2CM_CONSTANTE'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CONSTANTE'
    end
    object Tb_Ped02_CMetP2CM_QTD_KG: TFloatField
      DisplayLabel = 'Qtd Kg'
      FieldName = 'P2CM_QTD_KG'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_QTD_KG'
    end
    object Tb_Ped02_CMetP2CM_SEQ: TFloatField
      DisplayLabel = 'Seq'
      FieldName = 'P2CM_SEQ'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_SEQ'
    end
    object Tb_Ped02_CMetCMET_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CMET_NOME'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_NOME'
      Size = 60
    end
    object Tb_Ped02_CMetP2CM_COMPRIMENTO: TFloatField
      DisplayLabel = 'Comprimento'
      FieldName = 'P2CM_COMPRIMENTO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_COMPRIMENTO'
    end
    object Tb_Ped02_CMetP2CM_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2CM_ITEM'
    end
    object Tb_Ped02_CMetP2CM_QTD_KG_UNIT: TFloatField
      DisplayLabel = 'Qtd KG Unit'
      FieldName = 'P2CM_QTD_KG_UNIT'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_QTD_KG_UNIT'
    end
    object Tb_Ped02_CMetP2CM_QTD_PECAS: TFloatField
      DisplayLabel = 'Qtd Pe'#231'as'
      FieldName = 'P2CM_QTD_PECAS'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_QTD_PECAS'
    end
    object Tb_Ped02_CMetP2CM_PITEM_PRECO: TFloatField
      DisplayLabel = 'Item Pre'#231'o'
      FieldName = 'P2CM_PITEM_PRECO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_PITEM_PRECO'
    end
    object Tb_Ped02_CMetP2CM_PITEM_QTDHORA: TFloatField
      DisplayLabel = 'Qtd.Minutos'
      FieldName = 'P2CM_PITEM_QTDHORA'
    end
    object Tb_Ped02_CMetP2CM_PITEM_PCOHORA: TFloatField
      DisplayLabel = 'Pre'#231'o Hora'
      FieldName = 'P2CM_PITEM_PCOHORA'
    end
    object Tb_Ped02_CMetvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
    end
  end
  object U_Ped02_CMet: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02_CMET'
      'set'
      '  P2CM_CODEMP = :P2CM_CODEMP,'
      '  P2CM_CODPRO = :P2CM_CODPRO,'
      '  P2CM_LOTSEQ = :P2CM_LOTSEQ,'
      '  P2CM_CHAVE = :P2CM_CHAVE,'
      '  P2CM_CODIGO = :P2CM_CODIGO,'
      '  P2CM_LARGURA = :P2CM_LARGURA,'
      '  P2CM_ESPESSURA = :P2CM_ESPESSURA,'
      '  P2CM_CONSTANTE = :P2CM_CONSTANTE,'
      '  P2CM_COMPRIMENTO = :P2CM_COMPRIMENTO,'
      '  P2CM_QTD_KG = :P2CM_QTD_KG,'
      '  P2CM_QTD_KG_UNIT = :P2CM_QTD_KG_UNIT,'
      '  P2CM_QTD_PECAS = :P2CM_QTD_PECAS,'
      '  P2CM_SEQ = :P2CM_SEQ,'
      '  CMET_NOME = :CMET_NOME,'
      '  P2CM_PITEM_PRECO = :P2CM_PITEM_PRECO'
      '  ,P2CM_PITEM_PCOHORA=:P2CM_PITEM_PCOHORA'
      '  ,P2CM_PITEM_QTDHORA=:P2CM_PITEM_QTDHORA'
      'where'
      '  P2CM_CODEMP = :OLD_P2CM_CODEMP and'
      '  P2CM_CODPRO = :OLD_P2CM_CODPRO and'
      '  P2CM_LOTSEQ = :OLD_P2CM_LOTSEQ and'
      '  P2CM_CHAVE = :OLD_P2CM_CHAVE and'
      '  P2CM_CODIGO = :OLD_P2CM_CODIGO')
    InsertSQL.Strings = (
      'insert into CADP02_CMET'
      
        '  (P2CM_CODEMP, P2CM_CODPRO, P2CM_LOTSEQ, P2CM_CHAVE, P2CM_CODIG' +
        'O, P2CM_LARGURA, '
      
        '   P2CM_ESPESSURA, P2CM_CONSTANTE, P2CM_COMPRIMENTO, P2CM_QTD_KG' +
        ', P2CM_QTD_KG_UNIT, '
      '   P2CM_QTD_PECAS, P2CM_SEQ, CMET_NOME, P2CM_PITEM_PRECO'
      '   ,P2CM_PITEM_PCOHORA,P2CM_PITEM_QTDHORA)'
      'values'
      
        '  (:P2CM_CODEMP, :P2CM_CODPRO, :P2CM_LOTSEQ, :P2CM_CHAVE, :P2CM_' +
        'CODIGO,'
      
        '   :P2CM_LARGURA, :P2CM_ESPESSURA, :P2CM_CONSTANTE, :P2CM_COMPRI' +
        'MENTO,'
      
        '   :P2CM_QTD_KG, :P2CM_QTD_KG_UNIT, :P2CM_QTD_PECAS, :P2CM_SEQ, ' +
        ':CMET_NOME,'
      '   :P2CM_PITEM_PRECO,:P2CM_PITEM_PCOHORA,:P2CM_PITEM_QTDHORA)')
    DeleteSQL.Strings = (
      'delete from CADP02_CMET'
      'where'
      '  P2CM_CODEMP = :OLD_P2CM_CODEMP and'
      '  P2CM_CODPRO = :OLD_P2CM_CODPRO and'
      '  P2CM_LOTSEQ = :OLD_P2CM_LOTSEQ and'
      '  P2CM_CHAVE = :OLD_P2CM_CHAVE and'
      '  P2CM_CODIGO = :OLD_P2CM_CODIGO')
    Left = 782
    Top = 15
  end
  object Src_Ped02_CMet: TDataSource
    DataSet = Tb_Ped02_CMet
    Left = 816
    Top = 16
  end
end
