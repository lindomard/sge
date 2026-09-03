object Frm_ProABC: TFrm_ProABC
  Left = 318
  Top = 96
  Width = 887
  Height = 521
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ABC de Produtos'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sb_SalvarPadrao: TSpeedButton
    Left = 405
    Top = 441
    Width = 148
    Height = 36
    Cursor = crHandPoint
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
  object Label3: TLabel
    Left = 5
    Top = 319
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 189
    Top = 317
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
    Left = 364
    Top = 395
    Width = 160
    Height = 13
    Caption = 'Casas Decimais para Quantidade:'
  end
  object Label16: TLabel
    Left = 312
    Top = 319
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_separado: TLabel
    Left = 6
    Top = 395
    Width = 67
    Height = 13
    Caption = 'Separado por:'
    Visible = False
  end
  object lbl_prodserv: TLabel
    Left = 467
    Top = 350
    Width = 73
    Height = 13
    Caption = 'Tipo Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 4
    Top = 350
    Width = 82
    Height = 13
    Caption = 'Tipo de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 129
    Top = 350
    Width = 110
    Height = 13
    Caption = 'Ordem do Relatorio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 261
    Top = 350
    Width = 87
    Height = 13
    Caption = 'Tipo de Pre'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 425
    Top = 417
    Width = 57
    Height = 13
    Caption = 'Impress'#227'o..:'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 879
    Height = 314
    ActivePage = TabSheet2
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Panel2: TPanel
        Left = 0
        Top = 280
        Width = 833
        Height = 26
        Align = alBottom
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 833
        Height = 302
        Align = alTop
        Caption = 'Filtros Primarios:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label1: TLabel
          Left = 34
          Top = 16
          Width = 40
          Height = 13
          Caption = 'Produto:'
        end
        object Label5: TLabel
          Left = 17
          Top = 56
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object lbl_codven: TLabel
          Left = 25
          Top = 95
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object Label11: TLabel
          Left = 8
          Top = 214
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
          Left = 549
          Top = 214
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
          Left = 288
          Top = 214
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
        object CODPRO: TEdit
          Left = 76
          Top = 14
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
          Left = 137
          Top = 14
          Width = 581
          Height = 40
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
        object CODFOR: TEdit
          Left = 76
          Top = 53
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
          OnMouseMove = CODFORMouseMove
        end
        object lbx_codfor: TListBox
          Left = 137
          Top = 53
          Width = 581
          Height = 40
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codforKeyDown
        end
        object CODVEN: TEdit
          Left = 76
          Top = 92
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
          OnMouseMove = CODVENMouseMove
        end
        object lbx_codven: TListBox
          Left = 137
          Top = 92
          Width = 581
          Height = 40
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codvenKeyDown
        end
        object CLBNivel: TCheckListBox
          Left = 7
          Top = 230
          Width = 274
          Height = 69
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
          TabOrder = 13
          OnClick = CLBNivelClick
          OnExit = CLBNivelExit
        end
        object OMITIR_PRO: TCheckBox
          Left = 78
          Top = 34
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnMouseMove = OMITIR_PROMouseMove
        end
        object CLBStatus: TCheckListBox
          Left = 286
          Top = 230
          Width = 259
          Height = 69
          Color = 16776176
          Columns = 3
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
          TabOrder = 14
          OnClick = CLBStatusClick
        end
        object OMITIR_FOR: TCheckBox
          Left = 78
          Top = 74
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnMouseMove = OMITIR_FORMouseMove
        end
        object CLBEstoque: TCheckListBox
          Left = 550
          Top = 230
          Width = 200
          Height = 68
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'c/Estoque'
            's/Estoque'
            'Estoque Negativo'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 15
          OnClick = CLBEstoqueClick
          OnExit = CLBEstoqueExit
        end
        object OMITIR_VEN: TCheckBox
          Left = 77
          Top = 113
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnMouseMove = OMITIR_VENMouseMove
        end
        object StaticText3: TStaticText
          Left = 6
          Top = 133
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supervisor:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 9
        end
        object CODSUP: TEdit
          Left = 76
          Top = 131
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = CODSUPExit
          OnKeyPress = CODSUPKeyPress
        end
        object OMITIR_SUP: TCheckBox
          Left = 80
          Top = 152
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object lbx_codsup: TListBox
          Left = 137
          Top = 131
          Width = 581
          Height = 40
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnKeyDown = lbx_codsupKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 80
          Top = 191
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
        end
        object lbx_codbco: TListBox
          Left = 137
          Top = 170
          Width = 581
          Height = 40
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnKeyDown = lbx_codbcoKeyDown
        end
        object CODBCO: TEdit
          Left = 76
          Top = 170
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 18
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 172
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Banco/Caixa:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 19
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 833
        Height = 292
        Align = alTop
        Caption = 'Filtros Secundarios:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label2: TLabel
          Left = 36
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Tipo Produto:'
        end
        object Label8: TLabel
          Left = 6
          Top = 63
          Width = 92
          Height = 13
          Caption = 'Grupo de Produtos:'
        end
        object Label7: TLabel
          Left = 35
          Top = 105
          Width = 66
          Height = 13
          Caption = 'Tipo Controle:'
        end
        object Label9: TLabel
          Left = 15
          Top = 147
          Width = 84
          Height = 13
          Caption = 'Ramo/Sub-Grupo'
        end
        object Label10: TLabel
          Left = 45
          Top = 186
          Width = 55
          Height = 13
          Caption = 'Estado/UF:'
        end
        object lbl_codcli: TLabel
          Left = 66
          Top = 228
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label20: TLabel
          Left = 70
          Top = 273
          Width = 33
          Height = 13
          Caption = 'Marca:'
        end
        object CODTIP: TEdit
          Left = 103
          Top = 19
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
          OnMouseMove = CODTIPMouseMove
        end
        object lbx_codtip: TListBox
          Left = 164
          Top = 19
          Width = 445
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
          Left = 104
          Top = 44
          Width = 56
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnMouseMove = OMITIR_TPROMouseMove
        end
        object CODGRU: TEdit
          Left = 103
          Top = 60
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODGRUExit
          OnKeyPress = CODGRUKeyPress
          OnMouseMove = CODGRUMouseMove
        end
        object lbx_codgru: TListBox
          Left = 164
          Top = 60
          Width = 445
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
          Left = 104
          Top = 82
          Width = 57
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnMouseMove = OMITIR_GRUMouseMove
        end
        object CODCON: TEdit
          Left = 104
          Top = 101
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
          OnMouseMove = CODCONMouseMove
        end
        object lbx_codcon: TListBox
          Left = 164
          Top = 101
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codconKeyDown
        end
        object OMITIR_CON: TCheckBox
          Left = 107
          Top = 126
          Width = 51
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnMouseMove = OMITIR_CONMouseMove
        end
        object CODRAM: TEdit
          Left = 103
          Top = 142
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnExit = CODRAMExit
          OnKeyPress = CODRAMKeyPress
          OnMouseMove = CODRAMMouseMove
        end
        object lbx_codram: TListBox
          Left = 164
          Top = 142
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codramKeyDown
        end
        object OMITIR_RAM: TCheckBox
          Left = 105
          Top = 166
          Width = 47
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnMouseMove = OMITIR_RAMMouseMove
        end
        object CODUF: TEdit
          Left = 103
          Top = 183
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
          OnMouseMove = CODUFMouseMove
        end
        object lbx_coduf: TListBox
          Left = 164
          Top = 183
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 105
          Top = 205
          Width = 49
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object CODCLI: TEdit
          Left = 104
          Top = 225
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 164
          Top = 224
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 108
          Top = 250
          Width = 50
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnMouseMove = OMITIR_RAMMouseMove
        end
        object edt_marca: TEdit
          Left = 106
          Top = 270
          Width = 503
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object GroupBox3: TGroupBox
          Left = 616
          Top = 192
          Width = 128
          Height = 99
          Caption = 'Descontos:'
          TabOrder = 19
          object Label21: TLabel
            Left = 16
            Top = 16
            Width = 93
            Height = 13
            Caption = 'Desconto Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 16
            Top = 54
            Width = 86
            Height = 13
            Caption = 'Desconto Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edt_descini: TCurrencyEdit
            Left = 17
            Top = 32
            Width = 75
            Height = 21
            AutoSize = False
            DisplayFormat = ' ,0.00;- ,0.00'
            TabOrder = 0
          end
          object edt_descfin: TCurrencyEdit
            Left = 17
            Top = 70
            Width = 75
            Height = 21
            AutoSize = False
            DisplayFormat = ' ,0.00;- ,0.00'
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tipo de Pedido'
      ImageIndex = 2
      object Label12: TLabel
        Left = 3
        Top = 14
        Width = 69
        Height = 13
        Caption = 'Tipo Pedido'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RG_TIPOPED: TCheckListBox
        Left = 4
        Top = 29
        Width = 750
        Height = 262
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 3
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
        OnExit = RG_TIPOPEDExit
      end
    end
    object ts_rel: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object rlreport1: TRLReport
        Left = 0
        Top = 5
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand2: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 111
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand2BeforePrint
          object RL_CABECALHO: TRLLabel
            Left = 0
            Top = 48
            Width = 716
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 1
            Top = 2
            Width = 68
            Height = 16
            Caption = 'Empresa..:'
          end
          object RLDBText7: TRLDBText
            Left = 70
            Top = 2
            Width = 384
            Height = 16
            AutoSize = False
            DataField = 'FANTASIA'
            DataSource = DM1.Src_Emp
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 19
            Width = 71
            Height = 16
            Caption = 'Endere'#231'o..:'
          end
          object RLDBText8: TRLDBText
            Left = 73
            Top = 19
            Width = 616
            Height = 16
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object rlperiodo: TRLLabel
            Left = 0
            Top = 74
            Width = 718
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Periodo'
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 212
          Width = 716
          Height = 49
          BandType = btSummary
          BeforePrint = RLBand3BeforePrint
          object RLLabel3: TRLLabel
            Left = 270
            Top = 8
            Width = 139
            Height = 16
            Caption = 'Total de Quantidades..:'
          end
          object rltotalqtd: TRLLabel
            Left = 409
            Top = 8
            Width = 232
            Height = 16
            AutoSize = False
            Caption = 'Totaliza'#231#245'es..:'
          end
          object RLLabel4: TRLLabel
            Left = 268
            Top = 24
            Width = 141
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total em Valor..:'
          end
          object rlvaltot: TRLLabel
            Left = 409
            Top = 24
            Width = 232
            Height = 16
            AutoSize = False
            Caption = 'Totaliza'#231#245'es..:'
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 261
          Width = 716
          Height = 17
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand4BeforePrint
          object rl_banner: TRLLabel
            Left = 1
            Top = 0
            Width = 715
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 39
          Top = 150
          Width = 716
          Height = 62
          DataFields = 'GRUPO'
          object RLBand5: TRLBand
            Left = 0
            Top = 16
            Width = 716
            Height = 16
            BandType = btHeader
            object RL_CODIGO: TRLLabel
              Left = 0
              Top = 0
              Width = 110
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CODIGO'
            end
            object RL_NOME: TRLLabel
              Left = 112
              Top = 0
              Width = 299
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'DESCRICAO'
            end
            object RL_QUANTIDADE: TRLLabel
              Left = 411
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'QTDE'
            end
            object RL_PRECO: TRLLabel
              Left = 490
              Top = 0
              Width = 94
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'PRE'#199'O MEDIO'
            end
            object RL_TOTAL: TRLLabel
              Left = 583
              Top = 0
              Width = 94
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'VALOR TOTAL'
            end
            object RL_PERC: TRLLabel
              Left = 675
              Top = 0
              Width = 41
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '%%%'
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 32
            Width = 716
            Height = 17
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = RLBand1BeforePrint
            object RLDBText1: TRLDBText
              Left = 112
              Top = 0
              Width = 299
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOME'
              DataSource = Src_For
              Holder = RL_NOME
            end
            object RLDBText2: TRLDBText
              Left = 0
              Top = 0
              Width = 110
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CODIGO'
              DataSource = Src_For
              Holder = RL_CODIGO
            end
            object RLDBText3: TRLDBText
              Left = 411
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'TOTQTD'
              DataSource = Src_For
              Holder = RL_QUANTIDADE
            end
            object RLDBText4: TRLDBText
              Left = 490
              Top = 0
              Width = 94
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'precomedunit'
              DataSource = Src_For
              Holder = RL_PRECO
            end
            object RLDBText5: TRLDBText
              Left = 583
              Top = 0
              Width = 94
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'TOTVLR'
              DataSource = Src_For
              Holder = RL_TOTAL
            end
            object RLDBText6: TRLDBText
              Left = 675
              Top = 0
              Width = 41
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'percentual'
              DataSource = Src_For
              Holder = RL_PERC
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object RLDBText9: TRLDBText
              Left = -96
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'GRUPO'
              DataSource = Src_For
              Holder = RL_NOME
            end
          end
        end
      end
    end
    object tsFiltros03: TTabSheet
      Caption = 'Filtros Terciarios'
      ImageIndex = 4
      object Label23: TLabel
        Left = 0
        Top = 16
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade:'
      end
      object Label24: TLabel
        Left = 0
        Top = 55
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rede Cliente:'
      end
      object Label25: TLabel
        Left = 0
        Top = 94
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ramo Cliente:'
      end
      object Label26: TLabel
        Left = 0
        Top = 133
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Regi'#227'o:'
      end
      object edt_codloc: TEdit
        Left = 76
        Top = 14
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = edt_codlocExit
        OnKeyPress = edt_codlocKeyPress
      end
      object lbx_codloc: TListBox
        Left = 137
        Top = 14
        Width = 581
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 78
        Top = 34
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_PROMouseMove
      end
      object edt_codred: TEdit
        Left = 76
        Top = 53
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = edt_codredExit
        OnKeyPress = edt_codredKeyPress
      end
      object lbx_codred: TListBox
        Left = 137
        Top = 53
        Width = 581
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codredKeyDown
      end
      object OMITIR_REDE: TCheckBox
        Left = 78
        Top = 73
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_PROMouseMove
      end
      object edt_codram_cli: TEdit
        Left = 76
        Top = 92
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = edt_codram_cliExit
        OnKeyPress = edt_codram_cliKeyPress
      end
      object lbx_codram_cli: TListBox
        Left = 137
        Top = 92
        Width = 581
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codram_cliKeyDown
      end
      object OMITIR_RAM_CLI: TCheckBox
        Left = 78
        Top = 112
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_PROMouseMove
      end
      object edt_codreg: TEdit
        Left = 77
        Top = 131
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = edt_codregExit
        OnKeyPress = edt_codregKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object lbx_codreg: TListBox
        Left = 138
        Top = 131
        Width = 581
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codregKeyDown
      end
      object OMITIR_REG: TCheckBox
        Left = 79
        Top = 151
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnMouseMove = OMITIR_PROMouseMove
      end
    end
  end
  object bbImprimir: TBitBtn
    Left = 10
    Top = 441
    Width = 148
    Height = 36
    Cursor = crHandPoint
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
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
    Left = 618
    Top = 441
    Width = 148
    Height = 36
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
  object CB_ICMSRET: TCheckBox
    Left = 576
    Top = 316
    Width = 203
    Height = 18
    Caption = 'Incluir Tambem o Icms Retido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object CB_EMBMUL: TCheckBox
    Left = 576
    Top = 336
    Width = 192
    Height = 17
    Caption = 'Imprimir Quantidade M'#250'ltipla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = CB_EMBMULClick
  end
  object CB_EmiDoc: TCheckBox
    Left = 576
    Top = 353
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 12
  end
  object CB_FORCAR: TCheckBox
    Left = 576
    Top = 371
    Width = 183
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object MDT1: TMaskEdit
    Left = 76
    Top = 316
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
    Left = 210
    Top = 316
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
  object CB_QDEC_QTD: TComboBox
    Left = 529
    Top = 390
    Width = 44
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 16
    Text = '0'
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
  object CB_TIPOPESQ: TComboBox
    Left = 395
    Top = 317
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_SEPARADO: TComboBox
    Left = 82
    Top = 393
    Width = 178
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 12
    Sorted = True
    TabOrder = 7
    Text = 'Sem Separar - 12'
    OnClick = CB_SEPARADOClick
    Items.Strings = (
      'Bairro - 00'
      'Cidade - 01'
      'Cliente - 02'
      'Estado - 03'
      'Fornecedor - 04'
      'Grupo de Produtos - 05'
      'Marca - 06'
      'Mes/Ano - 07'
      'Ramo de Atividade(cliente) - 08'
      'Ramo/Sub-Grupo - 09'
      'Rede de Cliente - 10'
      'Regiao(Cliente) - 11'
      'Sem Separar - 12'
      'Tipo de Controle - 13'
      'Tipo de Produto - 14'
      'Vendedor - 15')
  end
  object CB_AVANCPAG: TCheckBox
    Left = 262
    Top = 394
    Width = 97
    Height = 17
    Caption = 'Avan'#231'ar P'#225'gina'
    TabOrder = 8
    Visible = False
  end
  object CB_SEMMOV: TCheckBox
    Left = 576
    Top = 405
    Width = 192
    Height = 17
    Caption = 'Emitir Sem Movimento'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 14
    Visible = False
  end
  object CB_QUOTAVEN: TComboBox
    Left = 80
    Top = 415
    Width = 179
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 17
    Text = 'N'#227'o Imprimir Cotas'
    Visible = False
    Items.Strings = (
      'N'#227'o Imprimir Cotas'
      'Imprimir Cotas Valores'
      'Imprimir Cotas Quantidades')
  end
  object CB_PRODSERV: TComboBox
    Left = 467
    Top = 366
    Width = 107
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Produtos'
    Visible = False
    Items.Strings = (
      'Produtos'
      'Servi'#231'os'
      'Todos')
  end
  object CB_TIPO: TComboBox
    Left = 5
    Top = 366
    Width = 124
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 4
    Text = 'Quantidade'
    OnClick = CB_SEPARADOClick
    Items.Strings = (
      'Valores'
      'Quantidade')
  end
  object CB_ORDEM: TComboBox
    Left = 130
    Top = 366
    Width = 124
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 1
    Sorted = True
    TabOrder = 5
    Text = 'Nome do Produto'
    OnClick = CB_SEPARADOClick
    Items.Strings = (
      'C'#243'digo do Produto'
      'Nome do Produto')
  end
  object CB_TPPRECO: TComboBox
    Left = 262
    Top = 366
    Width = 203
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    Sorted = True
    TabOrder = 6
    Text = 'Padr'#227'o(Pre'#231'o do Pedido)'
    OnClick = CB_SEPARADOClick
    Items.Strings = (
      'Atual-Pre'#231'o 01 Tabela de Produto'
      'Atual-Pre'#231'o 02 Tabela de Produto'
      'Atual-Pre'#231'o 03 Tabela de Produto'
      'Atual-Pre'#231'o de Custo Tabela de Produto'
      'Atual-Pre'#231'o Maximo 01 Tabela de Produto'
      'Atual-Pre'#231'o Maximo 02 Tabela de Produto'
      'Atual-Pre'#231'o Maximo 03 Tabela de Produto'
      'Atual-Pre'#231'o Medio de Custo Tabela de Produto'
      'Atual-Ultimo Pre'#231'o de Compra Tabela de Produto'
      'Hora do Pedido-Pre'#231'o da Forma de Pagamento'
      'Hora do Pedido-Pre'#231'o da Tabela'
      'Hora do Pedido-Pre'#231'o de Custo'
      'Hora do Pedido-Pre'#231'o Maximo'
      'Hora do Pedido-Ultimo Pre'#231'o de Compra'
      'Padr'#227'o(Pre'#231'o do Pedido)')
  end
  object CB_PCOMEDUNI: TCheckBox
    Left = 576
    Top = 389
    Width = 192
    Height = 15
    Caption = 'Exibir Pre'#231'o Medio Unit'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = CB_PCOMEDUNIClick
  end
  object cb_impressao: TComboBox
    Left = 484
    Top = 413
    Width = 89
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 20
    Text = 'Matricial'
    Items.Strings = (
      'Matricial'
      'Laser')
  end
  object bb_exportar: TBitBtn
    Left = 210
    Top = 441
    Width = 148
    Height = 36
    Caption = '&Exportar Relatorio'
    TabOrder = 21
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
  object cb_nexibevalores: TCheckBox
    Left = 576
    Top = 420
    Width = 192
    Height = 17
    Caption = 'N'#227'o Exibir Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Visible = False
  end
  object cb_vendedor_item: TCheckBox
    Left = 264
    Top = 417
    Width = 146
    Height = 17
    Caption = 'Vendedor do item'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
  end
  object Qr_For: TQuery
    OnCalcFields = Qr_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select abc2.*'
      ',round( (TOTVLR*100/TOTAL_VALOR),3) as PERC_VALOR'
      ',round( (TOTQTD*100/TOTAL_QTD),3) as PERC_QTD'
      ' from ('
      'select abc.*,'
      'sum(TOTVLR) over (partition by 1 ) AS TOTAL_valor'
      ',sum(TOTQTD) over (partition by 1 ) AS TOTAL_QTD'
      ' '
      '  from ('
      
        '  SELECT MAX(NOME) AS NOME , MAX(MARCA) AS MARCA, CODIGO , max(C' +
        'ODVEN) AS CODVEN, SUM(totvlr) AS TOTVLR,'
      
        '    SUM(totqtd) AS TOTQTD, SUM(iCMSR) AS ICMSR, MAX(COTAMES) AS ' +
        'COTAMES, SUM(QTDMULT) AS QTDMULT'
      
        '    ,   SUM(QTDFRACAO) AS QTDFRACAO, MAX(GRUPO) AS GRUPO, MAX(LO' +
        'CAL_INFO) AS LOCAL_INFO   '
      '     FROM  (      Select PDNOME AS NOME, PDMARCA AS MARCA,'
      '      PDCODPRO AS CODIGO,max(P1CODVEN) AS CODVEN'
      
        '    ,DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ)*-1,sum(P2TOTLIQ))' +
        ' as totvlr, DECODE(max(P1FORMACE),                              ' +
        '      '
      
        '        0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)),' +
        '    1'
      
        '    ,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD)))  as ' +
        'totqtd,'
      '        sum(P2ICMSR) as ICMSR ,0 as COTAMES '
      ',   max(PDEMBMUL) as QTDMULT, '
      
        ' sum(P2QTD/decode(PDEMBPAD,null,1,0,1,PDEMBPAD)) as QTDFRACAO  ,' +
        #39'                                        '#39' as GRUPO , 0 AS LOCAL' +
        '_INFO  from CADP01,CADPRO,CADP02              where P1STATUS<>9 ' +
        ' '
      
        'and ((P1CODEMP=1))        and  (P2CODEMP=P1CODEMP) and P2LOTSEQ(' +
        '+)=P1LOTSEQ and P2CHAVE(+)=P1CHAVE'
      ' and P2ORDEM(+)=P1ORDEM and PDCODPRO=P2CODPRO '
      ' and (P1EMIDOC>0)'
      ' and P1DATDOC>='#39'01/06/2013'#39
      ' and P1DATDOC<='#39'30/06/2013'#39
      
        ' and  P1TIPO  IN (1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,2' +
        '0,21,22,23,24,25,26,27,28,29)'
      ' Group by  P2CHAVE,P2ITEM, PDNOME,PDMARCA,PDCODPRO'
      ' order by totvlr desc'
      ' )  GROUP BY CODIGO, GRUPO '
      ' ORDER BY GRUPO '
      '  ,totvlr desc'
      ') abc'
      ') abc2')
    Left = 688
    Top = 16
    object Qr_ForNOME: TStringField
      FieldName = 'NOME'
    end
    object Qr_ForCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_ForICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_ForQTDMULT: TFloatField
      FieldName = 'QTDMULT'
    end
    object Qr_ForQTDFRACAO: TFloatField
      FieldName = 'QTDFRACAO'
    end
    object Qr_ForTOTVLR: TFloatField
      FieldName = 'TOTVLR'
    end
    object Qr_ForTOTQTD: TFloatField
      FieldName = 'TOTQTD'
    end
    object Qr_ForGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
    object Qr_ForMARCA: TStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object Qr_ForCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Qr_ForCOTAMES: TFloatField
      FieldName = 'COTAMES'
    end
    object Qr_ForLOCAL_INFO: TFloatField
      FieldName = 'LOCAL_INFO'
    end
    object Qr_ForTotalMultipla: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalMultipla'
      Calculated = True
    end
    object Qr_Forprecomedunit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'precomedunit'
      Calculated = True
    end
    object Qr_ForTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
    end
    object Qr_ForTOTAL_QTD: TFloatField
      FieldName = 'TOTAL_QTD'
    end
    object Qr_ForPERC_VALOR: TFloatField
      FieldName = 'PERC_VALOR'
    end
    object Qr_ForPERC_QTD: TFloatField
      FieldName = 'PERC_QTD'
    end
    object Qr_Forpercentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentual'
      Calculated = True
    end
  end
  object Src_For: TDataSource
    DataSet = Qr_For
    Left = 687
    Top = 52
  end
  object matricial: TRLDraftFilter
    Left = 746
    Top = 108
  end
  object word: TRLRichFilter
    DisplayName = 'Word'
    Left = 762
    Top = 116
  end
  object PDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 762
    Top = 68
  end
end
