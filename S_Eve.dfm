inherited Frm_Eve: TFrm_Eve
  Left = 296
  Top = 184
  Width = 569
  Height = 477
  Caption = 'Manuten'#231#227'o no Cadastro de Eventos'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 561
    inherited lbl_emp: TLabel
      Left = 516
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 561
    Height = 311
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 23
        Top = 16
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 24
        Top = 40
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 243
        Top = 115
        Width = 114
        Height = 13
        Caption = 'Valor/Porcentagem:'
      end
      object Label6: TLabel
        Left = 326
        Top = 39
        Width = 120
        Height = 13
        Caption = 'Ordem de Impress'#227'o:'
      end
      object DBEdit1: TDBEdit
        Left = 94
        Top = 9
        Width = 63
        Height = 21
        DataField = 'CECODEVE'
        DataSource = DM2.Src_Eve
        Enabled = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBE_Nomeve: TDBEdit
        Left = 95
        Top = 33
        Width = 214
        Height = 21
        DataField = 'CENOMEVE'
        DataSource = DM2.Src_Eve
        TabOrder = 1
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 25
        Top = 100
        Width = 209
        Height = 34
        Caption = 'Tipo do Evento:'
        Columns = 2
        DataField = 'CETIPO'
        DataSource = DM2.Src_Eve
        Items.Strings = (
          '&Valor'
          '&Porcentagem')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
      end
      object DBEdit3: TDBEdit
        Left = 368
        Top = 110
        Width = 121
        Height = 21
        DataField = 'CEVALOR'
        DataSource = DM2.Src_Eve
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 27
        Top = 139
        Width = 155
        Height = 17
        Caption = 'Incide no INSS'
        DataField = 'CEINCINSS'
        DataSource = DM2.Src_Eve
        TabOrder = 6
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 28
        Top = 155
        Width = 129
        Height = 17
        Caption = 'Incide no FGTS'
        DataField = 'CEINCFGTS'
        DataSource = DM2.Src_Eve
        TabOrder = 7
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 224
        Top = 139
        Width = 97
        Height = 17
        Caption = 'Incide no IR'
        DataField = 'CEINCIR'
        DataSource = DM2.Src_Eve
        TabOrder = 8
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 25
        Top = 57
        Width = 210
        Height = 38
        Caption = 'Natureza da Opera'#231#227'o:'
        Columns = 2
        DataField = 'CENAT'
        DataSource = DM2.Src_Eve
        Items.Strings = (
          'Cr'#233'dito'
          'D'#233'bito')
        TabOrder = 3
        Values.Strings = (
          '0'
          '1')
      end
      object DBCheckBox4: TDBCheckBox
        Left = 224
        Top = 154
        Width = 177
        Height = 17
        Caption = 'Incide no Vale Transporte'
        DataField = 'CEINCVT'
        DataSource = DM2.Src_Eve
        TabOrder = 9
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 0
        Top = 189
        Width = 553
        Height = 53
        Align = alBottom
        Caption = 'Tipo de Evento:'
        Columns = 2
        DataField = 'CETP_EVENTO'
        DataSource = DM2.Src_Eve
        Items.Strings = (
          'Normal'
          'Hora Extra'
          'Adicional Produtividade'
          'Adicional Por Tempo Serv')
        TabOrder = 10
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 242
        Width = 553
        Height = 41
        Align = alBottom
        Caption = 'C'#243'digo do Evento se houver Descan'#231'o Semanal Remunerado(DSR)'
        TabOrder = 11
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 106
          Height = 13
          Caption = 'C'#243'digo do Evento:'
        end
        object Label5: TLabel
          Left = 434
          Top = 7
          Width = 115
          Height = 28
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#227'o ha consulta para este campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          WordWrap = True
        end
        object DBEdit4: TDBEdit
          Left = 118
          Top = 13
          Width = 59
          Height = 21
          DataField = 'CECODEDSR'
          DataSource = DM2.Src_Eve
          TabOrder = 0
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 181
          Top = 13
          Width = 245
          Height = 21
          DataField = 'nomevedsr'
          DataSource = DM2.Src_Eve
          Enabled = False
          ParentColor = True
          TabOrder = 1
        end
      end
      object DBE_ORDEM: TDBEdit
        Left = 450
        Top = 32
        Width = 72
        Height = 21
        DataField = 'CEORDIMP'
        DataSource = DM2.Src_Eve
        TabOrder = 2
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 553
        Height = 287
        DataSource = DM2.Src_Eve
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CECODEVE'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENOMEVE'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEVALOR'
            Width = 185
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 340
    Width = 561
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 393
    Width = 561
    inherited DBNavigator1: TDBNavigator
      DataSource = DM2.Src_Eve
    end
  end
end
