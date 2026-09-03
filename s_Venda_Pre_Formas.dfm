object Frm_Venda_Pre_Formas: TFrm_Venda_Pre_Formas
  Left = 192
  Top = 117
  Width = 928
  Height = 480
  Caption = 'Outras Formas de Pagamentos'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 105
    Align = alTop
    TabOrder = 0
    object lbl_dados_pedido_l01: TLabel
      Left = 1
      Top = 1
      Width = 918
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_dados_pedido_l01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_dados_pedido_l02: TLabel
      Left = 1
      Top = 14
      Width = 918
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_dados_pedido_l01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SAIR: TBitBtn
      Left = 346
      Top = 66
      Width = 207
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = SAIRClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 920
    Height = 344
    Align = alClient
    Caption = 'Formas de Pagamentos Disponiveis:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 916
      Height = 327
      Align = alClient
      DataSource = src_formas_pagamentos
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEPLANO'
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
          FieldName = 'TABPV'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPV'
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
          FieldName = 'TOTLIQ'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPRAZOS'
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
          FieldName = 'VALPARC'
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
          FieldName = 'PERCACRES'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object cds_formas_pagamentos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOMEPLANO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TABPV'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CODPV'
        DataType = ftInteger
      end
      item
        Name = 'TOTALPED'
        DataType = ftFloat
      end
      item
        Name = 'TOTLIQ'
        DataType = ftFloat
      end
      item
        Name = 'QTDPRAZOS'
        DataType = ftInteger
      end
      item
        Name = 'VALPARC'
        DataType = ftFloat
      end
      item
        Name = 'PERCACRES'
        DataType = ftFloat
      end
      item
        Name = 'P1CODPV'
        DataType = ftInteger
      end
      item
        Name = 'P1TABPV'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 664
    Top = 72
    Data = {
      E00000009619E0BD01000000180000000A000000000003000000E000094E4F4D
      45504C414E4F0100490000000100055749445448020002006400055441425056
      010049000000010005574944544802000200020005434F445056040001000000
      000008544F54414C504544080004000000000006544F544C4951080004000000
      0000095154445052415A4F5304000100000000000756414C5041524308000400
      00000000095045524341435245530800040000000000075031434F4450560400
      0100000000000750315441425056010049000000010005574944544802000200
      02000000}
    object cds_formas_pagamentosNOMEPLANO: TStringField
      DisplayLabel = 'Nome do Plano'
      DisplayWidth = 40
      FieldName = 'NOMEPLANO'
      Size = 100
    end
    object cds_formas_pagamentosTABPV: TStringField
      DisplayLabel = 'Tab PV'
      DisplayWidth = 7
      FieldName = 'TABPV'
      Size = 2
    end
    object cds_formas_pagamentosCODPV: TIntegerField
      DisplayLabel = 'C'#243'd PV'
      DisplayWidth = 12
      FieldName = 'CODPV'
    end
    object cds_formas_pagamentosTOTALPED: TFloatField
      DisplayLabel = 'Total do Pedido'
      DisplayWidth = 12
      FieldName = 'TOTALPED'
    end
    object cds_formas_pagamentosTOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      DisplayWidth = 12
      FieldName = 'TOTLIQ'
    end
    object cds_formas_pagamentosQTDPRAZOS: TIntegerField
      DisplayLabel = 'Qtd Parc'
      DisplayWidth = 14
      FieldName = 'QTDPRAZOS'
    end
    object cds_formas_pagamentosVALPARC: TFloatField
      DisplayLabel = 'Valor Parcela'
      DisplayWidth = 12
      FieldName = 'VALPARC'
    end
    object cds_formas_pagamentosPERCACRES: TFloatField
      DisplayLabel = '% Acres'
      DisplayWidth = 22
      FieldName = 'PERCACRES'
    end
    object cds_formas_pagamentosP1TABPV: TStringField
      FieldName = 'P1TABPV'
      Size = 2
    end
    object cds_formas_pagamentosP1CODPV: TIntegerField
      FieldName = 'P1CODPV'
    end
  end
  object src_formas_pagamentos: TDataSource
    DataSet = cds_formas_pagamentos
    Left = 720
    Top = 72
  end
end
