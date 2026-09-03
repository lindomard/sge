inherited Frm_MVei: TFrm_MVei
  Height = 340
  Caption = 'Manuten'#231#227'o no Cadastro de Manuten'#231#245'es de Objetos'
  FormStyle = fsNormal
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
    Height = 167
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 80
        Top = 16
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 60
        Top = 37
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 39
        Top = 59
        Width = 82
        Height = 13
        Caption = 'Periodicidade:'
      end
      object Label4: TLabel
        Left = 36
        Top = 79
        Width = 86
        Height = 13
        Caption = 'C'#243'digo Moeda:'
      end
      object Label5: TLabel
        Left = 16
        Top = 102
        Width = 102
        Height = 13
        Caption = 'Valor/Qtd.Moeda:'
      end
      object Label6: TLabel
        Left = 198
        Top = 58
        Width = 45
        Height = 13
        Caption = 'M'#234's(es)'
      end
      object Label7: TLabel
        Left = 332
        Top = 58
        Width = 59
        Height = 13
        Caption = 'Kilometros'
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 13
        Width = 91
        Height = 19
        Ctl3D = False
        DataField = 'MCODMAN'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 34
        Width = 251
        Height = 19
        Ctl3D = False
        DataField = 'MNOME'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 128
        Top = 55
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'MPERIOD'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 129
        Top = 76
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'MCODMOE'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 129
        Top = 97
        Width = 90
        Height = 19
        Ctl3D = False
        DataField = 'MVALOR'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 198
        Top = 76
        Width = 182
        Height = 19
        Ctl3D = False
        DataField = 'nomemoe'
        DataSource = DM2.Src_MVei
        Enabled = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 262
        Top = 55
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'MKM'
        DataSource = DM2.Src_MVei
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBEdit3Exit
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 139
        DataSource = DM2.Src_MVei
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MCODMAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MNOME'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MPERIOD'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MCODMOE'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomemoe'
            Width = 96
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 196
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 249
    inherited DBNavigator1: TDBNavigator
      Left = -9
      Top = 15
      Width = 264
      DataSource = DM2.Src_MVei
    end
    inherited SAIR: TBitBtn
      Top = 15
    end
  end
end
