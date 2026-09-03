object Frm_Validar_altped: TFrm_Validar_altped
  Left = 192
  Top = 117
  Width = 1100
  Height = 543
  Caption = 'Verificando Possivel Ajuste No Pedido'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1092
    Height = 41
    Align = alTop
    Caption = 'Validando Ajuste no Pedido'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -30
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1092
    Height = 105
    Align = alTop
    Caption = 'Dados do Pedido:'
    TabOrder = 1
    object RichEdit_dadosPedidos: TRichEdit
      Left = 2
      Top = 15
      Width = 1088
      Height = 88
      Align = alClient
      Alignment = taCenter
      Lines.Strings = (
        'RichEdit_dadosPedidos')
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 187
    Width = 1092
    Height = 325
    Align = alClient
    Caption = 'Itens bloqueados:'
    TabOrder = 2
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 1088
      Height = 308
      Align = alClient
      DataSource = src_itens
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
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Width = 462
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPED'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taCenter
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VDAMAX'
          Title.Alignment = taCenter
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDJAVEND'
          Title.Alignment = taCenter
          Width = 121
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 146
    Width = 1092
    Height = 41
    Align = alTop
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 439
      Top = 1
      Width = 242
      Height = 40
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object src_itens: TDataSource
    DataSet = cds_itens
    Left = 224
    Top = 139
  end
  object cds_itens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 131
    object cds_itensCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object cds_itensPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 254
    end
    object cds_itensPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object cds_itensQTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedida'
      FieldName = 'QTDPED'
    end
    object cds_itensPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'PRECO'
    end
    object cds_itensVDAMAX: TFloatField
      DisplayLabel = 'Venda Maxima'
      FieldName = 'VDAMAX'
    end
    object cds_itensQTDJAVEND: TFloatField
      DisplayLabel = 'Qtd. Deste Pedido'
      FieldName = 'QTDJAVEND'
    end
  end
end
