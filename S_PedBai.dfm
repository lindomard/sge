object Frm_PedBai: TFrm_PedBai
  Left = 103
  Top = 109
  Width = 697
  Height = 441
  Caption = 
    'Baixa as Duplicatas de Clientes a Partir das Formas de Pagamento' +
    's dos Pedidos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 6
      Width = 64
      Height = 13
      Caption = 'Chave Inicial:'
    end
    object Label2: TLabel
      Left = 261
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Chave Final:'
    end
    object Label3: TLabel
      Left = 125
      Top = 25
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label4: TLabel
      Left = 284
      Top = 25
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label5: TLabel
      Left = 127
      Top = 45
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label6: TLabel
      Left = 64
      Top = 60
      Width = 100
      Height = 13
      Caption = 'C'#243'digo do Vendedor:'
    end
    object CHAVEI: TEdit
      Left = 171
      Top = 2
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CHAVEIExit
    end
    object CHAVEF: TEdit
      Left = 328
      Top = 2
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CHAVEFExit
    end
    object MDT1: TMaskEdit
      Left = 171
      Top = 20
      Width = 85
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 328
      Top = 20
      Width = 85
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODCLI: TEdit
      Left = 171
      Top = 38
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 255
      Top = 38
      Width = 301
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Todos...'
    end
    object CODVEN: TEdit
      Left = 171
      Top = 56
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object NOMVEN: TEdit
      Left = 255
      Top = 56
      Width = 301
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
      Text = 'Todos...'
    end
    object bbAtualizar: TBitBtn
      Left = 57
      Top = 78
      Width = 155
      Height = 25
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
    object bbSair: TBitBtn
      Left = 445
      Top = 78
      Width = 155
      Height = 25
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
    object bbBaixar: TBitBtn
      Left = 248
      Top = 78
      Width = 155
      Height = 25
      Caption = '&Efetuar as Baixas'
      Enabled = False
      TabOrder = 10
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
        BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
        BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
        BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
        BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
        F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
        F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
        7055557FFFFFF777F7F555000000000000555577777777777755}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 689
    Height = 200
    Align = alClient
    Caption = 'Registros Selecionados para Baixa:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 685
      Height = 183
      Align = alClient
      DataSource = Src_Ped
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CHAVE'
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
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODEMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1LOTSEQ'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 305
    Width = 689
    Height = 105
    Align = alBottom
    Caption = 'Documentos Recebidos'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 685
      Height = 88
      Align = alClient
      DataSource = Src_PedFP
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PFPCODEMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPLOTSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPCHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPFORMA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPDATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPNUMDOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPBANCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPSERIE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPVALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPCC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPCOMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPAGENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPEMITENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPDESC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nombco'
          Visible = True
        end>
    end
  end
  object Qr_ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CODEMP,'
      ' P1LOTSEQ,'
      ' P1CHAVE,'
      ' P1CODCLI,'
      ' P1CODVEN,'
      ' P1DATAP,'
      ' CRAZAO,'
      'sum(P1TOTALL) as P1TOTALL'
      'from CADP01,CADCLI where P1STATUS<>9'
      'and P1CODEMP=01'
      'and (P1SITCPR is null or P1SITCPR=0)'
      'and CCODEMP=P1CODEMP'
      'and CCODCLI=P1CODCLI'
      'group by'
      ' P1CODEMP,'
      ' P1LOTSEQ,'
      ' P1CHAVE,'
      ' P1DATAP,'
      ' P1CODCLI,'
      ' P1CODVEN,'
      ' CRAZAO')
    Left = 48
    Top = 32
    object Qr_pedP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_pedP1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_pedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_pedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_pedP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_pedCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_pedP1TOTALL: TFloatField
      DisplayLabel = 'Total do Pedido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_pedP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
  end
  object Src_Ped: TDataSource
    DataSet = Qr_ped
    OnDataChange = Src_PedDataChange
    Left = 80
    Top = 33
  end
  object Qr_PedFP: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_PedFPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PFPCODEMP,'
      '       PFPLOTSEQ,'
      '       PFPCHAVE,'
      '       PFPSEQ,'
      '       PFPFORMA,'
      '       PFPDATA,'
      '       PFPNUMDOC,'
      '       PFPBANCO,'
      '       PFPSERIE,'
      '       PFPVALOR,'
      '       PFPCC,'
      '       PFPCOMP,'
      '       PFPAGENCIA,'
      '       PFPEMITENTE,'
      '       FPDESC'
      '       ,PFPDEV_CODEMP'
      '      ,PFPDEV_CODECF'
      '      ,PFPDEV_NUMERO'
      '      ,PFPDEV_DESD'
      '      ,PFPDEV_DUP'
      '      ,PFPDEV_DTEMIS'
      ''
      '       from CADPFP,CADFP where PFPCODEMP is null'
      '       AND FPCODIGO=PFPFORMA')
    Left = 472
    Top = 64
    object Qr_PedFPPFPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Qr_PedFPPFPLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'PFPLOTSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Qr_PedFPPFPCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Qr_PedFPPFPSEQ: TFloatField
      DisplayLabel = 'Seq'
      FieldName = 'PFPSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPSEQ'
    end
    object Qr_PedFPPFPFORMA: TFloatField
      DisplayLabel = 'Forma'
      FieldName = 'PFPFORMA'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Qr_PedFPPFPDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Qr_PedFPPFPNUMDOC: TStringField
      DisplayLabel = 'Num.Doc.'
      FieldName = 'PFPNUMDOC'
      Origin = 'SG_ASSOC.CADPFP.PFPNUMDOC'
    end
    object Qr_PedFPPFPBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'PFPBANCO'
      Origin = 'SG_ASSOC.CADPFP.PFPBANCO'
    end
    object Qr_PedFPPFPSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'PFPSERIE'
      Origin = 'SG_ASSOC.CADPFP.PFPSERIE'
    end
    object Qr_PedFPPFPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Qr_PedFPPFPCC: TStringField
      DisplayLabel = 'C/C'
      FieldName = 'PFPCC'
      Origin = 'SG_ASSOC.CADPFP.PFPCC'
    end
    object Qr_PedFPPFPCOMP: TStringField
      DisplayLabel = 'Comp'
      FieldName = 'PFPCOMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCOMP'
      Size = 5
    end
    object Qr_PedFPPFPAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'PFPAGENCIA'
      Origin = 'SG_ASSOC.CADPFP.PFPAGENCIA'
      Size = 8
    end
    object Qr_PedFPPFPEMITENTE: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'PFPEMITENTE'
      Origin = 'SG_ASSOC.CADPFP.PFPEMITENTE'
      Size = 40
    end
    object Qr_PedFPFPDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.CADFP.FPDESC'
      Size = 15
    end
    object Qr_PedFPnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_PedFPPFPDEV_CODEMP: TFloatField
      FieldName = 'PFPDEV_CODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODEMP'
    end
    object Qr_PedFPPFPDEV_CODECF: TFloatField
      FieldName = 'PFPDEV_CODECF'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_CODECF'
    end
    object Qr_PedFPPFPDEV_NUMERO: TFloatField
      FieldName = 'PFPDEV_NUMERO'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_NUMERO'
    end
    object Qr_PedFPPFPDEV_DESD: TStringField
      FieldName = 'PFPDEV_DESD'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DESD'
      Size = 2
    end
    object Qr_PedFPPFPDEV_DUP: TFloatField
      FieldName = 'PFPDEV_DUP'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DUP'
    end
    object Qr_PedFPPFPDEV_DTEMIS: TDateTimeField
      FieldName = 'PFPDEV_DTEMIS'
      Origin = 'SG_ASSOC.CADPFP.PFPDEV_DTEMIS'
    end
  end
  object Src_PedFP: TDataSource
    DataSet = Qr_PedFP
    Left = 520
    Top = 72
  end
end
