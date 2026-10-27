inherited Frm_ClassTrib: TFrm_ClassTrib
  Left = 221
  Top = 148
  Width = 1066
  Height = 667
  Caption = 'Cadastros de Class Trib'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1058
    Height = 54
    inherited lbl_emp: TLabel
      Left = 1013
      Height = 52
    end
    object lbl_filtros_extras: TLabel [2]
      Left = 27
      Top = 32
      Width = 78
      Height = 13
      Caption = 'Filtros Extras:'
      Visible = False
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    object edt_filtros_extras: TEdit
      Left = 112
      Top = 28
      Width = 777
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
  end
  inherited PC1: TPageControl
    Top = 54
    Width = 1058
    Height = 476
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 0
        Top = 4
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Chave Id:'
        FocusControl = DBE_CT_ID
      end
      object Label2: TLabel
        Left = 0
        Top = 23
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo:'
        FocusControl = DBE_CT_CODIGO
      end
      object Label3: TLabel
        Left = 0
        Top = 39
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
        FocusControl = DBE_CT_NOME
      end
      object Label4: TLabel
        Left = -1
        Top = 54
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Descri'#231#227'o:'
        FocusControl = DBM_CT_DESCRICAO
      end
      object Label5: TLabel
        Left = 1
        Top = 115
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Reda'#231#227'o:'
        FocusControl = DBM_CT_REDACAO
      end
      object Label6: TLabel
        Left = 1
        Top = 173
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'LC 214/2025:'
        FocusControl = DBE_CT_LC_214_25
      end
      object Label7: TLabel
        Left = 1
        Top = 189
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo de Aliquota:'
        FocusControl = DBE_CT_PRED_CBS
      end
      object Label8: TLabel
        Left = 1
        Top = 209
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'P Red IBS:'
        FocusControl = DBE_CT_PRED_IBS
      end
      object Label9: TLabel
        Left = 367
        Top = 210
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'P Red CBS:'
      end
      object Label10: TLabel
        Left = 1
        Top = 227
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dt Vig Ini:'
      end
      object Label11: TLabel
        Left = 367
        Top = 232
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dt Vig Fin'
      end
      object Label12: TLabel
        Left = 1
        Top = 247
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dt Atualiza'#231#227'o:'
      end
      object Label13: TLabel
        Left = -2
        Top = 268
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Anexo:'
        FocusControl = DBE_CT_ANEXO
      end
      object Label14: TLabel
        Left = -2
        Top = 287
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Link:'
        FocusControl = DBE_CT_LINK
      end
      object DBE_CT_ID: TDBEdit
        Left = 125
        Top = 0
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CT_ID'
        DataSource = src_classTrib
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_CT_CODIGO: TDBEdit
        Left = 125
        Top = 18
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CT_CODIGO'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_CT_NOME: TDBEdit
        Left = 125
        Top = 36
        Width = 680
        Height = 19
        Ctl3D = False
        DataField = 'CT_NOME'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBM_CT_DESCRICAO: TDBMemo
        Left = 125
        Top = 54
        Width = 680
        Height = 58
        Ctl3D = False
        DataField = 'CT_DESCRICAO'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBM_CT_REDACAO: TDBMemo
        Left = 125
        Top = 111
        Width = 680
        Height = 58
        Ctl3D = False
        DataField = 'CT_REDACAO'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_CT_LC_214_25: TDBEdit
        Left = 125
        Top = 168
        Width = 680
        Height = 19
        Ctl3D = False
        DataField = 'CT_LC_214_25'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_CT_PRED_CBS: TDBEdit
        Left = 125
        Top = 207
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CT_PRED_CBS'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_CT_PRED_IBS: TDBEdit
        Left = 491
        Top = 207
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CT_PRED_IBS'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 7
      end
      object RxDBCB_CT_TIPO_ALIQ: TRxDBComboBox
        Left = 125
        Top = 186
        Width = 680
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'CT_TIPO_ALIQ'
        DataSource = src_classTrib
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '0 - Padr'#227'o'
          '1 - Fixa'
          '2 - Uniforme nacional (refer'#234'ncia)'
          '3 - Uniforme setorial'
          '4 - Sem al'#237'quota'
          '5 - Outras'
          '')
        ParentCtl3D = False
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object DBDtCT_DT_VIG_INI: TDBDateEdit
        Left = 125
        Top = 225
        Width = 121
        Height = 21
        DataField = 'CT_DT_VIG_INI'
        DataSource = src_classTrib
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBDtCT_DT_VIG_FIN: TDBDateEdit
        Left = 491
        Top = 225
        Width = 134
        Height = 21
        DataField = 'CT_DT_VIG_FIN'
        DataSource = src_classTrib
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBDt_CT_DT_ATUALIZACAO: TDBDateEdit
        Left = 125
        Top = 245
        Width = 121
        Height = 21
        DataField = 'CT_DT_ATUALIZACAO'
        DataSource = src_classTrib
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBE_CT_ANEXO: TDBEdit
        Left = 125
        Top = 265
        Width = 680
        Height = 19
        Ctl3D = False
        DataField = 'CT_ANEXO'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBE_CT_LINK: TDBEdit
        Left = 125
        Top = 283
        Width = 680
        Height = 19
        Ctl3D = False
        DataField = 'CT_LINK'
        DataSource = src_classTrib
        ParentCtl3D = False
        TabOrder = 13
      end
      object GroupBox1: TGroupBox
        Left = 53
        Top = 309
        Width = 746
        Height = 125
        Caption = 'Tags Exigidas:'
        TabOrder = 14
        object DBCB_ox1: TDBCheckBox
          Left = 16
          Top = 16
          Width = 209
          Height = 17
          Caption = 'IND_G_TRIB_REGULAR'
          DataField = 'CT_IND_G_TRIB_REGULAR'
          DataSource = src_classTrib
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 32
          Width = 209
          Height = 17
          Caption = 'IND_G_MONO_PADRAO'
          DataField = 'CT_IND_G_MONO_PADRAO'
          DataSource = src_classTrib
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 48
          Width = 209
          Height = 17
          Caption = 'IND_G_MONO_RETEN'
          DataField = 'CT_IND_G_MONO_RETEN'
          DataSource = src_classTrib
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 16
          Top = 64
          Width = 209
          Height = 17
          Caption = 'IND_G_MONO_RET'
          DataField = 'CT_IND_G_MONO_RET'
          DataSource = src_classTrib
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 16
          Top = 82
          Width = 209
          Height = 17
          Caption = 'IND_G_MONO_DIF'
          DataField = 'CT_IND_G_MONO_DIF'
          DataSource = src_classTrib
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 16
          Top = 98
          Width = 209
          Height = 17
          Caption = 'IND_G_ESTORNO_CRED'
          DataField = 'CT_IND_G_ESTORNO_CRED'
          DataSource = src_classTrib
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 192
          Top = 18
          Width = 209
          Height = 17
          Caption = 'IND_NFE_ABI'
          DataField = 'CT_IND_NFE_ABI'
          DataSource = src_classTrib
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCBCT_IND_NFE: TDBCheckBox
          Left = 192
          Top = 34
          Width = 209
          Height = 17
          Caption = 'IND_NFE'
          DataField = 'CT_IND_NFE'
          DataSource = src_classTrib
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBcB_CT_IND_NFCE: TDBCheckBox
          Left = 192
          Top = 51
          Width = 209
          Height = 17
          Caption = 'IND_NFCE'
          DataField = 'CT_IND_NFCE'
          DataSource = src_classTrib
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_CTE: TDBCheckBox
          Left = 191
          Top = 67
          Width = 209
          Height = 17
          Caption = 'IND_CTE'
          DataField = 'CT_IND_CTE'
          DataSource = src_classTrib
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_CTE_OS: TDBCheckBox
          Left = 191
          Top = 83
          Width = 209
          Height = 17
          Caption = 'IND_CTE_OS'
          DataField = 'CT_IND_CTE_OS'
          DataSource = src_classTrib
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_BPE: TDBCheckBox
          Left = 191
          Top = 99
          Width = 209
          Height = 17
          Caption = 'IND_BPE'
          DataField = 'CT_IND_BPE'
          DataSource = src_classTrib
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_ox12: TDBCheckBox
          Left = 370
          Top = 17
          Width = 209
          Height = 17
          Caption = 'IND_BPE_TA'
          DataField = 'CT_IND_BPE_TA'
          DataSource = src_classTrib
          TabOrder = 12
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_BPE_TM: TDBCheckBox
          Left = 370
          Top = 34
          Width = 209
          Height = 17
          Caption = 'IND_BPE_TM'
          DataField = 'CT_IND_BPE_TM'
          DataSource = src_classTrib
          TabOrder = 13
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NF_3E: TDBCheckBox
          Left = 370
          Top = 50
          Width = 209
          Height = 17
          Caption = 'IND_NF_3E'
          DataField = 'CT_IND_NF_3E'
          DataSource = src_classTrib
          TabOrder = 14
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NF_COM: TDBCheckBox
          Left = 370
          Top = 98
          Width = 209
          Height = 17
          Caption = 'IND_NF_COM'
          DataField = 'CT_IND_NF_COM'
          DataSource = src_classTrib
          TabOrder = 15
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NF_AG: TDBCheckBox
          Left = 536
          Top = 17
          Width = 180
          Height = 17
          Caption = 'IND_NF_AG'
          DataField = 'CT_IND_NF_AG'
          DataSource = src_classTrib
          TabOrder = 16
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NF_GAS: TDBCheckBox
          Left = 536
          Top = 33
          Width = 180
          Height = 17
          Caption = 'IND_NF_GAS'
          DataField = 'CT_IND_NF_GAS'
          DataSource = src_classTrib
          TabOrder = 17
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NFSE_VIA: TDBCheckBox
          Left = 370
          Top = 82
          Width = 209
          Height = 17
          Caption = 'IND_NFSE_VIA'
          DataField = 'CT_IND_NFSE_VIA'
          DataSource = src_classTrib
          TabOrder = 18
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_CT_IND_NFSE: TDBCheckBox
          Left = 370
          Top = 66
          Width = 209
          Height = 17
          Caption = 'IND_NFSE'
          DataField = 'CT_IND_NFSE'
          DataSource = src_classTrib
          TabOrder = 19
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 537
          Top = 51
          Width = 180
          Height = 17
          Caption = 'IND_DERE'
          DataField = 'CT_IND_DERE'
          DataSource = src_classTrib
          TabOrder = 20
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    inherited tsTab: TTabSheet
      object Label15: TLabel [0]
        Left = 520
        Top = 80
        Width = 52
        Height = 13
        Caption = 'Chave Id'
      end
      inherited DBGrid1: TDBGrid
        Width = 1050
        Height = 473
        DataSource = src_classTrib
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CT_ID'
            Title.Alignment = taCenter
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_CODIGO'
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_NOME'
            Title.Alignment = taCenter
            Width = 311
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_PRED_CBS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_PRED_IBS'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_DT_VIG_INI'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_DT_VIG_FIN'
            Title.Alignment = taCenter
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CT_DT_ATUALIZACAO'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 530
    Width = 1058
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 583
    Width = 1058
  end
  object src_classTrib: TDataSource
    DataSet = tb_classTrib
    Left = 344
    Top = 104
  end
  object tb_classTrib: TQuery
    CachedUpdates = True
    AfterInsert = tb_classTribAfterInsert
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_classTrib
    Left = 372
    Top = 104
    object tb_classTribCT_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CT_ID'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ID'
    end
    object tb_classTribCT_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CT_CODIGO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_CODIGO'
      Size = 6
    end
    object tb_classTribCT_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CT_NOME'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_NOME'
      Size = 100
    end
    object tb_classTribCT_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CT_DESCRICAO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DESCRICAO'
      BlobType = ftMemo
    end
    object tb_classTribCT_REDACAO: TMemoField
      DisplayLabel = 'Reda'#231#227'o'
      FieldName = 'CT_REDACAO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_REDACAO'
      BlobType = ftMemo
    end
    object tb_classTribCT_LC_214_25: TStringField
      DisplayLabel = 'LC 214/2025'
      FieldName = 'CT_LC_214_25'
      Origin = 'SG_ASSOC.CADCLASSTRIB.LC 214/2025'
      Size = 50
    end
    object tb_classTribCT_TIPO_ALIQ: TFloatField
      DisplayLabel = 'Tipo de Aliquota'
      FieldName = 'CT_TIPO_ALIQ'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_TIPO_ALIQ'
    end
    object tb_classTribCT_PRED_IBS: TFloatField
      DisplayLabel = 'P Red IBS'
      FieldName = 'CT_PRED_IBS'
      Origin = 'SG_ASSOC.CADCLASSTRIB.'
    end
    object tb_classTribCT_PRED_CBS: TFloatField
      DisplayLabel = 'P Red CBS'
      FieldName = 'CT_PRED_CBS'
      Origin = 'SG_ASSOC.CADCLASSTRIB.'
    end
    object tb_classTribCT_IND_G_TRIB_REGULAR: TFloatField
      FieldName = 'CT_IND_G_TRIB_REGULAR'
      Origin = 'SG_ASSOC.CADCLASSTRIB.'
    end
    object tb_classTribCT_IND_G_MONO_PADRAO: TFloatField
      FieldName = 'CT_IND_G_MONO_PADRAO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_G_MONO_PADRAO'
    end
    object tb_classTribCT_IND_G_MONO_RETEN: TFloatField
      FieldName = 'CT_IND_G_MONO_RETEN'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_G_MONO_RETEN'
    end
    object tb_classTribCT_IND_G_MONO_RET: TFloatField
      FieldName = 'CT_IND_G_MONO_RET'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_G_MONO_RET'
    end
    object tb_classTribCT_IND_G_MONO_DIF: TFloatField
      FieldName = 'CT_IND_G_MONO_DIF'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_G_MONO_DIF'
    end
    object tb_classTribCT_IND_G_ESTORNO_CRED: TFloatField
      FieldName = 'CT_IND_G_ESTORNO_CRED'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_G_ESTORNO_CRED'
    end
    object tb_classTribCT_DT_VIG_INI: TDateTimeField
      DisplayLabel = 'Dt Vig Ini'
      FieldName = 'CT_DT_VIG_INI'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DT_VIG_INI'
    end
    object tb_classTribCT_DT_VIG_FIN: TDateTimeField
      DisplayLabel = 'Dt Vig Fin'
      FieldName = 'CT_DT_VIG_FIN'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DT_VIG_FIN'
    end
    object tb_classTribCT_DT_ATUALIZACAO: TDateTimeField
      DisplayLabel = 'Dt Atualiza'#231#227'o'
      FieldName = 'CT_DT_ATUALIZACAO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DT_ATUALIZACAO'
    end
    object tb_classTribCT_IND_NFE_ABI: TFloatField
      FieldName = 'CT_IND_NFE_ABI'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NFE_ABI'
    end
    object tb_classTribCT_IND_NFE: TFloatField
      FieldName = 'CT_IND_NFE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NFE'
    end
    object tb_classTribCT_IND_NFCE: TFloatField
      FieldName = 'CT_IND_NFCE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NFCE'
    end
    object tb_classTribCT_IND_CTE: TFloatField
      FieldName = 'CT_IND_CTE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_CTE'
    end
    object tb_classTribCT_IND_CTE_OS: TFloatField
      FieldName = 'CT_IND_CTE_OS'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_CTE_OS'
    end
    object tb_classTribCT_IND_BPE: TFloatField
      FieldName = 'CT_IND_BPE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_BPE'
    end
    object tb_classTribCT_IND_BPE_TA: TFloatField
      FieldName = 'CT_IND_BPE_TA'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_BPE_TA'
    end
    object tb_classTribCT_IND_BPE_TM: TFloatField
      FieldName = 'CT_IND_BPE_TM'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_BPE_TM'
    end
    object tb_classTribCT_IND_NF_3E: TFloatField
      FieldName = 'CT_IND_NF_3E'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NF_3E'
    end
    object tb_classTribCT_IND_NFSE: TFloatField
      FieldName = 'CT_IND_NFSE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NFSE'
    end
    object tb_classTribCT_IND_NFSE_VIA: TFloatField
      FieldName = 'CT_IND_NFSE_VIA'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NFSE_VIA'
    end
    object tb_classTribCT_IND_NF_COM: TFloatField
      FieldName = 'CT_IND_NF_COM'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NF_COM'
    end
    object tb_classTribCT_IND_NF_AG: TFloatField
      FieldName = 'CT_IND_NF_AG'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NF_AG'
    end
    object tb_classTribCT_IND_NF_GAS: TFloatField
      FieldName = 'CT_IND_NF_GAS'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_NF_GAS'
    end
    object tb_classTribCT_IND_DERE: TFloatField
      FieldName = 'CT_IND_DERE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_IND_DERE'
    end
    object tb_classTribCT_ANEXO: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'CT_ANEXO'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ANEXOCT_ANEXO'
      Size = 254
    end
    object tb_classTribCT_LINK: TStringField
      DisplayLabel = 'Link'
      FieldName = 'CT_LINK'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_LINK'
      Size = 254
    end
    object tb_classTribCT_DATHOR_INC: TDateTimeField
      FieldName = 'CT_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DATHOR_INC'
    end
    object tb_classTribCT_CODUSR_INC: TFloatField
      FieldName = 'CT_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_CODUSR_INC'
    end
    object tb_classTribCT_ID_EMP_ORIGEM_INC: TFloatField
      FieldName = 'CT_ID_EMP_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ID_EMP_ORIGEM_INC'
    end
    object tb_classTribCT_ORIGEM_INC: TStringField
      FieldName = 'CT_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ORIGEM_INC'
      Size = 100
    end
    object tb_classTribCT_DATHOR_UEVE: TDateTimeField
      FieldName = 'CT_DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_DATHOR_UEVE'
    end
    object tb_classTribCT_CODUSR_UEVE: TFloatField
      FieldName = 'CT_CODUSR_UEVE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_CODUSR_UEVE'
    end
    object tb_classTribCT_ID_EMP_ORIGEM_UEVE: TFloatField
      FieldName = 'CT_ID_EMP_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ID_EMP_ORIGEM_UEVE'
    end
    object tb_classTribCT_ORIGEM_UEVE: TStringField
      FieldName = 'CT_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCLASSTRIB.CT_ORIGEM_UEVE'
      Size = 100
    end
  end
  object U_classTrib: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCFO'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCODCFO = :CFCODCFO,'
      '  CFNOME = :CFNOME,'
      '  CFCFOENT = :CFCFOENT,'
      '  CFTPOPER = :CFTPOPER'
      '  ,CFCODCTA_EFD = :CFCODCTA_EFD'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    InsertSQL.Strings = (
      'insert into CADCFO'
      '  (CFCODEMP, CFCODCFO, CFNOME, CFCFOENT, CFTPOPER,:CFCODCTA_EFD)'
      'values'
      '  (:CFCODEMP, :CFCODCFO, :CFNOME, :CFCFOENT, :CFTPOPER'
      '  ,:CFCODCTA_EFD)')
    DeleteSQL.Strings = (
      'delete from CADCFO'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODCFO = :OLD_CFCODCFO')
    Left = 404
    Top = 98
  end
end
