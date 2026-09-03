object Frm_Empresas: TFrm_Empresas
  Left = 193
  Top = 114
  Width = 544
  Height = 328
  BorderIcons = [biSystemMenu]
  Caption = 'Conciliamento de Empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 536
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Selecione as Empresas a Serem Conciliadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 34
    Width = 536
    Height = 230
    Align = alTop
    Color = clInactiveCaptionText
    Ctl3D = False
    DataSource = Src_Emp
    FixedColor = clSkyBlue
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEMP'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO'
        ReadOnly = True
        Width = 394
        Visible = True
      end>
  end
  object bbSair: TBitBtn
    Left = 123
    Top = 264
    Width = 265
    Height = 29
    Caption = '&Sair'
    TabOrder = 1
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
  object Tb_Emp: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_EmpBeforeInsert
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' ok, CODEMP, RAZAO from CADEMP'
      'where STATUS<>9')
    UpdateObject = U_Emp
    Left = 304
    Top = 64
    object Tb_EmpOK: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Tb_EmpCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODEMP'
    end
    object Tb_EmpRAZAO: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'RAZAO'
      Size = 40
    end
  end
  object Src_Emp: TDataSource
    DataSet = Tb_Emp
    Left = 333
    Top = 64
  end
  object U_Emp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEMP'
      'set'
      '  OK = :OK,'
      '  CODEMP = :CODEMP,'
      '  RAZAO = :RAZAO'
      'where'
      '  OK = :OLD_OK and'
      '  CODEMP = :OLD_CODEMP')
    InsertSQL.Strings = (
      'insert into CADEMP'
      '  (OK, CODEMP, RAZAO)'
      'values'
      '  (:OK, :CODEMP, :RAZAO)')
    DeleteSQL.Strings = (
      'delete from CADEMP'
      'where'
      '  OK = :OLD_OK and'
      '  CODEMP = :OLD_CODEMP')
    Left = 362
    Top = 64
  end
end
