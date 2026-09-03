object Frm_Tab00: TFrm_Tab00
  Left = 6
  Top = 6
  Width = 794
  Height = 564
  ActiveControl = NOME
  Caption = 'Relat'#243'rios Tabulados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 503
    Width = 786
    Height = 30
    Align = alBottom
    TabOrder = 1
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 230
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object BBCANCELAR: TBitBtn
      Left = 343
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 459
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 575
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 115
      Top = 2
      Width = 113
      Height = 25
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
      NumGlyphs = 2
    end
    object cb_salvar_sql: TCheckBox
      Left = 696
      Top = 6
      Width = 75
      Height = 17
      Caption = 'Salvar Sql'
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 503
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 198
      Height = 501
      Align = alLeft
      Caption = 'Relat'#243'rios Tabulados'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 194
        Height = 245
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
            Visible = True
          end>
      end
      object GroupBox7: TGroupBox
        Left = 2
        Top = 296
        Width = 194
        Height = 74
        Align = alBottom
        Caption = 'Grupo do Relat'#243'rio/Menu'
        TabOrder = 1
        object DBText1: TDBText
          Left = 2
          Top = 15
          Width = 190
          Height = 57
          Align = alClient
          Alignment = taCenter
          AutoSize = True
          DataField = 'TCNOME'
          DataSource = Src_Rel
          WordWrap = True
        end
      end
      object GroupBox8: TGroupBox
        Left = 2
        Top = 421
        Width = 194
        Height = 78
        Align = alBottom
        Caption = 'Iniciar este ao Terminar:'
        TabOrder = 2
        object Label4: TLabel
          Left = 4
          Top = 37
          Width = 30
          Height = 13
          Caption = 'Menu:'
          Visible = False
        end
        object CB_CONT_AP: TCheckBox
          Left = 5
          Top = 58
          Width = 156
          Height = 16
          Caption = 'Avan'#231'ar p'#225'gina'
          TabOrder = 0
        end
        object CB_CONT_R: TComboBox
          Left = 1
          Top = 12
          Width = 189
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
        end
        object CONT_M: TEdit
          Left = 37
          Top = 35
          Width = 149
          Height = 21
          Ctl3D = True
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
        end
      end
      object GroupBox9: TGroupBox
        Left = 2
        Top = 370
        Width = 194
        Height = 51
        Align = alBottom
        Caption = 'Especiais:'
        TabOrder = 3
        object CB_BLOQ: TCheckBox
          Left = 6
          Top = 15
          Width = 156
          Height = 17
          Caption = 'Bloqueado'
          TabOrder = 0
        end
        object CB_AGRUPAR: TCheckBox
          Left = 6
          Top = 31
          Width = 156
          Height = 17
          Caption = 'Agrupar'
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 260
        Width = 194
        Height = 36
        Align = alBottom
        Caption = 'Pesquisar:'
        TabOrder = 4
        object NOME: TEdit
          Left = 4
          Top = 13
          Width = 183
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = NOMEChange
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 199
      Top = 1
      Width = 586
      Height = 501
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
        Left = 8
        Top = 257
        Width = 140
        Height = 13
        Caption = 'Quantidade de itens por nota:'
      end
      object L_QTDSER: TLabel
        Left = 242
        Top = 257
        Width = 162
        Height = 13
        Caption = 'Quantidade de Servicos por nota.:'
      end
      object L_QTDLPP: TLabel
        Left = 7
        Top = 238
        Width = 161
        Height = 13
        Caption = 'Quantidade de Linhas por Pagina:'
      end
      object L_QTDCOL: TLabel
        Left = 242
        Top = 238
        Width = 180
        Height = 13
        Caption = 'Quantidade de Caracteres por Linha..:'
      end
      object L2_INTCOL: TLabel
        Left = 368
        Top = 218
        Width = 127
        Height = 13
        Caption = 'Caracteres de uma p/outra'
      end
      object L1_INTCOL: TLabel
        Left = 285
        Top = 219
        Width = 27
        Height = 13
        Caption = 'Pular '
        Visible = False
      end
      object L_NUMCOL: TLabel
        Left = 8
        Top = 220
        Width = 114
        Height = 13
        Caption = 'Quantidade de Colunas:'
      end
      object Label2: TLabel
        Left = 192
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Tabela Mestre:'
      end
      object Label3: TLabel
        Left = 9
        Top = 136
        Width = 89
        Height = 13
        Caption = 'Menu Preferencial:'
      end
      object Label5: TLabel
        Left = 9
        Top = 279
        Width = 223
        Height = 13
        Caption = 'Mascara para soma/contagem que tenha data:'
      end
      object Label6: TLabel
        Left = 395
        Top = 278
        Width = 129
        Height = 13
        Caption = 'V'#225'lido somente p/ORACLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 300
        Width = 91
        Height = 13
        Caption = 'Pesquisar por data:'
      end
      object Label8: TLabel
        Left = 5
        Top = 431
        Width = 40
        Height = 13
        Caption = 'Diminuir:'
      end
      object Label9: TLabel
        Left = 286
        Top = 431
        Width = 40
        Height = 13
        Caption = 'Diminuir:'
      end
      object Label10: TLabel
        Left = 86
        Top = 431
        Width = 192
        Height = 13
        Caption = 'Linha(s)  ap'#243's imprimir Cabecalho grupos'
      end
      object Label11: TLabel
        Left = 379
        Top = 431
        Width = 163
        Height = 13
        Caption = 'Linha(s) apos imp Cab Sub-Grupos'
      end
      object Label12: TLabel
        Left = 6
        Top = 321
        Width = 132
        Height = 13
        Caption = 'Dividir Soma/Contagem em:'
      end
      object Label13: TLabel
        Left = 206
        Top = 321
        Width = 44
        Height = 13
        Caption = 'Vez(es).  '
      end
      object RGTFONTE: TRadioGroup
        Left = 5
        Top = 152
        Width = 540
        Height = 45
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
        TabOrder = 4
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 464
        Width = 582
        Height = 35
        Align = alBottom
        Caption = 'Observa'#231'oes:'
        TabOrder = 35
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 578
          Height = 18
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
      object CB_MPAGGR: TCheckBox
        Left = 111
        Top = 446
        Width = 200
        Height = 17
        Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
        TabOrder = 30
        Visible = False
      end
      object CB_GRUPO: TCheckBox
        Left = 8
        Top = 446
        Width = 100
        Height = 17
        Caption = 'Imprimir &Grupos'
        TabOrder = 29
      end
      object CB_SGRUPO: TCheckBox
        Left = 309
        Top = 445
        Width = 127
        Height = 17
        Caption = 'Imprimir &Sub-Grupos'
        TabOrder = 31
      end
      object CB_AVPTPI: TCheckBox
        Left = 8
        Top = 460
        Width = 249
        Height = 17
        Caption = 'Avancar pagina apos imprimir pagina inicial'
        TabOrder = 33
      end
      object CB_AVPIPF: TCheckBox
        Left = 264
        Top = 460
        Width = 253
        Height = 17
        Caption = 'Avan'#231'ar pagina antes de imprimir a pagina final'
        TabOrder = 34
      end
      object CB_VIS: TCheckBox
        Left = 191
        Top = 200
        Width = 153
        Height = 16
        Caption = 'Visualizar antes de imprimir'
        TabOrder = 6
      end
      object QTDITEM: TEdit
        Left = 177
        Top = 256
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnKeyPress = NUMCOLKeyPress
      end
      object QTDSER: TEdit
        Left = 426
        Top = 254
        Width = 52
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = NUMCOLKeyPress
      end
      object CB_IMPDA: TCheckBox
        Left = 367
        Top = 199
        Width = 154
        Height = 18
        Caption = 'Imprimir descri'#231#227'o alternada'
        TabOrder = 7
        Visible = False
      end
      object QTDLP: TEdit
        Left = 177
        Top = 238
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        OnKeyPress = NUMCOLKeyPress
      end
      object QTDCOL: TEdit
        Left = 426
        Top = 234
        Width = 54
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnKeyPress = NUMCOLKeyPress
      end
      object INTCOL: TEdit
        Left = 313
        Top = 216
        Width = 47
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnExit = INTCOLExit
        OnKeyPress = NUMCOLKeyPress
      end
      object NUMCOL: TEdit
        Left = 126
        Top = 218
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = NUMCOLExit
        OnKeyPress = NUMCOLKeyPress
      end
      object CB_TAB01: TComboBox
        Left = 267
        Top = 11
        Width = 275
        Height = 21
        ItemHeight = 13
        Sorted = True
        TabOrder = 1
        OnExit = CB_TAB01Exit
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 33
        Width = 529
        Height = 101
        Caption = 'Tabelas segund'#225'rias:'
        TabOrder = 2
        object CB_TAB02: TComboBox
          Left = 1
          Top = 12
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 0
          OnExit = CB_TAB02Exit
        end
        object CB_TAB03: TComboBox
          Left = 1
          Top = 34
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 2
          OnExit = CB_TAB03Exit
        end
        object CB_TAB04: TComboBox
          Left = 1
          Top = 55
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 4
          OnExit = CB_TAB04Exit
        end
        object CB_TAB05: TComboBox
          Left = 1
          Top = 78
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 6
          OnExit = CB_TAB05Exit
        end
        object CB_TAB02NUL: TCheckBox
          Left = 206
          Top = 14
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 1
        end
        object CB_TAB03NUL: TCheckBox
          Left = 206
          Top = 34
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 3
        end
        object CB_TAB04NUL: TCheckBox
          Left = 206
          Top = 58
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 5
        end
        object CB_TAB05NUL: TCheckBox
          Left = 206
          Top = 76
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 7
        end
        object CB_TAB06: TComboBox
          Left = 260
          Top = 11
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 8
          OnExit = CB_TAB06Exit
        end
        object CB_TAB06NUL: TCheckBox
          Left = 467
          Top = 11
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 9
        end
        object CB_TAB08: TComboBox
          Left = 260
          Top = 55
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 12
          OnExit = CB_TAB08Exit
        end
        object CB_TAB08NUL: TCheckBox
          Left = 468
          Top = 55
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 13
        end
        object CB_TAB07: TComboBox
          Left = 260
          Top = 32
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 10
          OnExit = CB_TAB07Exit
        end
        object CB_TAB07NUL: TCheckBox
          Left = 467
          Top = 33
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 11
        end
        object CB_TAB09: TComboBox
          Left = 260
          Top = 77
          Width = 200
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 14
          OnExit = CB_TAB09Exit
        end
        object CB_TAB09NUL: TCheckBox
          Left = 467
          Top = 76
          Width = 53
          Height = 17
          Caption = 'Nulos '
          TabOrder = 15
        end
      end
      object CB_MENU: TComboBox
        Left = 103
        Top = 133
        Width = 260
        Height = 21
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 3
        OnExit = CB_MENUExit
      end
      object CB_ENTREL: TCheckBox
        Left = 6
        Top = 200
        Width = 156
        Height = 17
        Caption = 'Oito Linhas por Polegada'
        TabOrder = 5
      end
      object CB_TPCOL: TCheckBox
        Left = 191
        Top = 217
        Width = 87
        Height = 17
        Caption = 'Lado a Lado'
        TabOrder = 9
      end
      object FILTROS: TBitBtn
        Left = 2
        Top = 385
        Width = 115
        Height = 21
        Caption = 'Filtros'
        TabOrder = 18
        OnClick = FILTROSClick
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
      end
      object ORDEM: TBitBtn
        Left = 233
        Top = 385
        Width = 115
        Height = 21
        BiDiMode = bdLeftToRight
        Caption = 'Ordem'
        ParentBiDiMode = False
        TabOrder = 19
        OnClick = ORDEMClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
          8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
          0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
          0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
          05555555575FF777755555555500055555555555557775555555}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 349
        Top = 385
        Width = 115
        Height = 21
        Caption = 'Grupos'
        TabOrder = 20
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn4: TBitBtn
        Left = 465
        Top = 385
        Width = 115
        Height = 21
        BiDiMode = bdLeftToRight
        Caption = 'Sub-Grupos'
        ParentBiDiMode = False
        TabOrder = 21
        OnClick = BitBtn4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
          055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
          88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
          F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
          F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
          0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
          00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
          0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
          05555575FF777777755555500055555555555557775555555555}
        NumGlyphs = 2
      end
      object BitBtn1: TBitBtn
        Left = 117
        Top = 406
        Width = 115
        Height = 21
        Caption = '&Opera'#231'oes'
        TabOrder = 22
        OnClick = BitBtn1Click
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
        NumGlyphs = 2
      end
      object CB_MASC: TComboBox
        Left = 233
        Top = 275
        Width = 155
        Height = 21
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 15
        OnExit = CB_MASCExit
        Items.Strings = (
          ''
          'dd'
          'ddmm'
          'mm'
          'mmdd'
          'mmyyyy'
          'yyyy'
          'yyyymm')
      end
      object BitBtn2: TBitBtn
        Left = 349
        Top = 406
        Width = 115
        Height = 21
        Caption = '&Ver Instru'#231#227'o'
        TabOrder = 24
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object CB_PERIODO: TComboBox
        Left = 112
        Top = 297
        Width = 164
        Height = 21
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 16
        OnEnter = CB_PERIODOEnter
        OnExit = CB_PERIODOExit
      end
      object DIMGRU: TEdit
        Left = 48
        Top = 430
        Width = 35
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 27
        OnKeyPress = NUMCOLKeyPress
      end
      object DIMSG: TEdit
        Left = 332
        Top = 428
        Width = 42
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 28
        OnKeyPress = NUMCOLKeyPress
      end
      object CB_TPFORM: TCheckBox
        Left = 294
        Top = 297
        Width = 216
        Height = 17
        Caption = 'Imprimir em Forma de Gr'#225'fico'
        TabOrder = 17
      end
      object BDIVIDIR: TBitBtn
        Left = 233
        Top = 406
        Width = 115
        Height = 21
        Caption = '&Campos a ser divididos'
        TabOrder = 23
        OnClick = BDIVIDIRClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object QTDDIV: TEdit
        Left = 142
        Top = 320
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 25
        OnKeyPress = NUMCOLKeyPress
      end
      object ESPECIAIS: TBitBtn
        Left = 465
        Top = 405
        Width = 115
        Height = 21
        Caption = '&Instru'#231'oes Especiais'
        TabOrder = 36
        OnClick = ESPECIAISClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
          0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
          00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
          00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
          00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
          D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
          FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object GroupBox6: TGroupBox
        Left = 3
        Top = 343
        Width = 555
        Height = 43
        Caption = 'Solicitar Entrada para Filtros de:'
        TabOrder = 37
        object Bevel1: TBevel
          Left = 85
          Top = 11
          Width = 2
          Height = 29
        end
        object Bevel2: TBevel
          Left = 273
          Top = 4
          Width = 2
          Height = 38
        end
        object Bevel3: TBevel
          Left = 173
          Top = 5
          Width = 2
          Height = 38
        end
        object CB_FILVEN1: TCheckBox
          Left = 8
          Top = 10
          Width = 73
          Height = 17
          Caption = '1-Vendedor'
          TabOrder = 0
        end
        object CB_FILCLI1: TCheckBox
          Left = 8
          Top = 23
          Width = 74
          Height = 17
          Caption = '1-Cliente'
          TabOrder = 1
        end
        object CB_FILFOR1: TCheckBox
          Left = 86
          Top = 11
          Width = 86
          Height = 17
          Caption = '1-Fornecedor'
          TabOrder = 2
        end
        object CB_FILPRO1: TCheckBox
          Left = 86
          Top = 24
          Width = 86
          Height = 17
          Caption = '1-Produto'
          TabOrder = 3
        end
        object CB_FILRED1: TCheckBox
          Left = 175
          Top = 6
          Width = 93
          Height = 17
          Caption = '1-Rede Cliente'
          TabOrder = 4
        end
        object CB_FILEST1: TCheckBox
          Left = 175
          Top = 24
          Width = 90
          Height = 17
          Caption = '1-Estado'
          TabOrder = 5
        end
        object CB_FILGPRO: TCheckBox
          Left = 279
          Top = 6
          Width = 93
          Height = 17
          Caption = 'Grupo de Produtos'
          TabOrder = 6
        end
        object CB_FILRAMPRO: TCheckBox
          Left = 279
          Top = 24
          Width = 90
          Height = 17
          Caption = 'Ramo(Sub-Gru)'
          TabOrder = 7
        end
      end
      object CONCATENADOS: TBitBtn
        Left = 1
        Top = 407
        Width = 115
        Height = 21
        Hint = 'Campos Concatenados'
        BiDiMode = bdLeftToRight
        Caption = 'Campos Conc.'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 38
        OnClick = CONCATENADOSClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
          FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
          FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
          FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
          00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
          55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
          5555777577775755555550FBFB0555555555575FFF7555555555570000755555
          5555557777555555555555555555555555555555555555555555}
        NumGlyphs = 2
      end
      object GB_TPDET: TGroupBox
        Left = 244
        Top = 317
        Width = 313
        Height = 31
        Caption = 'Ao Imprimir Detalhes:'
        TabOrder = 26
        object Label14: TLabel
          Left = 5
          Top = 15
          Width = 41
          Height = 13
          Caption = 'Qtd.Col.:'
        end
        object Label15: TLabel
          Left = 183
          Top = 12
          Width = 27
          Height = 13
          Caption = 'Pular '
          Visible = False
        end
        object Label16: TLabel
          Left = 267
          Top = 11
          Width = 38
          Height = 13
          Caption = 'Colunas'
        end
        object DETNCOL: TEdit
          Left = 46
          Top = 11
          Width = 37
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DETNCOLExit
          OnKeyPress = NUMCOLKeyPress
        end
        object CB_DETTPCOL: TCheckBox
          Left = 93
          Top = 12
          Width = 81
          Height = 17
          Caption = 'Lado a Lado'
          TabOrder = 1
        end
        object DETICOL: TEdit
          Left = 217
          Top = 9
          Width = 39
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DETICOLExit
          OnKeyPress = NUMCOLKeyPress
        end
      end
      object CB_AVANCAROD: TCheckBox
        Left = 432
        Top = 445
        Width = 127
        Height = 17
        Caption = 'Pular Linha no Rodap'#233
        TabOrder = 32
        Visible = False
      end
      object bbFiltrosEspeciais: TBitBtn
        Left = 118
        Top = 386
        Width = 115
        Height = 21
        Caption = 'Filtros Especiais'
        TabOrder = 39
        OnClick = bbFiltrosEspeciaisClick
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
      end
    end
  end
  object Qr_Rel: TQuery
    OnCalcFields = Qr_RelCalcFields
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
    object Qr_Relnomtab01: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab01'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab02: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab02'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab03: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab03'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab04: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab04'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab05: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab05'
      Size = 60
      Calculated = True
    end
    object Qr_Relgrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'grupo'
      Size = 40
      Calculated = True
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
    object Qr_Relperiodo: TStringField
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'periodo'
      Size = 80
      Calculated = True
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
    object Qr_RelTCFILVEN: TFloatField
      FieldName = 'TCFILVEN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILVEN'
    end
    object Qr_RelTCFILCLI: TFloatField
      FieldName = 'TCFILCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCLI'
    end
    object Qr_RelTCFILPRO: TFloatField
      FieldName = 'TCFILPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILPRO'
    end
    object Qr_RelTCFILFOR: TFloatField
      FieldName = 'TCFILFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFOR'
    end
    object Qr_RelTCFILRED: TFloatField
      FieldName = 'TCFILRED'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRED'
    end
    object Qr_RelTCFVCAMPO: TStringField
      FieldName = 'TCFVCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFVCAMPO'
    end
    object Qr_RelTCFCCAMPO: TStringField
      FieldName = 'TCFCCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFCCAMPO'
    end
    object Qr_RelTCFPCAMPO: TStringField
      FieldName = 'TCFPCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPCAMPO'
    end
    object Qr_RelTCFFCAMPO: TStringField
      FieldName = 'TCFFCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFFCAMPO'
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
    object Qr_Relnomtab06: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab06'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab07: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab07'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab08: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab08'
      Size = 60
      Calculated = True
    end
    object Qr_Relnomtab09: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtab09'
      Size = 60
      Calculated = True
    end
    object Qr_RelTCFILEST: TFloatField
      FieldName = 'TCFILEST'
      Origin = 'SG_ASSOC.CTDVCA.TCFILEST'
    end
    object Qr_RelTCQTDVIA: TFloatField
      FieldName = 'TCQTDVIA'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDVIA'
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
  end
  object Src_Rel: TDataSource
    DataSet = Qr_Rel
    OnDataChange = Src_RelDataChange
    Left = 376
    Top = 16
  end
  object Qr_Tab: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CANOMARQ,CATITULO from CADARQ2 '
      'group by CANOMARQ,CATITULO'
      'order by CATITULO')
    Left = 224
    Top = 16
    object Qr_TabCANOMARQ: TStringField
      FieldName = 'CANOMARQ'
      Origin = 'SG_ASSOC.CADARQ2.CANOMARQ'
      Size = 30
    end
    object Qr_TabCATITULO: TStringField
      FieldName = 'CATITULO'
      Origin = 'SG_ASSOC.CADARQ2.CATITULO'
      Size = 60
    end
  end
end
