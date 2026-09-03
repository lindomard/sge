object Frm_IndEnv_FatPed: TFrm_IndEnv_FatPed
  Left = 250
  Top = 163
  Width = 1115
  Height = 409
  Caption = 'Gerar Ordem de Produ'#231#227'o atrav'#233's de pedido de vendas'
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1107
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Gerar Ordem de Produ'#231#227'o atrav'#233's de pedido de vendas'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 91
    Width = 1107
    Height = 246
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 864
      Top = 1
      Width = 242
      Height = 244
      Align = alRight
      Caption = 'Chave das Ordem de Produ'#231#227'o:'
      TabOrder = 0
      object DBGrid_chaveop: TDBGrid
        Left = 2
        Top = 15
        Width = 238
        Height = 227
        Align = alClient
        DataSource = src_chaveop
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CHAVEOP'
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAOP'
            Title.Alignment = taCenter
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDFAB'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 863
      Height = 244
      Align = alClient
      DataSource = src_ped
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'GERAR'
          Title.Alignment = taCenter
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMPRO'
          Title.Alignment = taCenter
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNDPRO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCAPRO'
          Title.Alignment = taCenter
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPED'
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPROD'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_FALTA'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_LOCAL'
          Title.Alignment = taCenter
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_OUTROS'
          Title.Alignment = taCenter
          Width = 71
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 337
    Width = 1107
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbGerar: TBitBtn
      Left = 80
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Gerar OP'
      Enabled = False
      TabOrder = 0
      OnClick = bbGerarClick
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
    object BBSAIR: TBitBtn
      Left = 582
      Top = 8
      Width = 271
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 46
    Width = 1107
    Height = 45
    Align = alTop
    Caption = 'Pedido Origem:'
    TabOrder = 2
    object cb_todos: TCheckBox
      Left = 19
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Todos'
      TabOrder = 0
      OnClick = cb_todosClick
    end
  end
  object src_ped: TDataSource
    DataSet = qr_ped
    OnDataChange = src_pedDataChange
    Left = 680
    Top = 110
  end
  object qr_ped: TQuery
    CachedUpdates = True
    BeforePost = qr_pedBeforePost
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_ped
    Left = 680
    Top = 142
    object qr_pedCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object qr_pedNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 60
    end
    object qr_pedUNDPRO: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNDPRO'
      Size = 3
    end
    object qr_pedMARCAPRO: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCAPRO'
      Size = 40
    end
    object qr_pedQTDPED: TFloatField
      DisplayLabel = 'Qtd..Pedido'
      FieldName = 'QTDPED'
    end
    object qr_pedQTDPROD: TFloatField
      DisplayLabel = 'Qtd.Fabricado'
      FieldName = 'QTDPROD'
    end
    object qr_pedQTD_FALTA: TFloatField
      DisplayLabel = #224' fabricar'
      FieldName = 'QTD_FALTA'
    end
    object qr_pedGERAR: TStringField
      DisplayLabel = 'Gerar'
      FieldName = 'GERAR'
      Size = 1
    end
    object qr_pedprazoval_mes: TFloatField
      FieldName = 'prazoval_mes'
    end
    object qr_pedESTOQUE_LOCAL: TFloatField
      DisplayLabel = 'Estoque Filial 01'
      FieldName = 'ESTOQUE_LOCAL'
    end
    object qr_pedESTOQUE_OUTROS: TFloatField
      DisplayLabel = 'Outros Locais'
      FieldName = 'ESTOQUE_OUTROS'
    end
  end
  object src_chaveop: TDataSource
    DataSet = qr_chaveop
    Left = 736
    Top = 110
  end
  object qr_chaveop: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 736
    Top = 142
    object qr_chaveopCHAVEOP: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CHAVEOP'
    end
    object qr_chaveopDATAOP: TDateTimeField
      DisplayLabel = 'Data OP'
      FieldName = 'DATAOP'
    end
    object qr_chaveopQTDFAB: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTDFAB'
    end
  end
  object u_ped: TUpdateSQL
    Left = 698
    Top = 188
  end
end
