object Frm_Ped_Expedicao: TFrm_Ped_Expedicao
  Left = 0
  Top = 77
  Width = 761
  Height = 431
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Checkout Expedicao de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 753
    Height = 137
    Align = alTop
    Caption = 'Cabecalho:'
    TabOrder = 0
    object CODTRA: TEdit
      Left = 151
      Top = 20
      Width = 56
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object NOMTRA: TEdit
      Left = 206
      Top = 20
      Width = 379
      Height = 19
      TabStop = False
      Color = 10485711
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object NOMENT: TEdit
      Left = 151
      Top = 38
      Width = 434
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = NOMENTExit
    end
    object CNPF: TEdit
      Left = 151
      Top = 56
      Width = 434
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CNPFExit
    end
    object RG: TEdit
      Left = 151
      Top = 74
      Width = 434
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = RGExit
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 20
      Width = 146
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'd.Entreg/Transp'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 38
      Width = 146
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Nome do Entregador'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 56
      Width = 146
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'CGC/CPF'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 74
      Width = 146
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'IE/RG'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object bbConferir: TBitBtn
      Left = 8
      Top = 103
      Width = 178
      Height = 25
      Caption = '&Inicializar a Confer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = bbConferirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 499
      Top = 107
      Width = 178
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = bbSairClick
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
  object dbg_leitura: TDBGrid
    Left = 0
    Top = 137
    Width = 753
    Height = 222
    Align = alClient
    DataSource = Src_EleLei
    FixedColor = 13553358
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = dbg_leituraColEnter
    OnColExit = dbg_leituraColExit
    OnExit = dbg_leituraExit
    Columns = <
      item
        Expanded = False
        FieldName = 'CECODBAR'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CECHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEVOLUME'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CENOMECLI'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CECIDADEUF'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQTDVOL'
        Visible = True
      end>
  end
  object panel_rod: TPanel
    Left = 0
    Top = 359
    Width = 753
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbApurar: TBitBtn
      Left = 4
      Top = 2
      Width = 150
      Height = 38
      Caption = '&Apurar Conferencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbApurarClick
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
    object bbSair2: TBitBtn
      Left = 523
      Top = 2
      Width = 150
      Height = 38
      Caption = '&Sair do Programa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbSair2Click
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
  object Tb_CEleLei: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CEleLeiBeforeInsert
    AfterInsert = Tb_CEleLeiAfterInsert
    BeforeEdit = Tb_CEleLeiBeforeEdit
    BeforePost = Tb_CEleLeiBeforePost
    AfterPost = Tb_CEleLeiAfterPost
    AfterCancel = Tb_CEleLeiAfterCancel
    AfterDelete = Tb_CEleLeiAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '
      '  CEITEM,'
      '  CECHAVE,'
      '  CEVOLUME,'
      '  CENOMECLI,'
      '  CECODBAR,'
      '  CEQTDVOL,'
      '  CECIDADEUF,'
      '  CECODMIN'
      ' from CADETIVOL_CELE where CEITEM is null')
    UpdateObject = U_EleLei
    Left = 248
    Top = 103
    object Tb_CEleLeiCEITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'CEITEM'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CEITEM'
    end
    object Tb_CEleLeiCECHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CECHAVE'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CECHAVE'
    end
    object Tb_CEleLeiCEVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'CEVOLUME'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CEVOLUME'
    end
    object Tb_CEleLeiCENOMECLI: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CENOMECLI'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CENOMECLI'
      Size = 50
    end
    object Tb_CEleLeiCECODBAR: TStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'CECODBAR'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CECODBAR'
      Size = 30
    end
    object Tb_CEleLeiCEQTDVOL: TFloatField
      DisplayLabel = 'Qtd.volumes'
      FieldName = 'CEQTDVOL'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CEQTDVOL'
    end
    object Tb_CEleLeiCECIDADEUF: TStringField
      DisplayLabel = 'Cidade/UF'
      FieldName = 'CECIDADEUF'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CECIDADEUF'
      Size = 50
    end
    object Tb_CEleLeiCECODMIN: TFloatField
      FieldName = 'CECODMIN'
      Origin = 'SG_ASSOC.CADETIVOL_CELE.CECODMIN'
    end
  end
  object U_EleLei: TUpdateSQL
    ModifySQL.Strings = (
      'update CADETIVOL_CELE'
      'set'
      '  CEITEM = :CEITEM,'
      '  CECHAVE = :CECHAVE,'
      '  CEVOLUME = :CEVOLUME,'
      '  CENOMECLI = :CENOMECLI,'
      '  CECODBAR = :CECODBAR,'
      '  CEQTDVOL = :CEQTDVOL,'
      '  CECIDADEUF = :CECIDADEUF'
      'where'
      '  CEITEM = :OLD_CEITEM')
    InsertSQL.Strings = (
      'insert into CADETIVOL_CELE'
      '  (CEITEM, CECHAVE, CEVOLUME, CENOMECLI, CECODBAR, CEQTDVOL, '
      'CECIDADEUF)'
      'values'
      
        '  (:CEITEM, :CECHAVE, :CEVOLUME, :CENOMECLI, :CECODBAR, :CEQTDVO' +
        'L, '
      ':CECIDADEUF)')
    DeleteSQL.Strings = (
      'delete from CADETIVOL_CELE'
      'where'
      '  CEITEM = :OLD_CEITEM')
    Left = 276
    Top = 103
  end
  object Src_EleLei: TDataSource
    DataSet = Tb_CEleLei
    Left = 305
    Top = 104
  end
  object Tb_CeleRes: TQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  CERCHAVE,CERQTDVOL,CERQTDLID'
      '       ,CERNOMECLI,CERCIDADEUF,CERDIFER'
      '      ,CERNOMECLI || CERCIDADEUF AS volumes'
      'from CADETIVOL_CELERES')
    UpdateObject = U_CeleRes
    Left = 254
    Top = 64
    object Tb_CeleResCERCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CERCHAVE'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERCHAVE'
    end
    object Tb_CeleResCERQTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'CERQTDVOL'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERQTDVOL'
    end
    object Tb_CeleResCERQTDLID: TFloatField
      DisplayLabel = 'Qtd.Lidos'
      FieldName = 'CERQTDLID'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERQTDLID'
    end
    object Tb_CeleResCERNOMECLI: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CERNOMECLI'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERNOMECLI'
      Size = 50
    end
    object Tb_CeleResCERCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CERCIDADEUF'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERCIDADEUF'
      Size = 50
    end
    object Tb_CeleResCERDIFER: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldName = 'CERDIFER'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERDIFER'
    end
    object Tb_CeleResVOLUMES: TStringField
      FieldName = 'VOLUMES'
      Origin = 'SG_ASSOC.CADETIVOL_CELERES.CERNOMECLI'
      Size = 100
    end
  end
  object U_CeleRes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADETIVOL_CELERES'
      'set'
      '  CERCHAVE = :CERCHAVE,'
      '  CERQTDVOL = :CERQTDVOL,'
      '  CERQTDLID = :CERQTDLID,'
      '  CERNOMECLI = :CERNOMECLI,'
      '  CERCIDADEUF = :CERCIDADEUF,'
      '  CERDIFER = :CERDIFER'
      'where'
      '  CERCHAVE = :OLD_CERCHAVE')
    InsertSQL.Strings = (
      'insert into CADETIVOL_CELERES'
      '  (CERCHAVE, CERQTDVOL, CERQTDLID, CERNOMECLI, CERCIDADEUF, '
      'CERDIFER)'
      'values'
      
        '  (:CERCHAVE, :CERQTDVOL, :CERQTDLID, :CERNOMECLI, :CERCIDADEUF,' +
        ' '
      ':CERDIFER)')
    DeleteSQL.Strings = (
      'delete from CADETIVOL_CELERES'
      'where'
      '  CERCHAVE = :OLD_CERCHAVE')
    Left = 296
    Top = 62
  end
  object Src_CeleRes: TDataSource
    DataSet = Tb_CeleRes
    Left = 336
    Top = 56
  end
end
