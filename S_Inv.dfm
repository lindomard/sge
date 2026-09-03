object Frm_Inv: TFrm_Inv
  Left = 221
  Top = 11
  Width = 640
  Height = 583
  Caption = 'Emiss'#227'o de Invent'#225'rio de Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 4
    Top = 350
    Width = 158
    Height = 13
    Caption = 'N'#250'mero da Primeira Pagina:'
  end
  object Label5: TLabel
    Left = 5
    Top = 371
    Width = 155
    Height = 13
    Caption = 'Data p/Emiss'#227'o...............:'
  end
  object lbl_datinv: TLabel
    Left = 8
    Top = 331
    Width = 111
    Height = 13
    Caption = 'Data do Invent'#225'rio:'
    Visible = False
  end
  object Label6: TLabel
    Left = 4
    Top = 237
    Width = 176
    Height = 13
    Caption = 'Casas Decimais p/Quantidade:'
  end
  object Label7: TLabel
    Left = 225
    Top = 235
    Width = 192
    Height = 13
    Caption = 'Casas Decimais p/Pre'#231'o Unit'#225'rio:'
  end
  object lbl_nominv: TLabel
    Left = 5
    Top = 330
    Width = 152
    Height = 13
    Caption = 'Nome do Invent'#225'rio Salvo:'
    Visible = False
  end
  object Label9: TLabel
    Left = 8
    Top = 469
    Width = 112
    Height = 13
    Caption = 'T'#237'tulo do Relat'#243'rio:'
  end
  object Label13: TLabel
    Left = 184
    Top = 190
    Width = 81
    Height = 13
    Caption = 'Tipo de Preco'
  end
  object Label16: TLabel
    Left = 6
    Top = 190
    Width = 77
    Height = 13
    Caption = 'Qual Estoque'
    Visible = False
  end
  object Label17: TLabel
    Left = 4
    Top = 410
    Width = 194
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Separado por:'
    Color = 9961367
    ParentColor = False
    Layout = tlCenter
  end
  object Label18: TLabel
    Left = 5
    Top = 269
    Width = 139
    Height = 13
    Caption = 'Total a ser Tranportado:'
  end
  object Label81: TLabel
    Left = 346
    Top = 206
    Width = 109
    Height = 13
    Caption = 'Local Mercadorias:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NUMPAGI: TEdit
    Left = 178
    Top = 346
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    Text = '1'
    OnExit = NUMPAGIExit
  end
  object cbEmitirTermos: TCheckBox
    Left = 5
    Top = 390
    Width = 280
    Height = 17
    Caption = 'Emitir Termos de Abertura e Encerramento'
    TabOrder = 13
  end
  object MDT1: TMaskEdit
    Left = 178
    Top = 366
    Width = 84
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 8
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object bbImprimir: TBitBtn
    Left = 4
    Top = 492
    Width = 150
    Height = 34
    Caption = 'Imprimir'
    TabOrder = 17
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
    Left = 472
    Top = 492
    Width = 150
    Height = 34
    Caption = '&Fechar'
    TabOrder = 19
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
  object MDATINV: TMaskEdit
    Left = 146
    Top = 326
    Width = 79
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 6
    Text = '  /  /    '
    Visible = False
    OnExit = MDATINVExit
  end
  object CB_QDEC_QTD: TComboBox
    Left = 180
    Top = 232
    Width = 39
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 3
    Text = '3'
    OnExit = CB_QDEC_QTDExit
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
  object CB_QDEC_PU: TComboBox
    Left = 420
    Top = 230
    Width = 38
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 4
    Text = '3'
    OnExit = CB_QDEC_PUExit
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
  object bbSalvar: TBitBtn
    Left = 154
    Top = 490
    Width = 150
    Height = 37
    Caption = '&Salvar'
    TabOrder = 18
    OnClick = bbSalvarClick
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
  object rg_anterior: TRadioGroup
    Left = 5
    Top = 292
    Width = 441
    Height = 29
    Caption = 'Qual Invent'#225'rio:'
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Atual'
      'A&nterior'
      '&Salvo')
    ParentCtl3D = False
    TabOrder = 10
    OnClick = rg_anteriorClick
  end
  object cb_salvo: TComboBox
    Left = 178
    Top = 325
    Width = 287
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    Sorted = True
    TabOrder = 11
    Text = 'cb_salvo'
    Visible = False
    OnExit = cb_salvoExit
  end
  object bbPadrao: TBitBtn
    Left = 312
    Top = 404
    Width = 103
    Height = 44
    Caption = 'Gravar Padr'#227'o'
    TabOrder = 12
    OnClick = bbPadraoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
      33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
      D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
      BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
      EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
      BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
      D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
      3333333773FFFF77333333333000003333333333377777333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object MTITULO: TEdit
    Left = 120
    Top = 467
    Width = 345
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 185
    ActivePage = TabSheet4
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = '1o.Filtros'
      object Label1: TLabel
        Left = 12
        Top = 5
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label2: TLabel
        Left = 7
        Top = 43
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object Label3: TLabel
        Left = 5
        Top = 86
        Width = 66
        Height = 13
        Caption = 'Tipo Controle:'
      end
      object Label12: TLabel
        Left = 32
        Top = 124
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object CODFOR: TEdit
        Left = 74
        Top = 1
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object OMITIR_FOR: TCheckBox
        Left = 74
        Top = 24
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codfor: TListBox
        Left = 135
        Top = 1
        Width = 405
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object CODTIP: TEdit
        Left = 74
        Top = 41
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object OMITIR_TPRO: TCheckBox
        Left = 75
        Top = 67
        Width = 56
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object lbx_codtip: TListBox
        Left = 135
        Top = 41
        Width = 405
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codtipKeyDown
      end
      object CODCON: TEdit
        Left = 74
        Top = 82
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object OMITIR_CON: TCheckBox
        Left = 77
        Top = 107
        Width = 51
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbx_codcon: TListBox
        Left = 135
        Top = 82
        Width = 405
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codconKeyDown
      end
      object CODPRO: TEdit
        Left = 74
        Top = 123
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 135
        Top = 123
        Width = 405
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 74
        Top = 143
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
    end
    object TabSheet3: TTabSheet
      Caption = '2o.Filtros'
      ImageIndex = 2
      object Label8: TLabel
        Left = 6
        Top = 5
        Width = 92
        Height = 13
        Caption = 'Grupo de Produtos:'
      end
      object Label10: TLabel
        Left = 14
        Top = 45
        Width = 87
        Height = 13
        Caption = 'Ramo/Sub-Grupo:'
      end
      object Label19: TLabel
        Left = 1
        Top = 80
        Width = 125
        Height = 13
        Caption = 'Situa'#231#227'o - Tribut'#225'ria - CST'
      end
      object CODGRU: TEdit
        Left = 103
        Top = 2
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object OMITIR_GRU: TCheckBox
        Left = 104
        Top = 24
        Width = 57
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codgru: TListBox
        Left = 164
        Top = 2
        Width = 376
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codgruKeyDown
      end
      object CODRAM: TEdit
        Left = 103
        Top = 43
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object OMITIR_RAM: TCheckBox
        Left = 104
        Top = 67
        Width = 47
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object lbx_codram: TListBox
        Left = 164
        Top = 43
        Width = 376
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codramKeyDown
      end
      object CLBSit: TCheckListBox
        Left = 0
        Top = 94
        Width = 542
        Height = 83
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          '00 - Tributado integralmente'
          '10 - Tributado e com cobr.  do ICMS por subs. trib.'
          '20 - Com redu'#231#227'o de base de c'#225'lculo'
          '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
          '40 - Isenta ou n'#227'o tributada'
          '41 - N'#227'o tributada'
          '50 - Com suspens'#227'o ou deferimento'
          '51 - Diferimento'
          '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
          '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
          '90 - Outras'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 6
        OnClick = CLBSitClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros'
      ImageIndex = 2
      object Label11: TLabel
        Left = 3
        Top = 3
        Width = 74
        Height = 13
        Alignment = taCenter
        Caption = 'Tipo Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 4
        Top = 99
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
        Left = 319
        Top = 1
        Width = 103
        Height = 13
        Alignment = taCenter
        Caption = 'Status do Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 5
        Top = 157
        Width = 187
        Height = 13
        Caption = 'Codigo de Classifica'#231#227'o Fiscal / NCM..:'
      end
      object CLBNivel: TCheckListBox
        Left = 3
        Top = 20
        Width = 274
        Height = 79
        Color = 16776176
        Columns = 2
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
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = CLBNivelClick
      end
      object CLBEstoque: TCheckListBox
        Left = 4
        Top = 113
        Width = 522
        Height = 18
        Color = 16776176
        Columns = 4
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = CLBEstoqueClick
      end
      object CLBStatus: TCheckListBox
        Left = 318
        Top = 16
        Width = 208
        Height = 84
        Color = 16776176
        Columns = 2
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
        Style = lbOwnerDrawFixed
        TabOrder = 2
        OnClick = CLBStatusClick
      end
      object edt_ncm: TEdit
        Left = 194
        Top = 154
        Width = 156
        Height = 19
        Ctl3D = False
        MaxLength = 8
        ParentCtl3D = False
        TabOrder = 3
        OnExit = TOTAL_TRANSPExit
      end
    end
    object tbs_relatorio: TTabSheet
      Caption = 'tbs_relatorio'
      ImageIndex = 3
      object rlp_inventario: TRLReport
        Left = 58
        Top = 27
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Inv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 20
          Top = 20
          Width = 754
          Height = 81
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand1BeforePrint
          object RLLabel1: TRLLabel
            Left = 0
            Top = 2
            Width = 754
            Height = 20
            Align = faWidth
            Alignment = taCenter
            Caption = 'REGISTROS DE INVENTARIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 0
            Top = 25
            Width = 118
            Height = 16
            Caption = 'Empresa............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 0
            Top = 44
            Width = 117
            Height = 16
            Caption = 'Insc. Estadual...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 359
            Top = 44
            Width = 95
            Height = 16
            Caption = 'Cnpj(MS)......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 1
            Top = 63
            Width = 115
            Height = 16
            Caption = 'Folha.................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 360
            Top = 63
            Width = 138
            Height = 16
            Caption = 'Est. Existente em...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 120
            Top = 25
            Width = 599
            Height = 16
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLDBText29: TRLDBText
            Left = 120
            Top = 44
            Width = 236
            Height = 16
            AutoSize = False
            DataField = 'INSCRICAO'
            DataSource = DM1.Src_Emp
          end
          object RLDBText30: TRLDBText
            Left = 457
            Top = 44
            Width = 262
            Height = 16
            AutoSize = False
            DataField = 'CGC'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 121
            Top = 62
            Width = 48
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object data_emissao: TRLLabel
            Left = 499
            Top = 63
            Width = 220
            Height = 16
            AutoSize = False
            Caption = '01/01/2011'
          end
        end
        object RLBand2: TRLBand
          Left = 20
          Top = 101
          Width = 754
          Height = 38
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedTop = True
          object lbl_classificacao: TRLLabel
            Left = 0
            Top = -1
            Width = 132
            Height = 39
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Classificacao Fiscal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_discriminacao: TRLLabel
            Left = 132
            Top = -1
            Width = 358
            Height = 39
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Discriminacao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_unidade: TRLLabel
            Left = 491
            Top = -1
            Width = 52
            Height = 39
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Unidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_quantidade: TRLLabel
            Left = 544
            Top = -1
            Width = 60
            Height = 39
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 604
            Top = -1
            Width = 150
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Valores'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_unitario: TRLLabel
            Left = 604
            Top = 17
            Width = 76
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Unitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_total: TRLLabel
            Left = 679
            Top = 17
            Width = 76
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object rlg_situacao: TRLGroup
          Left = 20
          Top = 139
          Width = 754
          Height = 47
          DataFields = 'PDSIT'
          object tl_situacao: TRLBand
            Left = 0
            Top = 0
            Width = 754
            Height = 16
            BandType = btHeader
            object RLLabel14: TRLLabel
              Left = 0
              Top = 0
              Width = 235
              Height = 16
              Caption = 'Produtos com Situacao Tributaria'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText1: TRLDBText
              Left = 235
              Top = 0
              Width = 150
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDSIT'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 16
            Width = 754
            Height = 13
            object RLDB_PDCLAS: TRLDBText
              Left = 0
              Top = 1
              Width = 132
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDCLAS'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_classificacao
              ParentFont = False
            end
            object RLDBText3: TRLDBText
              Left = 132
              Top = 1
              Width = 358
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_discriminacao
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 491
              Top = 1
              Width = 52
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unidade
              ParentFont = False
            end
            object RLDBText5: TRLDBText
              Left = 544
              Top = 1
              Width = 60
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CESALDO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_quantidade
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 604
              Top = 1
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unitario
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 679
              Top = 1
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_total
              ParentFont = False
            end
          end
          object rlb_totalsitu: TRLBand
            Left = 0
            Top = 29
            Width = 754
            Height = 18
            BandType = btSummary
            object RLLabel9: TRLLabel
              Left = -5
              Top = 2
              Width = 108
              Height = 13
              Caption = 'Total Transpotado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult1: TRLDBResult
              Left = 604
              Top = 1
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_unitario
              Info = riSum
              ParentFont = False
            end
            object RLDBResult2: TRLDBResult
              Left = 679
              Top = 0
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_total
              Info = riSum
              ParentFont = False
            end
          end
        end
        object rlg_produtos: TRLGroup
          Left = 20
          Top = 233
          Width = 754
          Height = 45
          DataFields = 'CODTIP'
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 754
            Height = 16
            BandType = btHeader
            object RLLabel7: TRLLabel
              Left = 0
              Top = 0
              Width = 66
              Height = 16
              Caption = 'Produtos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 69
              Top = 0
              Width = 422
              Height = 16
              AutoSize = False
              DataField = 'CODTIP'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 16
            Width = 754
            Height = 13
            object RLDB_PDCLAS3: TRLDBText
              Left = 0
              Top = 2
              Width = 132
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDCLAS'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_classificacao
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 132
              Top = 2
              Width = 358
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_discriminacao
              ParentFont = False
            end
            object RLDBText11: TRLDBText
              Left = 491
              Top = 2
              Width = 52
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unidade
              ParentFont = False
            end
            object RLDBText12: TRLDBText
              Left = 544
              Top = 2
              Width = 60
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CESALDO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_quantidade
              ParentFont = False
            end
            object RLDBText13: TRLDBText
              Left = 604
              Top = 2
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unitario
              ParentFont = False
            end
            object RLDBText14: TRLDBText
              Left = 679
              Top = 2
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_total
              ParentFont = False
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 29
            Width = 754
            Height = 18
            BandType = btSummary
            object RLLabel12: TRLLabel
              Left = -5
              Top = 2
              Width = 108
              Height = 13
              Caption = 'Total Transpotado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult5: TRLDBResult
              Left = 604
              Top = 1
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_unitario
              Info = riSum
              ParentFont = False
            end
            object RLDBResult6: TRLDBResult
              Left = 679
              Top = 0
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_total
              Info = riSum
              ParentFont = False
            end
          end
        end
        object rlg_fornecedor: TRLGroup
          Left = 20
          Top = 186
          Width = 754
          Height = 47
          DataFields = 'PDCODFOR'
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 754
            Height = 16
            BandType = btHeader
            object RLLabel8: TRLLabel
              Left = 0
              Top = 0
              Width = 84
              Height = 16
              Caption = 'Fornecedor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText15: TRLDBText
              Left = 86
              Top = 0
              Width = 88
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDCODFOR'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText31: TRLDBText
              Left = 177
              Top = 0
              Width = 429
              Height = 16
              AutoSize = False
              DataField = 'FRAZAO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 16
            Width = 754
            Height = 13
            object RLDB_PDCLAS2: TRLDBText
              Left = 0
              Top = 1
              Width = 132
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDCLAS'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_classificacao
              ParentFont = False
            end
            object RLDBText17: TRLDBText
              Left = 132
              Top = 1
              Width = 358
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_discriminacao
              ParentFont = False
            end
            object RLDBText18: TRLDBText
              Left = 491
              Top = 1
              Width = 52
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unidade
              ParentFont = False
            end
            object RLDBText19: TRLDBText
              Left = 544
              Top = 1
              Width = 60
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CESALDO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_quantidade
              ParentFont = False
            end
            object RLDBText20: TRLDBText
              Left = 604
              Top = 1
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unitario
              ParentFont = False
            end
            object RLDBText21: TRLDBText
              Left = 679
              Top = 1
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_total
              ParentFont = False
            end
          end
          object RLBand8: TRLBand
            Left = 0
            Top = 29
            Width = 754
            Height = 18
            BandType = btSummary
            object RLLabel10: TRLLabel
              Left = -5
              Top = 2
              Width = 108
              Height = 13
              Caption = 'Total Transpotado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult3: TRLDBResult
              Left = 604
              Top = 1
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_unitario
              Info = riSum
              ParentFont = False
            end
            object RLDBResult4: TRLDBResult
              Left = 679
              Top = 0
              Width = 76
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Total'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_total
              Info = riSum
              ParentFont = False
            end
          end
        end
        object rld_semseparacao: TRLBand
          Left = 20
          Top = 278
          Width = 754
          Height = 14
          object RLDB_PDCLAS4: TRLDBText
            Left = 0
            Top = 0
            Width = 132
            Height = 13
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDCLAS'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_classificacao
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 132
            Top = 0
            Width = 358
            Height = 13
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_discriminacao
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 491
            Top = 0
            Width = 52
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDUND'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_unidade
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 544
            Top = 0
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CESALDO'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_quantidade
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 604
            Top = 0
            Width = 76
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDPRECO'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_unitario
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 679
            Top = 0
            Width = 76
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Total'
            DataSource = Src_Inv
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_total
            ParentFont = False
          end
        end
        object RLBand11: TRLBand
          Left = 20
          Top = 292
          Width = 754
          Height = 16
          BandType = btSummary
          object RLLabel15: TRLLabel
            Left = -5
            Top = 1
            Width = 139
            Height = 13
            Caption = 'Total Geral do Iventario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult10: TRLDBResult
            Left = 679
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Total'
            DataSource = Src_Inv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_total
            Info = riSum
            ParentFont = False
          end
        end
      end
    end
    object TS_ABERTURA: TTabSheet
      Caption = 'TS_ABERTURA'
      ImageIndex = 4
      TabVisible = False
      object rlp_abertura: TRLReport
        Left = 24
        Top = -176
        Width = 794
        Height = 1123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlp_aberturaBeforePrint
        object RLLabel13: TRLLabel
          Left = 38
          Top = 38
          Width = 718
          Height = 16
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'REGISTRO DO INVENT'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 39
          Top = 96
          Width = 156
          Height = 16
          Caption = 'FIRMA...................... ....:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 196
          Top = 96
          Width = 525
          Height = 16
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 40
          Top = 113
          Width = 154
          Height = 16
          Caption = 'INSCRI'#199#195'O ESTADUAL.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 40
          Top = 130
          Width = 107
          Height = 16
          Caption = 'FOLHA..............:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 196
          Top = 113
          Width = 524
          Height = 16
          AutoSize = False
          DataField = 'INSCRICAO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rl_emis1: TRLLabel
          Left = 329
          Top = 130
          Width = 248
          Height = 16
          AutoSize = False
          Caption = '01/01/2011'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 198
          Top = 130
          Width = 128
          Height = 16
          Caption = 'Est. Existente em...:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 40
          Top = 168
          Width = 714
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'TERMO DE ABERTURA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 106
          Top = 296
          Width = 127
          Height = 16
          Caption = 'NOME....................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 235
          Top = 296
          Width = 466
          Height = 16
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
        end
        object RLLabel23: TRLLabel
          Left = 104
          Top = 314
          Width = 129
          Height = 16
          Caption = 'ENDERE'#199'O............:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 235
          Top = 314
          Width = 466
          Height = 16
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = DM1.Src_Emp
        end
        object RLDBText39: TRLDBText
          Left = 235
          Top = 348
          Width = 466
          Height = 16
          AutoSize = False
          DataField = 'cnpj'
          DataSource = DM1.Src_Emp
        end
        object RLLabel28: TRLLabel
          Left = 44
          Top = 365
          Width = 188
          Height = 16
          Caption = 'REG. JUNTA COMERCIAL No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 235
          Top = 365
          Width = 466
          Height = 16
          AutoSize = False
          DataField = 'JUCEG'
          DataSource = DM1.Src_Emp
        end
        object rl_emis2: TRLLabel
          Left = 114
          Top = 479
          Width = 188
          Height = 16
          Caption = 'REG. JUNTA COMERCIAL No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 114
          Top = 527
          Width = 382
          Height = 16
          Caption = '______________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 114
          Top = 544
          Width = 378
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
        end
        object RLLabel19: TRLLabel
          Left = 94
          Top = 200
          Width = 142
          Height = 16
          AutoSize = False
          Caption = 'CONTEM ESTE LIVRO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 237
          Top = 200
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Courier'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 286
          Top = 200
          Width = 392
          Height = 16
          Caption = 'FOLHAS NUMERADAS POR  PROCESSAMENTO  ELETR'#212'NICO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 41
          Top = 217
          Width = 208
          Height = 16
          AutoSize = False
          Caption = 'DE DADOS. DO N'#218'MERO 0001 AO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 250
          Top = 217
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Courier'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 299
          Top = 217
          Width = 381
          Height = 16
          Caption = ' E  SERVIRAO  PARA  O  LAN'#199'AMENTO  DAS   OPERA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 40
          Top = 234
          Width = 491
          Height = 16
          Caption = 'PR'#211'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CIDADE_ESTADO: TRLLabel
          Left = 235
          Top = 331
          Width = 466
          Height = 16
          AutoSize = False
          Caption = 'GOIANIA - GO'
        end
        object RLSystemInfo7: TRLSystemInfo
          Left = 149
          Top = 130
          Width = 47
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
      end
    end
    object TS_FINAL: TTabSheet
      Caption = 'TS_FINAL'
      ImageIndex = 5
      TabVisible = False
      object rlp_fechamento: TRLReport
        Left = -147
        Top = -17
        Width = 794
        Height = 1123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlp_fechamentoBeforePrint
        object RLLabel29: TRLLabel
          Left = 38
          Top = 38
          Width = 718
          Height = 16
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'REGISTRO DO INVENT'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 40
          Top = 93
          Width = 104
          Height = 16
          Caption = 'FIRMA..............:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 145
          Top = 93
          Width = 525
          Height = 16
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 40
          Top = 113
          Width = 154
          Height = 16
          Caption = 'INSCRI'#199#195'O ESTADUAL.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 40
          Top = 133
          Width = 107
          Height = 16
          Caption = 'FOLHA..............:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 195
          Top = 113
          Width = 524
          Height = 16
          AutoSize = False
          DataField = 'INSCRICAO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rl_emis11: TRLLabel
          Left = 325
          Top = 133
          Width = 248
          Height = 16
          AutoSize = False
          Caption = '01/01/2011'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 196
          Top = 133
          Width = 128
          Height = 16
          Caption = 'Est. Existente em...:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 40
          Top = 168
          Width = 714
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'TERMO DE FECHAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 92
          Top = 293
          Width = 143
          Height = 16
          Caption = 'NOME........................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 236
          Top = 293
          Width = 482
          Height = 18
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 90
          Top = 312
          Width = 145
          Height = 16
          Caption = 'ENDERE'#199'O................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText41: TRLDBText
          Left = 236
          Top = 312
          Width = 482
          Height = 18
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 237
          Top = 348
          Width = 481
          Height = 16
          AutoSize = False
          DataField = 'cnpj'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 47
          Top = 365
          Width = 188
          Height = 16
          Caption = 'REG. JUNTA COMERCIAL No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText44: TRLDBText
          Left = 236
          Top = 365
          Width = 482
          Height = 16
          AutoSize = False
          DataField = 'JUCEG'
          DataSource = DM1.Src_Emp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rl_emis12: TRLLabel
          Left = 114
          Top = 479
          Width = 188
          Height = 16
          Caption = 'REG. JUNTA COMERCIAL No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 113
          Top = 527
          Width = 382
          Height = 16
          Caption = '______________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText45: TRLDBText
          Left = 114
          Top = 544
          Width = 378
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'RAZAO'
          DataSource = DM1.Src_Emp
        end
        object RLLabel42: TRLLabel
          Left = 88
          Top = 200
          Width = 144
          Height = 16
          AutoSize = False
          Caption = 'CONTEM ESTE LIVRO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo4: TRLSystemInfo
          Left = 234
          Top = 200
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Courier'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 284
          Top = 200
          Width = 384
          Height = 16
          Caption = 'FOLHAS NUMERADAS POR PROCESSAMENTO ELETR'#212'NICO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 40
          Top = 217
          Width = 218
          Height = 16
          AutoSize = False
          Caption = 'DE DADOS. DO N'#218'MERO 0001 AO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 259
          Top = 217
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Courier'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 308
          Top = 217
          Width = 361
          Height = 16
          Caption = 'E SERVIRAO  PARA  O  LAN'#199'AMENTO DAS OPERA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 40
          Top = 234
          Width = 491
          Height = 16
          Caption = 'PR'#211'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cidade_estado2: TRLLabel
          Left = 237
          Top = 331
          Width = 481
          Height = 16
          AutoSize = False
          Caption = 'GOIANIA - GO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo6: TRLSystemInfo
          Left = 148
          Top = 133
          Width = 47
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Info = itLastPageNumber
          ParentFont = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '3o.Filtros'
      ImageIndex = 6
      object Label21: TLabel
        Left = 1
        Top = 0
        Width = 141
        Height = 13
        Caption = 'Situa'#231#227'o - Tribut'#225'ria - CSOSN'
      end
      object CLBSitCsosn: TCheckListBox
        Left = 0
        Top = 14
        Width = 542
        Height = 163
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
          
            '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta'
          
            '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
          
            '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
          
            '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
          '300 - Imune'
          '400 - N'#227'o tributada pelo Simples Nacional'
          
            '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
            'bstitu'#237'do) ou por antecipa'#231#227'o'
          '900 - Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = CLBSitCsosnClick
      end
    end
  end
  object CB_TPPRECO: TComboBox
    Left = 181
    Top = 206
    Width = 156
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Pre'#231'o 1'
    Items.Strings = (
      'Pre'#231'o 1'
      'Pre'#231'o 2'
      'Pre'#231'o 3'
      'Pre'#231'o de Custo'
      'Pre'#231'o M'#233'dio de Custo'
      #218'ltimo Preco de Compra'
      'Preco de Fabrica')
  end
  object CB_TPINV: TComboBox
    Left = 5
    Top = 206
    Width = 156
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 14
    Text = 'Normal'
    Visible = False
    Items.Strings = (
      'Normal'
      'Consignados'
      'Revenda'
      'Terceiros')
  end
  object cb_separado: TComboBox
    Left = 4
    Top = 425
    Width = 194
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 15
    Text = 'Sem Separar'
    OnClick = cb_separadoClick
    Items.Strings = (
      'Sem Separar'
      'Codigo Situa'#231#227'o Tributaria'
      'Situa'#231#227'o Tributaria'
      'Fornecedor'
      'Tipo do Produto'
      'Origem do Produto')
  end
  object CB_TOTALIZAR: TCheckBox
    Left = 201
    Top = 427
    Width = 97
    Height = 17
    Caption = 'Totalizar'
    TabOrder = 16
    Visible = False
  end
  object TOTAL_TRANSP: TEdit
    Left = 152
    Top = 267
    Width = 157
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = TOTAL_TRANSPExit
  end
  object rdg_impressao: TRadioGroup
    Left = 420
    Top = 397
    Width = 130
    Height = 51
    Caption = 'Tipo Impress'#227'o'
    ItemIndex = 1
    Items.Strings = (
      'Laser'
      'Matricial')
    TabOrder = 20
  end
  object cb_classpcod: TCheckBox
    Left = 280
    Top = 366
    Width = 267
    Height = 17
    Caption = 'Trocar Classfica'#231#227'o por Codigo do Produto'
    TabOrder = 21
  end
  object CB_CST_ATUAL: TCheckBox
    Left = 480
    Top = 326
    Width = 121
    Height = 17
    TabStop = False
    Caption = 'CST - Atual'
    TabOrder = 1
    Visible = False
  end
  object bbsalvarcomlotes: TBitBtn
    Left = 314
    Top = 490
    Width = 150
    Height = 37
    Caption = 'Salvar com lotes'
    TabOrder = 22
    OnClick = bbsalvarcomlotesClick
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
  object CB_FILIAL: TComboBox
    Left = 455
    Top = 202
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 23
    OnExit = CB_FILIALExit
  end
  object cb_gerarxml: TCheckBox
    Left = 480
    Top = 472
    Width = 97
    Height = 17
    Caption = 'gerar sql'
    TabOrder = 24
  end
  object Tb_Inv: TQuery
    OnCalcFields = Tb_InvCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDMARCA,PDCLAS,PDCODFOR,'
      '       FRAZAO,PDUND,PDCODTIP AS CODTIP,'
      
        '        PDFIS_CST_ICMS_EST_REV||'#39'|'#39'||PDFIS_CST_ICMS_EST_CF||'#39'|'#39'|' +
        '|PDFIS_CST_ICMS_INT_REV||'#39'|'#39'||PDFIS_CST_ICMS_INT_CF AS PDSIT, PD' +
        'PRECO1 AS PDPRECO,'
      '       PDCODBAR,'
      '       CESALDO, CECODPRO'
      '       from CADEST,CADPRO,CADFOR where'
      '       PDCODPRO=CECODPRO'
      '      and FCODFOR=PDCODFOR'
      '       and CECODEMP is null')
    Left = 336
    Top = 257
    object Tb_InvPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_InvPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_InvPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_InvCODTIP: TFloatField
      FieldName = 'CODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_InvPDPRECO: TFloatField
      FieldName = 'PDPRECO'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
      DisplayFormat = ',0.000;-,0.000'
    end
    object Tb_InvCESALDO: TFloatField
      FieldName = 'CESALDO'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
    end
    object Tb_InvCECODPRO: TFloatField
      FieldName = 'CECODPRO'
      Origin = 'SG_ASSOC.CADEST.CECODPRO'
    end
    object Tb_InvFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Tb_InvPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_InvPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_InvPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_InvTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = ',0.00;-,0.00'
      Calculated = True
    end
    object Tb_InvPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDFIS_CST_ICMS_EST_REV'
      Size = 11
    end
    object Tb_Invsituacao: TStringField
      FieldName = 'situacao'
      Size = 100
    end
    object Tb_InvPDFIS_ORIGEM: TStringField
      FieldName = 'PDFIS_ORIGEM'
      Size = 1
    end
  end
  object Src_Inv: TDataSource
    DataSet = Tb_Inv
    Left = 370
    Top = 257
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 547
    Top = 280
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 475
    Top = 230
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 475
    Top = 265
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 475
    Top = 295
  end
end
