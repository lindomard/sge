object Frm_LPreco2: TFrm_LPreco2
  Left = 120
  Top = 173
  Width = 810
  Height = 450
  Caption = 'Lista de Preco'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 802
    Height = 281
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Label5: TLabel
        Left = 6
        Top = 66
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label1: TLabel
        Left = 25
        Top = 25
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label2: TLabel
        Left = 1
        Top = 108
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object Label3: TLabel
        Left = 17
        Top = 148
        Width = 42
        Height = 13
        Caption = 'Controle:'
      end
      object Label10: TLabel
        Left = 24
        Top = 189
        Width = 37
        Height = 13
        Caption = 'Regiao:'
      end
      object lbx_codfor: TListBox
        Left = 128
        Top = 63
        Width = 415
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
      object CODFOR: TEdit
        Left = 67
        Top = 63
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 68
        Top = 86
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_FORMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 68
        Top = 44
        Width = 60
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_PROMouseMove
      end
      object CODPRO: TEdit
        Left = 67
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
        Left = 128
        Top = 22
        Width = 415
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
      object RG_ORDEM: TRadioGroup
        Left = 562
        Top = 146
        Width = 159
        Height = 62
        Hint = 'Ordem do Relatorio'
        Caption = 'Ordem do Relat'#243'rio:'
        ItemIndex = 0
        Items.Strings = (
          'Nome & Produto'
          '&C'#243'digo Produto')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object RG_QUEBRA: TRadioGroup
        Left = 562
        Top = 19
        Width = 160
        Height = 103
        Caption = 'Quebra Por'
        ItemIndex = 0
        Items.Strings = (
          'Sem Quebra'
          'Fornecedor'
          'Grupo'
          'Ramo(Sub-Grupo)'
          'Controle'
          'Tipo'
          'Grupo/Ramo(Sub-Grupo)')
        TabOrder = 12
      end
      object CODCON: TEdit
        Left = 67
        Top = 145
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object CODTIP: TEdit
        Left = 67
        Top = 104
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseMove = CODTIPMouseMove
      end
      object lbx_codtip: TListBox
        Left = 128
        Top = 104
        Width = 415
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 68
        Top = 126
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_TPROMouseMove
      end
      object lbx_codcon: TListBox
        Left = 128
        Top = 145
        Width = 415
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 69
        Top = 168
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnMouseMove = OMITIR_CONMouseMove
      end
      object CODREG: TEdit
        Left = 67
        Top = 186
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = CODREGExit
        OnKeyPress = CODREGKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object NOMREG: TEdit
        Left = 128
        Top = 186
        Width = 297
        Height = 19
        TabStop = False
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 16
        Text = 'Normal(Sem Regiao)'
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object CB_SEPPAG: TCheckBox
        Left = 563
        Top = 128
        Width = 156
        Height = 17
        Caption = 'Separar Paginas por Quebra'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 13
      end
    end
    object TsSegundarios: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object Label4: TLabel
        Left = 9
        Top = 32
        Width = 32
        Height = 13
        Caption = 'Grupo:'
      end
      object Label6: TLabel
        Left = 12
        Top = 75
        Width = 31
        Height = 13
        Caption = 'Ramo:'
      end
      object Label15: TLabel
        Left = 591
        Top = 10
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
      object CODGRU: TEdit
        Left = 47
        Top = 31
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
        OnMouseMove = CODGRUMouseMove
      end
      object lbx_codgru: TListBox
        Left = 108
        Top = 31
        Width = 336
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 48
        Top = 51
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_GRUMouseMove
      end
      object CODRAM: TEdit
        Left = 47
        Top = 72
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
        Left = 108
        Top = 72
        Width = 336
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
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
        Left = 48
        Top = 95
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_RAMMouseMove
      end
      object StaticText10: TStaticText
        Left = 446
        Top = 10
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Niveis de Produtos'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object CLBNivel: TCheckListBox
        Left = 445
        Top = 30
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
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
        TabOrder = 7
        OnClick = CLBNivelClick
      end
      object CLBEstoque: TCheckListBox
        Left = 590
        Top = 24
        Width = 111
        Height = 81
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 8
        OnClick = CLBEstoqueClick
      end
    end
    object Ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 4
        Top = 1
        Width = 790
        Height = 966
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataSource = dsproduto
        DefaultFilter = matricial
        Degrade.OppositeColor = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 8.000000000000000000
        Margins.TopMargin = 8.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 209.000000000000000000
        PageSetup.PaperHeight = 255.500000000000000000
        Visible = False
        object rl_cabger: TRLBand
          Left = 30
          Top = 131
          Width = 722
          Height = 55
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_cab01: TRLLabel
            Left = 0
            Top = 4
            Width = 297
            Height = 24
            Caption = 'Lista de Precos para Consulta.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cab02: TRLLabel
            Left = 0
            Top = 28
            Width = 297
            Height = 24
            Caption = 'Lista de Precos para Consulta.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 30
          Top = 202
          Width = 722
          Height = 99
          DataFields = 'NOMGRU'
          AfterPrint = RLGroup1AfterPrint
          object rl_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 722
            Height = 28
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = rl_cabgruBeforePrint
            object db_grupo: TRLDBText
              Left = 4
              Top = 8
              Width = 62
              Height = 16
              DataField = 'NOMGRU'
              DataSource = dsproduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLGroup2: TRLGroup
            Left = 0
            Top = 28
            Width = 722
            Height = 64
            DataFields = 'SUBGRU'
            object rl_cabitens: TRLBand
              Left = 0
              Top = 28
              Width = 722
              Height = 16
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              object db_codpro: TRLDBText
                Left = 0
                Top = 0
                Width = 60
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'codpro_calc'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_codpro
                Layout = tlCenter
                ParentFont = False
              end
              object db_nompro: TRLDBText
                Left = 61
                Top = 0
                Width = 246
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'descricao'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_nompro
                Layout = tlCenter
                ParentFont = False
              end
              object db_pco01: TRLDBText
                Left = 552
                Top = 0
                Width = 86
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'preco_uni'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_colpco01
                Layout = tlCenter
                ParentFont = False
              end
              object db_pco02: TRLDBText
                Left = 636
                Top = 0
                Width = 86
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PDPRECO1'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_colpco02
                Layout = tlCenter
                ParentFont = False
              end
              object db_apres: TRLDBText
                Left = 390
                Top = 0
                Width = 59
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'apres01'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Layout = tlCenter
                ParentFont = False
              end
              object db_cxcom: TRLDBText
                Left = 502
                Top = 0
                Width = 50
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'qtdund'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_cxcom
                Layout = tlCenter
                ParentFont = False
              end
              object db_apres02: TRLDBText
                Left = 449
                Top = 0
                Width = 53
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'apres02'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Layout = tlCenter
                ParentFont = False
              end
              object db_clas: TRLDBText
                Left = 306
                Top = 0
                Width = 84
                Height = 16
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PDCLAS'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = lbl_clas
                Layout = tlCenter
                ParentFont = False
              end
            end
            object rl_cabsubgru: TRLBand
              Left = 0
              Top = 0
              Width = 722
              Height = 28
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = rl_cabgruBeforePrint
              object db_cabsubgru: TRLDBText
                Left = 4
                Top = 8
                Width = 59
                Height = 16
                DataField = 'SUBGRU'
                DataSource = dsproduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
        end
        object rl_cabregiao: TRLBand
          Left = 30
          Top = 97
          Width = 722
          Height = 34
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Options = [boOptimisticPageBreak]
          object memo_regiao: TRLMemo
            Left = 0
            Top = 0
            Width = 722
            Height = 16
            Align = faTop
          end
        end
        object rl_cabpro: TRLBand
          Left = 30
          Top = 186
          Width = 722
          Height = 16
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object lbl_codpro: TRLLabel
            Left = 0
            Top = 0
            Width = 60
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_nompro: TRLLabel
            Left = 61
            Top = 0
            Width = 246
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Nome Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_colpco01: TRLLabel
            Left = 552
            Top = 0
            Width = 86
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Preco 1'
            Layout = tlCenter
          end
          object lbl_colpco02: TRLLabel
            Left = 636
            Top = 0
            Width = 86
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'PCO.CAIXA'
            Layout = tlCenter
          end
          object lbl_apresentacao: TRLLabel
            Left = 390
            Top = 0
            Width = 112
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Apresentacao'
            Layout = tlCenter
          end
          object lbl_cxcom: TRLLabel
            Left = 502
            Top = 0
            Width = 50
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'CX.COM'
            Layout = tlCenter
          end
          object lbl_clas: TRLLabel
            Left = 306
            Top = 0
            Width = 84
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Classif.Fiscal'
            Layout = tlCenter
          end
        end
        object rl_rodape: TRLBand
          Left = 30
          Top = 317
          Width = 722
          Height = 24
          AutoSize = True
          BandType = btSummary
          object rlRodape: TRLMemo
            Left = 5
            Top = 0
            Width = 716
            Height = 24
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            IntegralHeight = True
            ParentFont = False
          end
        end
        object rlcablog: TRLBand
          Left = 30
          Top = 30
          Width = 722
          Height = 67
          BandType = btHeader
          object RLImage1: TRLImage
            Left = 0
            Top = 0
            Width = 722
            Height = 67
            Align = faClient
            Stretch = True
          end
        end
        object RLBand1: TRLBand
          Left = 30
          Top = 301
          Width = 722
          Height = 16
          object lbl_emitido: TRLLabel
            Left = 650
            Top = 0
            Width = 72
            Height = 16
            Align = faRightBottom
            Alignment = taRightJustify
            Caption = 'emitido em '
            Visible = False
          end
        end
      end
    end
    object tsLogotipos: TTabSheet
      Caption = 'Logotipos'
      ImageIndex = 3
      object logolpreco: TImage
        Left = 0
        Top = 0
        Width = 786
        Height = 105
        Align = alTop
        Stretch = True
      end
      object bbAdquirir: TBitBtn
        Left = 3
        Top = 168
        Width = 207
        Height = 50
        Hint = 'Busca a Imagem'
        Caption = '&Adquirir figuras'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bbAdquirirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bbExcImagem: TBitBtn
        Left = 266
        Top = 168
        Width = 207
        Height = 50
        Hint = 'Limpa a Imagem'
        Caption = '&Excluir a figura'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbExcImagemClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
    object tsCabecalho: TTabSheet
      Caption = 'Dados Cabecalho'
      ImageIndex = 4
      object Label9: TLabel
        Left = 5
        Top = 15
        Width = 110
        Height = 13
        Caption = 'Titulo do Relatorio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 583
        Top = 16
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 583
        Top = 34
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object TITREL: TEdit
        Left = 126
        Top = 14
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'TABELA DE PRECOS'
      end
      object TAMFONTE01: TEdit
        Left = 677
        Top = 11
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '-20'
        OnExit = TAMFONTE01Exit
      end
      object TITREL02: TEdit
        Left = 126
        Top = 32
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = 'LINHA02'
      end
      object TAMFONTE02: TEdit
        Left = 677
        Top = 29
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = '-20'
        OnExit = TAMFONTE02Exit
      end
    end
    object tsRodape: TTabSheet
      Caption = 'Dados Rodape'
      ImageIndex = 5
      object Label7: TLabel
        Left = 5
        Top = 15
        Width = 110
        Height = 13
        Caption = 'Titulo do Relatorio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 583
        Top = 16
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 583
        Top = 34
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label16: TLabel
        Left = 583
        Top = 52
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label17: TLabel
        Left = 583
        Top = 70
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label18: TLabel
        Left = 583
        Top = 88
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label19: TLabel
        Left = 583
        Top = 106
        Width = 93
        Height = 13
        Caption = 'Tamanho Fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object LINHAROD01: TEdit
        Left = 126
        Top = 14
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'TABELA DE PRECOS'
      end
      object LINHAROD02: TEdit
        Left = 126
        Top = 32
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'LINHA02'
      end
      object MTAMFR01: TEdit
        Left = 677
        Top = 11
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = '-20'
        Visible = False
        OnExit = MTAMFR01Exit
      end
      object MTAMFR02: TEdit
        Left = 677
        Top = 29
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = '-20'
        Visible = False
        OnExit = MTAMFR02Exit
      end
      object LINHAROD03: TEdit
        Left = 126
        Top = 50
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = 'TABELA DE PRECOS'
      end
      object LINHAROD04: TEdit
        Left = 126
        Top = 68
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = 'LINHA02'
      end
      object MTAMFR03: TEdit
        Left = 677
        Top = 47
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = '-20'
        Visible = False
        OnExit = MTAMFR03Exit
      end
      object MTAMFR04: TEdit
        Left = 677
        Top = 65
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Text = '-20'
        Visible = False
        OnExit = MTAMFR04Exit
      end
      object LINHAROD05: TEdit
        Left = 126
        Top = 86
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        Text = 'TABELA DE PRECOS'
      end
      object LINHAROD06: TEdit
        Left = 126
        Top = 104
        Width = 451
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Text = 'LINHA02'
      end
      object MTAMFR05: TEdit
        Left = 677
        Top = 83
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        Text = '-20'
        Visible = False
        OnExit = MTAMFR05Exit
      end
      object MTAMFR06: TEdit
        Left = 677
        Top = 101
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        Text = '-20'
        Visible = False
        OnExit = MTAMFR06Exit
      end
      object GB_PAGE: TGroupBox
        Left = 0
        Top = 148
        Width = 794
        Height = 105
        Align = alBottom
        TabOrder = 12
        object Label20: TLabel
          Left = 16
          Top = 27
          Width = 87
          Height = 13
          Caption = 'Altura da Pagina..:'
        end
        object Label21: TLabel
          Left = 10
          Top = 60
          Width = 93
          Height = 13
          Caption = 'Largura da Pagina.:'
        end
        object BTN_PAGE: TButton
          Left = 256
          Top = 40
          Width = 75
          Height = 25
          Caption = '&Gravar'
          TabOrder = 0
          OnClick = BTN_PAGEClick
        end
        object alt_page: TCurrencyEdit
          Left = 104
          Top = 24
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 1
        end
        object lar_page: TCurrencyEdit
          Left = 104
          Top = 56
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 2
        end
      end
    end
    object TsWord: TTabSheet
      Caption = 'Relatorio Word'
      ImageIndex = 6
      object RLDocWord: TRLReport
        Left = 9
        Top = -200
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = dsproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLCabGer: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 43
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object lbl_datasis: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 677
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLDBText1: TRLDBText
            Left = 78
            Top = 0
            Width = 526
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 0
            Top = 22
            Width = 184
            Height = 16
            Caption = 'Lista de Produtos com Pre'#231'os.'
          end
          object pagina: TRLSystemInfo
            Left = 617
            Top = 24
            Width = 69
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object qtdpagina: TRLSystemInfo
            Left = 686
            Top = 24
            Width = 30
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 82
          Width = 716
          Height = 16
          BandType = btColumnHeader
          object lblw_codpro: TRLLabel
            Left = 0
            Top = 0
            Width = 60
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lblw_nompro: TRLLabel
            Left = 61
            Top = 0
            Width = 346
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Nome Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lblw_marca: TRLLabel
            Left = 408
            Top = 0
            Width = 160
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Marca/Fornecededor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lblw_preco: TRLLabel
            Left = 629
            Top = 0
            Width = 86
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Preco 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lblw_und: TRLLabel
            Left = 573
            Top = 0
            Width = 52
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 98
          Width = 716
          Height = 16
          object txtw_marca: TRLDBText
            Left = 408
            Top = 0
            Width = 160
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDMARCA'
            DataSource = dsproduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblw_marca
            Layout = tlCenter
            ParentFont = False
          end
          object txtw_nompro: TRLDBText
            Left = 61
            Top = 0
            Width = 346
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = dsproduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblw_nompro
            Layout = tlCenter
            ParentFont = False
          end
          object txtw_codpro: TRLDBText
            Left = 0
            Top = 0
            Width = 60
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDCODPRO'
            DataSource = dsproduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblw_codpro
            Layout = tlCenter
            ParentFont = False
          end
          object txtw_und: TRLDBText
            Left = 573
            Top = 0
            Width = 52
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDUND'
            DataSource = dsproduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblw_und
            Layout = tlCenter
            ParentFont = False
          end
          object txtw_preco: TRLDBText
            Left = 629
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PDPRECO1'
            DataSource = dsproduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lblw_preco
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 114
          Width = 716
          Height = 16
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 281
    Width = 802
    Height = 138
    Align = alClient
    Caption = 'Gerais:'
    TabOrder = 1
    object sb_SalvarPadrao: TSpeedButton
      Left = 620
      Top = 41
      Width = 150
      Height = 35
      Cursor = crHandPoint
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object Label11: TLabel
      Left = 9
      Top = 63
      Width = 193
      Height = 13
      Caption = 'N'#250'mero de Casas Decimais para Precos:'
    end
    object bbImprimir: TBitBtn
      Left = 620
      Top = 6
      Width = 150
      Height = 35
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
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
    object StaticText2: TStaticText
      Left = 254
      Top = 9
      Width = 156
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Status Produto'
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
    object CLB_STATUS: TCheckListBox
      Left = 254
      Top = 28
      Width = 156
      Height = 61
      Color = 16776176
      Columns = 3
      Ctl3D = False
      ItemHeight = 13
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
        '9'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnClick = CLB_STATUSClick
    end
    object StaticText1: TStaticText
      Left = 415
      Top = 15
      Width = 117
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Listar Precos'
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
    object StaticText3: TStaticText
      Left = 536
      Top = 16
      Width = 80
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Titulo'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object VENDA1: TEdit
      Left = 536
      Top = 35
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Pco.Venda 01'
    end
    object OMITIR_STATUS: TCheckBox
      Left = 254
      Top = 94
      Width = 157
      Height = 17
      Caption = 'Omitir Status Selecionado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object CB_SEMBORDA: TCheckBox
      Left = 2
      Top = 13
      Width = 90
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Sem Bordas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
    end
    object CB_NOME2: TCheckBox
      Left = 2
      Top = 29
      Width = 209
      Height = 17
      Caption = 'Substituir Descricao por Nome Generico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object bbSair: TBitBtn
      Left = 620
      Top = 75
      Width = 150
      Height = 35
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
    object CB_QDEC_PCO: TComboBox
      Left = 209
      Top = 54
      Width = 37
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 8
      Text = '2'
      OnClick = CB_QDEC_PCOClick
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
    object GB_AJUSTAR: TGroupBox
      Left = 415
      Top = 56
      Width = 136
      Height = 33
      Caption = 'Ajustar Pre'#231'os'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      object AJUSTARPCO: TEdit
        Left = 4
        Top = 14
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = AJUSTARPCOExit
      end
      object CB_DIMINUIR: TCheckBox
        Left = 69
        Top = 14
        Width = 62
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 1
      end
    end
    object CB_PRECO: TComboBox
      Left = 416
      Top = 36
      Width = 117
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'Venda 01'
      Items.Strings = (
        'Venda 01'
        'Venda 02'
        'Venda 03'
        'Custo'
        'Fabrica'
        'PMC')
    end
    object CB_IMPCLAS: TCheckBox
      Left = 3
      Top = 45
      Width = 200
      Height = 17
      Caption = 'Imprimir Classifica'#231#227'o Fiscal'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object CB_MODWORD: TCheckBox
      Left = 4
      Top = 78
      Width = 157
      Height = 17
      Caption = 'Modelo Word'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = CB_MODWORDClick
    end
  end
  object produto: TQuery
    OnCalcFields = produtoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select pdcodemp,pdcodpro,pdnome,pdpreco1,pdpreco2,'
      '       pdund,pdmarca,pdnomfor,pdcodtip,pdcodcon,pdcodgru,'
      '       pdnomfor as nomgru,'
      '       pdnomfor as subgru,'
      '       PDMARCA AS LOTE,'
      '       PDDTULTSAI AS DTVCTO,'
      '       PDDESC1 AS DESC01,'
      '       PDSALDO AS ESTOQUE,'
      '       PDNOME2,'
      '       PDCODBAR AS CODBAR'
      '      ,PDAPRES ,PDEMBMUL'
      '      ,PDSIT,PDCLAS'
      'from cadpro'
      '')
    Left = 412
    Top = 101
    object produtoPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
      DisplayFormat = '#,###,##0.00'
    end
    object produtoPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
      DisplayFormat = '#,###,##0.00'
    end
    object produtoPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object produtoPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
      DisplayFormat = '0000'
    end
    object produtoPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object produtoPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object produtoPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object produtoPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtoNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtoPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object produtoPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object produtoPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object produtoDESC01: TFloatField
      FieldName = 'DESC01'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object produtoPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object produtoCODBAR: TFloatField
      FieldName = 'CODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object produtoSUBGRU: TStringField
      FieldName = 'SUBGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object produtoPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object produtoPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object produtoPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object produtopreco_uni: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco_uni'
      Calculated = True
    end
    object produtoqtdund: TStringField
      FieldKind = fkCalculated
      FieldName = 'qtdund'
      Size = 15
      Calculated = True
    end
    object produtoapres01: TStringField
      FieldKind = fkCalculated
      FieldName = 'apres01'
      Size = 10
      Calculated = True
    end
    object produtoapres02: TStringField
      FieldKind = fkCalculated
      FieldName = 'apres02'
      Size = 10
      Calculated = True
    end
    object produtodescricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'descricao'
      Size = 53
      Calculated = True
    end
    object produtocodpro_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'codpro_calc'
      Size = 16
      Calculated = True
    end
    object produtoPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
  end
  object dsproduto: TDataSource
    DataSet = produto
    Left = 443
    Top = 99
  end
  object matricial: TRLDraftFilter
    Commands.Strings = (
      'CR=13'
      'LF=10'
      'BS=8'
      'FF=12'
      'Reset=27,'#39'@'#39',27,'#39'x0'#39
      'MicroOn=27,'#39'A'#39',#'
      'MicroOff=27,'#39'2'#39
      'Space=32'
      'CPP10=27,'#39'P'#39',18'
      'CPP12=27,'#39'M'#39',18'
      'CPP17=27,'#39'P'#39',15'
      'CPP20=27,'#39'M'#39',15'
      'ExpandOn=27,'#39'W'#39',1'
      'ExpandOff=27,'#39'W'#39',0'
      'BoldOn=27,'#39'G'#39
      'BoldOff=27,'#39'H'#39
      'ItalicOn=27,'#39'4'#39
      'ItalicOff=27,'#39'5'#39
      'UnderlineOn=27,'#39'-1'#39
      'UnderlineOff=27,'#39'-0'#39
      'RAW=27,'#39'L'#39',#l,#h')
    EjectMethod = ejForceWithCode
    PrinterFamily = fmCustom
    LineDrawMethod = ldNone
    Left = 216
    Top = 397
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 216
    Top = 365
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 408
    Top = 421
  end
  object RLXLSFilter1: TRLXLSFilter
    PageSetup.FitToPagesTall = False
    PageSetup.FitToPagesWide = False
    DisplayName = 'Planilha Excel'
    Left = 320
    Top = 381
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 656
    Top = 8
  end
  object opd1: TOpenPictureDialog
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    Left = 360
    Top = 16
  end
end
