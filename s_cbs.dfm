inherited Frm_Cbs: TFrm_Cbs
  Left = 377
  Top = 260
  Width = 923
  Caption = 'Cadastro de CBS'
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
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 80
        Top = 40
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_CBS_ID
      end
      object Label2: TLabel
        Left = 80
        Top = 80
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_CBS_CODIGO
      end
      object Label3: TLabel
        Left = 80
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_CBS_NOME
      end
      object DBE_CBS_ID: TDBEdit
        Left = 80
        Top = 56
        Width = 134
        Height = 21
        DataField = 'CBS_ID'
        DataSource = Src_Cbs
        Enabled = False
        TabOrder = 0
      end
      object DBE_CBS_CODIGO: TDBEdit
        Left = 80
        Top = 96
        Width = 150
        Height = 21
        DataField = 'CBS_CODIGO'
        DataSource = Src_Cbs
        TabOrder = 1
      end
      object DBE_CBS_NOME: TDBEdit
        Left = 80
        Top = 136
        Width = 600
        Height = 21
        DataField = 'CBS_NOME'
        DataSource = Src_Cbs
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        DataSource = Src_Cbs
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CBS_ID'
            Title.Alignment = taCenter
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBS_CODIGO'
            Title.Alignment = taCenter
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBS_NOME'
            Title.Alignment = taCenter
            Width = 550
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
      DataSource = Src_Cbs
    end
  end
  object Tb_Cbs: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCBS where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Cbs
    Left = 320
    Top = 79
    object Tb_CbsCBS_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CBS_ID'
      Origin = 'SG_ASSOC.CADCBS.CBS_ID'
    end
    object Tb_CbsCBS_CODIGO: TStringField
      DisplayLabel = 'C'#195#179'digo'
      FieldName = 'CBS_CODIGO'
      Origin = 'SG_ASSOC.CADCBS.CBS_CODIGO'
      Size = 10
    end
    object Tb_CbsCBS_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CBS_NOME'
      Origin = 'SG_ASSOC.CADCBS.CBS_NOME'
      Size = 150
    end
  end
  object U_Cbs: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCBS'
      'set'
      '  CBS_CODIGO = :CBS_CODIGO,'
      '  CBS_NOME = :CBS_NOME,'
      '  CBS_DATHOR_UEVE = SYSDATE,'
      '  CBS_CODUSR_UEVE = :CBS_CODUSR_UEVE,'
      '  CBS_ORIGEM_UEVE = :CBS_ORIGEM_UEVE'
      'where'
      '  CBS_ID = :OLD_CBS_ID')
    InsertSQL.Strings = (
      'insert into CADCBS'
      
        '  (CBS_ID, CBS_CODIGO, CBS_NOME, CBS_DATHOR_INC, CBS_CODUSR_INC,' +
        ' CBS_ORIGEM_INC)'
      'values'
      
        '  (:CBS_ID, :CBS_CODIGO, :CBS_NOME, SYSDATE, :CBS_CODUSR_INC, :C' +
        'BS_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADCBS'
      'where'
      '  CBS_ID = :OLD_CBS_ID')
    Left = 348
    Top = 82
  end
  object Src_Cbs: TDataSource
    DataSet = Tb_Cbs
    Left = 376
    Top = 82
  end
end
