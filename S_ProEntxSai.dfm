object Frm_ProEntxSai: TFrm_ProEntxSai
  Left = 56
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Comparativo de Produtos Entradas x Saidas'
  ClientHeight = 418
  ClientWidth = 822
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
    Left = 552
    Top = 389
    Width = 110
    Height = 26
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
    Left = 589
    Top = 358
    Width = 150
    Height = 13
    Caption = 'Casas Decimais p/ Quantidade:'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 822
    Height = 311
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Panel2: TPanel
        Left = 0
        Top = 277
        Width = 776
        Height = 26
        Align = alBottom
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 776
        Height = 302
        Align = alTop
        Caption = 'Filtros Primarios:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label1: TLabel
          Left = 34
          Top = 22
          Width = 40
          Height = 13
          Caption = 'Produto:'
        end
        object Label5: TLabel
          Left = 14
          Top = 67
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label11: TLabel
          Left = 35
          Top = 141
          Width = 100
          Height = 13
          Alignment = taCenter
          Caption = 'Nivel do Produto:'
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
          Top = 22
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
          Top = 22
          Width = 581
          Height = 42
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
          Top = 63
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
          Top = 63
          Width = 581
          Height = 42
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
        object OMITIR_PRO: TCheckBox
          Left = 75
          Top = 43
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnMouseMove = OMITIR_PROMouseMove
        end
        object OMITIR_FOR: TCheckBox
          Left = 76
          Top = 86
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnMouseMove = OMITIR_FORMouseMove
        end
        object StaticText8: TStaticText
          Left = 3
          Top = 104
          Width = 65
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Televendas:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
        end
        object CODUSR: TEdit
          Left = 76
          Top = 102
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelKind = bkSoft
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = CODUSRExit
          OnKeyPress = CODUSRKeyPress
        end
        object lbx_codusr: TListBox
          Left = 137
          Top = 104
          Width = 581
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codusrKeyDown
        end
        object OMITIR_USR: TCheckBox
          Left = 77
          Top = 125
          Width = 49
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object CLBNivel: TCheckListBox
          Left = 138
          Top = 142
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
          TabOrder = 10
          OnClick = CLBNivelClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 776
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
          Left = 104
          Top = 166
          Width = 47
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnMouseMove = OMITIR_RAMMouseMove
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
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object RLReport1: TRLReport
        Left = -16
        Top = 64
        Width = 794
        Height = 1123
        DataSource = Src_for
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 33
          BandType = btColumnHeader
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 583
            Top = 0
            Width = 135
            Height = 16
            Align = faRightTop
            Info = itPageNumber
            Text = 'Pagina: '
          end
          object rl_obscab: TRLLabel
            Left = 0
            Top = 16
            Width = 125
            Height = 16
            Caption = 'Balan'#231'o de Produtos'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 627
            Top = 17
            Width = 91
            Height = 16
            Align = faRightBottom
            Info = itFullDate
            Text = 'Data:'
          end
        end
        object RLBand_cabgru: TRLBand
          Left = 38
          Top = 71
          Width = 718
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_codpro: TRLLabel
            Left = 4
            Top = -1
            Width = 44
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
            Layout = tlCenter
          end
          object lbl_descricao: TRLLabel
            Left = 47
            Top = 0
            Width = 280
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o'
            Layout = tlCenter
          end
          object lbl_und: TRLLabel
            Left = 330
            Top = -1
            Width = 24
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Und'
            Layout = tlCenter
          end
          object lbl_entradas: TRLLabel
            Left = 354
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.Ent'
            Layout = tlCenter
          end
          object lbl_saidas: TRLLabel
            Left = 474
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.Sai'
            Layout = tlCenter
          end
          object lbl_saldo: TRLLabel
            Left = 595
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Saldo'
            Layout = tlCenter
          end
          object lbl_entradas_vlr: TRLLabel
            Left = 414
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vlr Ent'
            Layout = tlCenter
          end
          object lbl_saidas_vlr: TRLLabel
            Left = 535
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vlr.Sai'
            Layout = tlCenter
          end
          object lbl_saldo_vlr: TRLLabel
            Left = 655
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Saldo'
            Layout = tlCenter
          end
        end
        object RLBand_detail: TRLBand
          Left = 38
          Top = 87
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand_detailBeforePrint
          object edt_codpro: TRLDBText
            Left = 4
            Top = 0
            Width = 44
            Height = 16
            AutoSize = False
            DataField = 'PDCODPRO'
            DataSource = Src_for
            Holder = lbl_codpro
            Layout = tlCenter
          end
          object edt_descricao: TRLDBText
            Left = 47
            Top = 0
            Width = 280
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_for
            Holder = lbl_descricao
            Layout = tlCenter
          end
          object edt_und: TRLDBText
            Left = 330
            Top = 0
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'PDUND'
            DataSource = Src_for
            Holder = lbl_und
            Layout = tlCenter
          end
          object edt_entradas: TRLDBText
            Left = 354
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ENTRADAS'
            DataSource = Src_for
            Holder = lbl_entradas
            Layout = tlCenter
          end
          object edt_saidas: TRLDBText
            Left = 474
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'SAIDAS'
            DataSource = Src_for
            Holder = lbl_saidas
            Layout = tlCenter
          end
          object edt_saldo: TRLDBText
            Left = 595
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'saldo'
            DataSource = Src_for
            Holder = lbl_saldo
            Layout = tlCenter
          end
          object edt_entradas_vlr: TRLDBText
            Left = 414
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ENTRADAS_VALOR'
            DataSource = Src_for
            Holder = lbl_entradas_vlr
            Layout = tlCenter
          end
          object edt_saidas_vlr: TRLDBText
            Left = 535
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'SAIDAS_VALOR'
            DataSource = Src_for
            Holder = lbl_saidas_vlr
            Layout = tlCenter
          end
          object edt_saldo_vlr: TRLDBText
            Left = 655
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'SAIDAS_VALOR'
            DataSource = Src_for
            Holder = lbl_saldo_vlr
            Layout = tlCenter
          end
        end
        object RL_Rodape: TRLBand
          Left = 38
          Top = 135
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RL_RodapeBeforePrint
          object lbl_emitido: TRLLabel
            Left = 471
            Top = 0
            Width = 247
            Height = 16
            Align = faRightTop
            Alignment = taRightJustify
            Caption = 'Relatorio Emitido em 17/07/2007 as 13:30'
          end
        end
        object RLRodPag: TRLBand
          Left = 38
          Top = 119
          Width = 718
          Height = 16
          BandType = btSummary
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 103
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand1BeforePrint
          object lblrod_codpro: TRLLabel
            Left = 4
            Top = -1
            Width = 44
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = lbl_codpro
            Layout = tlCenter
          end
          object lblRod_descricao: TRLLabel
            Left = 47
            Top = 0
            Width = 280
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Totais......................................................'
            Holder = lbl_descricao
            Layout = tlCenter
          end
          object lblRod_und: TRLLabel
            Left = 330
            Top = -1
            Width = 24
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = lbl_und
            Layout = tlCenter
          end
          object lblRod_entradas: TRLLabel
            Left = 354
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Entradas'
            Holder = lbl_entradas
            Layout = tlCenter
          end
          object lblRod_saidas: TRLLabel
            Left = 474
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saidas'
            Holder = lbl_saidas
            Layout = tlCenter
          end
          object lblRod_saldo: TRLLabel
            Left = 595
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo'
            Holder = lbl_saldo
            Layout = tlCenter
          end
          object lblrod_entradas_vlr: TRLLabel
            Left = 414
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Entradas'
            Holder = lbl_entradas_vlr
            Layout = tlCenter
          end
          object lblrod_saidas_vlr: TRLLabel
            Left = 535
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saidas'
            Holder = lbl_saidas_vlr
            Layout = tlCenter
          end
          object lblrod_saldo_vlr: TRLLabel
            Left = 655
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo'
            Holder = lbl_saldo_vlr
            Layout = tlCenter
          end
        end
      end
    end
  end
  object bbImprimir: TBitBtn
    Left = 438
    Top = 389
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
    Left = 667
    Top = 389
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
  object CB_EmiDoc: TCheckBox
    Left = 585
    Top = 318
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
    TabOrder = 4
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
    Left = 742
    Top = 354
    Width = 44
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
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
  object CB_SEMMOV: TCheckBox
    Left = 586
    Top = 337
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
    TabOrder = 5
    Visible = False
  end
  object CB_AJUSTE: TCheckBox
    Left = 8
    Top = 338
    Width = 289
    Height = 17
    Caption = 'Pesquisar no Arquivo de Ajuste'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object CB_PEDCOMPRA: TCheckBox
    Left = 8
    Top = 356
    Width = 289
    Height = 17
    Caption = 'Pesquisar no Arquivo de Pedido de Compra'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object CB_PEDVDA: TCheckBox
    Left = 8
    Top = 375
    Width = 289
    Height = 17
    Caption = 'Pesquisar no Arquivo de Pedido de Venda'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object RG_ORDEM: TRadioGroup
    Left = 312
    Top = 342
    Width = 185
    Height = 42
    Caption = 'Ordem'
    ItemIndex = 1
    Items.Strings = (
      'Descricao'
      'Codigo')
    TabOrder = 10
  end
  object Qr_For: TQuery
    OnCalcFields = Qr_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDUND,PDCODPRO, '
      '       PDMARCA as GRADE, '
      '       PDPRECO1 as VENDAS,'
      '       PDPRECO1 as DEVOL_CLIENTE,'
      '       PDPRECO1 as COMPRAS,'
      '       PDPRECO1 as ENTRADA_AJUSTE, '
      '       PDPRECO1 as SAIDA_AJUSTE,  '
      '       PDPRECO1 as ENTRADAS,'
      '       PDPRECO1 as SAIDAS,'
      ''
      '       PDPRECO1 as VENDAS_VALOR,'
      '       PDPRECO1 as DEVOL_CLIENTE_VALOR,'
      '       PDPRECO1 as COMPRAS_VALOR,'
      '       PDPRECO1 as ENTRADA_AJUSTE_VALOR,'
      '       PDPRECO1 as SAIDA_AJUSTE_VALOR,'
      '       PDPRECO1 as ENTRADAS_VALOR,'
      '       PDPRECO1 as SAIDAS_VALOR'
      ''
      ''
      '       from CADPRO')
    Left = 688
    Top = 16
    object Qr_ForPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_ForPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ForPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ForGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object Qr_ForVENDAS: TFloatField
      FieldName = 'VENDAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForDEVOL_CLIENTE: TFloatField
      FieldName = 'DEVOL_CLIENTE'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForCOMPRAS: TFloatField
      FieldName = 'COMPRAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForENTRADA_AJUSTE: TFloatField
      FieldName = 'ENTRADA_AJUSTE'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForSAIDA_AJUSTE: TFloatField
      FieldName = 'SAIDA_AJUSTE'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForSAIDAS: TFloatField
      FieldName = 'SAIDAS'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_Forsaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      Calculated = True
    end
    object Qr_ForVENDAS_VALOR: TFloatField
      FieldName = 'VENDAS_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForDEVOL_CLIENTE_VALOR: TFloatField
      FieldName = 'DEVOL_CLIENTE_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForCOMPRAS_VALOR: TFloatField
      FieldName = 'COMPRAS_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForENTRADA_AJUSTE_VALOR: TFloatField
      FieldName = 'ENTRADA_AJUSTE_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForSAIDA_AJUSTE_VALOR: TFloatField
      FieldName = 'SAIDA_AJUSTE_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForENTRADAS_VALOR: TFloatField
      FieldName = 'ENTRADAS_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ForSAIDAS_VALOR: TFloatField
      FieldName = 'SAIDAS_VALOR'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_Forsaldo_valor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo_valor'
      Calculated = True
    end
  end
  object Src_for: TDataSource
    DataSet = Qr_For
    Left = 634
    Top = 36
  end
end
