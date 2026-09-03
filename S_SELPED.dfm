object Frm_SelPed: TFrm_SelPed
  Left = 190
  Top = 101
  Width = 696
  Height = 480
  Caption = 'Selecao de Pedido(s)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 13
      Width = 83
      Height = 13
      Caption = 'Data Inicial.........:'
    end
    object Label2: TLabel
      Left = 226
      Top = 14
      Width = 60
      Height = 13
      Caption = 'Data Final...:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 78
      Height = 13
      Caption = 'Transportadora.:'
    end
    object codtra: TEdit
      Left = 93
      Top = 31
      Width = 119
      Height = 19
      TabStop = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = codtraExit
      OnKeyPress = codtraKeyPress
    end
    object NOMTRA: TEdit
      Left = 224
      Top = 31
      Width = 429
      Height = 19
      TabStop = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object MDT1: TMaskEdit
      Left = 93
      Top = 8
      Width = 119
      Height = 19
      TabStop = False
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 289
      Top = 8
      Width = 119
      Height = 19
      TabStop = False
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object bbMarcar: TBitBtn
      Left = 4
      Top = 54
      Width = 168
      Height = 25
      Cursor = crHandPoint
      Caption = 'Marca Todos '
      TabOrder = 4
      OnClick = bbMarcarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbDesmarcar: TBitBtn
      Left = 192
      Top = 53
      Width = 168
      Height = 25
      Cursor = crHandPoint
      Caption = 'Desmarca Todos'
      TabOrder = 5
      OnClick = bbDesmarcarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 470
      Top = 53
      Width = 168
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
      OnClick = bbSairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object CB_EMITIDAS: TCheckBox
      Left = 421
      Top = 9
      Width = 204
      Height = 17
      Caption = 'Selecionar Tambem ja Emitidas'
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 680
    Height = 361
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 678
      Height = 359
      TabStop = False
      Align = alClient
      Color = clBtnFace
      DataSource = DSCADP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'OK'
          Width = 18
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODEMP'
          Title.Caption = 'Empresa'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Title.Caption = 'Num. Nota'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Title.Caption = 'Chave'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Title.Caption = 'Cliente'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Title.Caption = 'Razao Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1PREVENT'
          Title.Caption = 'Dt.Faturamento'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Title.Caption = 'Total Nota'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TIPO'
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1QTDVOL'
          Title.Caption = 'Qtde Volume'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1PESOB'
          Title.Caption = 'Peso Bruto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1PESOL'
          Title.Caption = 'Peso Liquido'
          Visible = True
        end>
    end
  end
  object DSCADP01: TDataSource
    DataSet = CADP01
    Left = 440
    Top = 176
  end
  object CADP01: TQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select p1codemp,p1chave,p1datanf,p1numnf,p1obs1,p1obs2,p1obs3,'
      '          p1codtra,crazao,p1totall,p1codcli,p1lotseq,p1prevent,'
      
        '          p1tipo,p1qtdvol,p1pesob,p1pesol,p1minuta,p1valfre,p1ba' +
        'nco'
      '         ,'#39' '#39' OK'
      'from cadp01,cadcli'
      'where'
      'p1codcli = ccodcli  ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UPCADP01
    Left = 360
    Top = 177
    object CADP01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object CADP01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object CADP01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
    end
    object CADP01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
    end
    object CADP01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
    end
    object CADP01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 40
    end
    object CADP01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
    end
    object CADP01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
    end
    object CADP01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
    end
    object CADP01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
    end
    object CADP01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
    end
    object CADP01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
    end
    object CADP01OK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object CADP01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
    end
    object CADP01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
    end
    object CADP01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
    end
    object CADP01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
    end
    object CADP01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
    end
    object CADP01P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object CADP01P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object CADP01P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
  end
  object UPCADP01: TUpdateSQL
    ModifySQL.Strings = (
      'update cadp01'
      'set'
      '  OK = :OK'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1CODTRA = :OLD_P1CODTRA')
    InsertSQL.Strings = (
      'insert into cadp01'
      '  (OK)'
      'values'
      '  (:OK)')
    DeleteSQL.Strings = (
      'delete from cadp01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1CODTRA = :OLD_P1CODTRA')
    Left = 272
    Top = 176
  end
end
