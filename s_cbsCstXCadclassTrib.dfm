inherited Frm_cbsCstXCadclassTrib: TFrm_cbsCstXCadclassTrib
  Left = 258
  Top = 278
  Width = 942
  Height = 338
  Caption = 'Frm_cbsCstXCadclassTrib'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 934
    inherited lbl_emp: TLabel
      Left = 889
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'Chave Id'
        'Codigo CBS'
        'C'#243'digo Class Trib')
    end
  end
  inherited PC1: TPageControl
    Width = 934
    Height = 172
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 94
        Top = 9
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Chave Id:'
        FocusControl = DBE_ICC_ID
      end
      object Label2: TLabel
        Left = 67
        Top = 31
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cod CBS CST:'
        FocusControl = DBE_ICC_CODCBS
      end
      object Label3: TLabel
        Left = 63
        Top = 50
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cod Class Trib:'
        FocusControl = DBE_ICC_CODCLASSTRIB
      end
      object Label4: TLabel
        Left = 284
        Top = 28
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome CBS CST:'
        FocusControl = DBE_ICC_CODCBS
      end
      object Label5: TLabel
        Left = 278
        Top = 48
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Class Trib:'
        FocusControl = DBE_ICC_CODCBS
      end
      object DBE_ICC_ID: TDBEdit
        Left = 156
        Top = 8
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'ICC_ID'
        DataSource = src_cbs_cst_x_classtrib
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_ICC_CODCBS: TDBEdit
        Left = 156
        Top = 26
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'ICC_CODCBS'
        DataSource = src_cbs_cst_x_classtrib
        ParentCtl3D = False
        TabOrder = 1
        OnExit = DBE_ICC_CODCBSExit
        OnKeyPress = DBE_ICC_CODCBSKeyPress
      end
      object DBE_ICC_CODCLASSTRIB: TDBEdit
        Left = 156
        Top = 43
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'ICC_CODCLASSTRIB'
        DataSource = src_cbs_cst_x_classtrib
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBE_ICC_CODCLASSTRIBExit
        OnKeyPress = DBE_ICC_CODCLASSTRIBKeyPress
      end
      object DBE_nomecbs: TDBEdit
        Left = 380
        Top = 27
        Width = 525
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'nomecbs'
        DataSource = src_cbs_cst_x_classtrib
        Enabled = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_nomeclasstrib: TDBEdit
        Left = 380
        Top = 45
        Width = 525
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'nomeclasstrib'
        DataSource = src_cbs_cst_x_classtrib
        Enabled = False
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 926
        Height = 144
        DataSource = src_cbs_cst_x_classtrib
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ICC_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICC_CODCBS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomecbs'
            Title.Alignment = taCenter
            Width = 381
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICC_CODCLASSTRIB'
            Title.Alignment = taCenter
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeclasstrib'
            Title.Alignment = taCenter
            Width = 299
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 201
    Width = 934
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 254
    Width = 934
  end
  object src_cbs_cst_x_classtrib: TDataSource
    DataSet = tb_cbs_cst_x_classtrib
    Left = 728
    Top = 48
  end
  object tb_cbs_cst_x_classtrib: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_cbs_cst_x_classtrib
    Left = 756
    Top = 53
    object tb_cbs_cst_x_classtribICC_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'ICC_ID'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_ID'
    end
    object tb_cbs_cst_x_classtribICC_CODCBS: TStringField
      DisplayLabel = 'Cod CBS CST'
      FieldName = 'ICC_CODCBS'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_CODCBS'
      Size = 3
    end
    object tb_cbs_cst_x_classtribICC_CODCLASSTRIB: TStringField
      DisplayLabel = 'Cod Class Trib'
      FieldName = 'ICC_CODCLASSTRIB'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_CODCLASSTRIB'
      Size = 6
    end
    object tb_cbs_cst_x_classtribICC_DATHOR_INC: TDateTimeField
      FieldName = 'ICC_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_DATHOR_INC'
    end
    object tb_cbs_cst_x_classtribICC_CODUSR_INC: TFloatField
      FieldName = 'ICC_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_CODUSR_INC'
    end
    object tb_cbs_cst_x_classtribICC_ID_EMP_ORIGEM_INC: TFloatField
      FieldName = 'ICC_ID_EMP_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_ID_EMP_ORIGEM_INC'
    end
    object tb_cbs_cst_x_classtribICC_ORIGEM_INC: TStringField
      FieldName = 'ICC_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_ORIGEM_INC'
      Size = 100
    end
    object tb_cbs_cst_x_classtribICC_DATHOR_UEVE: TDateTimeField
      FieldName = 'ICC_DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_DATHOR_UEVE'
    end
    object tb_cbs_cst_x_classtribICC_CODUSR_UEVE: TFloatField
      FieldName = 'ICC_CODUSR_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_CODUSR_UEVE'
    end
    object tb_cbs_cst_x_classtribICC_ID_EMP_ORIGEM_UEVE: TFloatField
      FieldName = 'ICC_ID_EMP_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_ID_EMP_ORIGEM_UEVE'
    end
    object tb_cbs_cst_x_classtribICC_ORIGEM_UEVE: TStringField
      FieldName = 'ICC_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST_X_CLASSTRIB.ICC_ORIGEM_UEVE'
      Size = 100
    end
    object tb_cbs_cst_x_classtribnomecbs: TStringField
      DisplayLabel = 'Nome CBS'
      FieldName = 'nomecbs'
      Size = 100
    end
    object tb_cbs_cst_x_classtribnomeclasstrib: TStringField
      DisplayLabel = 'Nome Class Trib'
      FieldName = 'nomeclasstrib'
      Size = 100
    end
  end
  object U_cbs_cst_x_classtrib: TUpdateSQL
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
    Left = 788
    Top = 42
  end
end
