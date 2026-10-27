inherited Frm_CorrelatoNfse: TFrm_CorrelatoNfse
  Left = 320
  Top = 122
  Width = 960
  Height = 650
  Caption = 'Cadastro Correlato - Dados NFS-e'
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
        'Trib. Nacional (Nome)'
        'Trib. Nacional (C'#195#179'digo)'
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
        FocusControl = DBE_TC_ID
      end
      object Label2: TLabel
        Left = 140
        Top = 15
        Width = 88
        Height = 13
        Caption = 'C'#243'd. Trib. Nac:'
        FocusControl = DBE_TC_C_TRIB_NAC
      end
      object Label3: TLabel
        Left = 260
        Top = 15
        Width = 94
        Height = 13
        Caption = 'Nome Trib. Nac:'
        FocusControl = DBE_TC_X_TRIB_NAC
      end
      object Label6: TLabel
        Left = 20
        Top = 95
        Width = 72
        Height = 13
        Caption = 'Classif. Trib:'
        FocusControl = DBE_TC_C_CLASSTRIB
      end
      object Label7: TLabel
        Left = 140
        Top = 95
        Width = 108
        Height = 13
        Caption = 'Nome Classif. Trib:'
        FocusControl = DBE_TC_X_CLASSTRIB
      end
      object Label8: TLabel
        Left = 20
        Top = 135
        Width = 83
        Height = 13
        Caption = 'CST IBS/CBS:'
        FocusControl = DBE_TC_C_ST_IBS_CBS
      end
      object Label9: TLabel
        Left = 140
        Top = 135
        Width = 119
        Height = 13
        Caption = 'Nome CST IBS/CBS:'
        FocusControl = DBE_TC_X_ST_IBS_CST
      end
      object Label10: TLabel
        Left = 20
        Top = 175
        Width = 77
        Height = 13
        Caption = 'C'#243'd. Ind. Op:'
        FocusControl = DBE_TC_C_IND_OP
      end
      object Label11: TLabel
        Left = 140
        Top = 175
        Width = 83
        Height = 13
        Caption = 'Nome Ind. Op:'
        FocusControl = DBE_TC_X_IND_OP
      end
      object Label12: TLabel
        Left = 20
        Top = 255
        Width = 127
        Height = 13
        Caption = 'Local Incid'#234'ncia CBS:'
        FocusControl = DBE_TS_LOCAL_INCID_CBS
      end
      object Label13: TLabel
        Left = 20
        Top = 57
        Width = 60
        Height = 13
        Caption = 'C'#243'd. NBS:'
        FocusControl = DBE_TC_C_NBS
      end
      object Label14: TLabel
        Left = 140
        Top = 57
        Width = 66
        Height = 13
        Caption = 'Nome NBS:'
        FocusControl = DBE_TC_X_NBS
      end
      object DBE_TC_ID: TDBEdit
        Left = 20
        Top = 30
        Width = 100
        Height = 21
        DataField = 'TC_ID'
        DataSource = Src_Correlato
        Enabled = False
        TabOrder = 0
      end
      object DBE_TC_C_TRIB_NAC: TDBEdit
        Left = 140
        Top = 30
        Width = 100
        Height = 21
        DataField = 'TC_C_TRIB_NAC'
        DataSource = Src_Correlato
        TabOrder = 1
        OnExit = DBE_TC_C_TRIB_NACExit
        OnKeyPress = DBE_TC_C_TRIB_NACKeyPress
      end
      object DBE_TC_X_TRIB_NAC: TDBEdit
        Left = 260
        Top = 30
        Width = 650
        Height = 21
        DataField = 'TC_X_TRIB_NAC'
        DataSource = Src_Correlato
        TabOrder = 2
      end
      object DBE_TC_C_CLASSTRIB: TDBEdit
        Left = 20
        Top = 110
        Width = 100
        Height = 21
        DataField = 'TC_C_CLASSTRIB'
        DataSource = Src_Correlato
        TabOrder = 3
        OnExit = DBE_TC_C_CLASSTRIBExit
        OnKeyPress = DBE_TC_C_CLASSTRIBKeyPress
      end
      object DBE_TC_X_CLASSTRIB: TDBEdit
        Left = 140
        Top = 110
        Width = 770
        Height = 21
        DataField = 'TC_X_CLASSTRIB'
        DataSource = Src_Correlato
        TabOrder = 4
      end
      object DBE_TC_C_ST_IBS_CBS: TDBEdit
        Left = 20
        Top = 150
        Width = 100
        Height = 21
        DataField = 'TC_C_ST_IBS_CBS'
        DataSource = Src_Correlato
        TabOrder = 5
        OnExit = DBE_TC_C_ST_IBS_CBSExit
        OnKeyPress = DBE_TC_C_ST_IBS_CBSKeyPress
      end
      object DBE_TC_X_ST_IBS_CST: TDBEdit
        Left = 140
        Top = 150
        Width = 770
        Height = 21
        DataField = 'TC_X_ST_IBS_CST'
        DataSource = Src_Correlato
        TabOrder = 6
      end
      object DBE_TC_C_IND_OP: TDBEdit
        Left = 20
        Top = 190
        Width = 100
        Height = 21
        DataField = 'TC_C_IND_OP'
        DataSource = Src_Correlato
        TabOrder = 7
        OnExit = DBE_TC_C_IND_OPExit
        OnKeyPress = DBE_TC_C_IND_OPKeyPress
      end
      object DBE_TC_X_IND_OP: TDBEdit
        Left = 140
        Top = 190
        Width = 770
        Height = 21
        DataField = 'TC_X_IND_OP'
        DataSource = Src_Correlato
        TabOrder = 8
      end
      object DBC_PS_ONEROSA: TDBCheckBox
        Left = 20
        Top = 225
        Width = 250
        Height = 17
        Caption = 'P/S Onerosa'
        DataField = 'TS_PS_ONEROSA'
        DataSource = Src_Correlato
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBC_ADQUIRIDA_EXTERIOR: TDBCheckBox
        Left = 300
        Top = 225
        Width = 250
        Height = 17
        Caption = 'Adquirida do Exterior'
        DataField = 'TS_ADQUIRIDA_EXTERIOR'
        DataSource = Src_Correlato
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBE_TS_LOCAL_INCID_CBS: TDBEdit
        Left = 20
        Top = 270
        Width = 890
        Height = 21
        DataField = 'TS_LOCAL_INCID_CBS'
        DataSource = Src_Correlato
        TabOrder = 11
      end
      object DBE_TC_C_NBS: TDBEdit
        Left = 20
        Top = 72
        Width = 100
        Height = 21
        DataField = 'TC_C_NBS'
        DataSource = Src_Correlato
        TabOrder = 12
        OnExit = DBE_TC_C_NBSExit
        OnKeyPress = DBE_TC_C_NBSKeyPress
      end
      object DBE_TC_X_NBS: TDBEdit
        Left = 140
        Top = 72
        Width = 770
        Height = 21
        DataField = 'TC_X_NBS'
        DataSource = Src_Correlato
        TabOrder = 13
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 944
        Height = 456
        DataSource = Src_Correlato
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TC_ID'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TC_C_TRIB_NAC'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TC_X_TRIB_NAC'
            Title.Alignment = taCenter
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TC_C_CBS'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TC_C_NBS'
            Title.Alignment = taCenter
            Width = 80
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
      DataSource = Src_Correlato
    end
  end
  object Tb_Correlato: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCORRELATO_DADOS_NFSE where 1=1')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Correlato
    Left = 320
    Top = 79
    object Tb_CorrelatoTC_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'TC_ID'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_ID'
    end
    object Tb_CorrelatoTC_C_TRIB_NAC: TStringField
      DisplayLabel = 'C'#243'd. Trib. Nac.'
      FieldName = 'TC_C_TRIB_NAC'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_C_TRIB_NAC'
      Size = 6
    end
    object Tb_CorrelatoTC_X_TRIB_NAC: TStringField
      DisplayLabel = 'Trib. Nacional'
      FieldName = 'TC_X_TRIB_NAC'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_X_TRIB_NAC'
      Size = 600
    end
    object Tb_CorrelatoTC_C_CLASSTRIB: TStringField
      DisplayLabel = 'Classif. Trib.'
      FieldName = 'TC_C_CLASSTRIB'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_C_CLASSTRIB'
      Size = 6
    end
    object Tb_CorrelatoTC_X_CLASSTRIB: TStringField
      DisplayLabel = 'Nome Classif. Trib.'
      FieldName = 'TC_X_CLASSTRIB'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_X_CLASSTRIB'
      Size = 500
    end
    object Tb_CorrelatoTC_C_ST_IBS_CBS: TStringField
      DisplayLabel = 'CST IBS/CBS'
      FieldName = 'TC_C_ST_IBS_CBS'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_C_ST_IBS_CBS'
      Size = 3
    end
    object Tb_CorrelatoTC_X_ST_IBS_CST: TStringField
      DisplayLabel = 'Nome CST'
      FieldName = 'TC_X_ST_IBS_CST'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_X_ST_IBS_CST'
      Size = 500
    end
    object Tb_CorrelatoTC_C_IND_OP: TStringField
      DisplayLabel = 'C'#243'd. Ind. Op.'
      FieldName = 'TC_C_IND_OP'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_C_IND_OP'
      Size = 6
    end
    object Tb_CorrelatoTC_X_IND_OP: TStringField
      DisplayLabel = 'Nome Ind. Op.'
      FieldName = 'TC_X_IND_OP'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_X_IND_OP'
      Size = 500
    end
    object Tb_CorrelatoTS_PS_ONEROSA: TFloatField
      FieldName = 'TS_PS_ONEROSA'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TS_PS_ONEROSA'
    end
    object Tb_CorrelatoTS_ADQUIRIDA_EXTERIOR: TFloatField
      FieldName = 'TS_ADQUIRIDA_EXTERIOR'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TS_ADQUIRIDA_EXTERIOR'
    end
    object Tb_CorrelatoTS_LOCAL_INCID_CBS: TStringField
      DisplayLabel = 'Local Incid'#234'ncia CBS'
      FieldName = 'TS_LOCAL_INCID_CBS'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TS_LOCAL_INCID_CBS'
      Size = 500
    end
    object Tb_CorrelatoTC_C_NBS: TStringField
      DisplayLabel = 'C'#243'd. NBS'
      FieldName = 'TC_C_NBS'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_C_NBS'
      Size = 9
    end
    object Tb_CorrelatoTC_X_NBS: TStringField
      DisplayLabel = 'NBS'
      FieldName = 'TC_X_NBS'
      Origin = 'SG_ASSOC.CADCORRELATO_DADOS_NFSE.TC_X_NBS'
      Size = 500
    end
  end
  object U_Correlato: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCORRELATO_DADOS_NFSE'
      'set'
      '  TC_C_TRIB_NAC = :TC_C_TRIB_NAC,'
      '  TC_X_TRIB_NAC = :TC_X_TRIB_NAC,'
      '  TC_C_CLASSTRIB = :TC_C_CLASSTRIB,'
      '  TC_X_CLASSTRIB = :TC_X_CLASSTRIB,'
      '  TC_C_ST_IBS_CBS = :TC_C_ST_IBS_CBS,'
      '  TC_X_ST_IBS_CST = :TC_X_ST_IBS_CST,'
      '  TC_C_IND_OP = :TC_C_IND_OP,'
      '  TC_X_IND_OP = :TC_X_IND_OP,'
      '  TS_PS_ONEROSA = :TS_PS_ONEROSA,'
      '  TS_ADQUIRIDA_EXTERIOR = :TS_ADQUIRIDA_EXTERIOR,'
      '  TS_LOCAL_INCID_CBS = :TS_LOCAL_INCID_CBS,'
      '  TC_C_NBS = :TC_C_NBS,'
      '  TC_X_NBS = :TC_X_NBS,'
      '  TS_DATHOR_UEVE = SYSDATE,'
      '  TS_CODUSR_UEVE = :TS_CODUSR_UEVE,'
      '  TS_ORIGEM_UEVE = :TS_ORIGEM_UEVE'
      'where'
      '  TC_ID = :OLD_TC_ID')
    InsertSQL.Strings = (
      'insert into CADCORRELATO_DADOS_NFSE'
      '  (TC_ID, TC_C_TRIB_NAC, TC_X_TRIB_NAC,'
      
        '   TC_C_CLASSTRIB, TC_X_CLASSTRIB, TC_C_ST_IBS_CBS, TC_X_ST_IBS_' +
        'CST,'
      
        '   TC_C_IND_OP, TC_X_IND_OP, TS_PS_ONEROSA, TS_ADQUIRIDA_EXTERIO' +
        'R,'
      
        '   TS_LOCAL_INCID_CBS, TC_C_NBS, TC_X_NBS, TS_DATHOR_INC, TS_COD' +
        'USR_INC, TS_ORIGEM_INC)'
      'values'
      '  (:TC_ID, :TC_C_TRIB_NAC, :TC_X_TRIB_NAC,'
      
        '   :TC_C_CLASSTRIB, :TC_X_CLASSTRIB, :TC_C_ST_IBS_CBS, :TC_X_ST_' +
        'IBS_CST, '
      
        '   :TC_C_IND_OP, :TC_X_IND_OP, :TS_PS_ONEROSA, :TS_ADQUIRIDA_EXT' +
        'ERIOR, '
      
        '   :TS_LOCAL_INCID_CBS, :TC_C_NBS, :TC_X_NBS, SYSDATE, :TS_CODUS' +
        'R_INC, :TS_ORIGEM_INC)')
    DeleteSQL.Strings = (
      'delete from CADCORRELATO_DADOS_NFSE'
      'where'
      '  TC_ID = :OLD_TC_ID')
    Left = 348
    Top = 82
  end
  object Src_Correlato: TDataSource
    DataSet = Tb_Correlato
    Left = 376
    Top = 82
  end
end
