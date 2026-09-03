object Frm_CMOVPRO: TFrm_CMOVPRO
  Left = 172
  Top = 231
  Width = 620
  Height = 307
  Caption = 'Extrato do Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 52
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Produto..:'
    end
    object Label2: TLabel
      Left = 8
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Periodo..:'
    end
    object Label3: TLabel
      Left = 184
      Top = 29
      Width = 6
      Height = 13
      Caption = #224
    end
    object btn_ras: TButton
      Left = 336
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Rastrear'
      TabOrder = 3
      OnClick = btn_rasClick
    end
    object edt_codpro: TEdit
      Left = 56
      Top = 3
      Width = 89
      Height = 21
      TabOrder = 0
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object edt_nome_produto: TEdit
      Left = 144
      Top = 3
      Width = 465
      Height = 21
      Color = 16776176
      ReadOnly = True
      TabOrder = 6
    end
    object btn_imp: TButton
      Left = 432
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = btn_impClick
    end
    object btn_close: TButton
      Left = 528
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = btn_closeClick
    end
    object DTINI: TDateEdit
      Left = 56
      Top = 25
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DTFIN: TDateEdit
      Left = 200
      Top = 25
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 52
    Width = 604
    Height = 217
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FORMULARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOV'
        Title.Caption = 'MOVIMENTA'#199#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'DATA E HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO_ANTERIOR'
        Title.Caption = 'SALDO ANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTRADA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAIDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVA'#199#195'O'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT'
      '      cmpform as formulario, '
      '      cmpdata as data,'
      '      cmpcodpro as codigo, '
      
        '      case when cmptpmov=0 then '#39'Entrada'#39' when cmptpmov=1 then '#39 +
        'Saida'#39' end as Mov, '
      '      cmpestant as Saldo_Anterior, '
      '      DECODE(cmptpmov,0,cmpqtd,0) AS ENTRADA,'
      '      DECODE(cmptpmov,0,0,cmpqtd) AS SAIDA,'
      
        '      case when cmptpmov=0 then cmpestant+cmpqtd when cmptpmov=1' +
        ' then cmpestant-cmpqtd end as SALDO,'
      '      cmpobs as Observa'#231#227'o'
      ' FROM CMOVPRO order by cmplotseq desc')
    Left = 240
    Top = 120
    object Query1FORMULARIO: TStringField
      FieldName = 'FORMULARIO'
      Size = 10
    end
    object Query1CODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Query1MOV: TStringField
      FieldName = 'MOV'
      FixedChar = True
      Size = 7
    end
    object Query1SALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object Query1ENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object Query1SAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object Query1SALDO: TFloatField
      FieldName = 'SALDO'
    end
    object Query1OBSERVAO: TStringField
      FieldName = 'OBSERVA'#199#195'O'
      Size = 200
    end
    object Query1DATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
end
