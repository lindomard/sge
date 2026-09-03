object Frm_Agenda: TFrm_Agenda
  Left = 155
  Top = 166
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Agenda de Atendimento'
  ClientHeight = 431
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 270
    Align = alTop
    TabOrder = 0
    object lbl_mes: TLabel
      Left = 0
      Top = 8
      Width = 472
      Height = 37
      Alignment = taCenter
      AutoSize = False
      Caption = 'NOVEMBRO / 2010'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 473
      Top = 17
      Width = 35
      Height = 16
      Caption = 'Mes..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 616
      Top = 15
      Width = 33
      Height = 16
      Caption = 'Ano..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Calendar1: TCalendar
      Left = 1
      Top = 56
      Width = 734
      Height = 213
      Align = alBottom
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StartOfWeek = 0
      TabOrder = 0
      OnChange = Calendar1Change
    end
    object cb_mes: TComboBox
      Left = 510
      Top = 14
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Janeiro'
      OnChange = cb_mesChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cb_ano: TComboBox
      Left = 651
      Top = 14
      Width = 83
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 2
      Text = '2010'
      OnChange = cb_anoChange
      Items.Strings = (
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        ''
        '')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 270
    Width = 736
    Height = 26
    Align = alTop
    TabOrder = 1
    object incluir: TBitBtn
      Left = 2
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = incluirClick
    end
    object alterar: TBitBtn
      Left = 124
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = alterarClick
    end
    object excluir: TBitBtn
      Left = 246
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = excluirClick
    end
    object gravar: TBitBtn
      Left = 368
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Gravar'
      TabOrder = 3
      OnClick = gravarClick
    end
    object cancelar: TBitBtn
      Left = 490
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = cancelarClick
    end
    object sair: TBitBtn
      Left = 612
      Top = 2
      Width = 122
      Height = 24
      Caption = '&Sair'
      TabOrder = 5
      OnClick = sairClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 296
    Width = 736
    Height = 134
    Align = alTop
    TabOrder = 2
    object lbl_codigo: TLabel
      Left = 32
      Top = 8
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 31
      Width = 91
      Height = 16
      Caption = 'Hora Prevista..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 182
      Top = 32
      Width = 57
      Height = 16
      Caption = 'Assunto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CODIGO: TEdit
      Left = 112
      Top = 4
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object NOME: TEdit
      Left = 176
      Top = 4
      Width = 557
      Height = 24
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object hora: TMaskEdit
      Left = 112
      Top = 29
      Width = 65
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 2
      Text = '  :  '
    end
    object assunto: TEdit
      Left = 241
      Top = 29
      Width = 492
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 54
      Width = 734
      Height = 79
      Align = alBottom
      DataSource = Src_Agen
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'AGHORA'
          Title.Caption = 'HORARIO'
          Width = 62
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'FORNECEDOR'
          Width = 207
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'AGASSUNTO'
          Title.Caption = 'ASSUNTO'
          Width = 447
          Visible = True
        end>
    end
  end
  object Src_Agen: TDataSource
    DataSet = Qr_Agen
    Left = 112
    Top = 24
  end
  object Qr_Agen: TQuery
    CachedUpdates = True
    BeforePost = Qr_AgenBeforePost
    AfterPost = Qr_AgenAfterPost
    AfterDelete = Qr_AgenAfterDelete
    OnCalcFields = Qr_AgenCalcFields
    AutoRefresh = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADAGEN')
    UpdateObject = U_Agen
    Left = 80
    Top = 24
    object Qr_AgenAGCODEMP: TFloatField
      FieldName = 'AGCODEMP'
      Origin = 'SG_ASSOC.CADAGEN.AGCODEMP'
    end
    object Qr_AgenAGCODTIP: TFloatField
      FieldName = 'AGCODTIP'
      Origin = 'SG_ASSOC.CADAGEN.AGCODTIP'
    end
    object Qr_AgenAGCODSEQ: TFloatField
      FieldName = 'AGCODSEQ'
      Origin = 'SG_ASSOC.CADAGEN.AGCODSEQ'
    end
    object Qr_AgenAGDATA: TDateTimeField
      FieldName = 'AGDATA'
      Origin = 'SG_ASSOC.CADAGEN.AGDATA'
    end
    object Qr_AgenAGHORA: TStringField
      FieldName = 'AGHORA'
      Origin = 'SG_ASSOC.CADAGEN.AGHORA'
      Size = 5
    end
    object Qr_AgenAGCODIGO: TFloatField
      FieldName = 'AGCODIGO'
      Origin = 'SG_ASSOC.CADAGEN.AGCODIGO'
    end
    object Qr_AgenAGASSUNTO: TStringField
      FieldName = 'AGASSUNTO'
      Origin = 'SG_ASSOC.CADAGEN.AGASSUNTO'
      Size = 50
    end
    object Qr_AgenNOME: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME'
      Size = 50
      Calculated = True
    end
  end
  object U_Agen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAGEN'
      'set'
      '  AGCODEMP = :AGCODEMP,'
      '  AGCODTIP = :AGCODTIP,'
      '  AGCODSEQ = :AGCODSEQ,'
      '  AGDATA = :AGDATA,'
      '  AGHORA = :AGHORA,'
      '  AGCODIGO = :AGCODIGO,'
      '  AGASSUNTO = :AGASSUNTO'
      'where'
      '  AGCODEMP = :OLD_AGCODEMP and'
      '  AGCODSEQ = :OLD_AGCODSEQ')
    InsertSQL.Strings = (
      'insert into CADAGEN'
      '  (AGCODEMP, AGCODTIP, AGCODSEQ, AGDATA, AGHORA, AGCODIGO, '
      'AGASSUNTO)'
      'values'
      
        '  (:AGCODEMP, :AGCODTIP, :AGCODSEQ, :AGDATA, :AGHORA, :AGCODIGO,' +
        ' '
      ':AGASSUNTO)')
    DeleteSQL.Strings = (
      'delete from CADAGEN'
      'where'
      '  AGCODEMP = :OLD_AGCODEMP and'
      '  AGCODSEQ = :OLD_AGCODSEQ')
    Left = 143
    Top = 24
  end
end
