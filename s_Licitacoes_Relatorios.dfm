object Frm_Licitacoes_Relatorios: TFrm_Licitacoes_Relatorios
  Left = 298
  Top = 111
  Width = 1122
  Height = 455
  Caption = 'Relatorios de Licita'#231#245'es'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1114
    Height = 424
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 313
        Align = alTop
        TabOrder = 0
        object Label62: TLabel
          Left = 10
          Top = 34
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Periodo de:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label63: TLabel
          Left = 237
          Top = 37
          Width = 6
          Height = 13
          Caption = #224
        end
        object lbl_codcli: TLabel
          Left = 42
          Top = 57
          Width = 44
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 25
          Top = 96
          Width = 61
          Height = 13
          Caption = 'Situa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 39
          Top = 121
          Width = 49
          Height = 13
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 44
          Top = 162
          Width = 33
          Height = 13
          Caption = 'Marca:'
        end
        object Label3: TLabel
          Left = 4
          Top = 218
          Width = 86
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Margem Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 212
          Top = 218
          Width = 86
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Margem Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_datini: TDateEdit
          Left = 91
          Top = 34
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
        end
        object edt_datfin: TDateEdit
          Left = 265
          Top = 34
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object edt_codcli: TEdit
          Left = 90
          Top = 54
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = edt_codcliExit
          OnKeyPress = edt_codcliKeyPress
        end
        object lbx_codcli: TListBox
          Left = 151
          Top = 54
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 90
          Top = 79
          Width = 50
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object CB_SITUACAO: TComboBox
          Left = 88
          Top = 95
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'Todos'
          Items.Strings = (
            'Todos'
            'Ganhados'
            'N'#227'o Ganhados')
        end
        object bbSair: TBitBtn
          Left = 777
          Top = 265
          Width = 150
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
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
        object bbImprimir: TBitBtn
          Left = 185
          Top = 265
          Width = 150
          Height = 25
          Cursor = crHandPoint
          Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
          Caption = '&Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
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
        object cb_salvar_sql: TCheckBox
          Left = 488
          Top = 96
          Width = 97
          Height = 17
          Caption = 'Salvar Sql'
          TabOrder = 6
        end
        object edt_codpro: TEdit
          Left = 87
          Top = 118
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = edt_codproExit
          OnKeyPress = edt_codproKeyPress
        end
        object lbx_codpro: TListBox
          Left = 148
          Top = 118
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 87
          Top = 143
          Width = 50
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object MARCA: TEdit
          Left = 87
          Top = 159
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnExit = MARCAExit
        end
        object lbx_marca: TListBox
          Left = 149
          Top = 159
          Width = 477
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_marcaKeyDown
        end
        object OMITIR_MAR: TCheckBox
          Left = 91
          Top = 180
          Width = 55
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object edt_margem_inicial: TEdit
          Left = 92
          Top = 214
          Width = 87
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnExit = edt_margem_inicialExit
        end
        object edt_margem_final: TEdit
          Left = 316
          Top = 214
          Width = 87
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnExit = edt_margem_finalExit
        end
        object bb_exportar: TBitBtn
          Left = 477
          Top = 265
          Width = 143
          Height = 25
          Caption = '&Exportar Relatorio'
          TabOrder = 17
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
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 88
        Top = -8
        Width = 794
        Height = 1123
        DataSource = src_lic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 136
            Height = 16
            Caption = 'Relat'#243'rio de Licita'#231#245'es'
          end
          object lbl_periodo: TRLLabel
            Left = 161
            Top = 17
            Width = 392
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 34
            Width = 718
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio de Licita'#231#245'es'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 88
          Width = 718
          Height = 93
          DataFields = 'LC1_CHAVE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLBand_cabped: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 38
            BandType = btColumnHeader
            Color = 15000804
            ParentColor = False
            Transparent = False
            BeforePrint = RLBand_cabpedBeforePrint
            object RLLabel2: TRLLabel
              Left = 3
              Top = 0
              Width = 50
              Height = 16
              AutoSize = False
              Caption = 'Chave:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText2: TRLDBText
              Left = 55
              Top = 0
              Width = 79
              Height = 16
              AutoSize = False
              DataField = 'LC1_CHAVE'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel4: TRLLabel
              Left = 135
              Top = 0
              Width = 110
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero Licita'#231#227'o:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText3: TRLDBText
              Left = 248
              Top = 0
              Width = 70
              Height = 16
              AutoSize = False
              DataField = 'LC1_CARCON'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel5: TRLLabel
              Left = 325
              Top = 0
              Width = 36
              Height = 16
              AutoSize = False
              Caption = 'Data:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText4: TRLDBText
              Left = 364
              Top = 0
              Width = 98
              Height = 16
              AutoSize = False
              DataField = 'LC1_DTEMIS'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel6: TRLLabel
              Left = 472
              Top = 0
              Width = 64
              Height = 16
              AutoSize = False
              Caption = 'Vendedor:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText5: TRLDBText
              Left = 538
              Top = 0
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'LC1_CODVEN'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText6: TRLDBText
              Left = 599
              Top = 0
              Width = 115
              Height = 16
              AutoSize = False
              DataField = 'NOMVEN'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel7: TRLLabel
              Left = 3
              Top = 18
              Width = 50
              Height = 16
              AutoSize = False
              Caption = 'Cliente:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText7: TRLDBText
              Left = 57
              Top = 18
              Width = 328
              Height = 16
              AutoSize = False
              DataField = 'LC1_NOMCLI'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel8: TRLLabel
              Left = 396
              Top = 18
              Width = 50
              Height = 16
              AutoSize = False
              Caption = 'Cidade:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText8: TRLDBText
              Left = 450
              Top = 18
              Width = 203
              Height = 16
              AutoSize = False
              DataField = 'LC1_NOMLOC'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
            object RLLabel9: TRLLabel
              Left = 658
              Top = 18
              Width = 25
              Height = 16
              AutoSize = False
              Caption = 'UF:'
              Layout = tlCenter
              Transparent = False
            end
            object RLDBText9: TRLDBText
              Left = 687
              Top = 18
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'LC1_UF'
              DataSource = src_lic
              Layout = tlCenter
              Transparent = False
            end
          end
          object RLBand_cabdet: TRLBand
            Left = 0
            Top = 38
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_LC2_LOTEPREGAO: TRLLabel
              Left = 1
              Top = 0
              Width = 32
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lote'
              Layout = tlCenter
            end
            object lbl_LC2_ITEM: TRLLabel
              Left = 33
              Top = 0
              Width = 30
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = #205'tem'
              Layout = tlCenter
            end
            object lbl_LC2_CODPRO: TRLLabel
              Left = 62
              Top = 0
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
              Layout = tlCenter
            end
            object lbl_LC2_NOM01: TRLLabel
              Left = 112
              Top = 0
              Width = 234
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Layout = tlCenter
            end
            object lbl_LC2_MARCA: TRLLabel
              Left = 347
              Top = 0
              Width = 98
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Marca'
              Layout = tlCenter
            end
            object lbl_LC2_QTD: TRLLabel
              Left = 443
              Top = 0
              Width = 50
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde'
              Layout = tlCenter
            end
            object lbl_LC2_PCOAV: TRLLabel
              Left = 492
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'P'#231'o Unit'
              Layout = tlCenter
            end
            object lbl_TOTAL_LC2: TRLLabel
              Left = 547
              Top = 0
              Width = 60
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vlr.Total'
              Layout = tlCenter
            end
            object lbl_QTD_FATURADO: TRLLabel
              Left = 606
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Faturado'
              Layout = tlCenter
            end
            object lbl_QTD_FALTANDO: TRLLabel
              Left = 661
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Restante'
              Layout = tlCenter
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 54
            Width = 718
            Height = 16
            object edt_LC2_LOTEPREGAO: TRLDBText
              Left = 1
              Top = 0
              Width = 32
              Height = 16
              AutoSize = False
              DataField = 'LC2_LOTEPREGAO'
              DataSource = src_lic
              Holder = lbl_LC2_LOTEPREGAO
              Layout = tlCenter
            end
            object edt_LC2_ITEM: TRLDBText
              Left = 33
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'LC2_ITEM'
              DataSource = src_lic
              Holder = lbl_LC2_ITEM
              Layout = tlCenter
            end
            object edt_LC2_CODPRO: TRLDBText
              Left = 62
              Top = 0
              Width = 50
              Height = 16
              AutoSize = False
              DataField = 'LC2_CODPRO'
              DataSource = src_lic
              Holder = lbl_LC2_CODPRO
              Layout = tlCenter
            end
            object edt_LC2_NOM01: TRLDBText
              Left = 112
              Top = 0
              Width = 234
              Height = 16
              AutoSize = False
              DataField = 'LC2_NOM01'
              DataSource = src_lic
              Holder = lbl_LC2_NOM01
              Layout = tlCenter
            end
            object edt_LC2_MARCA: TRLDBText
              Left = 347
              Top = 0
              Width = 98
              Height = 16
              AutoSize = False
              DataField = 'LC2_MARCA'
              DataSource = src_lic
              Holder = lbl_LC2_MARCA
              Layout = tlCenter
            end
            object edt_LC2_QTD: TRLDBText
              Left = 443
              Top = 0
              Width = 50
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'LC2_QTD'
              DataSource = src_lic
              Holder = lbl_LC2_QTD
              Layout = tlCenter
            end
            object edt_LC2_PCOAV: TRLDBText
              Left = 492
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'LC2_PCOAV'
              DataSource = src_lic
              Holder = lbl_LC2_PCOAV
              Layout = tlCenter
            end
            object edt_TOTAL_LC2: TRLDBText
              Left = 547
              Top = 0
              Width = 60
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTAL_LC2'
              DataSource = src_lic
              Holder = lbl_TOTAL_LC2
              Layout = tlCenter
            end
            object edt_QTD_FATURADO: TRLDBText
              Left = 606
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_FATURADO'
              DataSource = src_lic
              Holder = lbl_QTD_FATURADO
              Layout = tlCenter
            end
            object edt_QTD_FALTANDO: TRLDBText
              Left = 661
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTD_FALTANDO'
              DataSource = src_lic
              Holder = lbl_QTD_FALTANDO
              Layout = tlCenter
            end
          end
          object RLBand_rodped: TRLBand
            Left = 0
            Top = 70
            Width = 718
            Height = 17
            BandType = btFooter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.FixedBottom = True
            Color = 15132390
            ParentColor = False
            Transparent = False
            BeforePrint = RLBand_rodpedBeforePrint
            object lbl_rodape: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'Descri'#231#227'o'
              Color = 15132390
              Layout = tlCenter
              ParentColor = False
              Transparent = False
            end
          end
        end
      end
    end
  end
  object src_lic: TDataSource
    DataSet = qr_lic
    Left = 336
    Top = 56
  end
  object qr_lic: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        ' SELECT P1NPEDORI,chaves,LC2_QTD-QTD_FATURADO AS QTD_FALTANDO, T' +
        '1.* FROM ('
      ' SELECT LC1_CHAVE'
      ' ,LC1_DTEMIS'
      ' ,LC1_CARCON'
      ' ,LC1_NOMCLI'
      ' ,LC1_NOMLOC'
      ' ,LC1_UF'
      ' ,LC1_CODVEN'
      ' ,CASE WHEN LC1_CODVEN=0 THEN '#39'Sem Vendedor'#39' else'
      
        '  (select max(VNOME) from cadven WHERE VCODVEN=LC1_CODVEN) END a' +
        's NOMVEN'
      
        ' ,NVL( (SELECT SUM(P2QTD) FROM CADP01,CADP02 WHERE P1NPEDORI=LC1' +
        '_CHAVE'
      ' AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ'
      ' AND P2ORDEM=P1ORDEM ),0) AS QTD_FATURADO'
      
        ' ,NVL( (SELECT SUM(P2TOTLIQ) FROM CADP01,CADP02 WHERE P1NPEDORI=' +
        'LC1_CHAVE'
      ' AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ'
      ' AND P2ORDEM=P1ORDEM ),0) AS VALOR_FATURADO'
      
        ' ,NVL( (SELECT SUM(P2TOTLIQ) FROM CADP01,CADP02 WHERE P1NPEDORI=' +
        'LC1_CHAVE'
      ' AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ'
      ' AND P2ORDEM=P1ORDEM ),0) AS VALOR_FATURADO_ITEM'
      ''
      ' ,LC2_CODPRO'
      ' ,MAX(LC2_LOTEPREGAO) AS LC2_LOTEPREGAO'
      ' ,MAX(LC2_ITEM) AS LC2_ITEM'
      ' ,MAX(LC2_NOM01) AS LC2_NOM01'
      
        ' ,fgetlong_condicao('#39'CADLC2'#39','#39'LC2_DESCCOMP'#39','#39' WHERE LC2_CHAVE='#39' ' +
        '|| TO_CHAR(LC1_CHAVE) || '#39' AND LC2_ITEM='#39' || MAX(LC2_ITEM) ) AS ' +
        'LC2_DESCCOMP'
      ' ,MAX(LC2_MARCA) AS LC2_MARCA'
      ' ,SUM(LC2_QTD) AS LC2_QTD'
      ' ,SUM(LC2_PCOAV) AS LC2_PCOAV'
      ' ,SUM(ROUND(LC2_QTD*LC2_PCOAV,2)) AS TOTAL_LC2'
      ''
      
        ' ,(select SUM(ROUND(LC2_QTD*LC2_PCOAV,2)) AS TOTAL_LC2  FROM CAD' +
        'LC2 DENTRO'
      
        '    WHERE DENTRO.LC2_CHAVE=FORA.LC1_CHAVE AND DENTRO.LC2_CODEMP=' +
        'FORA.LC1_CODEMP ) AS TOTAL_GERAL_LC2'
      ''
      ''
      ' FROM CADLC1 FORA,CADLC2'
      ' WHERE LC2_CHAVE=LC1_CHAVE '
      ' AND LC2_CODEMP=LC1_CODEMP '
      ' GROUP BY LC1_CHAVE '
      ' ,LC1_DTEMIS '
      ' ,LC1_CARCON '
      ' ,LC1_NOMCLI '
      ' ,LC1_NOMLOC '
      ' ,LC1_UF '
      ' ,LC1_CODVEN '
      ' ,LC2_CODPRO'
      '  ,LC1_CODEMP'
      ' ) T1 '
      ' LEFT JOIN ( '
      
        ' select P1NPEDORI, MAX(CHAVE01) || MAX(CHAVE02) || MAX(CHAVE03) ' +
        '|| MAX(CHAVE04)  || MAX(CHAVE05) || MAX(CHAVE06) || MAX(CHAVE07)' +
        ' || MAX(CHAVE08) || MAX(CHAVE09)  || MAX(CHAVE10) || MAX(CHAVE11' +
        ') || MAX(CHAVE12) || MAX(CHAVE13) || MAX(CHAVE14)  || MAX(CHAVE1' +
        '5) || MAX(CHAVE16) || MAX(CHAVE17) || MAX(CHAVE18) || MAX(CHAVE1' +
        '9)  AS CHAVES FROM '
      ' ( '
      
        ' SELECT P1NPEDORI,  CASE WHEN ORDEM=1 THEN P1CHAVE ELSE NULL END' +
        ' AS CHAVE01 '
      
        '        ,CASE WHEN ORDEM=2 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE02 '
      
        '        ,CASE WHEN ORDEM=3 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE03 '
      
        '        ,CASE WHEN ORDEM=4 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE04 '
      
        '        ,CASE WHEN ORDEM=5 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE05 '
      
        '        ,CASE WHEN ORDEM=6 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE06 '
      
        '        ,CASE WHEN ORDEM=7 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE07 '
      
        '        ,CASE WHEN ORDEM=8 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE08 '
      
        '        ,CASE WHEN ORDEM=9 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39#39 +
        ' END AS CHAVE09 '
      
        '        ,CASE WHEN ORDEM=10 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE10 '
      
        '        ,CASE WHEN ORDEM=11 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE11 '
      
        '        ,CASE WHEN ORDEM=12 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE12 '
      
        '        ,CASE WHEN ORDEM=13 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE13 '
      
        '        ,CASE WHEN ORDEM=14 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE14 '
      
        '        ,CASE WHEN ORDEM=15 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE15 '
      
        '        ,CASE WHEN ORDEM=16 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE16 '
      
        '        ,CASE WHEN ORDEM=17 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE17 '
      
        '        ,CASE WHEN ORDEM=18 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE18 '
      
        '        ,CASE WHEN ORDEM=19 THEN  '#39','#39' || TO_CHAR(P1CHAVE) ELSE '#39 +
        #39' END AS CHAVE19 '
      '         FROM '
      ' ( '
      ' SELECT P1NPEDORI,P1CHAVE '
      
        ' ,ROW_NUMBER() OVER (PARTITION BY P1NPEDORI ORDER BY P1NPEDORI,P' +
        '1CHAVE) AS ORDEM '
      '  FROM CADP01 '
      ' WHERE P1NPEDORI>0 AND ROWNUM<11 '
      ' ) '
      ' ) GROUP BY P1NPEDORI '
      ' )  ON (P1NPEDORI =LC1_CHAVE) '
      '')
    Left = 392
    Top = 56
    object qr_licQTD_FALTANDO: TFloatField
      FieldName = 'QTD_FALTANDO'
    end
    object qr_licLC1_CHAVE: TFloatField
      FieldName = 'LC1_CHAVE'
    end
    object qr_licLC1_DTEMIS: TDateTimeField
      FieldName = 'LC1_DTEMIS'
    end
    object qr_licLC1_CARCON: TStringField
      FieldName = 'LC1_CARCON'
      Size = 30
    end
    object qr_licLC1_NOMCLI: TStringField
      FieldName = 'LC1_NOMCLI'
      Size = 50
    end
    object qr_licLC1_UF: TStringField
      FieldName = 'LC1_UF'
      Size = 2
    end
    object qr_licLC1_NOMLOC: TStringField
      FieldName = 'LC1_NOMLOC'
      Size = 30
    end
    object qr_licLC1_CODVEN: TFloatField
      FieldName = 'LC1_CODVEN'
    end
    object qr_licNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object qr_licQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object qr_licVALOR_FATURADO: TFloatField
      FieldName = 'VALOR_FATURADO'
    end
    object qr_licLC2_CODPRO: TFloatField
      FieldName = 'LC2_CODPRO'
    end
    object qr_licLC2_LOTEPREGAO: TStringField
      FieldName = 'LC2_LOTEPREGAO'
      Size = 10
    end
    object qr_licLC2_ITEM: TFloatField
      FieldName = 'LC2_ITEM'
    end
    object qr_licLC2_NOM01: TStringField
      FieldName = 'LC2_NOM01'
      Size = 50
    end
    object qr_licLC2_DESCCOMP: TMemoField
      FieldName = 'LC2_DESCCOMP'
      BlobType = ftMemo
      Size = 4000
    end
    object qr_licLC2_MARCA: TStringField
      FieldName = 'LC2_MARCA'
      Size = 15
    end
    object qr_licLC2_QTD: TFloatField
      FieldName = 'LC2_QTD'
    end
    object qr_licLC2_PCOAV: TFloatField
      FieldName = 'LC2_PCOAV'
    end
    object qr_licTOTAL_LC2: TFloatField
      FieldName = 'TOTAL_LC2'
    end
    object qr_licP1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
    end
    object qr_licCHAVES: TMemoField
      FieldName = 'CHAVES'
      BlobType = ftMemo
      Size = 778
    end
    object qr_licTOTAL_GERAL_LC2: TFloatField
      FieldName = 'TOTAL_GERAL_LC2'
    end
    object qr_licVALOR_FATURADO_ITEM: TFloatField
      FieldName = 'VALOR_FATURADO_ITEM'
    end
    object qr_licLC2_ICMS_PERC: TFloatField
      FieldName = 'LC2_ICMS_PERC'
    end
    object qr_licLC2_DESPESASFIXAS_PERC: TFloatField
      FieldName = 'LC2_DESPESASFIXAS_PERC'
    end
    object qr_licLC2_FRETE_PERC: TFloatField
      FieldName = 'LC2_FRETE_PERC'
    end
    object qr_licLC2_MARGEM_LUCRO_PERC: TFloatField
      FieldName = 'LC2_MARGEM_LUCRO_PERC'
    end
    object qr_licmargem: TFloatField
      FieldName = 'margem'
    end
    object qr_licLC2_PCOCPR2: TFloatField
      FieldName = 'LC2_PCOCPR'
    end
    object qr_lictotal_custo_calculado2: TFloatField
      FieldName = 'total_custo_calculado'
    end
    object qr_licLC1_DATCON: TDateTimeField
      FieldName = 'LC1_DATCON'
    end
  end
end
