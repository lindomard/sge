object Frm_Extrato_Completo: TFrm_Extrato_Completo
  Left = 123
  Top = 131
  Width = 1129
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Extrato de Produtos'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1121
    Height = 436
    ActivePage = TsIndividual
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TsIndividual: TTabSheet
      Caption = 'Extrato Individual por Item'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 179
        Width = 1113
        Height = 229
        Align = alClient
        DataSource = src_cadest_mov
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CMP_CODPRO'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Width = 352
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESTINO_ORIGEM'
            Width = 213
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_DATHOR'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_SALDO_ANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_SAI'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ENT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_SALDO_ATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_CHAVE_ANO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_DOCORI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCORI'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 179
        Align = alTop
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 53
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Inicial:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label4: TLabel
          Left = 225
          Top = 53
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object Label5: TLabel
          Left = 1
          Top = 13
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Produto:'
        end
        object Label1: TLabel
          Left = 139
          Top = 104
          Width = 85
          Height = 13
          Caption = 'Tipo do Pre'#231'o:'
        end
        object Label2: TLabel
          Left = 1
          Top = 126
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ordem:'
          Color = clBtnFace
          ParentColor = False
          Visible = False
        end
        object sbt_expexcel: TSpeedButton
          Left = 324
          Top = 154
          Width = 155
          Height = 25
          Caption = '&Exportar para Excel'
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
          OnClick = sbt_expexcelClick
        end
        object MDT1: TMaskEdit
          Left = 136
          Top = 51
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 293
          Top = 51
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CODPRO: TEdit
          Left = 136
          Top = 10
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object lbx_codpro: TListBox
          Left = 197
          Top = 10
          Width = 336
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 136
          Top = 32
          Width = 60
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CB_QUEBRAPAGINA: TCheckBox
          Left = 136
          Top = 71
          Width = 233
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Quebrar Pagina por Produto'
          TabOrder = 5
        end
        object StaticText10: TStaticText
          Left = 538
          Top = 2
          Width = 361
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Niveis de Produtos'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object CLBNivel: TCheckListBox
          Left = 538
          Top = 21
          Width = 362
          Height = 124
          Color = 16776176
          Columns = 2
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
          TabOrder = 10
          OnClick = CLBNivelClick
        end
        object bbAtualizar: TBitBtn
          Left = -1
          Top = 155
          Width = 132
          Height = 25
          Cursor = crHandPoint
          Caption = '&Atualizar'
          TabOrder = 12
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
        object bbImprimir: TBitBtn
          Left = 132
          Top = 155
          Width = 132
          Height = 25
          Cursor = crHandPoint
          Caption = '&Imprimir'
          TabOrder = 13
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
          Left = 568
          Top = 155
          Width = 132
          Height = 25
          Cursor = crHandPoint
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
        object CB_PROD_SEMMOV: TCheckBox
          Left = 136
          Top = 86
          Width = 233
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Exibir Produtos sem Movimento'
          TabOrder = 7
        end
        object StaticText2: TStaticText
          Left = 375
          Top = 54
          Width = 156
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Status Produto'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object CLB_STATUS: TCheckListBox
          Left = 375
          Top = 71
          Width = 156
          Height = 61
          Color = 16776176
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            'Todos')
          ParentCtl3D = False
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnClick = CLB_STATUSClick
        end
        object OMITIR_STATUS: TCheckBox
          Left = 375
          Top = 134
          Width = 157
          Height = 17
          Caption = 'Omitir Status Selecionado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object CB_TPPRECO: TComboBox
          Left = 228
          Top = 103
          Width = 128
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = 'Preco 1'
          Items.Strings = (
            'Preco 1'
            'Preco 2'
            'Preco 3'
            'Preco Custo'
            '')
        end
        object cb_ordem: TComboBox
          Left = 137
          Top = 123
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 16
          Text = 'Descricao+id'
          Visible = False
          OnClick = cb_ordemClick
          Items.Strings = (
            'Descricao+id'
            'ID-(Lancamento)')
        end
        object StaticText1: TStaticText
          Left = 905
          Top = 4
          Width = 193
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Locais de armazenamento'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object clb_locais: TCheckListBox
          Left = 906
          Top = 22
          Width = 195
          Height = 124
          Color = 16776176
          Columns = 1
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
          TabOrder = 18
          OnClick = clb_locaisClick
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 112
        Top = 16
        Width = 794
        Height = 1123
        DataSource = src_cadest_mov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport1BeforePrint
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 91
          BandType = btColumnHeader
          object RLImage_logo: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 91
            Align = faLeft
            Stretch = True
          end
          object lblcab_empresa: TRLLabel
            Left = 112
            Top = 3
            Width = 603
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lblcab_obsrel: TRLLabel
            Left = 112
            Top = 44
            Width = 361
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Extrato de Produtos'
          end
          object lblcab_periodo: TRLLabel
            Left = 112
            Top = 66
            Width = 361
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Extrato de Produtos'
          end
          object lblcab_dathor_emi: TRLLabel
            Left = 485
            Top = 66
            Width = 230
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 599
            Top = 46
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 681
            Top = 46
            Width = 32
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lblcab_fantasia: TRLLabel
            Left = 112
            Top = 22
            Width = 603
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup_prod: TRLGroup
          Left = 38
          Top = 129
          Width = 718
          Height = 83
          DataFields = 'CMP_CODPRO'
          object RLBand1: TRLBand
            Left = 0
            Top = 34
            Width = 718
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand1AfterPrint
            object rldet_CMP_DATHOR: TRLDBText
              Left = 5
              Top = 0
              Width = 88
              Height = 16
              AutoSize = False
              DataField = 'CMP_DATHOR'
              DataSource = src_cadest_mov
              Holder = rlcab_CMP_DATHOR
              Layout = tlCenter
            end
            object rldet_DESTINO_ORIGEM: TRLDBText
              Left = 93
              Top = 0
              Width = 198
              Height = 16
              AutoSize = False
              DataField = 'DESTINO_ORIGEM'
              DataSource = src_cadest_mov
              Holder = rlcab_DESTINO_ORIGEM
              Layout = tlCenter
            end
            object rldet_CMP_DOCORI: TRLDBText
              Left = 292
              Top = 0
              Width = 80
              Height = 16
              AutoSize = False
              DataField = 'DOCORI'
              DataSource = src_cadest_mov
              Holder = rlcab_CMP_DOCORI
              Layout = tlCenter
            end
            object rldet_CMP_SALDO_ANT: TRLDBText
              Left = 487
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CMP_SALDO_ANT'
              DataSource = src_cadest_mov
              Holder = rlcab_CMP_SALDO_ANT
              Layout = tlCenter
            end
            object rldet_QTD_ENT: TRLDBText
              Left = 544
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_ENT'
              DataSource = src_cadest_mov
              Holder = rlcab_QTD_ENT
              Layout = tlCenter
            end
            object rldet_QTD_SAI: TRLDBText
              Left = 602
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_SAI'
              DataSource = src_cadest_mov
              Holder = rlcab_QTD_SAI
              Layout = tlCenter
            end
            object rldet_CMP_SALDO_ATU: TRLDBText
              Left = 659
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CMP_SALDO_ATU'
              DataSource = src_cadest_mov
              Holder = rlcab_CMP_SALDO_ATU
              Layout = tlCenter
            end
            object rldet_CMP_CHAVE: TRLDBText
              Left = 374
              Top = 0
              Width = 36
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'CMP_CHAVE'
              DataSource = src_cadest_mov
              Holder = rlcab_CMP_CHAVE
              Layout = tlCenter
            end
            object rldet_OBSERVACOES: TRLDBText
              Left = 412
              Top = 0
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'obs'
              DataSource = src_cadest_mov
              Holder = rlcab_OBSERVACOES
              Layout = tlCenter
            end
          end
          object RLBand_cabdet: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 34
            BandType = btTitle
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = 16768991
            object rlcab_CMP_DATHOR: TRLLabel
              Left = 5
              Top = 15
              Width = 88
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data Evento'
              Layout = tlCenter
            end
            object rlcab_DESTINO_ORIGEM: TRLLabel
              Left = 93
              Top = 15
              Width = 198
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Emitente/Destinatario'
              Layout = tlCenter
            end
            object rlcab_CMP_DOCORI: TRLLabel
              Left = 292
              Top = 15
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Origem'
              Layout = tlCenter
            end
            object rlcab_CMP_SALDO_ANT: TRLLabel
              Left = 487
              Top = 15
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Est Inicial'
              Layout = tlCenter
            end
            object rlcab_QTD_ENT: TRLLabel
              Left = 544
              Top = 15
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'entradas'
              Layout = tlCenter
            end
            object rlcab_QTD_SAI: TRLLabel
              Left = 602
              Top = 15
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Saidas'
              Layout = tlCenter
            end
            object rlcab_CMP_SALDO_ATU: TRLLabel
              Left = 659
              Top = 15
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Est Atual'
              Layout = tlCenter
            end
            object rlcab_CMP_CHAVE: TRLLabel
              Left = 374
              Top = 15
              Width = 36
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chave'
              Layout = tlCenter
            end
            object rlcab_OBSERVACOES: TRLLabel
              Left = 412
              Top = 15
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Obsevacoes'
              Layout = tlCenter
            end
            object RLLabel1: TRLLabel
              Left = 2
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'digo:'
              Layout = tlCenter
            end
            object RLDBText1: TRLDBText
              Left = 54
              Top = 0
              Width = 102
              Height = 16
              AutoSize = False
              DataField = 'CMP_CODPRO'
              DataSource = src_cadest_mov
              Layout = tlCenter
            end
            object RLLabel2: TRLLabel
              Left = 155
              Top = 0
              Width = 66
              Height = 16
              Caption = 'Descri'#231#227'o:'
              Layout = tlCenter
            end
            object RLDBText2: TRLDBText
              Left = 224
              Top = 0
              Width = 493
              Height = 16
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_cadest_mov
              Layout = tlCenter
            end
          end
          object RLBand_rodgru: TRLBand
            Left = 0
            Top = 66
            Width = 718
            Height = 5
            BandType = btSummary
            AfterPrint = RLBand_rodgruAfterPrint
          end
          object rlband_totgru: TRLBand
            Left = 0
            Top = 50
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rlband_totgruBeforePrint
            object RLLabel3: TRLLabel
              Left = 32
              Top = 0
              Width = 198
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade Total'
              Layout = tlCenter
            end
            object rlRod_TotQtd: TRLLabel
              Left = 238
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '0.00'
              Layout = tlCenter
            end
            object RLLabel4: TRLLabel
              Left = 321
              Top = -1
              Width = 110
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pre'#231'o Unitario:'
              Layout = tlCenter
            end
            object rlRod_PU: TRLLabel
              Left = 432
              Top = 0
              Width = 90
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '0.00'
              Layout = tlCenter
            end
            object RLLabel5: TRLLabel
              Left = 523
              Top = 0
              Width = 70
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object rlRod_ValorTotal: TRLLabel
              Left = 603
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '0.00'
              Layout = tlCenter
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 228
          Width = 718
          Height = 18
          AutoSize = True
          BandType = btSummary
          object rlsum_criterito: TRLRichText
            Left = 0
            Top = 0
            Width = 718
            Height = 18
          end
        end
        object RLBand_sumger: TRLBand
          Left = 38
          Top = 212
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand_sumgerBeforePrint
          object RLLabel6: TRLLabel
            Left = 50
            Top = 0
            Width = 198
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Geral: Quantidades:'
            Layout = tlCenter
          end
          object rlSum_TotQtd: TRLLabel
            Left = 256
            Top = 0
            Width = 94
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '0.00'
            Layout = tlCenter
          end
          object RLLabel10: TRLLabel
            Left = 510
            Top = 0
            Width = 88
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Total'
            Layout = tlCenter
          end
          object rlSum_ValorTotal: TRLLabel
            Left = 604
            Top = 0
            Width = 80
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '0.00'
            Layout = tlCenter
          end
        end
      end
    end
  end
  object qr_cadest_mov: TQuery
    OnCalcFields = qr_cadest_movCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ''
      
        'SELECT CMP_ID,CMP_ID_ANO,PDNOME,PDPRECO1 AS PRECO_UNIT,CMP_FILIA' +
        'L,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI,'
      #39'PEDIDO DE VENDA'#39' AS DOCORI,'
      'PDCODPRO AS CMP_CODPRO,CMP_DATHOR'
      ''
      ',case when CMP_DOCORI=0 then'
      '  (select max(CRAZAO) from CADP01,CADCLI where CCODCLI=P1CODCLI'
      
        '  and (P1CODEMP=CMP_CODEMP or P1CODEMP=CMP_CODEMP+100 or P1CODEM' +
        'P=CMP_CODEMP-100)'
      '  and P1CHAVE=CMP_CHAVE and P1LOTSEQ=CMP_CHAVE_ANO)'
      ''
      ' when CMP_DOCORI=1 then'
      '  (select max(FRAZAO) from CADPF1,CADFOR where FCODFOR=PF1CODFOR'
      
        '  and (PF1CODEMP=CMP_CODEMP or PF1CODEMP=CMP_CODEMP+100 or PF1CO' +
        'DEMP=CMP_CODEMP-100)'
      '  and PF1CHAVE=CMP_CHAVE and PF1LOTSEQ=CMP_CHAVE_ANO)'
      'when CMP_DOCORI=2 then '#39'Ajuste de Estoque'#39
      'when CMP_DOCORI=3 then '#39'Balanco'#39
      'when CMP_DOCORI=4 then '#39'Ordem de Produ'#231#227'o'#39
      'when CMP_DOCORI=5 then '#39'Zear Estoque'#39
      'when CMP_DOCORI=6 then '#39'Sobras/Devolu'#231#245'es'#39
      'when CMP_DOCORI=7 then '#39'Inicial'#39
      'else'
      ' '#39'Desconhecido'#39
      'end as DESTINO_ORIGEM'
      ''
      ''
      ',SUBSTR( (CASE WHEN NVL(CMP_TIPOPROD,0)=0 THEN CMP_OBSERVACAO'
      
        ' WHEN CMP_TIPOPROD=3 THEN '#39'LOTE: '#39' || CMP_LOTE || '#39' '#39' ||  CMP_OB' +
        'SERVACAO'
      
        ' WHEN CMP_TIPOPROD=4 THEN '#39'SERIE: '#39' || CMP_SERIE || '#39' '#39' || CMP_O' +
        'BSERVACAO'
      ' ELSE CMP_OBSERVACAO END ),1,200)AS OBSERVACOES'
      ' ,CMP_ESTNOR'
      ' ,CMP_SALDO_ANT'
      ',DECODE(CMP_ESTNOR,'#39'S'#39',CMP_QTD,0) AS QTD_SAI'
      ',DECODE(CMP_ESTNOR,'#39'E'#39',CMP_QTD,0) AS QTD_ENT'
      ' ,CMP_SALDO_ATU'
      
        ',(SELECT CFNOME FROM CADPRO_FILIAL WHERE CFFILIAL(+)=CMP_FILIAL)' +
        ' AS LOCAL_ARMAZEM'
      ',ROWNUM AS POSICAO'
      
        'FROM CADMOV_PROD,CADPRO WHERE PDCODPRO=CMP_CODPRO ORDER BY CMP_D' +
        'ATHOR DESC')
    Left = 632
    Top = 304
    object qr_cadest_movCMP_FILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CMP_FILIAL'
    end
    object qr_cadest_movLOCAL_ARMAZEM: TStringField
      DisplayLabel = 'Local Mercadoria'
      FieldName = 'LOCAL_ARMAZEM'
      Size = 60
    end
    object qr_cadest_movCMP_CHAVE_ANO: TFloatField
      DisplayLabel = 'Lot Seq'
      FieldName = 'CMP_CHAVE_ANO'
    end
    object qr_cadest_movCMP_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CMP_CHAVE'
    end
    object qr_cadest_movCMP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'CMP_ITEM'
    end
    object qr_cadest_movCMP_DOCORI: TFloatField
      DisplayLabel = 'Doc.Origem'
      FieldName = 'CMP_DOCORI'
    end
    object qr_cadest_movCMP_DATHOR: TDateTimeField
      DisplayLabel = 'Data e Hora Evento'
      FieldName = 'CMP_DATHOR'
    end
    object qr_cadest_movCMP_ESTNOR: TStringField
      DisplayLabel = 'Tipo Mov'
      FieldName = 'CMP_ESTNOR'
      Size = 1
    end
    object qr_cadest_movCMP_SALDO_ANT: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'CMP_SALDO_ANT'
    end
    object qr_cadest_movQTD_SAI: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'QTD_SAI'
    end
    object qr_cadest_movQTD_ENT: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'QTD_ENT'
    end
    object qr_cadest_movCMP_SALDO_ATU: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'CMP_SALDO_ATU'
    end
    object qr_cadest_movPOSICAO: TFloatField
      FieldName = 'POSICAO'
    end
    object qr_cadest_movOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 200
    end
    object qr_cadest_movDOCORI: TStringField
      DisplayLabel = 'Origem do Movimento'
      FieldName = 'DOCORI'
      FixedChar = True
      Size = 15
    end
    object qr_cadest_movDESTINO_ORIGEM: TStringField
      DisplayLabel = 'Emitente/Destinatario'
      FieldName = 'DESTINO_ORIGEM'
      Size = 60
    end
    object qr_cadest_movPDNOME: TStringField
      DisplayLabel = 'Descri;'#39'ao'
      FieldName = 'PDNOME'
      Size = 120
    end
    object qr_cadest_movCMP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CMP_CODPRO'
    end
    object qr_cadest_movCMP_ID: TFloatField
      FieldName = 'CMP_ID'
    end
    object qr_cadest_movCMP_ID_ANO: TFloatField
      FieldName = 'CMP_ID_ANO'
    end
    object qr_cadest_movobs: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldKind = fkCalculated
      FieldName = 'obs'
      Size = 200
      Calculated = True
    end
    object qr_cadest_movPRECO_UNIT: TFloatField
      FieldName = 'PRECO_UNIT'
    end
  end
  object src_cadest_mov: TDataSource
    DataSet = qr_cadest_mov
    Left = 660
    Top = 304
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato (Word)-RichText'
    Left = 372
    Top = 48
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 420
    Top = 48
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 492
    Top = 40
  end
end
