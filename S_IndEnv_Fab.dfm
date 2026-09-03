object Frm_IndEnv_Fab: TFrm_IndEnv_Fab
  Left = 129
  Top = 122
  Width = 1024
  Height = 514
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ordem de Produ'#231#227'o '
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 26
    Align = alTop
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Ordem de Produ'#231#227'o'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBLOCALIZAR: TBitBtn
      Left = 79
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Localizar Outras Chaves'
      Caption = 'Locali&zar'
      TabOrder = 1
      OnClick = BBLOCALIZARClick
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
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 157
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Alterar o Registro Selecionado'
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 2
      OnClick = BBALTERARClick
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
    object BBGRAVAR: TBitBtn
      Left = 235
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Gravar o registro que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBGRAVARClick
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
    object BBLIMPAR: TBitBtn
      Left = 313
      Top = 0
      Width = 93
      Height = 26
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BBLIMPARClick
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
      NumGlyphs = 2
    end
    object BBIMPRIMIR: TBitBtn
      Left = 406
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Visualizar Ordem de Produ'#231#227'o'
      Caption = 'Visualiza'
      Enabled = False
      TabOrder = 5
      OnClick = BBIMPRIMIRClick
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
    object BBCONFIRMAR: TBitBtn
      Left = 669
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Hint = 'Confirmar a Produ'#231#227'o '
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BBCONFIRMARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 749
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Excluir Ordem de Produ'#231#227'o ja existentes'
      Caption = 'Excl&uir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBEXCLUIRClick
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
    object BBSAIR: TBitBtn
      Left = 827
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
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
    object bbvisualizar_comagrupamento: TBitBtn
      Left = 486
      Top = 0
      Width = 173
      Height = 26
      Cursor = crHandPoint
      Hint = 'Visualizar Ordem de Produ'#231#227'o'
      Caption = 'Visualiza c/Agrupamento'
      Enabled = False
      TabOrder = 9
      OnClick = bbvisualizar_comagrupamentoClick
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
  object Panel2: TPanel
    Left = 0
    Top = 26
    Width = 1016
    Height = 457
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object gbCabecalho: TGroupBox
      Left = 1
      Top = 1
      Width = 1014
      Height = 116
      Align = alTop
      Caption = 'Cabe'#231'alho da Ordem de Produ'#231#227'o:'
      TabOrder = 0
      object Label1: TLabel
        Left = 79
        Top = 17
        Width = 41
        Height = 13
        Caption = 'Chave:'
      end
      object Label2: TLabel
        Left = 232
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Data:'
      end
      object Label6: TLabel
        Left = 74
        Top = 37
        Width = 49
        Height = 13
        Caption = 'Produto:'
      end
      object Label3: TLabel
        Left = 5
        Top = 51
        Width = 117
        Height = 13
        Caption = 'Quantidade Teorica:'
      end
      object Label4: TLabel
        Left = 211
        Top = 53
        Width = 61
        Height = 13
        Caption = 'Produzida:'
      end
      object Label5: TLabel
        Left = 216
        Top = 72
        Width = 30
        Height = 13
        Caption = 'Lote:'
      end
      object Label7: TLabel
        Left = 480
        Top = 72
        Width = 31
        Height = 13
        Caption = 'Vcto:'
      end
      object Label8: TLabel
        Left = 65
        Top = 68
        Width = 54
        Height = 13
        Caption = 'Validade:'
      end
      object Label9: TLabel
        Left = 168
        Top = 72
        Width = 42
        Height = 13
        Caption = 'm'#234's/es'
      end
      object Label31: TLabel
        Left = 376
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Label31'
      end
      object Label32: TLabel
        Left = 514
        Top = 55
        Width = 102
        Height = 13
        Caption = 'Motivo Diferen'#231'a:'
      end
      object Label81: TLabel
        Left = 610
        Top = 75
        Width = 109
        Height = 13
        Caption = 'Local Mercadorias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbl_perdas: TLabel
        Left = 366
        Top = 54
        Width = 142
        Height = 13
        AutoSize = False
        Caption = '% perdas'
      end
      object Label54: TLabel
        Left = 19
        Top = 93
        Width = 101
        Height = 13
        Caption = 'Modelo Relatorio:'
      end
      object Label34: TLabel
        Left = 337
        Top = 72
        Width = 43
        Height = 13
        Caption = 'Dt Fab:'
      end
      object MCHAVE: TEdit
        Left = 126
        Top = 14
        Width = 83
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object MDATA: TMaskEdit
        Left = 272
        Top = 14
        Width = 80
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDATAExit
      end
      object CODPRO: TEdit
        Left = 126
        Top = 31
        Width = 83
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object QTDPREV: TEdit
        Left = 126
        Top = 49
        Width = 83
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = QTDPREVEnter
        OnExit = QTDPREVExit
      end
      object QTDPROD: TEdit
        Left = 281
        Top = 51
        Width = 83
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = QTDPRODExit
      end
      object MNUMLOT: TEdit
        Left = 249
        Top = 69
        Width = 83
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = MNUMLOTExit
      end
      object MDATAVEN: TMaskEdit
        Left = 521
        Top = 70
        Width = 83
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 7
        Text = '  /  /    '
        OnExit = MDATAVENExit
      end
      object PRAZOVAL: TEdit
        Left = 126
        Top = 67
        Width = 39
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = PRAZOVALExit
      end
      object status: TStaticText
        Left = 440
        Top = 11
        Width = 130
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Color = clLime
        ParentColor = False
        TabOrder = 8
      end
      object CB_ETIQUETAS: TCheckBox
        Left = 738
        Top = 19
        Width = 74
        Height = 16
        Caption = 'Etiquetas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 9
      end
      object bb_materia_prima: TBitBtn
        Left = 574
        Top = 6
        Width = 142
        Height = 34
        Cursor = crHandPoint
        Hint = 'Baixar Material'
        Caption = '&Baixar Material'
        DragCursor = crHelp
        Enabled = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 10
        OnClick = bb_materia_primaClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000555
          55555555008880055555555088CCC880555555508C888C8055555508CCCCCCC8
          05555508CECCCCC805555508CEECCCC8055555508C444C805555555088FFF880
          5555555508FFF80555555555508F805555555555508F805555555555508F8055
          55555555508F8055555555550888880555555555500000555555}
      end
      object CB_NOMPRO: TComboBox
        Left = 208
        Top = 31
        Width = 364
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        Color = 12582911
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 11
        TabStop = False
        Text = 'CB_NOMPRO'
        OnClick = CB_NOMPROClick
      end
      object CB01_MOTIVO: TComboBox
        Left = 620
        Top = 51
        Width = 204
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        MaxLength = 254
        ParentCtl3D = False
        TabOrder = 12
        OnExit = cbme_qtdutil_motivoExit
        OnKeyDown = CB01_MOTIVOKeyDown
        Items.Strings = (
          ''
          'EMBALAGEM ESTRAGADA'
          'OUTRAS')
      end
      object CB_FILIAL: TComboBox
        Left = 729
        Top = 72
        Width = 100
        Height = 21
        ItemHeight = 13
        TabOrder = 13
        OnExit = CB_FILIALExit
      end
      object gb_origem: TGroupBox
        Left = 903
        Top = 15
        Width = 109
        Height = 99
        Align = alRight
        Caption = 'Origem:'
        TabOrder = 14
        object Label33: TLabel
          Left = 10
          Top = 23
          Width = 84
          Height = 13
          Caption = 'Fracionamento'
        end
        object edt_origem: TEdit
          Left = 7
          Top = 42
          Width = 97
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = 'edt_origem'
        end
      end
      object dbcb_modelo: TComboBox
        Left = 126
        Top = 89
        Width = 611
        Height = 21
        ItemHeight = 13
        TabOrder = 15
        Text = 'dbcb_modelo'
      end
      object edt_dt_fab: TMaskEdit
        Left = 386
        Top = 69
        Width = 83
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 16
        Text = '  /  /    '
        OnExit = MDATAVENExit
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 415
      Width = 1014
      Height = 41
      Align = alBottom
      TabOrder = 1
      object StaticText10: TStaticText
        Left = 3
        Top = 1
        Width = 171
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Totais: Mat'#233'rias Primas: Und:'
        Color = 8454016
        ParentColor = False
        TabOrder = 0
      end
      object st_totmpund: TStaticText
        Left = 174
        Top = 1
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 8454016
        ParentColor = False
        TabOrder = 1
      end
      object StaticText11: TStaticText
        Left = 250
        Top = 1
        Width = 23
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Vlr:'
        Color = 8454016
        ParentColor = False
        TabOrder = 2
      end
      object st_totmpvlr: TStaticText
        Left = 274
        Top = 1
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 8454016
        ParentColor = False
        TabOrder = 3
      end
      object StaticText12: TStaticText
        Left = 375
        Top = 2
        Width = 121
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Mat'#233'rial Embalagem:'
        Color = 7124735
        ParentColor = False
        TabOrder = 4
      end
      object st_totmeund: TStaticText
        Left = 499
        Top = 2
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 7124735
        ParentColor = False
        TabOrder = 5
      end
      object StaticText14: TStaticText
        Left = 577
        Top = 2
        Width = 23
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Vlr:'
        Color = 7124735
        ParentColor = False
        TabOrder = 6
      end
      object st_totmevlr: TStaticText
        Left = 601
        Top = 2
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 7124735
        ParentColor = False
        TabOrder = 7
      end
      object StaticText13: TStaticText
        Left = 175
        Top = 21
        Width = 171
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Totais: Mat'#233'rias Primas: Und:'
        Color = 16744448
        ParentColor = False
        TabOrder = 8
      end
      object st_totgerund: TStaticText
        Left = 346
        Top = 21
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 16744448
        ParentColor = False
        TabOrder = 9
      end
      object StaticText16: TStaticText
        Left = 422
        Top = 21
        Width = 23
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Vlr:'
        Color = 16744448
        ParentColor = False
        TabOrder = 10
      end
      object st_totgervlr: TStaticText
        Left = 446
        Top = 21
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        Color = 16744448
        ParentColor = False
        TabOrder = 11
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 117
      Width = 1014
      Height = 298
      ActivePage = tsMatPrima
      Align = alClient
      TabOrder = 2
      TabStop = False
      object tsMatPrima: TTabSheet
        Caption = 'Materias Primas'
        object STG_MP_OP03: TStringGrid
          Left = 0
          Top = 45
          Width = 1006
          Height = 189
          Align = alClient
          ColCount = 13
          Ctl3D = False
          DefaultRowHeight = 15
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = STG_MP_OP03DblClick
          OnDrawCell = STG_MP_OP03DrawCell
          ColWidths = (
            64
            229
            25
            69
            62
            62
            53
            54
            55
            90
            54
            62
            42)
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1006
          Height = 45
          Align = alTop
          TabOrder = 1
          object st_codpro: TStaticText
            Left = 0
            Top = 0
            Width = 66
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object txtmp_codigo: TEdit
            Left = 0
            Top = 27
            Width = 66
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = txtmp_codigoExit
            OnKeyPress = txtmp_codigoKeyPress
          end
          object st_descricao: TStaticText
            Left = 65
            Top = 0
            Width = 231
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object txtmp_descricao: TEdit
            Left = 65
            Top = 27
            Width = 231
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object st_und: TStaticText
            Left = 295
            Top = 0
            Width = 27
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Uni'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object txtmp_und: TEdit
            Left = 295
            Top = 27
            Width = 27
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object st_qtdteor: TStaticText
            Left = 517
            Top = 0
            Width = 55
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtd. Te'#243'rica'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object txtmp_qtdteor: TEdit
            Left = 517
            Top = 27
            Width = 55
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnExit = txtmp_qtdteorExit
          end
          object st_qtdutil: TStaticText
            Left = 571
            Top = 0
            Width = 56
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtd. Utilizada'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
          object txtmp_qtdutil: TEdit
            Left = 571
            Top = 27
            Width = 56
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnExit = txtmp_qtdutilExit
          end
          object st_lote: TStaticText
            Left = 321
            Top = 0
            Width = 71
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lote'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object st_dtvcto: TStaticText
            Left = 454
            Top = 0
            Width = 64
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Vencto'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object stmp_pu: TStaticText
            Left = 773
            Top = 0
            Width = 56
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Preco Unitario'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object stmp_vt: TStaticText
            Left = 828
            Top = 0
            Width = 64
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor Total'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 16
          end
          object txtmp_pu: TEdit
            Left = 773
            Top = 27
            Width = 56
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnExit = txtmp_puExit
          end
          object txtmp_vt: TEdit
            Left = 828
            Top = 27
            Width = 64
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object txtmp_dtvcto: TMaskEdit
            Left = 454
            Top = 27
            Width = 64
            Height = 19
            TabStop = False
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
            Text = '  /  /    '
            OnExit = txtmp_dtvctoExit
          end
          object StaticText15: TStaticText
            Left = 891
            Top = 0
            Width = 44
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'RE'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 19
          end
          object txtmp_re: TEdit
            Left = 891
            Top = 27
            Width = 44
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object cbmp_qtdutil_motivo: TComboBox
            Left = 680
            Top = 25
            Width = 96
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            MaxLength = 254
            ParentCtl3D = False
            TabOrder = 15
            OnExit = cbme_qtdutil_motivoExit
            OnKeyDown = CB01_MOTIVOKeyDown
            Items.Strings = (
              ''
              'EMBALAGEM ESTRAGADA'
              'OUTRAS')
          end
          object StaticText18: TStaticText
            Left = 680
            Top = 0
            Width = 94
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Motivo da Diferen'#231'a'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 21
          end
          object txtmp_lote: TComboBox
            Left = 321
            Top = 27
            Width = 73
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            MaxLength = 20
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = txtmp_loteEnter
            OnExit = txtmp_loteExit
            Items.Strings = (
              ''
              'EMBALAGEM ESTRAGADA'
              'OUTRAS')
          end
          object StaticText20: TStaticText
            Left = 626
            Top = 0
            Width = 54
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '% Perdas'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 22
          end
          object txtmp_percperdas: TEdit
            Left = 626
            Top = 27
            Width = 56
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 23
            OnExit = txtmp_qtdutilExit
          end
          object StaticText22: TStaticText
            Left = 391
            Top = 0
            Width = 64
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Fabricacao'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 24
          end
          object txtmp_dtfab: TMaskEdit
            Left = 391
            Top = 27
            Width = 64
            Height = 19
            TabStop = False
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
            Text = '  /  /    '
            OnExit = txtmp_dtvctoExit
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 234
          Width = 1006
          Height = 36
          Align = alBottom
          TabOrder = 2
          object bbEditarMP: TBitBtn
            Left = 3
            Top = 5
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'Alterar'
            TabOrder = 0
            OnClick = bbEditarMPClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
          end
          object bbExcluirMP: TBitBtn
            Left = 78
            Top = 5
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'Excluir'
            TabOrder = 1
            OnClick = bbExcluirMPClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
          end
          object bbGravaItemMP: TBitBtn
            Left = 153
            Top = 5
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Caption = 'Grava Item'
            TabOrder = 2
            Visible = False
            OnClick = bbGravaItemMPClick
          end
        end
      end
      object tsMatEmb: TTabSheet
        Caption = 'Material Embalagem'
        ImageIndex = 1
        object STG_ME_OP03: TStringGrid
          Left = 0
          Top = 45
          Width = 1006
          Height = 184
          Align = alClient
          ColCount = 13
          Ctl3D = False
          DefaultRowHeight = 15
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = STG_ME_OP03DblClick
          OnDrawCell = STG_ME_OP03DrawCell
          ColWidths = (
            64
            229
            25
            53
            63
            62
            53
            54
            52
            94
            54
            53
            49)
        end
        object Panel4: TPanel
          Left = 0
          Top = 229
          Width = 1006
          Height = 41
          Align = alBottom
          TabOrder = 1
          object bbEditarME: TBitBtn
            Left = 38
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Alterar'
            TabOrder = 0
            OnClick = bbEditarMEClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
          end
          object bbExcluirME: TBitBtn
            Left = 126
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 1
            OnClick = bbExcluirMEClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
          end
          object bbGravarItemME: TBitBtn
            Left = 224
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Grava Item'
            TabOrder = 2
            Visible = False
            OnClick = bbGravarItemMEClick
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1006
          Height = 45
          Align = alTop
          TabOrder = 2
          object StaticText1: TStaticText
            Left = 0
            Top = 0
            Width = 66
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 65
            Top = 0
            Width = 231
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object StaticText3: TStaticText
            Left = 295
            Top = 0
            Width = 27
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Uni'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object StaticText4: TStaticText
            Left = 321
            Top = 0
            Width = 55
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lote'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText5: TStaticText
            Left = 439
            Top = 0
            Width = 64
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Vencto'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object StaticText6: TStaticText
            Left = 502
            Top = 0
            Width = 55
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtd. Te'#243'rica'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 5
          end
          object StaticText7: TStaticText
            Left = 556
            Top = 0
            Width = 56
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtd. Utilizada'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object StaticText8: TStaticText
            Left = 758
            Top = 0
            Width = 56
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Preco Unitario'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object StaticText9: TStaticText
            Left = 813
            Top = 0
            Width = 56
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor Total'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object txtme_codpro: TEdit
            Left = 0
            Top = 27
            Width = 66
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnExit = txtme_codproExit
            OnKeyPress = txtme_codproKeyPress
          end
          object txtme_descricao: TEdit
            Left = 65
            Top = 27
            Width = 231
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object txtme_und: TEdit
            Left = 295
            Top = 27
            Width = 27
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object txtme_qtdteor: TEdit
            Left = 502
            Top = 27
            Width = 55
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnExit = txtme_qtdteorExit
          end
          object txtme_qtdutil: TEdit
            Left = 556
            Top = 27
            Width = 56
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnExit = txtme_qtdutilExit
          end
          object txtme_pu: TEdit
            Left = 758
            Top = 27
            Width = 56
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnExit = txtme_puExit
          end
          object txtme_vt: TEdit
            Left = 813
            Top = 27
            Width = 56
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object txtme_dtvcto: TMaskEdit
            Left = 439
            Top = 27
            Width = 64
            Height = 19
            TabStop = False
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
            Text = '  /  /    '
            OnExit = txtme_dtvctoExit
          end
          object txtme_re: TEdit
            Left = 868
            Top = 27
            Width = 52
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object StaticText17: TStaticText
            Left = 868
            Top = 0
            Width = 52
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'RE'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 20
          end
          object cbme_qtdutil_motivo: TComboBox
            Left = 663
            Top = 26
            Width = 98
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            MaxLength = 254
            ParentCtl3D = False
            TabOrder = 16
            OnExit = cbme_qtdutil_motivoExit
            OnKeyDown = CB01_MOTIVOKeyDown
            Items.Strings = (
              ''
              'EMBALAGEM ESTRAGADA'
              'OUTRAS')
          end
          object StaticText19: TStaticText
            Left = 664
            Top = 0
            Width = 95
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Motivo da Diferen'#231'a'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 21
          end
          object txtme_lote: TComboBox
            Left = 321
            Top = 25
            Width = 57
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            MaxLength = 20
            ParentCtl3D = False
            TabOrder = 12
            OnEnter = txtme_loteEnter
            OnExit = txtme_loteExit
            Items.Strings = (
              ''
              'EMBALAGEM ESTRAGADA'
              'OUTRAS')
          end
          object StaticText21: TStaticText
            Left = 611
            Top = 0
            Width = 54
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = '% Perdas'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 22
          end
          object txtme_percperdas: TEdit
            Left = 611
            Top = 27
            Width = 54
            Height = 19
            TabStop = False
            Color = 16755413
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 23
            OnExit = txtmp_qtdutilExit
          end
          object StaticText23: TStaticText
            Left = 376
            Top = 0
            Width = 64
            Height = 28
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Fabrica'#231#227'o'
            Color = 16769505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 24
          end
          object txtme_dtfab: TMaskEdit
            Left = 376
            Top = 27
            Width = 64
            Height = 19
            TabStop = False
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
            Text = '  /  /    '
            OnExit = txtme_dtvctoExit
          end
        end
      end
      object tsProcessos: TTabSheet
        Caption = 'Processos'
        ImageIndex = 2
        object GB_DADOSPROC: TGroupBox
          Left = 0
          Top = 118
          Width = 1006
          Height = 152
          Align = alBottom
          Caption = 'Dados do Processo:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label11: TLabel
            Left = 25
            Top = 18
            Width = 57
            Height = 13
            Caption = 'Processo:'
          end
          object Label12: TLabel
            Left = 331
            Top = 16
            Width = 78
            Height = 13
            Caption = 'Responsavel:'
          end
          object Label13: TLabel
            Left = 46
            Top = 38
            Width = 36
            Height = 13
            Caption = 'Inicio:'
          end
          object Label14: TLabel
            Left = 223
            Top = 39
            Width = 14
            Height = 13
            Caption = #224's'
          end
          object Label15: TLabel
            Left = 359
            Top = 37
            Width = 50
            Height = 13
            Caption = 'Termino:'
          end
          object Label16: TLabel
            Left = 548
            Top = 37
            Width = 14
            Height = 13
            Caption = #224's'
          end
          object Label17: TLabel
            Left = 1
            Top = 59
            Width = 82
            Height = 13
            Caption = 'Conferido Por:'
          end
          object Label18: TLabel
            Left = 388
            Top = 57
            Width = 21
            Height = 13
            Caption = 'em:'
          end
          object Label19: TLabel
            Left = 549
            Top = 57
            Width = 14
            Height = 13
            Caption = #224's'
          end
          object Label20: TLabel
            Left = 20
            Top = 78
            Width = 62
            Height = 13
            Caption = 'Resultado:'
          end
          object Label21: TLabel
            Left = 336
            Top = 81
            Width = 73
            Height = 13
            Caption = 'Observa'#231#227'o:'
          end
          object DBCB_Processo: TDBComboBox
            Left = 85
            Top = 15
            Width = 242
            Height = 21
            BevelKind = bkTile
            Ctl3D = False
            DataField = 'ETA_DESCRICAO'
            DataSource = src_op_eta
            ItemHeight = 13
            Items.Strings = (
              'ANALISE'
              'CALIBRAGEM'
              'CONFERENCIA'
              'ENCERRAMENTO'
              'ENVASE'
              'FRACIONAMENTO'
              'MANIPULACAO'
              'OUTROS'
              'PESAGEM'
              'SUPERVISAO')
            ParentCtl3D = False
            Sorted = True
            TabOrder = 0
          end
          object DBDatini_proc: TDBDateEdit
            Left = 85
            Top = 35
            Width = 121
            Height = 21
            DataField = 'ETA_DATHOR_INIPROC'
            DataSource = src_op_eta
            NumGlyphs = 2
            TabOrder = 2
          end
          object DBE_HOR_INIPROC: TDBEdit
            Left = 252
            Top = 35
            Width = 75
            Height = 19
            DataField = 'ETA_HOR_INIPROC'
            DataSource = src_op_eta
            TabOrder = 3
          end
          object DBDatfin_proc: TDBDateEdit
            Left = 410
            Top = 31
            Width = 121
            Height = 21
            DataField = 'ETA_DATHOR_TERMINO'
            DataSource = src_op_eta
            NumGlyphs = 2
            TabOrder = 4
          end
          object DBE_HOR_TERPROC: TDBEdit
            Left = 577
            Top = 33
            Width = 75
            Height = 19
            DataField = 'ETA_HOR_TERMINO'
            DataSource = src_op_eta
            TabOrder = 5
          end
          object DBCB_RESP: TDBComboBox
            Left = 410
            Top = 11
            Width = 242
            Height = 21
            BevelKind = bkTile
            Ctl3D = False
            DataField = 'ETA_RESPONSAVEL'
            DataSource = src_op_eta
            ItemHeight = 13
            Items.Strings = (
              'ANALISE'
              'CALIBRAGEM'
              'CONFERENCIA'
              'ENCERRAMENTO'
              'ENVASE'
              'FRACIONAMENTO'
              'MANIPULACAO'
              'OUTROS'
              'PESAGEM'
              'SUPERVISAO')
            ParentCtl3D = False
            Sorted = True
            TabOrder = 1
          end
          object DBCB_CONFERENTE: TDBComboBox
            Left = 85
            Top = 54
            Width = 242
            Height = 21
            BevelKind = bkTile
            Ctl3D = False
            DataField = 'ETA_CONFERENTE'
            DataSource = src_op_eta
            ItemHeight = 13
            Items.Strings = (
              'ANALISE'
              'CALIBRAGEM'
              'CONFERENCIA'
              'ENCERRAMENTO'
              'ENVASE'
              'FRACIONAMENTO'
              'MANIPULACAO'
              'OUTROS'
              'PESAGEM'
              'SUPERVISAO')
            ParentCtl3D = False
            Sorted = True
            TabOrder = 6
          end
          object DBData_conf: TDBDateEdit
            Left = 410
            Top = 51
            Width = 121
            Height = 21
            DataField = 'ETA_DATHOR_CONF'
            DataSource = src_op_eta
            NumGlyphs = 2
            TabOrder = 7
          end
          object DBE_horConf: TDBEdit
            Left = 578
            Top = 53
            Width = 75
            Height = 19
            DataField = 'ETA_HOR_CONF'
            DataSource = src_op_eta
            TabOrder = 8
          end
          object DBCB_resultado: TDBComboBox
            Left = 85
            Top = 74
            Width = 242
            Height = 21
            BevelKind = bkTile
            Ctl3D = False
            DataField = 'ETA_RESULTADO'
            DataSource = src_op_eta
            ItemHeight = 13
            Items.Strings = (
              'APROVADO'
              'REANALISE'
              'REPROVADO')
            ParentCtl3D = False
            Sorted = True
            TabOrder = 9
          end
          object DBMemo_obs: TDBMemo
            Left = 410
            Top = 71
            Width = 244
            Height = 75
            DataField = 'ETA_OBS'
            DataSource = src_op_eta
            TabOrder = 10
          end
        end
        object DBGrid_ope: TDBGrid
          Left = 0
          Top = 0
          Width = 1006
          Height = 96
          Align = alClient
          DataSource = src_op_eta
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'ETA_DESCRICAO'
              Width = 320
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_RESPONSAVEL'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_DATHOR_INIPROC'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_HOR_INIPROC'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_DATHOR_TERMINO'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_HOR_TERMINO'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_CONFERENTE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_DATHOR_CONF'
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_HOR_CONF'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_RESULTADO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETA_OBS'
              Visible = True
            end>
        end
        object Panel8: TPanel
          Left = 0
          Top = 96
          Width = 1006
          Height = 22
          Align = alBottom
          TabOrder = 2
          object bbproc_incluir: TBitBtn
            Left = 1
            Top = 0
            Width = 140
            Height = 23
            Cursor = crHandPoint
            Hint = 'Inclus'#227'o de Ordem de Produ'#231#227'o'
            Caption = '&Incluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bbproc_incluirClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333FF33333333FF333993333333300033377F3333333777333993333333
              300033F77FFF3333377739999993333333333777777F3333333F399999933333
              33003777777333333377333993333333330033377F3333333377333993333333
              3333333773333333333F333333333333330033333333F33333773333333C3333
              330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
              333333333337733333FF3333333C333330003333333733333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object bbproc_alterar: TBitBtn
            Left = 140
            Top = 0
            Width = 140
            Height = 23
            Cursor = crHandPoint
            Hint = 'Alterar o Registro Selecionado'
            Caption = '&Alterar'
            Enabled = False
            TabOrder = 1
            OnClick = bbproc_alterarClick
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
          object bbproc_gravar: TBitBtn
            Left = 279
            Top = 0
            Width = 140
            Height = 23
            Cursor = crHandPoint
            Hint = 'Gravar o registro que esta sendo editado'
            Caption = '&Gravar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = bbproc_gravarClick
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
          object bbproc_excluir: TBitBtn
            Left = 418
            Top = 0
            Width = 140
            Height = 23
            Cursor = crHandPoint
            Hint = 'Excluir Ordem de Produ'#231#227'o ja existentes'
            Caption = 'Excl&uir'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = bbproc_excluirClick
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
        end
      end
      object tsTextoTemp: TTabSheet
        Caption = 'Texto Temporario'
        ImageIndex = 3
        object TextoTemp: TRichEdit
          Left = 0
          Top = 0
          Width = 779
          Height = 317
          Color = 12123134
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            'Texto')
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object tbs_relatorio: TTabSheet
        Caption = 'Relat'#243'rio (Ordem de Produ'#231#227'o)'
        ImageIndex = 4
        object Label10: TLabel
          Left = 540
          Top = 7
          Width = 8
          Height = 13
          Caption = 'a'
        end
        object chk_selecao: TCheckBox
          Left = 363
          Top = 7
          Width = 132
          Height = 17
          Caption = 'Selecionar P'#225'ginas'
          TabOrder = 1
          OnClick = chk_selecaoClick
        end
        object Edit1: TEdit
          Left = 496
          Top = 1
          Width = 41
          Height = 21
          Enabled = False
          TabOrder = 3
          OnKeyPress = Edit1KeyPress
        end
        object Edit2: TEdit
          Left = 551
          Top = 1
          Width = 40
          Height = 21
          Enabled = False
          TabOrder = 0
          OnKeyPress = Edit2KeyPress
        end
        object btnImpressao: TBitBtn
          Left = 595
          Top = 1
          Width = 75
          Height = 22
          Cursor = crHandPoint
          Caption = 'Imprimir'
          TabOrder = 2
          OnClick = btnImpressaoClick
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
      object tsConfigMaster: TTabSheet
        Caption = 'Configura'#231#227'o'
        ImageIndex = 5
        object cb_EstNeg: TCheckBox
          Left = 8
          Top = 8
          Width = 177
          Height = 17
          Caption = 'Permitir Estoque Negativo.'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cb_EstNegClick
        end
      end
      object TsAnexada: TTabSheet
        Caption = 'Outros Ordem de Produ'#231#227'o Anexada'
        ImageIndex = 6
        object TsEtapa01: TGroupBox
          Left = 0
          Top = 101
          Width = 1006
          Height = 97
          Align = alBottom
          Caption = 'Etapa 01:'
          TabOrder = 0
          object Label22: TLabel
            Left = 80
            Top = 18
            Width = 41
            Height = 13
            Caption = 'Chave:'
          end
          object Label23: TLabel
            Left = 72
            Top = 36
            Width = 49
            Height = 13
            Caption = 'Produto:'
          end
          object Label24: TLabel
            Left = 5
            Top = 52
            Width = 117
            Height = 13
            Caption = 'Quantidade Teorica:'
          end
          object Label25: TLabel
            Left = 346
            Top = 56
            Width = 130
            Height = 13
            Caption = 'Quantidade Produzida:'
          end
          object Label26: TLabel
            Left = 65
            Top = 71
            Width = 54
            Height = 13
            Caption = 'Validade:'
          end
          object Label27: TLabel
            Left = 168
            Top = 71
            Width = 42
            Height = 13
            Caption = 'm'#234's/es'
          end
          object Label28: TLabel
            Left = 223
            Top = 73
            Width = 95
            Height = 13
            Caption = 'N'#250'mero do Lote:'
          end
          object Label29: TLabel
            Left = 415
            Top = 73
            Width = 71
            Height = 13
            Caption = 'Vencimento:'
          end
          object Label30: TLabel
            Left = 346
            Top = 15
            Width = 32
            Height = 13
            Caption = 'Data:'
          end
          object edt_chave: TEdit
            Left = 126
            Top = 16
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnChange = edt_chaveChange
          end
          object edt_codpro: TEdit
            Left = 126
            Top = 33
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnExit = CODPROExit
            OnKeyPress = CODPROKeyPress
          end
          object edt_nompro: TEdit
            Left = 208
            Top = 33
            Width = 364
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 2
          end
          object edt_qtdteorica: TEdit
            Left = 126
            Top = 51
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            OnEnter = QTDPREVEnter
            OnExit = QTDPREVExit
          end
          object edt_qtdprod: TEdit
            Left = 489
            Top = 51
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = QTDPRODExit
          end
          object edt_val: TEdit
            Left = 126
            Top = 69
            Width = 39
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
            OnExit = PRAZOVALExit
          end
          object edt_lote: TEdit
            Left = 320
            Top = 70
            Width = 83
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
            OnExit = MNUMLOTExit
          end
          object edt_dtvcto: TMaskEdit
            Left = 489
            Top = 69
            Width = 83
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
            Text = '  /  /    '
            OnExit = MDATAVENExit
          end
          object status_et01: TStaticText
            Left = 573
            Top = 16
            Width = 124
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Color = clLime
            ParentColor = False
            TabOrder = 8
          end
          object edt_et01_data: TMaskEdit
            Left = 391
            Top = 15
            Width = 80
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 9
            Text = '  /  /    '
            OnExit = MDATAExit
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 198
          Width = 1006
          Height = 72
          Align = alBottom
          Caption = 'Mat'#233'rias Primas Utilizadas:'
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 1002
            Height = 55
            Align = alClient
            DataSource = Src_MP_Etapa01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CPCODMAT'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDNOME'
                Width = 237
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDUND'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP3_QTDUTIL'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP3_PU'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP3_LOTE'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP3_DTVCTO'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP3_LOTE_RE'
                Width = 52
                Visible = True
              end>
          end
        end
        object gb_anexos: TGroupBox
          Left = 0
          Top = 0
          Width = 1006
          Height = 101
          Align = alClient
          Caption = 'Etapas Anteriores Anexada:'
          TabOrder = 2
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 1002
            Height = 84
            Align = alClient
            DataSource = src_OP01_Anexo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnEnter = DBGrid2Enter
            Columns = <
              item
                Expanded = False
                FieldName = 'OPA_ETAPA'
                Width = 131
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPA_CHAVE_OR'
                Width = 153
                Visible = True
              end>
          end
        end
      end
      object tsRichtext: TTabSheet
        Caption = 'tsRichtext'
        ImageIndex = 7
        object RichEdit1: TRichEdit
          Left = 0
          Top = 0
          Width = 1006
          Height = 65
          Align = alTop
          Lines.Strings = (
            'RichEdit1')
          TabOrder = 0
        end
        object Memo1: TMemo
          Left = 0
          Top = 181
          Width = 1006
          Height = 89
          Align = alBottom
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Configura'#231#227'o dos Relatorios'
        ImageIndex = 8
        object gb_tabulacoes: TGroupBox
          Left = 0
          Top = 0
          Width = 1006
          Height = 95
          Align = alTop
          Caption = 'tabulacoes'
          TabOrder = 0
          object bbop_esp_visedit: TBitBtn
            Left = 6
            Top = 42
            Width = 400
            Height = 25
            Caption = 'Visualizar'
            TabOrder = 0
            OnClick = bbop_esp_viseditClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33033333333333333F7F3333333333333000333333333333F777333333333333
              000333333333333F777333333333333000333333333333F77733333333333300
              033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
              33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
              3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
              33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
              333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
              333333773FF77333333333370007333333333333777333333333}
            NumGlyphs = 2
          end
          object bbop_esp_adq: TBitBtn
            Left = 6
            Top = 17
            Width = 400
            Height = 25
            Caption = 'Adiquirir de um Arquivo Externo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = bbop_esp_adqClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
              03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
              30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
              07807F777733337F7F3707888887880808807F333333337F7F37077777778800
              08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
              33003777737777333377333080333333333333F7373333333333300803333333
              33333773733333333333088033333333333373F7F33333333333308033333333
              3333373733333333333333033333333333333373333333333333}
            NumGlyphs = 2
          end
          object bbop_esp_excluir: TBitBtn
            Left = 6
            Top = 67
            Width = 400
            Height = 25
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = bbop_esp_excluirClick
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
          object gb_dw_cfg: TGroupBox
            Left = 506
            Top = 15
            Width = 429
            Height = 78
            Align = alRight
            Caption = 'Modelos Existentes'
            TabOrder = 3
            object DBGrid_dw_cfg: TDBGrid
              Left = 2
              Top = 15
              Width = 425
              Height = 61
              Align = alClient
              DataSource = src_dw_cfg
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DW_NOMREL'
                  Width = 373
                  Visible = True
                end>
            end
          end
          object BitBtn1: TBitBtn
            Left = 416
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Gerar Grades'
            TabOrder = 4
            OnClick = BitBtn1Click
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 95
          Width = 1006
          Height = 175
          Align = alClient
          Caption = 'Legenda:'
          TabOrder = 1
          object Memo_legenda: TMemo
            Left = 2
            Top = 15
            Width = 367
            Height = 158
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Lines.Strings = (
              '%Data_Licitacao%'
              '%CodCli%'
              '%AosCuidados%'
              '%FoneCuidados%'
              '%Numero_Pregao_Carta_Convite%'
              '%Data_Aberturtura_dd_mm_yyyy%'
              '%Data_Aberturtura_extenso%'
              '%Hora_abertura_hh_mm_ss%'
              '%Hora_abertura_hh%'
              '%Minuto_abertura_mm%'
              '%Numero_da_proposta%'
              '%Validade_Proposta%'
              '%Condicoes_Pagamento%'
              '%Objeto%'
              '%Observacao_Linha_01%'
              '%Observacao_Linha_02%'
              '%Observacao_Linha_03%'
              '%Prazo_Entrega_01%'
              '%Prazo_Entrega_02%'
              '%Prazo_Entrega_03%'
              '%Declaracao_Linha_01%'
              '%Declaracao_Linha_02%'
              '%Declaracao_Linha_03%'
              '%Declaracao_Linha_04%'
              '%Declaracao_Linha_05%'
              '%Declaracao_Linha_06%'
              '%Declaracao_Linha_07%'
              '%Declaracao_Linha_08%'
              '%Declaracao_Linha_09%'
              '%Declaracao_Linha_10%'
              '%Declaracao_Linha_10%'
              '%Codigo_Vendedor%'
              '%Proponente_Linha_01%'
              '%Proponente_Linha_02%'
              '%Nome_Cliente%'
              '%Nome_Cidade%'
              '%UF_Cidade%'
              '%CEP_Cidade%'
              '%CNPJ%'
              '%IE%'
              '%FONE%'
              '%ENDERECO%'
              '%BAIRRO%'
              '%E_MAIL%'
              '%Declaracao%'
              '')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object gb_m01: TGroupBox
            Left = 369
            Top = 15
            Width = 138
            Height = 158
            Align = alLeft
            Caption = 'Materias Primas 01'
            TabOrder = 1
            object Memo2: TMemo
              Left = 2
              Top = 15
              Width = 134
              Height = 141
              Align = alClient
              Lines.Strings = (
                '[%MP01%]'
                'Seq+Descri'#231#227'o'
                'Formula Centesimal'
                'Formula Padr'#227'o'
                'Lote'
                '')
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            Left = 673
            Top = 15
            Width = 166
            Height = 158
            Align = alLeft
            Caption = 'Grade 01'
            TabOrder = 2
            Visible = False
            object Memo3: TMemo
              Left = 2
              Top = 15
              Width = 162
              Height = 141
              Align = alClient
              Lines.Strings = (
                '[%ITENS03%]'
                'item'
                'Unidade '
                'qtd'
                'descricao'
                'especificacao(desccricao original)'
                'marca'
                'preco unitario'
                'valor total')
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object gb_mp02: TGroupBox
            Left = 507
            Top = 15
            Width = 166
            Height = 158
            Align = alLeft
            Caption = 'Grade 02 Embalagens'
            TabOrder = 3
            object Memo4: TMemo
              Left = 2
              Top = 15
              Width = 162
              Height = 141
              Align = alClient
              Lines.Strings = (
                '[%MP02%]'
                'C'#243'digo'
                'descricao'
                'Embalagens'
                'Quantidade(KG/LT)'
                'Lote'
                '')
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object Qr_Comp_MP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       max(PDNOME) as PDNOME,'
      '       max(PDNOME2) as PDNOME2,'
      '       max(PDUND) as PDUND'
      '       ,sum(OP3_QTDPREV) as OP3_QTDPREV'
      '       ,sum(OP3_QTDUTIL) as OP3_QTDUTIL'
      '       ,max(OP3_PU)      as OP3_PU'
      '       ,max(OP3_LOTE)    as OP3_LOTE'
      '       ,max(OP3_DTVCTO)  as OP3_DTVCTO'
      '      ,max(OP3_LOTE_RE) as OP3_LOTE_RE'
      '       from CADCOMP,CADPRO,CADOP03 where'
      '            CPCODEMP=01 and PDCODEMP=CPCODEMP and'
      '            PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null)'
      '            and CPCODPRO=01'
      '            and OP3_CODMAT=CPCODPRO'
      '       Group by CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST'
      '       ORDER BY CPCODPRO_ACAB,CPORDEM'
      '')
    Left = 334
    Top = 37
    object Qr_Comp_MPCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Qr_Comp_MPCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Qr_Comp_MPCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Qr_Comp_MPCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Qr_Comp_MPCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Qr_Comp_MPCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Qr_Comp_MPCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Qr_Comp_MPCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Qr_Comp_MPCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Qr_Comp_MPCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Qr_Comp_MPCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Qr_Comp_MPCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Qr_Comp_MPCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Qr_Comp_MPCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Qr_Comp_MPCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Qr_Comp_MPCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Qr_Comp_MPCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Qr_Comp_MPPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Comp_MPPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Comp_MPPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_Comp_MPOP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Qr_Comp_MPOP3_QTDUTIL: TFloatField
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Qr_Comp_MPOP3_PU: TFloatField
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Qr_Comp_MPOP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Qr_Comp_MPOP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Qr_Comp_MPOP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 592
    Top = 32
  end
  object Qr_Embalagens: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       max(PDNOME) as PDNOME,'
      '       max(PDNOME2) as PDNOME2,'
      '       max(PDUND) as PDUND'
      '       ,sum(OP3_QTDPREV) as OP3_QTDPREV'
      '       ,sum(OP3_QTDUTIL) as OP3_QTDUTIL'
      '       ,max(OP3_PU)      as OP3_PU'
      '       ,max(OP3_LOTE)    as OP3_LOTE'
      '       ,max(OP3_DTVCTO)  as OP3_DTVCTO'
      '       ,max(OP3_LOTE_RE)    as OP3_LOTE_RE'
      '       from CADCOMP,CADPRO,CADOP03 where'
      '            CPCODEMP=01 and PDCODEMP=CPCODEMP and'
      '            PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null)'
      '            and CPCODPRO=01'
      '            and OP3_CODMAT=CPCODPRO'
      '       Group by CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST'
      '       ORDER BY CPCODPRO_ACAB,CPORDEM'
      '')
    Left = 302
    Top = 141
    object Qr_EmbalagensCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Qr_EmbalagensCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Qr_EmbalagensCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Qr_EmbalagensCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Qr_EmbalagensCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Qr_EmbalagensCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Qr_EmbalagensCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Qr_EmbalagensCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Qr_EmbalagensCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Qr_EmbalagensCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Qr_EmbalagensCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Qr_EmbalagensCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Qr_EmbalagensCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Qr_EmbalagensCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Qr_EmbalagensCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Qr_EmbalagensCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Qr_EmbalagensPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_EmbalagensPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_EmbalagensPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_EmbalagensOP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Qr_EmbalagensOP3_QTDUTIL: TFloatField
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Qr_EmbalagensOP3_PU: TFloatField
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Qr_EmbalagensOP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Qr_EmbalagensOP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Qr_EmbalagensOP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
    object Qr_EmbalagensOP3_DTFAB: TDateTimeField
      FieldName = 'OP3_DTFAB'
    end
  end
  object mem_apuracao: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 63
      end
      item
        Name = 'QTDPED'
        DataType = ftFloat
      end
      item
        Name = 'QTDEST'
        DataType = ftFloat
      end
      item
        Name = 'QTDSALDO'
        DataType = ftFloat
      end>
    Left = 717
    Top = 63
    object mem_apuracaoCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object mem_apuracaoUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UND'
      Size = 3
    end
    object mem_apuracaoNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 63
    end
    object mem_apuracaoQTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedida'
      FieldName = 'QTDPED'
    end
    object mem_apuracaoQTDEST: TFloatField
      DisplayLabel = 'Qtd.Estoque'
      FieldName = 'QTDEST'
    end
    object mem_apuracaoQTDSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'QTDSALDO'
    end
    object mem_apuracaoQTD_ANALISE: TFloatField
      FieldName = 'QTD_ANALISE'
    end
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
  object tb_param: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 63
      end
      item
        Name = 'QTDPED'
        DataType = ftFloat
      end
      item
        Name = 'QTDEST'
        DataType = ftFloat
      end
      item
        Name = 'QTDSALDO'
        DataType = ftFloat
      end>
    Left = 797
    Top = 39
    object tb_paramNOMCOMPRIMLIN: TStringField
      FieldName = 'NOMCOMPRIMLIN'
      Size = 100
    end
    object tb_paramNOMCOMSEGLIN: TStringField
      FieldName = 'NOMCOMSEGLIN'
      Size = 100
    end
    object tb_paramCODPROMASK: TStringField
      FieldName = 'CODPROMASK'
      Size = 14
    end
    object tb_paramCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object tb_paramAPRESENT: TStringField
      FieldName = 'APRESENT'
      Size = 50
    end
    object tb_paramNUMOP: TStringField
      FieldName = 'NUMOP'
      Size = 10
    end
    object tb_paramQTDPREV: TStringField
      FieldName = 'QTDPREV'
      Size = 14
    end
    object tb_paramMESANOEMI: TStringField
      FieldName = 'MESANOEMI'
      Size = 5
    end
    object tb_paramMESANOREV: TStringField
      FieldName = 'MESANOREV'
      Size = 10
    end
    object tb_paramDATFAB: TStringField
      FieldName = 'DATFAB'
      Size = 10
    end
    object tb_paramDATVAL: TStringField
      FieldName = 'DATVAL'
      Size = 10
    end
    object tb_paramDATEMI: TStringField
      FieldName = 'DATEMI'
      Size = 10
    end
    object tb_paramNUMLOT: TStringField
      FieldName = 'NUMLOT'
      Size = 10
    end
    object tb_paramRESPTEC: TStringField
      FieldName = 'RESPTEC'
      Size = 100
    end
    object tb_paramGERPROD: TStringField
      FieldName = 'GERPROD'
      Size = 100
    end
    object tb_paramGERQUAL: TStringField
      FieldName = 'GERQUAL'
      Size = 100
    end
    object tb_paramDATREV: TStringField
      FieldName = 'DATREV'
      Size = 10
    end
    object tb_paramDATAFAB: TStringField
      FieldKind = fkCalculated
      FieldName = 'DATAFAB'
      Size = 10
      Calculated = True
    end
    object tb_paramHORMININIFRAC: TStringField
      FieldName = 'HORMININIFRAC'
      Size = 10
    end
    object tb_paramHORMINTERFRAC: TStringField
      FieldName = 'HORMINTERFRAC'
      Size = 10
    end
    object tb_paramNOMFUNCFRAC: TStringField
      FieldName = 'NOMFUNCFRAC'
      Size = 100
    end
    object tb_paramNOMFUNCCONFFRAC: TStringField
      FieldName = 'NOMFUNCCONFFRAC'
      Size = 100
    end
    object tb_paramHORMININIMAN: TStringField
      FieldName = 'HORMININIMAN'
      Size = 10
    end
    object tb_paramDATAINIMAN: TStringField
      FieldName = 'DATAINIMAN'
      Size = 10
    end
    object tb_paramHORMINTERMAN: TStringField
      FieldName = 'HORMINTERMAN'
      Size = 10
    end
    object tb_paramNOMFUNCMAN: TStringField
      FieldName = 'NOMFUNCMAN'
      Size = 100
    end
    object tb_paramNOMFUNCONFMAN: TStringField
      FieldName = 'NOMFUNCONFMAN'
      Size = 100
    end
    object tb_paramNOMANALISTA: TStringField
      FieldName = 'NOMANALISTA'
      Size = 100
    end
    object tb_paramNOMSUPANALISTA: TStringField
      FieldName = 'NOMSUPANALISTA'
      Size = 100
    end
    object tb_paramOBSANALISE: TStringField
      FieldName = 'OBSANALISE'
      Size = 100
    end
    object tb_paramRESULTANALISE: TStringField
      FieldName = 'RESULTANALISE'
      Size = 100
    end
    object tb_paramSETOR: TStringField
      FieldName = 'SETOR'
      Size = 40
    end
    object tb_paramPESOMIN: TStringField
      FieldName = 'PESOMIN'
      Size = 14
    end
    object tb_paramPESOMEDIO: TStringField
      FieldName = 'PESOMEDIO'
      Size = 14
    end
    object tb_paramPESOMAXIMO: TStringField
      FieldName = 'PESOMAXIMO'
      Size = 14
    end
    object tb_paramNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 100
    end
    object tb_paramDATAEMI: TStringField
      FieldName = 'DATAEMI'
      Size = 10
    end
    object tb_paramDESC_SOBRE: TMemoField
      FieldName = 'DESC_SOBRE'
      BlobType = ftMemo
    end
    object tb_paramObservacao_Prod: TMemoField
      FieldName = 'Observacao_Prod'
      BlobType = ftMemo
    end
    object tb_paramQTDGRML: TFloatField
      FieldName = 'QTDGRML'
    end
    object tb_paramQTDGRML_TOTAL: TFloatField
      FieldName = 'QTDGRML_TOTAL'
    end
    object tb_paramPERC_PERDAS: TStringField
      FieldName = 'PERC_PERDAS'
    end
    object tb_paramPEDIDO_ORIGEM: TStringField
      FieldName = 'PEDIDO_ORIGEM'
      Size = 254
    end
    object tb_paramPRAZO_ENTREGA: TStringField
      FieldName = 'PRAZO_ENTREGA'
      Size = 100
    end
    object tb_paramMARCA: TStringField
      FieldName = 'MARCA'
      Size = 100
    end
  end
  object Tb_Op_ETA: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ETA_CODIGO'
        DataType = ftFloat
      end
      item
        Name = 'ETA_CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'ETA_DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ETA_ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'ETA_RESPONSAVEL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ETA_DATHOR_INIPROC'
        DataType = ftDateTime
      end
      item
        Name = 'ETA_HOR_INIPROC'
        DataType = ftTime
      end
      item
        Name = 'ETA_DATHOR_TERMINO'
        DataType = ftDateTime
      end
      item
        Name = 'ETA_HOR_TERMINO'
        DataType = ftTime
      end
      item
        Name = 'ETA_CONFERENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ETA_DATHOR_CONF'
        DataType = ftDateTime
      end
      item
        Name = 'ETA_HOR_CONF'
        DataType = ftTime
      end
      item
        Name = 'ETA_RESULTADO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ETA_OBS'
        DataType = ftString
        Size = 500
      end>
    AfterInsert = Tb_Op_ETAAfterInsert
    Left = 549
    Top = 255
    object Tb_Op_ETAETA_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ETA_CODIGO'
    end
    object Tb_Op_ETAETA_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'ETA_CODEMP'
    end
    object Tb_Op_ETAETA_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ETA_DESCRICAO'
      Size = 100
    end
    object Tb_Op_ETAETA_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ETA_ORDEM'
    end
    object Tb_Op_ETAETA_RESPONSAVEL: TStringField
      DisplayLabel = 'Responsavel'
      FieldName = 'ETA_RESPONSAVEL'
      Size = 100
    end
    object Tb_Op_ETAETA_DATHOR_INIPROC: TDateTimeField
      DisplayLabel = 'Data Inicio'
      FieldName = 'ETA_DATHOR_INIPROC'
    end
    object Tb_Op_ETAETA_HOR_INIPROC: TTimeField
      DisplayLabel = 'Hora Inicio'
      FieldName = 'ETA_HOR_INIPROC'
    end
    object Tb_Op_ETAETA_DATHOR_TERMINO: TDateTimeField
      DisplayLabel = 'Data Termino'
      FieldName = 'ETA_DATHOR_TERMINO'
    end
    object Tb_Op_ETAETA_HOR_TERMINO: TTimeField
      DisplayLabel = 'Hora Termino'
      FieldName = 'ETA_HOR_TERMINO'
    end
    object Tb_Op_ETAETA_CONFERENTE: TStringField
      DisplayLabel = 'Conferente'
      FieldName = 'ETA_CONFERENTE'
      Size = 100
    end
    object Tb_Op_ETAETA_DATHOR_CONF: TDateTimeField
      DisplayLabel = 'Data Conf'
      FieldName = 'ETA_DATHOR_CONF'
    end
    object Tb_Op_ETAETA_HOR_CONF: TTimeField
      DisplayLabel = 'Hora Conf'
      FieldName = 'ETA_HOR_CONF'
    end
    object Tb_Op_ETAETA_RESULTADO: TStringField
      DisplayLabel = 'Resultado'
      FieldName = 'ETA_RESULTADO'
      Size = 30
    end
    object Tb_Op_ETAETA_OBS: TStringField
      DisplayLabel = 'Oberva'#231#227'o'
      FieldName = 'ETA_OBS'
      Size = 500
    end
  end
  object src_op_eta: TDataSource
    DataSet = Tb_Op_ETA
    Left = 589
    Top = 265
  end
  object Qr_MP_Etapa01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       max(PDNOME) as PDNOME,'
      '       max(PDNOME2) as PDNOME2,'
      '       max(PDUND) as PDUND'
      '       ,sum(OP3_QTDPREV) as OP3_QTDPREV'
      '       ,sum(OP3_QTDUTIL) as OP3_QTDUTIL'
      '       ,max(OP3_PU)      as OP3_PU'
      '       ,max(OP3_LOTE)    as OP3_LOTE'
      '       ,max(OP3_DTVCTO)  as OP3_DTVCTO'
      '      ,max(OP3_LOTE_RE) as OP3_LOTE_RE'
      '       from CADCOMP,CADPRO,CADOP03 where'
      '            CPCODEMP=01 and PDCODEMP=CPCODEMP and'
      '            PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null)'
      '            and CPCODPRO=01'
      '            and OP3_CODMAT=CPCODPRO'
      '       Group by CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST'
      '       ORDER BY CPCODPRO_ACAB,CPORDEM'
      '')
    Left = 664
    Top = 21
    object Qr_MP_Etapa01CPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Qr_MP_Etapa01CPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Qr_MP_Etapa01CPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Qr_MP_Etapa01CPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Qr_MP_Etapa01CPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Qr_MP_Etapa01CPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Qr_MP_Etapa01CPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Qr_MP_Etapa01CPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Qr_MP_Etapa01CPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Qr_MP_Etapa01CPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Qr_MP_Etapa01CPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Qr_MP_Etapa01CPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Qr_MP_Etapa01CPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Qr_MP_Etapa01CPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Qr_MP_Etapa01CPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Qr_MP_Etapa01CPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Qr_MP_Etapa01CPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Qr_MP_Etapa01PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr_MP_Etapa01PDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_MP_Etapa01PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_MP_Etapa01OP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Qr_MP_Etapa01OP3_QTDUTIL: TFloatField
      DisplayLabel = 'Qtd.Utilizada'
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Qr_MP_Etapa01OP3_PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit.'
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Qr_MP_Etapa01OP3_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Qr_MP_Etapa01OP3_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Qr_MP_Etapa01OP3_LOTE_RE: TStringField
      DisplayLabel = 'Lote RE'
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
    object Qr_MP_Etapa01OP3_DTFAB: TDateTimeField
      FieldName = 'OP3_DTFAB'
    end
  end
  object Src_MP_Etapa01: TDataSource
    DataSet = Qr_MP_Etapa01
    Left = 713
    Top = 19
  end
  object src_OP01_Anexo: TDataSource
    DataSet = Tb_OP01_Anexo
    OnDataChange = src_OP01_AnexoDataChange
    Left = 648
    Top = 88
  end
  object Tb_OP01_Anexo: TQuery
    CachedUpdates = True
    AfterInsert = Tb_OP01_AnexoAfterInsert
    BeforeEdit = Tb_OP01_AnexoBeforeEdit
    BeforePost = Tb_OP01_AnexoBeforePost
    AfterPost = Tb_OP01_AnexoAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOP01_ANEXO')
    UpdateObject = U_OP01_Anexo
    Left = 765
    Top = 57
    object Tb_OP01_AnexoOPA_CODEMP: TFloatField
      FieldName = 'OPA_CODEMP'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_CODEMP'
    end
    object Tb_OP01_AnexoOPA_CHAVE: TFloatField
      FieldName = 'OPA_CHAVE'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_CHAVE'
    end
    object Tb_OP01_AnexoOPA_LOTSEQ: TFloatField
      FieldName = 'OPA_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_LOTSEQ'
    end
    object Tb_OP01_AnexoOPA_ETAPA: TFloatField
      DisplayLabel = 'Etapa'
      FieldName = 'OPA_ETAPA'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_ETAPA'
    end
    object Tb_OP01_AnexoOPA_CHAVE_OR: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OPA_CHAVE_OR'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_CHAVE_OR'
    end
    object Tb_OP01_AnexoOPA_LOTSEQ_OR: TFloatField
      FieldName = 'OPA_LOTSEQ_OR'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_LOTSEQ_OR'
    end
    object Tb_OP01_AnexoOPA_CODEMP_OR: TFloatField
      FieldName = 'OPA_CODEMP_OR'
      Origin = 'SG_ASSOC.CADOP01_ANEXO.OPA_CODEMP_OR'
    end
    object Tb_OP01_AnexoOPA_SEQ: TFloatField
      FieldName = 'OPA_SEQ'
    end
  end
  object U_OP01_Anexo: TUpdateSQL
    Left = 757
    Top = 33
  end
  object Tb_Op03: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP3_CODEMP ,'
      '  OP3_CODIGO,'
      '  OP3_SEQ,'
      '  OP3_CODMAT,'
      '  OP3_NUMERO,'
      '  OP3_QTDPREV,'
      '  OP3_QTDUTIL,'
      '  OP3_PU,'
      '  OP3_LOTSEQ,'
      '  OP3_FABENV,'
      '  OP3_LOTE,'
      '  OP3_LOTE_RE,'
      '  OP3_DTVCTO,'
      '  OP3_SITMP,'
      '  OP3_ORIGEM'
      '  ,PDCODPRO'
      '  ,PDNOME'
      '  ,PDUND'
      '  ,PDNOME2'
      ' ,PDCODGRU AS CODGRU'
      ' ,PDNOMGRU AS NOMGRU'
      ' ,PDMARCA'
      ' ,CPORDEM'
      ' ,CPCODPRO'
      ' ,CPNUMERO'
      ' ,CPCODMAT'
      ' ,CPCODPRO_ACAB'
      ' ,CPMPNUM'
      ' ,CPQUANT'
      ' ,CPPU'
      ' ,CPVLRINC'
      ' ,CPALIQORI'
      ' ,CPALICMSCRED'
      ' ,CPICMSCRED'
      ' ,CPTIPO'
      ' ,CPQTD_PAD'
      ' ,CPPERCENT'
      ' ,CPPERCENT_REST'
      '   from CADOP03,CADPRO,CADCOMP'
      '  where PDCODPRO=OP3_CODMAT'
      '    and CPCODEMP=PDCODEMP and PDCODEMP=CPCODEMP and'
      '     CPCODMAT=PDCODPRO and (CPTIPO=1)'
      '     and CPCODPRO=OP3_CODMAT'
      '  and PDCODPRO is null'
      ''
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op03
    Left = 545
    Top = 32
    object Tb_Op03OP3_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP3_CODEMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODEMP'
    end
    object Tb_Op03OP3_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP3_CODIGO'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODIGO'
    end
    object Tb_Op03OP3_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP3_SEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_SEQ'
    end
    object Tb_Op03OP3_CODMAT: TFloatField
      DisplayLabel = 'C'#243'digo Mat'#233'ria Prima'
      FieldName = 'OP3_CODMAT'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODMAT'
    end
    object Tb_Op03OP3_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero/Grade/Cor Materia Prima'
      FieldName = 'OP3_NUMERO'
      Origin = 'SG_ASSOC.CADOP03.OP3_NUMERO'
    end
    object Tb_Op03OP3_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Tb_Op03OP3_QTDUTIL: TFloatField
      DisplayLabel = 'Quantidade Utilizada'
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Tb_Op03OP3_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Tb_Op03OP3_LOTSEQ: TFloatField
      FieldName = 'OP3_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTSEQ'
    end
    object Tb_Op03OP3_FABENV: TFloatField
      FieldName = 'OP3_FABENV'
      Origin = 'SG_ASSOC.CADOP03.OP3_FABENV'
    end
    object Tb_Op03OP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Tb_Op03OP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Tb_Op03OP3_SITMP: TFloatField
      FieldName = 'OP3_SITMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_SITMP'
    end
    object Tb_Op03OP3_ORIGEM: TFloatField
      FieldName = 'OP3_ORIGEM'
      Origin = 'SG_ASSOC.CADOP03.OP3_ORIGEM'
    end
    object Tb_Op03PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_Op03PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op03PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op03PDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_Op03CODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op03NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op03PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Op03OP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
    object Tb_Op03OP3_QTDUTIL_MOTIVO: TStringField
      FieldName = 'OP3_QTDUTIL_MOTIVO'
      Size = 254
    end
    object Tb_Op03PERC_PERDAS: TFloatField
      FieldName = 'PERC_PERDAS'
    end
    object Tb_Op03OP3_DTFAB: TDateTimeField
      FieldName = 'OP3_DTFAB'
    end
  end
  object U_Op03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP03'
      'set'
      '  OP3_CODEMP = :OP3_CODEMP,'
      '  OP3_CODIGO = :OP3_CODIGO,'
      '  OP3_SEQ = :OP3_SEQ,'
      '  OP3_CODMAT = :OP3_CODMAT,'
      '  OP3_NUMERO = :OP3_NUMERO,'
      '  OP3_QTDPREV = :OP3_QTDPREV,'
      '  OP3_QTDUTIL = :OP3_QTDUTIL,'
      '  OP3_PU = :OP3_PU,'
      '  OP3_LOTSEQ = :OP3_LOTSEQ,'
      '  OP3_FABENV = :OP3_FABENV,'
      '  OP3_LOTE = :OP3_LOTE,'
      '  OP3_LOTE_RE = :OP3_LOTE_RE,'
      '  OP3_DTVCTO = :OP3_DTVCTO,'
      '  OP3_SITMP = :OP3_SITMP,'
      '  OP3_ORIGEM = :OP3_ORIGEM,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDNOME = :PDNOME,'
      '  PDUND = :PDUND,'
      '  PDNOME2 = :PDNOME2'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    InsertSQL.Strings = (
      'insert into CADOP03'
      '  (OP3_CODEMP, OP3_CODIGO, OP3_SEQ, OP3_CODMAT, OP3_NUMERO, '
      'OP3_QTDPREV, '
      '   OP3_QTDUTIL, OP3_PU, OP3_LOTSEQ, OP3_FABENV, OP3_LOTE, '
      'OP3_LOTE_RE, '
      '   OP3_DTVCTO, OP3_SITMP, OP3_ORIGEM, PDCODPRO, PDNOME, PDUND, '
      'PDNOME2)'
      'values'
      
        '  (:OP3_CODEMP, :OP3_CODIGO, :OP3_SEQ, :OP3_CODMAT, :OP3_NUMERO,' +
        ' '
      ':OP3_QTDPREV, '
      '   :OP3_QTDUTIL, :OP3_PU, :OP3_LOTSEQ, :OP3_FABENV, :OP3_LOTE, '
      ':OP3_LOTE_RE, '
      
        '   :OP3_DTVCTO, :OP3_SITMP, :OP3_ORIGEM, :PDCODPRO, :PDNOME, :PD' +
        'UND, '
      ':PDNOME2)')
    DeleteSQL.Strings = (
      'delete from CADOP03'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    Left = 575
    Top = 22
  end
  object Src_Op03: TDataSource
    DataSet = Tb_Op03
    Left = 612
    Top = 23
  end
  object Tb_Op02: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP2_CODEMP,'
      '       OP2_CODIGO,'
      '       OP2_SEQ,'
      '       OP2_CODPRO,'
      '       OP2_NUMERO,'
      '       OP2_QTDPREV,'
      '       OP2_QTDPROD,'
      '       OP2_PU,'
      '       OP2_LOTSEQ,'
      '       OP2_FABENV,'
      '       OP2_DTVCTO,'
      '       OP2_FAB_CHORI,'
      '       OP2_FAB_CODIGO,'
      '       OP2_FAB_LOTE,'
      '       OP2_FAB_VCTO,'
      '       OP2_FAB_DTFAB,'
      '       OP2_FAB_QTD,'
      '       OP2_FAB_PU,'
      '       OP2_SITACAB,'
      '       OP2_ORIGEM,'
      '       PDNOME'
      '       ,PDMARCA'
      '       ,PDUND'
      '       ,PDQTDGRML'
      '       ,PDPRZVAL'
      '       ,PDREGMS'
      '       ,PDCODGRU AS CODGRU'
      '       ,PDNOMGRU AS NOMGRU'
      'from CADOP02,CADPRO'
      'where OP2_CODEMP is null'
      'and PDCODPRO=OP2_CODPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op02
    Left = 544
    Top = 31
    object Tb_Op02OP2_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP2_CODEMP'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODEMP'
    end
    object Tb_Op02OP2_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP2_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODIGO'
    end
    object Tb_Op02OP2_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP2_SEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_SEQ'
    end
    object Tb_Op02OP2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'OP2_CODPRO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODPRO'
    end
    object Tb_Op02OP2_NUMERO: TStringField
      DisplayLabel = 'Grade do Produto'
      FieldName = 'OP2_NUMERO'
      Origin = 'SG_ASSOC.CADOP02.OP2_NUMERO'
    end
    object Tb_Op02OP2_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP2_QTDPREV'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPREV'
    end
    object Tb_Op02OP2_QTDPROD: TFloatField
      DisplayLabel = 'Quantidade Produzida'
      FieldName = 'OP2_QTDPROD'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPROD'
    end
    object Tb_Op02OP2_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'OP2_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_PU'
    end
    object Tb_Op02OP2_LOTSEQ: TFloatField
      FieldName = 'OP2_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_LOTSEQ'
    end
    object Tb_Op02OP2_FABENV: TFloatField
      FieldName = 'OP2_FABENV'
      Origin = 'SG_ASSOC.CADOP02.OP2_FABENV'
    end
    object Tb_Op02OP2_DTVCTO: TDateTimeField
      FieldName = 'OP2_DTVCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_DTVCTO'
    end
    object Tb_Op02OP2_FAB_CHORI: TFloatField
      FieldName = 'OP2_FAB_CHORI'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CHORI'
    end
    object Tb_Op02OP2_FAB_CODIGO: TFloatField
      FieldName = 'OP2_FAB_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CODIGO'
    end
    object Tb_Op02OP2_FAB_VCTO: TDateTimeField
      FieldName = 'OP2_FAB_VCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_VCTO'
    end
    object Tb_Op02OP2_FAB_QTD: TFloatField
      FieldName = 'OP2_FAB_QTD'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_QTD'
    end
    object Tb_Op02OP2_FAB_LOTE: TStringField
      FieldName = 'OP2_FAB_LOTE'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_LOTE'
    end
    object Tb_Op02OP2_FAB_DTFAB: TDateTimeField
      FieldName = 'OP2_FAB_DTFAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_DTFAB'
    end
    object Tb_Op02OP2_FAB_PU: TFloatField
      FieldName = 'OP2_FAB_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_PU'
    end
    object Tb_Op02OP2_ORIGEM: TFloatField
      FieldName = 'OP2_ORIGEM'
      Origin = 'SG_ASSOC.CADOP02.OP2_ORIGEM'
    end
    object Tb_Op02OP2_SITACAB: TFloatField
      FieldName = 'OP2_SITACAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_SITACAB'
    end
    object Tb_Op02PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op02PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op02PDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Tb_Op02PDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_Op02PDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_Op02CODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op02NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op02PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Op02OP2_QTDPROD_MOTIVO: TStringField
      FieldName = 'OP2_QTDPROD_MOTIVO'
      Size = 254
    end
    object Tb_Op02PERC_PERDAS: TFloatField
      FieldName = 'PERC_PERDAS'
    end
    object Tb_Op02OP2_DTFAB: TDateTimeField
      FieldName = 'OP2_DTFAB'
    end
  end
  object U_Op02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP02'
      'set'
      '  OP2_CODEMP = :OP2_CODEMP,'
      '  OP2_CODIGO = :OP2_CODIGO,'
      '  OP2_SEQ = :OP2_SEQ,'
      '  OP2_CODPRO = :OP2_CODPRO,'
      '  OP2_NUMERO = :OP2_NUMERO,'
      '  OP2_QTDPREV = :OP2_QTDPREV,'
      '  OP2_QTDPROD = :OP2_QTDPROD,'
      '  OP2_PU = :OP2_PU,'
      '  OP2_LOTSEQ = :OP2_LOTSEQ,'
      '  OP2_FABENV = :OP2_FABENV,'
      '  OP2_DTVCTO = :OP2_DTVCTO,'
      '  OP2_FAB_CHORI = :OP2_FAB_CHORI,'
      '  OP2_FAB_CODIGO = :OP2_FAB_CODIGO,'
      '  OP2_FAB_LOTE = :OP2_FAB_LOTE,'
      '  OP2_FAB_VCTO = :OP2_FAB_VCTO,'
      '  OP2_FAB_DTFAB = :OP2_FAB_DTFAB,'
      '  OP2_FAB_QTD = :OP2_FAB_QTD,'
      '  OP2_FAB_PU = :OP2_FAB_PU,'
      '  OP2_SITACAB = :OP2_SITACAB,'
      '  OP2_ORIGEM = :OP2_ORIGEM'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    InsertSQL.Strings = (
      'insert into CADOP02'
      '  (OP2_CODEMP, OP2_CODIGO, OP2_SEQ, OP2_CODPRO, OP2_NUMERO, '
      'OP2_QTDPREV, '
      '   OP2_QTDPROD, OP2_PU, OP2_LOTSEQ, OP2_FABENV, OP2_DTVCTO, '
      'OP2_FAB_CHORI, '
      '   OP2_FAB_CODIGO, OP2_FAB_LOTE, OP2_FAB_VCTO, OP2_FAB_DTFAB, '
      'OP2_FAB_QTD, '
      '   OP2_FAB_PU, OP2_SITACAB, OP2_ORIGEM)'
      'values'
      
        '  (:OP2_CODEMP, :OP2_CODIGO, :OP2_SEQ, :OP2_CODPRO, :OP2_NUMERO,' +
        ' '
      ':OP2_QTDPREV, '
      
        '   :OP2_QTDPROD, :OP2_PU, :OP2_LOTSEQ, :OP2_FABENV, :OP2_DTVCTO,' +
        ' '
      ':OP2_FAB_CHORI, '
      
        '   :OP2_FAB_CODIGO, :OP2_FAB_LOTE, :OP2_FAB_VCTO, :OP2_FAB_DTFAB' +
        ', '
      ':OP2_FAB_QTD, '
      '   :OP2_FAB_PU, :OP2_SITACAB, :OP2_ORIGEM)')
    DeleteSQL.Strings = (
      'delete from CADOP02'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    Left = 582
    Top = 56
  end
  object Src_Op02: TDataSource
    DataSet = Tb_Op02
    Left = 690
    Top = 48
  end
  object Tb_dw_cfg: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select DW_NOMREL from caddw_cfg where DW_CATEGORIA='#39'LICITACAO'#39' G' +
        'ROUP BY DW_NOMREL')
    UpdateMode = upWhereKeyOnly
    Left = 803
    Top = 95
    object Tb_dw_cfgDW_NOMREL: TStringField
      DisplayLabel = 'Nome do Relatorio'
      FieldName = 'DW_NOMREL'
      Origin = 'SG_ASSOC.CADDW_CFG.DW_NOMREL'
      Size = 60
    end
  end
  object src_dw_cfg: TDataSource
    DataSet = Tb_dw_cfg
    Left = 916
    Top = 103
  end
  object Opd1: TOpenDialog
    Filter = 
      'Todos Arquivos Doc e Docx|*.DOC;*.DOCX*.XML|Arquivos .DOCx (word' +
      ' 2007)|*.DOCX|Arquivos .DOC (word)|*.DOC|Arquivos .DOC (XML dowo' +
      'rd)|*.XML'
    Left = 468
    Top = 19
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
end
