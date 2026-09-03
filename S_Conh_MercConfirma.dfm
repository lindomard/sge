object Frm_Conh_MercConfirma: TFrm_Conh_MercConfirma
  Left = -4
  Top = 0
  Width = 808
  Height = 467
  Caption = 'Confirma'#231#227'o de Entrega'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 122
    Align = alTop
    TabOrder = 0
    object chavedopedido: TLabel
      Left = 75
      Top = 5
      Width = 146
      Height = 13
      Caption = 'C'#243'digo do Conhecimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 472
      Top = 4
      Width = 103
      Height = 13
      Caption = 'Data do Fechamento:'
    end
    object Label5: TLabel
      Left = 117
      Top = 24
      Width = 99
      Height = 13
      Caption = 'Transportador(a):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbConsultar: TSpeedButton
      Left = 290
      Top = 1
      Width = 80
      Height = 20
      Hint = 'Pesquisar '#13#10'Conhecimentos'#13#10'Existentes'
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbConsultarClick
    end
    object CODCON: TEdit
      Left = 221
      Top = 2
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCONExit
    end
    object bbAtualizar: TBitBtn
      Left = 83
      Top = 40
      Width = 184
      Height = 27
      Caption = 'Confirmar Entrega'
      TabOrder = 1
      OnClick = bbAtualizarClick
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
    object DATAFEC: TMaskEdit
      Left = 582
      Top = 2
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = DATAFECExit
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 68
      Width = 798
      Height = 53
      Align = alBottom
      Caption = 'Totais:'
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Qtd.Pedidos:'
      end
      object Label3: TLabel
        Left = 171
        Top = 15
        Width = 57
        Height = 13
        Caption = 'Qtd.'#205'tens:'
      end
      object Label6: TLabel
        Left = 605
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Qtd.M3:'
      end
      object Label7: TLabel
        Left = 356
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Peso Bruto:'
      end
      object Label8: TLabel
        Left = 11
        Top = 32
        Width = 67
        Height = 13
        Caption = 'Valor Total:'
      end
      object Label9: TLabel
        Left = 275
        Top = 35
        Width = 145
        Height = 13
        Caption = 'Valor do Frete Calculado:'
      end
      object Label10: TLabel
        Left = 518
        Top = 34
        Width = 134
        Height = 13
        Caption = 'Valor do Frete digitado:'
      end
      object db_QTDPED: TDBEdit
        Left = 83
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDPED'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object db_QTDITENS: TDBEdit
        Left = 231
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDITENS'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object db_PESOB: TDBEdit
        Left = 424
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01PESOB'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object db_QTDM3: TDBEdit
        Left = 656
        Top = 12
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01QTDM3'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object db_VLRTOT: TDBEdit
        Left = 83
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VLRTOT'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object db_VALFRE: TDBEdit
        Left = 424
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VALFRE'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object db_VALFRE_DIG: TDBEdit
        Left = 656
        Top = 30
        Width = 81
        Height = 19
        Color = 16769505
        DataField = 'C01VALFRE_DIG'
        DataSource = DM6.Src_Con01
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object db_codtra: TDBEdit
      Left = 221
      Top = 20
      Width = 69
      Height = 19
      Color = 16769505
      Ctl3D = False
      DataField = 'C01CODTRA'
      DataSource = DM6.Src_Con01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object db_nomtra: TDBEdit
      Left = 289
      Top = 20
      Width = 373
      Height = 19
      Color = 16769505
      Ctl3D = False
      DataField = 'TRRAZTRA'
      DataSource = DM6.Src_Con01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object bbCancelarConf: TBitBtn
      Left = 266
      Top = 40
      Width = 184
      Height = 27
      Caption = 'Cancelar Confirma'#231#227'o'
      TabOrder = 7
      TabStop = False
      OnClick = bbCancelarConfClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 449
      Top = 40
      Width = 184
      Height = 27
      Caption = '&Sair'
      TabOrder = 4
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
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 122
    Width = 800
    Height = 150
    Align = alTop
    Caption = 'Pedidos do Conhecimento:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 14
      Width = 798
      Height = 31
      Align = alTop
      TabOrder = 0
      object st_chave: TStaticText
        Left = 0
        Top = 2
        Width = 71
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Pedido'
        Color = 16769505
        ParentColor = False
        TabOrder = 0
      end
      object st_razao: TStaticText
        Left = 70
        Top = 2
        Width = 268
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Raz'#227'o Social'
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
      object st_pesob: TStaticText
        Left = 337
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '            Peso Bruto'
        Color = 16769505
        ParentColor = False
        TabOrder = 2
      end
      object st_qtdm3: TStaticText
        Left = 410
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Qtd.Metros 3(cubicos)'
        Color = 16769505
        ParentColor = False
        TabOrder = 3
      end
      object st_vlrtot: TStaticText
        Left = 484
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '            Valor Total'
        Color = 16769505
        ParentColor = False
        TabOrder = 4
      end
      object st_fretecalc: TStaticText
        Left = 558
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Calculado'
        Color = 16769505
        ParentColor = False
        TabOrder = 5
      end
      object st_fretedig: TStaticText
        Left = 632
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Digitado'
        Color = 16769505
        ParentColor = False
        TabOrder = 6
      end
      object st_tipoent: TStaticText
        Left = 706
        Top = 2
        Width = 57
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipo Entrega'
        Color = 16769505
        ParentColor = False
        TabOrder = 7
      end
    end
    object dbg_pedidos: TDBGrid
      Left = 1
      Top = 45
      Width = 798
      Height = 104
      Align = alClient
      Color = 14811105
      Ctl3D = False
      DataSource = DM6.Src_Con02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'C02CHAVE_PED'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02PESOB'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02QTDM3'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VLRTOT'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VALFRE'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C02VALFRE_DIG'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_entrega'
          Width = 55
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 272
    Width = 800
    Height = 164
    Align = alClient
    Caption = 'Mercadorias Entregues:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 14
      Width = 798
      Height = 31
      Align = alTop
      TabOrder = 0
      object st_codpro: TStaticText
        Left = 0
        Top = 2
        Width = 84
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo do Produto'
        Color = 16769505
        ParentColor = False
        TabOrder = 0
      end
      object st_nompro: TStaticText
        Left = 280
        Top = 2
        Width = 303
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descri'#231#227'o das Mercadorias'
        Color = 16769505
        ParentColor = False
        TabOrder = 1
      end
      object st_qtdent: TStaticText
        Left = 132
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade a Entregar'
        Color = 16769505
        ParentColor = False
        TabOrder = 2
      end
      object st_qtdpen: TStaticText
        Left = 206
        Top = 2
        Width = 75
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade a Entregar'
        Color = 16769505
        ParentColor = False
        TabOrder = 3
      end
      object st_valfre_calc: TStaticText
        Left = 615
        Top = 2
        Width = 80
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Calculado'
        Color = 16769505
        ParentColor = False
        TabOrder = 4
      end
      object st_valfre_dig: TStaticText
        Left = 694
        Top = 2
        Width = 58
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Digitado'
        Color = 16769505
        ParentColor = False
        TabOrder = 5
      end
      object st_und: TStaticText
        Left = 582
        Top = 2
        Width = 34
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'UND'
        Color = 16769505
        ParentColor = False
        TabOrder = 6
      end
      object StaticText2: TStaticText
        Left = 83
        Top = 2
        Width = 50
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Lote Detalhe'
        Color = 16769505
        ParentColor = False
        TabOrder = 7
      end
    end
    object dbg_prod: TDBGrid
      Left = 1
      Top = 45
      Width = 798
      Height = 118
      Align = alClient
      Color = 14811105
      Ctl3D = False
      DataSource = DM6.Src_Con03
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'C03CODPRO'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03LOTE'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDENT'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDPEND'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 301
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE_DIG'
          Width = 56
          Visible = True
        end>
    end
  end
  object Src_Con01: TDataSource
    DataSet = DM6.Tb_Con01
    Left = 640
    Top = 80
  end
  object Src_Con02: TDataSource
    DataSet = DM6.Tb_Con02
    OnDataChange = Src_Con02DataChange
    Left = 720
    Top = 80
  end
end
