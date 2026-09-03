object Frm_ProdTit: TFrm_ProdTit
  Left = 203
  Top = 119
  Width = 800
  Height = 450
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Produtos x T'#237'tulos'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 775
    Height = 312
    ActivePage = tsFiltros01
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object tsFiltros01: TTabSheet
      Caption = 'Filtros'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 748
        Height = 273
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label13: TLabel
          Left = 37
          Top = 138
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label4: TLabel
          Left = 8
          Top = 181
          Width = 87
          Height = 13
          Caption = 'Grupo de Produto:'
        end
        object Label14: TLabel
          Left = 53
          Top = 99
          Width = 40
          Height = 13
          Caption = 'Produto:'
        end
        object Label1: TLabel
          Left = 52
          Top = 17
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label2: TLabel
          Left = 45
          Top = 58
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object Label3: TLabel
          Left = 8
          Top = 222
          Width = 79
          Height = 13
          Caption = 'Tipo de Produto:'
        end
        object CODFOR: TEdit
          Left = 99
          Top = 138
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 172
          Top = 138
          Width = 563
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 99
          Top = 158
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object CODGRU: TEdit
          Left = 99
          Top = 179
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnExit = CODGRUExit
          OnKeyPress = CODGRUKeyPress
        end
        object lbx_codgru: TListBox
          Left = 172
          Top = 179
          Width = 563
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codgruKeyDown
        end
        object OMITIR_GRU: TCheckBox
          Left = 100
          Top = 203
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object CODPRO: TEdit
          Left = 99
          Top = 97
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object lbx_codpro: TListBox
          Left = 172
          Top = 97
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
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 100
          Top = 121
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODCLI: TEdit
          Left = 99
          Top = 15
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
          Left = 172
          Top = 15
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
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 99
          Top = 39
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODVEN: TEdit
          Left = 99
          Top = 56
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 172
          Top = 56
          Width = 563
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 99
          Top = 80
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object CODTPRO: TEdit
          Left = 99
          Top = 220
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnExit = CODTPROExit
          OnKeyPress = CODTPROKeyPress
        end
        object lbx_codtpro: TListBox
          Left = 172
          Top = 220
          Width = 563
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnKeyDown = lbx_codtproKeyDown
        end
        object OMITIR_TPRO: TCheckBox
          Left = 100
          Top = 244
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
      end
    end
    object tsFiltros02: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label6: TLabel
        Left = 7
        Top = 12
        Width = 75
        Height = 13
        Caption = 'Tipo de Pedido:'
      end
      object RG_TIPOPED: TCheckListBox
        Left = 5
        Top = 27
        Width = 750
        Height = 271
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 775
    Height = 110
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 28
      Top = 27
      Width = 67
      Height = 13
      Caption = 'Agrupado por:'
    end
    object Label7: TLabel
      Left = 25
      Top = 6
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label8: TLabel
      Left = 264
      Top = 4
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label9: TLabel
      Left = 27
      Top = 51
      Width = 98
      Height = 13
      Caption = 'Titulo do Cabe'#231'alho:'
    end
    object SB_SalvarPadrao: TSpeedButton
      Left = 564
      Top = 78
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = 'Sal&var Padr'#227'o'
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
      OnClick = SB_SalvarPadraoClick
    end
    object cb_agrupar: TComboBox
      Left = 105
      Top = 22
      Width = 328
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 3
      Text = 'Sem Grupo'
      Items.Strings = (
        'Chave do Pedido'
        'Cliente'
        'Controle do Produto'
        'Fornecedor'
        'Grupo de Produtos'
        'N'#250'mero do Documento'
        'Ramo do Produto'
        'Sem Grupo'
        'Tipo de Produto')
    end
    object CB_SEMBORDA: TCheckBox
      Left = 433
      Top = 4
      Width = 97
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Sem Bordas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = CB_SEMBORDAClick
    end
    object MDT1: TMaskEdit
      Left = 105
      Top = 4
      Width = 98
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 333
      Top = 4
      Width = 98
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object bbImprimir: TBitBtn
      Left = 454
      Top = 78
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = '&Imprimir'
      TabOrder = 6
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
      Left = 678
      Top = 78
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
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
    object CABTIT: TEdit
      Left = 126
      Top = 47
      Width = 435
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Destino dos Produtos'
    end
    object RG_FILTRO: TRadioGroup
      Left = 618
      Top = 1
      Width = 104
      Height = 67
      Caption = 'Listar os T'#237'tulos'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        '&A Receber'
        '&Recebidos'
        '&Todos')
      ParentCtl3D = False
      TabOrder = 5
    end
  end
  object RLReport1: TRLReport
    Left = -8
    Top = 409
    Width = 794
    Height = 1123
    DataSource = Src_Ped
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
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
        Width = 109
        Height = 16
        Caption = 'Produtos x Titulos'
      end
      object lbl_periodo: TRLLabel
        Left = 161
        Top = 17
        Width = 392
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
        Caption = 'Produtos x Titulos'
        Color = 16766935
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 218
      Width = 718
      Height = 48
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 88
      Width = 718
      Height = 130
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      DataFields = 'NOMGRU'
      object band_cab: TRLBand
        Left = 1
        Top = 16
        Width = 716
        Height = 28
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object lbl_CabDataDoc: TRLMemo
          Left = 1
          Top = 0
          Width = 66
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Data do'
            'Documento')
          ParentFont = False
        end
        object lbl_cabNumNF: TRLMemo
          Left = 66
          Top = 1
          Width = 48
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'N'#250'mero'
            'NF')
          ParentFont = False
        end
        object lbl_cabcodpro: TRLMemo
          Left = 173
          Top = 2
          Width = 40
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'C'#243'digo'
            'Prod.')
          ParentFont = False
        end
        object lbl_cabNomPro: TRLMemo
          Left = 212
          Top = 1
          Width = 216
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object lbl_cabvaldes: TRLMemo
          Left = 484
          Top = 1
          Width = 48
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Valor'
            'Desconto')
          ParentFont = False
        end
        object lbl_cabvalrec: TRLMemo
          Left = 593
          Top = 1
          Width = 56
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Valor'
            'Recebido')
          ParentFont = False
        end
        object lbl_cabqtd: TRLMemo
          Left = 113
          Top = 2
          Width = 62
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Qtd')
          ParentFont = False
        end
        object lbl_cabdatarec: TRLMemo
          Left = 648
          Top = 1
          Width = 68
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Data do'
            'Recebimento')
          ParentFont = False
        end
        object lbl_cabpu: TRLMemo
          Left = 427
          Top = 3
          Width = 56
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Pre'#231'o'
            'Unit'#225'rio')
          ParentFont = False
        end
        object lbl_cabtotliq: TRLMemo
          Left = 535
          Top = 2
          Width = 56
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Total'
            'Liquido')
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 1
        Top = 0
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
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'NOMGRU'
          DataSource = Src_Ped
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLGroup2: TRLGroup
        Left = 1
        Top = 44
        Width = 716
        Height = 64
        DataFields = 'NUMNF'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 716
          Height = 12
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand4BeforePrint
          object db_nompro: TRLDBText
            Left = 212
            Top = 0
            Width = 216
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'NOMPRO'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabNomPro
            ParentFont = False
          end
          object lbl_datadoc: TRLLabel
            Left = 1
            Top = 0
            Width = 66
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'lbl_DataDoc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_CabDataDoc
            ParentFont = False
          end
          object lbl_NumNF: TRLLabel
            Left = 66
            Top = 0
            Width = 48
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabNumNF
            ParentFont = False
          end
          object db_qtd: TRLDBText
            Left = 113
            Top = 0
            Width = 62
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabqtd
            ParentFont = False
          end
          object lbl_valrec: TRLLabel
            Left = 593
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabvalrec
            ParentFont = False
          end
          object lbl_datarec: TRLLabel
            Left = 648
            Top = 0
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabdatarec
            ParentFont = False
          end
          object db_codpro: TRLDBText
            Left = 173
            Top = 0
            Width = 40
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'P2CODPRO'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabcodpro
            ParentFont = False
          end
          object lbl_pu: TRLDBText
            Left = 427
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PCOUNI'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabpu
            ParentFont = False
          end
          object lbl_valdes: TRLDBText
            Left = 484
            Top = 0
            Width = 48
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_DESC'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabvaldes
            ParentFont = False
          end
          object lbl_totliq: TRLDBText
            Left = 535
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_LIQ'
            DataSource = Src_Ped
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabtotliq
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 12
          Width = 716
          Height = 13
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand5BeforePrint
          object lblg_total: TRLLabel
            Left = 1
            Top = 0
            Width = 66
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total......................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_CabDataDoc
            ParentFont = False
          end
          object lblg_numnf: TRLLabel
            Left = 66
            Top = 0
            Width = 48
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabNumNF
            ParentFont = False
          end
          object lblg_codpro: TRLLabel
            Left = 173
            Top = 0
            Width = 40
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabcodpro
            ParentFont = False
          end
          object lblg_nompro: TRLLabel
            Left = 212
            Top = 0
            Width = 216
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabNomPro
            ParentFont = False
          end
          object lblg_totdes: TRLLabel
            Left = 484
            Top = 0
            Width = 48
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabvaldes
            ParentFont = False
          end
          object lblg_valrec: TRLLabel
            Left = 593
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabvalrec
            ParentFont = False
          end
          object lblg_qtd: TRLLabel
            Left = 113
            Top = 0
            Width = 62
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabqtd
            ParentFont = False
          end
          object lblg_datarec: TRLLabel
            Left = 648
            Top = 0
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabdatarec
            ParentFont = False
          end
          object lblg_pu: TRLLabel
            Left = 427
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblg_totliq: TRLLabel
            Left = 535
            Top = 0
            Width = 56
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabtotliq
            ParentFont = False
          end
        end
      end
      object RLBand6: TRLBand
        Left = 1
        Top = 108
        Width = 716
        Height = 13
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand6BeforePrint
        object RLLabel2: TRLLabel
          Left = 1
          Top = 0
          Width = 66
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Total......................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_CabDataDoc
          ParentFont = False
        end
        object lblt_numnf: TRLLabel
          Left = 66
          Top = 0
          Width = 48
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabNumNF
          ParentFont = False
        end
        object lblt_codpro: TRLLabel
          Left = 173
          Top = 0
          Width = 40
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabcodpro
          ParentFont = False
        end
        object lblt_nompro: TRLLabel
          Left = 212
          Top = 0
          Width = 216
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabNomPro
          ParentFont = False
        end
        object lblt_totdes: TRLLabel
          Left = 484
          Top = 0
          Width = 48
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabvaldes
          ParentFont = False
        end
        object lblt_valrec: TRLLabel
          Left = 593
          Top = 0
          Width = 56
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabvalrec
          ParentFont = False
        end
        object lblt_qtd: TRLLabel
          Left = 113
          Top = 0
          Width = 62
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabqtd
          ParentFont = False
        end
        object lblt_datarec: TRLLabel
          Left = 648
          Top = 0
          Width = 68
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabdatarec
          ParentFont = False
        end
        object lblt_pu: TRLLabel
          Left = 427
          Top = 0
          Width = 56
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblt_totliq: TRLLabel
          Left = 535
          Top = 0
          Width = 56
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabtotliq
          ParentFont = False
        end
      end
    end
  end
  object Qr_Ped: TQuery
    OnCalcFields = Qr_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO'
      ',P2QTD   AS QTD'
      ',P2PRECO AS PCOUNI'
      ',P2TOTDES AS TOTDES'
      ',P2DESCRAT AS DESCRAT'
      ',P2ACRERAT AS ACRERAT'
      ',P2TOTLIQ  AS TOTLIQ'
      ',(P2TOTLIQ+P2ACRERAT-P2DESCRAT) AS TOTAL_LIQ'
      ',(P2DESCRAT-P2ACRERAT) AS TOTAL_DESC'
      ',P1NUMNF  AS NUMNF'
      ',P1CODVEN AS CODVEN'
      ',P1FORMACE AS FORMACE'
      ',P1DATAP  AS DATAPED'
      ',P1DATDOC AS DATADOC'
      ',CRAZAO   AS RAZSOC'
      ',VNOME    AS NOMVEN'
      ',PDNOME AS NOMPRO'
      ',PDUND  AS UNDPRO'
      ',CRAZAO   AS NOMGRU'
      ',sum(CRVALOR) AS VALDUP'
      ',sum(CRVALPAG) AS VALREC'
      ',max(CRDTPAG) AS DTPAG'
      ',min(CRDTPAG) AS DTAB'
      'FROM CADDAR,CADP01,CADP02,CADCLI,CADVEN,CADPRO WHERE'
      'CRDTEMIS>='#39'01/06/2006'#39' '
      'AND CRDTEMIS<='#39'31/10/2006'#39
      'AND CRCODEMP=1'
      'AND P1CODEMP=CRCODEMP'
      'AND P1LOTSEQ=CRLOTSEQ_CP'
      'AND P1CHAVE=CRNPED'
      'AND P1ORDEM=CRORDEM'
      'AND   P2CODEMP=P1CODEMP'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND P2CHAVE=P1CHAVE'
      'AND P2ORDEM=P1ORDEM'
      'AND CCODCLI=P1CODCLI'
      'AND VCODVEN=P1CODVEN'
      'AND PDCODEMP=P2CODEMP'
      'AND PDCODPRO=P2CODPRO'
      'GROUP BY'
      'P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO'
      ',P2QTD'
      ',P2PRECO'
      ',P2TOTDES'
      ',P2DESCRAT'
      ',P2ACRERAT'
      ',P2TOTLIQ'
      ',P1NUMNF'
      ',P1CODVEN'
      ',P1FORMACE'
      ',P1DATAP'
      ',P1DATDOC'
      ',CRAZAO'
      ',VNOME'
      ',PDNOME'
      ',PDUND'
      'ORDER BY P2LOTSEQ,P2CHAVE,P2ORDEM'
      '')
    Left = 152
    Top = 192
    object Qr_PedP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Qr_PedP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Qr_PedP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object Qr_PedP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Qr_PedP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_PedPCOUNI: TFloatField
      FieldName = 'PCOUNI'
    end
    object Qr_PedTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object Qr_PedNUMNF: TFloatField
      FieldName = 'NUMNF'
    end
    object Qr_PedCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Qr_PedFORMACE: TFloatField
      FieldName = 'FORMACE'
    end
    object Qr_PedDATAPED: TDateTimeField
      FieldName = 'DATAPED'
    end
    object Qr_PedRAZSOC: TStringField
      FieldName = 'RAZSOC'
      Size = 40
    end
    object Qr_PedNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_PedNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object Qr_PedUNDPRO: TStringField
      FieldName = 'UNDPRO'
      Size = 3
    end
    object Qr_PedNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Size = 40
    end
    object Qr_Pedvaltot: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valtot'
      Calculated = True
    end
    object Qr_PedVALDUP: TFloatField
      FieldName = 'VALDUP'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_PedVALREC: TFloatField
      FieldName = 'VALREC'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_PedDATADOC: TDateTimeField
      FieldName = 'DATADOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_PedDTPAG: TDateTimeField
      FieldName = 'DTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_PedDTAB: TDateTimeField
      FieldName = 'DTAB'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_PedDESCRAT: TFloatField
      FieldName = 'DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Qr_PedACRERAT: TFloatField
      FieldName = 'ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Qr_PedTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_PedTOTAL_LIQ: TFloatField
      FieldName = 'TOTAL_LIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_PedTOTAL_DESC: TFloatField
      FieldName = 'TOTAL_DESC'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 208
    Top = 64
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 584
    Top = 32
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 624
    Top = 88
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 664
    Top = 120
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 696
    Top = 96
  end
end
