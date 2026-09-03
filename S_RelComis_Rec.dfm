object Frm_RelComis_Rec: TFrm_RelComis_Rec
  Left = 50
  Top = 126
  Width = 800
  Height = 565
  Caption = 'Relat'#243'rio de Duplicatas com Comissao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 231
    Align = alClient
    DataSource = Src_CL02
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
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
        FieldName = 'CL2NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALDOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALREC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valcom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALICMSR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALACRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALCTL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DTEMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DTPAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DTVCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2DTBX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2CODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2CODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2JUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CL2VALDESC'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 254
    Width = 792
    Height = 192
    ActivePage = TabSheet1
    Align = alBottom
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 160
        Align = alTop
        Caption = 'Filtrar:'
        Color = clBtnFace
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        object Label22: TLabel
          Left = 28
          Top = 51
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label25: TLabel
          Left = 23
          Top = 14
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object lbl_nome: TLabel
          Left = 14
          Top = 89
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object CODBCO: TEdit
          Left = 67
          Top = 50
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object lbx_codbco: TListBox
          Left = 140
          Top = 50
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codbcoKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 67
          Top = 71
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object CODCLI: TEdit
          Left = 67
          Top = 13
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 140
          Top = 13
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 67
          Top = 33
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODIGO: TEdit
          Left = 67
          Top = 87
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODIGOExit
          OnKeyPress = CODIGOKeyPress
        end
        object CLB_TIPODOC: TCheckListBox
          Left = 535
          Top = 31
          Width = 237
          Height = 123
          Cursor = crHandPoint
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Cheque devolvido'
            'Cheque s/fundos'
            'Juros'
            'Nota promissoria'
            'Nota de credito'
            'Cheques Pre-Datado'
            'Requisi'#231#227'o'
            'Financeira 1'
            'Financeira 2'
            'Financeira 3'
            'Financeira 4'
            'Financeira 5'
            'Financeira 6'
            'Financeira 7'
            'Outros'
            'todos')
          Style = lbOwnerDrawFixed
          TabOrder = 8
          OnClick = CLB_TIPODOCClick
        end
        object StaticText10: TStaticText
          Left = 535
          Top = 14
          Width = 236
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
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
        object NOMVEN: TEdit
          Left = 140
          Top = 87
          Width = 393
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segund'#225'rios'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 204
        Align = alTop
        Caption = 'filtros Segundarios'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object StaticText12: TStaticText
          Left = 595
          Top = 18
          Width = 91
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cobran'#231'a'
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
        object clb_simples: TCheckListBox
          Left = 595
          Top = 36
          Width = 92
          Height = 44
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Simples'
            'Descontado'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 1
          OnClick = clb_simplesClick
        end
        object StaticText11: TStaticText
          Left = 686
          Top = 18
          Width = 85
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos Em'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object CLB_TIPOCOB: TCheckListBox
          Left = 686
          Top = 36
          Width = 86
          Height = 70
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Carteira'
            'Banco'
            'Cart'#243'rio'
            'Jur'#237'dica'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 3
          OnClick = CLB_TIPOCOBClick
        end
        object CB_FORCAR: TCheckBox
          Left = 597
          Top = 110
          Width = 137
          Height = 17
          Caption = 'For'#231'ar todos Registros'
          TabOrder = 4
        end
      end
    end
    object tsTipoPed: TTabSheet
      Caption = 'Tipo de Pedidos'
      ImageIndex = 3
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 784
        Height = 164
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
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
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 446
    Width = 792
    Height = 88
    Align = alBottom
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 63
      Width = 87
      Height = 13
      Caption = 'Tipo da Comissao:'
    end
    object Label2: TLabel
      Left = 68
      Top = 7
      Width = 43
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 210
      Top = 7
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 5
      Top = 43
      Width = 109
      Height = 13
      AutoSize = False
      Caption = 'Pesquisar por data de:'
      WordWrap = True
    end
    object lbl_cheio: TLabel
      Left = 600
      Top = 8
      Width = 12
      Height = 13
      Caption = '***'
    end
    object Label1: TLabel
      Left = 313
      Top = 6
      Width = 141
      Height = 13
      Caption = 'Percentual de Comissao:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 319
      Top = 46
      Width = 107
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Listar Somente'
      Color = 16765864
      ParentColor = False
    end
    object MDT1: TMaskEdit
      Left = 112
      Top = 3
      Width = 70
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
        #13#10'digite a mesma.'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 233
      Top = 3
      Width = 70
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
        '.'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object bbAplicar: TBitBtn
      Left = 638
      Top = 3
      Width = 150
      Height = 25
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbAplicarClick
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
    object bbImprimir: TBitBtn
      Left = 638
      Top = 27
      Width = 150
      Height = 25
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
    object bbSalvarPadrao: TBitBtn
      Left = 440
      Top = 53
      Width = 150
      Height = 25
      Hint = 'Salva as Op'#231#245'es Digitadas'#13#10'Como Padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbSalvarPadraoClick
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
    object bbSair: TBitBtn
      Left = 637
      Top = 51
      Width = 150
      Height = 25
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object CB_TPP: TComboBox
      Left = 112
      Top = 39
      Width = 202
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = 'Data da Baixa'
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Data da Baixa'
        'Data do pgto'
        'Data do Pedido')
    end
    object cb_ordem: TComboBox
      Left = 112
      Top = 60
      Width = 202
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Vendedor'
      OnClick = cb_ordemClick
      Items.Strings = (
        'Vendedor'
        'Supervisor'
        'Televendas'
        'Assessor')
    end
    object txt_PCOMIS_DIG: TEdit
      Left = 457
      Top = 3
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = txt_PCOMIS_DIGExit
    end
    object cb_listarpor: TComboBox
      Left = 318
      Top = 59
      Width = 110
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 9
      Text = 'PAGOS'
      OnClick = cb_listarporClick
      Items.Strings = (
        'ABERTOS'
        'PAGOS PARCIAL'
        'PAGOS'
        'TODOS')
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 231
    Width = 792
    Height = 23
    Align = alBottom
    TabOrder = 3
    object Label19: TLabel
      Left = 14
      Top = 3
      Width = 137
      Height = 13
      Caption = 'Cheques Devolvidos Extorno'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label20: TLabel
      Left = 0
      Top = 0
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 373
      Top = 3
      Width = 74
      Height = 13
      Caption = 'Nota de Credito'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 359
      Top = 0
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 487
      Top = 3
      Width = 94
      Height = 13
      Caption = 'Outros Documentos'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 473
      Top = 0
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label28: TLabel
      Left = 170
      Top = 1
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label29: TLabel
      Left = 184
      Top = 5
      Width = 152
      Height = 13
      Caption = 'Cheques Devolvidos Recebidos'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Qr_CL02: TQuery
    OnCalcFields = Qr_CL02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      '  CL2CODEMP   ,'
      '  CL2CHAVE    ,'
      '  CL2SEQ      ,'
      '  CL2DOC      ,'
      '  CL2NUMERO   ,'
      '  CL2DESD     ,'
      '  CL2DUP      ,'
      '  CL2CHAVEP   ,'
      '  CL2ORDEMP   ,'
      '  CL2CODEMPD  ,'
      '  CL2VALDOC   ,'
      '  CL2VALFRE   ,'
      '  CL2VALICMSR ,'
      '  CL2SEMCOM   ,'
      '  CL2VALACRE  ,'
      '  CL2VALCOM   ,'
      '  CL2VALCTL   ,'
      '  CL2LOTSEQ   ,'
      '  CL2LOTSEQ_DC,'
      '  CL2DTEMIS   ,'
      '  CL2CODECF   ,'
      '  CL2DTVCTO   ,'
      '  CL2DTBX     ,'
      '  CL2CODCLI   ,'
      '  CL2CODBCO   ,'
      '  CL2TARBAN   ,'
      '  CL2OUTDESP ,'
      '  CL2VALDESC ,'
      '  CL2DTPAG ,'
      '  CL2JUROS ,'
      '  CL2JURD ,'
      '  CL2MULTA,'
      '  CL2VALREC,'
      '  CL2LOTSEQ_BX,'
      '  CL2JUROS AS CL2COMSUP,'
      '  CL2JUROS AS CL2COMASSE,'
      '  CL2LOTE_BX ,'
      '  CRAZAO'
      'from CADCL02,CADCLI'
      'WHERE CCODCLI=CL2CODCLI'
      'AND CL2CODCLI=0'
      '')
    Left = 344
    Top = 12
    object Qr_CL02CL2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CL2CODEMP'
      Origin = 'SG_ASSOC.CADCL02.CL2CODEMP'
    end
    object Qr_CL02CL2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CL2CHAVE'
      Origin = 'SG_ASSOC.CADCL02.CL2CHAVE'
    end
    object Qr_CL02CL2SEQ: TFloatField
      DisplayLabel = 'Seq'
      FieldName = 'CL2SEQ'
      Origin = 'SG_ASSOC.CADCL02.CL2SEQ'
    end
    object Qr_CL02CL2DOC: TFloatField
      DisplayLabel = 'Doc'
      FieldName = 'CL2DOC'
      Origin = 'SG_ASSOC.CADCL02.CL2DOC'
    end
    object Qr_CL02CL2NUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'CL2NUMERO'
      Origin = 'SG_ASSOC.CADCL02.CL2NUMERO'
    end
    object Qr_CL02CL2DESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CL2DESD'
      Origin = 'SG_ASSOC.CADCL02.CL2DESD'
      Size = 2
    end
    object Qr_CL02CL2DUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CL2DUP'
      Origin = 'SG_ASSOC.CADCL02.CL2DUP'
    end
    object Qr_CL02CL2CHAVEP: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'CL2CHAVEP'
      Origin = 'SG_ASSOC.CADCL02.CL2CHAVEP'
    end
    object Qr_CL02CL2ORDEMP: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CL2ORDEMP'
      Origin = 'SG_ASSOC.CADCL02.CL2ORDEMP'
    end
    object Qr_CL02CL2CODEMPD: TFloatField
      DisplayLabel = 'Cod.Emp'
      FieldName = 'CL2CODEMPD'
      Origin = 'SG_ASSOC.CADCL02.CL2CODEMPD'
    end
    object Qr_CL02CL2VALDOC: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CL2VALDOC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALDOC'
    end
    object Qr_CL02CL2VALFRE: TFloatField
      DisplayLabel = 'frete'
      FieldName = 'CL2VALFRE'
      Origin = 'SG_ASSOC.CADCL02.CL2VALFRE'
    end
    object Qr_CL02CL2VALICMSR: TFloatField
      DisplayLabel = 'Icms Ret'
      FieldName = 'CL2VALICMSR'
      Origin = 'SG_ASSOC.CADCL02.CL2VALICMSR'
    end
    object Qr_CL02CL2SEMCOM: TFloatField
      DisplayLabel = 'Sem Com'
      FieldName = 'CL2SEMCOM'
      Origin = 'SG_ASSOC.CADCL02.CL2SEMCOM'
    end
    object Qr_CL02CL2VALACRE: TFloatField
      DisplayLabel = 'ValAcre'
      FieldName = 'CL2VALACRE'
      Origin = 'SG_ASSOC.CADCL02.CL2VALACRE'
    end
    object Qr_CL02CL2VALCOM: TFloatField
      DisplayLabel = 'Val.com'
      FieldName = 'CL2VALCOM'
      Origin = 'SG_ASSOC.CADCL02.CL2VALCOM'
    end
    object Qr_CL02CL2VALCTL: TFloatField
      DisplayLabel = 'Comis TLV'
      FieldName = 'CL2VALCTL'
      Origin = 'SG_ASSOC.CADCL02.CL2VALCTL'
    end
    object Qr_CL02CL2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'CL2LOTSEQ'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ'
    end
    object Qr_CL02CL2LOTSEQ_DC: TFloatField
      DisplayLabel = 'Lote Seq.Doc'
      FieldName = 'CL2LOTSEQ_DC'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ_DC'
    end
    object Qr_CL02CL2DTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CL2DTEMIS'
      Origin = 'SG_ASSOC.CADCL02.CL2DTEMIS'
    end
    object Qr_CL02CL2CODECF: TFloatField
      DisplayLabel = 'Cod.ECF'
      FieldName = 'CL2CODECF'
      Origin = 'SG_ASSOC.CADCL02.CL2CODECF'
    end
    object Qr_CL02CL2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CL2DTVCTO'
      Origin = 'SG_ASSOC.CADCL02.CL2DTVCTO'
    end
    object Qr_CL02CL2DTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CL2DTBX'
      Origin = 'SG_ASSOC.CADCL02.CL2DTBX'
    end
    object Qr_CL02CL2CODCLI: TFloatField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CL2CODCLI'
      Origin = 'SG_ASSOC.CADCL02.CL2CODCLI'
    end
    object Qr_CL02CL2CODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'CL2CODBCO'
      Origin = 'SG_ASSOC.CADCL02.CL2CODBCO'
    end
    object Qr_CL02CL2TARBAN: TFloatField
      DisplayLabel = 'Tar.Banc'
      FieldName = 'CL2TARBAN'
      Origin = 'SG_ASSOC.CADCL02.CL2TARBAN'
    end
    object Qr_CL02CL2OUTDESP: TFloatField
      DisplayLabel = 'Out.Desp'
      FieldName = 'CL2OUTDESP'
      Origin = 'SG_ASSOC.CADCL02.CL2OUTDESP'
    end
    object Qr_CL02CRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CL02CL2VALDESC: TFloatField
      DisplayLabel = 'Desc.Conced'
      FieldName = 'CL2VALDESC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALDESC'
    end
    object Qr_CL02CL2DTPAG: TDateTimeField
      FieldName = 'CL2DTPAG'
      Origin = 'SG_ASSOC.CADCL02.CL2DTPAG'
    end
    object Qr_CL02CL2JUROS: TFloatField
      DisplayLabel = 'Juros Rec'
      FieldName = 'CL2JUROS'
      Origin = 'SG_ASSOC.CADCL02.CL2JUROS'
    end
    object Qr_CL02CL2JURD: TFloatField
      DisplayLabel = 'Juros dia'
      FieldName = 'CL2JURD'
      Origin = 'SG_ASSOC.CADCL02.CL2JURD'
    end
    object Qr_CL02CL2MULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CL2MULTA'
      Origin = 'SG_ASSOC.CADCL02.CL2MULTA'
    end
    object Qr_CL02CL2VALREC: TFloatField
      DisplayLabel = 'Vlr.Recebido'
      FieldName = 'CL2VALREC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALREC'
    end
    object Qr_CL02CL2LOTSEQ_BX: TFloatField
      FieldName = 'CL2LOTSEQ_BX'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ_BX'
    end
    object Qr_CL02CL2LOTE_BX: TFloatField
      FieldName = 'CL2LOTE_BX'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTE_BX'
    end
    object Qr_CL02valcom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valcom'
      Calculated = True
    end
    object Qr_CL02comtlv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'comtlv'
      Calculated = True
    end
    object Qr_CL02CL2COMSUP: TFloatField
      FieldName = 'CL2COMSUP'
      Origin = 'SG_ASSOC.CADCL02.CL2JUROS'
    end
    object Qr_CL02CL2COMASSE: TFloatField
      FieldName = 'CL2COMASSE'
      Origin = 'SG_ASSOC.CADCL02.CL2JUROS'
    end
  end
  object Src_CL02: TDataSource
    DataSet = Qr_CL02
    Left = 360
    Top = 96
  end
end
