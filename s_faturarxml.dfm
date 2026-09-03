object frm_faturarxml: Tfrm_faturarxml
  Left = 154
  Top = 25
  Width = 1026
  Height = 669
  Caption = 'Faturar do xml'
  Color = clBtnFace
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
    Width = 1018
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 456
      Top = 8
      Width = 108
      Height = 13
      Caption = 'Cod.Vendedor Padr'#227'o:'
    end
    object Label2: TLabel
      Left = 448
      Top = 32
      Width = 121
      Height = 13
      Caption = 'Plano de Vendas Padr'#227'o:'
    end
    object bbBuscarXML: TBitBtn
      Left = 8
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Buscar XML'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbBuscarXMLClick
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
    object bbFaturar: TBitBtn
      Left = 784
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Faturar o XML'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbFaturarClick
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
    object cb_todos: TCheckBox
      Left = 34
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cb_todosClick
    end
    object cb_cadastrar_cliente: TCheckBox
      Left = 264
      Top = 3
      Width = 137
      Height = 17
      Caption = 'Cadastrar Cliente'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object cb_cadastrar_trasportadora: TCheckBox
      Left = 264
      Top = 19
      Width = 153
      Height = 17
      Caption = 'Cadastrar Transportadora'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object edt_codven: TEdit
      Left = 584
      Top = 8
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_codvenExit
      OnKeyPress = edt_codvenKeyPress
    end
    object edt_codpv: TEdit
      Left = 584
      Top = 32
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = 'edt_codpv'
      OnExit = edt_codpvExit
    end
    object cb_cadastrar_produtos: TCheckBox
      Left = 264
      Top = 36
      Width = 137
      Height = 17
      Caption = 'Cadastrar Produto'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 244
    Width = 1018
    Height = 144
    Align = alTop
    Caption = 'Dados Cabecalho:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1014
      Height = 127
      Align = alClient
      DataSource = src_cabecalho
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'EMITXNOME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco_comp'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emicidadeuf'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fone_fax'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_emit'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'saida_entrada'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDENNF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDESERIE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMITIE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTISUF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emit_cnpj'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'chave_acesso_calc'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomcli_codigo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_prot'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dest_cnpj'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTENDERDESTXLGR'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTENDERDESTXBAIRRO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTENDERDESTCEP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTENDERDESTXMUN'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dest_fone'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTENDERDESTUF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dest_inscricao'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVBC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVICMS'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVBCST'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVST'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVPROD'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVFRETE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVSEG'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVDESC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVOUTRO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVIPI'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALICMSTOTVNF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TT_XNOME'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'frete_cif_fob'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVEICTRANSPPLACA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVEICTRANSPUF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'transp_cnpj'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TT_XENDER'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TT_XMUN'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TT_UF'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TT_IE'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVOLQVOL'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVOLMARCA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVOLPESOB'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVOLPESOL'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INFADICINFCPL'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INFADICINFADFISCO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALISSQNTOTVISS'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALISSQNTOTVBC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMITIM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALISSQNTOTVSERV'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_ACESSO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMITIEST'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDEDEMI'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_vencimentos'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_texto'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emissao_texto'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'recebemos'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numeronf'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fantasia_cliente'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPVOLESP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRT'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccodcli'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDENATOP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hora_saida'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datasaida'
          Width = 50
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 388
    Width = 1018
    Height = 156
    Align = alClient
    Caption = 'Itens do XML:'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 1014
      Height = 139
      Align = alClient
      DataSource = src_detalhe
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DETPRODCPROD'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomepro'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODNCM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODCFOP'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cst'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODUCOM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODQCOM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODVUNCOM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'aliq_icms'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'aliq_issqn'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'percipi'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALISSQNTOTVSERV'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETINFADPROD'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSOSN'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORI_PROD'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VDESC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMSVBC'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODVPROD'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODNCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTB_CBENEF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST_PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST_COFINS'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 1018
    Height = 94
    Align = alBottom
    TabOrder = 3
    object GroupBox4: TGroupBox
      Left = 417
      Top = 1
      Width = 416
      Height = 92
      Align = alLeft
      Caption = 'Lotes'
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 1004
        Height = 75
        Align = alLeft
        DataSource = src_lotes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codpro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numitem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvcto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 416
      Height = 92
      Align = alLeft
      Caption = 'Vencimentos:'
      TabOrder = 1
      object DBGrid4: TDBGrid
        Left = 2
        Top = 15
        Width = 1004
        Height = 75
        Align = alLeft
        DataSource = src_vcto
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'VDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numdup'
            Visible = True
          end>
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 57
    Width = 1018
    Height = 187
    Align = alTop
    Caption = 'Xmls Encontrados:'
    TabOrder = 4
    object DBGrid_arqxml: TDBGrid
      Left = 2
      Top = 15
      Width = 1014
      Height = 108
      Align = alClient
      DataSource = src_arqxml
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'xml_importar'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'xml_nome'
          Title.Alignment = taCenter
          Width = 367
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'xml_dathor_ini'
          Title.Alignment = taCenter
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'xml_dathor_fin'
          Title.Alignment = taCenter
          Width = 195
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'segundos'
          Title.Alignment = taCenter
          Width = 171
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 2
      Top = 123
      Width = 1014
      Height = 62
      Align = alBottom
      Ctl3D = False
      DataField = 'xml_observacoes'
      DataSource = src_arqxml
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object cds_detalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 208
    object cds_detalheDETPRODCPROD: TStringField
      FieldName = 'DETPRODCPROD'
    end
    object cds_detalhenomepro: TStringField
      DisplayWidth = 3000
      FieldName = 'nomepro'
      Size = 3000
    end
    object cds_detalheDETPRODNCM: TStringField
      FieldName = 'DETPRODNCM'
    end
    object cds_detalheDETPRODCFOP: TStringField
      FieldName = 'DETPRODCFOP'
      Size = 4
    end
    object cds_detalhecst: TStringField
      FieldName = 'cst'
      Size = 4
    end
    object cds_detalheDETPRODUCOM: TStringField
      FieldName = 'DETPRODUCOM'
      Size = 3
    end
    object cds_detalheDETPRODQCOM: TFloatField
      FieldName = 'DETPRODQCOM'
    end
    object cds_detalheDETPRODVUNCOM: TFloatField
      FieldName = 'DETPRODVUNCOM'
      DisplayFormat = '#,##0.00'
    end
    object cds_detalhealiq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object cds_detalhealiq_issqn: TFloatField
      FieldName = 'aliq_issqn'
    end
    object cds_detalhepercipi: TFloatField
      FieldName = 'percipi'
    end
    object cds_detalheTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object cds_detalheDETINFADPROD: TMemoField
      FieldName = 'DETINFADPROD'
      BlobType = ftMemo
    end
    object cds_detalheCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cds_detalheORI_PROD: TStringField
      FieldName = 'ORI_PROD'
      Size = 1
    end
    object cds_detalheVDESC: TFloatField
      FieldName = 'VDESC'
    end
    object cds_detalheICMSVBC: TFloatField
      FieldName = 'ICMSVBC'
    end
    object cds_detalheDETPRODVPROD: TFloatField
      FieldName = 'DETPRODVPROD'
    end
    object cds_detalheitem: TIntegerField
      FieldName = 'item'
    end
    object cds_detalheCSTB_CBENEF: TStringField
      FieldName = 'CSTB_CBENEF'
      Size = 14
    end
    object cds_detalheCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object cds_detalheCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object cds_detalheCEST: TStringField
      FieldName = 'CEST'
      Size = 8
    end
  end
  object cds_cabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 652
    Top = 144
    object cds_cabecalhoEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Size = 100
    end
    object cds_cabecalhoendereco_comp: TStringField
      FieldName = 'endereco_comp'
      Size = 200
    end
    object cds_cabecalhoemicidadeuf: TStringField
      FieldName = 'emicidadeuf'
      Size = 100
    end
    object cds_cabecalhofone_fax: TStringField
      FieldName = 'fone_fax'
    end
    object cds_cabecalhocep_emit: TStringField
      FieldName = 'cep_emit'
    end
    object cds_cabecalhosaida_entrada: TStringField
      FieldName = 'saida_entrada'
      Size = 1
    end
    object cds_cabecalhoIDENNF: TStringField
      FieldName = 'IDENNF'
      Size = 9
    end
    object cds_cabecalhoIDESERIE: TStringField
      FieldName = 'IDESERIE'
      Size = 5
    end
    object cds_cabecalhoEMITIE: TStringField
      FieldName = 'EMITIE'
      Size = 40
    end
    object cds_cabecalhoDESTISUF: TStringField
      FieldName = 'DESTISUF'
      Size = 2
    end
    object cds_cabecalhoemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object cds_cabecalhochave_acesso_calc: TStringField
      FieldName = 'chave_acesso_calc'
      Size = 60
    end
    object cds_cabecalhonomcli_codigo: TStringField
      FieldName = 'nomcli_codigo'
      Size = 100
    end
    object cds_cabecalhonum_prot: TStringField
      FieldName = 'num_prot'
      Size = 15
    end
    object cds_cabecalhodest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object cds_cabecalhoDESTENDERDESTXLGR: TStringField
      FieldName = 'DESTENDERDESTXLGR'
      Size = 100
    end
    object cds_cabecalhoDESTENDERDESTXBAIRRO: TStringField
      FieldName = 'DESTENDERDESTXBAIRRO'
      Size = 40
    end
    object cds_cabecalhoDESTENDERDESTCEP: TStringField
      FieldName = 'DESTENDERDESTCEP'
      Size = 9
    end
    object cds_cabecalhoDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Size = 50
    end
    object cds_cabecalhodest_fone: TStringField
      FieldName = 'dest_fone'
    end
    object cds_cabecalhoDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Size = 2
    end
    object cds_cabecalhodest_inscricao: TStringField
      FieldName = 'dest_inscricao'
      Size = 40
    end
    object cds_cabecalhoTOTALICMSTOTVBC: TFloatField
      FieldName = 'TOTALICMSTOTVBC'
    end
    object cds_cabecalhoTOTALICMSTOTVICMS: TFloatField
      FieldName = 'TOTALICMSTOTVICMS'
    end
    object cds_cabecalhoTOTALICMSTOTVBCST: TFloatField
      FieldName = 'TOTALICMSTOTVBCST'
    end
    object cds_cabecalhoTOTALICMSTOTVST: TFloatField
      FieldName = 'TOTALICMSTOTVST'
    end
    object cds_cabecalhoTOTALICMSTOTVPROD: TFloatField
      FieldName = 'TOTALICMSTOTVPROD'
    end
    object cds_cabecalhoTOTALICMSTOTVFRETE: TFloatField
      FieldName = 'TOTALICMSTOTVFRETE'
    end
    object cds_cabecalhoTOTALICMSTOTVSEG: TFloatField
      FieldName = 'TOTALICMSTOTVSEG'
    end
    object cds_cabecalhoTOTALICMSTOTVDESC: TFloatField
      FieldName = 'TOTALICMSTOTVDESC'
    end
    object cds_cabecalhoTOTALICMSTOTVOUTRO: TFloatField
      FieldName = 'TOTALICMSTOTVOUTRO'
    end
    object cds_cabecalhoTOTALICMSTOTVIPI: TFloatField
      FieldName = 'TOTALICMSTOTVIPI'
    end
    object cds_cabecalhoTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
    end
    object cds_cabecalhoTT_XNOME: TStringField
      FieldName = 'TT_XNOME'
      Size = 60
    end
    object cds_cabecalhofrete_cif_fob: TStringField
      FieldName = 'frete_cif_fob'
      Size = 1
    end
    object cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField
      FieldName = 'TRANSPVEICTRANSPPLACA'
      Size = 10
    end
    object cds_cabecalhoTRANSPVEICTRANSPUF: TStringField
      FieldName = 'TRANSPVEICTRANSPUF'
      Size = 2
    end
    object cds_cabecalhotransp_cnpj: TStringField
      FieldName = 'transp_cnpj'
    end
    object cds_cabecalhoTT_XENDER: TStringField
      FieldName = 'TT_XENDER'
      Size = 60
    end
    object cds_cabecalhoTT_XMUN: TStringField
      FieldName = 'TT_XMUN'
      Size = 50
    end
    object cds_cabecalhoTT_UF: TStringField
      FieldName = 'TT_UF'
      Size = 2
    end
    object cds_cabecalhoTT_IE: TStringField
      FieldName = 'TT_IE'
      Size = 40
    end
    object cds_cabecalhoTRANSPVOLQVOL: TIntegerField
      FieldName = 'TRANSPVOLQVOL'
    end
    object cds_cabecalhoTRANSPVOLMARCA: TStringField
      FieldName = 'TRANSPVOLMARCA'
    end
    object cds_cabecalhoTRANSPVOLPESOB: TFloatField
      FieldName = 'TRANSPVOLPESOB'
    end
    object cds_cabecalhoTRANSPVOLPESOL: TFloatField
      FieldName = 'TRANSPVOLPESOL'
    end
    object cds_cabecalhoINFADICINFCPL: TMemoField
      FieldName = 'INFADICINFCPL'
      BlobType = ftMemo
    end
    object cds_cabecalhoINFADICINFADFISCO: TMemoField
      FieldName = 'INFADICINFADFISCO'
      BlobType = ftMemo
    end
    object cds_cabecalhoTOTALISSQNTOTVISS: TFloatField
      FieldName = 'TOTALISSQNTOTVISS'
    end
    object cds_cabecalhoTOTALISSQNTOTVBC: TFloatField
      FieldName = 'TOTALISSQNTOTVBC'
    end
    object cds_cabecalhoEMITIM: TStringField
      FieldName = 'EMITIM'
      Size = 50
    end
    object cds_cabecalhoTOTALISSQNTOTVSERV: TFloatField
      FieldName = 'TOTALISSQNTOTVSERV'
    end
    object cds_cabecalhoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cds_cabecalhoEMITIEST: TStringField
      FieldName = 'EMITIEST'
      Size = 60
    end
    object cds_cabecalhoIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
    end
    object cds_cabecalhodata_vencimentos: TStringField
      FieldName = 'data_vencimentos'
      Size = 3000
    end
    object cds_cabecalhovalor_texto: TStringField
      FieldName = 'valor_texto'
      Size = 25
    end
    object cds_cabecalhoemissao_texto: TStringField
      FieldName = 'emissao_texto'
      Size = 30
    end
    object cds_cabecalhorecebemos: TStringField
      FieldName = 'recebemos'
      Size = 250
    end
    object cds_cabecalhonumeronf: TFloatField
      FieldName = 'numeronf'
    end
    object cds_cabecalhofantasia_cliente: TStringField
      FieldName = 'fantasia_cliente'
      Size = 60
    end
    object cds_cabecalhoTRANSPVOLESP: TStringField
      FieldName = 'TRANSPVOLESP'
      Size = 10
    end
    object cds_cabecalhoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cds_cabecalhoIDENATOP: TStringField
      FieldName = 'IDENATOP'
      Size = 150
    end
    object cds_cabecalhohora_saida: TStringField
      FieldName = 'hora_saida'
      Size = 10
    end
    object cds_cabecalhodatasaida: TStringField
      FieldName = 'datasaida'
      Size = 15
    end
    object cds_cabecalhocodven: TFloatField
      FieldName = 'codven'
    end
    object cds_cabecalhotabpv: TStringField
      FieldName = 'tabpv'
      Size = 2
    end
    object cds_cabecalhocodpv: TIntegerField
      FieldName = 'codpv'
    end
    object cds_cabecalhoccodcli: TFloatField
      FieldName = 'ccodcli'
    end
    object cds_cabecalhocodtra: TFloatField
      FieldName = 'codtra'
    end
    object cds_cabecalhoemiUF: TStringField
      FieldName = 'emiUF'
      Size = 2
    end
    object cds_cabecalhoendereco_dest_compl: TStringField
      FieldName = 'endereco_dest_compl'
      Size = 200
    end
    object cds_cabecalhoDESTENDERDESTNRO: TStringField
      FieldName = 'DESTENDERDESTNRO'
      Size = 100
    end
    object cds_cabecalhoDESTENDERDESTXCPL: TStringField
      FieldName = 'DESTENDERDESTXCPL'
      Size = 100
    end
  end
  object cds_vcto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 684
    Top = 256
    object cds_vctoVDATA: TDateTimeField
      FieldName = 'VDATA'
    end
    object cds_vctoVVALOR: TFloatField
      FieldName = 'VVALOR'
    end
    object cds_vctonumdup: TStringField
      FieldName = 'numdup'
      Size = 10
    end
  end
  object src_cabecalho: TDataSource
    DataSet = cds_cabecalho
    Left = 660
    Top = 104
  end
  object opd1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 740
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 824
    Top = 144
  end
  object Query1: TQuery
    Left = 272
    Top = 121
  end
  object cds_aliquotas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 229
    Top = 193
    Data = {
      0A0300009619E0BD0100000018000000230000000000030000000A0308746970
      6F5F726567040001000000000009616C5F74616269636D010049000000010005
      57494454480200020001000C616C5F616C697172656475740800040000000000
      0B616C5F49636D735472696208000400000000000A616C5F69636D7352657404
      000100000000000D616C5F737449636D734372656408000400000000000C616C
      5F737449636D7344656208000400000000000C616C5F73744956415F496E6108
      000400000000000C616C5F73744956415F4E656708000400000000000D43666F
      5F496E6475735F52657404000100000000000E43666F5F496E6475735F547269
      6204000100000000001043666F5F496E6475735F4973656E746F040001000000
      00000B43666F5F7265765F52657404000100000000000C43666F5F7265765F54
      72696204000100000000000E43666F5F7265765F4973656E746F040001000000
      00000E43666F5F5375624563665F52657404000100000000000F43666F5F5375
      624563665F5472696204000100000000001143666F5F5375624563665F497365
      6E746F040001000000000009616C5F636F66696E730800040000000000076D6F
      644263535404000100000000000C616C5F7374416C6971526564080004000000
      000007616C5F696E737308000400000000000C616C5F696E73735F7072656408
      0004000000000007616C5F6972726608000400000000000C616C5F697272665F
      7072656408000400000000000A616C5F72657061737365080004000000000008
      616C5F697373716E08000400000000000B63666F5F7365727669636F04000100
      0000000006616C5F706973080004000000000009616C5F63726564736E080004
      00000000000C616C5F73744956415F506F73080004000000000012616C5F636F
      6D626174655F706F6272657A61080004000000000013616C5F69636D73637265
      645F64657374696E6F08000400000000000F616C5F69636D735F64657374696E
      6F08000400000000001A646564757A69725F69636D735F62635F7069735F636F
      66696E7308000400000000000000}
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'requer_pedori'
      Calculated = True
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_IcmsTribDesonera'
      Calculated = True
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_ibs_mun'
      Calculated = True
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_ibs_uf'
      Calculated = True
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_cbs'
      Calculated = True
    end
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 136
    object tb_ped02_preP2ICMS_PERC: TFloatField
      FieldName = 'P2ICMS_PERC'
    end
    object tb_ped02_preP2ICMS_PPRED: TFloatField
      FieldName = 'P2ICMS_PPRED'
    end
    object tb_ped02_preP2ICMSSN_PERC: TFloatField
      FieldName = 'P2ICMSSN_PERC'
    end
    object tb_ped02_preP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object tb_ped02_preP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object tb_ped02_preP2ST_ICMSCRED: TFloatField
      FieldName = 'P2ST_ICMSCRED'
    end
    object tb_ped02_preP2ST_ICMSDEB: TFloatField
      FieldName = 'P2ST_ICMSDEB'
    end
    object tb_ped02_preP2MODBCST: TIntegerField
      FieldName = 'P2MODBCST'
    end
    object tb_ped02_preP2IPI_PERC: TFloatField
      FieldName = 'P2IPI_PERC'
    end
    object tb_ped02_preP2CST: TStringField
      FieldName = 'P2CST'
      Size = 3
    end
    object tb_ped02_preP2CSOSN_ORI: TIntegerField
      FieldName = 'P2CSOSN_ORI'
    end
    object tb_ped02_preP2CSOSN: TIntegerField
      FieldName = 'P2CSOSN'
    end
    object tb_ped02_preP2PIS_PERC: TFloatField
      FieldName = 'P2PIS_PERC'
    end
    object tb_ped02_preP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 4
    end
    object tb_ped02_preP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 4
    end
    object tb_ped02_preP2COFINS_PERC: TFloatField
      FieldName = 'P2COFINS_PERC'
    end
    object tb_ped02_preP2CONTESP: TIntegerField
      FieldName = 'P2CONTESP'
    end
    object tb_ped02_preP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object tb_ped02_preP2ICMS_PPRED_101: TFloatField
      FieldName = 'P2ICMS_PPRED_101'
    end
    object tb_ped02_preP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object tb_ped02_preP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object tb_ped02_preP2ST_ICMSCRED_101: TFloatField
      FieldName = 'P2ST_ICMSCRED_101'
    end
    object tb_ped02_preP2ST_ICMSDEB_101: TFloatField
      FieldName = 'P2ST_ICMSDEB_101'
    end
    object tb_ped02_preP2MODBCST_101: TFloatField
      FieldName = 'P2MODBCST_101'
    end
    object tb_ped02_preP2CFOP_ECF: TIntegerField
      FieldName = 'P2CFOP_ECF'
    end
    object tb_ped02_preP2CFOP_NF: TIntegerField
      FieldName = 'P2CFOP_NF'
    end
    object tb_ped02_preP2PRECO_MAXCONS: TFloatField
      FieldName = 'P2PRECO_MAXCONS'
    end
    object tb_ped02_preP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object tb_ped02_preP2CODEMP: TIntegerField
      FieldName = 'P2CODEMP'
    end
    object tb_ped02_preP2LOTSEQ: TIntegerField
      FieldName = 'P2LOTSEQ'
    end
    object tb_ped02_preP2CHAVE: TIntegerField
      FieldName = 'P2CHAVE'
    end
    object tb_ped02_preP2ORDEM: TIntegerField
      FieldName = 'P2ORDEM'
    end
    object tb_ped02_preP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object tb_ped02_preP2ITEM: TIntegerField
      FieldName = 'P2ITEM'
    end
    object tb_ped02_preP2CONS_PROPRIO: TIntegerField
      FieldName = 'P2CONS_PROPRIO'
    end
    object tb_ped02_prePDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02_preP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object tb_ped02_preP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object tb_ped02_preP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object tb_ped02_preP2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object tb_ped02_preP2DESCFIN_PERC: TFloatField
      FieldName = 'P2DESCFIN_PERC'
    end
    object tb_ped02_preP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object tb_ped02_preP2DESC_COMP: TStringField
      FieldName = 'P2DESC_COMP'
      Size = 10
    end
    object tb_ped02_preP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object tb_ped02_preP2DESC_PERC01: TFloatField
      FieldName = 'P2DESC_PERC01'
    end
    object tb_ped02_preP2DESC_PERC02: TFloatField
      FieldName = 'P2DESC_PERC02'
    end
    object tb_ped02_preP2DESC_PERC03: TFloatField
      FieldName = 'P2DESC_PERC03'
    end
    object tb_ped02_preP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object tb_ped02_preP2TIPO_PCO: TIntegerField
      FieldName = 'P2TIPO_PCO'
    end
    object tb_ped02_preP2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
    end
    object tb_ped02_preP2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
    end
    object tb_ped02_preP2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
    end
    object tb_ped02_preP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object tb_ped02_preP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object tb_ped02_preP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object tb_ped02_preP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object tb_ped02_preP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 10
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
      Size = 10
    end
    object tb_ped02_preP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object tb_ped02_preP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object tb_ped02_preP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object tb_ped02_preP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object tb_ped02_preP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object tb_ped02_preP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object tb_ped02_preP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
    end
  end
  object cds_lotes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 96
    object cds_lotescodpro: TFloatField
      FieldName = 'codpro'
    end
    object cds_lotesnumitem: TIntegerField
      FieldName = 'numitem'
    end
    object cds_loteslote: TStringField
      FieldName = 'lote'
    end
    object cds_lotesdtvcto: TDateField
      FieldName = 'dtvcto'
    end
    object cds_lotesqtd: TFloatField
      FieldName = 'qtd'
    end
    object cds_lotesdtfab: TDateTimeField
      FieldName = 'dtfab'
    end
  end
  object src_vcto: TDataSource
    DataSet = cds_vcto
    Left = 728
    Top = 258
  end
  object src_detalhe: TDataSource
    DataSet = cds_detalhe
    Left = 608
    Top = 202
  end
  object src_lotes: TDataSource
    DataSet = cds_lotes
    Left = 816
    Top = 112
  end
  object cds_arqxml: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 112
    object cds_arqxmlxml_importar: TStringField
      DisplayLabel = 'imp'
      FieldName = 'xml_importar'
      Size = 1
    end
    object cds_arqxmlxml_nome: TStringField
      DisplayLabel = 'Nome do Arquivo'
      FieldName = 'xml_nome'
      Size = 254
    end
    object cds_arqxmlxml_observacoes: TStringField
      DisplayLabel = 'observa'#231#245'es'
      FieldName = 'xml_observacoes'
      Size = 254
    end
    object cds_arqxmlxml_nomecompasta: TStringField
      FieldName = 'xml_nomecompasta'
      Size = 3000
    end
    object cds_arqxmlxml_dathor_ini: TDateField
      DisplayLabel = 'Inicio Importa'#231#227'o'
      FieldName = 'xml_dathor_ini'
    end
    object cds_arqxmlxml_dathor_fin: TDateField
      DisplayLabel = 'Termino'
      FieldName = 'xml_dathor_fin'
    end
    object cds_arqxmlsegundos: TIntegerField
      DisplayLabel = 'Dura'#231#227'o Segundos'
      FieldName = 'segundos'
    end
    object cds_arqxmlxml_codcli: TFloatField
      FieldName = 'xml_codcli'
    end
  end
  object src_arqxml: TDataSource
    DataSet = cds_arqxml
    OnDataChange = src_arqxmlDataChange
    Left = 328
    Top = 137
  end
end
