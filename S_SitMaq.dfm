inherited Frm_SitMaq: TFrm_SitMaq
  Left = 354
  Top = 214
  Width = 507
  Height = 313
  Caption = 'Cadastro Situacao / Maquina'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 499
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 499
    Height = 151
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 10
        Top = 25
        Width = 94
        Height = 13
        Caption = 'Codigo Situacao'
      end
      object Label2: TLabel
        Left = 140
        Top = 25
        Width = 112
        Height = 13
        Caption = 'Descricao Situacao'
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 40
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'SCODSITMAQ'
        DataSource = DM2.Src_SitMaq
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 138
        Top = 40
        Width = 343
        Height = 19
        Ctl3D = False
        DataField = 'SNOMSITMAQ'
        DataSource = DM2.Src_SitMaq
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 491
        Height = 123
        DataSource = DM2.Src_SitMaq
        Columns = <
          item
            Expanded = False
            FieldName = 'SCODEMP'
            Title.Caption = 'Cod. Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCODSITMAQ'
            Title.Caption = 'Cod. Situacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SNOMSITMAQ'
            Title.Caption = 'Descricao'
            Width = 298
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 180
    Width = 499
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 233
    Width = 499
    inherited DBNavigator1: TDBNavigator
      DataSource = DM2.Src_SitMaq
    end
  end
end
