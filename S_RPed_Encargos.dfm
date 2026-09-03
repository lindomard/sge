object Frm_RPed_Encargos: TFrm_RPed_Encargos
  Left = 107
  Top = 114
  Width = 629
  Height = 375
  Caption = 'Encargos em relacao as vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 211
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 252
    Top = 209
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
  object Label1: TLabel
    Left = 395
    Top = 210
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 167
    Top = 234
    Width = 194
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Somado Por'
    Color = 9961367
    ParentColor = False
    Layout = tlCenter
  end
  object MDT1: TMaskEdit
    Left = 139
    Top = 208
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 285
    Top = 208
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 621
    Height = 193
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label6: TLabel
        Left = 9
        Top = 16
        Width = 103
        Height = 13
        Caption = 'C'#243'digo do Vendedor.:'
      end
      object Label15: TLabel
        Left = 69
        Top = 59
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object CODVEN: TEdit
        Left = 115
        Top = 13
        Width = 62
        Height = 19
        Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 176
        Top = 13
        Width = 400
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 116
        Top = 37
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODPRO: TEdit
        Left = 115
        Top = 54
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 176
        Top = 54
        Width = 400
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 117
        Top = 75
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
    end
    object tsOutros: TTabSheet
      Caption = 'tsOutros'
      ImageIndex = 1
    end
    object TsGrids: TTabSheet
      Caption = 'TsGrids'
      ImageIndex = 2
      object STG_TP00: TStringGrid
        Left = 8
        Top = 8
        Width = 217
        Height = 26
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 0
      end
      object STG_TP01: TStringGrid
        Left = 8
        Top = 38
        Width = 217
        Height = 26
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 1
      end
      object STG_TP03: TStringGrid
        Left = 8
        Top = 70
        Width = 217
        Height = 26
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 2
      end
      object STG_TP04: TStringGrid
        Left = 8
        Top = 96
        Width = 217
        Height = 26
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 3
      end
      object STG_TP09: TStringGrid
        Left = 8
        Top = 128
        Width = 217
        Height = 26
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 4
      end
    end
  end
  object bbImprimir: TBitBtn
    Left = 13
    Top = 254
    Width = 132
    Height = 36
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
    Left = 467
    Top = 254
    Width = 132
    Height = 36
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
  object CB_TIPOPESQ: TComboBox
    Left = 482
    Top = 206
    Width = 132
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_EmiDoc: TCheckBox
    Left = 396
    Top = 233
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 6
  end
  object rg_progresso: TGroupBox
    Left = 0
    Top = 294
    Width = 621
    Height = 50
    Align = alBottom
    Caption = 'Progresso do Calculo do Relatorio:'
    TabOrder = 7
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 617
      Height = 33
      Align = alClient
      Progress = 0
    end
  end
  object cb_somado: TComboBox
    Left = 167
    Top = 250
    Width = 194
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 5
    Sorted = True
    TabOrder = 8
    Text = 'Fornecedor'
    Items.Strings = (
      'Bairro'
      'Banco'
      'Cidade'
      'Convenio'
      'Estado'
      'Fornecedor'
      'Nome do Produto'
      'Plano de Vendas'
      'Raz'#227'o Social'
      'Rede de Clientes'
      'Supervisor'
      'Televendas'
      'Tipo Plano de Vendas(AV,AP)'
      'Transportadora'
      'Vendedor')
  end
  object Qr_Vendas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT P2CHAVE,P2ORDEM,P2CODPRO,P2QTD,P2TOTDES,P2TOTLIQ,P2PCOTAB' +
        ',P2PCOCUS,P2UCPR,P2PRECO,P2PCOFPG '
      'FROM CADP02'
      ' WHERE P2CODPRO=2194'
      'ORDER BY P2CHAVE,P2ORDEM')
    Left = 456
    Top = 24
    object Qr_VendasVNOME: TStringField
      FieldName = 'VNOME'
      Size = 40
    end
    object Qr_VendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_VendasSEMCOM: TFloatField
      FieldName = 'SEMCOM'
    end
    object Qr_VendasFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object Qr_VendasICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_VendasP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
  end
  object Tb_Custo: TTable
    DatabaseName = 'C:\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'CODENC'
        DataType = ftFloat
      end
      item
        Name = 'CODCLI'
        DataType = ftFloat
      end
      item
        Name = 'CODVEN'
        DataType = ftFloat
      end
      item
        Name = 'TABPV'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODPV'
        DataType = ftFloat
      end
      item
        Name = 'CODTRA'
        DataType = ftFloat
      end
      item
        Name = 'NOMENC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PCOUCPR'
        DataType = ftFloat
      end
      item
        Name = 'PCOCUS'
        DataType = ftFloat
      end
      item
        Name = 'PCOVDA'
        DataType = ftFloat
      end
      item
        Name = 'QTDVDA'
        DataType = ftFloat
      end
      item
        Name = 'VLRENC'
        DataType = ftFloat
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'LOCALPCO'
        DataType = ftFloat
      end
      item
        Name = 'CODSOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMSOM'
        DataType = ftString
        Size = 60
      end>
    StoreDefs = True
    TableName = 'CADCUS'
    Left = 200
    Top = 128
    object Tb_CustoCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Tb_CustoCODENC: TFloatField
      FieldName = 'CODENC'
    end
    object Tb_CustoCODCLI: TFloatField
      FieldName = 'CODCLI'
    end
    object Tb_CustoCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Tb_CustoNOMENC: TStringField
      FieldName = 'NOMENC'
      Size = 40
    end
    object Tb_CustoTABPV: TStringField
      FieldName = 'TABPV'
      Size = 3
    end
    object Tb_CustoCODTRA: TFloatField
      FieldName = 'CODTRA'
    end
    object Tb_CustoPCOUCPR: TFloatField
      FieldName = 'PCOUCPR'
    end
    object Tb_CustoPCOCUS: TFloatField
      FieldName = 'PCOCUS'
    end
    object Tb_CustoPCOVDA: TFloatField
      FieldName = 'PCOVDA'
    end
    object Tb_CustoQTDVDA: TFloatField
      FieldName = 'QTDVDA'
    end
    object Tb_CustoVLRENC: TFloatField
      FieldName = 'VLRENC'
    end
    object Tb_CustoNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object Tb_CustoLOCALPCO: TFloatField
      FieldName = 'LOCALPCO'
    end
    object Tb_CustoCODPV: TFloatField
      FieldName = 'CODPV'
    end
    object Tb_CustoCODSOM: TStringField
      FieldName = 'CODSOM'
    end
    object Tb_CustoNOMSOM: TStringField
      FieldName = 'NOMSOM'
      Size = 60
    end
  end
  object Qr_Custo: TQuery
    DatabaseName = 'C:\SGE\TEMP'
    SQL.Strings = (
      'Select CODSOM, NOMSOM,LOCALPCO,CODENC,NOMENC'
      '  ,sum(QTDVDA) as QTDVDA'
      '  ,sum(VLRENC) as VLRENC'
      '  ,sum(PCOCUS)   as PCOCUS'
      '  ,sum(PCOUCPR)   as PCOUCPR'
      '  ,sum(PCOVDA)   as PCOVDA'
      '  FROM CADCUS'
      '  GROUP BY CODSOM, NOMSOM,LOCALPCO,CODENC,NOMENC'
      '')
    Left = 284
    Top = 136
    object Qr_CustoCODSOM: TStringField
      FieldName = 'CODSOM'
    end
    object Qr_CustoNOMSOM: TStringField
      FieldName = 'NOMSOM'
      Size = 60
    end
    object Qr_CustoLOCALPCO: TFloatField
      FieldName = 'LOCALPCO'
    end
    object Qr_CustoQTDVDA: TFloatField
      FieldName = 'QTDVDA'
    end
    object Qr_CustoVLRENC: TFloatField
      FieldName = 'VLRENC'
    end
    object Qr_CustoPCOCUS: TFloatField
      FieldName = 'PCOCUS'
    end
    object Qr_CustoPCOVDA: TFloatField
      FieldName = 'PCOVDA'
    end
    object Qr_CustoCODENC: TFloatField
      FieldName = 'CODENC'
    end
    object Qr_CustoNOMENC: TStringField
      FieldName = 'NOMENC'
      Size = 40
    end
    object Qr_CustoPCOUCPR: TFloatField
      FieldName = 'PCOUCPR'
    end
  end
end
