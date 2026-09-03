object Frm_combo: TFrm_combo
  Left = 266
  Top = 252
  Width = 995
  Height = 540
  Caption = 'Combo de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 664
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 987
    Height = 509
    ActivePage = tsCombo
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tsCombo: TTabSheet
      Caption = 'Combo de Produtos'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 979
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 89
          Height = 13
          Caption = 'Combos Existentes'
        end
        object cb_combos: TComboBox
          Left = 112
          Top = 5
          Width = 381
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'cb_combos'
          OnEnter = cb_combosEnter
          OnExit = cb_combosExit
        end
        object BBnAlterar: TBitBtn
          Left = 503
          Top = 3
          Width = 150
          Height = 23
          Cursor = crHandPoint
          Caption = '&Alterar'
          Enabled = False
          TabOrder = 1
          OnClick = BBnAlterarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object BBnFechar: TBitBtn
          Left = 813
          Top = 2
          Width = 150
          Height = 23
          Cursor = crHandPoint
          Caption = '&Fechar'
          TabOrder = 2
          OnClick = BBnFecharClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
            0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
            0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
            0333337F777FFFFF7F3333000000000003333377777777777333}
          NumGlyphs = 2
        end
        object BBnEncerrar: TBitBtn
          Left = 659
          Top = 2
          Width = 150
          Height = 23
          Cursor = crHandPoint
          Caption = '&Encerrar Altera'#231'oes'
          Enabled = False
          TabOrder = 3
          OnClick = BBnEncerrarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
        end
      end
      object gb_cabecalho: TGroupBox
        Left = 0
        Top = 41
        Width = 979
        Height = 57
        Align = alTop
        Caption = 'Cabecalho:'
        Enabled = False
        TabOrder = 1
        OnEnter = gb_cabecalhoEnter
        OnExit = gb_cabecalhoExit
        object Label3: TLabel
          Left = 15
          Top = 17
          Width = 46
          Height = 13
          Caption = 'Chave Id:'
          FocusControl = DBE_CB01_ID
        end
        object Label4: TLabel
          Left = 156
          Top = 17
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBE_CB01_NOME
        end
        object Label5: TLabel
          Left = 646
          Top = 17
          Width = 54
          Height = 13
          Caption = 'Periodo de '
          FocusControl = DBE_CB01_NOME
        end
        object Label6: TLabel
          Left = 842
          Top = 17
          Width = 6
          Height = 13
          Caption = #224
          FocusControl = DBE_CB01_NOME
        end
        object DBE_CB01_ID: TDBEdit
          Left = 64
          Top = 15
          Width = 78
          Height = 19
          Color = 14540253
          Ctl3D = False
          DataField = 'CB01_ID'
          DataSource = src_combo01
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_CB01_NOME: TDBEdit
          Left = 190
          Top = 15
          Width = 435
          Height = 19
          Ctl3D = False
          DataField = 'CB01_NOME'
          DataSource = src_combo01
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBDE_CB01_DATIN: TDBDateEdit
          Left = 703
          Top = 14
          Width = 110
          Height = 21
          DataField = 'CB01_DATINI'
          DataSource = src_combo01
          Color = 13565951
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          YearDigits = dyFour
        end
        object DBD_CB01_DATFIN: TDBDateEdit
          Left = 856
          Top = 15
          Width = 110
          Height = 21
          DataField = 'CB01_DATFIN'
          DataSource = src_combo01
          Color = 13565951
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          YearDigits = dyFour
        end
      end
      object DBGrid_COMBO02: TDBGrid
        Left = 0
        Top = 98
        Width = 979
        Height = 383
        Align = alClient
        DataSource = src_combo02
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = DBGrid_COMBO02ColExit
        OnDrawColumnCell = DBGrid_COMBO02DrawColumnCell
        OnExit = DBGrid_COMBO02Exit
        OnKeyPress = DBGrid_COMBO02KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CB02_CODPRO'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB02_QTD'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 485
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB02_PCO_UNIT'
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end>
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
    end
  end
  object src_combo01: TDataSource
    DataSet = qr_combo01
    Left = 612
    Top = 105
  end
  object qr_combo01: TQuery
    CachedUpdates = True
    BeforePost = qr_combo01BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADCOMBO01')
    UpdateObject = U_combo01
    Left = 652
    Top = 105
    object qr_combo01CB01_ID: TFloatField
      DisplayLabel = 'Chave ID:'
      FieldName = 'CB01_ID'
    end
    object qr_combo01CB01_CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'CB01_CODEMP'
    end
    object qr_combo01CB01_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CB01_NOME'
      Size = 100
    end
    object qr_combo01CB01_DATINI: TDateTimeField
      FieldName = 'CB01_DATINI'
    end
    object qr_combo01CB01_DATFIN: TDateTimeField
      FieldName = 'CB01_DATFIN'
    end
    object qr_combo01CB01_CODUSR_INC: TFloatField
      FieldName = 'CB01_CODUSR_INC'
    end
    object qr_combo01CB01_CODUSR_UEVE: TFloatField
      FieldName = 'CB01_CODUSR_UEVE'
    end
    object qr_combo01CB01_DATHOR_INC: TDateTimeField
      FieldName = 'CB01_DATHOR_INC'
    end
    object qr_combo01CB01_DATHOR_UEVE: TDateTimeField
      FieldName = 'CB01_DATHOR_UEVE'
    end
  end
  object U_combo01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMBO01 set'
      '   CB01_ID = :CB01_ID'
      '   ,CB01_CODEMP = :CB01_CODEMP'
      '   ,CB01_NOME = :CB01_NOME'
      '   ,CB01_DATINI = :CB01_DATINI'
      '   ,CB01_DATFIN = :CB01_DATFIN'
      '   ,CB01_CODUSR_INC = :CB01_CODUSR_INC'
      '   ,CB01_CODUSR_UEVE = :CB01_CODUSR_UEVE'
      '   ,CB01_DATHOR_INC = :CB01_DATHOR_INC'
      '   ,CB01_DATHOR_UEVE = :CB01_DATHOR_UEVE'
      '   where CB01_ID = :OLD_CB01_ID'
      ''
      '')
    InsertSQL.Strings = (
      'insert into CADCOMBO01'
      
        '  (CB01_ID,CB01_CODEMP,CB01_NOME,CB01_DATINI,CB01_DATFIN,CB01_CO' +
        'DUSR_INC, CB01_CODUSR_UEVE, CB01_DATHOR_INC, CB01_DATHOR_UEVE )'
      'values'
      
        '  (:CB01_ID,:CB01_CODEMP,:CB01_NOME,:CB01_DATINI,:CB01_DATFIN,:C' +
        'B01_CODUSR_INC, :CB01_CODUSR_UEVE, :CB01_DATHOR_INC, :CB01_DATHO' +
        'R_UEVE )'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from COMBO01'
      'where'
      '  CB01_ID = :OLD_CB01_ID')
    Left = 692
    Top = 105
  end
  object src_combo02: TDataSource
    DataSet = qr_combo02
    Left = 612
    Top = 177
  end
  object qr_combo02: TQuery
    CachedUpdates = True
    BeforePost = qr_combo02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADCOMBO01')
    UpdateObject = u_combo02
    Left = 644
    Top = 177
    object qr_combo02CB02_ID: TFloatField
      FieldName = 'CB02_ID'
    end
    object qr_combo02CB02_ID_CB01: TFloatField
      FieldName = 'CB02_ID_CB01'
    end
    object qr_combo02CB02_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'CB02_CODPRO'
    end
    object qr_combo02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object qr_combo02CB02_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CB02_QTD'
    end
    object qr_combo02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Size = 100
    end
    object qr_combo02PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object qr_combo02CB02_PCO_UNIT: TFloatField
      DisplayLabel = 'P'#231'o Unitario'
      FieldName = 'CB02_PCO_UNIT'
    end
  end
  object u_combo02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMBO02 set'
      '   CB02_ID = :CB02_ID'
      '   ,CB02_ID_CB01 = :CB02_ID_CB01'
      '   ,CB02_CODPRO = :CB02_CODPRO'
      '   ,CB02_QTD = :CB02_QTD'
      '   ,CB02_PCO_UNIT = :CB02_PCO_UNIT'
      '   where CB02_ID = :OLD_CB002_ID'
      ''
      ''
      '')
    InsertSQL.Strings = (
      'insert into CADCOMBO02'
      '  (CB02_ID,CB02_ID_CB01,CB02_CODPRO,CB02_QTD,CB02_PCO_UNIT )'
      'values'
      
        '  (:CB02_ID,:CB02_ID_CB01,:CB02_CODPRO,:CB02_QTD,:CB02_PCO_UNIT ' +
        ')'
      '')
    DeleteSQL.Strings = (
      'delete from COMBO02'
      'where'
      '  CB02_ID = :OLD_CB02_ID')
    Left = 692
    Top = 177
  end
end
