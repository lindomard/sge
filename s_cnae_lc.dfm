inherited Frm_CNAE_LC: TFrm_CNAE_LC
  Left = 290
  Top = 212
  Width = 897
  Caption = 'Cadastro de Leis Complementares'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 889
    inherited lbl_emp: TLabel
      Left = 844
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'Chave Id')
    end
  end
  inherited PC1: TPageControl
    Width = 889
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Chave Id'
        FocusControl = DBE_CLC_ID
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_CLC_CODIGO
      end
      object Label3: TLabel
        Left = 32
        Top = 104
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_CLC_NOME
      end
      object DBE_CLC_ID: TDBEdit
        Left = 32
        Top = 40
        Width = 134
        Height = 21
        DataField = 'CLC_ID'
        DataSource = Src_cnae_lc
        Enabled = False
        TabOrder = 0
      end
      object DBE_CLC_CODIGO: TDBEdit
        Left = 32
        Top = 80
        Width = 69
        Height = 21
        DataField = 'CLC_CODIGO'
        DataSource = Src_cnae_lc
        TabOrder = 1
      end
      object DBE_CLC_NOME: TDBEdit
        Left = 32
        Top = 120
        Width = 500
        Height = 21
        DataField = 'CLC_NOME'
        DataSource = Src_cnae_lc
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 881
        DataSource = Src_cnae_lc
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLC_ID'
            Title.Alignment = taCenter
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLC_CODIGO'
            Title.Alignment = taCenter
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLC_NOME'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 889
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 889
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_cnae_lc
    end
  end
  object Tb_Cnae_lc: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCFO where'
      'CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_cnae_lc
    Left = 320
    Top = 79
    object Tb_Cnae_lcCLC_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CLC_ID'
      Origin = 'SG_ASSOC.CADCNAE_LC.CLC_ID'
    end
    object Tb_Cnae_lcCLC_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLC_CODIGO'
      Origin = 'SG_ASSOC.CADCNAE_LC.CLC_CODIGO'
      Size = 5
    end
    object Tb_Cnae_lcCLC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLC_NOME'
      Origin = 'SG_ASSOC.CADCNAE_LC.CLC_NOME'
      Size = 100
    end
  end
  object U_cnae_lc: TUpdateSQL
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
  object Src_cnae_lc: TDataSource
    DataSet = Tb_Cnae_lc
    Left = 376
    Top = 82
  end
end
