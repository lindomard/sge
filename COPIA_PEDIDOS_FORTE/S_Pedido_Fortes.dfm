object Frm_Pedido_Fortes: TFrm_Pedido_Fortes
  Left = 308
  Top = 81
  Width = 971
  Height = 589
  Caption = 'Visualizador de Relatorio'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object I: TPageControl
    Left = 0
    Top = 0
    Width = 963
    Height = 558
    ActivePage = Ts_Relatorio
    Align = alClient
    TabOrder = 0
    object Ts_Configuracao: TTabSheet
      Caption = 'Ts_Configuracao'
      object Label1: TLabel
        Left = 33
        Top = 38
        Width = 91
        Height = 13
        Caption = 'Texto Observa'#231#227'o:'
      end
      object Label2: TLabel
        Left = 9
        Top = 5
        Width = 117
        Height = 13
        Caption = 'Texto a Ser configurado:'
      end
      object sbn_padrao: TSpeedButton
        Left = 518
        Top = 215
        Width = 171
        Height = 42
        Caption = 'Salvar Padr'#227'o'
        Enabled = False
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
        OnClick = sbn_padraoClick
      end
      object CB_TEXTO: TComboBox
        Left = 128
        Top = 35
        Width = 191
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Observa'#231#227'o Orcamento'
        Items.Strings = (
          'Observa'#231#227'o Orcamento')
      end
      object bbConfigurar: TBitBtn
        Left = 321
        Top = 31
        Width = 95
        Height = 25
        Caption = 'Configurar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbConfigurarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
          0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
          00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
          00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
          00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
          D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
          FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object CB_RELATORIO: TComboBox
        Left = 129
        Top = 3
        Width = 192
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 2
        Text = 'OR'#199'AMENTO NORMAL'
        OnClick = CB_RELATORIOClick
        Items.Strings = (
          'OR'#199'AMENTO AMBIENTE'
          'OR'#199'AMENTO NORMAL'
          'LISTA DE SEPARA'#199#195'O')
      end
      object RichEdit1: TRichEdit
        Left = 40
        Top = 416
        Width = 185
        Height = 89
        Lines.Strings = (
          'RichEdit1')
        TabOrder = 3
        Visible = False
      end
      object CB_DESCOM: TCheckBox
        Left = 32
        Top = 64
        Width = 225
        Height = 17
        Caption = 'Substituir Marca por Desc. Complementar'
        TabOrder = 4
        OnClick = CB_DESCOMClick
      end
      object CB_CABCLI: TCheckBox
        Left = 32
        Top = 96
        Width = 225
        Height = 17
        Caption = 'Degrade No Cabecalho do(orcamento/Lista de Separa'#231#227'o)'
        TabOrder = 5
        OnClick = CB_DESCOMClick
      end
      object CB_CABSER: TCheckBox
        Left = 32
        Top = 80
        Width = 225
        Height = 17
        Caption = 'Degrade no Cabe'#231'alho de Servi'#231'o'
        TabOrder = 6
        OnClick = CB_DESCOMClick
      end
      object CB_CABDESC: TCheckBox
        Left = 32
        Top = 112
        Width = 225
        Height = 17
        Caption = 'Imprimir Desconto Por '#237'tem'
        TabOrder = 7
        OnClick = CB_DESCOMClick
      end
      object cb_impCMet: TCheckBox
        Left = 32
        Top = 132
        Width = 225
        Height = 17
        Caption = 'Imprimir Sub-Produtos Chapas Metalicas'
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = CB_DESCOMClick
      end
      object cb_impkitlsep: TCheckBox
        Left = 32
        Top = 156
        Width = 225
        Height = 17
        Caption = 'Imprimir Kit Separado (Lista de Separa'#231#227'o)'
        Checked = True
        State = cbChecked
        TabOrder = 9
        OnClick = CB_DESCOMClick
      end
      object cb_secao_lsep: TCheckBox
        Left = 32
        Top = 180
        Width = 225
        Height = 17
        Caption = 'Coluna Se'#231#227'o em Lista de Separa'#231#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = CB_DESCOMClick
      end
      object CB_REFNOM: TCheckBox
        Left = 33
        Top = 201
        Width = 225
        Height = 17
        Caption = 'Anexar a Referencia ao nome do produto'
        TabOrder = 11
        OnClick = CB_DESCOMClick
      end
      object CB_PEND_LISTASEP: TCheckBox
        Left = 33
        Top = 222
        Width = 225
        Height = 17
        Caption = 'Imprimir pendencia em lista de separa'#231#227'o'
        TabOrder = 12
        OnClick = CB_DESCOMClick
      end
      object cb_marcanao: TCheckBox
        Left = 33
        Top = 242
        Width = 225
        Height = 17
        Caption = 'Nao Imprimir Marca do Produto'
        TabOrder = 13
        OnClick = CB_DESCOMClick
      end
      object CB_PEDPEQ_DESCCOMP_MARCA: TCheckBox
        Left = 32
        Top = 261
        Width = 359
        Height = 17
        Caption = '(Descri'#231#227'o Complementar ao inves de marca)'
        TabOrder = 14
        Visible = False
        OnClick = CB_DESCOMClick
      end
      object CB_JUROS_MULTAS_LSEP_MOD_PEQ: TCheckBox
        Left = 32
        Top = 283
        Width = 359
        Height = 17
        Caption = 'Imprimir Juros e Multas Na lista de Separa'#231#227'o Modelo Pequeno'
        TabOrder = 15
        OnClick = CB_DESCOMClick
      end
      object cb_totaldescVlrTotLiq: TCheckBox
        Left = 32
        Top = 305
        Width = 359
        Height = 16
        Caption = 'Imprimir total dos descontos e valor total liquido'
        TabOrder = 16
        OnClick = CB_DESCOMClick
      end
      object cb_traco_horizontal: TCheckBox
        Left = 32
        Top = 346
        Width = 359
        Height = 17
        Caption = 'Imprimir traco horizontal'
        Checked = True
        State = cbChecked
        TabOrder = 17
        OnClick = CB_DESCOMClick
      end
      object cb_traco_vertical: TCheckBox
        Left = 34
        Top = 365
        Width = 359
        Height = 17
        Caption = 'Imprimir traco vertical'
        Checked = True
        State = cbChecked
        TabOrder = 18
        OnClick = CB_DESCOMClick
      end
      object cb_totalItemComIpi: TCheckBox
        Left = 33
        Top = 327
        Width = 359
        Height = 16
        Caption = 'Imprimir Total Liquido Com IPI'
        TabOrder = 19
        OnClick = CB_DESCOMClick
      end
      object cb_descricao_fornecedor: TCheckBox
        Left = 34
        Top = 387
        Width = 359
        Height = 17
        Caption = 'Descri'#231#227'o do Fornecedor'
        TabOrder = 20
        Visible = False
        OnClick = CB_DESCOMClick
      end
    end
    object Ts_Relatorio: TTabSheet
      Caption = 'Ts_Relatorio'
      ImageIndex = 1
      object rlPedido: TRLReport
        Left = 80
        Top = -384
        Width = 794
        Height = 1123
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlPedidoBeforePrint
        object rl_cablogo: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 116
          BandType = btHeader
          object RLImage_cab: TRLImage
            Left = 0
            Top = 0
            Width = 302
            Height = 115
            Stretch = True
          end
          object rldb_razao: TRLDBText
            Left = 303
            Top = 0
            Width = 414
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cnpj_ie: TRLMemo
            Left = 303
            Top = 21
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rldb_ender: TRLDBMemo
            Left = 303
            Top = 34
            Width = 414
            Height = 32
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rlcab_fonefax: TRLMemo
            Left = 303
            Top = 67
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rlcab_email: TRLMemo
            Left = 303
            Top = 83
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
          object rl_cabhome: TRLMemo
            Left = 303
            Top = 99
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rldb_razao
            ParentFont = False
          end
        end
        object rl_cabtit: TRLBand
          Left = 38
          Top = 154
          Width = 718
          Height = 33
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object lblObs: TRLLabel
            Left = 2
            Top = 0
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabchave: TRLLabel
            Left = 488
            Top = 0
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLcabcli: TRLBand
          Left = 38
          Top = 187
          Width = 718
          Height = 198
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_cabcli: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText4: TRLDBText
            Left = 77
            Top = 3
            Width = 636
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadcnpj: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object db_cnpj: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadend: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object db_ender: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_bairro: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object db_bairro: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadloc: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object db_cidade: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_uf: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object db_uf: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cep: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object db_cep: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_ie: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_ie: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object db_nomcon: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabcont: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object db_fonecon: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_fone01: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadvend: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object db_nomven: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_datped: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object db_datped: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_pag: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object db_barpag: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object db_pag: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object db_qtdpag: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object db_fone: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object lbl_assessor: TRLLabel
            Left = 4
            Top = 128
            Width = 138
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object txt_assessor: TRLDBText
            Left = 144
            Top = 128
            Width = 150
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 297
            Top = 129
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'Validade:'
          end
          object RLDBText1: TRLDBText
            Left = 362
            Top = 128
            Width = 91
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 77
            Top = 147
            Width = 217
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object RLDBText9: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLLabel70: TRLLabel
            Left = 4
            Top = 167
            Width = 157
            Height = 16
            AutoSize = False
            Caption = 'Ponto de Referencia:'
          end
          object RLDBText5: TRLDBText
            Left = 163
            Top = 166
            Width = 359
            Height = 16
            AutoSize = False
            DataField = 'CPONTOR'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldet_numdoc: TRLDBText
            Left = 299
            Top = 147
            Width = 224
            Height = 16
            AutoSize = False
            DataField = 'numdoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText108: TRLDBText
            Left = 457
            Top = 129
            Width = 252
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'calc_P1ORC_METAL_QTD_VIAS_PROD'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo8: TRLDBMemo
            Left = 526
            Top = 146
            Width = 180
            Height = 39
            Alignment = taCenter
            AutoSize = False
            DataField = 'calc_P1ORC_METAL_TIPOS_CORTES'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 385
          Width = 718
          Height = 365
          DataSource = DM2.Src_Cor
          object RLGroup1: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 368
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'GRUPO'
            AfterPrint = RLGroup1AfterPrint
            BeforePrint = RLGroup1BeforePrint
            object rl_cabitens: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLcabCodpro: TRLLabel
                Left = 1
                Top = 0
                Width = 46
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabQtd: TRLLabel
                Left = 93
                Top = 0
                Width = 42
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabUnd: TRLLabel
                Left = 135
                Top = 0
                Width = 26
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Und'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabNome: TRLLabel
                Left = 161
                Top = 0
                Width = 216
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabMarca: TRLLabel
                Left = 379
                Top = 0
                Width = 64
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Marca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabPU: TRLLabel
                Left = 444
                Top = 0
                Width = 70
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabTotal: TRLLabel
                Left = 639
                Top = 0
                Width = 76
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_secao: TRLLabel
                Left = 49
                Top = 2
                Width = 44
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Se'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object rlcab_totdesc: TRLLabel
                Left = 569
                Top = 0
                Width = 70
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Total Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_P2VALIPI: TRLLabel
                Left = 510
                Top = 2
                Width = 60
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor IPI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
            end
            object rl_cabamb: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object db_cabamb: TRLDBText
                Left = 0
                Top = 0
                Width = 718
                Height = 15
                Align = faTop
                Alignment = taCenter
                DataField = 'GRUPO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_detitens: TRLBand
              Left = 0
              Top = 35
              Width = 718
              Height = 13
              AutoSize = True
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = rl_detitensBeforePrint
              object RLQtd: TRLDBText
                Left = 93
                Top = 0
                Width = 42
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabQtd
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLUnd: TRLDBText
                Left = 135
                Top = 0
                Width = 26
                Height = 13
                AutoSize = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabUnd
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object rldet_totdesc: TRLDBText
                Left = 569
                Top = 0
                Width = 70
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2TOTDES'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_totdesc
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLTotal: TRLDBText
                Left = 639
                Top = 0
                Width = 76
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabTotal
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object rlnome: TRLMemo
                Left = 161
                Top = 0
                Width = 216
                Height = 13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabNome
                ParentFont = False
              end
              object RLCodPro: TRLDBText
                Left = 1
                Top = 0
                Width = 46
                Height = 13
                AutoSize = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLcabCodpro
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object edt_secao: TRLDBText
                Left = 49
                Top = 0
                Width = 44
                Height = 13
                AutoSize = False
                DataField = 'endereco'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_secao
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLPU: TRLDBText
                Left = 444
                Top = 0
                Width = 70
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2PRECO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabPU
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object RLMarca: TRLDBMemo
                Left = 379
                Top = -1
                Width = 64
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabMarca
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
              end
              object rldb_P2VALIPI: TRLDBText
                Left = 510
                Top = 0
                Width = 60
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2VALIPI'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_P2VALIPI
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome
                SecondHoldStyle = hsCopyHeight
                Visible = False
              end
            end
            object rl_desc: TRLBand
              Left = 0
              Top = 48
              Width = 718
              Height = 19
              Visible = False
              BeforePrint = rl_descBeforePrint
              object TRL_desc: TRLRichText
                Left = 0
                Top = 0
                Width = 718
                Height = 19
              end
            end
            object RLSubDetail_CMET: TRLSubDetail
              Left = 0
              Top = 67
              Width = 718
              Height = 62
              DataSource = Src_Ped02_CMet
              object RLBand_cmet_cab: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object lbl_cmet_subprod: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Sub-Prod'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_descricao: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_larg: TRLLabel
                  Left = 289
                  Top = 2
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Larg  x  Comp'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_peso_unit: TRLLabel
                  Left = 380
                  Top = 2
                  Width = 60
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso p/Pe'#231'a'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_qtd: TRLLabel
                  Left = 439
                  Top = 3
                  Width = 64
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Qtd. Pe'#231'as'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_peso: TRLLabel
                  Left = 572
                  Top = 3
                  Width = 70
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_pcouni: TRLLabel
                  Left = 502
                  Top = 3
                  Width = 70
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Pre'#231'o Unitario'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object lbl_cmet_valor_total: TRLLabel
                  Left = 642
                  Top = 4
                  Width = 74
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Valor Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand_cmet_det: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand_cmet_detBeforePrint
                object edt_cmet_subprod: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'P2CM_CODIGO'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_subprod
                  ParentFont = False
                end
                object edt_cmet_descricao: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  AutoSize = False
                  DataField = 'CMET_NOME'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_descricao
                  ParentFont = False
                end
                object edt_cmet_larg: TRLDBText
                  Left = 289
                  Top = 0
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'LARG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_larg
                  ParentFont = False
                end
                object edt_cmet_peso_unit: TRLDBText
                  Left = 380
                  Top = 0
                  Width = 60
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG_UNIT'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso_unit
                  ParentFont = False
                end
                object edt_cmet_qtd: TRLDBText
                  Left = 439
                  Top = 1
                  Width = 64
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_PECAS'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_qtd
                  ParentFont = False
                end
                object edt_cmet_peso: TRLDBText
                  Left = 572
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso
                  ParentFont = False
                end
                object edt_cmet_pcouni: TRLDBText
                  Left = 502
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_PITEM_PRECO'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_pcouni
                  ParentFont = False
                end
                object RLDBText11: TRLDBText
                  Left = 572
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso
                  ParentFont = False
                end
                object edt_cmet_valor_total: TRLDBText
                  Left = 642
                  Top = 1
                  Width = 74
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'VALOR_TOTAL'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_valor_total
                  ParentFont = False
                end
              end
              object RLBand5: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                BeforePrint = RLBand5BeforePrint
                object rod_cmet_peso_unit: TRLLabel
                  Left = 380
                  Top = 1
                  Width = 60
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso_unit
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object rod_cmet_descricao: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Totais do sub-produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_descricao
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object rod_cmet_subprod: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_subprod
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object rod_cmet_larg: TRLLabel
                  Left = 289
                  Top = 1
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_larg
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object rod_cmet_qtd: TRLLabel
                  Left = 439
                  Top = 2
                  Width = 64
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_qtd
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object rod_cmet_peso: TRLLabel
                  Left = 572
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object tot_cmet_pcouni: TRLLabel
                  Left = 502
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_pcouni
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel18: TRLLabel
                  Left = 572
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_peso
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object tot_cmet_valor_total: TRLLabel
                  Left = 642
                  Top = 2
                  Width = 74
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = lbl_cmet_valor_total
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
            object RLSubDetail_kit: TRLSubDetail
              Left = 0
              Top = 129
              Width = 718
              Height = 62
              DataSource = src_Pro_Kit
              BeforePrint = RLSubDetail_kitBeforePrint
              object RLBand7: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object RLLabel17: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #205'tem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel20: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel21: TRLLabel
                  Left = 289
                  Top = 2
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Und'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel22: TRLLabel
                  Left = 380
                  Top = 2
                  Width = 102
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade por KIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel26: TRLLabel
                  Left = 620
                  Top = 4
                  Width = 98
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand8: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand8BeforePrint
                object RLDBText13: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'KIT_ORDEM'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel17
                  ParentFont = False
                end
                object RLDBText14: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  AutoSize = False
                  DataField = 'PDNOME'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel20
                  ParentFont = False
                end
                object RLDBText15: TRLDBText
                  Left = 289
                  Top = 0
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'PDUND'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel21
                  ParentFont = False
                end
                object RLDBText16: TRLDBText
                  Left = 380
                  Top = 0
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'KIT_QTD'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel22
                  ParentFont = False
                end
                object RLDBText21: TRLDBText
                  Left = 620
                  Top = 1
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'QTDTOT'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel26
                  ParentFont = False
                end
              end
              object RLBand9: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                BeforePrint = RLBand9BeforePrint
                object RLLabel28: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel20
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel29: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel17
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel30: TRLLabel
                  Left = 289
                  Top = 1
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel21
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel35: TRLLabel
                  Left = 620
                  Top = 2
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel26
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel27: TRLLabel
                  Left = 380
                  Top = 1
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel22
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
          end
        end
        object rl_rodOrcCiente: TRLBand
          Left = 38
          Top = 1081
          Width = 718
          Height = 127
          BandType = btSummary
          object RLLabel4: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText3: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 404
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel6: TRLLabel
            Left = 403
            Top = 73
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel7: TRLLabel
            Left = 403
            Top = 89
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel8: TRLLabel
            Left = 487
            Top = 89
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel9: TRLLabel
            Left = 402
            Top = 109
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo5: TRLDBMemo
            Left = 406
            Top = 41
            Width = 310
            Height = 31
            Alignment = taCenter
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rl_RodOrcObs: TRLBand
          Left = 38
          Top = 952
          Width = 718
          Height = 79
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = rl_RodOrcObsBeforePrint
          object dbprazos: TRLDBText
            Left = 1
            Top = 6
            Width = 710
            Height = 16
            AutoSize = False
            DataField = 'prazos'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_formapag: TRLDBText
            Left = 141
            Top = 24
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'formpag'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblFormaPgto: TRLLabel
            Left = 2
            Top = 24
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object RLLabel10: TRLLabel
            Left = 4
            Top = 43
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
          end
          object RLDBText6: TRLDBText
            Left = 141
            Top = 43
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'nometra'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 514
            Top = 60
            Width = 143
            Height = 16
            AutoSize = False
            Caption = 'Margem de Negocia'#231#227'o:'
          end
          object RLDBText10: TRLDBText
            Left = 658
            Top = 60
            Width = 58
            Height = 16
            AutoSize = False
            DataField = 'MNegoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 1208
          Width = 718
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand2BeforePrint
          object RLSystemInfo2: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object banner: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3_Servicos: TRLSubDetail
          Left = 38
          Top = 772
          Width = 718
          Height = 87
          DataSource = DM2.Src_Ser
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = 16767411
          object RLGroup2: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 86
            DataFields = 'TIPO'
            object RLBand3: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object lbl_codser: TRLLabel
                Left = 1
                Top = 0
                Width = 64
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_qtdser: TRLLabel
                Left = 65
                Top = 0
                Width = 72
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_nomser: TRLLabel
                Left = 144
                Top = 0
                Width = 416
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO SERVI'#199'O'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_pcouniser: TRLLabel
                Left = 563
                Top = 0
                Width = 74
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_vtserv: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand_detser: TRLBand
              Left = 0
              Top = 19
              Width = 718
              Height = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = RLBand_detserBeforePrint
              object edt_codser: TRLDBText
                Left = 1
                Top = 0
                Width = 64
                Height = 13
                AutoSize = False
                DataField = 'P2SCODPRO'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser
                SecondHoldStyle = hsCopyHeight
              end
              object edt_qtdser: TRLDBText
                Left = 65
                Top = 0
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2SQTD'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText12: TRLDBText
                Left = 451
                Top = 0
                Width = 111
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser
                SecondHoldStyle = hsCopyHeight
              end
              object edt_pcouniser: TRLDBText
                Left = 563
                Top = 0
                Width = 74
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2SPRECO'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser
                SecondHoldStyle = hsCopyHeight
              end
              object edt_vtserv: TRLDBText
                Left = 637
                Top = 0
                Width = 78
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser
                SecondHoldStyle = hsCopyHeight
              end
              object edt_nomser: TRLMemo
                Left = 144
                Top = 0
                Width = 416
                Height = 13
              end
            end
            object RLBand_serrod: TRLBand
              Left = 0
              Top = 33
              Width = 718
              Height = 17
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand_serrodBeforePrint
              object txt_totserbru: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel13: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total dos Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand6_desconto: TRLBand
              Left = 0
              Top = 50
              Width = 718
              Height = 18
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand6_descontoBeforePrint
              object RLLabel19: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total do Desconto Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object txt_totserdesc: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand4_totliq: TRLBand
              Left = 0
              Top = 68
              Width = 718
              Height = 17
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand4_totliqBeforePrint
              object RLLabel15: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Liquido dos Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object txt_totserliq: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object RLBand10: TRLBand
          Left = 38
          Top = 1031
          Width = 718
          Height = 16
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object rlObs_pedido: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object rl_obs01: TRLBand
          Left = 38
          Top = 1047
          Width = 718
          Height = 34
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object txt_obs01: TRLRichText
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            IntegralHeight = True
            ParentFont = False
          end
          object obs_extra: TRLMemo
            Left = 0
            Top = 18
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDet_pedencias: TRLSubDetail
          Left = 38
          Top = 859
          Width = 718
          Height = 55
          DataSource = src_pend
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand_pend_cabger: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            object RLLabel69: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'PENDENCIAS DO PEDIDO'
            end
          end
          object RLBand_pend_cabdet: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_PECODPRO: TRLLabel
              Left = 7
              Top = 3
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'd.Prod'
              Layout = tlCenter
            end
            object lbl_PEQTDPED: TRLLabel
              Left = 48
              Top = 4
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd.Ped'
              Layout = tlCenter
            end
            object lbl_PEQTDENV: TRLLabel
              Left = 88
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Envidadas'
              Layout = tlCenter
            end
            object lbl_PEQTDPEN: TRLLabel
              Left = 138
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pendencias'
              Layout = tlCenter
            end
            object lbl_PDUND: TRLLabel
              Left = 188
              Top = 4
              Width = 24
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object lbl_PDNOME: TRLLabel
              Left = 213
              Top = 3
              Width = 306
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o das Mercadorias'
              Layout = tlCenter
            end
            object rlcabpend_marca: TRLLabel
              Left = 526
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object rlcabpend_pu: TRLLabel
              Left = 589
              Top = 0
              Width = 60
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'P'#231'o.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object rlcabped_vt: TRLLabel
              Left = 651
              Top = 1
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_pend_det: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDB_PECODPRO: TRLDBText
              Left = 7
              Top = 2
              Width = 40
              Height = 12
              AutoSize = False
              DataField = 'PECODPRO'
              DataSource = src_pend
              Holder = lbl_PECODPRO
              Layout = tlCenter
            end
            object RLDB_PEQTDPED: TRLDBText
              Left = 48
              Top = 2
              Width = 40
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPED'
              DataSource = src_pend
              Holder = lbl_PEQTDPED
              Layout = tlCenter
            end
            object RLDB_PEQTDENV: TRLDBText
              Left = 88
              Top = 3
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDENV'
              DataSource = src_pend
              Holder = lbl_PEQTDENV
              Layout = tlCenter
            end
            object RLDB_PEQTDPEN: TRLDBText
              Left = 138
              Top = 3
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPEN'
              DataSource = src_pend
              Holder = lbl_PEQTDPEN
              Layout = tlCenter
            end
            object RLDB_PDUND: TRLDBText
              Left = 188
              Top = 3
              Width = 24
              Height = 12
              AutoSize = False
              DataField = 'PDUND'
              DataSource = src_pend
              Holder = lbl_PDUND
              Layout = tlCenter
            end
            object RLDB_PDNOME: TRLDBText
              Left = 213
              Top = 4
              Width = 306
              Height = 12
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_pend
              Holder = lbl_PDNOME
              Layout = tlCenter
            end
            object RLDBMemo2: TRLDBMemo
              Left = 526
              Top = 0
              Width = 64
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDMARCA'
              DataSource = src_pend
              Holder = rlcabpend_marca
            end
            object RLDBText84: TRLDBText
              Left = 589
              Top = 0
              Width = 60
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PEPRECO'
              DataSource = src_pend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabpend_pu
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText85: TRLDBText
              Left = 651
              Top = 0
              Width = 66
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'total'
              DataSource = src_pend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcabped_vt
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 38
          Top = 914
          Width = 718
          Height = 38
          DataSource = DM1.Src_Ped01V
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            ColCount = 4
            object RLDBText7: TRLDBText
              Left = 5
              Top = 1
              Width = 55
              Height = 12
              AutoSize = False
              DataField = 'P1VDATAV'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText8: TRLDBText
              Left = 121
              Top = 1
              Width = 57
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'P1VVALOR'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText17: TRLDBText
              Left = 60
              Top = 1
              Width = 60
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomfp'
              DataSource = DM1.Src_Ped01V
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -7
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel12: TRLLabel
              Left = 3
              Top = 0
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Vencimentos e Valores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLSubDet_gru_mod01: TRLSubDetail
          Left = 38
          Top = 750
          Width = 718
          Height = 22
          DataSource = src_sub_det_grupo
          object RLdet_sub_gru_mod01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            object rldbtext_descricao_gru_mod01: TRLDBText
              Left = 0
              Top = 0
              Width = 628
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'descricao'
              DataSource = src_sub_det_grupo
              Text = #39
            end
            object RLDBText169: TRLDBText
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valor'
              DataSource = src_sub_det_grupo
            end
          end
        end
      end
    end
    object Ts_Relatorio2: TTabSheet
      Caption = 'Ts_Relatorio2'
      ImageIndex = 2
      object rlPedido2: TRLReport
        Left = 80
        Top = -299
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlPedido2BeforePrint
        object rl_cablogo2: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 116
          BandType = btHeader
          object RLImage_cab2: TRLImage
            Left = 0
            Top = 0
            Width = 302
            Height = 115
            Stretch = True
          end
          object RLDBText18: TRLDBText
            Left = 303
            Top = 0
            Width = 414
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 303
            Top = 21
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText18
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 303
            Top = 34
            Width = 414
            Height = 32
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText18
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 303
            Top = 67
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText18
            ParentFont = False
          end
          object RLMemo3: TRLMemo
            Left = 303
            Top = 83
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText18
            ParentFont = False
          end
          object RLMemo4: TRLMemo
            Left = 303
            Top = 99
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText18
            ParentFont = False
          end
        end
        object rl_cabtit2: TRLBand
          Left = 39
          Top = 155
          Width = 716
          Height = 33
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object lblObs2: TRLLabel
            Left = 2
            Top = 0
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabchave2: TRLLabel
            Left = 488
            Top = 0
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand31: TRLBand
          Left = 39
          Top = 885
          Width = 716
          Height = 106
          BandType = btSummary
          object RLLabel97: TRLLabel
            Left = 3
            Top = 3
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText61: TRLDBText
            Left = 3
            Top = 20
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel98: TRLLabel
            Left = 404
            Top = 3
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel99: TRLLabel
            Left = 403
            Top = 50
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel100: TRLLabel
            Left = 403
            Top = 66
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel101: TRLLabel
            Left = 487
            Top = 66
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel102: TRLLabel
            Left = 402
            Top = 85
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBM_ecf_razao: TRLDBMemo
            Left = 404
            Top = 20
            Width = 310
            Height = 31
            Alignment = taCenter
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand33: TRLBand
          Left = 39
          Top = 991
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand2BeforePrint
          object RLSystemInfo5: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 15
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel106: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel107: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand32: TRLBand
          Left = 39
          Top = 601
          Width = 716
          Height = 138
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand32BeforePrint
          object RL_EMP: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EXCLUSIVO DA EMPRESA ..:'
          end
          object RLLabel231: TRLLabel
            Left = 277
            Top = 78
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel240: TRLLabel
            Left = 496
            Top = 63
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel241: TRLLabel
            Left = 496
            Top = 48
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel232: TRLLabel
            Left = 277
            Top = 63
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel104: TRLLabel
            Left = 1
            Top = 48
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'VALIDADE SUPERIOR A 12 MESES?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel105: TRLLabel
            Left = 1
            Top = 33
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'EMBALAGEM N'#195'O POSSUI DANO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel169: TRLLabel
            Left = 0
            Top = 18
            Width = 277
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'PRODUTO DE GELADEIRA? T.'#176'C ADEQUADA?      _____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel238: TRLLabel
            Left = 1
            Top = 78
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'MEDICAMENTO CONTROLADO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel244: TRLLabel
            Left = 496
            Top = 33
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel236: TRLLabel
            Left = 277
            Top = 48
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel234: TRLLabel
            Left = 277
            Top = 33
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel131: TRLLabel
            Left = 496
            Top = 18
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel122: TRLLabel
            Left = 277
            Top = 18
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel123: TRLLabel
            Left = 496
            Top = 78
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel124: TRLLabel
            Left = 496
            Top = 108
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel125: TRLLabel
            Left = 277
            Top = 108
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel103: TRLLabel
            Left = 1
            Top = 63
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'LOTE DO MATERIAL CONFERE COM PEDIDO?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel237: TRLLabel
            Left = 1
            Top = 108
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'CAMINH'#195'O COM FICHA DE INSPE'#199#195'O?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel108: TRLLabel
            Left = 1
            Top = 123
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'OBS:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel109: TRLLabel
            Left = 277
            Top = 123
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel110: TRLLabel
            Left = 496
            Top = 123
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel112: TRLLabel
            Left = 1
            Top = 93
            Width = 276
            Height = 15
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'ETIQUETA'#199#195'O?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel113: TRLLabel
            Left = 277
            Top = 93
            Width = 220
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel114: TRLLabel
            Left = 496
            Top = 93
            Width = 222
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '[  ] N'#195'O CONFERE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand41: TRLBand
          Left = 39
          Top = 739
          Width = 716
          Height = 146
          AutoSize = True
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel120: TRLLabel
            Left = 4
            Top = 11
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
          end
          object RLDBText74: TRLDBText
            Left = 141
            Top = 11
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'nometra'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel126: TRLLabel
            Left = 6
            Top = 35
            Width = 192
            Height = 16
            AutoSize = False
            Caption = 'Data da Coleta: ___/___/______'
          end
          object RLLabel127: TRLLabel
            Left = 198
            Top = 35
            Width = 294
            Height = 16
            AutoSize = False
            Caption = 'Assinatura:_______________________________________________'
          end
          object RLLabel111: TRLLabel
            Left = 500
            Top = 35
            Width = 213
            Height = 16
            AutoSize = False
            Caption = 'Previs'#227'o Chegada: ___/___/______'
          end
          object RLLabel3: TRLLabel
            Left = 6
            Top = 55
            Width = 499
            Height = 16
            AutoSize = False
            Caption = 
              'Separado em:___/___/______ por: ________________________________' +
              '____________'
          end
          object RLLabel23: TRLLabel
            Left = 6
            Top = 81
            Width = 499
            Height = 16
            AutoSize = False
            Caption = 
              'Conferido em:___/___/______ por: _______________________________' +
              '_____________'
          end
          object rlObs_pedido2: TRLMemo
            Left = 8
            Top = 130
            Width = 716
            Height = 16
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand13: TRLBand
          Left = 39
          Top = 188
          Width = 716
          Height = 166
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.OppositeColor = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel24: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText19: TRLDBText
            Left = 77
            Top = 3
            Width = 636
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object RLDBText20: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object RLDBText22: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object RLDBText23: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object RLDBText24: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object RLDBText25: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object RLDBText26: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object RLDBText28: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object RLDBText29: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object RLDBText31: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object RLDBText32: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object RLLabel42: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object lbl_prazoentrega: TRLLabel
            Left = 4
            Top = 128
            Width = 141
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object RLDBText33: TRLDBText
            Left = 156
            Top = 128
            Width = 227
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 388
            Top = 129
            Width = 132
            Height = 16
            AutoSize = False
            Caption = 'Validade da Proposta:'
          end
          object RLDBText34: TRLDBText
            Left = 524
            Top = 129
            Width = 185
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 77
            Top = 147
            Width = 396
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object RLDBText36: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel47: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLDBText48: TRLDBText
            Left = 531
            Top = 147
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'numdoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 39
          Top = 505
          Width = 716
          Height = 67
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = DM1.Src_Ped01V
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDetailGrid3: TRLDetailGrid
            Left = 0
            Top = 50
            Width = 716
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            ColCount = 4
            object RLDBText37: TRLDBText
              Left = 5
              Top = 1
              Width = 55
              Height = 12
              AutoSize = False
              DataField = 'P1VDATAV'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText38: TRLDBText
              Left = 121
              Top = 1
              Width = 57
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'P1VVALOR'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText39: TRLDBText
              Left = 60
              Top = 1
              Width = 60
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomfp'
              DataSource = DM1.Src_Ped01V
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -7
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 50
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel49: TRLLabel
              Left = 3
              Top = 32
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Vencimentos e Valores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel48: TRLLabel
              Left = 6
              Top = 9
              Width = 499
              Height = 16
              AutoSize = False
              Caption = 
                'Autorizado em:___/___/______ por: ______________________________' +
                '______________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail5: TRLSubDetail
          Left = 39
          Top = 355
          Width = 716
          Height = 80
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = DM2.Src_Cor
          object RLBand11: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object RLcabCodpro2: TRLLabel
              Left = 1
              Top = 0
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl_secao2: TRLLabel
              Left = 49
              Top = 0
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Se'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel57: TRLLabel
              Left = 96
              Top = 0
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel58: TRLLabel
              Left = 146
              Top = 0
              Width = 26
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rlcab_pdnome: TRLLabel
              Left = 173
              Top = 0
              Width = 276
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CARACTER'#205'STICAS DO PRODUTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rcab_marca: TRLLabel
              Left = 451
              Top = 0
              Width = 112
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel61: TRLLabel
              Left = 563
              Top = 0
              Width = 74
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel62: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand14: TRLBand
            Left = 0
            Top = 47
            Width = 716
            Height = 50
            BandType = btFooter
            object RLLabel50: TRLLabel
              Left = 438
              Top = 1
              Width = 91
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Bruto..:'
            end
            object RLLabel51: TRLLabel
              Left = 376
              Top = 17
              Width = 153
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Desconto..:'
            end
            object RLLabel52: TRLLabel
              Left = 376
              Top = 33
              Width = 153
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Liquido..:'
            end
            object RLDBText45: TRLDBText
              Left = 529
              Top = 1
              Width = 184
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTALB'
              DataSource = DM2.Src_Cab
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText46: TRLDBText
              Left = 529
              Top = 17
              Width = 184
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTDES'
              DataSource = DM2.Src_Cab
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText47: TRLDBText
              Left = 529
              Top = 33
              Width = 184
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTALL'
              DataSource = DM2.Src_Cab
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand16: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 31
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand16AfterPrint
            BeforePrint = RLBand16BeforePrint
            object RLDBText40: TRLDBText
              Left = 96
              Top = 0
              Width = 50
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTD'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText41: TRLDBText
              Left = 146
              Top = 0
              Width = 26
              Height = 13
              AutoSize = False
              DataField = 'PDUND'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText42: TRLDBText
              Left = 563
              Top = 0
              Width = 74
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2PRECO'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText43: TRLDBText
              Left = 637
              Top = 0
              Width = 78
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_pdnome: TRLMemo
              Left = 173
              Top = 0
              Width = 276
              Height = 13
              Holder = rlcab_pdnome
            end
            object rldetped_marca: TRLDBMemo
              Left = 451
              Top = 0
              Width = 112
              Height = 13
              AutoSize = False
              DataField = 'PDMARCA'
              DataSource = DM2.Src_Cor
            end
            object RLDBText44: TRLDBText
              Left = 1
              Top = 0
              Width = 46
              Height = 13
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object edt_secao2: TRLDBText
              Left = 49
              Top = 1
              Width = 46
              Height = 13
              AutoSize = False
              DataField = 'endereco'
              DataSource = DM2.Src_Cor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHolder = rldet_pdnome
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBMemo4: TRLDBMemo
              Left = 66
              Top = 16
              Width = 650
              Height = 13
              DataField = 'lote2'
              DataSource = DM2.Src_Cor
            end
            object RLLabel54: TRLLabel
              Left = 1
              Top = 16
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Lote(s):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object rlSubPen2: TRLSubDetail
          Left = 39
          Top = 435
          Width = 716
          Height = 70
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = DM1.Src_Pen
          BeforePrint = rlSubPen2BeforePrint
          object RLBand15: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 36
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel53: TRLLabel
              Left = 1
              Top = 19
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel55: TRLLabel
              Left = 96
              Top = 19
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel56: TRLLabel
              Left = 146
              Top = 19
              Width = 26
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object rlcabpen_pdnome: TRLLabel
              Left = 172
              Top = 19
              Width = 279
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'CARACTER'#205'STICAS DO PRODUTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = rldetpen_pdnome
              ParentFont = False
            end
            object rlcabpen_marca: TRLLabel
              Left = 451
              Top = 19
              Width = 112
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel65: TRLLabel
              Left = 563
              Top = 19
              Width = 74
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel66: TRLLabel
              Left = 637
              Top = 19
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel67: TRLLabel
              Left = 174
              Top = 1
              Width = 280
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'PENDENCIAS DE MERCADORIAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand18: TRLBand
            Left = 0
            Top = 36
            Width = 716
            Height = 14
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand18BeforePrint
            object RLDBText51: TRLDBText
              Left = 96
              Top = 0
              Width = 50
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPEN'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText52: TRLDBText
              Left = 146
              Top = 0
              Width = 26
              Height = 13
              AutoSize = False
              DataField = 'undpro'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText53: TRLDBText
              Left = 563
              Top = 0
              Width = 74
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEPRECO'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText54: TRLDBText
              Left = 637
              Top = 0
              Width = 78
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object rldetpen_marca: TRLDBMemo
              Left = 451
              Top = 0
              Width = 112
              Height = 13
              AutoSize = False
              DataField = 'marca'
              DataSource = DM1.Src_Pen
            end
            object RLDBText55: TRLDBText
              Left = 1
              Top = 0
              Width = 96
              Height = 13
              AutoSize = False
              DataField = 'PECODPRO'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object rldetpen_pdnome: TRLDBText
              Left = 172
              Top = 0
              Width = 279
              Height = 13
              AutoSize = False
              DataField = 'nompro'
              DataSource = DM1.Src_Pen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
          end
          object RLBand17: TRLBand
            Left = 0
            Top = 50
            Width = 716
            Height = 19
            BandType = btFooter
            BeforePrint = RLBand17BeforePrint
            object RLLabel68: TRLLabel
              Left = 438
              Top = 1
              Width = 91
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total..:'
            end
            object rlBruPen: TRLLabel
              Left = 530
              Top = 1
              Width = 184
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total..:'
            end
          end
        end
        object RLBand19: TRLBand
          Left = 39
          Top = 354
          Width = 716
          Height = 1
        end
        object rl_totliq_ped2: TRLBand
          Left = 39
          Top = 572
          Width = 716
          Height = 29
          BandType = btSummary
          BeforePrint = rl_totliq_ped2BeforePrint
          object lbl_totqtd_ped2: TRLLabel
            Left = 0
            Top = 1
            Width = 473
            Height = 16
            AutoSize = False
            Caption = 'Quantidade'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
    object tsImpressaopequena: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object RLReport_pedido_pequeno: TRLReport
        Left = 32
        Top = 56
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataSource = src_itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport_pedido_pequenoBeforePrint
        object RLGroup3: TRLGroup
          Left = 38
          Top = 38
          Width = 718
          Height = 323
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataFields = 'grupo'
          BeforePrint = RLGroup3BeforePrint
          object RLBand22: TRLBand
            Left = 1
            Top = 1
            Width = 716
            Height = 182
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object RLDBText49: TRLDBText
              Left = 0
              Top = 0
              Width = 60
              Height = 16
              Align = faLeftTop
              Alignment = taCenter
              DataField = 'empresa'
              DataSource = src_cabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText56: TRLDBText
              Left = 272
              Top = 21
              Width = 328
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'tipo_pedido'
              DataSource = src_cabecalho
            end
            object RLDBText50: TRLDBText
              Left = 40
              Top = 21
              Width = 74
              Height = 16
              DataField = 'data_pedido'
              DataSource = src_cabecalho
            end
            object RLLabel71: TRLLabel
              Left = 3
              Top = 21
              Width = 35
              Height = 16
              Caption = 'Data:'
            end
            object RLLabel72: TRLLabel
              Left = 603
              Top = 21
              Width = 57
              Height = 16
              Caption = 'PEDIDO:'
            end
            object RLDBText57: TRLDBText
              Left = 660
              Top = 21
              Width = 37
              Height = 16
              DataField = 'chave'
              DataSource = src_cabecalho
            end
            object RLDraw2: TRLDraw
              Left = 3
              Top = 39
              Width = 715
              Height = 1
            end
            object RLDraw1: TRLDraw
              Left = 1
              Top = 19
              Width = 715
              Height = 1
            end
            object RLLabel73: TRLLabel
              Left = 6
              Top = 40
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Nome:'
            end
            object RLDBText58: TRLDBText
              Left = 88
              Top = 40
              Width = 341
              Height = 16
              AutoSize = False
              DataField = 'cliente_razsoc'
              DataSource = src_cabecalho
            end
            object RLLabel74: TRLLabel
              Left = 446
              Top = 40
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'digo:'
            end
            object RLDBText59: TRLDBText
              Left = 507
              Top = 40
              Width = 93
              Height = 16
              AutoSize = False
              DataField = 'cliente_codigo'
              DataSource = src_cabecalho
            end
            object RLLabel75: TRLLabel
              Left = 6
              Top = 79
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Endere'#231'o:'
            end
            object RLDBText60: TRLDBText
              Left = 88
              Top = 78
              Width = 341
              Height = 16
              AutoSize = False
              DataField = 'cliente_endereco'
              DataSource = src_cabecalho
            end
            object RLLabel76: TRLLabel
              Left = 446
              Top = 75
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Telefone:'
            end
            object RLDBText62: TRLDBText
              Left = 505
              Top = 74
              Width = 208
              Height = 16
              AutoSize = False
              DataField = 'cliente_telefone'
              DataSource = src_cabecalho
            end
            object RLLabel78: TRLLabel
              Left = 8
              Top = 96
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cidade::'
            end
            object RLDBText64: TRLDBText
              Left = 90
              Top = 96
              Width = 200
              Height = 16
              AutoSize = False
              DataField = 'cliente_cidade'
              DataSource = src_cabecalho
            end
            object RLLabel79: TRLLabel
              Left = 305
              Top = 96
              Width = 48
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'UF:'
            end
            object RLDBText65: TRLDBText
              Left = 364
              Top = 95
              Width = 39
              Height = 16
              AutoSize = False
              DataField = 'cliente_uf'
              DataSource = src_cabecalho
            end
            object RLLabel77: TRLLabel
              Left = 445
              Top = 95
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Bairro:'
            end
            object RLDBText63: TRLDBText
              Left = 503
              Top = 94
              Width = 208
              Height = 16
              AutoSize = False
              DataField = 'cliente_bairro'
              DataSource = src_cabecalho
            end
            object RLLabel80: TRLLabel
              Left = 8
              Top = 116
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CNPJ/CPF:'
            end
            object RLDBText66: TRLDBText
              Left = 90
              Top = 116
              Width = 200
              Height = 16
              AutoSize = False
              DataField = 'cliente_cnpj_cpf'
              DataSource = src_cabecalho
            end
            object RLLabel82: TRLLabel
              Left = 304
              Top = 116
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Insc/RG:'
            end
            object RLDBText68: TRLDBText
              Left = 363
              Top = 116
              Width = 128
              Height = 16
              AutoSize = False
              DataField = 'cliente_ie_rg'
              DataSource = src_cabecalho
            end
            object RLLabel83: TRLLabel
              Left = 525
              Top = 116
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CEP:'
            end
            object RLDBText69: TRLDBText
              Left = 589
              Top = 116
              Width = 110
              Height = 16
              AutoSize = False
              DataField = 'cliente_cep'
              DataSource = src_cabecalho
            end
            object RLLabel81: TRLLabel
              Left = 8
              Top = 136
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Vendedor:'
            end
            object RLDBText67: TRLDBText
              Left = 91
              Top = 135
              Width = 231
              Height = 16
              AutoSize = False
              DataField = 'vendedor_nome'
              DataSource = src_cabecalho
            end
            object rlcab_codigo: TRLLabel
              Left = 8
              Top = 160
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object rlcab_qtd: TRLLabel
              Left = 78
              Top = 160
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quanidade'
              Layout = tlCenter
            end
            object rlcab_und: TRLLabel
              Left = 150
              Top = 160
              Width = 34
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object rlcab_descricao: TRLLabel
              Left = 191
              Top = 160
              Width = 280
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_marca: TRLLabel
              Left = 481
              Top = 160
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object rlcab_preco_unit: TRLLabel
              Left = 563
              Top = 160
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o.Unit'#225'rio'
              Layout = tlCenter
            end
            object rlcab_total: TRLLabel
              Left = 640
              Top = 160
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object RLDraw4: TRLDraw
              Left = 1
              Top = 157
              Width = 715
              Height = 1
            end
            object RLDBText83: TRLDBText
              Left = 660
              Top = 0
              Width = 56
              Height = 16
              Align = faRightTop
              Alignment = taCenter
              DataField = 'telefone'
              DataSource = src_cabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText107: TRLDBText
              Left = 166
              Top = 21
              Width = 100
              Height = 16
              DataField = 'data_documento'
              DataSource = src_cabecalho
            end
            object RLLabel59: TRLLabel
              Left = 115
              Top = 21
              Width = 48
              Height = 16
              Caption = 'Dt Doc:'
            end
            object RLDBText166: TRLDBText
              Left = 86
              Top = 59
              Width = 341
              Height = 16
              AutoSize = False
              DataField = 'cliente_fantasia'
              DataSource = src_cabecalho
            end
            object RLLabel143: TRLLabel
              Left = 4
              Top = 59
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Fantasia:'
            end
            object RLLabel144: TRLLabel
              Left = 447
              Top = 54
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Contato:'
            end
            object RLDBText167: TRLDBText
              Left = 508
              Top = 55
              Width = 204
              Height = 16
              AutoSize = False
              DataField = 'cliente_cnomcon'
              DataSource = src_cabecalho
            end
          end
          object RLBand23: TRLBand
            Left = 1
            Top = 199
            Width = 716
            Height = 108
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object RLLabel84: TRLLabel
              Left = 113
              Top = 5
              Width = 62
              Height = 16
              Caption = 'Unidades:'
            end
            object RLDBText70: TRLDBText
              Left = 186
              Top = 5
              Width = 40
              Height = 16
              DataField = 'totund'
              DataSource = src_cabecalho
            end
            object RLLabel85: TRLLabel
              Left = 15
              Top = 5
              Width = 36
              Height = 16
              Caption = 'Itens:'
            end
            object RLDBText71: TRLDBText
              Left = 56
              Top = 5
              Width = 50
              Height = 16
              DataField = 'qtditens'
              DataSource = src_cabecalho
            end
            object RLLabel86: TRLLabel
              Left = 15
              Top = 24
              Width = 136
              Height = 16
              Caption = 'Observa'#231#227'o do pedido:'
            end
            object RLDBMemo6: TRLDBMemo
              Left = 160
              Top = 24
              Width = 331
              Height = 38
              AutoSize = False
              DataField = 'observacao_pedido'
              DataSource = src_cabecalho
            end
            object RLLabel87: TRLLabel
              Left = 6
              Top = 71
              Width = 687
              Height = 16
              Caption = 
                'Data:     /     /                  Ass.: _______________________' +
                '________________________________________________'
            end
            object RLDraw3: TRLDraw
              Left = 1
              Top = 102
              Width = 713
              Height = 1
              Pen.Style = psDot
            end
            object RLLabel88: TRLLabel
              Left = 510
              Top = 2
              Width = 130
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total do Pedido:'
            end
            object RLDBText72: TRLDBText
              Left = 640
              Top = 2
              Width = 73
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_bruto'
              DataSource = src_cabecalho
            end
            object lblcab_totdes: TRLLabel
              Left = 510
              Top = 19
              Width = 130
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total dos descontos:'
            end
            object lbldet_totdes: TRLDBText
              Left = 640
              Top = 19
              Width = 73
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'descontos'
              DataSource = src_cabecalho
            end
            object lblcab_totliq: TRLLabel
              Left = 510
              Top = 53
              Width = 130
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total do Pedido:'
            end
            object lbldet_totliq: TRLDBText
              Left = 640
              Top = 54
              Width = 73
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total_liquido'
              DataSource = src_cabecalho
            end
            object rlRodJurosMulta: TRLLabel
              Left = -3
              Top = 91
              Width = 716
              Height = 16
              Alignment = taCenter
            end
            object lbl_cab_valfre: TRLLabel
              Left = 510
              Top = 36
              Width = 130
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor do Frete:'
            end
            object dbtext_cab_valfre: TRLDBText
              Left = 640
              Top = 35
              Width = 73
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valfre'
              DataSource = src_cabecalho
            end
          end
          object RLBand21: TRLBand
            Left = 1
            Top = 183
            Width = 716
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object rldet_codigo: TRLDBText
              Left = 8
              Top = -1
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'codigo'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_qtd: TRLDBText
              Left = 78
              Top = 0
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'qtd'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_und: TRLDBText
              Left = 150
              Top = 0
              Width = 34
              Height = 16
              AutoSize = False
              DataField = 'und'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_descricao: TRLDBText
              Left = 191
              Top = 0
              Width = 280
              Height = 16
              AutoSize = False
              DataField = 'descricao'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_marca: TRLDBText
              Left = 481
              Top = -1
              Width = 75
              Height = 16
              AutoSize = False
              DataField = 'marca'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_preco_unit: TRLDBText
              Left = 563
              Top = -1
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'preco_unit'
              DataSource = src_itens
              Layout = tlCenter
            end
            object rldet_total: TRLDBText
              Left = 640
              Top = -1
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = src_itens
              Layout = tlCenter
            end
          end
        end
      end
    end
    object tsOrcamentoServicos: TTabSheet
      Caption = 'Orcamento Servicos'
      ImageIndex = 4
      object rlOrcamentoServico: TRLReport
        Left = 80
        Top = 40
        Width = 794
        Height = 1123
        DataSource = src_nfse_det
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object rlos_cab01: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 40
          BandType = btHeader
          object RLLabel89: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 35
            Align = faTop
            Alignment = taCenter
            Caption = 'Or'#231'amento de Servicos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -30
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand24: TRLBand
          Left = 38
          Top = 78
          Width = 718
          Height = 115
          BandType = btHeader
          object RLLabel90: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'TOMADOR DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel91: TRLLabel
            Left = 9
            Top = 18
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Nome/Raz'#227'o Social:'
          end
          object RLDBText73: TRLDBText
            Left = 134
            Top = 18
            Width = 100
            Height = 16
            DataField = 'tomador_razao'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel92: TRLLabel
            Left = 9
            Top = 38
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ:'
          end
          object RLDBText75: TRLDBText
            Left = 135
            Top = 38
            Width = 91
            Height = 16
            DataField = 'tomador_cnpj'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel93: TRLLabel
            Left = 478
            Top = 38
            Width = 129
            Height = 16
            AutoSize = False
            Caption = 'Inscri'#231#227'o Municipal:'
          end
          object RLDBText76: TRLDBText
            Left = 614
            Top = 38
            Width = 80
            Height = 16
            DataField = 'tomador_im'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel94: TRLLabel
            Left = 8
            Top = 56
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o:'
          end
          object RLDBText77: TRLDBText
            Left = 133
            Top = 56
            Width = 101
            Height = 16
            DataField = 'tomador_ender'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel95: TRLLabel
            Left = 8
            Top = 74
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Bairro:'
          end
          object RLDBText78: TRLDBText
            Left = 133
            Top = 74
            Width = 102
            Height = 16
            DataField = 'tomador_bairro'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel96: TRLLabel
            Left = 8
            Top = 94
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Municipio:'
          end
          object RLDBText79: TRLDBText
            Left = 133
            Top = 94
            Width = 176
            Height = 16
            DataField = 'tomador_num_uf_cep_fone'
            DataSource = src_nfse_cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLNFSE_DEET01: TRLBand
          Left = 38
          Top = 209
          Width = 718
          Height = 300
          object RLLabel115: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'DISCRIMINA'#199#195'O DOS SERVI'#199'OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo7: TRLDBMemo
            Left = 0
            Top = 16
            Width = 718
            Height = 284
            Align = faClient
            AutoSize = False
            DataField = 'descricao'
            DataSource = src_nfse_det
          end
        end
        object RLNFSE_ROD06: TRLBand
          Left = 38
          Top = 509
          Width = 718
          Height = 36
          BandType = btSummary
          object RLPanel11: TRLPanel
            Left = 2
            Top = 0
            Width = 241
            Height = 35
            object RLLabel116: TRLLabel
              Left = 0
              Top = 0
              Width = 241
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Valor dos Servii'#231'os'
              Layout = tlCenter
            end
            object RLDBText80: TRLDBText
              Left = 0
              Top = 19
              Width = 241
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'total_servicos'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
          object RLPanel12: TRLPanel
            Left = 242
            Top = 0
            Width = 242
            Height = 35
            object RLLabel117: TRLLabel
              Left = 0
              Top = 0
              Width = 242
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Descontos'
              Layout = tlCenter
            end
            object RLDBText81: TRLDBText
              Left = 0
              Top = 19
              Width = 242
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'total_deducoes'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
          object RLPanel13: TRLPanel
            Left = 483
            Top = 0
            Width = 234
            Height = 35
            object RLLabel118: TRLLabel
              Left = 0
              Top = 0
              Width = 234
              Height = 16
              Align = faTop
              Alignment = taCenter
              Caption = 'Valor da Nota'
              Layout = tlCenter
            end
            object RLDBText82: TRLDBText
              Left = 0
              Top = 19
              Width = 234
              Height = 16
              Align = faBottom
              Alignment = taCenter
              DataField = 'total_liquido'
              DataSource = src_nfse_cab
              Layout = tlCenter
            end
          end
        end
        object RLBand25: TRLBand
          Left = 38
          Top = 193
          Width = 718
          Height = 16
          BandType = btHeader
          object rlcab_observacao: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsModelo03: TTabSheet
      Caption = 'Modelo 03'
      ImageIndex = 5
      object rlPedidoModelo03: TRLReport
        Left = 24
        Top = -386
        Width = 794
        Height = 1123
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlPedidoBeforePrint
        object RLBand4: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 116
          BandType = btHeader
          object RLImage_mod03: TRLImage
            Left = 0
            Top = 0
            Width = 302
            Height = 115
            Stretch = True
          end
          object RLDBText86: TRLDBText
            Left = 303
            Top = 0
            Width = 414
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo5: TRLMemo
            Left = 303
            Top = 21
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText86
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 303
            Top = 34
            Width = 414
            Height = 32
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText86
            ParentFont = False
          end
          object RLMemo6: TRLMemo
            Left = 303
            Top = 67
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText86
            ParentFont = False
          end
          object RLMemo7: TRLMemo
            Left = 303
            Top = 83
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText86
            ParentFont = False
          end
          object RLMemo8: TRLMemo
            Left = 303
            Top = 99
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText86
            ParentFont = False
          end
        end
        object rl_cabtit_mod03: TRLBand
          Left = 38
          Top = 154
          Width = 718
          Height = 33
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object lblObs_mod03: TRLLabel
            Left = 2
            Top = 0
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabchave_mod03: TRLLabel
            Left = 488
            Top = 0
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLcabcli_mod03: TRLBand
          Left = 38
          Top = 187
          Width = 718
          Height = 189
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel60: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText87: TRLDBText
            Left = 77
            Top = 3
            Width = 636
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel63: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object RLDBText88: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel64: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object RLDBText89: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel119: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object RLDBText90: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel121: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object RLDBText91: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel128: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object RLDBText92: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel129: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object RLDBText93: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText94: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel130: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object RLDBText95: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel132: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object RLDBText96: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText97: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel133: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object RLDBText98: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel134: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object RLDBText99: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel135: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object RLLabel136: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel137: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLLabel138: TRLLabel
            Left = 4
            Top = 128
            Width = 138
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object RLDBText100: TRLDBText
            Left = 144
            Top = 128
            Width = 238
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel139: TRLLabel
            Left = 388
            Top = 129
            Width = 132
            Height = 16
            AutoSize = False
            Caption = 'Validade da Proposta:'
          end
          object RLDBText101: TRLDBText
            Left = 527
            Top = 142
            Width = 185
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText102: TRLDBText
            Left = 77
            Top = 147
            Width = 444
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel140: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object RLDBText103: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel141: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLLabel142: TRLLabel
            Left = 4
            Top = 167
            Width = 157
            Height = 16
            AutoSize = False
            Caption = 'Ponto de Referencia..:'
          end
          object RLDBText104: TRLDBText
            Left = 163
            Top = 166
            Width = 550
            Height = 16
            AutoSize = False
            DataField = 'CPONTOR'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText105: TRLDBText
            Left = 531
            Top = 147
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'numdoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 38
          Top = 376
          Width = 718
          Height = 334
          DataSource = DM2.Src_Cor
          object RLBand_cmet_det_mod03fff: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 269
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'GRUPO'
            BeforePrint = RLGroup1BeforePrint
            object rl_cabitens_mod03: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLcabCodpro_mod03: TRLLabel
                Left = 1
                Top = 0
                Width = 36
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabQtd_mod03: TRLLabel
                Left = 66
                Top = 0
                Width = 38
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabUnd_mod03: TRLLabel
                Left = 104
                Top = 0
                Width = 22
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Und'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object rlcab_nome_mod03: TRLLabel
                Left = 125
                Top = 0
                Width = 254
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabMarca_mod03: TRLLabel
                Left = 377
                Top = 0
                Width = 66
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Marca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabPU_mod03: TRLLabel
                Left = 518
                Top = 0
                Width = 66
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.p/Caixa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object rlvl_total_mod03: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_secao_mod03: TRLLabel
                Left = 35
                Top = 0
                Width = 32
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Se'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabPU_mod03_caixa: TRLLabel
                Left = 444
                Top = 0
                Width = 70
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object rlcab03_P2VALIPI: TRLLabel
                Left = 583
                Top = 2
                Width = 66
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor IPI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_cabamb_mod03: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object RLDBText106: TRLDBText
                Left = 0
                Top = 0
                Width = 718
                Height = 15
                Align = faTop
                Alignment = taCenter
                DataField = 'GRUPO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_detitens_mod03: TRLBand
              Left = 0
              Top = 35
              Width = 718
              Height = 14
              AutoSize = True
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = rl_detitensBeforePrint
              object RLQtd_mod03: TRLDBText
                Left = 66
                Top = 0
                Width = 38
                Height = 10
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabQtd_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object RLUnd_mod03: TRLDBText
                Left = 104
                Top = 0
                Width = 22
                Height = 10
                AutoSize = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabUnd_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object RLPU_mod03: TRLDBText
                Left = 518
                Top = 0
                Width = 66
                Height = 10
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2PRECO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabPU_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText110: TRLDBText
                Left = 637
                Top = 0
                Width = 78
                Height = 10
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlvl_total_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object rlnome2: TRLMemo
                Left = 125
                Top = 0
                Width = 254
                Height = 10
                Holder = rlcab_nome_mod03
              end
              object RLMarca_mod03: TRLDBMemo
                Left = 377
                Top = 0
                Width = 66
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Holder = RLCabMarca_mod03
                Layout = tlCenter
              end
              object RLCodpro_mod03: TRLDBText
                Left = 1
                Top = 0
                Width = 36
                Height = 10
                AutoSize = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLcabCodpro_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object edt_secao_mod03: TRLDBText
                Left = 35
                Top = 0
                Width = 32
                Height = 10
                AutoSize = False
                DataField = 'endereco'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_secao_mod03
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object RLPU_mod03_caixa: TRLDBText
                Left = 444
                Top = 0
                Width = 70
                Height = 10
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'precounitario'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabPU_mod03_caixa
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
              object rldb03_P2VALIPI: TRLDBText
                Left = 583
                Top = 0
                Width = 66
                Height = 10
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2VALIPI'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab03_P2VALIPI
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome2
                SecondHoldStyle = hsCopyHeight
              end
            end
            object rl_totbrugru_mod03: TRLBand
              Left = 0
              Top = 209
              Width = 718
              Height = 20
              BandType = btSummary
              BeforePrint = rl_totbrugruBeforePrint
              object lbl_totbrugru_mod03: TRLLabel
                Left = 0
                Top = 1
                Width = 637
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = True
                Borders.DrawRight = False
                Borders.DrawBottom = False
                Caption = 'Total Bruto do Grupo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel152: TRLLabel
                Left = 637
                Top = 1
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = True
                Borders.DrawRight = False
                Borders.DrawBottom = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object rl_totliqgru_mod03: TRLBand
              Left = 0
              Top = 229
              Width = 718
              Height = 17
              BandType = btSummary
              BeforePrint = rl_totliqgruBeforePrint
              object lbl_totliqgru_mod03: TRLLabel
                Left = 496
                Top = 0
                Width = 137
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Liquido do Grupo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel154: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object rl_totdesgru_mod03: TRLBand
              Left = 0
              Top = 192
              Width = 718
              Height = 17
              BandType = btSummary
              BeforePrint = rl_totdesgruBeforePrint
              object lbl_totdesgru_mod03: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Desconto do Grupo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel156: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand36: TRLBand
              Left = 0
              Top = 49
              Width = 718
              Height = 19
              Visible = False
              BeforePrint = rl_descBeforePrint
              object RLRichText1: TRLRichText
                Left = 0
                Top = 0
                Width = 718
                Height = 19
              end
            end
            object RLBand_cmet_det_mod03: TRLSubDetail
              Left = 0
              Top = 68
              Width = 718
              Height = 62
              DataSource = Src_Ped02_CMet
              Visible = False
              object RLBand37: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object RLLabel157: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Sub-Prod'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel158: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel159: TRLLabel
                  Left = 289
                  Top = 2
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Larg  x  Comp'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel160: TRLLabel
                  Left = 380
                  Top = 2
                  Width = 60
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso p/Pe'#231'a'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel161: TRLLabel
                  Left = 439
                  Top = 3
                  Width = 64
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Qtd. Pe'#231'as'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel162: TRLLabel
                  Left = 572
                  Top = 3
                  Width = 70
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel163: TRLLabel
                  Left = 502
                  Top = 3
                  Width = 70
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Pre'#231'o Unitario'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel164: TRLLabel
                  Left = 642
                  Top = 4
                  Width = 74
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Valor Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand_cmet_det_mod03d: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand_cmet_detBeforePrint
                object RLDBText113: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'P2CM_CODIGO'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel157
                  ParentFont = False
                end
                object RLDBText114: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  AutoSize = False
                  DataField = 'CMET_NOME'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel158
                  ParentFont = False
                end
                object RLDBText115: TRLDBText
                  Left = 289
                  Top = 0
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'LARG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel159
                  ParentFont = False
                end
                object RLDBText116: TRLDBText
                  Left = 380
                  Top = 0
                  Width = 60
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG_UNIT'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel160
                  ParentFont = False
                end
                object RLDBText117: TRLDBText
                  Left = 439
                  Top = 1
                  Width = 64
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_PECAS'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel161
                  ParentFont = False
                end
                object RLDBText118: TRLDBText
                  Left = 572
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel162
                  ParentFont = False
                end
                object RLDBText119: TRLDBText
                  Left = 502
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_PITEM_PRECO'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel163
                  ParentFont = False
                end
                object RLDBText120: TRLDBText
                  Left = 572
                  Top = 1
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel162
                  ParentFont = False
                end
                object RLDBText121: TRLDBText
                  Left = 642
                  Top = 1
                  Width = 74
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'VALOR_TOTAL'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel164
                  ParentFont = False
                end
              end
              object RLBand39: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                Visible = False
                BeforePrint = RLBand5BeforePrint
                object RLLabel165: TRLLabel
                  Left = 380
                  Top = 1
                  Width = 60
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel160
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel166: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Totais do sub-produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel158
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel167: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel157
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel168: TRLLabel
                  Left = 289
                  Top = 1
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel159
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel170: TRLLabel
                  Left = 439
                  Top = 2
                  Width = 64
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel161
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel171: TRLLabel
                  Left = 572
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel162
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel172: TRLLabel
                  Left = 502
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel163
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel173: TRLLabel
                  Left = 572
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel162
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel174: TRLLabel
                  Left = 642
                  Top = 2
                  Width = 74
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel164
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
            object RLSubDetail_kit_mod03: TRLSubDetail
              Left = 0
              Top = 130
              Width = 718
              Height = 62
              DataSource = src_Pro_Kit
              BeforePrint = RLSubDetail_kitBeforePrint
              object RLBand40: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object RLLabel175: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #205'tem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel176: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel177: TRLLabel
                  Left = 289
                  Top = 2
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Und'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel178: TRLLabel
                  Left = 380
                  Top = 2
                  Width = 102
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade por KIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel179: TRLLabel
                  Left = 620
                  Top = 4
                  Width = 98
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand_detser_mod03: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand8BeforePrint
                object edt_codser_mod032: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'KIT_ORDEM'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel175
                  ParentFont = False
                end
                object RLDBText123: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  AutoSize = False
                  DataField = 'PDNOME'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel176
                  ParentFont = False
                end
                object RLDBText124: TRLDBText
                  Left = 289
                  Top = 0
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'PDUND'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel177
                  ParentFont = False
                end
                object RLDBText125: TRLDBText
                  Left = 380
                  Top = 0
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'KIT_QTD'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel178
                  ParentFont = False
                end
                object RLDBText126: TRLDBText
                  Left = 620
                  Top = 1
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'QTDTOT'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel179
                  ParentFont = False
                end
              end
              object RLBand43: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                BeforePrint = RLBand9BeforePrint
                object RLLabel180: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel176
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel181: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel175
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel182: TRLLabel
                  Left = 289
                  Top = 1
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel177
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel183: TRLLabel
                  Left = 620
                  Top = 2
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel179
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel184: TRLLabel
                  Left = 380
                  Top = 1
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel178
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
            object RLBand44: TRLBand
              Left = 0
              Top = 246
              Width = 718
              Height = 16
              BandType = btSummary
              BeforePrint = RLBand20BeforePrint
              object RLLabel185: TRLLabel
                Left = 0
                Top = -1
                Width = 473
                Height = 16
                AutoSize = False
                Caption = 'Quantidade'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
              end
            end
          end
          object rl_totbruger_mod03: TRLBand
            Left = 0
            Top = 269
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totbruger_mod03BeforePrint
            object lbl_totbruger_mod03: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral Bruto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totbruger_mod03: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object rl_totdesger_mod03: TRLBand
            Left = 0
            Top = 286
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totdesger_mod03BeforePrint
            object lbl_totdesger_mod03: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral dos Descontos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totdesger_mod03: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object rl_totliqger_mod03: TRLBand
            Left = 0
            Top = 303
            Width = 718
            Height = 17
            BandType = btSummary
            BeforePrint = rl_totliqger_mod03BeforePrint
            object lbl_totliqger_mod03: TRLLabel
              Left = 0
              Top = 0
              Width = 637
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral Liquido:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object txt_totliqger_mod03: TRLLabel
              Left = 637
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object rl_rodOrcCiente_mod03: TRLBand
          Left = 38
          Top = 1019
          Width = 718
          Height = 127
          BandType = btSummary
          object RLLabel192: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText127: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel193: TRLLabel
            Left = 404
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel194: TRLLabel
            Left = 403
            Top = 73
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel195: TRLLabel
            Left = 403
            Top = 89
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel196: TRLLabel
            Left = 487
            Top = 89
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel197: TRLLabel
            Left = 402
            Top = 109
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo9: TRLDBMemo
            Left = 406
            Top = 41
            Width = 310
            Height = 31
            Alignment = taCenter
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand49: TRLBand
          Left = 38
          Top = 890
          Width = 718
          Height = 79
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = rl_RodOrcObsBeforePrint
          object RLDBText128: TRLDBText
            Left = 24
            Top = 6
            Width = 690
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'prazos'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText129: TRLDBText
            Left = 141
            Top = 24
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'formpag'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel198: TRLLabel
            Left = 2
            Top = 24
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object RLLabel199: TRLLabel
            Left = 4
            Top = 43
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
          end
          object RLDBText130: TRLDBText
            Left = 141
            Top = 43
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'nometra'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel200: TRLLabel
            Left = 514
            Top = 60
            Width = 143
            Height = 16
            AutoSize = False
            Caption = 'Margem de Negocia'#231#227'o:'
          end
          object RLDBText131: TRLDBText
            Left = 658
            Top = 60
            Width = 58
            Height = 16
            AutoSize = False
            DataField = 'MNegoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand50: TRLBand
          Left = 38
          Top = 1146
          Width = 718
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand2BeforePrint
          object RLSystemInfo9: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel201: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo10: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel202: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail8: TRLSubDetail
          Left = 38
          Top = 710
          Width = 718
          Height = 87
          DataSource = DM2.Src_Ser
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = 16767411
          object RLGroup5: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 86
            DataFields = 'TIPO'
            object RLBand51: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLLabel203: TRLLabel
                Left = 1
                Top = 0
                Width = 64
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel204: TRLLabel
                Left = 65
                Top = 0
                Width = 72
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel205: TRLLabel
                Left = 144
                Top = 0
                Width = 416
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO SERVI'#199'O'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel206: TRLLabel
                Left = 563
                Top = 0
                Width = 74
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel207: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand52: TRLBand
              Left = 0
              Top = 19
              Width = 718
              Height = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = RLBand_detserBeforePrint
              object edt_codser_mod03: TRLDBText
                Left = 1
                Top = 0
                Width = 64
                Height = 13
                AutoSize = False
                DataField = 'P2SCODPRO'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser_mod03
                SecondHoldStyle = hsCopyHeight
              end
              object edt_qtdser_mod03: TRLDBText
                Left = 65
                Top = 0
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2SQTD'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser_mod03
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText134: TRLDBText
                Left = 451
                Top = 0
                Width = 111
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser_mod03
                SecondHoldStyle = hsCopyHeight
              end
              object edt_pcouniser_mod03: TRLDBText
                Left = 563
                Top = 0
                Width = 74
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2SPRECO'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser_mod03
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText136: TRLDBText
                Left = 637
                Top = 0
                Width = 78
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = edt_nomser_mod03
                SecondHoldStyle = hsCopyHeight
              end
              object edt_nomser_mod03: TRLMemo
                Left = 144
                Top = 0
                Width = 416
                Height = 13
              end
            end
            object RLBand_serrod_mod03: TRLBand
              Left = 0
              Top = 33
              Width = 718
              Height = 17
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand_serrodBeforePrint
              object txt_totserbru_m3: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel209: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total dos Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand6_desconto_mod03: TRLBand
              Left = 0
              Top = 50
              Width = 718
              Height = 18
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand6_descontoBeforePrint
              object RLLabel210: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total do Desconto Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object txt_totserdesc_m3: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand55: TRLBand
              Left = 0
              Top = 68
              Width = 718
              Height = 17
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand4_totliqBeforePrint
              object RLLabel212: TRLLabel
                Left = 0
                Top = 0
                Width = 637
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Liquido dos Servi'#231'os:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object txt_totserliq_M3: TRLLabel
                Left = 637
                Top = 0
                Width = 78
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object RLBand56: TRLBand
          Left = 38
          Top = 969
          Width = 718
          Height = 16
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object rlObs_pedido_mod03: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object rl_obs01_mod03: TRLBand
          Left = 38
          Top = 985
          Width = 718
          Height = 34
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLRichText2: TRLRichText
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            IntegralHeight = True
            ParentFont = False
          end
          object RLMemo12: TRLMemo
            Left = 0
            Top = 18
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail9: TRLSubDetail
          Left = 38
          Top = 797
          Width = 718
          Height = 55
          DataSource = src_pend
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand58: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            object RLLabel214: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'PENDENCIAS DO PEDIDO'
            end
          end
          object RLBand59: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object RLLabel215: TRLLabel
              Left = 7
              Top = 3
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'd.Prod'
              Layout = tlCenter
            end
            object RLLabel216: TRLLabel
              Left = 48
              Top = 4
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd.Ped'
              Layout = tlCenter
            end
            object RLLabel217: TRLLabel
              Left = 88
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Envidadas'
              Layout = tlCenter
            end
            object RLLabel218: TRLLabel
              Left = 138
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pendencias'
              Layout = tlCenter
            end
            object RLLabel219: TRLLabel
              Left = 188
              Top = 4
              Width = 24
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object RLLabel220: TRLLabel
              Left = 213
              Top = 3
              Width = 306
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o das Mercadorias'
              Layout = tlCenter
            end
            object RLLabel221: TRLLabel
              Left = 526
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel222: TRLLabel
              Left = 589
              Top = 0
              Width = 60
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'P'#231'o.Unit.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel223: TRLLabel
              Left = 651
              Top = 1
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand60: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText137: TRLDBText
              Left = 7
              Top = 0
              Width = 40
              Height = 12
              AutoSize = False
              DataField = 'PECODPRO'
              DataSource = src_pend
              Holder = RLLabel215
              Layout = tlCenter
            end
            object RLDBText138: TRLDBText
              Left = 48
              Top = 0
              Width = 40
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPED'
              DataSource = src_pend
              Holder = RLLabel216
              Layout = tlCenter
            end
            object RLDBText139: TRLDBText
              Left = 88
              Top = 0
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDENV'
              DataSource = src_pend
              Holder = RLLabel217
              Layout = tlCenter
            end
            object RLDBText140: TRLDBText
              Left = 138
              Top = 0
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPEN'
              DataSource = src_pend
              Holder = RLLabel218
              Layout = tlCenter
            end
            object RLDBText141: TRLDBText
              Left = 188
              Top = 0
              Width = 24
              Height = 12
              AutoSize = False
              DataField = 'PDUND'
              DataSource = src_pend
              Holder = RLLabel219
              Layout = tlCenter
            end
            object RLDBText142: TRLDBText
              Left = 213
              Top = 0
              Width = 306
              Height = 12
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_pend
              Holder = RLLabel220
              Layout = tlCenter
            end
            object RLDBMemo10: TRLDBMemo
              Left = 526
              Top = 0
              Width = 64
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDMARCA'
              DataSource = src_pend
              Holder = RLLabel221
            end
            object RLDBText143: TRLDBText
              Left = 589
              Top = 0
              Width = 60
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PEPRECO'
              DataSource = src_pend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLLabel222
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
            object RLDBText144: TRLDBText
              Left = 651
              Top = 0
              Width = 66
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'total'
              DataSource = src_pend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = RLLabel223
              ParentFont = False
              SecondHoldStyle = hsCopyHeight
            end
          end
        end
        object RLSubDetail10: TRLSubDetail
          Left = 38
          Top = 852
          Width = 718
          Height = 38
          DataSource = DM1.Src_Ped01V
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDetailGrid2: TRLDetailGrid
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            ColCount = 4
            object RLDBText145: TRLDBText
              Left = 5
              Top = 1
              Width = 55
              Height = 12
              AutoSize = False
              DataField = 'P1VDATAV'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText146: TRLDBText
              Left = 121
              Top = 1
              Width = 57
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'P1VVALOR'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText147: TRLDBText
              Left = 60
              Top = 1
              Width = 60
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomfp'
              DataSource = DM1.Src_Ped01V
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -7
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand61: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel224: TRLLabel
              Left = 3
              Top = 0
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Vencimentos e Valores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    object tsModelo04: TTabSheet
      Caption = 'Modelo 04 '
      ImageIndex = 6
      object rlPedidoModelo04: TRLReport
        Left = 56
        Top = -281
        Width = 794
        Height = 1123
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlPedidoBeforePrint
        object RLBand6: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 116
          BandType = btHeader
          object RLImage_mod04: TRLImage
            Left = 0
            Top = 0
            Width = 302
            Height = 115
            Stretch = True
          end
          object RLDBText109: TRLDBText
            Left = 303
            Top = 0
            Width = 414
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo9: TRLMemo
            Left = 303
            Top = 21
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText109
            ParentFont = False
          end
          object RLDBMemo11: TRLDBMemo
            Left = 303
            Top = 34
            Width = 414
            Height = 32
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText109
            ParentFont = False
          end
          object RLMemo10: TRLMemo
            Left = 303
            Top = 67
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText109
            ParentFont = False
          end
          object RLMemo11: TRLMemo
            Left = 303
            Top = 83
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText109
            ParentFont = False
          end
          object RLMemo13: TRLMemo
            Left = 303
            Top = 99
            Width = 414
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLDBText109
            ParentFont = False
          end
        end
        object RLBand26: TRLBand
          Left = 38
          Top = 154
          Width = 718
          Height = 33
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object lblObs_mod04: TRLLabel
            Left = 2
            Top = 0
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabchave_mod04: TRLLabel
            Left = 488
            Top = 0
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rl_cabtit_mod04: TRLBand
          Left = 38
          Top = 187
          Width = 718
          Height = 198
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel145: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText111: TRLDBText
            Left = 77
            Top = 3
            Width = 636
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel146: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object RLDBText112: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel147: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object RLDBText122: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel148: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object RLDBText132: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel149: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object RLDBText133: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel150: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object RLDBText135: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel151: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object RLDBText148: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText149: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel153: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object RLDBText150: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel155: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object RLDBText151: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText152: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel186: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object RLDBText153: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel187: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object RLDBText154: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel188: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object RLLabel189: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo11: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo12: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel190: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLLabel191: TRLLabel
            Left = 4
            Top = 128
            Width = 138
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object RLDBText155: TRLDBText
            Left = 144
            Top = 128
            Width = 150
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel225: TRLLabel
            Left = 297
            Top = 129
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'Validade:'
          end
          object RLDBText156: TRLDBText
            Left = 362
            Top = 128
            Width = 91
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText157: TRLDBText
            Left = 77
            Top = 147
            Width = 283
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel226: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object RLDBText158: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel227: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLLabel228: TRLLabel
            Left = 4
            Top = 167
            Width = 157
            Height = 16
            AutoSize = False
            Caption = 'Ponto de Referencia:'
          end
          object RLDBText159: TRLDBText
            Left = 163
            Top = 166
            Width = 291
            Height = 16
            AutoSize = False
            DataField = 'CPONTOR'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText160: TRLDBText
            Left = 362
            Top = 147
            Width = 190
            Height = 16
            AutoSize = False
            DataField = 'numdoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText161: TRLDBText
            Left = 457
            Top = 129
            Width = 252
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'calc_P1ORC_METAL_QTD_VIAS_PROD'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo12: TRLDBMemo
            Left = 552
            Top = 146
            Width = 156
            Height = 39
            Alignment = taCenter
            AutoSize = False
            DataField = 'calc_P1ORC_METAL_TIPOS_CORTES'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail6: TRLSubDetail
          Left = 38
          Top = 385
          Width = 718
          Height = 216
          DataSource = DM2.Src_Cor
          object RLGroup_mod04: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 201
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'GRUPO'
            BeforePrint = RLGroup_mod04BeforePrint
            object RLBand28: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLcabCodpro_mod04: TRLLabel
                Left = 1
                Top = 0
                Width = 76
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabQtd_mod04: TRLLabel
                Left = 128
                Top = 0
                Width = 68
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabUnd_mod04: TRLLabel
                Left = 199
                Top = 0
                Width = 26
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Und'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabNome_mod04: TRLLabel
                Left = 227
                Top = 0
                Width = 380
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabMarca_mod04: TRLLabel
                Left = 612
                Top = 0
                Width = 104
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Marca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_secao_mod04: TRLLabel
                Left = 79
                Top = 2
                Width = 50
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Se'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object rl_cabamb_mod04: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object RLDBText162: TRLDBText
                Left = 0
                Top = 0
                Width = 718
                Height = 15
                Align = faTop
                Alignment = taCenter
                DataField = 'GRUPO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand30: TRLBand
              Left = 0
              Top = 35
              Width = 718
              Height = 13
              AutoSize = True
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = rl_detitensBeforePrint
              object RLQtd_mod04: TRLDBText
                Left = 128
                Top = 0
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabQtd_mod04
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome_mod04
                SecondHoldStyle = hsCopyHeight
              end
              object RLUnd_mod04: TRLDBText
                Left = 199
                Top = 0
                Width = 26
                Height = 13
                AutoSize = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabUnd_mod04
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome_mod04
                SecondHoldStyle = hsCopyHeight
              end
              object rlnome_mod04: TRLMemo
                Left = 227
                Top = 0
                Width = 380
                Height = 13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabNome_mod04
                ParentFont = False
              end
              object RLCodpro_mod04: TRLDBText
                Left = 1
                Top = 0
                Width = 76
                Height = 13
                AutoSize = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLcabCodpro_mod04
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome_mod04
                SecondHoldStyle = hsCopyHeight
              end
              object edt_secao_mod04: TRLDBText
                Left = 79
                Top = 0
                Width = 50
                Height = 13
                AutoSize = False
                DataField = 'endereco'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_secao_mod04
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome_mod04
                SecondHoldStyle = hsCopyHeight
              end
              object RLMarca_mod04: TRLDBMemo
                Left = 612
                Top = -1
                Width = 104
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -10
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabMarca_mod04
                Layout = tlCenter
                ParentFont = False
                SecondHolder = rlnome_mod04
                SecondHoldStyle = hsCopyHeight
              end
            end
            object RLBand42: TRLBand
              Left = 0
              Top = 48
              Width = 718
              Height = 19
              Visible = False
              BeforePrint = rl_descBeforePrint
              object RLRichText3: TRLRichText
                Left = 0
                Top = 0
                Width = 718
                Height = 19
              end
            end
            object RLSubDetail_CMET_mod04: TRLSubDetail
              Left = 0
              Top = 67
              Width = 718
              Height = 62
              DataSource = Src_Ped02_CMet
              object RLBand45: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object RLLabel254: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Sub-Prod'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel255: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 314
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel256: TRLLabel
                  Left = 364
                  Top = 2
                  Width = 104
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Larg  x  Comp'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel257: TRLLabel
                  Left = 468
                  Top = 2
                  Width = 82
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso p/Pe'#231'a'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel258: TRLLabel
                  Left = 552
                  Top = 3
                  Width = 84
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Qtd. Pe'#231'as'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel259: TRLLabel
                  Left = 638
                  Top = 3
                  Width = 78
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Peso Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand_cmet_det_mod04: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand_cmet_detBeforePrint
                object RLDBText171: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'P2CM_CODIGO'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel254
                  ParentFont = False
                end
                object RLDBText172: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 314
                  Height = 16
                  AutoSize = False
                  DataField = 'CMET_NOME'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel255
                  ParentFont = False
                end
                object RLDBText173: TRLDBText
                  Left = 364
                  Top = 0
                  Width = 104
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'LARG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel256
                  ParentFont = False
                end
                object RLDBText174: TRLDBText
                  Left = 468
                  Top = 0
                  Width = 82
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG_UNIT'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel257
                  ParentFont = False
                end
                object RLDBText175: TRLDBText
                  Left = 552
                  Top = 1
                  Width = 84
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_PECAS'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel258
                  ParentFont = False
                end
                object RLDBText176: TRLDBText
                  Left = 638
                  Top = 1
                  Width = 78
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'P2CM_QTD_KG'
                  DataSource = Src_Ped02_CMet
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel259
                  ParentFont = False
                end
              end
              object RLBand47: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                BeforePrint = RLBand5BeforePrint
                object RLLabel262: TRLLabel
                  Left = 468
                  Top = 1
                  Width = 82
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel257
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel263: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 314
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Totais do sub-produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel255
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel264: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel254
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel265: TRLLabel
                  Left = 364
                  Top = 1
                  Width = 104
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel256
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel266: TRLLabel
                  Left = 552
                  Top = 2
                  Width = 84
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel258
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel267: TRLLabel
                  Left = 638
                  Top = 2
                  Width = 78
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel259
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel268: TRLLabel
                  Left = 502
                  Top = 2
                  Width = 70
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel269: TRLLabel
                  Left = 638
                  Top = 2
                  Width = 78
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel259
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel270: TRLLabel
                  Left = 642
                  Top = 2
                  Width = 74
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
            object RLSubDetail_kit_mod04: TRLSubDetail
              Left = 0
              Top = 129
              Width = 718
              Height = 62
              DataSource = src_Pro_Kit
              BeforePrint = RLSubDetail_kitBeforePrint
              object RLBand48: TRLBand
                Left = 0
                Top = 0
                Width = 718
                Height = 19
                BandType = btHeader
                object RLLabel271: TRLLabel
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #205'tem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel272: TRLLabel
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Descri'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel273: TRLLabel
                  Left = 289
                  Top = 2
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Und'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel274: TRLLabel
                  Left = 380
                  Top = 2
                  Width = 102
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade por KIT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
                object RLLabel275: TRLLabel
                  Left = 620
                  Top = 4
                  Width = 98
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Layout = tlCenter
                  ParentFont = False
                end
              end
              object RLBand53: TRLBand
                Left = 0
                Top = 19
                Width = 718
                Height = 17
                BeforePrint = RLBand8BeforePrint
                object RLDBText180: TRLDBText
                  Left = 0
                  Top = 0
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'KIT_ORDEM'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel271
                  ParentFont = False
                end
                object RLDBText181: TRLDBText
                  Left = 48
                  Top = 0
                  Width = 242
                  Height = 16
                  AutoSize = False
                  DataField = 'PDNOME'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel272
                  ParentFont = False
                end
                object RLDBText182: TRLDBText
                  Left = 289
                  Top = 0
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  DataField = 'PDUND'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel273
                  ParentFont = False
                end
                object RLDBText183: TRLDBText
                  Left = 380
                  Top = 0
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'KIT_QTD'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel274
                  ParentFont = False
                end
                object RLDBText184: TRLDBText
                  Left = 620
                  Top = 1
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  DataField = 'QTDTOT'
                  DataSource = src_Pro_Kit
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel275
                  ParentFont = False
                end
              end
              object RLBand54: TRLBand
                Left = 0
                Top = 36
                Width = 718
                Height = 18
                BandType = btSummary
                Color = clSilver
                ParentColor = False
                Transparent = False
                BeforePrint = RLBand9BeforePrint
                object RLLabel276: TRLLabel
                  Left = 48
                  Top = 1
                  Width = 242
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Quantidade Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel272
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel277: TRLLabel
                  Left = 0
                  Top = 1
                  Width = 48
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel271
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel278: TRLLabel
                  Left = 289
                  Top = 1
                  Width = 92
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel273
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel279: TRLLabel
                  Left = 620
                  Top = 2
                  Width = 98
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel275
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
                object RLLabel280: TRLLabel
                  Left = 380
                  Top = 1
                  Width = 102
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = ' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Holder = RLLabel274
                  Layout = tlCenter
                  ParentFont = False
                  Transparent = False
                end
              end
            end
          end
        end
        object RLBand66: TRLBand
          Left = 38
          Top = 931
          Width = 718
          Height = 127
          BandType = btSummary
          object RLLabel290: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText185: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel291: TRLLabel
            Left = 404
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel292: TRLLabel
            Left = 403
            Top = 73
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel293: TRLLabel
            Left = 403
            Top = 89
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel294: TRLLabel
            Left = 487
            Top = 89
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel295: TRLLabel
            Left = 402
            Top = 109
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo14: TRLDBMemo
            Left = 406
            Top = 41
            Width = 310
            Height = 31
            Alignment = taCenter
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand67: TRLBand
          Left = 38
          Top = 802
          Width = 718
          Height = 79
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = rl_RodOrcObsBeforePrint
          object RLDBText186: TRLDBText
            Left = 1
            Top = 6
            Width = 710
            Height = 16
            AutoSize = False
            DataField = 'prazos'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText187: TRLDBText
            Left = 141
            Top = 24
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'formpag'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel296: TRLLabel
            Left = 2
            Top = 24
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object RLLabel297: TRLLabel
            Left = 4
            Top = 43
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
          end
          object RLDBText188: TRLDBText
            Left = 141
            Top = 42
            Width = 456
            Height = 16
            AutoSize = False
            DataField = 'nometra'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel298: TRLLabel
            Left = 514
            Top = 60
            Width = 143
            Height = 16
            AutoSize = False
            Caption = 'Margem de Negocia'#231#227'o:'
          end
          object RLDBText189: TRLDBText
            Left = 658
            Top = 60
            Width = 58
            Height = 16
            AutoSize = False
            DataField = 'MNegoc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand68: TRLBand
          Left = 38
          Top = 1058
          Width = 718
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand2BeforePrint
          object RLSystemInfo13: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel299: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo14: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel300: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail12: TRLSubDetail
          Left = 38
          Top = 601
          Width = 718
          Height = 48
          DataSource = DM2.Src_Ser
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = 16767411
          object RLGroup6: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 47
            DataFields = 'TIPO'
            object RLBand69: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLLabel301: TRLLabel
                Left = 1
                Top = 0
                Width = 66
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel302: TRLLabel
                Left = 69
                Top = 0
                Width = 72
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLCabNomes_mod04: TRLLabel
                Left = 144
                Top = 0
                Width = 562
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CARACTER'#205'STICAS DO SERVI'#199'O'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand70: TRLBand
              Left = 0
              Top = 19
              Width = 718
              Height = 14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_detitensAfterPrint
              BeforePrint = RLBand_detserBeforePrint
              object RLDBText190: TRLDBText
                Left = 1
                Top = 0
                Width = 66
                Height = 13
                AutoSize = False
                DataField = 'P2SCODPRO'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel301
                ParentFont = False
                SecondHolder = RLMemo15
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText191: TRLDBText
                Left = 69
                Top = 0
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2SQTD'
                DataSource = DM2.Src_Ser
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel302
                ParentFont = False
                SecondHolder = RLMemo15
                SecondHoldStyle = hsCopyHeight
              end
              object RLDBText192: TRLDBText
                Left = 451
                Top = 0
                Width = 111
                Height = 13
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = RLMemo15
                SecondHoldStyle = hsCopyHeight
              end
              object RLMemo15: TRLMemo
                Left = 144
                Top = 0
                Width = 562
                Height = 13
                Holder = RLCabNomes_mod04
              end
            end
          end
        end
        object RLBand74: TRLBand
          Left = 38
          Top = 881
          Width = 718
          Height = 16
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLMemo16: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand75: TRLBand
          Left = 38
          Top = 897
          Width = 718
          Height = 34
          AutoSize = True
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLRichText4: TRLRichText
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            IntegralHeight = True
            ParentFont = False
          end
          object RLMemo17: TRLMemo
            Left = 0
            Top = 18
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDet_pedencias_mod04: TRLSubDetail
          Left = 38
          Top = 649
          Width = 718
          Height = 55
          DataSource = src_pend
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand76: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            object RLLabel312: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'PENDENCIAS DO PEDIDO'
            end
          end
          object RLBand77: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object RLLabel313: TRLLabel
              Left = 7
              Top = 3
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'd.Prod'
              Layout = tlCenter
            end
            object RLLabel314: TRLLabel
              Left = 48
              Top = 4
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd.Ped'
              Layout = tlCenter
            end
            object RLLabel315: TRLLabel
              Left = 88
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Envidadas'
              Layout = tlCenter
            end
            object RLLabel316: TRLLabel
              Left = 138
              Top = 4
              Width = 48
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pendencias'
              Layout = tlCenter
            end
            object RLLabel317: TRLLabel
              Left = 188
              Top = 4
              Width = 24
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Und'
              Layout = tlCenter
            end
            object RLLabel318: TRLLabel
              Left = 213
              Top = 3
              Width = 394
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o das Mercadorias'
              Layout = tlCenter
            end
            object RLCabMarcas_mod04: TRLLabel
              Left = 612
              Top = 0
              Width = 104
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand78: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText195: TRLDBText
              Left = 7
              Top = 2
              Width = 40
              Height = 12
              AutoSize = False
              DataField = 'PECODPRO'
              DataSource = src_pend
              Holder = RLLabel313
              Layout = tlCenter
            end
            object RLDBText196: TRLDBText
              Left = 48
              Top = 2
              Width = 40
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPED'
              DataSource = src_pend
              Holder = RLLabel314
              Layout = tlCenter
            end
            object RLDBText197: TRLDBText
              Left = 88
              Top = 3
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDENV'
              DataSource = src_pend
              Holder = RLLabel315
              Layout = tlCenter
            end
            object RLDBText198: TRLDBText
              Left = 138
              Top = 3
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PEQTDPEN'
              DataSource = src_pend
              Holder = RLLabel316
              Layout = tlCenter
            end
            object RLDBText199: TRLDBText
              Left = 188
              Top = 3
              Width = 24
              Height = 12
              AutoSize = False
              DataField = 'PDUND'
              DataSource = src_pend
              Holder = RLLabel317
              Layout = tlCenter
            end
            object RLDBText200: TRLDBText
              Left = 213
              Top = 3
              Width = 394
              Height = 12
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_pend
              Holder = RLLabel318
              Layout = tlCenter
            end
            object RLMarca_pend: TRLDBMemo
              Left = 612
              Top = 2
              Width = 104
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PDMARCA'
              DataSource = src_pend
              Holder = RLCabMarcas_mod04
            end
          end
        end
        object RLSubDetail_via_corte: TRLSubDetail
          Left = 38
          Top = 704
          Width = 718
          Height = 59
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = src_Ped01_tipos_corte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand_tit_via_de_corte: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel322: TRLLabel
              Left = 3
              Top = 0
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Via de Corte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand29: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object rllbl_mod04_PTC_SEQ: TRLLabel
              Left = 3
              Top = 0
              Width = 40
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'Via'
            end
            object lbl_mod04_PTC_TIPO_DO_CORTE: TRLLabel
              Left = 52
              Top = 1
              Width = 646
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Tipo de Corte'
            end
          end
          object rl_detitens_mod04: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object edt_mod04_PTC_SEQ: TRLDBText
              Left = 3
              Top = 0
              Width = 40
              Height = 12
              AutoSize = False
              DataField = 'PTC_SEQ'
              DataSource = src_Ped01_tipos_corte
              Holder = rllbl_mod04_PTC_SEQ
              Layout = tlCenter
            end
            object rldbtext_mod04_PTC_TIPO_DO_CORTE: TRLDBText
              Left = 52
              Top = 0
              Width = 646
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'PTC_TIPO_DO_CORTE'
              DataSource = src_Ped01_tipos_corte
              Holder = lbl_mod04_PTC_TIPO_DO_CORTE
              Layout = tlCenter
            end
          end
        end
        object RLSubDetail7: TRLSubDetail
          Left = 38
          Top = 763
          Width = 718
          Height = 39
          DataSource = DM1.Src_Ped01V
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDetailGrid5: TRLDetailGrid
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            ColCount = 4
            object RLDBText163: TRLDBText
              Left = 5
              Top = 1
              Width = 55
              Height = 12
              AutoSize = False
              DataField = 'P1VDATAV'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText164: TRLDBText
              Left = 121
              Top = 1
              Width = 57
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'P1VVALOR'
              DataSource = DM1.Src_Ped01V
              Layout = tlCenter
            end
            object RLDBText165: TRLDBText
              Left = 60
              Top = 1
              Width = 60
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              DataField = 'nomfp'
              DataSource = DM1.Src_Ped01V
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -7
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand27: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel242: TRLLabel
              Left = 3
              Top = 0
              Width = 150
              Height = 16
              AutoSize = False
              Caption = 'Vencimentos e Valores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 482
    Top = 107
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento Word'
    Left = 656
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA10) \251 Copyright '#169' 1999-20' +
      '06 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    ForceASCII = True
    DisplayName = 'Documento PDF'
    Left = 653
    Top = 58
  end
  object matricial: TRLDraftFilter
    Left = 604
    Top = 40
  end
  object Src_Ped02_CMet: TDataSource
    DataSet = Qr_Ped02_CMet
    Left = 218
    Top = 42
  end
  object Qr_Ped02_CMet: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CM_CODEMP,'
      '                       P2CM_ITEM,'
      '                       P2CM_CODPRO,'
      '                       P2CM_LOTSEQ,'
      '                       P2CM_CHAVE,'
      '                       P2CM_CODIGO,'
      '                       P2CM_LARGURA,'
      '                     P2CM_ESPESSURA,'
      '                       P2CM_CONSTANTE,'
      '                       P2CM_COMPRIMENTO,'
      '                       P2CM_QTD_KG,'
      '                       P2CM_QTD_KG_UNIT,'
      '                       P2CM_QTD_PECAS,'
      '                       P2CM_SEQ,CMET_NOME'
      '                       ,P2CM_PITEM_PRECO'
      
        '                       ,P2CM_PITEM_PRECO*P2CM_QTD_KG AS VALOR_TO' +
        'TAL'
      ',trim(to_char(P2CM_LARGURA,'#39'9,990.000'#39'))'
      '|| '#39'*'#39' || trim(to_char(P2CM_COMPRIMENTO,'#39'9,990.000'#39'))'
      '|| '#39'*'#39' || trim(to_char(P2CM_ESPESSURA,'#39'9,990.00'#39'))'
      '|| '#39'*'#39' || to_char(P2CM_CONSTANTE)'
      'AS LARG_COMP'
      ''
      ',trim(to_char(P2CM_LARGURA,'#39'9,990.000'#39'))'
      '|| '#39'  x  '#39' || trim(to_char(P2CM_COMPRIMENTO,'#39'9,990.000'#39'))'
      'AS LARG'
      ''
      '                       from CADP02_CMET,CADPRO_CMET'
      '                       where CMET_CODPRO=P2CM_CODPRO'
      '                       and   CMET_CODEMP=P2CM_CODEMP'
      '                       and CMET_CODIGO=P2CM_CODIGO'
      '                       and P2CM_LOTSEQ=0'
      '                       and P2CM_CHAVE=1'
      '                       and P2CM_CODPRO=1'
      '                       and (P2CM_CODEMP=1 or P2CM_CODEMP=101)')
    Left = 178
    Top = 34
    object Qr_Ped02_CMetP2CM_CODEMP: TFloatField
      FieldName = 'P2CM_CODEMP'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODEMP'
    end
    object Qr_Ped02_CMetP2CM_ITEM: TFloatField
      FieldName = 'P2CM_ITEM'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_ITEM'
    end
    object Qr_Ped02_CMetP2CM_CODPRO: TFloatField
      FieldName = 'P2CM_CODPRO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODPRO'
    end
    object Qr_Ped02_CMetP2CM_LOTSEQ: TFloatField
      FieldName = 'P2CM_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_LOTSEQ'
    end
    object Qr_Ped02_CMetP2CM_CHAVE: TFloatField
      FieldName = 'P2CM_CHAVE'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CHAVE'
    end
    object Qr_Ped02_CMetP2CM_CODIGO: TFloatField
      FieldName = 'P2CM_CODIGO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CODIGO'
    end
    object Qr_Ped02_CMetP2CM_LARGURA: TFloatField
      FieldName = 'P2CM_LARGURA'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_LARGURA'
    end
    object Qr_Ped02_CMetP2CM_ESPESSURA: TFloatField
      FieldName = 'P2CM_ESPESSURA'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_ESPESSURA'
    end
    object Qr_Ped02_CMetP2CM_CONSTANTE: TFloatField
      FieldName = 'P2CM_CONSTANTE'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_CONSTANTE'
    end
    object Qr_Ped02_CMetP2CM_COMPRIMENTO: TFloatField
      FieldName = 'P2CM_COMPRIMENTO'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_COMPRIMENTO'
    end
    object Qr_Ped02_CMetP2CM_QTD_KG: TFloatField
      FieldName = 'P2CM_QTD_KG'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_QTD_KG'
    end
    object Qr_Ped02_CMetP2CM_SEQ: TFloatField
      FieldName = 'P2CM_SEQ'
      Origin = 'SG_ASSOC.CADP02_CMET.P2CM_SEQ'
    end
    object Qr_Ped02_CMetCMET_NOME: TStringField
      FieldName = 'CMET_NOME'
      Origin = 'SG_ASSOC.CADPRO_CMET.CMET_NOME'
      Size = 60
    end
    object Qr_Ped02_CMetLARG: TStringField
      FieldName = 'LARG'
      Size = 72
    end
    object Qr_Ped02_CMetP2CM_QTD_KG_UNIT: TFloatField
      FieldName = 'P2CM_QTD_KG_UNIT'
    end
    object Qr_Ped02_CMetP2CM_QTD_PECAS: TFloatField
      FieldName = 'P2CM_QTD_PECAS'
    end
    object Qr_Ped02_CMetP2CM_PITEM_PRECO: TFloatField
      FieldName = 'P2CM_PITEM_PRECO'
    end
    object Qr_Ped02_CMetVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object Qr_Ped02_CMetLARG_COMP: TStringField
      FieldName = 'LARG_COMP'
      Size = 72
    end
  end
  object Qr_Pro_Kit: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select  PDNOME,PDUND, PDSALDO AS qtdtot,CADPRO_KIT.* from CADPRO' +
        '_KIT,CADPRO'
      'where PDCODPRO=KIT_CODPRO_KIT and PDCODEMP=KIT_CODEMP'
      ' and KIT_CODEMP=01'
      ' and KIT_CODPRO=0'
      ' order by KIT_ORDEM'
      '')
    Left = 858
    Top = 90
    object Qr_Pro_KitPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_CODEMP'
      Size = 120
    end
    object Qr_Pro_KitPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_CODPRO'
      Size = 3
    end
    object Qr_Pro_KitKIT_CODEMP: TFloatField
      FieldName = 'KIT_CODEMP'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_CODPRO_KIT'
    end
    object Qr_Pro_KitKIT_CODPRO: TFloatField
      FieldName = 'KIT_CODPRO'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_ORDEM'
    end
    object Qr_Pro_KitKIT_CODPRO_KIT: TFloatField
      FieldName = 'KIT_CODPRO_KIT'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_QTD'
    end
    object Qr_Pro_KitKIT_ORDEM: TFloatField
      FieldName = 'KIT_ORDEM'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_PRECO'
    end
    object Qr_Pro_KitKIT_QTD: TFloatField
      FieldName = 'KIT_QTD'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
    end
    object Qr_Pro_KitKIT_PRECO: TFloatField
      FieldName = 'KIT_PRECO'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
    end
    object Qr_Pro_KitQTDTOT: TFloatField
      FieldName = 'QTDTOT'
      Origin = 'SG_ASSOC.CADPRO_KIT.KIT_CODPRO_KIT'
    end
  end
  object src_Pro_Kit: TDataSource
    DataSet = Qr_Pro_Kit
    Left = 866
    Top = 146
  end
  object Tb_Pend: TQuery
    OnCalcFields = Tb_PendCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PDNOME,PDUND,cadpen.* from cadpen,CADPRO'
      'where pdcodpro=pecodpro')
    Left = 562
    Top = 114
    object Tb_PendPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPEN.PECODEMP'
      Size = 120
    end
    object Tb_PendPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPEN.PELOTSEQ'
      Size = 3
    end
    object Tb_PendPECODEMP: TFloatField
      FieldName = 'PECODEMP'
      Origin = 'SG_ASSOC.CADPEN.PECHAVE'
    end
    object Tb_PendPELOTSEQ: TFloatField
      FieldName = 'PELOTSEQ'
      Origin = 'SG_ASSOC.CADPEN.PECODCLI'
    end
    object Tb_PendPECHAVE: TFloatField
      FieldName = 'PECHAVE'
      Origin = 'SG_ASSOC.CADPEN.PECODVEN'
    end
    object Tb_PendPECODCLI: TFloatField
      FieldName = 'PECODCLI'
      Origin = 'SG_ASSOC.CADPEN.PEDATA'
    end
    object Tb_PendPECODVEN: TFloatField
      FieldName = 'PECODVEN'
      Origin = 'SG_ASSOC.CADPEN.PEITEM'
    end
    object Tb_PendPEDATA: TDateTimeField
      FieldName = 'PEDATA'
      Origin = 'SG_ASSOC.CADPEN.PECODPRO'
    end
    object Tb_PendPEITEM: TFloatField
      FieldName = 'PEITEM'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPED'
    end
    object Tb_PendPECODPRO: TFloatField
      FieldName = 'PECODPRO'
      Origin = 'SG_ASSOC.CADPEN.PEQTDENV'
    end
    object Tb_PendPEQTDPED: TFloatField
      FieldName = 'PEQTDPED'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPEN'
    end
    object Tb_PendPEQTDENV: TFloatField
      FieldName = 'PEQTDENV'
      Origin = 'SG_ASSOC.CADPEN.PEDESC01'
    end
    object Tb_PendPEQTDPEN: TFloatField
      FieldName = 'PEQTDPEN'
      Origin = 'SG_ASSOC.CADPEN.PEDESC02'
    end
    object Tb_PendPEDESC01: TFloatField
      FieldName = 'PEDESC01'
      Origin = 'SG_ASSOC.CADPEN.PEDESC03'
    end
    object Tb_PendPEDESC02: TFloatField
      FieldName = 'PEDESC02'
      Origin = 'SG_ASSOC.CADPEN.PEVALDES'
    end
    object Tb_PendPEDESC03: TFloatField
      FieldName = 'PEDESC03'
      Origin = 'SG_ASSOC.CADPEN.PEPRECO'
    end
    object Tb_PendPEVALDES: TFloatField
      FieldName = 'PEVALDES'
      Origin = 'SG_ASSOC.CADPEN.PEGRADE'
    end
    object Tb_PendPEPRECO: TFloatField
      FieldName = 'PEPRECO'
      Origin = 'SG_ASSOC.CADPEN.PE_CHAVE_NIVEL'
    end
    object Tb_PendPEGRADE: TStringField
      FieldName = 'PEGRADE'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
    end
    object Tb_PendPE_CHAVE_NIVEL: TFloatField
      FieldName = 'PE_CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
    end
    object Tb_PendPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Size = 100
    end
    object Tb_Pendtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
  end
  object src_pend: TDataSource
    DataSet = Tb_Pend
    Left = 674
    Top = 88
  end
  object mem_cabecalho: TRxMemoryData
    FieldDefs = <>
    Left = 540
    Top = 112
    object mem_cabecalhoempresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object mem_cabecalhotelefone: TStringField
      FieldName = 'telefone'
      Size = 30
    end
    object mem_cabecalhodata_pedido: TStringField
      FieldName = 'data_pedido'
      Size = 10
    end
    object mem_cabecalhotipo_pedido: TStringField
      FieldName = 'tipo_pedido'
      Size = 100
    end
    object mem_cabecalhochave: TIntegerField
      FieldName = 'chave'
    end
    object mem_cabecalhocliente_razsoc: TStringField
      FieldName = 'cliente_razsoc'
      Size = 100
    end
    object mem_cabecalhocliente_endereco: TStringField
      FieldName = 'cliente_endereco'
      Size = 100
    end
    object mem_cabecalhocliente_telefone: TStringField
      FieldName = 'cliente_telefone'
    end
    object mem_cabecalhocliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Size = 60
    end
    object mem_cabecalhocliente_uf: TStringField
      FieldName = 'cliente_uf'
      Size = 2
    end
    object mem_cabecalhocliente_bairro: TStringField
      FieldName = 'cliente_bairro'
      Size = 40
    end
    object mem_cabecalhocliente_cnpj_cpf: TStringField
      FieldName = 'cliente_cnpj_cpf'
      Size = 30
    end
    object mem_cabecalhocliente_ie_rg: TStringField
      FieldName = 'cliente_ie_rg'
      Size = 40
    end
    object mem_cabecalhocliente_cep: TStringField
      FieldName = 'cliente_cep'
      Size = 9
    end
    object mem_cabecalhovendedor_codigo: TStringField
      FieldName = 'vendedor_codigo'
      Size = 10
    end
    object mem_cabecalhovendedor_nome: TStringField
      FieldName = 'vendedor_nome'
      Size = 60
    end
    object mem_cabecalhoqtditens: TIntegerField
      FieldName = 'qtditens'
    end
    object mem_cabecalhototund: TFloatField
      FieldName = 'totund'
    end
    object mem_cabecalhoobservacao_pedido: TMemoField
      FieldName = 'observacao_pedido'
      BlobType = ftMemo
    end
    object mem_cabecalhototal_bruto: TFloatField
      FieldName = 'total_bruto'
    end
    object mem_cabecalhodescontos: TFloatField
      FieldName = 'descontos'
    end
    object mem_cabecalhototal_liquido: TFloatField
      FieldName = 'total_liquido'
    end
    object mem_cabecalhocliente_codigo: TFloatField
      FieldName = 'cliente_codigo'
    end
    object mem_cabecalhocodemp: TIntegerField
      FieldName = 'codemp'
    end
    object mem_cabecalhogrupo: TStringField
      FieldName = 'grupo'
      Size = 10
    end
    object mem_cabecalhovia: TIntegerField
      FieldName = 'via'
    end
    object mem_cabecalhocodigo: TStringField
      FieldName = 'codigo'
    end
    object mem_cabecalhoqtd: TStringField
      FieldName = 'qtd'
    end
    object mem_cabecalhound: TStringField
      FieldName = 'und'
      Size = 3
    end
    object mem_cabecalhodescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
    object mem_cabecalhomarca: TStringField
      FieldName = 'marca'
      Size = 40
    end
    object mem_cabecalhopreco_unit: TStringField
      FieldName = 'preco_unit'
    end
    object mem_cabecalhototal: TStringField
      FieldName = 'total'
    end
    object mem_cabecalhodata_documento: TStringField
      FieldName = 'data_documento'
      Size = 30
    end
    object mem_cabecalhocliente_fantasia: TStringField
      FieldName = 'cliente_fantasia'
      Size = 100
    end
    object mem_cabecalhocliente_cnomcon: TStringField
      FieldName = 'cliente_cnomcon'
      Size = 150
    end
    object mem_cabecalhovalfre: TFloatField
      FieldName = 'valfre'
    end
  end
  object mem_itens: TRxMemoryData
    FieldDefs = <>
    Left = 620
    Top = 88
    object mem_itenscodigo: TStringField
      FieldName = 'codigo'
    end
    object mem_itensqtd: TStringField
      FieldName = 'qtd'
    end
    object mem_itensund: TStringField
      FieldName = 'und'
      Size = 10
    end
    object mem_itensdescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
    object mem_itensmarca: TStringField
      FieldName = 'marca'
      Size = 60
    end
    object mem_itenspreco_unit: TStringField
      FieldName = 'preco_unit'
    end
    object mem_itenstotal: TStringField
      FieldName = 'total'
    end
    object mem_itenschave: TIntegerField
      FieldName = 'chave'
    end
    object mem_itensgrupo: TStringField
      FieldName = 'grupo'
      Size = 10
    end
    object mem_itensdesc_complementar: TStringField
      FieldName = 'desc_complementar'
      Size = 254
    end
  end
  object src_cabecalho: TDataSource
    DataSet = mem_cabecalho
    Left = 18
    Top = 162
  end
  object src_itens: TDataSource
    DataSet = mem_itens
    Left = 2
    Top = 218
  end
  object cds_nfse_cab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 300
    Top = 80
    object cds_nfse_cabnumnfse: TIntegerField
      FieldName = 'numnfse'
    end
    object cds_nfse_cabdatemis: TDateTimeField
      FieldName = 'datemis'
    end
    object cds_nfse_cabtomador_razao: TStringField
      FieldName = 'tomador_razao'
      Size = 100
    end
    object cds_nfse_cabtomador_cnpj: TStringField
      FieldName = 'tomador_cnpj'
    end
    object cds_nfse_cabtomador_im: TStringField
      FieldName = 'tomador_im'
    end
    object cds_nfse_cabtomador_ender: TStringField
      FieldName = 'tomador_ender'
      Size = 100
    end
    object cds_nfse_cabtomador_bairro: TStringField
      FieldName = 'tomador_bairro'
      Size = 100
    end
    object cds_nfse_cabtomador_municipio: TStringField
      FieldName = 'tomador_municipio'
      Size = 100
    end
    object cds_nfse_cabtomador_uf: TStringField
      FieldName = 'tomador_uf'
      Size = 2
    end
    object cds_nfse_cabtomador_cep: TStringField
      FieldName = 'tomador_cep'
      Size = 9
    end
    object cds_nfse_cabtotal_servicos: TFloatField
      FieldName = 'total_servicos'
    end
    object cds_nfse_cabtotal_desc_incondicionado: TFloatField
      FieldName = 'total_desc_incondicionado'
    end
    object cds_nfse_cabtotal_retencoes_federais: TFloatField
      FieldName = 'total_retencoes_federais'
    end
    object cds_nfse_cabtotal_liquido: TFloatField
      FieldName = 'total_liquido'
    end
    object cds_nfse_cabtotal_deducoes: TFloatField
      FieldName = 'total_deducoes'
    end
    object cds_nfse_cabserv_prestado_codigo_municipio: TStringField
      FieldName = 'serv_prestado_codigo_municipio'
      Size = 7
    end
    object cds_nfse_cabtomador_num_uf_cep_fone: TStringField
      FieldName = 'tomador_num_uf_cep_fone'
      Size = 254
    end
  end
  object src_nfse_cab: TDataSource
    DataSet = cds_nfse_cab
    Left = 330
    Top = 22
  end
  object src_nfse_det: TDataSource
    DataSet = cds_nfse_det
    Left = 410
    Top = 54
  end
  object cds_nfse_det: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 452
    Top = 112
    object cds_nfse_detitem: TStringField
      FieldName = 'item'
      Size = 3
    end
    object cds_nfse_detdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
  end
  object Qr_Ped01_tipos_corte: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADP01_TIPOS_CORTE')
    Left = 714
    Top = 266
    object Qr_Ped01_tipos_cortePTC_ID: TFloatField
      FieldName = 'PTC_ID'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_ID'
    end
    object Qr_Ped01_tipos_cortePTC_CODEMP: TFloatField
      FieldName = 'PTC_CODEMP'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_CODEMP'
    end
    object Qr_Ped01_tipos_cortePTC_CHAVE: TFloatField
      FieldName = 'PTC_CHAVE'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_CHAVE'
    end
    object Qr_Ped01_tipos_cortePTC_CHAVE_ANO: TFloatField
      FieldName = 'PTC_CHAVE_ANO'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_CHAVE_ANO'
    end
    object Qr_Ped01_tipos_cortePTC_SEQ: TFloatField
      FieldName = 'PTC_SEQ'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_SEQ'
    end
    object Qr_Ped01_tipos_cortePTC_TIPO_DO_CORTE: TStringField
      FieldName = 'PTC_TIPO_DO_CORTE'
      Origin = 'SG_ASSOC.CADP01_TIPOS_CORTE.PTC_TIPO_DO_CORTE'
      Size = 254
    end
  end
  object src_Ped01_tipos_corte: TDataSource
    DataSet = Qr_Ped01_tipos_corte
    Left = 786
    Top = 266
  end
  object cds_sub_det_grupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 844
    Top = 200
    object cds_sub_det_grupodescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cds_sub_det_grupovalor: TFloatField
      FieldName = 'valor'
    end
    object cds_sub_det_grupocodigo: TIntegerField
      FieldName = 'codigo'
    end
  end
  object src_sub_det_grupo: TDataSource
    DataSet = cds_sub_det_grupo
    Left = 874
    Top = 202
  end
  object cds_sub_det_ger: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 844
    Top = 248
    object cds_sub_det_gercodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cds_sub_det_gerdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cds_sub_det_gervalor: TFloatField
      FieldName = 'valor'
    end
  end
  object src_sub_det_ger: TDataSource
    DataSet = cds_sub_det_ger
    Left = 874
    Top = 250
  end
end
