inherited Frm_Cus: TFrm_Cus
  Left = 155
  Width = 556
  Height = 473
  Caption = 'Manuten'#231#227'o em Configura'#231#245'es do pre'#231'o de custo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 540
    inherited lbl_emp: TLabel
      Left = 495
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited Edit1: TMaskEdit
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Width = 540
    Height = 300
    ActivePage = tsCad
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 16
        Top = 29
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 1
        Width = 68
        Height = 21
        DataField = 'PCCODIGO'
        DataSource = DM1.Src_Pcus
        Enabled = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 23
        Width = 167
        Height = 21
        DataField = 'PCNOME'
        DataSource = DM1.Src_Pcus
        TabOrder = 1
      end
      object DBRG_APLICSOB: TDBRadioGroup
        Left = 16
        Top = 47
        Width = 321
        Height = 33
        Caption = 'Aplicar sob:'
        Columns = 3
        DataField = 'PCAPLS'
        DataSource = DM1.Src_Pcus
        Items.Strings = (
          'Valor Origem'
          'Acumulado'
          'Fator Geral')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBRG_PCOPCIO: TDBRadioGroup
        Left = 16
        Top = 83
        Width = 321
        Height = 33
        Caption = 'Compor no Pre'#231'o de:'
        Columns = 4
        DataField = 'PCOPCIO'
        DataSource = DM1.Src_Pcus
        Items.Strings = (
          'Compra'
          'Custo'
          'Encargos'
          'Venda')
        TabOrder = 3
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object DBRG_FATOR: TDBRadioGroup
        Left = 16
        Top = 128
        Width = 321
        Height = 33
        Caption = 'Fator de:'
        Columns = 2
        DataField = 'PCFATOR'
        DataSource = DM1.Src_Pcus
        Items.Strings = (
          'Amplia'#231#227'o'
          'Dedu'#231#227'o')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
      end
      object DBR_FORMULA: TDBRadioGroup
        Left = 16
        Top = 164
        Width = 321
        Height = 33
        Caption = 'Formula'
        Columns = 2
        DataField = 'PFORMULA'
        DataSource = DM1.Src_Pcus
        Items.Strings = (
          'Divisao'
          'Valor')
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
      end
      object DBRG_TIPO: TDBRadioGroup
        Left = 16
        Top = 204
        Width = 321
        Height = 33
        Caption = 'Modelo'
        Columns = 2
        DataField = 'PTIPO'
        DataSource = DM1.Src_Pcus
        Items.Strings = (
          'Percentual [%]'
          'Reais [$]')
        TabOrder = 6
        Values.Strings = (
          '0'
          '1')
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 532
        Height = 272
        DataSource = DM1.Src_Pcus
        Columns = <
          item
            Expanded = False
            FieldName = 'PCCODIGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCNOME'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCAPLS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCFATOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCOPCIO'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 329
    Width = 540
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 382
    Width = 540
    inherited DBNavigator1: TDBNavigator
      DataSource = DM1.Src_Pcus
    end
  end
end
