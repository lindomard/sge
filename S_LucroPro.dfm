object Frm_LucroPro: TFrm_LucroPro
  Left = -31
  Top = 126
  BorderStyle = bsSingle
  Caption = 'Lucro de Produto Sobre Venda'
  ClientHeight = 477
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 14
    Top = 239
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1095
    Height = 398
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object Ts_Filtros: TTabSheet
      Caption = 'Filtros Primarios'
      object Label1: TLabel
        Left = 20
        Top = 11
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label2: TLabel
        Left = 28
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Grupo:'
      end
      object Label3: TLabel
        Left = 28
        Top = 93
        Width = 31
        Height = 13
        Caption = 'Ramo:'
      end
      object Label4: TLabel
        Left = 17
        Top = 134
        Width = 42
        Height = 13
        Caption = 'Controle:'
      end
      object Label6: TLabel
        Left = 35
        Top = 175
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object Label11: TLabel
        Left = 704
        Top = 73
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
      object Label12: TLabel
        Left = 16
        Top = 216
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label13: TLabel
        Left = 17
        Top = 257
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object CODPRO: TEdit
        Left = 61
        Top = 8
        Width = 60
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
        Left = 120
        Top = 8
        Width = 534
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
      object OMITIR_PRO: TCheckBox
        Left = 61
        Top = 29
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codgru: TListBox
        Left = 120
        Top = 49
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codgruKeyDown
      end
      object CODGRU: TEdit
        Left = 61
        Top = 49
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
        OnMouseMove = CODGRUMouseMove
      end
      object OMITIR_GRU: TCheckBox
        Left = 61
        Top = 70
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lbx_codram: TListBox
        Left = 120
        Top = 90
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codramKeyDown
      end
      object CODRAM: TEdit
        Left = 61
        Top = 90
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
        OnMouseMove = CODRAMMouseMove
      end
      object OMITIR_RAM: TCheckBox
        Left = 61
        Top = 111
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object lbx_codcon: TListBox
        Left = 120
        Top = 131
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codconKeyDown
      end
      object CODCON: TEdit
        Left = 61
        Top = 131
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseDown = CODCONMouseDown
      end
      object OMITIR_CON: TCheckBox
        Left = 61
        Top = 152
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODTIP: TEdit
        Left = 61
        Top = 172
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseDown = CODTIPMouseDown
      end
      object OMITIR_TIP: TCheckBox
        Left = 61
        Top = 193
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object lbx_codtip: TListBox
        Left = 120
        Top = 172
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codtipKeyDown
      end
      object CLBNivel: TCheckListBox
        Left = 687
        Top = 106
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
        TabOrder = 15
        OnClick = CLBNivelClick
      end
      object edt_codcli: TEdit
        Left = 61
        Top = 213
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnExit = edt_codcliExit
        OnKeyPress = edt_codcliKeyPress
      end
      object lbx_codcli: TListBox
        Left = 120
        Top = 213
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 61
        Top = 234
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object edt_codven: TEdit
        Left = 62
        Top = 254
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnExit = edt_codvenExit
        OnKeyPress = edt_codvenKeyPress
      end
      object lbx_codven: TListBox
        Left = 121
        Top = 254
        Width = 534
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 62
        Top = 275
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
    end
    object Ts_Relatorios: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -168
        Top = 128
        Width = 1123
        Height = 794
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_LucroPro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        PrintEmpty = False
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 1045
          Height = 130
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object rlcodigo: TRLLabel
            Left = 1
            Top = 113
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CODIGO'
          end
          object RLNOME: TRLLabel
            Left = 68
            Top = 113
            Width = 300
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'NOME'
          end
          object RLVALOR1: TRLLabel
            Left = 437
            Top = 113
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'PRE'#199'O 1'
          end
          object RLVALOR2: TRLLabel
            Left = 638
            Top = 113
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'PRE'#199'O 2'
          end
          object RLPERC: TRLLabel
            Left = 838
            Top = 113
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '%%%%'
          end
          object RLLabel1: TRLLabel
            Left = 0
            Top = 0
            Width = 68
            Height = 16
            Caption = 'Empresa..:'
          end
          object RLDBText6: TRLDBText
            Left = 69
            Top = 0
            Width = 164
            Height = 16
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 984
            Top = 95
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 837
            Top = 0
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLLabel2: TRLLabel
            Left = 924
            Top = 0
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 932
            Top = 0
            Width = 112
            Height = 16
            Info = itLastPageNumber
          end
          object RLLabel3: TRLLabel
            Left = 1
            Top = 16
            Width = 67
            Height = 16
            Caption = 'Endere'#231'o.:'
          end
          object RLDBText7: TRLDBText
            Left = 69
            Top = 16
            Width = 36
            Height = 16
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLLabel4: TRLLabel
            Left = 416
            Top = 39
            Width = 216
            Height = 16
            Caption = 'Relatorio de Compara'#231#227'o de Valores'
          end
          object modelo: TRLLabel
            Left = -1
            Top = 56
            Width = 1044
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pre'#231'o de Venda x Pre'#231'o de Custo'
          end
          object periodo: TRLLabel
            Left = 418
            Top = 73
            Width = 207
            Height = 16
            Caption = 'Periodo..: 01/01/2011 '#224' 31/01/2011'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 1005
            Top = 79
            Width = 39
            Height = 16
            Alignment = taRightJustify
            Info = itHour
          end
          object RLQTD: TRLLabel
            Left = 369
            Top = 113
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'QUANT.'
          end
          object RLTOTVAL1: TRLLabel
            Left = 537
            Top = 113
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'TOTAL 1'
          end
          object RLTOTVAL2: TRLLabel
            Left = 737
            Top = 113
            Width = 100
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'TOTAL 2'
          end
          object rlcab_markup: TRLLabel
            Left = 907
            Top = 113
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Markup'
          end
          object rlcab_diferenca: TRLLabel
            Left = 973
            Top = 113
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Diferen'#231'a'
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 169
          Width = 1045
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 1
            Top = 0
            Width = 68
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CODIGO'
            DataSource = Src_LucroPro
            Holder = rlcodigo
          end
          object RLDBText2: TRLDBText
            Left = 68
            Top = 0
            Width = 300
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'NOME'
            DataSource = Src_LucroPro
            Holder = RLNOME
          end
          object RLDBText3: TRLDBText
            Left = 437
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO1'
            DataSource = Src_LucroPro
            Holder = RLVALOR1
          end
          object RLDBText4: TRLDBText
            Left = 638
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO2'
            DataSource = Src_LucroPro
            Holder = RLVALOR2
          end
          object ValPerc: TRLDBText
            Left = 838
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PERCENTUAL'
            DataSource = Src_LucroPro
            Holder = RLPERC
          end
          object RLDBText8: TRLDBText
            Left = 369
            Top = 0
            Width = 68
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD'
            DataSource = Src_LucroPro
            Holder = RLQTD
          end
          object RLDBText9: TRLDBText
            Left = 537
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_P1'
            DataSource = Src_LucroPro
            Holder = RLTOTVAL1
          end
          object RLDBText10: TRLDBText
            Left = 737
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_P2'
            DataSource = Src_LucroPro
            Holder = RLTOTVAL2
          end
          object rldet_diferenca: TRLDBText
            Left = 973
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'diferenca'
            DataSource = Src_LucroPro
            Holder = rlcab_diferenca
          end
          object rldet_markup: TRLDBText
            Left = 907
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'markup'
            DataSource = Src_LucroPro
            Holder = rlcab_markup
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 186
          Width = 1045
          Height = 17
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand3BeforePrint
          object totvalor1: TRLLabel
            Left = 537
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = RLTOTVAL1
          end
          object totvalor2: TRLLabel
            Left = 737
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = RLTOTVAL2
          end
          object totperc: TRLLabel
            Left = 838
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = RLPERC
          end
          object RLDBText5: TRLDBText
            Left = 68
            Top = 0
            Width = 300
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'NOME'
            DataSource = Src_LucroPro
            Holder = RLNOME
          end
          object rlrod_marckup: TRLLabel
            Left = 907
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = rlcab_markup
          end
          object rlrod_diferenca: TRLLabel
            Left = 973
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = rlcab_diferenca
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 203
          Width = 1045
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand4BeforePrint
          object rl_banner: TRLLabel
            Left = 0
            Top = 1
            Width = 1045
            Height = 15
            Align = faClient
            Alignment = taCenter
          end
        end
      end
    end
    object tsTiposped: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 873
        Height = 370
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alLeft
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
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Relatorio Industria'
      ImageIndex = 3
      object RLReport_industria: TRLReport
        Left = -16
        Top = 64
        Width = 1123
        Height = 794
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_LucroPro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        PrintEmpty = False
        ShowProgress = False
        BeforePrint = RLReport_industriaBeforePrint
        object RLBand5: TRLBand
          Left = 39
          Top = 39
          Width = 1045
          Height = 162
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel10: TRLLabel
            Left = 0
            Top = 0
            Width = 49
            Height = 12
            Caption = 'Empresa..:'
          end
          object RLDBText11: TRLDBText
            Left = 69
            Top = 0
            Width = 117
            Height = 12
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 1000
            Top = 95
            Width = 44
            Height = 12
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 861
            Top = 0
            Width = 63
            Height = 12
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLLabel11: TRLLabel
            Left = 924
            Top = 0
            Width = 6
            Height = 12
            Caption = '/'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 932
            Top = 0
            Width = 81
            Height = 12
            Info = itLastPageNumber
          end
          object RLLabel12: TRLLabel
            Left = 1
            Top = 16
            Width = 48
            Height = 12
            Caption = 'Endere'#231'o.:'
          end
          object RLDBText12: TRLDBText
            Left = 69
            Top = 16
            Width = 26
            Height = 12
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLLabel13: TRLLabel
            Left = 416
            Top = 39
            Width = 156
            Height = 12
            Caption = 'Relatorio de Compara'#231#227'o de Valores'
          end
          object ind_modelo: TRLLabel
            Left = -1
            Top = 56
            Width = 1044
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pre'#231'o de Venda x Pre'#231'o de Custo'
          end
          object ind_periodo: TRLLabel
            Left = 417
            Top = 73
            Width = 149
            Height = 12
            Caption = 'Periodo..: 01/01/2011 '#224' 31/01/2011'
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 1015
            Top = 79
            Width = 29
            Height = 12
            Alignment = taRightJustify
            Info = itHour
          end
          object cabind_CODIGO: TRLMemo
            Left = 4
            Top = 114
            Width = 44
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'C'#211'DIGO')
          end
          object cabind_NOME: TRLMemo
            Left = 49
            Top = 114
            Width = 282
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'DESCRI'#199#195'O DO PRODUTO')
          end
          object cabind_QTD: TRLMemo
            Left = 332
            Top = 114
            Width = 44
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'QTDE')
          end
          object cabind_PRECO1: TRLMemo
            Left = 376
            Top = 114
            Width = 50
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Pre'#231'o 01')
          end
          object cabind_TOTAL_P1: TRLMemo
            Left = 426
            Top = 114
            Width = 68
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Total Preco 01')
          end
          object cabind_PRECO_FABRICA: TRLMemo
            Left = 494
            Top = 114
            Width = 50
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Pre'#231'o de Fabrica')
          end
          object cabind_PRECO2: TRLMemo
            Left = 544
            Top = 114
            Width = 50
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Pre'#231'o 02')
          end
          object cabind_TOTAL_P2: TRLMemo
            Left = 595
            Top = 114
            Width = 72
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Total Preco 02')
          end
          object cabind_markup: TRLMemo
            Left = 858
            Top = 114
            Width = 102
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Percentual do Total Venda em Rela'#231'ao ao Total Pre'#231'o Custo (%%)')
          end
          object cabind_diferenca: TRLMemo
            Left = 962
            Top = 114
            Width = 80
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              
                'Percentual do Total Venda em Rela'#231#227'o ao Total do Pre'#231'o Sugerido ' +
                'de Venda de Acordo c/ Composi'#231'ao (%%)')
          end
          object cabind_PRECO_COMPOSICAO: TRLMemo
            Left = 667
            Top = 114
            Width = 86
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Pre'#231'o Sugerido de Venda de Acordo c/ Composi'#231'ao')
          end
          object cabind_TOTAL_COMPOSICAO: TRLMemo
            Left = 753
            Top = 114
            Width = 104
            Height = 40
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Layout = tlCenter
            Lines.Strings = (
              'Total do Pre'#231'o Sugerido de Venda de Acordo c/ Composi'#231'ao')
          end
        end
        object RLBand6: TRLBand
          Left = 39
          Top = 201
          Width = 1045
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand6BeforePrint
          object detind_CODIGO: TRLDBText
            Left = 4
            Top = 0
            Width = 44
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CODIGO'
            DataSource = Src_LucroPro
            Holder = cabind_CODIGO
            Layout = tlCenter
          end
          object detind_NOME: TRLDBText
            Left = 49
            Top = 0
            Width = 282
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'NOME'
            DataSource = Src_LucroPro
            Holder = cabind_NOME
            Layout = tlCenter
          end
          object detind_PRECO1: TRLDBText
            Left = 376
            Top = 0
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO1'
            DataSource = Src_LucroPro
            Holder = cabind_PRECO1
            Layout = tlCenter
          end
          object detind_PRECO2: TRLDBText
            Left = 544
            Top = 0
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO2'
            DataSource = Src_LucroPro
            Holder = cabind_PRECO2
            Layout = tlCenter
          end
          object detind_QTD: TRLDBText
            Left = 332
            Top = 0
            Width = 44
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD'
            DataSource = Src_LucroPro
            Holder = cabind_QTD
            Layout = tlCenter
          end
          object detind_TOTAL_P1: TRLDBText
            Left = 426
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_P1'
            DataSource = Src_LucroPro
            Holder = cabind_TOTAL_P1
            Layout = tlCenter
          end
          object detind_TOTAL_P2: TRLDBText
            Left = 595
            Top = 0
            Width = 72
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_P2'
            DataSource = Src_LucroPro
            Holder = cabind_TOTAL_P2
            Layout = tlCenter
          end
          object detind_diferenca: TRLDBText
            Left = 962
            Top = 0
            Width = 80
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'perc_vdaxpcosug'
            DataSource = Src_LucroPro
            Holder = cabind_diferenca
            Layout = tlCenter
          end
          object detind_markup: TRLDBText
            Left = 858
            Top = 0
            Width = 102
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PERCENTUAL'
            DataSource = Src_LucroPro
            Holder = cabind_markup
            Layout = tlCenter
          end
          object detind_PRECO_FABRICA: TRLDBText
            Left = 494
            Top = 0
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO_FABRICA'
            DataSource = Src_LucroPro
            Holder = cabind_PRECO_FABRICA
            Layout = tlCenter
          end
          object detind_PRECO_COMPOSICAO: TRLDBText
            Left = 667
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PRECO_COMPOSICAO'
            DataSource = Src_LucroPro
            Holder = cabind_PRECO_COMPOSICAO
            Layout = tlCenter
          end
          object detind_TOTAL_COMPOSICAO: TRLDBText
            Left = 753
            Top = 0
            Width = 104
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_COMPOSICAO'
            DataSource = Src_LucroPro
            Holder = cabind_TOTAL_COMPOSICAO
            Layout = tlCenter
          end
        end
        object RLBand7: TRLBand
          Left = 39
          Top = 218
          Width = 1045
          Height = 17
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand7BeforePrint
          object rodind_QTD: TRLLabel
            Left = 332
            Top = 0
            Width = 44
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_QTD
            Layout = tlCenter
          end
          object rodind_TOTAL_P2: TRLLabel
            Left = 595
            Top = 0
            Width = 72
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_TOTAL_P2
            Layout = tlCenter
          end
          object rodind_markup: TRLLabel
            Left = 858
            Top = 0
            Width = 102
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_markup
            Layout = tlCenter
          end
          object rodind_diferenca: TRLLabel
            Left = 962
            Top = 0
            Width = 80
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_diferenca
            Layout = tlCenter
          end
          object rodind_PRECO_COMPOSICAO: TRLLabel
            Left = 667
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_PRECO_COMPOSICAO
            Layout = tlCenter
          end
          object rodind_TOTAL_COMPOSICAO: TRLLabel
            Left = 753
            Top = 0
            Width = 104
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_TOTAL_COMPOSICAO
            Layout = tlCenter
          end
          object rodind_NOME: TRLLabel
            Left = 49
            Top = 0
            Width = 282
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_NOME
            Layout = tlCenter
          end
          object rodind_TOTAL_P1: TRLLabel
            Left = 426
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '0,00'
            Holder = cabind_TOTAL_P1
            Layout = tlCenter
          end
        end
        object RLBand8: TRLBand
          Left = 39
          Top = 235
          Width = 1045
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand4BeforePrint
          object RLLabel26: TRLLabel
            Left = 0
            Top = 1
            Width = 1045
            Height = 15
            Align = faClient
            Alignment = taCenter
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 398
    Width = 1095
    Height = 79
    Align = alBottom
    TabOrder = 1
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Periodo..:'
    end
    object Label8: TLabel
      Left = 176
      Top = 8
      Width = 18
      Height = 13
      Caption = ' at'#233
    end
    object Label9: TLabel
      Left = 14
      Top = 32
      Width = 100
      Height = 13
      Caption = 'Pesquisar por data ..:'
    end
    object Label10: TLabel
      Left = 27
      Top = 56
      Width = 87
      Height = 13
      Caption = 'Comparando por..:'
    end
    object sbt_expexcel: TSpeedButton
      Left = 324
      Top = 25
      Width = 155
      Height = 25
      Caption = '&Exportar para Excel'
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
      OnClick = sbt_expexcelClick
    end
    object dtini: TDateEdit
      Left = 56
      Top = 5
      Width = 119
      Height = 21
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 0
    end
    object dtfim: TDateEdit
      Left = 200
      Top = 5
      Width = 119
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object rg_Status: TRadioGroup
      Left = 580
      Top = 0
      Width = 97
      Height = 77
      Caption = 'Somente'
      ItemIndex = 1
      Items.Strings = (
        'Pendente'
        'Faturados'
        'Todos')
      TabOrder = 5
    end
    object cb_emitidos: TCheckBox
      Left = 464
      Top = 55
      Width = 113
      Height = 17
      Caption = 'Somente Emitidos'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object cb_tipodata: TComboBox
      Left = 117
      Top = 29
      Width = 203
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Data do Pedido'
      Items.Strings = (
        'Data do Pedido'
        'Data da Nota Fiscal')
    end
    object cb_modelo: TComboBox
      Left = 117
      Top = 53
      Width = 332
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Pre'#231'o de Custo Hora do Pedido com Pre'#231'o Vendido'
      Items.Strings = (
        'Pre'#231'o de Custo Hora do Pedido com Pre'#231'o Vendido'
        'Pre'#231'o de Custo Hora do Pedido com Pre'#231'o de Venda Hora da Venda'
        'Pre'#231'o de Custo Hora do Pedido com Pre'#231'o de Venda Atual'
        'Pre'#231'o de Custo Atual do Pedido com Pre'#231'o Vendido'
        'Pre'#231'o de Custo Atual do Pedido com Pre'#231'o de Venda Hora da Venda'
        'Pre'#231'o de Custo Atual do Pedido com Pre'#231'o de Venda Atual'
        'Pre'#231'o de Fabrica Hora do Pedido com Pre'#231'o Vendido'
        'Pre'#231'o de Fabrica Hora do Pedido com Pre'#231'o de Venda Hora da Venda'
        'Pre'#231'o de Fabrica Hora do Pedido com Pre'#231'o de Venda Atual'
        'Pre'#231'o de Fabrica Atual do Pedido com Pre'#231'o Vendido'
        
          'Pre'#231'o de Fabrica Atual do Pedido com Pre'#231'o de Venda Hora da Vend' +
          'a'
        'Pre'#231'o de Fabrica Atual do Pedido com Pre'#231'o de Venda Atual')
    end
    object bbImp: TBitBtn
      Left = 324
      Top = -1
      Width = 155
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 6
      OnClick = bbimprimirClick
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
  object Tb_LucroPro: TQuery
    OnCalcFields = Tb_LucroProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select tab01.*'
      ',(QTD*PRECO1) AS TOTAL_P1'
      ',(QTD*PRECO2) AS TOTAL_P2'
      ',(((QTD*PRECO1)-(QTD*PRECO2)) *100) /(QTD*PRECO1) AS percentual'
      ''
      'from'
      '('
      ' SELECT CODIGO, MAX(NOME) as NOME, SUM(QTD) AS QTD, '
      
        ' round(SUM(QTD*PRECO_VEN)/case when sum(QTD)=0 then 1 else sum(q' +
        'td) end,2) as Preco1,   '
      
        ' round(SUM(QTD*PCOCUS_HORA)/case when sum(QTD)=0 then 1 else sum' +
        '(qtd) end,2) as Preco2  '
      ' FROM (                                   '
      
        ' select p2codpro as Codigo,                                     ' +
        '                              '
      
        '        pdnome as nome,                                         ' +
        '                              '
      
        '        DECODE(max(P1FORMACE),                                  ' +
        '                              '
      
        '               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P' +
        '2QTD)),                       '
      
        '               1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P' +
        '2QTD))) AS QTD,               '
      
        '        DECODE(max(P1FORMACE),                                  ' +
        '                              '
      
        '               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PRECO)*-1,max' +
        '(P2PRECO)),                   '
      
        '               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PRECO)*-1,sum' +
        '(P2PRECO))) AS PRECO_VEN,     '
      
        '        max(PDPRECO1) AS PRECO_ATUAL,                           ' +
        '                              '
      
        '        DECODE(max(P1FORMACE),                                  ' +
        '                              '
      
        '               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOFPG)*-1,ma' +
        'x(P2PCOFPG)),                 '
      
        '               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOFPG)*-1,su' +
        'm(P2PCOFPG))) AS PRECO_HORA,  '
      
        '        DECODE(max(P1FORMACE),                                  ' +
        '                              '
      
        '               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOCUS)*-1,ma' +
        'x(P2PCOCUS)),                 '
      
        '               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOCUS)*-1,su' +
        'm(P2PCOCUS))) AS PCOCUS_HORA, '
      
        '        max(PDPRECOC) AS PCOCUS_ATUAL,                          ' +
        '                              '
      
        '        DECODE(max(P1FORMACE),                                  ' +
        '                              '
      
        '               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOTAB)*-1,ma' +
        'x(P2PCOTAB)),                 '
      
        '               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOTAB)*-1,su' +
        'm(P2PCOTAB))) AS PCOTAB_HORA, '
      
        '        max(PDPCOFAB) AS PCOTAB_ATUAL                           ' +
        '                              '
      ' from cadp01,cadp02, cadpro '
      
        ' where pdcodpro=p2codpro and p1chave=p2chave and p1codemp=p2code' +
        'mp and p1lotseq=p2lotseq      '
      ' and P1STATUS<>9  and ((P1CODEMP=1))       '
      ' and p1tipo>0'
      ' and p1datap>='#39'01/04/2014'#39
      ' group by p2chave,p2codpro, pdnome  '
      '                   )'
      ' GROUP BY CODIGO                                   '
      ') tab01'
      ' order by nome')
    Left = 356
    Top = 80
    object Tb_LucroProCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Tb_LucroProNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object Tb_LucroProQTD: TFloatField
      FieldName = 'QTD'
    end
    object Tb_LucroProPRECO1: TFloatField
      FieldName = 'PRECO1'
    end
    object Tb_LucroProPRECO2: TFloatField
      FieldName = 'PRECO2'
    end
    object Tb_LucroProTOTAL_P1: TFloatField
      FieldName = 'TOTAL_P1'
    end
    object Tb_LucroProTOTAL_P2: TFloatField
      FieldName = 'TOTAL_P2'
    end
    object Tb_LucroProPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object Tb_LucroPromarkup: TFloatField
      FieldName = 'markup'
    end
    object Tb_LucroProdiferenca: TFloatField
      FieldName = 'diferenca'
    end
    object Tb_LucroProPRECO_FABRICA: TFloatField
      FieldName = 'PRECO_FABRICA'
    end
    object Tb_LucroProPRECO_COMPOSICAO: TFloatField
      FieldName = 'PRECO_COMPOSICAO'
    end
    object Tb_LucroProTOTAL_COMPOSICAO: TFloatField
      FieldName = 'TOTAL_COMPOSICAO'
    end
    object Tb_LucroProperc_vdaxpcosug: TFloatField
      FieldName = 'perc_vdaxpcosug'
    end
  end
  object Src_LucroPro: TDataSource
    DataSet = Tb_LucroPro
    Left = 402
    Top = 82
  end
  object RLRichFilter_Word: TRLRichFilter
    DisplayName = 'Formato (Word) RichText'
    Left = 564
    Top = 80
  end
  object RLPDFFilter_PDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 396
    Top = 72
  end
  object RLXLSFilter_xls: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 724
    Top = 88
  end
end
