object Frm_ParPreco: TFrm_ParPreco
  Left = 200
  Top = 131
  Width = 496
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Parametros para Ajustar o Pre'#231'o 1 do Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 368
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Icms D'#233'bito'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 488
    Height = 97
    Align = alTop
    Caption = 'Ajuste por Icms de Substitui'#231#227'o Tribut'#225'ria:'
    TabOrder = 0
    object Label1: TLabel
      Left = 76
      Top = 20
      Width = 20
      Height = 13
      Caption = 'IVA:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 214
      Top = 22
      Width = 41
      Height = 13
      Caption = 'Redutor:'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 13
      Top = 67
      Width = 91
      Height = 13
      Caption = 'Outros Acr'#233'scimos:'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 38
      Top = 45
      Width = 61
      Height = 13
      Caption = 'Icms Cr'#233'dito:'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 198
      Top = 43
      Width = 59
      Height = 13
      Caption = 'Icms D'#233'bito:'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 108
      Top = 18
      Width = 67
      Height = 19
      Ctl3D = False
      DataField = 'PA1IVA'
      DataSource = Src_PARAJP01
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 262
      Top = 19
      Width = 67
      Height = 19
      Ctl3D = False
      DataField = 'PA1REDUTOR'
      DataSource = Src_PARAJP01
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 109
      Top = 62
      Width = 67
      Height = 19
      Ctl3D = False
      DataField = 'PA1OUTROSAC'
      DataSource = Src_PARAJP01
      ParentCtl3D = False
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 108
      Top = 40
      Width = 67
      Height = 19
      Ctl3D = False
      DataField = 'PA1ICMSC'
      DataSource = Src_PARAJP01
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 261
      Top = 42
      Width = 67
      Height = 19
      Ctl3D = False
      DataField = 'PA1ICMSD'
      DataSource = Src_PARAJP01
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 97
    Width = 488
    Height = 178
    Align = alClient
    Caption = 'Tipos de Produtos com os Respectivos Acr'#233'scimos:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 484
      Height = 161
      Align = alClient
      DataSource = Src_Parajp02
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnExit = DBGrid1Exit
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PA2CODTPRO'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PA2PERACRE'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomtipo'
          Width = 253
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 488
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbGravar: TBitBtn
      Left = 13
      Top = 5
      Width = 116
      Height = 33
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = bbGravarClick
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
    object BitBtn1: TBitBtn
      Left = 366
      Top = 5
      Width = 116
      Height = 33
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 275
    Width = 488
    Height = 25
    DataSource = Src_Parajp02
    Align = alBottom
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      #218'ltimo Registro'
      'Inserir Registro'
      'Deletar Registro'
      'Alterar Registro'
      'Gravar Registro'
      'Cancelar Edi'#231#227'o'
      'Atualizar Informa'#231#245'es')
    TabOrder = 3
  end
  object Tb_PARAJP01: TQuery
    CachedUpdates = True
    BeforePost = Tb_PARAJP01BeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARAJUP01'
      'where PA1CODEMP like :CODEMP'
      'and     PA1TPRECO like :TPRECO')
    UpdateObject = U_PARAJP01
    Left = 382
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TPRECO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_PARAJP01PA1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PA1CODEMP'
      Origin = 'SG_ASSOC.PARAJUP01.PA1CODEMP'
    end
    object Tb_PARAJP01PA1TPRECO: TFloatField
      DisplayLabel = 'Tipo Pre'#231'o'
      FieldName = 'PA1TPRECO'
      Origin = 'SG_ASSOC.PARAJUP01.PA1TPRECO'
    end
    object Tb_PARAJP01PA1IVA: TFloatField
      DisplayLabel = 'IVA'
      FieldName = 'PA1IVA'
      Origin = 'SG_ASSOC.PARAJUP01.PA1IVA'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP01PA1REDUTOR: TFloatField
      DisplayLabel = 'Redutor'
      FieldName = 'PA1REDUTOR'
      Origin = 'SG_ASSOC.PARAJUP01.PA1REDUTOR'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP01PA1ICMSD: TFloatField
      DisplayLabel = 'Icms D'#233'bito'
      FieldName = 'PA1ICMSD'
      Origin = 'SG_ASSOC.PARAJUP01.PA1ICMSD'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP01PA1ICMSC: TFloatField
      DisplayLabel = 'Icms Cr'#233'dito'
      FieldName = 'PA1ICMSC'
      Origin = 'SG_ASSOC.PARAJUP01.PA1ICMSC'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP01PA1OUTROSAC: TFloatField
      DisplayLabel = 'Outros Acr'#233'scimos'
      FieldName = 'PA1OUTROSAC'
      Origin = 'SG_ASSOC.PARAJUP01.PA1OUTROSAC'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP01PA1CODUSR: TFloatField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'PA1CODUSR'
      Origin = 'SG_ASSOC.PARAJUP01.PA1CODUSR'
    end
  end
  object Tb_PARAJP02: TQuery
    CachedUpdates = True
    AfterInsert = Tb_PARAJP02AfterInsert
    BeforePost = Tb_PARAJP02BeforePost
    OnCalcFields = Tb_PARAJP02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARAJUP02'
      'where PA2CODEMP   like :CODEMP'
      'and     PA2TPRECO    like :TPRECO'
      'and     PA2CODTPRO like :CODTPRO')
    UpdateObject = U_PARAJP02
    Left = 338
    Top = 62
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TPRECO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODTPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_PARAJP02PA2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PA2CODEMP'
      Origin = 'SG_ASSOC.PARAJUP02.PA2CODEMP'
    end
    object Tb_PARAJP02PA2TPRECO: TFloatField
      DisplayLabel = 'Tipo Pre'#231'o'
      FieldName = 'PA2TPRECO'
      Origin = 'SG_ASSOC.PARAJUP02.PA2TPRECO'
    end
    object Tb_PARAJP02PA2CODTPRO: TFloatField
      DisplayLabel = 'C'#243'd.Tipo'
      FieldName = 'PA2CODTPRO'
      Origin = 'SG_ASSOC.PARAJUP02.PA2CODTPRO'
    end
    object Tb_PARAJP02PA2PERACRE: TFloatField
      DisplayLabel = '% Acr'#233'scimos'
      FieldName = 'PA2PERACRE'
      Origin = 'SG_ASSOC.PARAJUP02.PA2PERACRE'
      DisplayFormat = '0.00'
    end
    object Tb_PARAJP02nomtipo: TStringField
      DisplayLabel = 'Nome do Tipo do Produto'
      FieldKind = fkCalculated
      FieldName = 'nomtipo'
      Size = 40
      Calculated = True
    end
  end
  object U_PARAJP01: TUpdateSQL
    ModifySQL.Strings = (
      'update PARAJUP01'
      'set'
      '  PA1CODEMP = :PA1CODEMP,'
      '  PA1TPRECO = :PA1TPRECO,'
      '  PA1IVA = :PA1IVA,'
      '  PA1REDUTOR = :PA1REDUTOR,'
      '  PA1ICMSC = :PA1ICMSC,'
      '  PA1ICMSD = :PA1ICMSD,'
      '  PA1OUTROSAC = :PA1OUTROSAC,'
      '  PA1CODUSR = :PA1CODUSR'
      'where'
      '  PA1CODEMP = :OLD_PA1CODEMP and'
      '  PA1TPRECO = :OLD_PA1TPRECO')
    InsertSQL.Strings = (
      'insert into PARAJUP01'
      
        '  (PA1CODEMP, PA1TPRECO, PA1IVA, PA1REDUTOR, PA1ICMSC, PA1ICMSD,' +
        ' '
      'PA1OUTROSAC, '
      '   PA1CODUSR)'
      'values'
      
        '  (:PA1CODEMP, :PA1TPRECO, :PA1IVA, :PA1REDUTOR, :PA1ICMSC, :PA1' +
        'ICMSD, '
      '   :PA1OUTROSAC, :PA1CODUSR)')
    DeleteSQL.Strings = (
      'delete from PARAJUP01'
      'where'
      '  PA1CODEMP = :OLD_PA1CODEMP and'
      '  PA1TPRECO = :OLD_PA1TPRECO')
    Left = 323
    Top = 17
  end
  object U_PARAJP02: TUpdateSQL
    ModifySQL.Strings = (
      'update PARAJUP02'
      'set'
      '  PA2CODEMP = :PA2CODEMP,'
      '  PA2TPRECO = :PA2TPRECO,'
      '  PA2CODTPRO = :PA2CODTPRO,'
      '  PA2PERACRE = :PA2PERACRE'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2TPRECO = :OLD_PA2TPRECO and'
      '  PA2CODTPRO = :OLD_PA2CODTPRO')
    InsertSQL.Strings = (
      'insert into PARAJUP02'
      '  (PA2CODEMP, PA2TPRECO, PA2CODTPRO, PA2PERACRE)'
      'values'
      '  (:PA2CODEMP, :PA2TPRECO, :PA2CODTPRO, :PA2PERACRE)')
    DeleteSQL.Strings = (
      'delete from PARAJUP02'
      'where'
      '  PA2CODEMP = :OLD_PA2CODEMP and'
      '  PA2TPRECO = :OLD_PA2TPRECO and'
      '  PA2CODTPRO = :OLD_PA2CODTPRO')
    Left = 366
    Top = 63
  end
  object Src_PARAJP01: TDataSource
    DataSet = Tb_PARAJP01
    Left = 345
    Top = 16
  end
  object Src_Parajp02: TDataSource
    DataSet = Tb_PARAJP02
    Left = 400
    Top = 64
  end
end
