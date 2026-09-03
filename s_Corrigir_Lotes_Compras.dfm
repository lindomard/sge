object Frm_Corrigir_Lotes_Compras: TFrm_Corrigir_Lotes_Compras
  Left = 192
  Top = 124
  Width = 1123
  Height = 480
  Caption = 'Corrigir Lotes dos Pedidos de Compras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1107
    Height = 40
    Align = alTop
    Alignment = taCenter
    Caption = 'Corrigir lotes dos Produtos'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 1107
    Height = 41
    Align = alTop
    TabOrder = 0
    object lbl_obs: TLabel
      Left = 1
      Top = 1
      Width = 1105
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object gb_itensdopedido: TGroupBox
    Left = 0
    Top = 81
    Width = 1107
    Height = 160
    Align = alClient
    Caption = 'Itens do Pedido:'
    TabOrder = 1
    object DBGrid_itensdopedido: TDBGrid
      Left = 2
      Top = 15
      Width = 1103
      Height = 143
      Align = alClient
      DataSource = src_itensdopedido
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2CODPRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 336
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
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
          FieldName = 'PF2QTDP'
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
          FieldName = 'ESTOQUE_ATUAL'
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
          FieldName = 'PF2PU'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2ITEM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 1107
    Height = 160
    Align = alBottom
    TabOrder = 2
    object gb_ja_vendido: TGroupBox
      Left = 545
      Top = 1
      Width = 561
      Height = 158
      Align = alClient
      Caption = 'Ja Vendidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBGrid_lotes_vendidos: TDBGrid
        Left = 2
        Top = 15
        Width = 557
        Height = 141
        Align = alClient
        DataSource = src_ja_vendido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'v_ped_codemp'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_ped_chave'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_ped_lotseq'
            Title.Alignment = taCenter
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_qtd'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_razsoc'
            Title.Alignment = taCenter
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_ant_lote'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_ant_dtvcto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_novo_lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_novo_dtvcto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_alterar'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'v_alterar'
            Visible = True
          end>
      end
    end
    object gb_novos_lotes: TGroupBox
      Left = 1
      Top = 1
      Width = 544
      Height = 158
      Align = alLeft
      Caption = 'Novos Lotes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBGrid_lotes_novos: TDBGrid
        Left = 2
        Top = 15
        Width = 540
        Height = 141
        Align = alClient
        DataSource = src_lotes_novos_compra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'nl_qtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nl_ant_lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nl_ant_dtvcto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nl_nov_lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nl_nov_dtvcto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nl_saldo_atual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 1107
    Height = 41
    Align = alBottom
    TabOrder = 3
    object bbSalvarLotes: TBitBtn
      Left = 64
      Top = 8
      Width = 217
      Height = 25
      Caption = 'Salvar Novos Lotes'
      Enabled = False
      TabOrder = 0
      OnClick = bbSalvarLotesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 800
      Top = 8
      Width = 217
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
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
  object src_itensdopedido: TDataSource
    DataSet = tb_itensdopedido
    OnDataChange = src_itensdopedidoDataChange
    Left = 136
    Top = 113
  end
  object src_lotes_novos_compra: TDataSource
    DataSet = cds_lotes_novos_compra
    OnDataChange = src_lotes_novos_compraDataChange
    Left = 256
    Top = 305
  end
  object src_ja_vendido: TDataSource
    DataSet = cds_ja_vendido
    Left = 624
    Top = 305
  end
  object tb_itensdopedido: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PDNOME,PDUND,PDMARCA,PF2QTDP,PF2PU,PF2CODPRO,PF2ITEM from' +
        ' CADPF2,CADPRO'
      'WHERE PDCODPRO=PF2CODPRO'
      'ORDER BY PF2ITEM')
    Left = 176
    Top = 113
    object tb_itensdopedidoPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 100
    end
    object tb_itensdopedidoPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object tb_itensdopedidoPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 30
    end
    object tb_itensdopedidoPF2QTDP: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'PF2QTDP'
    end
    object tb_itensdopedidoPF2PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'PF2PU'
    end
    object tb_itensdopedidoPF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PF2CODPRO'
    end
    object tb_itensdopedidoESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'ESTOQUE_ATUAL'
    end
    object tb_itensdopedidoPF2ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'PF2ITEM'
    end
  end
  object cds_lotes_novos_compra: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = cds_lotes_novos_compraBeforeInsert
    BeforePost = cds_lotes_novos_compraBeforePost
    Left = 312
    Top = 297
    object cds_lotes_novos_compranl_item: TIntegerField
      FieldName = 'nl_item'
    end
    object cds_lotes_novos_compranl_nov_lote: TStringField
      DisplayLabel = 'Lote(novo)'
      FieldName = 'nl_nov_lote'
    end
    object cds_lotes_novos_compranl_nov_dtvcto: TDateField
      DisplayLabel = 'Dt.Vcto(novo)'
      FieldName = 'nl_nov_dtvcto'
    end
    object cds_lotes_novos_compranl_qtd: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'nl_qtd'
    end
    object cds_lotes_novos_compranl_ant_lote: TStringField
      DisplayLabel = 'Lote(Antes)'
      FieldName = 'nl_ant_lote'
    end
    object cds_lotes_novos_compranl_ant_dtvcto: TDateField
      DisplayLabel = 'Dt.Vcto(antes)'
      FieldName = 'nl_ant_dtvcto'
    end
    object cds_lotes_novos_compranl_saldo_atual: TFloatField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'nl_saldo_atual'
    end
  end
  object cds_ja_vendido: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 305
    object cds_ja_vendidov_item: TIntegerField
      DisplayLabel = #205'tem'
      FieldName = 'v_item'
    end
    object cds_ja_vendidov_ped_codemp: TIntegerField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'v_ped_codemp'
    end
    object cds_ja_vendidov_ped_chave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'v_ped_chave'
    end
    object cds_ja_vendidov_ped_lotseq: TIntegerField
      DisplayLabel = 'Lot.Seq'
      FieldName = 'v_ped_lotseq'
    end
    object cds_ja_vendidov_qtd: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'v_qtd'
    end
    object cds_ja_vendidov_razsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'v_razsoc'
      Size = 100
    end
    object cds_ja_vendidov_ant_lote: TStringField
      FieldName = 'v_ant_lote'
    end
    object cds_ja_vendidov_ant_dtvcto: TDateField
      FieldName = 'v_ant_dtvcto'
    end
    object cds_ja_vendidov_novo_lote: TStringField
      FieldName = 'v_novo_lote'
    end
    object cds_ja_vendidov_novo_dtvcto: TDateField
      FieldName = 'v_novo_dtvcto'
    end
    object cds_ja_vendidov_alterar: TStringField
      FieldName = 'v_alterar'
      Size = 1
    end
    object cds_ja_vendidov_ped_item: TIntegerField
      FieldName = 'v_ped_item'
    end
  end
end
