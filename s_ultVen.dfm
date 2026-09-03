object Frm_UltVen: TFrm_UltVen
  Left = 236
  Top = 119
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Venda de Mercadorias'
  ClientHeight = 565
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 201
    Width = 929
    Height = 364
    Align = alClient
    Caption = 'Compras Anteriores:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 925
      Height = 347
      Align = alClient
      DataSource = Src_UltVen
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Title.Alignment = taCenter
          Title.Caption = 'Data Ped.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATDOC'
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
          FieldName = 'P1NUMNF'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Title.Alignment = taCenter
          Title.Caption = 'Chave Ped.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_cli'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 258
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo Prod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_pro'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
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
          FieldName = 'PDREFER'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 86
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
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAX(P2LOTE)'
          Title.Alignment = taCenter
          Title.Caption = 'Lote'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pco_uni'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Unitario'
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
          FieldName = 'qtd_uni'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_total'
          Title.Alignment = taCenter
          Title.Caption = 'Total Descontos'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object rl_prod_comp: TRLReport
      Left = 278
      Top = 67
      Width = 794
      Height = 1123
      DataSource = Src_UltVen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ShowProgress = False
      Visible = False
      BeforePrint = rl_prod_compBeforePrint
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 100
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 190
          Top = 24
          Width = 325
          Height = 16
          Caption = 'Relatorio de Vendas de Produtos com pre'#231'o de compra'
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 675
          Top = 5
          Width = 39
          Height = 16
          Alignment = taRightJustify
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 675
          Top = 25
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Info = itHour
        end
        object rl_emp: TRLLabel
          Left = 5
          Top = 5
          Width = 626
          Height = 16
          AutoSize = False
          Caption = 'Empresa do Sistema'
        end
        object rl_data: TRLLabel
          Left = 175
          Top = 43
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Sem Filtro de Data'
        end
        object rl_fornecedores: TRLLabel
          Left = 175
          Top = 59
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Todos os Clientes'
        end
        object rl_produtos: TRLLabel
          Left = 175
          Top = 75
          Width = 356
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Todos os Produtos'
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 630
          Top = 80
          Width = 87
          Height = 16
          Alignment = taRightJustify
          Info = itPageNumber
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 138
        Width = 718
        Height = 55
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataFields = 'P2CODPRO'
        object RLBand2: TRLBand
          Left = 1
          Top = 1
          Width = 716
          Height = 36
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand2BeforePrint
          object rl_nomepro: TRLLabel
            Left = 2
            Top = 2
            Width = 61
            Height = 16
            Caption = 'Produto..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_dataped: TRLLabel
            Left = 0
            Top = 20
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Ped.'
            Layout = tlCenter
          end
          object rl_codfor: TRLLabel
            Left = 194
            Top = 20
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'd.Clie.'
            Layout = tlCenter
          end
          object rl_razaofor: TRLLabel
            Left = 250
            Top = 20
            Width = 186
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Raz'#227'o Social'
            Layout = tlCenter
          end
          object rl_precouni: TRLLabel
            Left = 482
            Top = 20
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pre'#231'o Unit'#225'rio'
            Layout = tlCenter
          end
          object rl_qtd: TRLLabel
            Left = 555
            Top = 20
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Quantidade'
            Layout = tlCenter
          end
          object rl_valtot: TRLLabel
            Left = 652
            Top = 20
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Total'
            Layout = tlCenter
          end
          object rl_chaveped: TRLLabel
            Left = 133
            Top = 20
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chave Ped.'
            Layout = tlCenter
          end
          object rl_desc: TRLLabel
            Left = 614
            Top = 20
            Width = 40
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Desc.'
            Layout = tlCenter
          end
          object rl_lote: TRLLabel
            Left = 434
            Top = 20
            Width = 49
            Height = 16
            AutoSize = False
            Caption = 'Lote'
            Layout = tlCenter
          end
          object lbl_P1DATDOC: TRLLabel
            Left = 68
            Top = 19
            Width = 64
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Doc'
            Layout = tlCenter
          end
        end
        object RLBand3: TRLBand
          Left = 1
          Top = 37
          Width = 716
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AfterPrint = RLBand3AfterPrint
          object RLDBText1: TRLDBText
            Left = 0
            Top = 1
            Width = 64
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = Src_UltVen
            Holder = rl_dataped
            Layout = tlCenter
          end
          object RLDBText2: TRLDBText
            Left = 250
            Top = 1
            Width = 186
            Height = 16
            AutoSize = False
            DataField = 'nome_cli'
            DataSource = Src_UltVen
            Holder = rl_razaofor
            Layout = tlCenter
          end
          object RLDBText3: TRLDBText
            Left = 482
            Top = 1
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pco_uni'
            DataSource = Src_UltVen
            Holder = rl_precouni
            Layout = tlCenter
          end
          object RLDBText4: TRLDBText
            Left = 555
            Top = 1
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'qtd_uni'
            DataSource = Src_UltVen
            Holder = rl_qtd
            Layout = tlCenter
          end
          object RLDBText5: TRLDBText
            Left = 652
            Top = 1
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valor_total'
            DataSource = Src_UltVen
            Holder = rl_valtot
            Layout = tlCenter
          end
          object RLDBText6: TRLDBText
            Left = 194
            Top = 1
            Width = 56
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'MAX(P1CODCLI)'
            DataSource = Src_UltVen
            Holder = rl_codfor
            Layout = tlCenter
          end
          object RLDBText7: TRLDBText
            Left = 133
            Top = 1
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = Src_UltVen
            Holder = rl_chaveped
            Layout = tlCenter
          end
          object RLDBText8: TRLDBText
            Left = 614
            Top = 1
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'desc_total'
            DataSource = Src_UltVen
            Holder = rl_desc
            Layout = tlCenter
          end
          object RLDBText9: TRLDBText
            Left = 434
            Top = 2
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'MAX(P2LOTE)'
            DataSource = Src_UltVen
            Holder = rl_lote
            Layout = tlCenter
          end
          object edt_P1DATDOC: TRLDBText
            Left = 68
            Top = 2
            Width = 64
            Height = 16
            AutoSize = False
            DataField = 'P1DATDOC'
            DataSource = Src_UltVen
            Holder = lbl_P1DATDOC
            Layout = tlCenter
          end
        end
      end
      object RLBand4: TRLBand
        Left = 38
        Top = 193
        Width = 718
        Height = 16
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand4BeforePrint
        object RLLabel2: TRLLabel
          Left = 202
          Top = 0
          Width = 186
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Totais..............................:'
          Layout = tlCenter
        end
        object rl_Totqtd: TRLLabel
          Left = 556
          Top = 0
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Quantidade'
          Holder = rl_qtd
          Layout = tlCenter
        end
        object rl_Totvaltot: TRLLabel
          Left = 653
          Top = 0
          Width = 64
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Total'
          Holder = rl_valtot
          Layout = tlCenter
        end
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 929
    Height = 201
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 921
        Height = 169
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 30
          Top = 13
          Width = 91
          Height = 13
          Caption = 'C'#243'digo do Produto:'
        end
        object Label2: TLabel
          Left = 79
          Top = 81
          Width = 41
          Height = 13
          Caption = 'Per'#237'odo:'
        end
        object Label3: TLabel
          Left = 221
          Top = 81
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label4: TLabel
          Left = 30
          Top = 34
          Width = 92
          Height = 13
          Caption = 'C'#243'digo do Cliente..:'
        end
        object Label5: TLabel
          Left = 36
          Top = 55
          Width = 85
          Height = 13
          Caption = 'Rede de Cliente..:'
        end
        object Label9: TLabel
          Left = 344
          Top = 78
          Width = 65
          Height = 13
          Caption = 'Tipo da Data:'
        end
        object Label6: TLabel
          Left = 2
          Top = 106
          Width = 118
          Height = 13
          Caption = 'Ordem de Apresenta'#231#227'o:'
        end
        object sbn_padrao_leitor: TSpeedButton
          Left = 648
          Top = 103
          Width = 68
          Height = 18
          Caption = 'Padr'#227'o'
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
          OnClick = sbn_padrao_leitorClick
        end
        object Label11: TLabel
          Left = 687
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Marca:'
        end
        object CODPRO: TEdit
          Left = 123
          Top = 10
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = CODPROEnter
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object NOMPRO: TEdit
          Left = 246
          Top = 10
          Width = 295
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 1
        end
        object MDT1: TMaskEdit
          Left = 123
          Top = 78
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '  /  /    '
          OnEnter = CODPROEnter
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 245
          Top = 78
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          Text = '  /  /    '
          OnEnter = CODPROEnter
          OnExit = MDT2Exit
        end
        object bbAplicar: TBitBtn
          Left = 52
          Top = 125
          Width = 148
          Height = 36
          Caption = '&Aplicar'
          TabOrder = 13
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
        object bbSair: TBitBtn
          Left = 569
          Top = 125
          Width = 148
          Height = 36
          Caption = '&Sair'
          TabOrder = 14
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
          Left = 123
          Top = 31
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = CODPROEnter
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object nomcli: TEdit
          Left = 246
          Top = 31
          Width = 339
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 3
        end
        object UND: TEdit
          Left = 545
          Top = 10
          Width = 39
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 7
        end
        object CB_CONFIRMADAS: TCheckBox
          Left = 560
          Top = 80
          Width = 169
          Height = 17
          Caption = 'Somente Vendas Confirmadas'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object bb_imprel: TBitBtn
          Left = 232
          Top = 125
          Width = 148
          Height = 36
          Caption = '&Imprimir Relatorio'
          TabOrder = 9
          OnClick = bb_imprelClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object bb_exportar: TBitBtn
          Left = 404
          Top = 125
          Width = 148
          Height = 36
          Caption = '&Exportar Relatorio'
          TabOrder = 10
          OnClick = bb_exportarClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000C40E0000C40E00000001000000010000000000000368
            03000E5F1400091E18001C771D000C271E00203A260012342800194C29002541
            2C00096C2F00194432000E6B32003187340011733600204E38001B6B39001979
            3B00217E3F002B6541002C8746003F93460039724B004A964C00348C4E00395E
            5000489B530038975400407A5600425E5800568259003E9E590054A459004680
            5C00569A5D0044A35E004A6A5F004C876100609963005BAA640050756500548E
            660063AC680057966A0067B06E005E9B71006CB6740062B2750065A076006BA6
            7B0072BB7B006B977D0070AA800072BA830075AF85007BC1850075A0860081AA
            8D0081BC900088C792008AB7950094C79C009DD0A700A8C2A800AAD6B200BADE
            C000C4E5CA00CDDACD00D2E4D200CCE9D200D5E5D500D8E7D800D9E8D900DAE9
            DA00DCEADB00DEEBDE00DFECDF00E0EEE000E3EBE300E2EEE300E4EFE400E6F0
            E600E8F1E800EAF2E900EBF3EB00EDF5ED00EFF6EF00F1F7F100F3F8F300F5F9
            F500F6FAF500F6FAF600F8FAF800F9FBFA00FAFDFA00FBFEFB00FDFEFD00FEFF
            FE00FFFFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000626262626262
            6262626262626262626262626262626262626262626262626262626262626262
            626262626262626262626262626262626262626262626262626262621C0F0F0F
            0F0F0F0B0B0B0B0B0B070707070707050505050503030303626262621C272323
            23231F1F1F1B1B1B181814141412121211110E0E0E0C0A03626262621C273328
            282828282828242424242424241D1D1D1D1D1D1D1D1D0C0362626262212F3352
            5251504F4F4D4C4B4A4A49484747464646444444441D0E0362626262212F3353
            525251504F4F4D4C4B4A4A494847474646464444441D0E0562626262212F3354
            53525251504F4F4D4C4B4A4A4948474746464644441D0E056262626225353355
            5453525251504F4F4D4C4B4A4A49484747464646441D11056262626225353355
            555453525251504F4F4D4C402609060606060606461D11056262626225373856
            1709090909090909090908020D0D0E1013131906461D120562626262293A3857
            170E0E1010131319191901043B2E141412120147461D120762626262293B3858
            49172E32322E2C272001153E2E15181414013D47471D120762626262293D3858
            5849172E32322A2001153E2C1A1A151801083F4847241407626262622B3D3859
            585849172E2C2001153E2E20201A1A011412024948241407626262622B3E395A
            595858491720011540322020202001161E291E4A49241407626262622D3E395B
            5A595858490415403727272020163F4F4D4C4B4A4A241807626262622D40395C
            5B5A59583D17413B2A2A27201E01434F4F4D4C4B4A24180B626262622D40395D
            5C5B5A3D1A413D2E2C2A271E221E01434F4F4D4C4B241B0B626262623040395E
            5D5C3D20423D32322E2A1E2C2E201E01434F4F4D4C281B0B626262623041395E
            5E3D27423B3737322C1E2C32322E201E01434F4F4D281B0B6262626231413C5F
            3D2C423E3B373732263F262E32322E201E01434F4F281F0B6262626231413C60
            2E423E3B3B3B3526475843262E32322E201E01504F281F0B6262626231423C61
            2E2E2C2A2A26264E59585843262626291E1E1E5150281F0F6262626234423C62
            61605F5E5E5D5C5B5A59585857565555545352525128230F6262626234423C62
            6261605F5E5E5D5C5B5A595858575655555453525228230F6262626234453C62
            626261605F5E5E5D5C5B5A5958585756555554535228230F626262623645393C
            3C3C3C3C3C3C39393939393838383838383333333333230F6262626236454545
            4242424141414040403E3E3D3D3B3A3735352F2F2F27270F6262626236363634
            34343131313030302D2D2D2B2929292525252121211C1C1C6262626262626262
            6262626262626262626262626262626262626262626262626262626262626262
            6262626262626262626262626262626262626262626262626262}
        end
        object edt_redcli: TEdit
          Left = 123
          Top = 52
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnEnter = CODPROEnter
          OnExit = edt_redcliExit
          OnKeyPress = edt_redcliKeyPress
        end
        object edt_nomredcli: TEdit
          Left = 246
          Top = 52
          Width = 339
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 12
        end
        object cb_tipo_data: TComboBox
          Left = 418
          Top = 73
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 6
          Text = 'Nota'
          Items.Strings = (
            'Pedido'
            'Nota')
        end
        object cb_ordem: TComboBox
          Left = 123
          Top = 100
          Width = 521
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = 
            'Data Pedido Decrescente + Chave do Pedido Decrescente + Nome do ' +
            'Produto Descrescente'
          Items.Strings = (
            
              'Data Pedido Decrescente + Chave do Pedido Decrescente + Nome do ' +
              'Produto Descrescente'
            
              'Data da Nota Decrescente + Chave do Pedido Decrescente + Nome do' +
              ' Produto Descrescente'
            'Data Pedido + Chave do Pedido + Nome do Produto'
            'Data da Nota + Chave do Pedido + Nome do Produto'
            'Nome do Produto + Chave do Pedido'
            '')
        end
        object MARCA: TEdit
          Left = 589
          Top = 10
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnExit = MARCAExit
        end
        object lbx_marca: TListBox
          Left = 653
          Top = 10
          Width = 263
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnKeyDown = lbx_marcaKeyDown
        end
        object OMITIR_MAR: TCheckBox
          Left = 589
          Top = 31
          Width = 55
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
      end
    end
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 841
        Top = 0
        Width = 80
        Height = 173
        Align = alRight
        TabOrder = 0
        object bbSalvarPadrao: TBitBtn
          Left = 2
          Top = 48
          Width = 75
          Height = 81
          Caption = 'Salvar Padrao'
          TabOrder = 0
          OnClick = bbSalvarPadraoClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 841
        Height = 173
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = RG_TIPOPEDClick
      end
    end
  end
  object Qr_UltVen: TQuery
    OnCalcFields = Qr_UltVenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select '
      
        '     P1CHAVE, max(p1formace), max(P1CODCLI), max(p1codven), max(' +
        'P1DATAP),'
      '     max(P2LOTE), P2CODPRO, max(pdnome),'
      
        '     max(P2PCOTAB) as maior_pcotab, sum(P2PCOTAB) as somado_pcot' +
        'ab,'
      '     max(P2QTD) as maior_qtd, sum(P2QTD) as somado_qtd,'
      '     max(P2PRECO) as maior_preco, sum(P2PRECO) as somado_preco,'
      
        '     max(P2TOTDES) as maior_totdes, sum(P2TOTDES) as somado_totd' +
        'es,'
      
        '     max(P2DESCRAT) as maior_descrat, sum(P2DESCRAT) as somado_d' +
        'escrat,'
      
        '     max(P2TOTLIQ) as maior_totliq, sum(P2TOTLIQ) as somado_totl' +
        'iq'
      
        '     ,max(PDMARCA) as PDMARCA, max(PDUND) as PDUND, max(PDREFER)' +
        ' as PDREFER'
      ' from'
      '     CADP01,CADP02, CADPRO '
      ' where '
      '     P1CODEMP=P2CODEMP '
      ' and ((P1CODEMP=1) OR P1CODEMP=101) '
      ' and P1CHAVE=P2CHAVE   '
      ' and PDCODPRO=P2CODPRO '
      ' and P1LOTSEQ=P2LOTSEQ '
      ' and P1STATUS<>9       '
      ' and P1TIPO=1 and P1Emidoc=1 '
      ' GROUP BY P1CHAVE, P2CODPRO'
      ' order by max(pdnome)'
      ' ')
    Left = 608
    Top = 40
    object Qr_UltVenP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object Qr_UltVenP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_UltVenMAXP1CODCLI: TFloatField
      FieldName = 'MAX(P1CODCLI)'
    end
    object Qr_UltVenMAXP1CODVEN: TFloatField
      FieldName = 'MAX(P1CODVEN)'
    end
    object Qr_UltVenMAXP2LOTE: TStringField
      FieldName = 'MAX(P2LOTE)'
    end
    object Qr_UltVenMAXPDNOME: TStringField
      FieldName = 'MAX(PDNOME)'
      Size = 53
    end
    object Qr_UltVenMAIOR_PCOTAB: TFloatField
      FieldName = 'MAIOR_PCOTAB'
    end
    object Qr_UltVenSOMADO_PCOTAB: TFloatField
      FieldName = 'SOMADO_PCOTAB'
    end
    object Qr_UltVenMAIOR_QTD: TFloatField
      FieldName = 'MAIOR_QTD'
    end
    object Qr_UltVenSOMADO_QTD: TFloatField
      FieldName = 'SOMADO_QTD'
    end
    object Qr_UltVenMAIOR_PRECO: TFloatField
      FieldName = 'MAIOR_PRECO'
    end
    object Qr_UltVenSOMADO_PRECO: TFloatField
      FieldName = 'SOMADO_PRECO'
    end
    object Qr_UltVenMAIOR_TOTDES: TFloatField
      FieldName = 'MAIOR_TOTDES'
    end
    object Qr_UltVenSOMADO_TOTDES: TFloatField
      FieldName = 'SOMADO_TOTDES'
    end
    object Qr_UltVenMAIOR_DESCRAT: TFloatField
      FieldName = 'MAIOR_DESCRAT'
    end
    object Qr_UltVenSOMADO_DESCRAT: TFloatField
      FieldName = 'SOMADO_DESCRAT'
    end
    object Qr_UltVenMAIOR_TOTLIQ: TFloatField
      FieldName = 'MAIOR_TOTLIQ'
    end
    object Qr_UltVenSOMADO_TOTLIQ: TFloatField
      FieldName = 'SOMADO_TOTLIQ'
    end
    object Qr_UltVenMAXP1FORMACE: TFloatField
      FieldName = 'MAX(P1FORMACE)'
    end
    object Qr_UltVendesc_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'desc_total'
      Calculated = True
    end
    object Qr_UltVenvalor_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object Qr_UltVennome_pro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome_pro'
      Size = 40
      Calculated = True
    end
    object Qr_UltVennome_cli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome_cli'
      Size = 40
      Calculated = True
    end
    object Qr_UltVenpco_uni: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pco_uni'
      Calculated = True
    end
    object Qr_UltVenqtd_uni: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtd_uni'
      Calculated = True
    end
    object Qr_UltVenP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
    end
    object Qr_UltVenP1DATDOC: TDateTimeField
      DisplayLabel = 'Data Doc'
      FieldName = 'P1DATDOC'
    end
    object Qr_UltVenP1NUMNF: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'P1NUMNF'
    end
    object Qr_UltVenPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 60
    end
    object Qr_UltVenPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_UltVenPDREFER: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PDREFER'
      Size = 40
    end
  end
  object Src_UltVen: TDataSource
    DataSet = Qr_UltVen
    Left = 641
    Top = 40
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 488
    Top = 156
  end
end
