object Frm_AMVS: TFrm_AMVS
  Left = 187
  Top = 160
  Width = 1151
  Height = 576
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Movimento de Produtos Controlados/Psicotr'#243'picos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 1143
    Height = 545
    ActivePage = tsConfiguracao
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Geral'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1135
        Height = 517
        Align = alClient
        BorderWidth = 3
        TabOrder = 0
        object Label7: TLabel
          Left = 208
          Top = 153
          Width = 62
          Height = 13
          Caption = 'Total Saidas:'
        end
        object Label8: TLabel
          Left = 13
          Top = 153
          Width = 72
          Height = 13
          Caption = 'Total Entradas:'
        end
        object Label10: TLabel
          Left = 423
          Top = 153
          Width = 36
          Height = 13
          Caption = 'Perdas:'
        end
        object Label11: TLabel
          Left = 633
          Top = 151
          Width = 30
          Height = 13
          Caption = 'Saldo:'
        end
        object PageControl1: TPageControl
          Left = 4
          Top = 180
          Width = 1127
          Height = 333
          ActivePage = tsFiltgos
          Align = alBottom
          TabOrder = 0
          object tsFiltgos: TTabSheet
            Caption = 'Filtros'
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1119
              Height = 305
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel3: TPanel
                Left = 1001
                Top = 0
                Width = 118
                Height = 305
                Align = alRight
                TabOrder = 1
                object sb_SalvarPadrao: TSpeedButton
                  Left = 4
                  Top = 182
                  Width = 110
                  Height = 30
                  Hint = 'Salva as configura'#231#245'es como padr'#227'o'
                  Caption = '&Salvar Padr'#227'o'
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
                object BBAplicar: TBitBtn
                  Left = 4
                  Top = 67
                  Width = 110
                  Height = 30
                  Caption = '&Aplicar'
                  TabOrder = 0
                  OnClick = BBAplicarClick
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
                object BBnMMag: TBitBtn
                  Left = 4
                  Top = 96
                  Width = 110
                  Height = 30
                  Caption = '&Meio Magn'#233'tico'
                  TabOrder = 1
                  OnClick = BBnMMagClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
                    3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
                    700077337F3333373777887007333337007733F773F333337733700070333333
                    077037773733333F7F37703707333300080737F373333377737F003333333307
                    78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
                    078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
                    70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
                    3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
                    33337F73FF737773333307800077033333337337773373333333}
                  NumGlyphs = 2
                end
                object bbImprimir: TBitBtn
                  Left = 4
                  Top = 125
                  Width = 110
                  Height = 30
                  Caption = '&Imprimir'
                  TabOrder = 2
                  OnClick = bbImprimirClick
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
                object bbFechar: TBitBtn
                  Left = 5
                  Top = 212
                  Width = 110
                  Height = 30
                  Caption = '&Fechar'
                  TabOrder = 4
                  OnClick = bbFecharClick
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
                object bbAnvisa: TBitBtn
                  Left = 4
                  Top = 154
                  Width = 110
                  Height = 30
                  Caption = '&ANVISA'
                  TabOrder = 3
                  OnClick = bbAnvisaClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                    555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
                    055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
                    005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
                    B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
                    305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
                    305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
                    30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
                    3055577777555557F7F555000555555999555577755555577755}
                  NumGlyphs = 2
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 1001
                Height = 305
                Align = alClient
                Color = clMoneyGreen
                TabOrder = 0
                object Label5: TLabel
                  Left = 4
                  Top = 8
                  Width = 101
                  Height = 13
                  Caption = 'Per'#237'odo..>>> Inicial..:'
                end
                object Label6: TLabel
                  Left = 200
                  Top = 8
                  Width = 31
                  Height = 13
                  Caption = 'Final..:'
                end
                object Label4: TLabel
                  Left = 333
                  Top = 33
                  Width = 323
                  Height = 13
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Tipos de Controles'
                  Color = 16776176
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object lbl_ordem: TLabel
                  Left = 9
                  Top = 164
                  Width = 100
                  Height = 13
                  Caption = 'Ordem de Impress'#227'o:'
                  Visible = False
                end
                object lbl_modelo: TLabel
                  Left = 69
                  Top = 189
                  Width = 38
                  Height = 13
                  Caption = 'Modelo:'
                end
                object Label9: TLabel
                  Left = 4
                  Top = 246
                  Width = 40
                  Height = 13
                  Caption = 'Produto:'
                end
                object Label12: TLabel
                  Left = 4
                  Top = 27
                  Width = 101
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Termo Abertura:'
                end
                object Label13: TLabel
                  Left = 200
                  Top = 27
                  Width = 31
                  Height = 13
                  Caption = 'Final..:'
                end
                object Label14: TLabel
                  Left = 340
                  Top = 9
                  Width = 81
                  Height = 13
                  Caption = 'N'#250'mero do Livro:'
                end
                object RGTIPO: TRadioGroup
                  Left = 9
                  Top = 121
                  Width = 321
                  Height = 38
                  Caption = ' Tipo Movimento '
                  Columns = 3
                  ItemIndex = 2
                  Items.Strings = (
                    '&Saidas'
                    '&Entradas'
                    '&Ambas')
                  TabOrder = 5
                  OnClick = RGTIPOClick
                end
                object GroupBox1: TGroupBox
                  Left = 8
                  Top = 51
                  Width = 321
                  Height = 68
                  Caption = ' Arquivo Meio Magn'#233'tico '
                  TabOrder = 4
                  object Label1: TLabel
                    Left = 6
                    Top = 19
                    Width = 48
                    Height = 13
                    Caption = 'Destino...:'
                  end
                  object Label2: TLabel
                    Left = 4
                    Top = 41
                    Width = 48
                    Height = 13
                    Caption = 'Arquivo 1:'
                  end
                  object Label3: TLabel
                    Left = 168
                    Top = 41
                    Width = 48
                    Height = 13
                    Caption = 'Arquivo 2:'
                  end
                  object mDestino: TEdit
                    Left = 54
                    Top = 15
                    Width = 262
                    Height = 21
                    MaxLength = 41
                    TabOrder = 0
                    Text = 'C:\SGE\'
                  end
                  object mArq1: TEdit
                    Left = 54
                    Top = 38
                    Width = 99
                    Height = 21
                    Enabled = False
                    TabOrder = 1
                  end
                  object mArq2: TEdit
                    Left = 217
                    Top = 38
                    Width = 99
                    Height = 21
                    Enabled = False
                    TabOrder = 2
                  end
                end
                object RG_CODCON: TCheckListBox
                  Left = 334
                  Top = 48
                  Width = 323
                  Height = 252
                  Cursor = crHandPoint
                  Hint = 'Emitir Somente Os Selecionados'
                  Color = 16776176
                  Columns = 2
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ItemHeight = 16
                  Items.Strings = (
                    'A1'
                    'A2'
                    'A3'
                    'B1'
                    'B2'
                    'B3')
                  ParentCtl3D = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Style = lbOwnerDrawFixed
                  TabOrder = 9
                  OnClick = RG_CODCONClick
                end
                object CB_ORDEM: TComboBox
                  Left = 113
                  Top = 160
                  Width = 215
                  Height = 21
                  ItemHeight = 13
                  ItemIndex = 1
                  TabOrder = 6
                  Text = 'Descri'#231'ao do Produto+Data NF'
                  Visible = False
                  OnClick = CB_ORDEMClick
                  Items.Strings = (
                    'Raz'#227'o Social+Numero da Nota'
                    'Descri'#231'ao do Produto+Data NF')
                end
                object CB_MODELO: TComboBox
                  Left = 113
                  Top = 183
                  Width = 215
                  Height = 21
                  ItemHeight = 13
                  ItemIndex = 0
                  TabOrder = 7
                  Text = 'Mapa Entrada+Saida'
                  OnClick = CB_MODELOClick
                  Items.Strings = (
                    'Mapa Entrada+Saida'
                    'Modelo 01'
                    'Modelo 02'
                    'Modelo 03')
                end
                object CODPRO: TEdit
                  Left = 45
                  Top = 243
                  Width = 59
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 11
                  OnChange = CODPROChange
                  OnExit = CODPROExit
                  OnKeyPress = CODPROKeyPress
                end
                object lbx_codpro: TListBox
                  Left = 103
                  Top = 243
                  Width = 227
                  Height = 42
                  Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
                  Color = 13828095
                  Ctl3D = False
                  ItemHeight = 13
                  ParentCtl3D = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 12
                  OnKeyDown = lbx_codproKeyDown
                end
                object OMITIR_PRO: TCheckBox
                  Left = 43
                  Top = 265
                  Width = 58
                  Height = 17
                  Caption = 'Omitir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 13
                  OnClick = OMITIR_PROClick
                end
                object CB_TERMOS: TCheckBox
                  Left = 114
                  Top = 223
                  Width = 92
                  Height = 17
                  Caption = 'Emitir Termos'
                  TabOrder = 10
                end
                object CB_TITNEG: TCheckBox
                  Left = 213
                  Top = 224
                  Width = 115
                  Height = 17
                  Caption = 'Titulo Negrito'
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 14
                end
                object CB_SEPPAG: TCheckBox
                  Left = 115
                  Top = 204
                  Width = 197
                  Height = 17
                  Caption = 'Separar Pagina por Produdos'
                  Checked = True
                  State = cbChecked
                  TabOrder = 8
                  OnClick = CB_SEPPAGClick
                end
                object cb_InibirNF_Complementar: TCheckBox
                  Left = 43
                  Top = 287
                  Width = 201
                  Height = 17
                  Caption = 'Inibir Nota Complementar'
                  TabOrder = 15
                  OnClick = cb_InibirNF_ComplementarClick
                end
                object MDT1: TDateEdit
                  Left = 109
                  Top = 6
                  Width = 90
                  Height = 18
                  Ctl3D = False
                  NumGlyphs = 2
                  ParentCtl3D = False
                  TabOrder = 0
                  OnExit = MDT1Exit
                end
                object MDT2: TDateEdit
                  Left = 237
                  Top = 6
                  Width = 90
                  Height = 18
                  Ctl3D = False
                  NumGlyphs = 2
                  ParentCtl3D = False
                  TabOrder = 1
                  OnExit = MDT2Exit
                end
                object edt_datini_abert: TDateEdit
                  Left = 109
                  Top = 25
                  Width = 90
                  Height = 18
                  Ctl3D = False
                  NumGlyphs = 2
                  ParentCtl3D = False
                  TabOrder = 2
                  OnExit = MDT1Exit
                end
                object edt_datfin_abert: TDateEdit
                  Left = 237
                  Top = 25
                  Width = 90
                  Height = 18
                  Ctl3D = False
                  NumGlyphs = 2
                  ParentCtl3D = False
                  TabOrder = 3
                  OnExit = MDT2Exit
                end
                object edt_numlivro: TEdit
                  Left = 427
                  Top = 6
                  Width = 99
                  Height = 19
                  Ctl3D = False
                  ParentCtl3D = False
                  TabOrder = 16
                  OnExit = edt_numlivroExit
                end
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Cabecalho'
            ImageIndex = 1
            object sbSavarPadrao2: TSpeedButton
              Left = 271
              Top = 156
              Width = 110
              Height = 22
              Hint = 'Salva as configura'#231#245'es como padr'#227'o'
              Caption = '&Salvar Padr'#227'o'
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
              OnClick = sbSavarPadrao2Click
            end
            object StaticText1: TStaticText
              Left = 145
              Top = 24
              Width = 433
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BevelKind = bkSoft
              Caption = 'Informa'#231#245'es do Cabecalho Quando Entrada'
              Color = 8454016
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object txt_cabEntlinha01: TEdit
              Left = 145
              Top = 40
              Width = 432
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              Text = 'RELACAO MENSAL DE ENTRADA DE MEDICAMENTOS'
            end
            object txt_cabEntlinha02: TEdit
              Left = 145
              Top = 58
              Width = 432
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              Text = 'SUJEITO A CONTROLE ESPECIAL'
            end
            object StaticText2: TStaticText
              Left = 145
              Top = 84
              Width = 433
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BevelKind = bkSoft
              Caption = 'Informa'#231#245'es do Cabecalho Quando Saida'
              Color = 16735838
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object txt_cabSailinha01: TEdit
              Left = 145
              Top = 100
              Width = 432
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              Text = 'RELACAO MENSAL DE VENDAS DE MEDICAMENTOS'
            end
            object txt_cabSailinha02: TEdit
              Left = 145
              Top = 118
              Width = 432
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              Text = 'SUJEITO A CONTROLE ESPECIAL'
            end
          end
          object tsmodelo03: TTabSheet
            Caption = 'Modelo 03'
            ImageIndex = 2
          end
          object tsTipoped: TTabSheet
            Caption = 'Outros Filtros'
            ImageIndex = 3
            object StaticText10: TStaticText
              Left = 6
              Top = 2
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
              TabOrder = 0
            end
            object CLBNivel: TCheckListBox
              Left = 5
              Top = 22
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
              TabOrder = 1
              OnClick = CLBNivelClick
            end
          end
          object tsConfigMaster: TTabSheet
            Caption = 'Configura'#231#227'o Master'
            ImageIndex = 4
            object GroupBox2: TGroupBox
              Left = 8
              Top = 24
              Width = 297
              Height = 177
              Caption = 'Carimbo CNPJ:'
              TabOrder = 0
              object logosis: TImage
                Left = 2
                Top = 15
                Width = 293
                Height = 160
                Align = alClient
                Stretch = True
              end
            end
            object bbAdquirir: TBitBtn
              Left = 315
              Top = 28
              Width = 207
              Height = 50
              Hint = 'Busca a Imagem'
              Caption = '&Adquirir Imagem'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bbAdquirirClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337FF3333333333330003333333333333777F333333333333080333
                3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
                33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
                B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
                BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
                B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
                3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
                333333333337F33333333333333B333333333333333733333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BBGRAVAR: TBitBtn
              Left = 315
              Top = 91
              Width = 207
              Height = 50
              Cursor = crHandPoint
              Hint = 'Grava o Item que Esta Sendo Editado'
              Caption = '&Gravar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = BBGRAVARClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object bbExcImagem: TBitBtn
              Left = 315
              Top = 149
              Width = 207
              Height = 50
              Hint = 'Limpa a Imagem'
              Caption = '&Excluir a figura'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bbExcImagemClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                555557777F777555F55500000000555055557777777755F75555005500055055
                555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                5555577FF77577FF555555005050110555555577F757777FF555555505099910
                555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                3055577F75F77777575F55005055090B030555775755777575755555555550B0
                B03055555F555757575755550555550B0B335555755555757555555555555550
                BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                50BB555555555555575F555555555555550B5555555555555575}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
          end
        end
        object DBGrid2: TDBGrid
          Left = 4
          Top = 4
          Width = 1127
          Height = 141
          Align = alTop
          DataSource = SRC_NOTLOTES
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'DATANF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAMOV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO_SOC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SAIDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASS_RESP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSNF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLUNA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO_ATU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO_INI'
              Visible = True
            end>
        end
        object edt_totsai: TCurrencyEdit
          Left = 275
          Top = 150
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 2
        end
        object edt_totent: TCurrencyEdit
          Left = 90
          Top = 150
          Width = 110
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 3
        end
        object edt_totperdas: TCurrencyEdit
          Left = 475
          Top = 149
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 4
        end
        object edt_saldo: TCurrencyEdit
          Left = 683
          Top = 150
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 5
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configuracao'
      ImageIndex = 1
      object rl_modelo03: TRLReport
        Left = 3
        Top = 1
        Width = 1123
        Height = 794
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        NextReport = RLReport_encerramento
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        BeforePrint = rl_modelo03BeforePrint
        object RLBand_CAB: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 364
          BandType = btHeader
          object RLLabel1: TRLLabel
            Left = 270
            Top = 24
            Width = 229
            Height = 14
            Caption = 'SECRETARIA DE SA'#218'DE....................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLImage1: TRLImage
            Left = 225
            Top = 14
            Width = 39
            Height = 46
            Picture.Data = {
              0A544A504547496D616765050A0000FFD8FFE000104A46494600010101006000
              600000FFE1006E45786966000049492A0008000000010069870400010000001A
              000000000000000100869202003A0000002C0000000000000043524541544F52
              3A2067642D6A7065672076312E3020287573696E6720494A47204A5045472076
              3632292C207175616C697479203D2039300A00FFDB0043000806060706050807
              07070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E272022
              2C231C1C2837292C30313434341F27393D38323C2E333432FFDB004301090909
              0C0B0C180D0D1832211C21323232323232323232323232323232323232323232
              3232323232323232323232323232323232323232323232323232323232FFC000
              11080040004003012200021101031101FFC4001F000001050101010101010000
              0000000000000102030405060708090A0BFFC400B51000020103030204030505
              04040000017D01020300041105122131410613516107227114328191A1082342
              B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
              4445464748494A535455565758595A636465666768696A737475767778797A83
              8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
              B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
              F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102
              030405060708090A0BFFC400B511000201020404030407050404000102770001
              02031104052131061241510761711322328108144291A1B1C109233352F01562
              72D10A162434E125F11718191A262728292A35363738393A434445464748494A
              535455565758595A636465666768696A737475767778797A8283848586878889
              8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
              C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
              FFDA000C03010002110311003F00F7CC52F6A6D676BF7D258698678A558983A8
              DCD8C63BF5A8A9354E2E6FA0D2BBB13DE6A969612471DCC9B0C80907048C0F5C
              7D6B26EBC570DB6A3B0207B455F9A5079CF5C8ED815E5DE27F1CDC49A986B696
              1B854876B4BC60B738C63FBBD7DC9AC0BB371A668B716D7174B2497EBE639121
              6DB1E0E493D32C481C7A1E78AF36A626B4EDC9A5DAB77F3BFE64C6B525371776
              A29F33E8BFCEFB2F33DB2CFC616D7979110812CE54056563CE480413E839AD9B
              4D56CEFA6921B797CC641B8F040C671C7AD7966AF69736175359DB4AF06E5373
              66C83828C46F8F0481F2B60F1C80C3DEB0E3F1CDFE9DAAC7736A5046C17CC8E3
              F9801C86553E8460F3DC0ACF058F9D6846A2774F5F3F434C64A961A569E89ECF
              FAFC4F7BDDCF4A33C631595A05FB6A3A719DAE1273E6300E98C11DB18ED5A9C5
              7AD4E6AA414D7525AB3B0E27193ED5E2BE3A2F77AE35A4174AB6B39255DF1B64
              20838DEC40C0E38CD7B1DEC76F2D9CE974CAB0143E63336D0ABDCE7B62BE75D7
              B52964D7AE919243046FE4985C6D2EAA783FECB770DDB23AD716363524E2A1D3
              5FE97F5F222A55A34E36ADB4B4EBF8DB5B792372DFC3175A15BADF5E259F924A
              A8F3190B31E836E148CF3D7701DCF4A9A1827BEBF6FB3216BC78CBB08C804280
              3F8B20F1F373BBE6CE401D6B3745B79121FDD34AF048C5E3750CB95DA72DB573
              B4852D9EDC75C62A2BC8A687CBB9778CBCE19C2C720DCB824608FE135DB91E5E
              AAC5CEA4939BBD9DBE4924EFD9DDEFB2D0F2B32C64E9A5050B455AE936FB6B77
              7BEEAC5F8AFF00ED0432C8CCC84C891B962A090D9C0249E8557218600C90D583
              AC5BC06FA495C4ABE6BB112C72A382738231800907BE4E783DEB4F7DA591BB86
              15FB64B94FB2DD2168C210724EC3D73C0C1ADFB1BB9F4EB8BA305AF9D70CA890
              34885BCAFBFF0037CD8CFC88B80A70703918245E7985861693C4528EBA5B657D
              52D74FEF2DD5F4688CBAA54C535879B4FD6ED2DDF46BB3D9DB523F04CF1DA5D5
              B58DE79F0EC944AAF2C663C21E40EBEA18FD326BD9D4865041041E722BE651A8
              DF5E6AF6F716FE64B7266FDD23E5D99DB8C9C632C7E9CE318C002BE93D3E182D
              EC618AD98342A8363039DC3D7F1AF3F0309C2FCFD75F99EB52C4D2ACB9692D23
              A2F3FBF5F96BA12CD0C7342D1B83B58738247EA2BC0BE20456B6BAFBD94506CF
              29B22E030CBAE3EE9F420E47B815ECBE21F125BF87A2592E2290EE194C0E1F04
              6E507FBD8C900F5C572FE38D13C2B77A3AEBF3A2A172BB6E2D9B69941E7A01F3
              1C64F4CF06BAABE1A524AA28DF7F57E488AD51B8B853924D59EB6B7CEE99C1F8
              6A1BCD7B759B1899943C9179D18600A05DAA41ED97FD696E6DA299B7873131EC
              EE1B77DEE77701880BCB2F0491C03D600D2E84B73656AF1C62F1088A76978113
              C87918C939558C671EBDEA7F09C76CFAB59C6049340F771C332CA42A924F4F2C
              123B1E493F8572E578CC4D2AB354D5E37D1689AEFABBA77D3DDB377575630C66
              1294E14E9D592BDB57BB6F75A2D5593DDB5A77D89A38A196E61315BAF9CA8AA2
              2B663B9880097C9DD82437523008E8718ACC9B5043A66A22DCC69E5089964450
              BB999B920638FB8B8FA67BD6C49AEDC6873B5C5B4B2430811A32AA87477D80F3
              1923D4F20AFD4D645CEDD66F6E5B4D8638DEEE2CCB1090045757562C09C10A46
              E27238E7A8A330C6626A5554EB42D1D1DF9AF7D76764ADA3765F37AB43A185A7
              4D4BD8CD395A5756B35A6EAFBEAAD757F96A33C236925FF8A2D608208951A43B
              CB292B1AB7078047B803DF9E95F43DBC11DB4090C2BB234180B5E5DE01F09787
              E3B57F11DC5F0BD4B776DBE6C5B2388A8077107273D08CE3AF4AEEFC3FE25B6F
              10C6ED6D1C80A025F2384E485527FBC40CE074AEBA387924EA38FE1AAF26183B
              D3A6A9CDEAEEF75FA7FC134354D32D757D3E5B2BC4DF0C839C7041EC41EC4579
              26AFA35F787258AC2FD5A7D384A5EDAE114603107246780480328700F5041E6B
              DA2A39A08AE2278A68D248DC6191D432B0F706B7E6972385F4FE97F5FA1B55A1
              19BE6EA7CE53CB1BC2BA74F397B585B7A00021E72488CB29299E091EB5A30436
              91CA82C8DCC01766D2CAAD210AC09CC91F20E738216BD1B54F861A5DD0636134
              965939F2D97CD8FA63A1391C7A1A7683F0EECB4ED32EA0D42DEC6F279642D1B9
              84E14630073CFAF1FCEB39D18CE2DDECFEFBFCF4B7AEAD7491853A7529D68CAD
              7B75DB6DBE5F8791E70F0D8CCC56E45CCB0333B6D863C14563C6D924E7230A32
              57A0ACB06DAD7CF86CA43124F1EC76671290B9C9DEC146071CE00E83AF35EB7A
              EFC3CB0D4B4B860B1B6B2B3B94943BC82238618208E39EE3F2A6699F0C34BB42
              1AFA792F0FFCF355F2A33F500E4FE7554E8538414B9AEFB5ACFE6F5BFAEFAEFA
              13569D5A95DBE55DEF7BFF00C15F9791C768BA35E78899EC74D0D0E9E5D4DDDD
              3A81B8AF4040E32327080F04E49E735EBBA56976BA3E9D15959A148A31DF92C7
              B927B935661821B6856182248A28C6123450AAA3D001D2A43FD2B6A95E538469
              F45FD5FF00AD8DA861614A4E7BB7FD5BFADCFFD9}
            Stretch = True
          end
          object RLLabel2: TRLLabel
            Left = 270
            Top = 39
            Width = 230
            Height = 14
            Caption = 'Autoridade Sanit'#225'ria...........................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 226
            Top = 66
            Width = 284
            Height = 28
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '                       RELA'#199#195'O MENSAL DE VENDAS DE '
              '        MEDICAMENTOS SUJEITOS A CONTROLE ESPECIAL')
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 226
            Top = 96
            Width = 284
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '( RMV )'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 226
            Top = 112
            Width = 284
            Height = 51
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '......................................................'
              'IND'#218'STRIA / DISTRIBUIDORA'
              '......................................................')
            ParentFont = False
            SecondHoldStyle = hsCopySize
          end
          object rl_mesano: TRLLabel
            Left = 830
            Top = 120
            Width = 146
            Height = 21
            AutoSize = False
            Caption = 'M'#202'S/ANO ____/_____.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCAB_CARCNPJ: TRLMemo
            Left = 5
            Top = 15
            Width = 185
            Height = 166
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              '.')
            Visible = False
          end
          object RLLabel5: TRLLabel
            Left = 4
            Top = 171
            Width = 110
            Height = 10
            Caption = '-----(Carimbo do C.N.P.J).........'
          end
          object RLMemo5: TRLMemo
            Left = 816
            Top = 5
            Width = 162
            Height = 106
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              ''
              ''
              ''
              ' CARIMBO DA VISA')
            ParentFont = False
          end
          object rl_email: TRLLabel
            Left = 6
            Top = 272
            Width = 435
            Height = 17
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'E-mail......: Atendimento_intersysnet@hotmail.com'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_telefone: TRLLabel
            Left = 6
            Top = 256
            Width = 435
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Telefone...: (62) 3247-1560 - (62) 3247-1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_cep: TRLLabel
            Left = 6
            Top = 240
            Width = 435
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CEP .......: 74.000-000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_empresa: TRLLabel
            Left = 6
            Top = 192
            Width = 435
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Empresa..: Intersys - Sistemas de Gest'#227'o Empresarial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_ender: TRLLabel
            Left = 6
            Top = 208
            Width = 435
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Endere'#231'o.: Av. C-8 n'#186' 477 Setor Sudoeste '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_cidade: TRLLabel
            Left = 6
            Top = 224
            Width = 435
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Cidade.....: Goi'#226'nia - GO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_autfun: TRLLabel
            Left = 678
            Top = 192
            Width = 342
            Height = 17
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Autoriza'#231#227'o de Funcionamento N'#186'...:_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_licenfun: TRLLabel
            Left = 678
            Top = 209
            Width = 342
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Licen'#231'a de Funcionamento       N'#186'...:_________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_autesp: TRLLabel
            Left = 678
            Top = 227
            Width = 342
            Height = 17
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'Autoriza'#231#227'o Especial               N'#186' ..:_________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 8
            Top = 305
            Width = 436
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              '________________________________________________________________' +
              '_________________________________________'
          end
          object RLLabel6: TRLLabel
            Left = 9
            Top = 337
            Width = 436
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Nome e Ass. do Representante Legal'
          end
          object RLDBText5: TRLDBText
            Left = 9
            Top = 321
            Width = 436
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DIRETOR'
            DataSource = DM1.Src_Emp
          end
          object RLLabel7: TRLLabel
            Left = 450
            Top = 305
            Width = 300
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '_______________________________________'
          end
          object RLDBText7: TRLDBText
            Left = 450
            Top = 321
            Width = 300
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'RESPONS'
            DataSource = DM1.Src_Emp
          end
          object RLLabel8: TRLLabel
            Left = 450
            Top = 337
            Width = 300
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'Nome e Ass. do Representante da Empresa'
          end
          object RLLabel9: TRLLabel
            Left = 920
            Top = 321
            Width = 32
            Height = 10
            Caption = 'CRF N'#186':'
          end
          object RLDBText8: TRLDBText
            Left = 974
            Top = 321
            Width = 52
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CERTREG'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 955
            Top = 344
            Width = 33
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 991
            Top = 344
            Width = 33
            Height = 10
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object QRIMG_CARCNPJ: TRLImage
            Left = 6
            Top = 6
            Width = 80
            Height = 73
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
        end
        object RLBand_CABDET: TRLBand
          Left = 38
          Top = 402
          Width = 1047
          Height = 51
          AutoSize = True
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLCAB_CODDCB: TRLMemo
            Left = 2
            Top = 0
            Width = 50
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              'N'#186' DO C'#211'DIGO'
              'DA DCB')
          end
          object RLCAB_NOMDCB: TRLMemo
            Left = 51
            Top = 0
            Width = 98
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'DESCRI'#199#195'O DO DCB')
          end
          object RLCAB_NOMPRO: TRLMemo
            Left = 149
            Top = 0
            Width = 162
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'NOME DO MEDICAMENTO')
          end
          object RLCAB_APRECON: TRLMemo
            Left = 310
            Top = 0
            Width = 138
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'APRESENTA'#199#195'O CONCENTRA'#199#195'O')
          end
          object RLCAB_QTDVEN: TRLMemo
            Left = 448
            Top = 0
            Width = 44
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'QTD VENDIDA')
          end
          object RLCAB_DATNFE: TRLMemo
            Left = 604
            Top = 0
            Width = 58
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              'DATA DA NOTA FISCAL OU FATURA')
          end
          object RLCAB_NUMNFE: TRLMemo
            Left = 547
            Top = 0
            Width = 58
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              'N'#186' DA NOTA FISCAL OU FATURA')
          end
          object RLCAB_DATNV: TRLMemo
            Left = 662
            Top = 0
            Width = 62
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'DATA E N'#186' VISTO')
          end
          object RLCAB_NOMCOMP: TRLMemo
            Left = 724
            Top = 0
            Width = 188
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'COMPRADOR END. COMPLETO')
          end
          object RLCAB_CNPJ: TRLMemo
            Left = 912
            Top = 0
            Width = 110
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'C.N.P.J')
          end
          object RLCAB_LOTE: TRLMemo
            Left = 492
            Top = 0
            Width = 56
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              ''
              'LOTE'
              'VENDIDO')
          end
          object RLCAB_UF: TRLMemo
            Left = 1021
            Top = 0
            Width = 26
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Lines.Strings = (
              ''
              'UF')
          end
        end
        object RLBand_DET: TRLBand
          Left = 38
          Top = 453
          Width = 1047
          Height = 11
          AutoSize = True
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          IntegralHeight = False
          ParentFont = False
          AfterPrint = RLBand_DETAfterPrint
          BeforePrint = RLBand_DETBeforePrint
          object RLDET_ENDERCOMP: TRLDBMemo
            Left = 724
            Top = 0
            Width = 188
            Height = 10
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'endercomp'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_NOMCOMP
            ParentFont = False
            SecondHolder = RLDET_NOMDBC
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_CNPJ: TRLMemo
            Left = 912
            Top = 0
            Width = 110
            Height = 10
            Alignment = taCenter
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
            Holder = RLCAB_CNPJ
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDBMemo2: TRLDBMemo
            Left = 604
            Top = 0
            Width = 58
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'P1DATANF'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_DATNFE
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_UF: TRLMemo
            Left = 1021
            Top = 0
            Width = 26
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_UF
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_LOTE: TRLDBMemo
            Left = 492
            Top = 0
            Width = 56
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'P2LOTE'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_LOTE
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_QTD: TRLDBMemo
            Left = 448
            Top = 0
            Width = 44
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'P2QTD'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_QTDVEN
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_APRECON: TRLDBMemo
            Left = 310
            Top = 0
            Width = 138
            Height = 10
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDAPRES'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_APRECON
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_NOMPRO: TRLDBMemo
            Left = 149
            Top = 0
            Width = 162
            Height = 10
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_NOMPRO
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_NOMDBC: TRLDBMemo
            Left = 51
            Top = 0
            Width = 98
            Height = 10
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'nomdcb'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_NOMDCB
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_CODDCB: TRLDBMemo
            Left = 2
            Top = 0
            Width = 50
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'coddcb'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_CODDCB
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_NUMNFE: TRLDBMemo
            Left = 547
            Top = 0
            Width = 58
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'P1NUMNF'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCAB_NUMNFE
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
          object RLDET_DATNV: TRLMemo
            Left = 662
            Top = 0
            Width = 62
            Height = 10
            Alignment = taCenter
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
            Holder = RLCAB_DATNV
            ParentFont = False
            SecondHolder = RLDET_ENDERCOMP
            SecondHoldStyle = hsCopyHeight
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 480
          Width = 1047
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object rl_emitido: TRLLabel
            Left = 874
            Top = 2
            Width = 39
            Height = 10
            Caption = 'lbl_emitido'
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 464
          Width = 1047
          Height = 16
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
    object tsAbertura: TTabSheet
      Caption = 'Termo de Abertura'
      ImageIndex = 2
      object RLReport_termo_abertura: TRLReport
        Left = 112
        Top = -34
        Width = 1123
        Height = 794
        DataSource = src_termo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        object RLBand3: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 699
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object rlheader_empresa: TRLLabel
            Left = 6
            Top = 4
            Width = 77
            Height = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlheader_pagina: TRLLabel
            Left = 879
            Top = 4
            Width = 68
            Height = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 955
            Top = 4
            Width = 33
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
            Text = 'Pagina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 991
            Top = 4
            Width = 33
            Height = 10
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object RLLabel10: TRLLabel
            Left = 40
            Top = 24
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'TERMO DE ABERTURA'
          end
          object RLLabel11: TRLLabel
            Left = 40
            Top = 44
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'LIVRO NUMERO:'
          end
          object RLLabel12: TRLLabel
            Left = 41
            Top = 83
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ESTE RELATORIO EMITIDO POR PROCESSAMENTE DE DADOS SERVIRA PARA:'
          end
          object RLLabel13: TRLLabel
            Left = 40
            Top = 191
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'RELACAO MENSAL DE VENDAS DE MEDICAMENTOS'
          end
          object RLLabel14: TRLLabel
            Left = 40
            Top = 207
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'SUJEITO A CONTROLE ESPECIAL '
          end
          object RLLabel15: TRLLabel
            Left = 40
            Top = 232
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object rlheader_periodo: TRLLabel
            Left = 303
            Top = 232
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel16: TRLLabel
            Left = 40
            Top = 256
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'RAZ'#195'O SOCIAL....................................................' +
              ':'
          end
          object rlheader_razaoSocial: TRLLabel
            Left = 303
            Top = 255
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel18: TRLLabel
            Left = 40
            Top = 281
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'ENDERE'#199'O..AL....................................................' +
              ':'
          end
          object rlheader_endereco: TRLLabel
            Left = 303
            Top = 281
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel17: TRLLabel
            Left = 690
            Top = 281
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'TELEFONE/FAX:'
          end
          object rlheader_fonefax: TRLLabel
            Left = 796
            Top = 281
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel19: TRLLabel
            Left = 40
            Top = 306
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'CIDADE..........................................................' +
              '.......:'
          end
          object rlheader_cidade: TRLLabel
            Left = 303
            Top = 306
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel20: TRLLabel
            Left = 40
            Top = 331
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'CNPJ............................................................' +
              '.........:'
          end
          object rlheader_cnpj: TRLLabel
            Left = 303
            Top = 331
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel21: TRLLabel
            Left = 690
            Top = 331
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'INSCRI'#199#195'O:'
          end
          object rlheader_ie: TRLLabel
            Left = 796
            Top = 331
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '10.141.656-3'
          end
          object RLLabel22: TRLLabel
            Left = 40
            Top = 356
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'REPRESENTANTE LEGAL...................................:'
          end
          object rlheader_representante_legal: TRLLabel
            Left = 303
            Top = 356
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel23: TRLLabel
            Left = 40
            Top = 380
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'RESPONSAVEL TECNICO.....................................:'
          end
          object rlheader_resp_tecnico: TRLLabel
            Left = 303
            Top = 380
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel25: TRLLabel
            Left = 690
            Top = 380
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'C.R.F:'
          end
          object rlheader_crf: TRLLabel
            Left = 796
            Top = 380
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '10.141.656-3'
          end
          object RLLabel24: TRLLabel
            Left = 40
            Top = 405
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'AUTORIZA'#199#195'O DE FUNCIONAMENTO..............:'
          end
          object rlheader_autorizacao_funcionamento: TRLLabel
            Left = 303
            Top = 405
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel26: TRLLabel
            Left = 40
            Top = 430
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ALVARA DE FUNCIONAMENTO............................:'
          end
          object rlheader_alvfunc: TRLLabel
            Left = 303
            Top = 430
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel27: TRLLabel
            Left = 40
            Top = 455
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'AUTORIZA'#199#195'O ESPECIAL.....................................:'
          end
          object rlheader_autorizacao_especial: TRLLabel
            Left = 303
            Top = 455
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel28: TRLLabel
            Left = 40
            Top = 480
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'LISTAS..........................................................' +
              '...............:'
          end
          object rlheader_listas: TRLLabel
            Left = 303
            Top = 480
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel29: TRLLabel
            Left = 44
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'CARIMBO E ASSINATURA DA AUTORIDADE SANITARIA'
          end
          object RLLabel30: TRLLabel
            Left = 348
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'DATA:____/____/____'
          end
          object RLLabel31: TRLLabel
            Left = 693
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ASSINATURA DO RESPONSAVEL TECNICO'
          end
          object RLLabel32: TRLLabel
            Left = 44
            Top = 653
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '____________________________________________________________'
          end
          object RLLabel33: TRLLabel
            Left = 694
            Top = 653
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '____________________________________________________________'
          end
        end
      end
    end
    object tsTermoEncerramento: TTabSheet
      Caption = 'tsTermoEncerramento'
      ImageIndex = 3
      object RLReport_encerramento: TRLReport
        Left = 4
        Top = -21
        Width = 1123
        Height = 794
        DataSource = src_termo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        NextReport = rl_modelo03
        PageSetup.Orientation = poLandscape
        object RLBand4: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 699
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object rlfooter_empresa: TRLLabel
            Left = 6
            Top = 4
            Width = 74
            Height = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 879
            Top = 4
            Width = 47
            Height = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 955
            Top = 4
            Width = 33
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
            Text = 'Pagina:'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 991
            Top = 4
            Width = 33
            Height = 10
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object RLLabel36: TRLLabel
            Left = 40
            Top = 24
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'TERMO DE ENCERRAMENTO'
          end
          object RLLabel37: TRLLabel
            Left = 40
            Top = 44
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'LIVRO NUMERO:'
          end
          object RLLabel38: TRLLabel
            Left = 41
            Top = 83
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ESTE RELATORIO EMITIDO POR PROCESSAMENTE DE DADOS SERVIRA PARA:'
          end
          object RLLabel39: TRLLabel
            Left = 40
            Top = 191
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'RELACAO MENSAL DE VENDAS DE MEDICAMENTOS'
          end
          object RLLabel40: TRLLabel
            Left = 40
            Top = 207
            Width = 946
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'SUJEITO A CONTROLE ESPECIAL '
          end
          object RLLabel41: TRLLabel
            Left = 40
            Top = 232
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object rlfooter_periodo: TRLLabel
            Left = 303
            Top = 232
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel43: TRLLabel
            Left = 40
            Top = 256
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'RAZ'#195'O SOCIAL....................................................' +
              ':'
          end
          object rlfooter_razaoSocial: TRLLabel
            Left = 303
            Top = 255
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel45: TRLLabel
            Left = 40
            Top = 281
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'ENDERE'#199'O..AL....................................................' +
              ':'
          end
          object rlfooter_endereco: TRLLabel
            Left = 303
            Top = 281
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel47: TRLLabel
            Left = 690
            Top = 281
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'TELEFONE/FAX:'
          end
          object rlfooter_fonefax: TRLLabel
            Left = 796
            Top = 281
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel49: TRLLabel
            Left = 40
            Top = 306
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'CIDADE..........................................................' +
              '.......:'
          end
          object rlfooter_cidade: TRLLabel
            Left = 303
            Top = 306
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'PERIODO DO REGISTRO.................................:'
          end
          object RLLabel51: TRLLabel
            Left = 40
            Top = 331
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'CNPJ............................................................' +
              '.........:'
          end
          object rlfooter_cnpj: TRLLabel
            Left = 303
            Top = 331
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel53: TRLLabel
            Left = 690
            Top = 331
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'INSCRI'#199#195'O:'
          end
          object rlfooter_ie: TRLLabel
            Left = 796
            Top = 331
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '10.141.656-3'
          end
          object RLLabel55: TRLLabel
            Left = 40
            Top = 356
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'REPRESENTANTE LEGAL...................................:'
          end
          object rlfooter_representante_legal: TRLLabel
            Left = 303
            Top = 356
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel57: TRLLabel
            Left = 40
            Top = 380
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'RESPONSAVEL TECNICO.....................................:'
          end
          object rlfooter_resp_tecnico: TRLLabel
            Left = 303
            Top = 380
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel59: TRLLabel
            Left = 690
            Top = 380
            Width = 98
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'C.R.F:'
          end
          object rlfooter_crf: TRLLabel
            Left = 796
            Top = 380
            Width = 232
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '10.141.656-3'
          end
          object RLLabel61: TRLLabel
            Left = 40
            Top = 405
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'AUTORIZA'#199#195'O DE FUNCIONAMENTO..............:'
          end
          object rlfooter_autorizacao_funcionamento: TRLLabel
            Left = 303
            Top = 405
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel63: TRLLabel
            Left = 40
            Top = 430
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ALVARA DE FUNCIONAMENTO............................:'
          end
          object rlfooter_alvfunc: TRLLabel
            Left = 303
            Top = 430
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel65: TRLLabel
            Left = 40
            Top = 455
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'AUTORIZA'#199#195'O ESPECIAL.....................................:'
          end
          object rlfooter_autorizacao_especial: TRLLabel
            Left = 303
            Top = 455
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel67: TRLLabel
            Left = 40
            Top = 480
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'LISTAS..........................................................' +
              '...............:'
          end
          object rlfooter_listas: TRLLabel
            Left = 303
            Top = 480
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '02.299.715/0001-12'
          end
          object RLLabel69: TRLLabel
            Left = 44
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'CARIMBO E ASSINATURA DA AUTORIDADE SANITARIA'
          end
          object RLLabel70: TRLLabel
            Left = 348
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'DATA:____/____/____'
          end
          object RLLabel71: TRLLabel
            Left = 693
            Top = 666
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = 'ASSINATURA DO RESPONSAVEL TECNICO'
          end
          object RLLabel72: TRLLabel
            Left = 44
            Top = 653
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '____________________________________________________________'
          end
          object RLLabel73: TRLLabel
            Left = 694
            Top = 653
            Width = 254
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Caption = '____________________________________________________________'
          end
        end
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P1NUMNF, P1DATANF,'
      '       P1DATAP AS DATAPED,'
      '       P1DATANF as P1DATAMOV, P1DATVIS, P1NUMVIS, P2CODPRO,'
      
        '       P2LOTE, P2QTD, PDNOME, PDAPRES,PDPESOB, PDUND, PDMARCA, P' +
        'DREGMS, PDPRZVAL, P2DTVCTO,'
      
        '       PDCODBAR, CCODCLI,CRAZAO, CDENOM, CLOG, CBAIRRO, to_char(' +
        'CCNPJ) as CCNPJ, TO_CHAR(CCPF) AS CCPF, CCIDADE, CUF'
      ', 01 AS TIPOMOV'
      ' from CADP01, CADP02, CADCLI, CADPRO'
      ' where P2CHAVE=P1CHAVE'
      ' and P2ORDEM=P1ORDEM'
      ' and CCODCLI=P1CODCLI'
      '  and PDCODPRO=P2CODPRO'
      '  and PDCODCON>0'
      '  Order by CRAZAO,P1NUMNF')
    Left = 39
    Top = 32
    object Query1DtFabri: TStringField
      DisplayLabel = 'Dt. Fabrica'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'DtFabri'
      Size = 10
      Calculated = True
    end
    object Query1P1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Query1P1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Query1P1DATVIS: TDateTimeField
      DisplayLabel = 'Data Visto'
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Query1P1NUMVIS: TStringField
      DisplayLabel = 'N'#250'mero Visto'
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Query1P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Query1P2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Query1P2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Query1PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Query1PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Query1PDREGMS: TStringField
      DisplayLabel = 'Reg.Minis.Sa'#250'de'
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Query1PDPRZVAL: TFloatField
      DisplayLabel = 'Prz.Validade'
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Query1P2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Query1PDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Query1CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Query1CLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Query1CBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Query1CCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Query1CUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Query1CCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
    object Query1PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Query1CDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Query1TIPOMOV: TFloatField
      FieldName = 'TIPOMOV'
    end
    object Query1P1DATAMOV: TDateTimeField
      FieldName = 'P1DATAMOV'
    end
    object Query1PDPESOB: TFloatField
      FieldName = 'PDPESOB'
    end
    object Query1nomdcb: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomdcb'
      Size = 300
      Calculated = True
    end
    object Query1coddcb: TStringField
      FieldKind = fkCalculated
      FieldName = 'coddcb'
      Size = 100
      Calculated = True
    end
    object Query1endercomp: TStringField
      DisplayWidth = 254
      FieldKind = fkCalculated
      FieldName = 'endercomp'
      Size = 254
      Calculated = True
    end
    object Query1CCNPJ: TStringField
      FieldName = 'CCNPJ'
      Size = 40
    end
    object Query1CCPF: TStringField
      FieldName = 'CCPF'
      Size = 40
    end
    object Query1lote_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'lote_calc'
      Size = 50
      Calculated = True
    end
    object Query1dtvcto_calc: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtvcto_calc'
      Calculated = True
    end
    object Query1PDAPRES: TStringField
      FieldName = 'PDAPRES'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 32
  end
  object MEM_NOTLOTES: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DATANF'
        DataType = ftDateTime
      end
      item
        Name = 'DATAMOV'
        DataType = ftDateTime
      end
      item
        Name = 'RAZAO_SOC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENTRADAS'
        DataType = ftFloat
      end
      item
        Name = 'SAIDAS'
        DataType = ftFloat
      end
      item
        Name = 'PERDAS'
        DataType = ftFloat
      end
      item
        Name = 'ASS_RESP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBSNF'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COLUNA'
        DataType = ftFloat
      end
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'SALDO_INI'
        DataType = ftFloat
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'UNDPRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NUMLOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PEDFOR'
        DataType = ftInteger
      end
      item
        Name = 'SALDO_ATU'
        DataType = ftFloat
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'PESOB'
        DataType = ftFloat
      end>
    Left = 288
    Top = 104
    object MEM_NOTLOTESDATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'DATANF'
    end
    object MEM_NOTLOTESDATAMOV: TDateTimeField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DATAMOV'
    end
    object MEM_NOTLOTESRAZAO_SOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOC'
      Size = 60
    end
    object MEM_NOTLOTESENTRADAS: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'ENTRADAS'
    end
    object MEM_NOTLOTESSAIDAS: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'SAIDAS'
    end
    object MEM_NOTLOTESPERDAS: TFloatField
      DisplayLabel = 'Perdas'
      FieldName = 'PERDAS'
    end
    object MEM_NOTLOTESASS_RESP: TStringField
      DisplayLabel = 'Assinatura Resposavel'
      FieldName = 'ASS_RESP'
      Size = 40
    end
    object MEM_NOTLOTESOBSNF: TStringField
      DisplayLabel = 'Obs NF'
      FieldName = 'OBSNF'
      Size = 40
    end
    object MEM_NOTLOTESCOLUNA: TFloatField
      DisplayLabel = 'Coluna'
      FieldName = 'COLUNA'
    end
    object MEM_NOTLOTESCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object MEM_NOTLOTESSALDO_INI: TFloatField
      FieldName = 'SALDO_INI'
    end
    object MEM_NOTLOTESNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object MEM_NOTLOTESUNDPRO: TStringField
      FieldName = 'UNDPRO'
      Size = 3
    end
    object MEM_NOTLOTESNUMLOTE: TStringField
      FieldName = 'NUMLOTE'
    end
    object MEM_NOTLOTESPEDFOR: TIntegerField
      FieldName = 'PEDFOR'
    end
    object MEM_NOTLOTESSALDO_ATU: TFloatField
      FieldName = 'SALDO_ATU'
    end
    object MEM_NOTLOTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object MEM_NOTLOTESPESOB: TFloatField
      FieldName = 'PESOB'
    end
  end
  object SRC_NOTLOTES: TDataSource
    DataSet = MEM_NOTLOTES
    Left = 320
    Top = 160
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Word'
    Left = 267
    Top = 442
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 459
    Top = 418
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 155
    Top = 346
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 491
    Top = 402
  end
  object opd1: TOpenPictureDialog
    Ctl3D = False
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    OptionsEx = [ofExNoPlacesBar]
    Left = 658
    Top = 306
  end
  object cds_termo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 60
    Top = 80
    object cds_termochave_id: TIntegerField
      FieldName = 'chave_id'
    end
  end
  object src_termo: TDataSource
    DataSet = cds_termo
    Left = 100
    Top = 80
  end
end
