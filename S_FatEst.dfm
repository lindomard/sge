object Frm_FatEst: TFrm_FatEst
  Left = 192
  Top = 114
  Width = 696
  Height = 227
  Caption = 'Verifica'#231#227'o de Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    Caption = 
      'Verifica'#231#227'o de Estoque: Pedido N'#186' 000000 - INTERSYS SISTEMAS DE ' +
      'GEST'#195'O XXXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 688
    Height = 155
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 16776176
        Expanded = False
        FieldName = 'PDCODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'PDNOME'
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 362
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 16776176
        Expanded = False
        FieldName = 'PDSALDO'
        Title.Alignment = taCenter
        Title.Caption = 'ESTOQUE'
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 16776176
        Expanded = False
        FieldName = 'P2QTD'
        Title.Alignment = taCenter
        Title.Caption = 'QUANTIDADE'
        Width = 101
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 104
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT PDCODPRO, PDNOME, PDSALDO, SUM(P2QTD) as P2QTD'
      'FROM CADP02, CADPRO '
      'WHERE P2CODPRO=PDCODPRO AND P2QTD>PDSALDO'
      'GROUP BY PDCODPRO, PDNOME, PDSALDO')
    Left = 336
    Top = 104
    object Query1PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Query1PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Query1PDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Query1P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
end
