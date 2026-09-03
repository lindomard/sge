object Frm_BxOs: TFrm_BxOs
  Left = 211
  Top = 140
  BorderStyle = bsSingle
  Caption = 'Baixa de OS'
  ClientHeight = 442
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label50: TLabel
    Left = 507
    Top = 153
    Width = 70
    Height = 13
    Caption = 'Chave Pedido:'
  end
  object Label49: TLabel
    Left = 404
    Top = 154
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label48: TLabel
    Left = 190
    Top = 153
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label47: TLabel
    Left = 70
    Top = 174
    Width = 42
    Height = 13
    Caption = 'T'#233'cnico:'
  end
  object Label45: TLabel
    Left = 14
    Top = 132
    Width = 98
    Height = 13
    Caption = 'Nome do Solicitante:'
  end
  object Label2: TLabel
    Left = 562
    Top = 27
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label5: TLabel
    Left = 456
    Top = 48
    Width = 30
    Height = 13
    Caption = 'Bairro:'
  end
  object Label7: TLabel
    Left = 459
    Top = 71
    Width = 27
    Height = 13
    Caption = 'CEP.:'
  end
  object Label9: TLabel
    Left = 502
    Top = 90
    Width = 85
    Height = 13
    Caption = 'Data Autoriza'#231#227'o:'
  end
  object Label3: TLabel
    Left = 72
    Top = 6
    Width = 40
    Height = 13
    Caption = 'Chave..:'
  end
  object Label1: TLabel
    Left = 74
    Top = 27
    Width = 38
    Height = 13
    Caption = 'Cliente.:'
  end
  object Label4: TLabel
    Left = 63
    Top = 48
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label6: TLabel
    Left = 76
    Top = 69
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label12: TLabel
    Left = 9
    Top = 90
    Width = 103
    Height = 13
    Caption = 'Atendente/Vendedor:'
  end
  object Label8: TLabel
    Left = 2
    Top = 111
    Width = 110
    Height = 13
    Caption = 'Servi'#231'o Autorizado por:'
  end
  object Label10: TLabel
    Left = 48
    Top = 153
    Width = 64
    Height = 13
    Caption = 'Entrada data:'
  end
  object Label11: TLabel
    Left = 270
    Top = 151
    Width = 59
    Height = 13
    Caption = 'Saida: Data:'
  end
  object CHAVEPED: TEdit
    Left = 586
    Top = 150
    Width = 88
    Height = 19
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 19
  end
  object HORASAI: TMaskEdit
    Left = 432
    Top = 150
    Width = 52
    Height = 19
    Color = clWhite
    Ctl3D = False
    EditMask = '!90:00;1; '
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 18
    Text = '  :  '
  end
  object HORAENT: TMaskEdit
    Left = 219
    Top = 150
    Width = 49
    Height = 19
    Color = clWhite
    Ctl3D = False
    EditMask = '!90:00;1; '
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 16
    Text = '  :  '
  end
  object NOMTEC: TEdit
    Left = 188
    Top = 171
    Width = 325
    Height = 19
    Color = clWhite
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 21
  end
  object CODTEC: TEdit
    Left = 115
    Top = 171
    Width = 71
    Height = 19
    Color = clWhite
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 20
    OnExit = CODTECExit
    OnKeyPress = CODTECKeyPress
  end
  object NOMSOL: TEdit
    Left = 115
    Top = 129
    Width = 325
    Height = 19
    Color = clWhite
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 14
  end
  object MDATA: TMaskEdit
    Left = 591
    Top = 24
    Width = 85
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
    Text = '  /  /    '
  end
  object BAIRRO: TEdit
    Left = 491
    Top = 45
    Width = 185
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object CEP: TEdit
    Left = 491
    Top = 66
    Width = 101
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object RG_OPER: TRadioGroup
    Left = 478
    Top = 106
    Width = 197
    Height = 31
    Caption = 'Opera'#231#227'o:'
    Color = clWhite
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'A Pagar'
      'Garantia'
      'Contrato')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 13
  end
  object DATAAUT: TMaskEdit
    Left = 590
    Top = 87
    Width = 85
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 11
    Text = '  /  /    '
  end
  object CODVEN: TEdit
    Left = 115
    Top = 87
    Width = 71
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object NOMVEN: TEdit
    Left = 188
    Top = 87
    Width = 311
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object CIDADE: TEdit
    Left = 115
    Top = 66
    Width = 325
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object ENDERECO: TEdit
    Left = 115
    Top = 45
    Width = 325
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object NOMCLI: TEdit
    Left = 187
    Top = 24
    Width = 370
    Height = 19
    TabStop = False
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object CODCLI: TEdit
    Left = 115
    Top = 24
    Width = 71
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object CHAVE: TEdit
    Left = 115
    Top = 3
    Width = 71
    Height = 19
    Color = clWhite
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object NOMAUT: TEdit
    Left = 115
    Top = 108
    Width = 325
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object DATAENT: TMaskEdit
    Left = 115
    Top = 150
    Width = 71
    Height = 19
    Color = clWhite
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 15
    Text = '  /  /    '
  end
  object DATASAI: TMaskEdit
    Left = 331
    Top = 150
    Width = 69
    Height = 19
    Color = clWhite
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 17
    Text = '  /  /    '
  end
  object btnBuscar: TButton
    Left = 188
    Top = 3
    Width = 39
    Height = 19
    Caption = '&Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 220
    Width = 669
    Height = 218
    Caption = '  Parecer T'#233'cnico  '
    TabOrder = 22
    object mObs: TMemo
      Left = 2
      Top = 15
      Width = 665
      Height = 201
      Align = alClient
      TabOrder = 0
    end
  end
  object bbGravar: TBitBtn
    Left = 608
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 23
    OnClick = bbGravarClick
  end
  object btnImprimir: TButton
    Left = 520
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 24
    OnClick = btnImprimirClick
  end
  object Qr_Os01: TQuery
    CachedUpdates = True
    AfterPost = Qr_Os01AfterPost
    AfterDelete = Qr_Os01AfterDelete
    OnCalcFields = Qr_Os01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS1CODEMP,'
      '       OS1LOTSEQ,'
      '       OS1CHAVE,'
      '       OS1DATA,'
      '       OS1DATAAUT,'
      '       OS1NOMEAUT,'
      '       OS1DATADEV,'
      '       OS1HORADEV,'
      '       OS1DATAENT,'
      '       OS1HORAENT,'
      '       OS1CODCLI,'
      '       OS1CODVEN,'
      '       OS1OPER,'
      '       OS1DEFREC,'
      '       OS1OBS01,'
      '       OS1OBS02,'
      '       OS1OBS03,'
      '       OS1OBS04,'
      '       OS1STATUS,'
      '       OS1LOTSEQ_CP,'
      '       OS1CHAVEPED,'
      '       OS1TOTAL,'
      '       OS1TOTSER,'
      '       OS1DESCSER,'
      '       OS1TOTPEC,'
      '       OS1DESCPEC,'
      '       OS1ESTREG,'
      '       OS1DATALT,'
      '       OS1CODUSR,'
      '       OS1NOMSOL,'
      '       OS1CODTEC,'
      '       OS1DESCBAIXA,'
      '       CRAZAO,CLOG,'
      '       CBAIRRO,CCIDADE,CUF,'
      '       CCEP, CFONE01,CFAX,CCPF,CCNPJ,CIE,CRG'
      '       ,CDENOM'
      '       from CADOS01,CADCLI where OS1CODEMP is null'
      '       and CCODEMP=OS1CODEMP'
      '       and CCODCLI=OS1CODCLI')
    UpdateMode = upWhereChanged
    Left = 376
    Top = 280
    object Qr_Os01OS1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS1CODEMP'
      Origin = 'SG_ASSOC.CADOS01.OS1CODEMP'
    end
    object Qr_Os01OS1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS1LOTSEQ'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ'
    end
    object Qr_Os01OS1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS1CHAVE'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVE'
    end
    object Qr_Os01OS1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OS1DATA'
      Origin = 'SG_ASSOC.CADOS01.OS1DATA'
    end
    object Qr_Os01OS1DATAAUT: TDateTimeField
      DisplayLabel = 'Dt.Aut.'
      FieldName = 'OS1DATAAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAAUT'
    end
    object Qr_Os01OS1DATADEV: TDateTimeField
      DisplayLabel = 'Data Prev.Ent'
      FieldName = 'OS1DATADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1DATADEV'
    end
    object Qr_Os01OS1DATAENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'OS1DATAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAENT'
    end
    object Qr_Os01OS1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'OS1CODCLI'
      Origin = 'SG_ASSOC.CADOS01.OS1CODCLI'
    end
    object Qr_Os01OS1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'OS1CODVEN'
      Origin = 'SG_ASSOC.CADOS01.OS1CODVEN'
    end
    object Qr_Os01OS1OPER: TFloatField
      DisplayLabel = 'Oper'
      FieldName = 'OS1OPER'
      Origin = 'SG_ASSOC.CADOS01.OS1OPER'
    end
    object Qr_Os01OS1DEFREC: TBlobField
      DisplayLabel = 'Defeito Reclamado'
      FieldName = 'OS1DEFREC'
      Origin = 'SG_ASSOC.CADOS01.OS1DEFREC'
      Size = 1
    end
    object Qr_Os01OS1OBS01: TStringField
      DisplayLabel = 'Oberva'#231#245'es Linha 01'
      FieldName = 'OS1OBS01'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS01'
      Size = 60
    end
    object Qr_Os01OS1OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'OS1OBS02'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS02'
      Size = 60
    end
    object Qr_Os01OS1OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'OS1OBS03'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS03'
      Size = 60
    end
    object Qr_Os01OS1OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'OS1OBS04'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS04'
      Size = 60
    end
    object Qr_Os01OS1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OS1STATUS'
      Origin = 'SG_ASSOC.CADOS01.OS1STATUS'
    end
    object Qr_Os01OS1LOTSEQ_CP: TFloatField
      DisplayLabel = 'Lote Seq.Chave Ped'
      FieldName = 'OS1LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ_CP'
    end
    object Qr_Os01OS1CHAVEPED: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'OS1CHAVEPED'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVEPED'
    end
    object Qr_Os01CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Os01CLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_Os01CBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_Os01CCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_Os01CUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_Os01CCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_Os01OS1TOTAL: TFloatField
      DisplayLabel = 'Total da OS'
      FieldName = 'OS1TOTAL'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTAL'
    end
    object Qr_Os01nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Qr_Os01OS1TOTSER: TFloatField
      FieldName = 'OS1TOTSER'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTSER'
    end
    object Qr_Os01OS1DESCSER: TFloatField
      FieldName = 'OS1DESCSER'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCSER'
    end
    object Qr_Os01OS1TOTPEC: TFloatField
      FieldName = 'OS1TOTPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTPEC'
    end
    object Qr_Os01OS1DESCPEC: TFloatField
      FieldName = 'OS1DESCPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCPEC'
    end
    object Qr_Os01OS1ESTREG: TFloatField
      FieldName = 'OS1ESTREG'
      Origin = 'SG_ASSOC.CADOS01.OS1ESTREG'
    end
    object Qr_Os01OS1DATALT: TDateTimeField
      FieldName = 'OS1DATALT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATALT'
    end
    object Qr_Os01OS1CODUSR: TFloatField
      FieldName = 'OS1CODUSR'
      Origin = 'SG_ASSOC.CADOS01.OS1CODUSR'
    end
    object Qr_Os01OS1NOMEAUT: TStringField
      FieldName = 'OS1NOMEAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMEAUT'
      Size = 40
    end
    object Qr_Os01OS1NOMSOL: TStringField
      FieldName = 'OS1NOMSOL'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMSOL'
      Size = 40
    end
    object Qr_Os01CFAX: TStringField
      FieldName = 'CFAX'
      Origin = 'SG_ASSOC.CADCLI.CFAX'
      Size = 16
    end
    object Qr_Os01CCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_Os01CCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_Os01CIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_Os01CRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_Os01OS1CODTEC: TFloatField
      FieldName = 'OS1CODTEC'
      Origin = 'SG_ASSOC.CADOS01.OS1CODTEC'
    end
    object Qr_Os01nomtec: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtec'
      Size = 40
      Calculated = True
    end
    object Qr_Os01OS1HORADEV: TStringField
      FieldName = 'OS1HORADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1HORADEV'
      Size = 10
    end
    object Qr_Os01OS1HORAENT: TStringField
      FieldName = 'OS1HORAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1HORAENT'
      Size = 10
    end
    object Qr_Os01CFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_Os01CDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 60
    end
    object Qr_Os01OS1DESCBAIXA: TMemoField
      FieldName = 'OS1DESCBAIXA'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCBAIXA'
      BlobType = ftMemo
      Size = 3000
    end
  end
  object Up_Os01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOS01'
      'set'
      '  OS1CODEMP = :OS1CODEMP,'
      '  OS1LOTSEQ = :OS1LOTSEQ,'
      '  OS1CHAVE = :OS1CHAVE,'
      '  OS1DATA = :OS1DATA,'
      '  OS1DATAAUT = :OS1DATAAUT,'
      '  OS1NOMEAUT = :OS1NOMEAUT,'
      '  OS1DATADEV = :OS1DATADEV,'
      '  OS1HORADEV = :OS1HORADEV,'
      '  OS1DATAENT = :OS1DATAENT,'
      '  OS1HORAENT = :OS1HORAENT,'
      '  OS1CODCLI = :OS1CODCLI,'
      '  OS1CODVEN = :OS1CODVEN,'
      '  OS1OPER = :OS1OPER,'
      '  OS1DEFREC = :OS1DEFREC,'
      '  OS1OBS01 = :OS1OBS01,'
      '  OS1OBS02 = :OS1OBS02,'
      '  OS1OBS03 = :OS1OBS03,'
      '  OS1OBS04 = :OS1OBS04,'
      '  OS1STATUS = :OS1STATUS,'
      '  OS1LOTSEQ_CP = :OS1LOTSEQ_CP,'
      '  OS1CHAVEPED = :OS1CHAVEPED,'
      '  OS1TOTAL = :OS1TOTAL,'
      '  OS1TOTSER = :OS1TOTSER,'
      '  OS1DESCSER = :OS1DESCSER,'
      '  OS1TOTPEC = :OS1TOTPEC,'
      '  OS1DESCPEC = :OS1DESCPEC,'
      '  OS1ESTREG = :OS1ESTREG,'
      '  OS1DATALT = :OS1DATALT,'
      '  OS1CODUSR = :OS1CODUSR,'
      '  OS1NOMSOL = :OS1NOMSOL,'
      '  OS1CODTEC = :OS1CODTEC,'
      '  OS1DESCBAIXA = :OS1DESCBAIXA'
      'where'
      '  OS1CODEMP = :OLD_OS1CODEMP and'
      '  OS1LOTSEQ = :OLD_OS1LOTSEQ and'
      '  OS1CHAVE = :OLD_OS1CHAVE')
    InsertSQL.Strings = (
      'insert into CADOS01'
      '  (OS1CODEMP, OS1LOTSEQ, OS1CHAVE, OS1DATA, OS1DATAAUT, '
      'OS1NOMEAUT, OS1DATADEV, '
      '   OS1HORADEV, OS1DATAENT, OS1HORAENT, OS1CODCLI, OS1CODVEN, '
      'OS1OPER, OS1DEFREC, '
      
        '   OS1OBS01, OS1OBS02, OS1OBS03, OS1OBS04, OS1STATUS, OS1LOTSEQ_' +
        'CP, '
      'OS1CHAVEPED, '
      '   OS1TOTAL, OS1TOTSER, OS1DESCSER, OS1TOTPEC, OS1DESCPEC, '
      'OS1ESTREG, OS1DATALT, '
      '   OS1CODUSR, OS1NOMSOL, OS1CODTEC, OS1DESCBAIXA)'
      'values'
      '  (:OS1CODEMP, :OS1LOTSEQ, :OS1CHAVE, :OS1DATA, :OS1DATAAUT, '
      ':OS1NOMEAUT, '
      
        '   :OS1DATADEV, :OS1HORADEV, :OS1DATAENT, :OS1HORAENT, :OS1CODCL' +
        'I, '
      ':OS1CODVEN, '
      
        '   :OS1OPER, :OS1DEFREC, :OS1OBS01, :OS1OBS02, :OS1OBS03, :OS1OB' +
        'S04, '
      ':OS1STATUS, '
      
        '   :OS1LOTSEQ_CP, :OS1CHAVEPED, :OS1TOTAL, :OS1TOTSER, :OS1DESCS' +
        'ER, '
      ':OS1TOTPEC, '
      '   :OS1DESCPEC, :OS1ESTREG, :OS1DATALT, :OS1CODUSR, :OS1NOMSOL, '
      ':OS1CODTEC, '
      '   :OS1DESCBAIXA)')
    DeleteSQL.Strings = (
      'delete from CADOS01'
      'where'
      '  OS1CODEMP = :OLD_OS1CODEMP and'
      '  OS1LOTSEQ = :OLD_OS1LOTSEQ and'
      '  OS1CHAVE = :OLD_OS1CHAVE')
    Left = 424
    Top = 276
  end
  object Qr_Os02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS2CODEMP,'
      '       OS2LOTSEQ,'
      '       OS2CHAVE,'
      '       OS2ITEM,'
      '       OS2CODPRO,'
      '       OS2MODELO,'
      '       OS2MARCA,'
      '       OS2SERIE,'
      '       OS2NUMPAT,'
      '       OS2OBS01,'
      '       OS2OBS02,'
      '       PDNOME,PDUND from CADOS02,CADPRO'
      'where OS2CODEMP is null'
      'and PDCODEMP=OS2CODEMP'
      'and PDCODPRO=OS2CODPRO'
      '')
    Left = 388
    Top = 328
    object Qr_Os02OS2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS2CODEMP'
      Origin = 'SG_ASSOC.CADOS02.OS2CODEMP'
    end
    object Qr_Os02OS2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'OS2LOTSEQ'
      Origin = 'SG_ASSOC.CADOS02.OS2LOTSEQ'
    end
    object Qr_Os02OS2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS2CHAVE'
      Origin = 'SG_ASSOC.CADOS02.OS2CHAVE'
    end
    object Qr_Os02OS2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS2ITEM'
      Origin = 'SG_ASSOC.CADOS02.OS2ITEM'
    end
    object Qr_Os02OS2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS2CODPRO'
      Origin = 'SG_ASSOC.CADOS02.OS2CODPRO'
    end
    object Qr_Os02OS2MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'OS2MODELO'
      Origin = 'SG_ASSOC.CADOS02.OS2MODELO'
    end
    object Qr_Os02OS2MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'OS2MARCA'
      Origin = 'SG_ASSOC.CADOS02.OS2MARCA'
    end
    object Qr_Os02OS2SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'OS2SERIE'
      Origin = 'SG_ASSOC.CADOS02.OS2SERIE'
    end
    object Qr_Os02OS2NUMPAT: TStringField
      DisplayLabel = 'N'#250'mero Patrimonial'
      FieldName = 'OS2NUMPAT'
      Origin = 'SG_ASSOC.CADOS02.OS2NUMPAT'
    end
    object Qr_Os02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os02OS2OBS01: TStringField
      FieldName = 'OS2OBS01'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS01'
      Size = 130
    end
    object Qr_Os02OS2OBS02: TStringField
      FieldName = 'OS2OBS02'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS02'
      Size = 130
    end
  end
  object Qr_Os05: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS5CODEMP,'
      '       OS5LOTSEQ,'
      '       OS5CHAVE,'
      '       OS5ITEM,'
      '       OS5CODPRO,'
      '       OS5QTD,'
      '       OS5PU,'
      '       OS5DESC01,'
      '       OS5TOTDES,'
      '      PDNOME,PDUND from CADOS05,CADPRO'
      'where OS5CODEMP is null'
      'and PDCODEMP=OS5CODEMP'
      'and PDCODPRO=OS5CODPRO'
      '')
    Left = 472
    Top = 328
    object Qr_Os05OS5CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS5CODEMP'
      Origin = 'SG_ASSOC.CADOS05.OS5CODEMP'
    end
    object Qr_Os05OS5LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS5LOTSEQ'
      Origin = 'SG_ASSOC.CADOS05.OS5LOTSEQ'
    end
    object Qr_Os05OS5CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS5CHAVE'
      Origin = 'SG_ASSOC.CADOS05.OS5CHAVE'
    end
    object Qr_Os05OS5ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS5ITEM'
      Origin = 'SG_ASSOC.CADOS05.OS5ITEM'
    end
    object Qr_Os05OS5CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS5CODPRO'
      Origin = 'SG_ASSOC.CADOS05.OS5CODPRO'
    end
    object Qr_Os05OS5QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'OS5QTD'
      Origin = 'SG_ASSOC.CADOS05.OS5QTD'
    end
    object Qr_Os05OS5PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS5PU'
      Origin = 'SG_ASSOC.CADOS05.OS5PU'
    end
    object Qr_Os05OS5DESC01: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'OS5DESC01'
      Origin = 'SG_ASSOC.CADOS05.OS5DESC01'
    end
    object Qr_Os05OS5TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS5TOTDES'
      Origin = 'SG_ASSOC.CADOS05.OS5TOTDES'
    end
    object Qr_Os05PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os05PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Qr_Os05D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS5DCODEMP,'
      '       OS5DLOTSEQ,'
      '       OS5DCHAVE,'
      '       OS5DITEM,'
      '       OS5DCODPRO,'
      '       OS5DLINHA,'
      '       OS5DDESC'
      '       from CADOS05D'
      'where OS5DCODEMP is null')
    Left = 430
    Top = 328
    object Qr_Os05DOS5DCODEMP: TFloatField
      FieldName = 'OS5DCODEMP'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCODEMP'
    end
    object Qr_Os05DOS5DLOTSEQ: TFloatField
      FieldName = 'OS5DLOTSEQ'
      Origin = 'SG_ASSOC.CADOS05D.OS5DLOTSEQ'
    end
    object Qr_Os05DOS5DCHAVE: TFloatField
      FieldName = 'OS5DCHAVE'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCHAVE'
    end
    object Qr_Os05DOS5DITEM: TFloatField
      FieldName = 'OS5DITEM'
      Origin = 'SG_ASSOC.CADOS05D.OS5DITEM'
    end
    object Qr_Os05DOS5DCODPRO: TFloatField
      FieldName = 'OS5DCODPRO'
      Origin = 'SG_ASSOC.CADOS05D.OS5DCODPRO'
    end
    object Qr_Os05DOS5DLINHA: TFloatField
      FieldName = 'OS5DLINHA'
      Origin = 'SG_ASSOC.CADOS05D.OS5DLINHA'
    end
    object Qr_Os05DOS5DDESC: TStringField
      FieldName = 'OS5DDESC'
      Origin = 'SG_ASSOC.CADOS05D.OS5DDESC'
      Size = 60
    end
  end
  object Qr_Os04: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS4CODEMP,'
      '       OS4LOTSEQ,'
      '       OS4CHAVE,'
      '       OS4ITEM,'
      '       OS4CODPRO,'
      '       OS4QTD,'
      '       OS4PU,'
      '       OS4DESC01,'
      '       OS4TOTDES,'
      '      PDNOME,PDUND from CADOS04,CADPRO'
      'where OS4CODEMP is null'
      'and PDCODEMP=OS4CODEMP'
      'and PDCODPRO=OS4CODPRO')
    Left = 516
    Top = 328
    object Qr_Os04OS4CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS4CODEMP'
      Origin = 'SG_ASSOC.CADOS04.OS4CODEMP'
    end
    object Qr_Os04OS4LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS4LOTSEQ'
      Origin = 'SG_ASSOC.CADOS04.OS4LOTSEQ'
    end
    object Qr_Os04OS4CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS4CHAVE'
      Origin = 'SG_ASSOC.CADOS04.OS4CHAVE'
    end
    object Qr_Os04OS4ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS4ITEM'
      Origin = 'SG_ASSOC.CADOS04.OS4ITEM'
    end
    object Qr_Os04OS4CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS4CODPRO'
      Origin = 'SG_ASSOC.CADOS04.OS4CODPRO'
    end
    object Qr_Os04OS4QTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'OS4QTD'
      Origin = 'SG_ASSOC.CADOS04.OS4QTD'
    end
    object Qr_Os04OS4PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS4PU'
      Origin = 'SG_ASSOC.CADOS04.OS4PU'
    end
    object Qr_Os04OS4DESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'OS4DESC01'
      Origin = 'SG_ASSOC.CADOS04.OS4DESC01'
    end
    object Qr_Os04OS4TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS4TOTDES'
      Origin = 'SG_ASSOC.CADOS04.OS4TOTDES'
    end
    object Qr_Os04PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os04PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Qr_Os03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  OS3CODEMP,'
      '        OS3LOTSEQ,'
      '        OS3CHAVE,'
      '        OS3ITEM,'
      '        OS3CODPRO,'
      '        OS3QTD,'
      '      PDNOME,PDUND from CADOS03,CADPRO'
      'where OS3CODEMP is null'
      'and PDCODEMP=OS3CODEMP'
      'and PDCODPRO=OS3CODPRO')
    Left = 566
    Top = 328
    object Qr_Os03OS3CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS3CODEMP'
      Origin = 'SG_ASSOC.CADOS03.OS3CODEMP'
    end
    object Qr_Os03OS3LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS3LOTSEQ'
      Origin = 'SG_ASSOC.CADOS03.OS3LOTSEQ'
    end
    object Qr_Os03OS3CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS3CHAVE'
      Origin = 'SG_ASSOC.CADOS03.OS3CHAVE'
    end
    object Qr_Os03OS3ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS3ITEM'
      Origin = 'SG_ASSOC.CADOS03.OS3ITEM'
    end
    object Qr_Os03OS3CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS3CODPRO'
      Origin = 'SG_ASSOC.CADOS03.OS3CODPRO'
    end
    object Qr_Os03OS3QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'OS3QTD'
      Origin = 'SG_ASSOC.CADOS03.OS3QTD'
    end
    object Qr_Os03PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os03PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 304
    Top = 332
  end
end
