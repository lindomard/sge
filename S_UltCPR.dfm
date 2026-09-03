object Frm_UltCPR: TFrm_UltCPR
  Left = 145
  Top = 149
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Compra de Mercadorias'
  ClientHeight = 577
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1084
    Height = 577
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1076
        Height = 179
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 30
          Top = 16
          Width = 91
          Height = 13
          Caption = 'C'#243'digo do Produto:'
        end
        object Label2: TLabel
          Left = 79
          Top = 79
          Width = 41
          Height = 13
          Caption = 'Per'#237'odo:'
        end
        object Label3: TLabel
          Left = 221
          Top = 79
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label4: TLabel
          Left = 26
          Top = 59
          Width = 93
          Height = 13
          Caption = 'C'#243'digo Fornecedor:'
        end
        object Label5: TLabel
          Left = 584
          Top = 78
          Width = 70
          Height = 13
          Caption = 'Filtar Apenas..:'
        end
        object Label9: TLabel
          Left = 344
          Top = 78
          Width = 65
          Height = 13
          Caption = 'Tipo da Data:'
        end
        object Label10: TLabel
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
          Left = 593
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Marca:'
        end
        object CODPRO: TEdit
          Left = 123
          Top = 12
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = CODPROEnter
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object MDT1: TMaskEdit
          Left = 123
          Top = 76
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          Text = '  /  /    '
          OnEnter = CODPROEnter
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 245
          Top = 76
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 6
          Text = '  /  /    '
          OnEnter = CODPROEnter
          OnExit = MDT2Exit
        end
        object bbAplicar: TBitBtn
          Left = 74
          Top = 130
          Width = 148
          Height = 36
          Caption = '&Aplicar'
          TabOrder = 10
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
          Top = 130
          Width = 148
          Height = 36
          Caption = '&Sair'
          TabOrder = 13
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
        object CODFOR: TEdit
          Left = 123
          Top = 55
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = CODFOREnter
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object NOMFOR: TEdit
          Left = 246
          Top = 53
          Width = 339
          Height = 21
          Enabled = False
          ParentColor = True
          TabOrder = 4
        end
        object bb_imprel: TBitBtn
          Left = 240
          Top = 130
          Width = 148
          Height = 36
          Caption = '&Imprimir Relatorio'
          TabOrder = 11
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
          Left = 406
          Top = 130
          Width = 148
          Height = 36
          Caption = '&Exportar Relatorio'
          TabOrder = 12
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
        object cb_filtro_confirmado: TComboBox
          Left = 658
          Top = 75
          Width = 167
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = 'Somente Confirmadas'
          Items.Strings = (
            'Somente Confirmadas'
            'Somente N'#227'o Confirmadas'
            'Todas')
        end
        object lbx_codpro: TListBox
          Left = 244
          Top = 11
          Width = 341
          Height = 40
          ItemHeight = 13
          TabOrder = 1
          OnKeyDown = lbx_codproKeyDown
        end
        object cb_omitir: TCheckBox
          Left = 128
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Omitir'
          TabOrder = 2
        end
        object cb_ipi: TCheckBox
          Left = 740
          Top = 107
          Width = 109
          Height = 17
          Caption = 'Somente com IPI'
          TabOrder = 9
        end
        object cb_tipo_data: TComboBox
          Left = 418
          Top = 73
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 7
          Text = 'Nota'
          OnExit = cb_tipo_dataExit
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
          TabOrder = 14
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
          Left = 635
          Top = 10
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnExit = MARCAExit
        end
        object lbx_marca: TListBox
          Left = 696
          Top = 10
          Width = 359
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnKeyDown = lbx_marcaKeyDown
        end
        object OMITIR_MAR: TCheckBox
          Left = 639
          Top = 31
          Width = 55
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 179
        Width = 1076
        Height = 370
        Align = alClient
        Caption = 'Compras Anteriores:'
        TabOrder = 1
        OnClick = bb_exportarClick
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 1072
          Height = 308
          Align = alClient
          DataSource = Src_UltCPR
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PF1DATA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF1DATANF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CHAVE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CODPRO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Prod.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2NOMPRO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Nome Prod.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDMARCA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
              FieldName = 'PF1NUMNF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
              FieldName = 'PF2PU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o s/ Desc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2QTDP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pco_unit'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o c/ Desc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pco_unit_comipi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2TOTDES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Vlr Desc.'
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
              FieldName = 'PF2ALIPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
              FieldName = 'PF2ICMSR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 323
          Width = 1072
          Height = 45
          Align = alBottom
          Caption = 'Mais Dados:'
          TabOrder = 1
          object Label6: TLabel
            Left = 11
            Top = 16
            Width = 71
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Prazos:'
          end
          object Label7: TLabel
            Left = 248
            Top = 16
            Width = 47
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Lote:'
          end
          object Label8: TLabel
            Left = 411
            Top = 16
            Width = 82
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fornecedor:'
          end
          object DBE_prazo: TDBEdit
            Left = 86
            Top = 12
            Width = 159
            Height = 19
            Ctl3D = False
            DataField = 'PRAZO'
            DataSource = Src_UltCPR
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBE_LOTE: TDBEdit
            Left = 301
            Top = 12
            Width = 102
            Height = 19
            Ctl3D = False
            DataField = 'PF2LOTE'
            DataSource = Src_UltCPR
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBE_CODFOR: TDBEdit
            Left = 499
            Top = 12
            Width = 91
            Height = 19
            Ctl3D = False
            DataField = 'PF1CODFOR'
            DataSource = Src_UltCPR
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBE_RAZAO: TDBEdit
            Left = 589
            Top = 12
            Width = 354
            Height = 19
            Ctl3D = False
            DataField = 'FRAZAO'
            DataSource = Src_UltCPR
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object rl_prod_comp: TRLReport
        Left = 78
        Top = 128
        Width = 794
        Height = 1123
        DataSource = Src_UltCPR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
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
            Width = 326
            Height = 16
            Caption = 'Relatorio de Compra de Produtos com pre'#231'o de compra'
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
            Caption = 'Todos os Fornecedores'
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
          DataFields = 'PF2CODPRO'
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
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'Data Ped.'
              Layout = tlCenter
            end
            object rl_codfor: TRLLabel
              Left = 182
              Top = 20
              Width = 44
              Height = 16
              AutoSize = False
              Caption = 'C'#243'd.Forn.'
              Layout = tlCenter
            end
            object rl_razaofor: TRLLabel
              Left = 228
              Top = 20
              Width = 207
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
              Layout = tlCenter
            end
            object rl_precouni: TRLLabel
              Left = 435
              Top = 20
              Width = 64
              Height = 16
              AutoSize = False
              Caption = 'Pre'#231'o Unit'#225'rio'
              Layout = tlCenter
            end
            object rl_qtd: TRLLabel
              Left = 500
              Top = 20
              Width = 58
              Height = 16
              AutoSize = False
              Caption = 'Quantidade'
              Layout = tlCenter
            end
            object rl_valtot: TRLLabel
              Left = 647
              Top = 20
              Width = 68
              Height = 16
              AutoSize = False
              Caption = 'Valor Total'
              Layout = tlCenter
            end
            object rl_chaveped: TRLLabel
              Left = 124
              Top = 20
              Width = 57
              Height = 16
              AutoSize = False
              Caption = 'Chave Ped.'
              Layout = tlCenter
            end
            object lbl_ipi: TRLLabel
              Left = 560
              Top = 20
              Width = 30
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%IPI'
              Layout = tlCenter
            end
            object lbl_vlripi: TRLLabel
              Left = 588
              Top = 20
              Width = 58
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor c/IPI'
              Layout = tlCenter
            end
            object cb_PF1DATANF: TRLLabel
              Left = 62
              Top = 19
              Width = 60
              Height = 16
              AutoSize = False
              Caption = 'Data Nota'
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
            object RLDBText1: TRLDBText
              Left = 0
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              DataField = 'PF1DATA'
              DataSource = Src_UltCPR
              Holder = rl_dataped
              Layout = tlCenter
            end
            object RLDBText2: TRLDBText
              Left = 228
              Top = 1
              Width = 207
              Height = 16
              AutoSize = False
              DataField = 'FRAZAO'
              DataSource = Src_UltCPR
              Holder = rl_razaofor
              Layout = tlCenter
            end
            object RLDBText3: TRLDBText
              Left = 435
              Top = 1
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'pco_unit'
              DataSource = Src_UltCPR
              Holder = rl_precouni
              Layout = tlCenter
            end
            object RLDBText4: TRLDBText
              Left = 500
              Top = 1
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PF2QTDP'
              DataSource = Src_UltCPR
              Holder = rl_qtd
              Layout = tlCenter
            end
            object RLDBText5: TRLDBText
              Left = 647
              Top = 1
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valor_total'
              DataSource = Src_UltCPR
              Holder = rl_valtot
              Layout = tlCenter
            end
            object RLDBText6: TRLDBText
              Left = 182
              Top = 1
              Width = 44
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'PF1CODFOR'
              DataSource = Src_UltCPR
              Holder = rl_codfor
              Layout = tlCenter
            end
            object RLDBText7: TRLDBText
              Left = 124
              Top = 1
              Width = 57
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'PF2CHAVE'
              DataSource = Src_UltCPR
              Holder = rl_chaveped
              Layout = tlCenter
            end
            object RLDBText8: TRLDBText
              Left = 560
              Top = 1
              Width = 30
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PF2ALIPI'
              DataSource = Src_UltCPR
              Holder = lbl_ipi
              Layout = tlCenter
            end
            object RLDBText9: TRLDBText
              Left = 588
              Top = 1
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'pco_unit_comipi'
              DataSource = Src_UltCPR
              Holder = lbl_vlripi
              Layout = tlCenter
            end
            object edt_PF1DATANF: TRLDBText
              Left = 62
              Top = 1
              Width = 60
              Height = 16
              AutoSize = False
              DataField = 'PF1DATANF'
              DataSource = Src_UltCPR
              Holder = cb_PF1DATANF
              Layout = tlCenter
            end
          end
        end
      end
    end
  end
  object Qr_UltCpr: TQuery
    OnCalcFields = Qr_UltCprCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF1DATA,PF1CODFOR,PF2QTDP,PF2PU,PF2NOMPRO, PF2CODEMP, PF2' +
        'LOTE,'
      
        'PF2TOTDES,PF2DESCRAT,FCODFOR,FRAZAO, PF2CODPRO, PF2CHAVE,PF2ALIP' +
        'I,PF2IPI'
      'from CADPF2,CADPF1,CADFOR'
      'where PF2CODPRO is null'
      'and PF1CODEMP=PF2CODEMP'
      'and PF1LOTSEQ=PF2LOTSEQ'
      'and PF1CHAVE=PF2CHAVE'
      'and FCODEMP=PF1CODEMP'
      'and FCODFOR=PF1CODFOR')
    Left = 277
    Top = 16
    object Qr_UltCprPF1DATA: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Qr_UltCprPF1DATANF: TDateTimeField
      DisplayLabel = 'Data da Nota'
      FieldName = 'PF1DATANF'
    end
    object Qr_UltCprPF1NUMNF: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'PF1NUMNF'
    end
    object Qr_UltCprPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Qr_UltCprPDREFER: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'PDREFER'
      Size = 100
    end
    object Qr_UltCprPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_UltCprPF1CODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Forn.'
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_UltCprPF2QTDP: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_UltCprPF2TOTDES: TFloatField
      DisplayLabel = 'Tot Desc'
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_UltCprPF2PU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_UltCprPF2DESCRAT: TFloatField
      DisplayLabel = 'Desc.Rateado'
      FieldName = 'PF2DESCRAT'
      Origin = 'SG_ASSOC.CADPF2.PF2DESCRAT'
    end
    object Qr_UltCprFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_UltCprFCODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornec'
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Qr_UltCprpco_unit: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'pco_unit'
      Calculated = True
    end
    object Qr_UltCprvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object Qr_UltCprPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_UltCprPF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_UltCprPF2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_UltCprPF2LOTE: TStringField
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_UltCprPRAZO: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRAZO'
      Size = 40
      Calculated = True
    end
    object Qr_UltCprPF2ALIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PF2ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Qr_UltCprPF2IPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'PF2IPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Qr_UltCprPF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2NOMPRO'
      Size = 120
    end
    object Qr_UltCprpco_unit_comipi: TFloatField
      DisplayLabel = 'PU-Desc+(IPI+ST)'
      FieldKind = fkCalculated
      FieldName = 'pco_unit_comipi'
      Calculated = True
    end
    object Qr_UltCprPF2ICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'PF2ICMSR'
    end
  end
  object Src_UltCPR: TDataSource
    DataSet = Qr_UltCpr
    Left = 297
    Top = 48
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 760
    Top = 38
  end
end
