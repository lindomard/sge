object Frm_Ped_DevCons: TFrm_Ped_DevCons
  Left = 17
  Top = 9
  Width = 739
  Height = 561
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Controle de Devolu'#231#245'es de Embalagens/Produtos Consignados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gbCabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 731
    Height = 156
    Align = alTop
    Caption = 'Filtrar:'
    TabOrder = 0
    object Label1: TLabel
      Left = 35
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 55
      Top = 43
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 43
      Top = 84
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MDT1: TMaskEdit
      Left = 93
      Top = 22
      Width = 71
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 237
      Top = 22
      Width = 71
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_LISTAR: TRadioGroup
      Left = 567
      Top = 17
      Width = 141
      Height = 66
      Caption = 'Listar:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Devolvidos'
        'Todos')
      ParentCtl3D = False
      TabOrder = 8
    end
    object bbSelecionar: TBitBtn
      Left = 91
      Top = 125
      Width = 108
      Height = 25
      Hint = 'Seleciona as Consigna'#231#245'es de Acordo Com a Op'#231#227'o Acima'
      Caption = 'Selecionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bbSelecionarClick
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
    object bbSair: TBitBtn
      Left = 456
      Top = 126
      Width = 108
      Height = 25
      Hint = 'click aqui para sair do programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
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
    object CODCLI: TEdit
      Left = 93
      Top = 40
      Width = 71
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 163
      Top = 40
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 95
      Top = 62
      Width = 53
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object CODVEN: TEdit
      Left = 93
      Top = 81
      Width = 71
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object lbx_codven: TListBox
      Left = 163
      Top = 81
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codvenKeyDown
    end
    object OMITIR_VEN: TCheckBox
      Left = 95
      Top = 103
      Width = 53
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
  end
  object gbDetalhes: TGroupBox
    Left = 0
    Top = 156
    Width = 731
    Height = 171
    Align = alClient
    Caption = 'Registros Selecionados:'
    TabOrder = 1
    object DBGrid_regsel: TDBGrid
      Left = 2
      Top = 15
      Width = 727
      Height = 154
      Align = alClient
      DataSource = Src_PedConsig
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid_regselDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 287
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTDDEV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Visible = True
        end>
    end
  end
  object Panel_rodape: TPanel
    Left = 0
    Top = 438
    Width = 731
    Height = 27
    Align = alBottom
    TabOrder = 2
    object lbl_qtdbaixa: TLabel
      Left = 348
      Top = 7
      Width = 89
      Height = 13
      Caption = 'Qtd.a Ser Baixada:'
      Enabled = False
    end
    object lbl_datadev: TLabel
      Left = 167
      Top = 8
      Width = 96
      Height = 13
      Caption = 'Data da Devolu'#231#227'o:'
      Enabled = False
    end
    object bbBaixar: TBitBtn
      Left = 3
      Top = 1
      Width = 158
      Height = 25
      Hint = 'Click aqui para baixar o item selecionado'
      Caption = 'Baixar o Item Selecionado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object QTDDEV: TEdit
      Left = 448
      Top = 4
      Width = 62
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = QTDDEVExit
      OnKeyPress = CODVENKeyPress
    end
    object bbEfetuarBaixa: TBitBtn
      Left = 515
      Top = 2
      Width = 106
      Height = 25
      Hint = 'Click aqui para Efetuar a Baixa'
      Caption = 'Efetuar a Baixa'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbEfetuarBaixaClick
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
    object MDATADEV: TMaskEdit
      Left = 268
      Top = 5
      Width = 71
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object bbDesistir: TBitBtn
      Left = 622
      Top = 1
      Width = 106
      Height = 25
      Hint = 'Click aqui para Efetuar a Baixa'
      Caption = 'Desistir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbDesistirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object gbImpressao: TGroupBox
    Left = 0
    Top = 465
    Width = 731
    Height = 62
    Align = alBottom
    Caption = 'Impressao:'
    TabOrder = 3
  end
  object gbDadosBaixa: TGroupBox
    Left = 0
    Top = 327
    Width = 731
    Height = 111
    Align = alBottom
    Caption = 'Dados Sobre a Baixa:'
    TabOrder = 4
    Visible = False
    OnExit = gbDadosBaixaExit
    object DBGrid_dadosbaixa: TDBGrid
      Left = 2
      Top = 15
      Width = 727
      Height = 67
      Align = alClient
      DataSource = Src_Ped_Dcons
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P2DC_QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DC_DATADEV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMUSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DC_DATHORDIG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DC_CODUSR'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 82
      Width = 727
      Height = 27
      Align = alBottom
      TabOrder = 1
      object bbExcbaixa: TBitBtn
        Left = 568
        Top = 2
        Width = 158
        Height = 25
        Hint = 'Click aqui para Excluir o selecionado'
        Caption = 'Excluir Baixa'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bbExcbaixaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
    end
  end
  object Src_PedConsig: TDataSource
    DataSet = Tb_PedConsig
    Left = 471
    Top = 46
  end
  object Tb_PedConsig: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CRAZAO,'
      'P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P2ITEM,'
      'P1CODCLI,P1DATAP,P1CODVEN,'
      'P2CODPRO,'
      'PDNOME,'
      'PDUND,'
      'P2QTD,'
      'P2QTDDEV'
      'from CADP01,CADP02,CADCLI,CADPRO'
      'where P1CODEMP=0'
      'AND P2CODEMP=P1CODEMP'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND P2CHAVE=P1CHAVE'
      'AND CCODCLI=P1CODCLI'
      'AND PDCODPRO=P2CODPRO')
    Left = 440
    Top = 44
    object Tb_PedConsigCRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_PedConsigP1CODCLI: TFloatField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedConsigP1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_PedConsigP1CODVEN: TFloatField
      DisplayLabel = 'Cod.Ven'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_PedConsigP2CODPRO: TFloatField
      DisplayLabel = 'Cod.Prod'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_PedConsigPDNOME: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_PedConsigPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_PedConsigP2QTD: TFloatField
      DisplayLabel = 'Qtd.Cons.'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_PedConsigP2QTDDEV: TFloatField
      DisplayLabel = 'Qtd.Devolv.'
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_PedConsigP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedConsigP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_PedConsigP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedConsigP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_PedConsigP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
  end
  object Tb_Ped_Dcons: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      '  P2DC_QTD,'
      '  P2DC_CODUSR,'
      '  P2DC_DATHORDIG,'
      '  P2DC_DATADEV,'
      '  P2DC_STATUS,'
      '  NOMUSR'
      '  from CADP02_DCONS,CADUSR'
      '  where P2DC_CODUSR=CODUSR')
    Left = 440
    Top = 86
    object Tb_Ped_DconsP2DC_QTD: TFloatField
      DisplayLabel = 'Qtd.Pedido'
      FieldName = 'P2DC_QTD'
      Origin = 'SG_ASSOC.CADP02_DCONS.P2DC_QTD'
    end
    object Tb_Ped_DconsP2DC_CODUSR: TFloatField
      DisplayLabel = 'Cod.Usuario'
      FieldName = 'P2DC_CODUSR'
      Origin = 'SG_ASSOC.CADP02_DCONS.P2DC_CODUSR'
    end
    object Tb_Ped_DconsP2DC_DATHORDIG: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'P2DC_DATHORDIG'
      Origin = 'SG_ASSOC.CADP02_DCONS.P2DC_DATHORDIG'
    end
    object Tb_Ped_DconsP2DC_DATADEV: TDateTimeField
      DisplayLabel = 'Data Devol'
      FieldName = 'P2DC_DATADEV'
      Origin = 'SG_ASSOC.CADP02_DCONS.P2DC_DATADEV'
    end
    object Tb_Ped_DconsNOMUSR: TStringField
      DisplayLabel = 'Nome do Usuario'
      FieldName = 'NOMUSR'
      Origin = 'SG_ASSOC.CADUSR.NOMUSR'
      Size = 40
    end
    object Tb_Ped_DconsP2DC_STATUS: TFloatField
      FieldName = 'P2DC_STATUS'
      Origin = 'SG_ASSOC.CADP02_DCONS.P2DC_STATUS'
    end
  end
  object Src_Ped_Dcons: TDataSource
    DataSet = Tb_Ped_Dcons
    Left = 471
    Top = 88
  end
end
