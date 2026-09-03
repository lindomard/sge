object Frm_MedPro02: TFrm_MedPro02
  Left = 183
  Top = 134
  Width = 700
  Height = 465
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'M'#233'dia de Vendas por Produtos'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 40
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Label13'
  end
  object Label6: TLabel
    Left = 465
    Top = 327
    Width = 160
    Height = 13
    Caption = 'Casas Decimais para Quantidade:'
  end
  object Label1: TLabel
    Left = 60
    Top = 313
    Width = 93
    Height = 13
    Caption = 'Referencia m'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 234
    Top = 314
    Width = 27
    Height = 13
    Caption = 'Ano:'
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
    Width = 692
    Height = 304
    ActivePage = TabSheet1
    Align = alTop
    HotTrack = True
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros 1o.'
      object Label5: TLabel
        Left = 2
        Top = 7
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label3: TLabel
        Left = 19
        Top = 46
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object lbl_codven: TLabel
        Left = 3
        Top = 128
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label11: TLabel
        Left = 7
        Top = 194
        Width = 74
        Height = 13
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
      object Label14: TLabel
        Left = 433
        Top = 195
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
      object Label15: TLabel
        Left = 293
        Top = 194
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
      object Label12: TLabel
        Left = 21
        Top = 87
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object CLBNivel: TCheckListBox
        Left = 5
        Top = 209
        Width = 284
        Height = 82
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
        TabOrder = 14
        OnClick = CLBNivelClick
      end
      object lbx_codfor: TListBox
        Left = 122
        Top = 3
        Width = 522
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codforKeyDown
      end
      object CODFOR: TEdit
        Left = 61
        Top = 3
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 62
        Top = 24
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_FORMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 61
        Top = 66
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_PROMouseMove
      end
      object CODPRO: TEdit
        Left = 61
        Top = 44
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object lbx_codpro: TListBox
        Left = 122
        Top = 44
        Width = 522
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 61
        Top = 148
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnMouseMove = OMITIR_VENMouseMove
      end
      object CODVEN: TEdit
        Left = 61
        Top = 126
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
        OnMouseMove = CODVENMouseMove
      end
      object lbx_codven: TListBox
        Left = 122
        Top = 126
        Width = 522
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = lbx_codvenKeyDown
      end
      object CLBStatus: TCheckListBox
        Left = 430
        Top = 209
        Width = 211
        Height = 82
        Color = 16776176
        Columns = 2
        IntegralHeight = True
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
        TabOrder = 9
        OnClick = CLBStatusClick
      end
      object CLBEstoque: TCheckListBox
        Left = 292
        Top = 208
        Width = 133
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
        TabOrder = 10
        OnClick = CLBEstoqueClick
      end
      object MARCA: TEdit
        Left = 61
        Top = 85
        Width = 140
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = MARCAExit
        OnMouseMove = CODVENMouseMove
      end
      object lbx_marca: TListBox
        Left = 200
        Top = 85
        Width = 444
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_marcaKeyDown
      end
      object OMITIR_MAR: TCheckBox
        Left = 61
        Top = 107
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnMouseMove = OMITIR_VENMouseMove
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros 2o.'
      ImageIndex = 1
      object Label4: TLabel
        Left = 13
        Top = 10
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object Label7: TLabel
        Left = 8
        Top = 92
        Width = 66
        Height = 13
        Caption = 'Tipo Controle:'
      end
      object Label8: TLabel
        Left = 2
        Top = 47
        Width = 77
        Height = 13
        Caption = 'Grupo Produtos:'
      end
      object Label9: TLabel
        Left = 0
        Top = 135
        Width = 76
        Height = 13
        Caption = 'Ramo Produtos:'
      end
      object Label10: TLabel
        Left = 14
        Top = 180
        Width = 61
        Height = 13
        Caption = 'C'#243'd. Estado:'
        Visible = False
      end
      object CODCON: TEdit
        Left = 80
        Top = 92
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
      object CODTIP: TEdit
        Left = 80
        Top = 10
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
        Left = 141
        Top = 10
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
        Left = 81
        Top = 35
        Width = 55
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_TPROMouseMove
      end
      object lbx_codcon: TListBox
        Left = 141
        Top = 92
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
        Left = 80
        Top = 117
        Width = 61
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_CONMouseMove
      end
      object CODGRU: TEdit
        Left = 80
        Top = 51
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
      object OMITIR_GRU: TCheckBox
        Left = 81
        Top = 75
        Width = 56
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_GRUMouseMove
      end
      object lbx_codgru: TListBox
        Left = 141
        Top = 51
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
      object CODRAM: TEdit
        Left = 80
        Top = 133
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
        Left = 141
        Top = 133
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
        Left = 81
        Top = 157
        Width = 56
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnMouseMove = OMITIR_RAMMouseMove
      end
      object OMITIR_UF: TCheckBox
        Left = 81
        Top = 195
        Width = 55
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        Visible = False
        OnMouseMove = OMITIR_UFMouseMove
      end
      object CODUF: TEdit
        Left = 80
        Top = 176
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        Visible = False
        OnExit = CODUFExit
        OnMouseMove = CODUFMouseMove
      end
      object lbx_coduf: TListBox
        Left = 141
        Top = 174
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Visible = False
        OnKeyDown = lbx_codufKeyDown
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 665
        Height = 296
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
        Font.Style = []
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
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      TabVisible = False
      object RLReport1: TRLReport
        Left = -24
        Top = -16
        Width = 794
        Height = 1123
        DataSource = Ds_Ven
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 97
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 0
            Top = 1
            Width = 149
            Height = 14
            Caption = 'FRUTOS DO BRASIL LTDA ME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlnomcab: TRLLabel
            Left = 0
            Top = 45
            Width = 718
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Media Trimestral de Vendas por Produto.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 0
            Top = 61
            Width = 718
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Totais deduzidos os Impostos e os Fretes.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object codigo: TRLLabel
            Left = 0
            Top = 80
            Width = 43
            Height = 16
            AutoSize = False
            Caption = 'CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object und: TRLLabel
            Left = 43
            Top = 80
            Width = 24
            Height = 16
            AutoSize = False
            Caption = 'UND'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object desc: TRLLabel
            Left = 67
            Top = 80
            Width = 198
            Height = 16
            AutoSize = False
            Caption = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object mes1: TRLLabel
            Left = 265
            Top = 80
            Width = 79
            Height = 16
            AutoSize = False
            Caption = 'Qt.Cx.JUN/2010'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object mes2: TRLLabel
            Left = 344
            Top = 80
            Width = 79
            Height = 16
            AutoSize = False
            Caption = 'Qt.Cx.JUL/2010'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object mes3: TRLLabel
            Left = 423
            Top = 80
            Width = 85
            Height = 16
            AutoSize = False
            Caption = 'Qt.Cx.AGO/2010'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object estoque: TRLLabel
            Left = 508
            Top = 80
            Width = 41
            Height = 16
            AutoSize = False
            Caption = 'Estoque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object pcocust: TRLLabel
            Left = 549
            Top = 80
            Width = 52
            Height = 16
            AutoSize = False
            Caption = 'Pco Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object pcovenda: TRLLabel
            Left = 601
            Top = 80
            Width = 59
            Height = 16
            AutoSize = False
            Caption = 'Pco Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ultcpr: TRLLabel
            Left = 660
            Top = 80
            Width = 58
            Height = 16
            AutoSize = False
            Caption = 'Dt. Ult. Cpr'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 0
            Top = 17
            Width = 149
            Height = 14
            Caption = 'FRUTOS DO BRASIL LTDA ME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 135
          Width = 718
          Height = 16
          object RLDBText1: TRLDBText
            Left = 0
            Top = 1
            Width = 43
            Height = 14
            AutoSize = False
            DataField = 'CODIGO'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = codigo
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 43
            Top = 1
            Width = 24
            Height = 14
            AutoSize = False
            DataField = 'UND'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = und
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 67
            Top = 1
            Width = 198
            Height = 14
            AutoSize = False
            DataField = 'NOME'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = desc
            ParentFont = False
          end
          object rlmes01: TRLDBText
            Left = 265
            Top = 1
            Width = 79
            Height = 14
            AutoSize = False
            DataField = 'QTDMES01'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = mes1
            ParentFont = False
          end
          object rlmes02: TRLDBText
            Left = 344
            Top = 1
            Width = 79
            Height = 14
            AutoSize = False
            DataField = 'QTDMES02'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = mes2
            ParentFont = False
          end
          object rlmes03: TRLDBText
            Left = 423
            Top = 1
            Width = 85
            Height = 14
            AutoSize = False
            DataField = 'QTDMES03'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = mes3
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 508
            Top = 1
            Width = 41
            Height = 14
            AutoSize = False
            DataField = 'estoque'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = estoque
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 549
            Top = 1
            Width = 52
            Height = 14
            AutoSize = False
            DataField = 'CUSTO'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = pcocust
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 601
            Top = 1
            Width = 59
            Height = 14
            AutoSize = False
            DataField = 'PRECO'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = pcovenda
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 660
            Top = 1
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'dtultent'
            DataSource = Ds_Ven
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = ultcpr
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 151
          Width = 718
          Height = 105
          BandType = btSummary
          object RLLabel5: TRLLabel
            Left = 192
            Top = 8
            Width = 70
            Height = 16
            Caption = 'Totaliza'#231#227'o'
          end
          object RLLabel6: TRLLabel
            Left = 264
            Top = 8
            Width = 145
            Height = 16
          end
          object RLLabel7: TRLLabel
            Left = 264
            Top = 24
            Width = 145
            Height = 16
          end
          object RLLabel8: TRLLabel
            Left = 264
            Top = 40
            Width = 145
            Height = 16
          end
        end
      end
    end
  end
  object RG_TIPO: TRadioGroup
    Left = 4
    Top = 339
    Width = 220
    Height = 55
    Caption = 'Tipo da M'#233'dia:'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Valores'
      'Quantidades')
    TabOrder = 3
    OnClick = RG_TIPOExit
    OnExit = RG_TIPOExit
  end
  object RG_ORDEM: TRadioGroup
    Left = 224
    Top = 340
    Width = 236
    Height = 55
    Caption = 'Ordem do Relat'#243'rio:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Descri'#231#227'o'
      '&C'#243'digo')
    TabOrder = 4
  end
  object CB_FORCAR: TCheckBox
    Left = 465
    Top = 343
    Width = 215
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 8
  end
  object CB_DESC01: TCheckBox
    Left = 465
    Top = 309
    Width = 176
    Height = 17
    Caption = 'Pre'#231'o Unit'#225'rio ja com desconto'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CB_EmiDoc: TCheckBox
    Left = 465
    Top = 361
    Width = 112
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object CB_QDEC_QTD: TComboBox
    Left = 628
    Top = 322
    Width = 37
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
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
  object bbImprimir: TBitBtn
    Left = 341
    Top = 397
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
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
  object bbPadrao: TBitBtn
    Left = 455
    Top = 397
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = 'Gravar Padr'#227'o'
    TabOrder = 11
    OnClick = bbPadraoClick
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
  object bbSair: TBitBtn
    Left = 568
    Top = 397
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
  object MES: TEdit
    Left = 161
    Top = 312
    Width = 36
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object ANO: TEdit
    Left = 275
    Top = 313
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object CB_PROSMOV: TCheckBox
    Left = 466
    Top = 379
    Width = 199
    Height = 17
    Caption = 'Emitir dos Produtos sem Movimento'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object cb_laser: TCheckBox
    Left = 240
    Top = 400
    Width = 97
    Height = 17
    Caption = 'Modelo Laser'
    TabOrder = 13
  end
  object Qr_Ven: TQuery
    OnCalcFields = Qr_VenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PDNOME AS NOME, PDUND AS UND, PDEMBPAD2 AS EMB,PDNOMFOR A' +
        'S NOMFOR, PDCODFOR AS CODFOR,'
      '       PDPRECOC AS CUSTO, PDPRECO1 AS PRECO, PDDESC1,PDDESC2,'
      '     P2CODPRO AS CODIGO,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as venmes01,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as venmes02,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as venmes03,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as venmes04,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as qtdmes01,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as qtdmes02,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as qtdmes03,'
      
        '     sum(decode(to_char(p1datdoc, '#39'yyyymm'#39'),'#39'200301'#39',P2TOTLIQ,0)' +
        ') as qtdmes04'
      '     from CADP01,CADP02,CADPRO'
      '     where P1CODEMP is null'
      '     and P2LOTSEQ=P1LOTSEQ'
      '     and P2CHAVE =P1CHAVE'
      '     and P2ORDEM =P1ORDEM'
      '     and PDCODEMP=P2CODEMP'
      '     and PDCODPRO=P2CODPRO'
      
        'Group by PDNOME, PDUND, PDEMBPAD2,PDNOMFOR, PDCODFOR,P2CODPRO,PD' +
        'PRECOC,PDPRECO1,PDDESC1,PDDESC2')
    Left = 288
    Top = 208
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Qr_VenEMB: TStringField
      FieldName = 'EMB'
      Size = 10
    end
    object Qr_VenNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 40
    end
    object Qr_VenCODFOR: TFloatField
      FieldName = 'CODFOR'
    end
    object Qr_VenCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_VenVENMES01: TFloatField
      FieldName = 'VENMES01'
    end
    object Qr_VenVENMES02: TFloatField
      FieldName = 'VENMES02'
    end
    object Qr_VenVENMES03: TFloatField
      FieldName = 'VENMES03'
    end
    object Qr_VenVENMES04: TFloatField
      FieldName = 'VENMES04'
    end
    object Qr_VenUND: TStringField
      FieldName = 'UND'
      Size = 3
    end
    object Qr_VenQTDMES01: TFloatField
      FieldName = 'QTDMES01'
    end
    object Qr_VenQTDMES02: TFloatField
      FieldName = 'QTDMES02'
    end
    object Qr_VenQTDMES03: TFloatField
      FieldName = 'QTDMES03'
    end
    object Qr_VenQTDMES04: TFloatField
      FieldName = 'QTDMES04'
    end
    object Qr_Venestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Qr_VenCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object Qr_VenPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object Qr_Vendtultent: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtultent'
      Size = 8
      Calculated = True
    end
    object Qr_VenPDDESC1: TFloatField
      FieldName = 'PDDESC1'
    end
    object Qr_VenPDDESC2: TFloatField
      FieldName = 'PDDESC2'
    end
  end
  object Ds_Ven: TDataSource
    DataSet = Qr_Ven
    Left = 319
    Top = 208
  end
end
