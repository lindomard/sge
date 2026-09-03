inherited Frm_Dep: TFrm_Dep
  Left = 218
  Top = 267
  Height = 298
  Caption = 'Manuten'#231#227'o no Cadastro de Departamento da Folha de Pagamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Height = 129
    ActivePage = tsTab
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 48
        Height = 13
        Caption = 'C'#243'digo.:'
      end
      object Label2: TLabel
        Left = 9
        Top = 41
        Width = 49
        Height = 13
        Caption = 'Nome...:'
      end
      object DBEdit1: TDBEdit
        Left = 62
        Top = 12
        Width = 60
        Height = 21
        DataField = 'DPCODDEP'
        DataSource = DM2.Src_Dep_Folha
        Enabled = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 62
        Top = 34
        Width = 231
        Height = 21
        DataField = 'DPNOME'
        DataSource = DM2.Src_Dep_Folha
        TabOrder = 1
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 101
        DataSource = DM2.Src_Dep_Folha
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DPNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPCODDEP'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 158
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 211
  end
end
