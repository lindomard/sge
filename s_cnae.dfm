inherited Frm_Cnae: TFrm_Cnae
  Left = 377
  Top = 260
  Width = 923
  Caption = 'Cadastro de CNAE'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 915
    inherited lbl_emp: TLabel
      Left = 870
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
    Width = 915
    ActivePage = tsTab
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 80
        Top = 40
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_CNAE_ID
      end
      object Label2: TLabel
        Left = 80
        Top = 80
        Width = 77
        Height = 13
        Caption = 'C'#243'digo CNAE'
        FocusControl = DBE_CNAE_CODCNAE
      end
      object Label3: TLabel
        Left = 80
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_CNAE_NOME
      end
      object Label4: TLabel
        Left = 80
        Top = 160
        Width = 158
        Height = 13
        Caption = 'C'#243'digo do Servi'#231'o Principal'
        FocusControl = DBE_CNAE_CODSERV_PRINC
      end
      object DBE_CNAE_ID: TDBEdit
        Left = 80
        Top = 56
        Width = 134
        Height = 21
        DataField = 'CNAE_ID'
        DataSource = Src_Cnae
        Enabled = False
        TabOrder = 0
      end
      object DBE_CNAE_CODCNAE: TDBEdit
        Left = 80
        Top = 96
        Width = 121
        Height = 21
        DataField = 'CNAE_CODCNAE'
        DataSource = Src_Cnae
        TabOrder = 1
      end
      object DBE_CNAE_NOME: TDBEdit
        Left = 80
        Top = 136
        Width = 500
        Height = 21
        DataField = 'CNAE_NOME'
        DataSource = Src_Cnae
        TabOrder = 2
      end
      object DBE_CNAE_CODSERV_PRINC: TDBEdit
        Left = 80
        Top = 176
        Width = 264
        Height = 21
        DataField = 'CNAE_CODSERV_PRINC'
        DataSource = Src_Cnae
        TabOrder = 3
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        DataSource = Src_Cnae
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CNAE_ID'
            Title.Alignment = taCenter
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNAE_CODCNAE'
            Title.Alignment = taCenter
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNAE_NOME'
            Title.Alignment = taCenter
            Width = 450
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNAE_CODSERV_PRINC'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 915
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 915
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_Cnae
    end
  end
  object Tb_Cnae: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCFO where'
      'CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Cnae
    Left = 320
    Top = 79
    object Tb_CnaeCNAE_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CNAE_ID'
      Origin = 'SG_ASSOC.CADCNAE.CNAE_ID'
    end
    object Tb_CnaeCNAE_CODCNAE: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CNAE_CODCNAE'
      Origin = 'SG_ASSOC.CADCNAE.CNAE_CODCNAE'
      Size = 9
    end
    object Tb_CnaeCNAE_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CNAE_NOME'
      Origin = 'SG_ASSOC.CADCNAE.CNAE_NOME'
      Size = 100
    end
    object Tb_CnaeCNAE_CODSERV_PRINC: TStringField
      DisplayLabel = 'C'#243'digo do Servi'#231'o Principal'
      FieldName = 'CNAE_CODSERV_PRINC'
      Origin = 'SG_ASSOC.CADCNAE.CNAE_CODSERV_PRINC'
    end
  end
  object U_Cnae: TUpdateSQL
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
  object Src_Cnae: TDataSource
    DataSet = Tb_Cnae
    Left = 376
    Top = 82
  end
end
