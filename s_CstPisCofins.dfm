inherited Frm_CstPisCofins: TFrm_CstPisCofins
  Left = 250
  Top = 130
  Width = 923
  Height = 620
  Caption = 'Cadastro de CST - PIS / COFINS'
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
    Height = 454
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 40
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_CSTC_ID
      end
      object Label2: TLabel
        Left = 40
        Top = 55
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBE_CSTC_CODIGO
      end
      object Label3: TLabel
        Left = 160
        Top = 55
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBE_CSTC_NOME
      end
      object Label4: TLabel
        Left = 40
        Top = 95
        Width = 74
        Height = 13
        Caption = 'Descri'#195#167#195#163'o'
        FocusControl = DBM_CSTC_DESCRICAO
      end
      object DBE_CSTC_ID: TDBEdit
        Left = 40
        Top = 30
        Width = 100
        Height = 21
        DataField = 'CSTC_ID'
        DataSource = Src_CstPisCofins
        Enabled = False
        TabOrder = 0
      end
      object DBE_CSTC_CODIGO: TDBEdit
        Left = 40
        Top = 70
        Width = 100
        Height = 21
        DataField = 'CSTC_CODIGO'
        DataSource = Src_CstPisCofins
        TabOrder = 1
      end
      object DBE_CSTC_NOME: TDBEdit
        Left = 160
        Top = 70
        Width = 700
        Height = 21
        DataField = 'CSTC_NOME'
        DataSource = Src_CstPisCofins
        TabOrder = 2
      end
      object DBM_CSTC_DESCRICAO: TDBMemo
        Left = 40
        Top = 110
        Width = 820
        Height = 180
        DataField = 'CSTC_DESCRICAO'
        DataSource = Src_CstPisCofins
        TabOrder = 3
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 907
        Height = 426
        DataSource = Src_CstPisCofins
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CSTC_ID'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSTC_CODIGO'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSTC_NOME'
            Title.Alignment = taCenter
            Width = 650
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
      DataSource = Src_CstPisCofins
    end
  end
  object Tb_CstPisCofins: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCST_PISCOFINS where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CstPisCofins
    Left = 320
    Top = 79
    object Tb_CstPisCofinsCSTC_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CSTC_ID'
      Origin = 'SG_ASSOC.CADCST_PISCOFINS.CSTC_ID'
    end
    object Tb_CstPisCofinsCSTC_CODIGO: TStringField
      DisplayLabel = 'C'#195#179'digo'
      FieldName = 'CSTC_CODIGO'
      Origin = 'SG_ASSOC.CADCST_PISCOFINS.CSTC_CODIGO'
      Size = 2
    end
    object Tb_CstPisCofinsCSTC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CSTC_NOME'
      Origin = 'SG_ASSOC.CADCST_PISCOFINS.CSTC_NOME'
      Size = 700
    end
    object Tb_CstPisCofinsCSTC_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#195#167#195#163'o'
      FieldName = 'CSTC_DESCRICAO'
      Origin = 'SG_ASSOC.CADCST_PISCOFINS.CSTC_DESCRICAO'
      BlobType = ftMemo
    end
  end
  object U_CstPisCofins: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCST_PISCOFINS'
      'set'
      '  CSTC_CODIGO = :CSTC_CODIGO,'
      '  CSTC_NOME = :CSTC_NOME,'
      '  CSTC_DESCRICAO = :CSTC_DESCRICAO,'
      '  CSTC_DATHOR_UEVE = SYSDATE,'
      '  CSTC_CODUSR_UEVE = :CSTC_CODUSR_UEVE,'
      '  CSTC_ORIGEM_UEVE = :CSTC_ORIGEM_UEVE'
      'where'
      '  CSTC_ID = :OLD_CSTC_ID')
    InsertSQL.Strings = (
      'insert into CADCST_PISCOFINS'
      
        '  (CSTC_ID, CSTC_CODIGO, CSTC_NOME, CSTC_DESCRICAO, CSTC_DATHOR_' +
        'INC, CSTC_CODUSR_INC, CSTC_ORIGEM_INC)'
      'values'
      
        '  (:CSTC_ID, :CSTC_CODIGO, :CSTC_NOME, :CSTC_DESCRICAO, SYSDATE,' +
        ' :CSTC_CODUSR_INC, :CSTC_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADCST_PISCOFINS'
      'where'
      '  CSTC_ID = :OLD_CSTC_ID')
    Left = 348
    Top = 82
  end
  object Src_CstPisCofins: TDataSource
    DataSet = Tb_CstPisCofins
    Left = 376
    Top = 82
  end
end
