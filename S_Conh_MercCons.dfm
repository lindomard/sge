object Frm_Conh_MercCons: TFrm_Conh_MercCons
  Left = 14
  Top = 28
  Width = 778
  Height = 467
  Caption = 'Consultas/Relat'#243'rios de Conhecimentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 109
    Align = alTop
    TabOrder = 0
    object chavedopedido: TLabel
      Left = 116
      Top = 5
      Width = 123
      Height = 13
      Caption = 'Conhecimento Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 329
      Top = 5
      Width = 116
      Height = 13
      Caption = 'Conhecimento Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 169
      Top = 23
      Width = 70
      Height = 13
      Caption = 'Periodo de :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 373
      Top = 24
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
    object CODCON01: TEdit
      Left = 241
      Top = 1
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCON01Exit
    end
    object CODCON02: TEdit
      Left = 447
      Top = 1
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODCON02Exit
    end
    object MDT1: TMaskEdit
      Left = 241
      Top = 19
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 447
      Top = 19
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object StaticText1: TStaticText
      Left = 104
      Top = 37
      Width = 138
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Transportador(a)'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object CODTRA: TEdit
      Left = 104
      Top = 53
      Width = 74
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object OMITIR_TRA: TCheckBox
      Left = 181
      Top = 56
      Width = 56
      Height = 17
      Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
      Caption = 'Omitir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object lbx_codtra: TListBox
      Left = 241
      Top = 37
      Width = 400
      Height = 35
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codtraKeyDown
    end
    object RG_FILTRO: TRadioGroup
      Left = 640
      Top = 5
      Width = 93
      Height = 67
      Caption = 'Listar Somente:'
      Color = 16772332
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        '&Entregando'
        '&Entregues'
        '&Todos')
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object bbAtualizar: TBitBtn
      Left = 241
      Top = 76
      Width = 231
      Height = 25
      Caption = 'Atualizar as Informa'#231#245'es'
      TabOrder = 9
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 109
    Width = 770
    Height = 98
    Align = alClient
    Caption = 'Conhecimentos:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object dbg_conhec: TDBGrid
      Left = 1
      Top = 14
      Width = 768
      Height = 83
      Align = alClient
      Ctl3D = False
      DataSource = Src_Con01
      FixedColor = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = dbg_conhecDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'C01CODCON'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01DATCON'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01DATFEC'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01QTDITENS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01CODTRA'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRRAZTRA'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01PESOB'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01QTDM3'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01VLRTOT'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01VALFRE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01VALFRE_DIG'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C01QTDPED'
          Width = 64
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 207
    Width = 770
    Height = 97
    Align = alBottom
    Caption = 'Pedidos do Conhecimento:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 14
      Width = 768
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
      Width = 768
      Height = 51
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
    Top = 304
    Width = 770
    Height = 106
    Align = alBottom
    Caption = 'Mercadorias Entregues:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 14
      Width = 768
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
      Width = 768
      Height = 60
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
  object Panel4: TPanel
    Left = 0
    Top = 410
    Width = 770
    Height = 26
    Align = alBottom
    TabOrder = 4
    object bbImprmir: TBitBtn
      Left = 1
      Top = 1
      Width = 231
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = bbImprmirClick
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
      Left = 537
      Top = 1
      Width = 231
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
  object Src_Con01: TDataSource
    DataSet = DM6.Tb_Con01
    OnDataChange = Src_Con01DataChange
    Left = 424
    Top = 8
  end
  object Src_Con02: TDataSource
    DataSet = DM6.Tb_Con02
    OnDataChange = Src_Con02DataChange
    Left = 536
    Top = 16
  end
end
