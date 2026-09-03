object Frm_CadSol_Baixas: TFrm_CadSol_Baixas
  Left = 207
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Baixa de Solicita'#231#245'es'
  ClientHeight = 412
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 224
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Chave..:'
    end
    object edtBuscar: TEdit
      Left = 56
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 0
      OnEnter = edtBuscarEnter
    end
    object bbBuscar: TBitBtn
      Left = 154
      Top = 14
      Width = 47
      Height = 25
      TabOrder = 1
      OnClick = bbBuscarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 43
      Width = 478
      Height = 180
      Align = alBottom
      Caption = 'Dados da Solicita'#231#227'o'
      TabOrder = 2
      object lblChave: TLabel
        Left = 46
        Top = 22
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object lblDataSol: TLabel
        Left = 187
        Top = 23
        Width = 84
        Height = 13
        Caption = 'Data Solicita'#231#227'o.:'
      end
      object lblSolicitante: TLabel
        Left = 22
        Top = 44
        Width = 58
        Height = 13
        Caption = 'Solicitante..:'
      end
      object Label2: TLabel
        Left = 3
        Top = 66
        Width = 76
        Height = 13
        Caption = 'Departamento..:'
      end
      object lblObservacao: TLabel
        Left = 12
        Top = 88
        Width = 67
        Height = 13
        Caption = 'Observa'#231#227'o..:'
      end
      object dbeChave: TDBEdit
        Left = 82
        Top = 19
        Width = 104
        Height = 21
        TabStop = False
        DataField = 'CS1CHAVE'
        DataSource = Src_Sol1
        ReadOnly = True
        TabOrder = 0
      end
      object dbeDataSol: TDBDateEdit
        Left = 273
        Top = 20
        Width = 91
        Height = 21
        TabStop = False
        DataField = 'CS1DATA'
        DataSource = Src_Sol1
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 1
      end
      object dbeNomSol: TDBEdit
        Left = 147
        Top = 41
        Width = 217
        Height = 21
        TabStop = False
        DataField = 'NOMSOL'
        DataSource = Src_Sol1
        ReadOnly = True
        TabOrder = 3
      end
      object dbeCodSol: TDBEdit
        Left = 82
        Top = 41
        Width = 65
        Height = 21
        DataField = 'CS1CODSOL'
        DataSource = Src_Sol1
        ReadOnly = True
        TabOrder = 2
      end
      object dbeCadSol: TDBMemo
        Left = 82
        Top = 85
        Width = 282
        Height = 89
        DataField = 'CS1OBS'
        DataSource = Src_Sol1
        ReadOnly = True
        TabOrder = 5
      end
      object edtDepto: TEdit
        Left = 82
        Top = 62
        Width = 282
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
      object btnConfirmar: TButton
        Left = 376
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 6
        OnClick = btnConfirmarClick
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 224
    Width = 480
    Height = 188
    Align = alClient
    DataSource = Src_Sol2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CS2CODPRO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMPRO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CS2QTDPREV'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'QTD PREV'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CS2QTDREAL'
        Title.Alignment = taCenter
        Title.Caption = 'QTD REAL'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDPEN'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'PEND'
        Width = 40
        Visible = True
      end>
  end
  object Tb_Sol1: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Sol1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadsol1')
    UpdateObject = Up_Sol1
    Left = 369
    Top = 93
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
    object Tb_Sol1CS1CODSOL: TStringField
      FieldName = 'CS1CODSOL'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODSOL'
    end
    object Tb_Sol1CS1CODDEP: TFloatField
      FieldName = 'CS1CODDEP'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODDEP'
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
      Size = 120
      Calculated = True
    end
    object Tb_Sol1NOMDEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMDEP'
      Size = 60
      Calculated = True
    end
  end
  object Up_Sol1: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsol1'
      'set'
      '  CS1CODEMP = :CS1CODEMP,'
      '  CS1CHAVE = :CS1CHAVE,'
      '  CS1LOTSEQ = :CS1LOTSEQ,'
      '  CS1CODDEP = :CS1CODDEP,'
      '  CS1CODSOL = :CS1CODSOL,'
      '  CS1OBS = :CS1OBS,'
      '  CS1DATA = :CS1DATA,'
      '  CS1STATUS = :CS1STATUS'
      'where'
      '  CS1CODEMP = :OLD_CS1CODEMP and'
      '  CS1CHAVE = :OLD_CS1CHAVE and'
      '  CS1LOTSEQ = :OLD_CS1LOTSEQ')
    InsertSQL.Strings = (
      'insert into cadsol1'
      
        '  (CS1CODEMP, CS1CHAVE, CS1LOTSEQ, CS1CODDEP, CS1CODSOL, CS1OBS,' +
        ' '
      'CS1DATA, '
      '   CS1STATUS)'
      'values'
      '  (:CS1CODEMP, :CS1CHAVE, :CS1LOTSEQ, :CS1CODDEP, :CS1CODSOL, '
      ':CS1OBS, '
      '   :CS1DATA, :CS1STATUS)')
    DeleteSQL.Strings = (
      'delete from cadsol1'
      'where'
      '  CS1CODEMP = :OLD_CS1CODEMP and'
      '  CS1CHAVE = :OLD_CS1CHAVE and'
      '  CS1LOTSEQ = :OLD_CS1LOTSEQ')
    Left = 398
    Top = 93
  end
  object Src_Sol1: TDataSource
    DataSet = Tb_Sol1
    Left = 426
    Top = 93
  end
  object Tb_Sol2: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Sol2BeforeInsert
    BeforePost = Tb_Sol2BeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Sol2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadsol2')
    UpdateObject = Up_Sol2
    Left = 369
    Top = 141
    object Tb_Sol2CS2CODEMP: TFloatField
      FieldName = 'CS2CODEMP'
      Origin = 'SG_ASSOC.CADSOL2.CS2CODEMP'
    end
    object Tb_Sol2CS2CHAVE: TFloatField
      FieldName = 'CS2CHAVE'
      Origin = 'SG_ASSOC.CADSOL2.CS2CHAVE'
    end
    object Tb_Sol2CS2LOTSEQ: TFloatField
      FieldName = 'CS2LOTSEQ'
      Origin = 'SG_ASSOC.CADSOL2.CS2LOTSEQ'
    end
    object Tb_Sol2CS2CODPRO: TStringField
      DisplayWidth = 20
      FieldName = 'CS2CODPRO'
      Origin = 'SG_ASSOC.CADSOL2.CS2CODPRO'
    end
    object Tb_Sol2CS2QTDPREV: TFloatField
      FieldName = 'CS2QTDPREV'
      Origin = 'SG_ASSOC.CADSOL2.CS2QTDPREV'
    end
    object Tb_Sol2CS2QTDREAL: TFloatField
      FieldName = 'CS2QTDREAL'
      Origin = 'SG_ASSOC.CADSOL2.CS2QTDREAL'
    end
    object Tb_Sol2NOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 120
      Calculated = True
    end
    object Tb_Sol2QTDPEN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTDPEN'
      Calculated = True
    end
  end
  object Up_Sol2: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsol2'
      'set'
      '  CS2CODEMP = :CS2CODEMP,'
      '  CS2CHAVE = :CS2CHAVE,'
      '  CS2LOTSEQ = :CS2LOTSEQ,'
      '  CS2CODPRO = :CS2CODPRO,'
      '  CS2QTDPREV = :CS2QTDPREV,'
      '  CS2QTDREAL = :CS2QTDREAL'
      'where'
      '  CS2CODEMP = :OLD_CS2CODEMP and'
      '  CS2CHAVE = :OLD_CS2CHAVE and'
      '  CS2LOTSEQ = :OLD_CS2LOTSEQ and'
      '  CS2CODPRO = :OLD_CS2CODPRO')
    InsertSQL.Strings = (
      'insert into cadsol2'
      '  (CS2CODEMP, CS2CHAVE, CS2LOTSEQ, CS2CODPRO, CS2QTDPREV, '
      'CS2QTDREAL)'
      'values'
      '  (:CS2CODEMP, :CS2CHAVE, :CS2LOTSEQ, :CS2CODPRO, :CS2QTDPREV, '
      ':CS2QTDREAL)')
    DeleteSQL.Strings = (
      'delete from cadsol2'
      'where'
      '  CS2CODEMP = :OLD_CS2CODEMP and'
      '  CS2CHAVE = :OLD_CS2CHAVE and'
      '  CS2LOTSEQ = :OLD_CS2LOTSEQ and'
      '  CS2CODPRO = :OLD_CS2CODPRO')
    Left = 398
    Top = 141
  end
  object Src_Sol2: TDataSource
    DataSet = Tb_Sol2
    Left = 426
    Top = 141
  end
end
