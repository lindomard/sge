object Frm_FatEmp_itens: TFrm_FatEmp_itens
  Left = 62
  Top = 169
  Width = 1085
  Height = 517
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
    Width = 1077
    Height = 178
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
      Top = 150
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
      Top = 155
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
      Top = 63
      Width = 717
      Height = 88
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
      object Label18: TLabel
        Left = 12
        Top = 55
        Width = 125
        Height = 13
        Caption = 'Banco.....................:'
      end
      object Label19: TLabel
        Left = 12
        Top = 71
        Width = 126
        Height = 13
        Caption = 'Forma Pagamento.....:'
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
        OnClick = cb_agruparitensClick
        OnExit = cb_agruparitensExit
      end
      object edt_codbco: TEdit
        Left = 142
        Top = 51
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = edt_codbcoExit
        OnKeyPress = edt_codbcoKeyPress
      end
      object edt_nombco: TEdit
        Left = 217
        Top = 51
        Width = 285
        Height = 19
        Color = 16764108
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 7
      end
      object edt_codfp: TEdit
        Left = 142
        Top = 69
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = edt_codfpExit
        OnKeyPress = edt_codfpKeyPress
      end
      object edt_nomfp: TEdit
        Left = 217
        Top = 69
        Width = 285
        Height = 19
        Color = 16764108
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 9
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
    object gb_grupos: TGroupBox
      Left = 744
      Top = 20
      Width = 313
      Height = 134
      Caption = 'Grupos de Produtos:'
      TabOrder = 10
      OnExit = gb_gruposExit
      object edt_codgru: TEdit
        Left = 7
        Top = 15
        Width = 59
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = edt_codgruExit
        OnKeyPress = edt_codgruKeyPress
      end
      object lbx_codgru: TListBox
        Left = 65
        Top = 14
        Width = 240
        Height = 59
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
        Left = 9
        Top = 39
        Width = 53
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 427
    Width = 1077
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
      Left = 8
      Top = 6
      Width = 77
      Height = 13
      Caption = 'A Selecionar:'
    end
    object lbl_percdesc: TLabel
      Left = 288
      Top = 32
      Width = 90
      Height = 13
      Caption = '% de Desconto:'
      Visible = False
    end
    object lbl_valdesc: TLabel
      Left = 445
      Top = 32
      Width = 92
      Height = 13
      Caption = 'Valor Desconto:'
      Visible = False
    end
    object Label21: TLabel
      Left = 641
      Top = 32
      Width = 79
      Height = 13
      Caption = 'Total Liquido:'
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
      Left = 882
      Top = 17
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
      TabStop = False
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
    object edt_percdesc: TEdit
      Left = 381
      Top = 29
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = '0,00'
      Visible = False
      OnEnter = edt_percdescEnter
      OnExit = edt_percdescExit
    end
    object edt_valdesc: TEdit
      Left = 538
      Top = 31
      Width = 101
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = '0,00'
      Visible = False
      OnExit = edt_valdescExit
    end
    object edt_totliq: TEdit
      Left = 739
      Top = 31
      Width = 101
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
      Text = '0,00'
      OnExit = edt_valdescExit
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 178
    Width = 1077
    Height = 249
    ActivePage = tsConfigMaster
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Pedidos'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1069
        Height = 221
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
            Title.Alignment = taCenter
            Title.Color = 16744576
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
            Title.Alignment = taCenter
            Title.Color = 16744576
            Width = 179
            Visible = True
          end>
      end
    end
    object TsResMerc: TTabSheet
      Caption = 'Resumos das Mercadorias'
      ImageIndex = 1
      object DBG_Ped2: TDBGrid
        Left = 0
        Top = 24
        Width = 884
        Height = 150
        Align = alClient
        DataSource = Src_Ped
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBG_Ped2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PDNOME'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCODGRU'
            Title.Alignment = taCenter
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOMGRU'
            Title.Alignment = taCenter
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CHAVE_ORIGEM'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CODEMP_ORIGEM'
            Title.Alignment = taCenter
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_UN_MEDIO'
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PRECO'
            Title.Alignment = taCenter
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPED'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDFAT'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPEND'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FATURAR'
            Title.Alignment = taCenter
            Width = 59
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 174
        Width = 1069
        Height = 47
        Align = alBottom
        TabOrder = 1
        object Label8: TLabel
          Left = 4
          Top = 28
          Width = 68
          Height = 13
          Caption = 'Total Geral:'
        end
        object Label13: TLabel
          Left = 181
          Top = 29
          Width = 61
          Height = 13
          Caption = 'Faturados:'
        end
        object Label14: TLabel
          Left = 351
          Top = 31
          Width = 65
          Height = 13
          Caption = 'Pendentes:'
        end
        object Label15: TLabel
          Left = 527
          Top = 31
          Width = 81
          Height = 13
          Caption = 'Selecionados:'
        end
        object Label16: TLabel
          Left = 733
          Top = 8
          Width = 81
          Height = 13
          Caption = 'Agrupado por:'
        end
        object edt_itens_totalgeral: TCurrencyEdit
          Left = 74
          Top = 25
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
          Left = 858
          Top = 25
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
        object edt_itens_fatrados: TCurrencyEdit
          Left = 242
          Top = 26
          Width = 99
          Height = 21
          AutoSize = False
          Color = 16764108
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object edt_itens_pendentes: TCurrencyEdit
          Left = 416
          Top = 27
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
        object edt_itens_selecionados: TCurrencyEdit
          Left = 619
          Top = 27
          Width = 99
          Height = 21
          AutoSize = False
          Color = 16764108
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object st_faturados_total: TStaticText
          Left = 6
          Top = 1
          Width = 132
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Faturados total'
          TabOrder = 5
        end
        object st_faturados_parcial: TStaticText
          Left = 143
          Top = 1
          Width = 132
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Faturados Parcial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object st_faturados_nenhum: TStaticText
          Left = 279
          Top = 1
          Width = 132
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Todos Pendentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 61952
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object cb_separado: TComboBox
          Left = 724
          Top = 24
          Width = 127
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Text = 'Nenhum'
          Items.Strings = (
            'Chave do Pedido de Origem'
            'Data de Emissao do Pedido'
            'C'#243'digo do Produto'
            'Grupo de Produtos'
            'Nenhum')
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1069
        Height = 24
        Align = alTop
        TabOrder = 2
        object bbFaturarTodos: TBitBtn
          Left = 408
          Top = 3
          Width = 203
          Height = 21
          Caption = 'Definir todos os itens'
          TabOrder = 0
          OnClick = bbFaturarTodosClick
        end
        object bbCancelarTodos: TBitBtn
          Left = 616
          Top = 3
          Width = 203
          Height = 21
          Caption = 'Zerar todos os itens'
          TabOrder = 1
          OnClick = bbCancelarTodosClick
        end
      end
      object gb_destino: TGroupBox
        Left = 884
        Top = 24
        Width = 185
        Height = 150
        Align = alRight
        Caption = 'Pedido Destino:'
        TabOrder = 3
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 181
          Height = 125
          Align = alClient
          DataSource = Src_Destino
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CHAVE'
              Title.Alignment = taCenter
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDFAT'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
      end
    end
    object tbsRelatorio: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -1
        Top = -47
        Width = 794
        Height = 1123
        DataSource = src_resumo_produtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        ShowProgress = False
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
        object RLGroup1: TRLGroup
          Left = 19
          Top = 85
          Width = 756
          Height = 100
          DataFields = 'grupo'
          object RLBand2: TRLBand
            Left = 0
            Top = 16
            Width = 756
            Height = 22
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object lbl_unidade: TRLLabel
              Left = 244
              Top = 1
              Width = 28
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
              Width = 240
              Height = 13
              Alignment = taCenter
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
              Left = 274
              Top = 1
              Width = 54
              Height = 13
              Alignment = taCenter
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
              Left = 331
              Top = 1
              Width = 72
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pco Unit'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object rlcab_QTDPED: TRLLabel
              Left = 464
              Top = 1
              Width = 68
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtde Pedida'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object rlcab_TOTAL_BRUTO: TRLLabel
              Left = 535
              Top = 1
              Width = 76
              Height = 13
              Alignment = taCenter
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
            object rlcab_QTDFAT: TRLLabel
              Left = 615
              Top = 2
              Width = 68
              Height = 15
              Alignment = taCenter
              AutoSize = False
              Caption = 'Faturada'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object rlcab_QTDPEND: TRLLabel
              Left = 685
              Top = 1
              Width = 68
              Height = 15
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pendente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object rlcab_P2CHAVE_ORIGEM: TRLLabel
              Left = 405
              Top = 4
              Width = 56
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chave Ori'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 38
            Width = 756
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand3AfterPrint
            object RLDBText1: TRLDBText
              Left = 1
              Top = 0
              Width = 240
              Height = 13
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_resumo_produtos
            end
            object RLDBText2: TRLDBText
              Left = 244
              Top = 0
              Width = 28
              Height = 13
              Alignment = taCenter
              AutoSize = False
              DataField = 'PDUND'
              DataSource = src_resumo_produtos
            end
            object RLDBText3: TRLDBText
              Left = 274
              Top = 0
              Width = 54
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = src_resumo_produtos
            end
            object rdb_unitario: TRLDBText
              Left = 331
              Top = 0
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2PRECO'
              DataSource = src_resumo_produtos
            end
            object rldet_QTDPED: TRLDBText
              Left = 464
              Top = 0
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTDPED'
              DataSource = src_resumo_produtos
              Holder = rlcab_QTDPED
            end
            object rldet_QTDFAT: TRLDBText
              Left = 615
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTDFAT'
              DataSource = src_resumo_produtos
              Holder = rlcab_QTDFAT
            end
            object rldet_QTDPEND: TRLDBText
              Left = 685
              Top = 0
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTDPEND'
              DataSource = src_resumo_produtos
              Holder = rlcab_QTDPEND
            end
            object rldet_TOTAL_BRUTO: TRLDBText
              Left = 535
              Top = 2
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTAL_BRUTO'
              DataSource = src_resumo_produtos
              Holder = rlcab_TOTAL_BRUTO
            end
            object rldet_P2CHAVE_ORIGEM: TRLDBText
              Left = 405
              Top = 0
              Width = 56
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2CHAVE_ORIGEM'
              DataSource = src_resumo_produtos
              Holder = rlcab_P2CHAVE_ORIGEM
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 53
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
              Left = 1
              Top = 2
              Width = 240
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totais em Quantidades:'
            end
            object rlrod_TOTAL_BRUTO: TRLLabel
              Left = 535
              Top = 17
              Width = 76
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_TOTAL_BRUTO
            end
            object RLLabel5: TRLLabel
              Left = 1
              Top = 17
              Width = 240
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totais em Valores:'
            end
            object rlrod_QTDFAT: TRLLabel
              Left = 615
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_QTDFAT
            end
            object rlrod_QTDPEND: TRLLabel
              Left = 685
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_QTDPEND
            end
            object rlrod_QTDFAT_valor: TRLLabel
              Left = 615
              Top = 17
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_QTDFAT
            end
            object rlrod_QTDPEND_valor: TRLLabel
              Left = 685
              Top = 17
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_QTDPEND
            end
            object rlrod_QTDPED: TRLLabel
              Left = 464
              Top = 2
              Width = 68
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Holder = rlcab_QTDPED
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 756
            Height = 16
            BandType = btHeader
            object RLDBText4: TRLDBText
              Left = 0
              Top = 0
              Width = 756
              Height = 16
              Align = faTop
              Alignment = taCenter
              AutoSize = False
              DataField = 'grupo'
              DataSource = src_resumo_produtos
            end
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
        Left = 648
        Top = 8
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
      object cb_permitir_desconto: TCheckBox
        Left = 144
        Top = 40
        Width = 401
        Height = 17
        Caption = 'Utilizar Campos de Desconto'
        TabOrder = 2
      end
    end
  end
  object Qr_Sel: TQuery
    CachedUpdates = True
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
      DisplayLabel = 'Total das Mercadorias'
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
    CachedUpdates = True
    BeforeInsert = Qr_PedBeforeInsert
    BeforeEdit = Qr_PedBeforeEdit
    BeforePost = Qr_PedBeforePost
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
    UpdateObject = U_Ped
    Left = 532
    Top = 128
    object Qr_PedPDNOME: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedPDUND: TStringField
      DisplayLabel = 'Und'
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
    object Qr_PedP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_PedQTDFAT: TFloatField
      DisplayLabel = 'Ja Faturado'
      FieldName = 'QTDFAT'
    end
    object Qr_PedQTDPEND: TFloatField
      DisplayLabel = 'Qtd.Pendente'
      FieldName = 'QTDPEND'
    end
    object Qr_PedQTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedido'
      FieldName = 'QTDPED'
    end
    object Qr_PedFATURAR: TFloatField
      DisplayLabel = 'A Faturar'
      FieldName = 'FATURAR'
    end
    object Qr_PedP2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Qr_PedPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 60
    end
    object Qr_PedTOTAL_BRUTO: TFloatField
      FieldName = 'TOTAL_BRUTO'
    end
    object Qr_PedP2CODEMP_ORIGEM: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2CODEMP_ORIGEM'
    end
    object Qr_PedPRECO_UN_MEDIO: TFloatField
      DisplayLabel = 'P'#231'o Un M'#233'dio'
      FieldName = 'PRECO_UN_MEDIO'
    end
    object Qr_PedP2CHAVE_ORIGEM: TFloatField
      DisplayLabel = 'Chave Origem'
      FieldName = 'P2CHAVE_ORIGEM'
    end
    object Qr_PedPDCODGRU: TFloatField
      DisplayLabel = 'Grupo'
      FieldName = 'PDCODGRU'
    end
    object Qr_PedPDNOMGRU: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'PDNOMGRU'
      Size = 60
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
    OnDataChange = Src_PedDataChange
    Left = 568
    Top = 48
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = tb_ped02_preAfterInsert
    Left = 400
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
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
      Size = 10
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02_preP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object tb_ped02_preP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object tb_ped02_preP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object tb_ped02_preP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object tb_ped02_preP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object tb_ped02_preP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object tb_ped02_preP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 309
    Top = 129
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
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldName = 'requer_pedori'
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldName = 'al_IcmsTribDesonera'
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
  end
  object U_Ped: TUpdateSQL
    Left = 572
    Top = 129
  end
  object qr_resumo_produtos: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_PedBeforeInsert
    BeforeEdit = Qr_PedBeforeEdit
    BeforePost = Qr_PedBeforePost
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
    Left = 780
    Top = 120
    object StringField1: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object StringField2: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object FloatField1: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object StringField3: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object FloatField2: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object StringField4: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object FloatField3: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object StringField5: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Pco.Unit.'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object FloatField5: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object FloatField6: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object FloatField7: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object FloatField8: TFloatField
      DisplayLabel = 'Val.Desc.'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object FloatField9: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object FloatField10: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object FloatField11: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object FloatField12: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object FloatField13: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object FloatField14: TFloatField
      DisplayLabel = '%Desc.Med'
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object StringField6: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object MemoField1: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object FloatField15: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object FloatField16: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object FloatField17: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object FloatField18: TFloatField
      DisplayLabel = 'Ja Faturado'
      FieldName = 'QTDFAT'
    end
    object FloatField19: TFloatField
      DisplayLabel = 'Qtd.Pendente'
      FieldName = 'QTDPEND'
    end
    object FloatField20: TFloatField
      DisplayLabel = 'Qtd.Pedido'
      FieldName = 'QTDPED'
    end
    object FloatField21: TFloatField
      DisplayLabel = 'A Faturar'
      FieldName = 'FATURAR'
    end
    object FloatField22: TFloatField
      FieldName = 'P2ITEM'
    end
    object StringField7: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 60
    end
    object FloatField23: TFloatField
      FieldName = 'TOTAL_BRUTO'
    end
    object qr_resumo_produtosgrupo: TStringField
      FieldName = 'grupo'
      Size = 200
    end
    object qr_resumo_produtosP2CHAVE_ORIGEM: TFloatField
      FieldName = 'P2CHAVE_ORIGEM'
    end
  end
  object src_resumo_produtos: TDataSource
    DataSet = qr_resumo_produtos
    Left = 812
    Top = 121
  end
  object Src_Destino: TDataSource
    DataSet = Qr_destino
    Left = 912
    Top = 248
  end
  object Qr_destino: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 904
    Top = 328
    object Qr_destinoCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CHAVE'
    end
    object Qr_destinoQTDFAT: TFloatField
      DisplayLabel = 'Qtde Faturado'
      FieldName = 'QTDFAT'
    end
  end
end
