object Frm_Pro_Fornec: TFrm_Pro_Fornec
  Left = 119
  Top = 146
  Width = 580
  Height = 424
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Fornecedores do Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_nompro: TLabel
    Left = 0
    Top = 0
    Width = 572
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'lbl_nompro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 16
    Width = 572
    Height = 333
    Align = alClient
    Caption = 'Fornecedores'
    TabOrder = 0
    object DBGrid_cadpro_codbar: TDBGrid
      Left = 2
      Top = 15
      Width = 568
      Height = 291
      Align = alClient
      DataSource = Src_Pro_Fornec
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid_cadpro_codbarColExit
      OnExit = DBGrid_cadpro_codbarExit
      OnKeyPress = DBGrid_cadpro_codbarKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PFCODFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMFOR'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFCODPFORN'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 306
      Width = 568
      Height = 25
      DataSource = Src_Pro_Fornec
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 349
    Width = 572
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 150
      Top = 6
      Width = 262
      Height = 31
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bbSairClick
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
  object Src_Pro_Fornec: TDataSource
    DataSet = Tb_Pro_Fornec
    Left = 477
    Top = 219
  end
  object U_Pro_Fornec: TUpdateSQL
    ModifySQL.Strings = (
      'update CODPFOR'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFCODFOR = :PFCODFOR,'
      '  PFCODPRO = :PFCODPRO,'
      '  PFCODPFORN = :PFCODPFORN,'
      '  PFSALDO = :PFSALDO'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    InsertSQL.Strings = (
      'insert into CODPFOR'
      '  (PFCODEMP, PFCODFOR, PFCODPRO, PFCODPFORN, PFSALDO)'
      'values'
      '  (:PFCODEMP, :PFCODFOR, :PFCODPRO, :PFCODPFORN, :PFSALDO)')
    DeleteSQL.Strings = (
      'delete from CODPFOR'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODFOR = :OLD_PFCODFOR and'
      '  PFCODPRO = :OLD_PFCODPRO and'
      '  PFCODPFORN = :OLD_PFCODPFORN')
    Left = 448
    Top = 219
  end
  object Tb_Pro_Fornec: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Pro_FornecBeforeInsert
    BeforeEdit = Tb_Pro_FornecBeforeEdit
    BeforePost = Tb_Pro_FornecBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT PFCODEMP,PFCODFOR,PFCODPRO,PFCODPFORN,PFSALDO,FRAZAO AS N' +
        'OMFOR'
      'FROM CODPFOR,CADFOR'
      'WHERE PFCODEMP=1 and'
      'FCODEMP=PFCODEMP and'
      'FCODFOR=PFCODFOR'
      '')
    UpdateObject = U_Pro_Fornec
    Left = 419
    Top = 224
    object Tb_Pro_FornecPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
      Origin = 'SG_ASSOC.CODPFOR.PFCODEMP'
    end
    object Tb_Pro_FornecPFCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PFCODFOR'
      Origin = 'SG_ASSOC.CODPFOR.PFCODFOR'
    end
    object Tb_Pro_FornecPFSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'PFSALDO'
      Origin = 'SG_ASSOC.CODPFOR.PFSALDO'
    end
    object Tb_Pro_FornecNOMFOR: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'NOMFOR'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Tb_Pro_FornecPFCODPRO: TFloatField
      FieldName = 'PFCODPRO'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPRO'
    end
    object Tb_Pro_FornecPFCODPFORN: TStringField
      DisplayLabel = 'C'#243'd.Produto no Fornecedor'
      FieldName = 'PFCODPFORN'
      Origin = 'SG_ASSOC.CODPFOR.PFCODPFORN'
    end
  end
end
