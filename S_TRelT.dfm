object Frm_TrelT: TFrm_TrelT
  Left = 119
  Top = 38
  Width = 787
  Height = 641
  Caption = 'Relat'#243'rios Tabulados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 557
    Width = 779
    Height = 53
    Align = alBottom
    TabOrder = 1
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Incluir Rel'#225'torio'
      TabOrder = 0
      OnClick = BBINCLUIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 191
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = BBGRAVARClick
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
    object BBCANCELAR: TBitBtn
      Left = 286
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Cancelar Opera'#231'ao'
      Enabled = False
      TabOrder = 2
      OnClick = BBCANCELARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 380
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Excluir Relat'#243'rio'
      TabOrder = 3
      OnClick = BBEXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 676
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BBSAIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 97
      Top = 3
      Width = 94
      Height = 50
      Caption = 'Alterar Relat'#243'rio'
      TabOrder = 5
      OnClick = BBALTERARClick
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
    object BitBtn1: TBitBtn
      Left = 474
      Top = 3
      Width = 94
      Height = 50
      Caption = '&Opera'#231'oes'
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbCriaJC: TBitBtn
      Left = 569
      Top = 3
      Width = 94
      Height = 50
      Hint = 'Criar Campos Concatenados(juntos)'
      Caption = 'Criar Campos Conc'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbCriaJCClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 557
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 224
      Height = 555
      Align = alLeft
      Caption = 'Relat'#243'rios Tabulados'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 220
        Height = 538
        Align = alClient
        DataSource = Src_Rel
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'TCNOME'
            Title.Caption = 'Nome do Relat'#243'rio'
            Width = 188
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 225
      Top = 1
      Width = 553
      Height = 555
      Align = alClient
      Caption = 'Informa'#231'oes Sobre o Relat'#243'rio:'
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 40
        Height = 13
        Caption = 'Nome...:'
      end
      object L_QTDITEM: TLabel
        Left = 9
        Top = 155
        Width = 179
        Height = 13
        Caption = 'Quantidade de itens por nota.....:.......:'
        Visible = False
      end
      object L_QTDSER: TLabel
        Left = 278
        Top = 154
        Width = 162
        Height = 13
        Caption = 'Quantidade de Servicos por nota.:'
        Visible = False
      end
      object L_QTDLPP: TLabel
        Left = 7
        Top = 138
        Width = 170
        Height = 13
        Caption = 'Quantidade de Linhas por Pagina...:'
      end
      object L_QTDCOL: TLabel
        Left = 277
        Top = 137
        Width = 180
        Height = 13
        Caption = 'Quantidade de Caracteres por Linha..:'
      end
      object L2_INTCOL: TLabel
        Left = 362
        Top = 169
        Width = 127
        Height = 13
        Caption = 'Caracteres de uma p/outra'
        Visible = False
      end
      object L1_INTCOL: TLabel
        Left = 281
        Top = 171
        Width = 27
        Height = 13
        Caption = 'Pular '
        Visible = False
      end
      object L_NUMCOL: TLabel
        Left = 8
        Top = 171
        Width = 180
        Height = 13
        Caption = 'Quantidade de Colunas......................:'
        Visible = False
      end
      object Label2: TLabel
        Left = 255
        Top = 15
        Width = 55
        Height = 13
        Caption = 'Imprimir em:'
      end
      object Label3: TLabel
        Left = 470
        Top = 14
        Width = 25
        Height = 13
        Caption = 'via(s)'
      end
      object Label4: TLabel
        Left = 7
        Top = 434
        Width = 85
        Height = 13
        Caption = 'Agrupar Produtos:'
      end
      object Label5: TLabel
        Left = 10
        Top = 284
        Width = 84
        Height = 13
        Caption = 'Tipo do Relat'#243'rio:'
      end
      object Label6: TLabel
        Left = 191
        Top = 117
        Width = 90
        Height = 13
        Caption = 'Alternar Descri'#231#227'o:'
      end
      object Label8: TLabel
        Left = 7
        Top = 377
        Width = 87
        Height = 13
        Caption = 'Chapas Metalicas:'
      end
      object RGTFONTE: TRadioGroup
        Left = 6
        Top = 32
        Width = 563
        Height = 50
        Caption = 'Fonte Padrao:'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          '1&0cpp Normal Padrao 80 Colunas'
          '1&2cpp  Padrao 96 colunas'
          '1&7cpp Padrao 136 Colunas'
          '2&0cpp Padrao 160 Colunas'
          '&Negrito'
          '&Expandido Padrao 40 Colunas')
        TabOrder = 1
      end
      object RGENTREL: TRadioGroup
        Left = 7
        Top = 82
        Width = 563
        Height = 33
        Caption = 'Tamanho das Entrelinhas:'
        Columns = 2
        Items.Strings = (
          '6 Linhas por Polegada(Padrao)'
          '8 Linhas por Polegada')
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 513
        Width = 549
        Height = 40
        Align = alBottom
        Caption = 'Observa'#231'oes:'
        TabOrder = 21
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 545
          Height = 23
          Align = alClient
          TabOrder = 0
        end
      end
      object NOMREL: TEdit
        Left = 55
        Top = 14
        Width = 127
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = NOMRELKeyPress
      end
      object RG_TPCOL: TRadioGroup
        Left = 8
        Top = 198
        Width = 465
        Height = 35
        Caption = 'Tipo de Coluna'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          '&Sequencial '
          '&Lado a Lado Mesmo Valor')
        TabOrder = 11
        Visible = False
      end
      object RG_ORDEM: TRadioGroup
        Left = 6
        Top = 304
        Width = 543
        Height = 68
        Caption = 'Ordem de Impressao:'
        Columns = 2
        TabOrder = 14
        Visible = False
      end
      object CB_MPAGGR: TCheckBox
        Left = 8
        Top = 413
        Width = 245
        Height = 17
        Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
        TabOrder = 17
        Visible = False
      end
      object RG_TPESQ: TRadioGroup
        Left = 7
        Top = 231
        Width = 563
        Height = 49
        Caption = 'Pesquisar por:'
        Columns = 2
        TabOrder = 12
        Visible = False
      end
      object CB_GRUPO: TCheckBox
        Left = 8
        Top = 397
        Width = 243
        Height = 17
        Caption = 'Imprimir &Grupos'
        TabOrder = 15
      end
      object CB_SGRUPO: TCheckBox
        Left = 286
        Top = 396
        Width = 240
        Height = 17
        Caption = 'Imprimir &Sub-Grupos'
        TabOrder = 16
      end
      object CB_AVPIPF: TCheckBox
        Left = 286
        Top = 427
        Width = 256
        Height = 17
        Caption = 'Avan'#231'ar pagina antes de imprimir a pagina final'
        TabOrder = 20
        Visible = False
      end
      object CB_VIS: TCheckBox
        Left = 8
        Top = 116
        Width = 162
        Height = 16
        Caption = 'Visualizar antes de imprimir'
        TabOrder = 3
      end
      object QTDITEM: TEdit
        Left = 191
        Top = 152
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        OnKeyPress = QTDITEMKeyPress
      end
      object QTDSER: TEdit
        Left = 460
        Top = 150
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnKeyPress = QTDITEMKeyPress
      end
      object QTDLP: TEdit
        Left = 191
        Top = 134
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object QTDCOL: TEdit
        Left = 460
        Top = 132
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object INTCOL: TEdit
        Left = 313
        Top = 168
        Width = 47
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Visible = False
      end
      object NUMCOL: TEdit
        Left = 191
        Top = 170
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        Visible = False
      end
      object CB_AVANCAROD: TCheckBox
        Left = 286
        Top = 412
        Width = 241
        Height = 17
        Caption = 'Pular Linha no Rodap'#233
        TabOrder = 18
      end
      object RG_AVPTPI: TComboBox
        Left = 95
        Top = 431
        Width = 173
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 19
        Text = 'Nunca'
        OnExit = RG_AVPTPIExit
        Items.Strings = (
          'Padr'#227'o(sistema assume)'
          'Mesmo C'#243'digo'
          'C'#243'digo do tipo iguais'
          'C'#243'digo de Agrupamento Iguais'
          'N'#227'o Agrupar')
      end
      object CB_TPREL: TComboBox
        Left = 100
        Top = 282
        Width = 373
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 13
        OnChange = CB_TPRELChange
        Items.Strings = (
          'Normal(personalizado)'
          'Fixa do Sistema'
          'Documento Word(personalizav'#233'l)'
          'Fortes Fixo'
          'Bobina'
          'Bobina2'
          'Industrial (Linhas em branco)'
          'Controle de Qualidade'
          'Fortes Fixo sem valores'
          'Fixa do Sistema Pendencias Proxima pagina'
          'Externo Mod 01'
          'Externo Mod 02'
          'Externo Mod 03'
          'Externo Mod 04'
          'Meia pagina ou inteira depende da quantidade de itens'
          'Bobina 3 - Descricao Completa + marca'
          'Fortes Fixo (modelo 03) com preco unitario da unidade'
          'Fortes Fixo (modelo 04) sem valores e com vias de corte'
          'Controle de Qualidade Sem Valores')
      end
      object RG_IMPDA: TComboBox
        Left = 284
        Top = 113
        Width = 176
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 7
        Text = 'Nunca'
        Items.Strings = (
          'Nunca'
          'Digitada no Pedido'
          'Produto Similar'
          'Descricao do Fornecedor')
      end
      object CB_TPFORM: TCheckBox
        Left = 363
        Top = 184
        Width = 167
        Height = 17
        Caption = 'Rodape Em Todas as Paginas'
        TabOrder = 22
      end
      object CB_QTDVIA: TComboBox
        Left = 314
        Top = 11
        Width = 144
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 23
        Text = '1 via'
        Items.Strings = (
          'Cliente Escolhe'
          '1 via'
          '2 vias'
          '3 vias'
          '4 vias'
          '5 vias'
          '6 vias'
          '7 vias'
          '8 vias'
          '9 vias')
      end
      object gprod: TGroupBox
        Left = 2
        Top = 463
        Width = 549
        Height = 50
        Align = alBottom
        Caption = '-=Imprimir somente produtos do grupo =-'
        TabOrder = 24
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 98
          Height = 13
          Caption = 'Grupo de Produtos..:'
        end
        object edt_codgru: TEdit
          Left = 108
          Top = 19
          Width = 77
          Height = 21
          TabOrder = 0
          OnExit = edt_codgruExit
          OnKeyPress = edt_codgruKeyPress
        end
        object edt_nomgru: TEdit
          Left = 184
          Top = 19
          Width = 353
          Height = 21
          Color = 16776176
          ReadOnly = True
          TabOrder = 1
        end
      end
      object CB_MODMATR: TCheckBox
        Left = 286
        Top = 443
        Width = 256
        Height = 17
        Caption = 'Modelo Matricial'
        Checked = True
        State = cbChecked
        TabOrder = 25
        Visible = False
      end
      object cb_cmet: TComboBox
        Left = 95
        Top = 375
        Width = 173
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 26
        Text = 'N'#227'o Imprime'
        OnExit = cb_cmetExit
        Items.Strings = (
          'N'#227'o Imprime'
          'Modelo 01')
      end
      object cb_PercDesc: TCheckBox
        Left = 286
        Top = 380
        Width = 256
        Height = 17
        Caption = 'Imprimir Percentual de Desconto'
        TabOrder = 27
      end
    end
  end
  object Qr_Rel: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVCA Where TCCODEMP is null')
    Left = 344
    Top = 16
    object Qr_RelTCCODEMP: TFloatField
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CTDVCA.TCCODEMP'
    end
    object Qr_RelTCDOC: TStringField
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CTDVCA.TCDOC'
      Size = 10
    end
    object Qr_RelTCNOME: TStringField
      FieldName = 'TCNOME'
      Origin = 'SG_ASSOC.CTDVCA.TCNOME'
    end
    object Qr_RelTCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
    end
    object Qr_RelTCQTDLIN: TFloatField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLIN'
    end
    object Qr_RelTCQTDCOL: TFloatField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDCOL'
    end
    object Qr_RelTCFPADRAO: TFloatField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPADRAO'
    end
    object Qr_RelTCQTDITEM: TFloatField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDITEM'
    end
    object Qr_RelTCQTDLPP: TFloatField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLPP'
    end
    object Qr_RelTCNUMCOL: TFloatField
      FieldName = 'TCNUMCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCNUMCOL'
    end
    object Qr_RelTCINTCOL: TFloatField
      FieldName = 'TCINTCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCINTCOL'
    end
    object Qr_RelTCTPCOL: TFloatField
      FieldName = 'TCTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPCOL'
    end
    object Qr_RelTCORDEM: TFloatField
      FieldName = 'TCORDEM'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM'
    end
    object Qr_RelTCMPAGGR: TFloatField
      FieldName = 'TCMPAGGR'
      Origin = 'SG_ASSOC.CTDVCA.TCMPAGGR'
    end
    object Qr_RelTCTPESQ: TFloatField
      FieldName = 'TCTPESQ'
      Origin = 'SG_ASSOC.CTDVCA.TCTPESQ'
    end
    object Qr_RelTCTPREL: TFloatField
      FieldName = 'TCTPREL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPREL'
    end
    object Qr_RelTCIMPG: TFloatField
      FieldName = 'TCIMPG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPG'
    end
    object Qr_RelTCIMPSG: TFloatField
      FieldName = 'TCIMPSG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPSG'
    end
    object Qr_RelTCAVPTPI: TFloatField
      FieldName = 'TCAVPTPI'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPTPI'
    end
    object Qr_RelTCAVPIPF: TFloatField
      FieldName = 'TCAVPIPF'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPIPF'
    end
    object Qr_RelTCSTATUS: TFloatField
      FieldName = 'TCSTATUS'
      Origin = 'SG_ASSOC.CTDVCA.TCSTATUS'
    end
    object Qr_RelTCVIS: TFloatField
      FieldName = 'TCVIS'
      Origin = 'SG_ASSOC.CTDVCA.TCVIS'
    end
    object Qr_RelTCQTDSER: TFloatField
      FieldName = 'TCQTDSER'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDSER'
    end
    object Qr_RelTCIMPDA: TFloatField
      FieldName = 'TCIMPDA'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPDA'
    end
    object Qr_RelTCTAB01: TStringField
      FieldName = 'TCTAB01'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB01'
      Size = 40
    end
    object Qr_RelTCTAB02: TStringField
      FieldName = 'TCTAB02'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02'
      Size = 40
    end
    object Qr_RelTCTAB02N: TFloatField
      FieldName = 'TCTAB02N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02N'
    end
    object Qr_RelTCTAB03: TStringField
      FieldName = 'TCTAB03'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03'
      Size = 40
    end
    object Qr_RelTCTAB03N: TFloatField
      FieldName = 'TCTAB03N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03N'
    end
    object Qr_RelTCTAB04: TStringField
      FieldName = 'TCTAB04'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04'
      Size = 40
    end
    object Qr_RelTCTAB04N: TFloatField
      FieldName = 'TCTAB04N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04N'
    end
    object Qr_RelTCTAB05: TStringField
      FieldName = 'TCTAB05'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05'
      Size = 40
    end
    object Qr_RelTCTAB05N: TFloatField
      FieldName = 'TCTAB05N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05N'
    end
    object Qr_RelTCTAB06: TStringField
      FieldName = 'TCTAB06'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06'
      Size = 40
    end
    object Qr_RelTCTAB06N: TFloatField
      FieldName = 'TCTAB06N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06N'
    end
    object Qr_RelTCTAB07: TStringField
      FieldName = 'TCTAB07'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07'
      Size = 40
    end
    object Qr_RelTCTAB07N: TFloatField
      FieldName = 'TCTAB07N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07N'
    end
    object Qr_RelTCTAB08: TStringField
      FieldName = 'TCTAB08'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08'
      Size = 40
    end
    object Qr_RelTCTAB08N: TFloatField
      FieldName = 'TCTAB08N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08N'
    end
    object Qr_RelTCTAB09: TStringField
      FieldName = 'TCTAB09'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09'
      Size = 40
    end
    object Qr_RelTCTAB09N: TFloatField
      FieldName = 'TCTAB09N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09N'
    end
    object Qr_RelTCORDEM2: TStringField
      FieldName = 'TCORDEM2'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM2'
      Size = 240
    end
    object Qr_RelTCFILTRO: TStringField
      FieldName = 'TCFILTRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRO'
      Size = 240
    end
    object Qr_RelTCCONT_M: TStringField
      FieldName = 'TCCONT_M'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_M'
      Size = 30
    end
    object Qr_RelTCCONT_R: TStringField
      FieldName = 'TCCONT_R'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_R'
      Size = 40
    end
    object Qr_RelTCCONT_AP: TFloatField
      FieldName = 'TCCONT_AP'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_AP'
    end
    object Qr_RelTCBLOQ: TFloatField
      FieldName = 'TCBLOQ'
      Origin = 'SG_ASSOC.CTDVCA.TCBLOQ'
    end
    object Qr_RelTCAGRUPAR: TFloatField
      FieldName = 'TCAGRUPAR'
      Origin = 'SG_ASSOC.CTDVCA.TCAGRUPAR'
    end
    object Qr_RelTCMASC: TStringField
      FieldName = 'TCMASC'
      Origin = 'SG_ASSOC.CTDVCA.TCMASC'
      Size = 40
    end
    object Qr_RelTCPERIODO: TStringField
      FieldName = 'TCPERIODO'
      Origin = 'SG_ASSOC.CTDVCA.TCPERIODO'
      Size = 40
    end
    object Qr_RelTCDIMGRU: TFloatField
      FieldName = 'TCDIMGRU'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMGRU'
    end
    object Qr_RelTCDIMSG: TFloatField
      FieldName = 'TCDIMSG'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMSG'
    end
    object Qr_RelTCTPFORM: TFloatField
      FieldName = 'TCTPFORM'
      Origin = 'SG_ASSOC.CTDVCA.TCTPFORM'
    end
    object Qr_RelTCQTDDIV: TFloatField
      FieldName = 'TCQTDDIV'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDDIV'
    end
    object Qr_RelTCFILVEN: TFloatField
      FieldName = 'TCFILVEN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILVEN'
    end
    object Qr_RelTCFVCAMPO: TStringField
      FieldName = 'TCFVCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFVCAMPO'
    end
    object Qr_RelTCFILCLI: TFloatField
      FieldName = 'TCFILCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCLI'
    end
    object Qr_RelTCFCCAMPO: TStringField
      FieldName = 'TCFCCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFCCAMPO'
    end
    object Qr_RelTCFILPRO: TFloatField
      FieldName = 'TCFILPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILPRO'
    end
    object Qr_RelTCFPCAMPO: TStringField
      FieldName = 'TCFPCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPCAMPO'
    end
    object Qr_RelTCFILFOR: TFloatField
      FieldName = 'TCFILFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFOR'
    end
    object Qr_RelTCFFCAMPO: TStringField
      FieldName = 'TCFFCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFFCAMPO'
    end
    object Qr_RelTCFILRED: TFloatField
      FieldName = 'TCFILRED'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRED'
    end
    object Qr_RelTCFRCAMPO: TStringField
      FieldName = 'TCFRCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFRCAMPO'
    end
    object Qr_RelTCDETNCOL: TFloatField
      FieldName = 'TCDETNCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETNCOL'
    end
    object Qr_RelTCDETICOL: TFloatField
      FieldName = 'TCDETICOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETICOL'
    end
    object Qr_RelTCDETTPCOL: TFloatField
      FieldName = 'TCDETTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETTPCOL'
    end
    object Qr_RelTCAVANCAROD: TFloatField
      FieldName = 'TCAVANCAROD'
      Origin = 'SG_ASSOC.CTDVCA.TCAVANCAROD'
    end
    object Qr_RelTCQTDVIA: TFloatField
      FieldName = 'TCQTDVIA'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDVIA'
    end
    object Qr_RelTCFILEST: TFloatField
      FieldName = 'TCFILEST'
      Origin = 'SG_ASSOC.CTDVCA.TCFILEST'
    end
    object Qr_RelTCFILRAMCLI: TFloatField
      FieldName = 'TCFILRAMCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMCLI'
    end
    object Qr_RelTCFILRAMPRO: TFloatField
      FieldName = 'TCFILRAMPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMPRO'
    end
    object Qr_RelTCFILTPRO: TFloatField
      FieldName = 'TCFILTPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTPRO'
    end
    object Qr_RelTCFILGPRO: TFloatField
      FieldName = 'TCFILGPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGPRO'
    end
    object Qr_RelTCFILCPRO: TFloatField
      FieldName = 'TCFILCPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCPRO'
    end
    object Qr_RelTCFILLOC: TFloatField
      FieldName = 'TCFILLOC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILLOC'
    end
    object Qr_RelTCFILBAI: TFloatField
      FieldName = 'TCFILBAI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBAI'
    end
    object Qr_RelTCFILGFOR: TFloatField
      FieldName = 'TCFILGFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGFOR'
    end
    object Qr_RelTCFILCONV: TFloatField
      FieldName = 'TCFILCONV'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCONV'
    end
    object Qr_RelTCFILSUP: TFloatField
      FieldName = 'TCFILSUP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILSUP'
    end
    object Qr_RelTCFILASS: TFloatField
      FieldName = 'TCFILASS'
      Origin = 'SG_ASSOC.CTDVCA.TCFILASS'
    end
    object Qr_RelTCFILREG: TFloatField
      FieldName = 'TCFILREG'
      Origin = 'SG_ASSOC.CTDVCA.TCFILREG'
    end
    object Qr_RelTCFILTRA: TFloatField
      FieldName = 'TCFILTRA'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRA'
    end
    object Qr_RelTCFILBCO: TFloatField
      FieldName = 'TCFILBCO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBCO'
    end
    object Qr_RelTCFILCC: TFloatField
      FieldName = 'TCFILCC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCC'
    end
    object Qr_RelTCFILDEP: TFloatField
      FieldName = 'TCFILDEP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILDEP'
    end
    object Qr_RelTCFILUSR: TFloatField
      FieldName = 'TCFILUSR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILUSR'
    end
    object Qr_RelTCFILCAR: TFloatField
      FieldName = 'TCFILCAR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCAR'
    end
    object Qr_RelTCFILFUN: TFloatField
      FieldName = 'TCFILFUN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFUN'
    end
    object Qr_RelTCGPRO: TFloatField
      FieldName = 'TCGPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCGPRO'
    end
    object Qr_RelTCMODIMP: TFloatField
      FieldName = 'TCMODIMP'
      Origin = 'SG_ASSOC.CTDVCA.TCMODIMP'
    end
    object Qr_RelTCIMPPD: TFloatField
      FieldName = 'TCIMPPD'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPPD'
    end
  end
  object Src_Rel: TDataSource
    DataSet = Qr_Rel
    OnDataChange = Src_RelDataChange
    Left = 376
    Top = 16
  end
end
