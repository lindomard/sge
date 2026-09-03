object Frm_CadSol_Pesq: TFrm_CadSol_Pesq
  Left = 228
  Top = 221
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Solicita'#231#245'es'
  ClientHeight = 288
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 133
    Width = 503
    Height = 155
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CS1DATA'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CS1CHAVE'
        Title.Alignment = taCenter
        Title.Caption = 'CHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMDEP'
        Title.Alignment = taCenter
        Title.Caption = 'DEPARTAMENTO'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMSOL'
        Title.Alignment = taCenter
        Title.Caption = 'SOLICITANTE'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 133
    Align = alClient
    TabOrder = 1
    object lblSolicitante: TLabel
      Left = 44
      Top = 11
      Width = 58
      Height = 13
      Caption = 'Solicitante..:'
    end
    object Label1: TLabel
      Left = 25
      Top = 33
      Width = 76
      Height = 13
      Caption = 'Departamento..:'
    end
    object Label2: TLabel
      Left = 62
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Chave..:'
    end
    object Label3: TLabel
      Left = 208
      Top = 56
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 70
      Top = 78
      Width = 32
      Height = 13
      Caption = 'Data..:'
    end
    object Label5: TLabel
      Left = 208
      Top = 77
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object CODSOL: TEdit
      Left = 104
      Top = 8
      Width = 49
      Height = 21
      TabOrder = 0
      OnExit = CODSOLExit
      OnKeyPress = CODSOLKeyPress
    end
    object NOMSOL: TEdit
      Left = 152
      Top = 8
      Width = 166
      Height = 21
      TabStop = False
      Color = 16776176
      ReadOnly = True
      TabOrder = 1
    end
    object cbDpto: TComboBox
      Left = 104
      Top = 30
      Width = 215
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Todos'
      Items.Strings = (
        'Todos')
    end
    object dtIni: TDateEdit
      Left = 104
      Top = 74
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object btnBuscar: TButton
      Left = 72
      Top = 98
      Width = 249
      Height = 25
      Caption = '&Buscar'
      TabOrder = 8
      OnClick = btnBuscarClick
    end
    object rgStatus: TRadioGroup
      Left = 336
      Top = 19
      Width = 105
      Height = 91
      Caption = 'Status'
      ItemIndex = 2
      Items.Strings = (
        'Em Aberto'
        'Baixadas'
        'Todos')
      TabOrder = 7
    end
    object dtFin: TDateEdit
      Left = 223
      Top = 74
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
    object chaveIni: TEdit
      Left = 104
      Top = 50
      Width = 96
      Height = 21
      TabOrder = 3
      OnExit = chaveIniExit
    end
    object chaveFim: TEdit
      Left = 223
      Top = 50
      Width = 96
      Height = 21
      TabOrder = 4
      OnExit = chaveFimExit
    end
  end
  object DataSource1: TDataSource
    DataSet = Tb_Sol1
    Left = 240
    Top = 216
  end
  object Tb_Sol1: TQuery
    OnCalcFields = Tb_Sol1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADSOL1')
    Left = 280
    Top = 216
    object Tb_Sol1CS1CODEMP: TFloatField
      FieldName = 'CS1CODEMP'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODEMP'
    end
    object Tb_Sol1CS1CHAVE: TFloatField
      FieldName = 'CS1CHAVE'
      Origin = 'SG_ASSOC.CADSOL1.CS1CHAVE'
    end
    object Tb_Sol1CS1LOTSEQ: TFloatField
      FieldName = 'CS1LOTSEQ'
      Origin = 'SG_ASSOC.CADSOL1.CS1LOTSEQ'
    end
    object Tb_Sol1CS1CODDEP: TFloatField
      FieldName = 'CS1CODDEP'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODDEP'
    end
    object Tb_Sol1CS1CODSOL: TStringField
      FieldName = 'CS1CODSOL'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODSOL'
      Size = 200
    end
    object Tb_Sol1CS1OBS: TStringField
      FieldName = 'CS1OBS'
      Origin = 'SG_ASSOC.CADSOL1.CS1OBS'
      Size = 200
    end
    object Tb_Sol1CS1DATA: TDateTimeField
      FieldName = 'CS1DATA'
      Origin = 'SG_ASSOC.CADSOL1.CS1DATA'
    end
    object Tb_Sol1CS1STATUS: TFloatField
      FieldName = 'CS1STATUS'
      Origin = 'SG_ASSOC.CADSOL1.CS1STATUS'
    end
    object Tb_Sol1NOMSOL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMSOL'
      Size = 60
      Calculated = True
    end
    object Tb_Sol1NOMDEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMDEP'
      Size = 60
      Calculated = True
    end
  end
end
