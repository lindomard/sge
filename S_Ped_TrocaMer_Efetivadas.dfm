object Frm_Ped_TrocaMer_Efetivadas: TFrm_Ped_TrocaMer_Efetivadas
  Left = 20
  Top = 114
  Width = 716
  Height = 375
  Caption = 'Frm_Ped_TrocaMer_Efetivadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 708
    Height = 122
    Align = alTop
    Caption = 'Dados do Pedido:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 52
      Top = 18
      Width = 41
      Height = 13
      Caption = 'Chave:'
    end
    object Label2: TLabel
      Left = 178
      Top = 18
      Width = 93
      Height = 13
      Caption = 'Data do Pedido:'
    end
    object Label3: TLabel
      Left = 362
      Top = 18
      Width = 95
      Height = 13
      Caption = 'Valor do Pedido:'
    end
    object Label4: TLabel
      Left = 13
      Top = 37
      Width = 80
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label5: TLabel
      Left = 32
      Top = 57
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object edt_chaveped: TEdit
      Left = 94
      Top = 15
      Width = 49
      Height = 19
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edt_datap: TEdit
      Left = 273
      Top = 15
      Width = 80
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_totall: TEdit
      Left = 457
      Top = 15
      Width = 80
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_razao: TEdit
      Left = 94
      Top = 33
      Width = 443
      Height = 19
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object memo_endereco: TMemo
      Left = 94
      Top = 51
      Width = 443
      Height = 61
      TabStop = False
      Color = 13565902
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object bbSair: TBitBtn
      Left = 540
      Top = 13
      Width = 155
      Height = 100
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
  object GB_COTADAS: TGroupBox
    Left = 0
    Top = 122
    Width = 708
    Height = 105
    Align = alTop
    Caption = 'Mercadorias Cotadas:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object DBGrid_cotadas: TDBGrid
      Left = 1
      Top = 14
      Width = 706
      Height = 90
      Align = alClient
      DataSource = Src_Cotadas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P2TRO_CODPRO_ENTRA'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_LOTE_ENTRA'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtvcto_entra'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_QTD_ENTRA'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_PCOUNI_ENTRA'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALBRU'
          Visible = True
        end>
    end
  end
  object GB_FATURADAS: TGroupBox
    Left = 0
    Top = 227
    Width = 708
    Height = 114
    Align = alClient
    Caption = 'Mercadorias Faturadas:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object DBGrid_Faturadas: TDBGrid
      Left = 1
      Top = 14
      Width = 706
      Height = 99
      Align = alClient
      DataSource = Src_faturadas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P2TRO_CODPRO_SAIDA'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_LOTE_SAIDA'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vcto_saida'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_QTD_SAIDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_PCOUNI_SAIDA'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALBRU'
          Visible = True
        end>
    end
  end
  object Qr_Cotadas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2TRO_CODEMP,'
      '       P2TRO_LOTSEQ,'
      '       P2TRO_CHAVE,'
      '       P2TRO_ITEM,'
      '       P2TRO_CODPRO_ENTRA,'
      '       P2TRO_LOTE_ENTRA,'
      '       P2TRO_DTVCTO_ENTRA,'
      '       P2TRO_QTD_ENTRA,'
      '       P2TRO_PCOUNI_ENTRA,'
      '       (P2TRO_QTD_ENTRA*P2TRO_PCOUNI_ENTRA) AS TOTALBRU,'
      '       PDNOME,PDUND'
      'from CADP02_TROCAS,CADPRO'
      'where PDCODPRO=P2TRO_CODPRO_ENTRA'
      '')
    Left = 600
    Top = 64
    object Qr_CotadasP2TRO_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2TRO_CODEMP'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODEMP'
    end
    object Qr_CotadasP2TRO_LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'P2TRO_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTSEQ'
    end
    object Qr_CotadasP2TRO_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2TRO_CHAVE'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CHAVE'
    end
    object Qr_CotadasP2TRO_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2TRO_ITEM'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_ITEM'
    end
    object Qr_CotadasP2TRO_CODPRO_ENTRA: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2TRO_CODPRO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODPRO_ENTRA'
    end
    object Qr_CotadasP2TRO_LOTE_ENTRA: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2TRO_LOTE_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTE_ENTRA'
    end
    object Qr_CotadasP2TRO_DTVCTO_ENTRA: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'P2TRO_DTVCTO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_DTVCTO_ENTRA'
    end
    object Qr_CotadasP2TRO_QTD_ENTRA: TFloatField
      DisplayLabel = 'Qtd.Entra'
      FieldName = 'P2TRO_QTD_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_ENTRA'
    end
    object Qr_CotadasP2TRO_PCOUNI_ENTRA: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'
      FieldName = 'P2TRO_PCOUNI_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_PCOUNI_ENTRA'
    end
    object Qr_CotadasPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_CotadasPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_CotadasTOTALBRU: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'TOTALBRU'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_ENTRA'
    end
    object Qr_Cotadasdtvcto_entra: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto_entra'
      Size = 10
      Calculated = True
    end
  end
  object Src_Cotadas: TDataSource
    DataSet = Qr_Cotadas
    OnDataChange = Src_CotadasDataChange
    Left = 632
    Top = 64
  end
  object Src_faturadas: TDataSource
    DataSet = Qr_Faturadas
    Left = 648
    Top = 162
  end
  object Qr_Faturadas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2TRO_CODEMP,'
      '       P2TRO_LOTSEQ,'
      '  P2TRO_CHAVE,'
      '  P2TRO_ITEM,'
      '  P2TRO_CODPRO_ENTRA,'
      '  P2TRO_LOTE_ENTRA,'
      '  P2TRO_DTVCTO_ENTRA,'
      '  P2TRO_QTD_ENTRA,'
      '  P2TRO_PCOUNI_ENTRA,'
      '  P2TRO_CODPRO_SAIDA,'
      '  P2TRO_LOTE_SAIDA,'
      '  P2TRO_DTVCTO_SAIDA,'
      '  P2TRO_QTD_SAIDA,'
      '  P2TRO_PCOUNI_SAIDA,'
      '  (P2TRO_QTD_SAIDA*P2TRO_PCOUNI_SAIDA) AS TOTALBRU,'
      '  PDNOME,PDUND'
      ''
      '  from CADP02_TROCAS,CADPRO'
      '  WHERE PDCODPRO=P2TRO_CODPRO_SAIDA'
      '')
    Left = 616
    Top = 154
    object Qr_FaturadasP2TRO_CODEMP: TFloatField
      FieldName = 'P2TRO_CODEMP'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODEMP'
    end
    object Qr_FaturadasP2TRO_LOTSEQ: TFloatField
      FieldName = 'P2TRO_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTSEQ'
    end
    object Qr_FaturadasP2TRO_CHAVE: TFloatField
      FieldName = 'P2TRO_CHAVE'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CHAVE'
    end
    object Qr_FaturadasP2TRO_CODPRO_ENTRA: TFloatField
      FieldName = 'P2TRO_CODPRO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODPRO_ENTRA'
    end
    object Qr_FaturadasP2TRO_LOTE_ENTRA: TStringField
      FieldName = 'P2TRO_LOTE_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTE_ENTRA'
    end
    object Qr_FaturadasP2TRO_ITEM: TFloatField
      FieldName = 'P2TRO_ITEM'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_ITEM'
    end
    object Qr_FaturadasP2TRO_DTVCTO_ENTRA: TDateTimeField
      FieldName = 'P2TRO_DTVCTO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_DTVCTO_ENTRA'
    end
    object Qr_FaturadasP2TRO_QTD_ENTRA: TFloatField
      FieldName = 'P2TRO_QTD_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_ENTRA'
    end
    object Qr_FaturadasP2TRO_PCOUNI_ENTRA: TFloatField
      FieldName = 'P2TRO_PCOUNI_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_PCOUNI_ENTRA'
    end
    object Qr_FaturadasP2TRO_CODPRO_SAIDA: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2TRO_CODPRO_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODPRO_SAIDA'
    end
    object Qr_FaturadasP2TRO_LOTE_SAIDA: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2TRO_LOTE_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTE_SAIDA'
    end
    object Qr_FaturadasP2TRO_DTVCTO_SAIDA: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'P2TRO_DTVCTO_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_DTVCTO_SAIDA'
    end
    object Qr_FaturadasP2TRO_QTD_SAIDA: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2TRO_QTD_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_SAIDA'
    end
    object Qr_FaturadasP2TRO_PCOUNI_SAIDA: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'
      FieldName = 'P2TRO_PCOUNI_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_PCOUNI_SAIDA'
    end
    object Qr_FaturadasTOTALBRU: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'TOTALBRU'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_SAIDA'
    end
    object Qr_FaturadasPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_FaturadasPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Faturadasdt_vcto_saida: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dt_vcto_saida'
      Calculated = True
    end
  end
end
