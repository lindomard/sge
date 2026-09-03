inherited Frm_CBenef: TFrm_CBenef
  Left = 291
  Top = 207
  Width = 602
  Height = 360
  Caption = 'Cadastros dos Codigos do Beneficios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 594
    inherited lbl_emp: TLabel
      Left = 549
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 594
    Height = 194
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 1
        Top = 16
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo:'
        FocusControl = DBE_codigo
      end
      object Label2: TLabel
        Left = 360
        Top = 14
        Width = 21
        Height = 13
        Caption = 'UF:'
      end
      object Label3: TLabel
        Left = 1
        Top = 34
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Descri'#231#227'o:'
        FocusControl = DBE_CB_DESCRICAO
      end
      object Label4: TLabel
        Left = 1
        Top = 52
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Observa'#231#245'es:'
        FocusControl = DBE_CB_OBS_NF
      end
      object DBE_codigo: TDBEdit
        Left = 80
        Top = 14
        Width = 73
        Height = 19
        Ctl3D = False
        DataField = 'CB_CODIGO'
        DataSource = src_CBenef
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_CB_DESCRICAO: TDBEdit
        Left = 80
        Top = 32
        Width = 353
        Height = 19
        Ctl3D = False
        DataField = 'CB_DESCRICAO'
        DataSource = src_CBenef
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBE_CB_OBS_NF: TDBEdit
        Left = 80
        Top = 50
        Width = 353
        Height = 19
        Ctl3D = False
        DataField = 'CB_OBS_NF'
        DataSource = src_CBenef
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_CB_UF: TRxDBComboBox
        Left = 391
        Top = 11
        Width = 45
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'CB_UF'
        DataSource = src_CBenef
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RO'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO'
          '')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Values.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RO'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 586
        Height = 166
        DataSource = src_CBenef
        Columns = <
          item
            Expanded = False
            FieldName = 'CB_CODIGO'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB_UF'
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB_DESCRICAO'
            Title.Alignment = taCenter
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB_OBS_NF'
            Title.Alignment = taCenter
            Width = 103
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 223
    Width = 594
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 276
    Width = 594
    inherited DBNavigator1: TDBNavigator
      DataSource = src_CBenef
    end
  end
  object Tb_CBenef: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CAD_CBENEF')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CBenef
    Left = 373
    Top = 136
    object Tb_CBenefCB_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CB_CODIGO'
      Origin = 'SG_ASSOC.CAD_CBENEF.CB_CODIGO'
      Size = 10
    end
    object Tb_CBenefCB_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CB_UF'
      Origin = 'SG_ASSOC.CAD_CBENEF.CB_UF'
      Size = 2
    end
    object Tb_CBenefCB_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CB_DESCRICAO'
      Origin = 'SG_ASSOC.CAD_CBENEF.CB_DESCRICAO'
      Size = 100
    end
    object Tb_CBenefCB_OBS_NF: TStringField
      DisplayLabel = 'Observa'#231#227'o NF'
      FieldName = 'CB_OBS_NF'
      Origin = 'SG_ASSOC.CAD_CBENEF.CB_OBS_NF'
      Size = 254
    end
  end
  object U_CBenef: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  CAD_CBENEF SET'
      
        '  CB_CODIGO = :CB_CODIGO, CB_UF = :CB_UF, CB_DESCRICAO = :CB_DES' +
        'CRICAO, CB_OBS_NF = :CB_OBS_NF )'
      'where'
      '  CB_CODIGO = :CB_CODIGO'
      '')
    InsertSQL.Strings = (
      'insert into CAD_CBENEF'
      '  (CB_CODIGO, CB_UF, CB_DESCRICAO, CB_OBS_NF )'
      'values'
      '  (:CB_CODIGO, :CB_UF, :CB_DESCRICAO, :CB_OBS_NF )')
    DeleteSQL.Strings = (
      'delete from CAD_CBENEF'
      'where'
      '  CB_CODIGO = :OLD_CB_CODIGO')
    Left = 401
    Top = 136
  end
  object src_CBenef: TDataSource
    DataSet = Tb_CBenef
    Left = 429
    Top = 136
  end
end
