inherited Frm_Cnae_x_Lc: TFrm_Cnae_x_Lc
  Left = 162
  Top = 164
  Width = 1197
  Caption = 'Cadastro de Cnae x LC - Leis Complementares'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1189
    inherited lbl_emp: TLabel
      Left = 1144
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'C'#243'digo Cnae'
        'C'#243'digo LC'
        'Chave Id')
    end
  end
  inherited PC1: TPageControl
    Width = 1189
    ActivePage = tsTab
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 48
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Chave Id'
        FocusControl = DBE_CNLC_ID
      end
      object Label2: TLabel
        Left = 48
        Top = 64
        Width = 73
        Height = 13
        Caption = 'C'#243'digo Cnae'
        FocusControl = DBE_CNLC_CODCNAE
      end
      object Label3: TLabel
        Left = 191
        Top = 62
        Width = 66
        Height = 13
        Caption = 'Nome Cnae'
        FocusControl = DBE_nome_cnae
      end
      object Label4: TLabel
        Left = 48
        Top = 105
        Width = 59
        Height = 13
        Caption = 'C'#243'digo LC'
        FocusControl = DBE_CNLC_CODLC
      end
      object Label5: TLabel
        Left = 192
        Top = 107
        Width = 70
        Height = 13
        Caption = 'Nome da LC'
        FocusControl = DBe_nome_lc
      end
      object DBE_CNLC_ID: TDBEdit
        Left = 48
        Top = 40
        Width = 134
        Height = 21
        DataField = 'CNLC_ID'
        DataSource = src_cnae_x_lc
        Enabled = False
        TabOrder = 0
      end
      object DBE_CNLC_CODCNAE: TDBEdit
        Left = 48
        Top = 80
        Width = 134
        Height = 21
        DataField = 'CNLC_CODCNAE'
        DataSource = src_cnae_x_lc
        TabOrder = 1
        OnExit = DBE_CNLC_CODCNAEExit
        OnKeyPress = DBE_CNLC_CODCNAEKeyPress
      end
      object DBE_nome_cnae: TDBEdit
        Left = 191
        Top = 80
        Width = 500
        Height = 21
        Color = 13750737
        DataField = 'nome_cnae'
        DataSource = src_cnae_x_lc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBE_CNLC_CODLC: TDBEdit
        Left = 48
        Top = 121
        Width = 134
        Height = 21
        DataField = 'CNLC_CODLC'
        DataSource = src_cnae_x_lc
        TabOrder = 3
        OnExit = DBE_CNLC_CODLCExit
        OnKeyPress = DBE_CNLC_CODLCKeyPress
      end
      object DBe_nome_lc: TDBEdit
        Left = 192
        Top = 121
        Width = 500
        Height = 21
        Color = 13750737
        DataField = 'nome_lc'
        DataSource = src_cnae_x_lc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 1181
        DataSource = src_cnae_x_lc
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CNLC_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNLC_CODCNAE'
            Title.Alignment = taCenter
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_cnae'
            Title.Alignment = taCenter
            Width = 388
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNLC_CODLC'
            Title.Alignment = taCenter
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_lc'
            Title.Alignment = taCenter
            Width = 447
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 1189
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 1189
  end
  object Tb_cnae_x_lc: TQuery
    CachedUpdates = True
    BeforePost = Tb_cnae_x_lcBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCFO where'
      'CFCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = u_cnae_x_lc
    Left = 560
    Top = 31
    object Tb_cnae_x_lcCNLC_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CNLC_ID'
      Origin = 'SG_ASSOC.CADCNAE_X_LC.CNLC_ID'
    end
    object Tb_cnae_x_lcCNLC_CODCNAE: TStringField
      DisplayLabel = 'C'#243'digo Cnae'
      FieldName = 'CNLC_CODCNAE'
      Origin = 'SG_ASSOC.CADCNAE_X_LC.CNLC_CODCNAE'
      Size = 9
    end
    object Tb_cnae_x_lcnome_cnae: TStringField
      DisplayLabel = 'Nome do Cnae'
      FieldName = 'nome_cnae'
      Size = 254
    end
    object Tb_cnae_x_lcCNLC_CODLC: TStringField
      DisplayLabel = 'C'#243'digo LC'
      FieldName = 'CNLC_CODLC'
      Origin = 'CNLC_CODLC'
      Size = 5
    end
    object Tb_cnae_x_lcnome_lc: TStringField
      DisplayLabel = 'Nome da LC'
      FieldName = 'nome_lc'
      Size = 254
    end
  end
  object u_cnae_x_lc: TUpdateSQL
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
    Left = 588
    Top = 34
  end
  object src_cnae_x_lc: TDataSource
    DataSet = Tb_cnae_x_lc
    Left = 616
    Top = 34
  end
end
