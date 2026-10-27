inherited Frm_IndOpIbsCbs: TFrm_IndOpIbsCbs
  Left = 254
  Top = 167
  Width = 923
  Height = 620
  Caption = 'Cadastro de Indicadores de Opera'#195#167#195#163'o - IBS / CBS'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 915
    Height = 52
    inherited lbl_emp: TLabel
      Left = 870
      Height = 50
    end
    object lbl_filtros_extras: TLabel [2]
      Left = 8
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
      Left = 91
      Top = 28
      Width = 746
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
  end
  inherited PC1: TPageControl
    Top = 52
    Width = 915
    Height = 431
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 40
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_CIOP_ID
      end
      object Label2: TLabel
        Left = 40
        Top = 55
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_CIOP_CODIGO
      end
      object Label3: TLabel
        Left = 160
        Top = 55
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_CIOP_NOME
      end
      object Label4: TLabel
        Left = 40
        Top = 95
        Width = 52
        Height = 13
        Caption = 'Artigo 11'
        FocusControl = DBE_CIOP_ART11
      end
      object Label5: TLabel
        Left = 40
        Top = 135
        Width = 125
        Height = 13
        Caption = 'Local da Opera'#195#167#195#163'o'
        FocusControl = DBE_CIOP_LOCAL_OPERACAO
      end
      object Label6: TLabel
        Left = 40
        Top = 175
        Width = 88
        Height = 13
        Caption = 'Caracter'#195#173'stica'
        FocusControl = DBE_CIOP_CARACTERISTICA
      end
      object Label7: TLabel
        Left = 40
        Top = 215
        Width = 83
        Height = 13
        Caption = 'Local de Forn.'
        FocusControl = DBE_CIOP_LOCAL_FORN
      end
      object DBE_CIOP_ID: TDBEdit
        Left = 40
        Top = 30
        Width = 100
        Height = 21
        DataField = 'CIOP_ID'
        DataSource = Src_IndOp
        Enabled = False
        TabOrder = 0
      end
      object DBE_CIOP_CODIGO: TDBEdit
        Left = 40
        Top = 70
        Width = 100
        Height = 21
        DataField = 'CIOP_CODIGO'
        DataSource = Src_IndOp
        TabOrder = 1
      end
      object DBE_CIOP_NOME: TDBEdit
        Left = 160
        Top = 70
        Width = 700
        Height = 21
        DataField = 'CIOP_NOME'
        DataSource = Src_IndOp
        TabOrder = 2
      end
      object DBE_CIOP_ART11: TDBEdit
        Left = 40
        Top = 110
        Width = 820
        Height = 21
        DataField = 'CIOP_ART11'
        DataSource = Src_IndOp
        TabOrder = 3
      end
      object DBE_CIOP_LOCAL_OPERACAO: TDBEdit
        Left = 40
        Top = 150
        Width = 820
        Height = 21
        DataField = 'CIOP_LOCAL_OPERACAO'
        DataSource = Src_IndOp
        TabOrder = 4
      end
      object DBE_CIOP_CARACTERISTICA: TDBEdit
        Left = 40
        Top = 190
        Width = 820
        Height = 21
        DataField = 'CIOP_CARACTERISTICA'
        DataSource = Src_IndOp
        TabOrder = 5
      end
      object DBE_CIOP_LOCAL_FORN: TDBEdit
        Left = 40
        Top = 230
        Width = 820
        Height = 21
        DataField = 'CIOP_LOCAL_FORN'
        DataSource = Src_IndOp
        TabOrder = 6
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        Height = 426
        DataSource = Src_IndOp
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CIOP_ID'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIOP_CODIGO'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIOP_NOME'
            Title.Alignment = taCenter
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIOP_ART11'
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIOP_LOCAL_OPERACAO'
            Title.Alignment = taCenter
            Width = 180
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 483
    Width = 915
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 536
    Width = 915
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_IndOp
    end
  end
  object Tb_IndOp: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADINDOP_IBSCBS where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_IndOp
    Left = 320
    Top = 79
    object Tb_IndOpCIOP_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CIOP_ID'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_ID'
    end
    object Tb_IndOpCIOP_CODIGO: TStringField
      DisplayLabel = 'C'#195#179'digo'
      FieldName = 'CIOP_CODIGO'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_CODIGO'
      Size = 6
    end
    object Tb_IndOpCIOP_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CIOP_NOME'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_NOME'
      Size = 100
    end
    object Tb_IndOpCIOP_ART11: TStringField
      DisplayLabel = 'Artigo 11'
      FieldName = 'CIOP_ART11'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_ART11'
      Size = 190
    end
    object Tb_IndOpCIOP_LOCAL_OPERACAO: TStringField
      DisplayLabel = 'Local Opera'#195#167#195#163'o'
      FieldName = 'CIOP_LOCAL_OPERACAO'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_LOCAL_OPERACAO'
      Size = 190
    end
    object Tb_IndOpCIOP_CARACTERISTICA: TStringField
      DisplayLabel = 'Caracter'#195#173'stica'
      FieldName = 'CIOP_CARACTERISTICA'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_CARACTERISTICA'
      Size = 190
    end
    object Tb_IndOpCIOP_LOCAL_FORN: TStringField
      DisplayLabel = 'Local Forn.'
      FieldName = 'CIOP_LOCAL_FORN'
      Origin = 'SG_ASSOC.CADINDOP_IBSCBS.CIOP_LOCAL_FORN'
      Size = 190
    end
  end
  object U_IndOp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADINDOP_IBSCBS'
      'set'
      '  CIOP_CODIGO = :CIOP_CODIGO,'
      '  CIOP_NOME = :CIOP_NOME,'
      '  CIOP_ART11 = :CIOP_ART11,'
      '  CIOP_LOCAL_OPERACAO = :CIOP_LOCAL_OPERACAO,'
      '  CIOP_CARACTERISTICA = :CIOP_CARACTERISTICA,'
      '  CIOP_LOCAL_FORN = :CIOP_LOCAL_FORN,'
      '  CIOP_DATHOR_UEVE = SYSDATE,'
      '  CIOP_CODUSR_UEVE = :CIOP_CODUSR_UEVE,'
      '  CIOP_ORIGEM_UEVE = :CIOP_ORIGEM_UEVE'
      'where'
      '  CIOP_ID = :OLD_CIOP_ID')
    InsertSQL.Strings = (
      'insert into CADINDOP_IBSCBS'
      
        '  (CIOP_ID, CIOP_CODIGO, CIOP_NOME, CIOP_ART11, CIOP_LOCAL_OPERA' +
        'CAO, '
      
        '   CIOP_CARACTERISTICA, CIOP_LOCAL_FORN, CIOP_DATHOR_INC, CIOP_C' +
        'ODUSR_INC, CIOP_ORIGEM_INC)'
      'values'
      
        '  (:CIOP_ID, :CIOP_CODIGO, :CIOP_NOME, :CIOP_ART11, :CIOP_LOCAL_' +
        'OPERACAO, '
      
        '   :CIOP_CARACTERISTICA, :CIOP_LOCAL_FORN, SYSDATE, :CIOP_CODUSR' +
        '_INC, :CIOP_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADINDOP_IBSCBS'
      'where'
      '  CIOP_ID = :OLD_CIOP_ID')
    Left = 348
    Top = 82
  end
  object Src_IndOp: TDataSource
    DataSet = Tb_IndOp
    Left = 376
    Top = 82
  end
end
