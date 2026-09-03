object Frm_AjuInvGra_GD: TFrm_AjuInvGra_GD
  Left = 180
  Top = 158
  Width = 856
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manipula Invent'#225'rio'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 840
    Height = 105
    Align = alTop
    Caption = 'Invent'#225'rios Gravados no Arquivo:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 836
      Height = 88
      Align = alClient
      DataSource = Src_InvGra01
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IGNOMEINV'
          Title.Alignment = taCenter
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGFILIAL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomefilial'
          Title.Alignment = taCenter
          Width = 133
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IGCODTIP'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGDATAEMI'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 105
    Width = 840
    Height = 58
    Align = alTop
    Caption = 'Opera'#231#245'es:'
    TabOrder = 1
    object ALTERAR: TBitBtn
      Left = 273
      Top = 14
      Width = 60
      Height = 40
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 0
      OnClick = ALTERARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 332
      Top = 14
      Width = 60
      Height = 40
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = GRAVARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CANCELAR: TBitBtn
      Left = 391
      Top = 14
      Width = 60
      Height = 40
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 14
      Width = 268
      Height = 40
      DataSource = Src_InvGra01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 3
    end
    object EXCLUIR: TBitBtn
      Left = 450
      Top = 14
      Width = 60
      Height = 40
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 4
      OnClick = EXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 730
      Top = 14
      Width = 95
      Height = 40
      Caption = '&Sair do Programa'
      TabOrder = 5
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbGerarNovo: TBitBtn
      Left = 509
      Top = 14
      Width = 70
      Height = 40
      Caption = 'Gerar Novo'
      TabOrder = 6
      OnClick = bbGerarNovoClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEstIgualInv: TBitBtn
      Left = 578
      Top = 14
      Width = 74
      Height = 40
      Caption = 'Estoque = Inv'
      TabOrder = 7
      Visible = False
      OnClick = bbEstIgualInvClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbComparar: TBitBtn
      Left = 655
      Top = 14
      Width = 74
      Height = 40
      Caption = 'Comparar'
      TabOrder = 8
      OnClick = bbCompararClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 163
    Width = 840
    Height = 90
    Align = alTop
    Caption = 'Detalhes:'
    Enabled = False
    TabOrder = 2
    object Label3: TLabel
      Left = 9
      Top = 16
      Width = 96
      Height = 13
      Caption = 'Nome do Invent'#225'rio:'
    end
    object Label4: TLabel
      Left = 281
      Top = 15
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label1: TLabel
      Left = 435
      Top = 15
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
    end
    object Label2: TLabel
      Left = 599
      Top = 16
      Width = 66
      Height = 13
      Caption = 'N'#250'mero '#205'tens:'
    end
    object NOMEINV: TEdit
      Left = 109
      Top = 11
      Width = 169
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object QTD: TEdit
      Left = 343
      Top = 12
      Width = 90
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object VALOR: TEdit
      Left = 493
      Top = 12
      Width = 104
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NUMITENS: TEdit
      Left = 668
      Top = 12
      Width = 97
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 35
      Width = 836
      Height = 53
      Align = alBottom
      Caption = 'A'#231#245'es a Serem Executadas:'
      TabOrder = 4
      object Label7: TLabel
        Left = 14
        Top = 34
        Width = 84
        Height = 13
        Caption = '% em quantidade:'
      end
      object Label5: TLabel
        Left = 14
        Top = 15
        Width = 89
        Height = 13
        Caption = 'Pesquisar Produto:'
      end
      object Label6: TLabel
        Left = 396
        Top = 38
        Width = 105
        Height = 13
        Caption = '% em pre'#231'os unit'#225'rios:'
      end
      object PERQTD: TEdit
        Left = 120
        Top = 31
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = PERQTDChange
        OnExit = PERQTDExit
      end
      object cb_dimqtd: TCheckBox
        Left = 211
        Top = 33
        Width = 85
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 1
      end
      object NOMEPRO: TEdit
        Left = 120
        Top = 12
        Width = 268
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnChange = NOMEPROChange
      end
      object AplicQtd: TBitBtn
        Left = 300
        Top = 32
        Width = 89
        Height = 20
        Caption = '&Aplicar'
        Enabled = False
        TabOrder = 3
        OnClick = AplicQtdClick
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
      object PERPU: TEdit
        Left = 504
        Top = 32
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnChange = PERPUChange
        OnExit = PERPUExit
      end
      object cb_dimPU: TCheckBox
        Left = 591
        Top = 34
        Width = 85
        Height = 17
        Caption = 'Diminuir'
        TabOrder = 5
      end
      object AplicPU: TBitBtn
        Left = 673
        Top = 31
        Width = 89
        Height = 20
        Caption = '&Aplicar'
        Enabled = False
        TabOrder = 6
        OnClick = AplicPUClick
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
  end
  object GroupBox_itens: TGroupBox
    Left = 0
    Top = 253
    Width = 840
    Height = 176
    Align = alClient
    Caption = 'Produtos:'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 836
      Height = 112
      Align = alClient
      DataSource = Src_InvGra02
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid2ColExit
      OnExit = DBGrid2Exit
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'IGCODPRO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGGRADE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGDTVCTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGQTD'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'und'
          Title.Alignment = taCenter
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomepro'
          Title.Alignment = taCenter
          Width = 199
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGPRECO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGSIT'
          Title.Alignment = taCenter
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGCODTIP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 127
      Width = 836
      Height = 47
      Align = alBottom
      TabOrder = 1
      object sbt_expexcel: TSpeedButton
        Left = 531
        Top = 13
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
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 3
        Width = 513
        Height = 42
        DataSource = Src_InvGra02
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Enabled = False
        Hints.Strings = (
          'Primeiro registro'
          'Registro anterior'
          'Pr'#243'ximo registro'
          #218'ltimo registro'
          'Inserir registro'
          'Excluir registro'
          'Editar registro'
          'Gravar edi'#231#227'o'
          'Cancelar edi'#231#227'o'
          'Atualizar da rede')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object bbNovoSemGrade: TBitBtn
        Left = 701
        Top = 7
        Width = 116
        Height = 40
        Caption = 'Gerar Novo Sem Lote'
        TabOrder = 1
        OnClick = bbNovoSemGradeClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object Qr_InvGra01: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    Filtered = True
    SQL.Strings = (
      'Select  IGNOMEINV,sum(IGQTD) AS QUANT'
      '        ,sum(IGQTD*IGPRECO) AS VALOR'
      '        ,count(*) as ITEM'
      '         from INVGRA_GD where IGCODEMP is null'
      'group by IGNOMEINV')
    Left = 195
    Top = 62
    object Qr_InvGra01IGNOMEINV: TStringField
      DisplayLabel = 'Nome do Invent'#225'rio'
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Qr_InvGra01QUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANT'
    end
    object Qr_InvGra01VALOR: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VALOR'
    end
    object Qr_InvGra01ITEM: TFloatField
      DisplayLabel = 'No.'#205'tens'
      FieldName = 'ITEM'
    end
    object Qr_InvGra01IGDATAEMI: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'IGDATAEMI'
    end
    object Qr_InvGra01IGFILIAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'IGFILIAL'
    end
    object Qr_InvGra01nomefilial: TStringField
      DisplayLabel = 'Nome Local'
      FieldName = 'nomefilial'
      Size = 40
    end
    object Qr_InvGra01IGCODTIP: TFloatField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'IGCODTIP'
    end
  end
  object Qr_InvGra02: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_InvGra02BeforeInsert
    AfterInsert = Qr_InvGra02AfterInsert
    BeforeEdit = Qr_InvGra02BeforeEdit
    BeforePost = Qr_InvGra02BeforePost
    AfterPost = Qr_InvGra02AfterPost
    AfterCancel = Qr_InvGra02AfterCancel
    AfterDelete = Qr_InvGra02AfterDelete
    OnCalcFields = Qr_InvGra02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select IGCODEMP,       '
      '           IGNOMEINV,      '
      '           IGCODPRO,'
      '           IGGRADE,'
      '           IGDTVCTO,'
      '           IGPRECO,     '
      '           IGQTD,          '
      '           IGSIT          '
      '           IGCODTIP,'
      '           PDNOME,'
      '            PDUND        '
      'from INVGRA_GD,CADPRO where IGCODEMP is null'
      'and PDCODEMP=IGCODEMP'
      'and PDCODPRO=IGCODPRO')
    UpdateObject = U_InvGra02
    Left = 286
    Top = 65
    object Qr_InvGra02IGCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'IGCODEMP'
      Origin = 'SG_ASSOC.INVGRA.IGCODEMP'
    end
    object Qr_InvGra02IGNOMEINV: TStringField
      DisplayLabel = 'Nome do Invent'#225'rio'
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Qr_InvGra02IGCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'IGCODPRO'
      Origin = 'SG_ASSOC.INVGRA.IGCODPRO'
    end
    object Qr_InvGra02IGPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit.'
      FieldName = 'IGPRECO'
      Origin = 'SG_ASSOC.INVGRA.IGPRECO'
    end
    object Qr_InvGra02IGQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IGQTD'
      Origin = 'SG_ASSOC.INVGRA.IGQTD'
    end
    object Qr_InvGra02IGSIT: TStringField
      DisplayLabel = 'Sit.Trib.'
      FieldName = 'IGSIT'
      Origin = 'SG_ASSOC.INVGRA.IGSIT'
      Size = 3
    end
    object Qr_InvGra02IGCODTIP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'IGCODTIP'
      Origin = 'SG_ASSOC.INVGRA.IGCODTIP'
    end
    object Qr_InvGra02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_InvGra02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_InvGra02total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_InvGra02nomepro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldKind = fkCalculated
      FieldName = 'nomepro'
      Size = 40
      Calculated = True
    end
    object Qr_InvGra02und: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Qr_InvGra02IGGRADE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'IGGRADE'
      Origin = 'SG_ASSOC.INVGRA_GD.IGGRADE'
    end
    object Qr_InvGra02IGDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'IGDTVCTO'
      Origin = 'SG_ASSOC.INVGRA_GD.IGDTVCTO'
    end
  end
  object Src_InvGra01: TDataSource
    DataSet = Qr_InvGra01
    OnDataChange = Src_InvGra01DataChange
    Left = 223
    Top = 62
  end
  object Src_InvGra02: TDataSource
    DataSet = Qr_InvGra02
    Left = 314
    Top = 65
  end
  object U_InvGra02: TUpdateSQL
    ModifySQL.Strings = (
      'update INVGRA_GD'
      'set'
      '  IGCODEMP = :IGCODEMP,'
      '  IGNOMEINV = :IGNOMEINV,'
      '  IGCODPRO = :IGCODPRO,'
      '  IGGRADE = :IGGRADE,'
      '  IGDTVCTO = :IGDTVCTO,'
      '  IGSIT = :IGSIT,'
      '  IGCODTIP = :IGCODTIP,'
      '  IGPRECO = :IGPRECO,'
      '  IGQTD = :IGQTD'
      'where'
      '  IGCODEMP = :OLD_IGCODEMP and'
      '  IGNOMEINV = :OLD_IGNOMEINV and'
      '  IGCODPRO = :OLD_IGCODPRO and'
      '  IGGRADE = :OLD_IGGRADE and'
      '  IGDTVCTO = :OLD_IGDTVCTO and'
      '  IGSIT = :OLD_IGSIT and'
      '  IGCODTIP = :OLD_IGCODTIP and'
      '  IGPRECO = :OLD_IGPRECO and'
      '  IGQTD = :OLD_IGQTD')
    InsertSQL.Strings = (
      'insert into INVGRA_GD'
      
        '  (IGCODEMP, IGNOMEINV, IGCODPRO, IGGRADE, IGDTVCTO, IGSIT, IGCO' +
        'DTIP, '
      'IGPRECO, '
      '   IGQTD)'
      'values'
      
        '  (:IGCODEMP, :IGNOMEINV, :IGCODPRO, :IGGRADE, :IGDTVCTO, :IGSIT' +
        ', '
      ':IGCODTIP, '
      '   :IGPRECO, :IGQTD)')
    DeleteSQL.Strings = (
      'delete from INVGRA_GD'
      'where'
      '  IGCODEMP = :OLD_IGCODEMP and'
      '  IGNOMEINV = :OLD_IGNOMEINV and'
      '  IGCODPRO = :OLD_IGCODPRO and'
      '  IGGRADE = :OLD_IGGRADE and'
      '  IGDTVCTO = :OLD_IGDTVCTO and'
      '  IGSIT = :OLD_IGSIT and'
      '  IGCODTIP = :OLD_IGCODTIP and'
      '  IGPRECO = :OLD_IGPRECO and'
      '  IGQTD = :OLD_IGQTD')
    Left = 342
    Top = 66
  end
end
