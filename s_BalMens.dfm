object frm_BalMens: Tfrm_BalMens
  Left = 192
  Top = 124
  Width = 1159
  Height = 337
  Caption = 'Balancete Mensal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1143
    Height = 299
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Balancete Mensal'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 1135
        Height = 46
        Align = alTop
        Alignment = taCenter
        Caption = 'Balancete Mensal'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -40
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 54
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Periodo de:'
      end
      object Label3: TLabel
        Left = 246
        Top = 56
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label4: TLabel
        Left = 40
        Top = 81
        Width = 67
        Height = 13
        Caption = 'Separado por:'
      end
      object Label5: TLabel
        Left = 39
        Top = 107
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object edt_datini: TDateEdit
        Left = 113
        Top = 52
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_datfin: TDateEdit
        Left = 265
        Top = 52
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object bbImprimir: TBitBtn
        Left = 24
        Top = 200
        Width = 169
        Height = 41
        Caption = 'Imprimir'
        TabOrder = 10
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
        Left = 600
        Top = 200
        Width = 169
        Height = 41
        Caption = 'Sair'
        TabOrder = 12
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
      object CB_SEPARADO: TComboBox
        Left = 114
        Top = 77
        Width = 186
        Height = 21
        ItemHeight = 13
        ItemIndex = 6
        Sorted = True
        TabOrder = 2
        Text = 'Sem Separar'
        Items.Strings = (
          'Bairro'
          'Cidade'
          'Cliente'
          'Data do Documento'
          'Numero NF'
          'Produto'
          'Sem Separar'
          'UF')
      end
      object CB_SEMICMSR: TCheckBox
        Left = 400
        Top = 52
        Width = 137
        Height = 17
        Caption = 'Deduzir ICMS Retirdo'
        TabOrder = 3
      end
      object CB_SEMFRETE: TCheckBox
        Left = 400
        Top = 68
        Width = 137
        Height = 17
        Caption = 'Deduzir Frete'
        TabOrder = 4
      end
      object CB_SEMOUTRAS: TCheckBox
        Left = 400
        Top = 86
        Width = 161
        Height = 17
        Caption = 'Deduzir Outros Acrescimos'
        TabOrder = 5
      end
      object edt_chave: TEdit
        Left = 118
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '43896'
      end
      object StaticText10: TStaticText
        Left = 550
        Top = 50
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
        TabOrder = 7
      end
      object CLBNivel: TCheckListBox
        Left = 549
        Top = 70
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
        TabOrder = 8
        OnClick = CLBNivelClick
      end
      object bb_exportar: TBitBtn
        Left = 306
        Top = 200
        Width = 169
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
      object RG_FILTRO: TRadioGroup
        Left = 120
        Top = 128
        Width = 185
        Height = 55
        Caption = 'Listar Pedidos:'
        Ctl3D = False
        ItemIndex = 1
        Items.Strings = (
          '&Pendentes'
          '&Emitidos Notas'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 9
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -8
        Top = -16
        Width = 1123
        Height = 794
        DataSource = src_cadbal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        BeforePrint = RLReport1BeforePrint
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 91
          BandType = btHeader
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
            Width = 929
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lblcab_obsrel: TRLLabel
            Left = 112
            Top = 44
            Width = 577
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Balancete de Vendas x Produ'#231#227'o'
          end
          object lblcab_periodo: TRLLabel
            Left = 112
            Top = 66
            Width = 577
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Extrato de Produtos'
          end
          object lblcab_dathor_emi: TRLLabel
            Left = 701
            Top = 66
            Width = 340
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 927
            Top = 46
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 1009
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
            Width = 929
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
        object RLGroup1: TRLGroup
          Left = 38
          Top = 129
          Width = 1047
          Height = 152
          DataFields = 'nomgru'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand_cabgru: TRLBand
            Left = 0
            Top = 16
            Width = 1047
            Height = 34
            BandType = btHeader
            object rlcab_oper: TRLLabel
              Left = 1
              Top = 0
              Width = 194
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'OPERACIONAL'
              Layout = tlCenter
            end
            object rlcab_op_descricao: TRLLabel
              Left = 0
              Top = 17
              Width = 110
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_op_valor_imp: TRLLabel
              Left = 110
              Top = 17
              Width = 62
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor'
              Layout = tlCenter
            end
            object rlcab_op_perc_imp: TRLLabel
              Left = 173
              Top = 17
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Perc'
              Layout = tlCenter
            end
            object rlcab_mputil: TRLLabel
              Left = 198
              Top = 0
              Width = 316
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'MATERIAS PRIMIAS UTILIZADAS'
              Layout = tlCenter
            end
            object rlcab_mp_descricao: TRLLabel
              Left = 218
              Top = 17
              Width = 178
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_mp_qtd_imp: TRLLabel
              Left = 395
              Top = 17
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Layout = tlCenter
            end
            object rlcab_mp_vt_imp: TRLLabel
              Left = 451
              Top = 17
              Width = 62
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object rlcab_prodvend: TRLLabel
              Left = 517
              Top = 0
              Width = 300
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'PRODUTOS VENDIDOS'
              Layout = tlCenter
            end
            object rlcab_pa_descricao: TRLLabel
              Left = 517
              Top = 17
              Width = 182
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object rlcab_pa_qtd: TRLLabel
              Left = 703
              Top = 17
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Layout = tlCenter
            end
            object rlcab_pa_vt_imp: TRLLabel
              Left = 755
              Top = 17
              Width = 62
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object rlcab_docper: TRLLabel
              Left = 818
              Top = 0
              Width = 228
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'DOCUMENTOS DO PERIODO'
              Layout = tlCenter
            end
            object rlcab_nf_dados_nf: TRLLabel
              Left = 818
              Top = 17
              Width = 170
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dados da Nota'
              Layout = tlCenter
            end
            object rlcab_nf_valor_imp: TRLLabel
              Left = 988
              Top = 17
              Width = 56
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
          end
          object RLBand_cabdet: TRLBand
            Left = 0
            Top = 50
            Width = 1047
            Height = 16
            BeforePrint = RLBand_cabdetBeforePrint
            object rldet_op_descricao: TRLDBText
              Left = 0
              Top = 0
              Width = 110
              Height = 16
              AutoSize = False
              DataField = 'op_descricao'
              DataSource = src_cadbal
              Holder = rlcab_op_descricao
              Layout = tlCenter
            end
            object rldet_op_valor_imp: TRLDBText
              Left = 110
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'op_valor_imp'
              DataSource = src_cadbal
              Holder = rlcab_op_valor_imp
              Layout = tlCenter
            end
            object rldet_op_perc_imp: TRLDBText
              Left = 173
              Top = 0
              Width = 46
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'op_perc_imp'
              DataSource = src_cadbal
              Holder = rlcab_op_perc_imp
              Layout = tlCenter
            end
            object rldet_mp_descricao: TRLDBText
              Left = 218
              Top = 0
              Width = 178
              Height = 16
              AutoSize = False
              DataField = 'mp_descricao'
              DataSource = src_cadbal
              Holder = rlcab_mp_descricao
              Layout = tlCenter
            end
            object rldet_mp_qtd_imp: TRLDBText
              Left = 395
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'mp_qtd_imp'
              DataSource = src_cadbal
              Holder = rlcab_mp_qtd_imp
              Layout = tlCenter
            end
            object rldet_mp_vt_imp: TRLDBText
              Left = 451
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'mp_vt_imp'
              DataSource = src_cadbal
              Holder = rlcab_mp_vt_imp
              Layout = tlCenter
            end
            object rldet_pa_descricao: TRLDBText
              Left = 517
              Top = 0
              Width = 182
              Height = 16
              AutoSize = False
              DataField = 'pa_descricao'
              DataSource = src_cadbal
              Holder = rlcab_pa_descricao
              Layout = tlCenter
            end
            object rldet_pa_qtd: TRLDBText
              Left = 703
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'pa_qtd'
              DataSource = src_cadbal
              Holder = rlcab_pa_qtd
              Layout = tlCenter
            end
            object rldet_pa_vt_imp: TRLDBText
              Left = 755
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'pa_vt_imp'
              DataSource = src_cadbal
              Holder = rlcab_pa_vt_imp
              Layout = tlCenter
            end
            object rldet_nf_dados_nf: TRLDBText
              Left = 818
              Top = 0
              Width = 170
              Height = 16
              AutoSize = False
              DataField = 'nf_dados_nf'
              DataSource = src_cadbal
              Holder = rlcab_nf_dados_nf
              Layout = tlCenter
            end
            object rldet_nf_valor_imp: TRLDBText
              Left = 988
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'nf_valor_imp'
              DataSource = src_cadbal
              Holder = rlcab_nf_valor_imp
              Layout = tlCenter
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            BandType = btHeader
            object RLDBText1: TRLDBText
              Left = 0
              Top = 0
              Width = 1048
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'nomgru'
              DataSource = src_cadbal
              Layout = tlCenter
            end
          end
          object rlrodgru: TRLBand
            Left = 0
            Top = 66
            Width = 1047
            Height = 16
            BandType = btSummary
            BeforePrint = rlrodgruBeforePrint
            object rlrodgru_op_descricao: TRLLabel
              Left = 0
              Top = 0
              Width = 110
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_op_descricao
              Layout = tlCenter
            end
            object rlrodgru_op_valor_imp: TRLLabel
              Left = 110
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_op_valor_imp
              Layout = tlCenter
            end
            object rlrodgru_op_perc_imp: TRLLabel
              Left = 173
              Top = 0
              Width = 46
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_op_perc_imp
              Layout = tlCenter
            end
            object rlrodgru_mp_descricao: TRLLabel
              Left = 218
              Top = 0
              Width = 178
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_mp_descricao
              Layout = tlCenter
            end
            object rlrodgru_mp_qtd_imp: TRLLabel
              Left = 395
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_mp_qtd_imp
              Layout = tlCenter
            end
            object rlrodgru_mp_vt_imp: TRLLabel
              Left = 451
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_mp_vt_imp
              Layout = tlCenter
            end
            object rlrodgru_pa_descricao: TRLLabel
              Left = 517
              Top = 0
              Width = 182
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_pa_descricao
              Layout = tlCenter
            end
            object rlrodgru_pa_qtd: TRLLabel
              Left = 703
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_pa_qtd
              Layout = tlCenter
            end
            object rlrodgru_pa_vt_imp: TRLLabel
              Left = 755
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_pa_vt_imp
              Layout = tlCenter
            end
            object rlrodgru_nf_dados_nf: TRLLabel
              Left = 818
              Top = 0
              Width = 170
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_nf_dados_nf
              Layout = tlCenter
            end
            object rlrodgru_nf_valor_imp: TRLLabel
              Left = 988
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_nf_valor_imp
              Layout = tlCenter
            end
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 281
          Width = 1047
          Height = 18
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand1BeforePrint
          object rlrodger_op_descricao: TRLLabel
            Left = 0
            Top = 0
            Width = 110
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = rlcab_op_descricao
            Layout = tlCenter
          end
          object rlrodger_op_valor_imp: TRLLabel
            Left = 110
            Top = 0
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_op_valor_imp
            Layout = tlCenter
          end
          object rlrodger_op_perc_imp: TRLLabel
            Left = 173
            Top = 0
            Width = 46
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = rlcab_op_perc_imp
            Layout = tlCenter
          end
          object rlrodger_mp_descricao: TRLLabel
            Left = 218
            Top = 0
            Width = 178
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = rlcab_mp_descricao
            Layout = tlCenter
          end
          object rlrodger_mp_qtd_imp: TRLLabel
            Left = 395
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_mp_qtd_imp
            Layout = tlCenter
          end
          object rlrodger_mp_vt_imp: TRLLabel
            Left = 451
            Top = 0
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_mp_vt_imp
            Layout = tlCenter
          end
          object rlrodger_pa_descricao: TRLLabel
            Left = 517
            Top = 0
            Width = 182
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = rlcab_pa_descricao
            Layout = tlCenter
          end
          object rlrodger_pa_qtd: TRLLabel
            Left = 703
            Top = 0
            Width = 52
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_pa_qtd
            Layout = tlCenter
          end
          object rlrodger_pa_vt_imp: TRLLabel
            Left = 755
            Top = 0
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_pa_vt_imp
            Layout = tlCenter
          end
          object rlrodger_nf_dados_nf: TRLLabel
            Left = 818
            Top = 0
            Width = 170
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = rlcab_nf_dados_nf
            Layout = tlCenter
          end
          object rlrodger_nf_valor_imp: TRLLabel
            Left = 988
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = rlcab_nf_valor_imp
            Layout = tlCenter
          end
        end
        object RLBand_resumo: TRLBand
          Left = 38
          Top = 299
          Width = 1047
          Height = 80
          BandType = btSummary
          BeforePrint = RLBand_resumoBeforePrint
          object rlrod_resumo_periodo: TRLLabel
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Resumo'
            Layout = tlCenter
          end
          object rlrcabrod_despoper: TRLLabel
            Left = 1
            Top = 21
            Width = 234
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Despesas Operacionais'
            Layout = tlCenter
          end
          object rlrdetrod_despoper: TRLLabel
            Left = 235
            Top = 21
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
          object rlcab_mp_usadas: TRLLabel
            Left = 0
            Top = 37
            Width = 236
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Materias Primas Utilizadas'
            Layout = tlCenter
          end
          object rldet_mp_usadas: TRLLabel
            Left = 235
            Top = 37
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
          object rlcabrod_totvda: TRLLabel
            Left = 404
            Top = 21
            Width = 234
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total das Vendas'
            Layout = tlCenter
          end
          object rlcabrod_tot_gastos: TRLLabel
            Left = 404
            Top = 37
            Width = 232
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total dos Gastos'
            Layout = tlCenter
          end
          object rldetrod_totvda: TRLLabel
            Left = 636
            Top = 21
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
          object rlcetrod_tot_gastos: TRLLabel
            Left = 636
            Top = 37
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
          object rlcabrod_lucro: TRLLabel
            Left = 404
            Top = 53
            Width = 234
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Lucro:'
            Layout = tlCenter
          end
          object rldetrod_lucro: TRLLabel
            Left = 636
            Top = 53
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
          object rldetperc_lucro: TRLLabel
            Left = 735
            Top = 53
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Layout = tlCenter
          end
        end
      end
    end
  end
  object mem_cadbal: TRxMemoryData
    FieldDefs = <>
    Left = 372
    Top = 120
    object mem_cadbalop_descricao: TStringField
      FieldName = 'op_descricao'
      Size = 30
    end
    object mem_cadbalop_perc: TFloatField
      FieldName = 'op_perc'
    end
    object mem_cadbalop_perc_imp: TStringField
      FieldName = 'op_perc_imp'
    end
    object mem_cadbalop_valor: TFloatField
      FieldName = 'op_valor'
    end
    object mem_cadbalop_valor_imp: TStringField
      FieldName = 'op_valor_imp'
    end
    object mem_cadbalmp_descricao: TStringField
      FieldName = 'mp_descricao'
      Size = 100
    end
    object mem_cadbalmp_und: TStringField
      FieldName = 'mp_und'
      Size = 3
    end
    object mem_cadbalmp_qtd: TFloatField
      FieldName = 'mp_qtd'
    end
    object mem_cadbalmp_qtd_imp: TStringField
      FieldName = 'mp_qtd_imp'
    end
    object mem_cadbalmp_pu: TFloatField
      FieldName = 'mp_pu'
    end
    object mem_cadbalmp_pu_imp: TStringField
      FieldName = 'mp_pu_imp'
    end
    object mem_cadbalmp_vt: TFloatField
      FieldName = 'mp_vt'
    end
    object mem_cadbalmp_vt_imp: TStringField
      FieldName = 'mp_vt_imp'
    end
    object mem_cadbalpa_descricao: TStringField
      FieldName = 'pa_descricao'
      Size = 100
    end
    object mem_cadbalpa_und: TStringField
      FieldName = 'pa_und'
      Size = 3
    end
    object mem_cadbalpa_qtd: TFloatField
      FieldName = 'pa_qtd'
    end
    object mem_cadbalpa_qtd_imp: TStringField
      FieldName = 'pa_qtd_imp'
    end
    object mem_cadbalpa_vt: TFloatField
      FieldName = 'pa_vt'
    end
    object mem_cadbalpa_vt_imp: TStringField
      FieldName = 'pa_vt_imp'
    end
    object mem_cadbalpa_icmsr: TFloatField
      FieldName = 'pa_icmsr'
    end
    object mem_cadbalpa_frete: TFloatField
      FieldName = 'pa_frete'
    end
    object mem_cadbalpa_outacres: TFloatField
      FieldName = 'pa_outacres'
    end
    object mem_cadbalnf_dados_nf: TStringField
      FieldName = 'nf_dados_nf'
      Size = 100
    end
    object mem_cadbalnf_valor: TFloatField
      FieldName = 'nf_valor'
    end
    object mem_cadbalnomgru: TStringField
      FieldName = 'nomgru'
      Size = 200
    end
    object mem_cadbalnf_valor_imp: TStringField
      FieldName = 'nf_valor_imp'
    end
  end
  object src_cadbal: TDataSource
    DataSet = mem_cadbal
    Left = 432
    Top = 128
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 484
    Top = 80
  end
end
