inherited Frm_Moe: TFrm_Moe
  Left = 197
  Top = 126
  Height = 365
  Caption = 'Manuten'#231#227'o no Cadastro de Moedas'
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Height = 192
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 69
        Top = 15
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 75
        Top = 34
        Width = 37
        Height = 13
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 61
        Top = 57
        Width = 51
        Height = 13
        Caption = 'S'#237'mbolo:'
      end
      object Label4: TLabel
        Left = 21
        Top = 81
        Width = 92
        Height = 13
        Caption = 'Pa'#237's de Origem:'
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 11
        Width = 91
        Height = 19
        Ctl3D = False
        DataField = 'MCODMOE'
        DataSource = DM2.Src_Moe
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 118
        Top = 33
        Width = 222
        Height = 19
        Ctl3D = False
        DataField = 'MNOME'
        DataSource = DM2.Src_Moe
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 118
        Top = 55
        Width = 43
        Height = 19
        Ctl3D = False
        DataField = 'MSIMBOLO'
        DataSource = DM2.Src_Moe
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 118
        Top = 77
        Width = 219
        Height = 19
        Ctl3D = False
        DataField = 'MORIGEM'
        DataSource = DM2.Src_Moe
        ParentCtl3D = False
        TabOrder = 3
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 164
        DataSource = DM2.Src_Moe
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MCODMOE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MNOME'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MORIGEM'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MSIMBOLO'
            Width = 140
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 221
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 274
    inherited DBNavigator1: TDBNavigator
      DataSource = DM2.Src_Moe
    end
  end
end
