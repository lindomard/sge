inherited Frm_TribNac: TFrm_TribNac
  Left = 377
  Top = 260
  Width = 923
  Caption = 'Cadastro de Tributos Nacionais'
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
        FocusControl = DBE_TN_ID
      end
      object Label2: TLabel
        Left = 80
        Top = 80
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_TN_CODIGO
      end
      object Label3: TLabel
        Left = 80
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_TN_NOME
      end
      object DBE_TN_ID: TDBEdit
        Left = 80
        Top = 56
        Width = 134
        Height = 21
        DataField = 'TN_ID'
        DataSource = Src_TribNac
        Enabled = False
        TabOrder = 0
      end
      object DBE_TN_CODIGO: TDBEdit
        Left = 80
        Top = 96
        Width = 121
        Height = 21
        DataField = 'TN_CODIGO'
        DataSource = Src_TribNac
        TabOrder = 1
      end
      object DBE_TN_NOME: TDBEdit
        Left = 80
        Top = 136
        Width = 500
        Height = 21
        DataField = 'TN_NOME'
        DataSource = Src_TribNac
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        DataSource = Src_TribNac
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TN_ID'
            Title.Alignment = taCenter
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TN_CODIGO'
            Title.Alignment = taCenter
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TN_NOME'
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
      DataSource = Src_TribNac
    end
  end
  object Tb_TribNac: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRIB_NAC where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_TribNac
    Left = 320
    Top = 79
    object Tb_TribNacTN_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'TN_ID'
      Origin = 'SG_ASSOC.CADTRIB_NAC.TN_ID'
    end
    object Tb_TribNacTN_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TN_CODIGO'
      Origin = 'SG_ASSOC.CADTRIB_NAC.TN_CODIGO'
      Size = 15
    end
    object Tb_TribNacTN_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TN_NOME'
      Origin = 'SG_ASSOC.CADTRIB_NAC.TN_NOME'
      Size = 700
    end
  end
  object U_TribNac: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRIB_NAC'
      'set'
      '  TN_CODIGO = :TN_CODIGO,'
      '  TN_NOME = :TN_NOME,'
      '  TN_DATHOR_UEVE = SYSDATE,'
      '  TN_CODUSR_UEVE = :TN_CODUSR_UEVE,'
      '  TN_ORIGEM_UEVE = :TN_ORIGEM_UEVE'
      'where'
      '  TN_ID = :OLD_TN_ID')
    InsertSQL.Strings = (
      'insert into CADTRIB_NAC'
      '  (TN_ID, TN_CODIGO, TN_NOME, TN_DATHOR_INC, TN_CODUSR_INC, TN_ORIGEM_INC)'
      'values'
      '  (:TN_ID, :TN_CODIGO, :TN_NOME, SYSDATE, :TN_CODUSR_INC, :TN_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADTRIB_NAC'
      'where'
      '  TN_ID = :OLD_TN_ID')
    Left = 348
    Top = 82
  end
  object Src_TribNac: TDataSource
    DataSet = Tb_TribNac
    Left = 376
    Top = 82
  end
end