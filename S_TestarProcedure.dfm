object Frm_TestarProcedure: TFrm_TestarProcedure
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'PARA TESTAR PROCEDURE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bbExecutar: TBitBtn
    Left = 304
    Top = 32
    Width = 305
    Height = 25
    Caption = 'Executr Procedure'
    TabOrder = 0
    OnClick = bbExecutarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 322
    Width = 912
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Memo_saida: TMemo
    Left = 0
    Top = 136
    Width = 912
    Height = 186
    Align = alBottom
    Lines.Strings = (
      'Memo_saida')
    TabOrder = 2
  end
  object strProc: TADOStoredProc
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 241
    object strProcCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object strProcLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
    end
    object strProcDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'DTVCTO'
    end
    object strProcQTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTD'
    end
    object strProcTIPO_PROD: TFloatField
      DisplayLabel = 'Tipo Prod'
      FieldName = 'TIPO_PROD'
    end
    object strProctipo_produto: TStringField
      DisplayLabel = 'Tipo do Produto'
      FieldName = 'tipo_produto'
      Size = 40
    end
    object strProcpdnome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pdnome'
      Size = 100
    end
    object strProcpdund: TStringField
      DisplayLabel = 'Und'
      FieldName = 'pdund'
      Size = 3
    end
    object strProcpdmarca: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'pdmarca'
      Size = 60
    end
    object strProcop3_pu: TFloatField
      FieldName = 'op3_pu'
    end
    object strProcop3_sitmp: TFloatField
      FieldName = 'op3_sitmp'
    end
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 200
  end
end
