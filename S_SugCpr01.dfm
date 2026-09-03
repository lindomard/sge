object Frm_SugCpr01: TFrm_SugCpr01
  Left = 100
  Top = 65
  Width = 687
  Height = 505
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Sugest'#227'o de Compras Modelo 01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
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
  object Label1: TLabel
    Left = 2
    Top = 9
    Width = 256
    Height = 13
    Caption = 'Calcular a M'#233'dia Mensal Entre o Per'#237'odo de '
  end
  object Label2: TLabel
    Left = 356
    Top = 8
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label3: TLabel
    Left = 3
    Top = 33
    Width = 157
    Height = 13
    Caption = 'Sugest'#227'o de Compras para '
  end
  object Label4: TLabel
    Left = 240
    Top = 31
    Width = 32
    Height = 13
    Caption = 'dia(s)'
  end
  object Label6: TLabel
    Left = 12
    Top = 402
    Width = 167
    Height = 13
    Caption = 'Imprimir as Quantidades com '
  end
  object Label7: TLabel
    Left = 248
    Top = 404
    Width = 90
    Height = 13
    Caption = 'Casas Decimais'
  end
  object Label12: TLabel
    Left = 17
    Top = 231
    Width = 74
    Height = 13
    Caption = 'Tipo Produto'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 440
    Top = 228
    Width = 216
    Height = 13
    Alignment = taCenter
    AutoSize = False
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
  object Label16: TLabel
    Left = 14
    Top = 310
    Width = 141
    Height = 13
    Caption = 'Ordem de Apresenta'#231#227'o:'
  end
  object MDT1: TMaskEdit
    Left = 261
    Top = 6
    Width = 82
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 380
    Top = 6
    Width = 82
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object QTDDIAS: TEdit
    Left = 165
    Top = 28
    Width = 53
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = '30'
  end
  object bbImprimir: TBitBtn
    Left = 441
    Top = 426
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
    TabOrder = 11
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
    Left = 555
    Top = 426
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair'
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
  object CB_VDAATU: TCheckBox
    Left = 13
    Top = 330
    Width = 225
    Height = 17
    Caption = 'Pre'#231'o de Vendas com Valores Atuais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object CB_CUSATU: TCheckBox
    Left = 13
    Top = 347
    Width = 225
    Height = 17
    Caption = 'Pre'#231'o de Custo com Valores Atuais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object CASASD: TEdit
    Left = 186
    Top = 401
    Width = 55
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    Text = '0'
  end
  object CB_COMPRAS: TCheckBox
    Left = 13
    Top = 364
    Width = 273
    Height = 17
    Caption = 'Pesquisar no arquivo de Compras'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
  end
  object CLBNivel: TCheckListBox
    Left = 94
    Top = 224
    Width = 305
    Height = 84
    Color = 16776176
    Columns = 2
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
    ParentFont = False
    Style = lbOwnerDrawFixed
    TabOrder = 7
    OnClick = CLBNivelClick
  end
  object CB_PROSMOV: TCheckBox
    Left = 290
    Top = 337
    Width = 263
    Height = 17
    Caption = 'Emitir dos Produtos sem Movimento'
    Checked = True
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    State = cbChecked
    TabOrder = 8
  end
  object CB_EmiDoc: TCheckBox
    Left = 290
    Top = 353
    Width = 112
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    State = cbChecked
    TabOrder = 9
  end
  object CB_PRINCIPAL: TCheckBox
    Left = 523
    Top = 24
    Width = 141
    Height = 19
    Caption = 'Principal(Fabricante)'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object CLBEstoque: TCheckListBox
    Left = 439
    Top = 242
    Width = 218
    Height = 46
    Color = 16776176
    Columns = 2
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'c/Estoque'
      's/Estoque'
      'Estoque Negativo'
      'Todos')
    ParentCtl3D = False
    ParentFont = False
    Style = lbOwnerDrawFixed
    TabOrder = 13
  end
  object CB_ESTMIN: TCheckBox
    Left = 290
    Top = 370
    Width = 273
    Height = 17
    Caption = 'Ajustar at'#233' chegar ao estoque m'#237'nimo'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
  end
  object cb_pcocus: TCheckBox
    Left = 13
    Top = 382
    Width = 153
    Height = 17
    Caption = 'Exibir Pre'#231'o de Custo'
    TabOrder = 15
  end
  object cb_pcoven: TCheckBox
    Left = 291
    Top = 385
    Width = 153
    Height = 17
    Caption = 'Exibir Pre'#231'o de Venda'
    TabOrder = 16
  end
  object btn_SalvaPadroes: TBitBtn
    Left = 320
    Top = 426
    Width = 119
    Height = 26
    Cursor = crHandPoint
    Caption = '&Salvar Padr'#245'es'
    TabOrder = 17
    OnClick = btn_SalvaPadroesClick
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
  object PC1: TPageControl
    Left = 0
    Top = 50
    Width = 666
    Height = 162
    ActivePage = tsFiltro1
    TabOrder = 18
    object tsFiltro1: TTabSheet
      Caption = 'Filtros Primario'
      object Label5: TLabel
        Left = 5
        Top = 9
        Width = 77
        Height = 13
        Caption = 'Fornecedor..:'
      end
      object Label8: TLabel
        Left = -1
        Top = 91
        Width = 83
        Height = 13
        Caption = 'C'#243'd. Produto.:'
      end
      object Label9: TLabel
        Left = 42
        Top = 50
        Width = 40
        Height = 13
        Caption = 'Marca:'
      end
      object CODFOR: TEdit
        Left = 84
        Top = 6
        Width = 62
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 85
        Top = 27
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnMouseMove = OMITIR_FORMouseMove
      end
      object lbx_codfor: TListBox
        Left = 145
        Top = 6
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object CODPRO: TEdit
        Left = 84
        Top = 88
        Width = 62
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object lbx_codpro: TListBox
        Left = 145
        Top = 88
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 89
        Top = 109
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_PROMouseMove
      end
      object MARCA: TEdit
        Left = 84
        Top = 47
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = MARCAExit
      end
      object lbx_marca: TListBox
        Left = 145
        Top = 47
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_marcaKeyDown
      end
      object OMITIR_MAR: TCheckBox
        Left = 88
        Top = 68
        Width = 55
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
    end
    object tsFiltro2: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object Label10: TLabel
        Left = 34
        Top = 9
        Width = 47
        Height = 13
        Caption = 'Grupo..:'
      end
      object Label11: TLabel
        Left = 43
        Top = 91
        Width = 38
        Height = 13
        Caption = 'Tipo..:'
      end
      object Label13: TLabel
        Left = 8
        Top = 50
        Width = 73
        Height = 13
        Caption = 'Sub-Grupo..:'
      end
      object CODGRU: TEdit
        Left = 84
        Top = 6
        Width = 62
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
        OnMouseMove = CODGRUMouseMove
      end
      object lbx_codgru: TListBox
        Left = 145
        Top = 6
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 85
        Top = 27
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_GRUMouseMove
      end
      object CODRAM: TEdit
        Left = 84
        Top = 47
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
        OnMouseMove = CODRAMMouseMove
      end
      object lbx_codram: TListBox
        Left = 145
        Top = 47
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 88
        Top = 68
        Width = 55
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_RAMMouseMove
      end
      object CODTIP: TEdit
        Left = 84
        Top = 88
        Width = 62
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseMove = CODTIPMouseMove
      end
      object lbx_codtip: TListBox
        Left = 145
        Top = 88
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 89
        Top = 109
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_TPROMouseMove
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Filtros Secundarios (Cont.)'
      ImageIndex = 2
      object Label14: TLabel
        Left = 20
        Top = 9
        Width = 60
        Height = 13
        Caption = 'Controle..:'
      end
      object CODCON: TEdit
        Left = 84
        Top = 6
        Width = 62
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object lbx_codcon: TListBox
        Left = 145
        Top = 6
        Width = 511
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 85
        Top = 27
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_CONMouseMove
      end
    end
  end
  object cb_ordem: TComboBox
    Left = 169
    Top = 308
    Width = 248
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 19
    Text = 'Descricao'
    Items.Strings = (
      'Descricao'
      'Codigo'
      'Media de Vendas Crescente'
      'Media de Vendas Decrescente'
      'Sugest'#227'o crescente'
      'Sugest'#227'o Decrescente')
  end
  object Tb_Vendas: TQuery
    OnCalcFields = Tb_VendasCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select SUM(P2QTD) AS QUANT,'
      '          SUM(P2TOTLIQ-P2DESCRAT) AS VALOR,'
      '          SUM(P2PCOCUS*P2QTD) AS TOTCUS,'
      '       10         AS QTDDIAS,'
      '       P2CODPRO   AS CODPRO,'
      '       PDNOME     AS NOME,'
      '       PDUND      AS UND,'
      '       PDESTMIN   AS ESTMIN,'
      '       PDEMBPAD   AS EMBALAGEM,'
      '       PDPRECO1   AS PRECO,'
      '       PDPRECOC   AS PCUSTO,'
      '       CESALDO    AS ESTOQUE,'
      '       CEENTPEN   AS ENTPEN'
      'from CADP02,CADP01,CADPRO,CADEST'
      'where P1CODEMP=P2CODEMP'
      'and   P1CHAVE =P2CHAVE'
      'and   P1ORDEM =P2ORDEM'
      'and   PDCODEMP=P2CODEMP'
      'and   PDCODPRO=P2CODPRO'
      'and   CECODEMP=PDCODEMP '
      'and   CECODPRO=PDCODPRO'
      'group by P2CODPRO,'
      '       PDNOME,'
      '       PDUND,'
      '       PDESTMIN,'
      '       PDEMBPAD,'
      '       PDPRECO1,'
      '       PDPRECOC,'
      '       CESALDO,'
      '       CEENTPEN'
      ''
      '')
    Left = 256
    Top = 60
    object Tb_VendasQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_VendasCODPRO: TFloatField
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_VendasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_VendasUND: TStringField
      FieldName = 'UND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_VendasEMBALAGEM: TFloatField
      FieldName = 'EMBALAGEM'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_VendasPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_VendasPCUSTO: TFloatField
      FieldName = 'PCUSTO'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_VendasESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
    end
    object Tb_VendasENTPEN: TFloatField
      FieldName = 'ENTPEN'
      Origin = 'SG_ASSOC.CADEST.CEENTPEN'
    end
    object Tb_VendasQTDDIAS: TFloatField
      FieldName = 'QTDDIAS'
    end
    object Tb_VendasperVda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'perVda'
      Calculated = True
    end
    object Tb_VendasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Tb_VendasTOTCUS: TFloatField
      FieldName = 'TOTCUS'
    end
    object Tb_VendasESTMIN: TFloatField
      FieldName = 'ESTMIN'
    end
    object Tb_Vendasmedia: TFloatField
      FieldName = 'media'
    end
    object Tb_Vendasdias_estoque: TFloatField
      FieldName = 'dias_estoque'
    end
    object Tb_Vendasvlrvda: TFloatField
      FieldName = 'vlrvda'
    end
    object Tb_Vendasvlrcus: TFloatField
      FieldName = 'vlrcus'
    end
    object Tb_Vendassugestao: TFloatField
      FieldName = 'sugestao'
    end
    object Tb_VendasCODFOR: TFloatField
      FieldName = 'CODFOR'
    end
    object Tb_VendasNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 100
    end
  end
end
