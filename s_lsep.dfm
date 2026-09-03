object Frm_lsep: TFrm_lsep
  Left = 192
  Top = 117
  Width = 1047
  Height = 480
  Caption = 'Lista de Separa'#231#227'o'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gb_cabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 1039
    Height = 137
    Align = alTop
    Caption = 'Filtros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 423
      Top = 14
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Final:'
    end
    object Label3: TLabel
      Left = 675
      Top = 46
      Width = 66
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Separador:'
    end
    object Label39: TLabel
      Left = 40
      Top = 55
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
    end
    object Label4: TLabel
      Left = 39
      Top = 74
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '% Prioridade Inicial:'
    end
    object Label5: TLabel
      Left = 422
      Top = 72
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '% Prioridade Final:'
    end
    object Label6: TLabel
      Left = 39
      Top = 92
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave Inicial:'
    end
    object Label7: TLabel
      Left = 422
      Top = 90
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave Final:'
    end
    object Label8: TLabel
      Left = 36
      Top = 37
      Width = 142
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo Cliente:'
    end
    object edt_data_inicial: TDateEdit
      Left = 186
      Top = 14
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_data_final: TDateEdit
      Left = 576
      Top = 13
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = edt_data_finalEnter
    end
    object edt_codcli: TEdit
      Left = 186
      Top = 32
      Width = 92
      Height = 19
      Hint = 'Pressione <F2> para Consultar Pedidos'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = edt_codcliExit
      OnKeyPress = edt_codcliKeyPress
    end
    object edt_nomcli: TEdit
      Left = 277
      Top = 32
      Width = 391
      Height = 19
      TabStop = False
      Color = 14994379
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Todos...'
    end
    object edt_codven: TEdit
      Left = 186
      Top = 50
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_codvenExit
      OnKeyPress = edt_codvenKeyPress
    end
    object edt_nomsep: TEdit
      Left = 800
      Top = 43
      Width = 235
      Height = 19
      TabStop = False
      Color = 14994379
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object edt_codprior_ini: TEdit
      Left = 186
      Top = 68
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edt_codprior_iniExit
    end
    object edt_codprior_fin: TEdit
      Left = 576
      Top = 68
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = edt_codprior_finExit
    end
    object bbAtualizar: TBitBtn
      Left = 675
      Top = 8
      Width = 360
      Height = 34
      Caption = '&Atualizar as Informa'#231#245'es'
      TabOrder = 8
      OnClick = bbAtualizarClick
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
    object edt_chave_ini: TEdit
      Left = 186
      Top = 86
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edt_chave_iniExit
    end
    object edt_chave_fin: TEdit
      Left = 576
      Top = 86
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnExit = edt_chave_finExit
    end
    object bbImprimir: TBitBtn
      Left = 675
      Top = 63
      Width = 360
      Height = 34
      Caption = 'Imprimir'
      TabOrder = 12
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 675
      Top = 97
      Width = 360
      Height = 34
      Caption = '&Sair'
      TabOrder = 9
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
    object edt_codsep: TEdit
      Left = 742
      Top = 43
      Width = 59
      Height = 19
      Hint = 'Pressione <F2> para Consultar Pedidos'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnExit = edt_codsepExit
      OnKeyPress = edt_codsepKeyPress
    end
    object edt_nomven: TEdit
      Left = 276
      Top = 50
      Width = 391
      Height = 19
      TabStop = False
      Color = 14994379
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
      Text = 'Todos...'
    end
  end
  object gb_relped: TGroupBox
    Left = 0
    Top = 137
    Width = 1039
    Height = 182
    Align = alTop
    Caption = 'Rela'#231#227'o dos Pedidos:'
    TabOrder = 1
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 1035
      Height = 165
      Align = alClient
      DataSource = src_ped01
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
          FieldName = 'P1CODPRIOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NAUT'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZSOC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 319
    Width = 1039
    Height = 130
    Align = alClient
    Caption = #205'tens do Pedido'
    TabOrder = 2
    object DBGrid_ped02: TDBGrid
      Left = 2
      Top = 15
      Width = 1035
      Height = 113
      Align = alClient
      DataSource = src_ped02
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
          FieldName = 'P2CODPRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2ITEM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 477
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTDES'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTLIQ'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object qr_ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT P1CODEMP,P1LOTSEQ,P1CHAVE,P1CODPRIOR,P1NAUT,CASE WHEN CFR' +
        'AZAO IS NULL THEN CRAZAO ELSE CFRAZAO END AS RAZSOC'
      ',P1DATAP,P1TOTALL,P1CODCLI,P1CODVEN,P1QTDDECPU'
      'FROM CADP01'
      
        'LEFT JOIN CADCSF ON (CFCODEMP = P1CODEMP AND CFLOTSEQ=P1LOTSEQ A' +
        'ND CFCHAVEP = P1CHAVE)'
      ',CADCLI'
      'WHERE CCODCLI=P1CODCLI'
      'AND P1STATUS=0'
      'AND P1TIPO>0')
    Left = 440
    Top = 194
    object qr_ped01P1CODPRIOR: TFloatField
      DisplayLabel = '% Prioridade'
      FieldName = 'P1CODPRIOR'
    end
    object qr_ped01P1NAUT: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'P1NAUT'
      Size = 40
    end
    object qr_ped01P1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
    end
    object qr_ped01RAZSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZSOC'
      Size = 100
    end
    object qr_ped01P1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
    end
    object qr_ped01P1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
    end
    object qr_ped01P1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd Cliente'
      FieldName = 'P1CODCLI'
    end
    object qr_ped01P1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd Vendedor'
      FieldName = 'P1CODVEN'
    end
    object qr_ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object qr_ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
    end
    object qr_ped01P1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
    end
  end
  object src_ped01: TDataSource
    DataSet = qr_ped01
    OnDataChange = src_ped01DataChange
    Left = 512
    Top = 202
  end
  object Qr_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P2CODPRO,P2ITEM,PDNOME,PDUND,P2QTD,P2PRECO,P2TOTDES,P2TOT' +
        'LIQ '
      'FROM CADP02,CADPRO'
      'WHERE PDCODPRO=P2CODPRO')
    Left = 464
    Top = 242
    object Qr_Ped02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped02P2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_Ped02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr_Ped02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02P2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped02P2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_Ped02P2TOTDES: TFloatField
      DisplayLabel = 'Total dos Descontos'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_Ped02P2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
  end
  object src_ped02: TDataSource
    DataSet = Qr_Ped02
    Left = 608
    Top = 232
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 464
    Top = 64
  end
end
