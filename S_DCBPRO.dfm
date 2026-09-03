object Frm_DCBPRO: TFrm_DCBPRO
  Left = 192
  Top = 140
  Width = 544
  Height = 375
  Caption = 'DCB-Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Produto.....:'
    end
    object CODPRO: TEdit
      Left = 79
      Top = 11
      Width = 110
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object NOMPRO: TEdit
      Left = 190
      Top = 10
      Width = 298
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 536
    Height = 259
    Align = alClient
    Caption = 'C'#243'digos DCB-Gen'#233'rico:'
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 232
      Width = 532
      Height = 25
      DataSource = Src_Pgen
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Hints.Strings = (
        'Primeiro Registro'
        'Regisrtro Anterior'
        'Proximo Registro'
        'Ultimo Registro'
        'Inserir Registro'
        'Deletar Registro'
        'Editar'
        'Gravar'
        'Cancelar'
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 532
      Height = 217
      Align = alClient
      DataSource = Src_Pgen
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PGCODDCB'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomdcb'
          Width = 394
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 174
      Top = 4
      Width = 203
      Height = 32
      Caption = '&Sair'
      TabOrder = 0
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
  object Tb_PGen: TQuery
    CachedUpdates = True
    BeforeInsert = c
    AfterInsert = Tb_PGenAfterInsert
    BeforePost = Tb_PGenBeforePost
    BeforeDelete = Tb_PGenBeforeDelete
    OnCalcFields = Tb_PGenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPGEN where PGCODEMP is null')
    UpdateObject = U_PGen
    Left = 224
    Top = 16
    object Tb_PGenPGCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PGCODEMP'
      Origin = 'SG_ASSOC.CADPGEN.PGCODEMP'
    end
    object Tb_PGenPGCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'PGCODPRO'
      Origin = 'SG_ASSOC.CADPGEN.PGCODPRO'
    end
    object Tb_PGenPGCODDCB: TStringField
      DisplayLabel = 'C'#243'digo DCB'
      FieldName = 'PGCODDCB'
      Size = 12
    end
    object Tb_PGennomdcb: TStringField
      DisplayLabel = 'Descri'#231#227'o do DCB'
      FieldKind = fkCalculated
      FieldName = 'nomdcb'
      Size = 40
      Calculated = True
    end
  end
  object U_PGen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPGEN'
      'set'
      '  PGCODEMP = :PGCODEMP,'
      '  PGCODPRO = :PGCODPRO,'
      '  PGCODDCB = :PGCODDCB'
      'where'
      '  PGCODEMP = :OLD_PGCODEMP and'
      '  PGCODPRO = :OLD_PGCODPRO')
    InsertSQL.Strings = (
      'insert into CADPGEN'
      '  (PGCODEMP, PGCODPRO, PGCODDCB)'
      'values'
      '  (:PGCODEMP, :PGCODPRO, :PGCODDCB)')
    DeleteSQL.Strings = (
      'delete from CADPGEN'
      'where'
      '  PGCODEMP = :OLD_PGCODEMP and'
      '  PGCODPRO = :OLD_PGCODPRO')
    Left = 264
    Top = 24
  end
  object Src_Pgen: TDataSource
    DataSet = Tb_PGen
    Left = 312
    Top = 24
  end
end
