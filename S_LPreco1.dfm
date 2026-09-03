object Frm_LPreco1: TFrm_LPreco1
  Left = 31
  Top = 92
  Width = 890
  Height = 609
  Caption = 'Lista de Preco'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 882
    Height = 209
    ActivePage = Ts_Relatorio
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Label5: TLabel
        Left = 6
        Top = 66
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label1: TLabel
        Left = 25
        Top = 25
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label2: TLabel
        Left = 1
        Top = 108
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object lbx_codfor: TListBox
        Left = 128
        Top = 63
        Width = 415
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codforKeyDown
      end
      object CODFOR: TEdit
        Left = 67
        Top = 63
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 68
        Top = 86
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_FORMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 68
        Top = 44
        Width = 60
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_PROMouseMove
      end
      object CODPRO: TEdit
        Left = 67
        Top = 22
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object lbx_codpro: TListBox
        Left = 128
        Top = 22
        Width = 415
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
      object RG_QUEBRA: TRadioGroup
        Left = 547
        Top = 19
        Width = 198
        Height = 116
        Caption = 'Quebra Por'
        ItemIndex = 0
        Items.Strings = (
          'Sem Quebra'
          'Fornecedor'
          'Grupo'
          'Ramo(Sub-Grupo)'
          'Controle'
          'Tipo'
          'Departamento'
          'Marca'
          'Grupo/Ramo(Sub-Grupo)'
          'Grupo/Ramo(Sub-Grupo)/Tipo')
        TabOrder = 9
      end
      object CODTIP: TEdit
        Left = 67
        Top = 104
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseMove = CODTIPMouseMove
      end
      object lbx_codtip: TListBox
        Left = 128
        Top = 104
        Width = 415
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 68
        Top = 126
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_TPROMouseMove
      end
      object CB_SEPPAG: TCheckBox
        Left = 552
        Top = 135
        Width = 156
        Height = 17
        Caption = 'Separar Paginas por Quebra'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 10
      end
      object bb_exportar: TBitBtn
        Left = 550
        Top = 154
        Width = 148
        Height = 36
        Caption = '&Exportar Relatorio'
        TabOrder = 11
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
    object TsSegundarios: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object Label4: TLabel
        Left = 9
        Top = 32
        Width = 32
        Height = 13
        Caption = 'Grupo:'
      end
      object Label6: TLabel
        Left = 12
        Top = 75
        Width = 31
        Height = 13
        Caption = 'Ramo:'
      end
      object Label15: TLabel
        Left = 591
        Top = 10
        Width = 75
        Height = 13
        Alignment = taCenter
        Caption = 'E s t o q u e '
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 10
        Top = 116
        Width = 35
        Height = 13
        Caption = 'Depto.:'
      end
      object CODGRU: TEdit
        Left = 47
        Top = 31
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
        OnMouseMove = CODGRUMouseMove
      end
      object lbx_codgru: TListBox
        Left = 108
        Top = 31
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
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 48
        Top = 51
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_GRUMouseMove
      end
      object CODRAM: TEdit
        Left = 47
        Top = 72
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
        OnMouseMove = CODRAMMouseMove
      end
      object lbx_codram: TListBox
        Left = 108
        Top = 72
        Width = 336
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 48
        Top = 95
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_RAMMouseMove
      end
      object StaticText10: TStaticText
        Left = 446
        Top = 10
        Width = 142
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
        Left = 445
        Top = 30
        Width = 143
        Height = 122
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
        TabOrder = 7
        OnClick = CLBNivelClick
      end
      object CLBEstoque: TCheckListBox
        Left = 590
        Top = 24
        Width = 111
        Height = 81
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 8
        OnClick = CLBEstoqueClick
      end
      object lbx_coddep: TListBox
        Left = 108
        Top = 113
        Width = 336
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_coddepKeyDown
      end
      object CODDEP: TEdit
        Left = 47
        Top = 113
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODDEPExit
        OnKeyPress = CODDEPKeyPress
        OnMouseMove = CODDEPMouseMove
      end
      object OMITIR_DEP: TCheckBox
        Left = 48
        Top = 136
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnMouseMove = OMITIR_RAMMouseMove
      end
    end
    object Ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 45
        Top = 23
        Width = 790
        Height = 966
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = dsproduto
        DefaultFilter = matricial
        Degrade.OppositeColor = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 8.000000000000000000
        Margins.TopMargin = 2.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 209.000000000000000000
        PageSetup.PaperHeight = 255.500000000000000000
        Visible = False
        BeforePrint = RLReport1BeforePrint
        object rl_cabger: TRLBand
          Left = 31
          Top = 9
          Width = 720
          Height = 44
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText1: TRLDBText
            Left = 64
            Top = 0
            Width = 560
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 681
            Top = 28
            Width = 39
            Height = 16
            Align = faRightBottom
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_pag: TRLLabel
            Left = 625
            Top = 45
            Width = 52
            Height = 16
            Caption = 'Pagina.:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 681
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Alignment = taRightJustify
            Info = itHour
          end
          object lbl_cab: TRLLabel
            Left = 0
            Top = 25
            Width = 247
            Height = 19
            Align = faLeftBottom
            Caption = 'Lista de Precos para Consulta.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 605
            Top = 28
            Width = 48
            Height = 16
            Caption = 'Pagina:'
          end
        end
        object RLGroup1: TRLGroup
          Left = 31
          Top = 91
          Width = 720
          Height = 158
          DataFields = 'NOMGRU'
          AfterPrint = RLGroup1AfterPrint
          object rl_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 720
            Height = 28
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = rl_cabgruBeforePrint
            object db_grupo: TRLDBText
              Left = 4
              Top = 8
              Width = 62
              Height = 16
              DataField = 'NOMGRU'
              DataSource = dsproduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLGroup2: TRLGroup
            Left = 0
            Top = 28
            Width = 720
            Height = 64
            DataFields = 'SUBGRU'
            object rl_cabitens: TRLBand
              Left = 0
              Top = 28
              Width = 720
              Height = 16
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              AfterPrint = rl_cabitensAfterPrint
              object db_codpro: TRLDBText
                Left = 0
                Top = 0
                Width = 30
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDCODPRO'
                DataSource = dsproduto
                Holder = lbl_codpro
                Layout = tlCenter
              end
              object db_nompro: TRLDBText
                Left = 33
                Top = 0
                Width = 112
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDNOME'
                DataSource = dsproduto
                Holder = lbl_nompro
                Layout = tlCenter
              end
              object db_und: TRLDBText
                Left = 146
                Top = 0
                Width = 20
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDUND'
                DataSource = dsproduto
                Holder = lbl_und
                Layout = tlCenter
              end
              object db_pco01: TRLDBText
                Left = 410
                Top = 0
                Width = 44
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDPRECO1'
                DataSource = dsproduto
                Holder = lbl_colpco01
                Layout = tlCenter
              end
              object db_pco02: TRLDBText
                Left = 453
                Top = 0
                Width = 44
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PDPRECO2'
                DataSource = dsproduto
                Holder = lbl_colpco02
                Layout = tlCenter
              end
              object db_lote: TRLDBText
                Left = 299
                Top = 0
                Width = 40
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'LOTE'
                DataSource = dsproduto
                Holder = lbl_lote
                Layout = tlCenter
              end
              object db_dtvcto: TRLDBText
                Left = 339
                Top = 0
                Width = 44
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'calc_dtvcto'
                DataSource = dsproduto
                Holder = lbl_dtvcto
                Layout = tlCenter
              end
              object db_marca: TRLDBText
                Left = 166
                Top = 0
                Width = 42
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDMARCA'
                DataSource = dsproduto
                Holder = lbl_marca
                Layout = tlCenter
              end
              object db_desc: TRLDBText
                Left = 383
                Top = 0
                Width = 28
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'DESC01'
                DataSource = dsproduto
                Holder = lbl_desc
                Layout = tlCenter
              end
              object db_estoque: TRLDBText
                Left = 540
                Top = 0
                Width = 38
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'calc_estoque'
                DataSource = dsproduto
                Holder = lbl_estoque
                Layout = tlCenter
              end
              object db_nome2: TRLDBText
                Left = 613
                Top = 0
                Width = 58
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDNOME2'
                DataSource = dsproduto
                Holder = lbl_nome2
                Layout = tlCenter
              end
              object db_codbar: TRLDBText
                Left = 246
                Top = -1
                Width = 54
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'CODBAR'
                DataSource = dsproduto
                Holder = lbl_codbar
                Layout = tlCenter
              end
              object db_pco03: TRLDBText
                Left = 497
                Top = -1
                Width = 44
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PDPRECO3'
                DataSource = dsproduto
                Holder = lbl_colpco03
                Layout = tlCenter
              end
              object RLD_PDREFER: TRLDBText
                Left = 206
                Top = -1
                Width = 40
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDREFER'
                DataSource = dsproduto
                Holder = lbl_referencia
                Layout = tlCenter
              end
              object db_estoque_multiplo: TRLDBText
                Left = 579
                Top = -1
                Width = 36
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDEMBMUL'
                DataSource = dsproduto
                Holder = lbl_estoque_multiplo
                Layout = tlCenter
              end
              object DB_LOCALIZACAO: TRLDBText
                Left = 671
                Top = -1
                Width = 46
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'LOCALIZACAO'
                DataSource = dsproduto
                Holder = lbl_lozalizacao
                Layout = tlCenter
              end
            end
            object rl_cabsubgru: TRLBand
              Left = 0
              Top = 0
              Width = 720
              Height = 28
              BandType = btColumnHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = rl_cabgruBeforePrint
              object db_cabsubgru: TRLDBText
                Left = 4
                Top = 8
                Width = 59
                Height = 16
                DataField = 'SUBGRU'
                DataSource = dsproduto
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
        object rl_cabregiao: TRLBand
          Left = 31
          Top = 69
          Width = 720
          Height = 22
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Options = [boOptimisticPageBreak]
          object memo_regiao: TRLMemo
            Left = 0
            Top = 1
            Width = 720
            Height = 16
            Align = faTop
          end
        end
        object RLBand5: TRLBand
          Left = 31
          Top = 53
          Width = 720
          Height = 16
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object lbl_codpro: TRLLabel
            Left = 0
            Top = 0
            Width = 30
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_nompro: TRLLabel
            Left = 33
            Top = 0
            Width = 112
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Nome Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_und: TRLLabel
            Left = 146
            Top = 0
            Width = 20
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_lote: TRLLabel
            Left = 299
            Top = 0
            Width = 40
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_dtvcto: TRLLabel
            Left = 339
            Top = 0
            Width = 44
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Dt.Vcto.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_colpco01: TRLLabel
            Left = 410
            Top = 0
            Width = 44
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Preco 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_colpco02: TRLLabel
            Left = 453
            Top = 0
            Width = 44
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Preco 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_marca: TRLLabel
            Left = 166
            Top = 0
            Width = 42
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_desc: TRLLabel
            Left = 383
            Top = 0
            Width = 28
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Desc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_estoque: TRLLabel
            Left = 540
            Top = 0
            Width = 38
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Estoque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_nome2: TRLLabel
            Left = 613
            Top = 0
            Width = 58
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Nome Generico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_codbar: TRLLabel
            Left = 246
            Top = 0
            Width = 54
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Codigo Barras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_colpco03: TRLLabel
            Left = 497
            Top = 0
            Width = 44
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Preco 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_referencia: TRLLabel
            Left = 206
            Top = 0
            Width = 40
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_estoque_multiplo: TRLLabel
            Left = 579
            Top = 0
            Width = 36
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Qtd.Multipla'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_lozalizacao: TRLLabel
            Left = 671
            Top = 0
            Width = 46
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Localiza'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand1: TRLBand
          Left = 31
          Top = 265
          Width = 720
          Height = 16
          BandType = btSummary
          object lbl_emitido: TRLLabel
            Left = 648
            Top = 0
            Width = 72
            Height = 16
            Align = faRightTop
            Alignment = taRightJustify
            Caption = 'emitido em '
          end
        end
        object rltotal: TRLBand
          Left = 31
          Top = 249
          Width = 720
          Height = 16
          BandType = btSummary
          Visible = False
          BeforePrint = rltotalBeforePrint
          object RLLabel2: TRLLabel
            Left = 0
            Top = 0
            Width = 230
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Totais dos Itens:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_totitens: TRLLabel
            Left = 231
            Top = -1
            Width = 57
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 297
            Top = -2
            Width = 82
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Unidades:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_totund: TRLLabel
            Left = 387
            Top = -2
            Width = 57
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_valortot_caption: TRLLabel
            Left = 457
            Top = -2
            Width = 82
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_valortot: TRLLabel
            Left = 547
            Top = -2
            Width = 57
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
    object tsOutFil: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 3
      object Label3: TLabel
        Left = 17
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Controle:'
      end
      object Label10: TLabel
        Left = 24
        Top = 52
        Width = 37
        Height = 13
        Caption = 'Regiao:'
      end
      object CODCON: TEdit
        Left = 67
        Top = 8
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object lbx_codcon: TListBox
        Left = 128
        Top = 8
        Width = 415
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 69
        Top = 31
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_CONMouseMove
      end
      object CODREG: TEdit
        Left = 67
        Top = 49
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODREGExit
        OnKeyPress = CODREGKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object NOMREG: TEdit
        Left = 128
        Top = 49
        Width = 297
        Height = 19
        TabStop = False
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
        Text = 'Normal(Sem Regiao)'
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object RG_ORDEM: TRadioGroup
        Left = 562
        Top = 9
        Width = 247
        Height = 62
        Hint = 'Ordem do Relatorio'
        Caption = 'Ordem do Relat'#243'rio:'
        ItemIndex = 0
        Items.Strings = (
          'Nome & Produto'
          '&C'#243'digo Produto'
          'Data de Vencimento Nulo Primeiro'
          'Data de Vencimento NuloFinal')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object chkDiminuir: TCheckBox
        Left = 563
        Top = 75
        Width = 158
        Height = 17
        Caption = 'Dimnuir Bordas'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 209
    Width = 882
    Height = 369
    Align = alClient
    Caption = 'Gerais:'
    TabOrder = 1
    object sb_SalvarPadrao: TSpeedButton
      Left = 548
      Top = 239
      Width = 210
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = 'Sal&var Padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object Label9: TLabel
      Left = 5
      Top = 173
      Width = 110
      Height = 13
      Caption = 'Titulo do Relatorio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 241
      Top = 111
      Width = 193
      Height = 13
      Caption = 'N'#250'mero de Casas Decimais para Precos:'
    end
    object Label12: TLabel
      Left = 391
      Top = 165
      Width = 75
      Height = 13
      Caption = 'Tamanho Fonte'
      Visible = False
    end
    object Label13: TLabel
      Left = 8
      Top = 155
      Width = 67
      Height = 13
      Caption = 'Filtrar Marca..:'
    end
    object bbImprimir: TBitBtn
      Left = 548
      Top = 215
      Width = 210
      Height = 26
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 26
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
    object StaticText2: TStaticText
      Left = 360
      Top = 14
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
      TabOrder = 0
    end
    object CLB_STATUS: TCheckListBox
      Left = 360
      Top = 31
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
      TabOrder = 1
      OnClick = CLB_STATUSClick
    end
    object StaticText1: TStaticText
      Left = 629
      Top = 15
      Width = 102
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Listar Precos'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object CLB_Precos: TCheckListBox
      Left = 630
      Top = 32
      Width = 102
      Height = 183
      Color = 16776176
      Columns = 1
      Ctl3D = False
      ItemHeight = 18
      Items.Strings = (
        'Venda 1'
        'Venda 2'
        'Venda 3'
        'Custo'
        'Fabrica'
        'PMC'
        'UPC'
        'Qtd x P'#231'o.Sel.'
        'Venda 1 - Desc.1'
        'Estoque Minimo')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 3
      OnClick = CLBNivelClick
    end
    object StaticText3: TStaticText
      Left = 731
      Top = 15
      Width = 107
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Titulo'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object VENDA1: TEdit
      Left = 731
      Top = 33
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Pco.Venda 01'
    end
    object VENDA2: TEdit
      Left = 731
      Top = 51
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = 'Pco.Venda 02'
    end
    object VENDA3: TEdit
      Left = 731
      Top = 69
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = 'Pco.Venda 03'
    end
    object PRECOC: TEdit
      Left = 731
      Top = 87
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      Text = 'Preco Custo'
    end
    object PCOFAB: TEdit
      Left = 731
      Top = 105
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Text = 'Preco Fabrica'
    end
    object PMC: TEdit
      Left = 731
      Top = 123
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      Text = 'PMC'
    end
    object OMITIR_STATUS: TCheckBox
      Left = 360
      Top = 92
      Width = 157
      Height = 17
      Caption = 'Omitir Status Selecionado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnMouseMove = OMITIR_FORMouseMove
    end
    object GB_VCTO: TGroupBox
      Left = 5
      Top = 210
      Width = 380
      Height = 74
      Caption = 'Sobre Vencimento dos Produtos:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      object Label7: TLabel
        Left = 13
        Top = 20
        Width = 153
        Height = 13
        Caption = 'Produtos com vencimento entre:'
      end
      object Label8: TLabel
        Left = 258
        Top = 22
        Width = 6
        Height = 13
        Caption = 'e'
      end
      object MDT2: TMaskEdit
        Left = 275
        Top = 18
        Width = 80
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
          '.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object MDT1: TMaskEdit
        Left = 170
        Top = 18
        Width = 81
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
          #13#10'digite a mesma.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object CB_LOTE: TCheckBox
        Left = 14
        Top = 36
        Width = 150
        Height = 17
        Caption = 'Emitir Coluna do Lote'
        TabOrder = 2
      end
      object CB_DTVCTO: TCheckBox
        Left = 14
        Top = 53
        Width = 209
        Height = 17
        Caption = 'Emitir Coluna da Data de Vencimento'
        TabOrder = 3
      end
    end
    object CB_SEMBORDA: TCheckBox
      Left = 7
      Top = 15
      Width = 90
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Sem Bordas'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 13
    end
    object CB_MATRICIAL: TCheckBox
      Left = 391
      Top = 195
      Width = 132
      Height = 17
      Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
      Caption = 'Impress'#227'o Matricial'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 14
    end
    object CB_DESC: TCheckBox
      Left = 7
      Top = 43
      Width = 148
      Height = 17
      Caption = 'Exibir Coluna de Desconto'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 16
    end
    object CB_NOME2: TCheckBox
      Left = 7
      Top = 74
      Width = 170
      Height = 17
      Caption = 'Exibir Nome Generico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object CB_EST: TCheckBox
      Left = 7
      Top = 107
      Width = 147
      Height = 17
      Caption = 'Exibir Coluna de Estoque'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
    end
    object CB_MASC: TCheckBox
      Left = 7
      Top = 90
      Width = 246
      Height = 17
      Caption = 'Estoque Mascarado(*) no lugar dos numeros'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object TITREL: TEdit
      Left = 6
      Top = 189
      Width = 383
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 23
      Text = 'Lista de Precos para Consulta.'
    end
    object bbSair: TBitBtn
      Left = 548
      Top = 265
      Width = 210
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
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
    object CB_CODBAR: TCheckBox
      Left = 7
      Top = 135
      Width = 147
      Height = 17
      Caption = 'Exibir Codigo de Barras'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object CB_QDEC_PCO: TComboBox
      Left = 441
      Top = 107
      Width = 37
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 22
      Text = '2'
      OnClick = CB_QDEC_PCOClick
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
        '9')
    end
    object CB_LINHA_LQ: TCheckBox
      Left = 165
      Top = 12
      Width = 122
      Height = 17
      Caption = 'Impressora Linha LQ'
      TabOrder = 15
    end
    object TAMFONTE: TEdit
      Left = 480
      Top = 162
      Width = 56
      Height = 21
      TabOrder = 24
      Text = '-20'
      Visible = False
    end
    object GB_AJUSTAR: TGroupBox
      Left = 392
      Top = 233
      Width = 136
      Height = 51
      Caption = 'Ajustar Pre'#231'os'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 25
      object AJUSTARPCO: TEdit
        Left = 4
        Top = 20
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = AJUSTARPCOExit
      end
      object CB_DIMINUIR: TCheckBox
        Left = 69
        Top = 20
        Width = 62
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 1
      end
    end
    object UPC: TEdit
      Left = 731
      Top = 141
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 28
      Text = 'UPC'
    end
    object CB_BORDASWORD: TCheckBox
      Left = 392
      Top = 181
      Width = 160
      Height = 17
      Caption = 'Bordas Compativel com Word'
      TabOrder = 29
    end
    object StaticText4: TStaticText
      Left = 534
      Top = 14
      Width = 92
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Listar Produtos'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 30
    end
    object CLB_LISTARPRECO: TCheckListBox
      Left = 534
      Top = 32
      Width = 92
      Height = 43
      Color = 16776176
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Com Pre'#231'os'
        'Sem Pre'#231'os'
        'Todos')
      ParentCtl3D = False
      TabOrder = 31
      OnClick = CLB_LISTARPRECOClick
    end
    object QTDXPCO: TEdit
      Left = 731
      Top = 159
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 32
      Text = 'Valor Total'
    end
    object edt_marca: TEdit
      Left = 78
      Top = 151
      Width = 280
      Height = 21
      CharCase = ecUpperCase
      Color = clInactiveBorder
      TabOrder = 33
    end
    object CB_EXIBIR_MARCA: TCheckBox
      Left = 7
      Top = 28
      Width = 170
      Height = 17
      Caption = 'Exibir Marca do Produto'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 18
    end
    object cb_apresen: TCheckBox
      Left = 165
      Top = 28
      Width = 122
      Height = 17
      Caption = 'Exibir Apresenta'#231#227'o'
      TabOrder = 34
    end
    object CB_REFER: TCheckBox
      Left = 7
      Top = 58
      Width = 202
      Height = 17
      Caption = 'Exibir Referencia do Produto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 35
    end
    object edt_venda1menosdesc1: TEdit
      Left = 731
      Top = 177
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 36
      Text = 'Pre'#231'o Liquido'
    end
    object CB_EST_MULTIPLO: TCheckBox
      Left = 7
      Top = 120
      Width = 147
      Height = 17
      Caption = 'Exibir Estoque Multiplo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 37
    end
    object edt_estoque_minimo: TEdit
      Left = 731
      Top = 194
      Width = 108
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 38
      Text = 'Estoque Minimo'
    end
    object CB_ENDERECO: TCheckBox
      Left = 165
      Top = 46
      Width = 154
      Height = 17
      Caption = 'Exibir Endere'#231'o/Localiza'#231#227'o'
      TabOrder = 39
    end
  end
  object produto: TQuery
    OnCalcFields = produtoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select pdcodemp,pdcodpro,pdnome,pdpreco1,pdpreco2,pdpreco3,'
      '       pdund,pdmarca,pdnomfor,pdcodtip,pdcodcon,pdcodgru,'
      '       pdnomfor as nomgru,'
      '       pdnomfor as subgru,'
      '       PDMARCA AS LOTE,'
      '      PDREFER,'
      '       PDDTULTSAI AS DTVCTO,'
      '       PDDESC1 AS DESC01,'
      '       PDSALDO AS ESTOQUE,'
      '       PDNOME2, PDAPRES,'
      '       PDCODBAR AS CODBAR'
      'from cadpro'
      '')
    Left = 491
    Top = 118
    object produtoPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
      DisplayFormat = '#,###,##0.00'
    end
    object produtoPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
      DisplayFormat = '#,###,##0.00'
    end
    object produtoPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object produtoPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object produtoPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object produtoPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object produtoPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object produtoPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtoNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtoPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object produtoPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object produtoPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object produtoLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object produtoDTVCTO: TDateTimeField
      FieldName = 'DTVCTO'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object produtoDESC01: TFloatField
      FieldName = 'DESC01'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object produtoPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object produtocalc_estoque: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_estoque'
      Size = 15
      Calculated = True
    end
    object produtoCODBAR: TFloatField
      FieldName = 'CODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object produtoSUBGRU: TStringField
      FieldName = 'SUBGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtocalc_dtvcto: TDateField
      FieldKind = fkCalculated
      FieldName = 'calc_dtvcto'
      Calculated = True
    end
    object produtoPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object produtoPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
    end
    object produtoPDREFER: TStringField
      FieldName = 'PDREFER'
    end
    object produtoPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
    end
    object produtoPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
    end
    object produtoPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Size = 0
    end
    object produtoPDSALDO: TFloatField
      FieldName = 'PDSALDO'
    end
    object produtoPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
    end
    object produtoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 100
    end
  end
  object dsproduto: TDataSource
    DataSet = produto
    Left = 530
    Top = 93
  end
  object matricial: TRLDraftFilter
    Commands.Strings = (
      'CR=13'
      'LF=10'
      'BS=8'
      'FF=12'
      'Reset=27,'#39'@'#39',27,'#39'x0'#39
      'MicroOn=27,'#39'A'#39',#'
      'MicroOff=27,'#39'2'#39
      'Space=32'
      'CPP10=27,'#39'P'#39',18'
      'CPP12=27,'#39'M'#39',18'
      'CPP17=27,'#39'P'#39',15'
      'CPP20=27,'#39'M'#39',15'
      'ExpandOn=27,'#39'W'#39',1'
      'ExpandOff=27,'#39'W'#39',0'
      'BoldOn=27,'#39'G'#39
      'BoldOff=27,'#39'H'#39
      'ItalicOn=27,'#39'4'#39
      'ItalicOff=27,'#39'5'#39
      'UnderlineOn=27,'#39'-1'#39
      'UnderlineOff=27,'#39'-0'#39
      'RAW=27,'#39'L'#39',#l,#h')
    EjectMethod = ejForceWithCode
    PrinterFamily = fmCustom
    LineDrawMethod = ldNone
    Left = 467
    Top = 32
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 437
    Top = 32
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 525
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 496
    Top = 32
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 984
    Top = 24
  end
end
