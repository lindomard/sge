object Frm_Caixa_ConcManual: TFrm_Caixa_ConcManual
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Frm_Caixa_ConcManual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 41
    Align = alTop
    Caption = 'Concilia'#231#227'o Bancaria Manual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 920
    Height = 173
    Align = alTop
    Caption = 'Filtros:'
    TabOrder = 1
    object Label1: TLabel
      Left = 248
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Periodo de'
    end
    object Label2: TLabel
      Left = 520
      Top = 16
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label3: TLabel
      Left = 270
      Top = 40
      Width = 41
      Height = 13
      Caption = 'Banco:'
    end
    object edt_datini: TDateEdit
      Left = 320
      Top = 14
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edt_datiniExit
    end
    object edt_datfin: TDateEdit
      Left = 576
      Top = 12
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edt_datfinExit
    end
    object edt_codbco: TEdit
      Left = 320
      Top = 37
      Width = 70
      Height = 21
      TabOrder = 2
      OnExit = edt_codbcoExit
      OnKeyPress = edt_codbcoKeyPress
    end
    object edt_nombco: TEdit
      Left = 392
      Top = 37
      Width = 433
      Height = 21
      TabStop = False
      Color = 15335378
      ReadOnly = True
      TabOrder = 3
    end
    object bbAtualizar: TBitBtn
      Left = 16
      Top = 140
      Width = 180
      Height = 25
      Caption = 'Atualiza'
      TabOrder = 5
      OnClick = bbAtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 648
      Top = 140
      Width = 180
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
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
    object RG_CONTAS: TRadioGroup
      Left = 320
      Top = 64
      Width = 185
      Height = 62
      Caption = 'Listar Contas'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Conciliadas'
        'Todas')
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 214
    Width = 920
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label4: TLabel
      Left = 248
      Top = 16
      Width = 102
      Height = 13
      Caption = 'Data Concilia'#231#227'o:'
    end
    object edt_datconc: TDateEdit
      Left = 358
      Top = 14
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edt_datiniExit
    end
    object bbAplicar: TBitBtn
      Left = 483
      Top = 11
      Width = 180
      Height = 25
      Caption = 'Aplicar nos Pendentes'
      TabOrder = 1
      OnClick = bbAplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 255
    Width = 920
    Height = 194
    Align = alClient
    Caption = 'Lan'#231'amentos:'
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 916
      Height = 177
      Align = alClient
      DataSource = src_ldr
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DATADP'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAREAL'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATCONC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDOC'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCMV'
          Visible = True
        end>
    end
  end
  object Query_ldr: TQuery
    CachedUpdates = True
    AfterPost = Query_ldrAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT DATADP,CODEMP,CODLDR'
      ',DATAREAL,VALORR,DATCONC,CODBCO,NUMDOC,DESCMV '
      'FROM CADLDR')
    UpdateObject = U_ldr
    Left = 120
    Top = 57
    object Query_ldrDATADP: TDateTimeField
      DisplayLabel = 'Data Prevista'
      FieldName = 'DATADP'
      Origin = 'SG_ASSOC.CADLDR.DATADP'
    end
    object Query_ldrCODLDR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODLDR'
      Origin = 'SG_ASSOC.CADLDR.CODLDR'
    end
    object Query_ldrDATAREAL: TDateTimeField
      DisplayLabel = 'Data Real'
      FieldName = 'DATAREAL'
      Origin = 'SG_ASSOC.CADLDR.DATAREAL'
    end
    object Query_ldrVALORR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALORR'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Query_ldrDATCONC: TDateTimeField
      DisplayLabel = 'Data Concilia'#231#227'o'
      FieldName = 'DATCONC'
      Origin = 'SG_ASSOC.CADLDR.DATCONC'
    end
    object Query_ldrCODBCO: TFloatField
      DisplayLabel = 'C'#243'd. Bco'
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADLDR.CODBCO'
    end
    object Query_ldrNUMDOC: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object Query_ldrDESCMV: TStringField
      DisplayLabel = 'Descri'#231#227'o do Movimento'
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 60
    end
    object Query_ldrCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADLDR.CODEMP'
    end
  end
  object src_ldr: TDataSource
    DataSet = Query_ldr
    Left = 160
    Top = 65
  end
  object U_ldr: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLDR'
      'set'
      '  DATADP = :DATADP,'
      '  CODLDR = :CODLDR,'
      '  DATAREAL = :DATAREAL,'
      '  VALORR = :VALORR,'
      '  DATCONC = :DATCONC,'
      '  CODBCO = :CODBCO,'
      '  NUMDOC = :NUMDOC,'
      '  DESCMV = :DESCMV'
      'where'
      '  CODLDR = :OLD_CODLDR')
    InsertSQL.Strings = (
      'insert into CADLDR'
      
        '  (DATADP, CODLDR, DATAREAL, VALORR, DATCONC, CODBCO, NUMDOC, DE' +
        'SCMV)'
      'values'
      
        '  (:DATADP, :CODLDR, :DATAREAL, :VALORR, :DATCONC, :CODBCO, :NUM' +
        'DOC, :DESCMV)')
    DeleteSQL.Strings = (
      'delete from CADLDR'
      'where'
      '  CODLDR = :OLD_CODLDR')
    Left = 192
    Top = 57
  end
end
