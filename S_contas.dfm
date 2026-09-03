object Frm_Contas: TFrm_Contas
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Contas que Utilizam o Centro de Custo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 359
    Align = alClient
    DataSource = src_contas
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cta_tipo_conta'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_numero'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_desd'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_participante'
        Title.Alignment = taCenter
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_dtemis'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_dtvcto'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cta_valor'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end>
  end
  object Panel_rodape: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbSair: TBitBtn
      Left = 333
      Top = 6
      Width = 228
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
  object src_contas: TDataSource
    DataSet = qr_contas
    Left = 400
    Top = 160
  end
  object qr_contas: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 440
    Top = 160
    object qr_contascta_tipo_conta: TStringField
      DisplayLabel = 'Tipo da Conta'
      FieldName = 'cta_tipo_conta'
      Size = 10
    end
    object qr_contascta_desd: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'cta_desd'
      Size = 2
    end
    object qr_contascta_participante: TStringField
      DisplayLabel = 'Participante'
      FieldName = 'cta_participante'
      Size = 100
    end
    object qr_contascta_dtvcto: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'cta_dtvcto'
    end
    object qr_contascta_dtemis: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'cta_dtemis'
    end
    object qr_contascta_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'cta_valor'
    end
    object qr_contascta_numero: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'cta_numero'
    end
  end
end
