object Frm_Lic2_Pedido: TFrm_Lic2_Pedido
  Left = 192
  Top = 117
  Width = 726
  Height = 401
  Caption = 'Gerar Pedido atraves das pendencias da licita'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 718
    Height = 66
    Align = alTop
    Caption = 'Dados da Licita'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 23
      Width = 97
      Height = 13
      Caption = 'N'#186' da Licita'#231#227'o.:'
    end
    object lbl_licitacao: TLabel
      Left = 116
      Top = 23
      Width = 80
      Height = 14
      Caption = 'lbl_licitacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 46
      Width = 96
      Height = 13
      Caption = 'Cliente.............:'
    end
    object lbl_cliente: TLabel
      Left = 116
      Top = 46
      Width = 69
      Height = 14
      Caption = 'lbl_cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 718
    Height = 57
    Align = alBottom
    TabOrder = 1
    object Shape_fatparc: TShape
      Left = 5
      Top = 7
      Width = 29
      Height = 13
      Brush.Color = clGreen
      Pen.Style = psClear
    end
    object Label3: TLabel
      Left = 37
      Top = 6
      Width = 94
      Height = 13
      Caption = 'Faturado Parcial'
    end
    object Label4: TLabel
      Left = 37
      Top = 21
      Width = 78
      Height = 13
      Caption = 'N'#227'o Faturado'
    end
    object Shape_naofat: TShape
      Left = 5
      Top = 22
      Width = 29
      Height = 13
      Brush.Color = clRed
      Pen.Style = psClear
    end
    object Shape_fattotal: TShape
      Left = 4
      Top = 38
      Width = 29
      Height = 13
      Brush.Color = clWindowText
      Pen.Style = psClear
    end
    object Label34: TLabel
      Left = 37
      Top = 37
      Width = 84
      Height = 13
      Caption = 'Faturado Total'
    end
    object btn_sair: TBitBtn
      Left = 567
      Top = 8
      Width = 129
      Height = 39
      Cursor = crHandPoint
      Hint = 'Voltar ao Formul'#225'rio anterior'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object PEDIDO: TBitBtn
      Left = 304
      Top = 8
      Width = 129
      Height = 39
      Cursor = crHandPoint
      Hint = 'Gerar Pedido de Venda'
      Caption = '&Gerar Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = PEDIDOClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 66
    Width = 718
    Height = 247
    Cursor = crHandPoint
    ActivePage = tbs_produtos
    Align = alClient
    TabOrder = 2
    object tbs_produtos: TTabSheet
      Caption = 'Produtos'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 710
        Height = 219
        Align = alClient
        DataSource = Ds_Pendente
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LICITADA'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENVIADA'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PENDENTE'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FATURAR'
            Title.Alignment = taCenter
            Width = 99
            Visible = True
          end>
      end
    end
    object tbs_gerados: TTabSheet
      Caption = 'Pedidos Gerados'
      ImageIndex = 1
      object Grid_Chave: TDBGrid
        Left = 0
        Top = 0
        Width = 182
        Height = 219
        Align = alLeft
        DataSource = Ds_Chave
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'LP_CHAVEPED'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Chave Pedido'
            Width = 150
            Visible = True
          end>
      end
    end
  end
  object Qry_Pendencia: TQuery
    CachedUpdates = True
    AfterEdit = Qry_PendenciaAfterEdit
    BeforePost = Qry_PendenciaBeforePost
    AfterPost = Qry_PendenciaAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      '  PRODUTO,'
      '  PDNOME AS NOME,'
      '  PDUND  AS UNIDADE,'
      '  SUM(LICITADA) AS LICITADA, '
      '  SUM(ENVIADA) AS ENVIADA, '
      '  SUM(LICITADA - ENVIADA) AS PENDENTE, '
      '  SUM(LICITADA - ENVIADA) AS QTD_FATURAR'
      'FROM '
      '  PENDENCIAS,'
      '  CADPRO'
      'WHERE'
      '  PRODUTO = PDCODPRO'
      'GROUP BY '
      '  PRODUTO,'
      '  PDNOME,'
      '  PDUND'
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Pendencia
    Left = 243
    Top = 22
    object Qry_PendenciaPRODUTO: TFloatField
      DisplayLabel = 'C'#243'd Prod'
      FieldName = 'PRODUTO'
    end
    object Qry_PendenciaNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      FixedChar = True
      Size = 1
    end
    object Qry_PendenciaUNIDADE: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 1
    end
    object Qry_PendenciaLICITADA: TFloatField
      DisplayLabel = 'Qtd Licitada'
      FieldName = 'LICITADA'
    end
    object Qry_PendenciaENVIADA: TFloatField
      DisplayLabel = 'Qtd. Faturada'
      FieldName = 'ENVIADA'
    end
    object Qry_PendenciaPENDENTE: TFloatField
      DisplayLabel = 'Qtd Pendente'
      FieldName = 'PENDENTE'
    end
    object Qry_PendenciaQTD_FATURAR: TFloatField
      DisplayLabel = 'Qtd. Faturar'
      FieldName = 'QTD_FATURAR'
    end
    object Qry_PendenciaLC2_PCOPZ: TFloatField
      FieldName = 'LC2_PCOPZ'
    end
    object Qry_PendenciaLC2_PCOAV: TFloatField
      FieldName = 'LC2_PCOAV'
    end
  end
  object Ds_Pendente: TDataSource
    DataSet = Qry_Pendencia
    Left = 278
    Top = 22
  end
  object Qry_Chave: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CAD_LICPEDIDO')
    UpdateMode = upWhereKeyOnly
    Left = 251
    Top = 137
    object Qry_ChaveLP_CHAVEPED: TFloatField
      FieldName = 'LP_CHAVEPED'
      Origin = 'SG_ASSOC.CAD_LICPEDIDO.LP_CHAVEPED'
    end
  end
  object Ds_Chave: TDataSource
    DataSet = Qry_Chave
    Left = 286
    Top = 137
  end
  object U_Pendencia: TUpdateSQL
    Left = 316
    Top = 26
  end
end
