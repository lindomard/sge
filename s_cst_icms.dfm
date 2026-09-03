inherited Frm_cst_icms: TFrm_cst_icms
  Left = 335
  Top = 223
  Width = 836
  Height = 391
  Caption = 'Cadastro de CST Icms'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 828
    inherited lbl_emp: TLabel
      Left = 783
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'Chave Id')
    end
    object bbBaixar: TBitBtn
      Left = 536
      Top = 3
      Width = 145
      Height = 25
      Caption = 'Baixar da Internet'
      TabOrder = 3
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000333300
        0000377777FFFF7777770FFFF099990FFFF07FFFF777777FFFF7000000333300
        00007777773333777777307703333330770337FF7F333337FF7F300003333330
        0003377773333337777333993333333399333F7FFFF3333FF7FF000000333300
        0000777777F3337777770FFFF033330FFFF07FFFF7F3337FFFF7000000333300
        00007777773333777777307703333330770337FF7F333337FF7F300003333330
        0003377773FFFFF777733393300000033933337F3777777F37F3339990FFFF09
        99333373F7FFFF7FF73333399000000993333337777777777333333333077033
        33333333337FF7F3333333333300003333333333337777333333}
      NumGlyphs = 2
    end
  end
  inherited PC1: TPageControl
    Width = 828
    Height = 225
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 0
        Top = 8
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Chave Id:'
        FocusControl = DBE_CST_ID
      end
      object Label2: TLabel
        Left = 0
        Top = 27
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo:'
        FocusControl = DBE_CST_CODIGO
      end
      object Label3: TLabel
        Left = 0
        Top = 44
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
        FocusControl = DBE_CST_NOME
      end
      object Label4: TLabel
        Left = 0
        Top = 64
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Evento:'
        FocusControl = DBMemo_EVENTO
      end
      object DBE_CST_ID: TDBEdit
        Left = 72
        Top = 5
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CST_ID'
        DataSource = src_cst_icms
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
      end
      object DBE_CST_CODIGO: TDBEdit
        Left = 72
        Top = 23
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'CST_CODIGO'
        DataSource = src_cst_icms
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_CST_NOME: TDBEdit
        Left = 72
        Top = 41
        Width = 520
        Height = 19
        Ctl3D = False
        DataField = 'CST_NOME'
        DataSource = src_cst_icms
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBMemo_EVENTO: TDBMemo
        Left = 72
        Top = 59
        Width = 520
        Height = 89
        TabStop = False
        Color = 16759225
        Ctl3D = False
        DataField = 'EVENTO'
        DataSource = src_cst_icms
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object gb_codigos_beneficios: TGroupBox
        Left = 625
        Top = 0
        Width = 195
        Height = 197
        Align = alRight
        Caption = 'C'#243'digos dos Beneficios:'
        TabOrder = 4
        object DBGrid2_cbenef: TDBGrid
          Left = 2
          Top = 15
          Width = 191
          Height = 154
          Align = alTop
          DataSource = src_cbenef
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid2_cbenefExit
          Columns = <
            item
              Expanded = False
              FieldName = 'cstb_uf'
              PickList.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MT'
                'MS'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstb_cbenef'
              Width = 74
              Visible = True
            end>
        end
        object bbExluirCbenef: TBitBtn
          Left = 24
          Top = 168
          Width = 153
          Height = 25
          Caption = 'Exluir Codigo'
          TabOrder = 1
          OnClick = bbExluirCbenefClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 812
        Height = 189
        DataSource = src_cst_icms
        Columns = <
          item
            Expanded = False
            FieldName = 'CST_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_CODIGO'
            Title.Alignment = taCenter
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_NOME'
            Title.Alignment = taCenter
            Width = 591
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 254
    Width = 828
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 307
    Width = 828
    inherited DBNavigator1: TDBNavigator
      DataSource = src_cst_icms
    end
    object edt_comando: TEdit
      Left = 336
      Top = 15
      Width = 353
      Height = 21
      TabOrder = 2
      Text = 'java -jar c:\sge\baixarCadastrosBasicosV01.jar'
      Visible = False
    end
  end
  object tb_cst_icms: TQuery
    CachedUpdates = True
    AfterPost = tb_cst_icmsAfterPost
    AfterDelete = tb_cst_icmsAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADCST_ICMS.*'
      
        ', '#39'Incluido em '#39' || TO_CHAR('#39'DD/MM/YYYY HH24:MI:SS'#39', CST_DATHOR_' +
        'INC) || '#39' por '#39' || TO_CHAR(CST_CODUSR_INC) || '#39' - '#39' || CST_ORIGE' +
        'M_INC'
      
        '|| '#39#250'ltimo evento em '#39' || TO_CHAR('#39'DD/MM/YYYY HH24:MI:SS'#39', CST_D' +
        'ATHOR_UEVE) || '#39' por '#39' || TO_CHAR(CST_CODUSR_UEVE) || '#39' - '#39' || C' +
        'ST_ORIGEM_UEVE'
      'as evento'
      ''
      ' from CADCST_ICMS')
    UpdateObject = u_cst_icms
    Left = 236
    Top = 69
    object tb_cst_icmsCST_ID: TFloatField
      DisplayLabel = 'Chave Id:'
      FieldName = 'CST_ID'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_ID'
    end
    object tb_cst_icmsCST_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CST_CODIGO'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_CODIGO'
      Size = 6
    end
    object tb_cst_icmsCST_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CST_NOME'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_NOME'
      Size = 254
    end
    object tb_cst_icmsCST_CODUSR_INC: TFloatField
      FieldName = 'CST_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_CODUSR_INC'
    end
    object tb_cst_icmsCST_DATHOR_INC: TDateTimeField
      FieldName = 'CST_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_DATHOR_INC'
    end
    object tb_cst_icmsCST_ORIGEM_INC: TStringField
      FieldName = 'CST_ORIGEM_INC'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_ORIGEM_INC'
      Size = 254
    end
    object tb_cst_icmsCST_CODUSR_UEVE: TFloatField
      FieldName = 'CST_CODUSR_UEVE'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_CODUSR_UEVE'
    end
    object tb_cst_icmsCST_DATHOR_UEVE: TDateTimeField
      FieldName = 'CST_DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_DATHOR_UEVE'
    end
    object tb_cst_icmsCST_ORIGEM_UEVE: TStringField
      FieldName = 'CST_ORIGEM_UEVE'
      Origin = 'SG_ASSOC.CADCST_ICMS.CST_ORIGEM_UEVE'
      Size = 254
    end
    object tb_cst_icmsEVENTO: TMemoField
      DisplayLabel = 'Evento:'
      FieldName = 'EVENTO'
      BlobType = ftMemo
      Size = 4000
    end
  end
  object src_cst_icms: TDataSource
    DataSet = tb_cst_icms
    OnDataChange = src_cst_icmsDataChange
    Left = 272
    Top = 72
  end
  object cds_cbenef: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_cbenefAfterInsert
    BeforePost = cds_cbenefBeforePost
    AfterPost = cds_cbenefAfterPost
    BeforeDelete = cds_cbenefBeforeDelete
    AfterDelete = cds_cbenefAfterDelete
    Left = 324
    Top = 245
    object cds_cbenefcstb_id: TIntegerField
      DisplayLabel = 'Chave Id'
      FieldName = 'cstb_id'
    end
    object cds_cbenefcstb_id_cst: TIntegerField
      DisplayLabel = 'Id do CST'
      FieldName = 'cstb_id_cst'
    end
    object cds_cbenefcstb_cbenef: TStringField
      DisplayLabel = 'C'#243'd. Benef'
      FieldName = 'cstb_cbenef'
      Size = 10
    end
    object cds_cbenefcstb_uf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'cstb_uf'
      Size = 2
    end
  end
  object src_cbenef: TDataSource
    DataSet = cds_cbenef
    Left = 356
    Top = 245
  end
  object u_cst_icms: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCST_ICMS'
      'set'
      '  CST_ID = :CST_ID,'
      '  CST_CODIGO = :CST_CODIGO,'
      '  CST_NOME = :CST_NOME,'
      '  CST_CODUSR_INC = :CST_CODUSR_INC,'
      '  CST_DATHOR_INC = :CST_DATHOR_INC,'
      '  CST_ORIGEM_INC = :CST_ORIGEM_INC,'
      '  CST_CODUSR_UEVE = :CST_CODUSR_UEVE,'
      '  CST_DATHOR_UEVE = :CST_DATHOR_UEVE,'
      '  CST_ORIGEM_UEVE = :CST_ORIGEM_UEVE'
      'where'
      '  CST_ID = :OLD_CST_ID')
    InsertSQL.Strings = (
      'insert into CADCST_ICMS'
      
        '  (CST_ID, CST_CODIGO, CST_NOME, CST_CODUSR_INC, CST_DATHOR_INC,' +
        ' '
      'CST_ORIGEM_INC, '
      '   CST_CODUSR_UEVE, CST_DATHOR_UEVE, CST_ORIGEM_UEVE)'
      'values'
      '  (:CST_ID, :CST_CODIGO, :CST_NOME, :CST_CODUSR_INC, '
      ':CST_DATHOR_INC, :CST_ORIGEM_INC, '
      '   :CST_CODUSR_UEVE, :CST_DATHOR_UEVE, :CST_ORIGEM_UEVE)')
    DeleteSQL.Strings = (
      'delete from CADCST_ICMS'
      'where'
      '  CST_ID = :OLD_CST_ID')
    Left = 324
    Top = 77
  end
end
