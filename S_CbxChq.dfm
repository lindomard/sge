object Frm_CBxChq: TFrm_CBxChq
  Left = 256
  Top = 138
  Width = 544
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consultas Baixas de Cheques '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 13
      Caption = 'Procurar por:'
    end
    object CB_TIPO: TComboBox
      Left = 89
      Top = 4
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_TIPOExit
      Items.Strings = (
        'N'#250'mero do lote'
        'Data do lote')
    end
    object NOME: TMaskEdit
      Left = 238
      Top = 4
      Width = 164
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object BitBtn1: TBitBtn
      Left = 408
      Top = 4
      Width = 89
      Height = 23
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 536
    Height = 269
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 267
      Align = alClient
      DataSource = Src_BxChq
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'BL1CHAVE'
          Title.Caption = 'Lote'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BL1DATA'
          Title.Caption = 'Data'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BL1OBS01'
          Title.Caption = 'Observacoes'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BL1OBS02'
          Title.Caption = 'Observa'#231#245'es'
          Width = 238
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BL1OBS03'
          Title.Caption = 'Observa'#231#245'es'
          Width = 238
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 171
      Top = 5
      Width = 185
      Height = 30
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BitBtn2Click
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
  object Qr_BxChq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADBCL01')
    Left = 456
    Top = 8
    object Qr_BxChqBL1CODEMP: TFloatField
      FieldName = 'BL1CODEMP'
      Origin = 'SG_ASSOC.CADBCL01.BL1CODEMP'
    end
    object Qr_BxChqBL1CHAVE: TFloatField
      FieldName = 'BL1CHAVE'
      Origin = 'SG_ASSOC.CADBCL01.BL1CHAVE'
    end
    object Qr_BxChqBL1DATA: TDateTimeField
      FieldName = 'BL1DATA'
      Origin = 'SG_ASSOC.CADBCL01.BL1DATA'
    end
    object Qr_BxChqBL1OBS01: TStringField
      FieldName = 'BL1OBS01'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS01'
      Size = 60
    end
    object Qr_BxChqBL1OBS02: TStringField
      FieldName = 'BL1OBS02'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS02'
      Size = 60
    end
    object Qr_BxChqBL1OBS03: TStringField
      FieldName = 'BL1OBS03'
      Origin = 'SG_ASSOC.CADBCL01.BL1OBS03'
      Size = 60
    end
  end
  object Src_BxChq: TDataSource
    DataSet = Qr_BxChq
    Left = 496
    Top = 8
  end
end
