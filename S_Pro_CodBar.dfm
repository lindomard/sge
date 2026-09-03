object Frm_Pro_CodBar: TFrm_Pro_CodBar
  Left = 155
  Top = 146
  Width = 544
  Height = 424
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'C'#243'digos de Barras Extras do  Produto'
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
    Width = 528
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
    Width = 528
    Height = 329
    Align = alClient
    Caption = 'Outros C'#243'digos de barras:'
    TabOrder = 0
    object DBGrid_cadpro_codbar: TDBGrid
      Left = 2
      Top = 15
      Width = 524
      Height = 287
      Align = alClient
      DataSource = Src_Pro_CodBar
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
      OnExit = DBGrid_cadpro_codbarExit
      Columns = <
        item
          Expanded = False
          FieldName = 'CBCODBAR'
          Title.Alignment = taCenter
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CBQTDMULT'
          Title.Alignment = taCenter
          Width = 169
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 302
      Width = 524
      Height = 25
      DataSource = Src_Pro_CodBar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 345
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 150
      Top = 6
      Width = 262
      Height = 31
      Cursor = crHandPoint
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
  object Src_Pro_CodBar: TDataSource
    DataSet = Tb_Pro_CodBar
    Left = 477
    Top = 219
  end
  object U_Pro_CodBar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_CODBAR'
      'set'
      '  CBCODEMP = :CBCODEMP,'
      '  CBCODPRO = :CBCODPRO,'
      '  CBCODBAR = :CBCODBAR,'
      '  CBQTDMULT = :CBQTDMULT'
      'where'
      '  CBCODEMP = :OLD_CBCODEMP and'
      '  CBCODPRO = :OLD_CBCODPRO and'
      '  CBCODBAR = :OLD_CBCODBAR')
    InsertSQL.Strings = (
      'insert into CADPRO_CODBAR'
      '  (CBCODEMP, CBCODPRO, CBCODBAR, CBQTDMULT)'
      'values'
      '  (:CBCODEMP, :CBCODPRO, :CBCODBAR, :CBQTDMULT)')
    DeleteSQL.Strings = (
      'delete from CADPRO_CODBAR'
      'where'
      '  CBCODEMP = :OLD_CBCODEMP and'
      '  CBCODPRO = :OLD_CBCODPRO and'
      '  CBCODBAR = :OLD_CBCODBAR')
    Left = 448
    Top = 219
  end
  object Tb_Pro_CodBar: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Pro_CodBarBeforeInsert
    BeforeEdit = Tb_Pro_CodBarBeforeEdit
    AfterEdit = Tb_Pro_CodBarAfterEdit
    BeforePost = Tb_Pro_CodBarBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_CODBAR')
    UpdateObject = U_Pro_CodBar
    Left = 419
    Top = 219
    object Tb_Pro_CodBarCBCODEMP: TFloatField
      FieldName = 'CBCODEMP'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODEMP'
    end
    object Tb_Pro_CodBarCBCODPRO: TFloatField
      FieldName = 'CBCODPRO'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODPRO'
    end
    object Tb_Pro_CodBarCBCODBAR: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'CBCODBAR'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBCODBAR'
    end
    object Tb_Pro_CodBarCBQTDMULT: TFloatField
      DisplayLabel = 'Multiplicado por'
      FieldName = 'CBQTDMULT'
      Origin = 'SG_ASSOC.CADPRO_CODBAR.CBQTDMULT'
    end
  end
end
