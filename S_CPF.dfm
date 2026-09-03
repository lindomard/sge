object Frm_CPF: TFrm_CPF
  Left = 89
  Top = 80
  Width = 971
  Height = 605
  BorderStyle = bsSizeToolWin
  Caption = 'C'#243'digo de Produto no Fornecedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 286
    Width = 963
    Height = 288
    Align = alClient
    Caption = 'Este Produto possui estes Relacionamentos:'
    TabOrder = 0
    object DBText1: TDBText
      Left = 2
      Top = 240
      Width = 959
      Height = 14
      Align = alBottom
      Alignment = taCenter
      DataField = 'obs_fator'
      DataSource = Src_CPF
      WordWrap = True
    end
    object DBGrid_cpf: TDBGrid
      Left = 2
      Top = 15
      Width = 959
      Height = 201
      Align = alClient
      DataSource = Src_CPF
      FixedColor = 13696509
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid_cpfColExit
      OnExit = DBGrid_cpfExit
      OnKeyPress = DBGrid_cpfKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PFCODPRO'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFCODPFORN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Caption = 'Nome do Produto'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCODFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFQTDFOR'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFUNDFOR'
          Width = 59
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 254
      Width = 959
      Height = 32
      Align = alBottom
      TabOrder = 1
      object INCLUIR: TBitBtn
        Left = 4
        Top = 0
        Width = 130
        Height = 25
        Hint = 'Inclus'#227'o de novos registros'
        Caption = '&Novo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = INCLUIRClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object ALTERAR: TBitBtn
        Left = 133
        Top = 0
        Width = 130
        Height = 25
        Hint = 'Permite alterar o registro atual'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = ALTERARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object EXCLUIR: TBitBtn
        Left = 264
        Top = 0
        Width = 130
        Height = 25
        Hint = 'Exclus'#227'o do registro atual'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = EXCLUIRClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 216
      Width = 959
      Height = 24
      Align = alBottom
      TabOrder = 2
      object Label2: TLabel
        Left = 29
        Top = 4
        Width = 108
        Height = 13
        Caption = 'Pesquisar Produto:'
      end
      object edt_nompro: TEdit
        Left = 142
        Top = 2
        Width = 507
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edt_nomproChange
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 963
    Height = 135
    Align = alTop
    Caption = 'Filtrar:'
    TabOrder = 1
    object Label5: TLabel
      Left = 2
      Top = 14
      Width = 140
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor:'
    end
    object Label4: TLabel
      Left = 2
      Top = 54
      Width = 140
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto Interno:'
    end
    object Label6: TLabel
      Left = 2
      Top = 90
      Width = 140
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto no Fornecedor:'
    end
    object CODFOR: TEdit
      Left = 143
      Top = 14
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object lbx_codfor: TListBox
      Left = 203
      Top = 14
      Width = 581
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 143
      Top = 33
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object CODPRO: TEdit
      Left = 143
      Top = 53
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object lbx_codpro: TListBox
      Left = 203
      Top = 53
      Width = 581
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codproKeyDown
    end
    object OMITIR_PRO: TCheckBox
      Left = 143
      Top = 73
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edt_codpforn: TEdit
      Left = 143
      Top = 89
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = edt_codpfornExit
    end
    object lbx_codpforn: TListBox
      Left = 203
      Top = 89
      Width = 581
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codpfornKeyDown
    end
    object OMITIR_CPF: TCheckBox
      Left = 143
      Top = 109
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object BBSAIR: TBitBtn
      Left = 798
      Top = 11
      Width = 150
      Height = 50
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BBSAIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 135
    Width = 963
    Height = 151
    Align = alTop
    Caption = 'Fornecedores:'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 959
      Height = 110
      Align = alClient
      DataSource = Src_For
      FixedColor = 13696509
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'FCODFOR'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Width = 536
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCIDADE'
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUF'
          Width = 27
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 125
      Width = 959
      Height = 24
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 5
        Width = 128
        Height = 13
        Caption = 'Pesquisar Fornecedor:'
      end
      object edt_nomfor: TEdit
        Left = 141
        Top = 2
        Width = 507
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edt_nomforChange
      end
    end
  end
  object Qr_CPF: TQuery
    CachedUpdates = True
    AfterInsert = Qr_CPFAfterInsert
    BeforeEdit = Qr_CPFBeforeEdit
    BeforePost = Qr_CPFBeforePost
    AfterPost = Qr_CPFAfterPost
    BeforeDelete = Qr_CPFBeforeDelete
    OnCalcFields = Qr_CPFCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT PFCODEMP,PFCODPRO,PFCODPFORN,FCODFOR,FRAZAO,PDNOME,PDMARC' +
        'A,PDUND'
      ',PFFATOR,PFUNDFOR,1 as QTDPRO,1*PFFATOR AS PFQTDFOR'
      ' FROM CODPFOR,CADFOR,CADPRO'
      'WHERE PFCODEMP=1 and'
      'FCODEMP=PFCODEMP and '
      'FCODFOR=PFCODFOR '
      'and PDCODEMP=PFCODEMP '
      'and PDCODPRO=PFCODPRO')
    UpdateObject = U_CPF
    Left = 304
    Top = 72
    object Qr_CPFobs_fator: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs_fator'
      Size = 400
      Calculated = True
    end
    object Qr_CPFPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
    end
    object Qr_CPFPFCODPRO: TFloatField
      FieldName = 'PFCODPRO'
    end
    object Qr_CPFPFCODPFORN: TStringField
      FieldName = 'PFCODPFORN'
    end
    object Qr_CPFFCODFOR: TFloatField
      FieldName = 'FCODFOR'
    end
    object Qr_CPFFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 60
    end
    object Qr_CPFPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_CPFPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Qr_CPFPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_CPFPFFATOR: TFloatField
      FieldName = 'PFFATOR'
    end
    object Qr_CPFPFUNDFOR: TStringField
      FieldName = 'PFUNDFOR'
      Size = 3
    end
    object Qr_CPFQTDPRO: TFloatField
      FieldName = 'QTDPRO'
    end
    object Qr_CPFPFQTDFOR: TFloatField
      FieldName = 'PFQTDFOR'
    end
  end
  object Src_CPF: TDataSource
    DataSet = Qr_CPF
    Left = 360
    Top = 72
  end
  object Qr_for: TQuery
    OnCalcFields = Qr_CPFCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FCODFOR,FRAZAO,FCIDADE,FUF from CADFOR')
    Left = 552
    Top = 80
    object Qr_forFCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Qr_forFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Qr_forFCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FCIDADE'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 30
    end
    object Qr_forFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
  end
  object Src_For: TDataSource
    DataSet = Qr_for
    OnDataChange = Src_ForDataChange
    Left = 584
    Top = 80
  end
  object U_CPF: TUpdateSQL
    ModifySQL.Strings = (
      'update CODPFOR'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFCODPRO = :PFCODPRO,'
      '  PFCODPFORN = :PFCODPFORN,'
      '  PFFATOR = :PFFATOR,'
      '  PFUNDFOR = :PFUNDFOR'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    InsertSQL.Strings = (
      'insert into CODPFOR'
      '  (PFCODEMP, PFCODPRO, PFCODPFORN, PFFATOR, PFUNDFOR)'
      'values'
      '  (:PFCODEMP, :PFCODPRO, :PFCODPFORN, :PFFATOR, :PFUNDFOR)')
    DeleteSQL.Strings = (
      'delete from CODPFOR'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    Left = 392
    Top = 72
  end
end
