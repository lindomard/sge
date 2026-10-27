inherited Frm_trib_mun: TFrm_trib_mun
  Left = 377
  Top = 260
  Width = 923
  Caption = 'Cadastro de Tributos Municipais'
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
        FocusControl = DBE_TM_ID
      end
      object Label2: TLabel
        Left = 80
        Top = 80
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_TM_CODIGO
      end
      object Label3: TLabel
        Left = 80
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_TM_NOME
      end
      object DBE_TM_ID: TDBEdit
        Left = 80
        Top = 56
        Width = 134
        Height = 21
        DataField = 'TM_ID'
        DataSource = Src_TribMun
        Enabled = False
        TabOrder = 0
      end
      object DBE_TM_CODIGO: TDBEdit
        Left = 80
        Top = 96
        Width = 121
        Height = 21
        DataField = 'TM_CODIGO'
        DataSource = Src_TribMun
        TabOrder = 1
      end
      object DBE_TM_NOME: TDBEdit
        Left = 80
        Top = 136
        Width = 500
        Height = 21
        DataField = 'TM_NOME'
        DataSource = Src_TribMun
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        DataSource = Src_TribMun
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TM_ID'
            Title.Alignment = taCenter
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TM_CODIGO'
            Title.Alignment = taCenter
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TM_NOME'
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
      DataSource = Src_TribMun
    end
  end
  object Tb_TribMun: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRIB_MUN where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TribMun
    Left = 320
    Top = 79
    object Tb_TribMunTM_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TM_CODIGO'
    end
    object Tb_TribMunTM_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TM_NOME'
    end
    object Tb_TribMunTM_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'TM_ID'
    end
  end
  object U_TribMun: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRIB_MUN'
      'set'
      '  TM_CODIGO = :TM_CODIGO,'
      '  TM_NOME = :TM_NOME,'
      '  TM_DATHOR_UEVE = SYSDATE,'
      '  TM_CODUSR_UEVE = :TM_CODUSR_UEVE,'
      '  TM_ORIGEM_UEVE = :TM_ORIGEM_UEVE'
      'where'
      '  TM_ID = :OLD_TM_ID')
    InsertSQL.Strings = (
      'insert into CADTRIB_MUN'
      
        '  (TM_ID, TM_CODIGO, TM_NOME, TM_DATHOR_INC, TM_CODUSR_INC, TM_O' +
        'RIGEM_INC)'
      'values'
      
        '  (:TM_ID, :TM_CODIGO, :TM_NOME, SYSDATE, :TM_CODUSR_INC, :TM_OR' +
        'IGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADTRIB_MUN'
      'where'
      '  TM_ID = :OLD_TM_ID')
    Left = 348
    Top = 82
  end
  object Src_TribMun: TDataSource
    DataSet = Tb_TribMun
    Left = 400
    Top = 74
  end
end
