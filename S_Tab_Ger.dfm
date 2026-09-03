object Frm_Tab_Ger: TFrm_Tab_Ger
  Left = 33
  Top = 0
  Width = 767
  Height = 570
  Caption = 'Visualiza'#231#227'o/impress'#227'o de relatorios de Gerenciais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 491
    Align = alClient
    TabOrder = 0
    OnDblClick = BitBtn1Click
    object Label1: TLabel
      Left = 339
      Top = 140
      Width = 98
      Height = 13
      Caption = 'Refer'#234'ncia: M'#234's:'
      Visible = False
    end
    object Label2: TLabel
      Left = 493
      Top = 142
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Visible = False
    end
    object LBLCODVEN: TLabel
      Left = 4
      Top = 162
      Width = 124
      Height = 13
      Caption = 'C'#243'digo do Vendedor.:'
      Visible = False
    end
    object LBLCODCLI: TLabel
      Left = 4
      Top = 184
      Width = 109
      Height = 13
      Caption = 'C'#243'digo do Cliente.:'
      Visible = False
    end
    object LBLCODFOR: TLabel
      Left = 5
      Top = 229
      Width = 134
      Height = 13
      Caption = 'C'#243'digo do Fornecedor.:'
      Visible = False
    end
    object LBLCODRED: TLabel
      Left = 4
      Top = 206
      Width = 136
      Height = 13
      Caption = 'C'#243'digo da Rede..........:'
      Visible = False
    end
    object LBLCODPRO: TLabel
      Left = 5
      Top = 251
      Width = 114
      Height = 13
      Caption = 'C'#243'digo do Produto.:'
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 453
      Width = 749
      Height = 37
      Align = alBottom
      Caption = 'Progresso da Montagem do Relatorio:'
      TabOrder = 18
      Visible = False
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 745
        Height = 20
        Align = alClient
        Progress = 0
      end
    end
    object RG_PERIODO: TGroupBox
      Left = 5
      Top = 124
      Width = 324
      Height = 33
      Caption = 'Per'#237'odo:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      object Label11: TLabel
        Left = 11
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Periodo de:'
      end
      object Label10: TLabel
        Left = 196
        Top = 16
        Width = 8
        Height = 13
        Caption = 'a'
      end
      object MDT1: TMaskEdit
        Left = 84
        Top = 12
        Width = 95
        Height = 19
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 222
        Top = 12
        Width = 98
        Height = 19
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
    end
    object MES: TEdit
      Left = 443
      Top = 137
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      OnExit = MESExit
      OnKeyPress = INTCOLKeyPress
    end
    object ANO: TEdit
      Left = 523
      Top = 137
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnKeyPress = INTCOLKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 18
      Width = 749
      Height = 102
      Align = alTop
      Caption = 'Formato do Relat'#243'rio:'
      TabOrder = 19
      object Label6: TLabel
        Left = 7
        Top = 25
        Width = 70
        Height = 13
        Caption = 'Qtd.Colunas'
      end
      object Label7: TLabel
        Left = 143
        Top = 26
        Width = 30
        Height = 13
        Caption = 'Pular'
      end
      object Label8: TLabel
        Left = 226
        Top = 26
        Width = 169
        Height = 13
        Caption = 'Caracteres de uma para outra'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 43
        Width = 796
        Height = 2
      end
      object Bevel2: TBevel
        Left = 0
        Top = 62
        Width = 796
        Height = 2
      end
      object Bevel3: TBevel
        Left = 0
        Top = 81
        Width = 795
        Height = 2
      end
      object Bevel4: TBevel
        Left = 319
        Top = 43
        Width = 2
        Height = 56
      end
      object NUMCOL: TEdit
        Left = 79
        Top = 20
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = INTCOLKeyPress
      end
      object INTCOL: TEdit
        Left = 177
        Top = 20
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = INTCOLKeyPress
      end
      object RG_TPCOL: TRadioGroup
        Left = 406
        Top = 9
        Width = 344
        Height = 31
        Caption = 'Tipo de Coluna'
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          '&Sequencial '
          '&Lado a Lado Mesmo Valor')
        ParentCtl3D = False
        TabOrder = 2
      end
      object CB_AVPTPI: TCheckBox
        Left = 21
        Top = 64
        Width = 270
        Height = 17
        Caption = 'Avan'#231'ar Pagina apos imprimir pagina inicial'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object CB_MPAGGR: TCheckBox
        Left = 20
        Top = 83
        Width = 245
        Height = 17
        Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object CB_GRUPO: TCheckBox
        Left = 21
        Top = 45
        Width = 205
        Height = 17
        Caption = 'Imprimir &Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object CB_AVPIPF: TCheckBox
        Left = 340
        Top = 64
        Width = 281
        Height = 17
        Caption = 'Avan'#231'ar pagina antes de imprimir pagina final'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
      end
      object CB_MPAGSG: TCheckBox
        Left = 340
        Top = 83
        Width = 266
        Height = 17
        Caption = 'Avan'#231'ar P'#225'gina ao trocar Sub_Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object CB_SGRUPO: TCheckBox
        Left = 340
        Top = 45
        Width = 161
        Height = 17
        Caption = 'Imprimir &Sub-Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
    end
    object CODVEN: TEdit
      Left = 140
      Top = 160
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object NOMVEN: TEdit
      Left = 205
      Top = 159
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 4
      Text = 'Todos...'
      Visible = False
    end
    object CODCLI: TEdit
      Left = 140
      Top = 182
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 205
      Top = 181
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 8
      Text = 'Todos...'
      Visible = False
    end
    object CODFOR: TEdit
      Left = 141
      Top = 227
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Visible = False
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 206
      Top = 226
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 10
      Text = 'Todos...'
      Visible = False
    end
    object CODRED: TEdit
      Left = 140
      Top = 204
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Visible = False
      OnExit = CODREDExit
      OnKeyPress = CODREDKeyPress
    end
    object NOMRED: TEdit
      Left = 205
      Top = 203
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 6
      Text = 'Todos...'
      Visible = False
    end
    object CODPRO: TEdit
      Left = 141
      Top = 249
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      Visible = False
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 206
      Top = 248
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 12
      Text = 'Todos...'
      Visible = False
    end
    object GB_CADPRO: TGroupBox
      Left = 4
      Top = 271
      Width = 314
      Height = 95
      Caption = 'Filtrar os Seguintes Produtos:'
      TabOrder = 14
      Visible = False
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 310
        Height = 78
        Align = alClient
        DataSource = Src_Pro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nompro'
            Visible = True
          end>
      end
    end
    object GB_CADVEN: TGroupBox
      Left = 316
      Top = 176
      Width = 312
      Height = 95
      Caption = 'Filtrar os Seguintes Vendedores:'
      TabOrder = 13
      Visible = False
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 308
        Height = 78
        Align = alClient
        DataSource = Src_Ven
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -5
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'VCODVEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomven'
            Title.Caption = 'Nome do Vendedor'
            Visible = True
          end>
      end
    end
    object GB_CADFOR: TGroupBox
      Left = 317
      Top = 272
      Width = 314
      Height = 95
      Caption = 'Filtrar os Seguintes Fornecedores:'
      TabOrder = 15
      Visible = False
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 310
        Height = 78
        Align = alClient
        DataSource = Src_For
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'FCODFOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomfor'
            Visible = True
          end>
      end
    end
    object GB_CADCLI: TGroupBox
      Left = 4
      Top = 365
      Width = 314
      Height = 95
      Caption = 'Filtrar os Seguintes Clientes:'
      TabOrder = 16
      Visible = False
      object DBGrid5: TDBGrid
        Left = 2
        Top = 15
        Width = 310
        Height = 78
        Align = alClient
        DataSource = Src_Cli
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CCODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomcli'
            Visible = True
          end>
      end
    end
    object GB_CADRED: TGroupBox
      Left = 318
      Top = 366
      Width = 314
      Height = 95
      Caption = 'Filtrar as Seguintes Redes de Clientes:'
      TabOrder = 17
      Visible = False
      object DBGrid4: TDBGrid
        Left = 2
        Top = 15
        Width = 310
        Height = 78
        Align = alClient
        DataSource = Src_Red
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'RDCODRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomred'
            Visible = True
          end>
      end
    end
    object St_NomRel: TStaticText
      Left = 1
      Top = 1
      Width = 749
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = '.'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 20
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 491
    Width = 751
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 38
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object SAIR: TBitBtn
      Left = 475
      Top = 2
      Width = 157
      Height = 38
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
  end
  object Qr_Ven: TQuery
    CachedUpdates = True
    BeforePost = Qr_VenBeforePost
    OnCalcFields = Qr_VenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select VCODVEN,VNOME from CADVEN '
      'where VCODEMP is null')
    UpdateObject = U_Ven
    Left = 520
    Top = 258
    object Qr_VenVCODVEN: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VCODVEN'
      Origin = 'SG_ASSOC.CADVEN.VCODVEN'
    end
    object Qr_VenVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_Vennomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 30
      Calculated = True
    end
  end
  object U_Ven: TUpdateSQL
    ModifySQL.Strings = (
      'update CADVEN'
      'set'
      '  VCODVEN = :VCODVEN,'
      '  VNOME = :VNOME'
      'where'
      '  VCODVEN = :OLD_VCODVEN')
    InsertSQL.Strings = (
      'insert into CADVEN'
      '  (VCODVEN, VNOME)'
      'values'
      '  (:VCODVEN, :VNOME)')
    DeleteSQL.Strings = (
      'delete from CADVEN'
      'where'
      '  VCODVEN = :OLD_VCODVEN')
    Left = 548
    Top = 258
  end
  object Src_Ven: TDataSource
    DataSet = Qr_Ven
    Left = 576
    Top = 257
  end
  object Qr_For: TQuery
    CachedUpdates = True
    BeforePost = Qr_ForBeforePost
    OnCalcFields = Qr_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FCODFOR from CADFOR where FCODEMP is null')
    UpdateObject = U_For
    Left = 360
    Top = 344
    object Qr_ForFCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Qr_Fornomfor: TStringField
      DisplayLabel = 'Nome do Fornecededor'
      FieldKind = fkCalculated
      FieldName = 'nomfor'
      Size = 30
      Calculated = True
    end
  end
  object Qr_Cli: TQuery
    CachedUpdates = True
    BeforePost = Qr_CliBeforePost
    OnCalcFields = Qr_CliCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CCODCLI from CADCLI where CCODCLI is null')
    UpdateObject = U_Cli
    Left = 96
    Top = 408
    object Qr_Clinomcli: TStringField
      DisplayLabel = 'Raz'#227'o Social '
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 30
      Calculated = True
    end
    object Qr_CliCCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
  end
  object Qr_Pro: TQuery
    CachedUpdates = True
    BeforePost = Qr_ProBeforePost
    OnCalcFields = Qr_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO from CADPRO where PDCODEMP is null')
    UpdateObject = U_Pro
    Left = 88
    Top = 320
    object Qr_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_Pronompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 30
      Calculated = True
    end
  end
  object Qr_Red: TQuery
    CachedUpdates = True
    BeforePost = Qr_RedBeforePost
    OnCalcFields = Qr_RedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select RDCODRED from CADRED where RDCODRED is null')
    UpdateObject = U_Red
    Left = 360
    Top = 408
    object Qr_Rednomred: TStringField
      DisplayLabel = 'Nome da Rede'
      FieldKind = fkCalculated
      FieldName = 'nomred'
      Size = 30
      Calculated = True
    end
    object Qr_RedRDCODRED: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RDCODRED'
      Origin = 'SG_ASSOC.CADRED.RDCODRED'
    end
  end
  object U_Red: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRED'
      'set'
      '  RDCODRED = :RDCODRED'
      'where'
      '  RDCODRED = :OLD_RDCODRED')
    InsertSQL.Strings = (
      'insert into CADRED'
      '  (RDCODRED)'
      'values'
      '  (:RDCODRED)')
    DeleteSQL.Strings = (
      'delete from CADRED'
      'where'
      '  RDCODRED = :OLD_RDCODRED')
    Left = 388
    Top = 408
  end
  object U_Cli: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI'
      'set'
      '  CCODCLI = :CCODCLI'
      'where'
      '  CCODCLI = :OLD_CCODCLI')
    InsertSQL.Strings = (
      'insert into CADCLI'
      '  (CCODCLI)'
      'values'
      '  (:CCODCLI)')
    DeleteSQL.Strings = (
      'delete from CADCLI'
      'where'
      '  CCODCLI = :OLD_CCODCLI')
    Left = 124
    Top = 408
  end
  object U_For: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFOR'
      'set'
      '  FCODFOR = :FCODFOR'
      'where'
      '  FCODFOR = :OLD_FCODFOR')
    InsertSQL.Strings = (
      'insert into CADFOR'
      '  (FCODFOR)'
      'values'
      '  (:FCODFOR)')
    DeleteSQL.Strings = (
      'delete from CADFOR'
      'where'
      '  FCODFOR = :OLD_FCODFOR')
    Left = 388
    Top = 344
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDCODPRO = :PDCODPRO'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (PDCODPRO)'
      'values'
      '  (:PDCODPRO)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 124
    Top = 312
  end
  object Src_Pro: TDataSource
    DataSet = Qr_Pro
    Left = 152
    Top = 328
  end
  object Src_For: TDataSource
    DataSet = Qr_For
    Left = 416
    Top = 344
  end
  object Src_Cli: TDataSource
    DataSet = Qr_Cli
    Left = 152
    Top = 408
  end
  object Src_Red: TDataSource
    DataSet = Qr_Red
    Left = 416
    Top = 408
  end
end
