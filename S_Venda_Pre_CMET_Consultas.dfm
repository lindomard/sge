object Frm_Venda_Pre_CMET_Consultas: TFrm_Venda_Pre_CMET_Consultas
  Left = 227
  Top = 177
  Width = 804
  Height = 377
  Caption = 'Consulta dos Filhos das Chapas Metalicas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_item: TPanel
    Left = 0
    Top = 0
    Width = 788
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 788
    Height = 257
    Align = alClient
    Caption = 'Filhos'
    TabOrder = 1
    object DBGrid_cmet: TDBGrid
      Left = 2
      Top = 15
      Width = 784
      Height = 240
      Align = alClient
      DataSource = src_pro_cmet
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid_cmetDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CMET_CODIGO'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CMET_NOME'
          Width = 492
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CMET_PRECO'
          Width = 125
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 788
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbcmet_sair: TBitBtn
      Left = 216
      Top = 5
      Width = 377
      Height = 31
      Caption = 'Sair'
      TabOrder = 0
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
  end
  object src_pro_cmet: TDataSource
    DataSet = tb_cmet
    Left = 620
    Top = 258
  end
  object tb_cmet: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_CMET')
    Left = 660
    Top = 258
    object tb_cmetCMET_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'CMET_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODEMP'
    end
    object tb_cmetCMET_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'CMET_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODPRO'
    end
    object tb_cmetCMET_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo Seq'
      FieldName = 'CMET_CODIGO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_CODIGO'
    end
    object tb_cmetCMET_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Sub-Produto'
      FieldName = 'CMET_NOME'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_NOME'
      Size = 60
    end
    object tb_cmetCMET_PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'CMET_PRECO'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_PRECO'
    end
  end
end
