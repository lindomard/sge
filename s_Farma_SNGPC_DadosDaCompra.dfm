object Frm_Farma_SNGPC_DadosdaCompra: TFrm_Farma_SNGPC_DadosdaCompra
  Left = 192
  Top = 124
  Width = 1007
  Height = 578
  Caption = 'Dados da Compra'
  Color = 16766442
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 97
    Align = alTop
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 370
      Top = 16
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 587
      Top = 3
      Width = 98
      Height = 13
      Alignment = taCenter
      Caption = 'Listar os Pedidos'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MDT1: TDateEdit
      Left = 252
      Top = 8
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object MDT2: TDateEdit
      Left = 397
      Top = 8
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object tipo_dados: TCheckListBox
      Left = 585
      Top = 18
      Width = 101
      Height = 47
      Color = 16776176
      Columns = 1
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Incompletos'
        'Completos'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 2
    end
    object bbExportar: TBitBtn
      Left = 394
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Gerar Agora'
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 727
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
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
    object bbAtualizar: TBitBtn
      Left = 2
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Atualizar Agora'
      TabOrder = 3
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
  end
  object gb_pedenc: TGroupBox
    Left = 0
    Top = 97
    Width = 991
    Height = 168
    Align = alTop
    Caption = 'Pedidos encontrados:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 987
      Height = 151
      Align = alClient
      DataSource = src_pedfor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PF1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Width = 361
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1TOTLIQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1DATANF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FBAIRRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUF'
          Width = 24
          Visible = True
        end>
    end
  end
  object gb_itensped: TGroupBox
    Left = 0
    Top = 265
    Width = 991
    Height = 177
    Align = alClient
    Caption = 'Itens do Pedido:'
    TabOrder = 2
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 987
      Height = 160
      Align = alClient
      DataSource = Src_ItensPed
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
          FieldName = 'PF2CODPRO'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2ITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2PU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2TOTDES'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2QTDP'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 467
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 43
          Visible = True
        end>
    end
  end
  object gb_dadositens: TGroupBox
    Left = 0
    Top = 442
    Width = 991
    Height = 98
    Align = alBottom
    Caption = 'Dados do '#205'tem:'
    TabOrder = 3
    object Label12: TLabel
      Left = 18
      Top = 25
      Width = 49
      Height = 13
      Caption = 'N'#250'm Lote:'
    end
    object Label13: TLabel
      Left = 607
      Top = 25
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label17: TLabel
      Left = 184
      Top = 24
      Width = 99
      Height = 13
      Caption = 'Data Fabrica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 392
      Top = 24
      Width = 102
      Height = 13
      Caption = 'Data Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 776
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Gerar SNGPC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_numlot: TEdit
      Left = 72
      Top = 22
      Width = 107
      Height = 21
      MaxLength = 20
      TabOrder = 1
    end
    object edt_quant: TEdit
      Left = 667
      Top = 20
      Width = 108
      Height = 21
      TabStop = False
      Color = 11599792
      ReadOnly = True
      TabOrder = 4
    end
    object ALTERAR: TBitBtn
      Left = 1
      Top = 53
      Width = 150
      Height = 25
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 745
      Top = 53
      Width = 150
      Height = 25
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = GRAVARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object edt_datfab: TDateEdit
      Left = 283
      Top = 20
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object edt_datven: TDateEdit
      Left = 498
      Top = 20
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object CB_SNGPC_ENVIAR: TComboBox
      Left = 861
      Top = 19
      Width = 67
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 5
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
  end
  object Qr_PedFor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF1CHAVE,PF1LOTSEQ,PF1CODEMP,PF1CODFOR,PF1TOTLIQ,PF1DATAN' +
        'F,PF1NUMNF,FRAZAO,'
      'FBAIRRO,FCIDADE,FUF'
      'FROM CADPF1,CADFOR'
      'WHERE  FCODFOR=PF1CODFOR')
    Left = 240
    Top = 49
    object Qr_PedForPF1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Qr_PedForPF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Qr_PedForPF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Qr_PedForPF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_PedForPF1TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_PedForPF1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Qr_PedForPF1NUMNF: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_PedForFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Qr_PedForFBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'FBAIRRO'
      Origin = 'SG_ASSOC.CADFOR.FBAIRRO'
      Size = 30
    end
    object Qr_PedForFCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FCIDADE'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 30
    end
    object Qr_PedForFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
  end
  object src_pedfor: TDataSource
    DataSet = Qr_PedFor
    OnDataChange = src_pedforDataChange
    Left = 272
    Top = 56
  end
  object Src_ItensPed: TDataSource
    DataSet = Qr_ItensPed
    OnDataChange = Src_ItensPedDataChange
    Left = 472
    Top = 48
  end
  object Qr_ItensPed: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF2CHAVE,PF2CODEMP,PF2LOTSEQ,PF2CODPRO,PF2ITEM,PF2PU,PF2T' +
        'OTDES,PF2QTDP,PDNOME,PDUND'
      'FROM CADPF2,CADPRO'
      'WHERE  PDCODPRO=PF2CODPRO')
    Left = 512
    Top = 49
    object Qr_ItensPedPF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_ItensPedPF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_ItensPedPF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_ItensPedPF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_ItensPedPF2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_ItensPedPF2PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_ItensPedPF2TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_ItensPedPF2QTDP: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_ItensPedPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr_ItensPedPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Src_DadosComp: TDataSource
    DataSet = Qr_DadosComp
    Left = 632
    Top = 40
  end
  object Qr_DadosComp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PF2L_CODEMP'
      ',PF2L_CODPRO'
      ',PF2L_LOTSEQ'
      ',PF2L_CHAVE'
      ',PF2L_ITEM'
      ',PF2L_LOTE'
      ',PF2L_DTFAB'
      ',PF2L_DTVCTO'
      ',PF2L_QTD'
      ',PF2L_SNGPC_ENVIAR'
      
        '-- ,CASE WHEN PF2L_SNGPC_ENVIAR='#39'S'#39' THEN '#39'Sim'#39' else '#39'Nao'#39' end as' +
        ' ENVIAR'
      'from cadpf2_lotes_orc')
    Left = 672
    Top = 41
    object Qr_DadosCompPF2L_CODEMP: TFloatField
      FieldName = 'PF2L_CODEMP'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_CODEMP'
    end
    object Qr_DadosCompPF2L_CODPRO: TFloatField
      FieldName = 'PF2L_CODPRO'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_CODPRO'
    end
    object Qr_DadosCompPF2L_LOTSEQ: TFloatField
      FieldName = 'PF2L_LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTSEQ'
    end
    object Qr_DadosCompPF2L_CHAVE: TFloatField
      FieldName = 'PF2L_CHAVE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_CHAVE'
    end
    object Qr_DadosCompPF2L_ITEM: TFloatField
      FieldName = 'PF2L_ITEM'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_ITEM'
    end
    object Qr_DadosCompPF2L_LOTE: TStringField
      FieldName = 'PF2L_LOTE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTE'
    end
    object Qr_DadosCompPF2L_DTFAB: TDateTimeField
      FieldName = 'PF2L_DTFAB'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_DTFAB'
    end
    object Qr_DadosCompPF2L_DTVCTO: TDateTimeField
      FieldName = 'PF2L_DTVCTO'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_DTVCTO'
    end
    object Qr_DadosCompPF2L_QTD: TFloatField
      FieldName = 'PF2L_QTD'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_QTD'
    end
    object Qr_DadosCompPF2L_SNGPC_ENVIAR: TStringField
      FieldName = 'PF2L_SNGPC_ENVIAR'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_SNGPC_ENVIAR'
      Size = 1
    end
  end
end
