inherited Frm_Vei: TFrm_Vei
  Left = 14
  Top = 0
  Width = 786
  Height = 572
  Caption = 'Manuten'#231#227'o no Cadastro de Ve'#237'culo'
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 770
    inherited lbl_emp: TLabel
      Left = 725
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 770
    Height = 399
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 55
        Top = 5
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 64
        Top = 26
        Width = 37
        Height = 13
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 403
        Top = 26
        Width = 40
        Height = 13
        Caption = 'Marca:'
      end
      object Label4: TLabel
        Left = 56
        Top = 47
        Width = 46
        Height = 13
        Caption = 'Modelo:'
      end
      object Label5: TLabel
        Left = 55
        Top = 69
        Width = 48
        Height = 13
        Caption = 'Chassis:'
      end
      object Label6: TLabel
        Left = 395
        Top = 69
        Width = 56
        Height = 13
        Caption = 'Renavan:'
      end
      object Label7: TLabel
        Left = 30
        Top = 89
        Width = 70
        Height = 13
        Caption = 'Placa Atual:'
      end
      object Label8: TLabel
        Left = 195
        Top = 91
        Width = 21
        Height = 13
        Caption = 'UF:'
      end
      object Label9: TLabel
        Left = 362
        Top = 89
        Width = 85
        Height = 13
        Caption = 'Placa Anterior:'
      end
      object Label10: TLabel
        Left = 542
        Top = 91
        Width = 21
        Height = 13
        Caption = 'UF:'
      end
      object Label19: TLabel
        Left = 15
        Top = 255
        Width = 86
        Height = 13
        Caption = '%Deprecia'#231#227'o:'
      end
      object Label20: TLabel
        Left = 173
        Top = 254
        Width = 42
        Height = 13
        Caption = 'Ao m'#234's'
      end
      object Label21: TLabel
        Left = 64
        Top = 273
        Width = 41
        Height = 13
        Caption = 'Status:'
      end
      object Label22: TLabel
        Left = 138
        Top = 274
        Width = 298
        Height = 13
        Caption = '0-Normal 1-Em Manuten'#231#227'o 2-Vendido 3-Depreciado'
      end
      object Label23: TLabel
        Left = 633
        Top = 274
        Width = 34
        Height = 13
        Caption = 'Valor:'
      end
      object Label24: TLabel
        Left = 444
        Top = 274
        Width = 90
        Height = 13
        Caption = 'Data da Venda:'
      end
      object Label25: TLabel
        Left = 23
        Top = 295
        Width = 79
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object DBEdit1: TDBEdit
        Left = 106
        Top = 1
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'V1CODVEI'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 106
        Top = 22
        Width = 281
        Height = 19
        Ctl3D = False
        DataField = 'V1NOME'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 454
        Top = 22
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'V1MARCA'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 106
        Top = 43
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'V1MODELO'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 105
        Top = 65
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'V1CHASSIS'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 454
        Top = 65
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'V1RENAVAN'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 106
        Top = 87
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'V1PLACAAT'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 220
        Top = 88
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'V1UFPLACAATU'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 453
        Top = 87
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'V1PLACAANT'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 567
        Top = 88
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'V1UFPLACAANT'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 9
      end
      object RG_COMB: TDBRadioGroup
        Left = 31
        Top = 107
        Width = 376
        Height = 28
        Caption = 'Combust'#237'vel:'
        Columns = 5
        Ctl3D = False
        DataField = 'V1COMBUST'
        DataSource = DM2.Srv_Vei01
        Items.Strings = (
          'Gasolina'
          'Diesel'
          'Alcool'
          'G'#225's'
          'Outros')
        ParentCtl3D = False
        TabOrder = 10
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object GroupBox1: TGroupBox
        Left = 13
        Top = 144
        Width = 747
        Height = 105
        Caption = 'Sobre a Aquisi'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        object Label11: TLabel
          Left = 4
          Top = 18
          Width = 91
          Height = 13
          Caption = 'Data Aquisi'#231#227'o:'
        end
        object Label12: TLabel
          Left = 200
          Top = 18
          Width = 69
          Height = 13
          Caption = 'C'#243'd.Moeda:'
        end
        object Label13: TLabel
          Left = 605
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object Label14: TLabel
          Left = 38
          Top = 38
          Width = 53
          Height = 13
          Caption = 'Empresa:'
        end
        object Label15: TLabel
          Left = 5
          Top = 59
          Width = 94
          Height = 13
          Caption = 'Pessoa Contato:'
        end
        object Label16: TLabel
          Left = 512
          Top = 59
          Width = 55
          Height = 13
          Caption = 'Telefone:'
        end
        object Label17: TLabel
          Left = 43
          Top = 80
          Width = 53
          Height = 13
          Caption = 'Garantia:'
        end
        object Label18: TLabel
          Left = 160
          Top = 81
          Width = 45
          Height = 13
          Caption = 'M'#234's(es)'
        end
        object db_dtcompra: TDBEdit
          Left = 104
          Top = 15
          Width = 91
          Height = 19
          Ctl3D = False
          DataField = 'dt_compra'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 272
          Top = 15
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'V1CODIND'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBEdit11Exit
          OnKeyPress = DBEdit11KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 329
          Top = 15
          Width = 269
          Height = 19
          Ctl3D = False
          DataField = 'nomemoe'
          DataSource = DM2.Srv_Vei01
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 640
          Top = 14
          Width = 91
          Height = 19
          Ctl3D = False
          DataField = 'V1VALORCPR'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 104
          Top = 36
          Width = 309
          Height = 19
          Ctl3D = False
          DataField = 'V1LOCAQ'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 104
          Top = 57
          Width = 309
          Height = 19
          Ctl3D = False
          DataField = 'V1CONTAQ'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 577
          Top = 57
          Width = 153
          Height = 19
          Ctl3D = False
          DataField = 'V1FONEC1'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit17: TDBEdit
          Left = 105
          Top = 78
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'V1GARANTIA'
          DataSource = DM2.Srv_Vei01
          ParentCtl3D = False
          TabOrder = 8
        end
        object MDTCOMPRA: TMaskEdit
          Left = 104
          Top = 15
          Width = 92
          Height = 19
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          Visible = False
        end
      end
      object DBEdit18: TDBEdit
        Left = 108
        Top = 252
        Width = 59
        Height = 19
        Ctl3D = False
        DataField = 'V1PERCDEP'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 12
        OnKeyPress = DBEdit20KeyPress
      end
      object DBEdit19: TDBEdit
        Left = 109
        Top = 272
        Width = 21
        Height = 19
        Ctl3D = False
        DataField = 'V1STATUS'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 13
      end
      object MDTVDA: TMaskEdit
        Left = 537
        Top = 271
        Width = 84
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 14
        Text = '  /  /    '
        Visible = False
      end
      object DBEdit20: TDBEdit
        Left = 667
        Top = 272
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'V1VLRVEND'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = DBEdit20KeyPress
      end
      object DBEdit21: TDBEdit
        Left = 108
        Top = 293
        Width = 453
        Height = 19
        Ctl3D = False
        DataField = 'V1OBS01'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit22: TDBEdit
        Left = 108
        Top = 314
        Width = 453
        Height = 19
        Ctl3D = False
        DataField = 'V1OBS02'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit23: TDBEdit
        Left = 108
        Top = 335
        Width = 453
        Height = 19
        Ctl3D = False
        DataField = 'V1OBS03'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBEdit24: TDBEdit
        Left = 109
        Top = 356
        Width = 453
        Height = 19
        Ctl3D = False
        DataField = 'V1OBS04'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 19
      end
      object db_dtvenda: TDBEdit
        Left = 536
        Top = 271
        Width = 91
        Height = 19
        Ctl3D = False
        DataField = 'dt_venda'
        DataSource = DM2.Srv_Vei01
        ParentCtl3D = False
        TabOrder = 20
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 762
        Height = 371
        DataSource = DM2.Srv_Vei01
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'V1CODVEI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1MODELO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1CHASSIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1RENAVAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1PLACAAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1PLACAANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1LOCAQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1CONTAQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1FONEC1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1CODIND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1VALORCPR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1PERCDEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1DATAVDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1VLRVEND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1GARANTIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'V1DATAAQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomemoe'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 428
    Width = 770
    inherited INCLUIR: TBitBtn
      Width = 140
    end
    inherited ALTERAR: TBitBtn
      Left = 145
      Width = 140
    end
    inherited EXCLUIR: TBitBtn
      Left = 286
      Width = 140
    end
    inherited GRAVAR: TBitBtn
      Left = 426
      Width = 140
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 566
      Width = 140
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 481
    Width = 770
    inherited DBNavigator1: TDBNavigator
      Top = 14
      Width = 560
      DataSource = DM2.Srv_Vei01
    end
    inherited SAIR: TBitBtn
      Left = 566
      Top = 14
      Width = 140
    end
  end
end
