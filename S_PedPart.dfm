object Frm_PedPart: TFrm_PedPart
  Left = 44
  Top = -17
  Width = 793
  Height = 589
  ActiveControl = CHAVE
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Particionando Pedido'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 46
    Align = alTop
    TabOrder = 0
    object CHAVE: TEdit
      Left = 153
      Top = 3
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CHAVEEnter
      OnExit = CHAVEExit
      OnKeyPress = CHAVEKeyPress
    end
    object NOMCLI_PED: TEdit
      Left = 221
      Top = 3
      Width = 369
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object bb_Pesquisar: TBitBtn
      Left = 592
      Top = 5
      Width = 87
      Height = 35
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = bb_PesquisarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 678
      Top = 5
      Width = 103
      Height = 37
      Caption = '&Sair'
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
    object POBS01: TEdit
      Left = 153
      Top = 21
      Width = 206
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object StaticText1: TStaticText
      Left = 4
      Top = 23
      Width = 148
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Oberva'#231#245'es:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object StaticText2: TStaticText
      Left = 4
      Top = 3
      Width = 148
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Chave do Pedido Origem:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object StaticText3: TStaticText
      Left = 359
      Top = 22
      Width = 35
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object st_dataped: TStaticText
      Left = 393
      Top = 21
      Width = 80
      Height = 18
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 8
    end
    object StaticText5: TStaticText
      Left = 473
      Top = 23
      Width = 41
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Valor:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object st_totalped: TStaticText
      Left = 513
      Top = 21
      Width = 77
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 10
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 46
    Width = 777
    Height = 98
    Align = alTop
    Caption = 'Pedidos Ja Particionados:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 773
      Height = 81
      Align = alClient
      DataSource = Src_PedPart01
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
          FieldName = 'P1CHAVE'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Title.Caption = 'Valor'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datanf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1OBS1'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1OBS2'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1OBS3'
          Width = 161
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 186
    Width = 777
    Height = 365
    Align = alClient
    Caption = 'Sobre o Pedido Particionado:'
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 773
      Height = 95
      Align = alTop
      Caption = 'Manuten'#231#227'o:'
      TabOrder = 0
      object Label3: TLabel
        Left = 5
        Top = 17
        Width = 41
        Height = 13
        Caption = 'Chave:'
      end
      object Label4: TLabel
        Left = 145
        Top = 15
        Width = 32
        Height = 13
        Caption = 'Data:'
      end
      object Label5: TLabel
        Left = 283
        Top = 14
        Width = 79
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object Label1: TLabel
        Left = 6
        Top = 52
        Width = 101
        Height = 13
        Caption = 'Plano de Vendas:'
      end
      object Label2: TLabel
        Left = 3
        Top = 35
        Width = 44
        Height = 13
        Caption = 'Cliente:'
      end
      object Label8: TLabel
        Left = 5
        Top = 70
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label11: TLabel
        Left = 366
        Top = 72
        Width = 71
        Height = 13
        Caption = 'Televendas:'
      end
      object CHAVEROM: TEdit
        Left = 48
        Top = 13
        Width = 60
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnExit = CHAVEROMExit
      end
      object MDATA: TMaskEdit
        Left = 181
        Top = 13
        Width = 80
        Height = 19
        TabStop = False
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        Text = '  /  /    '
      end
      object MOBS01: TEdit
        Left = 365
        Top = 12
        Width = 309
        Height = 19
        TabStop = False
        Ctl3D = False
        MaxLength = 60
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        OnExit = MOBS01Exit
      end
      object MOBS02: TEdit
        Left = 365
        Top = 32
        Width = 309
        Height = 19
        TabStop = False
        Ctl3D = False
        MaxLength = 60
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        OnExit = MOBS02Exit
      end
      object MOBS03: TEdit
        Left = 365
        Top = 52
        Width = 309
        Height = 19
        TabStop = False
        Ctl3D = False
        MaxLength = 60
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
        OnExit = MOBS03Exit
      end
      object CB_TABPV: TComboBox
        Left = 106
        Top = 50
        Width = 42
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Text = 'AP'
        OnExit = CB_TABPVExit
        OnKeyDown = CB_TABPVKeyDown
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'CV'
          'PO')
      end
      object CODPV: TEdit
        Left = 151
        Top = 51
        Width = 35
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODPVExit
        OnKeyDown = CB_TABPVKeyDown
        OnKeyPress = CODPVKeyPress
      end
      object NOMPV: TEdit
        Left = 185
        Top = 51
        Width = 172
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object CODCLI: TEdit
        Left = 48
        Top = 31
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object NOMCLI: TEdit
        Left = 107
        Top = 31
        Width = 250
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object CODVEN: TEdit
        Left = 67
        Top = 69
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 125
        Top = 69
        Width = 232
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
      end
      object CODTLV: TEdit
        Left = 440
        Top = 70
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = CODTLVExit
        OnKeyPress = CODTLVKeyPress
      end
      object NOMTLV: TEdit
        Left = 495
        Top = 70
        Width = 179
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 336
      Width = 773
      Height = 27
      Align = alBottom
      Caption = 'Totais:'
      TabOrder = 1
      object Label6: TLabel
        Left = 46
        Top = 7
        Width = 33
        Height = 13
        Caption = 'Itens:'
      end
      object Label7: TLabel
        Left = 208
        Top = 7
        Width = 58
        Height = 13
        Caption = 'Unidades:'
      end
      object Label9: TLabel
        Left = 514
        Top = 7
        Width = 45
        Height = 13
        Caption = 'Total $:'
      end
      object TOTAL: TStaticText
        Left = 583
        Top = 7
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0'
        TabOrder = 0
      end
      object MTOTUND: TStaticText
        Left = 310
        Top = 7
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0'
        TabOrder = 1
      end
      object MTOTITEM: TStaticText
        Left = 83
        Top = 7
        Width = 86
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0'
        TabOrder = 2
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 110
      Width = 773
      Height = 226
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = '&Mercadorias'
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 765
          Height = 198
          Align = alClient
          Caption = 'Digita'#231#227'o dos Itens:'
          Enabled = False
          TabOrder = 0
          object Panel2: TPanel
            Left = 2
            Top = 15
            Width = 761
            Height = 34
            Align = alTop
            TabOrder = 3
            object CODPRO: TEdit
              Left = 0
              Top = 16
              Width = 66
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = CODPROExit
              OnKeyPress = CODPROKeyPress
            end
            object GRADE: TEdit
              Left = 65
              Top = 16
              Width = 62
              Height = 19
              Ctl3D = False
              Enabled = False
              ParentCtl3D = False
              TabOrder = 1
              OnExit = GRADEExit
            end
            object QTD: TCurrencyEdit
              Left = 126
              Top = 16
              Width = 58
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 2
              OnExit = QTDExit
            end
            object UND: TEdit
              Left = 182
              Top = 16
              Width = 33
              Height = 19
              Ctl3D = False
              Enabled = False
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 3
            end
            object NOMPRO: TEdit
              Left = 214
              Top = 16
              Width = 211
              Height = 19
              Ctl3D = False
              Enabled = False
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 4
            end
            object PCOUNI: TCurrencyEdit
              Left = 424
              Top = 16
              Width = 58
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 5
              OnExit = PCOUNIExit
            end
            object MDESCI01: TCurrencyEdit
              Left = 481
              Top = 16
              Width = 38
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 6
              OnExit = MDESCI01Exit
            end
            object MDESCI02: TCurrencyEdit
              Left = 518
              Top = 16
              Width = 38
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 7
              OnExit = MDESCI02Exit
            end
            object MDESCI03: TCurrencyEdit
              Left = 555
              Top = 16
              Width = 35
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 8
              OnExit = MDESCI02Exit
            end
            object DESCFINP: TCurrencyEdit
              Left = 589
              Top = 16
              Width = 58
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 9
              OnExit = DESCFINPExit
            end
            object COMISP: TCurrencyEdit
              Left = 646
              Top = 16
              Width = 58
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 10
              OnExit = COMISPExit
            end
            object TOTALI: TCurrencyEdit
              Left = 703
              Top = 16
              Width = 58
              Height = 19
              AutoSize = False
              CheckOnExit = True
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              ParentCtl3D = False
              TabOrder = 11
              OnEnter = TOTALIEnter
            end
            object lbl_codpro: TStaticText
              Left = 0
              Top = 0
              Width = 66
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'C'#243'digo Produto'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 12
            end
            object lbl_lote: TStaticText
              Left = 65
              Top = 0
              Width = 62
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Lote'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object StaticText4: TStaticText
              Left = 126
              Top = 0
              Width = 57
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Quantidade'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
            end
            object StaticText6: TStaticText
              Left = 182
              Top = 0
              Width = 33
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Und'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
            end
            object StaticText7: TStaticText
              Left = 214
              Top = 0
              Width = 211
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Descri'#231#227'o do Produto'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 16
            end
            object StaticText8: TStaticText
              Left = 424
              Top = 0
              Width = 58
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'P'#231'o.Unit.'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 17
            end
            object StaticText9: TStaticText
              Left = 481
              Top = 0
              Width = 38
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = '%Des.1'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 18
            end
            object StaticText10: TStaticText
              Left = 518
              Top = 0
              Width = 38
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = '%Des.2'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 19
            end
            object StaticText11: TStaticText
              Left = 555
              Top = 0
              Width = 35
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = '%Des.3'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 20
            end
            object StaticText12: TStaticText
              Left = 589
              Top = 0
              Width = 58
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Desc.Fin'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 21
            end
            object StaticText13: TStaticText
              Left = 646
              Top = 0
              Width = 58
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = '% Comis'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 22
            end
            object StaticText14: TStaticText
              Left = 703
              Top = 0
              Width = 58
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Vlr.Total'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 23
            end
          end
          object DBGrid3: TDBGrid
            Left = 2
            Top = 49
            Width = 761
            Height = 147
            Align = alClient
            DataSource = src_ped02part
            Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pop_grid
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid3DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'P2CODPRO'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2LOTE'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTD'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDUND'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDNOME'
                Width = 209
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2PRECO'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC01'
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC02'
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC03'
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESCFIN'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2COMIS'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2TOTAL'
                Width = 56
                Visible = True
              end>
          end
          object bbExcluir: TBitBtn
            Left = 285
            Top = 74
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 2
            Visible = False
            OnClick = bbExcluirClick
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
          object ITEM_EDITAR: TBitBtn
            Left = 183
            Top = 74
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 1
            Visible = False
            OnClick = ITEM_EDITARClick
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
          object ITEM_GRAVAR: TBitBtn
            Left = 83
            Top = 74
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 0
            Visible = False
            OnClick = ITEM_GRAVARClick
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
          object bbGravarMP: TBitBtn
            Left = 347
            Top = 209
            Width = 100
            Height = 21
            Caption = 'Grava&r'
            TabOrder = 5
            Visible = False
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
          object bbEditarMP: TBitBtn
            Left = 496
            Top = 209
            Width = 100
            Height = 21
            Caption = '&Editar'
            TabOrder = 6
            Visible = False
            OnClick = ITEM_EDITARClick
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
            Left = 248
            Top = 201
            Width = 100
            Height = 21
            Caption = 'E&xcluir'
            TabOrder = 7
            Visible = False
            OnClick = bbExcluirClick
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
      object TabSheet2: TTabSheet
        Caption = 'Mercadorias Faturadas na Chave Acima'
        ImageIndex = 1
        object DBGrid2_ped: TDBGrid
          Left = 0
          Top = 0
          Width = 773
          Height = 202
          Align = alClient
          DataSource = Src_PedPart02
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'P2CODPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2LOTE'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'und'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2PRECO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valortotal'
              Visible = True
            end>
        end
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 144
    Width = 777
    Height = 42
    Align = alTop
    Caption = 'A'#231#227'o:'
    TabOrder = 3
    object BBINCLUIR: TBitBtn
      Left = 156
      Top = 15
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      Enabled = False
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
    object BBFATURAR: TBitBtn
      Left = 307
      Top = 15
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = '&Faturar Pedido'
      Caption = '&Faturar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBFATURARClick
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
      Left = 457
      Top = 15
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 609
      Top = 15
      Width = 150
      Height = 24
      Caption = '&Sair'
      TabOrder = 3
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
    object bbPendencia: TBitBtn
      Left = 6
      Top = 15
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = '&Faturar Pedido'
      Caption = '&Ver Pendencia'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbPendenciaClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
  end
  object Src_PedPart01: TDataSource
    DataSet = Qr_PedPart01
    OnDataChange = Src_PedPart01DataChange
    Left = 304
    Top = 48
  end
  object Qr_PedPart01: TQuery
    OnCalcFields = Qr_PedPart01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CODEMP,P1CHAVE,P1LOTSEQ,P1CODCLI,P1DATAP,P1OBS1,'
      '       P1OBS2,P1OBS3,P1STATUS,P1TOTALL,'
      '       P1CODTRA,P1QTDVOL,P1PESOL,P1PESOB,'
      '       P1ESPECIE,P1FRETEPC,P1VALFRE,'
      '       P1UFPV,P1PLACAV,P1ETIVOL,P1DTMOD,'
      '       P1HRMOD,P1USRMOD,P1CONF,P1CODCON,'
      '       P1DATCON,P1HORCON,P1CODENT,P1DATENT,'
      '       P1HORENT,P1CODSEP,P1DATASEP,P1HORSEP,'
      '       P1CODEMB,P1DATAEMB,P1HOREMB,'
      '       P1NUMNF,P1DATANF,P1CODVEN,'
      '       P1TABPV,P1CODPV,P1CODTLV,P1PDESCLIB,P1PDESCL_USR'
      ''
      'from CADP01 where P1CODEMP is null'
      ''
      ''
      '')
    Left = 336
    Top = 56
    object Qr_PedPart01codcli: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codcli'
      Calculated = True
    end
    object Qr_PedPart01razaosocial: TStringField
      FieldKind = fkCalculated
      FieldName = 'razaosocial'
      Size = 40
      Calculated = True
    end
    object Qr_PedPart01denominacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'denominacao'
      Size = 40
      Calculated = True
    end
    object Qr_PedPart01endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 40
      Calculated = True
    end
    object Qr_PedPart01bairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'bairro'
      Size = 30
      Calculated = True
    end
    object Qr_PedPart01cidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 30
      Calculated = True
    end
    object Qr_PedPart01cep: TStringField
      FieldKind = fkCalculated
      FieldName = 'cep'
      Size = 9
      Calculated = True
    end
    object Qr_PedPart01total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_PedPart01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_PedPart01P1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedPart01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedPart01P1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedPart01P1OBS1: TStringField
      DisplayLabel = 'Observa'#231#245'es 01'
      FieldName = 'P1OBS1'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 60
    end
    object Qr_PedPart01P1OBS2: TStringField
      DisplayLabel = 'Oberva'#231#245'es 02'
      FieldName = 'P1OBS2'
      Origin = 'SG_ASSOC.CADP01.P1OBS2'
      Size = 60
    end
    object Qr_PedPart01P1OBS3: TStringField
      DisplayLabel = 'Observa'#231#245'es 03'
      FieldName = 'P1OBS3'
      Origin = 'SG_ASSOC.CADP01.P1OBS3'
      Size = 60
    end
    object Qr_PedPart01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Qr_PedPart01P1TOTALL: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedPart01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_PedPart01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_PedPart01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_PedPart01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_PedPart01P1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Qr_PedPart01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_PedPart01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_PedPart01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_PedPart01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_PedPart01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_PedPart01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Qr_PedPart01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Qr_PedPart01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Qr_PedPart01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Qr_PedPart01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Qr_PedPart01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Qr_PedPart01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Qr_PedPart01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Qr_PedPart01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Qr_PedPart01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Qr_PedPart01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Qr_PedPart01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Qr_PedPart01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Qr_PedPart01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Qr_PedPart01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Qr_PedPart01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Qr_PedPart01P1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_PedPart01P1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_PedPart01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_PedPart01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_PedPart01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_PedPart01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Qr_PedPart01datanf: TStringField
      DisplayLabel = 'Data NF'
      FieldKind = fkCalculated
      FieldName = 'datanf'
      Size = 10
      Calculated = True
    end
    object Qr_PedPart01P1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Qr_PedPart01P1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Qr_PedPart01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
  end
  object Qr_PedPart02: TQuery
    OnCalcFields = Qr_PedPart02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODEMP,P2CHAVE,P2LOTSEQ,P2CODPRO,'
      '       P2LOTE,P2DTVCTO,P2ITEM,'
      '       P2QTD,P2PRECO,'
      '       P2DESC1,P2DESC2,P2DESC3,P2VALDES'
      '       from CADP02 where P2CHAVE is null'
      '')
    Left = 688
    Top = 24
    object Qr_PedPart02nome: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      DisplayWidth = 53
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 53
      Calculated = True
    end
    object Qr_PedPart02und: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Qr_PedPart02valortotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'valortotal'
      Calculated = True
    end
    object Qr_PedPart02P2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Qr_PedPart02P2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_PedPart02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PedPart02P2LOTE: TStringField
      DisplayLabel = 'Grade'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_PedPart02P2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_PedPart02P2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_PedPart02P2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PedPart02P2PRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_PedPart02P2DESC1: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_PedPart02P2DESC2: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_PedPart02P2DESC3: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Qr_PedPart02P2VALDES: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Qr_PedPart02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
  end
  object Src_PedPart02: TDataSource
    DataSet = Qr_PedPart02
    OnDataChange = Src_PedPart02DataChange
    Left = 624
    Top = 16
  end
  object Tb_Ped: TQuery
    OnCalcFields = Tb_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P2PRECO,P2CODPRO,P2LOTE,'
      '       max(P2DESC1) AS P2DESC1,'
      '       max(P2DESC2)  AS P2DESC2,'
      '       max(P2DESC3)  AS P2DESC3,'
      '       max(P2VALDES) AS P2VALDES,'
      '       sum(P2QTD) AS QTD from CADP02'
      'where P2CHAVE=3540'
      'group by P2PRECO,P2CODPRO,P2LOTE')
    Left = 568
    Top = 64
    object Tb_PedP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_PedQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_PedP2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_PedP2LOTE: TStringField
      DisplayLabel = 'Grade'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_PedP2DESC1: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_PedP2DESC2: TFloatField
      DisplayLabel = #168'%Desc.02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_PedP2DESC3: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_PedP2VALDES: TFloatField
      DisplayLabel = 'Desc.Valor'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Pedqtdrom: TFloatField
      DisplayLabel = 'Qtd.Faturada'
      FieldKind = fkCalculated
      FieldName = 'qtdrom'
      Calculated = True
    end
    object Tb_Pedsaldo: TFloatField
      DisplayLabel = 'Restante'
      FieldKind = fkCalculated
      FieldName = 'saldo'
      Calculated = True
    end
    object Tb_Pednompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Tb_Pedund: TStringField
      DisplayLabel = 'UND'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
  end
  object Tb_Rom: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P2PRECO,P2CODPRO,P2LOTE,'
      'sum(P2QTD) AS QTD from CADP02'
      'where P2CHAVE=3540'
      'group by P2PRECO,P2CODPRO,P2LOTE')
    Left = 376
    Top = 88
    object Tb_RomP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_RomP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_RomP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_RomQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
  object Tb_Ped02D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2DCODEMP,'
      '       P2DTIPO,'
      '       P2DCHAVE,'
      '       P2DORDEM,'
      '       P2DITEM,'
      '       P2DCODPRO,'
      '       P2DGRADE,'
      '       P2DLINHA,'
      '       P2DESC,'
      '       P2DLOTSEQ'
      ' from CADP02D'
      'where P2DCHAVE is null')
    Left = 256
    Top = 4
    object Tb_Ped02DP2DCODEMP: TFloatField
      FieldName = 'P2DCODEMP'
      Origin = 'SG_ASSOC.CADP02D.P2DCODEMP'
    end
    object Tb_Ped02DP2DTIPO: TFloatField
      FieldName = 'P2DTIPO'
      Origin = 'SG_ASSOC.CADP02D.P2DTIPO'
    end
    object Tb_Ped02DP2DCHAVE: TFloatField
      FieldName = 'P2DCHAVE'
      Origin = 'SG_ASSOC.CADP02D.P2DCHAVE'
    end
    object Tb_Ped02DP2DORDEM: TFloatField
      FieldName = 'P2DORDEM'
      Origin = 'SG_ASSOC.CADP02D.P2DORDEM'
    end
    object Tb_Ped02DP2DITEM: TFloatField
      FieldName = 'P2DITEM'
      Origin = 'SG_ASSOC.CADP02D.P2DITEM'
    end
    object Tb_Ped02DP2DCODPRO: TFloatField
      FieldName = 'P2DCODPRO'
      Origin = 'SG_ASSOC.CADP02D.P2DCODPRO'
    end
    object Tb_Ped02DP2DLINHA: TFloatField
      FieldName = 'P2DLINHA'
      Origin = 'SG_ASSOC.CADP02D.P2DLINHA'
    end
    object Tb_Ped02DP2DESC: TStringField
      FieldName = 'P2DESC'
      Origin = 'SG_ASSOC.CADP02D.P2DESC'
      Size = 60
    end
    object Tb_Ped02DP2DLOTSEQ: TFloatField
      FieldName = 'P2DLOTSEQ'
      Origin = 'SG_ASSOC.CADP02D.P2DLOTSEQ'
    end
    object Tb_Ped02DP2DGRADE: TStringField
      FieldName = 'P2DGRADE'
      Origin = 'SG_ASSOC.CADP02D.P2DGRADE'
    end
  end
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    Left = 596
    Top = 65
  end
  object mem_ped02part: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2QTD'
        DataType = ftFloat
      end
      item
        Name = 'PDUND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PDNOME'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'P2PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC01'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC02'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC03'
        DataType = ftFloat
      end
      item
        Name = 'P2VALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'P2COMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCFIN'
        DataType = ftFloat
      end>
    Left = 714
    Top = 256
    object mem_ped02partP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
    end
    object mem_ped02partP2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2LOTE'
    end
    object mem_ped02partP2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
    end
    object mem_ped02partPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object mem_ped02partPDNOME: TStringField
      DisplayLabel = 'Descricao do Produto'
      FieldName = 'PDNOME'
      Size = 53
    end
    object mem_ped02partP2PRECO: TFloatField
      DisplayLabel = 'Preco Unitario'
      FieldName = 'P2PRECO'
    end
    object mem_ped02partP2DESC01: TFloatField
      DisplayLabel = '%Desc01'
      FieldName = 'P2DESC01'
    end
    object mem_ped02partP2DESC02: TFloatField
      DisplayLabel = '%Desc02'
      FieldName = 'P2DESC02'
    end
    object mem_ped02partP2DESC03: TFloatField
      DisplayLabel = '%Desc03'
      FieldName = 'P2DESC03'
    end
    object mem_ped02partP2VALDES: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'P2VALDES'
    end
    object mem_ped02partP2TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'P2TOTAL'
    end
    object mem_ped02partP2COMIS: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'P2COMIS'
    end
    object mem_ped02partP2DESCFIN: TFloatField
      DisplayLabel = '%Desc.Fin'
      FieldName = 'P2DESCFIN'
    end
  end
  object src_ped02part: TDataSource
    DataSet = mem_ped02part
    Left = 736
    Top = 256
  end
  object pop_grid: TPopupMenu
    Left = 599
    Top = 280
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
  object Tb_Rom_MP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select QTD_VENDIDA,QTD_ENTREGUE'
      
        ',QTD_VENDIDA-QTD_ENTREGUE AS DISPONIVEL, PRECO,CODPRO,LOTE  from' +
        ' TMPO00000')
    Left = 440
    Top = 102
    object Tb_Rom_MPQTD_VENDIDA: TFloatField
      FieldName = 'QTD_VENDIDA'
      Origin = 'SG_ASSOC.TMPO00000.QTD_VENDIDA'
    end
    object Tb_Rom_MPQTD_ENTREGUE: TFloatField
      FieldName = 'QTD_ENTREGUE'
      Origin = 'SG_ASSOC.TMPO00000.QTD_ENTREGUE'
    end
    object Tb_Rom_MPPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'SG_ASSOC.TMPO00000.PRECO'
    end
    object Tb_Rom_MPCODPRO: TFloatField
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.TMPO00000.CODPRO'
    end
    object Tb_Rom_MPLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'SG_ASSOC.TMPO00000.LOTE'
    end
    object Tb_Rom_MPDISPONIVEL: TFloatField
      FieldName = 'DISPONIVEL'
      Origin = 'SG_ASSOC.TMPO00000.QTD_VENDIDA'
    end
  end
  object Qr_PedPart02_MP: TQuery
    OnCalcFields = Qr_PedPart02_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2MP_QTDSOL,P2MP_PRECO,P2MP_CODPRO'
      '                  ,P2MP_LOTE'
      '                  ,P2MP_DTVCTO'
      '                  ,P2MP_CODPRO_ORI'
      '                  ,P2MP_LOTE_ORI'
      '                  ,P2MP_DTVCTO_ORI'
      '                  ,P2MP_OUTINF'
      '                   ,P2MP_DATAHORA_SOL'
      '                  , P2MP_QTD_SOBRA'
      '                  , P2MP_QTD_DEVOL'
      '                  , P2MP_QTD_QUEBRA'
      '                  , P2MP_QTD_OUTRET'
      '                  , P2MP_OUTINF AS NOMPRO'
      'from CADP02_MP WHERE P2MP_CODEMP is null')
    Left = 680
    Top = 88
    object Qr_PedPart02_MPP2MP_QTDSOL: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2MP_QTDSOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTDSOL'
    end
    object Qr_PedPart02_MPP2MP_PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'P2MP_PRECO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PRECO'
    end
    object Qr_PedPart02_MPP2MP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2MP_CODPRO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODPRO'
    end
    object Qr_PedPart02_MPP2MP_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'P2MP_LOTE'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTE'
    end
    object Qr_PedPart02_MPP2MP_DTVCTO: TDateTimeField
      FieldName = 'P2MP_DTVCTO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DTVCTO'
    end
    object Qr_PedPart02_MPP2MP_CODPRO_ORI: TFloatField
      FieldName = 'P2MP_CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODPRO_ORI'
    end
    object Qr_PedPart02_MPP2MP_LOTE_ORI: TStringField
      FieldName = 'P2MP_LOTE_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTE_ORI'
    end
    object Qr_PedPart02_MPP2MP_DTVCTO_ORI: TDateTimeField
      FieldName = 'P2MP_DTVCTO_ORI'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DTVCTO_ORI'
    end
    object Qr_PedPart02_MPP2MP_OUTINF: TStringField
      FieldName = 'P2MP_OUTINF'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_OUTINF'
      Size = 30
    end
    object Qr_PedPart02_MPP2MP_DATAHORA_SOL: TDateTimeField
      FieldName = 'P2MP_DATAHORA_SOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DATAHORA_SOL'
    end
    object Qr_PedPart02_MPP2MP_QTD_SOBRA: TFloatField
      FieldName = 'P2MP_QTD_SOBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_SOBRA'
    end
    object Qr_PedPart02_MPP2MP_QTD_DEVOL: TFloatField
      FieldName = 'P2MP_QTD_DEVOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_DEVOL'
    end
    object Qr_PedPart02_MPP2MP_QTD_QUEBRA: TFloatField
      FieldName = 'P2MP_QTD_QUEBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_QUEBRA'
    end
    object Qr_PedPart02_MPP2MP_QTD_OUTRET: TFloatField
      FieldName = 'P2MP_QTD_OUTRET'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_OUTRET'
    end
    object Qr_PedPart02_MPNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_OUTINF'
      Size = 30
    end
    object Qr_PedPart02_MPtotal_pro: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldKind = fkCalculated
      FieldName = 'total_pro'
      Calculated = True
    end
  end
  object pop_grid_mp: TPopupMenu
    Left = 639
    Top = 288
    object MenuItem1: TMenuItem
      Caption = 'Exluir Item'
    end
  end
  object Src_PedPart02_mp: TDataSource
    DataSet = Qr_PedPart02_MP
    OnDataChange = Src_PedPart02DataChange
    Left = 632
    Top = 88
  end
end
