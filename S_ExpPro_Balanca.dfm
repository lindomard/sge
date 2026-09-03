object Frm_ExpPro_Balanca: TFrm_ExpPro_Balanca
  Left = 95
  Top = -8
  Width = 720
  Height = 519
  Caption = 'Exporta'#231#227'o de Produtos Para Balan'#231'a'
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
  object Label3: TLabel
    Left = 5
    Top = 298
    Width = 221
    Height = 13
    Caption = 'Produtos Incluidos entre o Per'#237'odo de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 341
    Top = 296
    Width = 8
    Height = 13
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 110
    Top = 319
    Width = 114
    Height = 13
    Caption = 'Modelo da Balan'#231'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 110
    Top = 340
    Width = 116
    Height = 13
    Caption = 'Tipo de Exporta'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 110
    Top = 385
    Width = 82
    Height = 13
    Caption = 'Pasta destino:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sb_SalvarPadrao: TSpeedButton
    Left = 271
    Top = 443
    Width = 201
    Height = 36
    Hint = 'Salva as configura'#231#245'es como padr'#227'o'
    Caption = '&Salvar Padr'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sb_SalvarPadraoClick
  end
  object Label12: TLabel
    Left = 90
    Top = 403
    Width = 102
    Height = 13
    Caption = 'Nome do Arquivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SB01: TSpeedButton
    Left = 658
    Top = 382
    Width = 23
    Height = 20
    Hint = 'Definir Caminho'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SB01Click
  end
  object Label14: TLabel
    Left = 135
    Top = 360
    Width = 86
    Height = 13
    Caption = 'Vers'#227'o Layout:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pcFiltros: TPageControl
    Left = 0
    Top = 0
    Width = 712
    Height = 289
    ActivePage = TsFiltrosPrim
    Align = alTop
    TabOrder = 0
    object TsFiltrosPrim: TTabSheet
      Caption = 'Filtros Primarios'
      object Label5: TLabel
        Left = 43
        Top = 4
        Width = 69
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 2
        Top = 44
        Width = 111
        Height = 13
        Caption = 'Grupo de Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 9
        Top = 84
        Width = 103
        Height = 13
        Caption = 'Ramo/Sub-Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 66
        Top = 124
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
      object Label13: TLabel
        Left = 30
        Top = 165
        Width = 84
        Height = 13
        Caption = 'Departamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 13
        Top = 209
        Width = 101
        Height = 13
        Caption = 'Informa'#231#227'o Extra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODFOR: TEdit
        Left = 115
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
      object lbx_codfor: TListBox
        Left = 176
        Top = 1
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 116
        Top = 23
        Width = 58
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODGRU: TEdit
        Left = 115
        Top = 42
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 176
        Top = 42
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 115
        Top = 64
        Width = 57
        Height = 14
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CODRAM: TEdit
        Left = 115
        Top = 83
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object lbx_codram: TListBox
        Left = 176
        Top = 83
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 115
        Top = 105
        Width = 55
        Height = 13
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object CODPRO: TEdit
        Left = 115
        Top = 124
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
        Left = 176
        Top = 124
        Width = 510
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
        Left = 115
        Top = 146
        Width = 58
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODPRO_DPTO: TEdit
        Left = 115
        Top = 165
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODPRO_DPTOExit
        OnKeyPress = CODPRO_DPTOKeyPress
      end
      object lbx_codpro_dpto: TListBox
        Left = 176
        Top = 165
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codpro_dptoKeyDown
      end
      object OMITIR_PRODEP: TCheckBox
        Left = 115
        Top = 187
        Width = 58
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codpro_ext: TListBox
        Left = 176
        Top = 206
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codpro_extKeyDown
      end
      object CODPRO_EXT: TEdit
        Left = 115
        Top = 206
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnExit = CODPRO_EXTExit
        OnKeyPress = CODPRO_EXTKeyPress
      end
      object OMITIR_PROEXT: TCheckBox
        Left = 115
        Top = 228
        Width = 58
        Height = 17
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
    end
    object tsFiltrosSeg: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object Label2: TLabel
        Left = 33
        Top = 3
        Width = 78
        Height = 13
        Caption = 'Tipo Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 30
        Top = 44
        Width = 81
        Height = 13
        Caption = 'Tipo Controle:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODTIP: TEdit
        Left = 115
        Top = 2
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object lbx_codtip: TListBox
        Left = 176
        Top = 2
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 115
        Top = 27
        Width = 56
        Height = 14
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODCON: TEdit
        Left = 115
        Top = 43
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object lbx_codcon: TListBox
        Left = 176
        Top = 43
        Width = 510
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 118
        Top = 68
        Width = 51
        Height = 14
        Caption = 'Omitir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CLBNivel: TCheckListBox
        Left = 8
        Top = 107
        Width = 274
        Height = 85
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
        TabOrder = 6
        OnClick = CLBNivelClick
      end
      object StaticText1: TStaticText
        Left = 8
        Top = 91
        Width = 274
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipo Produto'
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
      object CLBStatus: TCheckListBox
        Left = 298
        Top = 106
        Width = 208
        Height = 85
        Color = 16776176
        Columns = 2
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
        TabOrder = 8
        OnClick = CLBStatusClick
      end
      object StaticText2: TStaticText
        Left = 299
        Top = 91
        Width = 208
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Status do Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object CLBEstoque: TCheckListBox
        Left = 523
        Top = 106
        Width = 163
        Height = 82
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 10
        OnClick = CLBEstoqueClick
      end
      object StaticText3: TStaticText
        Left = 523
        Top = 90
        Width = 163
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Estoque'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 228
    Top = 295
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 362
    Top = 295
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CB_MODBAL: TComboBox
    Left = 228
    Top = 316
    Width = 314
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 3
    Text = 'MGV5(Toledo)'
    OnClick = CB_MODBALClick
    Items.Strings = (
      'Filizola'
      'MGV5(Toledo)')
  end
  object CB_TIPOATU: TComboBox
    Left = 228
    Top = 337
    Width = 314
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 6
    TabOrder = 4
    Text = 'Itens Cadastro'
    OnChange = CB_TIPOATUChange
    Items.Strings = (
      'Arquivo de Conservantes'
      'Arquivo de Departamento'
      'Arquivo de Fracionadores'
      'Arquivo de Taras Pr'#233'-Determinadas'
      'Informa'#231#245'es Extras'
      'Informa'#231#245'es Nutrinicional'
      'Itens Cadastro'
      'Itens em Promo'#231#227'o')
  end
  object NOMEPASTA: TEdit
    Left = 200
    Top = 382
    Width = 457
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object bbGerar: TBitBtn
    Left = 5
    Top = 443
    Width = 203
    Height = 36
    Caption = '&Gerar Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bbGerarClick
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
    Left = 500
    Top = 443
    Width = 203
    Height = 36
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
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
  object NOMEARQ: TEdit
    Left = 200
    Top = 400
    Width = 457
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
  end
  object CB_VERSAO: TComboBox
    Left = 228
    Top = 357
    Width = 314
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Versao 1 (a partir do MGV vers'#227'o 3.01 AF)'
    Items.Strings = (
      'Versao 1 (a partir do MGV vers'#227'o 3.01 AF)'
      'Versao 2 (a partir do MGV vers'#227'o 6.10 k))')
  end
  object CB_IGNORA_INCONS: TCheckBox
    Left = 202
    Top = 422
    Width = 343
    Height = 17
    Caption = 'Ignorar Registros Inconsistentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO,PDCODEMP,PDNOME,PDMARCA,PDPRECO1,PDUND,'
      'PDDATCAD,PDCODDEP,PDPRZVAL_DIAS,PDFRACAO,PDCODEXT'
      'from CADPRO')
    Left = 48
    Top = 152
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_ProPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Qr_ProPDCODDEP: TFloatField
      FieldName = 'PDCODDEP'
      Origin = 'SG_ASSOC.CADPRO.PDCODDEP'
    end
    object Qr_ProPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL_DIAS'
    end
    object Qr_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Qr_ProPDCODEXT: TFloatField
      FieldName = 'PDCODEXT'
      Origin = 'SG_ASSOC.CADPRO.PDCODEXT'
    end
  end
end
