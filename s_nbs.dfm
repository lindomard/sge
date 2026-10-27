inherited Frm_Nbs: TFrm_Nbs
  Left = 377
  Top = 260
  Width = 923
  Height = 500
  Caption = 'Cadastro de NBS (Nomenclatura Brasileira de Servi'#195#167'os)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 915
    Height = 57
    inherited lbl_emp: TLabel
      Left = 870
      Height = 55
    end
    object lbl_filtros_extras: TLabel [2]
      Left = 27
      Top = 32
      Width = 78
      Height = 13
      Caption = 'Filtros Extras:'
      Visible = False
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
    object edt_filtros_extras: TEdit
      Left = 112
      Top = 28
      Width = 777
      Height = 21
      Enabled = False
      TabOrder = 3
      Visible = False
    end
  end
  inherited PC1: TPageControl
    Top = 57
    Width = 915
    Height = 306
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 40
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_NBS_ID
      end
      object Label2: TLabel
        Left = 40
        Top = 55
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_NBS_CODIGO
      end
      object Label3: TLabel
        Left = 160
        Top = 55
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_NBS_NOME
      end
      object DBE_NBS_ID: TDBEdit
        Left = 40
        Top = 30
        Width = 100
        Height = 21
        DataField = 'NBS_ID'
        DataSource = Src_Nbs
        Enabled = False
        TabOrder = 0
      end
      object DBE_NBS_CODIGO: TDBEdit
        Left = 40
        Top = 70
        Width = 100
        Height = 21
        DataField = 'NBS_CODIGO'
        DataSource = Src_Nbs
        TabOrder = 1
      end
      object DBE_NBS_NOME: TDBEdit
        Left = 160
        Top = 70
        Width = 700
        Height = 21
        DataField = 'NBS_NOME'
        DataSource = Src_Nbs
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        Height = 278
        DataSource = Src_Nbs
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NBS_ID'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NBS_CODIGO'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NBS_NOME'
            Title.Alignment = taCenter
            Width = 650
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 363
    Width = 915
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 416
    Width = 915
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_Nbs
    end
  end
  object Tb_Nbs: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADNBS where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Nbs
    Left = 320
    Top = 79
    object Tb_NbsNBS_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'NBS_ID'
      Origin = 'SG_ASSOC.CADNBS.NBS_ID'
    end
    object Tb_NbsNBS_CODIGO: TStringField
      DisplayLabel = 'C'#195#179'digo'
      FieldName = 'NBS_CODIGO'
      Origin = 'SG_ASSOC.CADNBS.NBS_CODIGO'
      Size = 15
    end
    object Tb_NbsNBS_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NBS_NOME'
      Origin = 'SG_ASSOC.CADNBS.NBS_NOME'
      Size = 254
    end
  end
  object U_Nbs: TUpdateSQL
    ModifySQL.Strings = (
      'update CADNBS'
      'set'
      '  NBS_CODIGO = :NBS_CODIGO,'
      '  NBS_NOME = :NBS_NOME,'
      '  NBS_DATHOR_UEVE = SYSDATE,'
      '  NBS_CODUSR_UEVE = :NBS_CODUSR_UEVE,'
      '  NBS_ORIGEM_UEVE = :NBS_ORIGEM_UEVE'
      'where'
      '  NBS_ID = :OLD_NBS_ID')
    InsertSQL.Strings = (
      'insert into CADNBS'
      
        '  (NBS_ID, NBS_CODIGO, NBS_NOME, NBS_DATHOR_INC, NBS_CODUSR_INC,' +
        ' NBS_ORIGEM_INC)'
      'values'
      
        '  (:NBS_ID, :NBS_CODIGO, :NBS_NOME, SYSDATE, :NBS_CODUSR_INC, :N' +
        'BS_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADNBS'
      'where'
      '  NBS_ID = :OLD_NBS_ID')
    Left = 348
    Top = 82
  end
  object Src_Nbs: TDataSource
    DataSet = Tb_Nbs
    Left = 408
    Top = 82
  end
end
