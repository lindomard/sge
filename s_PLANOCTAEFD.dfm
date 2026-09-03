inherited Frm_PLANOCTAEFD: TFrm_PLANOCTAEFD
  Left = 371
  Top = 227
  Width = 838
  Caption = 'Plano de Contas Contabil Para Efd-Contribui'#231#245'es'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 822
    inherited lbl_emp: TLabel
      Left = 777
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      ItemIndex = 0
      Text = 'Nome'
    end
  end
  inherited PC1: TPageControl
    Width = 822
    inherited tsCad: TTabSheet
      object Label2: TLabel
        Left = 168
        Top = 8
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo da Conta:'
        FocusControl = DBE_PC_COD_CTA
      end
      object Label1: TLabel
        Left = 175
        Top = 30
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome da Conta:'
        FocusControl = DBE_PC_NOME_CTA
      end
      object Label46: TLabel
        Left = 172
        Top = 70
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Indicador Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 156
        Top = 48
        Width = 111
        Height = 13
        Alignment = taRightJustify
        Caption = 'Natureza da Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 178
        Top = 91
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nivel da Conta:'
        FocusControl = DBE_PC_NIVEL
      end
      object Label5: TLabel
        Left = 107
        Top = 110
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'd Cta Referencia:'
        FocusControl = DBE_PC_COD_CTA_REF
      end
      object Label6: TLabel
        Left = 107
        Top = 128
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data e Hora da Inclusao:'
        FocusControl = DBE_PC_DATHOR_INC
      end
      object Label7: TLabel
        Left = 107
        Top = 146
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data e Hora Altera'#231#227'o:'
        FocusControl = DBE_PC_DATHOR_UEVE
      end
      object DBE_PC_COD_CTA: TDBEdit
        Left = 272
        Top = 8
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'PC_COD_CTA'
        DataSource = Src_PLANOCTAEFD
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_PC_NOME_CTA: TDBEdit
        Left = 272
        Top = 26
        Width = 433
        Height = 19
        Ctl3D = False
        DataField = 'PC_NOME_CTA'
        DataSource = Src_PLANOCTAEFD
        ParentCtl3D = False
        TabOrder = 1
      end
      object RxDBCB_PC_IND_CTA: TRxDBComboBox
        Left = 272
        Top = 66
        Width = 200
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'PC_IND_CTA'
        DataSource = Src_PLANOCTAEFD
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'A - Anal'#237'tica (conta)'
          'S - Sint'#233'tica (grupo de contas)')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
          'A'
          'S'
          '')
      end
      object RxDBCB_PC_COD_NAT_CC: TRxDBComboBox
        Left = 272
        Top = 44
        Width = 200
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'PC_COD_NAT_CC'
        DataSource = Src_PLANOCTAEFD
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '01 - Contas de ativo'
          '02 - Contas de passivo'
          '03 - Patrim'#244'nio l'#237'quido'
          '04 - Contas de resultado'
          '05 - Contas de compensa'#231#227'o'
          '09 - Outras')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '09')
      end
      object DBE_PC_NIVEL: TDBEdit
        Left = 272
        Top = 87
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'PC_NIVEL'
        DataSource = Src_PLANOCTAEFD
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_PC_COD_CTA_REF: TDBEdit
        Left = 272
        Top = 105
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'PC_COD_CTA_REF'
        DataSource = Src_PLANOCTAEFD
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_PC_DATHOR_INC: TDBEdit
        Left = 272
        Top = 123
        Width = 200
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'PC_DATHOR_INC'
        DataSource = Src_PLANOCTAEFD
        Enabled = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_PC_DATHOR_UEVE: TDBEdit
        Left = 272
        Top = 141
        Width = 200
        Height = 19
        Color = clSilver
        Ctl3D = False
        DataField = 'PC_DATHOR_UEVE'
        DataSource = Src_PLANOCTAEFD
        Enabled = False
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 814
        DataSource = Src_PLANOCTAEFD
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PC_COD_CTA'
            Title.Alignment = taCenter
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_NOME_CTA'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_COD_NAT_CC'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_IND_CTA'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_COD_CTA_REF'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_NIVEL'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_DATHOR_INC'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_DATHOR_UEVE'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 822
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 822
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_PLANOCTAEFD
    end
  end
  object Src_PLANOCTAEFD: TDataSource
    DataSet = tb_PLANOCTAEFD
    Left = 164
    Top = 258
  end
  object tb_PLANOCTAEFD: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PC_COD_CTA'
      ',PC_COD_NAT_CC'
      ',PC_IND_CTA'
      ',PC_NIVEL'
      ',PC_NOME_CTA'
      ',PC_COD_CTA_REF'
      ',PC_DATHOR_INC'
      ',PC_DATHOR_UEVE'
      'from CADPLANOCTAEFD')
    UpdateObject = U_PLANOCTAEFD
    Left = 204
    Top = 258
    object tb_PLANOCTAEFDPC_COD_CTA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PC_COD_CTA'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_COD_CTA'
      Size = 60
    end
    object tb_PLANOCTAEFDPC_COD_NAT_CC: TStringField
      DisplayLabel = 'C'#243'd.Nat'
      FieldName = 'PC_COD_NAT_CC'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_COD_NAT_CC'
      Size = 2
    end
    object tb_PLANOCTAEFDPC_IND_CTA: TStringField
      DisplayLabel = 'Ind Cta'
      FieldName = 'PC_IND_CTA'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_IND_CTA'
      Size = 1
    end
    object tb_PLANOCTAEFDPC_NOME_CTA: TStringField
      DisplayLabel = 'Nome da Conta'
      FieldName = 'PC_NOME_CTA'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_NOME_CTA'
      Size = 60
    end
    object tb_PLANOCTAEFDPC_COD_CTA_REF: TStringField
      DisplayLabel = 'C'#243'd. Cta Ref'
      FieldName = 'PC_COD_CTA_REF'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_COD_CTA_REF'
      Size = 60
    end
    object tb_PLANOCTAEFDPC_NIVEL: TFloatField
      DisplayLabel = 'Nivel'
      FieldName = 'PC_NIVEL'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_NIVEL'
    end
    object tb_PLANOCTAEFDPC_DATHOR_INC: TDateTimeField
      DisplayLabel = 'Dat Hor Inc'
      FieldName = 'PC_DATHOR_INC'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_DATHOR_INC'
    end
    object tb_PLANOCTAEFDPC_DATHOR_UEVE: TDateTimeField
      DisplayLabel = 'Dat Hor UEve'
      FieldName = 'PC_DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADPLANOCTAEFD.PC_DATHOR_UEVE'
    end
  end
  object U_PLANOCTAEFD: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_CMET'
      'set'
      'PC_COD_NAT_CC = :PC_COD_NAT_CC'
      ',PC_IND_CTA = :PC_IND_CTA'
      ',PC_NIVEL = :PC_NIVEL'
      ',PC_NOME_CTA = :PC_NOME_CTA'
      ',PC_COD_CTA_REF = :PC_COD_CTA_REF'
      ',PC_DATHOR_INC = :PC_DATHOR_INC'
      ',PC_DATHOR_UEVE = :PC_DATHOR_UEVE'
      '  CMET_CODEMP = :CMET_CODEMP,'
      '  CMET_CODPRO = :CMET_CODPRO,'
      '  CMET_CODIGO = :CMET_CODIGO,'
      '  CMET_NOME = :CMET_NOME,'
      '  CMET_PRECO = :CMET_PRECO'
      'where PC_COD_CTA = :PC_COD_CTA'
      ''
      '')
    InsertSQL.Strings = (
      'insert into CADPLANOCTAEFD'
      
        '  (PC_COD_CTA,PC_COD_NAT_CC,PC_IND_CTA,PC_NIVEL,PC_NOME_CTA,PC_C' +
        'OD_CTA_REF,PC_DATHOR_INC,PC_DATHOR_UEVE)'
      'values'
      
        '  (:PC_COD_CTA,:PC_COD_NAT_CC,:PC_IND_CTA,:PC_NIVEL,:PC_NOME_CTA' +
        ',:PC_COD_CTA_REF,:PC_DATHOR_INC,:PC_DATHOR_UEVE)'
      '')
    DeleteSQL.Strings = (
      'delete from CADPLANOCTAEFD'
      'where'
      '  PC_COD_CTA = :OLD_PC_COD_CTA')
    Left = 236
    Top = 258
  end
end
