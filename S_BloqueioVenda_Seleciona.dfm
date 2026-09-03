object Frm_BloqueioVenda_Seleciona: TFrm_BloqueioVenda_Seleciona
  Left = 14
  Top = 114
  Width = 757
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Selecionar Registros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RG_TPPESQ: TRadioGroup
    Left = 0
    Top = 0
    Width = 749
    Height = 50
    Align = alTop
    Caption = 'Pesquisar Por:'
    Color = 16769520
    Columns = 3
    Ctl3D = False
    Items.Strings = (
      'Descri'#231#227'o'
      'C'#243'digo'
      'Nome do Fabricante')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 50
    Width = 749
    Height = 40
    Align = alTop
    Caption = 'Conte'#250'do:'
    Color = 16769520
    Ctl3D = True
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object CONTEUDO: TEdit
      Left = 2
      Top = 14
      Width = 528
      Height = 21
      Color = 13303807
      TabOrder = 0
      OnChange = CONTEUDOChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 90
    Width = 749
    Height = 32
    Align = alTop
    BorderStyle = bsSingle
    Color = 16769520
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object cb_todos: TCheckBox
      Left = 4
      Top = 5
      Width = 131
      Height = 19
      Caption = 'Selecionar Todos'
      Color = 16769520
      ParentColor = False
      TabOrder = 0
      OnEnter = cb_todosEnter
      OnExit = cb_todosExit
    end
    object bbSair: TBitBtn
      Left = 616
      Top = 2
      Width = 129
      Height = 25
      Caption = 'Cancelar &Sair'
      TabOrder = 2
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
    object bbIncluir: TBitBtn
      Left = 322
      Top = 4
      Width = 129
      Height = 25
      Caption = '&Incluir Selecionados'
      TabOrder = 1
      OnClick = bbIncluirClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 122
    Width = 749
    Height = 192
    Align = alClient
    Color = clWhite
    DataSource = Src_Consulta
    FixedColor = 16773874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
  end
  object Panel2: TPanel
    Left = 0
    Top = 314
    Width = 749
    Height = 27
    Align = alBottom
    TabOrder = 4
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 109
      Height = 13
      Caption = 'Total de Registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 509
      Top = 8
      Width = 138
      Height = 13
      Caption = 'Registros Selecionados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ST_QTDREG: TStaticText
      Left = 123
      Top = 5
      Width = 90
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 0
    end
    object ST_QTDSEL: TStaticText
      Left = 653
      Top = 5
      Width = 90
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 1
    end
  end
  object Qr_Consulta: TQuery
    CachedUpdates = True
    BeforeEdit = Qr_ConsultaBeforeEdit
    AfterPost = Qr_ConsultaAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' as ok'
      'from CADPRO')
    UpdateObject = U_Consulta
    Left = 240
    Top = 16
    object Qr_ConsultaOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
  end
  object Src_Consulta: TDataSource
    DataSet = Qr_Consulta
    Left = 272
    Top = 16
  end
  object U_Consulta: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  OK = :OK'
      'where'
      '  OK = :OLD_OK')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (OK)'
      'values'
      '  (:OK)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  OK = :OLD_OK')
    Left = 312
    Top = 16
  end
end
