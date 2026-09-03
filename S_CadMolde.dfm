inherited Frm_CadMolde: TFrm_CadMolde
  Caption = 'Cadastro de Molde(s)'
  OldCreateOrder = True
  OnCreate = FormCreate
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
        Width = 65
        Height = 13
        Caption = 'Cod. Molde'
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
        DataField = 'MCODMOLDE'
        DataSource = DM2.Src_Molde
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
        DataField = 'MNOMMOLDE'
        DataSource = DM2.Src_Molde
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DM2.Src_Molde
        Columns = <
          item
            Expanded = False
            FieldName = 'MCODEMP'
            Title.Caption = 'Cod. Emp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MCODMOLDE'
            Title.Caption = 'Cod.Molde'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MNOMMOLDE'
            Title.Caption = 'Descricao'
            Width = 370
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
end
