object frm_pendencia: Tfrm_pendencia
  Left = 213
  Top = 176
  Width = 644
  Height = 382
  Align = alCustom
  BorderIcons = []
  Caption = 'Mercadorias Pendentes da Licita'#231#227'o'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object pnl_licitacao: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 70
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 630
      Height = 67
      Caption = 'Dados da Licita'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 23
        Width = 103
        Height = 14
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
        Width = 101
        Height = 14
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 636
    Height = 281
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Shape_fatparc: TShape
      Left = 5
      Top = 215
      Width = 29
      Height = 13
      Brush.Color = clGreen
      Pen.Style = psClear
    end
    object Label3: TLabel
      Left = 37
      Top = 214
      Width = 101
      Height = 14
      Caption = 'Faturado Parcial'
    end
    object Label4: TLabel
      Left = 37
      Top = 229
      Width = 85
      Height = 14
      Caption = 'N'#227'o Faturado'
    end
    object Shape_naofat: TShape
      Left = 5
      Top = 230
      Width = 29
      Height = 13
      Brush.Color = clRed
      Pen.Style = psClear
    end
    object Label5: TLabel
      Left = 260
      Top = 215
      Width = 87
      Height = 14
      Caption = 'Total de Itens'
    end
    object lbl_total: TLabel
      Left = 355
      Top = 215
      Width = 55
      Height = 14
      Caption = 'lbl_total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape_fattotal: TShape
      Left = 4
      Top = 247
      Width = 29
      Height = 13
      Brush.Color = clWindowText
      Pen.Style = psClear
    end
    object Label34: TLabel
      Left = 37
      Top = 245
      Width = 90
      Height = 14
      Caption = 'Faturado Total'
    end
    object btn_sair: TBitBtn
      Left = 531
      Top = 217
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Voltar ao Formul'#225'rio anterior'
      Caption = '&Sair'
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
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 632
      Height = 208
      Cursor = crHandPoint
      ActivePage = tbs_produtos
      Align = alTop
      TabOrder = 1
      object tbs_produtos: TTabSheet
        Caption = 'Produtos'
        object Grid_Licitacao: TDBGrid
          Left = 0
          Top = 0
          Width = 624
          Height = 180
          Align = alTop
          DataSource = Ds_Pendente
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = Grid_LicitacaoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Descri'#231#227'o'
              Width = 214
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LICITADA'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Solicitada'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENVIADA'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Enviada'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PENDENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. Pendente'
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
          Height = 179
          Align = alLeft
          DataSource = Ds_Chave
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
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
  end
  object Qry_Pendencia: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      '  PRODUTO,'
      '  PDNOME AS NOME,'
      '  PDUND  AS UNIDADE,'
      '  SUM(LICITADA) AS LICITADA, '
      '  SUM(ENVIADA) AS ENVIADA, '
      '  SUM(LICITADA - ENVIADA) AS PENDENTE '
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
    Left = 243
    Top = 22
    object Qry_PendenciaPRODUTO: TFloatField
      FieldName = 'PRODUTO'
    end
    object Qry_PendenciaNOME: TStringField
      FieldName = 'NOME'
      FixedChar = True
      Size = 1
    end
    object Qry_PendenciaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 1
    end
    object Qry_PendenciaLICITADA: TFloatField
      FieldName = 'LICITADA'
    end
    object Qry_PendenciaENVIADA: TFloatField
      FieldName = 'ENVIADA'
    end
    object Qry_PendenciaPENDENTE: TFloatField
      FieldName = 'PENDENTE'
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
end
