inherited Frm_CbsCst: TFrm_CbsCst
  Left = 418
  Top = 168
  Width = 866
  Caption = 'Cadastro de CBS Cst'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 858
    inherited lbl_emp: TLabel
      Left = 813
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 858
    ActivePage = tsTab
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Chave Id:'
        FocusControl = DBE_CBS_ID
      end
      object Label2: TLabel
        Left = 32
        Top = 45
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo:'
        FocusControl = DBE_CBS_CODIGO
      end
      object Label3: TLabel
        Left = 32
        Top = 62
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
        FocusControl = DBE_CBS_NOME
      end
      object DBE_CBS_ID: TDBEdit
        Left = 137
        Top = 23
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CBS_ID'
        DataSource = src_cbs_cst
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_CBS_CODIGO: TDBEdit
        Left = 137
        Top = 40
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CBS_CODIGO'
        DataSource = src_cbs_cst
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_CBS_NOME: TDBEdit
        Left = 137
        Top = 58
        Width = 685
        Height = 19
        Ctl3D = False
        DataField = 'CBS_NOME'
        DataSource = src_cbs_cst
        ParentCtl3D = False
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 77
        Top = 83
        Width = 746
        Height = 99
        Caption = 'Tags Exigidas:'
        TabOrder = 3
        object DBCB_ox1: TDBCheckBox
          Left = 16
          Top = 16
          Width = 209
          Height = 17
          Caption = 'IND_G_AJUSTE_COMPET'
          DataField = 'CBS_IND_G_AJUSTE_COMPET'
          DataSource = src_cbs_cst
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 32
          Width = 209
          Height = 17
          Caption = 'IND_IBS_CBS'
          DataField = 'CBS_IND_IBS_CBS'
          DataSource = src_cbs_cst
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 48
          Width = 209
          Height = 17
          Caption = 'IND_IBS_CBS_MONO'
          DataField = 'CBS_IND_IBS_CBS_MONO'
          DataSource = src_cbs_cst
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 16
          Top = 64
          Width = 209
          Height = 17
          Caption = 'IND_G_RED'
          DataField = 'CBS_IND_G_RED'
          DataSource = src_cbs_cst
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 383
          Top = 16
          Width = 209
          Height = 17
          Caption = 'IND_G_DIF'
          DataField = 'CBS_IND_G_DIF'
          DataSource = src_cbs_cst
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 383
          Top = 32
          Width = 209
          Height = 17
          Caption = 'IND_G_TANSF_CRED'
          DataField = 'CBS_IND_G_TANSF_CRED'
          DataSource = src_cbs_cst
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 383
          Top = 48
          Width = 209
          Height = 17
          Caption = 'IND_G_CRED_PRES_IBSZFM'
          DataField = 'CBS_IND_G_CRED_PRES_IBSZFM'
          DataSource = src_cbs_cst
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 383
          Top = 64
          Width = 209
          Height = 17
          Caption = 'IND_RED_BC'
          DataField = 'CBS_IND_RED_BC'
          DataSource = src_cbs_cst
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 850
        DataSource = src_cbs_cst
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CBS_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBS_NOME'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBS_CODIGO'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 858
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 858
  end
  object tb_cbs_cst: TQuery
    CachedUpdates = True
    AfterInsert = tb_cbs_cstAfterInsert
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_cbs_cst
    Left = 372
    Top = 101
    object tb_cbs_cstCBS_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CBS_ID'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_ID'
    end
    object tb_cbs_cstCBS_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CBS_CODIGO'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_CODIGO'
      Size = 3
    end
    object tb_cbs_cstCBS_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CBS_NOME'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_NOME'
      Size = 100
    end
    object tb_cbs_cstCBS_IND_IBS_CBS: TFloatField
      FieldName = 'CBS_IND_IBS_CBS'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_IBS_CBS'
    end
    object tb_cbs_cstCBS_IND_IBS_CBS_MONO: TFloatField
      FieldName = 'CBS_IND_IBS_CBS_MONO'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_IBS_CBS_MONO'
    end
    object tb_cbs_cstCBS_IND_G_RED: TFloatField
      FieldName = 'CBS_IND_G_RED'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_G_RED'
    end
    object tb_cbs_cstCBS_IND_G_DIF: TFloatField
      FieldName = 'CBS_IND_G_DIF'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_G_DIF'
    end
    object tb_cbs_cstCBS_IND_G_TANSF_CRED: TFloatField
      FieldName = 'CBS_IND_G_TANSF_CRED'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_G_TANSF_CRED'
    end
    object tb_cbs_cstCBS_IND_G_CRED_PRES_IBSZFM: TFloatField
      FieldName = 'CBS_IND_G_CRED_PRES_IBSZFM'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_G_CRED_PRES_IBSZFM'
    end
    object tb_cbs_cstCBS_IND_G_AJUSTE_COMPET: TFloatField
      FieldName = 'CBS_IND_G_AJUSTE_COMPET'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_G_AJUSTE_COMPET'
    end
    object tb_cbs_cstCBS_IND_RED_BC: TFloatField
      FieldName = 'CBS_IND_RED_BC'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_IND_RED_BC'
    end
    object tb_cbs_cstCBS_DATHOR_INC: TDateField
      FieldName = 'CBS_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_DATHOR_INC'
    end
    object tb_cbs_cstCBS_CODUSR_INC: TFloatField
      FieldName = 'CBS_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_CODUSR_INC'
    end
    object tb_cbs_cstCBS_ID_EMP_ORIGEM_INC: TFloatField
      FieldName = 'CBS_ID_EMP_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_ID_EMP_ORIGEM_INC'
    end
    object tb_cbs_cstCBS_ORIGEM_INC: TStringField
      FieldName = 'CBS_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_ORIGEM_INC'
      Size = 100
    end
    object tb_cbs_cstCBS_DATHOR_UEVE: TDateField
      FieldName = 'CBS_DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_DATHOR_UEVE'
    end
    object tb_cbs_cstCBS_CODUSR_UEVE: TFloatField
      FieldName = 'CBS_CODUSR_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_CODUSR_UEVE'
    end
    object tb_cbs_cstCBS_ID_EMP_ORIGEM_UEVE: TFloatField
      FieldName = 'CBS_ID_EMP_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_ID_EMP_ORIGEM_UEVE'
    end
    object tb_cbs_cstCBS_ORIGEM_UEVE: TStringField
      FieldName = 'CBS_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCBS_CST.CBS_ORIGEM_UEVE'
      Size = 100
    end
  end
  object U_cbs_cst: TUpdateSQL
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
    Left = 404
    Top = 98
  end
  object src_cbs_cst: TDataSource
    DataSet = tb_cbs_cst
    Left = 344
    Top = 104
  end
end
