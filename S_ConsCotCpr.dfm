object Frm_ConsCotCpr: TFrm_ConsCotCpr
  Left = 192
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Consultar Cota'#231#227'o'
  ClientHeight = 314
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 12
    Width = 40
    Height = 13
    Caption = 'Chave..:'
  end
  object Label2: TLabel
    Left = 254
    Top = 12
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label3: TLabel
    Left = 254
    Top = 36
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label4: TLabel
    Left = 72
    Top = 36
    Width = 45
    Height = 13
    Caption = 'Periodo..:'
  end
  object Label5: TLabel
    Left = 48
    Top = 62
    Width = 69
    Height = 13
    Caption = 'Aprovadas de:'
  end
  object Label6: TLabel
    Left = 253
    Top = 62
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Button1: TButton
    Left = 216
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ChaveI: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ChaveF: TEdit
    Left = 265
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dtIni: TDateEdit
    Left = 128
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object dtFim: TDateEdit
    Left = 265
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 144
    Width = 556
    Height = 170
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CCT1CHAVE'
        Title.Alignment = taCenter
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCT1DATA'
        Title.Alignment = taCenter
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCT1DATA_CONF'
        Title.Alignment = taCenter
        Width = 166
        Visible = True
      end>
  end
  object edt_data_conf_ini: TDateEdit
    Left = 127
    Top = 58
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object edt_data_conf_fin: TDateEdit
    Left = 264
    Top = 58
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object Tb_CC1: TQuery
    CachedUpdates = True
    AutoRefresh = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCOT1')
    UpdateMode = upWhereKeyOnly
    Left = 26
    Top = 114
    object Tb_CC1CCT1CODEMP: TFloatField
      FieldName = 'CCT1CODEMP'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CODEMP'
    end
    object Tb_CC1CCT1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CCT1CHAVE'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CHAVE'
    end
    object Tb_CC1CCT1LOTSEQ: TFloatField
      FieldName = 'CCT1LOTSEQ'
      Origin = 'SG_ASSOC.CADCOT1.CCT1LOTSEQ'
    end
    object Tb_CC1CCT1OBS: TStringField
      FieldName = 'CCT1OBS'
      Origin = 'SG_ASSOC.CADCOT1.CCT1OBS'
      Size = 200
    end
    object Tb_CC1CCT1DATA: TDateTimeField
      DisplayLabel = 'Data da Cota'#231#227'o'
      FieldName = 'CCT1DATA'
      Origin = 'SG_ASSOC.CADCOT1.CCT1DATA'
    end
    object Tb_CC1CCT1CASAS: TFloatField
      FieldName = 'CCT1CASAS'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CASAS'
    end
    object Tb_CC1CCT1DATA_CONF: TDateTimeField
      DisplayLabel = 'Data Aprova'#231#227'o'
      FieldName = 'CCT1DATA_CONF'
    end
  end
  object DataSource1: TDataSource
    DataSet = Tb_CC1
    Left = 80
    Top = 120
  end
end
