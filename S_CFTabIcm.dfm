inherited Frm_CFTabIcm: TFrm_CFTabIcm
  Left = 403
  Top = 106
  Width = 950
  Height = 554
  Caption = 'Manuten'#231#227'o na Tabela de Classifica'#231#227'o Fiscal/Tabela de Icms'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 38
    Width = 942
    Height = 35
    inherited lbl_emp: TLabel
      Left = 897
      Height = 33
    end
    inherited Pesquisapor: TLabel
      Left = 6
      Top = 12
    end
    inherited BBnAtu: TBitBtn
      Left = 451
      Top = 7
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Left = 91
      Top = 9
      Width = 146
      Items.Strings = (
        'Nome da Classificacao'
        'C'#243'digo Classifica'#231'ao'
        'Tabela de Icms')
    end
    inherited Edit1: TMaskEdit
      Left = 238
      Top = 9
      Width = 210
    end
  end
  inherited PC1: TPageControl
    Top = 73
    Width = 942
    Height = 449
    inherited tsCad: TTabSheet
      object lblNCM: TStaticText
        Left = 10
        Top = 20
        Width = 147
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o Fiscal'
        Color = clTeal
        FocusControl = dbeNCM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object dbeNCM: TDBEdit
        Left = 10
        Top = 39
        Width = 147
        Height = 21
        Ctl3D = True
        DataField = 'CICLASSIF'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 1
      end
      object lblALIQ: TStaticText
        Left = 651
        Top = 19
        Width = 146
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tabela de Icms'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object dbeTabelaIcms: TDBEdit
        Left = 651
        Top = 37
        Width = 58
        Height = 21
        Ctl3D = True
        DataField = 'CITABICMS'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 5
      end
      object lblDESC: TStaticText
        Left = 158
        Top = 20
        Width = 490
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Descricao'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object dbcbMonofasico: TDBCheckBox
        Left = 10
        Top = 127
        Width = 97
        Height = 17
        Caption = 'Monofasico'
        DataField = 'CIMONOFASICO'
        DataSource = DM6.Src_CFTabIcm
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbmDESC: TDBMemo
        Left = 158
        Top = 38
        Width = 490
        Height = 46
        DataField = 'CICLASSIF_NOME'
        DataSource = DM6.Src_CFTabIcm
        TabOrder = 3
      end
      object lblTribNac: TStaticText
        Left = 161
        Top = 84
        Width = 153
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% Aprox Imp Nacional'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object lblTribImp: TStaticText
        Left = 7
        Top = 84
        Width = 153
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% Aprox Imp Importado'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object dbeIcmsNacional: TDBEdit
        Left = 160
        Top = 102
        Width = 100
        Height = 21
        Ctl3D = True
        DataField = 'CIVALAPROXNAC'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 7
      end
      object dbeIcmsImportado: TDBEdit
        Left = 6
        Top = 102
        Width = 100
        Height = 21
        Ctl3D = True
        DataField = 'CIVALAPROXIMP'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 9
      end
      object dbmDescDesonera: TDBMemo
        Left = 6
        Top = 184
        Width = 420
        Height = 77
        DataField = 'CIDIOBS'
        DataSource = DM6.Src_CFTabIcm
        TabOrder = 14
      end
      object dbcbDesonera: TDBCheckBox
        Left = 160
        Top = 130
        Width = 135
        Height = 17
        Caption = 'Desonera'#231#227'o ICMS'
        DataField = 'CIDI'
        DataSource = DM6.Src_CFTabIcm
        TabOrder = 13
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object lblDescDes: TStaticText
        Left = 6
        Top = 165
        Width = 420
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Observa'#231#227'o p/ Desonera'#231#227'o'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
      end
      object StaticText1: TStaticText
        Left = 426
        Top = 164
        Width = 146
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'CEST:'
        Color = clTeal
        FocusControl = dbeNCM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
      end
      object DBE_CI_CEST: TDBEdit
        Left = 426
        Top = 181
        Width = 145
        Height = 19
        Ctl3D = False
        DataField = 'CI_CEST'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 15
      end
      object StaticText2: TStaticText
        Left = 575
        Top = 163
        Width = 220
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Outros CEST:'
        Color = clTeal
        FocusControl = dbeNCM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object DBGrid_CADCLATABICM_CEST: TDBGrid
        Left = 576
        Top = 179
        Width = 217
        Height = 88
        Ctl3D = False
        DataSource = Src_CADCLATABICM_CEST
        ParentCtl3D = False
        TabOrder = 19
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnExit = DBGrid_CADCLATABICM_CESTExit
        Columns = <
          item
            Expanded = False
            FieldName = 'NCMCEST_CEST'
            Title.Alignment = taCenter
            Width = 152
            Visible = True
          end>
      end
      object StaticText3: TStaticText
        Left = 5
        Top = 267
        Width = 181
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Unidade Para Exporta'#231#227'o'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
      end
      object DBE_CFUNIDADEEXP: TDBEdit
        Left = 4
        Top = 285
        Width = 100
        Height = 21
        Ctl3D = True
        DataField = 'CFUNIDADEEXP'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 21
      end
      object StaticText4: TStaticText
        Left = 650
        Top = 84
        Width = 68
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% IRRF'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object DBE_CIIRRF: TDBEdit
        Left = 650
        Top = 102
        Width = 68
        Height = 21
        Ctl3D = True
        DataField = 'CIPERC_IRRF'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 10
      end
      object StaticText5: TStaticText
        Left = 728
        Top = 84
        Width = 68
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% CSSL'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object DBE_CICSLL: TDBEdit
        Left = 728
        Top = 102
        Width = 68
        Height = 21
        Ctl3D = True
        DataField = 'CIPERC_CSLL'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 11
      end
      object StaticText6: TStaticText
        Left = 314
        Top = 84
        Width = 153
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% Aprox Imp Estadual'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
      end
      object DBECIVALAPROXEST: TDBEdit
        Left = 313
        Top = 102
        Width = 100
        Height = 21
        Ctl3D = True
        DataField = 'CIVALAPROXEST'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 25
      end
      object StaticText7: TStaticText
        Left = 474
        Top = 84
        Width = 153
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '% Aprox Imp Municipal'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object DBE_CIVALAPROXMUN: TDBEdit
        Left = 471
        Top = 102
        Width = 100
        Height = 21
        Ctl3D = True
        DataField = 'CIVALAPROXMUN'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 27
      end
      object StaticText8: TStaticText
        Left = 193
        Top = 267
        Width = 32
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'EX:'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 28
      end
      object DBE_CIEX: TDBEdit
        Left = 192
        Top = 285
        Width = 33
        Height = 21
        Ctl3D = True
        DataField = 'CIEX'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 29
      end
      object StaticText9: TStaticText
        Left = 233
        Top = 267
        Width = 32
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
      end
      object DBE_CITIPO: TDBEdit
        Left = 232
        Top = 285
        Width = 33
        Height = 21
        Ctl3D = True
        DataField = 'CITIPO'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 31
      end
      object StaticText10: TStaticText
        Left = 268
        Top = 267
        Width = 53
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Chave'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 32
      end
      object DBE_CICLASSIF: TDBEdit
        Left = 269
        Top = 285
        Width = 53
        Height = 21
        Ctl3D = True
        DataField = 'CICHAVE'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 33
      end
      object StaticText11: TStaticText
        Left = 323
        Top = 267
        Width = 53
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Vers'#227'o'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 34
      end
      object DBE_CIVERSAO: TDBEdit
        Left = 324
        Top = 285
        Width = 53
        Height = 21
        Ctl3D = True
        DataField = 'CIVERSAO'
        DataSource = DM6.Src_CFTabIcm
        ParentCtl3D = False
        TabOrder = 35
      end
      object StaticText12: TStaticText
        Left = 380
        Top = 267
        Width = 139
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicio'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 36
      end
      object db_CIDT_INI: TDBDateEdit
        Left = 380
        Top = 284
        Width = 141
        Height = 21
        DataField = 'CIDT_INI'
        DataSource = DM6.Src_CFTabIcm
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 37
      end
      object StaticText13: TStaticText
        Left = 531
        Top = 267
        Width = 139
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 38
      end
      object DB_CIDT_FIN: TDBDateEdit
        Left = 531
        Top = 283
        Width = 141
        Height = 21
        DataField = 'CIDT_FIN'
        DataSource = DM6.Src_CFTabIcm
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 39
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 669
        Height = 317
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CICLASSIF'
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CITABICMS'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CI_CEST'
            Width = 247
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 942
    Height = 38
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 64
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 127
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 190
      Top = 6
      Height = 29
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 253
      Top = 6
      Width = 78
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 330
      Top = 6
      Width = 188
      Height = 29
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM6.Src_CFTabIcm
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      DragCursor = crHandPoint
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 517
      Top = 6
      Width = 71
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      DragCursor = crHandPoint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object bbBaixarNCM: TBitBtn
      Left = 587
      Top = 6
      Width = 88
      Height = 29
      Cursor = crHandPoint
      Hint = 'Baixa os NCM existentes no Site da iIntersys'
      Caption = 'Baixar Site'
      DragCursor = crHandPoint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbBaixarNCMClick
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
  inherited GroupBox2: TGroupBox
    Top = 522
    Width = 942
    Height = 1
    inherited DBNavigator1: TDBNavigator
      DragCursor = crHandPoint
      Visible = False
    end
    inherited SAIR: TBitBtn
      Visible = False
    end
  end
  object Tb_CADCLATABICM_CEST: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CADCLATABICM_CESTAfterInsert
    BeforePost = Tb_CADCLATABICM_CESTBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CADCLATABICM_CEST
    Left = 580
    Top = 305
    object Tb_CADCLATABICM_CESTNCMCEST_CODNCM: TStringField
      FieldName = 'NCMCEST_CODNCM'
    end
    object Tb_CADCLATABICM_CESTNCMCEST_CEST: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'NCMCEST_CEST'
    end
  end
  object U_CADCLATABICM_CEST: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLATABICM_CEST'
      'set  NCMCEST_CODNCM = :NCMCEST_CODNCM'
      '     ,NCMCEST_CEST = :NCMCEST_CEST'
      'where'
      '  NCMCEST_CODNCM = :OLD_NCMCEST_CODNCM'
      'and NCMCEST_CEST = :OLD_NCMCEST_CEST '
      '')
    InsertSQL.Strings = (
      'insert into CADCLATABICM_CEST'
      '  (NCMCEST_CODNCM,NCMCEST_CEST)'
      'values'
      '  (:NCMCEST_CODNCM,:NCMCEST_CEST)'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from CADCLATABICM_CEST'
      'where'
      '  NCMCEST_CODNCM = :OLD_NCMCEST_CODNCM'
      'and NCMCEST_CEST = :OLD_NCMCEST_CEST ')
    Left = 604
    Top = 273
  end
  object Src_CADCLATABICM_CEST: TDataSource
    DataSet = Tb_CADCLATABICM_CEST
    Left = 596
    Top = 257
  end
  object Src_CFTabIcm: TDataSource
    DataSet = DM6.Tb_CFTabIcm
    OnDataChange = Src_CFTabIcmDataChange
    Left = 604
    Top = 105
  end
end
