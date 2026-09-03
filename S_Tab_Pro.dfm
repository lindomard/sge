object Frm_Tab_Pro: TFrm_Tab_Pro
  Left = 181
  Top = 165
  Width = 787
  Height = 459
  Caption = 'Visualiza'#231#227'o/impress'#227'o de relatorios de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 385
    Align = alClient
    TabOrder = 0
    OnDblClick = BitBtn1Click
    object GroupBox2: TGroupBox
      Left = 1
      Top = 338
      Width = 777
      Height = 46
      Align = alBottom
      TabOrder = 0
      Visible = False
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 773
        Height = 29
        Align = alClient
        Progress = 0
      end
    end
    object St_NomRel: TStaticText
      Left = 1
      Top = 1
      Width = 777
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = '.'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 1
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 18
      Width = 777
      Height = 320
      ActivePage = ts_filtros
      Align = alClient
      MultiLine = True
      Style = tsButtons
      TabOrder = 2
      object ts_filtros: TTabSheet
        Caption = 'Filtros'
        object Label14: TLabel
          Left = 3
          Top = 2
          Width = 49
          Height = 13
          Caption = 'Produto:'
        end
        object Label13: TLabel
          Left = 1
          Top = 49
          Width = 69
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label3: TLabel
          Left = 5
          Top = 97
          Width = 39
          Height = 13
          Caption = 'Grupo:'
        end
        object Label17: TLabel
          Left = 42
          Top = 139
          Width = 103
          Height = 13
          Alignment = taCenter
          Caption = 'Status do Produto'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 71
          Top = 183
          Width = 74
          Height = 13
          Caption = 'Tipo Produto'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object CODPRO: TEdit
          Left = 70
          Top = 0
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODPROExit
          OnKeyDown = CODPROKeyDown
          OnKeyPress = CODPROKeyPress
        end
        object OMITIR_PRO: TCheckBox
          Left = 70
          Top = 24
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lbx_codpro: TListBox
          Left = 150
          Top = 1
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codproKeyDown
        end
        object CODFOR: TEdit
          Left = 70
          Top = 48
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 151
          Top = 46
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 70
          Top = 69
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object CODGRU: TEdit
          Left = 70
          Top = 93
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODGRUExit
          OnKeyPress = CODGRUKeyPress
        end
        object OMITIR_GRU: TCheckBox
          Left = 70
          Top = 119
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object lbx_codgru: TListBox
          Left = 151
          Top = 91
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codgruKeyDown
        end
        object RG_PERIODO: TGroupBox
          Left = 0
          Top = 254
          Width = 769
          Height = 35
          Align = alBottom
          Caption = 'Per'#237'odo / Referencia'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          Visible = False
          object Label11: TLabel
            Left = 11
            Top = 17
            Width = 66
            Height = 13
            Caption = 'Periodo de:'
          end
          object Label10: TLabel
            Left = 196
            Top = 17
            Width = 8
            Height = 13
            Caption = 'a'
          end
          object Label1: TLabel
            Left = 399
            Top = 17
            Width = 98
            Height = 13
            Caption = 'Refer'#234'ncia: M'#234's:'
            Visible = False
          end
          object Label2: TLabel
            Left = 553
            Top = 17
            Width = 27
            Height = 13
            Caption = 'Ano:'
            Visible = False
          end
          object MDT1: TMaskEdit
            Left = 84
            Top = 14
            Width = 95
            Height = 19
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
            OnExit = MDT1Exit
          end
          object MDT2: TMaskEdit
            Left = 222
            Top = 14
            Width = 98
            Height = 19
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
            OnExit = MDT2Exit
          end
          object MES: TEdit
            Left = 503
            Top = 14
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Visible = False
            OnExit = MESExit
            OnKeyPress = INTCOLKeyPress
          end
          object ANO: TEdit
            Left = 583
            Top = 14
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Visible = False
            OnKeyPress = INTCOLKeyPress
          end
        end
        object RG_EST: TRadioGroup
          Left = 592
          Top = 4
          Width = 174
          Height = 129
          Caption = 'Listar os Produtos:'
          Color = 16776176
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Com Estoque Normal'
            'Sem Estoque Normal'
            'Com Estoque Consignado'
            'Sem Estoque Consignado'
            'Com Estoque Revenda'
            'Sem Estoque Revenda')
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
        object CLBStatus: TCheckListBox
          Left = 151
          Top = 134
          Width = 615
          Height = 43
          Color = 16776176
          Columns = 6
          Ctl3D = False
          ItemHeight = 13
          Items.Strings = (
            '0-Ativo'
            '1-Normal'
            '2-Normal'
            '3-Normal'
            '4-Normal'
            '5-Normal'
            '6-Normal'
            '7-Normal'
            '8-Vda Bloq'
            '9-Inativo'
            'Todos')
          ParentCtl3D = False
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnClick = CLBStatusClick
        end
        object CLBNivel: TCheckListBox
          Left = 151
          Top = 181
          Width = 473
          Height = 61
          Color = 16776176
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          Items.Strings = (
            'Acabado'
            'Servi'#231'o'
            'Mat'#233'ria Prima Revenda'
            'Produto em Produ'#231'ao'
            'Mat'#233'ria Prima'
            'Insumos'
            'Acessorios'
            'Outros'
            'Todos')
          ParentCtl3D = False
          Style = lbOwnerDrawFixed
          TabOrder = 11
          OnClick = CLBNivelClick
        end
        object RG_SITUACAO: TRadioGroup
          Left = 627
          Top = 176
          Width = 139
          Height = 66
          Caption = 'Situa'#231#227'o do Pedido'
          Color = 16776176
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            'Pendentes'
            'Emitidos'
            'Todos')
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
      end
      object ts_Filtros_Ad: TTabSheet
        Caption = 'Filtros Adicionais'
        ImageIndex = 1
        object Label4: TLabel
          Left = 7
          Top = 5
          Width = 37
          Height = 13
          Caption = 'Ramo:'
        end
        object Label5: TLabel
          Left = 7
          Top = 51
          Width = 52
          Height = 13
          Caption = 'Controle:'
        end
        object Label15: TLabel
          Left = 8
          Top = 102
          Width = 30
          Height = 13
          Caption = 'Tipo:'
        end
        object CODRAM: TEdit
          Left = 73
          Top = 1
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODRAMExit
          OnKeyPress = CODRAMKeyPress
        end
        object OMITIR_RAM: TCheckBox
          Left = 74
          Top = 23
          Width = 65
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lbx_codram: TListBox
          Left = 150
          Top = 0
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codramKeyDown
        end
        object CODCON: TEdit
          Left = 73
          Top = 48
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object lbx_codcon: TListBox
          Left = 150
          Top = 47
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codconKeyDown
        end
        object OMITIR_CON: TCheckBox
          Left = 74
          Top = 71
          Width = 61
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object CODTIP: TEdit
          Left = 74
          Top = 96
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
        end
        object OMITIR_TIP: TCheckBox
          Left = 75
          Top = 122
          Width = 66
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object lbx_codtip: TListBox
          Left = 150
          Top = 96
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codtipKeyDown
        end
      end
      object ts_filtroscli: TTabSheet
        Caption = 'Filtrar Clientes'
        ImageIndex = 3
        object Label9: TLabel
          Left = 15
          Top = 7
          Width = 44
          Height = 13
          Caption = 'Cliente:'
        end
        object CODCLI: TEdit
          Left = 73
          Top = 5
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object OMITIR_CLI: TCheckBox
          Left = 74
          Top = 30
          Width = 67
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lbx_codcli: TListBox
          Left = 150
          Top = 5
          Width = 438
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codcliKeyDown
        end
      end
      object ts_outros: TTabSheet
        Caption = 'Outros Filtros'
        ImageIndex = 3
      end
      object TabSheet3: TTabSheet
        Caption = '&Sobre o Relat'#243'rio'
        ImageIndex = 3
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 769
          Height = 127
          Align = alTop
          Caption = 'Formato do Relat'#243'rio:'
          TabOrder = 0
          object Label6: TLabel
            Left = 22
            Top = 15
            Width = 137
            Height = 13
            Caption = 'Quantidade de Colunas:'
          end
          object Label7: TLabel
            Left = 228
            Top = 15
            Width = 30
            Height = 13
            Caption = 'Pular'
          end
          object Label8: TLabel
            Left = 311
            Top = 15
            Width = 169
            Height = 13
            Caption = 'Caracteres de uma para outra'
          end
          object NUMCOL: TEdit
            Left = 164
            Top = 9
            Width = 60
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnKeyPress = INTCOLKeyPress
          end
          object INTCOL: TEdit
            Left = 262
            Top = 9
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyPress = INTCOLKeyPress
          end
          object RG_TPCOL: TRadioGroup
            Left = 23
            Top = 30
            Width = 472
            Height = 31
            Caption = 'Tipo de Coluna'
            Columns = 2
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              '&Sequencial '
              '&Lado a Lado Mesmo Valor')
            ParentCtl3D = False
            TabOrder = 2
          end
          object CB_AVPTPI: TCheckBox
            Left = 21
            Top = 87
            Width = 270
            Height = 17
            Caption = 'Avan'#231'ar Pagina apos imprimir pagina inicial'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object CB_MPAGGR: TCheckBox
            Left = 20
            Top = 108
            Width = 245
            Height = 17
            Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
          end
          object CB_GRUPO: TCheckBox
            Left = 21
            Top = 66
            Width = 205
            Height = 17
            Caption = 'Imprimir &Grupos'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object CB_AVPIPF: TCheckBox
            Left = 340
            Top = 86
            Width = 282
            Height = 17
            Caption = 'Avan'#231'ar pagina antes de imprimir pagina final'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
          end
          object CB_MPAGSG: TCheckBox
            Left = 340
            Top = 108
            Width = 266
            Height = 17
            Caption = 'Avan'#231'ar P'#225'gina ao trocar Sub_Grupos'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 8
          end
          object CB_SGRUPO: TCheckBox
            Left = 340
            Top = 66
            Width = 161
            Height = 17
            Caption = 'Imprimir &Sub-Grupos'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 779
    Height = 43
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object Sair: TBitBtn
      Left = 619
      Top = 2
      Width = 157
      Height = 40
      Caption = '&Sair'
      TabOrder = 2
      OnClick = SairClick
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
    object bb_exportar: TBitBtn
      Left = 309
      Top = 4
      Width = 148
      Height = 36
      Caption = '&Exportar Relatorio'
      TabOrder = 1
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
  end
end
