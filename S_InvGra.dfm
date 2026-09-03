object Frm_InvGra: TFrm_InvGra
  Left = 43
  Top = 117
  Width = 539
  Height = 523
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emiss'#227'o de Invent'#225'rio de Estoque por Grade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 531
    Height = 436
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 15
        Top = 4
        Width = 89
        Height = 13
        Caption = 'Fornecedor.....:'
      end
      object Label2: TLabel
        Left = 14
        Top = 22
        Width = 90
        Height = 13
        Caption = 'Tipo Produto...:'
      end
      object Label3: TLabel
        Left = 14
        Top = 41
        Width = 89
        Height = 13
        Caption = 'Tipo Controle..:'
      end
      object Label4: TLabel
        Left = 211
        Top = 289
        Width = 158
        Height = 13
        Caption = 'N'#250'mero da Primeira Pagina:'
      end
      object Label5: TLabel
        Left = 212
        Top = 307
        Width = 155
        Height = 13
        Caption = 'Data p/Emiss'#227'o...............:'
      end
      object lbl_datinv: TLabel
        Left = 20
        Top = 375
        Width = 111
        Height = 13
        Caption = 'Data do Invent'#225'rio:'
        Visible = False
      end
      object Label6: TLabel
        Left = 12
        Top = 266
        Width = 176
        Height = 13
        Caption = 'Casas Decimais p/Quantidade:'
      end
      object Label7: TLabel
        Left = 232
        Top = 266
        Width = 192
        Height = 13
        Caption = 'Casas Decimais p/Pre'#231'o Unit'#225'rio:'
      end
      object lbl_nominv: TLabel
        Left = 14
        Top = 378
        Width = 152
        Height = 13
        Caption = 'Nome do Invent'#225'rio Salvo:'
        Visible = False
      end
      object Label17: TLabel
        Left = 12
        Top = 290
        Width = 194
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Separado por:'
        Color = 9961367
        ParentColor = False
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 9
        Top = 57
        Width = 39
        Height = 13
        Caption = 'Grupo:'
      end
      object CODFOR: TEdit
        Left = 107
        Top = 2
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object NOMFOR: TEdit
        Left = 181
        Top = 2
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
        Text = 'Todos...'
      end
      object CODTIP: TEdit
        Left = 107
        Top = 20
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object NOMTIP: TEdit
        Left = 181
        Top = 20
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 3
        Text = 'Todos...'
      end
      object NOMCON: TEdit
        Left = 181
        Top = 38
        Width = 269
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 4
        Text = 'Todos...'
      end
      object CODCON: TEdit
        Left = 107
        Top = 38
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object RG_EST: TRadioGroup
        Left = 15
        Top = 142
        Width = 437
        Height = 30
        Caption = 'Estoque:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Com Estoque'
          'Sem Estoque')
        ParentCtl3D = False
        TabOrder = 6
      end
      object NUMPAGI: TEdit
        Left = 381
        Top = 284
        Width = 61
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Text = '1'
        OnExit = NUMPAGIExit
      end
      object cbEmitirTermos: TCheckBox
        Left = 212
        Top = 321
        Width = 280
        Height = 17
        Caption = 'Emitir Termos de Abertura e Encerramento'
        TabOrder = 8
      end
      object MDT1: TMaskEdit
        Left = 381
        Top = 304
        Width = 84
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 9
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object RG_TPPRECO: TRadioGroup
        Left = 14
        Top = 198
        Width = 437
        Height = 60
        Caption = 'Tipo de Pre'#231'o:'
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Pre'#231'o 1'
          'Pre'#231'o 2'
          'Pre'#231'o 3'
          'Pre'#231'o de Custo'
          'Pre'#231'o M'#233'dio de Custo'
          #218'ltimo Preco de Compra')
        ParentCtl3D = False
        TabOrder = 10
      end
      object Cb_EstNeg: TCheckBox
        Left = 15
        Top = 172
        Width = 208
        Height = 15
        Caption = 'Imprimir Estoque Negativo'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object MDATINV: TMaskEdit
        Left = 134
        Top = 378
        Width = 79
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 12
        Text = '  /  /    '
        Visible = False
        OnExit = MDATINVExit
      end
      object CB_QDEC_QTD: TComboBox
        Left = 188
        Top = 263
        Width = 39
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 13
        Text = '0'
        OnExit = CB_QDEC_QTDExit
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
      object CB_QDEC_PU: TComboBox
        Left = 426
        Top = 261
        Width = 44
        Height = 21
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 14
        Text = '2'
        OnExit = CB_QDEC_PUExit
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
      object rg_anterior: TRadioGroup
        Left = 13
        Top = 335
        Width = 436
        Height = 29
        Caption = 'Qual Invent'#225'rio:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Atual'
          'A&nterior'
          '&Salvo')
        ParentCtl3D = False
        TabOrder = 15
        OnClick = rg_anteriorClick
      end
      object cb_salvo: TComboBox
        Left = 167
        Top = 377
        Width = 282
        Height = 21
        ItemHeight = 13
        Sorted = True
        TabOrder = 16
        Text = 'cb_salvo'
        Visible = False
        OnExit = cb_salvoExit
      end
      object cb_separado: TComboBox
        Left = 12
        Top = 306
        Width = 194
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        Sorted = True
        TabOrder = 17
        Text = 'Sem Separar'
        Items.Strings = (
          'Fornecedor'
          'Grupo de Produtos'
          'Ramo(Sub-Grupo)'
          'Sem Separar'
          'Situa'#231#227'o Tributaria'
          'Tipo de Controle'
          'Tipo do Produto')
      end
      object CODGRU: TEdit
        Left = 47
        Top = 56
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 108
        Top = 56
        Width = 342
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 48
        Top = 76
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
    end
    object tsOutFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object RG_TPINV: TRadioGroup
        Left = 14
        Top = 106
        Width = 437
        Height = 31
        Caption = 'Tipo do Invent'#225'rio:'
        Columns = 4
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Normal'
          'Consignados'
          'Revenda'
          'Terceiros')
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
      end
      object RGTPRO: TRadioGroup
        Left = 12
        Top = 197
        Width = 440
        Height = 81
        Caption = 'Tipo de Produto:'
        Columns = 2
        Ctl3D = False
        ItemIndex = 9
        Items.Strings = (
          '0-Produto Acabado'
          '1-Servicos'
          '2-Materia Prima Revenda'
          '3-Produto Em Producao'
          '4-Materia Prima'
          '5-Insumos'
          '6-Acess'#243'rios'
          '7-Outros'
          'Todos(com exce'#231#227'o do Acabado)'
          'Todos sem exce'#231#227'o')
        ParentCtl3D = False
        TabOrder = 1
      end
      object RG_Ordem: TRadioGroup
        Left = 7
        Top = 331
        Width = 280
        Height = 57
        Caption = 'Orgem do Relatorio'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Alfab'#233'tica'
          'Situa'#231#227'o Tributaria'
          'Fornecedor'
          'C'#243'digo do Tipo'
          'C'#243'digo Produto')
        TabOrder = 2
      end
      object RG_BLOQ: TRadioGroup
        Left = 290
        Top = 332
        Width = 174
        Height = 57
        Caption = 'Tipo de Produtos:'
        Columns = 2
        ItemIndex = 3
        Items.Strings = (
          'Ativo '
          'Bloqueado'
          'Inativo'
          'Todos')
        TabOrder = 3
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 16
        Top = 24
        Width = 794
        Height = 1123
        DataSource = Src_Inv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport1BeforePrint
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 81
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel1: TRLLabel
            Left = 0
            Top = 2
            Width = 718
            Height = 20
            Align = faWidth
            Alignment = taCenter
            Caption = 'REGISTROS DE INVENTARIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 0
            Top = 25
            Width = 118
            Height = 16
            Caption = 'Empresa............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 0
            Top = 44
            Width = 117
            Height = 16
            Caption = 'Insc. Estadual...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 359
            Top = 44
            Width = 95
            Height = 16
            Caption = 'Cnpj(MS)......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 1
            Top = 63
            Width = 115
            Height = 16
            Caption = 'Folha.................:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 360
            Top = 63
            Width = 138
            Height = 16
            Caption = 'Est. Existente em...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 120
            Top = 25
            Width = 599
            Height = 16
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLDBText29: TRLDBText
            Left = 120
            Top = 44
            Width = 236
            Height = 16
            AutoSize = False
            DataField = 'INSCRICAO'
            DataSource = DM1.Src_Emp
          end
          object RLDBText30: TRLDBText
            Left = 457
            Top = 44
            Width = 262
            Height = 16
            AutoSize = False
            DataField = 'CGC'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 121
            Top = 62
            Width = 48
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_data: TRLLabel
            Left = 501
            Top = 63
            Width = 49
            Height = 16
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 119
          Width = 718
          Height = 109
          DataFields = 'GRUPO'
          object RLBand_CabDet: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 38
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.FixedTop = True
            object lbl_CodPro: TRLLabel
              Left = 4
              Top = -1
              Width = 72
              Height = 35
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_discriminacao: TRLLabel
              Left = 123
              Top = -1
              Width = 338
              Height = 39
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Discriminacao'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_unidade: TRLLabel
              Left = 463
              Top = -1
              Width = 34
              Height = 39
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Und'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_quantidade: TRLLabel
              Left = 497
              Top = -1
              Width = 68
              Height = 39
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Quantidade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel11: TRLLabel
              Left = 565
              Top = -1
              Width = 152
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Caption = 'Valores'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_unitario: TRLLabel
              Left = 564
              Top = 17
              Width = 76
              Height = 21
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Unitario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_total: TRLLabel
              Left = 640
              Top = 17
              Width = 78
              Height = 21
              Alignment = taCenter
              AutoSize = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl_grade: TRLLabel
              Left = 78
              Top = 0
              Width = 44
              Height = 36
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Grade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_CabGru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLDBText1: TRLDBText
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClientTop
              Alignment = taCenter
              DataField = 'DESCGRUPO'
              DataSource = Src_Inv
            end
          end
          object RLBand_Detail: TRLBand
            Left = 0
            Top = 54
            Width = 718
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand_DetailAfterPrint
            object edt_codpro: TRLDBText
              Left = 4
              Top = 1
              Width = 72
              Height = 14
              AutoSize = False
              DataField = 'CLCODPRO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_CodPro
              Layout = tlCenter
              ParentFont = False
            end
            object edt_grade: TRLDBText
              Left = 78
              Top = 1
              Width = 44
              Height = 14
              AutoSize = False
              DataField = 'CLNUMERO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_grade
              Layout = tlCenter
              ParentFont = False
            end
            object edt_discriminacao: TRLDBText
              Left = 123
              Top = 1
              Width = 338
              Height = 14
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_discriminacao
              Layout = tlCenter
              ParentFont = False
            end
            object edt_unidade: TRLDBText
              Left = 463
              Top = 1
              Width = 34
              Height = 14
              AutoSize = False
              DataField = 'PDUND'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unidade
              Layout = tlCenter
              ParentFont = False
            end
            object edt_quantidade: TRLDBText
              Left = 497
              Top = 1
              Width = 68
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CLQTD'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_quantidade
              Layout = tlCenter
              ParentFont = False
            end
            object edt_unitario: TRLDBText
              Left = 564
              Top = 1
              Width = 76
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PDPRECO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_unitario
              Layout = tlCenter
              ParentFont = False
            end
            object edt_total: TRLDBText
              Left = 640
              Top = 1
              Width = 78
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'total'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_total
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand_totgru: TRLBand
            Left = 0
            Top = 70
            Width = 718
            Height = 16
            BandType = btSummary
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand_totgruBeforePrint
            object totgru_quantidade: TRLLabel
              Left = 497
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Unitario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_quantidade
              ParentFont = False
            end
            object totGru_total: TRLLabel
              Left = 640
              Top = 1
              Width = 78
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Holder = lbl_total
              ParentFont = False
            end
            object RLLabel7: TRLLabel
              Left = 123
              Top = 1
              Width = 338
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total do Grupo.................'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand_RodGrupo: TRLBand
            Left = 0
            Top = 86
            Width = 718
            Height = 16
            BandType = btFooter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand_Rodape: TRLBand
          Left = 38
          Top = 228
          Width = 718
          Height = 16
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand_RodapeBeforePrint
          object totger_quantidade: TRLLabel
            Left = 497
            Top = 2
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Unitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_quantidade
            ParentFont = False
          end
          object totger_total: TRLLabel
            Left = 640
            Top = 1
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Holder = lbl_total
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 123
            Top = 1
            Width = 338
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total Geral................'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand_RodGer: TRLBand
          Left = 38
          Top = 244
          Width = 718
          Height = 16
          BandType = btFooter
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 436
    Width = 531
    Height = 56
    Align = alBottom
    TabOrder = 1
    object REGUA: TGauge
      Left = 363
      Top = 5
      Width = 104
      Height = 39
      Progress = 0
    end
    object bbSair: TBitBtn
      Left = 230
      Top = 4
      Width = 109
      Height = 41
      Caption = '&Fechar'
      TabOrder = 0
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
    object bbSalvar: TBitBtn
      Left = 115
      Top = 5
      Width = 105
      Height = 41
      Caption = '&Salvar'
      TabOrder = 1
      OnClick = bbSalvarClick
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
    object bbImprimir: TBitBtn
      Left = 4
      Top = 5
      Width = 101
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 2
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
  end
  object Tb_Inv: TQuery
    OnCalcFields = Tb_InvCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PDNOME,PDMARCA,PDCLAS,PDCODFOR,FRAZAO,PDUND,PDCODTIP AS C' +
        'ODTIP,'
      
        '       PDSIT, PDPRECO1 AS PDPRECO,  CLQTD, CLCODPRO, CLNUMERO, C' +
        'LDTVCTO'
      '       ,FRAZAO AS GRUPO,FRAZAO AS DESCGRUPO'
      '       from CADLGC,CADPRO,CADFOR where'
      '       PDCODPRO=CLCODPRO'
      '      and FCODFOR=PDCODFOR'
      '       and CLCODEMP is null')
    Left = 336
    Top = 264
    object Tb_InvPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_InvPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_InvPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_InvPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_InvFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Tb_InvPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_InvCODTIP: TFloatField
      FieldName = 'CODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_InvPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_InvPDPRECO: TFloatField
      FieldName = 'PDPRECO'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_InvCLQTD: TFloatField
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Tb_InvCLCODPRO: TFloatField
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
    object Tb_InvCLNUMERO: TStringField
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Tb_InvCLDTVCTO: TDateTimeField
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Tb_InvGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Tb_InvDESCGRUPO: TStringField
      FieldName = 'DESCGRUPO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Tb_Invtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
  end
  object Src_Inv: TDataSource
    DataSet = Tb_Inv
    Left = 388
    Top = 264
  end
end
