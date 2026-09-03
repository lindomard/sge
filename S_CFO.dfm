inherited Frm_CFO: TFrm_CFO
  Left = 243
  Top = 174
  Width = 738
  Height = 388
  Caption = 'Manuten'#231#227'o no Cadastro de CFOP'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 39
    Width = 730
    Height = 37
    inherited lbl_emp: TLabel
      Left = 685
      Height = 35
    end
    inherited Pesquisapor: TLabel
      Top = 12
    end
    inherited BBnAtu: TBitBtn
      Top = 7
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 9
    end
    inherited Edit1: TMaskEdit
      Top = 9
    end
  end
  inherited PC1: TPageControl
    Top = 76
    Width = 730
    inherited tsCad: TTabSheet
      object DBE_CFOP: TDBEdit
        Left = 11
        Top = 42
        Width = 57
        Height = 21
        Ctl3D = True
        DataField = 'CFCODCFO'
        DataSource = Src_Cfo
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBE_CFOPExit
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 42
        Width = 447
        Height = 21
        Ctl3D = True
        DataField = 'CFNOME'
        DataSource = Src_Cfo
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_CFOP_ENTRADA: TDBEdit
        Left = 8
        Top = 89
        Width = 106
        Height = 21
        Ctl3D = True
        DataField = 'CFCFOENT'
        DataSource = Src_Cfo
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBE_CFOP_ENTRADAExit
      end
      object StaticText1: TStaticText
        Left = 10
        Top = 20
        Width = 57
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'CFOP:'
        Color = clTeal
        FocusControl = DBE_CFOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object StaticText2: TStaticText
        Left = 9
        Top = 68
        Width = 106
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'CFOP de Entrada:'
        Color = clTeal
        FocusControl = DBE_CFOP_ENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object StaticText3: TStaticText
        Left = 72
        Top = 20
        Width = 447
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome:'
        Color = clTeal
        FocusControl = DBE_CFOP_ENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 8
        Top = 115
        Width = 510
        Height = 84
        Caption = 'Tipo da Opera'#231#227'o:'
        DataField = 'CFTPOPER'
        DataSource = Src_Cfo
        Items.Strings = (
          'Opera'#231#227'o com Cr'#233'dito do Imposto'
          'Oper.S/Cr'#233'dito do Imposto-Isentas'
          'Opera'#231#245'es sem Cred.Imp.-Outras'
          'ICMS Retido'
          'Frete com Cr'#233'dito do Imposto')
        TabOrder = 6
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object StaticText4: TStaticText
        Left = 117
        Top = 68
        Width = 106
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'C'#243'd. Cta Contabil'
        Color = clTeal
        FocusControl = DBE_CFCODCTA_EFD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object DBE_CFCODCTA_EFD: TDBEdit
        Left = 116
        Top = 89
        Width = 106
        Height = 21
        Ctl3D = True
        DataField = 'CFCODCTA_EFD'
        DataSource = Src_Cfo
        ParentCtl3D = False
        TabOrder = 8
        OnExit = DBE_CFCODCTA_EFDExit
        OnKeyDown = DBE_CFCODCTA_EFDKeyDown
      end
      object StaticText5: TStaticText
        Left = 229
        Top = 68
        Width = 292
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome do Plano de Contas'
        Color = clTeal
        FocusControl = DBE_PC_NOME_CTA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object DBE_PC_NOME_CTA: TDBEdit
        Left = 229
        Top = 86
        Width = 292
        Height = 21
        Color = clSilver
        Ctl3D = True
        DataField = 'PC_NOME_CTA'
        DataSource = Src_Cfo
        Enabled = False
        ParentCtl3D = False
        TabOrder = 10
        OnExit = DBE_CFOP_ENTRADAExit
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 722
        DataSource = Src_Cfo
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CFCODCFO'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFNOME'
            Title.Alignment = taCenter
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFCFOENT'
            Title.Alignment = taCenter
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFCODCTA_EFD'
            Title.Alignment = taCenter
            Width = 199
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 730
    Height = 39
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 0
      Top = 6
      Width = 75
      Height = 29
      Cursor = crHandPoint
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 74
      Top = 6
      Width = 75
      Height = 29
      Cursor = crHandPoint
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 148
      Top = 6
      Width = 75
      Height = 29
      Cursor = crHandPoint
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 222
      Top = 6
      Width = 75
      Height = 29
      Cursor = crHandPoint
      DragCursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 296
      Top = 6
      Width = 75
      Height = 29
      Cursor = crHandPoint
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 370
      Top = 6
      Width = 164
      Height = 29
      Hint = 'Navega entre os registros selecionados'
      DataSource = Src_Cfo
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
      Left = 534
      Top = 6
      Width = 58
      Height = 29
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
  end
  inherited GroupBox2: TGroupBox
    Top = 356
    Width = 730
    Height = 1
    inherited DBNavigator1: TDBNavigator
      Left = 5
      Width = 400
      Visible = False
    end
    inherited SAIR: TBitBtn
      Left = 405
      Width = 100
      Visible = False
    end
  end
  object Tb_Cfo: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CfoAfterInsert
    BeforePost = Tb_CfoBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCFO where'
      'CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CFO
    Left = 320
    Top = 79
    object Tb_CfoCFCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADCFO.CFCODEMP'
    end
    object Tb_CfoCFCODCFO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFCODCFO'
      Origin = 'SG_ASSOC.CADCFO.CFCODCFO'
    end
    object Tb_CfoCFCFOENT: TFloatField
      DisplayLabel = 'CFOP da entrada'
      FieldName = 'CFCFOENT'
      Origin = 'SG_ASSOC.CADCFO.CFCFOENT'
    end
    object Tb_CfoCFTPOPER: TFloatField
      FieldName = 'CFTPOPER'
      Origin = 'SG_ASSOC.CADCFO.CFTPOPER'
    end
    object Tb_CfoCFNOME: TStringField
      DisplayLabel = 'Nome do Cfop'
      FieldName = 'CFNOME'
      Origin = 'SG_ASSOC.CADCFO.CFNOME'
      Size = 150
    end
    object Tb_CfoCFCODCTA_EFD: TStringField
      DisplayLabel = 'Cod Plano Conta Contabil'
      FieldName = 'CFCODCTA_EFD'
      Origin = 'SG_ASSOC.CADCFO.CFCODCTA_EFD'
      Size = 60
    end
    object Tb_CfoPC_NOME_CTA: TStringField
      FieldName = 'PC_NOME_CTA'
    end
  end
  object U_CFO: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCFO'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCODCFO = :CFCODCFO,'
      '  CFNOME = :CFNOME,'
      '  CFCFOENT = :CFCFOENT,'
      '  CFTPOPER = :CFTPOPER'
      '  ,CFCODCTA_EFD = :CFCODCTA_EFD'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    InsertSQL.Strings = (
      'insert into CADCFO'
      '  (CFCODEMP, CFCODCFO, CFNOME, CFCFOENT, CFTPOPER,:CFCODCTA_EFD)'
      'values'
      '  (:CFCODEMP, :CFCODCFO, :CFNOME, :CFCFOENT, :CFTPOPER'
      '  ,:CFCODCTA_EFD)')
    DeleteSQL.Strings = (
      'delete from CADCFO'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    Left = 348
    Top = 82
  end
  object Src_Cfo: TDataSource
    DataSet = Tb_Cfo
    Left = 376
    Top = 82
  end
end
