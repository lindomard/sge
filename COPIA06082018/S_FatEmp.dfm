object Frm_FatEmp: TFrm_FatEmp
  Left = 94
  Top = 148
  Width = 752
  Height = 452
  Caption = 'Faturar Empresitmos'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 160
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 28
      Width = 121
      Height = 13
      Caption = 'C'#243'digo do Cliente....:'
    end
    object Label2: TLabel
      Left = 49
      Top = 46
      Width = 80
      Height = 13
      Caption = 'Per'#237'odo de...:'
    end
    object Label3: TLabel
      Left = 219
      Top = 47
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 7
      Top = 7
      Width = 123
      Height = 13
      Caption = 'C'#243'digo do Conv'#234'nio.:'
    end
    object Label10: TLabel
      Left = 319
      Top = 48
      Width = 144
      Height = 13
      Caption = 'Apresentar em Ordem de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODCLI: TEdit
      Left = 135
      Top = 26
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CODCLIEnter
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 211
      Top = 26
      Width = 278
      Height = 19
      Color = 16764108
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object MDT1: TMaskEdit
      Left = 135
      Top = 44
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 239
      Top = 44
      Width = 78
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 5
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object APLICAR: TBitBtn
      Left = 4
      Top = 137
      Width = 130
      Height = 23
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Aplicar'
      TabOrder = 7
      OnClick = APLICARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 609
      Top = 137
      Width = 130
      Height = 23
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = '&Sair'
      TabOrder = 8
      OnClick = BBSAIRClick
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
    object GroupBox1: TGroupBox
      Left = 20
      Top = 66
      Width = 736
      Height = 69
      Caption = 'Ao Faturar Usar os Seguintes Parametros:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      object Label4: TLabel
        Left = 16
        Top = 17
        Width = 120
        Height = 13
        Caption = 'C'#243'digo do Vendedor:'
      end
      object Label5: TLabel
        Left = 13
        Top = 34
        Width = 121
        Height = 13
        Caption = 'Plano de Vendas.....:'
      end
      object CODVEN: TEdit
        Left = 142
        Top = 15
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 217
        Top = 15
        Width = 285
        Height = 19
        Color = 16764108
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object NOMPV: TEdit
        Left = 253
        Top = 33
        Width = 249
        Height = 19
        Color = 16764108
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object CB_TABPV: TComboBox
        Left = 142
        Top = 33
        Width = 53
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 3
        Text = 'AP'
        OnExit = CB_TABPVExit
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'PO')
      end
      object CODPV: TEdit
        Left = 195
        Top = 33
        Width = 59
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODPVExit
        OnKeyPress = CODPVKeyPress
      end
      object cb_agruparitens: TCheckBox
        Left = 520
        Top = 40
        Width = 177
        Height = 17
        Caption = 'Agrupar codigo iguais'
        TabOrder = 5
        OnExit = cb_agruparitensExit
      end
    end
    object CODCV: TEdit
      Left = 135
      Top = 8
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCVExit
      OnKeyPress = CODCVKeyPress
    end
    object NOMCV: TEdit
      Left = 211
      Top = 8
      Width = 278
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object CB_ORDEM: TComboBox
      Left = 465
      Top = 44
      Width = 269
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 3
      Sorted = True
      TabOrder = 9
      Text = 'Nome do Cliente'
      OnExit = CB_ORDEMExit
      Items.Strings = (
        'Chave do Pedido'
        'Data do Pedido'
        'Nenhuma(aleatorio)'
        'Nome do Cliente')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 355
    Width = 736
    Height = 59
    Align = alBottom
    TabOrder = 1
    object Label7: TLabel
      Left = 548
      Top = 7
      Width = 68
      Height = 13
      Caption = 'Total Geral:'
    end
    object Label9: TLabel
      Left = 248
      Top = 3
      Width = 108
      Height = 21
      AutoSize = False
      Caption = 'Total Selecionado:'
      Color = clRed
      ParentColor = False
      Layout = tlCenter
    end
    object Label11: TLabel
      Left = 6
      Top = 6
      Width = 77
      Height = 13
      Caption = 'A Selecionar:'
    end
    object SELECAO: TBitBtn
      Left = 1
      Top = 25
      Width = 133
      Height = 31
      Cursor = crHandPoint
      Caption = 'Selecionar &Todos'
      Enabled = False
      TabOrder = 0
      OnClick = SELECAOClick
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
    object CANCELAR: TBitBtn
      Left = 142
      Top = 25
      Width = 133
      Height = 31
      Cursor = crHandPoint
      Caption = '&Cancelar Sele'#231#227'o'
      TabOrder = 1
      OnClick = CANCELARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object FATURAR: TBitBtn
      Left = 281
      Top = 25
      Width = 115
      Height = 31
      Cursor = crHandPoint
      Caption = '&Faturar'
      Enabled = False
      TabOrder = 2
      OnClick = FATURARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object edt_totalgeral: TCurrencyEdit
      Left = 622
      Top = 3
      Width = 99
      Height = 21
      AutoSize = False
      Color = 16764108
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_totalsel: TCurrencyEdit
      Left = 356
      Top = 3
      Width = 99
      Height = 21
      AutoSize = False
      Color = clRed
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_totalASelecionar: TCurrencyEdit
      Left = 85
      Top = 3
      Width = 99
      Height = 21
      AutoSize = False
      Color = 16764108
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 160
    Width = 736
    Height = 195
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Pedidos'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 728
        Height = 167
        Align = alClient
        Ctl3D = False
        DataSource = Src_Sel
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'P1OK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Wingdings 2'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1CHAVE'
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1DATAP'
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1CODCLI'
            Title.Alignment = taCenter
            Title.Color = 16744576
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 287
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1TOTALL'
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalp2'
            Title.Caption = 'Total'
            Title.Color = 16744576
            Visible = True
          end>
      end
    end
    object TsResMerc: TTabSheet
      Caption = 'Resumos das Mercadorias'
      ImageIndex = 1
      object DBG_Ped2: TDBGrid
        Left = 0
        Top = 0
        Width = 728
        Height = 142
        Align = alClient
        DataSource = Src_Ped
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PRECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2VALDES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESCM'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 142
        Width = 728
        Height = 25
        Align = alBottom
        TabOrder = 1
        object Label8: TLabel
          Left = 232
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Total:'
        end
        object TOTALMERC: TCurrencyEdit
          Left = 278
          Top = 4
          Width = 99
          Height = 21
          AutoSize = False
          Color = 16764108
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object btnImprimir: TBitBtn
          Left = 405
          Top = 2
          Width = 91
          Height = 22
          Cursor = crHandPoint
          Caption = 'Imprimir'
          TabOrder = 1
          OnClick = btnImprimirClick
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
      end
    end
    object tbsRelatorio: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -1
        Top = -15
        Width = 794
        Height = 1123
        DataSource = Src_Ped
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 66
          BandType = btHeader
          object RLLabel1: TRLLabel
            Left = -1
            Top = 1
            Width = 268
            Height = 24
            Caption = 'Emprestimos de Mercadoria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 0
            Top = 26
            Width = 84
            Height = 16
            AutoSize = False
            Caption = 'Convenio......:'
          end
          object RLLabel3: TRLLabel
            Left = 0
            Top = 44
            Width = 84
            Height = 16
            Caption = 'Cliente.........:'
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 62
            Width = 756
            Height = 1
            Align = faWidth
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object lbl_convenio: TRLLabel
            Left = 86
            Top = 26
            Width = 74
            Height = 16
          end
          object lbl_cliente: TRLLabel
            Left = 86
            Top = 44
            Width = 62
            Height = 16
          end
        end
        object RLBand2: TRLBand
          Left = 19
          Top = 85
          Width = 756
          Height = 22
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_unidade: TRLLabel
            Left = 251
            Top = 1
            Width = 36
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Unid'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_descricao: TRLLabel
            Left = 1
            Top = 1
            Width = 247
            Height = 13
            AutoSize = False
            Caption = 'Descricao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_codigo: TRLLabel
            Left = 287
            Top = 1
            Width = 70
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_unitario: TRLLabel
            Left = 366
            Top = 1
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pco Unit'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_qtde: TRLLabel
            Left = 440
            Top = 1
            Width = 59
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl_vlrdesc: TRLLabel
            Left = 502
            Top = 1
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vlr. Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 14
            Width = 756
            Height = 7
            Align = faWidth
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand3: TRLBand
          Left = 19
          Top = 107
          Width = 756
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand3BeforePrint
          object RLDBText1: TRLDBText
            Left = 1
            Top = 0
            Width = 247
            Height = 13
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_Ped
            Holder = lbl_descricao
          end
          object RLDBText2: TRLDBText
            Left = 251
            Top = 0
            Width = 36
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'PDUND'
            DataSource = Src_Ped
            Holder = lbl_unidade
          end
          object RLDBText3: TRLDBText
            Left = 287
            Top = 0
            Width = 70
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P2CODPRO'
            DataSource = Src_Ped
            Holder = lbl_codigo
          end
          object rdb_unitario: TRLDBText
            Left = 366
            Top = 0
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_unitario
          end
          object rdb_quantidade: TRLDBText
            Left = 440
            Top = 0
            Width = 59
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_qtde
          end
          object lbl_totalizacao: TRLLabel
            Left = 502
            Top = 0
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_vlrdesc
          end
        end
        object RLBand5: TRLBand
          Left = 19
          Top = 122
          Width = 756
          Height = 34
          BandType = btSummary
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand5BeforePrint
          object RLLabel4: TRLLabel
            Left = 399
            Top = 14
            Width = 100
            Height = 13
            Caption = 'Totalizacao.............:'
          end
          object lbl_totalgeral: TRLLabel
            Left = 502
            Top = 13
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_vlrdesc
          end
        end
      end
    end
    object tsConfigMaster: TTabSheet
      Caption = 'Configura'#231#245'es Master'
      ImageIndex = 3
      object Label12: TLabel
        Left = 11
        Top = 16
        Width = 126
        Height = 13
        Caption = 'Faturar Sempre Como:'
      end
      object CB_TIPO: TComboBox
        Left = 145
        Top = 13
        Width = 488
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 0
        Items.Strings = (
          'Dev. a Fornecedor'
          'Dev. Cliente(Entrada)'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Or'#231'amento'
          'Remessa p/Beneficiamento'
          'Remessa p/Troca'
          'Remessa p/Venda'
          'Simples Remessa'
          'Transferencia'
          'Venda Normal')
      end
      object bbSalvarPadrao: TBitBtn
        Left = 336
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Salvar Padr'#227'o'
        TabOrder = 1
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
    end
  end
  object Qr_Sel: TQuery
    CachedUpdates = True
    AfterPost = Qr_SelAfterPost
    OnCalcFields = Qr_SelCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39'P'#39' as P1OK,'
      '      sum(P1TOTALL) as P1TOTALL,'
      '      sum(p1valdes01) as P1VALDES01,'
      '      sum(p1DESC01) as P1DESC01,'
      '      sum(P1VALDES02) as p1valdes02,'
      '      sum(p1DESC02) as P1DESC02,'
      '      SUM(p1vlrdes)   as p1vLRDES,'
      '      max(P1PDESCLIB) as P1PDESCLIB,'
      '      max(P1PDESCL_USR) as P1PDESCL_USR,'
      '      max(P1TOTDES) as P1TOTDES,'
      '      min(P1ORDEM) as P1ORDEM,'
      '      max(P1TIPO) as P1TIPO,'
      '      max(P1TPPCO) as P1TPPCO,'
      '      max(P1CODEMP) as P1CODEMP,'
      '      P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,'
      '      CRAZAO'
      '       from CADP01,CADCLI where'
      '       P1CODEMP is null'
      '       and CCODCLI=P1CODCLI'
      'group by P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,CRAZAO'
      '')
    UpdateObject = U_Sel
    Left = 628
    Top = 9
    object Qr_SelP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_SelP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_SelP1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_SelP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_SelP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_SelCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_SelP1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_SelP1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_SelP1VALDES01: TFloatField
      DisplayLabel = 'Valor Desc.01'
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Qr_SelP1VALDES02: TFloatField
      DisplayLabel = 'Valor Desc.02'
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Qr_SelP1VLRDES: TFloatField
      DisplayLabel = 'Desc.Valor'
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Qr_SelP1PDESCLIB: TFloatField
      DisplayLabel = '%Desc.Lib'
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Qr_SelP1PDESCL_USR: TFloatField
      DisplayLabel = 'Usr.Lib.Desc.'
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Qr_SelP1OK: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'P1OK'
      FixedChar = True
      Size = 1
    end
    object Qr_SelP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object Qr_SelP1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
    end
    object Qr_Seltotalp2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalp2'
      Calculated = True
    end
    object Qr_SelP1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
    end
    object Qr_SelP1DESC01: TFloatField
      FieldName = 'P1DESC01'
    end
    object Qr_SelP1DESC02: TFloatField
      FieldName = 'P1DESC02'
    end
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDUND,P2CODPRO,P2LOTE,P2DTVCTO'
      ',P2PRECO,P2DESC1,P2DESC2,P2DESC3,P2VALDES,'
      'PDSIT,'
      'PDLISTA,PDTABICM,PDCODFOR,P2CODVEN'
      ',P2PCOFPG'
      ',P2CODFAB'
      ',P2PCOTAB'
      ',P2UCPR  '
      ',P2PCOCUS'
      ',P2PCOMAX'
      ',P2DESCM'
      ',P2TOTDES'
      ',P2AMBIENTE'
      ',P2COMPLEMENTO'
      ',sum(P2QTD) as QUANT'
      ',max(P2ITEM) AS ITEM'
      'from'
      ''
      'CADP02,CADP01,CADPRO where'
      'P2CODEMP=1 and'
      'P1CODEMP=P2CODEMP '
      'and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM'
      'and P1LOTSEQ=P2LOTSEQ'
      'and PDCODEMP=P2CODEMP and PDCODPRO=P2CODPRO'
      'and P1STATUS=88'
      ''
      'GROUP BY PDNOME,PDUND,P2CODPRO'
      ',P2LOTE,P2DTVCTO,P2PRECO,P2DESC1'
      ',P2DESC2,P2DESC3,P2VALDES,PDSIT'
      ',PDLISTA,PDTABICM,PDCODFOR'
      ',P2PCOFPG'
      ',P2CODFAB'
      ',P2PCOTAB'
      ',P2UCPR  '
      ',P2PCOCUS'
      ',P2PCOMAX'
      ',P2DESCM'
      ',P2AMBIENTE'
      ',P2COMPLEMENTO'
      ',p2codven'
      ',P2TOTDES'
      '')
    Left = 564
    Top = 8
    object Qr_PedPDNOME: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedPDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PedP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PedPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_PedPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_PedPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_PedPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_PedP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_PedP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_PedP2PRECO: TFloatField
      DisplayLabel = 'Pco.Unit.'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_PedQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PedP2DESC1: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_PedP2DESC2: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_PedP2DESC3: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Qr_PedP2VALDES: TFloatField
      DisplayLabel = 'Val.Desc.'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Qr_PedP2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Qr_PedP2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Qr_PedP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Qr_PedP2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Qr_PedP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Qr_PedP2DESCM: TFloatField
      DisplayLabel = '%Desc.Med'
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Qr_PedP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Qr_PedP2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Qr_PedP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Qr_PedP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Qr_PedITEM: TFloatField
      FieldName = 'ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_PedP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
  end
  object Qr_Ser: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDESC' +
        '3,P2SVALDES,PDSIT,'
      
        'PDLISTA,PDTABICM,PDCODFOR,sum(P2SQTD) as QUANT from CADP02S,CADP' +
        '01,CADPRO where'
      'P2SCODEMP=1 and'
      'P1CODEMP=P2SCODEMP and P1CHAVE=P2SCHAVE and P1ORDEM=P2SORDEM'
      'and PDCODEMP=P2SCODEMP and PDCODPRO=P2SCODPRO'
      'and P1STATUS<8'
      
        'GROUP BY PDNOME,PDUND,P2SCODPRO,P2SPRECO,P2SDESC1,P2SDESC2,P2SDE' +
        'SC3,P2SVALDES,PDSIT,PDLISTA,PDTABICM,PDCODFOR'
      ''
      '')
    Left = 606
    Top = 1
    object Qr_SerPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_SerPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_SerP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Qr_SerP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
      DisplayFormat = '#,##0.00'
    end
    object Qr_SerPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_SerPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_SerPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_SerPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_SerQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Qr_SerP2SDESC1: TFloatField
      FieldName = 'P2SDESC1'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC1'
    end
    object Qr_SerP2SDESC2: TFloatField
      FieldName = 'P2SDESC2'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC2'
    end
    object Qr_SerP2SDESC3: TFloatField
      FieldName = 'P2SDESC3'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC3'
    end
    object Qr_SerP2SVALDES: TFloatField
      FieldName = 'P2SVALDES'
      Origin = 'SG_ASSOC.CADP02S.P2SVALDES'
    end
  end
  object U_Sel: TUpdateSQL
    Left = 652
    Top = 9
  end
  object Src_Sel: TDataSource
    DataSet = Qr_Sel
    Left = 684
    Top = 9
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 568
    Top = 48
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 128
    object tb_ped02_preP2ICMS_PERC: TFloatField
      FieldName = 'P2ICMS_PERC'
    end
    object tb_ped02_preP2ICMS_PPRED: TFloatField
      FieldName = 'P2ICMS_PPRED'
    end
    object tb_ped02_preP2ICMSSN_PERC: TFloatField
      FieldName = 'P2ICMSSN_PERC'
    end
    object tb_ped02_preP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object tb_ped02_preP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object tb_ped02_preP2ST_ICMSCRED: TFloatField
      FieldName = 'P2ST_ICMSCRED'
    end
    object tb_ped02_preP2ST_ICMSDEB: TFloatField
      FieldName = 'P2ST_ICMSDEB'
    end
    object tb_ped02_preP2MODBCST: TIntegerField
      FieldName = 'P2MODBCST'
    end
    object tb_ped02_preP2IPI_PERC: TFloatField
      FieldName = 'P2IPI_PERC'
    end
    object tb_ped02_preP2CST: TStringField
      FieldName = 'P2CST'
      Size = 3
    end
    object tb_ped02_preP2CSOSN_ORI: TIntegerField
      FieldName = 'P2CSOSN_ORI'
    end
    object tb_ped02_preP2CSOSN: TIntegerField
      FieldName = 'P2CSOSN'
    end
    object tb_ped02_preP2PIS_PERC: TFloatField
      FieldName = 'P2PIS_PERC'
    end
    object tb_ped02_preP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 4
    end
    object tb_ped02_preP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 4
    end
    object tb_ped02_preP2COFINS_PERC: TFloatField
      FieldName = 'P2COFINS_PERC'
    end
    object tb_ped02_preP2CONTESP: TIntegerField
      FieldName = 'P2CONTESP'
    end
    object tb_ped02_preP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object tb_ped02_preP2ICMS_PPRED_101: TFloatField
      FieldName = 'P2ICMS_PPRED_101'
    end
    object tb_ped02_preP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object tb_ped02_preP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object tb_ped02_preP2ST_ICMSCRED_101: TFloatField
      FieldName = 'P2ST_ICMSCRED_101'
    end
    object tb_ped02_preP2ST_ICMSDEB_101: TFloatField
      FieldName = 'P2ST_ICMSDEB_101'
    end
    object tb_ped02_preP2MODBCST_101: TFloatField
      FieldName = 'P2MODBCST_101'
    end
    object tb_ped02_preP2CFOP_ECF: TIntegerField
      FieldName = 'P2CFOP_ECF'
    end
    object tb_ped02_preP2CFOP_NF: TIntegerField
      FieldName = 'P2CFOP_NF'
    end
    object tb_ped02_preP2PRECO_MAXCONS: TFloatField
      FieldName = 'P2PRECO_MAXCONS'
    end
    object tb_ped02_preP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object tb_ped02_preP2CODEMP: TIntegerField
      FieldName = 'P2CODEMP'
    end
    object tb_ped02_preP2LOTSEQ: TIntegerField
      FieldName = 'P2LOTSEQ'
    end
    object tb_ped02_preP2CHAVE: TIntegerField
      FieldName = 'P2CHAVE'
    end
    object tb_ped02_preP2ORDEM: TIntegerField
      FieldName = 'P2ORDEM'
    end
    object tb_ped02_preP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object tb_ped02_preP2ITEM: TIntegerField
      FieldName = 'P2ITEM'
    end
    object tb_ped02_preP2CONS_PROPRIO: TIntegerField
      FieldName = 'P2CONS_PROPRIO'
    end
    object tb_ped02_prePDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02_preP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object tb_ped02_preP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object tb_ped02_preP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object tb_ped02_preP2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object tb_ped02_preP2DESCFIN_PERC: TFloatField
      FieldName = 'P2DESCFIN_PERC'
    end
    object tb_ped02_preP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object tb_ped02_preP2DESC_COMP: TStringField
      FieldName = 'P2DESC_COMP'
      Size = 10
    end
    object tb_ped02_preP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object tb_ped02_preP2DESC_PERC01: TFloatField
      FieldName = 'P2DESC_PERC01'
    end
    object tb_ped02_preP2DESC_PERC02: TFloatField
      FieldName = 'P2DESC_PERC02'
    end
    object tb_ped02_preP2DESC_PERC03: TFloatField
      FieldName = 'P2DESC_PERC03'
    end
    object tb_ped02_preP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object tb_ped02_preP2TIPO_PCO: TIntegerField
      FieldName = 'P2TIPO_PCO'
    end
    object tb_ped02_preP2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
    end
    object tb_ped02_preP2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
    end
    object tb_ped02_preP2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
    end
    object tb_ped02_preP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object tb_ped02_preP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object tb_ped02_preP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object tb_ped02_preP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object tb_ped02_preP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 10
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 245
    Top = 193
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
  end
end
