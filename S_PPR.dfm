object Frm_PPR: TFrm_PPR
  Left = 120
  Top = 96
  Width = 799
  Height = 491
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o de Produtos em Promo'#231#227'o'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 791
    Height = 460
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o'
      object dbg_itens: TDBGrid
        Left = 0
        Top = 241
        Width = 783
        Height = 150
        Align = alClient
        DataSource = src_ppr
        FixedColor = 13434828
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = dbg_itensColExit
        OnKeyDown = dbg_itensKeyDown
        OnKeyPress = dbg_itensKeyPress
        Columns = <
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'PPCODPRO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Prod'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPGRADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPPCOVDA'
            Title.Alignment = taCenter
            Title.Caption = 'Pr'#231' Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPDESC_1'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPDESC_2'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPDESC_3'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPDESC_F'
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
            FieldName = 'PPCOMIS'
            Title.Alignment = taCenter
            Title.Caption = '% Cm'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPQTDMIN'
            Title.Alignment = taCenter
            Title.Caption = 'Cpr.M'#237'n.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 241
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label6: TLabel
          Left = 7
          Top = 6
          Width = 65
          Height = 13
          Caption = 'Promo'#231#227'o.:'
        end
        object BBnFechar: TBitBtn
          Left = 681
          Top = 2
          Width = 100
          Height = 23
          Cursor = crHandPoint
          Caption = '&Fechar'
          TabOrder = 2
          OnClick = BBnFecharClick
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
        object BBnAplicar: TBitBtn
          Left = 280
          Top = 2
          Width = 100
          Height = 23
          Cursor = crHandPoint
          Caption = '&Aplicar'
          TabOrder = 4
          OnClick = BBnAplicarClick
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
        object GBxCond: TGroupBox
          Left = 1
          Top = 88
          Width = 781
          Height = 152
          Align = alBottom
          Caption = ' Condi'#231#245'es desta Promo'#231#227'o '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnEnter = GBxCondEnter
          OnExit = GBxCondExit
          object Label4: TLabel
            Left = 5
            Top = 23
            Width = 196
            Height = 13
            Caption = 'Per'#237'odo de Vig'#234'ncia..>>> Inicial..:'
          end
          object Label5: TLabel
            Left = 290
            Top = 22
            Width = 40
            Height = 13
            Caption = 'Final..:'
          end
          object Label2: TLabel
            Left = 154
            Top = 40
            Width = 7
            Height = 13
            Caption = '/'
          end
          object Label1: TLabel
            Left = 5
            Top = 40
            Width = 149
            Height = 13
            Caption = 'Plano de Vendas............:'
          end
          object Label3: TLabel
            Left = 5
            Top = 100
            Width = 153
            Height = 13
            Caption = 'C'#243'd.Rede.......................:'
          end
          object Label7: TLabel
            Left = 5
            Top = 135
            Width = 153
            Height = 13
            Caption = 'Observa'#231#227'o....................:'
          end
          object Label8: TLabel
            Left = 5
            Top = 117
            Width = 122
            Height = 13
            Caption = 'C'#243'digo da Regiao....:'
          end
          object Label11: TLabel
            Left = 5
            Top = 80
            Width = 162
            Height = 13
            Caption = 'C'#243'd.Cliente.......................:'
          end
          object Label12: TLabel
            Left = 6
            Top = 60
            Width = 125
            Height = 13
            Caption = 'UF..........................:'
          end
          object mdatini: TMaskEdit
            Left = 201
            Top = 19
            Width = 80
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 0
            Text = '  /  /    '
            OnExit = mdatiniExit
          end
          object mdatfin: TMaskEdit
            Left = 330
            Top = 19
            Width = 80
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = mdatfinExit
          end
          object NOMPV: TEdit
            Left = 184
            Top = 37
            Width = 322
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 6
            Text = '<Vazio> - N'#227'o verifica Plano de Vendas'
          end
          object PVTAB: TEdit
            Left = 160
            Top = 37
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 5
            OnExit = PVTABExit
            OnKeyPress = PVTABKeyPress
          end
          object PVTIP: TEdit
            Left = 128
            Top = 37
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 4
          end
          object CODRED: TEdit
            Left = 128
            Top = 91
            Width = 57
            Height = 19
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 10
            OnExit = CODREDExit
            OnKeyPress = CODREDKeress
          end
          object NOMRED: TEdit
            Left = 184
            Top = 91
            Width = 322
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 11
            Text = '<Vazio> - N'#227'o verifica Rede de Clientes'
          end
          object OBS: TEdit
            Left = 128
            Top = 127
            Width = 378
            Height = 19
            Ctl3D = False
            MaxLength = 50
            ParentCtl3D = False
            TabOrder = 14
          end
          object CBxConfVda: TCheckBox
            Left = 515
            Top = 13
            Width = 196
            Height = 17
            Caption = 'Solicita confirma'#231#227'o na venda'
            TabOrder = 2
          end
          object gbValmin: TGroupBox
            Left = 516
            Top = 49
            Width = 161
            Height = 42
            Caption = 'Valor M'#237'nimo por Pedido:'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 16
            Visible = False
            object VALMIN: TEdit
              Left = 16
              Top = 16
              Width = 121
              Height = 20
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '            0.00'
              OnExit = VALMINExit
            end
          end
          object CB_KIT: TCheckBox
            Left = 516
            Top = 32
            Width = 132
            Height = 17
            Caption = 'Kit Promocional'
            TabOrder = 3
            Visible = False
          end
          object CODREG: TEdit
            Left = 128
            Top = 109
            Width = 57
            Height = 19
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 12
            OnExit = CODREGExit
            OnKeyPress = CODREGKeyPress
          end
          object NOMREG: TEdit
            Left = 184
            Top = 109
            Width = 322
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 13
            Text = '<Vazio> - N'#227'o verifica Regiao do Vendedor'
          end
          object cb_codbar: TCheckBox
            Left = 516
            Top = 94
            Width = 181
            Height = 17
            Caption = 'Leitor de Codigo de Barras.'
            TabOrder = 17
          end
          object edt_nomcli: TEdit
            Left = 184
            Top = 73
            Width = 322
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 9
            Text = '<Vazio> - N'#227'o verifica Clientes'
          end
          object edt_codcli: TEdit
            Left = 128
            Top = 73
            Width = 57
            Height = 19
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 8
            OnExit = edt_codcliExit
            OnKeyPress = edt_codcliKeyPress
          end
          object edt_uf: TEdit
            Left = 128
            Top = 55
            Width = 57
            Height = 19
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 7
            OnExit = edt_ufExit
            OnKeyDown = edt_ufKeyDown
          end
          object edt_nomuf: TEdit
            Left = 185
            Top = 55
            Width = 322
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 15
            Text = '<Vazio> - N'#227'o verifica os Estados'
          end
        end
        object BBnGravar: TBitBtn
          Left = 380
          Top = 2
          Width = 100
          Height = 23
          Cursor = crHandPoint
          Caption = '&Retornar'
          Enabled = False
          TabOrder = 1
          OnClick = BBnGravarClick
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
        end
        object bbConsultar: TBitBtn
          Left = 480
          Top = 2
          Width = 100
          Height = 23
          Cursor = crHandPoint
          Caption = '&Consultar'
          TabOrder = 0
          OnClick = bbConsultarClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
        end
        object CB_PROMOCAO: TComboBox
          Left = 71
          Top = 4
          Width = 158
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 3
          OnExit = CB_PROMOCAOExit
        end
        object GB_IMPRES: TGroupBox
          Left = 1
          Top = 29
          Width = 781
          Height = 59
          Align = alBottom
          Caption = 'Impress'#227'o:'
          TabOrder = 6
          object Label9: TLabel
            Left = 7
            Top = 38
            Width = 111
            Height = 13
            Caption = 'Titulo p/Impress'#227'o:'
          end
          object Label10: TLabel
            Left = 8
            Top = 20
            Width = 231
            Height = 13
            Caption = 'Ajustar Pre'#231'os de Acordo com a Regiao:'
          end
          object BbImprimir: TBitBtn
            Left = 709
            Top = 9
            Width = 71
            Height = 43
            Cursor = crHandPoint
            Caption = '&Imprimir'
            Enabled = False
            TabOrder = 0
            OnClick = BbImprimirClick
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
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object TITULO: TEdit
            Left = 121
            Top = 35
            Width = 452
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            OnExit = TITULOExit
          end
          object CODREG_IMP: TEdit
            Left = 240
            Top = 17
            Width = 57
            Height = 19
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 2
            OnExit = CODREG_IMPExit
            OnKeyPress = CODREG_IMPKeyPress
          end
          object NOMREG_IMP: TEdit
            Left = 296
            Top = 17
            Width = 290
            Height = 19
            Color = 13565902
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 3
            Text = '<Vazio> - Mantem o Pre'#231'o informado na promo'#231#227'o'
          end
          object CB_SEMBORDAS: TCheckBox
            Left = 587
            Top = 15
            Width = 97
            Height = 17
            Caption = 'Sem Bordas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = CB_SEMBORDASClick
          end
          object CB_LINHA_LQ: TCheckBox
            Left = 587
            Top = 31
            Width = 120
            Height = 17
            Caption = 'Impressora Linha LQ'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 5
          end
        end
        object bbExcluir: TBitBtn
          Left = 581
          Top = 2
          Width = 100
          Height = 23
          Cursor = crHandPoint
          Caption = '&Excluir Tudo'
          TabOrder = 7
          OnClick = bbExcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
            993337777F777F3377F3393999707333993337F77737333337FF993399933333
            399377F3777FF333377F993339903333399377F33737FF33377F993333707333
            399377F333377FF3377F993333101933399377F333777FFF377F993333000993
            399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
            99333773FF777F777733339993707339933333773FF7FFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 391
        Width = 783
        Height = 41
        Align = alBottom
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 504
          Height = 39
          DataSource = src_ppr
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          TabOrder = 0
          OnClick = DBNavigator1Click
        end
        object bbAdquirir: TBitBtn
          Left = 639
          Top = 1
          Width = 144
          Height = 39
          Cursor = crHandPoint
          Caption = 'Adquirir Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = bbAdquirirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbAjustarDesc: TBitBtn
          Left = 505
          Top = 0
          Width = 134
          Height = 40
          Cursor = crHandPoint
          Caption = 'Ajustar Descontos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = bbAjustarDescClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
            000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
            99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
            0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
            FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
            0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
            000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
            00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
            00FF33337FFF7FF77733333300000000033F3333777777777333}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        DataSource = Src_PPR2
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 35
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLSystemInfo1: TRLSystemInfo
            Left = 1
            Top = 1
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 678
            Top = 1
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object LblEmpresa: TRLLabel
            Left = 73
            Top = 0
            Width = 566
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 18
            Width = 136
            Height = 16
            Align = faLeftBottom
            Caption = 'Relatorio de Promocao'
          end
          object RLLabel3: TRLLabel
            Left = 585
            Top = 16
            Width = 44
            Height = 16
            Caption = 'Pagina'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 630
            Top = 18
            Width = 87
            Height = 16
            Align = faRightBottom
            Info = itPageNumber
          end
        end
        object rldetalhe: TRLBand
          Left = 38
          Top = 114
          Width = 718
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object TxtCod: TRLDBText
            Left = 0
            Top = 0
            Width = 79
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PPCODPRO'
            DataSource = Src_PPR2
            Holder = LblCodigo
          end
          object TxtUnidade: TRLDBText
            Left = 79
            Top = 0
            Width = 26
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDUND'
            DataSource = Src_PPR2
            Holder = LblUnidade
          end
          object txt_preco: TRLDBText
            Left = 627
            Top = 0
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'precocalc'
            DataSource = Src_PPR2
            Holder = lblPromocao
          end
          object txtMarca: TRLDBText
            Left = 443
            Top = 0
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDMARCA'
            DataSource = Src_PPR2
            Holder = lbl_marca
          end
          object txtNome: TRLDBText
            Left = 106
            Top = 0
            Width = 337
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = Src_PPR2
            Holder = LblDesc
          end
          object RLDBText1: TRLDBText
            Left = 542
            Top = 0
            Width = 86
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'descontos'
            DataSource = Src_PPR2
            Holder = RLLabel1
          end
        end
        object RLBand_rod: TRLBand
          Left = 38
          Top = 130
          Width = 718
          Height = 16
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLBand_tit: TRLBand
          Left = 38
          Top = 73
          Width = 718
          Height = 25
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_titulo: TRLLabel
            Left = 1
            Top = 0
            Width = 716
            Height = 24
            Align = faClient
            Alignment = taCenter
          end
        end
        object RLCab_Itens: TRLBand
          Left = 38
          Top = 98
          Width = 718
          Height = 16
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object LblCodigo: TRLLabel
            Left = 0
            Top = 0
            Width = 79
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Codigo'
          end
          object LblUnidade: TRLLabel
            Left = 79
            Top = 0
            Width = 26
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Und'
          end
          object LblDesc: TRLLabel
            Left = 106
            Top = -1
            Width = 337
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Descricao'
          end
          object lbl_marca: TRLLabel
            Left = 443
            Top = 0
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Marca'
          end
          object lblPromocao: TRLLabel
            Left = 627
            Top = 0
            Width = 89
            Height = 16
            AutoSize = False
            Caption = 'Prco.Liquido'
          end
          object RLLabel1: TRLLabel
            Left = 542
            Top = 0
            Width = 86
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Descontos'
          end
        end
      end
    end
  end
  object Src_PPR2: TDataSource
    DataSet = Qr_PPR
    Left = 216
    Top = 16
  end
  object Qr_PPR: TQuery
    OnCalcFields = Qr_PPRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select'
      '  PPPROMOCAO,'
      '  PPPVTIP,'
      '  PPPVTAB,'
      '  PPCODRED,'
      '  PPFLAG,'
      '  PPCODPRO,'
      '  PPGRADE,'
      '  PPDATINI,'
      '  PPDATFIN,'
      '  PPCODGRU,'
      '  PPPCOVDA,'
      '  PPDESC_1,'
      '  PPDESC_2,'
      '  PPDESC_3,'
      '  PPCONFVDA,'
      '  PPCOMIS,'
      '  PPQTDMIN,'
      '  PPVALMIN,'
      '  PPDESC_F,'
      '  PPPRIOR,'
      '  PDNOME,'
      '  PDUND,'
      '  PDPRECO1,'
      '  PDMARCA'
      ''
      '  FROM CADPPR, CADPRO  WHERE'
      '  PDCODPRO = PPCODPRO'
      '  AND PDCODPRO= 0')
    Left = 272
    Top = 16
    object Qr_PPRPPPROMOCAO: TStringField
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 100
    end
    object Qr_PPRPPPVTIP: TStringField
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Qr_PPRPPPVTAB: TStringField
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 10
    end
    object Qr_PPRPPCODRED: TFloatField
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Qr_PPRPPFLAG: TStringField
      FieldName = 'PPFLAG'
      Origin = 'SG_ASSOC.CADPPR.PPFLAG'
      Size = 1
    end
    object Qr_PPRPPCODPRO: TFloatField
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Qr_PPRPPDATINI: TDateTimeField
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Qr_PPRPPDATFIN: TDateTimeField
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Qr_PPRPPCODGRU: TFloatField
      FieldName = 'PPCODGRU'
      Origin = 'SG_ASSOC.CADPPR.PPCODGRU'
    end
    object Qr_PPRPPPCOVDA: TFloatField
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Qr_PPRPPDESC_1: TFloatField
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Qr_PPRPPDESC_2: TFloatField
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Qr_PPRPPDESC_3: TFloatField
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Qr_PPRPPCONFVDA: TStringField
      FieldName = 'PPCONFVDA'
      Origin = 'SG_ASSOC.CADPPR.PPCONFVDA'
      Size = 1
    end
    object Qr_PPRPPCOMIS: TFloatField
      FieldName = 'PPCOMIS'
      Origin = 'SG_ASSOC.CADPPR.PPCOMIS'
    end
    object Qr_PPRPPQTDMIN: TFloatField
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Qr_PPRPPVALMIN: TFloatField
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Qr_PPRPPDESC_F: TFloatField
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Qr_PPRPPPRIOR: TFloatField
      FieldName = 'PPPRIOR'
      Origin = 'SG_ASSOC.CADPPR.PPPRIOR'
    end
    object Qr_PPRPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_PPRPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PPRPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_PPRdescontos: TStringField
      FieldKind = fkCalculated
      FieldName = 'descontos'
      Calculated = True
    end
    object Qr_PPRPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_PPRprecocalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'precocalc'
      Calculated = True
    end
    object Qr_PPRPPGRADE: TStringField
      FieldName = 'PPGRADE'
      Origin = 'SG_ASSOC.CADPPR.PPGRADE'
    end
    object Qr_PPRPPCODCLI: TFloatField
      FieldName = 'PPCODCLI'
    end
    object Qr_PPRPPID_ANO: TFloatField
      FieldName = 'PPID_ANO'
    end
    object Qr_PPRPPID: TFloatField
      FieldName = 'PPID'
    end
    object Qr_PPRPPUF: TStringField
      FieldName = 'PPUF'
      Size = 2
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText(Word)'
    Left = 692
    Top = 160
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 612
    Top = 192
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 708
    Top = 288
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 676
    Top = 192
  end
  object matricial: TRLDraftFilter
    Left = 484
    Top = 160
  end
  object U_PPR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPPR'
      'set'
      '  PPCODEMP = :PPCODEMP,'
      '  PPPROMOCAO = :PPPROMOCAO,'
      '  PPPVTIP = :PPPVTIP,'
      '  PPPVTAB = :PPPVTAB,'
      '  PPCODRED = :PPCODRED,'
      '  PPCODREG = :PPCODREG,'
      '  PPFLAG = :PPFLAG,'
      '  PPCODPRO = :PPCODPRO,'
      '  PPGRADE = :PPGRADE,'
      '  PPDATINI = :PPDATINI,'
      '  PPDATFIN = :PPDATFIN,'
      '  PPCODGRU = :PPCODGRU,'
      '  PPPCOVDA = :PPPCOVDA,'
      '  PPDESC_1 = :PPDESC_1,'
      '  PPDESC_2 = :PPDESC_2,'
      '  PPDESC_3 = :PPDESC_3,'
      '  PPCONFVDA = :PPCONFVDA,'
      '  PPCOMIS = :PPCOMIS,'
      '  PPQTDMIN = :PPQTDMIN,'
      '  PPVALMIN = :PPVALMIN,'
      '  PPOBS = :PPOBS,'
      '  PPKIT = :PPKIT,'
      '  PPDESC_F = :PPDESC_F,'
      '  PPPRIOR = :PPPRIOR,'
      '  PPDATHOR_ALT = :PPDATHOR_ALT'
      '  ,PPDATHOR_INC = :PPDATHOR_INC'
      '  ,PPCODCLI = :PPCODCLI'
      '  ,PPID_ANO = :PPID_ANO'
      '  ,PPID =:PPID'
      '  ,PPUF =:PPUF'
      ''
      ''
      'where'
      '  PPCODEMP = :OLD_PPCODEMP and'
      '  PPPROMOCAO = :OLD_PPPROMOCAO and'
      '  PPCODPRO = :OLD_PPCODPRO')
    InsertSQL.Strings = (
      'insert into CADPPR'
      '  (PPCODEMP, PPPROMOCAO, PPPVTIP, PPPVTAB, PPCODRED, PPCODREG, '
      'PPFLAG, '
      '   PPCODPRO, PPGRADE, PPDATINI, PPDATFIN, PPCODGRU, PPPCOVDA, '
      'PPDESC_1,'
      '   PPDESC_2, PPDESC_3, PPCONFVDA, PPCOMIS, PPQTDMIN, PPVALMIN,'
      'PPOBS, PPKIT,'
      '   PPDESC_F, PPPRIOR'
      ',PPDATHOR_ALT,PPDATHOR_INC,PPCODCLI'
      ',PPID_ANO,PPID'
      ',PPUF  )'
      'values'
      
        '  (:PPCODEMP, :PPPROMOCAO, :PPPVTIP, :PPPVTAB, :PPCODRED, :PPCOD' +
        'REG,'
      ':PPFLAG,'
      
        '   :PPCODPRO, :PPGRADE, :PPDATINI, :PPDATFIN, :PPCODGRU, :PPPCOV' +
        'DA,'
      ':PPDESC_1,'
      
        '   :PPDESC_2, :PPDESC_3, :PPCONFVDA, :PPCOMIS, :PPQTDMIN, :PPVAL' +
        'MIN,'
      ':PPOBS,'
      '   :PPKIT, :PPDESC_F, :PPPRIOR'
      ',:PPDATHOR_ALT,:PPDATHOR_INC ,:PPCODCLI'
      ',:PPID_ANO ,:PPID'
      ',:PPUF )'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from CADPPR'
      'where'
      '  PPCODEMP = :OLD_PPCODEMP and'
      '  PPPROMOCAO = :OLD_PPPROMOCAO and'
      '  PPCODPRO = :OLD_PPCODPRO')
    Left = 634
    Top = 418
  end
  object src_ppr: TDataSource
    DataSet = Tb_PPR
    Left = 606
    Top = 418
  end
  object Tb_PPR: TQuery
    CachedUpdates = True
    AfterInsert = Tb_PPRAfterInsert
    BeforePost = Tb_PPRBeforePost
    AfterPost = c
    BeforeDelete = Tb_PPRBeforeDelete
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PPCODEMP,'
      '  PPPROMOCAO,'
      '  PPPVTIP,'
      '  PPPVTAB,'
      '  PPCODRED,'
      '  PPCODREG,'
      '  PPFLAG,'
      '  PPCODPRO,'
      '  PPGRADE,'
      '  PPDATINI,'
      '  PPDATFIN,'
      '  PPCODGRU,'
      '  PPPCOVDA,'
      '  PPDESC_1,'
      '  PPDESC_2,'
      '  PPDESC_3,'
      '  PPCONFVDA,'
      '  PPCOMIS,'
      '  PPQTDMIN,'
      '  PPVALMIN,'
      '  PPOBS,'
      '  PPKIT,'
      '  PPDESC_F,'
      '  PDNOME,'
      '  PPPRIOR'
      ' from CADPPR,CADPRO where'
      'PPCODEMP      like :CODEMP and'
      'PPPROMOCAO like :PROMOCAO and'
      'PPCODPRO      like :CODPRO'
      'and PDCODEMP  like :CODEMP'
      'and PDCODPRO=PPCODPRO'
      'ORDER BY PDNOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PPR
    Left = 577
    Top = 418
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PROMOCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object Tb_PPRPPCODEMP: TFloatField
      FieldName = 'PPCODEMP'
      Origin = 'SG_ASSOC.CADPPR.PPCODEMP'
    end
    object Tb_PPRPPPROMOCAO: TStringField
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 100
    end
    object Tb_PPRPPPVTIP: TStringField
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Tb_PPRPPPVTAB: TStringField
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 2
    end
    object Tb_PPRPPCODRED: TFloatField
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Tb_PPRPPFLAG: TStringField
      FieldName = 'PPFLAG'
      Origin = 'SG_ASSOC.CADPPR.PPFLAG'
      Size = 1
    end
    object Tb_PPRPPCODPRO: TFloatField
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Tb_PPRPPDATINI: TDateTimeField
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Tb_PPRPPDATFIN: TDateTimeField
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Tb_PPRPPCODGRU: TFloatField
      FieldName = 'PPCODGRU'
      Origin = 'SG_ASSOC.CADPPR.PPCODGRU'
    end
    object Tb_PPRPPPCOVDA: TFloatField
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Tb_PPRPPDESC_1: TFloatField
      DisplayLabel = '% D1'
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Tb_PPRPPDESC_2: TFloatField
      DisplayLabel = '% D2'
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Tb_PPRPPDESC_3: TFloatField
      DisplayLabel = '% D3'
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Tb_PPRPPCONFVDA: TStringField
      FieldName = 'PPCONFVDA'
      Origin = 'SG_ASSOC.CADPPR.PPCONFVDA'
      Size = 1
    end
    object Tb_PPRPPCOMIS: TFloatField
      FieldName = 'PPCOMIS'
      Origin = 'SG_ASSOC.CADPPR.PPCOMIS'
    end
    object Tb_PPRPPQTDMIN: TFloatField
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Tb_PPRPPVALMIN: TFloatField
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Tb_PPRPPOBS: TStringField
      FieldName = 'PPOBS'
      Origin = 'SG_ASSOC.CADPPR.PPOBS'
      Size = 50
    end
    object Tb_PPRPPKIT: TStringField
      FieldName = 'PPKIT'
      Origin = 'SG_ASSOC.CADPPR.PPKIT'
      Size = 1
    end
    object Tb_PPRPPDESC_F: TFloatField
      DisplayLabel = '%Desc.Fin'
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Tb_PPRPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_PPRPPPRIOR: TFloatField
      FieldName = 'PPPRIOR'
      Origin = 'SG_ASSOC.CADPPR.PPPRIOR'
    end
    object Tb_PPRPPCODREG: TFloatField
      FieldName = 'PPCODREG'
      Origin = 'SG_ASSOC.CADPPR.PPCODREG'
    end
    object Tb_PPRPPGRADE: TStringField
      FieldName = 'PPGRADE'
      Origin = 'SG_ASSOC.CADPPR.PPGRADE'
    end
    object Tb_PPRPPDATHOR_ALT: TDateTimeField
      FieldName = 'PPDATHOR_ALT'
    end
    object Tb_PPRPPDATHOR_INC: TDateTimeField
      FieldName = 'PPDATHOR_INC'
    end
    object Tb_PPRPPCODCLI: TFloatField
      FieldName = 'PPCODCLI'
    end
    object Tb_PPRPPID_ANO: TFloatField
      FieldName = 'PPID_ANO'
    end
    object Tb_PPRPPID: TFloatField
      FieldName = 'PPID'
    end
    object Tb_PPRPPUF: TStringField
      FieldName = 'PPUF'
      Size = 2
    end
  end
end
