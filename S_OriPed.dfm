inherited Frm_OriPed: TFrm_OriPed
  Caption = 'Cadastro de Origem de Pedidos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      ItemIndex = 0
      Text = 'Nome'
    end
  end
  inherited PC1: TPageControl
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 23
        Top = 13
        Width = 44
        Height = 13
        Caption = 'Codigo:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 29
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 69
        Top = 10
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'COCODIGO'
        DataSource = DM6.Src_OrPed
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBRG_VINCULO: TDBRadioGroup
        Left = 227
        Top = 1
        Width = 207
        Height = 83
        Caption = 'Vinculo:'
        Ctl3D = False
        DataField = 'COVINCULO'
        DataSource = DM6.Src_OrPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Vendedor'
          'Televdas'
          'Internet(Ped.Eletronico)'
          'Disp.M'#243'vel'
          'Outros')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit2: TDBEdit
        Left = 69
        Top = 28
        Width = 137
        Height = 19
        Ctl3D = False
        DataField = 'CONOMORI'
        DataSource = DM6.Src_OrPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DM6.Src_OrPed
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COCODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONOMORI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COVINCULO'
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
      DataSource = DM6.Src_OrPed
    end
  end
end
