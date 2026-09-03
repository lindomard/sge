object Frm_ResQtdPed: TFrm_ResQtdPed
  Left = 160
  Top = 152
  Width = 772
  Height = 547
  Caption = 'Rela'#231#227'o de Pedidos de Clientes'
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
  object Panel2: TPanel
    Left = 0
    Top = 477
    Width = 764
    Height = 39
    Align = alBottom
    TabOrder = 0
    object bbImprimir: TBitBtn
      Left = 3
      Top = 3
      Width = 140
      Height = 35
      Caption = '&Emitir Resumo'
      TabOrder = 0
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
    object bbSair: TBitBtn
      Left = 615
      Top = 3
      Width = 140
      Height = 35
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 153
    Width = 764
    Height = 162
    Align = alClient
    DataSource = Src_Ped
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 2'
        Font.Style = []
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODEMP'
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CHAVE'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1DATAP'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datdoc'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTALL'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valpag'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desc'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juros'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apagar'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODCLI'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CODVEN'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datanf'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1NUMNF'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1STATUS'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTALB'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1TOTDES'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1NUMCF'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1ORDEM'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Title.Color = 16761312
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end>
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 764
    Height = 126
    ActivePage = ts_filtros
    Align = alTop
    MultiLine = True
    TabOrder = 2
    TabPosition = tpLeft
    object ts_filtros: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 76
        Top = 43
        Width = 89
        Height = 13
        Caption = 'C'#243'digo do Cliente.:'
      end
      object Label2: TLabel
        Left = 109
        Top = 59
        Width = 57
        Height = 13
        Caption = 'Periodo de :'
      end
      object Label3: TLabel
        Left = 274
        Top = 60
        Width = 6
        Height = 13
        Caption = #224
      end
      object chavedopedido: TLabel
        Left = 81
        Top = 6
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label39: TLabel
        Left = 115
        Top = 77
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label40: TLabel
        Left = 105
        Top = 94
        Width = 60
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object sgTipoPed: TSpeedButton
        Left = 238
        Top = 91
        Width = 22
        Height = 20
        Hint = 'Click aqui para ver os '#13#10'tipos de pedidos '#13#10'existentes'
        Caption = '...'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = sgTipoPedClick
      end
      object CODCLI: TEdit
        Left = 172
        Top = 37
        Width = 66
        Height = 19
        Hint = 'Pressione <F2> para Consultar Pedidos'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object NOMCLI: TEdit
        Left = 237
        Top = 37
        Width = 333
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Todos...'
      end
      object MDT1: TMaskEdit
        Left = 172
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 3
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 321
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object RG_FILTRO: TRadioGroup
        Left = 595
        Top = 0
        Width = 128
        Height = 57
        Caption = 'Filtrar:'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Pendentes'
          '&Emitidos'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 5
      end
      object edt_chave: TEdit
        Left = 172
        Top = 1
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_chaveExit
        OnKeyPress = edt_chaveKeyPress
      end
      object RG_SEMCOMP: TRadioGroup
        Left = 595
        Top = 57
        Width = 128
        Height = 55
        Caption = 'Outros Filtros'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Com Compromisso'
          '&Sem Compromisso'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 6
      end
      object CODVEN: TEdit
        Left = 172
        Top = 73
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 237
        Top = 73
        Width = 333
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 8
        Text = 'Todos...'
      end
      object TipoPed: TEdit
        Left = 172
        Top = 91
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = TipoPedExit
      end
      object NomTipoPed: TEdit
        Left = 259
        Top = 91
        Width = 311
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 10
        Text = 'Todos...'
      end
      object lbx_chave: TListBox
        Left = 236
        Top = 1
        Width = 334
        Height = 37
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_chaveKeyDown
      end
      object OMITIR_CHAVE: TCheckBox
        Left = 172
        Top = 20
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
    end
    object ts_outros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label35: TLabel
        Left = 187
        Top = 23
        Width = 50
        Height = 13
        Caption = 'Processo.:'
      end
      object Label34: TLabel
        Left = 127
        Top = 43
        Width = 110
        Height = 13
        Caption = 'Observa'#231#245'es Linha 01:'
      end
      object lbl_lotseq: TLabel
        Left = 124
        Top = 4
        Width = 112
        Height = 13
        Caption = 'Lote de Sequencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object obs_lotseq: TLabel
        Left = 372
        Top = 3
        Width = 146
        Height = 13
        Caption = 'Em Branco Busca Todos'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label36: TLabel
        Left = 178
        Top = 59
        Width = 57
        Height = 13
        Caption = 'N'#250'mero NF:'
      end
      object Label37: TLabel
        Left = 324
        Top = 59
        Width = 56
        Height = 13
        Caption = 'N'#250'mero CF:'
      end
      object Label6: TLabel
        Left = 174
        Top = 77
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object Label38: TLabel
        Left = 161
        Top = 95
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
      end
      object PROCESSO: TEdit
        Left = 243
        Top = 19
        Width = 123
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object OBS1: TEdit
        Left = 243
        Top = 37
        Width = 362
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = OBS1Exit
      end
      object MLOTSEQ: TEdit
        Left = 243
        Top = 1
        Width = 87
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
        OnExit = MLOTSEQExit
      end
      object NUMNF: TEdit
        Left = 243
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = NUMNFExit
      end
      object NUMCF: TEdit
        Left = 392
        Top = 55
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = NUMCFExit
      end
      object GB_CONFIGMASTER: TGroupBox
        Left = 546
        Top = 2
        Width = 169
        Height = 32
        Caption = 'Configura'#231#227'o Master:'
        Color = 16744576
        ParentColor = False
        TabOrder = 5
        object CB_COLEST: TCheckBox
          Left = 7
          Top = 12
          Width = 281
          Height = 17
          Caption = 'Emitir Coluna de Estoque'
          TabOrder = 0
        end
      end
      object CODTLV: TEdit
        Left = 243
        Top = 73
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODTLVExit
        OnKeyPress = CODTLVKeyPress
      end
      object NOMTLV: TEdit
        Left = 308
        Top = 73
        Width = 298
        Height = 19
        TabStop = False
        Color = 14994379
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
        Text = 'Todos...'
      end
      object CODTRA: TEdit
        Left = 243
        Top = 91
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object NOMTRA: TEdit
        Left = 308
        Top = 91
        Width = 298
        Height = 19
        Color = 14994379
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 9
        Text = 'Todos...'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 126
    Width = 764
    Height = 27
    Align = alTop
    TabOrder = 3
    object sbMarcar: TSpeedButton
      Left = 4
      Top = 2
      Width = 114
      Height = 22
      Caption = 'Marcar Todos'
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
      OnClick = sbMarcarClick
    end
    object sbDesmarcar: TSpeedButton
      Left = 117
      Top = 2
      Width = 114
      Height = 22
      Caption = 'Desmarcar Todos'
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
      OnClick = sbDesmarcarClick
    end
    object bbAtualizar: TBitBtn
      Left = 243
      Top = 1
      Width = 231
      Height = 25
      Caption = 'Atualizar as Informa'#231#245'es'
      TabOrder = 0
      OnClick = bbAtualizarClick
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
    object bbPadrao: TBitBtn
      Left = 517
      Top = 1
      Width = 231
      Height = 25
      Caption = 'Salvar Padr'#227'o'
      TabOrder = 1
      OnClick = bbPadraoClick
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 315
    Width = 764
    Height = 162
    Align = alBottom
    Caption = 'Emitir Somente:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object Label13: TLabel
      Left = 37
      Top = 54
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label4: TLabel
      Left = 8
      Top = 97
      Width = 87
      Height = 13
      Caption = 'Grupo de Produto:'
    end
    object Label14: TLabel
      Left = 53
      Top = 15
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label5: TLabel
      Left = 22
      Top = 140
      Width = 67
      Height = 13
      Caption = 'Agrupado por:'
    end
    object CODFOR: TEdit
      Left = 99
      Top = 54
      Width = 74
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object lbx_codfor: TListBox
      Left = 172
      Top = 54
      Width = 563
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 99
      Top = 74
      Width = 69
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object CODGRU: TEdit
      Left = 99
      Top = 95
      Width = 74
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = CODGRUExit
      OnKeyPress = CODGRUKeyPress
    end
    object lbx_codgru: TListBox
      Left = 172
      Top = 95
      Width = 563
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codgruKeyDown
    end
    object OMITIR_GRU: TCheckBox
      Left = 100
      Top = 119
      Width = 71
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object CODPRO: TEdit
      Left = 99
      Top = 13
      Width = 74
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyDown = CODPROKeyDown
      OnKeyPress = CODPROKeyPress
    end
    object lbx_codpro: TListBox
      Left = 172
      Top = 13
      Width = 563
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object OMITIR_PRO: TCheckBox
      Left = 100
      Top = 37
      Width = 57
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cb_agrupar: TComboBox
      Left = 99
      Top = 136
      Width = 328
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 9
      Text = 'Sem Grupo'
      Items.Strings = (
        'Controle do Produto'
        'Fornecedor'
        'Grupo de Produtos'
        'Ramo do Produto'
        'Sem Grupo'
        'Tipo de Produto')
    end
    object CB_SEMBORDA: TCheckBox
      Left = 431
      Top = 140
      Width = 97
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Sem Bordas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = CB_SEMBORDAClick
    end
    object CB_TRACO: TCheckBox
      Left = 514
      Top = 141
      Width = 143
      Height = 17
      Hint = 'Se Marcado emitira um'#13#10'tra'#231'o entre os produtos'
      Caption = 'Tra'#231'o Entre Produtos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = CB_TRACOClick
    end
  end
  object RLReport1: TRLReport
    Left = -1
    Top = 525
    Width = 794
    Height = 945
    Background.Height = 43
    Background.Width = 130
    DataSource = DM4.Src_Ped02Ped01
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 3.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 250.000000000000000000
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 11
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
        Width = 234
        Height = 16
        Caption = 'Resumo das Quantidades dos Pedidos.'
      end
      object lbl_periodo: TRLLabel
        Left = 237
        Top = 17
        Width = 331
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
        Caption = 'Resumo das Quantidades dos Pedidos.'
        Color = 16766935
        ParentColor = False
        Transparent = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 61
      Width = 718
      Height = 92
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataFields = 'GRUPO'
      object RLBand2: TRLBand
        Left = 1
        Top = 1
        Width = 716
        Height = 16
        BandType = btColumnHeader
        object db_grupo: TRLDBText
          Left = 0
          Top = 0
          Width = 716
          Height = 16
          Align = faClient
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'GRUPO'
          DataSource = DM4.Src_Ped02Ped01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 1
        Top = 17
        Width = 716
        Height = 16
        BandType = btColumnHeader
        object lbl_codigo: TRLLabel
          Left = 2
          Top = 0
          Width = 76
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'C'#243'digo'
        end
        object lbl_Grade: TRLLabel
          Left = 77
          Top = 0
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Grade'
        end
        object lbl_descricao: TRLLabel
          Left = 124
          Top = 0
          Width = 428
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
        end
        object lbl_und: TRLLabel
          Left = 552
          Top = 0
          Width = 50
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Und'
        end
        object lbl_quantidade: TRLLabel
          Left = 601
          Top = 0
          Width = 116
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Quantidade'
        end
      end
      object RLBand4: TRLBand
        Left = 1
        Top = 33
        Width = 716
        Height = 16
        BeforePrint = RLBand4BeforePrint
        object db_codigo: TRLDBText
          Left = 2
          Top = 0
          Width = 76
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'P2CODPRO'
          DataSource = DM4.Src_Ped02Ped01
          Holder = lbl_codigo
        end
        object db_grade: TRLDBText
          Left = 77
          Top = 0
          Width = 48
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'P2LOTE'
          DataSource = DM4.Src_Ped02Ped01
          Holder = lbl_Grade
        end
        object db_descricao: TRLDBText
          Left = 124
          Top = 0
          Width = 428
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'PDNOME'
          DataSource = DM4.Src_Ped02Ped01
          Holder = lbl_descricao
        end
        object db_und: TRLDBText
          Left = 552
          Top = 0
          Width = 50
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'PDUND'
          DataSource = DM4.Src_Ped02Ped01
          Holder = lbl_und
        end
        object db_qtd: TRLDBText
          Left = 601
          Top = 0
          Width = 116
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'QTD'
          DataSource = DM4.Src_Ped02Ped01
          Holder = lbl_quantidade
        end
      end
      object RLBand5: TRLBand
        Left = 1
        Top = 65
        Width = 716
        Height = 17
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand5BeforePrint
        object RLLabel2: TRLLabel
          Left = 26
          Top = 0
          Width = 308
          Height = 16
          Caption = 
            'Total...........................................................' +
            '..........'
        end
        object lbl_total: TRLLabel
          Left = 601
          Top = 0
          Width = 116
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'total'
          Holder = db_qtd
        end
      end
      object rl_traco: TRLBand
        Left = 1
        Top = 49
        Width = 716
        Height = 16
        Visible = False
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 716
          Height = 16
          Align = faClient
          Alignment = taCenter
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--__'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 10
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lbl_rodape: TRLLabel
        Left = 682
        Top = 1
        Width = 36
        Height = 7
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    Left = 575
    Top = 1
  end
  object Tb_Ped: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39'  OK, P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATAP,'
      '           P1DATDOC,P1CODCLI,'
      '           P1CODVEN,P1ORIGEM,P1CODTRA,P1DATANF,'
      '           P1NUMNF,P1STATUS,P1TIPO,P1TOTALB,P1TOTALL,'
      '           P1CODUSR,P1HORADIG,P1DTMOD,P1HRMOD,'
      '           P1USRMOD,P1CONF,P1CODCON,P1DATCON,P1HORCON,P1EMIDOC,'
      '           P1TIPENT,P1PREVENT,P1HPREVENT,'
      '           P1CODENT,P1DATENT,P1HORENT,'
      '           P1CUPOM,P1TOTDES,P1QTDVOL,P1PESOL,P1PESOB,'
      '           P1BANCO,P1CODTLV,P1ETIVOL,P1NUMCF,P1CODECF,P1DATACF,'
      '           P1CODSEP,P1DATASEP,P1HORSEP,'
      '           P1CODEMB,P1DATAEMB,P1HOREMB,'
      
        '           P1ACRECONV,P1ACREGER,P1PACRECONV,P1PACREGER,P1ESPECIE' +
        ',P1MINUTA,'
      '           P1FORMACE,P1OBS1,P1OBS2,P1OBS3,'
      '           CRAZAO from CADP01,CADCLI'
      'where P1CODEMP is null'
      'and CCODCLI=P1CODCLI'
      '')
    UpdateObject = U_Ped
    Left = 607
    Top = 1
    object Tb_PedP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_PedP1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedP1DATDOC: TDateTimeField
      DisplayLabel = 'Data Documento'
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Tb_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_PedP1ORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Tb_PedP1CODTRA: TFloatField
      DisplayLabel = 'Cod.Transp'
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Tb_PedP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_PedP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_PedP1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_PedP1TOTALB: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_PedP1TOTALL: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_PedP1CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Tb_PedP1HORADIG: TStringField
      DisplayLabel = 'Hora Dig.'
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Tb_PedP1DTMOD: TDateTimeField
      DisplayLabel = 'Dt.Altera'#231#227'o'
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Tb_PedP1HRMOD: TStringField
      DisplayLabel = 'Hora Altera'#231#227'o'
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Tb_PedP1USRMOD: TFloatField
      DisplayLabel = 'Usu'#225'rio Alterou'
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Tb_PedP1CONF: TStringField
      DisplayLabel = 'Conferido'
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Tb_PedP1CODCON: TFloatField
      DisplayLabel = 'C'#243'digo Conferidor'
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Tb_PedP1DATCON: TDateTimeField
      DisplayLabel = 'Data Conferencia'
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Tb_PedP1HORCON: TStringField
      DisplayLabel = 'Hora Conferencia'
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Tb_PedP1EMIDOC: TFloatField
      DisplayLabel = 'Emitiu'
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Tb_PedP1TIPENT: TFloatField
      DisplayLabel = 'Tipo Entrega'
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Tb_PedP1PREVENT: TDateTimeField
      DisplayLabel = 'Data Prev.Entrega'
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Tb_PedP1HPREVENT: TStringField
      DisplayLabel = 'Hora Prev.Entrega'
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Tb_PedP1CODENT: TFloatField
      DisplayLabel = 'C'#243'd.Entregador'
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Tb_PedP1DATENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Tb_PedP1HORENT: TStringField
      DisplayLabel = 'Hora Entrega'
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Tb_PedP1CUPOM: TFloatField
      DisplayLabel = 'Emitiu Cupom'
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Tb_PedP1TOTDES: TFloatField
      DisplayLabel = 'Total desconto'
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_PedP1QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Tb_PedP1PESOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Tb_PedP1PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Tb_PedP1BANCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Tb_PedP1CODTLV: TFloatField
      DisplayLabel = 'C'#243'd.Telev'
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Tb_PedP1ETIVOL: TFloatField
      DisplayLabel = 'Etiq.Vol.'
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Tb_PedP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero CF'
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Tb_PedP1CODECF: TFloatField
      DisplayLabel = 'C'#243'd.ECF'
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Tb_PedP1DATACF: TDateTimeField
      DisplayLabel = 'Data CF'
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_PedP1CODSEP: TFloatField
      DisplayLabel = 'C'#243'd.Separador'
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Tb_PedP1DATASEP: TDateTimeField
      DisplayLabel = 'Data Sep.'
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Tb_PedP1HORSEP: TStringField
      DisplayLabel = 'Hor.Sep'
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Tb_PedP1CODEMB: TFloatField
      DisplayLabel = 'C'#243'd.Emb'
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Tb_PedP1DATAEMB: TDateTimeField
      DisplayLabel = 'Data Emb.'
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Tb_PedP1HOREMB: TStringField
      DisplayLabel = 'Hora Emb'
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Tb_PedP1ACRECONV: TFloatField
      DisplayLabel = 'Acresc.Conv.'
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Tb_PedP1ACREGER: TFloatField
      DisplayLabel = 'Acresc.Geral'
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Tb_PedP1PACRECONV: TFloatField
      DisplayLabel = 'Perc.Acre.Conv.'
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_PedP1PACREGER: TFloatField
      DisplayLabel = 'Perc. Acresc.Geral'
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_PedCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_PedP1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
      Size = 10
    end
    object Tb_PedP1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Tb_Pednomdig: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomdig'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomalt'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsep'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcon'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemb'
      Size = 40
      Calculated = True
    end
    object Tb_Peddatalt: TStringField
      FieldKind = fkCalculated
      FieldName = 'datalt'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'datsep'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'datemb'
      Size = 15
      Calculated = True
    end
    object Tb_Pednomtra: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomtra'
      Size = 40
      Calculated = True
    end
    object Tb_Peddatanf: TStringField
      DisplayLabel = 'Data NF'
      FieldKind = fkCalculated
      FieldName = 'datanf'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatacf: TStringField
      FieldKind = fkCalculated
      FieldName = 'datacf'
      Size = 15
      Calculated = True
    end
    object Tb_Pedemitiuls: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'emitiuls'
      Calculated = True
    end
    object Tb_Peddatpent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datpent'
      Size = 15
      Calculated = True
    end
    object Tb_Peddatent: TStringField
      FieldKind = fkCalculated
      FieldName = 'datent'
      Size = 15
      Calculated = True
    end
    object Tb_Pedtipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 30
      Calculated = True
    end
    object Tb_Peddatdoc: TStringField
      DisplayLabel = 'Data Doc'
      FieldKind = fkCalculated
      FieldName = 'datdoc'
      Size = 15
      Calculated = True
    end
    object Tb_Pednomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_PedP1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Tb_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_Pedvalpag: TFloatField
      DisplayLabel = 'Valor Rec.'
      FieldKind = fkCalculated
      FieldName = 'valpag'
      Calculated = True
    end
    object Tb_Peddesc: TFloatField
      DisplayLabel = 'Desc.Conc.'
      FieldKind = fkCalculated
      FieldName = 'desc'
      Calculated = True
    end
    object Tb_Pedjuros: TFloatField
      DisplayLabel = 'Juros Cob'
      FieldKind = fkCalculated
      FieldName = 'juros'
      Calculated = True
    end
    object Tb_Pedapagar: TFloatField
      DisplayLabel = 'A Receber'
      FieldKind = fkCalculated
      FieldName = 'apagar'
      Calculated = True
    end
    object Tb_PedOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
  end
  object U_Ped: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01'
      'set'
      '  P1CODEMP = :P1CODEMP'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP01'
      '  (P1CODEMP)'
      'values'
      '  (:P1CODEMP)')
    DeleteSQL.Strings = (
      'delete from CADP01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    Left = 639
    Top = 1
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 480
    Top = 72
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 576
    Top = 48
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 632
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 536
    Top = 80
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 640
    Top = 32
  end
end
