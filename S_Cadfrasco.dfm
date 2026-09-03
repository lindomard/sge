inherited Frm_CadFrasco: TFrm_CadFrasco
  Caption = 'Cadastro de Frasco'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 7
        Top = 25
        Width = 69
        Height = 13
        Caption = 'Cod. Frasco'
      end
      object Label2: TLabel
        Left = 139
        Top = 25
        Width = 58
        Height = 13
        Caption = 'Descricao'
      end
      object DBEdit1: TDBEdit
        Left = 4
        Top = 40
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'FRCODFRASCO'
        DataSource = DSCADFRASCO
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 137
        Top = 40
        Width = 381
        Height = 19
        Ctl3D = False
        DataField = 'FRDESCFRASCO'
        DataSource = DSCADFRASCO
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DSCADFRASCO
        Columns = <
          item
            Expanded = False
            FieldName = 'FRCODFRASCO'
            Title.Caption = 'Cod. Frasco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRDESCFRASCO'
            Title.Caption = 'Descricao'
            Width = 368
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    inherited DBNavigator1: TDBNavigator
      DataSource = DM2.Src_Molde
    end
  end
  object QR_CADFRASCO: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadfrasco')
    UpdateObject = UpCADFRASCO
    Left = 112
    Top = 160
    object QR_CADFRASCOFRCODFRASCO: TFloatField
      FieldName = 'FRCODFRASCO'
      Origin = 'SG_ASSOC.CADFRASCO.FRCODFRASCO'
    end
    object QR_CADFRASCOFRDESCFRASCO: TStringField
      FieldName = 'FRDESCFRASCO'
      Origin = 'SG_ASSOC.CADFRASCO.FRDESCFRASCO'
      Size = 40
    end
  end
  object UpCADFRASCO: TUpdateSQL
    ModifySQL.Strings = (
      'update cadfrasco'
      'set'
      '  FRCODFRASCO = :FRCODFRASCO,'
      '  FRDESCFRASCO = :FRDESCFRASCO'
      'where'
      '  FRCODFRASCO = :OLD_FRCODFRASCO')
    InsertSQL.Strings = (
      'insert into cadfrasco'
      '  (FRCODFRASCO, FRDESCFRASCO)'
      'values'
      '  (:FRCODFRASCO, :FRDESCFRASCO)')
    DeleteSQL.Strings = (
      'delete from cadfrasco'
      'where'
      '  FRCODFRASCO = :OLD_FRCODFRASCO')
    Left = 176
    Top = 160
  end
  object DSCADFRASCO: TDataSource
    DataSet = QR_CADFRASCO
    Left = 232
    Top = 160
  end
end
