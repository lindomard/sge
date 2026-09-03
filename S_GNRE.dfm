inherited Frm_GNRE: TFrm_GNRE
  Width = 779
  Height = 498
  Caption = 'Manuten'#231#227'o no Cadastro de GNRE'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 763
    inherited lbl_emp: TLabel
      Left = 718
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'C'#243'digo GNRE'
        'C'#243'digo Cliente'
        'Data GNRE')
    end
  end
  inherited PC1: TPageControl
    Width = 763
    Height = 325
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 66
        Top = 13
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 202
        Top = 13
        Width = 32
        Height = 13
        Caption = 'Data:'
      end
      object Label3: TLabel
        Left = 8
        Top = 35
        Width = 105
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
      end
      object Label4: TLabel
        Left = 75
        Top = 57
        Width = 36
        Height = 13
        Caption = 'CNPJ:'
      end
      object Label5: TLabel
        Left = 321
        Top = 59
        Width = 110
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual:'
      end
      object Label6: TLabel
        Left = 11
        Top = 77
        Width = 219
        Height = 13
        Caption = 'Unidade da Federa'#231#227'o do Favorecido:'
      end
      object Label7: TLabel
        Left = 9
        Top = 98
        Width = 102
        Height = 13
        Caption = 'C'#243'digo do Banco:'
      end
      object Label8: TLabel
        Left = 486
        Top = 98
        Width = 51
        Height = 13
        Caption = 'Ag'#234'ncia:'
      end
      object Label9: TLabel
        Left = 9
        Top = 121
        Width = 149
        Height = 13
        Caption = 'N'#250'mero da Autentica'#231#227'o: '
      end
      object Label10: TLabel
        Left = 37
        Top = 142
        Width = 73
        Height = 13
        Caption = 'Valor GNRE:'
      end
      object Label11: TLabel
        Left = 382
        Top = 145
        Width = 76
        Height = 13
        Caption = 'Data Vencto:'
      end
      object Label12: TLabel
        Left = 343
        Top = 13
        Width = 94
        Height = 13
        Caption = 'Referencia M'#234's:'
      end
      object Label13: TLabel
        Left = 487
        Top = 14
        Width = 27
        Height = 13
        Caption = 'Ano:'
      end
      object Label14: TLabel
        Left = 9
        Top = 166
        Width = 127
        Height = 13
        Caption = 'N'#250'mero do Conv'#234'nio: '
      end
      object Label15: TLabel
        Left = 322
        Top = 78
        Width = 271
        Height = 13
        Caption = 'Unidade da Federa'#231#227'o do Substituto Tribut'#225'rio:'
      end
      object DBEdit1: TDBEdit
        Left = 117
        Top = 10
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'GN1CODIGO'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 249
        Top = 10
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'GN1DATA'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 117
        Top = 32
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'GN1CODCLI'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 117
        Top = 54
        Width = 191
        Height = 19
        Ctl3D = False
        DataField = 'GN1CNPJ'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 436
        Top = 56
        Width = 191
        Height = 19
        Ctl3D = False
        DataField = 'GN1IE'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 236
        Top = 75
        Width = 27
        Height = 19
        Ctl3D = False
        DataField = 'GN1UF'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 117
        Top = 95
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'GN1CODBCO'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 9
      end
      object NOMBCO: TDBEdit
        Left = 198
        Top = 96
        Width = 283
        Height = 19
        Ctl3D = False
        DataField = 'GN1CNPJ'
        DataSource = DM5.Src_GNRE01
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 10
      end
      object nomcli: TDBEdit
        Left = 200
        Top = 32
        Width = 283
        Height = 19
        Ctl3D = False
        DataField = 'GN1CNPJ'
        DataSource = DM5.Src_GNRE01
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 543
        Top = 97
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'GN1AGENCIA'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit9: TDBEdit
        Left = 160
        Top = 119
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'GN1NUMAUT'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 119
        Top = 140
        Width = 189
        Height = 19
        Ctl3D = False
        DataField = 'GN1VALOR'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 462
        Top = 142
        Width = 123
        Height = 19
        Ctl3D = False
        DataField = 'GN1DATVEN'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 438
        Top = 10
        Width = 43
        Height = 19
        Ctl3D = False
        DataField = 'GN1MESREF'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 516
        Top = 11
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'GN1ANOREF'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 160
        Top = 164
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'GN1MUMCONV'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 16
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 185
        Width = 755
        Height = 112
        Align = alBottom
        Caption = 'Documentos Relacionados:'
        TabOrder = 17
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 85
          Width = 751
          Height = 25
          DataSource = DM5.Src_GNRE02
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 751
          Height = 70
          Align = alClient
          DataSource = DM5.Src_GNRE02
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid2Exit
          Columns = <
            item
              Expanded = False
              FieldName = 'GN2NUMDOC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2MODDOC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2SERDOC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2SUBSER'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2DATDOC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2VALDOC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GN2VALIMP'
              Width = 64
              Visible = True
            end>
        end
      end
      object DBEdit15: TDBEdit
        Left = 599
        Top = 76
        Width = 27
        Height = 19
        Ctl3D = False
        DataField = 'GN1UFST'
        DataSource = DM5.Src_GNRE01
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 755
        Height = 297
        DataSource = DM5.Src_GNRE01
        Columns = <
          item
            Expanded = False
            FieldName = 'GN1CODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1CNPJ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1IE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1DATA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1UF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1CODBCO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1AGENCIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1NUMAUT'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1VALOR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1DATVEN'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1ANOREF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1MESREF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1MUMCONV'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1CODUSR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1DATINC'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1USRALT'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GN1DATALT'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 354
    Width = 763
    inherited INCLUIR: TBitBtn
      Left = 9
      Width = 150
    end
    inherited ALTERAR: TBitBtn
      Left = 160
      Width = 150
    end
    inherited EXCLUIR: TBitBtn
      Left = 310
      Width = 150
    end
    inherited GRAVAR: TBitBtn
      Left = 462
      Width = 150
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 613
      Width = 150
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 407
    Width = 763
    inherited DBNavigator1: TDBNavigator
      Top = 13
      Width = 608
      DataSource = DM5.Src_GNRE01
    end
    inherited SAIR: TBitBtn
      Left = 616
      Top = 13
      Width = 150
    end
  end
end
