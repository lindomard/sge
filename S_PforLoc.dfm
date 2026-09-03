object Frm_PForLoc: TFrm_PForLoc
  Left = 22
  Top = 79
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Localizar Pedido'
  ClientHeight = 474
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 775
    Height = 138
    Align = alTop
    Caption = 'Pesquisa Por Chave do Pedido:'
    TabOrder = 0
    object periodo: TLabel
      Left = 175
      Top = 91
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object a: TLabel
      Left = 363
      Top = 88
      Width = 8
      Height = 13
      Caption = 'a'
    end
    object chavedopedido: TLabel
      Left = 166
      Top = 53
      Width = 79
      Height = 13
      Caption = 'Chave Inicial:'
    end
    object codcliente: TLabel
      Left = 113
      Top = 37
      Width = 130
      Height = 13
      Caption = 'C'#243'digo do Fornecedor:'
    end
    object lbl_lotseq: TLabel
      Left = 133
      Top = 17
      Width = 112
      Height = 13
      Caption = 'Lote de Sequencia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object obs_lotseq: TLabel
      Left = 341
      Top = 17
      Width = 146
      Height = 13
      Caption = 'Em Branco Busca Todos'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 336
      Top = 53
      Width = 72
      Height = 13
      Caption = 'Chave Final:'
    end
    object Label2: TLabel
      Left = 171
      Top = 71
      Width = 70
      Height = 13
      Caption = 'Nota Inicial:'
    end
    object Label3: TLabel
      Left = 346
      Top = 71
      Width = 63
      Height = 13
      Caption = 'Nota Final:'
    end
    object bbLocalizar: TBitBtn
      Left = 289
      Top = 109
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = '&Localizar'
      TabOrder = 9
      OnClick = bbLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object MDT1: TMaskEdit
      Left = 249
      Top = 86
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 7
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 416
      Top = 86
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODFOR: TEdit
      Left = 249
      Top = 32
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object CHAVEI: TEdit
      Left = 249
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CHAVEIExit
      OnKeyPress = CHAVEIKeyPress
    end
    object NOMCLI: TEdit
      Left = 328
      Top = 32
      Width = 279
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Todos...'
    end
    object MLOTSEQ: TEdit
      Left = 249
      Top = 14
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnExit = MLOTSEQExit
    end
    object CHAVEF: TEdit
      Left = 416
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CHAVEFExit
      OnKeyPress = CHAVEIKeyPress
    end
    object RG_FILTRO: TRadioGroup
      Left = 618
      Top = -1
      Width = 108
      Height = 55
      Caption = 'Filtrar:'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        '&Pendentes'
        '&Confirmados'
        '&Todos')
      ParentCtl3D = False
      TabOrder = 10
    end
    object NUMNFI: TEdit
      Left = 249
      Top = 68
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = NUMNFIExit
      OnKeyPress = CHAVEIKeyPress
    end
    object NUMNFF: TEdit
      Left = 416
      Top = 68
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = NUMNFFExit
      OnKeyPress = CHAVEIKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 440
    Width = 775
    Height = 34
    Align = alBottom
    TabOrder = 1
    object bb_sair: TBitBtn
      Left = 295
      Top = 6
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bb_sairClick
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 138
    Width = 775
    Height = 138
    Align = alClient
    DataSource = Src_Pfor
    FixedColor = 16759739
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PF1CHAVE'
        Title.Alignment = taCenter
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1DATA'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRAZAO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1TOTLIQ'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1NUMNF'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1DATAENT'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1DATANF'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PF1LOTSEQ'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object gb_mercad: TGroupBox
    Left = 0
    Top = 276
    Width = 775
    Height = 131
    Align = alBottom
    Caption = 'Mercadorias do Pedido Selecionado:'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 771
      Height = 114
      Align = alClient
      Color = 10223615
      DataSource = Src_PFor02
      FixedColor = clTeal
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2ITEM'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CODPRO'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2NOMPRO'
          Title.Caption = 'Nome do Produto'
          Width = 289
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2QTDP'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2PU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DATAV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC03'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2SIT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2BASEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2ICMSN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2BASER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2ICMSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2TOTDES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CFO'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 407
    Width = 775
    Height = 33
    Align = alBottom
    TabOrder = 4
    object Label4: TLabel
      Left = 6
      Top = 15
      Width = 157
      Height = 13
      Caption = 'Condi'#231#245'es de Pagamento..:'
    end
    object edt_condpagto: TEdit
      Left = 164
      Top = 9
      Width = 605
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Qr_PFor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF1CODEMP,PF1CHAVE,PF1DATA,PF1TOTLIQ,PF1LOTSEQ,PF1NUMNF,P' +
        'F1DATANF,PF1DATAENT,PF1CONDPAG,FRAZAO from'
      'CADPF1,CADFOR where PF1CHAVE is null'
      'and FCODFOR=PF1CODFOR')
    Left = 32
    Top = 32
    object Qr_PForPF1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Qr_PForPF1DATA: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Qr_PForPF1TOTLIQ: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_PForFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_PForPF1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Qr_PForPF1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_PForPF1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Qr_PForPF1DATAENT: TDateTimeField
      DisplayLabel = 'Data Entrada'
      FieldName = 'PF1DATAENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DATAENT'
    end
    object Qr_PForPF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Qr_PForPF1CONDPAG: TStringField
      FieldName = 'PF1CONDPAG'
      Origin = 'SG_ASSOC.CADPF1.PF1CONDPAG'
      Size = 30
    end
  end
  object Src_Pfor: TDataSource
    DataSet = Qr_PFor
    OnDataChange = Src_PforDataChange
    Left = 80
    Top = 16
  end
  object Qr_PFor02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF2CODEMP,PF2LOTSEQ,PF2CHAVE,PF2CODPRO,PF2NOMPRO,PF2ITEM,' +
        'PF2LOTE,PF2DATAV,'
      
        'PF2QTDP,PF2PU,PF2DESC01,PF2DESC02,PF2DESC03,PF2SIT,PF2BASEN,PF2I' +
        'CMSN,'
      'PF2BASER,PF2ICMSR,PF2TOTDES,PF2CFO,PDMARCA,PDUND,'
      'PF2PU*PF2QTDP AS TOTITEM from'
      'CADPF2,CADPRO where PF2CHAVE is null'
      'and PDCODPRO=PF2CODPRO')
    Left = 32
    Top = 68
    object Qr_PFor02PF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_PFor02PF2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_PFor02PF2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_PFor02PF2DATAV: TDateTimeField
      DisplayLabel = 'Data Vcto'
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Qr_PFor02PF2QTDP: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_PFor02PF2PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit.'
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PFor02PF2DESC01: TFloatField
      DisplayLabel = '%Desc1'
      FieldName = 'PF2DESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Qr_PFor02PF2DESC03: TFloatField
      DisplayLabel = '%Desc3'
      FieldName = 'PF2DESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Qr_PFor02PF2DESC02: TFloatField
      DisplayLabel = '%Desc2'
      FieldName = 'PF2DESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Qr_PFor02PF2SIT: TStringField
      DisplayLabel = 'CST'
      DisplayWidth = 4
      FieldName = 'PF2SIT'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 4
    end
    object Qr_PFor02PF2BASEN: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_PFor02PF2ICMSN: TFloatField
      DisplayLabel = 'Vlr.Icms'
      FieldName = 'PF2ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Qr_PFor02PF2BASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_PFor02PF2ICMSR: TFloatField
      DisplayLabel = 'Valor ST'
      FieldName = 'PF2ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Qr_PFor02PF2TOTDES: TFloatField
      DisplayLabel = 'Total Desc.'
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_PFor02PF2CFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'PF2CFO'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Qr_PFor02PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_PFor02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PFor02TOTITEM: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'TOTITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PFor02PF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_PFor02PF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_PFor02PF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_PFor02PF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2NOMPRO'
      Size = 120
    end
  end
  object Src_PFor02: TDataSource
    DataSet = Qr_PFor02
    Left = 80
    Top = 52
  end
end
