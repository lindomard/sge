object Frm_SBco: TFrm_SBco
  Left = 192
  Top = 108
  Width = 544
  Height = 375
  Caption = 'Saldo Bancario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 303
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 140
      Top = 8
      Width = 257
      Height = 25
      Cursor = crHandPoint
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 47
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 5
      Width = 148
      Height = 13
      Caption = 'Nome do Banco para Consulta:'
    end
    object NOMBCO: TEdit
      Left = 13
      Top = 21
      Width = 362
      Height = 21
      TabOrder = 0
      OnChange = NOMBCOChange
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 47
    Width = 536
    Height = 256
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 254
      Align = alClient
      DataSource = Src_Bco
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BCCODBCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BCBANCO'
          Width = 191
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BCSALDO'
          Width = 197
          Visible = True
        end>
    end
  end
  object Src_Bco: TDataSource
    DataSet = Qr_Bco
    Left = 110
    Top = 81
  end
  object Qr_Bco: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select BCCODBCO,BCBANCO,BCSALDO from CADBCO  '
      '               Where BCCODEMP=1'
      '               order by BCBANCO')
    Left = 148
    Top = 84
    object Qr_BcoBCBANCO: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
    end
    object Qr_BcoBCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'BCSALDO'
      Origin = 'SG_ASSOC.CADBCO.BCSALDO'
      currency = True
    end
    object Qr_BcoBCCODBCO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BCCODBCO'
      Origin = 'SG_ASSOC.CADBCO.BCCODBCO'
    end
  end
end
