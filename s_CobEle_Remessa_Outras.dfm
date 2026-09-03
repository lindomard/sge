object Frm_CobEle_Remessa_Outras: TFrm_CobEle_Remessa_Outras
  Left = 417
  Top = 145
  Width = 754
  Height = 423
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Titulos e Remessas Bancarias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 73
    Align = alTop
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 736
      Height = 71
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'sdflsdkfj ksldf dsf'#13#10'sdf sdfl sfmsadfsd'#13#10'fdslkfj hsdlfs'#13#10'dfsdlfj' +
        'hdslaf'#13#10'sdfsadlfjlsf'
      Layout = tlCenter
      WordWrap = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 114
    Width = 738
    Height = 271
    Align = alClient
    Caption = 'Remessas Bancarias:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 734
      Height = 254
      Align = alClient
      DataSource = src_remessas
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'RECHAVE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECODBCO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REDATREM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENOSNUM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REDNOSNUM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECODBAR'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 738
    Height = 41
    Align = alTop
    TabOrder = 2
    object BBSAIR: TBitBtn
      Left = 288
      Top = 3
      Width = 196
      Height = 36
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBSAIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object src_remessas: TDataSource
    DataSet = qr_remessa
    Left = 280
    Top = 97
  end
  object qr_remessa: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 400
    Top = 56
    object qr_remessaRECHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'RECHAVE'
    end
    object qr_remessaRECODBCO: TFloatField
      DisplayLabel = 'Cod.Bcto'
      FieldName = 'RECODBCO'
    end
    object qr_remessaREDATREM: TDateTimeField
      DisplayLabel = 'Data Remessa'
      FieldName = 'REDATREM'
    end
    object qr_remessaRENOSNUM: TStringField
      DisplayLabel = 'Nosso Numero'
      FieldName = 'RENOSNUM'
    end
    object qr_remessaREDNOSNUM: TStringField
      DisplayLabel = 'D'
      FieldName = 'REDNOSNUM'
      Size = 1
    end
    object qr_remessaRECODBAR: TStringField
      DisplayLabel = 'Codigo de Barras'
      FieldName = 'RECODBAR'
      Size = 50
    end
  end
end
