object Frm_Selmin: TFrm_Selmin
  Left = 65
  Top = -3
  Width = 696
  Height = 467
  Caption = 'Selecao de Minuta(s)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
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
      Width = 80
      Height = 13
      Caption = 'Cliente...............:'
    end
    object codtra: TEdit
      Left = 93
      Top = 31
      Width = 119
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = nometraChange
    end
    object nometra: TEdit
      Left = 224
      Top = 31
      Width = 429
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnChange = nometraChange
    end
    object DATAINI: TMaskEdit
      Left = 93
      Top = 8
      Width = 119
      Height = 19
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
      TabOrder = 0
      Text = '  /  /    '
      OnExit = DATAINIExit
    end
    object DATAFIN: TMaskEdit
      Left = 289
      Top = 8
      Width = 119
      Height = 19
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
      TabOrder = 1
      Text = '  /  /    '
      OnExit = DATAFINExit
    end
    object BitBtn3: TBitBtn
      Left = 582
      Top = 53
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BitBtn3Click
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 688
    Height = 352
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 686
      Height = 350
      TabStop = False
      Align = alClient
      Color = clBtnFace
      DataSource = DSCADMIN2
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2CODEMP'
          Title.Caption = 'Empresa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2CODMIN'
          Title.Caption = 'Minuta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2SEQ'
          Title.Caption = 'Seq.'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2NUMERO'
          Title.Caption = 'Numero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2CODIGO'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Title.Caption = 'Nome Cliente'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2VALOR'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2DTCONF'
          Title.Caption = 'Data Conf.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2NUMDOC'
          Title.Caption = 'Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2OBS02'
          Title.Caption = 'OBS02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2OBS03'
          Title.Caption = 'OBS03'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2USRCONF'
          Title.Caption = 'Usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOB'
          Title.Caption = 'Peso Bruto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOL'
          Title.Caption = 'Peso Liquido'
          Visible = True
        end>
    end
  end
  object DSCADMIN2: TDataSource
    DataSet = CADMIN2
    Left = 440
    Top = 176
  end
  object CADMIN2: TQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT  CM2CODEMP,CM2CODMIN ,CM2SEQ ,CM2TIPO ,CM2NUMERO ,CM2CLIF' +
        'OR ,CM2CODIGO ,CM2TIPDOC    '
      
        '       ,CM2NUMDOC,CM2VALOR  ,CM2OBS02 ,CM2OBS03 ,CM2DTCONF ,CM2U' +
        'SRCONF ,CM2LOTSEQ    '
      
        '       ,CM2LOTSEQ_CP ,CM2QTDVOL ,CM2PESOB,CM2PESOL, CRAZAO ,'#39' '#39' ' +
        'OK'
      'FROM CADMIN2, CADCLI WHERE'
      'CM2CODIGO = CCODCLI')
    UpdateMode = upWhereKeyOnly
    UpdateObject = UPCADMIN2
    Left = 360
    Top = 177
    object CADMIN2OK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object CADMIN2CM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
    end
    object CADMIN2CM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
    end
    object CADMIN2CM2SEQ: TFloatField
      FieldName = 'CM2SEQ'
    end
    object CADMIN2CM2TIPO: TStringField
      FieldName = 'CM2TIPO'
      Size = 2
    end
    object CADMIN2CM2NUMERO: TFloatField
      FieldName = 'CM2NUMERO'
    end
    object CADMIN2CM2CLIFOR: TStringField
      FieldName = 'CM2CLIFOR'
      Size = 2
    end
    object CADMIN2CM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
    end
    object CADMIN2CM2TIPDOC: TStringField
      FieldName = 'CM2TIPDOC'
      Size = 2
    end
    object CADMIN2CM2NUMDOC: TFloatField
      FieldName = 'CM2NUMDOC'
    end
    object CADMIN2CM2VALOR: TFloatField
      FieldName = 'CM2VALOR'
    end
    object CADMIN2CM2OBS02: TStringField
      FieldName = 'CM2OBS02'
      Size = 60
    end
    object CADMIN2CM2OBS03: TStringField
      FieldName = 'CM2OBS03'
      Size = 60
    end
    object CADMIN2CM2DTCONF: TDateTimeField
      FieldName = 'CM2DTCONF'
    end
    object CADMIN2CM2USRCONF: TFloatField
      FieldName = 'CM2USRCONF'
    end
    object CADMIN2CM2LOTSEQ: TFloatField
      FieldName = 'CM2LOTSEQ'
    end
    object CADMIN2CM2LOTSEQ_CP: TFloatField
      FieldName = 'CM2LOTSEQ_CP'
    end
    object CADMIN2CM2QTDVOL: TFloatField
      FieldName = 'CM2QTDVOL'
    end
    object CADMIN2CM2PESOB: TFloatField
      FieldName = 'CM2PESOB'
    end
    object CADMIN2CM2PESOL: TFloatField
      FieldName = 'CM2PESOL'
    end
    object CADMIN2CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 40
    end
  end
  object UPCADMIN2: TUpdateSQL
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
