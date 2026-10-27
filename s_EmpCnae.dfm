inherited Frm_EmpCnae: TFrm_EmpCnae
  Left = 377
  Top = 260
  Width = 960
  Height = 650
  Caption = 'Cadastro de CNAEs por Empresa / Tributa'#195#167#195#163'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 952
    inherited lbl_emp: TLabel
      Left = 907
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'C'#195#179'd. CNAE'
        'Chave Empresa'
        'Chave Id')
    end
  end
  inherited PC1: TPageControl
    Width = 952
    Height = 484
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 20
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Chave Id:'
        FocusControl = DBE_ECNAE_ID
      end
      object Label2: TLabel
        Left = 140
        Top = 15
        Width = 70
        Height = 13
        Caption = 'ID Empresa:'
        FocusControl = DBE_ECNAE_ID_EMP
      end
      object Label3: TLabel
        Left = 260
        Top = 15
        Width = 86
        Height = 13
        Caption = 'C'#195#179'digo CNAE:'
        FocusControl = DBE_ECNAE_ID_CNAE
      end
      object Label4: TLabel
        Left = 20
        Top = 55
        Width = 110
        Height = 13
        Caption = 'C'#195#179'd. LC Servi'#195#167'o:'
        FocusControl = DBE_ECNAE_CODLC_SERV
      end
      object Label5: TLabel
        Left = 160
        Top = 55
        Width = 109
        Height = 13
        Caption = 'C'#195#179'd. de Servi'#195#167'o:'
        FocusControl = DBE_ECNAE_COD_SERV
      end
      object Label6: TLabel
        Left = 320
        Top = 55
        Width = 102
        Height = 13
        Caption = 'Ind. Opera'#195#167#195#163'o:'
        FocusControl = DBE_ECNAE_IND_OP
      end
      object Label7: TLabel
        Left = 460
        Top = 55
        Width = 65
        Height = 13
        Caption = 'C'#195#179'd. NBS:'
        FocusControl = DBE_ECNAE_CODNBS
      end
      object Label8: TLabel
        Left = 600
        Top = 55
        Width = 104
        Height = 13
        Caption = 'CST PIS/COFINS:'
        FocusControl = DBE_ECNAE_CST_PIS_COFINS
      end
      object Label9: TLabel
        Left = 740
        Top = 55
        Width = 83
        Height = 13
        Caption = 'CST IBS/CBS:'
        FocusControl = DBE_ECNAE_CST_IBS_CBS
      end
      object Label10: TLabel
        Left = 20
        Top = 115
        Width = 47
        Height = 13
        Caption = '% INSS:'
        FocusControl = DBE_ECNAE_PINSS
      end
      object Label11: TLabel
        Left = 140
        Top = 115
        Width = 63
        Height = 13
        Caption = '% COFINS:'
        FocusControl = DBE_ECNAE_PCOFINS
      end
      object Label12: TLabel
        Left = 260
        Top = 115
        Width = 38
        Height = 13
        Caption = '% PIS:'
        FocusControl = DBE_ECNAE_PPIS
      end
      object Label13: TLabel
        Left = 380
        Top = 115
        Width = 49
        Height = 13
        Caption = '% CLSS:'
        FocusControl = DBE_ECNAE_PCLSS
      end
      object Label14: TLabel
        Left = 500
        Top = 115
        Width = 31
        Height = 13
        Caption = '% IR:'
        FocusControl = DBE_ECNAE_PIR
      end
      object Label15: TLabel
        Left = 620
        Top = 115
        Width = 56
        Height = 13
        Caption = '% ISSQN:'
        FocusControl = DBE_ECNAE_PISSQN
      end
      object DBE_ECNAE_ID: TDBEdit
        Left = 20
        Top = 30
        Width = 100
        Height = 21
        DataField = 'ECNAE_ID'
        DataSource = Src_EmpCnae
        Enabled = False
        TabOrder = 0
      end
      object DBE_ECNAE_ID_EMP: TDBEdit
        Left = 140
        Top = 30
        Width = 100
        Height = 21
        DataField = 'ECNAE_ID_EMP'
        DataSource = Src_EmpCnae
        TabOrder = 1
      end
      object DBE_ECNAE_ID_CNAE: TDBEdit
        Left = 260
        Top = 30
        Width = 150
        Height = 21
        DataField = 'ECNAE_ID_CNAE'
        DataSource = Src_EmpCnae
        TabOrder = 2
      end
      object DBC_ECNAE_PRINCIPAL: TDBCheckBox
        Left = 430
        Top = 32
        Width = 150
        Height = 17
        Caption = 'CNAE Principal'
        DataField = 'ECNAE_PRINCIPAL'
        DataSource = Src_EmpCnae
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBE_ECNAE_CODLC_SERV: TDBEdit
        Left = 20
        Top = 70
        Width = 120
        Height = 21
        DataField = 'ECNAE_CODLC_SERV'
        DataSource = Src_EmpCnae
        TabOrder = 4
      end
      object DBE_ECNAE_COD_SERV: TDBEdit
        Left = 160
        Top = 70
        Width = 140
        Height = 21
        DataField = 'ECNAE_COD_SERV'
        DataSource = Src_EmpCnae
        TabOrder = 5
      end
      object DBE_ECNAE_IND_OP: TDBEdit
        Left = 320
        Top = 70
        Width = 120
        Height = 21
        DataField = 'ECNAE_IND_OP'
        DataSource = Src_EmpCnae
        TabOrder = 6
      end
      object DBE_ECNAE_CODNBS: TDBEdit
        Left = 460
        Top = 70
        Width = 120
        Height = 21
        DataField = 'ECNAE_CODNBS'
        DataSource = Src_EmpCnae
        TabOrder = 7
      end
      object DBE_ECNAE_CST_PIS_COFINS: TDBEdit
        Left = 600
        Top = 70
        Width = 120
        Height = 21
        DataField = 'ECNAE_CST_PIS_COFINS'
        DataSource = Src_EmpCnae
        TabOrder = 8
      end
      object DBE_ECNAE_CST_IBS_CBS: TDBEdit
        Left = 740
        Top = 70
        Width = 120
        Height = 21
        DataField = 'ECNAE_CST_IBS_CBS'
        DataSource = Src_EmpCnae
        TabOrder = 9
      end
      object DBE_ECNAE_PINSS: TDBEdit
        Left = 20
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PINSS'
        DataSource = Src_EmpCnae
        TabOrder = 10
      end
      object DBE_ECNAE_PCOFINS: TDBEdit
        Left = 140
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PCOFINS'
        DataSource = Src_EmpCnae
        TabOrder = 11
      end
      object DBE_ECNAE_PPIS: TDBEdit
        Left = 260
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PPIS'
        DataSource = Src_EmpCnae
        TabOrder = 12
      end
      object DBE_ECNAE_PCLSS: TDBEdit
        Left = 380
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PCLSS'
        DataSource = Src_EmpCnae
        TabOrder = 13
      end
      object DBE_ECNAE_PIR: TDBEdit
        Left = 500
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PIR'
        DataSource = Src_EmpCnae
        TabOrder = 14
      end
      object DBE_ECNAE_PISSQN: TDBEdit
        Left = 620
        Top = 130
        Width = 100
        Height = 21
        DataField = 'ECNAE_PISSQN'
        DataSource = Src_EmpCnae
        TabOrder = 15
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 944
        Height = 456
        DataSource = Src_EmpCnae
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ECNAE_ID'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECNAE_ID_EMP'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECNAE_ID_CNAE'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECNAE_PRINCIPAL'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECNAE_COD_SERV'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECNAE_CODNBS'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 513
    Width = 952
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 566
    Width = 952
    inherited DBNavigator1: TDBNavigator
      DataSource = Src_EmpCnae
    end
  end
  object Tb_EmpCnae: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADEMP_CNAE where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_EmpCnae
    Left = 320
    Top = 79
    object Tb_EmpCnaeECNAE_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'ECNAE_ID'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_ID'
    end
    object Tb_EmpCnaeECNAE_ID_EMP: TFloatField
      DisplayLabel = 'ID Empresa'
      FieldName = 'ECNAE_ID_EMP'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_ID_EMP'
    end
    object Tb_EmpCnaeECNAE_ID_CNAE: TStringField
      DisplayLabel = 'C'#195#179'd. CNAE'
      FieldName = 'ECNAE_ID_CNAE'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_ID_CNAE'
    end
    object Tb_EmpCnaeECNAE_PRINCIPAL: TFloatField
      DisplayLabel = 'Principal'
      FieldName = 'ECNAE_PRINCIPAL'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PRINCIPAL'
    end
    object Tb_EmpCnaeECNAE_CODLC_SERV: TStringField
      FieldName = 'ECNAE_CODLC_SERV'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_CODLC_SERV'
      Size = 8
    end
    object Tb_EmpCnaeECNAE_COD_SERV: TStringField
      FieldName = 'ECNAE_COD_SERV'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_COD_SERV'
      Size = 15
    end
    object Tb_EmpCnaeECNAE_IND_OP: TStringField
      FieldName = 'ECNAE_IND_OP'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_IND_OP'
      Size = 6
    end
    object Tb_EmpCnaeECNAE_CODNBS: TStringField
      FieldName = 'ECNAE_CODNBS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_CODNBS'
      Size = 15
    end
    object Tb_EmpCnaeECNAE_CST_PIS_COFINS: TStringField
      FieldName = 'ECNAE_CST_PIS_COFINS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_CST_PIS_COFINS'
      Size = 3
    end
    object Tb_EmpCnaeECNAE_CST_IBS_CBS: TStringField
      FieldName = 'ECNAE_CST_IBS_CBS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_CST_IBS_CBS'
      Size = 3
    end
    object Tb_EmpCnaeECNAE_PINSS: TFloatField
      FieldName = 'ECNAE_PINSS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PINSS'
    end
    object Tb_EmpCnaeECNAE_PCOFINS: TFloatField
      FieldName = 'ECNAE_PCOFINS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PCOFINS'
    end
    object Tb_EmpCnaeECNAE_PPIS: TFloatField
      FieldName = 'ECNAE_PPIS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PPIS'
    end
    object Tb_EmpCnaeECNAE_PCLSS: TFloatField
      FieldName = 'ECNAE_PCLSS'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PCLSS'
    end
    object Tb_EmpCnaeECNAE_PIR: TFloatField
      FieldName = 'ECNAE_PIR'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PIR'
    end
    object Tb_EmpCnaeECNAE_PISSQN: TFloatField
      FieldName = 'ECNAE_PISSQN'
      Origin = 'SG_ASSOC.CADEMP_CNAE.ECNAE_PISSQN'
    end
  end
  object U_EmpCnae: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEMP_CNAE'
      'set'
      '  ECNAE_ID_EMP = :ECNAE_ID_EMP,'
      '  ECNAE_ID_CNAE = :ECNAE_ID_CNAE,'
      '  ECNAE_PRINCIPAL = :ECNAE_PRINCIPAL,'
      '  ECNAE_CODLC_SERV = :ECNAE_CODLC_SERV,'
      '  ECNAE_COD_SERV = :ECNAE_COD_SERV,'
      '  ECNAE_IND_OP = :ECNAE_IND_OP,'
      '  ECNAE_CODNBS = :ECNAE_CODNBS,'
      '  ECNAE_CST_PIS_COFINS = :ECNAE_CST_PIS_COFINS,'
      '  ECNAE_CST_IBS_CBS = :ECNAE_CST_IBS_CBS,'
      '  ECNAE_PINSS = :ECNAE_PINSS,'
      '  ECNAE_PCOFINS = :ECNAE_PCOFINS,'
      '  ECNAE_PPIS = :ECNAE_PPIS,'
      '  ECNAE_PCLSS = :ECNAE_PCLSS,'
      '  ECNAE_PIR = :ECNAE_PIR,'
      '  ECNAE_PISSQN = :ECNAE_PISSQN'
      'where'
      '  ECNAE_ID = :OLD_ECNAE_ID')
    InsertSQL.Strings = (
      'insert into CADEMP_CNAE'
      '  (ECNAE_ID, ECNAE_ID_EMP, ECNAE_ID_CNAE, ECNAE_PRINCIPAL, '
      
        '   ECNAE_CODLC_SERV, ECNAE_COD_SERV, ECNAE_IND_OP, ECNAE_CODNBS,' +
        ' '
      
        '   ECNAE_CST_PIS_COFINS, ECNAE_CST_IBS_CBS, ECNAE_PINSS, ECNAE_P' +
        'COFINS, '
      '   ECNAE_PPIS, ECNAE_PCLSS, ECNAE_PIR, ECNAE_PISSQN)'
      'values'
      '  (:ECNAE_ID, :ECNAE_ID_EMP, :ECNAE_ID_CNAE, :ECNAE_PRINCIPAL, '
      
        '   :ECNAE_CODLC_SERV, :ECNAE_COD_SERV, :ECNAE_IND_OP, :ECNAE_COD' +
        'NBS, '
      
        '   :ECNAE_CST_PIS_COFINS, :ECNAE_CST_IBS_CBS, :ECNAE_PINSS, :ECN' +
        'AE_PCOFINS, '
      '   :ECNAE_PPIS, :ECNAE_PCLSS, :ECNAE_PIR, :ECNAE_PISSQN)')
    DeleteSQL.Strings = (
      'delete from CADEMP_CNAE'
      'where'
      '  ECNAE_ID = :OLD_ECNAE_ID')
    Left = 348
    Top = 82
  end
  object Src_EmpCnae: TDataSource
    DataSet = Tb_EmpCnae
    Left = 376
    Top = 82
  end
end
