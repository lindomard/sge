object Frm_Fincn_Fpgto: TFrm_Fincn_Fpgto
  Left = 192
  Top = 124
  Width = 732
  Height = 480
  Caption = 'Forma de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 113
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 716
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 716
    Height = 288
    Align = alClient
    DataSource = src_fpgto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DUP_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_DESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_DTVCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_DTPGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_CODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_NOMCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_NOMFPG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_NUMDOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_VALDOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_NUMLOT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_DTDEP'
        Visible = True
      end>
  end
  object mem_fpgto: TRxMemoryData
    FieldDefs = <>
    Left = 376
    Top = 24
    object mem_fpgtoDUP_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DUP_NUMERO'
    end
    object mem_fpgtoDUP_DESD: TStringField
      DisplayLabel = 'Parc'
      FieldName = 'DUP_DESD'
      Size = 2
    end
    object mem_fpgtoDUP_DTVCTO: TDateField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'DUP_DTVCTO'
    end
    object mem_fpgtoDUP_DTPGTO: TDateField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'DUP_DTPGTO'
    end
    object mem_fpgtoDUP_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DUP_CODCLI'
    end
    object mem_fpgtoDUP_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'DUP_NOMCLI'
      Size = 60
    end
    object mem_fpgtoDUP_VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'DUP_VALOR'
    end
    object mem_fpgtoFPG_NOMFPG: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'FPG_NOMFPG'
      Size = 30
    end
    object mem_fpgtoFPG_NUMDOC: TStringField
      DisplayLabel = 'Numero Doc'
      FieldName = 'FPG_NUMDOC'
    end
    object mem_fpgtoFPG_VALDOC: TFloatField
      DisplayLabel = 'Valor Doc'
      FieldName = 'FPG_VALDOC'
    end
    object mem_fpgtoFPG_NUMLOT: TFloatField
      DisplayLabel = 'Num.Lote'
      FieldName = 'FPG_NUMLOT'
    end
    object mem_fpgtoFPG_DTDEP: TDateField
      DisplayLabel = 'Dt.Dep'
      FieldName = 'FPG_DTDEP'
    end
  end
  object src_fpgto: TDataSource
    DataSet = mem_fpgto
    Left = 432
    Top = 24
  end
end
