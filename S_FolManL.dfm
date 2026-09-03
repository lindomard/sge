object Frm_FolManL: TFrm_FolManL
  Left = 3
  Top = 65
  Width = 778
  Height = 457
  ActiveControl = CODFUN
  Caption = 'Lan'#231'amento Manual da Folha de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 138
    Width = 770
    Height = 140
    Align = alClient
    Caption = 'detalhes:'
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 108
      Width = 766
      Height = 30
      Align = alBottom
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = -76
        Top = 3
        Width = 522
        Height = 25
        DataSource = Src_LFol
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 766
      Height = 93
      Align = alClient
      DataSource = Src_LFol
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      Columns = <
        item
          Expanded = False
          FieldName = 'LCCODEVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeve'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LCVALOR'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LCQTD'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LCQTDPAD'
          ReadOnly = True
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vencimentos'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descontos'
          Width = 113
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 278
    Width = 770
    Height = 104
    Align = alBottom
    Caption = 'Rodap'#233':'
    Color = clScrollBar
    ParentColor = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 527
      Top = 7
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Total de Vencimentos'
    end
    object Edit2: TEdit
      Left = 636
      Top = 7
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'Total de Descontos'
    end
    object TOTVEN: TEdit
      Left = 526
      Top = 21
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 2
    end
    object TOTDES: TEdit
      Left = 636
      Top = 21
      Width = 107
      Height = 21
      Color = clRed
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 527
      Top = 49
      Width = 106
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'Total Liquido:'
    end
    object Edit5: TEdit
      Left = 636
      Top = 44
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 4
      Top = 65
      Width = 64
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'Sal'#225'rio Base'
    end
    object SALBASE: TEdit
      Left = 4
      Top = 79
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 113
      Top = 68
      Width = 110
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = 'Sal'#225'rio Contr. INSS'
    end
    object BASEINSS: TEdit
      Left = 113
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 262
      Top = 68
      Width = 110
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = 'Base de C'#225'lculo FGTS'
    end
    object BASEFGTS: TEdit
      Left = 262
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 11
    end
    object VALFGTS: TEdit
      Left = 371
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 12
    end
    object Edit10: TEdit
      Left = 371
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Text = 'F.G.T.S. do M'#234's'
    end
    object Edit9: TEdit
      Left = 527
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      Text = 'Base C'#225'lculo IRRF'
    end
    object BASEIRRF: TEdit
      Left = 527
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 15
    end
    object Edit11: TEdit
      Left = 635
      Top = 67
      Width = 111
      Height = 13
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Text = 'Faixa IRRF'
    end
    object FAIXAIRRF: TEdit
      Left = 635
      Top = 80
      Width = 107
      Height = 21
      Color = clScrollBar
      TabOrder = 17
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 382
    Width = 770
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bb_gravar: TBitBtn
      Left = 4
      Top = 3
      Width = 115
      Height = 35
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 0
      OnClick = bb_gravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object SAIR: TBitBtn
      Left = 652
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Sair'
      TabOrder = 1
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
    object CANCELAR: TBitBtn
      Left = 257
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = CANCELARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object EXCLUIR: TBitBtn
      Left = 371
      Top = 4
      Width = 115
      Height = 35
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = EXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 770
    Height = 49
    Align = alTop
    Caption = 'Entrada de Dados:'
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 136
      Height = 13
      Caption = 'C'#243'digo do Funcion'#225'rio.:'
    end
    object CODFUN: TEdit
      Left = 149
      Top = 16
      Width = 67
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODFUNExit
      OnKeyPress = CODFUNKeyPress
    end
    object NOMFUN: TEdit
      Left = 220
      Top = 15
      Width = 347
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object ATUALIZAR: TBitBtn
      Left = 569
      Top = 14
      Width = 90
      Height = 23
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = ATUALIZARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 770
    Height = 89
    Align = alTop
    Caption = 'Cabe'#231'alho:'
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    object Label2: TLabel
      Left = 13
      Top = 19
      Width = 125
      Height = 13
      Caption = 'Nome do Funcion'#225'rio:'
    end
    object Label3: TLabel
      Left = 12
      Top = 65
      Width = 127
      Height = 13
      Caption = 'C'#243'digo Departamento:'
    end
    object Label4: TLabel
      Left = 11
      Top = 44
      Width = 129
      Height = 13
      Caption = 'C'#243'digo Cargo............:'
    end
    object CCODFUN: TEdit
      Left = 141
      Top = 16
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 0
    end
    object CODDEP: TEdit
      Left = 142
      Top = 61
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 1
    end
    object NOMDEP: TEdit
      Left = 207
      Top = 61
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object CNOMFUN: TEdit
      Left = 207
      Top = 16
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object NOMCAR: TEdit
      Left = 207
      Top = 39
      Width = 290
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object CODCAR: TEdit
      Left = 142
      Top = 39
      Width = 65
      Height = 21
      Color = clWhite
      Enabled = False
      TabOrder = 5
    end
    object STG1: TStringGrid
      Left = 576
      Top = 17
      Width = 73
      Height = 24
      ColCount = 1
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 6
      Visible = False
    end
  end
  object Qr_LFol: TQuery
    CachedUpdates = True
    AfterInsert = Qr_LFolAfterInsert
    BeforeEdit = Qr_LFolBeforeEdit
    BeforePost = Qr_LFolBeforePost
    AfterPost = Qr_LFolAfterPost
    OnCalcFields = Qr_LFolCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select LCCODEMP,LCLOCAL,LCMES,LCANO'
      '       LCCODFUN,LCCODEVE,LCNAT,LCTIPO,LCQTD'
      '       ,LCVALOR,LCINCINSS,LCINCFGTS,LCINCIR,LCQTDPAD,LCSOMA'
      '       ,LCINCVT,LCTOTAL'
      '       ,CEORDIMP,CENOMEVE as nomeve'
      ' from CADLFOL,CADEVE'
      'WHERE CECODEVE=CECODEVE'
      ' where LCCODEMP is null'
      '')
    UpdateObject = U_LFol
    Left = 143
    Top = 34
    object Qr_LFolLCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'LCCODEMP'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEMP'
    end
    object Qr_LFolLCLOCAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'LCLOCAL'
      Origin = 'SG_ASSOC.CADLFOL.LCLOCAL'
    end
    object Qr_LFolLCMES: TFloatField
      DisplayLabel = 'Mes'
      FieldName = 'LCMES'
      Origin = 'SG_ASSOC.CADLFOL.LCMES'
    end
    object Qr_LFolLCANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'LCANO'
      Origin = 'SG_ASSOC.CADLFOL.LCANO'
    end
    object Qr_LFolLCCODFUN: TFloatField
      DisplayLabel = 'C'#243'digo Funcion'#225'rio'
      FieldName = 'LCCODFUN'
      Origin = 'SG_ASSOC.CADLFOL.LCCODFUN'
    end
    object Qr_LFolLCCODEVE: TFloatField
      DisplayLabel = 'C'#243'digo Evento'
      FieldName = 'LCCODEVE'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEVE'
    end
    object Qr_LFolLCNAT: TFloatField
      DisplayLabel = 'Natureza'
      FieldName = 'LCNAT'
      Origin = 'SG_ASSOC.CADLFOL.LCNAT'
    end
    object Qr_LFolLCTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'LCTIPO'
      Origin = 'SG_ASSOC.CADLFOL.LCTIPO'
    end
    object Qr_LFolLCQTD: TFloatField
      DisplayLabel = 'Ref.'
      FieldName = 'LCQTD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTD'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'LCVALOR'
      Origin = 'SG_ASSOC.CADLFOL.LCVALOR'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCINCINSS: TFloatField
      DisplayLabel = 'Incide INSS'
      FieldName = 'LCINCINSS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCINSS'
    end
    object Qr_LFolLCINCFGTS: TFloatField
      DisplayLabel = 'Incide FGTS'
      FieldName = 'LCINCFGTS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCFGTS'
    end
    object Qr_LFolLCINCIR: TFloatField
      DisplayLabel = 'Incide Imposto Renda'
      FieldName = 'LCINCIR'
      Origin = 'SG_ASSOC.CADLFOL.LCINCIR'
    end
    object Qr_LFolLCQTDPAD: TFloatField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'LCQTDPAD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTDPAD'
      DisplayFormat = '##0.00'
    end
    object Qr_LFolLCSOMA: TFloatField
      DisplayLabel = 'Soma'
      FieldName = 'LCSOMA'
      Origin = 'SG_ASSOC.CADLFOL.LCSOMA'
    end
    object Qr_LFolLCINCVT: TFloatField
      DisplayLabel = 'Incide Vale Transporte'
      FieldName = 'LCINCVT'
      Origin = 'SG_ASSOC.CADLFOL.LCINCVT'
    end
    object Qr_LFolvencimentos: TFloatField
      DisplayLabel = 'Vencimentos'
      FieldKind = fkCalculated
      FieldName = 'vencimentos'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object Qr_LFoldescontos: TFloatField
      DisplayLabel = 'Descontos'
      FieldKind = fkCalculated
      FieldName = 'descontos'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object Qr_LFolnomeve: TStringField
      DisplayLabel = 'Nome do Evento'
      FieldKind = fkCalculated
      FieldName = 'nomeve'
      Size = 40
      Calculated = True
    end
    object Qr_LFolLCTOTAL: TFloatField
      FieldName = 'LCTOTAL'
      Origin = 'SG_ASSOC.CADLFOL.LCTOTAL'
    end
  end
  object Src_LFol: TDataSource
    DataSet = Qr_LFol
    Left = 171
    Top = 34
  end
  object U_LFol: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLFOL'
      'set'
      '  LCCODEMP = :LCCODEMP,'
      '  LCLOCAL = :LCLOCAL,'
      '  LCMES = :LCMES,'
      '  LCANO = :LCANO,'
      '  LCCODFUN = :LCCODFUN,'
      '  LCCODEVE = :LCCODEVE,'
      '  LCQTD = :LCQTD,'
      '  LCNAT = :LCNAT,'
      '  LCTIPO = :LCTIPO,'
      '  LCVALOR = :LCVALOR,'
      '  LCINCINSS = :LCINCINSS,'
      '  LCINCFGTS = :LCINCFGTS,'
      '  LCINCIR = :LCINCIR,'
      '  LCQTDPAD = :LCQTDPAD,'
      '  LCSOMA = :LCSOMA,'
      '  LCINCVT = :LCINCVT,'
      '  LCTOTAL = :LCTOTAL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    InsertSQL.Strings = (
      'insert into CADLFOL'
      '  (LCCODEMP, LCLOCAL, LCMES, LCANO, LCCODFUN, LCCODEVE, LCQTD, '
      'LCNAT, LCTIPO, '
      
        '   LCVALOR, LCINCINSS, LCINCFGTS, LCINCIR, LCQTDPAD, LCSOMA, LCI' +
        'NCVT, '
      'LCTOTAL)'
      'values'
      
        '  (:LCCODEMP, :LCLOCAL, :LCMES, :LCANO, :LCCODFUN, :LCCODEVE, :L' +
        'CQTD, '
      ':LCNAT, '
      
        '   :LCTIPO, :LCVALOR, :LCINCINSS, :LCINCFGTS, :LCINCIR, :LCQTDPA' +
        'D, '
      ':LCSOMA, '
      '   :LCINCVT, :LCTOTAL)')
    DeleteSQL.Strings = (
      'delete from CADLFOL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    Left = 199
    Top = 34
  end
end
