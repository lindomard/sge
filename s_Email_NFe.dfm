object Frm_Email_NFe: TFrm_Email_NFe
  Left = 192
  Top = 117
  Width = 1044
  Height = 527
  Caption = 'Rela'#231#227'o de Email de  Notas de Entradas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 116
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 30
      Width = 160
      Height = 13
      Caption = 'E-Mails Recebidos no Periodo de:'
    end
    object Label2: TLabel
      Left = 356
      Top = 29
      Width = 6
      Height = 13
      Caption = #224
    end
    object edt_datini: TDateEdit
      Left = 217
      Top = 24
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 393
      Top = 23
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object rg_status: TRadioGroup
      Left = 535
      Top = 2
      Width = 485
      Height = 45
      Caption = 'Listar:'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        'Pendentes'
        'Baixado'
        'Ignorados'
        'Todos')
      TabOrder = 2
    end
    object bbSair: TBitBtn
      Left = 873
      Top = 58
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object bbAplicar: TBitBtn
      Left = 41
      Top = 60
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbAplicarClick
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
  object Panel_itens: TPanel
    Left = 0
    Top = 116
    Width = 1036
    Height = 204
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1034
      Height = 202
      Align = alClient
      DataSource = src_email_nfe
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ER_ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ER_DATA_REC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERA_CHAVE_PED_DEST'
          Title.Alignment = taCenter
          Width = 176
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERA_DATHOR_IMP'
          Title.Alignment = taCenter
          Width = 178
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERA_XML_CNPJ_EMIT'
          Title.Alignment = taCenter
          Width = 227
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 320
    Width = 1036
    Height = 176
    Align = alBottom
    Caption = 'Dados do XML:'
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 1032
      Height = 159
      Align = alClient
      DataField = 'ERA_ARQUIVO_XML'
      DataSource = src_email_nfe
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object src_email_nfe: TDataSource
    DataSet = qr_email_nfe
    Left = 304
    Top = 148
  end
  object qr_email_nfe: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM cadcli')
    Left = 344
    Top = 156
    object qr_email_nfeER_ID: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ER_ID'
    end
    object qr_email_nfeER_DATA_REC: TDateTimeField
      DisplayLabel = 'Data Recbto Email'
      FieldName = 'ER_DATA_REC'
    end
    object qr_email_nfeERA_DATHOR_IMP: TDateTimeField
      DisplayLabel = 'Data e Hora Importou'
      FieldName = 'ERA_DATHOR_IMP'
    end
    object qr_email_nfeERA_ARQUIVO_XML: TMemoField
      DisplayLabel = 'Arquivo Xml'
      FieldName = 'ERA_ARQUIVO_XML'
      BlobType = ftMemo
    end
    object qr_email_nfeERA_XML_CNPJ_EMIT: TStringField
      DisplayLabel = 'CNPJ do Emitente'
      FieldName = 'ERA_XML_CNPJ_EMIT'
      Size = 14
    end
    object qr_email_nfeERA_STATUS: TFloatField
      FieldName = 'ERA_STATUS'
    end
    object qr_email_nfeERA_CHAVE_PED_DEST: TFloatField
      DisplayLabel = 'Chave do Pedido de Compra'
      FieldName = 'ERA_CHAVE_PED_DEST'
    end
    object qr_email_nfeERA_ID: TFloatField
      FieldName = 'ERA_ID'
    end
  end
end
